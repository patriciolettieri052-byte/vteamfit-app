# Instalación del SOP en Antigravity 2

Este paquete es la configuración completa para ejecutar el pipeline multi-agente en Antigravity 2. Se copia en la raíz del repositorio del proyecto.

## Qué contiene

```text
/
├── AGENTS.md                              Reglas globales del repo (siempre activas)
├── Makefile                               lint y test: interfaz de verificación
├── docs/
│   ├── business_case.md                   Plantilla Fase 0 (PM)
│   ├── inputs/README.md                   Dónde van estructura, flujos o customer journey
│   ├── prototype_feedback.md              Plantilla Fase 4: validación del prototipo mock con el cliente
│   └── architecture/
│       ├── stack.md                       Plantilla Fase 2 (la completa el architect-agent)
│       ├── database_schema.sql            Plantilla Fase 2 (la completa el architect-agent)
│       └── api_contracts.md               Plantilla Fase 2 (la completa el architect-agent)
├── .agents/
│   ├── rules/stack.md                     Incluye docs/architecture/stack.md en cada turno
│   ├── skills/
│   │   ├── audit-to-prd/                  Fase 1: business case → PRD
│   │   ├── design-architecture/           Fase 2: PRD + inputs + entrevista → specs
│   │   ├── build-feature/                 Fases 3–6: plan, mock prototype, despacho real, verificación
│   │   └── ui-designer-2026/              Estándar visual zero slop para frontend-worker y prototipado
│   ├── agents/
│   │   ├── pm-agent.md
│   │   ├── architect-agent.md
│   │   ├── frontend-worker.md
│   │   └── backend-worker.md
│   ├── hooks.json                         Formatea cada archivo editado
│   ├── hooks/format_on_edit.py
│   └── mcp_config.json                    Supabase (solo lectura)
├── frontend/AGENTS.md                     Incluye el contrato de API
└── backend/AGENTS.md                      Incluye esquema y contrato
```

Los agentes generan `docs/prd.md`, `docs/architecture/decisions.md`, `docs/tasks.md` y gestionan `docs/prototype_feedback.md`, y completan las tres plantillas de `docs/architecture/`.

## Instalación (una vez por proyecto)

1. Copiá todo el contenido de este paquete en la raíz del repo y hacé commit.
2. Ajustá los comandos de `Makefile` si el stack no usa `npm run lint`, `npm test`, `ruff` y `pytest`.
3. En `.agents/mcp_config.json`, reemplazá `<PROJECT_REF>` por el ID del proyecto de Supabase.
4. En Antigravity 2.0: **New Project** → **Add Folder** (el repo) → **Create**.
5. En **Settings > Projects**, dejá el preset **Default** (macOS/Linux) y agregá estas reglas:

| Lista | Regla | Para qué |
| --- | --- | --- |
| Allow | `command(regex:make (lint\|test)(-frontend\|-backend)?)` | Verificación sin pedir permiso |
| Allow | `command(git status)`, `command(git diff)` | Revisión de cambios |
| Ask | `write_file(docs/architecture/)` | Toda escritura en los specs pasa por un clic humano |
| Ask | `write_file(docs/prd.md)` | Toda escritura en el PRD pasa por un clic humano |
| Deny | `write_file(.agents/)` | Ningún agente modifica su propia configuración |
| Deny | `command(git push)` | El push lo hace un humano |
| Deny | `command(rm -rf)` | Borrados destructivos |

Por qué **Ask** y no **Deny** en los specs: los permisos de Antigravity aplican a todos los agentes del proyecto por igual, no por agente. Con Deny, el architect-agent tampoco podría escribir. Con Ask, la escritura del architect-agent la aprueba el Arquitecto, que está presente en la entrevista. Si un worker intenta tocar un spec, el pedido de permiso lo delata y se rechaza. En el aviso de permiso podés ampliar el alcance a toda la carpeta para no aprobar archivo por archivo durante ese turno.

6. En **Settings > Customizations > Installed MCP Servers**, autenticá Supabase (OAuth).

## Prueba de humo (antes del primer uso real)

Verificá que Antigravity cargó todo en el panel **Customizations**:

- [ ] Rules: `stack.md` y los tres `AGENTS.md`.
- [ ] Skills: `audit-to-prd`, `design-architecture`, `build-feature` y `ui-designer-2026`.
- [ ] Agents: `pm-agent`, `architect-agent`, `frontend-worker`, `backend-worker`.
- [ ] Hooks: `format-on-edit`.
- [ ] MCP: `supabase` conectado.

Después, pedile al Main Agent: "Invocá a frontend-worker y a backend-worker con la tarea de listar el contenido de su carpeta y terminar." Si un worker se cuelga, revisá los nombres en su lista `tools`: un nombre mal escrito puede colgar el subagente (problema conocido de Antigravity).

## Cómo correr cada fase

| Fase | Quién | Qué hace en Antigravity |
| --- | --- | --- |
| 0. Discovery | PM | Completa `docs/business_case.md` a mano |
| 1. PRD | PM | Nueva conversación en modo **Local**. Elige el agente `pm-agent` o escribe `/audit-to-prd`. Revisa `docs/prd.md` y cambia `Estado: borrador` por `Estado: aprobado` |
| 2a. Inputs | PM o Arquitecto | Deja la estructura, los flujos o el customer journey en `docs/inputs/` |
| 2b. Specs | Arquitecto | Nueva conversación en modo **Local**. Elige el agente `architect-agent` o escribe `/design-architecture`. Responde las rondas de preguntas. Revisa los tres specs y `decisions.md`, y cambia cada `Estado: borrador` por `Estado: aprobado`. Commit |
| 3. Plan | Arquitecto / Main Agent | Nueva conversación en modo **New worktree**. Escribe `/build-feature`. Aprueba `docs/tasks.md` cuando el agente lo muestre |
| 4. Prototipo Mock | Cliente y PM | Interactúan con el prototipo funcional en frontend con mock data. El cliente valida los flujos. Si solicita cambios, se ajusta `docs/prd.md` y se regenera `docs/tasks.md` a medida. El cliente/PM firma `Estado: aprobado` en `docs/prototype_feedback.md` |
| 5. Ejecución Real | Main Agent (workers) | Despacha `frontend-worker` y `backend-worker` para la construcción definitiva con base de datos Supabase y endpoints reales según el plan ajustado |
| 6. Revisión Final | PM y Arquitecto | Leen el walkthrough y el diff, prueban el MVP final. Bug: le pegan el error al Main Agent. Error de requisitos: `/audit-to-prd`. Error de diseño: `/design-architecture`. Después, de nuevo `/build-feature` |

## Cómo trabaja el architect-agent

- Lee el PRD aprobado y `docs/inputs/`, y arma una tabla de trazabilidad: paso del journey → requisito → pantalla → datos.
- Recorre un banco de preguntas en 7 áreas, en orden: contexto, stack, autenticación, datos, API, integraciones y seguridad. Salta lo que el PRD ya responde.
- Pregunta en rondas de hasta 5 preguntas. Cada una trae opciones, consecuencias y una recomendación.
- Registra cada respuesta como decisión `D-xx` en `docs/architecture/decisions.md`, indicando quién decidió. Si delegás ("decidí vos"), queda registrado como delegado.
- Lo que no respondas queda como `<PENDIENTE>` en los specs. `/build-feature` no arranca mientras haya pendientes que afecten a la feature.
- Antes de entregar, corre una verificación de cobertura: cada requisito tiene endpoint, cada campo del contrato existe en el esquema, cada tabla se usa.

## Decisiones tomadas por defecto

Cambialas si no coinciden con cómo quieren trabajar.

- **Workers en el mismo workspace (`inherit`).** Como cada uno escribe en su carpeta, no hay conflictos y no hace falta merge. La conversación del Main Agent corre en un worktree nuevo, así que la rama activa queda intacta.
- **Modelos:** `pro` para el PM Agent y el architect-agent, `flash` para los workers. El Main Agent usa el modelo que elijas en el selector de la conversación.
- **Aprobación de `docs/tasks.md` antes de despachar.** Cuesta un mensaje y evita que los workers ejecuten un plan mal partido. Para sacarla, borrá el punto 4 del Paso 2 de `build-feature/SKILL.md`.
- **Sin hook `Stop` de tests.** El hook `Stop` se dispara también en los subagentes y su payload no dice qué agente terminó. Un test de backend que falla le pediría al frontend-worker que lo arregle, rompiendo la separación de carpetas. Por eso la verificación la hace el Main Agent en el Paso 4 de `build-feature`.
- **Specs ligados a una versión del PRD.** `decisions.md` registra sobre qué versión del PRD se diseñó. Si el PRD cambia, `/build-feature` se detiene hasta que el Arquitecto revise los specs.

## Puntos sin confirmar en la documentación oficial

Verificalos en la prueba de humo:

1. **Directorio de trabajo de los hooks.** `hooks.json` usa una ruta relativa (`.agents/hooks/format_on_edit.py`). Si el hook no corre, cambiala por la ruta absoluta del repo.
2. **Campo `skills` de pm-agent y architect-agent.** La documentación muestra el formato `skills/<nombre>` sin aclarar desde qué carpeta se resuelve. Si no carga, no es grave: la skill igual está disponible en el workspace.
3. **Include de `stack.md`.** `.agents/rules/stack.md` incrusta `docs/architecture/stack.md` con `@[...]`. Confirmá en Customizations que el contenido del stack aparece en la regla.
4. **URL del MCP de Supabase.** Usa el servidor remoto oficial en modo solo lectura. Si cambió, usá el MCP Store de Antigravity, que lo instala sin editar el JSON.
5. **Red dentro del sandbox.** El sandbox no tiene red, así que `npm install` y `pip install` van a pedir aprobación para correr fuera de él. Es el comportamiento esperado.
