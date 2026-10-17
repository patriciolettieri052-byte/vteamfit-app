"use client";

import { Flame } from "lucide-react";

interface StreakCounterProps {
  streakDays: number;
}

export function StreakCounter({ streakDays }: StreakCounterProps) {
  return (
    <div className="glass-panel rounded-3xl p-6 border border-white/10 flex flex-col items-center text-center relative overflow-hidden group">
      {/* Background orange flame aura */}
      <div className="absolute top-0 right-0 w-32 h-32 bg-state-warning/10 rounded-full blur-[40px] pointer-events-none" />

      <div className="w-12 h-12 rounded-2xl bg-state-warning/20 border border-state-warning/40 flex items-center justify-center text-state-warning mb-3 shadow-md group-hover:scale-110 transition-transform">
        <Flame size={24} className="fill-state-warning animate-pulse" />
      </div>

      <span className="text-[10px] font-black uppercase tracking-widest text-ink-dim mb-1">
        RACHA ACTUAL
      </span>

      <div className="text-3xl sm:text-4xl font-black italic tracking-tight text-white mb-1">
        {streakDays} DÍAS
      </div>

      <span className="text-[11px] font-black uppercase tracking-wider text-state-warning">
        ¡VAS CON TODO!
      </span>
    </div>
  );
}
