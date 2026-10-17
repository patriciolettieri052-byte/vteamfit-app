import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        carbon: {
          DEFAULT: "var(--bg-carbon)",
          surface: "var(--bg-surface)",
          glass: "var(--bg-surface-glass)",
          solid: "var(--bg-surface-solid)",
          subtle: "var(--bg-surface-subtle)",
        },
        copper: {
          DEFAULT: "var(--copper-primary)",
          primary: "var(--copper-primary)",
          vibrant: "var(--copper-vibrant)",
          hover: "var(--copper-hover)",
          glow: "var(--copper-glow)",
          subtle: "var(--copper-subtle)",
          border: "var(--copper-border)",
        },
        ink: {
          pure: "var(--ink-pure)",
          heading: "var(--ink-heading)",
          body: "var(--ink-body)",
          dim: "var(--ink-dim)",
          muted: "var(--ink-muted)",
        },
        state: {
          success: "var(--state-success)",
          "success-glow": "var(--state-success-glow)",
          warning: "var(--state-warning)",
          error: "var(--state-error)",
        },
        hairline: "var(--border-hairline)",
        "border-med": "var(--border-medium)",
        "border-hi": "var(--border-strong)",
      },
      fontFamily: {
        outfit: ["var(--font-outfit)", "Helvetica Neue", "Arial", "sans-serif"],
        sans: ["var(--font-outfit)", "Helvetica Neue", "Arial", "sans-serif"],
      },
      boxShadow: {
        glow: "0 0 24px var(--copper-glow)",
        "glow-lg": "0 0 40px var(--copper-glow)",
        "glow-success": "0 0 24px var(--state-success-glow)",
      },
      backgroundImage: {
        "carbon-pattern": "url('/images/carbon-texture-v4.webp')",
      },
    },
  },
  plugins: [],
};
export default config;
