# Stack

Estado: pendiente
Versión: 0.0
Fuentes: docs/prd.md, docs/inputs/, docs/architecture/decisions.md

Lo genera el architect-agent en la Fase 2 a partir de las respuestas del Arquitecto. Solo el Arquitecto humano cambia el estado a `aprobado`. Cada fila cita la decisión (`D-xx`) que la respalda.

| Capa | Tecnología | Versión | Decisión |
| --- | --- | --- | --- |
| Frontend | Next.js + TypeScript | <PENDIENTE> | D-xx |
| Backend | FastAPI + Python | <PENDIENTE> | D-xx |
| Base de datos | Supabase (Postgres) | — | D-xx |
| Autenticación | <PENDIENTE> | — | D-xx |

## Decisiones de arquitectura

| Tema | Decisión | Decisión |
| --- | --- | --- |
| Acceso a datos desde el frontend | <PENDIENTE> | D-xx |
| Router de Next.js | <PENDIENTE> | D-xx |
| Migraciones de base de datos | <PENDIENTE> | D-xx |

## Dependencias permitidas

Cualquier librería fuera de esta lista requiere una nueva decisión aprobada por el Arquitecto.

### frontend
- <PENDIENTE>

### backend
- <PENDIENTE>

## Comandos de verificación

| Comando | Qué hace |
| --- | --- |
| `make lint` | Lint de frontend y backend |
| `make test` | Tests de frontend y backend |
| `make lint-frontend` / `make test-frontend` | Solo frontend |
| `make lint-backend` / `make test-backend` | Solo backend |
