const fs = require('fs');
const path = require('path');

const baseDir = path.resolve(__dirname, '..');
const exercisesCsvPath = path.join(baseDir, 'docs', 'EJERCICIOS_TOTALES_CONSOLIDADO.csv');
const itemsCsvPath = path.join(baseDir, 'docs', 'PLAN_PADEL_EJERCICIOS_ITEMS.csv');
const workoutsCsvPath = path.join(baseDir, 'docs', 'PLAN_PADEL_CONSOLIDADO.csv');
const outputSqlPath = path.join(baseDir, 'docs', 'architecture', 'seed_plan_padel.sql');

function parseCsv(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const lines = content.split(/\r?\n/).filter(l => l.trim().length > 0);
  const header = parseCsvLine(lines[0]);
  const rows = [];
  for (let i = 1; i < lines.length; i++) {
    const values = parseCsvLine(lines[i]);
    const row = {};
    header.forEach((h, idx) => {
      row[h] = values[idx] !== undefined ? values[idx] : '';
    });
    rows.push(row);
  }
  return rows;
}

function parseCsvLine(line) {
  const trimmed = line.trim();
  const inner = (trimmed.startsWith('"') && trimmed.endsWith('"')) ? trimmed.slice(1, -1) : trimmed;
  return inner.split('","');
}

function escapeSql(str) {
  if (str === null || str === undefined || str === '') return 'NULL';
  return `'${String(str).replace(/'/g, "''")}'`;
}

function slugify(text) {
  return text
    .toString()
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}

const dayNumberMap = {
  'LUNES': 1,
  'MARTES': 2,
  'MIERCOLES': 3,
  'JUEVES': 4,
  'VIERNES': 5,
  'SABADO': 6,
  'DOMINGO': 7
};

console.log('Generating seed SQL...');

// 1. Master exercises
const exerciseRows = parseCsv(exercisesCsvPath);
console.log(`Loaded ${exerciseRows.length} master exercises.`);

// Check slug uniqueness
const seenSlugs = new Set();
exerciseRows.forEach(ex => {
  const s = ex.NOMBRE_BUNNY_HIBRIDO ? ex.NOMBRE_BUNNY_HIBRIDO.replace(/\.[^.]+$/, '') : slugify(ex.EJERCICIO);
  if (seenSlugs.has(s)) {
    console.warn(`[WARNING] Duplicate ID detected: ${s} for ${ex.EJERCICIO}`);
  }
  seenSlugs.add(s);
});
console.log(`Unique exercise IDs count: ${seenSlugs.size} / ${exerciseRows.length}`);

// 2. Workouts and exercises items
const itemRows = parseCsv(itemsCsvPath);
console.log(`Loaded ${itemRows.length} workout exercise items.`);

// Group items by Week and Day
const itemsByWeekDay = {};
itemRows.forEach(item => {
  const key = `${item.Semana}_${item.Dia}`;
  if (!itemsByWeekDay[key]) {
    itemsByWeekDay[key] = [];
  }
  itemsByWeekDay[key].push({
    order: parseInt(item.Orden, 10),
    category: item.Categoria,
    name: item.Ejercicio,
    video_code: item.ArchivoVideo,
    video_path: item.RutaBunnyCdn,
    series: null,
    reps: null,
    rpe: null,
    notes: ''
  });
});

const workoutRows = parseCsv(workoutsCsvPath);
console.log(`Loaded ${workoutRows.length} workout days.`);

let sql = `-- ==============================================================================
-- VTeamFit 2026-2027: Seed Script for Plan Pádel & Master Exercises (Schema: v2)
-- Generado automáticamente desde datos normalizados
-- ==============================================================================

BEGIN;

-- Asegurar que video_path sea nullable (para ejercicios de estiramientos o cardio libre sin video)
ALTER TABLE v2.exercises ALTER COLUMN video_path DROP NOT NULL;

-- 1. Insert Plan Pádel
INSERT INTO v2.plans (
    id,
    name,
    slug,
    description,
    tagline,
    total_weeks,
    days_per_week,
    cover_image_url,
    is_published
) VALUES (
    'plan_padel',
    'Plan Pádel',
    'plan-padel',
    'Preparación física de alto rendimiento para pádel diseñada por Victoria Torres y Tito Allemandi (24 semanas de progresión específica para potencia, agilidad y prevención de lesiones).',
    'Entrena como un profesional del World Padel Tour',
    24,
    6,
    '/fotos/fisico-pista-padel.jpg',
    true
) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    description = EXCLUDED.description,
    tagline = EXCLUDED.tagline,
    total_weeks = EXCLUDED.total_weeks,
    cover_image_url = EXCLUDED.cover_image_url,
    updated_at = now();

-- 2. Insert 308 Master Exercises
`;

// Build exercise inserts
exerciseRows.forEach(ex => {
  const exId = ex.NOMBRE_BUNNY_HIBRIDO ? ex.NOMBRE_BUNNY_HIBRIDO.replace(/\.[^.]+$/, '') : slugify(ex.EJERCICIO);
  const exName = escapeSql(ex.EJERCICIO);
  const cat = escapeSql(ex.CATEGORIA);
  const vidCode = escapeSql(ex.ARCHIVO_VIDEO);
  const vidPath = escapeSql(ex.RUTA_BUNNY_CDN);
  const origFile = escapeSql(ex.ARCHIVO_FISICO_ORIGEN ? ex.ARCHIVO_FISICO_ORIGEN.replace(/\\/g, '/') : '');
  const alt = escapeSql(ex.OTROS_ACEPTABLES);

  sql += `INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES (${escapeSql(exId)}, ${exName}, ${cat}, ${vidCode}, ${vidPath}, ${origFile}, ${alt})
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();\n`;
});

sql += `\n-- 3. Insert 137 Plan Workout Days\n`;

workoutRows.forEach(w => {
  const weekNum = parseInt(w.SEMANA.replace(/\D/g, ''), 10);
  const dayName = w.DIA.trim().toUpperCase();
  const dayNum = dayNumberMap[dayName] || 1;
  const focus = escapeSql(w.ENFOQUE || '');
  const warmup = escapeSql(w.CALENTAMIENTO || '');

  const key = `${w.SEMANA}_${w.DIA}`;
  const dayExercises = itemsByWeekDay[key] || [];
  dayExercises.sort((a, b) => a.order - b.order);

  const jsonExercises = escapeSql(JSON.stringify(dayExercises));

  sql += `INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', ${weekNum}, ${dayNum}, ${escapeSql(dayName)}, ${focus}, ${warmup}, false, ${jsonExercises}::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();\n`;
});

sql += `\nCOMMIT;\n`;

fs.writeFileSync(outputSqlPath, sql, 'utf8');
console.log(`Seed SQL successfully generated at: ${outputSqlPath}`);
console.log(`SQL file size: ${(fs.statSync(outputSqlPath).size / 1024).toFixed(2)} KB`);
