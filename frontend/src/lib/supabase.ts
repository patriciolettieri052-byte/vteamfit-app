import { createClient } from "@supabase/supabase-js";

const supabaseUrl =
  process.env.NEXT_PUBLIC_SUPABASE_URL || "https://sfbsizxoxyjfancssfbb.supabase.co";
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || "";

/**
 * Supabase client specifically targeted to schema 'v2'
 * as established in Decision D-02 to isolate from legacy tables.
 */
export const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  db: {
    schema: "v2",
  },
  auth: {
    persistSession: true,
    autoRefreshToken: true,
  },
});
