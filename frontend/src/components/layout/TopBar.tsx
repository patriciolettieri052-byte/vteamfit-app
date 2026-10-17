"use client";

import Link from "next/link";
import Image from "next/image";
import { useAppStore } from "@/lib/store";

export function TopBar() {
  const { profile } = useAppStore();

  return (
    <header className="fixed top-0 left-0 right-0 z-50 h-20 px-4 md:px-8 flex items-center justify-between bg-carbon/80 backdrop-blur-md border-b border-white/5 transition-all">
      {/* Brand Logo */}
      <Link href="/" className="flex items-center gap-2 group">
        <div className="relative w-32 md:w-40 h-10 transition-transform group-hover:scale-105">
          <Image
            src="/images/logo.svg"
            alt="VTeamFit"
            fill
            priority
            className="object-contain object-left"
          />
        </div>
      </Link>

      {/* Right controls: Language & Auth */}
      <div className="flex items-center gap-3 md:gap-5">
        {/* Language selector */}
        <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-carbon-surface border border-white/10 text-xs font-semibold tracking-wider text-ink-dim hover:text-white transition-colors cursor-pointer">
          <Image
            src="https://flagcdn.com/es.svg"
            alt="ES"
            width={18}
            height={18}
            className="w-[18px] h-[18px] object-cover rounded-full"
          />
          <span>ES</span>
        </div>

        {/* Auth CTA or User Avatar */}
        {profile?.name ? (
          <Link
            href="/dashboard"
            className="flex items-center gap-2 px-4 py-2 rounded-full bg-copper-primary/20 border border-copper-border text-copper-hover hover:border-copper-vibrant text-xs font-bold tracking-widest uppercase transition-all shadow-glow hover:scale-105"
          >
            <div className="w-5 h-5 rounded-full bg-copper-primary text-black font-black flex items-center justify-center text-[10px]">
              {profile.name[0]?.toUpperCase() || "A"}
            </div>
            <span className="hidden sm:inline">MI DASHBOARD</span>
          </Link>
        ) : (
          <Link
            href="/login"
            className="px-5 py-2.5 rounded-full bg-copper-vibrant hover:bg-copper-hover text-white text-xs font-black tracking-widest uppercase transition-all shadow-glow hover:scale-105"
          >
            INICIA SESIÓN
          </Link>
        )}
      </div>
    </header>
  );
}
