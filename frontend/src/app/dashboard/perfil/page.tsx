"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAppStore } from "@/lib/store";
import {
  User,
  ShieldCheck,
  HelpCircle,
  LogOut,
  ChevronRight,
  Scale,
  Ruler,
  Calendar,
} from "lucide-react";

export default function PerfilPage() {
  const router = useRouter();
  const { profile, updateProfile } = useAppStore();

  const handleLogout = () => {
    if (confirm("¿Quieres cerrar sesión?")) {
      updateProfile({
        name: "Atleta VTeam",
        email: "atleta@vteamfit.app",
      });
      router.push("/login");
    }
  };

  return (
    <div className="min-h-screen bg-carbon text-ink-pure pb-32 pt-8 px-4 sm:px-6 max-w-2xl mx-auto">
      {/* Profile Header */}
      <div className="flex flex-col items-center text-center mb-10">
        <div className="w-20 h-20 rounded-full bg-copper-primary border-4 border-copper-border text-black font-black italic text-3xl flex items-center justify-center shadow-glow mb-4">
          {profile.name[0]?.toUpperCase() || "A"}
        </div>
        <h1 className="text-2xl font-black italic uppercase tracking-tight text-white mb-1">
          {profile.name}
        </h1>
        <p className="text-xs text-ink-dim font-medium">{profile.email}</p>
      </div>

      {/* Mis Datos Biometrics Grid */}
      <div className="glass-card rounded-3xl p-6 md:p-8 border border-white/10 mb-8">
        <h2 className="text-xs font-black uppercase tracking-widest text-copper-vibrant mb-6">
          MIS DATOS
        </h2>

        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
          {/* Peso */}
          <div className="glass-panel rounded-2xl p-4 border border-white/5 text-center">
            <Scale className="w-4 h-4 text-copper-primary mx-auto mb-1.5" />
            <span className="text-[10px] font-bold uppercase tracking-widest text-ink-muted block">
              PESO
            </span>
            <span className="text-lg font-black italic text-white">
              {profile.weight} kg
            </span>
          </div>

          {/* Altura */}
          <div className="glass-panel rounded-2xl p-4 border border-white/5 text-center">
            <Ruler className="w-4 h-4 text-copper-primary mx-auto mb-1.5" />
            <span className="text-[10px] font-bold uppercase tracking-widest text-ink-muted block">
              ALTURA
            </span>
            <span className="text-lg font-black italic text-white">
              {profile.height} cm
            </span>
          </div>

          {/* Edad */}
          <div className="glass-panel rounded-2xl p-4 border border-white/5 text-center">
            <Calendar className="w-4 h-4 text-copper-primary mx-auto mb-1.5" />
            <span className="text-[10px] font-bold uppercase tracking-widest text-ink-muted block">
              EDAD
            </span>
            <span className="text-lg font-black italic text-white">
              {profile.age} años
            </span>
          </div>

          {/* Género */}
          <div className="glass-panel rounded-2xl p-4 border border-white/5 text-center">
            <User className="w-4 h-4 text-copper-primary mx-auto mb-1.5" />
            <span className="text-[10px] font-bold uppercase tracking-widest text-ink-muted block">
              GÉNERO
            </span>
            <span className="text-sm font-black italic uppercase text-white truncate block">
              {profile.gender || "Mujer"}
            </span>
          </div>
        </div>
      </div>

      {/* Cuenta y Preferencias Menu */}
      <div className="glass-card rounded-3xl p-6 border border-white/10 space-y-2 mb-8">
        <h2 className="text-xs font-black uppercase tracking-widest text-copper-vibrant mb-4 px-2">
          CUENTA Y PREFERENCIAS
        </h2>

        <Link
          href="/soporte"
          className="flex items-center justify-between p-4 rounded-2xl hover:bg-white/5 transition-colors group"
        >
          <div className="flex items-center gap-3">
            <HelpCircle size={18} className="text-ink-muted group-hover:text-copper-hover" />
            <span className="text-sm font-semibold text-white">Soporte y Ayuda</span>
          </div>
          <ChevronRight size={18} className="text-ink-muted group-hover:translate-x-1 transition-transform" />
        </Link>

        <Link
          href="/politicas"
          className="flex items-center justify-between p-4 rounded-2xl hover:bg-white/5 transition-colors group"
        >
          <div className="flex items-center gap-3">
            <ShieldCheck size={18} className="text-ink-muted group-hover:text-copper-hover" />
            <span className="text-sm font-semibold text-white">Políticas Legales</span>
          </div>
          <ChevronRight size={18} className="text-ink-muted group-hover:translate-x-1 transition-transform" />
        </Link>
      </div>

      {/* Logout Button */}
      <button
        onClick={handleLogout}
        className="w-full py-4 rounded-2xl bg-carbon-surface hover:bg-state-error/10 border border-white/10 hover:border-state-error/30 text-ink-dim hover:text-state-error text-xs font-black tracking-widest uppercase transition-all flex items-center justify-center gap-2"
      >
        <LogOut size={16} />
        <span>CERRAR SESIÓN</span>
      </button>
    </div>
  );
}
