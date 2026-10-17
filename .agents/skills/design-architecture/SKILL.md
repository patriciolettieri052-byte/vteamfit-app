---
name: design-architecture
description: Genera docs/architecture/stack.md, database_schema.sql y api_contracts.md a partir del PRD aprobado y de la estructura, flujos o customer journey en docs/inputs/, entrevistando al Arquitecto humano hasta cubrir todas las decisiones. Usar en la Fase 2 del SOP o cuando haya que actualizar los specs.
---

# design-architecture

Diseñás la arquitectura entrevistando al Arquitecto humano. Proponés y recomendás; el Arquitecto decide. Ninguna decisión entra a los specs sin una respuesta suya registrada en `docs/architecture/decisions.md`.

## Paso 0. Precondiciones

Detenete y explicá qué falta si se cumple alguna:

- `docs/prd.md` no existe o no dice `Estado: aprobado`.
- `docs/inputs/` no tiene ningún archivo además de su `README.md`. En ese caso preguntá al Arquitecto si quiere continuar solo con el PRD.

## Paso 1. Leer y mapear

1. Leé `docs/prd.md` y todo `docs/inputs/` (texto e imágenes).
2. Si el servidor MCP `supabase` está conectado, listá las tablas existentes. Si hay tablas, preguntá si el sistema se construye sobre ellas o desde cero.
3. Creá `docs/architecture/decisions.md` con la estructura de `resources/decisions-template.md`. Si ya existe, continuá desde ahí.
4. Completá la tabla "Trazabilidad": una fila por paso del journey o del flujo, con el requisito (`RF-xx`), la pantalla o módulo y los datos que lee o escribe. Si un paso no tiene requisito en el PRD, o un requisito no aparece en ningún paso, anotalo en "Inconsistencias con el PRD".

## Paso 2. Detectar lo que falta decidir

Recorré `resources/question-bank.md` área por área. Por cada pregunta:

- Si el PRD o los inputs la responden de forma explícita, registrala como decisión con `Decidido por: derivado de <fuente>` y mostrásela al Arquitecto para que la confirme en la siguiente ronda.
- Si no, pasa a la lista de preguntas para la entrevista.

Descartá las preguntas que no aplican al proyecto y anotá por qué en una línea.

## Paso 3. Entrevistar al Arquitecto

Reglas de la entrevista:

1. **Rondas de máximo 5 preguntas**, en el orden de áreas del banco de preguntas: cada área depende de las anteriores.
2. **Cada pregunta trae:**
   - Por qué importa, en una frase y en términos de consecuencia (costo, tiempo, riesgo, escalabilidad), no de jerga.
   - De 2 a 4 opciones, cada una con su consecuencia principal.
   - Tu recomendación marcada y el motivo, basada en el PRD y los inputs.
3. **Usá `ask_question`** para las preguntas de opciones cerradas. Las preguntas abiertas (nombres de entidades, reglas de negocio de datos) van en texto.
4. **Registrá cada respuesta al instante** en `decisions.md` como `D-xx`, con contexto, opciones, decisión y `Decidido por: Arquitecto`.
5. **Si el Arquitecto delega** ("decidí vos", "lo que recomiendes"), registrá tu recomendación con `Decidido por: Arquitecto (delegó en la recomendación)`. Que quede visible quién decidió.
6. **Si una respuesta contradice el PRD**, no la resuelvas vos: anotala en "Inconsistencias con el PRD" y avisá que la decisión le corresponde al PM.
7. **Nunca completes una decisión sin respuesta.** Lo que quede sin responder va a "Pendientes" y en los specs aparece como `<PENDIENTE: D-xx>`.
8. Antes de cada ronda nueva, mostrá cuántas decisiones quedan abiertas por área. El Arquitecto puede cortar la entrevista cuando quiera; lo abierto queda como pendiente.

Para versiones de librerías o compatibilidad entre herramientas, verificá en la web antes de recomendar. No recomiendes versiones de memoria.

## Paso 4. Generar los specs

Generá en este orden, porque cada uno depende del anterior:

1. `docs/architecture/stack.md`
2. `docs/architecture/database_schema.sql`
3. `docs/architecture/api_contracts.md`

Reglas:

- Respetá la estructura de cada plantilla existente.
- Cada tabla cita su entidad del PRD, sus requisitos y sus decisiones. Cada endpoint cita sus requisitos, su paso del journey, sus tablas y sus decisiones.
- No agregues nada que no responda a un requisito o a una decisión registrada.
- Cada archivo sale con `Estado: borrador` y la versión subida (0.0 → 0.1).

## Paso 5. Verificar cobertura

Corré la lista de `resources/coverage-checklist.md`. Cada falla se convierte en una pregunta nueva (volvés al Paso 3) o en una corrección del spec. Repetí hasta que la lista pase o el Arquitecto decida dejar lo restante como pendiente.

## Paso 6. Entregar para aprobación

Respondé con:

- Resumen de decisiones por área, marcando las delegadas.
- Resultado de la verificación de cobertura.
- Pendientes e inconsistencias con el PRD.
- Instrucción explícita: el Arquitecto revisa los tres archivos y cambia cada `Estado: borrador` por `Estado: aprobado`. Mientras haya un `<PENDIENTE>` o un estado distinto de `aprobado`, `/build-feature` no arranca.

## Cambios posteriores

Si te piden modificar un spec ya aprobado: registrá una decisión nueva que reemplace a la anterior (`Reemplaza: D-xx`), subí la versión, volvé el estado a `borrador` y repetí los Pasos 5 y 6.
