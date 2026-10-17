# Banco de preguntas de arquitectura

Ordenado por dependencia: cada área usa las respuestas de las anteriores. No es un cuestionario para leer en voz alta: es la lista de lo que tiene que quedar decidido. Saltá lo que el PRD o los inputs ya responden, y lo que no aplica.

## 1. Contexto y restricciones

- ¿Es un MVP para validar o un sistema que va a producción con clientes reales desde el día uno?
- ¿Cuántos usuarios se esperan en el primer año? ¿Cuántos usan el sistema al mismo tiempo en el pico?
- ¿Hay requisitos de tiempo de respuesta, disponibilidad o funcionamiento sin conexión?
- ¿Hay normativa que aplique (datos personales, datos de pago, sector regulado)?
- ¿Hay presupuesto máximo mensual de infraestructura?
- ¿Se construye desde cero o sobre un sistema, base de datos o proyecto de Supabase existente?

## 2. Stack y despliegue

- Versiones de Next.js, Python y FastAPI (verificar las estables actuales antes de recomendar).
- ¿App Router o Pages Router en Next.js?
- ¿Dónde se despliega el frontend y dónde el backend?
- ¿Cuántos entornos: solo producción, o desarrollo, staging y producción?
- ¿Qué librerías están permitidas desde el inicio (UI, formularios, validación, ORM o acceso a datos, testing)?

## 3. Autenticación y roles

- ¿Quién puede registrarse: cualquiera, solo invitados o solo usuarios creados por un admin?
- ¿Método de login: email y contraseña, magic link, Google u otro proveedor, SSO?
- ¿Los roles del PRD son fijos o configurables? ¿Un usuario puede tener más de un rol?
- ¿El sistema es multi-cliente (varias organizaciones aisladas en la misma base)?
- ¿Se usa Supabase Auth o un proveedor propio?

## 4. Modelo de datos

- Por cada entidad del PRD: ¿qué atributos son obligatorios y cuáles opcionales?
- ¿Qué se borra de verdad y qué se marca como eliminado (borrado lógico)?
- ¿Hace falta historial de cambios o auditoría de quién modificó qué?
- ¿Hay archivos (imágenes, PDFs)? ¿Dónde se guardan y con qué límite de tamaño?
- ¿Montos, monedas, zonas horarias o idiomas múltiples?
- ¿Cómo se representan los estados del PRD: un campo de estado por entidad, una tabla de historial de estados, o ambos?
- ¿Quién aplica las migraciones y con qué herramienta?

## 5. API

- ¿El frontend accede a datos solo a través de FastAPI, o también directo a Supabase desde el cliente?
- ¿Estilo de API: REST por recursos u operaciones por caso de uso?
- ¿Paginación en listados? ¿De qué tipo y con qué tamaño por defecto?
- ¿Versionado de la API desde el inicio?
- ¿Formato de fechas, IDs y errores?
- ¿Hay operaciones lentas que deban ser asíncronas (procesos en segundo plano, colas)?

## 6. Integraciones

- ¿Qué servicios externos se integran (pagos, email, mensajería, CRM, analítica, IA)?
- Por cada uno: ¿quién tiene la cuenta y las credenciales? ¿Hay webhooks entrantes?
- ¿Qué pasa si el servicio externo no responde?

## 7. Seguridad y operación

- ¿Políticas RLS de Supabase por rol y por organización?
- ¿Dónde se guardan los secretos?
- ¿Límites de uso por usuario (rate limiting)?
- ¿Qué se registra en logs y quién los revisa?
- ¿Backups: alcanza con los de Supabase o hace falta algo adicional?
