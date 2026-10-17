const fs = require('fs');
const path = require('path');

const baseDir = path.resolve(__dirname, '..');

const filesToUpdate = [
  path.join(baseDir, 'docs', 'PLAN_PADEL_VIDEOS_MAPPING.csv'),
  path.join(baseDir, 'docs', 'EJERCICIOS_TOTALES_CONSOLIDADO.csv'),
  path.join(baseDir, 'docs', 'PLAN_PADEL_EJERCICIOS_ITEMS.csv')
];

filesToUpdate.forEach(filePath => {
  if (!fs.existsSync(filePath)) {
    console.error(`File not found: ${filePath}`);
    return;
  }
  let content = fs.readFileSync(filePath, 'utf8');
  const countBefore = (content.match(/\/plan_padel\//g) || []).length;
  content = content.replace(/\/plan_padel\//g, '/');
  fs.writeFileSync(filePath, content, 'utf8');
  console.log(`Updated ${path.basename(filePath)}: replaced ${countBefore} occurrences of '/plan_padel/' with '/'`);
});

// Now run generate_seed_sql.js
console.log('\nRegenerating seed_plan_padel.sql...');
require('./generate_seed_sql.js');
