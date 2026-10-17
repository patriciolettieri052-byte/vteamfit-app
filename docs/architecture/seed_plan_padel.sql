-- ==============================================================================
-- VTeamFit 2026-2027: Seed Script for Plan Pádel & Master Exercises (Schema: v2)
-- Generado automáticamente desde datos normalizados
-- ==============================================================================

BEGIN;

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
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-elevaciones-frontales-con-mancuernas_d1_n32', 'HOMBROS-ELEVACIONES FRONTALES CON MANCUERNAS', 'HOMBROS', 'D1/N32', '/hombros-elevaciones-frontales-con-mancuernas_d1_n32.mp4', 'Videos dia 1/C0032.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-elevaciones-laterales-con-mancuernas_d1_n35', 'HOMBROS-ELEVACIONES LATERALES CON MANCUERNAS', 'HOMBROS', 'D1/N35', '/hombros-elevaciones-laterales-con-mancuernas_d1_n35.mp4', 'Videos dia 1/C0035.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-press-sentado-con-mancuernas_d1_n38', 'HOMBROS-PRESS SENTADO CON MANCUERNAS', 'HOMBROS', 'D1/N38', '/hombros-press-sentado-con-mancuernas_d1_n38.mp4', 'Videos dia 1/C0038.MP4', '39.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-press-frontal-con-barra_d1_n42', 'HOMBROS-PRESS FRONTAL CON BARRA', 'HOMBROS', 'D1/N42', '/hombros-press-frontal-con-barra_d1_n42.mp4', 'Videos dia 1/C0042.MP4', '43.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-remo-al-cuello-con-barra_d1_n44', 'HOMBROS-REMO AL CUELLO CON BARRA', 'HOMBROS', 'D1/N44', '/hombros-remo-al-cuello-con-barra_d1_n44.mp4', 'Videos dia 1/C0044.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-remo-al-cuello-con-mancuernas_d1_n45', 'HOMBROS-REMO AL CUELLO CON MANCUERNAS', 'HOMBROS', 'D1/N45', '/hombros-remo-al-cuello-con-mancuernas_d1_n45.mp4', 'Videos dia 1/C0045.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-elevaciones-frontales-con-banda_d1_n34', 'HOMBROS-ELEVACIONES FRONTALES CON BANDA', 'HOMBROS', 'D1/N34', '/hombros-elevaciones-frontales-con-banda_d1_n34.mp4', 'Videos dia 1/C0034.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-elevaciones-laterales-con-banda_d1_n37', 'HOMBROS-ELEVACIONES LATERALES CON BANDA', 'HOMBROS', 'D1/N37', '/hombros-elevaciones-laterales-con-banda_d1_n37.mp4', 'Videos dia 1/C0037.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-press-con-banda_d1_n40', 'HOMBROS-PRESS CON BANDA', 'HOMBROS', 'D1/N40', '/hombros-press-con-banda_d1_n40.mp4', 'Videos dia 1/C0040.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-press-hombros-en-maquina_d3_n165', 'HOMBROS-PRESS HOMBROS EN MAQUINA', 'HOMBROS', 'D3/N165', '/hombros-press-hombros-en-maquina_d3_n165.mp4', 'Video dia 3/C0165.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-apertura-girando_hombros-tgyo_n1', 'HOMBROS-APERTURA GIRANDO', 'HOMBROS', 'HOMBROS-TGYO/N1', '/hombros-apertura-girando_hombros-tgyo_n1.mov', 'TELEGRAM/HOMBROS/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-reversa-sentado_hombros-tgyo_n2', 'HOMBROS-REVERSA SENTADO', 'HOMBROS', 'HOMBROS-TGYO/N2', '/hombros-reversa-sentado_hombros-tgyo_n2.mov', 'TELEGRAM/HOMBROS/2.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-press-de-pie_hombros-tgyo_n3', 'HOMBROS-PRESS DE PIE', 'HOMBROS', 'HOMBROS-TGYO/N3', '/hombros-press-de-pie_hombros-tgyo_n3.mov', 'TELEGRAM/HOMBROS/3.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-elevaciones-frontales-sentado_hombros-tgyo_n4', 'HOMBROS-ELEVACIONES FRONTALES SENTADO', 'HOMBROS', 'HOMBROS-TGYO/N4', '/hombros-elevaciones-frontales-sentado_hombros-tgyo_n4.mov', 'TELEGRAM/HOMBROS/Hombros elevaciones frontales sentado.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-subida-frontal-con-disco_hombros-tgyo_n5', 'HOMBROS-SUBIDA FRONTAL CON DISCO', 'HOMBROS', 'HOMBROS-TGYO/N5', '/hombros-subida-frontal-con-disco_hombros-tgyo_n5.mov', 'TELEGRAM/HOMBROS/Hombros Subida frontal con disco.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-barra-trasera-de-cabeza_hombros-tgyo_n6', 'HOMBROS-BARRA TRASERA DE CABEZA', 'HOMBROS', 'HOMBROS-TGYO/N6', '/hombros-barra-trasera-de-cabeza_hombros-tgyo_n6.mov', 'TELEGRAM/HOMBROS/6.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-agache-a-inversa_hombros-tgyo_n7', 'HOMBROS-AGACHE A INVERSA', 'HOMBROS', 'HOMBROS-TGYO/N7', '/hombros-agache-a-inversa_hombros-tgyo_n7.mov', 'TELEGRAM/HOMBROS/7.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-activacion-deltoides_hombros-tgyo_n8', 'HOMBROS-ACTIVACIÓN DELTOIDES', 'HOMBROS', 'HOMBROS-TGYO/N8', '/hombros-activacion-deltoides_hombros-tgyo_n8.mov', 'TELEGRAM/HOMBROS/8.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-polea-lateral_hombros-tgyo_n9', 'HOMBROS-POLEA LATERAL', 'HOMBROS', 'HOMBROS-TGYO/N9', '/hombros-polea-lateral_hombros-tgyo_n9.mov', 'TELEGRAM/HOMBROS/Hombros polea unilateral.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-polea-unilateral_hombros-tgyo_n10', 'HOMBROS-POLEA UNILATERAL', 'HOMBROS', 'HOMBROS-TGYO/N10', '/hombros-polea-unilateral_hombros-tgyo_n10.mov', 'TELEGRAM/HOMBROS/Hombros polea unilateral.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-polea-elevaciones-frontales_hombros-tgyo_n11', 'HOMBROS-POLEA ELEVACIONES FRONTALES', 'HOMBROS', 'HOMBROS-TGYO/N11', '/hombros-polea-elevaciones-frontales_hombros-tgyo_n11.mov', 'TELEGRAM/HOMBROS/Hombros elevaciones frontales sentado.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-elevaciones-en-polea-media_hombros-tgyo_n12', 'HOMBROS-ELEVACIONES EN POLEA MEDIA', 'HOMBROS', 'HOMBROS-TGYO/N12', '/hombros-elevaciones-en-polea-media_hombros-tgyo_n12.mov', 'TELEGRAM/HOMBROS/12.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-remo-al-cuello-con-polea-baja_hombros-tgyo_n13', 'HOMBROS-REMO AL CUELLO CON POLEA BAJA', 'HOMBROS', 'HOMBROS-TGYO/N13', '/hombros-remo-al-cuello-con-polea-baja_hombros-tgyo_n13.mov', 'TELEGRAM/HOMBROS/Hombros remo al cuello con polea baja.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-reversa-con-mancuernas_hombros-tgyo_n14', 'HOMBROS-REVERSA CON MANCUERNAS', 'HOMBROS', 'HOMBROS-TGYO/N14', '/hombros-reversa-con-mancuernas_hombros-tgyo_n14.mov', 'TELEGRAM/HOMBROS/14.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-press-banca-con-barra_d1_n18', 'PECHO-PRESS BANCA CON BARRA', 'PECHO', 'D1/N18', '/pecho-press-banca-con-barra_d1_n18.mp4', 'Videos dia 1/C0018.MP4', '15-17')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-apertura-con-mancuernas_d1_n23', 'PECHO-APERTURA CON MANCUERNAS', 'PECHO', 'D1/N23', '/pecho-apertura-con-mancuernas_d1_n23.mp4', 'Videos dia 1/C0023.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-press-inclinado-con-barra_d1_n25', 'PECHO-PRESS INCLINADO CON BARRA', 'PECHO', 'D1/N25', '/pecho-press-inclinado-con-barra_d1_n25.mp4', 'Videos dia 1/C0025.MP4', '26.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-pull-over-con-mancuernas_d1_n30', 'PECHO-PULL OVER CON MANCUERNAS', 'PECHO', 'D1/N30', '/pecho-pull-over-con-mancuernas_d1_n30.mp4', 'Videos dia 1/C0030.MP4', '31.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-flexiones-con-rodillas-en-el-suelo_d1_n24', 'PECHO-FLEXIONES CON RODILLAS EN EL SUELO', 'PECHO', 'D1/N24', '/pecho-flexiones-con-rodillas-en-el-suelo_d1_n24.mp4', 'Videos dia 1/C0024.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-hex-press-con-mancuernas_pecho-tgyo_n14', 'PECHO-HEX PRESS CON MANCUERNAS', 'PECHO', 'PECHO-TGYO/N14', '/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4', 'TELEGRAM/PECHO/14.mp4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-apertura-maquina_pecho-tgyo_n15', 'PECHO-APERTURA MAQUINA', 'PECHO', 'PECHO-TGYO/N15', '/pecho-apertura-maquina_pecho-tgyo_n15.mov', 'TELEGRAM/PECHO/15', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-press-pecho-maquina_pecho-tgyo_n16', 'PECHO-PRESS PECHO MAQUINA', 'PECHO', 'PECHO-TGYO/N16', '/pecho-press-pecho-maquina_pecho-tgyo_n16.mp4', 'TELEGRAM/PECHO/16.mp4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-renegade-row-con-flexion_pecho-tgyo_n1', 'PECHO-RENEGADE ROW CON FLEXIÓN', 'PECHO', 'PECHO-TGYO/N1', '/pecho-renegade-row-con-flexion_pecho-tgyo_n1.mov', 'TELEGRAM/PECHO/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-rotaciones-laterales_pecho-tgyo_n2', 'PECHO-ROTACIONES LATERALES', 'PECHO', 'PECHO-TGYO/N2', '/pecho-rotaciones-laterales_pecho-tgyo_n2.mov', 'TELEGRAM/PECHO/2.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-press-inclinado-con-mancuernas_pecho-tgyo_n3', 'PECHO-PRESS INCLINADO CON MANCUERNAS', 'PECHO', 'PECHO-TGYO/N3', '/pecho-press-inclinado-con-mancuernas_pecho-tgyo_n3.mov', 'TELEGRAM/PECHO/3.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-subida-con-mancuerna_pecho-tgyo_n4', 'PECHO-SUBIDA CON MANCUERNA', 'PECHO', 'PECHO-TGYO/N4', '/pecho-subida-con-mancuerna_pecho-tgyo_n4.mov', 'TELEGRAM/PECHO/4.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-press-con-mancuernas-en-banco-tumbado_pecho-tgyo_n5', 'PECHO-PRESS CON MANCUERNAS EN BANCO TUMBADO', 'PECHO', 'PECHO-TGYO/N5', '/pecho-press-con-mancuernas-en-banco-tumbado_pecho-tgyo_n5.mov', 'TELEGRAM/PECHO/5.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-apertura-de-rodillas_pecho-tgyo_n6', 'PECHO-APERTURA DE RODILLAS', 'PECHO', 'PECHO-TGYO/N6', '/pecho-apertura-de-rodillas_pecho-tgyo_n6.mov', 'TELEGRAM/PECHO/Pecho apertura de rodillas.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-pull-over-en-banco_pecho-tgyo_n7', 'PECHO-PULL OVER EN BANCO', 'PECHO', 'PECHO-TGYO/N7', '/pecho-pull-over-en-banco_pecho-tgyo_n7.mov', 'TELEGRAM/PECHO/7.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-flexiones-en-mancuernas_pecho-tgyo_n8', 'PECHO-FLEXIONES EN MANCUERNAS', 'PECHO', 'PECHO-TGYO/N8', '/pecho-flexiones-en-mancuernas_pecho-tgyo_n8.mov', 'TELEGRAM/PECHO/8.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-aperturas-con-mancuernas-tumbado_pecho-tgyo_n9', 'PECHO-APERTURAS CON MANCUERNAS TUMBADO', 'PECHO', 'PECHO-TGYO/N9', '/pecho-aperturas-con-mancuernas-tumbado_pecho-tgyo_n9.mov', 'TELEGRAM/PECHO/9.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-flexiones-en-step_pecho-tgyo_n10', 'PECHO-FLEXIONES EN STEP', 'PECHO', 'PECHO-TGYO/N10', '/pecho-flexiones-en-step_pecho-tgyo_n10.mov', 'TELEGRAM/PECHO/Pecho flexiones en Step.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-mancuerna-en-banco-inclinado_pecho-tgyo_n11', 'PECHO-MANCUERNA EN BANCO INCLINADO', 'PECHO', 'PECHO-TGYO/N11', '/pecho-mancuerna-en-banco-inclinado_pecho-tgyo_n11.mov', 'TELEGRAM/PECHO/11.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-subida-con-mancuerna-de-pie_pecho-tgyo_n12', 'PECHO-SUBIDA CON MANCUERNA DE PIE', 'PECHO', 'PECHO-TGYO/N12', '/pecho-subida-con-mancuerna-de-pie_pecho-tgyo_n12.mov', 'TELEGRAM/PECHO/12.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-pull-over-con-mancuerna-apoyado-en-banco_pecho-tgyo_n13', 'PECHO-PULL OVER CON MANCUERNA APOYADO EN BANCO', 'PECHO', 'PECHO-TGYO/N13', '/pecho-pull-over-con-mancuerna-apoyado-en-banco_pecho-tgyo_n13.mov', 'TELEGRAM/PECHO/13.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-dips_d1_n14', 'TRICEPS-DIPS', 'TRICEPS', 'D1/N14', '/triceps-dips_d1_n14.mp4', 'Videos dia 1/C0014.MP4', '46.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-con-mancuerna_d1_n48', 'TRICEPS-EXTENSION DE TRICEPS CON MANCUERNA', 'TRICEPS', 'D1/N48', '/triceps-extension-de-triceps-con-mancuerna_d1_n48.mp4', 'Videos dia 1/C0048.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-press-banca-agarre-estrecho_d1_n52', 'TRICEPS-PRESS BANCA AGARRE ESTRECHO', 'TRICEPS', 'D1/N52', '/triceps-press-banca-agarre-estrecho_d1_n52.mp4', 'Videos dia 1/C0052.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-con-polea-alta_d1_n55', 'TRICEPS-EXTENSION DE TRICEPS CON POLEA ALTA', 'TRICEPS', 'D1/N55', '/triceps-extension-de-triceps-con-polea-alta_d1_n55.mp4', 'Videos dia 1/C0055.MP4', '54.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-con-banda_d1_n59', 'TRICEPS-EXTENSION DE TRÍCEPS CON BANDA', 'TRICEPS', 'D1/N59', '/triceps-extension-de-triceps-con-banda_d1_n59.mp4', 'Videos dia 1/C0059.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-en-maquina_triceps-tgyo_n11', 'TRICEPS-EN MAQUINA', 'TRICEPS', 'TRICEPS-TGYO/N11', '/triceps-en-maquina_triceps-tgyo_n11.mov', 'TELEGRAM/TRICEPS/11.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-con-polea_triceps-tgyo_n12', 'TRICEPS-EXTENSION CON POLEA', 'TRICEPS', 'TRICEPS-TGYO/N12', '/triceps-extension-con-polea_triceps-tgyo_n12.mp4', 'TELEGRAM/TRICEPS/12.mp4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-cross-en-polea_triceps-tgyo_n1', 'TRICEPS-CROSS EN POLEA', 'TRICEPS', 'TRICEPS-TGYO/N1', '/triceps-cross-en-polea_triceps-tgyo_n1.mov', 'TELEGRAM/TRICEPS/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-en-polea_triceps-tgyo_n2', 'TRICEPS-EXTENSIÓN DE TRÍCEPS EN POLEA', 'TRICEPS', 'TRICEPS-TGYO/N2', '/triceps-extension-de-triceps-en-polea_triceps-tgyo_n2.mov', 'TELEGRAM/TRICEPS/2.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-en-polea-apoyado_triceps-tgyo_n3', 'TRICEPS-EXTENSIÓN DE TRÍCEPS EN POLEA APOYADO', 'TRICEPS', 'TRICEPS-TGYO/N3', '/triceps-extension-de-triceps-en-polea-apoyado_triceps-tgyo_n3.mov', 'TELEGRAM/TRICEPS/Tríceps extensión en polea apoyado.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-a-un-brazo-en-polea_triceps-tgyo_n4', 'TRICEPS-EXTENSIÓN DE TRÍCEPS A UN BRAZO EN POLEA', 'TRICEPS', 'TRICEPS-TGYO/N4', '/triceps-extension-de-triceps-a-un-brazo-en-polea_triceps-tgyo_n4.mov', 'TELEGRAM/TRICEPS/4.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-en-polea-baja_triceps-tgyo_n5', 'TRICEPS-EXTENSIÓN DE TRÍCEPS EN POLEA BAJA', 'TRICEPS', 'TRICEPS-TGYO/N5', '/triceps-extension-de-triceps-en-polea-baja_triceps-tgyo_n5.mov', 'TELEGRAM/TRICEPS/Tríceps extensión en polea apoyado.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-en-polea-alta-de-pie_triceps-tgyo_n6', 'TRICEPS-EXTENSION DE TRICEPS EN POLEA ALTA DE PIE', 'TRICEPS', 'TRICEPS-TGYO/N6', '/triceps-extension-de-triceps-en-polea-alta-de-pie_triceps-tgyo_n6.mov', 'TELEGRAM/TRICEPS/6.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-en-barra_triceps-tgyo_n7', 'TRICEPS-EN BARRA', 'TRICEPS', 'TRICEPS-TGYO/N7', '/triceps-en-barra_triceps-tgyo_n7.mov', 'TELEGRAM/TRICEPS/7.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-en-banco-con-mancuerna_triceps-tgyo_n8', 'TRICEPS-EN BANCO CON MANCUERNA', 'TRICEPS', 'TRICEPS-TGYO/N8', '/triceps-en-banco-con-mancuerna_triceps-tgyo_n8.mov', 'TELEGRAM/TRICEPS/8.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-extension-de-triceps-con-mancuerna_triceps-tgyo_n9', 'TRICEPS-EXTENSIÓN DE TRÍCEPS CON MANCUERNA', 'TRICEPS', 'TRICEPS-TGYO/N9', '/triceps-extension-de-triceps-con-mancuerna_triceps-tgyo_n9.mov', 'TELEGRAM/TRICEPS/9.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-flexion-de-triceps_triceps-tgyo_n10', 'TRICEPS-FLEXIÓN DE TRÍCEPS', 'TRICEPS', 'TRICEPS-TGYO/N10', '/triceps-flexion-de-triceps_triceps-tgyo_n10.mov', 'TELEGRAM/TRICEPS/flexión de tríceps.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-con-barra_d1_n81', 'BICEPS-CURL CON BARRA', 'BICEPS', 'D1/N81', '/biceps-curl-con-barra_d1_n81.mp4', 'Videos dia 1/C0081.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-martillo-con-mancuernas_d1_n83', 'BICEPS-CURL MARTILLO CON MANCUERNAS', 'BICEPS', 'D1/N83', '/biceps-curl-martillo-con-mancuernas_d1_n83.mp4', 'Videos dia 1/C0083.MP4', '82.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-inclinado-mancuernas_d1_n84', 'BICEPS-CURL INCLINADO MANCUERNAS', 'BICEPS', 'D1/N84', '/biceps-curl-inclinado-mancuernas_d1_n84.mp4', 'Videos dia 1/C0084.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-remo-inclinado-con-agarre_d1_n85', 'BICEPS-REMO INCLINADO CON AGARRE', 'BICEPS', 'D1/N85', '/biceps-remo-inclinado-con-agarre_d1_n85.mp4', 'Videos dia 1/C0085.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-con-cable_d1_n86', 'BICEPS-CURL CON CABLE', 'BICEPS', 'D1/N86', '/biceps-curl-con-cable_d1_n86.mp4', 'Videos dia 1/C0086.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-de-concentracion_d1_n87', 'BICEPS-CURL DE CONCENTRACION', 'BICEPS', 'D1/N87', '/biceps-curl-de-concentracion_d1_n87.mp4', 'Videos dia 1/C0087.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-en-maquina_biceps-tgyo_n16', 'BICEPS-EN MAQUINA', 'BICEPS', 'BICEPS-TGYO/N16', '/biceps-en-maquina_biceps-tgyo_n16.mov', 'TELEGRAM/BICEPS/16.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-concentracion_biceps-tgyo_n1', 'BICEPS-CURL CONCENTRACIÓN', 'BICEPS', 'BICEPS-TGYO/N1', '/biceps-curl-concentracion_biceps-tgyo_n1.mov', 'TELEGRAM/BICEPS/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-elevaciones-laterales-con-mancuernas_biceps-tgyo_n2', 'BICEPS-ELEVACIONES LATERALES CON MANCUERNAS', 'BICEPS', 'BICEPS-TGYO/N2', '/biceps-elevaciones-laterales-con-mancuernas_biceps-tgyo_n2.mov', 'TELEGRAM/BICEPS/2.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-giros-con-mancuernas_biceps-tgyo_n3', 'BICEPS-GIROS CON MANCUERNAS', 'BICEPS', 'BICEPS-TGYO/N3', '/biceps-giros-con-mancuernas_biceps-tgyo_n3.mov', 'TELEGRAM/BICEPS/3.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-mancuernas_biceps-tgyo_n4', 'BICEPS-CURL MANCUERNAS', 'BICEPS', 'BICEPS-TGYO/N4', '/biceps-curl-mancuernas_biceps-tgyo_n4.mov', 'TELEGRAM/BICEPS/4.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-martillo-cerrado_biceps-tgyo_n5', 'BICEPS-MARTILLO CERRADO', 'BICEPS', 'BICEPS-TGYO/N5', '/biceps-martillo-cerrado_biceps-tgyo_n5.mov', 'TELEGRAM/BICEPS/5.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-hammer-curl_biceps-tgyo_n6', 'BICEPS-HAMMER CURL', 'BICEPS', 'BICEPS-TGYO/N6', '/biceps-hammer-curl_biceps-tgyo_n6.mov', 'TELEGRAM/BICEPS/6.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-martillo-con-mancuernas-de-pie_biceps-tgyo_n7', 'BICEPS-MARTILLO CON MANCUERNAS DE PIE', 'BICEPS', 'BICEPS-TGYO/N7', '/biceps-martillo-con-mancuernas-de-pie_biceps-tgyo_n7.mov', 'TELEGRAM/BICEPS/Bíceps martillo con mancuernas de pie.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-cross_biceps-tgyo_n8', 'BICEPS-CROSS', 'BICEPS', 'BICEPS-TGYO/N8', '/biceps-cross_biceps-tgyo_n8.mov', 'TELEGRAM/BICEPS/8.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-reves_biceps-tgyo_n9', 'BICEPS-CURL REVÉS', 'BICEPS', 'BICEPS-TGYO/N9', '/biceps-curl-reves_biceps-tgyo_n9.mov', 'TELEGRAM/BICEPS/9.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-dumbell-curl_biceps-tgyo_n10', 'BICEPS-DUMBELL CURL', 'BICEPS', 'BICEPS-TGYO/N10', '/biceps-dumbell-curl_biceps-tgyo_n10.mov', 'TELEGRAM/BICEPS/10.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-martillo-cerrado-de-rodillas_biceps-tgyo_n12', 'BICEPS-MARTILLO CERRADO DE RODILLAS', 'BICEPS', 'BICEPS-TGYO/N12', '/biceps-martillo-cerrado-de-rodillas_biceps-tgyo_n12.mov', 'TELEGRAM/BICEPS/12.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-en-polea_biceps-tgyo_n13', 'BICEPS-CURL EN POLEA', 'BICEPS', 'BICEPS-TGYO/N13', '/biceps-curl-en-polea_biceps-tgyo_n13.mov', 'TELEGRAM/BICEPS/13.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-en-polea-sentado_biceps-tgyo_n14', 'BICEPS-CURL EN POLEA SENTADO', 'BICEPS', 'BICEPS-TGYO/N14', '/biceps-curl-en-polea-sentado_biceps-tgyo_n14.mov', 'TELEGRAM/BICEPS/14.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-curl-inversa-en-polea_biceps-tgyo_n15', 'BICEPS-CURL INVERSA EN POLEA', 'BICEPS', 'BICEPS-TGYO/N15', '/biceps-curl-inversa-en-polea_biceps-tgyo_n15.mov', 'TELEGRAM/BICEPS/15.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('antebrazo-curl-de-muneca_d1_n60', 'ANTEBRAZO-CURL DE MUÑECA', 'ANTEBRAZO', 'D1/N60', '/antebrazo-curl-de-muneca_d1_n60.mp4', 'Videos dia 1/C0060.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('antebrazo-curl-de-muneca-inverso_d1_n61', 'ANTEBRAZO-CURL DE MUÑECA INVERSO', 'ANTEBRAZO', 'D1/N61', '/antebrazo-curl-de-muneca-inverso_d1_n61.mp4', 'Videos dia 1/C0061.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('antebrazo-paseo-del-granjero_d1_n67', 'ANTEBRAZO-PASEO DEL GRANJERO', 'ANTEBRAZO', 'D1/N67', '/antebrazo-paseo-del-granjero_d1_n67.mp4', 'Videos dia 1/C0067.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('antebrazo-agarre-de-pinza-con-disco_d1_n65', 'ANTEBRAZO-AGARRE DE PINZA CON DISCO', 'ANTEBRAZO', 'D1/N65', '/antebrazo-agarre-de-pinza-con-disco_d1_n65.mp4', 'Videos dia 1/C0065.MP4', '64.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('antebrazo-giros-con-mancuernas_antebrazo-tgyo_n11', 'ANTEBRAZO-GIROS CON MANCUERNAS', 'ANTEBRAZO', 'ANTEBRAZO-TGYO/N11', '/antebrazo-giros-con-mancuernas_antebrazo-tgyo_n11.mov', 'TELEGRAM/ANTEBRAZO/11.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-con-trx_d1_n57', 'ESPALDA-REMO CON TRX', 'ESPALDA', 'D1/N57', '/espalda-remo-con-trx_d1_n57.mp4', 'Videos dia 1/C0057.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-con-barra_d1_n62', 'ESPALDA-REMO CON BARRA', 'ESPALDA', 'D1/N62', '/espalda-remo-con-barra_d1_n62.mp4', 'Videos dia 1/C0062.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-dominadas-asistidas_d1_n58', 'ESPALDA-DOMINADAS ASISTIDAS', 'ESPALDA', 'D1/N58', '/espalda-dominadas-asistidas_d1_n58.mp4', 'Videos dia 1/C0058.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-dominadas_d1_n56', 'ESPALDA-DOMINADAS', 'ESPALDA', 'D1/N56', '/espalda-dominadas_d1_n56.mp4', 'Videos dia 1/C0056.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-peso-muerto_d1_n68', 'ESPALDA-PESO MUERTO', 'ESPALDA', 'D1/N68', '/espalda-peso-muerto_d1_n68.mp4', 'Videos dia 1/C0068.MP4', '69-70')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-jalon-vertical-con-polea_d1_n74', 'ESPALDA-JALON VERTICAL CON POLEA', 'ESPALDA', 'D1/N74', '/espalda-jalon-vertical-con-polea_d1_n74.mp4', 'Videos dia 1/C0074.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-extension-lumbar_d1_n71', 'ESPALDA-EXTENSION LUMBAR', 'ESPALDA', 'D1/N71', '/espalda-extension-lumbar_d1_n71.mp4', 'Videos dia 1/C0071.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-encogimiento-de-hombros_d1_n80', 'ESPALDA-ENCOGIMIENTO DE HOMBROS', 'ESPALDA', 'D1/N80', '/espalda-encogimiento-de-hombros_d1_n80.mp4', 'Videos dia 1/C0080.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-en-polea-baja_d1_n77', 'ESPALDA-REMO EN POLEA BAJA', 'ESPALDA', 'D1/N77', '/espalda-remo-en-polea-baja_d1_n77.mp4', 'Videos dia 1/C0077.MP4', '78.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-con-mancuerna_d1_n79', 'ESPALDA-REMO. CON MANCUERNA', 'ESPALDA', 'D1/N79', '/espalda-remo-con-mancuerna_d1_n79.mp4', 'Videos dia 1/C0079.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-jalon-dorsal-pecho_d3_n170', 'ESPALDA-JALON DORSAL PECHO', 'ESPALDA', 'D3/N170', '/espalda-jalon-dorsal-pecho_d3_n170.mp4', 'Video dia 3/C0170.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-extension-de-espalda_d3_n167', 'ESPALDA-EXTENSION DE ESPALDA', 'ESPALDA', 'D3/N167', '/espalda-extension-de-espalda_d3_n167.mp4', 'Video dia 3/C0167.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-lat-pulldown-maquina_espalda-tgyo_n21', 'ESPALDA-LAT PULLDOWN MAQUINA', 'ESPALDA', 'ESPALDA-TGYO/N21', '/espalda-lat-pulldown-maquina_espalda-tgyo_n21.mp4', 'TELEGRAM/ESPALDA/21.mp4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-reversa-con-mancuernas_espalda-tgyo_n1', 'ESPALDA-REVERSA CON MANCUERNAS', 'ESPALDA', 'ESPALDA-TGYO/N1', '/espalda-reversa-con-mancuernas_espalda-tgyo_n1.mov', 'TELEGRAM/ESPALDA/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-giros-en-pelota-con-mancuernas_espalda-tgyo_n2', 'ESPALDA-GIROS EN PELOTA CON MANCUERNAS', 'ESPALDA', 'ESPALDA-TGYO/N2', '/espalda-giros-en-pelota-con-mancuernas_espalda-tgyo_n2.mov', 'TELEGRAM/ESPALDA/Espalda giros en pelota con mancuerna.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-renegade-row_espalda-tgyo_n4', 'ESPALDA-RENEGADE ROW', 'ESPALDA', 'ESPALDA-TGYO/N4', '/espalda-renegade-row_espalda-tgyo_n4.mov', 'TELEGRAM/ESPALDA/4.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-renegade-row-de-pie_espalda-tgyo_n5', 'ESPALDA-RENEGADE ROW DE PIE', 'ESPALDA', 'ESPALDA-TGYO/N5', '/espalda-renegade-row-de-pie_espalda-tgyo_n5.mov', 'TELEGRAM/ESPALDA/5.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-invertido_espalda-tgyo_n6', 'ESPALDA-REMO INVERTIDO', 'ESPALDA', 'ESPALDA-TGYO/N6', '/espalda-remo-invertido_espalda-tgyo_n6.mov', 'TELEGRAM/ESPALDA/6.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-invertido-en-suelo_espalda-tgyo_n7', 'ESPALDA-REMO INVERTIDO EN SUELO', 'ESPALDA', 'ESPALDA-TGYO/N7', '/espalda-remo-invertido-en-suelo_espalda-tgyo_n7.mov', 'TELEGRAM/ESPALDA/7.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-invertido-piernas-estiradas_espalda-tgyo_n8', 'ESPALDA-REMO INVERTIDO PIERNAS ESTIRADAS', 'ESPALDA', 'ESPALDA-TGYO/N8', '/espalda-remo-invertido-piernas-estiradas_espalda-tgyo_n8.mov', 'TELEGRAM/ESPALDA/8.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-con-mancuernas-con-pecho-en-banco_espalda-tgyo_n9', 'ESPALDA-REMO CON MANCUERNAS CON PECHO EN BANCO', 'ESPALDA', 'ESPALDA-TGYO/N9', '/espalda-remo-con-mancuernas-con-pecho-en-banco_espalda-tgyo_n9.mov', 'TELEGRAM/ESPALDA/9.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-activacion-de-espalda_espalda-tgyo_n10', 'ESPALDA-ACTIVACIÓN DE ESPALDA', 'ESPALDA', 'ESPALDA-TGYO/N10', '/espalda-activacion-de-espalda_espalda-tgyo_n10.mov', 'TELEGRAM/ESPALDA/10.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-remo-con-barra-t_espalda-tgyo_n11', 'ESPALDA-REMO CON BARRA T', 'ESPALDA', 'ESPALDA-TGYO/N11', '/espalda-remo-con-barra-t_espalda-tgyo_n11.mov', 'TELEGRAM/ESPALDA/11.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-polea-a-un-brazo_espalda-tgyo_n12', 'ESPALDA-POLEA A UN BRAZO', 'ESPALDA', 'ESPALDA-TGYO/N12', '/espalda-polea-a-un-brazo_espalda-tgyo_n12.mov', 'TELEGRAM/ESPALDA/Espalda polea a un brazo.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-polea-de-pie_espalda-tgyo_n13', 'ESPALDA-POLEA DE PIE', 'ESPALDA', 'ESPALDA-TGYO/N13', '/espalda-polea-de-pie_espalda-tgyo_n13.mov', 'TELEGRAM/ESPALDA/13.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-activacion-con-barra_espalda-tgyo_n15', 'ESPALDA-ACTIVACIÓN CON BARRA', 'ESPALDA', 'ESPALDA-TGYO/N15', '/espalda-activacion-con-barra_espalda-tgyo_n15.mov', 'TELEGRAM/ESPALDA/15.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-polea-lateral_espalda-tgyo_n16', 'ESPALDA-POLEA LATERAL', 'ESPALDA', 'ESPALDA-TGYO/N16', '/espalda-polea-lateral_espalda-tgyo_n16.mov', 'TELEGRAM/ESPALDA/16.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-polea-alta_espalda-tgyo_n17', 'ESPALDA-POLEA ALTA', 'ESPALDA', 'ESPALDA-TGYO/N17', '/espalda-polea-alta_espalda-tgyo_n17.mov', 'TELEGRAM/ESPALDA/17.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-apertura-en-polea_espalda-tgyo_n18', 'ESPALDA-APERTURA EN POLEA', 'ESPALDA', 'ESPALDA-TGYO/N18', '/espalda-apertura-en-polea_espalda-tgyo_n18.mov', 'TELEGRAM/ESPALDA/18.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-extension-de-espalada_espalda-tgyo_n19', 'ESPALDA-EXTENSIÓN DE ESPALADA', 'ESPALDA', 'ESPALDA-TGYO/N19', '/espalda-extension-de-espalada_espalda-tgyo_n19.mov', 'TELEGRAM/ESPALDA/19.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-polea-alta_espalda-tgyo_n20', 'ESPALDA-POLEA ALTA', 'ESPALDA', 'ESPALDA-TGYO/N20', '/espalda-polea-alta_espalda-tgyo_n20.mov', 'TELEGRAM/ESPALDA/Espalda Polea alta.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-movimiento-cintura-con-palo_d2_n31', 'CADERA MAS CINTURA-MOVIMIENTO CINTURA CON PALO', 'CADERA MAS CINTURA', 'D2/N31', '/cadera-mas-cintura-movimiento-cintura-con-palo_d2_n31.mp4', 'Videos dia 2/C0031.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-plancha-lateral_d2_n30', 'CADERA MAS CINTURA-PLANCHA LATERAL', 'CADERA MAS CINTURA', 'D2/N30', '/cadera-mas-cintura-plancha-lateral_d2_n30.mp4', 'Videos dia 2/C0030.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-plancha-con-movimentos-de-cadera_d2_n33', 'CADERA MAS CINTURA-PLANCHA CON MOVIMENTOS DE CADERA', 'CADERA MAS CINTURA', 'D2/N33', '/cadera-mas-cintura-plancha-con-movimentos-de-cadera_d2_n33.mp4', 'Videos dia 2/C0033.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-paseo-granjero_d1_n67', 'CADERA MAS CINTURA-PASEO GRANJERO', 'CADERA MAS CINTURA', 'D1/N67', '/cadera-mas-cintura-paseo-granjero_d1_n67.mp4', 'Videos dia 1/C0067.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-sentadillas-peso-muerto_d2_n29', 'CADERA MAS CINTURA-SENTADILLAS PESO MUERTO', 'CADERA MAS CINTURA', 'D2/N29', '/cadera-mas-cintura-sentadillas-peso-muerto_d2_n29.mp4', 'Videos dia 2/C0029.MP4', '28.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-hip-thrus_d2_n27', 'CADERA MAS CINTURA-HIP THRUS', 'CADERA MAS CINTURA', 'D2/N27', '/cadera-mas-cintura-hip-thrus_d2_n27.mp4', 'Videos dia 2/C0027.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-movimiento-con-palo_d2_n31', 'CADERA MAS CINTURA-MOVIMIENTO CON PALO', 'CADERA MAS CINTURA', 'D2/N31', '/cadera-mas-cintura-movimiento-con-palo_d2_n31.mp4', 'Videos dia 2/C0031.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cadera-mas-cintura-oblicuos-con-disco_cintura-tgyo_n1', 'CADERA MAS CINTURA-OBLICUOS CON DISCO', 'CADERA MAS CINTURA', 'CINTURA-TGYO/N1', '/cadera-mas-cintura-oblicuos-con-disco_cintura-tgyo_n1.mov', 'TELEGRAM/CINTURA/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-peso-muerto_d2_n47', 'GLUTEOS-PESO MUERTO', 'GLUTEOS', 'D2/N47', '/gluteos-peso-muerto_d2_n47.mp4', 'Videos dia 2/C0047.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadilla-con-barra-trasera_d2_n48', 'GLUTEOS-SENTADILLA CON BARRA TRASERA', 'GLUTEOS', 'D2/N48', '/gluteos-sentadilla-con-barra-trasera_d2_n48.mp4', 'Videos dia 2/C0048.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadilla-con-barra-frontal_d2_n49', 'GLUTEOS-SENTADILLA CON BARRA FRONTAL', 'GLUTEOS', 'D2/N49', '/gluteos-sentadilla-con-barra-frontal_d2_n49.mp4', 'Videos dia 2/C0049.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-aereas_d2_n11', 'GLUTEOS-SENTADILLAS AEREAS', 'GLUTEOS', 'D2/N11', '/gluteos-sentadillas-aereas_d2_n11.mp4', 'Videos dia 2/C0011.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-goblet_d2_n51', 'GLUTEOS-SENTADILLAS GOBLET', 'GLUTEOS', 'D2/N51', '/gluteos-sentadillas-goblet_d2_n51.mp4', 'Videos dia 2/C0051.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-estocadas-en-maquina_d2_n53', 'GLUTEOS-ESTOCADAS EN. MAQUINA', 'GLUTEOS', 'D2/N53', '/gluteos-estocadas-en-maquina_d2_n53.mp4', 'Videos dia 2/C0053.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-hip-thrust_d2_n26', 'GLUTEOS-HIP THRUST', 'GLUTEOS', 'D2/N26', '/gluteos-hip-thrust_d2_n26.mp4', 'Videos dia 2/C0026.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-hiperextension-lumbares_d2_n63', 'GLUTEOS-HIPEREXTENSION LUMBARES', 'GLUTEOS', 'D2/N63', '/gluteos-hiperextension-lumbares_d2_n63.mp4', 'Videos dia 2/C0063.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-sumo-con-pesa_d2_n37', 'GLUTEOS-SENTADILLAS SUMO CON PESA', 'GLUTEOS', 'D2/N37', '/gluteos-sentadillas-sumo-con-pesa_d2_n37.mp4', 'Videos dia 2/C0037.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-con-salto_d2_n52', 'GLUTEOS-SENTADILLAS CON SALTO', 'GLUTEOS', 'D2/N52', '/gluteos-sentadillas-con-salto_d2_n52.mp4', 'Videos dia 2/C0052.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadilla-clasica_d3_n163', 'GLUTEOS-SENTADILLA CLASICA', 'GLUTEOS', 'D3/N163', '/gluteos-sentadilla-clasica_d3_n163.mp4', 'Video dia 3/C0163.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-prensa-piernas-separadas_d3_n168', 'GLUTEOS-PRENSA PIERNAS SEPARADAS', 'GLUTEOS', 'D3/N168', '/gluteos-prensa-piernas-separadas_d3_n168.mp4', 'Video dia 3/C0168.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-prensa-piernas-juntas_d3_n169', 'GLUTEOS-PRENSA PIERNAS JUNTAS', 'GLUTEOS', 'D3/N169', '/gluteos-prensa-piernas-juntas_d3_n169.mp4', 'Video dia 3/C0169.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-monster-walk_d3_n148', 'GLUTEOS-MONSTER WALK', 'GLUTEOS', 'D3/N148', '/gluteos-monster-walk_d3_n148.mp4', 'Video dia 3/C0148.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-zancadas-laterales_d3_n149', 'GLUTEOS-ZANCADAS LATERALES', 'GLUTEOS', 'D3/N149', '/gluteos-zancadas-laterales_d3_n149.mp4', 'Video dia 3/C0149.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-extension-de-cadera_d3_n151', 'GLUTEOS-EXTENSION DE CADERA', 'GLUTEOS', 'D3/N151', '/gluteos-extension-de-cadera_d3_n151.mp4', 'Video dia 3/C0151.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-puente-de-gluteos-a-una-pierna_d3_n152', 'GLUTEOS-PUENTE DE GLUTEOS A UNA PIERNA', 'GLUTEOS', 'D3/N152', '/gluteos-puente-de-gluteos-a-una-pierna_d3_n152.mp4', 'Video dia 3/C0152.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-femoral-al-suelo_d3_n153', 'GLUTEOS-FEMORAL AL SUELO', 'GLUTEOS', 'D3/N153', '/gluteos-femoral-al-suelo_d3_n153.mp4', 'Video dia 3/C0153.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-zancadas-estaticas_d3_n154', 'GLUTEOS-ZANCADAS ESTATICAS', 'GLUTEOS', 'D3/N154', '/gluteos-zancadas-estaticas_d3_n154.mp4', 'Video dia 3/C0154.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-piernas-juntas_d3_n157', 'GLUTEOS-SENTADILLAS PIERNAS JUNTAS', 'GLUTEOS', 'D3/N157', '/gluteos-sentadillas-piernas-juntas_d3_n157.mp4', 'Video dia 3/C0157.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-sumo_d3_n158', 'GLUTEOS-SENTADILLAS SUMO', 'GLUTEOS', 'D3/N158', '/gluteos-sentadillas-sumo_d3_n158.mp4', 'Video dia 3/C0158.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-patada-trasera-ambas-piernas_d3_n159', 'GLUTEOS-PATADA TRASERA (AMBAS PIERNAS)', 'GLUTEOS', 'D3/N159', '/gluteos-patada-trasera-ambas-piernas_d3_n159.mp4', 'Video dia 3/C0159.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-salto-con-sentadilla_d3_n160', 'GLUTEOS-SALTO CON SENTADILLA', 'GLUTEOS', 'D3/N160', '/gluteos-salto-con-sentadilla_d3_n160.mp4', 'Video dia 3/C0160.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-activacion-mas-sentadilla_d3_n162', 'GLUTEOS-ACTIVACION MAS SENTADILLA', 'GLUTEOS', 'D3/N162', '/gluteos-activacion-mas-sentadilla_d3_n162.mp4', 'Video dia 3/C0162.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-extension-de-pierna-en-maquina_d3_n164', 'GLUTEOS-EXTENSION DE PIERNA EN MAQUINA', 'GLUTEOS', 'D3/N164', '/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4', 'Video dia 3/C0164.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-patada-en-polea_d2_n36', 'GLUTEOS-PATADA EN POLEA', 'GLUTEOS', 'D2/N36', '/gluteos-patada-en-polea_d2_n36.mp4', 'Videos dia 2/C0036.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadilla-sumo_d2_n37', 'GLUTEOS-SENTADILLA SUMO', 'GLUTEOS', 'D2/N37', '/gluteos-sentadilla-sumo_d2_n37.mp4', 'Videos dia 2/C0037.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2', 'GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N2', '/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov', 'TELEGRAM/GLUTEOS_PIERNAS/2.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6', 'GLUTEOS-HIP THRUST EN BANCO CON BARRA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N6', '/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov', 'TELEGRAM/GLUTEOS_PIERNAS/6.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-patada-en-polea-doblando-rodilla_gluteos_piernas-tgyo_n7', 'GLUTEOS-PATADA EN POLEA DOBLANDO RODILLA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N7', '/gluteos-patada-en-polea-doblando-rodilla_gluteos_piernas-tgyo_n7.mov', 'TELEGRAM/GLUTEOS_PIERNAS/7.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-patada-en-polea-lateral_gluteos_piernas-tgyo_n8', 'GLUTEOS-PATADA EN POLEA LATERAL', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N8', '/gluteos-patada-en-polea-lateral_gluteos_piernas-tgyo_n8.mov', 'TELEGRAM/GLUTEOS_PIERNAS/8.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-patada-en-polea-sin-doblar-rodilla_gluteos_piernas-tgyo_n9', 'GLUTEOS-PATADA EN POLEA SIN DOBLAR RODILLA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N9', '/gluteos-patada-en-polea-sin-doblar-rodilla_gluteos_piernas-tgyo_n9.mov', 'TELEGRAM/GLUTEOS_PIERNAS/9.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13', 'GLUTEOS-STEP UP CON MANCUERNA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N13', '/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov', 'TELEGRAM/GLUTEOS_PIERNAS/13.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-hip-thrust-en-maquina_gluteos_piernas-tgyo_n14', 'GLUTEOS-HIP THRUST EN MAQUINA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N14', '/gluteos-hip-thrust-en-maquina_gluteos_piernas-tgyo_n14.mov', 'TELEGRAM/GLUTEOS_PIERNAS/14.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-patada-de-gluteos-en-maquina-de-cuadriceps_gluteos_piernas-tgyo_n16', 'GLUTEOS-PATADA DE GLÚTEOS EN MAQUINA DE CUÁDRICEPS', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N16', '/gluteos-patada-de-gluteos-en-maquina-de-cuadriceps_gluteos_piernas-tgyo_n16.mov', 'TELEGRAM/GLUTEOS_PIERNAS/16.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadilla-sumo-con-dos-mancuernas_gluteos_piernas-tgyo_n17', 'GLUTEOS-SENTADILLA SUMO CON DOS MANCUERNAS', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N17', '/gluteos-sentadilla-sumo-con-dos-mancuernas_gluteos_piernas-tgyo_n17.mov', 'TELEGRAM/GLUTEOS_PIERNAS/17.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-bulgaras-con-una-mancuerna_gluteos_piernas-tgyo_n18', 'GLUTEOS-SENTADILLAS BÚLGARAS CON UNA MANCUERNA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N18', '/gluteos-sentadillas-bulgaras-con-una-mancuerna_gluteos_piernas-tgyo_n18.mov', 'TELEGRAM/GLUTEOS_PIERNAS/18.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-hip-thrust-en-maquina-de-cuadriceps_gluteos_piernas-tgyo_n19', 'GLUTEOS-HIP THRUST EN MAQUINA DE CUADRICEPS', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N19', '/gluteos-hip-thrust-en-maquina-de-cuadriceps_gluteos_piernas-tgyo_n19.mov', 'TELEGRAM/GLUTEOS_PIERNAS/19.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-estocada-con-step-en-maquina_gluteos_piernas-tgyo_n20', 'GLUTEOS-ESTOCADA CON STEP EN MAQUINA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N20', '/gluteos-estocada-con-step-en-maquina_gluteos_piernas-tgyo_n20.mov', 'TELEGRAM/GLUTEOS_PIERNAS/20.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-estocada-con-step_gluteos_piernas-tgyo_n21', 'GLUTEOS-ESTOCADA CON STEP', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N21', '/gluteos-estocada-con-step_gluteos_piernas-tgyo_n21.mov', 'TELEGRAM/GLUTEOS_PIERNAS/21.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadilla-sumo-con-steps_gluteos_piernas-tgyo_n22', 'GLUTEOS-SENTADILLA SUMO CON STEPS', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N22', '/gluteos-sentadilla-sumo-con-steps_gluteos_piernas-tgyo_n22.mov', 'TELEGRAM/GLUTEOS_PIERNAS/22.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-patada-de-gluteos-lateral-con-disco_gluteos_piernas-tgyo_n23', 'GLUTEOS-PATADA DE GLÚTEOS LATERAL CON DISCO', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N23', '/gluteos-patada-de-gluteos-lateral-con-disco_gluteos_piernas-tgyo_n23.mov', 'TELEGRAM/GLUTEOS_PIERNAS/23.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-polea-frontal_gluteos_piernas-tgyo_n24', 'GLUTEOS-SENTADILLAS POLEA FRONTAL', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N24', '/gluteos-sentadillas-polea-frontal_gluteos_piernas-tgyo_n24.mov', 'TELEGRAM/GLUTEOS_PIERNAS/24.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-aductores-en-polea_gluteos_piernas-tgyo_n25', 'GLUTEOS-ADUCTORES EN POLEA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N25', '/gluteos-aductores-en-polea_gluteos_piernas-tgyo_n25.mov', 'TELEGRAM/GLUTEOS_PIERNAS/25.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-en-polea-centradas_gluteos_piernas-tgyo_n26', 'GLUTEOS-SENTADILLAS EN POLEA CENTRADAS', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N26', '/gluteos-sentadillas-en-polea-centradas_gluteos_piernas-tgyo_n26.mov', 'TELEGRAM/GLUTEOS_PIERNAS/26.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-extension-de-cadera-en-polea-central_gluteos_piernas-tgyo_n27', 'GLUTEOS-EXTENSIÓN DE CADERA EN POLEA CENTRAL', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N27', '/gluteos-extension-de-cadera-en-polea-central_gluteos_piernas-tgyo_n27.mov', 'TELEGRAM/GLUTEOS_PIERNAS/27.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-empuje-de-cadera-con-mancuerna_gluteos_piernas-tgyo_n28', 'GLUTEOS-EMPUJE DE CADERA CON MANCUERNA', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N28', '/gluteos-empuje-de-cadera-con-mancuerna_gluteos_piernas-tgyo_n28.mov', 'TELEGRAM/GLUTEOS_PIERNAS/28.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-step-up-en-banco_gluteos_piernas-tgyo_n29', 'GLUTEOS-STEP UP EN BANCO', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N29', '/gluteos-step-up-en-banco_gluteos_piernas-tgyo_n29.mov', 'TELEGRAM/GLUTEOS_PIERNAS/29.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gluteos-sentadillas-con-discos_gluteos_piernas-tgyo_n30', 'GLUTEOS-SENTADILLAS CON DISCOS', 'GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N30', '/gluteos-sentadillas-con-discos_gluteos_piernas-tgyo_n30.mov', 'TELEGRAM/GLUTEOS_PIERNAS/30.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-extension-de-isquios-maquina_d3_n164', 'ISQUIOS/GLUTEOS-EXTENSION DE ISQUIOS MAQUINA', 'ISQUIOS/GLUTEOS', 'D3/N164', '/isquios-gluteos-extension-de-isquios-maquina_d3_n164.mp4', 'Video dia 3/C0164.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-puente_d2_n2', 'ISQUIOS/GLUTEOS-PUENTE', 'ISQUIOS/GLUTEOS', 'D2/N2', '/isquios-gluteos-puente_d2_n2.mp4', 'Videos dia 2/C0002.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-puente-de-ranita_d2_n4', 'ISQUIOS/GLUTEOS-PUENTE DE RANITA', 'ISQUIOS/GLUTEOS', 'D2/N4', '/isquios-gluteos-puente-de-ranita_d2_n4.mp4', 'Videos dia 2/C0004.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-puente-con-piernas-juntas_d2_n3', 'ISQUIOS/GLUTEOS-PUENTE CON PIERNAS JUNTAS', 'ISQUIOS/GLUTEOS', 'D2/N3', '/isquios-gluteos-puente-con-piernas-juntas_d2_n3.mp4', 'Videos dia 2/C0003.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-sentadilla-bulgara_d2_n6', 'ISQUIOS/GLUTEOS-SENTADILLA BULGARA', 'ISQUIOS/GLUTEOS', 'D2/N6', '/isquios-gluteos-sentadilla-bulgara_d2_n6.mp4', 'Videos dia 2/C0006.MP4', '5.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-peso-muerto-a-una-pierna_d2_n7', 'ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA', 'ISQUIOS/GLUTEOS', 'D2/N7', '/isquios-gluteos-peso-muerto-a-una-pierna_d2_n7.mp4', 'Videos dia 2/C0007.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-ejercicio-de-gusano_d2_n10', 'ISQUIOS/GLUTEOS-EJERCICIO DE GUSANO', 'ISQUIOS/GLUTEOS', 'D2/N10', '/isquios-gluteos-ejercicio-de-gusano_d2_n10.mp4', 'Videos dia 2/C0010.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-puente-de-gluteos-con-mancuerna_gluteos_piernas-tgyo_n4', 'ISQUIOS/GLUTEOS-PUENTE DE GLÚTEOS CON MANCUERNA', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N4', '/isquios-gluteos-puente-de-gluteos-con-mancuerna_gluteos_piernas-tgyo_n4.mov', 'TELEGRAM/GLUTEOS_PIERNAS/4.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-peso-muerto-con-barra_gluteos_piernas-tgyo_n31', 'ISQUIOS/GLUTEOS-PESO MUERTO CON BARRA', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N31', '/isquios-gluteos-peso-muerto-con-barra_gluteos_piernas-tgyo_n31.mov', 'TELEGRAM/TRANSFORMA/Isquios Peso muerto con barra.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1', 'ISQUIOS/GLUTEOS-PESO MUERTO CON UNA MANCUERNA A UN PIE', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N1', '/isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1.mov', 'TELEGRAM/GLUTEOS_PIERNAS/Peso muerto con una mancuerna a un pie.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-peso-muerto-a-una-pierna-con-mancuerna-y-pie-arriba_gluteos_piernas-tgyo_n3', 'ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA CON MANCUERNA Y PIE ARRIBA', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N3', '/isquios-gluteos-peso-muerto-a-una-pierna-con-mancuerna-y-pie-arriba_gluteos_piernas-tgyo_n3.mov', 'TELEGRAM/GLUTEOS_PIERNAS/3.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-peso-muerto-y-femoral-en-polea_gluteos_piernas-tgyo_n5', 'ISQUIOS/GLUTEOS-PESO MUERTO Y FEMORAL EN POLEA', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N5', '/isquios-gluteos-peso-muerto-y-femoral-en-polea_gluteos_piernas-tgyo_n5.mov', 'TELEGRAM/GLUTEOS_PIERNAS/5.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-hiperextension-con-disco_gluteos_piernas-tgyo_n11', 'ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N11', '/isquios-gluteos-hiperextension-con-disco_gluteos_piernas-tgyo_n11.mov', 'TELEGRAM/GLUTEOS_PIERNAS/11.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-hiperextension_gluteos_piernas-tgyo_n12', 'ISQUIOS/GLUTEOS-HIPEREXTENSION', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N12', '/isquios-gluteos-hiperextension_gluteos_piernas-tgyo_n12.mov', 'TELEGRAM/GLUTEOS_PIERNAS/12.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-extension-con-mancuerna_gluteos_piernas-tgyo_n13', 'ISQUIOS/GLUTEOS-EXTENSIÓN CON MANCUERNA', 'ISQUIOS/GLUTEOS', 'GLUTEOS_PIERNAS-TGYO/N13', '/isquios-gluteos-extension-con-mancuerna_gluteos_piernas-tgyo_n13.mov', 'TELEGRAM/GLUTEOS_PIERNAS/13.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cuadriceps-extension-de-cuadriceps-maquiana_d2_n16', 'CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA', 'CUADRICEPS', 'D2/N16', '/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4', 'Videos dia 2/C0016.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cuadriceps-sentadillas_d2_n11', 'CUADRICEPS-SENTADILLAS', 'CUADRICEPS', 'D2/N11', '/cuadriceps-sentadillas_d2_n11.mp4', 'Videos dia 2/C0011.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cuadriceps-paso-arriba-o-step_d2_n12', 'CUADRICEPS-PASO ARRIBA O STEP', 'CUADRICEPS', 'D2/N12', '/cuadriceps-paso-arriba-o-step_d2_n12.mp4', 'Videos dia 2/C0012.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cuadriceps-zancada_d2_n13', 'CUADRICEPS-ZANCADA', 'CUADRICEPS', 'D2/N13', '/cuadriceps-zancada_d2_n13.mp4', 'Videos dia 2/C0013.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cuadriceps-estocada_d2_n14', 'CUADRICEPS-ESTOCADA', 'CUADRICEPS', 'D2/N14', '/cuadriceps-estocada_d2_n14.mp4', 'Videos dia 2/C0014.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cuadriceps-estocada-bulgara_d2_n15', 'CUADRICEPS-ESTOCADA BULGARA', 'CUADRICEPS', 'D2/N15', '/cuadriceps-estocada-bulgara_d2_n15.mp4', 'Videos dia 2/C0015.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('abductores-abductores-en-polea_d2_n35', 'ABDUCTORES-ABDUCTORES EN POLEA', 'ABDUCTORES', 'D2/N35', '/abductores-abductores-en-polea_d2_n35.mp4', 'Videos dia 2/C0035.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('abductores-abductores-en-maquina_d2_n34', 'ABDUCTORES-ABDUCTORES EN MAQUINA', 'ABDUCTORES', 'D2/N34', '/abductores-abductores-en-maquina_d2_n34.mp4', 'Videos dia 2/C0034.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('abductores-abduccion-de-pie_d2_n36', 'ABDUCTORES-ABDUCCION DE PIE', 'ABDUCTORES', 'D2/N36', '/abductores-abduccion-de-pie_d2_n36.mp4', 'Videos dia 2/C0036.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('abductores-prensa-con-piernas-separadas_d2_n38', 'ABDUCTORES-PRENSA CON PIERNAS SEPARADAS', 'ABDUCTORES', 'D2/N38', '/abductores-prensa-con-piernas-separadas_d2_n38.mp4', 'Videos dia 2/C0038.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('aductores-aduccion-en-polea_d2_n41', 'ADUCTORES-ADUCCION EN POLEA', 'ADUCTORES', 'D2/N41', '/aductores-aduccion-en-polea_d2_n41.mp4', 'Videos dia 2/C0041.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('aductores-aductores-en-maquina_d2_n42', 'ADUCTORES-ADUCTORES EN MAQUINA', 'ADUCTORES', 'D2/N42', '/aductores-aductores-en-maquina_d2_n42.mp4', 'Videos dia 2/C0042.MP4', '43.0')
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('aductores-elevacion-de-piernas-cruzadas_d2_n44', 'ADUCTORES-ELEVACION DE PIERNAS CRUZADAS', 'ADUCTORES', 'D2/N44', '/aductores-elevacion-de-piernas-cruzadas_d2_n44.mp4', 'Videos dia 2/C0044.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('aductores-rana_d2_n45', 'ADUCTORES-RANA', 'ADUCTORES', 'D2/N45', '/aductores-rana_d2_n45.mp4', 'Videos dia 2/C0045.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('aductores-mariposa_d2_n46', 'ADUCTORES-MARIPOSA', 'ADUCTORES', 'D2/N46', '/aductores-mariposa_d2_n46.mp4', 'Videos dia 2/C0046.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-elevacion-de-gemelos_d2_n17', 'GEMELOS-ELEVACION DE GEMELOS', 'GEMELOS', 'D2/N17', '/gemelos-elevacion-de-gemelos_d2_n17.mp4', 'Videos dia 2/C0017.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-elevacion-de-gemelos-postura-sentada_d2_n18', 'GEMELOS-ELEVACION DE GEMELOS POSTURA SENTADA', 'GEMELOS', 'D2/N18', '/gemelos-elevacion-de-gemelos-postura-sentada_d2_n18.mp4', 'Videos dia 2/C0018.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-sentadilla-con-elevacion-de-talones_d2_n19', 'GEMELOS-SENTADILLA CON ELEVACION DE TALONES', 'GEMELOS', 'D2/N19', '/gemelos-sentadilla-con-elevacion-de-talones_d2_n19.mp4', 'Videos dia 2/C0019.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-sentadilla-con-salto_d2_n52', 'GEMELOS-SENTADILLA CON SALTO', 'GEMELOS', 'D2/N52', '/gemelos-sentadilla-con-salto_d2_n52.mp4', 'Videos dia 2/C0052.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-zancadas-con-elevacion-rodilla_d2_n22', 'GEMELOS-ZANCADAS CON ELEVACION RODILLA', 'GEMELOS', 'D2/N22', '/gemelos-zancadas-con-elevacion-rodilla_d2_n22.mp4', 'Videos dia 2/C0022.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-zancada-con-salto_d2_n24', 'GEMELOS-ZANCADA CON SALTO', 'GEMELOS', 'D2/N24', '/gemelos-zancada-con-salto_d2_n24.mp4', 'Videos dia 2/C0024.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-saltar-a-la-comba_d2_n25', 'GEMELOS-SALTAR A LA COMBA', 'GEMELOS', 'D2/N25', '/gemelos-saltar-a-la-comba_d2_n25.mp4', 'Videos dia 2/C0025.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-extension-de-gemelos-en-maquina_gemelos-tgyo_n2', 'GEMELOS-EXTENSION DE GEMELOS EN MAQUINA', 'GEMELOS', 'GEMELOS-TGYO/N2', '/gemelos-extension-de-gemelos-en-maquina_gemelos-tgyo_n2.mp4', 'TELEGRAM/GEMELOS/2.mp4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gemelos-extension-de-gemelos-en-prensa_gemelos-tgyo_n1', 'GEMELOS-EXTENSIÓN DE GEMELOS EN PRENSA', 'GEMELOS', 'GEMELOS-TGYO/N1', '/gemelos-extension-de-gemelos-en-prensa_gemelos-tgyo_n1.mov', 'TELEGRAM/GEMELOS/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-o-calentamiento-eliptica_d3_n142', 'CARDIO O CALENTAMIENTO-ELIPTICA', 'CARDIO O CALENTAMIENTO', 'D3/N142', '/cardio-o-calentamiento-eliptica_d3_n142.mp4', 'Video dia 3/C0142.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-o-calentamiento-cinta_d3_n138', 'CARDIO O CALENTAMIENTO-CINTA', 'CARDIO O CALENTAMIENTO', 'D3/N138', '/cardio-o-calentamiento-cinta_d3_n138.mp4', 'Video dia 3/C0138.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-o-calentamiento-cinta_plan_padel-tgyo_n11', 'CARDIO O CALENTAMIENTO-CINTA', 'CARDIO O CALENTAMIENTO', 'PLAN_PADEL-TGYO/N11', '/cardio-o-calentamiento-cinta_plan_padel-tgyo_n11.mov', 'TELEGRAM/PLAN_PADEL/11.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-o-calentamiento-cinta_plan_padel-tgyo_n12', 'CARDIO O CALENTAMIENTO-CINTA', 'CARDIO O CALENTAMIENTO', 'PLAN_PADEL-TGYO/N12', '/cardio-o-calentamiento-cinta_plan_padel-tgyo_n12.mov', 'TELEGRAM/PLAN_PADEL/12.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-o-calentamiento-bicicleta_d3_n140', 'CARDIO O CALENTAMIENTO-BICICLETA', 'CARDIO O CALENTAMIENTO', 'D3/N140', '/cardio-o-calentamiento-bicicleta_d3_n140.mp4', 'Video dia 3/C0140.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES (NULL, 'ESTIRAMIENTOS-CIRCITO POR TELEGRAM', 'ESTIRAMIENTOS', NULL, NULL, NULL, NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-movil-de-rodilla-lado-der-e-izq_d3_n70', 'CALENTAMIENTO GYM Y PADEL-MOVIL DE RODILLA LADO DER. E IZQ.', 'CALENTAMIENTO GYM Y PADEL', 'D3/N70', '/calentamiento-gym-y-padel-movil-de-rodilla-lado-der-e-izq_d3_n70.mp4', 'Video dia 3/C0070.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-movilidad-con-zancadas_d3_n72', 'CALENTAMIENTO GYM Y PADEL-MOVILIDAD CON ZANCADAS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N72', '/calentamiento-gym-y-padel-movilidad-con-zancadas_d3_n72.mp4', 'Video dia 3/C0072.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-flexion-de-piernas-co0n-sentadillas_d3_n74', 'CALENTAMIENTO GYM Y PADEL-FLEXION DE PIERNAS CO0N SENTADILLAS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N74', '/calentamiento-gym-y-padel-flexion-de-piernas-co0n-sentadillas_d3_n74.mp4', 'Video dia 3/C0074.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-flexion-lateral_d3_n75', 'CALENTAMIENTO GYM Y PADEL-FLEXION LATERAL', 'CALENTAMIENTO GYM Y PADEL', 'D3/N75', '/calentamiento-gym-y-padel-flexion-lateral_d3_n75.mp4', 'Video dia 3/C0075.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-movimiento-pelvico_d3_n76', 'CALENTAMIENTO GYM Y PADEL-MOVIMIENTO PELVICO', 'CALENTAMIENTO GYM Y PADEL', 'D3/N76', '/calentamiento-gym-y-padel-movimiento-pelvico_d3_n76.mp4', 'Video dia 3/C0076.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-giro-de-cadera-ambos-lados_d3_n77', 'CALENTAMIENTO GYM Y PADEL-GIRO DE CADERA AMBOS LADOS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N77', '/calentamiento-gym-y-padel-giro-de-cadera-ambos-lados_d3_n77.mp4', 'Video dia 3/C0077.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-mivimiento-de-pierna-lateral-ambos-lados_d3_n90', 'CALENTAMIENTO GYM Y PADEL-MIVIMIENTO DE PIERNA LATERAL AMBOS LADOS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N90', '/calentamiento-gym-y-padel-mivimiento-de-pierna-lateral-ambos-lados_d3_n90.mp4', 'Video dia 3/C0090.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-rotacion-de-cadera-boca-arriba_d3_n87', 'CALENTAMIENTO GYM Y PADEL-ROTACION DE CADERA BOCA ARRIBA', 'CALENTAMIENTO GYM Y PADEL', 'D3/N87', '/calentamiento-gym-y-padel-rotacion-de-cadera-boca-arriba_d3_n87.mp4', 'Video dia 3/C0087.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-gato-contento-gato-enfadado_d3_n84', 'CALENTAMIENTO GYM Y PADEL-GATO CONTENTO/GATO ENFADADO', 'CALENTAMIENTO GYM Y PADEL', 'D3/N84', '/calentamiento-gym-y-padel-gato-contento-gato-enfadado_d3_n84.mp4', 'Video dia 3/C0084.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-gato-contento-gato-enfadado-con-movimiento_d3_n85', 'CALENTAMIENTO GYM Y PADEL-GATO CONTENTO/GATO ENFADADO CON MOVIMIENTO', 'CALENTAMIENTO GYM Y PADEL', 'D3/N85', '/calentamiento-gym-y-padel-gato-contento-gato-enfadado-con-movimiento_d3_n85.mp4', 'Video dia 3/C0085.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-estiramientos-de-brazos-y-piernas-cruzados_d3_n89', 'CALENTAMIENTO GYM Y PADEL-ESTIRAMIENTOS DE BRAZOS Y PIERNAS CRUZADOS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N89', '/calentamiento-gym-y-padel-estiramientos-de-brazos-y-piernas-cruzados_d3_n89.mp4', 'Video dia 3/C0089.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-abrir-y-cerrrar-brazos_d3_n79', 'CALENTAMIENTO GYM Y PADEL-ABRIR Y CERRRAR BRAZOS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N79', '/calentamiento-gym-y-padel-abrir-y-cerrrar-brazos_d3_n79.mp4', 'Video dia 3/C0079.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-palmada-abriendo-y-cerrando-brazos_d3_n80', 'CALENTAMIENTO GYM Y PADEL-PALMADA ABRIENDO Y CERRANDO BRAZOS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N80', '/calentamiento-gym-y-padel-palmada-abriendo-y-cerrando-brazos_d3_n80.mp4', 'Video dia 3/C0080.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-subir-y-bajar-brazos_d3_n81', 'CALENTAMIENTO GYM Y PADEL-SUBIR Y BAJAR BRAZOS', 'CALENTAMIENTO GYM Y PADEL', 'D3/N81', '/calentamiento-gym-y-padel-subir-y-bajar-brazos_d3_n81.mp4', 'Video dia 3/C0081.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('calentamiento-gym-y-padel-rotacion-de-brazos-ambas-direcciones_d3_n82', 'CALENTAMIENTO GYM Y PADEL-ROTACION DE BRAZOS AMBAS DIRECCIONES', 'CALENTAMIENTO GYM Y PADEL', 'D3/N82', '/calentamiento-gym-y-padel-rotacion-de-brazos-ambas-direcciones_d3_n82.mp4', 'Video dia 3/C0082.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('activacion-para-un-partido-de-padel-activacion-de-homros_d3_n95', 'ACTIVACION PARA UN PARTIDO DE PADEL-ACTIVACION DE HOMROS', 'ACTIVACION PARA UN PARTIDO DE PADEL', 'D3/N95', '/activacion-para-un-partido-de-padel-activacion-de-homros_d3_n95.mp4', 'Video dia 3/C0095.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('activacion-para-un-partido-de-padel-volea-de-derecha-con-elastico_d3_n96', 'ACTIVACION PARA UN PARTIDO DE PADEL-VOLEA DE DERECHA CON ELASTICO', 'ACTIVACION PARA UN PARTIDO DE PADEL', 'D3/N96', '/activacion-para-un-partido-de-padel-volea-de-derecha-con-elastico_d3_n96.mp4', 'Video dia 3/C0096.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('activacion-para-un-partido-de-padel-volea-de-reves-con-elastico_d3_n97', 'ACTIVACION PARA UN PARTIDO DE PADEL-VOLEA DE REVES CON ELASTICO', 'ACTIVACION PARA UN PARTIDO DE PADEL', 'D3/N97', '/activacion-para-un-partido-de-padel-volea-de-reves-con-elastico_d3_n97.mp4', 'Video dia 3/C0097.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('activacion-para-un-partido-de-padel-derecha-y-reves-sin-pared_d3_n98', 'ACTIVACION PARA UN PARTIDO DE PADEL-DERECHA Y REVES SIN PARED', 'ACTIVACION PARA UN PARTIDO DE PADEL', 'D3/N98', '/activacion-para-un-partido-de-padel-derecha-y-reves-sin-pared_d3_n98.mp4', 'Video dia 3/C0098.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('activacion-para-un-partido-de-padel-bandeja-y-voleas_d3_n103', 'ACTIVACION PARA UN PARTIDO DE PADEL-BANDEJA Y VOLEAS', 'ACTIVACION PARA UN PARTIDO DE PADEL', 'D3/N103', '/activacion-para-un-partido-de-padel-bandeja-y-voleas_d3_n103.mp4', 'Video dia 3/C0103.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('abdominales-y-planchas-movimiento-de-cintura-con-palo_d2_n31', 'ABDOMINALES Y PLANCHAS-MOVIMIENTO DE CINTURA CON PALO', 'ABDOMINALES Y PLANCHAS', 'D2/N31', '/abdominales-y-planchas-movimiento-de-cintura-con-palo_d2_n31.mp4', 'Videos dia 2/C0031.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('abdominales-y-planchas-plancha-lateral_d2_n30', 'ABDOMINALES Y PLANCHAS-PLANCHA LATERAL', 'ABDOMINALES Y PLANCHAS', 'D2/N30', '/abdominales-y-planchas-plancha-lateral_d2_n30.mp4', 'Videos dia 2/C0030.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('abdominales-y-planchas-plancha-con-movimientos-de-cadera_d2_n33', 'ABDOMINALES Y PLANCHAS-PLANCHA CON MOVIMIENTOS DE CADERA', 'ABDOMINALES Y PLANCHAS', 'D2/N33', '/abdominales-y-planchas-plancha-con-movimientos-de-cadera_d2_n33.mp4', 'Videos dia 2/C0033.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-defensa-lateral-ambos-lados_d3_n99', 'PISTA-DEFENSA LATERAL AMBOS LADOS', 'PISTA', 'D3/N99', '/pista-defensa-lateral-ambos-lados_d3_n99.mp4', 'Video dia 3/C0099.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-defensa-lateral-ambos-lados_plan_padel-tgyo_n1', 'PISTA-DEFENSA LATERAL AMBOS LADOS', 'PISTA', 'PLAN_PADEL-TGYO/N1', '/pista-defensa-lateral-ambos-lados_plan_padel-tgyo_n1.mov', 'TELEGRAM/PLAN_PADEL/1.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-volea-derecha-y-reves_d3_n100', 'PISTA-VOLEA, DERECHA Y REVES', 'PISTA', 'D3/N100', '/pista-volea-derecha-y-reves_d3_n100.mp4', 'Video dia 3/C0100.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-volea-de-derecha-y-reves_plan_padel-tgyo_n2', 'PISTA-VOLEA DE DERECHA Y REVÉS', 'PISTA', 'PLAN_PADEL-TGYO/N2', '/pista-volea-de-derecha-y-reves_plan_padel-tgyo_n2.mov', 'TELEGRAM/PLAN_PADEL/2.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-defensa-derecha-y-reves_d3_n101', 'PISTA-DEFENSA DERECHA Y REVES', 'PISTA', 'D3/N101', '/pista-defensa-derecha-y-reves_d3_n101.mp4', 'Video dia 3/C0101.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-defensa-derecha-y-reves_plan_padel-tgyo_n3', 'PISTA-DEFENSA DERECHA Y REVES', 'PISTA', 'PLAN_PADEL-TGYO/N3', '/pista-defensa-derecha-y-reves_plan_padel-tgyo_n3.mov', 'TELEGRAM/PLAN_PADEL/3.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-defensa-y-ataque-derecha-y-reves_d3_n102', 'PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES', 'PISTA', 'D3/N102', '/pista-defensa-y-ataque-derecha-y-reves_d3_n102.mp4', 'Video dia 3/C0102.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-defensa-y-ataque-derecha-y-reves_plan_padel-tgyo_n4', 'PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES', 'PISTA', 'PLAN_PADEL-TGYO/N4', '/pista-defensa-y-ataque-derecha-y-reves_plan_padel-tgyo_n4.mov', 'TELEGRAM/PLAN_PADEL/4.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-volea-de-reves-bandeja-volea-de-derecha-bandeja_d3_n103', 'PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA,BANDEJA', 'PISTA', 'D3/N103', '/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja_d3_n103.mp4', 'Video dia 3/C0103.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pista-volea-de-reves-bandeja-volea-de-derecha-bandeja_plan_padel-tgyo_n5', 'PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA', 'PISTA', 'PLAN_PADEL-TGYO/N5', '/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja_plan_padel-tgyo_n5.mov', 'TELEGRAM/PLAN_PADEL/5.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105', 'SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO', 'SALTOS', 'D3/N105', '/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4', 'Video dia 3/C0105.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('saltos-salto-en-cajon-a-2-pies_d3_n108', 'SALTOS-SALTO EN CAJON A 2 PIES', 'SALTOS', 'D3/N108', '/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4', 'Video dia 3/C0108.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110', 'SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA', 'SALTOS', 'D3/N110', '/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4', 'Video dia 3/C0110.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112', 'SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2', 'SALTOS', 'D3/N112', '/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4', 'Video dia 3/C0112.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('saltos-salto-lateral-salto-cajon_d3_n114', 'SALTOS-SALTO LATERAL + SALTO CAJON', 'SALTOS', 'D3/N114', '/saltos-salto-lateral-salto-cajon_d3_n114.mp4', 'Video dia 3/C0114.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('saltos-saltos-laterales_d3_n116', 'SALTOS-SALTOS LATERALES', 'SALTOS', 'D3/N116', '/saltos-saltos-laterales_d3_n116.mp4', 'Video dia 3/C0116.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves_d3_n118', 'BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES', 'BOSU/EQUILIBRIO', 'D3/N118', '/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves_d3_n118.mp4', 'Video dia 3/C0118.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves_plan_padel-tgyo_n6', 'BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES', 'BOSU/EQUILIBRIO', 'PLAN_PADEL-TGYO/N6', '/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves_plan_padel-tgyo_n6.mov', 'TELEGRAM/PLAN_PADEL/6.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves_d3_n119', 'BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES', 'BOSU/EQUILIBRIO', 'D3/N119', '/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves_d3_n119.mp4', 'Video dia 3/C0119.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves_plan_padel-tgyo_n7', 'BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES', 'BOSU/EQUILIBRIO', 'PLAN_PADEL-TGYO/N7', '/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves_plan_padel-tgyo_n7.mov', 'TELEGRAM/PLAN_PADEL/7.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('velocidad-spreen-media-velocidad_d3_n120', 'VELOCIDAD-SPREEN MEDIA VELOCIDAD', 'VELOCIDAD', 'D3/N120', '/velocidad-spreen-media-velocidad_d3_n120.mp4', 'Video dia 3/C0120.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('velocidad-spreen-con-activacion-en-inicio_d3_n121', 'VELOCIDAD-SPREEN CON ACTIVACION EN INICIO', 'VELOCIDAD', 'D3/N121', '/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4', 'Video dia 3/C0121.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('velocidad-spreen-max-velocidad_d3_n127', 'VELOCIDAD-Spreen MAX. VELOCIDAD', 'VELOCIDAD', 'D3/N127', '/velocidad-spreen-max-velocidad_d3_n127.mp4', 'Video dia 3/C0127.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('velocidad-desplazamientos-laterales-y-spreen_d3_n123', 'VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN', 'VELOCIDAD', 'D3/N123', '/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4', 'Video dia 3/C0123.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125', 'VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD', 'VELOCIDAD', 'D3/N125', '/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4', 'Video dia 3/C0125.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128', 'STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES', 'STEP', 'D3/N128', '/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4', 'Video dia 3/C0128.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('step-saltos-laterales-2-piernas-juntas_d3_n129', 'STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS', 'STEP', 'D3/N129', '/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4', 'Video dia 3/C0129.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('step-velocidad-max-en-step-apoyando-1-pie_d3_n130', 'STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE', 'STEP', 'D3/N130', '/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4', 'Video dia 3/C0130.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131', 'STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS', 'STEP', 'D3/N131', '/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4', 'Video dia 3/C0131.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('escalera-con-pies-intercalados-subes-2-y-bajas-1_d3_n133', 'ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1', 'ESCALERA', 'D3/N133', '/escalera-con-pies-intercalados-subes-2-y-bajas-1_d3_n133.mp4', 'Video dia 3/C0133.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('escalera-con-pies-intercalados-subes-2-y-bajas-1_plan_padel-tgyo_n8', 'ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1', 'ESCALERA', 'PLAN_PADEL-TGYO/N8', '/escalera-con-pies-intercalados-subes-2-y-bajas-1_plan_padel-tgyo_n8.mov', 'TELEGRAM/PLAN_PADEL/8.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('escalera-saltos-con-pies-juntos-subes-2-y-bajas-1_d3_n136', 'ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1', 'ESCALERA', 'D3/N136', '/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1_d3_n136.mp4', 'Video dia 3/C0136.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('escalera-saltos-con-pies-juntos-subes-2-y-bajas-1_plan_padel-tgyo_n9', 'ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1', 'ESCALERA', 'PLAN_PADEL-TGYO/N9', '/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1_plan_padel-tgyo_n9.mov', 'TELEGRAM/PLAN_PADEL/9.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones_d3_n137', 'ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES', 'ESCALERA', 'D3/N137', '/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones_d3_n137.mp4', 'Video dia 3/C0137.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones_plan_padel-tgyo_n10', 'ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES', 'ESCALERA', 'PLAN_PADEL-TGYO/N10', '/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones_plan_padel-tgyo_n10.mov', 'TELEGRAM/PLAN_PADEL/10.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gym-flexiones-con-pies-elevados_d3_n143', 'GYM-FLEXIONES CON PIES ELEVADOS', 'GYM', 'D3/N143', '/gym-flexiones-con-pies-elevados_d3_n143.mp4', 'Video dia 3/C0143.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gym-giros-con-disco_d3_n144', 'GYM-GIROS CON DISCO', 'GYM', 'D3/N144', '/gym-giros-con-disco_d3_n144.mp4', 'Video dia 3/C0144.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gym-sentadilla-explosiva_d3_n146', 'GYM-SENTADILLA EXPLOSIVA', 'GYM', 'D3/N146', '/gym-sentadilla-explosiva_d3_n146.mp4', 'Video dia 3/C0146.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('gym-gemelos_d3_n147', 'GYM-GEMELOS', 'GYM', 'D3/N147', '/gym-gemelos_d3_n147.mp4', 'Video dia 3/C0147.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-bicicleta_d3_n140', 'CARDIO-BICICLETA', 'CARDIO', 'D3/N140', '/cardio-bicicleta_d3_n140.mp4', 'Video dia 3/C0140.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-eliptica_d3_n142', 'CARDIO-ELIPTICA', 'CARDIO', 'D3/N142', '/cardio-eliptica_d3_n142.mp4', 'Video dia 3/C0142.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cardio-cinta_d3_n139', 'CARDIO-CINTA', 'CARDIO', 'D3/N139', '/cardio-cinta_d3_n139.mp4', 'Video dia 3/C0139.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cambios-de-ritmo-bicicleta_d3_n140', 'CAMBIOS DE RITMO-BICICLETA', 'CAMBIOS DE RITMO', 'D3/N140', '/cambios-de-ritmo-bicicleta_d3_n140.mp4', 'Video dia 3/C0140.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cambios-de-ritmo-eliptica_d3_n142', 'CAMBIOS DE RITMO-ELIPTICA', 'CAMBIOS DE RITMO', 'D3/N142', '/cambios-de-ritmo-eliptica_d3_n142.mp4', 'Video dia 3/C0142.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cambios-de-ritmo-cinta_d3_n139', 'CAMBIOS DE RITMO-CINTA', 'CAMBIOS DE RITMO', 'D3/N139', '/cambios-de-ritmo-cinta_d3_n139.mp4', 'Video dia 3/C0139.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cambios-de-ritmo-cinta_plan_padel-tgyo_n11', 'CAMBIOS DE RITMO-CINTA', 'CAMBIOS DE RITMO', 'PLAN_PADEL-TGYO/N11', '/cambios-de-ritmo-cinta_plan_padel-tgyo_n11.mov', 'TELEGRAM/PLAN_PADEL/11.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cambios-de-ritmo-cinta_plan_padel-tgyo_n12', 'CAMBIOS DE RITMO-CINTA', 'CAMBIOS DE RITMO', 'PLAN_PADEL-TGYO/N12', '/cambios-de-ritmo-cinta_plan_padel-tgyo_n12.mov', 'TELEGRAM/PLAN_PADEL/12.MOV', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-1_d1_n39', 'HOMBROS-1', 'HOMBROS', 'D1/N39', '/hombros-1_d1_n39.mp4', '1/C0039.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('hombros-1_d1_n43', 'HOMBROS-1', 'HOMBROS', 'D1/N43', '/hombros-1_d1_n43.mp4', '1/C0043.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-1_d1_n15', 'PECHO-1', 'PECHO', 'D1/N15', '/pecho-1_d1_n15.mp4', '1/C0015.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-2_d1_n16', 'PECHO-2', 'PECHO', 'D1/N16', '/pecho-2_d1_n16.mp4', '1/C0016.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-3_d1_n17', 'PECHO-3', 'PECHO', 'D1/N17', '/pecho-3_d1_n17.mp4', '1/C0017.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-1_d1_n26', 'PECHO-1', 'PECHO', 'D1/N26', '/pecho-1_d1_n26.mp4', '1/C0026.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('pecho-1_d1_n31', 'PECHO-1', 'PECHO', 'D1/N31', '/pecho-1_d1_n31.mp4', '1/C0031.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-1_d1_n46', 'TRICEPS-1', 'TRICEPS', 'D1/N46', '/triceps-1_d1_n46.mp4', '1/C0046.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('triceps-1_d1_n54', 'TRICEPS-1', 'TRICEPS', 'D1/N54', '/triceps-1_d1_n54.mp4', '1/C0054.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('biceps-1_d1_n82', 'BICEPS-1', 'BICEPS', 'D1/N82', '/biceps-1_d1_n82.mp4', '1/C0082.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('antebrazo-1_d1_n64', 'ANTEBRAZO-1', 'ANTEBRAZO', 'D1/N64', '/antebrazo-1_d1_n64.mp4', '1/C0064.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-1_d1_n69', 'ESPALDA-1', 'ESPALDA', 'D1/N69', '/espalda-1_d1_n69.mp4', '1/C0069.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-2_d1_n70', 'ESPALDA-2', 'ESPALDA', 'D1/N70', '/espalda-2_d1_n70.mp4', '1/C0070.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('espalda-1_d1_n78', 'ESPALDA-1', 'ESPALDA', 'D1/N78', '/espalda-1_d1_n78.mp4', '1/C0078.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('cintura-1_d2_n28', 'CINTURA-1', 'CINTURA', 'D2/N28', '/cintura-1_d2_n28.mp4', '2/C0028.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('isquios-gluteos-1_d2_n5', 'ISQUIOS/GLUTEOS-1', 'ISQUIOS/GLUTEOS', 'D2/N5', '/isquios-gluteos-1_d2_n5.mp4', '2/C0005.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();
INSERT INTO v2.exercises (id, name, category, video_code, video_path, original_physical_file, other_acceptable_codes)
VALUES ('aductores-1_d2_n43', 'ADUCTORES-1', 'ADUCTORES', 'D2/N43', '/aductores-1_d2_n43.mp4', '2/C0043.MP4', NULL)
ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    category = EXCLUDED.category,
    video_code = EXCLUDED.video_code,
    video_path = EXCLUDED.video_path,
    original_physical_file = EXCLUDED.original_physical_file,
    other_acceptable_codes = EXCLUDED.other_acceptable_codes,
    updated_at = now();

-- 3. Insert 137 Plan Workout Days
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 1, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 1, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-JALON DORSAL PECHO","video_code":"D3/N170","video_path":"/espalda-jalon-dorsal-pecho_d3_n170.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-EXTENSION DE ESPALDA 1","video_code":"D3/N167","video_path":"/espalda-extension-de-espalda-1_d3_n167.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BICEPS","name":"BICEPS-CURL CON BARRA","video_code":"D1/N81","video_path":"/biceps-curl-con-barra_d1_n81.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL MARTILLO CON MANCUERNAS","video_code":"D1/N83","video_path":"/biceps-curl-martillo-con-mancuernas_d1_n83.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-CURL DE CONCENTRACION","video_code":"D1/N87","video_path":"/biceps-curl-de-concentracion_d1_n87.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-EXTENSION DE PIERNA EN MAQUINA","video_code":"D3/N164","video_path":"/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST 1","video_code":"D2/N26","video_path":"/gluteos-hip-thrust-1_d2_n26.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 1, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 1, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"PECHO","name":"PECHO-PRESS BANCA CON BARRA","video_code":"D1/N18","video_path":"/pecho-press-banca-con-barra_d1_n18.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-APERTURA MAQUINA","video_code":"PECHO-TGYO/N15","video_path":"/pecho-apertura-maquina_pecho-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON MANCUERNA","video_code":"D1/N48","video_path":"/triceps-extension-de-triceps-con-mancuerna_d1_n48.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-DIPS","video_code":"D1/N14","video_path":"/triceps-dips_d1_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-PRESS SENTADO CON MANCUERNAS","video_code":"D1/N38","video_path":"/hombros-press-sentado-con-mancuernas_d1_n38.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-REVERSA CON MANCUERNAS","video_code":"HOMBROS-TGYO/N14","video_path":"/hombros-reversa-con-mancuernas_hombros-tgyo_n14.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 1, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 1, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 2, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"GYM","name":"GYM-SENTADILLA EXPLOSIVA","video_code":"D3/N146","video_path":"/gym-sentadilla-explosiva_d3_n146.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-GEMELOS","video_code":"D3/N147","video_path":"/gym-gemelos_d3_n147.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 2, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-LAT PULLDOWN MAQUINA","video_code":"ESPALDA-TGYO/N21","video_path":"/espalda-lat-pulldown-maquina_espalda-tgyo_n21.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-REMO EN POLEA BAJA","video_code":"D1/N77","video_path":"/espalda-remo-en-polea-baja_d1_n77.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BICEPS","name":"BICEPS-CURL INVERSA EN POLEA","video_code":"BICEPS-TGYO/N15","video_path":"/biceps-curl-inversa-en-polea_biceps-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL INCLINADO MANCUERNAS","video_code":"D1/N84","video_path":"/biceps-curl-inclinado-mancuernas_d1_n84.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-CURL CON CABLE","video_code":"D1/N86","video_path":"/biceps-curl-con-cable_d1_n86.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA","video_code":"D2/N7","video_path":"/isquios-gluteos-peso-muerto-a-una-pierna_d2_n7.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-SENTADILLA BULGARA","video_code":"D2/N6","video_path":"/isquios-gluteos-sentadilla-bulgara_d2_n6.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS PIERNAS JUNTAS","video_code":"D3/N157","video_path":"/gluteos-sentadillas-piernas-juntas_d3_n157.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 2, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 2, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO +ABD 5', false, '[{"order":1,"category":"PECHO","name":"PECHO-APERTURA CON MANCUERNAS","video_code":"D1/N23","video_path":"/pecho-apertura-con-mancuernas_d1_n23.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-HEX PRESS CON MANCUERNAS","video_code":"PECHO-TGYO/N14","video_path":"/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON POLEA ALTA","video_code":"D1/N55","video_path":"/triceps-extension-de-triceps-con-polea-alta_d1_n55.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-PRESS BANCA AGARRE ESTRECHO","video_code":"D1/N52","video_path":"/triceps-press-banca-agarre-estrecho_d1_n52.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-PRESS FRONTAL CON BARRA","video_code":"D1/N42","video_path":"/hombros-press-frontal-con-barra_d1_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-REMO AL CUELLO CON POLEA BAJA","video_code":"HOMBROS-TGYO/N13","video_path":"/hombros-remo-al-cuello-con-polea-baja_hombros-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"CUADRICEPS","name":"CUADRICEPS-PASO ARRIBA O STEP","video_code":"D2/N12","video_path":"/cuadriceps-paso-arriba-o-step_d2_n12.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GEMELOS","name":"GEMELOS-ELEVACION DE GEMELOS","video_code":"D2/N17","video_path":"/gemelos-elevacion-de-gemelos_d2_n17.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 2, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 2, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD1', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 3, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GYM","name":"GYM-SENTADILLA EXPLOSIVA","video_code":"D3/N146","video_path":"/gym-sentadilla-explosiva_d3_n146.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 3, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN MAQUINA","video_code":"GLUTEOS_PIERNAS-TGYO/N14","video_path":"/gluteos-hip-thrust-en-maquina_gluteos_piernas-tgyo_n14.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-PESO MUERTO","video_code":"D2/N47","video_path":"/gluteos-peso-muerto_d2_n47.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-SENTADILLA BULGARA","video_code":"D2/N6","video_path":"/isquios-gluteos-sentadilla-bulgara_d2_n6.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-JALON VERTICAL CON POLEA","video_code":"D1/N74","video_path":"/espalda-jalon-vertical-con-polea_d1_n74.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-POLEA ALTA 2","video_code":"ESPALDA-TGYO/N20","video_path":"/espalda-polea-alta-2_espalda-tgyo_n20.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL EN POLEA SENTADO","video_code":"BICEPS-TGYO/N14","video_path":"/biceps-curl-en-polea-sentado_biceps-tgyo_n14.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-MARTILLO CERRADO DE RODILLAS","video_code":"BICEPS-TGYO/N12","video_path":"/biceps-martillo-cerrado-de-rodillas_biceps-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 3, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-GEMELOS","video_code":"D3/N147","video_path":"/gym-gemelos_d3_n147.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 3, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GEMELOS","name":"GEMELOS-ELEVACION DE GEMELOS POSTURA SENTADA","video_code":"D2/N18","video_path":"/gemelos-elevacion-de-gemelos-postura-sentada_d2_n18.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-PRESS INCLINADO CON BARRA","video_code":"D1/N25","video_path":"/pecho-press-inclinado-con-barra_d1_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNA APOYADO EN BANCO","video_code":"PECHO-TGYO/N13","video_path":"/pecho-pull-over-con-mancuerna-apoyado-en-banco_pecho-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PECHO","name":"PECHO-HEX PRESS CON MANCUERNAS","video_code":"PECHO-TGYO/N14","video_path":"/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRÍCEPS CON BANDA","video_code":"D1/N59","video_path":"/triceps-extension-de-triceps-con-banda_d1_n59.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"D1/N35","video_path":"/hombros-elevaciones-laterales-con-mancuernas_d1_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES EN POLEA MEDIA","video_code":"HOMBROS-TGYO/N12","video_path":"/hombros-elevaciones-en-polea-media_hombros-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 3, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 3, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 4, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 4, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD5', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO CON PESA","video_code":"D2/N37","video_path":"/gluteos-sentadillas-sumo-con-pesa_d2_n37.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS POLEA FRONTAL","video_code":"GLUTEOS_PIERNAS-TGYO/N24","video_path":"/gluteos-sentadillas-polea-frontal_gluteos_piernas-tgyo_n24.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-STEP UP CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N13","video_path":"/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL MARTILLO CON MANCUERNAS","video_code":"D1/N83","video_path":"/biceps-curl-martillo-con-mancuernas_d1_n83.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-CURL CON CABLE","video_code":"D1/N86","video_path":"/biceps-curl-con-cable_d1_n86.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-REMO INCLINADO CON AGARRE","video_code":"D1/N85","video_path":"/biceps-remo-inclinado-con-agarre_d1_n85.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ESPALDA","name":"ESPALDA-APERTURA EN POLEA","video_code":"ESPALDA-TGYO/N18","video_path":"/espalda-apertura-en-polea_espalda-tgyo_n18.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"ESPALDA","name":"ESPALDA-EXTENSIÓN DE ESPALADA 2","video_code":"ESPALDA-TGYO/N19","video_path":"/espalda-extension-de-espalada-2_espalda-tgyo_n19.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 4, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N8","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-2_plan_padel-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 2","video_code":"PLAN_PADEL-TGYO/N10","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-2_plan_padel-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"GYM","name":"GYM-SENTADILLA EXPLOSIVA","video_code":"D3/N146","video_path":"/gym-sentadilla-explosiva_d3_n146.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 4, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN BANCO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N6","video_path":"/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-EJERCICIO DE GUSANO","video_code":"D2/N10","video_path":"/isquios-gluteos-ejercicio-de-gusano_d2_n10.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-FLEXIONES CON RODILLAS EN EL SUELO","video_code":"D1/N24","video_path":"/pecho-flexiones-con-rodillas-en-el-suelo_d1_n24.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNAS","video_code":"D1/N30","video_path":"/pecho-pull-over-con-mancuernas_d1_n30.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EXTENSION CON POLEA","video_code":"TRICEPS-TGYO/N12","video_path":"/triceps-extension-con-polea_triceps-tgyo_n12.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-EN MAQUINA","video_code":"TRICEPS-TGYO/N11","video_path":"/triceps-en-maquina_triceps-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-PRESS SENTADO CON MANCUERNAS","video_code":"D1/N38","video_path":"/hombros-press-sentado-con-mancuernas_d1_n38.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-PRESS HOMBROS EN MAQUINA","video_code":"D3/N165","video_path":"/hombros-press-hombros-en-maquina_d3_n165.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 4, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 4, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 5, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 5, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-POLEA LATERAL","video_code":"ESPALDA-TGYO/N16","video_path":"/espalda-polea-lateral_espalda-tgyo_n16.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-POLEA DE PIE","video_code":"ESPALDA-TGYO/N13","video_path":"/espalda-polea-de-pie_espalda-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-DOMINADAS ASISTIDAS","video_code":"D1/N58","video_path":"/espalda-dominadas-asistidas_d1_n58.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL EN POLEA","video_code":"BICEPS-TGYO/N13","video_path":"/biceps-curl-en-polea_biceps-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-DUMBELL CURL","video_code":"BICEPS-TGYO/N10","video_path":"/biceps-dumbell-curl_biceps-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON STEP EN MAQUINA","video_code":"GLUTEOS_PIERNAS-TGYO/N20","video_path":"/gluteos-estocada-con-step-en-maquina_gluteos_piernas-tgyo_n20.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA","video_code":"D2/N7","video_path":"/isquios-gluteos-peso-muerto-a-una-pierna_d2_n7.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS EN POLEA CENTRADAS","video_code":"GLUTEOS_PIERNAS-TGYO/N26","video_path":"/gluteos-sentadillas-en-polea-centradas_gluteos_piernas-tgyo_n26.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 5, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ANTEBRAZO","name":"ANTEBRAZO-GIROS CON MANCUERNAS","video_code":"ANTEBRAZO-TGYO/N11","video_path":"/antebrazo-giros-con-mancuernas_antebrazo-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ANTEBRAZO","name":"ANTEBRAZO-AGARRE DE PINZA CON DISCO","video_code":"D1/N65","video_path":"/antebrazo-agarre-de-pinza-con-disco_d1_n65.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN MAQUINA","video_code":"D2/N34","video_path":"/abductores-abductores-en-maquina_d2_n34.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 5, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNAS","video_code":"D1/N30","video_path":"/pecho-pull-over-con-mancuernas_d1_n30.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-PRESS PECHO MAQUINA","video_code":"PECHO-TGYO/N16","video_path":"/pecho-press-pecho-maquina_pecho-tgyo_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS EN POLEA ALTA DE PIE","video_code":"TRICEPS-TGYO/N6","video_path":"/triceps-extension-de-triceps-en-polea-alta-de-pie_triceps-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-PRESS BANCA AGARRE ESTRECHO","video_code":"D1/N52","video_path":"/triceps-press-banca-agarre-estrecho_d1_n52.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON POLEA ALTA","video_code":"D1/N55","video_path":"/triceps-extension-de-triceps-con-polea-alta_d1_n55.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"D1/N35","video_path":"/hombros-elevaciones-laterales-con-mancuernas_d1_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"CUADRICEPS","name":"CUADRICEPS-ESTOCADA BULGARA","video_code":"D2/N15","video_path":"/cuadriceps-estocada-bulgara_d2_n15.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GEMELOS","name":"GEMELOS-ZANCADAS CON ELEVACION RODILLA","video_code":"D2/N22","video_path":"/gemelos-zancadas-con-elevacion-rodilla_d2_n22.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 5, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N8","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-2_plan_padel-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 2","video_code":"PLAN_PADEL-TGYO/N10","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-2_plan_padel-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 5, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 6, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PECHO","name":"PECHO-FLEXIONES EN MANCUERNAS","video_code":"PECHO-TGYO/N8","video_path":"/pecho-flexiones-en-mancuernas_pecho-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 6, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"BICEPS","name":"BICEPS-CURL CON BARRA","video_code":"D1/N81","video_path":"/biceps-curl-con-barra_d1_n81.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BICEPS","name":"BICEPS-CURL CON CABLE","video_code":"D1/N86","video_path":"/biceps-curl-con-cable_d1_n86.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-REMO. CON MANCUERNA","video_code":"D1/N79","video_path":"/espalda-remo-con-mancuerna_d1_n79.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-REMO CON BARRA T","video_code":"ESPALDA-TGYO/N11","video_path":"/espalda-remo-con-barra-t_espalda-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-EXTENSION DE ESPALDA 1","video_code":"D3/N167","video_path":"/espalda-extension-de-espalda-1_d3_n167.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS CON DISCOS","video_code":"GLUTEOS_PIERNAS-TGYO/N30","video_path":"/gluteos-sentadillas-con-discos_gluteos_piernas-tgyo_n30.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N31","video_path":"/isquios-gluteos-peso-muerto-con-barra_gluteos_piernas-tgyo_n31.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST 1","video_code":"D2/N26","video_path":"/gluteos-hip-thrust-1_d2_n26.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 6, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-ENCOGIMIENTO DE HOMBROS","video_code":"D1/N80","video_path":"/espalda-encogimiento-de-hombros_d1_n80.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-EJERCICIO DE GUSANO","video_code":"D2/N10","video_path":"/isquios-gluteos-ejercicio-de-gusano_d2_n10.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ANTEBRAZO","name":"ANTEBRAZO-CURL DE MUÑECA INVERSO","video_code":"D1/N61","video_path":"/antebrazo-curl-de-muneca-inverso_d1_n61.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO 1","video_code":"GLUTEOS_PIERNAS-TGYO/N11","video_path":"/isquios-gluteos-hiperextension-con-disco-1_gluteos_piernas-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 6, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"PECHO","name":"PECHO-PULL OVER EN BANCO","video_code":"PECHO-TGYO/N7","video_path":"/pecho-pull-over-en-banco_pecho-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-PRESS INCLINADO CON MANCUERNAS","video_code":"PECHO-TGYO/N3","video_path":"/pecho-press-inclinado-con-mancuernas_pecho-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-ROTACIONES LATERALES","video_code":"PECHO-TGYO/N2","video_path":"/pecho-rotaciones-laterales_pecho-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"HOMBROS","name":"HOMBROS-BARRA TRASERA DE CABEZA","video_code":"HOMBROS-TGYO/N6","video_path":"/hombros-barra-trasera-de-cabeza_hombros-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-PRESS HOMBROS EN MAQUINA","video_code":"D3/N165","video_path":"/hombros-press-hombros-en-maquina_d3_n165.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"CUADRICEPS","name":"CUADRICEPS-ESTOCADA","video_code":"D2/N14","video_path":"/cuadriceps-estocada_d2_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON STEP","video_code":"GLUTEOS_PIERNAS-TGYO/N21","video_path":"/gluteos-estocada-con-step_gluteos_piernas-tgyo_n21.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 6, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 6, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 7, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 7, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO CON PESA","video_code":"D2/N37","video_path":"/gluteos-sentadillas-sumo-con-pesa_d2_n37.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA","video_code":"D2/N7","video_path":"/isquios-gluteos-peso-muerto-a-una-pierna_d2_n7.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-EXTENSION DE PIERNA EN MAQUINA","video_code":"D3/N164","video_path":"/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-JALON DORSAL PECHO","video_code":"D3/N170","video_path":"/espalda-jalon-dorsal-pecho_d3_n170.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-EXTENSION DE ESPALDA 1","video_code":"D3/N167","video_path":"/espalda-extension-de-espalda-1_d3_n167.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-DUMBELL CURL","video_code":"BICEPS-TGYO/N10","video_path":"/biceps-dumbell-curl_biceps-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL REVÉS","video_code":"BICEPS-TGYO/N9","video_path":"/biceps-curl-reves_biceps-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-CROSS","video_code":"BICEPS-TGYO/N8","video_path":"/biceps-cross_biceps-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 7, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ANTEBRAZO","name":"ANTEBRAZO-GIROS CON MANCUERNAS","video_code":"ANTEBRAZO-TGYO/N11","video_path":"/antebrazo-giros-con-mancuernas_antebrazo-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION 2","video_code":"GLUTEOS_PIERNAS-TGYO/N12","video_path":"/isquios-gluteos-hiperextension-2_gluteos_piernas-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON UNA MANCUERNA A UN PIE","video_code":"GLUTEOS_PIERNAS-TGYO/N1","video_path":"/isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 7, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"CUADRICEPS","name":"CUADRICEPS-ESTOCADA BULGARA","video_code":"D2/N15","video_path":"/cuadriceps-estocada-bulgara_d2_n15.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLA CON BARRA TRASERA","video_code":"D2/N48","video_path":"/gluteos-sentadilla-con-barra-trasera_d2_n48.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-APERTURA MAQUINA","video_code":"PECHO-TGYO/N15","video_path":"/pecho-apertura-maquina_pecho-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-ROTACIONES LATERALES","video_code":"PECHO-TGYO/N2","video_path":"/pecho-rotaciones-laterales_pecho-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"GEMELOS","name":"GEMELOS-SALTAR A LA COMBA","video_code":"D2/N25","video_path":"/gemelos-saltar-a-la-comba_d2_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-EXTENSION CON POLEA","video_code":"TRICEPS-TGYO/N12","video_path":"/triceps-extension-con-polea_triceps-tgyo_n12.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON MANCUERNA","video_code":"D1/N48","video_path":"/triceps-extension-de-triceps-con-mancuerna_d1_n48.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES FRONTALES CON MANCUERNAS","video_code":"D1/N32","video_path":"/hombros-elevaciones-frontales-con-mancuernas_d1_n32.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 7, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN MAQUINA","video_code":"D2/N34","video_path":"/abductores-abductores-en-maquina_d2_n34.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N8","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-2_plan_padel-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 7, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 8, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 1","video_code":"D3/N119","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-1_d3_n119.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 1","video_code":"D3/N118","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-1_d3_n118.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION 2","video_code":"GLUTEOS_PIERNAS-TGYO/N12","video_path":"/isquios-gluteos-hiperextension-2_gluteos_piernas-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 8, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS PIERNAS JUNTAS","video_code":"D3/N157","video_path":"/gluteos-sentadillas-piernas-juntas_d3_n157.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN BANCO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N6","video_path":"/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-STEP UP CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N13","video_path":"/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL REVÉS","video_code":"BICEPS-TGYO/N9","video_path":"/biceps-curl-reves_biceps-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-MARTILLO CERRADO","video_code":"BICEPS-TGYO/N5","video_path":"/biceps-martillo-cerrado_biceps-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-ACTIVACIÓN DE ESPALDA","video_code":"ESPALDA-TGYO/N10","video_path":"/espalda-activacion-de-espalda_espalda-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ESPALDA","name":"ESPALDA-JALON VERTICAL CON POLEA","video_code":"D1/N74","video_path":"/espalda-jalon-vertical-con-polea_d1_n74.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"ESPALDA","name":"ESPALDA-REVERSA CON MANCUERNAS","video_code":"ESPALDA-TGYO/N1","video_path":"/espalda-reversa-con-mancuernas_espalda-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 8, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO 1","video_code":"GLUTEOS_PIERNAS-TGYO/N11","video_path":"/isquios-gluteos-hiperextension-con-disco-1_gluteos_piernas-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ANTEBRAZO","name":"ANTEBRAZO-GIROS CON MANCUERNAS","video_code":"ANTEBRAZO-TGYO/N11","video_path":"/antebrazo-giros-con-mancuernas_antebrazo-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-ENCOGIMIENTO DE HOMBROS","video_code":"D1/N80","video_path":"/espalda-encogimiento-de-hombros_d1_n80.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 8, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-ZANCADAS ESTATICAS","video_code":"D3/N154","video_path":"/gluteos-zancadas-estaticas_d3_n154.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN MAQUINA","video_code":"GLUTEOS_PIERNAS-TGYO/N14","video_path":"/gluteos-hip-thrust-en-maquina_gluteos_piernas-tgyo_n14.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-HEX PRESS CON MANCUERNAS","video_code":"PECHO-TGYO/N14","video_path":"/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-APERTURA CON MANCUERNAS","video_code":"D1/N23","video_path":"/pecho-apertura-con-mancuernas_d1_n23.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNAS","video_code":"D1/N30","video_path":"/pecho-pull-over-con-mancuernas_d1_n30.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-DIPS","video_code":"D1/N14","video_path":"/triceps-dips_d1_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-REMO AL CUELLO CON BARRA","video_code":"D1/N44","video_path":"/hombros-remo-al-cuello-con-barra_d1_n44.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-PRESS HOMBROS EN MAQUINA","video_code":"D3/N165","video_path":"/hombros-press-hombros-en-maquina_d3_n165.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 8, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 8, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 9, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 9, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-JALON DORSAL PECHO","video_code":"D3/N170","video_path":"/espalda-jalon-dorsal-pecho_d3_n170.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-EXTENSION DE ESPALDA 1","video_code":"D3/N167","video_path":"/espalda-extension-de-espalda-1_d3_n167.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"BICEPS-TGYO/N2","video_path":"/biceps-elevaciones-laterales-con-mancuernas_biceps-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-GIROS CON MANCUERNAS","video_code":"BICEPS-TGYO/N3","video_path":"/biceps-giros-con-mancuernas_biceps-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GLUTEOS","name":"GLUTEOS-PESO MUERTO","video_code":"D2/N47","video_path":"/gluteos-peso-muerto_d2_n47.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLA SUMO CON STEPS","video_code":"GLUTEOS_PIERNAS-TGYO/N22","video_path":"/gluteos-sentadilla-sumo-con-steps_gluteos_piernas-tgyo_n22.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST 1","video_code":"D2/N26","video_path":"/gluteos-hip-thrust-1_d2_n26.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 9, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-STEP UP CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N13","video_path":"/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-EXTENSION DE PIERNA EN MAQUINA","video_code":"D3/N164","video_path":"/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-ZANCADAS ESTATICAS","video_code":"D3/N154","video_path":"/gluteos-zancadas-estaticas_d3_n154.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 9, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"PECHO","name":"PECHO-PRESS CON MANCUERNAS EN BANCO TUMBADO","video_code":"PECHO-TGYO/N5","video_path":"/pecho-press-con-mancuernas-en-banco-tumbado_pecho-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-APERTURA MAQUINA","video_code":"PECHO-TGYO/N15","video_path":"/pecho-apertura-maquina_pecho-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EN BARRA","video_code":"TRICEPS-TGYO/N7","video_path":"/triceps-en-barra_triceps-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS EN POLEA ALTA DE PIE","video_code":"TRICEPS-TGYO/N6","video_path":"/triceps-extension-de-triceps-en-polea-alta-de-pie_triceps-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-PRESS SENTADO CON MANCUERNAS","video_code":"D1/N38","video_path":"/hombros-press-sentado-con-mancuernas_d1_n38.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-AGACHE A INVERSA","video_code":"HOMBROS-TGYO/N7","video_path":"/hombros-agache-a-inversa_hombros-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GEMELOS","name":"GEMELOS-ELEVACION DE GEMELOS","video_code":"D2/N17","video_path":"/gemelos-elevacion-de-gemelos_d2_n17.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON UNA MANCUERNA A UN PIE","video_code":"GLUTEOS_PIERNAS-TGYO/N1","video_path":"/isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 9, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CADERA MAS CINTURA","name":"CADERA MAS CINTURA-MOVIMIENTO CINTURA CON PALO","video_code":"D2/N31","video_path":"/cadera-mas-cintura-movimiento-cintura-con-palo_d2_n31.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 9, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 10, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 2","video_code":"PLAN_PADEL-TGYO/N12","video_path":"/cardio-o-calentamiento-cinta-2_plan_padel-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 10, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-LAT PULLDOWN MAQUINA","video_code":"ESPALDA-TGYO/N21","video_path":"/espalda-lat-pulldown-maquina_espalda-tgyo_n21.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"CALENTAMIENTO GYM Y PADEL","name":"CALENTAMIENTO GYM Y PADEL-GIRO DE CADERA AMBOS LADOS","video_code":"D3/N77","video_path":"/calentamiento-gym-y-padel-giro-de-cadera-ambos-lados_d3_n77.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BICEPS","name":"BICEPS-HAMMER CURL","video_code":"BICEPS-TGYO/N6","video_path":"/biceps-hammer-curl_biceps-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL INCLINADO MANCUERNAS","video_code":"D1/N84","video_path":"/biceps-curl-inclinado-mancuernas_d1_n84.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-CURL CON CABLE","video_code":"D1/N86","video_path":"/biceps-curl-con-cable_d1_n86.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN POLEA","video_code":"D2/N35","video_path":"/abductores-abductores-en-polea_d2_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ADUCTORES","name":"ADUCTORES-ADUCCION EN POLEA","video_code":"D2/N41","video_path":"/aductores-aduccion-en-polea_d2_n41.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO 1","video_code":"GLUTEOS_PIERNAS-TGYO/N11","video_path":"/isquios-gluteos-hiperextension-con-disco-1_gluteos_piernas-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 10, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO","video_code":"D3/N158","video_path":"/gluteos-sentadillas-sumo_d3_n158.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-PATADA EN POLEA DOBLANDO RODILLA","video_code":"GLUTEOS_PIERNAS-TGYO/N7","video_path":"/gluteos-patada-en-polea-doblando-rodilla_gluteos_piernas-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-EMPUJE DE CADERA CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N28","video_path":"/gluteos-empuje-de-cadera-con-mancuerna_gluteos_piernas-tgyo_n28.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 10, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"PECHO","name":"PECHO-FLEXIONES EN MANCUERNAS","video_code":"PECHO-TGYO/N8","video_path":"/pecho-flexiones-en-mancuernas_pecho-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-PRESS PECHO MAQUINA","video_code":"PECHO-TGYO/N16","video_path":"/pecho-press-pecho-maquina_pecho-tgyo_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON POLEA ALTA","video_code":"D1/N55","video_path":"/triceps-extension-de-triceps-con-polea-alta_d1_n55.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-PRESS BANCA AGARRE ESTRECHO","video_code":"D1/N52","video_path":"/triceps-press-banca-agarre-estrecho_d1_n52.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-PRESS FRONTAL CON BARRA","video_code":"D1/N42","video_path":"/hombros-press-frontal-con-barra_d1_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-REVERSA CON MANCUERNAS","video_code":"HOMBROS-TGYO/N14","video_path":"/hombros-reversa-con-mancuernas_hombros-tgyo_n14.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"CUADRICEPS","name":"CUADRICEPS-PASO ARRIBA O STEP","video_code":"D2/N12","video_path":"/cuadriceps-paso-arriba-o-step_d2_n12.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GEMELOS","name":"GEMELOS-ELEVACION DE GEMELOS","video_code":"D2/N17","video_path":"/gemelos-elevacion-de-gemelos_d2_n17.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 10, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 10, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 11, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 11, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS EN POLEA CENTRADAS","video_code":"GLUTEOS_PIERNAS-TGYO/N26","video_path":"/gluteos-sentadillas-en-polea-centradas_gluteos_piernas-tgyo_n26.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-PESO MUERTO","video_code":"D2/N47","video_path":"/gluteos-peso-muerto_d2_n47.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO Y FEMORAL EN POLEA","video_code":"GLUTEOS_PIERNAS-TGYO/N5","video_path":"/isquios-gluteos-peso-muerto-y-femoral-en-polea_gluteos_piernas-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-ACTIVACIÓN CON BARRA","video_code":"ESPALDA-TGYO/N15","video_path":"/espalda-activacion-con-barra_espalda-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-POLEA DE PIE","video_code":"ESPALDA-TGYO/N13","video_path":"/espalda-polea-de-pie_espalda-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL CON BARRA","video_code":"D1/N81","video_path":"/biceps-curl-con-barra_d1_n81.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-MARTILLO CERRADO","video_code":"BICEPS-TGYO/N5","video_path":"/biceps-martillo-cerrado_biceps-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 11, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-STEP UP CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N13","video_path":"/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"CADERA MAS CINTURA","name":"CADERA MAS CINTURA-OBLICUOS CON DISCO","video_code":"CINTURA-TGYO/N1","video_path":"/cadera-mas-cintura-oblicuos-con-disco_cintura-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-ENCOGIMIENTO DE HOMBROS","video_code":"D1/N80","video_path":"/espalda-encogimiento-de-hombros_d1_n80.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GEMELOS","name":"GEMELOS-SALTAR A LA COMBA","video_code":"D2/N25","video_path":"/gemelos-saltar-a-la-comba_d2_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 11, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GEMELOS","name":"GEMELOS-ELEVACION DE GEMELOS POSTURA SENTADA","video_code":"D2/N18","video_path":"/gemelos-elevacion-de-gemelos-postura-sentada_d2_n18.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-PRESS INCLINADO CON BARRA","video_code":"D1/N25","video_path":"/pecho-press-inclinado-con-barra_d1_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-HEX PRESS CON MANCUERNAS","video_code":"PECHO-TGYO/N14","video_path":"/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRÍCEPS CON BANDA","video_code":"D1/N59","video_path":"/triceps-extension-de-triceps-con-banda_d1_n59.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-EN MAQUINA","video_code":"TRICEPS-TGYO/N11","video_path":"/triceps-en-maquina_triceps-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"D1/N35","video_path":"/hombros-elevaciones-laterales-con-mancuernas_d1_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-PRESS FRONTAL CON BARRA","video_code":"D1/N42","video_path":"/hombros-press-frontal-con-barra_d1_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 11, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 11, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 12, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 12, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS EN POLEA CENTRADAS","video_code":"GLUTEOS_PIERNAS-TGYO/N26","video_path":"/gluteos-sentadillas-en-polea-centradas_gluteos_piernas-tgyo_n26.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO","video_code":"D3/N158","video_path":"/gluteos-sentadillas-sumo_d3_n158.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-ZANCADAS ESTATICAS","video_code":"D3/N154","video_path":"/gluteos-zancadas-estaticas_d3_n154.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-EMPUJE DE CADERA CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N28","video_path":"/gluteos-empuje-de-cadera-con-mancuerna_gluteos_piernas-tgyo_n28.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-POLEA ALTA 1","video_code":"ESPALDA-TGYO/N17","video_path":"/espalda-polea-alta-1_espalda-tgyo_n17.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-RENEGADE ROW","video_code":"ESPALDA-TGYO/N4","video_path":"/espalda-renegade-row_espalda-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL CON CABLE","video_code":"D1/N86","video_path":"/biceps-curl-con-cable_d1_n86.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-CROSS","video_code":"BICEPS-TGYO/N8","video_path":"/biceps-cross_biceps-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 12, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN MAQUINA","video_code":"D2/N34","video_path":"/abductores-abductores-en-maquina_d2_n34.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 12, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"CUADRICEPS","name":"CUADRICEPS-PASO ARRIBA O STEP","video_code":"D2/N12","video_path":"/cuadriceps-paso-arriba-o-step_d2_n12.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GEMELOS","name":"GEMELOS-SENTADILLA CON ELEVACION DE TALONES","video_code":"D2/N19","video_path":"/gemelos-sentadilla-con-elevacion-de-talones_d2_n19.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-HEX PRESS CON MANCUERNAS","video_code":"PECHO-TGYO/N14","video_path":"/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-APERTURAS CON MANCUERNAS TUMBADO","video_code":"PECHO-TGYO/N9","video_path":"/pecho-aperturas-con-mancuernas-tumbado_pecho-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EN BANCO CON MANCUERNA","video_code":"TRICEPS-TGYO/N8","video_path":"/triceps-en-banco-con-mancuerna_triceps-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-EXTENSIÓN DE TRÍCEPS EN POLEA","video_code":"TRICEPS-TGYO/N2","video_path":"/triceps-extension-de-triceps-en-polea_triceps-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-PRESS DE PIE","video_code":"HOMBROS-TGYO/N3","video_path":"/hombros-press-de-pie_hombros-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-PRESS HOMBROS EN MAQUINA","video_code":"D3/N165","video_path":"/hombros-press-hombros-en-maquina_d3_n165.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 12, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 12, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD1', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 13, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENMTO', false, '[{"order":1,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 13, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-LAT PULLDOWN MAQUINA","video_code":"ESPALDA-TGYO/N21","video_path":"/espalda-lat-pulldown-maquina_espalda-tgyo_n21.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-REMO INVERTIDO EN SUELO","video_code":"ESPALDA-TGYO/N7","video_path":"/espalda-remo-invertido-en-suelo_espalda-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-DOMINADAS ASISTIDAS","video_code":"D1/N58","video_path":"/espalda-dominadas-asistidas_d1_n58.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL REVÉS","video_code":"BICEPS-TGYO/N9","video_path":"/biceps-curl-reves_biceps-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-MARTILLO CERRADO DE RODILLAS","video_code":"BICEPS-TGYO/N12","video_path":"/biceps-martillo-cerrado-de-rodillas_biceps-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-CURL INVERSA EN POLEA","video_code":"BICEPS-TGYO/N15","video_path":"/biceps-curl-inversa-en-polea_biceps-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-PESO MUERTO","video_code":"D2/N47","video_path":"/gluteos-peso-muerto_d2_n47.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO","video_code":"D3/N158","video_path":"/gluteos-sentadillas-sumo_d3_n158.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 13, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENMTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN BANCO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N6","video_path":"/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-PESO MUERTO","video_code":"D2/N47","video_path":"/gluteos-peso-muerto_d2_n47.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO","video_code":"D3/N158","video_path":"/gluteos-sentadillas-sumo_d3_n158.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-STEP UP CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N13","video_path":"/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 13, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNAS","video_code":"D1/N30","video_path":"/pecho-pull-over-con-mancuernas_d1_n30.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"TRICEPS","name":"TRICEPS-EN BARRA","video_code":"TRICEPS-TGYO/N7","video_path":"/triceps-en-barra_triceps-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSIÓN DE TRÍCEPS CON MANCUERNA","video_code":"TRICEPS-TGYO/N9","video_path":"/triceps-extension-de-triceps-con-mancuerna_triceps-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"HOMBROS","name":"HOMBROS-APERTURA GIRANDO","video_code":"HOMBROS-TGYO/N1","video_path":"/hombros-apertura-girando_hombros-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-REVERSA SENTADO","video_code":"HOMBROS-TGYO/N2","video_path":"/hombros-reversa-sentado_hombros-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-PRESS DE PIE","video_code":"HOMBROS-TGYO/N3","video_path":"/hombros-press-de-pie_hombros-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO","video_code":"D3/N158","video_path":"/gluteos-sentadillas-sumo_d3_n158.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO","video_code":"D3/N158","video_path":"/gluteos-sentadillas-sumo_d3_n158.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 13, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENMTO', false, '[{"order":1,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 13, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 14, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N8","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-2_plan_padel-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 2","video_code":"PLAN_PADEL-TGYO/N10","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-2_plan_padel-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 14, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-EXTENSION DE ESPALDA 1","video_code":"D3/N167","video_path":"/espalda-extension-de-espalda-1_d3_n167.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-REMO. CON MANCUERNA","video_code":"D1/N79","video_path":"/espalda-remo-con-mancuerna_d1_n79.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL CON CABLE","video_code":"D1/N86","video_path":"/biceps-curl-con-cable_d1_n86.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-MARTILLO CERRADO","video_code":"BICEPS-TGYO/N5","video_path":"/biceps-martillo-cerrado_biceps-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-CURL MARTILLO CON MANCUERNAS","video_code":"D1/N83","video_path":"/biceps-curl-martillo-con-mancuernas_d1_n83.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA","video_code":"D2/N7","video_path":"/isquios-gluteos-peso-muerto-a-una-pierna_d2_n7.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST 1","video_code":"D2/N26","video_path":"/gluteos-hip-thrust-1_d2_n26.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 14, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON STEP EN MAQUINA","video_code":"GLUTEOS_PIERNAS-TGYO/N20","video_path":"/gluteos-estocada-con-step-en-maquina_gluteos_piernas-tgyo_n20.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLA SUMO CON DOS MANCUERNAS","video_code":"GLUTEOS_PIERNAS-TGYO/N17","video_path":"/gluteos-sentadilla-sumo-con-dos-mancuernas_gluteos_piernas-tgyo_n17.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO 1","video_code":"GLUTEOS_PIERNAS-TGYO/N11","video_path":"/isquios-gluteos-hiperextension-con-disco-1_gluteos_piernas-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 14, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"PECHO","name":"PECHO-PRESS INCLINADO CON BARRA","video_code":"D1/N25","video_path":"/pecho-press-inclinado-con-barra_d1_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-PULL OVER EN BANCO","video_code":"PECHO-TGYO/N7","video_path":"/pecho-pull-over-en-banco_pecho-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-APERTURAS CON MANCUERNAS TUMBADO","video_code":"PECHO-TGYO/N9","video_path":"/pecho-aperturas-con-mancuernas-tumbado_pecho-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON POLEA ALTA","video_code":"D1/N55","video_path":"/triceps-extension-de-triceps-con-polea-alta_d1_n55.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-FLEXIÓN DE TRÍCEPS","video_code":"TRICEPS-TGYO/N10","video_path":"/triceps-flexion-de-triceps_triceps-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GLUTEOS","name":"GLUTEOS-STEP UP EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N29","video_path":"/gluteos-step-up-en-banco_gluteos_piernas-tgyo_n29.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-STEP UP EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N29","video_path":"/gluteos-step-up-en-banco_gluteos_piernas-tgyo_n29.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS BÚLGARAS CON UNA MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N18","video_path":"/gluteos-sentadillas-bulgaras-con-una-mancuerna_gluteos_piernas-tgyo_n18.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 14, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 2","video_code":"PLAN_PADEL-TGYO/N10","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-2_plan_padel-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 14, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 15, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 15, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PUENTE DE GLÚTEOS CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N4","video_path":"/isquios-gluteos-puente-de-gluteos-con-mancuerna_gluteos_piernas-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-EXTENSION DE PIERNA EN MAQUINA","video_code":"D3/N164","video_path":"/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-JALON DORSAL PECHO","video_code":"D3/N170","video_path":"/espalda-jalon-dorsal-pecho_d3_n170.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-JALON DORSAL PECHO","video_code":"D3/N170","video_path":"/espalda-jalon-dorsal-pecho_d3_n170.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-LAT PULLDOWN MAQUINA","video_code":"ESPALDA-TGYO/N21","video_path":"/espalda-lat-pulldown-maquina_espalda-tgyo_n21.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL INVERSA EN POLEA","video_code":"BICEPS-TGYO/N15","video_path":"/biceps-curl-inversa-en-polea_biceps-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-DUMBELL CURL","video_code":"BICEPS-TGYO/N10","video_path":"/biceps-dumbell-curl_biceps-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 15, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-PRENSA PIERNAS SEPARADAS","video_code":"D3/N168","video_path":"/gluteos-prensa-piernas-separadas_d3_n168.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-PRENSA PIERNAS JUNTAS","video_code":"D3/N169","video_path":"/gluteos-prensa-piernas-juntas_d3_n169.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN MAQUINA","video_code":"D2/N34","video_path":"/abductores-abductores-en-maquina_d2_n34.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 15, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"CUADRICEPS","name":"CUADRICEPS-ESTOCADA BULGARA","video_code":"D2/N15","video_path":"/cuadriceps-estocada-bulgara_d2_n15.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-EMPUJE DE CADERA CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N28","video_path":"/gluteos-empuje-de-cadera-con-mancuerna_gluteos_piernas-tgyo_n28.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-ROTACIONES LATERALES","video_code":"PECHO-TGYO/N2","video_path":"/pecho-rotaciones-laterales_pecho-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-PRESS INCLINADO CON BARRA","video_code":"D1/N25","video_path":"/pecho-press-inclinado-con-barra_d1_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PECHO","name":"PECHO-RENEGADE ROW CON FLEXIÓN","video_code":"PECHO-TGYO/N1","video_path":"/pecho-renegade-row-con-flexion_pecho-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON MANCUERNA","video_code":"D1/N48","video_path":"/triceps-extension-de-triceps-con-mancuerna_d1_n48.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES FRONTALES CON MANCUERNAS","video_code":"D1/N32","video_path":"/hombros-elevaciones-frontales-con-mancuernas_d1_n32.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-REMO AL CUELLO CON MANCUERNAS","video_code":"D1/N45","video_path":"/hombros-remo-al-cuello-con-mancuernas_d1_n45.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 15, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 15, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 16, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GEMELOS","name":"GEMELOS-ELEVACION DE GEMELOS","video_code":"D2/N17","video_path":"/gemelos-elevacion-de-gemelos_d2_n17.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"GYM","name":"GYM-SENTADILLA EXPLOSIVA","video_code":"D3/N146","video_path":"/gym-sentadilla-explosiva_d3_n146.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 16, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-STEP UP EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N29","video_path":"/gluteos-step-up-en-banco_gluteos_piernas-tgyo_n29.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-EXTENSIÓN DE CADERA EN POLEA CENTRAL","video_code":"GLUTEOS_PIERNAS-TGYO/N27","video_path":"/gluteos-extension-de-cadera-en-polea-central_gluteos_piernas-tgyo_n27.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN BANCO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N6","video_path":"/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-REMO INVERTIDO PIERNAS ESTIRADAS","video_code":"ESPALDA-TGYO/N8","video_path":"/espalda-remo-invertido-piernas-estiradas_espalda-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PECHO","name":"PECHO-APERTURAS CON MANCUERNAS TUMBADO","video_code":"PECHO-TGYO/N9","video_path":"/pecho-aperturas-con-mancuernas-tumbado_pecho-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"BICEPS-TGYO/N2","video_path":"/biceps-elevaciones-laterales-con-mancuernas_biceps-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL MANCUERNAS","video_code":"BICEPS-TGYO/N4","video_path":"/biceps-curl-mancuernas_biceps-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-CURL CONCENTRACIÓN","video_code":"BICEPS-TGYO/N1","video_path":"/biceps-curl-concentracion_biceps-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 16, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO 1","video_code":"GLUTEOS_PIERNAS-TGYO/N11","video_path":"/isquios-gluteos-hiperextension-con-disco-1_gluteos_piernas-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA CON MANCUERNA Y PIE ARRIBA","video_code":"GLUTEOS_PIERNAS-TGYO/N3","video_path":"/isquios-gluteos-peso-muerto-a-una-pierna-con-mancuerna-y-pie-arriba_gluteos_piernas-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 16, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"PECHO","name":"PECHO-PULL OVER EN BANCO","video_code":"PECHO-TGYO/N7","video_path":"/pecho-pull-over-en-banco_pecho-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-SUBIDA CON MANCUERNA","video_code":"PECHO-TGYO/N4","video_path":"/pecho-subida-con-mancuerna_pecho-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-PRESS PECHO MAQUINA","video_code":"PECHO-TGYO/N16","video_path":"/pecho-press-pecho-maquina_pecho-tgyo_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-EXTENSIÓN DE TRÍCEPS CON MANCUERNA","video_code":"TRICEPS-TGYO/N9","video_path":"/triceps-extension-de-triceps-con-mancuerna_triceps-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EXTENSIÓN DE TRÍCEPS EN POLEA","video_code":"TRICEPS-TGYO/N2","video_path":"/triceps-extension-de-triceps-en-polea_triceps-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-AGACHE A INVERSA","video_code":"HOMBROS-TGYO/N7","video_path":"/hombros-agache-a-inversa_hombros-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-BARRA TRASERA DE CABEZA","video_code":"HOMBROS-TGYO/N6","video_path":"/hombros-barra-trasera-de-cabeza_hombros-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES FRONTALES SENTADO","video_code":"HOMBROS-TGYO/N4","video_path":"/hombros-elevaciones-frontales-sentado_hombros-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 16, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N8","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-2_plan_padel-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-ACTIVACIÓN DE ESPALDA","video_code":"ESPALDA-TGYO/N10","video_path":"/espalda-activacion-de-espalda_espalda-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-RENEGADE ROW","video_code":"ESPALDA-TGYO/N4","video_path":"/espalda-renegade-row_espalda-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 16, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 17, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-SENTADILLA EXPLOSIVA","video_code":"D3/N146","video_path":"/gym-sentadilla-explosiva_d3_n146.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 17, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADAS EN. MAQUINA","video_code":"D2/N53","video_path":"/gluteos-estocadas-en-maquina_d2_n53.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST 1","video_code":"D2/N26","video_path":"/gluteos-hip-thrust-1_d2_n26.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON STEP EN MAQUINA","video_code":"GLUTEOS_PIERNAS-TGYO/N20","video_path":"/gluteos-estocada-con-step-en-maquina_gluteos_piernas-tgyo_n20.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-GIROS CON MANCUERNAS","video_code":"BICEPS-TGYO/N3","video_path":"/biceps-giros-con-mancuernas_biceps-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-CURL MANCUERNAS","video_code":"BICEPS-TGYO/N4","video_path":"/biceps-curl-mancuernas_biceps-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-REMO CON BARRA T","video_code":"ESPALDA-TGYO/N11","video_path":"/espalda-remo-con-barra-t_espalda-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ESPALDA","name":"ESPALDA-POLEA A UN BRAZO","video_code":"ESPALDA-TGYO/N12","video_path":"/espalda-polea-a-un-brazo_espalda-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"ESPALDA","name":"ESPALDA-APERTURA EN POLEA","video_code":"ESPALDA-TGYO/N18","video_path":"/espalda-apertura-en-polea_espalda-tgyo_n18.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 17, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-EXTENSION DE PIERNA EN MAQUINA","video_code":"D3/N164","video_path":"/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON UNA MANCUERNA A UN PIE","video_code":"GLUTEOS_PIERNAS-TGYO/N1","video_path":"/isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GEMELOS","name":"GEMELOS-SALTAR A LA COMBA","video_code":"D2/N25","video_path":"/gemelos-saltar-a-la-comba_d2_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 17, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"PECHO","name":"PECHO-PULL OVER EN BANCO","video_code":"PECHO-TGYO/N7","video_path":"/pecho-pull-over-en-banco_pecho-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-FLEXIONES EN MANCUERNAS","video_code":"PECHO-TGYO/N8","video_path":"/pecho-flexiones-en-mancuernas_pecho-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION CON POLEA","video_code":"TRICEPS-TGYO/N12","video_path":"/triceps-extension-con-polea_triceps-tgyo_n12.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-EN BARRA","video_code":"TRICEPS-TGYO/N7","video_path":"/triceps-en-barra_triceps-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-APERTURA GIRANDO","video_code":"HOMBROS-TGYO/N1","video_path":"/hombros-apertura-girando_hombros-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-REVERSA SENTADO","video_code":"HOMBROS-TGYO/N2","video_path":"/hombros-reversa-sentado_hombros-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN POLEA","video_code":"D2/N35","video_path":"/abductores-abductores-en-polea_d2_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"ADUCTORES","name":"ADUCTORES-ADUCCION EN POLEA","video_code":"D2/N41","video_path":"/aductores-aduccion-en-polea_d2_n41.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 17, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 17, 6, 'SABADO', 'PREVENIR + CARDIO', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"CARDIO","name":"CARDIO-CARRERA CONTINUA O GYM","video_code":"","video_path":"","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 18, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 18, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-LAT PULLDOWN MAQUINA","video_code":"ESPALDA-TGYO/N21","video_path":"/espalda-lat-pulldown-maquina_espalda-tgyo_n21.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-RENEGADE ROW DE PIE","video_code":"ESPALDA-TGYO/N5","video_path":"/espalda-renegade-row-de-pie_espalda-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-REMO INVERTIDO","video_code":"ESPALDA-TGYO/N6","video_path":"/espalda-remo-invertido_espalda-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL CONCENTRACIÓN","video_code":"BICEPS-TGYO/N1","video_path":"/biceps-curl-concentracion_biceps-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"BICEPS-TGYO/N2","video_path":"/biceps-elevaciones-laterales-con-mancuernas_biceps-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GLUTEOS","name":"GLUTEOS-EXTENSION DE PIERNA EN MAQUINA","video_code":"D3/N164","video_path":"/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 18, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS CON DISCOS","video_code":"GLUTEOS_PIERNAS-TGYO/N30","video_path":"/gluteos-sentadillas-con-discos_gluteos_piernas-tgyo_n30.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN MAQUINA","video_code":"D2/N34","video_path":"/abductores-abductores-en-maquina_d2_n34.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 18, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"PECHO","name":"PECHO-PRESS BANCA CON BARRA","video_code":"D1/N18","video_path":"/pecho-press-banca-con-barra_d1_n18.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-RENEGADE ROW CON FLEXIÓN","video_code":"PECHO-TGYO/N1","video_path":"/pecho-renegade-row-con-flexion_pecho-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON MANCUERNA","video_code":"D1/N48","video_path":"/triceps-extension-de-triceps-con-mancuerna_d1_n48.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-DIPS","video_code":"D1/N14","video_path":"/triceps-dips_d1_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-PRESS SENTADO CON MANCUERNAS","video_code":"D1/N38","video_path":"/hombros-press-sentado-con-mancuernas_d1_n38.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-PRESS HOMBROS EN MAQUINA","video_code":"D3/N165","video_path":"/hombros-press-hombros-en-maquina_d3_n165.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON STEP","video_code":"GLUTEOS_PIERNAS-TGYO/N21","video_path":"/gluteos-estocada-con-step_gluteos_piernas-tgyo_n21.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS BÚLGARAS CON UNA MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N18","video_path":"/gluteos-sentadillas-bulgaras-con-una-mancuerna_gluteos_piernas-tgyo_n18.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 18, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N8","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-2_plan_padel-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 2","video_code":"PLAN_PADEL-TGYO/N10","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-2_plan_padel-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 19, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N8","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-2_plan_padel-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GEMELOS","name":"GEMELOS-SALTAR A LA COMBA","video_code":"D2/N25","video_path":"/gemelos-saltar-a-la-comba_d2_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 19, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS SUMO","video_code":"D3/N158","video_path":"/gluteos-sentadillas-sumo_d3_n158.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST 1","video_code":"D2/N26","video_path":"/gluteos-hip-thrust-1_d2_n26.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BICEPS","name":"BICEPS-MARTILLO CERRADO","video_code":"BICEPS-TGYO/N5","video_path":"/biceps-martillo-cerrado_biceps-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-HAMMER CURL","video_code":"BICEPS-TGYO/N6","video_path":"/biceps-hammer-curl_biceps-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-CROSS","video_code":"BICEPS-TGYO/N8","video_path":"/biceps-cross_biceps-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-RENEGADE ROW","video_code":"ESPALDA-TGYO/N4","video_path":"/espalda-renegade-row_espalda-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"ESPALDA","name":"ESPALDA-REMO CON TRX","video_code":"D1/N57","video_path":"/espalda-remo-con-trx_d1_n57.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"ANTEBRAZO","name":"ANTEBRAZO-AGARRE DE PINZA CON DISCO","video_code":"D1/N65","video_path":"/antebrazo-agarre-de-pinza-con-disco_d1_n65.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 19, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION 2","video_code":"GLUTEOS_PIERNAS-TGYO/N12","video_path":"/isquios-gluteos-hiperextension-2_gluteos_piernas-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"CUADRICEPS","name":"CUADRICEPS-ESTOCADA BULGARA","video_code":"D2/N15","video_path":"/cuadriceps-estocada-bulgara_d2_n15.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N31","video_path":"/isquios-gluteos-peso-muerto-con-barra_gluteos_piernas-tgyo_n31.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN MAQUINA","video_code":"GLUTEOS_PIERNAS-TGYO/N14","video_path":"/gluteos-hip-thrust-en-maquina_gluteos_piernas-tgyo_n14.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 19, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"PECHO","name":"PECHO-APERTURA CON MANCUERNAS","video_code":"D1/N23","video_path":"/pecho-apertura-con-mancuernas_d1_n23.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-HEX PRESS CON MANCUERNAS","video_code":"PECHO-TGYO/N14","video_path":"/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON POLEA ALTA","video_code":"D1/N55","video_path":"/triceps-extension-de-triceps-con-polea-alta_d1_n55.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-PRESS BANCA AGARRE ESTRECHO","video_code":"D1/N52","video_path":"/triceps-press-banca-agarre-estrecho_d1_n52.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-PRESS FRONTAL CON BARRA","video_code":"D1/N42","video_path":"/hombros-press-frontal-con-barra_d1_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-PRESS SENTADO CON MANCUERNAS","video_code":"D1/N38","video_path":"/hombros-press-sentado-con-mancuernas_d1_n38.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN BANCO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N6","video_path":"/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 19, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 20, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-SENTADILLA EXPLOSIVA","video_code":"D3/N146","video_path":"/gym-sentadilla-explosiva_d3_n146.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 20, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"CADERA MAS CINTURA","name":"CADERA MAS CINTURA-HIP THRUS 2","video_code":"D2/N27","video_path":"/cadera-mas-cintura-hip-thrus-2_d2_n27.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-PESO MUERTO","video_code":"D2/N47","video_path":"/gluteos-peso-muerto_d2_n47.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-SENTADILLA BULGARA","video_code":"D2/N6","video_path":"/isquios-gluteos-sentadilla-bulgara_d2_n6.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-JALON VERTICAL CON POLEA","video_code":"D1/N74","video_path":"/espalda-jalon-vertical-con-polea_d1_n74.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-REMO EN POLEA BAJA","video_code":"D1/N77","video_path":"/espalda-remo-en-polea-baja_d1_n77.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESPALDA","name":"ESPALDA-DOMINADAS","video_code":"D1/N56","video_path":"/espalda-dominadas_d1_n56.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL CON BARRA","video_code":"D1/N81","video_path":"/biceps-curl-con-barra_d1_n81.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-CROSS","video_code":"BICEPS-TGYO/N8","video_path":"/biceps-cross_biceps-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 20, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GEMELOS","name":"GEMELOS-ELEVACION DE GEMELOS POSTURA SENTADA","video_code":"D2/N18","video_path":"/gemelos-elevacion-de-gemelos-postura-sentada_d2_n18.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GEMELOS","name":"GEMELOS-SENTADILLA CON ELEVACION DE TALONES","video_code":"D2/N19","video_path":"/gemelos-sentadilla-con-elevacion-de-talones_d2_n19.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS PIERNAS JUNTAS","video_code":"D3/N157","video_path":"/gluteos-sentadillas-piernas-juntas_d3_n157.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-STEP UP CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N13","video_path":"/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 20, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"CUADRICEPS","name":"CUADRICEPS-EXTENSION DE CUADRICEPS MAQUIANA","video_code":"D2/N16","video_path":"/cuadriceps-extension-de-cuadriceps-maquiana_d2_n16.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-EXTENSION DE PIERNA EN MAQUINA","video_code":"D3/N164","video_path":"/gluteos-extension-de-pierna-en-maquina_d3_n164.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-PRESS INCLINADO CON BARRA","video_code":"D1/N25","video_path":"/pecho-press-inclinado-con-barra_d1_n25.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-FLEXIONES EN STEP","video_code":"PECHO-TGYO/N10","video_path":"/pecho-flexiones-en-step_pecho-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRÍCEPS CON BANDA","video_code":"D1/N59","video_path":"/triceps-extension-de-triceps-con-banda_d1_n59.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"TRICEPS","name":"TRICEPS-EN MAQUINA","video_code":"TRICEPS-TGYO/N11","video_path":"/triceps-en-maquina_triceps-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"D1/N35","video_path":"/hombros-elevaciones-laterales-con-mancuernas_d1_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-PRESS FRONTAL CON BARRA","video_code":"D1/N42","video_path":"/hombros-press-frontal-con-barra_d1_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 20, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GYM","name":"GYM-GEMELOS","video_code":"D3/N147","video_path":"/gym-gemelos_d3_n147.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 21, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"SALTOS","name":"SALTOS-SALTO LATERAL + SALTO CAJON","video_code":"D3/N114","video_path":"/saltos-salto-lateral-salto-cajon_d3_n114.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-BICICLETA","video_code":"D3/N140","video_path":"/cardio-o-calentamiento-bicicleta_d3_n140.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 21, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLA CLASICA","video_code":"D3/N163","video_path":"/gluteos-sentadilla-clasica_d3_n163.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO A UNA PIERNA","video_code":"D2/N7","video_path":"/isquios-gluteos-peso-muerto-a-una-pierna_d2_n7.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-REMO. CON MANCUERNA","video_code":"D1/N79","video_path":"/espalda-remo-con-mancuerna_d1_n79.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-JALON DORSAL PECHO","video_code":"D3/N170","video_path":"/espalda-jalon-dorsal-pecho_d3_n170.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-ACTIVACIÓN CON BARRA","video_code":"ESPALDA-TGYO/N15","video_path":"/espalda-activacion-con-barra_espalda-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-CROSS","video_code":"BICEPS-TGYO/N8","video_path":"/biceps-cross_biceps-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CURL MARTILLO CON MANCUERNAS","video_code":"D1/N83","video_path":"/biceps-curl-martillo-con-mancuernas_d1_n83.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-CURL REVÉS","video_code":"BICEPS-TGYO/N9","video_path":"/biceps-curl-reves_biceps-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 21, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON UNA MANCUERNA A UN PIE","video_code":"GLUTEOS_PIERNAS-TGYO/N1","video_path":"/isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-PRENSA PIERNAS SEPARADAS","video_code":"D3/N168","video_path":"/gluteos-prensa-piernas-separadas_d3_n168.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GEMELOS","name":"GEMELOS-ZANCADAS CON ELEVACION RODILLA","video_code":"D2/N22","video_path":"/gemelos-zancadas-con-elevacion-rodilla_d2_n22.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 21, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-STEP UP CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N13","video_path":"/gluteos-step-up-con-mancuerna_gluteos_piernas-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GEMELOS","name":"GEMELOS-SENTADILLA CON ELEVACION DE TALONES","video_code":"D2/N19","video_path":"/gemelos-sentadilla-con-elevacion-de-talones_d2_n19.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-EXTENSION CON POLEA","video_code":"TRICEPS-TGYO/N12","video_path":"/triceps-extension-con-polea_triceps-tgyo_n12.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNAS","video_code":"D1/N30","video_path":"/pecho-pull-over-con-mancuernas_d1_n30.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"PECHO","name":"PECHO-HEX PRESS CON MANCUERNAS","video_code":"PECHO-TGYO/N14","video_path":"/pecho-hex-press-con-mancuernas_pecho-tgyo_n14.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"PECHO","name":"PECHO-SUBIDA CON MANCUERNA DE PIE","video_code":"PECHO-TGYO/N12","video_path":"/pecho-subida-con-mancuerna-de-pie_pecho-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-PRESS SENTADO CON MANCUERNAS","video_code":"D1/N38","video_path":"/hombros-press-sentado-con-mancuernas_d1_n38.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-ACTIVACIÓN DELTOIDES","video_code":"HOMBROS-TGYO/N8","video_path":"/hombros-activacion-deltoides_hombros-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 21, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 1","video_code":"D3/N137","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-1_d3_n137.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTOS LATERALES","video_code":"D3/N116","video_path":"/saltos-saltos-laterales_d3_n116.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 22, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"SALTOS","name":"SALTOS-SALTO LATERALES A 1 PIERNA Y AVANZANDO","video_code":"D3/N105","video_path":"/saltos-salto-laterales-a-1-pierna-y-avanzando_d3_n105.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GYM","name":"GYM-GIROS CON DISCO","video_code":"D3/N144","video_path":"/gym-giros-con-disco_d3_n144.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-ELIPTICA","video_code":"D3/N142","video_path":"/cardio-o-calentamiento-eliptica_d3_n142.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 22, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 4', false, '[{"order":1,"category":"ESPALDA","name":"ESPALDA-LAT PULLDOWN MAQUINA","video_code":"ESPALDA-TGYO/N21","video_path":"/espalda-lat-pulldown-maquina_espalda-tgyo_n21.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-JALON DORSAL PECHO","video_code":"D3/N170","video_path":"/espalda-jalon-dorsal-pecho_d3_n170.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-DOMINADAS ASISTIDAS","video_code":"D1/N58","video_path":"/espalda-dominadas-asistidas_d1_n58.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL INCLINADO MANCUERNAS","video_code":"D1/N84","video_path":"/biceps-curl-inclinado-mancuernas_d1_n84.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BICEPS","name":"BICEPS-DUMBELL CURL","video_code":"BICEPS-TGYO/N10","video_path":"/biceps-dumbell-curl_biceps-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-REMO INCLINADO CON AGARRE","video_code":"D1/N85","video_path":"/biceps-remo-inclinado-con-agarre_d1_n85.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-PESO MUERTO","video_code":"D2/N47","video_path":"/gluteos-peso-muerto_d2_n47.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS PIERNAS JUNTAS","video_code":"D3/N157","video_path":"/gluteos-sentadillas-piernas-juntas_d3_n157.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 22, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN BANCO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N6","video_path":"/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-SENTADILLA BULGARA","video_code":"D2/N6","video_path":"/isquios-gluteos-sentadilla-bulgara_d2_n6.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO 1","video_code":"GLUTEOS_PIERNAS-TGYO/N11","video_path":"/isquios-gluteos-hiperextension-con-disco-1_gluteos_piernas-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES Y SPREEN","video_code":"D3/N123","video_path":"/velocidad-desplazamientos-laterales-y-spreen_d3_n123.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 22, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNAS","video_code":"D1/N30","video_path":"/pecho-pull-over-con-mancuernas_d1_n30.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-PULL OVER CON MANCUERNA APOYADO EN BANCO","video_code":"PECHO-TGYO/N13","video_path":"/pecho-pull-over-con-mancuerna-apoyado-en-banco_pecho-tgyo_n13.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-MANCUERNA EN BANCO INCLINADO","video_code":"PECHO-TGYO/N11","video_path":"/pecho-mancuerna-en-banco-inclinado_pecho-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-EXTENSION DE TRICEPS CON POLEA ALTA","video_code":"D1/N55","video_path":"/triceps-extension-de-triceps-con-polea-alta_d1_n55.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES FRONTALES CON MANCUERNAS","video_code":"D1/N32","video_path":"/hombros-elevaciones-frontales-con-mancuernas_d1_n32.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"D1/N35","video_path":"/hombros-elevaciones-laterales-con-mancuernas_d1_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"CUADRICEPS","name":"CUADRICEPS-ESTOCADA BULGARA","video_code":"D2/N15","video_path":"/cuadriceps-estocada-bulgara_d2_n15.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"GEMELOS","name":"GEMELOS-ZANCADA CON SALTO","video_code":"D2/N24","video_path":"/gemelos-zancada-con-salto_d2_n24.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 22, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N136","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-1_d3_n136.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"GYM","name":"GYM-SENTADILLA EXPLOSIVA","video_code":"D3/N146","video_path":"/gym-sentadilla-explosiva_d3_n146.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-VOLEA DE REVÉS, BANDEJA, VOLEA DE DERECHA, BANDEJA 2","video_code":"PLAN_PADEL-TGYO/N5","video_path":"/pista-volea-de-reves-bandeja-volea-de-derecha-bandeja-2_plan_padel-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON A 2 PIES","video_code":"D3/N108","video_path":"/saltos-salto-en-cajon-a-2-pies_d3_n108.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 23, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON UNA MANCUERNA A UN PIE","video_code":"GLUTEOS_PIERNAS-TGYO/N1","video_path":"/isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 2","video_code":"PLAN_PADEL-TGYO/N10","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-2_plan_padel-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"STEP","name":"STEP-ACTIVACION EN STEP A MAX. VELOCIDAD APOYANDO 2 PIES","video_code":"D3/N128","video_path":"/step-activacion-en-step-a-max-velocidad-apoyando-2-pies_d3_n128.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA LATERAL AMBOS LADOS 2","video_code":"PLAN_PADEL-TGYO/N1","video_path":"/pista-defensa-lateral-ambos-lados-2_plan_padel-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-CINTA 1","video_code":"PLAN_PADEL-TGYO/N11","video_path":"/cardio-o-calentamiento-cinta-1_plan_padel-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 23, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 2', false, '[{"order":1,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PUENTE DE GLÚTEOS CON MANCUERNA","video_code":"GLUTEOS_PIERNAS-TGYO/N4","video_path":"/isquios-gluteos-puente-de-gluteos-con-mancuerna_gluteos_piernas-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N31","video_path":"/isquios-gluteos-peso-muerto-con-barra_gluteos_piernas-tgyo_n31.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ESPALDA","name":"ESPALDA-APERTURA EN POLEA","video_code":"ESPALDA-TGYO/N18","video_path":"/espalda-apertura-en-polea_espalda-tgyo_n18.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ESPALDA","name":"ESPALDA-REVERSA CON MANCUERNAS","video_code":"ESPALDA-TGYO/N1","video_path":"/espalda-reversa-con-mancuernas_espalda-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESPALDA","name":"ESPALDA-RENEGADE ROW","video_code":"ESPALDA-TGYO/N4","video_path":"/espalda-renegade-row_espalda-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"BICEPS","name":"BICEPS-DUMBELL CURL","video_code":"BICEPS-TGYO/N10","video_path":"/biceps-dumbell-curl_biceps-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"BICEPS","name":"BICEPS-CROSS","video_code":"BICEPS-TGYO/N8","video_path":"/biceps-cross_biceps-tgyo_n8.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"BICEPS","name":"BICEPS-CURL INVERSA EN POLEA","video_code":"BICEPS-TGYO/N15","video_path":"/biceps-curl-inversa-en-polea_biceps-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 23, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON MANCUERNA EN BANCO","video_code":"GLUTEOS_PIERNAS-TGYO/N2","video_path":"/gluteos-estocada-con-mancuerna-en-banco_gluteos_piernas-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN POLEA","video_code":"D2/N35","video_path":"/abductores-abductores-en-polea_d2_n35.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"GLUTEOS","name":"GLUTEOS-ESTOCADA CON STEP","video_code":"GLUTEOS_PIERNAS-TGYO/N21","video_path":"/gluteos-estocada-con-step_gluteos_piernas-tgyo_n21.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-DESPLAZAMIENTOS LATERALES A MAX. VELOCIDAD","video_code":"D3/N125","video_path":"/velocidad-desplazamientos-laterales-a-max-velocidad_d3_n125.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN MEDIA VELOCIDAD","video_code":"D3/N120","video_path":"/velocidad-spreen-media-velocidad_d3_n120.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 23, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 3', false, '[{"order":1,"category":"PECHO","name":"PECHO-MANCUERNA EN BANCO INCLINADO","video_code":"PECHO-TGYO/N11","video_path":"/pecho-mancuerna-en-banco-inclinado_pecho-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-SUBIDA CON MANCUERNA DE PIE","video_code":"PECHO-TGYO/N12","video_path":"/pecho-subida-con-mancuerna-de-pie_pecho-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"TRICEPS","name":"TRICEPS-CROSS EN POLEA","video_code":"TRICEPS-TGYO/N1","video_path":"/triceps-cross-en-polea_triceps-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-EXTENSIÓN DE TRÍCEPS EN POLEA","video_code":"TRICEPS-TGYO/N2","video_path":"/triceps-extension-de-triceps-en-polea_triceps-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EN BARRA","video_code":"TRICEPS-TGYO/N7","video_path":"/triceps-en-barra_triceps-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-REVERSA SENTADO","video_code":"HOMBROS-TGYO/N2","video_path":"/hombros-reversa-sentado_hombros-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-PRESS DE PIE","video_code":"HOMBROS-TGYO/N3","video_path":"/hombros-press-de-pie_hombros-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":8,"category":"HOMBROS","name":"HOMBROS-SUBIDA FRONTAL CON DISCO","video_code":"HOMBROS-TGYO/N5","video_path":"/hombros-subida-frontal-con-disco_hombros-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 23, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PISTA","name":"PISTA-VOLEA DE DERECHA Y REVÉS 2","video_code":"PLAN_PADEL-TGYO/N2","video_path":"/pista-volea-de-derecha-y-reves-2_plan_padel-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"STEP","name":"STEP-SALTOS LATERALES, 2 PIERNAS JUNTAS","video_code":"D3/N129","video_path":"/step-saltos-laterales-2-piernas-juntas_d3_n129.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-EXPLOSION EN CAJON SENTANDOTE CON UNA PIERNA","video_code":"D3/N110","video_path":"/saltos-explosion-en-cajon-sentandote-con-una-pierna_d3_n110.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESCALERA","name":"ESCALERA-CON PIES INTERCALADOS, SUBES 2 Y BAJAS 1 1","video_code":"D3/N133","video_path":"/escalera-con-pies-intercalados-subes-2-y-bajas-1-1_d3_n133.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 24, 1, 'LUNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"STEP","name":"STEP-VELOCIDAD MAX. EN STEP APOYANDO 1 PIE","video_code":"D3/N130","video_path":"/step-velocidad-max-en-step-apoyando-1-pie_d3_n130.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"CADERA MAS CINTURA","name":"CADERA MAS CINTURA-MOVIMIENTO CINTURA CON PALO","video_code":"D2/N31","video_path":"/cadera-mas-cintura-movimiento-cintura-con-palo_d2_n31.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 1 PIERNA, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N6","video_path":"/bosu-equilibrio-equilibrio-a-1-pierna-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N3","video_path":"/pista-defensa-derecha-y-reves-2_plan_padel-tgyo_n3.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"ESCALERA","name":"ESCALERA-SALTOS CON PIES JUNTOS, SUBES 2 Y BAJAS 1 2","video_code":"PLAN_PADEL-TGYO/N9","video_path":"/escalera-saltos-con-pies-juntos-subes-2-y-bajas-1-2_plan_padel-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"CARDIO O CALENTAMIENTO","name":"CARDIO O CALENTAMIENTO-BICICLETA","video_code":"D3/N140","video_path":"/cardio-o-calentamiento-bicicleta_d3_n140.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 24, 2, 'MARTES', 'PREVENIR+FORTALER', 'CALENTAMIENTO + ABD 5', false, '[{"order":1,"category":"PECHO","name":"PECHO-APERTURAS CON MANCUERNAS TUMBADO","video_code":"PECHO-TGYO/N9","video_path":"/pecho-aperturas-con-mancuernas-tumbado_pecho-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ESPALDA","name":"ESPALDA-REMO CON BARRA T","video_code":"ESPALDA-TGYO/N11","video_path":"/espalda-remo-con-barra-t_espalda-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BICEPS","name":"BICEPS-ELEVACIONES LATERALES CON MANCUERNAS","video_code":"BICEPS-TGYO/N2","video_path":"/biceps-elevaciones-laterales-con-mancuernas_biceps-tgyo_n2.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"BICEPS","name":"BICEPS-CURL EN POLEA SENTADO","video_code":"BICEPS-TGYO/N14","video_path":"/biceps-curl-en-polea-sentado_biceps-tgyo_n14.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"GLUTEOS","name":"GLUTEOS-HIP THRUST EN BANCO CON BARRA","video_code":"GLUTEOS_PIERNAS-TGYO/N6","video_path":"/gluteos-hip-thrust-en-banco-con-barra_gluteos_piernas-tgyo_n6.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLA SUMO CON STEPS","video_code":"GLUTEOS_PIERNAS-TGYO/N22","video_path":"/gluteos-sentadilla-sumo-con-steps_gluteos_piernas-tgyo_n22.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"GLUTEOS","name":"GLUTEOS-SENTADILLAS CON DISCOS","video_code":"GLUTEOS_PIERNAS-TGYO/N30","video_path":"/gluteos-sentadillas-con-discos_gluteos_piernas-tgyo_n30.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 24, 3, 'MIERCOLES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-HIPEREXTENSION CON DISCO 1","video_code":"GLUTEOS_PIERNAS-TGYO/N11","video_path":"/isquios-gluteos-hiperextension-con-disco-1_gluteos_piernas-tgyo_n11.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"ISQUIOS/GLUTEOS","name":"ISQUIOS/GLUTEOS-PESO MUERTO CON UNA MANCUERNA A UN PIE","video_code":"GLUTEOS_PIERNAS-TGYO/N1","video_path":"/isquios-gluteos-peso-muerto-con-una-mancuerna-a-un-pie_gluteos_piernas-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"ADUCTORES","name":"ADUCTORES-ADUCTORES EN MAQUINA","video_code":"D2/N42","video_path":"/aductores-aductores-en-maquina_d2_n42.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"ABDUCTORES","name":"ABDUCTORES-ABDUCTORES EN MAQUINA","video_code":"D2/N34","video_path":"/abductores-abductores-en-maquina_d2_n34.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"VELOCIDAD","name":"VELOCIDAD-SPREEN CON ACTIVACION EN INICIO","video_code":"D3/N121","video_path":"/velocidad-spreen-con-activacion-en-inicio_d3_n121.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"VELOCIDAD","name":"VELOCIDAD-Spreen MAX. VELOCIDAD","video_code":"D3/N127","video_path":"/velocidad-spreen-max-velocidad_d3_n127.mp4","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 24, 4, 'JUEVES', 'PREVENIR+FORTALECER', 'CALENTAMIENTO + ABD 1', false, '[{"order":1,"category":"PECHO","name":"PECHO-APERTURA MAQUINA","video_code":"PECHO-TGYO/N15","video_path":"/pecho-apertura-maquina_pecho-tgyo_n15.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"PECHO","name":"PECHO-RENEGADE ROW CON FLEXIÓN","video_code":"PECHO-TGYO/N1","video_path":"/pecho-renegade-row-con-flexion_pecho-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"PECHO","name":"PECHO-PRESS CON MANCUERNAS EN BANCO TUMBADO","video_code":"PECHO-TGYO/N5","video_path":"/pecho-press-con-mancuernas-en-banco-tumbado_pecho-tgyo_n5.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"TRICEPS","name":"TRICEPS-CROSS EN POLEA","video_code":"TRICEPS-TGYO/N1","video_path":"/triceps-cross-en-polea_triceps-tgyo_n1.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"TRICEPS","name":"TRICEPS-EXTENSIÓN DE TRÍCEPS A UN BRAZO EN POLEA","video_code":"TRICEPS-TGYO/N4","video_path":"/triceps-extension-de-triceps-a-un-brazo-en-polea_triceps-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"HOMBROS","name":"HOMBROS-POLEA LATERAL","video_code":"HOMBROS-TGYO/N9","video_path":"/hombros-polea-lateral_hombros-tgyo_n9.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":7,"category":"HOMBROS","name":"HOMBROS-ELEVACIONES EN POLEA MEDIA","video_code":"HOMBROS-TGYO/N12","video_path":"/hombros-elevaciones-en-polea-media_hombros-tgyo_n12.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();
INSERT INTO v2.plan_workouts (plan_id, week_number, day_number, day_name, focus, warmup_instructions, is_rest_day, exercises)
VALUES ('plan_padel', 24, 5, 'VIERNES', 'PREVENIR+VELOCIDAD', 'CALENTAMIENTO', false, '[{"order":1,"category":"GYM","name":"GYM-FLEXIONES CON PIES ELEVADOS","video_code":"D3/N143","video_path":"/gym-flexiones-con-pies-elevados_d3_n143.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":2,"category":"STEP","name":"STEP-SALTOS EN STEP ABRIENDO Y CERRANDO PIERNAS","video_code":"D3/N131","video_path":"/step-saltos-en-step-abriendo-y-cerrando-piernas_d3_n131.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":3,"category":"BOSU/EQUILIBRIO","name":"BOSU/EQUILIBRIO-EQUILIBRIO A 2 PIERNAS, GOLPE DE DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N7","video_path":"/bosu-equilibrio-equilibrio-a-2-piernas-golpe-de-derecha-y-reves-2_plan_padel-tgyo_n7.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":4,"category":"PISTA","name":"PISTA-DEFENSA Y ATAQUE, DERECHA Y REVES 2","video_code":"PLAN_PADEL-TGYO/N4","video_path":"/pista-defensa-y-ataque-derecha-y-reves-2_plan_padel-tgyo_n4.mov","series":null,"reps":null,"rpe":null,"notes":""},{"order":5,"category":"SALTOS","name":"SALTOS-SALTO EN CAJON CON 2 PIES Y CAIGO CON 2","video_code":"D3/N112","video_path":"/saltos-salto-en-cajon-con-2-pies-y-caigo-con-2_d3_n112.mp4","series":null,"reps":null,"rpe":null,"notes":""},{"order":6,"category":"ESCALERA","name":"ESCALERA-SALTOS CON 2 PIES JUNTOS, DE 2 EN 2 ESCALONES 2","video_code":"PLAN_PADEL-TGYO/N10","video_path":"/escalera-saltos-con-2-pies-juntos-de-2-en-2-escalones-2_plan_padel-tgyo_n10.mov","series":null,"reps":null,"rpe":null,"notes":""}]'::jsonb)
ON CONFLICT (plan_id, week_number, day_name) DO UPDATE SET
    day_number = EXCLUDED.day_number,
    focus = EXCLUDED.focus,
    warmup_instructions = EXCLUDED.warmup_instructions,
    exercises = EXCLUDED.exercises,
    updated_at = now();

COMMIT;
