const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

const stagingDir = path.resolve(__dirname, '..', 'staging', 'plan_padel');

if (!fs.existsSync(stagingDir)) {
  console.error(`Staging directory not found: ${stagingDir}`);
  process.exit(1);
}

const files = fs.readdirSync(stagingDir);
const movFiles = files.filter(f => f.toLowerCase().endsWith('.mov'));

console.log(`Found ${movFiles.length} .mov files in ${stagingDir} to convert to .mp4...`);

let converted = 0;
let errors = 0;

movFiles.forEach((file, index) => {
  const srcPath = path.join(stagingDir, file);
  const destName = file.replace(/\.mov$/i, '.mp4');
  const destPath = path.join(stagingDir, destName);

  try {
    // -c copy is fast (stream copy, no re-encoding), -movflags +faststart puts moov atom at beginning
    execSync(`ffmpeg -y -i "${srcPath}" -c copy -movflags +faststart "${destPath}"`, {
      stdio: ['ignore', 'ignore', 'pipe']
    });

    if (fs.existsSync(destPath) && fs.statSync(destPath).size > 0) {
      fs.unlinkSync(srcPath); // remove old .mov
      converted++;
      if (converted % 20 === 0 || converted === movFiles.length) {
        console.log(`[PROGRESS] Converted ${converted}/${movFiles.length} files...`);
      }
    } else {
      console.error(`Failed to verify output file: ${destName}`);
      errors++;
    }
  } catch (err) {
    console.error(`Error converting ${file}:`, err.message);
    errors++;
  }
});

console.log(`\nConversion complete!`);
console.log(`Successfully converted: ${converted}`);
console.log(`Errors: ${errors}`);

const remainingFiles = fs.readdirSync(stagingDir);
const totalMp4 = remainingFiles.filter(f => f.toLowerCase().endsWith('.mp4')).length;
const totalMov = remainingFiles.filter(f => f.toLowerCase().endsWith('.mov')).length;
console.log(`\nStaging status: ${totalMp4} .mp4 files, ${totalMov} .mov files (Total: ${remainingFiles.length})`);
