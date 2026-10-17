"use client";

import { useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import Link from "next/link";
import { supabase } from "@/lib/supabase";
import { useAppStore } from "@/lib/store";
import { VideoPlayer } from "@/components/workout/VideoPlayer";
import { SessionTimer } from "@/components/workout/SessionTimer";
import { ExerciseForm } from "@/components/workout/ExerciseForm";
import { ArrowLeft, Target, Lightbulb } from "lucide-react";

export default function EjercicioPage() {
  const params = useParams();
  const router = useRouter();
  const weekNum = parseInt((params?.week as string) || "1", 10);
  const dayNum = parseInt((params?.day as string) || "1", 10);
  const rawSlug = (params?.slug as string) || "";

  const { exerciseLogs, logExercise, profile } = useAppStore();

  const [exerciseName, setExerciseName] = useState("");
  const [category, setCategory] = useState("ENTRENAMIENTO");
  const [videoFilename, setVideoFilename] = useState(`${rawSlug}.mp4`);
  const [seriesTarget, setSeriesTarget] = useState(4);
  const [repsTarget, setRepsTarget] = useState("12");
  const [coachNotes, setCoachNotes] = useState(
    "Priorizá la técnica y el control de la fase excéntrica antes de subir de carga."
  );

  useEffect(() => {
    async function loadExerciseData() {
      try {
        const planId = profile.activePlanId?.replace(/-/g, "_") || "plan_padel";

        // 1. Fetch from plan_workouts routine
        const { data: workout } = await supabase
          .from("plan_workouts")
          .select("exercises")
          .eq("plan_id", planId)
          .eq("week_number", weekNum)
          .eq("day_number", dayNum)
          .maybeSingle();

        if (workout && Array.isArray(workout.exercises)) {
          const matched = (
            workout.exercises as Array<{
              name: string;
              category?: string;
              video_path?: string;
              series?: number | string;
              reps?: string;
              notes?: string;
            }>
          ).find((ex) => {
            const exSlug = ex.video_path
              ? ex.video_path.replace(/^\//, "").replace(/\.mp4$/i, "")
              : (ex.name || "").toLowerCase().replace(/[^a-z0-9_-]+/g, "-");
            return exSlug === rawSlug || ex.name === rawSlug;
          });

          if (matched) {
            setExerciseName(matched.name);
            setCategory(matched.category || "ENTRENAMIENTO");
            if (matched.video_path) {
              setVideoFilename(matched.video_path.replace(/^\//, ""));
            }
            if (matched.series) setSeriesTarget(parseInt(matched.series.toString(), 10) || 4);
            if (matched.reps) setRepsTarget(matched.reps);
            if (matched.notes) setCoachNotes(matched.notes);
            return;
          }
        }

        // 2. Fallback query directly in v2.exercises
        const { data: exDb } = await supabase
          .from("exercises")
          .select("*")
          .or(`video_path.ilike.%${rawSlug}%,id.eq.${rawSlug}`)
          .maybeSingle();

        if (exDb) {
          setExerciseName(exDb.name);
          setCategory(exDb.category || "ENTRENAMIENTO");
          if (exDb.video_path) setVideoFilename(exDb.video_path.replace(/^\//, ""));
          if (exDb.instructions) setCoachNotes(exDb.instructions);
        } else {
          // Clean slug fallback
          setExerciseName(
            rawSlug
              .replace(/-/g, " ")
              .replace(/^([a-z]+)\s+/, "")
              .toUpperCase()
          );
        }
      } catch (e) {
        console.warn("Could not fetch exercise details from Supabase:", e);
      }
    }

    if (rawSlug) {
      loadExerciseData();
    }
  }, [rawSlug, weekNum, dayNum, profile.activePlanId]);

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
            {category} • EJECUCIÓN TÉCNICA
          </span>
          <h1 className="text-2xl sm:text-4xl font-black italic uppercase tracking-tight text-white mt-1">
            {exerciseName || rawSlug.toUpperCase()}
          </h1>
        </div>

        {/* Video Player HD streaming from Bunny CDN */}
        <VideoPlayer videoPath={videoFilename} title={exerciseName} />

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
                <span className="text-3xl font-black italic text-white">
                  {seriesTarget}
                </span>
                <span className="text-[10px] text-ink-muted uppercase font-bold ml-1.5">
                  SERIES
                </span>
              </div>
              <div className="text-xl font-bold text-ink-muted">×</div>
              <div>
                <span className="text-3xl font-black italic text-white">
                  {repsTarget}
                </span>
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
                RECOMENDACIÓN TÉCNICA
              </span>
            </div>
            <p className="text-xs text-ink-dim leading-relaxed">
              {coachNotes}
            </p>
          </div>
        </div>

        {/* Form to log performance */}
        <ExerciseForm
          initialSets={existingLog?.sets || seriesTarget}
          initialReps={existingLog?.reps || repsTarget}
          initialWeight={existingLog?.weightKg || 0}
          onSave={handleSave}
        />
      </div>
    </div>
  );
}
