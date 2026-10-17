"use client";

import { useState } from "react";
import { Scale, X } from "lucide-react";

interface WeightPromptProps {
  currentWeight: number;
  isOpen: boolean;
  onClose: () => void;
  onSave: (weight: number) => void;
}

export function WeightPrompt({
  currentWeight,
  isOpen,
  onClose,
  onSave,
}: WeightPromptProps) {
  const [weight, setWeight] = useState(currentWeight.toString());

  if (!isOpen) return null;

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    const num = parseFloat(weight);
    if (num && num > 20 && num < 300) {
      onSave(num);
      onClose();
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/80 backdrop-blur-md animate-fadeIn">
      <div className="w-full max-w-sm glass-card rounded-[2rem] p-7 md:p-8 border border-white/10 relative">
        <button
          onClick={onClose}
          className="absolute top-5 right-5 p-2 rounded-full text-ink-muted hover:text-white hover:bg-white/10 transition-colors"
        >
          <X size={18} />
        </button>

        <div className="text-center mb-6">
          <div className="w-14 h-14 rounded-2xl bg-copper-primary/10 border border-copper-border flex items-center justify-center text-copper-vibrant mx-auto mb-3">
            <Scale size={26} />
          </div>
          <h3 className="text-xl font-black italic uppercase text-white mb-1">
            ACTUALIZA TU PESO
          </h3>
          <p className="text-xs text-ink-dim leading-relaxed">
            Registra tu peso para hacer seguimiento a tu evolución.
          </p>
        </div>

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="block text-[10px] font-bold uppercase tracking-widest text-ink-dim text-center mb-2">
              PESO EN KILOGRAMOS (KG)
            </label>
            <input
              type="number"
              step="0.1"
              required
              value={weight}
              onFocus={(e) => e.target.select()}
              onChange={(e) => setWeight(e.target.value)}
              className="w-full text-center py-4 rounded-2xl bg-carbon-solid border border-white/20 text-2xl font-black text-white focus:outline-none focus:border-copper-vibrant transition-colors"
            />
          </div>

          <button
            type="submit"
            className="w-full py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] active:scale-[0.98]"
          >
            GUARDAR PESO
          </button>
        </form>
      </div>
    </div>
  );
}
