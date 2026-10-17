"use client";

import { useState } from "react";
import Image from "next/image";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAppStore } from "@/lib/store";
import { ArrowLeft, Lock, Mail } from "lucide-react";

export default function LoginPage() {
  const router = useRouter();
  const { updateProfile } = useAppStore();

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState("");

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!email || !password) {
      setErrorMsg("Email o contraseña incorrectos");
      return;
    }

    setIsLoading(true);
    setErrorMsg("");

    setTimeout(() => {
      setIsLoading(false);
      updateProfile({ email, name: email.split("@")[0] });
      router.push("/dashboard");
    }, 600);
  };

  return (
    <div className="min-h-screen bg-carbon flex flex-col items-center justify-center px-6 py-12 relative">
      {/* Return link */}
      <Link
        href="/"
        className="absolute top-6 left-6 px-4 py-2 rounded-full bg-carbon-surface border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover flex items-center gap-1.5 transition-all"
      >
        <ArrowLeft size={14} />
        <span>INICIO</span>
      </Link>

      <div className="w-full max-w-sm glass-card rounded-[2rem] p-8 md:p-10 border border-white/10 relative">
        {/* Logo */}
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

        {/* Headings */}
        <div className="text-center mb-8">
          <h1 className="text-2xl font-black italic tracking-tight uppercase text-white mb-2">
            BIENVENIDA
          </h1>
          <p className="text-xs text-ink-dim leading-relaxed">
            Iniciá sesión para continuar tu entrenamiento
          </p>
        </div>

        {errorMsg && (
          <div className="mb-6 p-3 rounded-xl bg-state-error/10 border border-state-error/30 text-state-error text-xs text-center font-semibold">
            {errorMsg}
          </div>
        )}

        {/* Form */}
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

          <div>
            <div className="flex justify-between items-center mb-2">
              <label className="text-[11px] font-bold uppercase tracking-widest text-ink-dim">
                CONTRASEÑA
              </label>
              <Link
                href="/recuperar"
                className="text-[11px] text-copper-hover hover:text-copper-vibrant font-medium"
              >
                ¿Olvidaste tu contraseña?
              </Link>
            </div>
            <div className="relative">
              <input
                type="password"
                required
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                placeholder="••••••••"
                className="w-full px-4 py-3.5 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
              />
              <Lock className="absolute right-4 top-4 w-4 h-4 text-ink-muted" />
            </div>
          </div>

          <button
            type="submit"
            disabled={isLoading}
            className="w-full py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] active:scale-[0.98] disabled:opacity-50 mt-2"
          >
            {isLoading ? "Iniciando..." : "INICIAR SESIÓN"}
          </button>
        </form>

        {/* Footer links */}
        <div className="mt-8 pt-6 border-t border-white/5 text-center space-y-3">
          <p className="text-xs text-ink-dim">
            ¿No tienes cuenta?{" "}
            <Link
              href="/registro"
              className="text-copper-hover hover:text-copper-vibrant font-bold ml-1 uppercase tracking-wider"
            >
              Crear cuenta
            </Link>
          </p>
          <div>
            <Link
              href="/#planes"
              className="text-xs text-ink-muted hover:text-white transition-colors"
            >
              Ver planes disponibles
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
}
