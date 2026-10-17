"use client";

import Link from "next/link";
import { useAppStore } from "@/lib/store";
import { getPlanBySlug, PLANS_CATALOG } from "@/lib/plans-catalog";
import {
  CheckCircle,
  ChevronRight,
  Flame,
} from "lucide-react";

export default function DashboardPage() {
  const { profile, updateProfile, completedDays, streakDays } = useAppStore();
  const currentPlan = getPlanBySlug(profile.activePlanId) || PLANS_CATALOG[1]; // default Plan Pádel

  // Total 24 weeks for Plan Pádel, or 12/28 for others
  const totalWeeks = currentPlan.id === "gluteos-de-acero" ? 12 : 24;
  const weeks = Array.from({ length: totalWeeks }, (_, i) => i + 1);

  // Compute completed count for a week
  const getWeekCompletedDays = (w: number) => {
    let count = 0;
    for (let d = 1; d <= 6; d++) {
      if (completedDays[`w${w}_d${d}`]) count++;
    }
    return count;
  };

  return (
    <div className="min-h-screen bg-carbon text-ink-pure pb-28 pt-8 px-4 sm:px-6 max-w-4xl mx-auto">
      {/* Top Header / Profile greeting */}
      <div className="flex items-center justify-between mb-8">
        <div className="flex items-center gap-3.5">
          {/* Avatar Monogram */}
          <div className="w-13 h-13 sm:w-14 sm:h-14 rounded-full bg-copper-primary border-2 border-copper-vibrant text-black flex items-center justify-center font-black italic text-xl shadow-glow">
            {profile.name[0]?.toUpperCase() || "V"}
          </div>
          <div>
            <span className="text-[10px] font-bold tracking-widest uppercase text-copper-primary">
              {profile.gender === "Hombre" ? "LISTO PARA ENTRENAR" : "LISTA PARA ENTRENAR"}
            </span>
            <h1 className="text-xl sm:text-2xl font-black italic uppercase tracking-tight text-white">
              Hola, {profile.name}
            </h1>
          </div>
        </div>

        {/* Streak counter pill */}
        <Link
          href="/dashboard/stats"
          className="flex items-center gap-2 px-3.5 py-2 rounded-full bg-state-warning/10 border border-state-warning/30 text-state-warning hover:scale-105 transition-all shadow-sm"
        >
          <Flame size={16} className="fill-state-warning animate-bounce" />
          <span className="text-xs font-black tracking-wider uppercase">
            {streakDays} DÍAS
          </span>
        </Link>
      </div>

      {/* Spotlight: Active Plan Card */}
      <div className="relative glass-card rounded-[2rem] p-6 sm:p-8 mb-10 overflow-hidden border border-copper-border">
        {/* Diffuse glow background */}
        <div className="absolute top-0 right-0 w-64 h-64 bg-copper-vibrant/10 rounded-full blur-[80px] pointer-events-none" />

        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-6 relative z-10">
          <div>
            <div className="flex items-center gap-2 mb-2">
              <span className="w-2 h-2 rounded-full bg-copper-vibrant animate-ping" />
              <span className="text-[10px] font-black uppercase tracking-widest text-copper-vibrant">
                PLAN ACTIVO
              </span>
            </div>

            <h2 className="text-2xl sm:text-3xl font-black italic uppercase tracking-tight text-white mb-2">
              {currentPlan.title}
            </h2>

            <p className="text-xs sm:text-sm text-ink-dim max-w-md">
              {currentPlan.durationBadge} • {currentPlan.instructor}
            </p>
          </div>

          {/* Tester Plan Switcher */}
          <div className="flex flex-col gap-2 shrink-0">
            <span className="text-[10px] font-bold uppercase tracking-wider text-ink-muted">
              CAMBIAR PLAN (MODO TESTER):
            </span>
            <select
              value={currentPlan.id}
              onChange={(e) => updateProfile({ activePlanId: e.target.value })}
              className="px-4 py-2.5 rounded-xl bg-carbon-solid border border-white/20 text-xs font-bold text-white focus:outline-none focus:border-copper-vibrant uppercase tracking-wider cursor-pointer"
            >
              {PLANS_CATALOG.map((p) => (
                <option key={p.id} value={p.id} className="bg-neutral-900 text-white">
                  {p.title}
                </option>
              ))}
            </select>
          </div>
        </div>
      </div>

      {/* Weekly Schedule Section */}
      <div className="mb-8">
        <div className="flex items-center justify-between mb-6">
          <div>
            <h2 className="text-xl sm:text-2xl font-black italic uppercase tracking-tight text-white">
              TU PROGRESO
            </h2>
            <div className="w-12 h-1 bg-copper-vibrant rounded-full mt-1 shadow-glow" />
          </div>
          <span className="text-xs font-bold uppercase tracking-wider text-ink-muted">
            {totalWeeks} SEMANAS TOTALES
          </span>
        </div>

        {/* Weeks List */}
        <div className="space-y-4">
          {weeks.map((weekNum) => {
            const completedCount = getWeekCompletedDays(weekNum);
            const isCompleted = completedCount >= 6;
            const isCurrent = weekNum === 1; // current focus week

            return (
              <div
                key={weekNum}
                className={`glass-panel rounded-3xl p-5 sm:p-6 transition-all duration-300 ${
                  isCurrent
                    ? "border-2 border-copper-border shadow-glow"
                    : isCompleted
                    ? "border border-state-success/30 opacity-75"
                    : "border border-white/5 opacity-85 hover:opacity-100 hover:border-white/10"
                }`}
              >
                <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                  <div>
                    <div className="flex items-center gap-2 mb-1">
                      {isCurrent && (
                        <span className="px-2.5 py-0.5 rounded-full bg-copper-vibrant text-white text-[9px] font-black uppercase tracking-widest">
                          SEMANA ACTUAL
                        </span>
                      )}
                      {isCompleted && (
                        <span className="px-2.5 py-0.5 rounded-full bg-state-success/20 text-state-success text-[9px] font-black uppercase tracking-widest flex items-center gap-1">
                          <CheckCircle size={10} />
                          COMPLETADA
                        </span>
                      )}
                      <span className="text-xs text-ink-muted uppercase font-bold tracking-wider">
                        {completedCount}/6 DÍAS
                      </span>
                    </div>

                    <h3 className="text-lg sm:text-xl font-black italic uppercase tracking-tight text-white">
                      Semana {weekNum}
                    </h3>
                  </div>

                  {/* Progress bar and Action button */}
                  <div className="flex items-center gap-4">
                    {/* Linear mini progress */}
                    <div className="hidden sm:block w-32 h-2 rounded-full bg-carbon-solid overflow-hidden">
                      <div
                        className="h-full bg-copper-vibrant rounded-full transition-all duration-500"
                        style={{ width: `${(completedCount / 6) * 100}%` }}
                      />
                    </div>

                    <Link
                      href={`/dashboard/semana/${weekNum}`}
                      className={`px-5 py-2.5 rounded-full text-xs font-black uppercase tracking-widest flex items-center gap-1.5 transition-all ${
                        isCurrent
                          ? "bg-copper-vibrant hover:bg-copper-hover text-white shadow-glow hover:scale-105"
                          : "bg-carbon-surface hover:bg-white/10 text-ink-dim hover:text-white border border-white/10"
                      }`}
                    >
                      <span>{isCurrent ? "CONTINUAR" : "VER DÍAS"}</span>
                      <ChevronRight size={14} />
                    </Link>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}
