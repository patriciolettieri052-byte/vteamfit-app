# Validación y Feedback del Prototipo Funcional Mock

**Proyecto:** <Nombre del Proyecto>  
**Versión de PRD evaluada:** <x.y>  
**Estado:** borrador  <!-- Cambiar a "aprobado" únicamente cuando el cliente valide el prototipo -->
**Fecha:** <YYYY-MM-DD>  

---

## 1. Alcance del Prototipo Mock Evaluado
- [ ] Prototipo navegable e interactivo ejecutado en frontend con mock data tipado.
- [ ] Cobertura del 100% de los requisitos funcionales aprobados en el PRD (`RF-01`, `RF-02`, etc.).
- [ ] Verificación de la ergonomía de UI y flujos principales (Happy Path y Edge Cases visuales).

---

## 2. Registro de Feedback del Cliente / Stakeholders
*(Registrar aquí las observaciones de uso, fricciones detectadas, campos/pasos innecesarios o nuevas necesidades descubiertas durante la interacción con la pantalla viva).*

| ID Requisito PRD | Observación / Ajuste Solicitado por el Cliente | Impacto en Requisitos (`docs/prd.md`) | Impacto en Arquitectura / Plan (`docs/tasks.md`) |
| :--- | :--- | :--- | :--- |
| `RF-xx` | *Ej: El cliente necesita cargar fotos de remito múltiples antes de confirmar.* | Añadir soporte multifoto en RF-xx. | Ajustar contrato en `api_contracts.md` y agregar tarea FE/BE. |
|  |  |  |  |

---

## 3. Acciones de Calibración Post-Feedback
- [ ] **Ajuste del PRD:** El `pm-agent` actualizó `docs/prd.md` con los cambios solicitados por el cliente.
- [ ] **Revisión del Arquitecto:** Si hubo impacto en datos o contratos, `docs/architecture/` fue recalibrado (`decisions.md`, `stack.md`, `database_schema.sql`, `api_contracts.md`).
- [ ] **Regeneración del Plan:** El `Main Agent` regeneró `docs/tasks.md` a la medida exacta de los nuevos requerimientos antes de iniciar la construcción real.

---

## 4. Aprobación Final del Prototipo y Luz Verde para Construcción Real
> [!IMPORTANT]
> Esta sección solo puede ser firmada por el humano (Cliente o PM). Ningún agente puede cambiar este estado.

**Resultado:** [ ] Aprobado sin cambios / [ ] Aprobado tras aplicar los ajustes de calibración  
**Firma / Aprobado por:** <Nombre del Cliente o PM>  
**Fecha de Aprobación:** <YYYY-MM-DD>  
**Estado:** borrador <!-- Cambiar a "aprobado" para habilitar Fase 5 -->
