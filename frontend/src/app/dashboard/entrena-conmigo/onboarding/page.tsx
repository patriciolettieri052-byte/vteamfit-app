"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { ArrowLeft, ArrowRight, Check } from "lucide-react";

export default function EntrenaConmigoOnboarding() {
  const router = useRouter();
  const [step, setStep] = useState(1);
  const [goal, setGoal] = useState("Ganar músculo");
  const [frequency, setFrequency] = useState("4 días");
  const [equipment, setEquipment] = useState("Gimnasio completo");
  const [injuries, setInjuries] = useState("");
  const [isSubmitting, setIsSubmitting] = useState(false);

  const goalOptions = ["Perder peso", "Ganar músculo", "Mejorar rendimiento", "Otro"];
  const frequencyOptions = ["2 días", "3 días", "4 días", "5 días", "6 días"];
  const equipmentOptions = [
    "Gimnasio completo",
    "Equipamiento en casa",
    "Solo peso corporal",
  ];

  const handleNext = () => {
    if (step < 4) {
      setStep(step + 1);
    } else {
      setIsSubmitting(true);
      setTimeout(() => {
        setIsSubmitting(false);
        router.push("/dashboard/entrena-conmigo/espera");
      }, 700);
    }
  };

  return (
    <div className="min-h-screen bg-carbon flex flex-col items-center justify-center px-6 py-12 relative">
      <div className="w-full max-w-lg glass-card rounded-[2.5rem] p-8 md:p-10 border border-white/10 relative">
        {/* 4 Step Progress Bar */}
        <div className="grid grid-cols-4 gap-2 mb-6">
          {[1, 2, 3, 4].map((s) => (
            <div
              key={s}
              className={`h-1.5 rounded-full transition-all duration-300 ${
                step >= s ? "bg-copper-vibrant shadow-glow" : "bg-white/10"
              }`}
            />
          ))}
        </div>

        {/* Header */}
        <div className="text-center mb-8">
          <span className="text-[10px] font-black tracking-widest uppercase text-copper-vibrant">
            ENTRENA CONMIGO • PASO {step} DE 4
          </span>
          <h1 className="text-2xl sm:text-3xl font-black italic tracking-tight uppercase text-white mt-1 mb-2">
            CUÉNTANOS SOBRE TI
          </h1>
          <p className="text-xs text-ink-dim leading-relaxed">
            Vicky diseñará tu plan según estas respuestas
          </p>
        </div>

        {/* Step 1: Goal */}
        {step === 1 && (
          <div className="space-y-4">
            <label className="block text-xs font-bold uppercase tracking-wider text-ink-heading text-center mb-3">
              ¿Cuál es tu objetivo principal?
            </label>
            <div className="space-y-3">
              {goalOptions.map((opt) => (
                <button
                  key={opt}
                  type="button"
                  onClick={() => setGoal(opt)}
                  className={`w-full py-3.5 px-6 rounded-2xl border text-sm font-bold uppercase tracking-wider flex items-center justify-between transition-all ${
                    goal === opt
                      ? "bg-copper-primary border-copper-vibrant text-black shadow-glow"
                      : "bg-carbon-surface border-white/10 text-white hover:border-white/20"
                  }`}
                >
                  <span>{opt}</span>
                  {goal === opt && <Check size={18} strokeWidth={3} />}
                </button>
              ))}
            </div>
          </div>
        )}

        {/* Step 2: Frequency */}
        {step === 2 && (
          <div className="space-y-4">
            <label className="block text-xs font-bold uppercase tracking-wider text-ink-heading text-center mb-3">
              ¿Cuántos días por semana puedes entrenar?
            </label>
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
              {frequencyOptions.map((opt) => (
                <button
                  key={opt}
                  type="button"
                  onClick={() => setFrequency(opt)}
                  className={`py-4 px-6 rounded-2xl border text-sm font-bold uppercase tracking-wider flex items-center justify-between transition-all ${
                    frequency === opt
                      ? "bg-copper-primary border-copper-vibrant text-black shadow-glow"
                      : "bg-carbon-surface border-white/10 text-white hover:border-white/20"
                  }`}
                >
                  <span>{opt}</span>
                  {frequency === opt && <Check size={18} strokeWidth={3} />}
                </button>
              ))}
            </div>
          </div>
        )}

        {/* Step 3: Equipment */}
        {step === 3 && (
          <div className="space-y-4">
            <label className="block text-xs font-bold uppercase tracking-wider text-ink-heading text-center mb-3">
              ¿Qué equipamiento tienes disponible?
            </label>
            <div className="space-y-3">
              {equipmentOptions.map((opt) => (
                <button
                  key={opt}
                  type="button"
                  onClick={() => setEquipment(opt)}
                  className={`w-full py-3.5 px-6 rounded-2xl border text-sm font-bold uppercase tracking-wider flex items-center justify-between transition-all ${
                    equipment === opt
                      ? "bg-copper-primary border-copper-vibrant text-black shadow-glow"
                      : "bg-carbon-surface border-white/10 text-white hover:border-white/20"
                  }`}
                >
                  <span>{opt}</span>
                  {equipment === opt && <Check size={18} strokeWidth={3} />}
                </button>
              ))}
            </div>
          </div>
        )}

        {/* Step 4: Injuries / Notes */}
        {step === 4 && (
          <div className="space-y-4">
            <label className="block text-xs font-bold uppercase tracking-wider text-ink-heading text-center mb-1">
              ¿Tienes alguna lesión, dolor o limitación física?
            </label>
            <p className="text-[11px] text-ink-muted text-center mb-3">
              Opcional. Vicky lo tendrá en cuenta al armar tu rutina.
            </p>
            <textarea
              rows={4}
              value={injuries}
              onChange={(e) => setInjuries(e.target.value)}
              placeholder="Ej: Molestia en rodilla derecha al hacer sentadillas, lumbalgia ocasional..."
              className="w-full p-4 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
            />
          </div>
        )}

        {/* Wizard Controls */}
        <div className="flex items-center gap-3 mt-8">
          {step > 1 && (
            <button
              type="button"
              onClick={() => setStep(step - 1)}
              className="flex-1 py-4 rounded-2xl bg-carbon-surface hover:bg-white/10 border border-white/10 text-xs font-black tracking-widest uppercase text-ink-dim hover:text-white transition-all flex items-center justify-center gap-2"
            >
              <ArrowLeft size={16} />
              <span>ATRÁS</span>
            </button>
          )}

          <button
            type="button"
            disabled={isSubmitting}
            onClick={handleNext}
            className="flex-[2] py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] disabled:opacity-50 flex items-center justify-center gap-2"
          >
            <span>
              {step === 4
                ? isSubmitting
                  ? "Enviando..."
                  : "ENVIAR RESPUESTAS"
                : "CONTINUAR"}
            </span>
            <ArrowRight size={16} />
          </button>
        </div>
      </div>
    </div>
  );
}
