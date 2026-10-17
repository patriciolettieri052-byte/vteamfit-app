-- ==============================================================================
-- VTeamFit 2026-2027: Database Schema (Option A - Optimized JSONB Routines)
-- Estado: Aprobado para Implementación
-- Versión: 1.0
-- Motor: PostgreSQL / Supabase
-- Fuentes:
--   - docs/business_case.md
--   - docs/EJERCICIOS_TOTALES_CONSOLIDADO.csv (308 ejercicios canónicos)
--   - docs/PLAN_PADEL_CONSOLIDADO.csv (137 días de entrenamiento, 24 semanas)
--   - docs/PLAN_PADEL_VIDEOS_MAPPING.csv (196 videos CDN en Bunny.net)
-- ==============================================================================

-- Extensiones requeridas
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ==============================================================================
-- 1. TABLA: plans
-- Catálogo de programas de entrenamiento ofrecidos por VTeamFit (Pádel, etc.)
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.plans (
    id TEXT PRIMARY KEY,                             -- ej: 'plan_padel'
    name TEXT NOT NULL,                              -- ej: 'Plan Pádel'
    slug TEXT NOT NULL UNIQUE,                       -- ej: 'plan-padel'
    description TEXT,
    tagline TEXT,                                    -- ej: 'Preparación física de alto rendimiento con Victoria Torres y Tito Allemandi'
    total_weeks INTEGER NOT NULL DEFAULT 24,
    days_per_week INTEGER NOT NULL DEFAULT 6,
    cover_image_url TEXT,
    is_published BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- ==============================================================================
-- 2. TABLA: exercises
-- Maestro consolidado de ejercicios (308 ejercicios totales).
-- Centraliza los nombres canónicos, categorías, código legacy y ruta Bunny CDN.
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.exercises (
    id TEXT PRIMARY KEY,                             -- slug canónico ej: 'hombros-press-sentado-con-mancuernas_d1_n38'
    name TEXT NOT NULL,                              -- 'HOMBROS-PRESS SENTADO CON MANCUERNAS'
    category TEXT NOT NULL,                          -- ej: 'HOMBROS', 'PISTA', 'GLUTEOS', etc.
    video_code TEXT,                                 -- ej: 'D1/N38', 'PLAN_PADEL-TGYO/N1'
    video_path TEXT NOT NULL,                        -- ej: '/hombros-press-sentado-con-mancuernas_d1_n38.mp4'
    original_physical_file TEXT,                     -- ej: 'Videos dia 1/C0038.MP4'
    other_acceptable_codes TEXT,                     -- alternativas aceptables ej: '39.0'
    is_home_friendly BOOLEAN NOT NULL DEFAULT false,
    instructions TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_exercises_category ON public.exercises(category);
CREATE INDEX IF NOT EXISTS idx_exercises_video_code ON public.exercises(video_code);

-- ==============================================================================
-- 3. TABLA: plan_workouts
-- 137 rutinas diarias distribuidas a lo largo de las 24 semanas.
-- Arquitectura Opción A: los ejercicios de la sesión se almacenan en un array JSONB.
-- Ventaja: Cero JOINs pesados, respuesta instantánea (<15ms) para el player móvil/web.
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.plan_workouts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    plan_id TEXT NOT NULL REFERENCES public.plans(id) ON DELETE CASCADE,
    week_number INTEGER NOT NULL CHECK (week_number BETWEEN 1 AND 52),
    day_number INTEGER NOT NULL CHECK (day_number BETWEEN 1 AND 7),  -- 1=LUNES, 2=MARTES, ..., 6=SABADO, 7=DOMINGO
    day_name TEXT NOT NULL CHECK (day_name IN ('LUNES', 'MARTES', 'MIERCOLES', 'JUEVES', 'VIERNES', 'SABADO', 'DOMINGO')),
    focus TEXT NOT NULL,                                             -- ej: 'PREVENIR+VELOCIDAD', 'PREVENIR+FORTALER'
    warmup_instructions TEXT,                                        -- ej: 'CALENTAMIENTO', 'CALENTAMIENTO + ABD 1'
    is_rest_day BOOLEAN NOT NULL DEFAULT false,
    exercises JSONB NOT NULL DEFAULT '[]'::jsonb,
    -- Estructura de cada elemento de exercises JSONB:
    -- [
    --   {
    --     "order": 1,
    --     "category": "PISTA",
    --     "name": "PISTA-DEFENSA LATERAL AMBOS LADOS 2",
    --     "video_code": "PLAN_PADEL-TGYO/N1",
    --     "video_path": "/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov",
    --     "series": null,
    --     "reps": null,
    --     "rpe": null,
    --     "notes": ""
    --   }
    -- ]
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uq_plan_workouts_plan_week_day UNIQUE (plan_id, week_number, day_name)
);

CREATE INDEX IF NOT EXISTS idx_plan_workouts_lookup ON public.plan_workouts(plan_id, week_number, day_name);
CREATE INDEX IF NOT EXISTS idx_plan_workouts_order ON public.plan_workouts(plan_id, week_number, day_number);

-- ==============================================================================
-- 4. TABLA: user_profiles
-- Perfil de usuario extendido conectado a Supabase Auth.
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.user_profiles (
    id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    email TEXT NOT NULL UNIQUE,
    full_name TEXT,
    avatar_url TEXT,
    role TEXT NOT NULL DEFAULT 'student' CHECK (role IN ('student', 'coach', 'admin')),
    phone TEXT,
    weight_kg NUMERIC(5,2),
    height_cm NUMERIC(5,2),
    birthdate DATE,
    experience_level TEXT DEFAULT 'intermediate' CHECK (experience_level IN ('beginner', 'intermediate', 'advanced', 'pro')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- ==============================================================================
-- 5. TABLA: user_enrollments
-- Planes activos adquiridos por el usuario.
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.user_enrollments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES public.user_profiles(id) ON DELETE CASCADE,
    plan_id TEXT NOT NULL REFERENCES public.plans(id) ON DELETE CASCADE,
    start_date DATE NOT NULL DEFAULT CURRENT_DATE,
    current_week INTEGER NOT NULL DEFAULT 1 CHECK (current_week BETWEEN 1 AND 52),
    status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'completed', 'paused')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uq_user_enrollment UNIQUE (user_id, plan_id)
);

CREATE INDEX IF NOT EXISTS idx_user_enrollments_user ON public.user_enrollments(user_id);

-- ==============================================================================
-- 6. TABLA: user_workout_logs
-- Registro de telemetría y finalización de cada sesión de entrenamiento.
-- Guarda el feedback del atleta, tiempo transcurrido y pesos/reps por serie.
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.user_workout_logs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES public.user_profiles(id) ON DELETE CASCADE,
    plan_id TEXT NOT NULL REFERENCES public.plans(id) ON DELETE CASCADE,
    workout_id UUID REFERENCES public.plan_workouts(id) ON DELETE SET NULL,
    week_number INTEGER NOT NULL,
    day_name TEXT NOT NULL,
    completed_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    duration_seconds INTEGER DEFAULT 0,
    perceived_effort INTEGER CHECK (perceived_effort BETWEEN 1 AND 10),
    notes TEXT,
    exercise_logs JSONB NOT NULL DEFAULT '[]'::jsonb,
    -- Estructura de exercise_logs:
    -- [
    --   {
    --     "exercise_name": "PECHO-PRESS BANCA CON BARRA",
    --     "sets": [
    --       { "set_number": 1, "weight_kg": 60, "reps": 12, "completed": true },
    --       { "set_number": 2, "weight_kg": 65, "reps": 10, "completed": true }
    --     ]
    --   }
    -- ]
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uq_user_workout_log_entry UNIQUE (user_id, plan_id, week_number, day_name)
);

CREATE INDEX IF NOT EXISTS idx_user_workout_logs_history ON public.user_workout_logs(user_id, plan_id, week_number);
CREATE INDEX IF NOT EXISTS idx_user_workout_logs_date ON public.user_workout_logs(user_id, completed_at);

-- ==============================================================================
-- 7. TABLA: user_weight_logs
-- Historial biométrico para la gráfica de evolución en el Dashboard de Estadísticas.
-- ==============================================================================
CREATE TABLE IF NOT EXISTS public.user_weight_logs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES public.user_profiles(id) ON DELETE CASCADE,
    recorded_date DATE NOT NULL DEFAULT CURRENT_DATE,
    weight_kg NUMERIC(5,2) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    CONSTRAINT uq_user_weight_date UNIQUE (user_id, recorded_date)
);

CREATE INDEX IF NOT EXISTS idx_user_weight_logs ON public.user_weight_logs(user_id, recorded_date DESC);

-- ==============================================================================
-- 8. TRIGGERS: Auto-actualización de updated_at
-- ==============================================================================
CREATE OR REPLACE FUNCTION public.handle_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_plans_updated_at BEFORE UPDATE ON public.plans
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER tr_exercises_updated_at BEFORE UPDATE ON public.exercises
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER tr_plan_workouts_updated_at BEFORE UPDATE ON public.plan_workouts
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER tr_user_profiles_updated_at BEFORE UPDATE ON public.user_profiles
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER tr_user_enrollments_updated_at BEFORE UPDATE ON public.user_enrollments
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

CREATE TRIGGER tr_user_workout_logs_updated_at BEFORE UPDATE ON public.user_workout_logs
    FOR EACH ROW EXECUTE FUNCTION public.handle_updated_at();

-- ==============================================================================
-- 9. SEGURIDAD Y POLÍTICAS ROW LEVEL SECURITY (RLS)
-- ==============================================================================
ALTER TABLE public.plans ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exercises ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.plan_workouts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_enrollments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_workout_logs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_weight_logs ENABLE ROW LEVEL SECURITY;

-- Lectura pública para catálogo de planes y rutinas (o restringido a autenticados)
CREATE POLICY "Planes públicos visibles para todos"
    ON public.plans FOR SELECT USING (is_published = true);

CREATE POLICY "Ejercicios visibles para usuarios autenticados"
    ON public.exercises FOR SELECT TO authenticated USING (true);

CREATE POLICY "Entrenamientos visibles para usuarios autenticados"
    ON public.plan_workouts FOR SELECT TO authenticated USING (true);

-- Perfiles de usuario: cada usuario ve y edita su propio perfil
CREATE POLICY "Usuarios ven su propio perfil"
    ON public.user_profiles FOR SELECT TO authenticated USING (auth.uid() = id);

CREATE POLICY "Usuarios actualizan su propio perfil"
    ON public.user_profiles FOR UPDATE TO authenticated USING (auth.uid() = id);

-- Inscripciones: cada usuario ve sus propios planes inscritos
CREATE POLICY "Usuarios ven sus inscripciones"
    ON public.user_enrollments FOR SELECT TO authenticated USING (auth.uid() = user_id);

CREATE POLICY "Usuarios crean sus inscripciones"
    ON public.user_enrollments FOR INSERT TO authenticated WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Usuarios actualizan sus inscripciones"
    ON public.user_enrollments FOR UPDATE TO authenticated USING (auth.uid() = user_id);

-- Logs de entrenamiento: cada usuario ve y registra sus propios progresos
CREATE POLICY "Usuarios ven sus logs de entrenamiento"
    ON public.user_workout_logs FOR SELECT TO authenticated USING (auth.uid() = user_id);

CREATE POLICY "Usuarios insertan sus logs de entrenamiento"
    ON public.user_workout_logs FOR INSERT TO authenticated WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Usuarios actualizan sus logs de entrenamiento"
    ON public.user_workout_logs FOR UPDATE TO authenticated USING (auth.uid() = user_id);

-- Logs de peso: cada usuario ve y registra su peso
CREATE POLICY "Usuarios ven su historial de peso"
    ON public.user_weight_logs FOR SELECT TO authenticated USING (auth.uid() = user_id);

CREATE POLICY "Usuarios registran su peso"
    ON public.user_weight_logs FOR INSERT TO authenticated WITH CHECK (auth.uid() = user_id);
