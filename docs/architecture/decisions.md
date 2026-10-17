# Registro de decisiones de arquitectura // VTeamFit 2026-2027

Fuentes: docs/prd.md (versión 0.1), docs/inputs/estructura_y_flujos.md

---

## Trazabilidad

| Paso del journey o flujo | Requisito | Pantalla o módulo | Datos que lee | Datos que escribe |
| --- | --- | --- | --- | --- |
| F-01: Exploración | RF-01, RF-02 | `/`, `/planes/[slug]` | `v2.plans` | — |
| F-02: Checkout Simulado | RF-03 | `/checkout/[slug]` | `v2.plans` | `v2.user_profiles`, `v2.user_enrollments` |
| F-03: Ejecución de Rutina | RF-04, RF-05, RF-06, RF-07 | `/dashboard/entrenamiento/...` | `v2.plan_workouts`, Bunny CDN | `v2.user_workout_logs` |
| F-04: Estadísticas & Peso | RF-08, RF-09 | `/dashboard/progreso` | `v2.user_workout_logs`, `v2.user_weight_logs` | `v2.user_weight_logs` |

---

## Decisiones

### D-01: Esquema de Almacenamiento de Rutinas Diarias
- Área: datos
- Contexto: La arquitectura legacy requería JOINs sucesivos a través de 4 tablas (`plans` → `weeks` → `days` → `day_exercises` → `exercises`), causando lentitud en redes móviles y fragilidad ante modificaciones de orden.
- Opciones:
  - A) Almacenar los ejercicios de la sesión en un documento estructurado JSONB en `plan_workouts`.
  - B) Mantener el modelo relacional tradicional con tabla intermedia `day_exercises`.
- Recomendación del agente: Opción A — Permite recuperar la rutina completa en una sola consulta de <15ms con 0 JOINs, ideal para el reproductor móvil.
- Decisión: Opción A (`v2.plan_workouts` con columna `exercises jsonb`).
- Decidido por: Arquitecto / Usuario (Opción A aprobada).
- Reemplaza: Modelo normalizado legacy.

### D-02: Alojamiento Plano en Bunny.net (Sin Subcarpetas por Plan)
- Área: integraciones / cdn
- Contexto: Inicialmente se evaluó guardar los videos en subcarpetas `/plan_padel/`, pero los mismos ejercicios y videos se reutilizan en *Transforma tu Cuerpo*, *Glúteos de Acero* y *Físico en Pista*.
- Opciones:
  - A) Subcarpetas por plan (`/plan_padel/video.mp4`), duplicando archivos en Storage.
  - B) Almacenamiento centralizado plano en la raíz del CDN (`/{video}.mp4`).
- Recomendación del agente: Opción B — Elimina duplicidad y permite que cualquier plan referencie cualquier video.
- Decisión: Opción B (Ruta relativa `/{slug_ejercicio}_{codigo_video}.mp4` servida desde `https://vteamfit-oct-26.b-cdn.net/`).
- Decidido por: Arquitecto / Usuario.
- Reemplaza: Prefijo `/plan_padel/`.

### D-03: Nomenclatura Híbrida y Estandarización Universal a MP4 (Faststart)
- Área: cdn / medios
- Contexto: 100 de los videos estaban en formato `.mov` de iPhone. En navegadores Chromium (Chrome/Edge/Android), los enlaces `.mov` disparan descarga forzada en vez de streaming.
- Opciones:
  - A) Mantener archivos `.mov` y lidiar con fallos de render en Android/Windows.
  - B) Remuxear sin pérdida (stream copy H.264/AAC con bandera `+faststart`) a `.mp4` para el 100% de los videos.
- Recomendación del agente: Opción B — Convierte los 100 videos en verdaderos `.mp4` con moov atom al inicio en <10 segundos sin alterar la calidad visual original.
- Decisión: Opción B (Todos los 196 videos son `.mp4` universales).
- Decidido por: Arquitecto / Usuario.

### D-04: Namespace Aislado en Supabase (Schema `v2`)
- Área: datos / seguridad
- Contexto: La base de datos existente en Supabase contenía tablas de la versión anterior (`public.weeks`, `public.days`, etc.).
- Opciones:
  - A) Sobreescribir las tablas de `public`.
  - B) Crear las nuevas tablas en el schema PostgreSQL `v2`, dejando `public` intacto como respaldo histórico.
- Recomendación del agente: Opción B — Aislamiento total, seguridad RLS independiente y cero colisiones.
- Decisión: Opción B (Tablas en `v2.`, cliente Supabase configurado con `{ db: { schema: 'v2' } }`).
- Decidido por: Arquitecto / Usuario.

### D-05: Stack Frontend
- Área: stack
- Contexto: Se necesita una aplicación de alta velocidad, responsiva y con experiencia de aplicación deportiva inmersiva.
- Decisión: Next.js (App Router, TypeScript, Tailwind CSS, Lucide React, Framer Motion para transiciones, tokens OKLCH de `01_DESIGN.md`).
- Decidido por: Arquitecto.

### D-06: Modo de Checkout y Autenticación
- Área: auth / pagos
- Contexto: Para el MVP no se conectarán webhooks de cobro bancario real de Stripe.
- Decisión: Formulario de checkout simulado que crea la cuenta en Supabase Auth, asigna la fila en `v2.user_enrollments` y redirige al dashboard.
- Decidido por: Arquitecto.

---

## Pendientes
- *(Ninguno: todas las decisiones D-01 a D-06 están resueltas y verificadas)*.
