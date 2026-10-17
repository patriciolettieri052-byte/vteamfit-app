"use client";

import Link from "next/link";
import { getBunnyPosterUrl } from "@/lib/bunny";
import { Play, Check, Flame, ChevronRight } from "lucide-react";

export interface ExerciseItem {
  id: string;
  name: string;
  category?: string;
  series?: number | string;
  reps?: string;
  rpe?: number;
  notes?: string;
  video_path?: string;
  isCompleted?: boolean;
}

interface ExerciseCardProps {
  exercise: ExerciseItem;
  href: string;
}

export function ExerciseCard({ exercise, href }: ExerciseCardProps) {
  const poster = getBunnyPosterUrl(exercise.video_path);

  return (
    <Link
      href={href}
      className={`group relative flex items-center gap-4 p-4 rounded-3xl border transition-all duration-300 hover:-translate-y-0.5 ${
        exercise.isCompleted
          ? "bg-carbon-surface/80 border-state-success/40 shadow-glow-success"
          : "bg-carbon-surface border-white/10 hover:border-copper-border hover:shadow-glow"
      }`}
    >
      {/* 100x100 Thumbnail */}
      <div className="relative w-20 h-20 sm:w-24 sm:h-24 rounded-2xl overflow-hidden bg-neutral-900 shrink-0 border border-white/10">
        {exercise.video_path ? (
          <video
            src={`${poster}`}
            preload="metadata"
            muted
            playsInline
            className="w-full h-full object-cover filter brightness-90 group-hover:scale-110 transition-transform duration-500"
          />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-carbon-solid text-copper-primary font-black text-xs">
            VTEAM
          </div>
        )}

        {/* Play icon overlay */}
        <div className="absolute inset-0 bg-black/30 flex items-center justify-center">
          <div className="w-8 h-8 rounded-full bg-black/60 backdrop-blur-sm border border-white/20 flex items-center justify-center text-white group-hover:bg-copper-vibrant transition-colors">
            {exercise.isCompleted ? (
              <Check size={16} className="text-state-success group-hover:text-white" />
            ) : (
              <Play size={14} fill="currentColor" className="ml-0.5" />
            )}
          </div>
        </div>
      </div>

      {/* Info Body */}
      <div className="flex-1 min-w-0">
        <div className="flex items-center gap-2 mb-1">
          <span className="text-[10px] font-black uppercase tracking-widest text-copper-primary">
            {exercise.category || "GENERAL"}
          </span>
          {exercise.isCompleted && (
            <span className="px-2 py-0.5 rounded-full bg-state-success/20 text-state-success text-[9px] font-black tracking-widest uppercase">
              COMPLETADO
            </span>
          )}
        </div>

        <h3 className="text-sm sm:text-base font-black italic uppercase tracking-tight text-white truncate group-hover:text-copper-hover transition-colors">
          {exercise.name}
        </h3>

        <div className="flex items-center gap-3 text-xs text-ink-dim mt-1">
          <span className="font-semibold text-white">
            {exercise.series || 3} Series x {exercise.reps || "10-12"}
          </span>
          {exercise.rpe && (
            <span className="flex items-center gap-1 text-[11px] text-state-warning">
              <Flame size={12} />
              RPE {exercise.rpe}
            </span>
          )}
        </div>

        {/* Vicky Note snippet */}
        {exercise.notes && (
          <p className="text-[11px] text-ink-muted truncate mt-1 italic">
            &quot;{exercise.notes}&quot;
          </p>
        )}
      </div>

      {/* Trailing Chevron */}
      <div className="shrink-0 text-ink-muted group-hover:text-copper-vibrant group-hover:translate-x-1 transition-all pr-2">
        <ChevronRight size={20} />
      </div>
    </Link>
  );
}
