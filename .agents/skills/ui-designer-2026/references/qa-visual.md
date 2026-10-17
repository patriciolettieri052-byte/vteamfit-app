# QA visual

Investigar no alcanza: lo construido se compara contra el objetivo y contra la lista de
tells antes de entregar.

---

## 1. Objetivo de construcción

Antes de construir trabajo visual sustancial, dejá escrito:

```text
Objetivo: [UI existente / captura del usuario / Figma / URL / mockup elegido / reference lock aprobado]
No puede desviarse: [fondo, tipografía, roles de acento, layout, imagen, densidad]
```

Si no hay objetivo y la dirección visual es relevante, primero exploración de 3 direcciones
o aprobación de un reference lock.

## 2. Asset lock (cuando hace falta generar imágenes)

Solo para imágenes que el código no puede resolver bien: foto de hero, producto,
ilustración, textura, miniaturas, recortes. Nunca para íconos estándar, UI nativa ni
"prueba" falsa de producto.

```text
Rol: [hero / textura / ilustración / miniatura / recorte]
Lugar: [dimensiones, proporción, ubicación]
Dirección de arte: [referencia, paleta, sujeto, render, encuadre, densidad]
Evitar: [paleta equivocada, texto dentro de la imagen, desvío de marca, placeholder genérico]
```

Los assets generados se colocan en la implementación antes de entregar, o se documenta el bloqueo.

## 3. Evidencia

```text
Fuente de verdad: [reference lock / mockup elegido / captura / Figma / URL]
Evidencia de la implementación: [captura local, URL publicada, vista del artifact]
Viewport y estado: [escritorio/móvil, ruta, tema, estado de interacción]
Resultado: [aprobado / bloqueado]
```

Mirá el render de verdad: captura de pantalla, navegador o la vista del artifact. Nunca
declarar que algo se ve bien sin haberlo visto.

## 4. Qué revisar

- **Tipografía:** escala, pesos, interlineado, tracking en mayúsculas y texto chico,
  huérfanas en títulos.
- **Espaciado y layout:** ritmo vertical consistente, alineaciones, densidad acorde a la referencia.
- **Color y tokens:** acento dentro de su rol, contraste AA, sin hex sueltos, tema correcto.
- **Imagen:** rol preservado, proporciones, nada de imitaciones con CSS.
- **Estados:** hover, foco, presionado, deshabilitado, carga, error, vacío, éxito.
- **Responsive:** 320, 768 y 1440 px; nada desbordado ni superpuesto.
- **Copy:** sin palabras prohibidas, botones con acción + objeto, cero datos inventados.
- **Slop:** recorrer el checklist de `anti-slop.md` y las pruebas de captura, logo e identidad.

## 5. Severidad

| Nivel | Qué es | ¿Se entrega? |
|---|---|---|
| P0 | Tarea rota, UI ilegible o superpuesta, falla grave de accesibilidad | No |
| P1 | Desvío grande de la dirección o regresión de usabilidad probable | No |
| P2 | Diferencia visual moderada, estado faltante, problema responsive, desvío de asset | No |
| P3 | Pulido | Sí, anotado como pendiente |

Si algo queda abierto por un bloqueo real (falta un asset, una fuente o una herramienta),
se dice qué evidencia falta y qué hay que revisar después.

## 6. Checklist final de entrega

- [ ] Hay objetivo bloqueado y el render se comparó contra él
- [ ] Ledger de decisiones completo: ninguna decisión importante sin fuente
- [ ] Checklist anti-slop recorrido
- [ ] Contraste AA y foco visible verificados
- [ ] Probado en 320, 768 y 1440 px
- [ ] Movimiento reducido funcionando
- [ ] Sin P0, P1 ni P2 abiertos (o bloqueo documentado)
- [ ] El usuario recibe: diseño o código, ledger y resultado del QA
