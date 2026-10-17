# Anti-slop: los tells de diseño hecho por IA (2026)

Los modelos convergen en los mismos patrones porque optimizan por lo "seguro" y lo
"promedio". Un diseñador real elige con intención y contexto. Esta guía lista los tells,
por qué aparecen y qué hacer en su lugar.

**Regla general:** ningún patrón está prohibido en absoluto. Está prohibido **por defecto**.
Se usa solo si una referencia real y el contexto del producto lo justifican, y esa
justificación queda escrita en el ledger de decisiones.

---

## Bloque A — Color y superficie

### 1. Índigo / violeta por defecto
`#6366f1`, `#8b5cf6`, `#7c3aed`: la huella dactilar de la UI generada por IA, heredada de
los defaults de Tailwind. Antes de usar cualquier violeta, respondé: ¿la marca lo exige?,
¿las referencias lo usan y por qué?, ¿hay una razón semántica? Si no hay un sí, cambialo
por el color que salga de la investigación (azul, verde azulado, verde, naranja, o el
color propio de la marca).

### 2. Modo oscuro por defecto
El oscuro es una decisión de marca, no un default. Sin indicación del brief ni de las
referencias, se arranca en claro. Variante 2026 del mismo tell: oscuro con neón verde o
cian "estilo developer" para cualquier producto.

### 3. Editorial calmo en piloto automático
Fondo crema o marfil, serif grande de alto contraste, una palabra en itálica, paleta oliva /
arcilla / terracota, mucho aire. Es excelente para editorial, cultura, hotelería, moda o
gastronomía; es slop en herramientas, fintech, B2B, dashboards o UI funcional. Para usarlo
tenés que poder explicar: por qué este producto necesita voz editorial, por qué una serif
comunica mejor que una sans, por qué los tonos tierra le hablan a esta audiencia, y qué
referencias lo respaldan. **Prueba del logo:** si cambiás el logo por el de un café o una
revista literaria y el hero sigue siendo verosímil, es genérico.

### 4. Texto con degradado
`background-clip: text` con violeta→rosa o azul→cian en el título. Distinción a través de
escala, peso, layout o imagen, no de un degradado en las letras.

### 5. Orbes, blobs, mesh gradients y ruido
Fondos de manchas difuminadas o grano por todos lados para "dar atmósfera". Si la marca no
tiene esa textura en su identidad, es decoración vacía. Mejor: imagen real, una superficie
plana con buen contraste, o un recurso gráfico propio de la marca.

### 6. Glassmorphism
Blur + transparencia en tarjetas, barras y modales sin necesidad. Baja el contraste y
envejece rápido. Solo cuando hay contenido real detrás que necesita intuirse (por ejemplo,
una barra sobre un mapa o un video).

### 7. Mismo radio grande y sombra grande en todo
`rounded-2xl` + `shadow-xl` aplicados a botones, inputs, tarjetas, imágenes y modales por
igual. Los radios y sombras tienen rol: elevación indica jerarquía, el radio responde a la
personalidad de la referencia (hay direcciones de radio cero).

---

## Bloque B — Estructura y layout

### 8. Tarjetas para todo
La opción por defecto es **sin tarjeta**: secciones, columnas, divisores, bloques de imagen.
Una tarjeta se justifica cuando es el contenedor de una interacción (ítem clickeable,
formulario, panel expandible). **Prueba:** sacá borde, sombra, fondo y radio; si no se
pierde interacción ni comprensión, no era una tarjeta.

### 9. Franja de acento a la izquierda
`border-left: 4px solid <acento>` para "dar interés". En productos reales esa franja
significa algo: alerta, ítem activo, estado, prioridad, dueño. Si no podés decir en una
palabra qué significa el color, sacala.

### 10. Hero centrado + dos botones + mockup flotante
Título centrado, subtítulo gris, botón primario + "Ver demo", y una captura del producto
flotando con sombra y perspectiva. Es la landing de todos. El hero sale de la referencia
dominante y del producto: puede ser imagen a sangre, demo interactiva, un dato, una
tabla, un formulario directo.

### 11. Fórmula hero → 3 features → precios → FAQ → CTA
El orden de secciones sale de las objeciones reales del usuario y de los patrones de
pantallas de referencia, no de una plantilla.

### 12. Tres features con ícono en cuadradito
Ícono de línea dentro de un cuadrado de color al 10 %, título en negrita y dos líneas
debajo, multiplicado por 3 o 6. Mejor: mostrar el producto haciendo la cosa (captura,
demo, ejemplo real), o una lista densa y bien tipografiada.

### 13. Bento grid por defecto
La grilla de cajas de distintos tamaños se volvió la plantilla de 2024–2026. Solo cuando el
contenido realmente tiene piezas de distinto peso que conviven.

### 14. Eyebrow en cada sección
Etiqueta en mayúsculas color acento + título grande + párrafo centrado, repetido en todas
las secciones. Una vez puede funcionar; en todas es una plantilla.

### 15. Todo simétrico y centrado
Sin tensión visual, todo alineado al centro. Asimetría intencional, una ruptura de grilla
(una, no todas), espacio en blanco como elemento.

### 16. Footer de 5 columnas vacías
Columnas de links a páginas que no existen. El footer tiene lo que el sitio realmente tiene.

---

## Bloque C — Tipografía e iconografía

### 17. Palabra destacada en otra fuente
Una palabra del título pasada a serif, script, itálica o color de acento solo para "dar
gusto". Se usa únicamente si una referencia fuerte lo hace y el contenido lo justifica
(cita, voz editorial, regla del sistema tipográfico). Si no, distinción por layout, escala,
peso, imagen o interacción.

### 18. Emojis como íconos
Señal inmediata de IA. Se usa una sola librería de íconos (Lucide, Phosphor, Heroicons,
Material Symbols) o símbolos tipográficos. Emoji solo si el usuario lo pide.

### 19. El ícono de destellos para decir "IA"
El ✨ o el ícono "sparkles" pegado a todo lo que tiene IA, más la píldora "Nuevo ✨" sobre el
hero. Nombrá lo que la función hace.

---

## Bloque D — Contenido y prueba

### 20. Métricas inventadas
"10x más rápido", "99,9 % de uptime", "+5.000 empresas" sin dato del usuario. Prohibido:
placeholder `[completar con dato real]` o no se pone.

### 21. Logos y testimonios falsos
Barra de "confían en nosotros" con logos sin permiso, testimonios con avatares de stock y
nombres inventados. Prohibido. Placeholder con la estructura y una nota.

### 22. Copy de slop
"Desbloqueá tu potencial", "potenciá tu negocio", "llevá tu X al siguiente nivel",
"soluciones integrales", "experiencia única", "la nueva era de…", "innovador" sin prueba, y
rayas largas (—) en cada oración. Ver `copy.md`.

---

## Bloque E — Proceso

### 23. Promediar referencias
Se investiga bien y después se destruye la investigación buscando la intersección más
segura. Señales: fondos oscuros que terminan crema, acentos saturados que terminan arcilla,
sans geométricas que terminan serif amable, radio cero que termina tarjeta redondeada,
layouts distintivos que terminan en hero + secciones. Sintetizar es **elegir y adaptar**.

### 24. Deriva de rol de tokens
Usar los tokens reales de una referencia cambiándoles el significado: acento de CTA como
fondo, colores de sintaxis como acentos de UI, pasteles decorativos como superficies de
control, radios y sombras "suavizados". Asigná a cada referencia un trabajo acotado: una
manda en fondo y tipografía, otra en la ventana de código, otra en el CTA.

### Extra — Imágenes falsas o colapso a solo texto
Si la dirección depende de fotografía, ilustración o capturas, se preserva el rol de la
imagen: asset real, generado o stock, primitiva en código solo para diagramas, íconos,
gráficos o patrones simples, o placeholder honesto con proporción fija, alt y nota de
dirección de arte. Nunca fotos o ilustraciones imitadas con CSS.

### Extra — Animación de aparición en cada sección
Fade-up al hacer scroll en todo. El movimiento tiene que dar feedback, continuidad o
jerarquía; si no, se saca. Ver `motion-e-iconos.md`.

---

## Checklist antes de entregar

```
□ El acento NO es índigo/violeta (o está justificado en el ledger)
□ Las tarjetas se justifican por interacción
□ Sin franjas laterales decorativas
□ Sin emojis ni destellos como íconos
□ Modo de color decidido por brief o referencia, no por default
□ Serif editorial / tonos tierra justificados por el producto
□ Sin palabra destacada decorativa en el título
□ Sin texto degradado, orbes, glass ni bento por defecto
□ Radios y sombras con rol, no uno solo para todo
□ Rasgos fuertes de la referencia preservados, sin promediar
□ Tokens usados dentro de su rol
□ Imagen preservada con asset real, primitiva adecuada o placeholder honesto
□ Cero métricas, logos o testimonios inventados
□ Copy sin palabras prohibidas
□ Pasa la prueba de captura, de logo y de identidad
□ Cada decisión tiene un porqué de ESTE proyecto
```

## Seguro vs. intencional

| Seguro (olvidable) | Intencional (memorable) |
|---|---|
| 3 planes de precio porque "todos lo hacen" | 2 columnas porque el producto tiene 2 planes |
| Hero texto a la izquierda e imagen a la derecha | Imagen a sangre con texto encima porque la marca vive de la foto |
| Grilla de tarjetas iguales porque "es limpio" | Layout asimétrico porque se busca tensión |
| Crema + serif + oliva porque "se siente con gusto" | Sistema editorial serif porque el producto es una editorial |

"Lo elegí porque [razón específica de este proyecto]" le gana a "lo elegí porque todos lo hacen".
