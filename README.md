# Repositorio con desarrollo multi-agente en Antigravity 2

Este archivo es el punto de entrada. Leelo antes de abrir cualquier otro: explica qué es el repo, cómo está organizado, en qué fase está el trabajo y qué hace falta para dejar el entorno listo.

## Qué es este repo

Un proyecto de software que se construye con un pipeline de agentes de IA, del caso de negocio al MVP. La regla de fondo: **la IA redacta y ejecuta, los humanos deciden**.

- **PM (humano):** decide el qué. Escribe el business case y aprueba el PRD.
- **Arquitecto (humano):** decide el cómo. Responde la entrevista de arquitectura y aprueba los specs.
- **Agentes:** redactan el PRD y los specs, planifican y escriben el código.

Stack de partida: Next.js en `frontend/`, FastAPI en `backend/`, Supabase como base de datos. El stack vinculante es el de `docs/architecture/stack.md` una vez aprobado.

## Pipeline

| Fase | Quién | Comando | Produce |
| --- | --- | --- | --- |
| 0. Discovery | PM | — (manual) | `docs/business_case.md` |
| 1. PRD | pm-agent | `/audit-to-prd` | `docs/prd.md` |
| 2a. Inputs | PM o Arquitecto | — (manual) | `docs/inputs/` (estructura, flujos o customer journey) |
| 2b. Specs | architect-agent + Arquitecto | `/design-architecture` | `docs/architecture/` (decisions, stack, esquema, contratos) |
| 3. Plan | Main Agent | `/build-feature` | `docs/tasks.md` |
| 4. Prototipo Mock | frontend-worker / Main Agent + Cliente | `/build-feature` | Prototipo interactivo con mock data + `docs/prototype_feedback.md` (ajusta PRD y tasks si hay cambios) |
| 5. Ejecución Real | frontend-worker y backend-worker | (los despacha el Main Agent) | código en `frontend/` y `backend/` con base de datos y endpoints reales |
| 6. Revisión Final | PM y Arquitecto | — | MVP aprobado o feedback |

Un documento solo es vinculante con `Estado: aprobado` en su encabezado. Ese cambio lo hace únicamente un humano. Ningún agente marca nada como aprobado.

## Mapa del repo

| Ruta | Qué es | Quién escribe |
| --- | --- | --- |
| `AGENTS.md` | Reglas que aplican a todos los agentes, siempre activas | Humanos |
| `README.md` | Este archivo: orientación | Humanos |
| `README-SETUP.md` | Instalación paso a paso para humanos | Humanos |
| `Makefile` | `make lint` y `make test`: interfaz única de verificación | Humanos |
| `docs/business_case.md` | Tesis de negocio | PM |
| `docs/prd.md` | Requisitos lógicos | pm-agent, aprueba el PM |
| `docs/inputs/` | Estructura, flujos o customer journey | PM o Arquitecto |
| `docs/architecture/decisions.md` | Registro de decisiones `D-xx` y trazabilidad | architect-agent |
| `docs/architecture/stack.md` | Stack y dependencias permitidas | architect-agent, aprueba el Arquitecto |
| `docs/architecture/database_schema.sql` | Esquema de base de datos | architect-agent, aprueba el Arquitecto |
| `docs/architecture/api_contracts.md` | Contratos de API | architect-agent, aprueba el Arquitecto |
| `docs/tasks.md` | Plan de tareas `FE-xx` y `BE-xx` | Main Agent |
| `docs/prototype_feedback.md` | Feedback y validación del prototipo mock con el cliente | PM / Cliente |
| `.agents/rules/` | Reglas cargadas por Antigravity | Humanos |
| `.agents/skills/` | `audit-to-prd`, `design-architecture`, `build-feature`, `ui-designer-2026` | Humanos |
| `.agents/agents/` | pm-agent, architect-agent, frontend-worker, backend-worker | Humanos |
| `.agents/hooks.json` | Formatea cada archivo editado | Humanos |
| `.agents/mcp_config.json` | Servidor MCP de Supabase (solo lectura) | Humanos |
| `frontend/` | App Next.js. Su `AGENTS.md` incluye el contrato de API | frontend-worker |
| `backend/` | API FastAPI. Su `AGENTS.md` incluye esquema y contrato | backend-worker |

## Cómo saber en qué fase está el proyecto

Revisá en este orden y quedate en la primera condición que no se cumpla:

1. `docs/business_case.md` no tiene ningún `<COMPLETAR>` → si no, estamos en **Fase 0**.
2. `docs/prd.md` existe y dice `Estado: aprobado` → si no, **Fase 1**.
3. `docs/inputs/` tiene al menos un archivo además de su `README.md` → si no, **Fase 2a**.
4. Los tres specs de `docs/architecture/` dicen `Estado: aprobado` y no tienen `<PENDIENTE` → si no, **Fase 2b**.
5. `docs/tasks.md` existe → si no, **Fase 3**.
6. `docs/prototype_feedback.md` existe y dice `Estado: aprobado` tras validación interactiva con el cliente → si no, **Fase 4**.
7. La sección "Resultado de verificación" de `docs/tasks.md` está completa con tests en verde → si no, **Fase 5**.
8. Si todo lo anterior se cumple → **Fase 6**.

Si te piden algo que corresponde a una fase posterior a la actual, decilo y sugerí el comando de la fase que falta.

## Preparar el entorno

### Lo que puede hacer un agente

Si te piden preparar o verificar el entorno, hacé esto y reportá el resultado en una tabla (componente · estado · qué falta):

1. **Herramientas instaladas.** Corré y anotá la versión o el error de cada uno: `git --version`, `node --version`, `npm --version`, `python3 --version`, `ruff --version`, `pytest --version`, `make --version`.
2. **Repositorio.** Confirmá que es un repo git con al menos un commit (`git log -1`). El modo worktree de Antigravity lo necesita.
3. **Estructura.** Confirmá que existen todos los archivos del mapa de arriba, salvo `docs/prd.md`, `docs/architecture/decisions.md`, `docs/tasks.md` y `docs/prototype_feedback.md`, que se generan en el pipeline.
4. **Configuración pendiente.** Buscá `<PROJECT_REF>` en `.agents/mcp_config.json`. Si sigue ahí, avisá que hay que reemplazarlo por el ID del proyecto de Supabase.
5. **Fase actual.** Aplicá la sección anterior y decí en qué fase está el proyecto y cuál es el próximo comando.

No instales nada sin pedir confirmación. No crees `frontend/` ni `backend/` como proyectos: eso lo hacen los workers en el primer `/build-feature`, según el stack aprobado.

Mientras `frontend/` y `backend/` estén vacíos, `make lint` y `make test` fallan. Es esperable.

### Lo que tiene que hacer un humano

Un agente no puede hacer estos pasos; están detallados en `README-SETUP.md`:

- Crear el proyecto en Antigravity y agregar esta carpeta.
- Cargar las reglas de permisos del proyecto (Allow, Ask y Deny).
- Autenticar el servidor MCP de Supabase.
- Verificar en **Customizations** que se cargaron reglas, skills, agentes y hooks.
- Cambiar cualquier `Estado:` a `aprobado`.

## Reglas que no se negocian

El detalle está en `AGENTS.md`. En corto:

- Ningún agente toma decisiones de arquitectura ni de producto: lo que no está en los specs se reporta como bloqueo.
- Cada worker escribe solo en su carpeta.
- Nadie agrega dependencias, tablas o endpoints que no estén en los specs aprobados.
- Una tarea está terminada solo si `make lint` y `make test` pasan, sin borrar ni debilitar tests.
