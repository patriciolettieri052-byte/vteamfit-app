---
name: audit-to-prd
description: Convierte docs/business_case.md en docs/prd.md con roles, entidades, estados, flujos y criterios de aceptación, sin lenguaje de marketing ni decisiones técnicas. Usar en la Fase 1 del SOP o cuando se pida armar o actualizar el PRD.
---

# audit-to-prd

Traduce un business case escrito por un humano en un PRD que una IA pueda ejecutar sin interpretar.

## Precondición

`docs/business_case.md` existe y no tiene secciones con `<COMPLETAR>`. Si faltan secciones, listalas y detenete sin escribir el PRD.

## Pasos

1. Leé `docs/business_case.md` completo.
2. Extraé: actores, entidades del dominio, acciones de cada actor, estados de cada entidad, reglas de negocio y métricas de éxito.
3. Escribí `docs/prd.md` usando exactamente la estructura de `resources/prd-template.md`. No agregues ni quites secciones.
4. Revisá el PRD contra esta lista antes de entregarlo:
   - Cada requisito funcional tiene un criterio de aceptación verificable (se puede escribir un test).
   - Cada entidad tiene sus estados y todas sus transiciones.
   - Cada flujo tiene actor, precondición, pasos, resultado y errores.
   - Ningún requisito menciona tecnología, tablas, endpoints ni librerías.
   - Todo lo que no sale literalmente del business case está en "Supuestos" o en "Preguntas abiertas".
5. Dejá `Estado: borrador`. Solo el PM humano lo cambia a `aprobado`.
6. Respondé con un resumen de máximo 5 líneas y la lista de preguntas abiertas.

## Lenguaje

- Prohibido: adjetivos de marketing ("intuitivo", "potente", "moderno") y verbos vagos ("gestionar", "optimizar", "mejorar") sin definir qué hace el sistema.
- Usá frases del tipo "El sistema [hace X] cuando [condición]" o "El [rol] puede [acción] si [condición]".

## Si el PRD ya existe

Si te piden actualizarlo, subí la versión (0.1 → 0.2), volvé el estado a `borrador` y agregá una línea en "Historial de cambios".
