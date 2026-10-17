const fs = require('fs');
const path = require('path');

const baseDir = path.resolve(__dirname, '..');
const srcFotosDir = path.join(baseDir, 'docs', 'extraccion_visual', 'Fotos');
const srcFotosSubDir = path.join(srcFotosDir, 'fotos');

const destImagesDir = path.join(baseDir, 'frontend', 'public', 'images');
const destFotosDir = path.join(destImagesDir, 'fotos');

if (!fs.existsSync(destImagesDir)) fs.mkdirSync(destImagesDir, { recursive: true });
if (!fs.existsSync(destFotosDir)) fs.mkdirSync(destFotosDir, { recursive: true });

// Copy root fotos files (logo.svg, textures)
['logo.svg', 'carbon-texture-v4.webp', 'carbon-texture.webp'].forEach(f => {
  const src = path.join(srcFotosDir, f);
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, path.join(destImagesDir, f));
    console.log(`Copied ${f} -> frontend/public/images/${f}`);
  }
});

// Copy subfolder fotos
if (fs.existsSync(srcFotosSubDir)) {
  const fotos = fs.readdirSync(srcFotosSubDir);
  fotos.forEach(f => {
    const src = path.join(srcFotosSubDir, f);
    fs.copyFileSync(src, path.join(destFotosDir, f));
    // Also copy directly to public/fotos/ so both /fotos/xxx and /images/fotos/xxx work seamlessly
    const publicFotosDir = path.join(baseDir, 'frontend', 'public', 'fotos');
    if (!fs.existsSync(publicFotosDir)) fs.mkdirSync(publicFotosDir, { recursive: true });
    fs.copyFileSync(src, path.join(publicFotosDir, f));
    console.log(`Copied ${f} -> frontend/public/images/fotos/${f} & public/fotos/${f}`);
  });
}

console.log('Asset copying finished successfully.');
