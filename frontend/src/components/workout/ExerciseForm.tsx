"use client";

import { useState } from "react";
import { AlertTriangle, CheckCircle2 } from "lucide-react";

interface ExerciseFormProps {
  initialSets?: number;
  initialReps?: string | number;
  initialWeight?: number;
  onSave: (sets: number, reps: number, weightKg: number) => void;
}

export function ExerciseForm({
  initialSets = 3,
  initialReps = 12,
  initialWeight = 0,
  onSave,
}: ExerciseFormProps) {
  const [sets, setSets] = useState(initialSets.toString());
  const [reps, setReps] = useState(initialReps.toString());
  const [weightKg, setWeightKg] = useState(
    initialWeight ? initialWeight.toString() : "0"
  );
  const [errorMsg, setErrorMsg] = useState("");
  const [isSaved, setIsSaved] = useState(false);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    const numSets = parseInt(sets, 10);
    const numReps = parseInt(reps, 10);
    const numWeight = parseFloat(weightKg) || 0;

    if (!numSets || !numReps || numSets <= 0 || numReps <= 0) {
      setErrorMsg(
        "⚠️ Por favor, ingresa las series y repeticiones realizadas antes de guardar el ejercicio."
      );
      return;
    }

    setErrorMsg("");
    setIsSaved(true);
    onSave(numSets, numReps, numWeight);
  };

  return (
    <div className="glass-card rounded-3xl p-6 md:p-8 border border-white/10">
      <h3 className="text-xs font-black uppercase tracking-widest text-copper-vibrant mb-6 text-center">
        REGISTRA TU ENTRENAMIENTO
      </h3>

      {errorMsg && (
        <div className="mb-6 p-4 rounded-2xl bg-state-warning/10 border border-state-warning/30 text-state-warning text-xs font-semibold flex items-center gap-3">
          <AlertTriangle size={18} className="shrink-0" />
          <span>{errorMsg}</span>
        </div>
      )}

      {isSaved && (
        <div className="mb-6 p-4 rounded-2xl bg-state-success/10 border border-state-success/30 text-state-success text-xs font-semibold flex items-center gap-3">
          <CheckCircle2 size={18} className="shrink-0" />
          <span>¡Ejercicio guardado exitosamente!</span>
        </div>
      )}

      <form onSubmit={handleSubmit} className="space-y-6">
        <div className="grid grid-cols-3 gap-3 md:gap-4">
          {/* Series */}
          <div className="flex flex-col items-center">
            <label className="text-[10px] font-black uppercase tracking-widest text-ink-dim mb-2">
              SERIES
            </label>
            <input
              type="number"
              min="1"
              max="20"
              value={sets}
              onFocus={(e) => e.target.select()}
              onChange={(e) => setSets(e.target.value)}
              className="w-full text-center py-4 rounded-2xl bg-carbon-solid border border-white/10 text-xl font-black text-white focus:outline-none focus:border-copper-vibrant transition-colors"
            />
          </div>

          {/* Reps */}
          <div className="flex flex-col items-center">
            <label className="text-[10px] font-black uppercase tracking-widest text-ink-dim mb-2">
              REPS
            </label>
            <input
              type="number"
              min="1"
              max="100"
              value={reps}
              onFocus={(e) => e.target.select()}
              onChange={(e) => setReps(e.target.value)}
              className="w-full text-center py-4 rounded-2xl bg-carbon-solid border border-white/10 text-xl font-black text-white focus:outline-none focus:border-copper-vibrant transition-colors"
            />
          </div>

          {/* Weight Kg */}
          <div className="flex flex-col items-center">
            <label className="text-[10px] font-black uppercase tracking-widest text-ink-dim mb-2">
              PESO (KG)
            </label>
            <input
              type="number"
              step="0.5"
              min="0"
              max="500"
              value={weightKg}
              onFocus={(e) => e.target.select()}
              onChange={(e) => setWeightKg(e.target.value)}
              className="w-full text-center py-4 rounded-2xl bg-carbon-solid border border-white/10 text-xl font-black text-white focus:outline-none focus:border-copper-vibrant transition-colors"
            />
          </div>
        </div>

        <button
          type="submit"
          className="w-full py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-2"
        >
          <span>GUARDAR Y CONTINUAR</span>
        </button>
      </form>
    </div>
  );
}
