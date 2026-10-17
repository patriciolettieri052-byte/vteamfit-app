"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import Image from "next/image";
import { useAppStore } from "@/lib/store";
import { Check, ArrowRight, ArrowLeft } from "lucide-react";

export default function OnboardingPage() {
  const router = useRouter();
  const { profile, updateProfile, addWeightRecord } = useAppStore();

  const [step, setStep] = useState<1 | 2>(1);
  const [gender, setGender] = useState(profile.gender || "Mujer");
  const [weight, setWeight] = useState(profile.weight ? profile.weight.toString() : "65");
  const [height, setHeight] = useState(profile.height ? profile.height.toString() : "168");
  const [age, setAge] = useState(profile.age ? profile.age.toString() : "27");
  const [isLoading, setIsLoading] = useState(false);

  const handleNext = () => {
    if (step === 1) {
      setStep(2);
    } else {
      setIsLoading(true);
      const numWeight = parseFloat(weight) || 65;
      const numHeight = parseInt(height, 10) || 168;
      const numAge = parseInt(age, 10) || 27;

      Promise.all([
        updateProfile({
          gender,
          weight: numWeight,
          height: numHeight,
          age: numAge,
        }),
        addWeightRecord(numWeight),
      ]).finally(() => {
        setIsLoading(false);
        router.push("/dashboard");
      });
    }
  };

  const genderOptions = ["Mujer", "Hombre", "Prefiero no decir"];

  return (
    <div className="min-h-screen bg-carbon flex flex-col items-center justify-center px-6 py-12 relative">
      <div className="w-full max-w-md glass-card rounded-[2.5rem] p-8 md:p-10 border border-white/10 relative">
        {/* Progress Bar (2 segments) */}
        <div className="grid grid-cols-2 gap-2 mb-8">
          <div
            className={`h-1.5 rounded-full transition-all duration-300 ${
              step >= 1 ? "bg-copper-vibrant shadow-glow" : "bg-white/10"
            }`}
          />
          <div
            className={`h-1.5 rounded-full transition-all duration-300 ${
              step >= 2 ? "bg-copper-vibrant shadow-glow" : "bg-white/10"
            }`}
          />
        </div>

        {/* Logo */}
        <div className="flex justify-center mb-6">
          <div className="relative w-32 h-10">
            <Image
              src="/images/logo.svg"
              alt="VTeamFit"
              fill
              priority
              className="object-contain"
            />
          </div>
        </div>

        {step === 1 ? (
          <div>
            <div className="text-center mb-8">
              <h1 className="text-3xl font-black italic tracking-tight uppercase text-white mb-2">
                HOLA 👋
              </h1>
              <p className="text-xs text-ink-dim leading-relaxed">
                Cuéntanos un poco sobre ti para personalizar tu experiencia
              </p>
            </div>

            <div className="mb-8">
              <label className="block text-[11px] font-bold uppercase tracking-widest text-ink-dim mb-4 text-center">
                ¿CON QUÉ GÉNERO TE IDENTIFICÁS?
              </label>
              <div className="space-y-3">
                {genderOptions.map((opt) => (
                  <button
                    key={opt}
                    type="button"
                    onClick={() => setGender(opt)}
                    className={`w-full py-4 px-6 rounded-2xl border text-sm font-bold uppercase tracking-wider flex items-center justify-between transition-all ${
                      gender === opt
                        ? "bg-copper-primary border-copper-vibrant text-black shadow-glow"
                        : "bg-carbon-surface border-white/10 text-white hover:border-white/20"
                    }`}
                  >
                    <span>{opt}</span>
                    {gender === opt && <Check size={18} strokeWidth={3} />}
                  </button>
                ))}
              </div>
            </div>

            <button
              onClick={handleNext}
              className="w-full py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] flex items-center justify-center gap-2"
            >
              <span>CONTINUAR</span>
              <ArrowRight size={16} />
            </button>
          </div>
        ) : (
          <div>
            <div className="text-center mb-8">
              <h1 className="text-3xl font-black italic tracking-tight uppercase text-white mb-2">
                TUS MÉTRICAS
              </h1>
              <p className="text-xs text-ink-dim leading-relaxed">
                Estos datos nos ayudan a personalizar tu plan. Puedes actualizarlos después.
              </p>
            </div>

            <div className="space-y-4 mb-6">
              <div>
                <label className="block text-[11px] font-bold uppercase tracking-widest text-ink-dim mb-2">
                  PESO (KG)
                </label>
                <input
                  type="number"
                  value={weight}
                  onChange={(e) => setWeight(e.target.value)}
                  placeholder="Ej: 65"
                  className="w-full px-4 py-3.5 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
                />
              </div>

              <div>
                <label className="block text-[11px] font-bold uppercase tracking-widest text-ink-dim mb-2">
                  ALTURA (CM)
                </label>
                <input
                  type="number"
                  value={height}
                  onChange={(e) => setHeight(e.target.value)}
                  placeholder="Ej: 165"
                  className="w-full px-4 py-3.5 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
                />
              </div>

              <div>
                <label className="block text-[11px] font-bold uppercase tracking-widest text-ink-dim mb-2">
                  EDAD
                </label>
                <input
                  type="number"
                  value={age}
                  onChange={(e) => setAge(e.target.value)}
                  placeholder="Ej: 28"
                  className="w-full px-4 py-3.5 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
                />
              </div>
            </div>

            <p className="text-[11px] text-ink-muted text-center mb-6">
              Todos los campos son opcionales — puedes completarlos después
            </p>

            <div className="flex items-center gap-3">
              <button
                type="button"
                onClick={() => setStep(1)}
                className="flex-1 py-4 rounded-2xl bg-carbon-surface hover:bg-white/10 border border-white/10 text-xs font-black tracking-widest uppercase text-ink-dim hover:text-white transition-all flex items-center justify-center gap-2"
              >
                <ArrowLeft size={16} />
                <span>ATRÁS</span>
              </button>

              <button
                type="button"
                disabled={isLoading}
                onClick={handleNext}
                className="flex-[2] py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] disabled:opacity-50 flex items-center justify-center gap-2"
              >
                <span>{isLoading ? "Guardando..." : "¡EMPEZAR!"}</span>
              </button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
