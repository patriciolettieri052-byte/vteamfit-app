"use client";

import { useParams, useRouter } from "next/navigation";
import Link from "next/link";
import { useAppStore } from "@/lib/store";
import { VideoPlayer } from "@/components/workout/VideoPlayer";
import { SessionTimer } from "@/components/workout/SessionTimer";
import { ExerciseForm } from "@/components/workout/ExerciseForm";
import { ArrowLeft, Target, Lightbulb } from "lucide-react";

export default function EjercicioPage() {
  const params = useParams();
  const router = useRouter();
  const weekNum = params?.week as string;
  const dayNum = params?.day as string;
  const rawSlug = (params?.slug as string) || "abductores-abductores-en-suelo";

  const { exerciseLogs, logExercise } = useAppStore();

  // Format clean name from slug
  const formattedName = rawSlug
    .replace(/-/g, " ")
    .replace(/^([a-z]+)\s+/, "") // remove category prefix if duplicated
    .toUpperCase();

  const videoFilename = `${rawSlug}.mp4`;
  const existingLog = exerciseLogs[rawSlug];

  const handleSave = (sets: number, reps: number, weightKg: number) => {
    logExercise(rawSlug, {
      sets,
      reps,
      weightKg,
      completedAt: new Date().toISOString(),
    });

    // Return to day routine after short delay
    setTimeout(() => {
      router.push(`/dashboard/semana/${weekNum}/dia/${dayNum}`);
    }, 600);
  };

  return (
    <div className="min-h-screen bg-carbon text-ink-pure pb-32">
      {/* Top Header */}
      <div className="sticky top-0 z-40 bg-carbon/90 backdrop-blur-xl border-b border-white/5 px-6 py-4 flex items-center justify-between">
        <Link
          href={`/dashboard/semana/${weekNum}/dia/${dayNum}`}
          className="px-4 py-2 rounded-full bg-carbon-surface border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover flex items-center gap-2 transition-all"
        >
          <ArrowLeft size={16} />
          <span>VOLVER A LA RUTINA</span>
        </Link>
        <span className="text-xs font-bold uppercase tracking-wider text-copper-primary">
          DÍA {dayNum} • SEMANA {weekNum}
        </span>
      </div>

      {/* Main Container */}
      <div className="max-w-3xl mx-auto px-6 pt-6 space-y-6">
        {/* Exercise Title */}
        <div>
          <span className="text-[10px] font-black tracking-widest uppercase text-copper-vibrant">
            EJECUCIÓN TÉCNICA
          </span>
          <h1 className="text-2xl sm:text-4xl font-black italic uppercase tracking-tight text-white mt-1">
            {formattedName}
          </h1>
        </div>

        {/* Video Player HD */}
        <VideoPlayer videoPath={videoFilename} title={formattedName} />

        {/* Session Stopwatch */}
        <SessionTimer />

        {/* Twin Target Boxes */}
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          {/* Suggested Targets */}
          <div className="glass-panel rounded-3xl p-6 border border-white/5">
            <div className="flex items-center gap-2 text-copper-primary mb-3">
              <Target size={18} />
              <span className="text-[10px] font-black uppercase tracking-widest">
                OBJETIVO SUGERIDO
              </span>
            </div>
            <div className="flex items-baseline gap-4">
              <div>
                <span className="text-3xl font-black italic text-white">4</span>
                <span className="text-[10px] text-ink-muted uppercase font-bold ml-1.5">
                  SERIES
                </span>
              </div>
              <div className="text-xl font-bold text-ink-muted">×</div>
              <div>
                <span className="text-3xl font-black italic text-white">12</span>
                <span className="text-[10px] text-ink-muted uppercase font-bold ml-1.5">
                  REPS
                </span>
              </div>
            </div>
          </div>

          {/* Coach Recommendation Tip */}
          <div className="glass-panel rounded-3xl p-6 border border-white/5">
            <div className="flex items-center gap-2 text-copper-vibrant mb-2">
              <Lightbulb size={18} />
              <span className="text-[10px] font-black uppercase tracking-widest">
                RECOMENDACIÓN DEL MES
              </span>
            </div>
            <p className="text-xs text-ink-dim leading-relaxed">
              Priorizá la técnica y el control de la fase excéntrica antes de subir de carga.
            </p>
          </div>
        </div>

        {/* Form to log performance */}
        <ExerciseForm
          initialSets={existingLog?.sets || 4}
          initialReps={existingLog?.reps || 12}
          initialWeight={existingLog?.weightKg || 0}
          onSave={handleSave}
        />
      </div>
    </div>
  );
}
