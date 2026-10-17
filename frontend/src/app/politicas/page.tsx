"use client";

import Link from "next/link";
import { ArrowLeft } from "lucide-react";

export default function PoliticasPage() {
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
          MARCO REGULATORIO
        </span>
        <h1 className="text-3xl sm:text-4xl font-black italic uppercase tracking-tight text-white mt-1">
          POLÍTICAS LEGALES
        </h1>
        <div className="w-16 h-1 bg-copper-vibrant rounded-full mt-2 shadow-glow" />
      </div>

      <div className="space-y-6">
        {/* Términos de Uso */}
        <section className="glass-card rounded-3xl p-6 md:p-8 border-l-4 border-l-copper-primary border-white/10">
          <h2 className="text-lg font-black italic uppercase text-white mb-4">
            Términos de Uso
          </h2>
          <ul className="space-y-2 text-xs sm:text-sm text-ink-dim leading-relaxed list-disc list-inside">
            <li>Al acceder y usar VTeamFit aceptás los presentes términos.</li>
            <li>Los planes de entrenamiento son de uso personal e intransferible.</li>
            <li>
              El contenido de los planes (videos, rutinas, guías) es propiedad de VTeamFit y
              no puede ser reproducido ni distribuido sin autorización.
            </li>
          </ul>
        </section>

        {/* Política de Privacidad */}
        <section className="glass-card rounded-3xl p-6 md:p-8 border-l-4 border-l-copper-primary border-white/10">
          <h2 className="text-lg font-black italic uppercase text-white mb-4">
            Política de Privacidad
          </h2>
          <ul className="space-y-2 text-xs sm:text-sm text-ink-dim leading-relaxed list-disc list-inside">
            <li>
              Los datos que recopilamos (nombre, email, métricas físicas) se usan
              exclusivamente para personalizar tu experiencia en la plataforma.
            </li>
            <li>No compartimos tu información con terceros.</li>
            <li>
              Para solicitar la eliminación de tus datos, escribinos a{" "}
              <a
                href="mailto:soporte@vteamfit.app"
                className="text-copper-hover hover:underline"
              >
                soporte@vteamfit.app
              </a>
              .
            </li>
          </ul>
        </section>

        {/* Responsabilidad y Salud */}
        <section className="glass-card rounded-3xl p-6 md:p-8 border-l-4 border-l-copper-primary border-white/10">
          <h2 className="text-lg font-black italic uppercase text-white mb-4">
            Responsabilidad y Salud
          </h2>
          <ul className="space-y-2 text-xs sm:text-sm text-ink-dim leading-relaxed list-disc list-inside">
            <li>
              VTeamFit no se hace responsable de ninguna lesión que pueda sufrir el cliente
              durante la realización de los entrenamientos.
            </li>
            <li>
              No nos hacemos responsables si el cliente no percibe cambios físicos o
              mejoras; cada usuario es responsable de su propio progreso y de la correcta
              ejecución de los ejercicios.
            </li>
            <li>
              Recomendamos consultar con un profesional de la salud antes de comenzar
              cualquier programa de ejercicio intenso.
            </li>
          </ul>
        </section>

        {/* Pagos y Reembolsos */}
        <section className="glass-card rounded-3xl p-6 md:p-8 border-l-4 border-l-copper-primary border-white/10">
          <h2 className="text-lg font-black italic uppercase text-white mb-4">
            Pagos y Reembolsos
          </h2>
          <ul className="space-y-2 text-xs sm:text-sm text-ink-dim leading-relaxed list-disc list-inside">
            <li>Los pagos se procesan de forma segura a través de PayPal.</li>
            <li>
              Una vez activado el plan, no se realizan reembolsos. Si tienes un problema,
              contáctanos a{" "}
              <a
                href="mailto:soporte@vteamfit.app"
                className="text-copper-hover hover:underline"
              >
                soporte@vteamfit.app
              </a>
              .
            </li>
          </ul>
        </section>
      </div>
    </div>
  );
}
