import type { Metadata } from "next";
import { Outfit } from "next/font/google";
import "./globals.css";
import { BottomNav } from "@/components/layout/BottomNav";

const outfit = Outfit({
  subsets: ["latin"],
  variable: "--font-outfit",
  weight: ["300", "400", "500", "600", "700", "800", "900"],
  display: "swap",
});

export const metadata: Metadata = {
  title: "VTeamFit | Tu Mejor Versión",
  description:
    "Planes de entrenamiento de alto rendimiento, fuerza y pádel por Victoria Torres y Tito Allemandi.",
  icons: {
    icon: "/images/logo.svg",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="es" className={`${outfit.variable} dark`}>
      <body className="font-outfit antialiased min-h-screen text-ink-pure bg-carbon selection:bg-copper-vibrant selection:text-white flex flex-col justify-between">
        <main className="flex-1 w-full">{children}</main>
        <BottomNav />
      </body>
    </html>
  );
}
