# DESIGN TOKENS & VISUAL SPEC // VTEAMFIT
### Documento Madre v1.0 — Ingeniería Inversa de Capa de Presentación
> **Framework:** Protocolo de Visión Computacional Anti-Slop | Appfabrik by Bamba Scale  
> **Fuente:** Aplicación Web de Producción (https://www.vteamfit.app/) y Repositorio Oficial `vteamfit-2026`  
> **Ubicación de Activos Locales (Logo, Textura y Fotos):**  
> `C:\Users\matil\.gemini\antigravity\scratch\Scale\apps\vteamfit-2026-2027\docs\extraccion_visual\Fotos`  
> **Arquetipo Estético:** Arquetipo 5 — Dinamismo de Consumo / Fitness Deportivo de Alto Rendimiento  
> **Alcance:** Desacoplamiento total de capa visual (UI/CSS/Presentación), 0% lógica de negocio, 0% llamadas de backend/DB.

---

## 1. Sistema Cromático y Tokens en Espacio OKLCH

La identidad cromática de VTeamFit se fundamenta en un contraste extremo de alta tensión: fondos oscuros profundos de carbón con textura táctil de fibra de carbono, superficies translúcidas elevadas con desenfoque de fondo (*backdrop blur*), y acentos enérgicos de cobre y naranja fuego.

```css
:root {
  /* ==========================================================================
     FONDOS Y SUPERFICIES (Base & Elevation)
     ========================================================================== */
  --bg-carbon: oklch(0.12 0.005 240);              /* #050505 - Base obsidiana profunda */
  --bg-surface: oklch(0.18 0.008 240 / 0.60);       /* Superficie elevada traslúcida */
  --bg-surface-glass: oklch(0.15 0.008 240 / 0.40); /* Paneles con backdrop-blur-xl */
  --bg-surface-solid: oklch(0.24 0.008 240);       /* Superficie opaca para inputs */
  --bg-surface-subtle: oklch(0.20 0.006 240 / 0.50);/* Contenedores secundarios */

  /* ==========================================================================
     ACENTOS DE MARCA Y ENERGÍA (Copper & Flame)
     ========================================================================== */
  --copper-primary: oklch(0.55 0.09 75);           /* #897449 - Cobre metálico base */
  --copper-vibrant: oklch(0.68 0.20 38);           /* #ff6b4a - Cobre eléctrico / Call to Action */
  --copper-hover: oklch(0.72 0.18 42);             /* #ff8566 - Hover de interacción */
  --copper-glow: oklch(0.68 0.20 38 / 0.40);       /* Halo difuso para sombras */
  --copper-subtle: oklch(0.55 0.09 75 / 0.10);     /* Fondos de chips y tags */
  --copper-border: oklch(0.55 0.09 75 / 0.30);     /* Delimitadores de foco y realce */

  /* ==========================================================================
     TINTAS TIPOGRÁFICAS (Contrast & Typography)
     ========================================================================== */
  --ink-pure: oklch(1 0 0);                         /* #FFFFFF - Blanco puro para titulares display */
  --ink-heading: oklch(0.96 0.005 240);            /* Blanco óptico de alta jerarquía */
  --ink-body: oklch(0.85 0.01 240);                /* Zinc claro para textos de lectura */
  --ink-dim: oklch(0.72 0.005 240);                 /* #AAAAAA - Subtítulos, labels y metadatos */
  --ink-muted: oklch(0.52 0.01 240);               /* Etiquetas técnicas y placeholder */

  /* ==========================================================================
     ESTADOS FUNCIONALES (Feedback & System)
     ========================================================================== */
  --state-success: oklch(0.65 0.19 152);           /* #10b981 - Día completado y rachas */
  --state-success-glow: oklch(0.65 0.19 152 / 0.30);
  --state-warning: oklch(0.70 0.19 55);            /* #f97316 - Fuego de racha activa */
  --state-error: oklch(0.62 0.22 25);              /* #ef4444 - Alertas de validación */

  /* ==========================================================================
     FILETES Y LÍNEAS ESTRUCTURALES
     ========================================================================== */
  --border-hairline: oklch(1 0 0 / 0.05);          /* 1px divisores sutiles */
  --border-medium: oklch(1 0 0 / 0.10);            /* Contornos de tarjetas */
  --border-strong: oklch(0.55 0.09 75 / 0.40);     /* Resalte de tarjeta activa */

  /* ==========================================================================
     FÍSICA VISUAL Y RADIOS DE CURVATURA
     ========================================================================== */
  --radius-xs: 4px;
  --radius-sm: 8px;
  --radius-md: 12px;
  --radius-lg: 16px;                               /* Inputs y tarjetas de ejercicio */
  --radius-xl: 24px;                               /* `rounded-3xl` - Tarjetas de plan y días */
  --radius-2xl: 32px;                              /* `rounded-[2rem]` - Bloques contenedores */
  --radius-pill: 9999px;                           /* Botones principales y badges */

  /* ==========================================================================
     TEXTURA DE FONDO & ACTIVOS LOCALES
     Ubicación física: C:\Users\matil\.gemini\antigravity\scratch\Scale\apps\vteamfit-2026-2027\docs\extraccion_visual\Fotos\
     ========================================================================== */
  --texture-carbon: url('/images/carbon-texture-v4.webp'); /* Fotos/carbon-texture-v4.webp */
  --texture-size: 500px;
}
```

---

## 2. Tipometría y Ritmo Modular

| Nivel Jerárquico | Familia Tipográfica | Peso / Estilo | Tracking (Letter-spacing) | Leading (Line-height) | Transformación |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Hero Display L1** | `Outfit`, `Helvetica Neue`, sans-serif | Black 900 / Italic | `-0.05em` (Ultra-tight) | `0.95` a `1.05` | Uppercase |
| **Sección L2** | `Outfit`, `Helvetica Neue`, sans-serif | Black 900 / Italic | `-0.03em` (Tight) | `1.1` | Uppercase |
| **Tarjetas / Cards L3** | `Helvetica Neue`, Arial, sans-serif | Black 900 / Italic | `-0.02em` | `1.15` | Uppercase |
| **Subtítulos de Sección** | `Helvetica Neue`, sans-serif | Medium 500 / Regular | `0.00em` | `1.5` | Normal |
| **Citas Editoriales** | `Helvetica Neue`, sans-serif | Medium 500 | `0.00em` | `1.4` a `1.6` | Normal |
| **Micro-etiquetas (Chips)** | `Helvetica Neue`, monospace-compat | Black 900 | `+0.20em` a `+0.30em` | `1.0` | Uppercase |
| **Botones Principales** | `Helvetica Neue`, sans-serif | Black 900 | `+0.15em` | `1.0` | Uppercase |
| **Métricas y Números** | `Outfit`, sans-serif / Tabular | Black 900 / Italic | `-0.02em` | `1.0` | Normal |

---

## 3. Box Model Museográfico y Física Visual

1. **Estructura Macro (CSS Grid):**
   * Vista Desktop: Retículas asimétricas de 2 columnas (`1.5fr 1fr` o `grid-cols-2`) con `gap: 2rem` a `3rem`.
   * Vista Mobile (App-First): Contenedor centrado `max-w-md` o `max-w-lg` con padding horizontal de `1.5rem (24px)`.
2. **Estructura Micro (Flexbox):**
   * Alineaciones internas en tarjetas de entrenamiento y filas semanales con distribución `justify-between` y `items-center`.
3. **Elevación y Atmósfera:**
   * Las superficies no flotan con sombras grises sucias. Se usa elevación por contraste de luminancia con halo localizado:
     * `shadow-[0_0_24px_rgba(255,107,74,0.4)]` en botones de acción.
     * Círculos esféricos desenfocados en el fondo: `w-[400px] h-[400px] bg-copper/10 blur-[100px] rounded-full`.
4. **Dock Flotante Global (Bottom Navigation):**
   * Elemento fixed anclado a la base (`bottom: 0`) con altura de `88px`, acabado en vidrio esmerilado `backdrop-blur-xl` con fondo `rgba(0,0,0,0.40)` y borde superior hairline `rgba(255,255,255,0.05)`.

---

## 4. Deconstrucción Anatómica de Capas de UI (Pantalla por Pantalla)

### Capa 1: Landing Page (Página Pública)
```
┌────────────────────────────────────────────────────────┐
│ [TOP BAR FLOTANTE] Logo SVG Izq. | Selector Idioma + CTA Login Der. │
├────────────────────────────────────────────────────────┤
│ [HERO FULLSCREEN]                                      │
│ - Imagen de fondo inmersiva (inicio.webp)              │
│ - Overlay en degradado vertical negro-carbón          │
│ - H1 Display: "TU MEJOR VERSIÓN" (Italic, Black)       │
│ - Tagline: "Planes de entrenamiento para ti"          │
│ - Botón Primario Píldora: "VER PLANES" con glow cobre  │
│ - Párrafo Bio Introductorio (Vicky Torres & Allemandi) │
├────────────────────────────────────────────────────────┤
│ [SECCIÓN PLANES]                                       │
│ - Encabezado: "ELIGE TU PLAN" + Píldora cobre 80px     │
│ - Grilla Responsiva 1 col (mobile) / 2 col (desktop)   │
│ - 5 Tarjetas de Plan (aspect 100/97):                  │
│   * Imagen de portada con gradiente a superficie       │
│   * Badge flotante superior ("PERSONALIZADO")          │
│   * H3 Título de Plan (Italic, Black)                  │
│   * Bloque de Precio: Valor XL + Frecuencia            │
│   * Botón CTA Píldora                                  │
├────────────────────────────────────────────────────────┤
│ [BIO SECTION VICKY TORRES]                             │
│ - Retrato Circular con borde carbón de 6px y sombra    │
│ - H2: "VICKY TORRES"                                   │
│ - Cita testimonial enmarcada con filete vertical cobre │
└────────────────────────────────────────────────────────┘
```

### Capa 2: Vista de Detalle de Plan (`/planes/[slug]`)
* **Botón de Retorno:** Píldora flotante superior izquierda con efecto blur (`← Volver`).
* **Selector de Idioma:** Anclado en esquina superior derecha.
* **Hero del Plan:** Imagen de portada a sangre con máscara de degradado inferior, H1 con el nombre del plan en display italic, y badge de duración en días.
* **Tarjeta de Descripción Semántica:** Contenedor `rounded-[2rem]` con fondo traslúcido, borde hairline y micro-orbe de luz difusa cobre.
* **Grilla de Metodología y Sistema:** 2 cajas gemelas en `bg-surface/50` con títulos en tracking expandido.
* **Barra de Acción Fija Inferior:**
  * Indicador de precio tachado y precio con descuento aplicado.
  * Botón CTA principal de ancho completo en móvil: *"Comprar Plan"* / *"Continuar"*.
  * Acordeón retráctil de Código de Descuento con campo de entrada y botón *"Aplicar"*.

### Capa 3: Autenticación (`/login`, `/registro`, `/recuperar`)
* **Contenedor:** Modal centrado de ancho acotado (`max-w-sm`) sobre lienzo carbón texturizado.
* **Cabecera de Marca:** Isologotipo central VTeamFit (`/images/logo.svg`).
* **Banner de Notificación (Condicional):** Alerta enmarcada en cobre si la suscripción ha vencido.
* **Campos de Entrada (Inputs):**
  * Etiqueta superior en mayúsculas técnicas (`text-xs font-bold uppercase tracking-widest`).
  * Campo con radio `rounded-2xl`, borde `border-dim/40` y transición a `focus:border-copper`.
* **Botón de Envío:** Bloque rectangular redondeado `py-4`, color cobre con tipografía black uppercase.
* **Navegación Auxiliar:** Enlaces a *"¿Olvidaste tu contraseña?"*, *"Crear cuenta"* y *"Ver planes disponibles"*.

### Capa 4: Onboarding de Métricas (`/onboarding`)
* **Indicador de Progreso:** Dos segmentos de píldora horizontales (`h-1`) que se iluminan secuencialmente en cobre.
* **Paso 1 (Identidad y Género):**
  * H1: "Hola 👋" con descripción amigable.
  * Selector vertical de 3 opciones (Mujer, Hombre, Prefiero no decir) con estado activo en cobre sólido.
* **Paso 2 (Métricas Físicas):**
  * Tres campos numéricos independientes: Peso (`kg`), Altura (`cm`), Edad.
  * Botones divididos de acción inferior: *"Atrás"* (secundario en superficie) y *"¡Empezar!"* (primario en cobre).

### Capa 5: Onboarding Plan Personalizado (`/dashboard/entrena-conmigo/onboarding`)
* **Barra de Progreso Fraccionada:** 4 divisiones sutiles que marcan el paso activo (`Paso X de 4`).
* **Paso 1:** Selección de Objetivo (Perder peso, Ganar músculo, Rendimiento, Otro).
* **Paso 2:** Frecuencia semanal (Selector de botones 2, 3, 4, 5, 6 días).
* **Paso 3:** Disponibilidad de equipamiento (Gimnasio completo, Casa, Solo peso corporal).
* **Paso 4:** Campo de texto libre para lesiones, patologías o limitaciones.

### Capa 6: Pantalla de Espera (`/dashboard/entrena-conmigo/espera`)
* **Atmósfera:** Orbe de resplandor difuso central (`w-[600px] h-[600px] blur-[120px]`).
* **Retrato de Autor:** Fotografía circular de Vicky Torres con borde cuádruple en cobre.
* **Badge de Pulso:** Doble punto pulsante que escolta la etiqueta `EN PREPARACIÓN`.
* **Botón Táctico de WhatsApp:** Píldora verde WhatsApp (`#25D366`) con icono SVG y enlace directo de mensajería.

### Capa 7: Dashboard Principal (`/dashboard`)
* **Cabecera de Perfil:** Avatar circular monograma (inicial del usuario en display italic) + Saludo personalizado (*"Hola, [Nombre]"*) y subtítulo motivacional.
* **Spotlight de Plan Activo:** Tarjeta de acento cobre translúcido con orbe de luz interior, indicador de pulso *"Plan Activo"* y selector desplegable para usuarios tester.
* **Listado de Semanas (Cronograma):**
  * **Tarjeta de Semana Actual (Activa):** Enmarcada con borde triple de cobre, barra de progreso lineal de días completados y botón *"Continuar"*.
  * **Tarjetas de Semanas Previas (Completadas):** Superficie atenuada al 60% de opacidad con badge esmeralda *"Completada"* e icono de verificación.

### Capa 8: Vista de Semana (`/dashboard/semana/[week]`)
* **Hero Superior Inmersivo:** Imagen panorámica (`pantalla-semanas.jpg`) que ocupa el 45% del viewport, con gradiente a negro inferior y el texto monumental *"Semana X"*.
* **Botón Circular de Retorno:** Icono chevron sobre botón esférico con blur esmerilado.
* **Lista Vertical de Días:**
  * Tarjetas de día con título de jornada (*"Lunes"*, *"Día 1"*).
  * Etiquetas de recomendación y objetivo diario.
  * Badge de intensidad dinámica (`FUERTE` en rojo, `MEDIO` en amarillo, `SUAVE` en verde) o badge de `DESCANSO` en tono cobre.
  * Medalla flotante esmeralda en esquina superior para días completados.

### Capa 9: Vista de Rutina Diaria (`/dashboard/semana/[week]/dia/[day]`)
* **Barra de Navegación Sticky:** Barra superior fija con retorno a la semana y datos de la jornada.
* **Tarjetas de Ejercicio (PulseFit Style):**
  * Miniatura cuadrada de 100x100px con esquinas `rounded-2xl`, video en loop silencioso o imagen estática, con botón de play superpuesto.
  * Cuerpo informativo: Nombre del ejercicio en display italic, categoría anatómica, contador de series x repeticiones.
  * Nota personalizada de la entrenadora (bloque enmarcado en cobre).
  * Barra gráfica de barras verticales de intensidad.
* **Botón Flotante de Cierre de Jornada:** Barra fija inferior que despliega el botón *"Completar Día"* en verde esmeralda brillante únicamente cuando todos los ejercicios han sido registrados.

### Capa 10: Ficha y Ejecución de Ejercicio (`.../ejercicio/[slug]`)
* **Reproductor de Video HD:** Frame de video responsivo con controles limpios.
* **Cronómetro Táctico de Sesión:** Display numérico en fuente monoespaciada grande con botón interactivo *"Iniciar Ejercicio"* / *"Pausar"*.
* **Tarjetas Gemelas de Objetivo:** Caja de series/repeticiones sugeridas y caja de tip mensual de técnica.
* **Formulario de Registro:** 3 inputs numéricos oscuros (`Series`, `Reps`, `Peso kg`) con selección automática de texto al foco.
* **Botón CTA Inferior:** Píldora cobre *"Guardar y Continuar"*.

### Capa 11: Pantalla de Celebración y Éxito (`.../exito`)
* **Animación de Confetti Vectorial:** Efecto de lluvia de partículas festivas.
* **Medalla Concéntrica:** Escudo circular de 96px con halo cobre y check de victoria.
* **Tarjeta de Métrica Post-Entreno:** Resumen de ejercicios completados y tiempo cronometrado en minutos.
* **Píldora Filosófica:** Bloque enmarcado con cita motivacional de disciplina deportiva.

### Capa 12: Estadísticas (`/dashboard/stats`)
* **Anillo de Progreso Circular (SVG):** Anillo de 160px con cálculo de circunferencia vectorial, porcentaje numérico central en display de 36px y etiqueta *"Completado"*.
* **Contador de Racha (Streak):** Caja de superficie con icono de llama 🔥 y métrica destacada de días consecutivos.
* **Gráfico de Evolución de Peso (Recharts):** Gráfica de línea continua en color cobre `#897449` con cuadrícula atenuada y tooltip personalizado de eje temporal.
* **Mapa de Actividad:** Cuadrícula de casillas estilo matriz de hábitos.
* **Modal de Pesaje Semanal:** Ventana flotante emergente de recordatorio cada 7 días con icono de balanza ⚖️.

### Capa 13: Perfil de Usuario (`/dashboard/perfil`)
* **Monograma de Identidad:** Avatar circular de 80px en cobre sólido con la inicial del usuario.
* **Módulo "Mis Datos":** Grilla de 3 columnas para Peso (`kg`), Altura (`cm`), Edad y Género.
* **Menú de Accesos:** Enlaces a *"Soporte y Ayuda"* y *"Políticas Legales"*.
* **Botón de Cierre de Sesión:** Botón outline atenuado con confirmación nativa.

### Capa 14: Políticas Legales y Soporte (`/politicas`, `/soporte`)
* **Cabecera Editorial:** Título H1 en display italic con subrayado decorativo en cobre de 32px.
* **Artículos de Acordeón:** Bloques en superficie oscura con borde izquierdo reforzado en cobre (`border-l-2 border-copper/30`).
* **Tarjetas FAQ:** Preguntas destacadas en blanco bold y respuestas en texto dim de alta legibilidad.

---

## 5. Dock Global de Navegación Inferior (BottomNav)

El componente `BottomNav` gobierna el flujo táctil en dispositivos móviles:
* **Estructura:** Barra fija inferior de `88px` con padding seguro para dispositivos con barra de gestos (`pb-safe-offset-2`).
* **Fondo:** `bg-black/40` con `backdrop-blur-xl` y borde superior `border-white/5`.
* **Destinos (4 Items):**
  1. `Home` (`/dashboard`): Icono de casa.
  2. `Planes` (`/#planes`): Icono de grilla de 4 módulos.
  3. `Stats` (`/dashboard/stats`): Icono de gráfico de barras.
  4. `Perfil` (`/dashboard/perfil`): Icono de usuario.
* **Estado Activo:** El icono escala un 110% con resplandor cobre (`drop-shadow-[0_0_8px_rgba(255,107,74,0.5)]`), color cobre y etiqueta de texto visible en mayúsculas de 10px.
