# Verificación de cobertura

Corré cada chequeo y anotá el resultado. Una falla es una pregunta para el Arquitecto o una corrección del spec, nunca un dato inventado.

## PRD → specs

- [ ] Cada requisito funcional (`RF-xx`) está cubierto por al menos un endpoint, o marcado como "solo frontend" con el motivo.
- [ ] Cada entidad del PRD tiene su tabla, o una decisión que explica por qué no.
- [ ] Cada estado y transición del PRD se puede representar en el esquema.
- [ ] Cada rol del PRD tiene su tratamiento en autenticación y en políticas RLS.
- [ ] Cada regla de negocio (`RN-xx`) tiene dónde aplicarse: una restricción del esquema o una validación del endpoint.

## Journey → specs

- [ ] Cada paso del journey que lee o escribe datos tiene al menos un endpoint.
- [ ] Ningún endpoint queda sin paso del journey o requisito que lo justifique.

## Consistencia interna

- [ ] Cada campo de request y response de los contratos existe en el esquema, o está marcado como calculado.
- [ ] Cada tabla es usada por al menos un endpoint.
- [ ] Cada tecnología o librería mencionada en el esquema o los contratos está en `stack.md`.
- [ ] Cada línea de los tres specs cita al menos una decisión (`D-xx`) o un requisito (`RF-xx`).

## Estado

- [ ] Los únicos `<PENDIENTE>` que quedan están listados en "Pendientes" de `decisions.md`.
- [ ] Las decisiones delegadas están marcadas como tales.
