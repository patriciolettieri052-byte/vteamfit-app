import { NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabase-server";

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { userId, planId } = body;

    if (!userId || !planId) {
      return NextResponse.json(
        { error: "userId y planId son requeridos" },
        { status: 400 }
      );
    }

    const cleanPlanId = planId.replace(/-/g, "_");

    const { data, error } = await supabaseAdmin
      .from("user_enrollments")
      .upsert(
        {
          user_id: userId,
          plan_id: cleanPlanId,
          status: "active",
          current_week: 1,
        },
        { onConflict: "user_id,plan_id" }
      )
      .select()
      .maybeSingle();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 400 });
    }

    return NextResponse.json({ success: true, enrollment: data });
  } catch (error: unknown) {
    const message = error instanceof Error ? error.message : "Error al asignar inscripción";
    return NextResponse.json(
      { error: message },
      { status: 500 }
    );
  }
}
