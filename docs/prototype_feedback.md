# Guía de Pruebas y Validación del Prototipo Frontend // VTeamFit MVP

> **Servidor Activo Local:** `http://localhost:3000`  
> **Repositorio Remoto Sincronizado:** `https://github.com/patriciolettieri052-byte/vteamfit-app.git` (rama `main`)  
> **Base de Datos:** Supabase `schema: 'v2'` (`https://sfbsizxoxyjfancssfbb.supabase.co`)  
> **CDN de Video:** Bunny CDN (`https://vteamfit-oct-26.b-cdn.net/`) con 196 videos MP4 +faststart

---

## 1. Cobertura de las 14 Capas de Interfaz (100% Implementadas y Verificadas)

| Capa | Ruta | Descripción y Funcionalidad Verificada | Estado HTTP |
| :--- | :--- | :--- | :--- |
| **Capa 1: Landing Page** | `/` | Hero inmersivo (`inicio.webp`), display "TU MEJOR VERSIÓN", Bio de Victoria Torres y Tito Allemandi, y grilla interactiva con los **5 planes**. | **200 OK** |
| **Capa 2: Detalle de Plan** | `/planes/[slug]` | Hero con fotografía respectiva, cajas gemelas de *Metodología* y *Sistema*, validador de cupón de descuento (`VTEAM100` = 100% OFF / `VTEAM50` = 50% OFF) y botón CTA con asignación al store. | **200 OK** |
| **Capa 3: Auth** | `/login`, `/registro`, `/recuperar` | Login táctil con formulario validado, registro con establecimiento de perfil y pantalla de recuperación de contraseña con estado de confirmación. | **200 OK** |
| **Capa 4: Onboarding General** | `/onboarding` | Wizard de 2 pasos: Paso 1 (Género) y Paso 2 (Métricas físicas: peso, altura, edad) con barra segmentada iluminada en cobre. | **200 OK** |
| **Capa 5: Onboarding Entrena Conmigo** | `/dashboard/entrena-conmigo/onboarding` | Wizard especializado de 4 pasos (Objetivo, Días por semana, Equipamiento disponible, Limitaciones/Lesiones) para el plan personalizado de Vicky Torres. | **200 OK** |
| **Capa 6: Pantalla de Espera WhatsApp** | `/dashboard/entrena-conmigo/espera` | Indicador de pulso `● EN PREPARACIÓN ●`, retrato circular de Vicky Torres y botón directo de WhatsApp con enlace preconfigurado. | **200 OK** |
| **Capa 7: Dashboard Principal** | `/dashboard` | Spotlight de Plan Activo con selector desplegable de cambio rápido entre los 5 planes (modo tester), racha activa 🔥 y listado completo de las 24 semanas. | **200 OK** |
| **Capa 8: Vista de Semana** | `/dashboard/semana/[week]` | Hero panorámico (`pantalla-semanas.jpg`), cronograma de días 1 a 7 con badges de intensidad (`FUERTE`, `MEDIO`, `SUAVE`, `DESCANSO`) y estados de completitud. | **200 OK** |
| **Capa 9: Rutina Diaria** | `/dashboard/semana/[week]/dia/[day]` | Conectada a Supabase `v2.plan_workouts` (con fallback dinámico), lista de tarjetas de ejercicios con miniatura 100x100 y botón flotante `COMPLETAR DÍA`. | **200 OK** |
| **Capa 10: Reproductor HD y Registro** | `.../ejercicio/[slug]` | Reproductor de video MP4 desde Bunny CDN con loop y controles, cronómetro de sesión interactivo (MM:SS) y formulario de registro táctil de Series, Reps y Peso (kg). | **200 OK** |
| **Capa 11: Celebración de Sesión** | `.../dia/[day]/exito` | Lluvia de partículas confetti con `canvas-confetti`, medalla concéntrica de victoria, resumen de ejercicios/tiempo y cita inspiracional. | **200 OK** |
| **Capa 12: Tus Números (Stats)** | `/dashboard/stats` | Anillo vectorial SVG de porcentaje completado (`ProgressRing`), contador de racha 🔥, gráfica continua de peso corporal (`WeightChart`) y modal de pesaje semanal (`WeightPrompt`). | **200 OK** |
| **Capa 13: Perfil de Atleta** | `/dashboard/perfil` | Monograma de inicial en cobre, grilla de biometría (Peso, Altura, Edad, Género), accesos directos y modal de confirmación de cierre de sesión. | **200 OK** |
| **Capa 14: Legales y Soporte** | `/politicas`, `/soporte` | Términos de uso, política de privacidad, deslinde de salud/responsabilidad, reglas de reembolsos y FAQ interactivo con acordeones. | **200 OK** |

---

## 2. Flujo de Prueba Recomendado (Paso a Paso)

1. **Abrir la Landing Page:** Visitar `http://localhost:3000`. Observar el fondo inmersivo de Vicky Torres, la textura táctil de fibra de carbono de fondo y la grilla de los 5 planes.
2. **Explorar Detalle y Cupón:** Hacer clic en *"VER DETALLES"* en cualquier plan (ej. *Plan Pádel* o *Entrena Conmigo*). Probar el acordeón *"¿Tienes un código de descuento?"* e ingresar `VTEAM100` para desbloquear acceso gratis total.
3. **Completar Onboarding:** Al hacer clic en *"COMPRAR PLAN"*, ingresar género, peso, altura y edad en `/onboarding`.
4. **Navegar en el Dashboard:** Ver la tarjeta spotlight de plan activo en `/dashboard`. Probar cambiar de plan con el selector desplegable.
5. **Ejecutar Entrenamiento:**
   - Clic en *"CONTINUAR"* en la Semana 1.
   - Seleccionar *"Lunes"*.
   - Abrir el primer ejercicio: ver el video en streaming HD desde Bunny CDN, iniciar el cronómetro de sesión y registrar Series/Reps/Kg.
   - Al guardar, regresar a la rutina y presionar *"COMPLETAR DÍA"*.
   - Ver la pantalla triunfal de confetti en `/exito`.
6. **Revisar Estadísticas y Perfil:** Usar el `BottomNav` para ir a `Stats` (probar actualizar peso con la balanza) y `Perfil` para revisar los datos biométricos.
