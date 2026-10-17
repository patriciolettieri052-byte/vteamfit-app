"use client";

import Link from "next/link";
import { ArrowLeft, Mail, ChevronDown } from "lucide-react";
import { useState } from "react";

export default function SoportePage() {
  const [openFaq, setOpenFaq] = useState<number | null>(null);

  const faqs = [
    {
      q: "¿Cómo accedo a mi plan de entrenamiento?",
      a: "Ingresa con tu usuario y contraseña. Tu plan estará disponible en tu dashboard personal.",
    },
    {
      q: "¿Puedo pausar mi plan?",
      a: "Una vez activado el plan, no se realizan reembolsos. Si tienes un problema, contáctanos a soporte@vteamfit.app.",
    },
    {
      q: "¿Cómo registro mi progreso?",
      a: "Desde tu dashboard puedes registrar tu peso semanal y marcar los días completados.",
    },
  ];

  return (
    <div className="min-h-screen bg-carbon text-ink-pure pb-32 pt-8 px-6 max-w-3xl mx-auto">
      {/* Return button */}
      <Link
        href="/dashboard/perfil"
        className="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-carbon-surface border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover transition-all mb-8 shadow-sm"
      >
        <ArrowLeft size={16} />
        <span>VOLVER</span>
      </Link>

      {/* Header */}
      <div className="mb-10">
        <span className="text-[10px] font-black tracking-widest uppercase text-copper-vibrant">
          CENTRO DE ATENCIÓN
        </span>
        <h1 className="text-3xl sm:text-4xl font-black italic uppercase tracking-tight text-white mt-1">
          SOPORTE Y AYUDA
        </h1>
        <div className="w-16 h-1 bg-copper-vibrant rounded-full mt-2 shadow-glow" />
      </div>

      {/* Direct Contact Card */}
      <div className="glass-card rounded-3xl p-6 md:p-8 border border-white/10 mb-8 flex flex-col sm:flex-row sm:items-center justify-between gap-6">
        <div>
          <h2 className="text-lg font-black italic uppercase text-white mb-1">
            Contacto Directo
          </h2>
          <p className="text-xs sm:text-sm text-ink-dim leading-relaxed">
            Para consultas, escríbenos directamente a nuestro equipo técnico y de atención.
          </p>
        </div>

        <a
          href="mailto:soporte@vteamfit.app"
          className="px-6 py-3.5 rounded-full bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-105 flex items-center justify-center gap-2 shrink-0"
        >
          <Mail size={16} />
          <span>soporte@vteamfit.app</span>
        </a>
      </div>

      {/* FAQ Accordions */}
      <div className="space-y-4">
        <h2 className="text-xs font-black uppercase tracking-widest text-copper-vibrant mb-2 px-1">
          PREGUNTAS FRECUENTES (FAQ)
        </h2>

        {faqs.map((faq, idx) => {
          const isOpen = openFaq === idx;
          return (
            <div
              key={idx}
              className="glass-panel rounded-2xl border border-white/10 overflow-hidden transition-all"
            >
              <button
                onClick={() => setOpenFaq(isOpen ? null : idx)}
                className="w-full p-5 text-left flex items-center justify-between gap-4 hover:bg-white/5 transition-colors"
              >
                <span className="text-sm font-bold text-white uppercase tracking-wide">
                  {faq.q}
                </span>
                <ChevronDown
                  size={18}
                  className={`text-copper-primary transition-transform duration-300 shrink-0 ${
                    isOpen ? "rotate-180" : ""
                  }`}
                />
              </button>

              {isOpen && (
                <div className="px-5 pb-5 pt-1 text-xs sm:text-sm text-ink-dim border-t border-white/5 leading-relaxed animate-fadeIn">
                  {faq.a}
                </div>
              )}
            </div>
          );
        })}
      </div>
    </div>
  );
}
