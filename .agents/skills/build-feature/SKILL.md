---
name: build-feature
description: Orquesta las Fases 3 a 6 del SOP. Lee el PRD aprobado y los specs, escribe docs/tasks.md, coordina el prototipo funcional mock para validación con el cliente, despacha la construcción real de frontend-worker y backend-worker, verifica con lint y tests y consolida un reporte para revisión humana. Usar cuando el Arquitecto o PM pida planificar, prototipar o construir una feature.
---

# build-feature

Sos el Main Agent. Planificás, coordinás el prototipo mock, despachás la construcción definitiva y verificás. No escribís código de producto en `frontend/` ni en `backend/`, salvo que un humano te pida un parche en la Fase 6.

## Paso 1. Verificar precondiciones

Detenete y reportá qué falta si se cumple alguna de estas condiciones:

- `docs/prd.md` no dice `Estado: aprobado`.
- Alguno de `docs/architecture/stack.md`, `database_schema.sql` o `api_contracts.md` no dice `Estado: aprobado`.
- Alguno de esos tres archivos contiene `<PENDIENTE` en algo que afecta a esta feature.
- La versión del PRD citada en `docs/architecture/decisions.md` no coincide con la versión actual del PRD. Eso significa que los specs se diseñaron sobre un PRD anterior y el Arquitecto tiene que revisarlos con `/design-architecture`.

## Paso 2. Planificar (Plan de Trabajo)

1. Leé `docs/prd.md`, `docs/architecture/database_schema.sql`, `docs/architecture/api_contracts.md` y `docs/architecture/stack.md`.
2. Escribí `docs/tasks.md` con la estructura exacta de `resources/tasks-template.md`.
3. Reglas del plan:
   - Cada tarea es atómica: una sola responsabilidad, verificable con un test.
   - Cada tarea pertenece a un solo dominio: `FE-xx` (solo `frontend/`) o `BE-xx` (solo `backend/`).
   - Cada tarea cita los requisitos (`RF-xx`) y, si aplica, el endpoint del contrato que implementa o consume.
   - Frontend y backend se acoplan solo a través de `api_contracts.md`. Ninguna tarea FE depende de código BE.
   - Si un requisito necesita algo que no está en los specs (una tabla, un campo, un endpoint), no lo inventes: va a "Bloqueos para el Arquitecto".
4. Mostrá `docs/tasks.md` al humano y esperá su "ok" antes de avanzar.

## Paso 3. Prototipo Funcional Mock & Validación Interactiva con el Cliente (Fase 4)

Antes de comprometer infraestructura pesada, migraciones de base de datos o lógica compleja de backend:

1. **Construcción del Mock:** Invocá a `frontend-worker` para montar el prototipo funcional e interactivo en `frontend/` consumiendo datos simulados tipados (mock data tipados bajo esquemas Zod o contratos de API simulados), cubriendo **el 100% de las funcionalidades aprobadas en el PRD**.
2. **Presentación al Cliente:** Levantá la aplicación localmente y notificá al PM y al cliente para la sesión de prueba interactiva, enlazando [`docs/prototype_feedback.md`](file:///c:/Users/matil/.gemini/antigravity/scratch/Scale/Appfabrik/MVP%20Mode/sop-antigravity/docs/prototype_feedback.md).
3. **Bucle de Calibración:**
   - **Si el cliente solicita cambios o detecta nuevas necesidades:**  
     Queda **terminantemente prohibido** empezar la construcción real. Los cambios se trasladan a `docs/prd.md` (vía `pm-agent` con `/audit-to-prd`). Si los cambios impactan la arquitectura, el Arquitecto revisa con `/design-architecture`. Una vez aprobado el nuevo PRD, **volvé al Paso 2 para regenerar `docs/tasks.md`** a la medida exacta de lo que el cliente realmente quiere.
   - **Si el cliente aprueba el prototipo:**  
     El cliente o PM cambia `Estado: borrador` a `Estado: aprobado` en `docs/prototype_feedback.md`. Solo con este estado aprobado se avanza al Paso 4.

## Paso 4. Despachar Construcción Real (Fase 5)

Invocá los dos workers en paralelo con `invoke_subagent`, en el mismo workspace (`inherit`), para implementar las tareas definitivas conectadas a la base de datos Supabase y endpoints reales:

- `frontend-worker`: "Ejecutá las tareas FE-* de docs/tasks.md en orden de dependencias conectando los endpoints reales."
- `backend-worker`: "Ejecutá las tareas BE-* de docs/tasks.md en orden de dependencias implementando el esquema y contratos reales."

No les pases más contexto: todo lo que necesitan está en el repo. Si un dominio no tiene tareas, no invoques a ese worker.

## Paso 5. Verificar

Cuando los dos workers terminen:

1. Corré `make lint` y `make test`.
2. Si algo falla, identificá la carpeta y mandale el error al worker dueño con `send_message`. Máximo 2 rondas por worker.
3. Revisá con `git diff --name-only` que cada worker solo haya tocado su carpeta. Si no, reportalo.
4. Completá la sección "Resultado de verificación" de `docs/tasks.md`.

## Paso 6. Entregar para revisión humana (Fase 6)

Generá un walkthrough con:

- Tareas completadas y tareas bloqueadas (con motivo).
- Resultado de `make lint` y `make test` (salida real, no un resumen inventado).
- Archivos creados o modificados por carpeta.
- Desvíos respecto a los specs, si hubo.
- Cómo levantar el MVP definitivo localmente para probarlo.

## Fase 6: parches

Si el humano te pide un parche tras probar el MVP:

- Si es un bug de implementación: corregilo vos o despachá al worker dueño, y volvé al Paso 5.
- Si el error viene de un PRD o un spec incorrecto: no lo parchees en el código. Indicá qué documento hay que corregir (`/audit-to-prd` para el PRD, `/design-architecture` para los specs) y esperá.
