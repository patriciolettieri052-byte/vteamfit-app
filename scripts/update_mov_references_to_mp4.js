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
  const countBefore = (content.match(/\.mov/gi) || []).length;
  // Replace .mov in bunny hybrid filenames and CDN paths, preserving original physical file extension
  // Specifically: replace .mov", .mov/, or .mov at end of words/quotes in bunny columns
  content = content.replace(/([a-zA-Z0-9_-]+)\.mov/gi, '$1.mp4');
  fs.writeFileSync(filePath, content, 'utf8');
  console.log(`Updated ${path.basename(filePath)}: replaced ${countBefore} occurrences of .mov with .mp4`);
});
