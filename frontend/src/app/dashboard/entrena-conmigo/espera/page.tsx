"use client";

import Image from "next/image";
import Link from "next/link";
import { MessageCircle, ArrowRight } from "lucide-react";

export default function EntrenaConmigoEsperaPage() {
  return (
    <div className="min-h-screen bg-carbon flex flex-col items-center justify-center px-6 py-12 relative overflow-hidden">
      {/* Diffuse background copper glow orb */}
      <div className="absolute w-[500px] h-[500px] bg-copper-primary/15 rounded-full blur-[120px] pointer-events-none" />

      <div className="w-full max-w-md glass-card rounded-[2.5rem] p-8 md:p-12 border border-white/10 text-center relative z-10">
        {/* Pulsing Badge */}
        <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-copper-primary/20 border border-copper-border mb-8 animate-pulse">
          <span className="w-2 h-2 rounded-full bg-copper-vibrant" />
          <span className="text-[10px] font-black tracking-widest uppercase text-copper-hover">
            EN PREPARACIÓN
          </span>
          <span className="w-2 h-2 rounded-full bg-copper-vibrant" />
        </div>

        {/* Circular portrait of Vicky Torres */}
        <div className="relative w-32 h-32 rounded-full overflow-hidden mx-auto mb-6 border-4 border-copper-border shadow-2xl">
          <Image
            src="/images/fotos/vicky-personalizado.jpg"
            alt="Vicky Torres"
            fill
            className="object-cover object-top"
          />
        </div>

        {/* Headlines */}
        <h1 className="text-3xl font-black italic tracking-tight uppercase text-white mb-2">
          ¡GRACIAS!
        </h1>
        <h2 className="text-lg font-bold text-copper-primary uppercase tracking-wider mb-4">
          Tu plan está en preparación.
        </h2>

        {/* Explanatory Body */}
        <p className="text-xs sm:text-sm text-ink-dim leading-relaxed mb-8">
          Vicky está revisando tus respuestas y diseñando tu entrenamiento personalizado.
          Te contactará en las próximas 24-48hs por WhatsApp.
        </p>

        {/* Tactical WhatsApp Button */}
        <a
          href="https://wa.me/34600000000?text=Hola%20Vicky,%20he%20completado%20mi%20cuestionario%20en%20VTeamFit!"
          target="_blank"
          rel="noopener noreferrer"
          className="w-full py-4 px-6 rounded-full bg-[#25D366] hover:bg-[#20ba59] text-white text-xs font-black tracking-widest uppercase transition-all shadow-[0_0_24px_rgba(37,211,102,0.4)] hover:scale-105 flex items-center justify-center gap-2 mb-4"
        >
          <MessageCircle size={18} />
          <span>ESCRIBIR A VICKY POR WHATSAPP</span>
        </a>

        {/* Secondary Dashboard access */}
        <Link
          href="/dashboard"
          className="inline-flex items-center gap-2 text-xs text-ink-muted hover:text-white transition-colors uppercase font-bold tracking-wider pt-2"
        >
          <span>Ir a mi panel general</span>
          <ArrowRight size={14} />
        </Link>
      </div>
    </div>
  );
}
