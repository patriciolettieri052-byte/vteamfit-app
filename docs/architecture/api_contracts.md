# Contratos de API

Estado: pendiente
Versión: 0.0
Fuentes: docs/prd.md, docs/inputs/, docs/architecture/decisions.md

Los genera el architect-agent en la Fase 2. Solo el Arquitecto humano cambia el estado a `aprobado`. Frontend y backend se acoplan solo a través de este archivo: un endpoint que no está acá no existe.

## Convenciones

- Base URL: <PENDIENTE>
- Autenticación: <PENDIENTE>
- Formato de error común:

```json
{ "error": { "code": "string", "message": "string" } }
```

## Endpoints

### <METHOD> <ruta>

- Requisitos: RF-xx
- Paso del journey: <paso de docs/inputs/>
- Tablas: <tablas de database_schema.sql que lee o escribe>
- Rol requerido: <rol>
- Decisiones: D-xx
- Request:

```json
{}
```

- Response 200:

```json
{}
```

- Errores:

| Código HTTP | `error.code` | Cuándo |
| --- | --- | --- |
|  |  |  |
