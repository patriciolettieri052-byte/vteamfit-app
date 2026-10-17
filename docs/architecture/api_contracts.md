# Contratos de API // VTeamFit 2026-2027

Estado: propuesto
Versión: 1.0
Fuentes: docs/prd.md, docs/inputs/estructura_y_flujos.md, docs/architecture/decisions.md

Frontend y backend se acoplan a través de este archivo: un endpoint o contrato que no está acá no existe.

## Convenciones

- Base URL: `/api` (o llamadas directas a Supabase PostgREST con `Accept-Profile: v2`)
- Autenticación: Bearer Token JWT en cabecera `Authorization: Bearer <token>` o cookie de sesión `sb-access-token`.
- Formato de error común:

```json
{
  "error": {
    "code": "string",
    "message": "string"
  }
}
```

---

## Endpoints

### GET /api/plans
- Requisitos: RF-01
- Paso del journey: Etapa 1 (Descubrimiento en Landing Page)
- Tablas: `v2.plans`
- Rol requerido: Anónimo o Alumno
- Decisiones: D-01, D-05
- Request: Ninguno
- Response 200:
```json
[
  {
    "id": "plan_padel",
    "name": "Plan Pádel",
    "slug": "plan-padel",
    "description": "string",
    "tagline": "string",
    "total_weeks": 24,
    "days_per_week": 6,
    "cover_image_url": "/fotos/plan-padel.jpg",
    "price": 49.90,
    "billing_period": "mensual"
  }
]
```

---

### GET /api/plans/[slug]
- Requisitos: RF-02
- Paso del journey: Etapa 1 / 2 (Detalle del Plan)
- Tablas: `v2.plans`, `v2.plan_workouts`
- Rol requerido: Anónimo o Alumno
- Decisiones: D-01, D-05
- Request: `slug` como parámetro de ruta
- Response 200:
```json
{
  "plan": {
    "id": "plan_padel",
    "name": "Plan Pádel",
    "slug": "plan-padel",
    "total_weeks": 24,
    "days_per_week": 6
  },
  "weeks_summary": [
    {
      "week_number": 1,
      "days": [
        { "day_number": 1, "day_name": "LUNES", "focus": "PREVENIR+VELOCIDAD" }
      ]
    }
  ]
}
```

---

### POST /api/checkout/simulate
- Requisitos: RF-03
- Paso del journey: Etapa 2 (Checkout e Inscripción)
- Tablas: `v2.user_profiles`, `v2.user_enrollments`
- Rol requerido: Anónimo (crea cuenta) o Alumno
- Decisiones: D-06
- Request:
```json
{
  "plan_id": "plan_padel",
  "email": "atleta@vteamfit.app",
  "full_name": "Carlos Gomez",
  "password": "SecretPassword123"
}
```
- Response 200:
```json
{
  "success": true,
  "user_id": "uuid",
  "enrollment": {
    "plan_id": "plan_padel",
    "current_week": 1,
    "status": "active"
  }
}
```

---

### GET /api/workouts/[planId]/[week]/[day]
- Requisitos: RF-04, RF-05
- Paso del journey: Etapa 3 (Ejecución de Sesión en Workout Player)
- Tablas: `v2.plan_workouts`
- Rol requerido: Alumno autenticado
- Decisiones: D-01, D-02, D-03
- Request: Parámetros de ruta (`planId`, `week`, `day`)
- Response 200:
```json
{
  "id": "uuid",
  "plan_id": "plan_padel",
  "week_number": 1,
  "day_number": 1,
  "day_name": "LUNES",
  "focus": "PREVENIR+VELOCIDAD",
  "warmup_instructions": "CALENTAMIENTO",
  "exercises": [
    {
      "order": 1,
      "category": "PISTA",
      "name": "PISTA-DEFENSA LATERAL AMBOS LADOS 2",
      "video_code": "PLAN_PADEL-TGYO/N1",
      "video_path": "/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mp4",
      "series": null,
      "reps": null,
      "rpe": null,
      "notes": ""
    }
  ]
}
```

---

### POST /api/workouts/log
- Requisitos: RF-06, RF-07
- Paso del journey: Etapa 3 (Finalización de Entrenamiento)
- Tablas: `v2.user_workout_logs`
- Rol requerido: Alumno autenticado
- Decisiones: D-01, D-05
- Request:
```json
{
  "plan_id": "plan_padel",
  "workout_id": "uuid",
  "week_number": 1,
  "day_name": "LUNES",
  "duration_seconds": 2740,
  "perceived_effort": 8,
  "notes": "Excelente sesión de velocidad",
  "exercise_logs": [
    {
      "exercise_name": "PISTA-DEFENSA LATERAL AMBOS LADOS 2",
      "sets": [
        { "set_number": 1, "reps": 15, "weight_kg": 0, "completed": true }
      ]
    }
  ]
}
```
- Response 200:
```json
{
  "success": true,
  "log_id": "uuid",
  "completed_at": "2026-10-17T21:00:00Z"
}
```

---

### GET /api/user/stats
- Requisitos: RF-08
- Paso del journey: Etapa 4 (Dashboard de Estadísticas)
- Tablas: `v2.user_workout_logs`, `v2.user_enrollments`
- Rol requerido: Alumno autenticado
- Decisiones: D-05
- Response 200:
```json
{
  "total_workouts_completed": 14,
  "current_streak_days": 4,
  "plan_completion_percentage": 10.2,
  "total_minutes_trained": 620
}
```

---

### POST /api/user/weight
- Requisitos: RF-09
- Paso del journey: Etapa 4 (Biometría)
- Tablas: `v2.user_weight_logs`
- Rol requerido: Alumno autenticado
- Request:
```json
{
  "recorded_date": "2026-10-17",
  "weight_kg": 76.50
}
```
- Response 200:
```json
{
  "success": true,
  "weight_id": "uuid"
}
```
