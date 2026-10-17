import { NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabase-server";

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { userId, ...profileData } = body;

    if (!userId) {
      return NextResponse.json({ error: "User ID requerido" }, { status: 400 });
    }

    const { data, error } = await supabaseAdmin
      .from("user_profiles")
      .update(profileData)
      .eq("id", userId)
      .select()
      .maybeSingle();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 400 });
    }

    return NextResponse.json({ success: true, profile: data });
  } catch (error: unknown) {
    const message = error instanceof Error ? error.message : "Error al actualizar perfil";
    return NextResponse.json(
      { error: message },
      { status: 500 }
    );
  }
}
