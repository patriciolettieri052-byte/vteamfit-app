# Stack

Estado: propuesto
Versión: 1.0
Fuentes: docs/prd.md, docs/inputs/estructura_y_flujos.md, docs/architecture/decisions.md

| Capa | Tecnología | Versión | Decisión |
| --- | --- | --- | --- |
| Frontend | Next.js (App Router) + TypeScript | 14+ / 15 | D-05 |
| Base de datos | Supabase (PostgreSQL, schema `v2`) | Postgres 15+ | D-01, D-04 |
| Autenticación | Supabase Auth (Email/Password + Session) | — | D-06 |
| CDN & Video Streaming | Bunny.net (Pull Zone Faststart MP4) | — | D-02, D-03 |
| Estilos & Tokens | Tailwind CSS + OKLCH Tokens | 3.4+ / 4 | D-05 |

## Decisiones de arquitectura

| Tema | Decisión | Decisión |
| --- | --- | --- |
| Acceso a datos desde el frontend | Cliente `@supabase/supabase-js` con `schema: 'v2'` y Server Components | D-04 |
| Router de Next.js | App Router (`app/` directory) | D-05 |
| Migraciones y DDL de base de datos | SQL DDL idempotente en `docs/architecture/database_schema.sql` y `seed_plan_padel.sql` | D-01, D-04 |
| Manejo de estado de reproducción | React useState / useEffect + custom hook de sesión de entrenamiento | D-05 |

## Dependencias permitidas

Cualquier librería fuera de esta lista requiere una nueva decisión aprobada por el Arquitecto.

### frontend
- `next`
- `react`
- `react-dom`
- `typescript`
- `@types/react`
- `@types/node`
- `tailwindcss`
- `postcss`
- `autoprefixer`
- `@supabase/supabase-js`
- `@supabase/ssr`
- `lucide-react`
- `framer-motion`
- `clsx`
- `tailwind-merge`

### backend
- `python`
- `fastapi`
- `uvicorn`
- `supabase`

## Comandos de verificación

| Comando | Qué hace |
| --- | --- |
| `make lint` | Lint de frontend y backend |
| `make test` | Tests de frontend y backend |
| `make lint-frontend` / `make test-frontend` | Solo frontend |
| `make lint-backend` / `make test-backend` | Solo backend |
