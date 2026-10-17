# Ajuste por tipo de vertical

La lista de tells está calibrada sobre software y marketing digital. Antes de aplicar el
control de slop, ubicá el proyecto en uno de estos tipos y ajustá. El tipo se declara en el
brief y cada tell relajado queda justificado en el ledger.

Un proyecto puede combinar tipos (un e-commerce de salud es transaccional + regulado): en
ese caso se suman los requisitos y gana la regla más estricta.

---

## Resumen

| Tipo | Ejemplos | Qué decide la compra | Densidad y tono |
|---|---|---|---|
| Transaccional | E-commerce, reservas, delivery, marketplaces, concesionarias | Precio, confianza, rapidez para completar | Media-alta, directo, orientado a la acción |
| Emocional / aspiracional | Lujo, moda, hotelería, gastronomía, real estate premium, eventos | Deseo, estatus, atmósfera | Baja, mucho aire, imagen protagonista |
| Regulado | Salud, finanzas, seguros, legal, gobierno, educación formal | Seguridad, claridad, cumplimiento | Media, calmo, sin bombo |
| B2B operativo | SaaS, herramientas internas, dashboards, logística, agro-tech | Eficiencia, datos, integración | Alta, descriptivo, funcional |
| Contenido / editorial | Medios, blogs, revistas, cultura, ONG, portfolios | Lectura, credibilidad, voz | Variable, tipografía protagonista |
| Infantil / lúdico / entretenimiento | Juegos, apps para chicos, streaming, deportes, fandom | Diversión, energía, comunidad | Variable, expresivo |

---

## Transaccional

- **Se relajan:** tarjetas (cada producto es un ítem clickeable: la tarjeta está justificada),
  grillas uniformes de productos, badges de oferta y estado.
- **Se endurecen:** métricas y reseñas inventadas (prohibido absoluto: afectan una decisión
  de compra), urgencia falsa ("quedan 2", contadores que se reinician), precios sin impuestos
  o costos ocultos que aparecen en el checkout.
- **Requisitos que se suman:** precio total visible antes del pago, costos de envío claros,
  política de cambios y devoluciones accesible, estados de stock reales, checkout con la menor
  cantidad de pasos posible, invitado sin registro obligatorio si el negocio lo permite.
- **Referencias a buscar primero:** pantallas de ficha de producto, carrito y checkout de los
  líderes de la categoría; flujos de compra completos.

## Emocional / aspiracional

- **Se relajan:** editorial calmo (serif, tonos cálidos, mucho aire), modo oscuro, palabra
  destacada en el título, animaciones de entrada más lentas (hasta 600–800 ms en marketing),
  layouts asimétricos y rupturas de grilla. Siguen necesitando referencia que lo respalde.
- **Se endurecen:** imágenes falsas con CSS o fotos de stock genéricas (acá la imagen ES el
  producto), copy con adjetivos vacíos ("experiencia única", "lujo inigualable").
- **Requisitos que se suman:** estrategia de imagen resuelta antes del layout (fotografía
  propia, dirección de arte), performance de imágenes pesadas (formatos modernos, tamaños
  por breakpoint), contraste de texto sobre foto verificado en todo el recorrido.
- **Referencias a buscar primero:** marcas aspiracionales de la categoría y de categorías
  vecinas (un hotel puede mirar moda; un desarrollo inmobiliario puede mirar hotelería).

## Regulado

- **Se relajan:** casi nada. Se tolera más texto explicativo y más pasos de confirmación.
- **Se endurecen:** todo el copy de bombo, la urgencia, los patrones oscuros (casillas
  premarcadas, cancelación escondida), el color como único portador de información, las
  promesas de resultados.
- **Requisitos que se suman:** textos legales obligatorios, avisos de riesgo, consentimientos
  y política de datos (en Uruguay rige la Ley 18.331 de protección de datos personales),
  accesibilidad estricta (WCAG 2.2 AA como piso; AAA en partes críticas si el cliente lo exige),
  confirmación en acciones irreversibles, sesiones y seguridad visibles. **La skill no
  redacta textos legales:** se piden al cliente o se marcan `[texto legal a proveer]`.
- **Referencias a buscar primero:** organismos y empresas reguladas de primera línea de la
  categoría, guías de accesibilidad oficiales, flujos de alta, verificación y pago.

## B2B operativo

- **Se relajan:** fuente neutra de sistema o sans neutra (es lo correcto acá), alta densidad,
  tablas extensas, tonos fríos, modo oscuro si el usuario trabaja muchas horas y lo pide.
- **Se endurecen:** copy motivacional en pantallas operativas, gráficos decorativos, métricas
  héroe sin contexto, animaciones que demoran tareas repetidas.
- **Requisitos que se suman:** estados vacíos, de carga y de error para cada vista, tablas con
  orden, filtro y números tabulares, atajos de teclado, URL que refleja filtros, permisos por
  rol visibles, exportación.
- **Referencias a buscar primero:** pantallas de dashboards, tablas, configuración y
  facturación de herramientas líderes; flujos de onboarding de equipos.

## Contenido / editorial

- **Se relajan:** serif para lectura y títulos, palabra destacada si es parte del sistema
  tipográfico de la publicación, layouts de revista, ilustración.
- **Se endurecen:** medida de línea (50–75 caracteres sin excepción), jerarquía de títulos,
  contraste del cuerpo, publicidad que interrumpe la lectura.
- **Requisitos que se suman:** tipografía de lectura probada en párrafos largos, autor y fecha
  visibles, navegación por secciones, versión para compartir y leer en móvil.
- **Referencias a buscar primero:** publicaciones de referencia del tema y del país.

## Infantil / lúdico / entretenimiento

- **Se relajan:** color saturado, varias tonalidades de acento, formas redondeadas, ilustración,
  animación expresiva, a veces emojis si la marca los usa en su identidad.
- **Se endurecen:** contraste y tamaño de áreas táctiles (usuarios menores o en movimiento),
  patrones que empujan compras dentro de la app, sobrecarga de estímulos.
- **Requisitos que se suman:** en productos para menores, controles parentales, privacidad
  reforzada y cero publicidad dirigida según la normativa aplicable (a confirmar con el
  cliente); `prefers-reduced-motion` respetado aunque el estilo sea expresivo.
- **Referencias a buscar primero:** productos líderes de la franja de edad o del género
  exacto (no "apps para chicos" en general).

---

## Cómo se registra

En el brief:

```text
Tipo de vertical: [transaccional / emocional / regulado / B2B operativo / contenido / lúdico]
Requisitos del tipo: [los que aplican de la lista de arriba]
Tells relajados: [cuáles y con qué referencia]
```

En el ledger, cada tell relajado lleva su fila con la referencia y la razón.
