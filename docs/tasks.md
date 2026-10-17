# Plan de tareas // VTeamFit 2026-2027

PRD: docs/prd.md (versión 0.1)
Estado: borrador

## Frontend

| ID | Tarea | Requisitos | Endpoint que consume | Depende de | Hecho cuando |
| --- | --- | --- | --- | --- | --- |
| FE-01 | Scaffold de aplicación Next.js en `frontend/` con TypeScript, Tailwind CSS, fuentes Outfit y tokens OKLCH de `01_DESIGN.md` | RF-01 | — | — | `npm run build` compila sin errores de tipos y Tailwind aplica tokens carbón/cobre. |
| FE-02 | Módulo cliente de Supabase (`v2`) y utilidades de medios para Bunny CDN | RF-01, RF-05 | Supabase v2 PostgREST | FE-01 | El helper resuelve URLs `https://vteamfit-oct-26.b-cdn.net/video.mp4` y consulta `v2.plans`. |
| FE-03 | Landing Page (`/`) con Hero, Header con selector visual de idioma, grilla de 5 planes y sección biográfica de Vicky Torres | RF-01 | `GET /api/plans` | FE-01, FE-02 | Renderiza fielmente la landing pública idéntica a producción con los 5 planes oficiales. |
| FE-04 | Página de Detalle de Plan (`/planes/[slug]`) y Checkout Simulado con alta de usuario | RF-02, RF-03 | `GET /api/plans/[slug]`, `POST /api/checkout/simulate` | FE-03 | El usuario puede inspeccionar el plan e inscribirse simuladamente, redirigiendo al dashboard. |
| FE-05 | Selector de Semanas y Días (`/dashboard/planes/[slug]`) para Plan Pádel (24 semanas) | RF-04 | `GET /api/plans/[slug]` | FE-04 | Navegación fluida por las 24 semanas mostrando los días con su enfoque técnico. |
| FE-06 | Reproductor Interactivo de Entrenamiento (`/dashboard/entrenamiento/...`) | RF-05, RF-06 | `GET /api/workouts/...` | FE-05 | Reproduce el video MP4 demostrativo en bucle, tiene cronómetro de descanso e inputs de series/reps/peso. |
| FE-07 | Registro y Finalización de Entrenamiento con cálculo de RPE | RF-07 | `POST /api/workouts/log` | FE-06 | Al finalizar la sesión, se envía el log a Supabase y el día se marca con checkmark verde persistente. |
| FE-08 | Dashboard de Progreso y Estadísticas (`/dashboard/progreso`) | RF-08, RF-09 | `GET /api/user/stats`, `POST /api/user/weight` | FE-07 | Muestra racha activa, % de avance del plan y gráfica cronológica de peso corporal. |

## Backend

| ID | Tarea | Requisitos | Endpoint que implementa | Depende de | Hecho cuando |
| --- | --- | --- | --- | --- | --- |
| BE-01 | DDL idempotente en schema `v2` con tablas `plans`, `exercises`, `plan_workouts`, `user_profiles`, `user_enrollments`, `user_workout_logs`, `user_weight_logs` y políticas RLS | RF-01, RF-03, RF-04, RF-07 | Supabase Schema DDL | — | Ejecutado y verificado en Supabase con HTTP 200 en `v2.plans`. (COMPLETADO) |
| BE-02 | Seed de datos para los 5 planes, catálogo de 308 ejercicios maestros y 137 rutinas diarias de Plan Pádel | RF-01, RF-04 | Supabase Seed SQL | BE-01 | 1 plan_padel, 308 ejercicios y 137 plan_workouts poblados en Supabase. (COMPLETADO) |
| BE-03 | Rutas y Server Actions en Next.js para lectura de rutinas y persistencia de telemetría de entrenamiento | RF-04, RF-07, RF-08, RF-09 | `/api/workouts/*`, `/api/user/*` | BE-02, FE-02 | Las llamadas del frontend leen y escriben en Supabase schema `v2` con validación Zod / TypeScript. |

## Bloqueos para el Arquitecto

*(Ninguno: todos los requisitos técnicos, credenciales, CDN y esquemas están resueltos y verificados)*.

## Resultado de verificación

- make lint: Pendiente de ejecución en frontend
- make test: Pendiente de ejecución en frontend
- Tareas completadas: BE-01, BE-02
- Tareas bloqueadas: 0
