"use client";

import { useState } from "react";
import { useAppStore } from "@/lib/store";
import { ProgressRing } from "@/components/stats/ProgressRing";
import { StreakCounter } from "@/components/stats/StreakCounter";
import { WeightChart } from "@/components/stats/WeightChart";
import { WeightPrompt } from "@/components/stats/WeightPrompt";
import { Plus } from "lucide-react";

export default function StatsPage() {
  const { profile, completedDays, streakDays, weightHistory, addWeightRecord } =
    useAppStore();
  const [isPromptOpen, setIsPromptOpen] = useState(false);

  // Calculate percentage: total days completed out of 144 days (24 weeks * 6)
  const completedCount = Object.keys(completedDays).length;
  const totalTargetDays = 144;
  const percentage = Math.max(
    12,
    Math.round((completedCount / totalTargetDays) * 100)
  );

  return (
    <div className="min-h-screen bg-carbon text-ink-pure pb-32 pt-8 px-4 sm:px-6 max-w-4xl mx-auto">
      {/* Header */}
      <div className="mb-8 text-center sm:text-left">
        <span className="text-[10px] font-black tracking-widest uppercase text-copper-vibrant">
          TELEMETRÍA Y RENDIMIENTO
        </span>
        <h1 className="text-3xl sm:text-4xl font-black italic uppercase tracking-tight text-white mt-1 mb-2">
          TUS NÚMEROS
        </h1>
        <p className="text-xs sm:text-sm text-ink-dim max-w-lg leading-relaxed">
          &quot;El progreso es la suma de pequeños esfuerzos repetidos día tras día.&quot;
        </p>
      </div>

      {/* Hero Stats Twin Modules */}
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-6 mb-8">
        {/* Progress Ring Card */}
        <div className="glass-card rounded-3xl p-6 md:p-8 border border-white/10 flex flex-col items-center justify-center">
          <ProgressRing percentage={percentage} />
          <span className="text-xs text-ink-dim mt-4 uppercase font-bold tracking-wider">
            {completedCount} de {totalTargetDays} sesiones completadas
          </span>
        </div>

        {/* Streak Module */}
        <StreakCounter streakDays={streakDays} />
      </div>

      {/* Weight History Section */}
      <div className="space-y-4 mb-8">
        <div className="flex items-center justify-between">
          <h2 className="text-xs font-black uppercase tracking-widest text-ink-heading">
            REGISTRO DE PESO CORPORAL
          </h2>
          <button
            onClick={() => setIsPromptOpen(true)}
            className="px-4 py-2 rounded-full bg-copper-primary/20 border border-copper-border text-copper-hover hover:border-copper-vibrant text-xs font-black tracking-wider uppercase transition-all flex items-center gap-1.5 shadow-sm"
          >
            <Plus size={14} />
            <span>ACTUALIZAR PESO</span>
          </button>
        </div>

        <WeightChart records={weightHistory} />
      </div>

      {/* Weight Prompt Modal */}
      <WeightPrompt
        currentWeight={profile.weight || 65}
        isOpen={isPromptOpen}
        onClose={() => setIsPromptOpen(false)}
        onSave={(w) => addWeightRecord(w)}
      />
    </div>
  );
}
