import Link from "next/link";
import Image from "next/image";
import { TopBar } from "@/components/layout/TopBar";
import { PLANS_CATALOG } from "@/lib/plans-catalog";
import { ArrowRight, Sparkles } from "lucide-react";

export default function LandingPage() {
  return (
    <div className="relative min-h-screen bg-carbon overflow-hidden pb-24">
      {/* Floating TopBar */}
      <TopBar />

      {/* Hero Section */}
      <section className="relative min-h-[92vh] flex items-center justify-center pt-24 pb-16 px-6">
        {/* Inmersive Background Photo */}
        <div className="absolute inset-0 z-0">
          <Image
            src="/images/fotos/inicio.webp"
            alt="Victoria Torres entrenando"
            fill
            priority
            className="object-cover object-[50%_25%] md:object-[50%_35%] filter brightness-[0.65]"
          />
          {/* Gradients to fade smoothly into carbon background */}
          <div className="absolute inset-0 bg-gradient-to-t from-carbon via-carbon/50 to-carbon/80" />
          <div className="absolute inset-0 bg-[radial-gradient(circle_at_center,transparent_0%,rgba(5,5,5,0.7)_100%)]" />
        </div>

        {/* Hero Content */}
        <div className="relative z-10 max-w-4xl mx-auto text-center flex flex-col items-center">
          {/* Badge */}
          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-copper-primary/20 border border-copper-border backdrop-blur-md mb-6 animate-pulse">
            <Sparkles className="w-4 h-4 text-copper-vibrant" />
            <span className="text-[11px] font-black uppercase tracking-widest text-copper-hover">
              ALTO RENDIMIENTO Y TRANSFORMACIÓN REAL
            </span>
          </div>

          {/* Main Headline */}
          <h1 className="text-5xl sm:text-7xl md:text-8xl font-black italic tracking-tighter uppercase leading-[0.95] text-ink-pure mb-6">
            TU MEJOR <br />
            <span className="copper-gradient-text drop-shadow-[0_4px_30px_rgba(255,107,74,0.4)]">
              VERSIÓN
            </span>
          </h1>

          {/* Tagline */}
          <p className="text-xl md:text-2xl font-medium tracking-tight text-ink-heading mb-8">
            Planes de entrenamiento para ti
          </p>

          {/* Institutional Paragraph */}
          <p className="max-w-2xl text-sm md:text-base text-ink-body font-normal leading-relaxed mb-10 text-balance">
            VTeamFit es una aplicación de fitness creada por{" "}
            <span className="text-white font-semibold">Victoria Torres</span> junto
            a <span className="text-white font-semibold">Tito Allemandi</span>,
            bicampeón de pádel mundial con más de 20 años de experiencia en el mundo
            de la competición. Construida desde la constancia y conocimiento real.
          </p>

          {/* CTA Buttons */}
          <div className="flex flex-col sm:flex-row items-center gap-4 w-full sm:w-auto">
            <Link
              href="#planes"
              className="w-full sm:w-auto px-8 py-4 rounded-full bg-copper-vibrant hover:bg-copper-hover text-white text-sm font-black tracking-widest uppercase transition-all duration-300 shadow-glow hover:shadow-glow-lg hover:scale-105 flex items-center justify-center gap-3"
            >
              <span>VER PLANES</span>
              <ArrowRight className="w-4 h-4" />
            </Link>
            <Link
              href="/dashboard"
              className="w-full sm:w-auto px-8 py-4 rounded-full bg-carbon-surface hover:bg-white/10 border border-white/10 text-ink-pure text-sm font-bold tracking-widest uppercase transition-all hover:scale-105"
            >
              ACCEDER A LA APP
            </Link>
          </div>
        </div>
      </section>

      {/* Planes Section (#planes) */}
      <section id="planes" className="relative py-20 px-6 max-w-7xl mx-auto scroll-mt-20">
        {/* Section Header */}
        <div className="text-center mb-16 flex flex-col items-center">
          <h2 className="text-3xl md:text-5xl font-black italic tracking-tight uppercase text-ink-pure mb-3">
            ELIGE TU PLAN
          </h2>
          <div className="w-20 h-1 bg-copper-vibrant rounded-full mb-4 shadow-[0_0_12px_rgba(255,107,74,0.7)]" />
          <p className="text-sm md:text-base text-ink-dim max-w-xl">
            Entrenamiento de élite estructurado en rutinas progresivas con videos en alta definición.
          </p>
        </div>

        {/* 5 Plans Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {PLANS_CATALOG.map((plan) => (
            <div
              key={plan.id}
              className="group relative flex flex-col rounded-[2rem] overflow-hidden bg-carbon-surface border border-white/10 hover:border-copper-border transition-all duration-300 hover:-translate-y-1 hover:shadow-glow"
            >
              {/* Plan Cover Image (aspect 100/97) */}
              <div className="relative w-full aspect-[100/97] overflow-hidden bg-neutral-900">
                <Image
                  src={plan.image}
                  alt={plan.title}
                  fill
                  className="object-cover transition-transform duration-500 group-hover:scale-105"
                  style={{ objectPosition: plan.objectPosition || "center" }}
                />
                {/* Gradient overlay */}
                <div className="absolute inset-0 bg-gradient-to-t from-[#0d0d0d] via-transparent to-black/30" />

                {/* Floating Top Badge */}
                <div className="absolute top-4 left-4 flex gap-2">
                  {plan.badge && (
                    <span className="px-3 py-1 rounded-full bg-copper-vibrant text-white text-[10px] font-black tracking-widest uppercase shadow-md">
                      {plan.badge}
                    </span>
                  )}
                  <span className="px-3 py-1 rounded-full bg-black/60 backdrop-blur-md border border-white/10 text-ink-heading text-[10px] font-bold tracking-wider uppercase">
                    {plan.durationBadge}
                  </span>
                </div>
              </div>

              {/* Card Body */}
              <div className="flex-1 p-6 md:p-7 flex flex-col justify-between">
                <div>
                  {/* Instructor label */}
                  <span className="text-[11px] font-bold tracking-widest uppercase text-copper-primary">
                    {plan.instructor}
                  </span>

                  {/* Plan Title */}
                  <h3 className="text-xl md:text-2xl font-black italic uppercase tracking-tight text-white mt-1 mb-3 group-hover:text-copper-hover transition-colors">
                    {plan.title}
                  </h3>

                  {/* Description */}
                  <p className="text-xs md:text-sm text-ink-dim leading-relaxed line-clamp-3 mb-6">
                    {plan.description}
                  </p>
                </div>

                {/* Pricing & CTA */}
                <div className="pt-4 border-t border-white/5 flex items-center justify-between gap-4">
                  <div>
                    <span className="text-2xl font-black italic text-white tracking-tight">
                      {plan.priceDisplay}
                    </span>
                    <span className="text-xs text-ink-muted ml-1.5 uppercase font-medium">
                      / {plan.frequency}
                    </span>
                  </div>

                  <Link
                    href={`/planes/${plan.id}`}
                    className="px-5 py-2.5 rounded-full bg-white/10 hover:bg-copper-vibrant text-white text-xs font-black tracking-widest uppercase transition-all duration-200 border border-white/10 hover:border-copper-vibrant hover:shadow-glow flex items-center gap-1.5"
                  >
                    <span>VER DETALLES</span>
                    <ArrowRight size={14} />
                  </Link>
                </div>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* Bio Section Vicky Torres */}
      <section className="relative py-24 px-6 max-w-5xl mx-auto my-12">
        <div className="glass-card rounded-[2.5rem] p-8 md:p-14 relative overflow-hidden flex flex-col md:flex-row items-center gap-10 md:gap-14 border border-white/10">
          {/* Subtle background copper glow orb */}
          <div className="absolute -right-20 -bottom-20 w-80 h-80 bg-copper-primary/10 rounded-full blur-[100px] pointer-events-none" />

          {/* Circular Portrait */}
          <div className="relative shrink-0 w-48 h-48 md:w-64 md:h-64 rounded-full overflow-hidden border-[6px] border-carbon shadow-2xl ring-2 ring-copper-border">
            <Image
              src="/images/fotos/vicky-torres2.webp"
              alt="Vicky Torres"
              fill
              className="object-cover object-[30%_center] scale-110"
            />
          </div>

          {/* Bio text & Quote */}
          <div className="flex-1 text-center md:text-left">
            <span className="text-xs font-black tracking-widest uppercase text-copper-vibrant">
              ENTRENADORA Y CO-FUNDADORA
            </span>
            <h2 className="text-3xl md:text-5xl font-black italic uppercase tracking-tight text-white mt-1 mb-6">
              VICKY TORRES
            </h2>

            {/* Testimonial Quote with vertical copper bar */}
            <div className="relative pl-5 md:pl-6 border-l-2 border-copper-vibrant text-left">
              <p className="text-base md:text-lg text-ink-heading font-medium italic leading-relaxed">
                «&quot;Con VTeamFit quiero que logres tus objetivos, llegando al éxito. Y te aseguro, que ese éxito, ¡es la mayor satisfacción que puedes sentir! Solo cree en ti.&quot;»
              </p>
            </div>

            <div className="mt-8 flex flex-wrap gap-4 justify-center md:justify-start">
              <Link
                href="/planes/entrena-conmigo"
                className="px-6 py-3 rounded-full bg-copper-primary/30 hover:bg-copper-vibrant text-white text-xs font-black tracking-widest uppercase border border-copper-border transition-all"
              >
                ENTRENAR CON VICKY
              </Link>
              <Link
                href="/dashboard"
                className="px-6 py-3 rounded-full bg-white/5 hover:bg-white/10 text-ink-dim hover:text-white text-xs font-bold tracking-widest uppercase transition-all"
              >
                INGRESAR AL PROGRAMA
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Footer / Legal info */}
      <footer className="relative py-12 px-6 border-t border-white/5 text-center text-xs text-ink-muted">
        <div className="max-w-4xl mx-auto flex flex-col md:flex-row items-center justify-between gap-6">
          <p>© {new Date().getFullYear()} VTeamFit. Todos los derechos reservados.</p>
          <div className="flex items-center gap-6 font-semibold uppercase tracking-wider">
            <Link href="/politicas" className="hover:text-copper-hover transition-colors">
              Políticas Legales
            </Link>
            <Link href="/soporte" className="hover:text-copper-hover transition-colors">
              Soporte y Ayuda
            </Link>
          </div>
        </div>
      </footer>
    </div>
  );
}
