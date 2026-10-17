# Business Case: VTeamFit (vteamfit-2026-2027)

Estado: pendiente de aprobacion
Fecha: 2026-10-17
Autor: PM (Asistido por Antigravity en Fase 0)
Workspace: C:\Users\matil\.gemini\antigravity\scratch\Scale\apps\vteamfit-2026-2027

---

## 1. Ruta

**Ruta A (Problema operativo y modernización de cliente existente).**  
VTeamFit es una plataforma fitness en producción real (`https://www.vteamfit.app/`), fundada por Victoria Torres junto a Tito Allemandi (bicampeón mundial de pádel). La versión actual acumula severa deuda técnica, acoplamiento rígido de código que dificulta modificar planes o ejercicios, y una experiencia de registro de entrenamiento que necesita modernizarse hacia una arquitectura modular, escalable y mantenible.

---

## 2. Problema

Actualmente, la plataforma web existente presenta:
1. **Alta deuda técnica y rigidez estructural:** Modificar o agregar planes, semanas, días, circuitos y ejercicios requiere tocar código estático, generando fricción operativa para los entrenadores y riesgo de regresiones.
2. **Experiencia de entrenamiento y telemetría incompleta:** Los usuarios necesitan un flujo ergonómico donde ejecutar su sesión (video HD, cronómetro activo, inputs ágiles para registrar series, reps y peso utilizado) y recibir validación inmediata (check de completado en el día).
3. **Flujos de acceso y autenticación desacoplados:** Se requiere un flujo sin fricción donde usuarios anónimos puedan navegar la landing, explorar planes con todo su detalle metodológico, y autenticarse o registrarse directamente durante el proceso de compra (simulado en este MVP), manteniendo la sesión activa mediante cookies de sesión seguras.
4. **Falta de visibilidad de progreso (Stats & Dashboard):** Los usuarios carecen de un panel centralizado de estadísticas (días completados, racha activa, historial de peso corporal y porcentaje de avance del plan).

---

## 3. Evidencia

1. **Plataforma viva en producción:** `https://www.vteamfit.app/` validada por usuarios y clientes activos.
2. **Activos y Especificaciones Extraídas:** Repositorio documental completo pre-extraído en `docs/extraccion_visual/`:
   - `01_DESIGN.md` (Tokens cromáticos OKLCH Carbón/Cobre, tipografía Outfit/Helvetica, componentes de UI y física visual).
   - `02_TEXTOS.md` (Inventario 100% fiel de textos, planes, precios y microcopy en español).
   - `03_FOTOS.md` y carpeta `Fotos/` (Fotografía editorial de Vicky Torres, portadas de planes, textura táctil `carbon-texture-v4.webp` y logotipo SVG).
3. **Auditoría de código legacy:** Diagnóstico de código previo con deuda técnica sustancial, dependencias obsoletas y falta de esquemas de datos relacionales normalizados.

---

## 4. Usuarios y Objetivos

1. **Usuario Alumno / Atleta (Nuevo o Recurrente):**
   - Explorar los planes en la landing page pública y consultar sus detalles (duración, metodología, precio).
   - Adquirir un plan (con registro/login fluido durante el checkout simulado).
   - Acceder a su plan activo estructurado verticalmente en Semanas $\rightarrow$ Días $\rightarrow$ Circuitos $\rightarrow$ Ejercicios.
   - Ejecutar la rutina diaria guiada por video, utilizando el cronómetro de sesión y registrando series, reps y peso.
   - Monitorear su evolución en el Dashboard de Estadísticas (racha, peso, porcentaje completado).
   - Gestionar su perfil, datos biométricos, soporte y políticas legales.
2. **Entrenador / Administrador (Vicky Torres & Equipo):**
   - Disponer de un catálogo modular en base de datos donde agregar, editar o reordenar planes, semanas, circuitos y ejercicios sin intervención de desarrollo de frontend.

---

## 5. Resultado Esperado y Métricas de Éxito

1. **Resultado de Producto:**
   - WebApp responsiva móvil-first y desktop de alto rendimiento (Arquetipo 5: Fitness Dinámico, estética carbón profundo con acentos cobre OKLCH y textura táctil de fibra).
   - Flujo de compra simulado de extremo a extremo que crea la cuenta, asigna la suscripción activa y redirige al dashboard.
   - Reproductor interactivo de ejercicios con cronómetro, registro de entrenamiento y checkmark determinista en la vista de día.
   - Dashboard de estadísticas con cálculo automático de racha, avance porcentual y gráfico de evolución de peso.
2. **Métricas de Éxito:**
   - 0 fallos de consistencia en el registro de progreso y telemetría de ejercicios.
   - Tiempo de carga percibido en navegación inferior a 1 segundo.
   - Cumplimiento estricto del linter anti-slop y 100% de cobertura de tipos sin errores `tsc`.

---

## 6. Restricciones

1. **Stack Tecnológico Vinculante (según SOP Antigravity):**
   - Frontend: Next.js (App Router, TypeScript, Tailwind CSS, Lucide Icons, tokens OKLCH).
   - Backend: FastAPI / Supabase Client tipado.
   - Base de Datos y Auth: Supabase (PostgreSQL relacional, Auth por cookies de sesión, RLS activo).
2. **Ubicación Física Exclusiva:** `C:\Users\matil\.gemini\antigravity\scratch\Scale\apps\vteamfit-2026-2027`.
3. **Simulación de Pagos:** La pasarela de pagos (Stripe / MercadoPago) se implementa en modo simulación para este MVP, dejando contratos y columnas de base de datos (`payment_mode`, `external_payment_id`) listos para enchufar el procesador real en la siguiente fase.
4. **Fidelidad Visual y Textual:** Utilización obligatoria de los textos de `docs/extraccion_visual/02_TEXTOS.md` y activos locales de `docs/extraccion_visual/Fotos/`.

---

## 7. Fuera de Alcance (Out of Scope para este Sprint)

1. **Procesador de Pagos en Vivo con Webhooks Reales:** No se configurarán webhooks de cobro bancario real de Stripe/MercadoPago en este sprint; la compra completa el flujo mediante simulación determinista autorizada.
2. **Internacionalización Completa (i18n):** El selector de idiomas (Español, Inglés, Portugués, Italiano, Ruso) en el header se renderiza a nivel visual/estético como selector interactivo, pero el contenido y copywriting opera en Español nativo en esta versión.
3. **Aplicación Móvil Nativa (App Store / Google Play):** No se compila código en React Native o Flutter; la solución es una WebApp / PWA optimizada para navegadores móviles y desktop.
4. **Chat en Tiempo Real 1 a 1:** La interacción con Vicky Torres para el plan personalizado se canaliza mediante el botón de enlace directo a WhatsApp como en la versión actual.
