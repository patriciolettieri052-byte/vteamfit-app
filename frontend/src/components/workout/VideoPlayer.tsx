"use client";

import { useState } from "react";
import { getBunnyVideoUrl, getBunnyPosterUrl } from "@/lib/bunny";
import { Play, RefreshCw } from "lucide-react";

interface VideoPlayerProps {
  videoPath?: string | null;
  title?: string;
  autoPlay?: boolean;
}

export function VideoPlayer({
  videoPath,
  title,
  autoPlay = true,
}: VideoPlayerProps) {
  const [hasError, setHasError] = useState(false);

  const videoUrl = getBunnyVideoUrl(videoPath);
  const posterUrl = getBunnyPosterUrl(videoPath);

  if (!videoPath || hasError) {
    return (
      <div className="relative w-full aspect-video rounded-3xl overflow-hidden bg-neutral-900 border border-white/10 flex flex-col items-center justify-center p-6 text-center">
        <div className="w-14 h-14 rounded-2xl bg-white/5 border border-white/10 flex items-center justify-center text-ink-muted mb-3">
          <Play size={24} className="text-copper-primary" />
        </div>
        <p className="text-xs font-bold uppercase tracking-wider text-ink-heading mb-1">
          {title || "Demostración de Técnica"}
        </p>
        <p className="text-[11px] text-ink-dim max-w-xs">
          {hasError
            ? "El video se está sincronizando en el CDN. Seguí las indicaciones técnicas detalladas abajo."
            : "Este ejercicio no requiere demostración audiovisual en video."}
        </p>
        {hasError && (
          <button
            onClick={() => setHasError(false)}
            className="mt-4 px-4 py-1.5 rounded-full bg-white/5 hover:bg-white/10 border border-white/10 text-[10px] font-bold uppercase tracking-wider text-copper-hover flex items-center gap-1.5"
          >
            <RefreshCw size={12} />
            <span>Reintentar reproducción</span>
          </button>
        )}
      </div>
    );
  }

  return (
    <div className="relative w-full aspect-video rounded-3xl overflow-hidden bg-black border border-white/10 shadow-2xl group">
      <video
        key={videoUrl}
        src={videoUrl}
        poster={posterUrl}
        controls
        playsInline
        autoPlay={autoPlay}
        loop
        preload="metadata"
        onError={() => setHasError(true)}
        className="w-full h-full object-cover"
      />
      {/* Subtle brand watermark */}
      <div className="absolute top-4 right-4 pointer-events-none opacity-40 group-hover:opacity-80 transition-opacity">
        <span className="text-[10px] font-black uppercase tracking-widest px-2.5 py-1 rounded-md bg-black/70 text-copper-primary border border-white/10">
          VTEAMFIT HD
        </span>
      </div>
    </div>
  );
}
