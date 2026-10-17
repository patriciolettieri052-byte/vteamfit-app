# Reglas del proyecto

Este repositorio sigue el SOP de desarrollo multi-agente. Estas reglas aplican a todos los agentes en todas las tareas.

Si es tu primera tarea en esta conversación, leé @README.md antes de abrir cualquier otro archivo: explica el pipeline, el mapa del repo y cómo determinar en qué fase está el proyecto.

## Fuentes de verdad (en orden de prioridad)

1. `docs/prd.md` — qué hay que construir.
2. `docs/architecture/decisions.md` — decisiones de arquitectura tomadas por el Arquitecto.
3. `docs/architecture/stack.md` — stack y dependencias permitidas.
4. `docs/architecture/database_schema.sql` — esquema de base de datos.
5. `docs/architecture/api_contracts.md` — contratos de API.
6. `docs/tasks.md` — plan de trabajo vigente.

Un documento solo es vinculante si su encabezado dice `Estado: aprobado`. Ese estado lo cambia únicamente un humano: el PM en el PRD, el Arquitecto en los specs.

Si dos fuentes se contradicen, gana la de mayor prioridad y la contradicción se reporta como bloqueo.

## Prohibiciones

- No tomar decisiones de arquitectura. Si algo necesario no está en los specs, no lo inventes: anotalo en la sección "Bloqueos para el Arquitecto" de `docs/tasks.md` y seguí con lo que no dependa de eso.
- No modificar `docs/prd.md` salvo el pm-agent en la Fase 1 o durante la calibración post-feedback del cliente en la Fase 4.
- No modificar nada dentro de `docs/architecture/` salvo el architect-agent en la Fase 2 o tras cambios aprobados del PRD.
- No cambiar nunca un `Estado:` a `aprobado` (reservado exclusivamente a humanos: PM, Arquitecto o Cliente).
- No agregar dependencias que no estén en `docs/architecture/stack.md`.
- No crear tablas, columnas ni endpoints que no estén en los specs.
- Cada worker escribe solo en su carpeta: `frontend/` o `backend/`.
- No iniciar la construcción real de la Fase 5 (backend y migraciones persistentes) si el prototipo funcional mock de la Fase 4 no tiene `Estado: aprobado` en `docs/prototype_feedback.md`.

## Verificación

- Antes de dar una tarea por terminada: `make lint` y `make test` (o el target de tu carpeta) en verde.
- Nunca borrar, saltear ni debilitar un test para que pase. Si un test parece incorrecto, reportalo como bloqueo.
