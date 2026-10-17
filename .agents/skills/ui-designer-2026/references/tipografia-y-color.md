# Tipografía y color

Valores de partida. Las referencias del proyecto mandan sobre todo lo que está acá: esto
se usa para completar lo que la investigación no define, nunca para reemplazarla.

---

## Tipografía

### Contexto primero

| Pregunta | Qué cambia |
|---|---|
| ¿Herramienta de trabajo o marketing? | El producto pide neutralidad; el marketing admite personalidad |
| ¿Lectura larga o escaneo? | Interlineado y densidad |
| ¿B2B, B2C o herramienta técnica? | Carácter de la fuente y pesos |

En producto, ante la duda: más denso, más simple, más neutro.

### Familias

- **Una familia con varios pesos** es lo profesional en producto.
- **Dos familias** requieren razón: marketing con dirección de arte real, producto editorial
  o de documentación, monoespaciada para código.
- **Tres familias:** casi nunca.
- Si hay dos: contraste de estructura (serif + sans, no dos serif), alturas de x parecidas.
- Ojo con el default: una sans neutra omnipresente (Inter y similares) es correcta para UI
  operativa, pero en marketing es una señal de "no se eligió nada". En marketing la fuente
  sale de la referencia dominante.
- Performance: ≤ 2 familias, ≤ 3 pesos cargados, variables si se puede, `font-display: swap`.

### Escala

Elegí una proporción y respetala. Máximo 6 a 8 tamaños en producción.

| Proporción | Uso |
|---|---|
| 1,067 – 1,125 | UI densa, dashboards |
| **1,200** | Uso general (default) |
| 1,250 – 1,333 | Marketing, editorial, layouts expresivos |
| 1,618 | Solo el hero de una landing |

Ejemplo (1,2 × 16 px): 11 · 13 · 16 · 19 · 23 · 28 · 33 · 40 · 48 · 57 px.

### Pesos

400 cuerpo · 500 etiquetas · 600 botones y subtítulos · 700 títulos. Nunca párrafos en
negrita. A mayor tamaño se puede bajar el peso; a menor tamaño hace falta subirlo. El 300
solo en display grande.

### Interlineado

| Texto | Interlineado |
|---|---|
| Cuerpo | 1,5 – 1,7 |
| Párrafos cortos | 1,4 – 1,5 |
| Títulos | 1,0 – 1,2 |
| Display grande | 0,9 – 1,1 |
| UI | 1,2 – 1,4 |
| Botones | 1 |

Líneas más largas, más interlineado. Las sans necesitan ~0,1 más que las serif.

### Ritmo vertical

Paso mínimo = interlineado × 0,5. Con 16 px / 1,5 → 24 px → escala 12 / 24 / 48 / 72.
**El espaciado importa más que el tamaño de fuente:** mismas fuentes con distinto espaciado
parecen productos distintos. Se arregla el espaciado antes de tocar las fuentes.

### Tracking (en `em`, nunca en `px`)

| Texto | Valor |
|---|---|
| Cuerpo 14–18 px | 0 |
| Texto chico 11–13 px | +0,01 a +0,02 em (obligatorio) |
| Etiquetas y botones | +0,01 a +0,03 em |
| MAYÚSCULAS | +0,06 a +0,10 em (obligatorio) |
| Títulos 32 px+ | 0 a −0,02 em |
| Display 48 px+ | −0,02 a −0,03 em |

### Medida

50 a 75 caracteres por línea (`max-width: 65ch`). Nunca párrafos a todo el ancho en escritorio.

### Detalles de pulido

- `…` en vez de `...`; "Cargando…", "Guardando…".
- Comillas tipográficas del idioma: « » o “ ” en español, “ ” en inglés.
- Espacio duro entre número y unidad (`10&nbsp;MB`) y en atajos (`⌘&nbsp;K`).
- `font-variant-numeric: tabular-nums` en tablas, precios y contadores.
- `text-wrap: balance` en títulos cortos; `text-wrap: pretty` en prosa donde importa.
  No en navegación, botones, tablas, badges ni código.
- Contenedores preparados para texto largo: truncar, recortar a N líneas, cortar palabras
  largas; en flex, `min-width: 0` en el hijo para que trunque.

### Responsive

`clamp()` para tamaños fluidos (ej. hero `clamp(2rem, 5vw + 1rem, 3.5rem)`). Cuerpo de 16 a
18 px; H1 de 32–36 px en móvil a 48–64 px en escritorio. Probar en 320, 768 y 1440 px.

### Conteo rápido

≤ 8 tamaños · ≤ 4 colores de texto · ≤ 4 pesos. Más que eso es slop o falta edición.

---

## Color

### Contexto primero

| Pregunta | Qué cambia |
|---|---|
| ¿Producto o marketing? | Producto: menos colores, más neutros, semántica estricta. Marketing: más emoción permitida |
| ¿Densidad de datos? | Dashboards: acentos apagados, contraste de texto alto, nada que brille |
| ¿Hay marca definida? | Se traduce el color de marca a tokens; no se pinta todo con él |

Regla: menos colores, más neutros, propósito estricto.

### Estructura de la paleta

1. **Neutros (70–90 % de la UI):** 10–12 pasos (50…950), con carácter cálido o frío leve.
   50 fondos · 100–200 superficies · 300–400 bordes · 500 placeholder · 600–700 texto
   secundario · 800–900 texto principal · 950 casi negro.
2. **Un acento principal** con escala completa: 50–100 fondos teñidos · 500–600 normal ·
   600–700 hover · 700–800 presionado. Usado poco y con rol.
3. **Semánticos** (éxito, advertencia, peligro, info opcional), siempre en conjunto:
   color + fondo + borde + texto encima.
4. **Efectos** (degradados, brillos): raros y localizados, más en marketing que en producto.

Generá las escalas en OKLCH (luminosidad perceptual pareja) y guardalas en hex.

### Distribución

60–80 % neutros · 10–20 % jerarquía de texto · 5–10 % acentos y semánticos.
Máximo 2 colores por componente. Los estados cambian por estructura (un poco más oscuro, un
poco más de contraste), no con un color nuevo cada vez.

### Contraste (WCAG AA)

Cuerpo ≤ 16 px: 4,5:1 · texto grande (18 px negrita o 24 px): 3:1 · íconos y componentes: 3:1.
Fallas típicas: texto secundario demasiado claro y texto sobre fondos teñidos. Si al
entrecerrar los ojos el texto desaparece, está muy claro. El aire lo da el espaciado, no el
texto gris.

### Nunca

- Negro puro sobre blanco para cuerpo: `#0b0b0b`–`#111`.
- Hex sueltos en componentes: todo desde tokens.
- Varios acentos compitiendo.
- Tema oscuro invertido mecánicamente.

### Tema oscuro (cuando el brief o la referencia lo piden)

- Neutros propios: fondo `#0f0f0f` aprox., no `#000`; texto `#f0f0f0`, no `#fff`.
- Elevación con superficies apenas más claras y bordes de 1 px de bajo contraste; sombras
  mínimas o ninguna.
- `color-scheme: dark` en `:root` del tema oscuro (barras de scroll, inputs) y
  `<meta name="theme-color">` acorde al fondo.

### Nombres de tokens: por función, nunca por color

```css
:root {
  --bg: …; --surface-1: …; --surface-2: …;
  --text: …; --text-muted: …; --text-subtle: …;
  --border: …; --border-strong: …;
  --primary: …; --on-primary: …; --primary-hover: …; --primary-active: …; --primary-tint: …;
  --success: …; --success-bg: …; --warning: …; --warning-bg: …; --danger: …; --danger-bg: …;
}
```

### Paleta desde cero (sin marca)

1. Carácter de neutros: frío (técnico, preciso) o cálido (cercano, premium).
2. Un acento que funcione en botón, link y badge, sobre claro y oscuro, fuerte pero no fluo.
3. Escala desde OKLCH o una paleta curada (Radix, Open Color, Tailwind).
4. Semánticos que no choquen con el acento (acento verde → éxito verde azulado, etc.).

### Degradados

Solo si apoyan la identidad, no rompen la lectura y están localizados. Nunca son la única
forma de que algo se vea. El texto tiene que tener contraste en todo el degradado.
