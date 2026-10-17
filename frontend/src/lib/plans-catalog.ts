export interface PlanMetadata {
  id: string; // slug
  title: string;
  badge?: string;
  priceDisplay: string;
  priceValue: number;
  frequency: "mensual" | "trimestral" | "pago único";
  durationBadge: string;
  description: string;
  image: string;
  objectPosition?: string;
  methodology: string;
  system: string;
  instructor: "Victoria Torres" | "Tito Allemandi" | "Victoria Torres & Tito Allemandi";
  isPersonalized?: boolean;
}

export const PLANS_CATALOG: PlanMetadata[] = [
  {
    id: "transforma-tu-cuerpo",
    title: "TRANSFORMA TU CUERPO",
    priceDisplay: "$19.90",
    priceValue: 19.9,
    frequency: "mensual",
    durationBadge: "196 DÍAS",
    description:
      "Plan de 196 días para transformar tu cuerpo con entrenamiento de fuerza e hipertrofia. El programa más completo de VTeamFit.",
    image: "/images/fotos/transforma-tu-cuerpo.jpg",
    objectPosition: "center 45%",
    methodology:
      "Rutinas progresivas enfocadas en resultados reales. Estructuradas para desafiarte durante todo el proceso.",
    system:
      "Semanalmente tendrás nuevos retos a desbloquear, seguimiento de pesos e historial.",
    instructor: "Victoria Torres",
  },
  {
    id: "plan-padel",
    title: "PLAN PÁDEL",
    priceDisplay: "$49.90",
    priceValue: 49.9,
    frequency: "mensual",
    durationBadge: "168 DÍAS",
    description:
      "Plan de 168 días para mejorar en pádel con entrenamiento de prevención, fuerza y velocidad específica para la pista.",
    image: "/images/fotos/plan-padel.jpg",
    objectPosition: "center",
    methodology:
      "Rutinas progresivas enfocadas en resultados reales. Estructuradas para desafiarte durante todo el proceso.",
    system:
      "Semanalmente tendrás nuevos retos a desbloquear, seguimiento de pesos e historial.",
    instructor: "Victoria Torres & Tito Allemandi",
  },
  {
    id: "gluteos-de-acero",
    title: "GLÚTEOS DE ACERO",
    priceDisplay: "$49.90",
    priceValue: 49.9,
    frequency: "trimestral",
    durationBadge: "84 DÍAS",
    description:
      "Plan de 84 días enfocado en glúteos y tren inferior. Transforma tu cuerpo con entrenamientos progresivos diseñados para moldear y fortalecer los glúteos.",
    image: "/images/fotos/gluteos.jpg",
    objectPosition: "center",
    methodology:
      "Rutinas progresivas enfocadas en resultados reales. Estructuradas para desafiarte durante todo el proceso.",
    system:
      "Semanalmente tendrás nuevos retos a desbloquear, seguimiento de pesos e historial.",
    instructor: "Victoria Torres",
  },
  {
    id: "entrena-conmigo",
    title: "ENTRENA CONMIGO",
    badge: "PERSONALIZADO",
    priceDisplay: "$210",
    priceValue: 210.0,
    frequency: "mensual",
    durationBadge: "30 DÍAS RENOVABLES",
    description:
      "Plan de entrenamiento 100% personalizado diseñado por Vicky Torres según tus objetivos, disponibilidad y condición física. Comunicación directa con Vicky vía WhatsApp y ajustes mensuales según tu progreso.",
    image: "/images/fotos/entrena-conmigo2.webp",
    objectPosition: "top",
    methodology:
      "Diseño a medida según cuestionario de objetivos, disponibilidad y equipamiento.",
    system:
      "Ajustes mensuales continuos y acompañamiento directo 1 a 1 vía WhatsApp.",
    instructor: "Victoria Torres",
    isPersonalized: true,
  },
  {
    id: "fisico-en-pista-padel",
    title: "CURSO DE FÍSICO EN PISTA DE PÁDEL",
    priceDisplay: "$249",
    priceValue: 249.0,
    frequency: "pago único",
    durationBadge: "19 DÍAS (MÓDULOS DE CERTIFICACIÓN)",
    description:
      'Certificación completa de físico en pista para pádel. "Siempre amé cuidar mi físico, en cada entreno daba mi 100%, muchos años de carrera en los que nunca he tenido que retirarme de una competición, por eso quiero que aprendan de mí todo lo que yo aprendí" — Tito Allemandi, bicampeón mundial.',
    image: "/images/fotos/fisico-padel.webp",
    objectPosition: "center",
    methodology:
      "Módulos tácticos y preparación física de alta competición aplicada al pádel.",
    system:
      "Acceso de por vida a los 19 módulos de certificación técnica y física.",
    instructor: "Tito Allemandi",
  },
];

export function getPlanBySlug(slug: string): PlanMetadata | undefined {
  return PLANS_CATALOG.find(
    (p) => p.id === slug || p.id.replace(/-/g, "_") === slug.replace(/-/g, "_")
  );
}
