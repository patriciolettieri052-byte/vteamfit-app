# Motion e íconos

---

## Motion

Toda animación cumple al menos una función; si no, se saca:

1. **Feedback:** "lo toqué y funcionó".
2. **Continuidad:** "de acá vino y a acá fue".
3. **Jerarquía:** "mirá esto".

Ante la duda: más corto, más sutil, o nada.

### Pirámide (de esencial a riesgoso)

1. **Micro feedback:** hover, presión, foco, toggles, validación en línea.
2. **Transiciones de estado:** acordeones, pestañas, modales, drawers, popovers.
3. **Continuidad de layout:** reordenar, filtrar, agregar o quitar ítems.
4. **Expresivo:** heroes animados, onboarding, marketing. Zona de riesgo en producto.

### Duraciones

| Categoría | Duración | Ejemplos |
|---|---|---|
| Instantáneo | 90–150 ms | Hover, presión, toggle, foco |
| Cambio de estado | 160–240 ms | Acordeón, pestañas, paneles chicos |
| Grande | 240–360 ms | Modal, drawer, transición de ruta |
| Complejo | 360–500 ms | Reflow grande (raro) |

Menos distancia → menos duración. Más frecuencia → menos duración. Más de 500 ms en
producto casi siempre se siente lento.

### Curvas

Entrada: ease-out `cubic-bezier(0, 0, 0.2, 1)` · salida: ease-in `cubic-bezier(0.4, 0, 1, 1)` ·
cambio: ease-in-out `cubic-bezier(0.4, 0, 0.2, 1)`. Nunca lineal en UI.
Resortes solo en gestos y arrastre, y que se asienten rápido (rígido ~400, amortiguación ~30).

### Recetas

- **Botón:** color de fondo 120 ms; presión `scale(0.98)` 90–120 ms.
- **Input:** foco con borde o subrayado sin mover el layout; error con sacudida corta (200 ms)
  solo al enviar.
- **Listas:** alta con fundido + desplazamiento de 4–8 px en 200 ms; baja con fundido + colapso en 180 ms.
- **Modal:** overlay con fundido 200 ms; modal con fundido + escala desde 0,95.
- **Drawer:** desliza desde su borde.

### Tokens

```css
:root {
  --duration-fast: 120ms; --duration-default: 200ms; --duration-slow: 320ms;
  --ease-out: cubic-bezier(0, 0, 0.2, 1);
  --ease-in: cubic-bezier(0.4, 0, 1, 1);
  --ease-in-out: cubic-bezier(0.4, 0, 0.2, 1);
  --motion-distance-sm: 4px; --motion-distance-md: 8px; --motion-distance-lg: 16px;
}
@media (prefers-reduced-motion: reduce) {
  :root { --duration-fast: 0ms; --duration-default: 0ms; --duration-slow: 100ms;
          --motion-distance-sm: 0px; --motion-distance-md: 0px; --motion-distance-lg: 0px; }
}
```

### Movimiento reducido (obligatorio)

Desplazamiento + fundido → solo fundido · escala → solo fundido · resorte → instantáneo ·
parallax → se elimina · loops automáticos → pausa o se eliminan.

### Señales de motion barato

- 300–600 ms en hover o botones.
- Curva lineal.
- Todo se anima a la vez.
- Fade-up en cada sección al hacer scroll.
- Loops infinitos en pantallas de producto.
- Duraciones inconsistentes entre componentes parecidos.
- `transition: all` (anima lo que no querías y castiga la performance): listar propiedades.
- Escalas sin `transform-origin` (un dropdown escala desde su disparador).
- Animaciones que no se pueden interrumpir.

---

## Íconos

Los íconos en producto son tipografía: funcionales, no decorativos.

| Contexto | Estilo |
|---|---|
| Producto | Un solo set, línea o sólido, consistente y tematizable |
| Marketing | Puede ser duotono o ilustrado, pero no se filtra al producto |

### Reglas

- **Una librería por producto.** Lucide (línea, default SaaS), Heroicons (línea + sólido),
  Phosphor (6 pesos), Material Symbols (variable, sincroniza peso con el texto), SF Symbols
  (nativo Apple). Mezclar librerías es un collage.
- **Tamaños:** 16 px en línea con texto o tablas · 20–24 px en botones, nav e inputs ·
  28–32 px en estados vacíos o marketing.
- **Par con texto:** texto 14–16 → ícono 16 · texto 16–18 → ícono 18–20 · títulos → 20–24.
- **Peso armónico:** texto seminegrita + ícono finito = "de dos sistemas distintos".
- **Color:** `currentColor` por defecto. Rojo, verde y ámbar solo para estado.
- **Corrección óptica:** el centro geométrico no es el visual (el triángulo de "play" se
  corre 0,5–1 px a la derecha); un círculo pesa visualmente menos que un cuadrado.
- **Accesibilidad:** botones de ícono con `aria-label`; decorativos con `aria-hidden="true"`;
  área de toque 44×44 px en táctil y 32×32 px en escritorio; contraste 3:1 si el ícono comunica.
- **Nada de emojis** ni del ícono de destellos para decir "IA".

### Checklist

- [ ] Se leen al 50 % de zoom
- [ ] Los estados se entienden en escala de grises
- [ ] En tema oscuro los de línea no desaparecen
- [ ] En tablas no le ganan al texto
- [ ] Mismo estilo en todo el producto
