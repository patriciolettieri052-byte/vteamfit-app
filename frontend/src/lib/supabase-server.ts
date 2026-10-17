import { createClient } from "@supabase/supabase-js";

const supabaseUrl =
  process.env.NEXT_PUBLIC_SUPABASE_URL ||
  "https://sfbsizxoxyjfancssfbb.supabase.co";
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY || "";

/**
 * Server-only Supabase client with Service Role privileges
 * targeted to schema 'v2' to perform administrative upserts,
 * profile creation, and automated enrollments bypassing RLS safely.
 */
export const supabaseAdmin = createClient(supabaseUrl, serviceRoleKey, {
  db: {
    schema: "v2",
  },
  auth: {
    persistSession: false,
    autoRefreshToken: false,
  },
});
