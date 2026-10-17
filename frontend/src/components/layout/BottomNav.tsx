"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { Home, LayoutGrid, BarChart3, User } from "lucide-react";

export function BottomNav() {
  const pathname = usePathname();

  // Don't show BottomNav on landing page or full exercise execution screen
  const isExerciseView = pathname.includes("/ejercicio/");
  const isVideoFullscreen = pathname.includes("/exito");
  if (isExerciseView || isVideoFullscreen) {
    return null;
  }

  const navItems = [
    { label: "HOME", href: "/dashboard", icon: Home },
    { label: "PLANES", href: "/#planes", icon: LayoutGrid },
    { label: "STATS", href: "/dashboard/stats", icon: BarChart3 },
    { label: "PERFIL", href: "/dashboard/perfil", icon: User },
  ];

  return (
    <nav className="fixed bottom-0 left-0 right-0 z-50 h-[84px] bg-black/60 backdrop-blur-2xl border-t border-white/10 px-6 flex items-center justify-around pb-2 transition-all">
      {navItems.map((item) => {
        const Icon = item.icon;
        const isActive =
          item.href === "/dashboard"
            ? pathname === "/dashboard" || pathname.startsWith("/dashboard/semana")
            : item.href === "/#planes"
            ? pathname.startsWith("/planes")
            : pathname.startsWith(item.href);

        return (
          <Link
            key={item.label}
            href={item.href}
            className={`flex flex-col items-center justify-center gap-1 py-1 px-3 transition-all duration-200 group ${
              isActive
                ? "text-copper-vibrant scale-105"
                : "text-ink-dim hover:text-white"
            }`}
          >
            <div
              className={`p-1 rounded-full transition-transform ${
                isActive ? "drop-shadow-[0_0_10px_rgba(255,107,74,0.6)]" : ""
              }`}
            >
              <Icon size={22} strokeWidth={isActive ? 2.5 : 1.75} />
            </div>
            <span
              className={`text-[10px] tracking-widest font-black uppercase ${
                isActive ? "text-copper-vibrant" : "text-ink-muted"
              }`}
            >
              {item.label}
            </span>
          </Link>
        );
      })}
    </nav>
  );
}
