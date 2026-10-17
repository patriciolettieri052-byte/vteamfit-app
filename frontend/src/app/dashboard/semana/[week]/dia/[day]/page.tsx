"use client";

import { useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import Link from "next/link";
import { supabase } from "@/lib/supabase";
import { useAppStore } from "@/lib/store";
import { ExerciseCard, ExerciseItem } from "@/components/workout/ExerciseCard";
import { ArrowLeft, CheckCircle2 } from "lucide-react";

const FALLBACK_EXERCISES: Record<number, ExerciseItem[]> = {
  1: [
    {
      id: "abductores-abductores-en-suelo",
      name: "Abductores en Suelo",
      category: "PIERNAS",
      series: 4,
      reps: "15 por pierna",
      rpe: 8,
      notes: "Mantené la cadera alineada y la contracción en el punto más alto por 1 segundo.",
      video_path: "abductores-abductores-en-suelo.mp4",
    },
    {
      id: "femoral-femoral-tumbado-con-mancuerna",
      name: "Femoral Tumbado con Mancuerna",
      category: "PIERNAS",
      series: 3,
      reps: "12",
      rpe: 8,
      notes: "Sujetá la mancuerna firmemente con los pies, bajá lento en 3 segundos.",
      video_path: "femoral-femoral-tumbado-con-mancuerna.mp4",
    },
    {
      id: "gemelos-gemelos-unilateral-en-step-con-mancuerna",
      name: "Gemelos Unilateral en Step",
      category: "PIERNAS",
      series: 4,
      reps: "15 por pierna",
      rpe: 7,
      notes: "Máximo rango de estiramiento abajo antes de subir explosivo.",
      video_path: "gemelos-gemelos-unilateral-en-step-con-mancuerna.mp4",
    },
    {
      id: "core-plancha-abdominal",
      name: "Plancha Abdominal Frontal",
      category: "CORE",
      series: 3,
      reps: "45 seg",
      rpe: 8,
      notes: "Glúteos apretados y ombligo hacia la columna vertebral.",
      video_path: "core-plancha-frontal.mp4",
    },
  ],
  2: [
    {
      id: "pecho-press-plano-con-mancuernas",
      name: "Press Plano con Mancuernas",
      category: "PECTORAL",
      series: 4,
      reps: "10-12",
      rpe: 8,
      notes: "Retracción escapular activa en todo el recorrido. No choques las mancuernas.",
      video_path: "pecho-press-plano-con-mancuernas.mp4",
    },
    {
      id: "hombro-press-militar-con-mancuernas",
      name: "Press Militar con Mancuernas",
      category: "HOMBROS",
      series: 3,
      reps: "10",
      rpe: 8,
      notes: "Codos a 45 grados, empujá hacia el techo sin arquear la espalda baja.",
      video_path: "hombro-press-militar-con-mancuernas.mp4",
    },
    {
      id: "biceps-curl-martillo-con-mancuernas",
      name: "Curl Martillo con Mancuernas",
      category: "BRAZOS",
      series: 3,
      reps: "12",
      rpe: 7,
      notes: "Codos pegados al cuerpo, controlá la bajada.",
      video_path: "biceps-curl-martillo-con-mancuernas.mp4",
    },
  ],
};

export default function DiaPage() {
  const params = useParams();
  const router = useRouter();
  const weekNum = parseInt((params?.week as string) || "1", 10);
  const dayNum = parseInt((params?.day as string) || "1", 10);

  const { exerciseLogs, markDayCompleted } = useAppStore();
  const [exercises, setExercises] = useState<ExerciseItem[]>([]);
  const [title, setTitle] = useState(`Día ${dayNum}`);

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
        // Query Supabase v2.plan_workouts table
        const { data } = await supabase
          .from("plan_workouts")
          .select("*")
          .eq("plan_id", "plan_padel")
          .eq("week_number", weekNum)
          .eq("day_number", dayNum)
          .maybeSingle();

        if (data && data.exercises && Array.isArray(data.exercises)) {
          setTitle(data.title || `${dayName}`);
          setExercises(data.exercises);
        } else {
          // Fallback routine
          const fallback =
            FALLBACK_EXERCISES[dayNum] || FALLBACK_EXERCISES[1];
          setExercises(fallback);
        }
      } catch (err) {
        console.warn("Using fallback routine:", err);
        setExercises(FALLBACK_EXERCISES[dayNum] || FALLBACK_EXERCISES[1]);
      }
    }

    loadRoutine();
  }, [weekNum, dayNum, dayName]);

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
            JORNADA DE ENTRENAMIENTO
          </span>
          <h1 className="text-2xl sm:text-4xl font-black italic uppercase tracking-tight text-white mt-1">
            {dayName} • {title}
          </h1>
          <p className="text-xs sm:text-sm text-ink-dim mt-2">
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
              {dayName} • Semana {weekNum}
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
