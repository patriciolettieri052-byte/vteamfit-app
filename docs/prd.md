# PRD: VTeamFit 2026-2027 (Plataforma Web de Entrenamiento y Rendimiento)

Estado: borrador
Versión: 0.1
Fuente: docs/business_case.md

## 1. Objetivo

Permitir a deportistas y atletas adquirir y ejecutar planes de entrenamiento guiados por video, registrar su rendimiento físico sesión a sesión y monitorear su evolución biométrica en una interfaz web de alto rendimiento.

## 2. Alcance

### Incluido
- Landing page pública con catálogo interactivo de los 5 planes oficiales de VTeamFit (Transforma tu Cuerpo, Plan Pádel, Glúteos de Acero, Entrena Conmigo y Curso Físico en Pista).
- Página de detalle metodológico para cada uno de los 5 planes con desglose de semanas, días, metodología y precios.
- Flujo de checkout y compra simulada con alta de usuario e inscripción inmediata al plan.
- Vista de progreso del alumno con selección de semanas (1 a 24/28) y días de entrenamiento (Lunes a Sábado).
- Reproductor de entrenamiento interactivo con visualización de video de cada ejercicio, cronómetro de sesión y descanso, y campos de registro de series, repeticiones y peso utilizado.
- Registro determinista de finalización del entrenamiento del día con telemetría de esfuerzo percibido (RPE 1-10) y notas.
- Dashboard de estadísticas del atleta: racha de días activos, porcentaje de avance del plan, historial de entrenamientos completados y gráfica de evolución de peso corporal.
- Gestión de perfil de atleta (nombre, peso, altura, nivel de experiencia y datos biométricos).

### Fuera de alcance
- Procesamiento de cobro bancario real con tarjetas de crédito en vivo (se utiliza simulación autorizada determinista para el MVP).
- Soporte multilingüe completo (el selector visual muestra banderas de idiomas pero los textos operan en Español nativo).
- Aplicaciones móviles nativas para iOS App Store o Google Play Store (la solución es WebApp responsiva móvil-first).
- Sistema de mensajería o chat en tiempo real dentro de la plataforma (el contacto personalizado para el plan Entrena Conmigo deriva a WhatsApp).

## 3. Roles

| Rol | Descripción | Puede |
| --- | --- | --- |
| Atleta / Alumno | Usuario registrado que adquiere un plan de entrenamiento | Consultar planes, adquirir planes, acceder a sus rutinas diarias, reproducir videos de ejercicios, registrar series/pesos, finalizar sesiones, actualizar su peso y consultar estadísticas personales |
| Visitante Anónimo | Usuario no autenticado que navega la web pública | Explorar la landing page, consultar detalles metodológicos de los 5 planes, iniciar el flujo de compra/registro e iniciar sesión |
| Entrenador / Admin | Victoria Torres y equipo técnico de VTeamFit | Consultar métricas generales de usuarios, auditar catálogo de planes y verificar rutinas cargadas |

## 4. Entidades

| Entidad | Atributos de negocio | Estados posibles |
| --- | --- | --- |
| Plan | Identificador, nombre comercial, descripción metodológica, tagline, duración en semanas/días, frecuencia semanal, precio, período de facturación, imagen de portada, visibilidad | Borrador, Publicado, Archivado |
| Ejercicio | Nombre canónico, categoría anatómica/deportiva, video demostrativo, código de video, variantes aceptables, modalidad apta para casa, notas técnicas | Activo, Inactivo |
| Rutina Diaria | Plan asociado, número de semana, día de la semana, enfoque técnico, protocolo de calentamiento, lista secuencial de ejercicios (orden, series, repeticiones sugeridas, RPE) | Programada, En curso, Completada |
| Inscripción (Enrollment) | Alumno asociado, plan asociado, fecha de inicio, semana actual de progresión, estado de la membresía | Activa, Pausada, Finalizada |
| Registro de Sesión (Workout Log) | Alumno, plan, semana, día, fecha de finalización, duración total en segundos, esfuerzo percibido (1-10), notas del atleta, detalle por ejercicio (series realizadas, repeticiones y kilos levantados) | En progreso, Completado |
| Registro de Peso | Alumno, fecha de registro, peso corporal en kilogramos | Registrado |

## 5. Estados y transiciones

| Entidad | Estado origen | Evento | Estado destino | Quién lo dispara |
| --- | --- | --- | --- | --- |
| Inscripción | — | Alumno completa checkout simulado | Activa | Alumno / Sistema |
| Inscripción | Activa | Alumno solicita pausa temporal | Pausada | Alumno / Admin |
| Inscripción | Activa | Alumno completa la totalidad de semanas del plan | Finalizada | Sistema |
| Rutina Diaria | Programada | Alumno abre la sesión e inicia cronómetro | En curso | Alumno |
| Rutina Diaria | En curso | Alumno presiona "Finalizar Entrenamiento" | Completada | Alumno |
| Registro de Sesión | — | Alumno registra series y confirma fin de sesión | Completado | Alumno |

## 6. Flujos

### F-01: Exploración y Selección de Plan
- Actor: Visitante Anónimo o Alumno
- Precondición: Ninguna.
- Pasos:
  1. El usuario accede a la página principal `/`.
  2. El sistema presenta el Hero con video/imagen de fondo, titular institucional y botón `VER PLANES`.
  3. El usuario se desplaza o presiona `VER PLANES`.
  4. El sistema presenta la grilla de los 5 planes oficiales con sus portadas, títulos, badges de duración y precios.
  5. El usuario hace clic en una tarjeta de plan.
  6. El sistema redirige a la vista de detalle `/planes/[slug]` presentando la descripción metodológica, duración y plan de entrenamiento.
- Resultado: El usuario visualiza la oferta deportiva completa del plan seleccionado.
- Errores y qué ve el usuario: Si el slug de plan no existe, el sistema muestra pantalla de error 404 amigable con botón de regreso al catálogo.

### F-02: Adquisición de Plan (Checkout Simulado) y Onboarding
- Actor: Visitante Anónimo
- Precondición: El usuario seleccionó un plan en `/planes/[slug]`.
- Pasos:
  1. El usuario presiona el botón de compra o suscripción en la vista del plan.
  2. Si el usuario no está autenticado, el sistema solicita email, contraseña y nombre completo.
  3. El usuario confirma los datos y procede al pago simulado.
  4. El sistema genera la cuenta de usuario, asigna la inscripción activa al plan con fecha actual y semana 1.
  5. El sistema redirige automáticamente al Dashboard del alumno.
- Resultado: El usuario queda autenticado y con acceso habilitado a su plan de entrenamiento.
- Errores y qué ve el usuario: Si el email ya está registrado, el sistema solicita ingresar la contraseña para asociar el plan a su cuenta existente.

### F-03: Ejecución y Registro de Rutina Diaria
- Actor: Alumno con plan activo
- Precondición: El alumno tiene una inscripción en estado `Activa`.
- Pasos:
  1. El alumno ingresa a la vista del plan y selecciona la Semana (ej. Semana 1) y el Día (ej. Lunes).
  2. El sistema carga la rutina del día correspondiente con su enfoque (ej. `PREVENIR+VELOCIDAD`), calentamiento y lista secuencial de ejercicios.
  3. El alumno inicia el cronómetro de la sesión.
  4. Para cada ejercicio, el alumno puede reproducir el video HD demostrativo en streaming continuo.
  5. El alumno completa sus series e ingresa repeticiones logradas y peso utilizado (kg).
  6. Al concluir los ejercicios, el alumno califica su esfuerzo percibido (escala 1 a 10) y agrega notas opcionales.
  7. El alumno presiona `COMPLETAR ENTRENAMIENTO`.
  8. El sistema guarda el registro de la sesión y marca el día con un checkmark verde determinista.
- Resultado: La rutina queda registrada, se actualiza la racha de días activos y el porcentaje de avance del plan.
- Errores y qué ve el usuario: Si falta conexión a internet en el momento de guardar, el sistema mantiene los datos en memoria local y reintenta la sincronización con feedback visual.

### F-04: Monitoreo de Progreso y Estadísticas
- Actor: Alumno
- Precondición: El alumno ha completado al menos una sesión.
- Pasos:
  1. El alumno accede a la pestaña de Estadísticas / Dashboard.
  2. El sistema calcula y muestra:
     - Días entrenados totales.
     - Racha activa de días consecutivos.
     - Porcentaje total completado del plan actual.
     - Gráfica de evolución de peso corporal a lo largo del tiempo.
  3. El alumno puede ingresar un nuevo registro de peso corporal indicando fecha y kilogramos.
  4. El sistema actualiza la gráfica inmediatamente.
- Resultado: El alumno cuenta con visibilidad clara de su constancia y progreso físico.

## 7. Reglas de negocio

| ID | Regla |
| --- | --- |
| RN-01 | Un alumno solo puede registrar progreso en los planes en los que posee una inscripción activa. |
| RN-02 | El catálogo público de planes debe mostrar siempre los 5 planes oficiales con su nomenclatura, precios y frecuencias canónicas extraídas de producción. |
| RN-03 | Las rutinas de entrenamiento deben cargarse en un único documento de datos sin requerir uniones complejas, garantizando una respuesta menor a 500ms en redes móviles. |
| RN-04 | Los videos demostrativos deben servirse exclusivamente en formato MP4 con índice `faststart` desde la red de distribución de contenidos (CDN) configurada. |
| RN-05 | Si un alumno completa un entrenamiento de un día ya finalizado previamente, el sistema actualiza el registro existente preservando el historial más reciente sin duplicar el día. |
| RN-06 | La racha de entrenamiento se incrementa en 1 si el alumno registra un entrenamiento dentro de las 48 horas posteriores a su última sesión completada. |
| RN-07 | El cálculo del porcentaje de avance del plan es igual a `(Días completados / Días totales del plan) * 100`. |

## 8. Requisitos funcionales

| ID | Requisito | Flujo | Criterio de aceptación |
| --- | --- | --- | --- |
| RF-01 | El sistema debe mostrar la landing page pública con los 5 planes oficiales y su estética carbón/cobre. | F-01 | Acceder a `/` muestra las 5 tarjetas de planes con sus portadas, títulos, badges y precios exactos. |
| RF-02 | El sistema debe permitir ver el detalle metodológico de cada plan. | F-01 | Acceder a `/planes/[slug]` renderiza la información de semanas, enfoque y botón de inscripción del plan solicitado. |
| RF-03 | El sistema debe permitir adquirir un plan en modo simulación y dar de alta al usuario. | F-02 | Al completar el formulario de compra simulada, se crea el perfil del usuario y se genera un registro en `user_enrollments`. |
| RF-04 | El sistema debe mostrar la matriz de 24 semanas y los días de Plan Pádel. | F-03 | En la vista de Plan Pádel, el alumno puede alternar entre las 24 semanas y ver los días con su respectivo enfoque. |
| RF-05 | El sistema debe reproducir el video MP4 de cada ejercicio de la rutina. | F-03 | Cada ejercicio de la rutina cuenta con un reproductor que carga el video desde la URL del CDN sin descargas forzadas. |
| RF-06 | El sistema debe permitir registrar series, repeticiones y peso por ejercicio. | F-03 | Los inputs de serie, reps y kg admiten valores numéricos y se guardan dentro de la estructura de la sesión. |
| RF-07 | El sistema debe registrar la finalización del día de entrenamiento. | F-03 | Presionar finalizar guarda el log con RPE, duración y marca visualmente el día como completado con tilde verde. |
| RF-08 | El sistema debe calcular y mostrar la racha y porcentaje de avance en el Dashboard. | F-04 | El Dashboard muestra la racha calculada según RN-06 y el porcentaje completado según RN-07. |
| RF-09 | El sistema debe permitir registrar y graficar el peso corporal del alumno. | F-04 | Ingresar una cifra de peso agrega un punto a la gráfica cronológica de evolución biométrica. |

## 9. Requisitos no funcionales

- **Rendimiento:** Tiempo de carga inicial de la aplicación inferior a 1.5 segundos en conexiones 4G estándar.
- **Reproducción de Video:** Comienzo de reproducción de video en menos de 500ms gracias al buffer `faststart`.
- **Diseño Adaptativo (Mobile-First):** Interfaz optimizada para pantallas táctiles de smartphones (viewport 360px a 430px) y escalable a pantallas de escritorio (hasta 4K).
- **Consistencia Visual:** Aplicación estricta de los tokens de color OKLCH (carbón profundo `--bg-carbon` y cobre `--copper-vibrant`) definidos en `01_DESIGN.md`.
- **Aislamiento de Datos:** Seguridad mediante políticas Row Level Security (RLS) en Supabase para que ningún alumno pueda leer o modificar registros de otro alumno.

## 10. Supuestos

- Para este MVP, la compra de planes no requiere pasarela bancaria real conectada; se opera con simulación autorizada que habilita inmediatamente el plan.
- Los 5 planes comparten el mismo esquema de almacenamiento modular y pueden referenciar la biblioteca centralizada de videos MP4.
- Los videos de las 24 semanas de Plan Pádel ya se encuentran staged y alojados en la CDN de Bunny.net.

## 11. Preguntas abiertas

- *(Ninguna en este momento: los 5 planes, precios, fotos, videos y esquemas de datos han sido confirmados y verificados en producción)*.

## Historial de cambios

| Versión | Cambio |
| --- | --- |
| 0.1 | Versión inicial creada en Fase 1 basada en `docs/business_case.md`, extracción visual forense y catálogo consolidado de 5 planes. |
