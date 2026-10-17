"use client";

import { WeightRecord } from "@/lib/store";

interface WeightChartProps {
  records: WeightRecord[];
}

export function WeightChart({ records }: WeightChartProps) {
  if (!records || records.length === 0) {
    return (
      <div className="glass-card rounded-3xl p-6 text-center text-xs text-ink-muted">
        No hay registros de peso aún.
      </div>
    );
  }

  const weights = records.map((r) => r.weight);
  const minWeight = Math.min(...weights) - 1;
  const maxWeight = Math.max(...weights) + 1;
  const range = maxWeight - minWeight || 1;

  const chartHeight = 160;
  const chartWidth = 400;
  const paddingX = 40;
  const paddingY = 25;

  const points = records.map((record, index) => {
    const x =
      paddingX +
      (index / (records.length - 1 || 1)) * (chartWidth - paddingX * 2);
    const y =
      chartHeight -
      paddingY -
      ((record.weight - minWeight) / range) * (chartHeight - paddingY * 2);
    return { x, y, ...record };
  });

  const pathD = points.reduce((acc, point, i) => {
    return i === 0 ? `M ${point.x} ${point.y}` : `${acc} L ${point.x} ${point.y}`;
  }, "");

  return (
    <div className="glass-card rounded-3xl p-6 md:p-8 border border-white/10">
      <div className="flex items-center justify-between mb-6">
        <div>
          <span className="text-[10px] font-black uppercase tracking-widest text-copper-primary block">
            HISTORIAL BIOMÉTRICO
          </span>
          <h3 className="text-lg font-black italic uppercase text-white">
            EVOLUCIÓN DE PESO
          </h3>
        </div>
        <span className="text-xs font-semibold text-ink-dim uppercase">
          ÚLTIMOS REGISTROS
        </span>
      </div>

      <div className="w-full overflow-x-auto">
        <svg
          viewBox={`0 0 ${chartWidth} ${chartHeight}`}
          className="w-full h-44 overflow-visible"
        >
          {/* Subtle horizontal grid lines */}
          <line
            x1={paddingX}
            y1={paddingY}
            x2={chartWidth - paddingX}
            y2={paddingY}
            stroke="rgba(255,255,255,0.06)"
            strokeDasharray="4 4"
          />
          <line
            x1={paddingX}
            y1={chartHeight / 2}
            x2={chartWidth - paddingX}
            y2={chartHeight / 2}
            stroke="rgba(255,255,255,0.06)"
            strokeDasharray="4 4"
          />
          <line
            x1={paddingX}
            y1={chartHeight - paddingY}
            x2={chartWidth - paddingX}
            y2={chartHeight - paddingY}
            stroke="rgba(255,255,255,0.06)"
            strokeDasharray="4 4"
          />

          {/* Glowing continuous line */}
          <path
            d={pathD}
            fill="none"
            stroke="#ff6b4a"
            strokeWidth="3.5"
            strokeLinecap="round"
            strokeLinejoin="round"
            className="filter drop-shadow-[0_0_8px_rgba(255,107,74,0.6)]"
          />

          {/* Data Points */}
          {points.map((pt, idx) => (
            <g key={idx} className="group">
              <circle
                cx={pt.x}
                cy={pt.y}
                r="5"
                fill="#ff8566"
                stroke="#050505"
                strokeWidth="2"
                className="transition-transform duration-200 group-hover:scale-125 cursor-pointer"
              />
              {/* Value label */}
              <text
                x={pt.x}
                y={pt.y - 12}
                textAnchor="middle"
                fill="#ffffff"
                fontSize="11"
                fontWeight="bold"
                className="font-mono"
              >
                {pt.weight}kg
              </text>
              {/* Date label */}
              <text
                x={pt.x}
                y={chartHeight - 6}
                textAnchor="middle"
                fill="#888888"
                fontSize="10"
              >
                {pt.date}
              </text>
            </g>
          ))}
        </svg>
      </div>
    </div>
  );
}
