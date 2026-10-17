# Craft y accesibilidad

Detalles de implementación que separan un producto pulido de uno áspero. Los modelos
suelen saltearlos.

---

## Foco

- `:focus-visible`, no `:focus` (el anillo aparece con teclado, no al hacer clic).
- Nunca `outline: none` sin reemplazo visible:
  `box-shadow: 0 0 0 2px var(--bg), 0 0 0 4px var(--primary);`
- `:focus-within` para controles compuestos (buscador con ícono).

## Formularios

- `type`, `inputmode` y `autocomplete` correctos: `email`, `tel`, `url`, `numeric`;
  `current-password` en login, `new-password` en alta, `name`, `street-address`, `cc-number`.
- Etiqueta visible y asociada en cada campo; checkbox y texto comparten una sola área de clic.
- Nunca bloquear el pegado.
- `spellcheck="false"` en email, usuario, códigos y URLs.
- Placeholder con formato de ejemplo, nunca como reemplazo de la etiqueta.
- Botón de enviar habilitado hasta que arranca el pedido; después, estado de carga claro.
- Errores en línea, junto al campo, con `aria-invalid` y `aria-describedby`; al enviar, foco
  en el primer error. El mensaje dice qué hacer.
- Aviso antes de salir con cambios sin guardar.

## Imágenes

- Siempre `width` y `height` (o `aspect-ratio`) para evitar saltos de layout.
- Arriba del pliegue: `fetchpriority="high"`; abajo: `loading="lazy"`.
- `alt` que describe lo que muestra; `alt=""` si es decorativa.

## Táctil y móvil

- `touch-action: manipulation`.
- `-webkit-tap-highlight-color` definido con intención, no solo apagado.
- `overscroll-behavior: contain` en modales, drawers y sheets.
- Autofocus solo en escritorio, un campo por página y con razón.
- Nunca `user-scalable=no` ni `maximum-scale=1`.

## Performance

- Listas de más de 50 ítems: virtualizar (o `content-visibility: auto`).
- No leer medidas del layout durante el render: `ResizeObserver`.
- `preconnect` a CDNs y precarga de la fuente crítica.

## Accesibilidad rápida

- Elementos semánticos: `<button>` para acciones, `<a>` para navegar. Nada de `<div onClick>`.
- Elementos personalizados interactivos con `role`, `tabIndex` y teclado (Enter y Espacio).
- Jerarquía de títulos sin saltos (h1 → h2 → h3).
- `scroll-margin-top` en anclas cuando hay header fijo.
- Actualizaciones asíncronas (toasts, validaciones) con `role="status"` / `aria-live="polite"`.
- Contraste AA; el color nunca comunica solo (estado = color + texto o ícono con texto).

## Navegación y estado

- La URL refleja el estado: filtros, pestañas, paginación. Se puede compartir y volver atrás.
- Links reales para navegar (Cmd+clic y clic medio funcionan).
- Acciones destructivas con confirmación o con ventana de deshacer.
- Fechas y números con `Intl.DateTimeFormat` / `Intl.NumberFormat` según el idioma del usuario
  (en Uruguay: `es-UY`, separador decimal coma).

## Revisión de código (señales a marcar)

- [ ] `user-scalable=no` o `maximum-scale=1`
- [ ] Bloqueo de pegado
- [ ] `transition: all`
- [ ] `outline: none` sin reemplazo
- [ ] `<div>` o `<span>` como botón o link
- [ ] Imágenes sin dimensiones
- [ ] Listas largas sin virtualizar
- [ ] Inputs sin etiqueta
- [ ] Botones de ícono sin `aria-label`
- [ ] Formatos de fecha o número fijos en el código
- [ ] Autofocus sin razón
