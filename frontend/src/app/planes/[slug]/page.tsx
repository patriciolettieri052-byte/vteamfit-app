"use client";

import { useState } from "react";
import { useParams, useRouter } from "next/navigation";
import Image from "next/image";
import Link from "next/link";
import { getPlanBySlug, PLANS_CATALOG } from "@/lib/plans-catalog";
import { useAppStore } from "@/lib/store";
import {
  ArrowLeft,
  CheckCircle2,
  Tag,
  Dumbbell,
  Calendar,
  Sparkles,
  ShieldCheck,
} from "lucide-react";

export default function PlanDetailPage() {
  const params = useParams();
  const router = useRouter();
  const slug = params?.slug as string;
  const plan = getPlanBySlug(slug) || PLANS_CATALOG[0];
  const { profile, updateProfile } = useAppStore();

  const [showCoupon, setShowCoupon] = useState(false);
  const [couponCode, setCouponCode] = useState("");
  const [discountPercent, setDiscountPercent] = useState<number>(0);
  const [couponError, setCouponError] = useState("");
  const [isProcessing, setIsProcessing] = useState(false);

  const applyCoupon = () => {
    setCouponError("");
    const code = couponCode.trim().toUpperCase();
    if (code === "VTEAM100" || code === "TESTER" || code === "VICKY") {
      setDiscountPercent(100);
    } else if (code === "VTEAM50") {
      setDiscountPercent(50);
    } else {
      setCouponError("Código inválido o expirado");
    }
  };

  const handleCheckout = async () => {
    setIsProcessing(true);

    if (profile.id) {
      try {
        await fetch("/api/enrollments", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            userId: profile.id,
            planId: plan.id,
          }),
        });
        await updateProfile({ activePlanId: plan.id });
      } catch (e) {
        console.warn("Could not save enrollment:", e);
      }

      setIsProcessing(false);
      if (plan.id === "entrena-conmigo") {
        router.push("/dashboard/entrena-conmigo/onboarding");
      } else {
        router.push("/dashboard");
      }
    } else {
      // User needs to register or log in first
      setIsProcessing(false);
      router.push(`/registro?plan=${plan.id}`);
    }
  };

  const finalPrice =
    discountPercent > 0
      ? discountPercent === 100
        ? "GRATIS"
        : `$${(plan.priceValue * (1 - discountPercent / 100)).toFixed(2)}`
      : plan.priceDisplay;

  return (
    <div className="relative min-h-screen bg-carbon text-ink-pure pb-32">
      {/* Top Floating Controls */}
      <div className="fixed top-0 left-0 right-0 z-40 h-20 px-6 flex items-center justify-between pointer-events-none">
        <Link
          href="/#planes"
          className="pointer-events-auto px-4 py-2 rounded-full bg-black/60 backdrop-blur-xl border border-white/10 text-xs font-bold tracking-widest uppercase hover:text-copper-hover hover:border-copper-border transition-all flex items-center gap-2 shadow-lg"
        >
          <ArrowLeft size={16} />
          <span>VOLVER</span>
        </Link>
        <div className="pointer-events-auto flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-black/60 backdrop-blur-xl border border-white/10 text-xs font-semibold text-ink-dim">
          <Image
            src="https://flagcdn.com/es.svg"
            alt="ES"
            width={16}
            height={16}
            className="w-4 h-4 rounded-full object-cover"
          />
          <span>ES</span>
        </div>
      </div>

      {/* Hero Banner with Cover Photo */}
      <div className="relative w-full h-[55vh] min-h-[380px] overflow-hidden bg-neutral-900">
        <Image
          src={plan.image}
          alt={plan.title}
          fill
          priority
          className="object-cover"
          style={{ objectPosition: plan.objectPosition || "center" }}
        />
        <div className="absolute inset-0 bg-gradient-to-t from-carbon via-carbon/60 to-black/30" />

        {/* Hero Overlay Content */}
        <div className="absolute bottom-10 left-0 right-0 px-6 max-w-4xl mx-auto flex flex-col items-start">
          <div className="flex items-center gap-2 mb-3">
            {plan.badge && (
              <span className="px-3 py-1 rounded-full bg-copper-vibrant text-white text-[10px] font-black uppercase tracking-widest shadow-md">
                {plan.badge}
              </span>
            )}
            <span className="px-3.5 py-1 rounded-full bg-black/70 backdrop-blur-md border border-white/10 text-copper-primary text-xs font-bold tracking-widest uppercase">
              {plan.durationBadge}
            </span>
          </div>

          <h1 className="text-3xl sm:text-5xl md:text-6xl font-black italic tracking-tighter uppercase leading-tight text-white drop-shadow-md">
            {plan.title}
          </h1>
          <p className="text-xs sm:text-sm text-copper-primary font-bold uppercase tracking-widest mt-1">
            Por {plan.instructor}
          </p>
        </div>
      </div>

      {/* Main Container */}
      <div className="max-w-4xl mx-auto px-6 mt-8 space-y-8">
        {/* About this plan */}
        <div className="glass-card rounded-[2rem] p-7 md:p-9 relative overflow-hidden">
          <div className="flex items-center gap-2 mb-3">
            <Sparkles className="w-5 h-5 text-copper-vibrant" />
            <h2 className="text-xs font-black uppercase tracking-widest text-copper-vibrant">
              ACERCA DE ESTE PLAN
            </h2>
          </div>
          <p className="text-base md:text-lg text-ink-heading leading-relaxed font-normal">
            {plan.description}
          </p>
        </div>

        {/* Methodology & System Twin Boxes */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div className="glass-panel rounded-3xl p-7 border border-white/5 hover:border-copper-border/50 transition-all">
            <div className="w-10 h-10 rounded-2xl bg-copper-primary/10 border border-copper-border flex items-center justify-center text-copper-vibrant mb-4">
              <Dumbbell size={20} />
            </div>
            <h3 className="text-xs font-black uppercase tracking-widest text-ink-pure mb-2">
              METODOLOGÍA
            </h3>
            <p className="text-sm text-ink-dim leading-relaxed">
              {plan.methodology}
            </p>
          </div>

          <div className="glass-panel rounded-3xl p-7 border border-white/5 hover:border-copper-border/50 transition-all">
            <div className="w-10 h-10 rounded-2xl bg-copper-primary/10 border border-copper-border flex items-center justify-center text-copper-vibrant mb-4">
              <Calendar size={20} />
            </div>
            <h3 className="text-xs font-black uppercase tracking-widest text-ink-pure mb-2">
              SISTEMA
            </h3>
            <p className="text-sm text-ink-dim leading-relaxed">
              {plan.system}
            </p>
          </div>
        </div>

        {/* Features Checklist */}
        <div className="glass-card rounded-3xl p-7">
          <h3 className="text-xs font-black uppercase tracking-widest text-copper-vibrant mb-5">
            TODO LO QUE INCLUYE
          </h3>
          <ul className="space-y-3.5 text-sm text-ink-body">
            <li className="flex items-center gap-3">
              <CheckCircle2 className="w-5 h-5 text-state-success shrink-0" />
              <span>Acceso ilimitado a todas las rutinas estructuradas y progresivas</span>
            </li>
            <li className="flex items-center gap-3">
              <CheckCircle2 className="w-5 h-5 text-state-success shrink-0" />
              <span>Videos demostrativos en HD con reproducción continua y sin interrupciones</span>
            </li>
            <li className="flex items-center gap-3">
              <CheckCircle2 className="w-5 h-5 text-state-success shrink-0" />
              <span>Registro táctil de series, repeticiones y cargas (kg) por sesión</span>
            </li>
            <li className="flex items-center gap-3">
              <CheckCircle2 className="w-5 h-5 text-state-success shrink-0" />
              <span>Seguimiento de peso corporal y rachas de constancia</span>
            </li>
            {plan.isPersonalized && (
              <li className="flex items-center gap-3 text-copper-hover font-semibold">
                <CheckCircle2 className="w-5 h-5 text-copper-vibrant shrink-0" />
                <span>Contacto directo 1 a 1 vía WhatsApp con Vicky Torres</span>
              </li>
            )}
          </ul>
        </div>

        {/* Security & Guarantee Note */}
        <div className="flex items-center justify-center gap-2 text-xs text-ink-muted">
          <ShieldCheck size={16} className="text-copper-primary" />
          <span>Pago seguro SSL y acceso inmediato a tu panel de atleta</span>
        </div>
      </div>

      {/* Fixed Bottom Action Bar */}
      <div className="fixed bottom-0 left-0 right-0 z-40 bg-black/90 backdrop-blur-2xl border-t border-white/10 px-6 py-4">
        <div className="max-w-4xl mx-auto flex flex-col gap-3">
          {/* Coupon Accordion Link */}
          <div className="flex items-center justify-between text-xs">
            <button
              onClick={() => setShowCoupon(!showCoupon)}
              className="text-copper-hover hover:text-copper-vibrant flex items-center gap-1.5 font-bold tracking-wider uppercase transition-colors"
            >
              <Tag size={13} />
              <span>¿Tienes un código de descuento?</span>
            </button>
            {discountPercent > 0 && (
              <span className="text-state-success font-black uppercase tracking-wider">
                Descuento aplicado: {discountPercent}% OFF
              </span>
            )}
          </div>

          {/* Coupon Input Drawer */}
          {showCoupon && (
            <div className="flex items-center gap-2 pt-1 animate-fadeIn">
              <input
                type="text"
                placeholder="CÓDIGO (Ej: VTEAM100)"
                value={couponCode}
                onChange={(e) => setCouponCode(e.target.value)}
                className="flex-1 px-4 py-2 rounded-xl bg-carbon-surface border border-white/20 text-xs font-bold uppercase tracking-widest text-white focus:outline-none focus:border-copper-vibrant"
              />
              <button
                onClick={applyCoupon}
                className="px-5 py-2 rounded-xl bg-copper-primary hover:bg-copper-hover text-black text-xs font-black uppercase tracking-wider transition-colors"
              >
                Aplicar
              </button>
            </div>
          )}
          {couponError && (
            <p className="text-[11px] text-state-error font-medium">{couponError}</p>
          )}

          {/* Main Price & CTA */}
          <div className="flex items-center justify-between gap-4">
            <div>
              <div className="flex items-baseline gap-2">
                <span className="text-2xl sm:text-3xl font-black italic text-white tracking-tight">
                  {finalPrice}
                </span>
                {discountPercent > 0 && (
                  <span className="text-sm line-through text-ink-muted font-bold">
                    {plan.priceDisplay}
                  </span>
                )}
              </div>
              <span className="text-[11px] text-ink-dim uppercase font-semibold">
                {plan.frequency}
              </span>
            </div>

            <button
              onClick={handleCheckout}
              disabled={isProcessing}
              className="px-8 py-3.5 rounded-full bg-copper-vibrant hover:bg-copper-hover disabled:opacity-50 text-white text-xs sm:text-sm font-black tracking-widest uppercase transition-all shadow-glow hover:scale-105 active:scale-95 flex items-center gap-2"
            >
              <span>{isProcessing ? "PROCESANDO..." : "COMPRAR PLAN"}</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
