"use client";

import { useEffect, useState } from "react";
import { useParams } from "next/navigation";
import Image from "next/image";
import Link from "next/link";
import { supabase } from "@/lib/supabase";
import { useAppStore } from "@/lib/store";
import { ArrowLeft, CheckCircle2, ChevronRight } from "lucide-react";

interface DayWorkoutSummary {
  dayNumber: number;
  dayName: string;
  title: string;
  intensity: string;
  intensityColor: string;
  exerciseCount: number;
  isRest: boolean;
}

const DEFAULT_DAYS: DayWorkoutSummary[] = [
  {
    dayNumber: 1,
    dayName: "Lunes",
    title: "PREVENIR + VELOCIDAD",
    intensity: "FUERTE",
    intensityColor: "bg-red-500/20 text-red-400 border-red-500/30",
    exerciseCount: 6,
    isRest: false,
  },
  {
    dayNumber: 2,
    dayName: "Martes",
    title: "PREVENIR + FORTALECER",
    intensity: "MEDIO",
    intensityColor: "bg-yellow-500/20 text-yellow-400 border-yellow-500/30",
    exerciseCount: 6,
    isRest: false,
  },
  {
    dayNumber: 3,
    dayName: "Miércoles",
    title: "FUERZA + VELOCIDAD ESPECÍFICA",
    intensity: "FUERTE",
    intensityColor: "bg-red-500/20 text-red-400 border-red-500/30",
    exerciseCount: 6,
    isRest: false,
  },
  {
    dayNumber: 4,
    dayName: "Jueves",
    title: "RECUPERACIÓN + PREVENCIÓN",
    intensity: "SUAVE",
    intensityColor: "bg-emerald-500/20 text-emerald-400 border-emerald-500/30",
    exerciseCount: 5,
    isRest: false,
  },
  {
    dayNumber: 5,
    dayName: "Viernes",
    title: "POTENCIA DE GOLPEO Y PISTA",
    intensity: "FUERTE",
    intensityColor: "bg-red-500/20 text-red-400 border-red-500/30",
    exerciseCount: 6,
    isRest: false,
  },
  {
    dayNumber: 6,
    dayName: "Sábado",
    title: "PREVENIR + CARDIO",
    intensity: "MEDIO",
    intensityColor: "bg-yellow-500/20 text-yellow-400 border-yellow-500/30",
    exerciseCount: 4,
    isRest: false,
  },
  {
    dayNumber: 7,
    dayName: "Domingo",
    title: "DESCANSO TOTAL Y REGENERACIÓN",
    intensity: "DESCANSO",
    intensityColor: "bg-copper-primary/20 text-copper-primary border-copper-border",
    exerciseCount: 0,
    isRest: true,
  },
];

export default function SemanaPage() {
  const params = useParams();
  const weekNum = parseInt((params?.week as string) || "1", 10);
  const { completedDays, profile } = useAppStore();
  const [days, setDays] = useState<DayWorkoutSummary[]>(DEFAULT_DAYS);

  useEffect(() => {
    async function loadWeekDays() {
      try {
        const planId = profile.activePlanId?.replace(/-/g, "_") || "plan_padel";
        const { data } = await supabase
          .from("plan_workouts")
          .select("day_number, day_name, focus, is_rest_day, exercises")
          .eq("plan_id", planId)
          .eq("week_number", weekNum)
          .order("day_number", { ascending: true });

        if (data && data.length > 0) {
          const dayNameMap: Record<number, string> = {
            1: "Lunes",
            2: "Martes",
            3: "Miércoles",
            4: "Jueves",
            5: "Viernes",
            6: "Sábado",
            7: "Domingo",
          };

          const mappedDays: DayWorkoutSummary[] = (data as Array<{
            day_number: number;
            day_name: string;
            focus: string;
            is_rest_day: boolean;
            exercises: unknown[];
          }>).map((d) => {
            const isRest = d.is_rest_day || d.day_number === 7;
            const focus = d.focus || "ENTRENAMIENTO";
            let intensity = "MEDIO";
            let intensityColor = "bg-yellow-500/20 text-yellow-400 border-yellow-500/30";

            if (isRest) {
              intensity = "DESCANSO";
              intensityColor = "bg-copper-primary/20 text-copper-primary border-copper-border";
            } else if (focus.includes("VELOCIDAD") || focus.includes("FUERZA") || focus.includes("POTENCIA")) {
              intensity = "FUERTE";
              intensityColor = "bg-red-500/20 text-red-400 border-red-500/30";
            } else if (focus.includes("CARDIO") || focus.includes("RECUPERACION") || focus.includes("SUAVE")) {
              intensity = "SUAVE";
              intensityColor = "bg-emerald-500/20 text-emerald-400 border-emerald-500/30";
            }

            const exCount = Array.isArray(d.exercises) ? d.exercises.length : 0;

            return {
              dayNumber: d.day_number,
              dayName: dayNameMap[d.day_number] || d.day_name,
              title: focus,
              intensity,
              intensityColor,
              exerciseCount: exCount,
              isRest,
            };
          });

          // Ensure Sunday (Rest) is present if not in database
          if (!mappedDays.find((d) => d.dayNumber === 7)) {
            mappedDays.push({
              dayNumber: 7,
              dayName: "Domingo",
              title: "DESCANSO TOTAL Y REGENERACIÓN",
              intensity: "DESCANSO",
              intensityColor: "bg-copper-primary/20 text-copper-primary border-copper-border",
              exerciseCount: 0,
              isRest: true,
            });
          }

          setDays(mappedDays);
        }
      } catch (e) {
        console.warn("Could not fetch live week workouts from Supabase:", e);
      }
    }

    loadWeekDays();
  }, [weekNum, profile.activePlanId]);

  return (
    <div className="min-h-screen bg-carbon text-ink-pure pb-32">
      {/* Top Floating Return Button */}
      <div className="fixed top-0 left-0 right-0 z-40 h-20 px-6 flex items-center justify-between pointer-events-none">
        <Link
          href="/dashboard"
          className="pointer-events-auto px-4 py-2 rounded-full bg-black/70 backdrop-blur-xl border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover hover:border-copper-border transition-all flex items-center gap-2 shadow-lg"
        >
          <ArrowLeft size={16} />
          <span>DASHBOARD</span>
        </Link>
      </div>

      {/* Week Hero Header */}
      <div className="relative w-full h-[45vh] min-h-[320px] overflow-hidden bg-neutral-900">
        <Image
          src="/images/fotos/pantalla-semanas.jpg"
          alt="Semana de entrenamiento"
          fill
          priority
          className="object-cover object-[center_top] filter brightness-[0.7]"
        />
        <div className="absolute inset-0 bg-gradient-to-t from-carbon via-carbon/60 to-black/30" />

        <div className="absolute bottom-8 left-0 right-0 px-6 max-w-4xl mx-auto">
          <span className="text-[11px] font-black tracking-widest uppercase text-copper-vibrant">
            PLAN PÁDEL & FUERZA
          </span>
          <h1 className="text-4xl sm:text-6xl font-black italic tracking-tighter uppercase leading-none text-white mt-1">
            SEMANA {weekNum}
          </h1>
          <p className="text-xs sm:text-sm text-ink-dim mt-2">
            6 jornadas estructuradas de entrenamiento progresivo + 1 día de descanso
          </p>
        </div>
      </div>

      {/* Days List Container */}
      <div className="max-w-4xl mx-auto px-6 mt-8 space-y-4">
        {days.map((day) => {
          const isDone = completedDays[`w${weekNum}_d${day.dayNumber}`];

          return (
            <Link
              key={day.dayNumber}
              href={
                day.isRest
                  ? "#"
                  : `/dashboard/semana/${weekNum}/dia/${day.dayNumber}`
              }
              className={`group flex items-center justify-between p-5 sm:p-6 rounded-3xl border transition-all duration-300 ${
                isDone
                  ? "bg-carbon-surface/90 border-state-success/40 shadow-glow-success"
                  : day.isRest
                  ? "bg-carbon-surface/40 border-white/5 opacity-70 cursor-default"
                  : "glass-panel border-white/10 hover:border-copper-border hover:shadow-glow hover:-translate-y-0.5"
              }`}
            >
              <div className="flex items-center gap-4 sm:gap-6">
                {/* Day Number badge */}
                <div
                  className={`w-12 h-12 rounded-2xl flex flex-col items-center justify-center font-black transition-colors ${
                    isDone
                      ? "bg-state-success/20 text-state-success border border-state-success/40"
                      : "bg-carbon-solid border border-white/10 text-white group-hover:border-copper-border"
                  }`}
                >
                  <span className="text-[9px] uppercase tracking-wider text-ink-muted">
                    DÍA
                  </span>
                  <span className="text-base font-black italic leading-none">
                    {day.dayNumber}
                  </span>
                </div>

                {/* Day Info */}
                <div>
                  <div className="flex items-center gap-2 mb-1">
                    <span className="text-xs font-black uppercase tracking-wider text-white">
                      {day.dayName}
                    </span>
                    <span
                      className={`px-2 py-0.5 rounded-full border text-[9px] font-black tracking-widest uppercase ${day.intensityColor}`}
                    >
                      {day.intensity}
                    </span>
                    {isDone && (
                      <span className="px-2 py-0.5 rounded-full bg-state-success/20 text-state-success text-[9px] font-black tracking-widest uppercase flex items-center gap-1">
                        <CheckCircle2 size={10} />
                        COMPLETADO
                      </span>
                    )}
                  </div>
                  <h3 className="text-sm sm:text-base font-bold text-ink-dim group-hover:text-ink-heading transition-colors">
                    {day.title}
                  </h3>
                  {!day.isRest && day.exerciseCount > 0 && (
                    <span className="text-[11px] text-copper-primary font-semibold block mt-0.5">
                      {day.exerciseCount} ejercicios estructurados
                    </span>
                  )}
                </div>
              </div>

              {/* Action Chevron */}
              {!day.isRest && (
                <div className="shrink-0 text-ink-muted group-hover:text-copper-vibrant group-hover:translate-x-1 transition-all pl-4">
                  <ChevronRight size={22} />
                </div>
              )}
            </Link>
          );
        })}
      </div>
    </div>
  );
}
