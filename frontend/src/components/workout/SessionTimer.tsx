"use client";

import { useState, useEffect } from "react";
import { Play, Pause, RotateCcw } from "lucide-react";

interface SessionTimerProps {
  onTimeUpdate?: (seconds: number) => void;
}

export function SessionTimer({ onTimeUpdate }: SessionTimerProps) {
  const [seconds, setSeconds] = useState(0);
  const [isActive, setIsActive] = useState(false);

  useEffect(() => {
    let interval: NodeJS.Timeout | null = null;
    if (isActive) {
      interval = setInterval(() => {
        setSeconds((prev) => {
          const next = prev + 1;
          if (onTimeUpdate) onTimeUpdate(next);
          return next;
        });
      }, 1000);
    } else if (!isActive && seconds !== 0) {
      if (interval) clearInterval(interval);
    }
    return () => {
      if (interval) clearInterval(interval);
    };
  }, [isActive, seconds, onTimeUpdate]);

  const toggleTimer = () => {
    setIsActive(!isActive);
  };

  const resetTimer = () => {
    setIsActive(false);
    setSeconds(0);
    if (onTimeUpdate) onTimeUpdate(0);
  };

  const formatTime = (totalSeconds: number) => {
    const mins = Math.floor(totalSeconds / 60);
    const secs = totalSeconds % 60;
    return `${mins.toString().padStart(2, "0")}:${secs.toString().padStart(2, "0")}`;
  };

  return (
    <div className="glass-card rounded-3xl p-6 border border-white/10 flex flex-col items-center">
      <span className="text-[10px] font-black tracking-widest uppercase text-copper-primary mb-2">
        CRONÓMETRO DE SESIÓN
      </span>

      {/* Big Monospace Display */}
      <div className="text-5xl sm:text-6xl font-black italic tracking-tight font-mono text-white my-2 tabular-nums">
        {formatTime(seconds)}
      </div>

      {/* Controls */}
      <div className="flex items-center gap-3 mt-3 w-full sm:w-auto">
        <button
          type="button"
          onClick={toggleTimer}
          className={`flex-1 sm:flex-initial px-6 py-3 rounded-full text-xs font-black tracking-widest uppercase transition-all flex items-center justify-center gap-2 shadow-glow ${
            isActive
              ? "bg-carbon-surface border border-white/20 text-white hover:border-white/40"
              : "bg-copper-vibrant hover:bg-copper-hover text-white hover:scale-105"
          }`}
        >
          {isActive ? (
            <>
              <Pause size={14} />
              <span>PAUSAR</span>
            </>
          ) : (
            <>
              <Play size={14} fill="currentColor" />
              <span>INICIAR EJERCICIO</span>
            </>
          )}
        </button>

        {seconds > 0 && (
          <button
            type="button"
            onClick={resetTimer}
            className="p-3 rounded-full bg-carbon-surface border border-white/10 hover:border-white/30 text-ink-dim hover:text-white transition-all"
            title="Reiniciar"
          >
            <RotateCcw size={14} />
          </button>
        )}
      </div>
    </div>
  );
}
