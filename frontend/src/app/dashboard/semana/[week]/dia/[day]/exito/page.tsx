"use client";

import { useEffect } from "react";
import Link from "next/link";
import confetti from "canvas-confetti";
import { Check, Clock, Dumbbell, ArrowRight } from "lucide-react";

export default function ExitoPage() {
  useEffect(() => {
    // Fire confetti on celebration load
    try {
      confetti({
        particleCount: 100,
        spread: 70,
        origin: { y: 0.6 },
        colors: ["#ff6b4a", "#ff8566", "#897449", "#10b981", "#ffffff"],
      });
    } catch (e) {
      console.warn("Confetti effect:", e);
    }
  }, []);

  return (
    <div className="min-h-screen bg-carbon flex flex-col items-center justify-center px-6 py-12 relative overflow-hidden">
      {/* Background copper glow */}
      <div className="absolute w-[600px] h-[600px] bg-copper-vibrant/10 rounded-full blur-[140px] pointer-events-none" />

      <div className="w-full max-w-md glass-card rounded-[2.5rem] p-8 md:p-12 border border-white/10 text-center relative z-10">
        {/* Concentric victory shield */}
        <div className="relative w-24 h-24 rounded-full bg-state-success/20 border-2 border-state-success flex items-center justify-center text-state-success mx-auto mb-6 shadow-glow-success animate-bounce">
          <Check size={48} strokeWidth={3} />
        </div>

        {/* Headlines */}
        <h1 className="text-3xl sm:text-4xl font-black italic tracking-tight uppercase text-white mb-2">
          ¡MISIÓN CUMPLIDA!
        </h1>
        <p className="text-xs sm:text-sm text-ink-dim leading-relaxed mb-8">
          Has dado un paso más hacia tu mejor versión.
        </p>

        {/* Session Metrics */}
        <div className="grid grid-cols-2 gap-4 mb-8">
          <div className="glass-panel rounded-2xl p-4 border border-white/5">
            <Dumbbell className="w-5 h-5 text-copper-primary mx-auto mb-1" />
            <div className="text-2xl font-black italic text-white">4</div>
            <span className="text-[10px] font-bold uppercase tracking-widest text-ink-muted">
              EJERCICIOS
            </span>
          </div>

          <div className="glass-panel rounded-2xl p-4 border border-white/5">
            <Clock className="w-5 h-5 text-copper-vibrant mx-auto mb-1" />
            <div className="text-2xl font-black italic text-white">45 min</div>
            <span className="text-[10px] font-bold uppercase tracking-widest text-ink-muted">
              TIEMPO TOTAL
            </span>
          </div>
        </div>

        {/* Philosophical Quote */}
        <div className="p-5 rounded-2xl bg-white/5 border border-white/10 text-center mb-8">
          <p className="text-xs text-ink-heading italic leading-relaxed">
            «“La disciplina es el puente entre tus metas y tus logros.”»
          </p>
        </div>

        {/* Return Button */}
        <Link
          href="/dashboard"
          className="w-full py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-2"
        >
          <span>VOLVER AL DASHBOARD</span>
          <ArrowRight size={16} />
        </Link>
      </div>
    </div>
  );
}
