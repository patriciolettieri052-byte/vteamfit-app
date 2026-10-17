"use client";

import { useState } from "react";
import Image from "next/image";
import Link from "next/link";
import { supabase } from "@/lib/supabase";
import { ArrowLeft, Mail, CheckCircle } from "lucide-react";

export default function RecuperarPage() {
  const [email, setEmail] = useState("");
  const [isSent, setIsSent] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState("");

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!email) return;
    setIsLoading(true);
    setErrorMsg("");

    try {
      const redirectUrl =
        typeof window !== "undefined"
          ? `${window.location.origin}/login`
          : undefined;

      const { error } = await supabase.auth.resetPasswordForEmail(
        email.trim().toLowerCase(),
        {
          redirectTo: redirectUrl,
        }
      );

      setIsLoading(false);
      if (error) {
        setErrorMsg(error.message);
      } else {
        setIsSent(true);
      }
    } catch (err: unknown) {
      setIsLoading(false);
      const message = err instanceof Error ? err.message : "Error al enviar email de recuperación";
      setErrorMsg(message);
    }
  };

  return (
    <div className="min-h-screen bg-carbon flex flex-col items-center justify-center px-6 py-12 relative">
      <Link
        href="/login"
        className="absolute top-6 left-6 px-4 py-2 rounded-full bg-carbon-surface border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover flex items-center gap-1.5 transition-all"
      >
        <ArrowLeft size={14} />
        <span>LOGIN</span>
      </Link>

      <div className="w-full max-w-sm glass-card rounded-[2rem] p-8 md:p-10 border border-white/10 relative">
        <div className="flex justify-center mb-8">
          <div className="relative w-36 h-12">
            <Image
              src="/images/logo.svg"
              alt="VTeamFit"
              fill
              priority
              className="object-contain"
            />
          </div>
        </div>

        {!isSent ? (
          <>
            <div className="text-center mb-8">
              <h1 className="text-2xl font-black italic tracking-tight uppercase text-white mb-2">
                RECUPERAR CONTRASEÑA
              </h1>
              <p className="text-xs text-ink-dim leading-relaxed">
                Te enviamos un link a tu email para resetear tu contraseña
              </p>
            </div>

            {errorMsg && (
              <div className="mb-6 p-3 rounded-xl bg-state-error/10 border border-state-error/30 text-state-error text-xs text-center font-semibold">
                {errorMsg}
              </div>
            )}

            <form onSubmit={handleSubmit} className="space-y-5">
              <div>
                <label className="block text-[11px] font-bold uppercase tracking-widest text-ink-dim mb-2">
                  EMAIL
                </label>
                <div className="relative">
                  <input
                    type="email"
                    required
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    placeholder="tu@email.com"
                    className="w-full px-4 py-3.5 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
                  />
                  <Mail className="absolute right-4 top-4 w-4 h-4 text-ink-muted" />
                </div>
              </div>

              <button
                type="submit"
                disabled={isLoading}
                className="w-full py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] active:scale-[0.98] disabled:opacity-50"
              >
                {isLoading ? "Enviando..." : "ENVIAR LINK"}
              </button>
            </form>
          </>
        ) : (
          <div className="text-center py-4">
            <div className="w-16 h-16 rounded-full bg-state-success/20 border border-state-success flex items-center justify-center text-state-success mx-auto mb-6">
              <CheckCircle size={32} />
            </div>
            <h2 className="text-2xl font-black italic uppercase text-white mb-2">
              REVISÁ TU EMAIL
            </h2>
            <p className="text-xs text-ink-dim leading-relaxed mb-8">
              Te enviamos un link para recuperar tu contraseña a{" "}
              <span className="text-white font-semibold">{email}</span>
            </p>
            <Link
              href="/login"
              className="block w-full py-4 rounded-2xl bg-carbon-surface hover:bg-white/10 border border-white/10 text-white text-xs font-black tracking-widest uppercase transition-all"
            >
              VOLVER AL LOGIN
            </Link>
          </div>
        )}
      </div>
    </div>
  );
}
