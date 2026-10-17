const CDN_BASE_URL =
  process.env.NEXT_PUBLIC_CDN_URL || "https://vteamfit-oct-26.b-cdn.net";

/**
 * Returns the universal, web-compatible MP4 streaming URL from Bunny CDN.
 * Ensures flat root pathing and replaces any legacy .mov extensions with .mp4.
 */
export function getBunnyVideoUrl(videoPath?: string | null): string {
  if (!videoPath) return "";
  
  if (videoPath.startsWith("http://") || videoPath.startsWith("https://")) {
    return videoPath;
  }

  // Extract pure file name (flat root architecture on Bunny CDN)
  let cleanName = videoPath.split("/").pop() || videoPath;
  
  // Replace .mov extension with .mp4 since all 196 videos are encoded as MP4
  if (cleanName.toLowerCase().endsWith(".mov")) {
    cleanName = cleanName.replace(/\.mov$/i, ".mp4");
  } else if (!cleanName.toLowerCase().endsWith(".mp4")) {
    cleanName = `${cleanName}.mp4`;
  }

  return `${CDN_BASE_URL}/${cleanName}`;
}

/**
 * Returns the poster image or video frame anchor for HTML5 video poster.
 */
export function getBunnyPosterUrl(videoPath?: string | null): string {
  const videoUrl = getBunnyVideoUrl(videoPath);
  if (!videoUrl) return "/images/fotos/pantalla-semanas.jpg";
  return `${videoUrl}#t=0.5`;
}
