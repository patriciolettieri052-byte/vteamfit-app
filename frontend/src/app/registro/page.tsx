"use client";

import { useState } from "react";
import Image from "next/image";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAppStore } from "@/lib/store";
import { ArrowLeft, User, Mail, Lock } from "lucide-react";

export default function RegisterPage() {
  const router = useRouter();
  const { updateProfile } = useAppStore();

  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [errorMsg, setErrorMsg] = useState("");

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!name || !email || password.length < 6) {
      setErrorMsg("Completa todos los campos (contraseña mínimo 6 caracteres)");
      return;
    }

    setIsLoading(true);
    setErrorMsg("");

    setTimeout(() => {
      setIsLoading(false);
      updateProfile({ name, email });
      router.push("/onboarding");
    }, 600);
  };

  return (
    <div className="min-h-screen bg-carbon flex flex-col items-center justify-center px-6 py-12 relative">
      <Link
        href="/"
        className="absolute top-6 left-6 px-4 py-2 rounded-full bg-carbon-surface border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover flex items-center gap-1.5 transition-all"
      >
        <ArrowLeft size={14} />
        <span>INICIO</span>
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

        <div className="text-center mb-8">
          <h1 className="text-2xl font-black italic tracking-tight uppercase text-white mb-2">
            CREAR CUENTA
          </h1>
          <p className="text-xs text-ink-dim leading-relaxed">
            Último paso para empezar tu transformación
          </p>
        </div>

        {errorMsg && (
          <div className="mb-6 p-3 rounded-xl bg-state-error/10 border border-state-error/30 text-state-error text-xs text-center font-semibold">
            {errorMsg}
          </div>
        )}

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="block text-[11px] font-bold uppercase tracking-widest text-ink-dim mb-2">
              NOMBRE
            </label>
            <div className="relative">
              <input
                type="text"
                required
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="Tu nombre"
                className="w-full px-4 py-3.5 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
              />
              <User className="absolute right-4 top-4 w-4 h-4 text-ink-muted" />
            </div>
          </div>

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
            <label className="block text-[11px] font-bold uppercase tracking-widest text-ink-dim mb-2">
              CONTRASEÑA
            </label>
            <div className="relative">
              <input
                type="password"
                required
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                placeholder="Mínimo 6 caracteres"
                className="w-full px-4 py-3.5 rounded-2xl bg-carbon-solid border border-white/10 text-sm text-white placeholder:text-ink-muted focus:outline-none focus:border-copper-vibrant transition-colors"
              />
              <Lock className="absolute right-4 top-4 w-4 h-4 text-ink-muted" />
            </div>
          </div>

          <button
            type="submit"
            disabled={isLoading}
            className="w-full py-4 rounded-2xl bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-[1.02] active:scale-[0.98] disabled:opacity-50 mt-4"
          >
            {isLoading ? "Creando cuenta..." : "CREAR CUENTA"}
          </button>
        </form>

        <div className="mt-8 pt-6 border-t border-white/5 text-center space-y-3">
          <p className="text-xs text-ink-dim">
            ¿Ya tienes cuenta?{" "}
            <Link
              href="/login"
              className="text-copper-hover hover:text-copper-vibrant font-bold ml-1 uppercase tracking-wider"
            >
              Inicia sesión
            </Link>
          </p>
          <p className="text-[10px] text-ink-muted leading-relaxed">
            Al registrarte aceptás nuestros{" "}
            <Link href="/politicas" className="underline hover:text-white">
              términos y condiciones
            </Link>
          </p>
        </div>
      </div>
    </div>
  );
}
