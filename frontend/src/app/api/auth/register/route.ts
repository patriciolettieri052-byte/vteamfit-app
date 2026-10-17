import { NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabase-server";

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { email, password, name, planId } = body;

    if (!email || !password) {
      return NextResponse.json(
        { error: "Email y contraseña son requeridos" },
        { status: 400 }
      );
    }

    // 1. Create or verify user in Supabase Auth via Admin API
    const { data: authData, error: authError } =
      await supabaseAdmin.auth.admin.createUser({
        email,
        password,
        email_confirm: true,
        user_metadata: { full_name: name || email.split("@")[0] },
      });

    if (authError) {
      // If user already exists, check if we can return a friendly message
      if (authError.message.includes("already registered") || authError.message.includes("already been registered")) {
        return NextResponse.json(
          { error: "Este email ya está registrado. ¿Quieres iniciar sesión?" },
          { status: 409 }
        );
      }
      return NextResponse.json({ error: authError.message }, { status: 400 });
    }

    const userId = authData.user.id;

    // 2. Insert into v2.user_profiles
    const { error: profileError } = await supabaseAdmin
      .from("user_profiles")
      .upsert(
        {
          id: userId,
          email,
          full_name: name || email.split("@")[0],
          role: "student",
          experience_level: "intermediate",
        },
        { onConflict: "id" }
      );

    if (profileError) {
      console.error("Profile creation error:", profileError);
    }

    // 3. Assign initial plan enrollment if provided
    const chosenPlan = (planId || "plan_padel").replace(/-/g, "_");
    const { error: enrollError } = await supabaseAdmin
      .from("user_enrollments")
      .upsert(
        {
          user_id: userId,
          plan_id: chosenPlan,
          status: "active",
          current_week: 1,
        },
        { onConflict: "user_id,plan_id" }
      );

    if (enrollError) {
      console.error("Enrollment error:", enrollError);
    }

    return NextResponse.json({
      success: true,
      user: {
        id: userId,
        email,
        name: name || email.split("@")[0],
      },
    });
  } catch (error: unknown) {
    console.error("Register API error:", error);
    const message = error instanceof Error ? error.message : "Error interno del servidor";
    return NextResponse.json(
      { error: message },
      { status: 500 }
    );
  }
}
