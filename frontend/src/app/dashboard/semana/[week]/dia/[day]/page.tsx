"use client";

import { useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import Link from "next/link";
import { supabase } from "@/lib/supabase";
import { useAppStore } from "@/lib/store";
import { ExerciseCard, ExerciseItem } from "@/components/workout/ExerciseCard";
import { ArrowLeft, CheckCircle2, Sparkles } from "lucide-react";

export default function DiaPage() {
  const params = useParams();
  const router = useRouter();
  const weekNum = parseInt((params?.week as string) || "1", 10);
  const dayNum = parseInt((params?.day as string) || "1", 10);

  const { exerciseLogs, markDayCompleted, profile } = useAppStore();
  const [exercises, setExercises] = useState<ExerciseItem[]>([]);
  const [focus, setFocus] = useState<string>("ENTRENAMIENTO");
  const [warmup, setWarmup] = useState<string>("");

  const dayNames = [
    "Lunes",
    "Martes",
    "Miércoles",
    "Jueves",
    "Viernes",
    "Sábado",
    "Domingo",
  ];
  const dayName = dayNames[(dayNum - 1) % 7] || `Día ${dayNum}`;

  useEffect(() => {
    async function loadRoutine() {
      try {
        const planId = profile.activePlanId?.replace(/-/g, "_") || "plan_padel";

        // Query Supabase v2.plan_workouts table live
        const { data } = await supabase
          .from("plan_workouts")
          .select("*")
          .eq("plan_id", planId)
          .eq("week_number", weekNum)
          .eq("day_number", dayNum)
          .maybeSingle();

        if (data && data.exercises && Array.isArray(data.exercises)) {
          setFocus(data.focus || "ENTRENAMIENTO");
          setWarmup(data.warmup_instructions || "");

          const mapped: ExerciseItem[] = (
            data.exercises as Array<{
              name?: string;
              category?: string;
              series?: number | string;
              reps?: string;
              rpe?: number;
              notes?: string;
              video_path?: string;
              video_code?: string;
            }>
          ).map((ex, idx) => {
              // Ensure clean unique ID derived from video_path or name
              let cleanId = "";
              if (ex.video_path) {
                cleanId = ex.video_path
                  .replace(/^\//, "")
                  .replace(/\.mp4$/i, "")
                  .replace(/\.mov$/i, "");
              } else {
                cleanId = (ex.name || `ex_${idx}`)
                  .toLowerCase()
                  .replace(/[^a-z0-9_-]+/g, "-");
              }

              return {
                id: cleanId,
                name: ex.name || "EJERCICIO",
                category: ex.category || "GENERAL",
                series: ex.series || 4,
                reps: ex.reps || "12",
                rpe: ex.rpe || 8,
                notes: ex.notes || "",
                video_path: ex.video_path || `${cleanId}.mp4`,
              };
            }
          );

          setExercises(mapped);
        }
      } catch (err) {
        console.warn("Could not load routine from Supabase:", err);
      }
    }

    loadRoutine();
  }, [weekNum, dayNum, profile.activePlanId]);

  const handleCompleteDay = () => {
    markDayCompleted(weekNum, dayNum);
    router.push(`/dashboard/semana/${weekNum}/dia/${dayNum}/exito`);
  };

  return (
    <div className="min-h-screen bg-carbon text-ink-pure pb-32">
      {/* Sticky Top Header */}
      <div className="sticky top-0 z-40 bg-carbon/90 backdrop-blur-xl border-b border-white/5 px-6 py-4 flex items-center justify-between">
        <Link
          href={`/dashboard/semana/${weekNum}`}
          className="px-4 py-2 rounded-full bg-carbon-surface border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover flex items-center gap-2 transition-all"
        >
          <ArrowLeft size={16} />
          <span>VOLVER A LA SEMANA</span>
        </Link>
        <span className="text-xs font-bold uppercase tracking-wider text-copper-primary">
          SEMANA {weekNum}
        </span>
      </div>

      {/* Main Content */}
      <div className="max-w-4xl mx-auto px-6 pt-6">
        {/* Day Header Banner */}
        <div className="glass-card rounded-[2rem] p-6 sm:p-8 mb-8 border border-white/10">
          <span className="text-[10px] font-black tracking-widest uppercase text-copper-vibrant">
            JORNADA DE ENTRENAMIENTO • {dayName.toUpperCase()}
          </span>
          <h1 className="text-2xl sm:text-4xl font-black italic uppercase tracking-tight text-white mt-1">
            {focus}
          </h1>
          {warmup && (
            <div className="inline-flex items-center gap-2 mt-3 px-3.5 py-1.5 rounded-full bg-copper-primary/10 border border-copper-border text-copper-hover text-xs font-bold uppercase tracking-wider">
              <Sparkles size={14} />
              <span>{warmup}</span>
            </div>
          )}
          <p className="text-xs sm:text-sm text-ink-dim mt-3">
            Realizá cada ejercicio siguiendo la técnica demostrada en video y registrá tus marcas.
          </p>
        </div>

        {/* Exercises List */}
        <div className="space-y-4 mb-10">
          <div className="flex items-center justify-between px-1">
            <h2 className="text-xs font-black uppercase tracking-widest text-ink-heading">
              EJERCICIOS DE LA RUTINA ({exercises.length})
            </h2>
            <span className="text-[11px] text-ink-muted">Toca para abrir video</span>
          </div>

          {exercises.map((ex, idx) => {
            const isCompleted = !!exerciseLogs[ex.id || `ex_${idx}`];
            return (
              <ExerciseCard
                key={ex.id || idx}
                exercise={{ ...ex, isCompleted }}
                href={`/dashboard/semana/${weekNum}/dia/${dayNum}/ejercicio/${ex.id}`}
              />
            );
          })}
        </div>
      </div>

      {/* Floating Bottom Button: Completar Día */}
      <div className="fixed bottom-0 left-0 right-0 z-40 bg-black/90 backdrop-blur-2xl border-t border-white/10 px-6 py-4">
        <div className="max-w-4xl mx-auto flex items-center justify-between gap-4">
          <div>
            <span className="text-[10px] font-bold uppercase tracking-widest text-ink-muted block">
              ESTADO DEL DÍA
            </span>
            <span className="text-xs sm:text-sm font-bold text-white">
              {dayName} • {focus}
            </span>
          </div>

          <button
            onClick={handleCompleteDay}
            className="px-8 py-3.5 rounded-full bg-state-success hover:bg-emerald-400 text-black text-xs sm:text-sm font-black tracking-widest uppercase transition-all shadow-glow-success hover:scale-105 active:scale-95 flex items-center gap-2"
          >
            <CheckCircle2 size={18} />
            <span>COMPLETAR DÍA</span>
          </button>
        </div>
      </div>
    </div>
  );
}
