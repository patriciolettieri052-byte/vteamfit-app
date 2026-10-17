"use client";

import { useState, useEffect, useCallback } from "react";
import { supabase } from "./supabase";

export interface UserProfileState {
  id?: string;
  name: string;
  email: string;
  gender: string;
  weight: number;
  height: number;
  age: number;
  activePlanId: string;
}

export interface WeightRecord {
  date: string;
  weight: number;
}

export interface ExerciseLog {
  sets: number;
  reps: number;
  weightKg: number;
  completedAt: string;
}

export function useAppStore() {
  const [profile, setProfile] = useState<UserProfileState>({
    name: "Atleta",
    email: "",
    gender: "Mujer",
    weight: 65,
    height: 168,
    age: 27,
    activePlanId: "plan_padel",
  });

  const [completedDays, setCompletedDays] = useState<Record<string, boolean>>({});
  const [exerciseLogs, setExerciseLogs] = useState<Record<string, ExerciseLog>>({});
  const [weightHistory, setWeightHistory] = useState<WeightRecord[]>([]);
  const [streakDays, setStreakDays] = useState<number>(0);
  const [isLoaded, setIsLoaded] = useState(false);
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  // Load real data from Supabase for authenticated user
  const loadUserData = useCallback(async (userId: string, userEmail: string) => {
    try {
      // 1. Fetch profile from v2.user_profiles
      const { data: dbProfile } = await supabase
        .from("user_profiles")
        .select("*")
        .eq("id", userId)
        .maybeSingle();

      // 2. Fetch active enrollment from v2.user_enrollments
      const { data: enrollment } = await supabase
        .from("user_enrollments")
        .select("plan_id")
        .eq("user_id", userId)
        .eq("status", "active")
        .order("created_at", { ascending: false })
        .limit(1)
        .maybeSingle();

      const activePlan = enrollment?.plan_id || "plan_padel";

      if (dbProfile) {
        setProfile({
          id: userId,
          name: dbProfile.full_name || userEmail.split("@")[0],
          email: dbProfile.email || userEmail,
          gender: dbProfile.experience_level === "female" ? "Mujer" : "Hombre",
          weight: dbProfile.weight_kg ? Number(dbProfile.weight_kg) : 65,
          height: dbProfile.height_cm ? Number(dbProfile.height_cm) : 168,
          age: dbProfile.birthdate ? 28 : 27,
          activePlanId: activePlan,
        });
      } else {
        setProfile((prev) => ({
          ...prev,
          id: userId,
          email: userEmail,
          name: userEmail.split("@")[0],
          activePlanId: activePlan,
        }));
      }

      // 3. Fetch completed workouts from v2.user_workout_logs
      const { data: workoutLogs } = await supabase
        .from("user_workout_logs")
        .select("week_number, day_name, completed_at, exercise_logs")
        .eq("user_id", userId);

      if (workoutLogs && workoutLogs.length > 0) {
        const completedMap: Record<string, boolean> = {};
        const dayToIndex: Record<string, number> = {
          LUNES: 1,
          MARTES: 2,
          MIERCOLES: 3,
          JUEVES: 4,
          VIERNES: 5,
          SABADO: 6,
          DOMINGO: 7,
        };

        workoutLogs.forEach((log) => {
          const dIdx = dayToIndex[log.day_name.toUpperCase()] || 1;
          completedMap[`w${log.week_number}_d${dIdx}`] = true;
        });

        setCompletedDays(completedMap);
        setStreakDays(workoutLogs.length);
      }

      // 4. Fetch real weight history from v2.user_weight_logs
      const { data: weights } = await supabase
        .from("user_weight_logs")
        .select("recorded_date, weight_kg")
        .eq("user_id", userId)
        .order("recorded_date", { ascending: true });

      if (weights && weights.length > 0) {
        const formatted = weights.map((w) => {
          const parts = w.recorded_date.split("-");
          const dateStr = parts.length === 3 ? `${parts[2]}/${parts[1]}` : w.recorded_date;
          return {
            date: dateStr,
            weight: Number(w.weight_kg),
          };
        });
        setWeightHistory(formatted);
      }
    } catch (e) {
      console.warn("Could not load user data from Supabase:", e);
    } finally {
      setIsLoaded(true);
    }
  }, []);

  // Listen to Supabase Auth State
  useEffect(() => {
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (session?.user) {
        setIsAuthenticated(true);
        loadUserData(session.user.id, session.user.email || "");
      } else {
        setIsAuthenticated(false);
        setIsLoaded(true);
      }
    });

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((_event, session) => {
      if (session?.user) {
        setIsAuthenticated(true);
        loadUserData(session.user.id, session.user.email || "");
      } else {
        setIsAuthenticated(false);
      }
    });

    return () => subscription.unsubscribe();
  }, [loadUserData]);

  const updateProfile = async (data: Partial<UserProfileState>) => {
    setProfile((prev) => ({ ...prev, ...data }));

    if (profile.id) {
      try {
        await fetch("/api/profile", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            userId: profile.id,
            full_name: data.name,
            weight_kg: data.weight,
            height_cm: data.height,
          }),
        });
      } catch (e) {
        console.warn("Error updating profile in Supabase:", e);
      }
    }
  };

  const markDayCompleted = async (week: number, dayNumber: number) => {
    const key = `w${week}_d${dayNumber}`;
    setCompletedDays((prev) => ({ ...prev, [key]: true }));
    setStreakDays((prev) => prev + 1);

    const dayNames = [
      "LUNES",
      "MARTES",
      "MIERCOLES",
      "JUEVES",
      "VIERNES",
      "SABADO",
      "DOMINGO",
    ];
    const dayName = dayNames[(dayNumber - 1) % 7] || "LUNES";

    if (profile.id) {
      try {
        await supabase.from("user_workout_logs").upsert(
          {
            user_id: profile.id,
            plan_id: profile.activePlanId.replace(/-/g, "_"),
            week_number: week,
            day_name: dayName,
            completed_at: new Date().toISOString(),
          },
          { onConflict: "user_id,plan_id,week_number,day_name" }
        );
      } catch (e) {
        console.warn("Error recording workout log in Supabase:", e);
      }
    }
  };

  const logExercise = (exerciseKey: string, log: ExerciseLog) => {
    setExerciseLogs((prev) => ({ ...prev, [exerciseKey]: log }));
  };

  const addWeightRecord = async (weight: number) => {
    const today = new Date();
    const dateStr = `${today.getDate().toString().padStart(2, "0")}/${(today.getMonth() + 1).toString().padStart(2, "0")}`;
    const isoDate = today.toISOString().split("T")[0];

    setWeightHistory((prev) => [...prev, { date: dateStr, weight }]);
    updateProfile({ weight });

    if (profile.id) {
      try {
        await supabase.from("user_weight_logs").upsert(
          {
            user_id: profile.id,
            weight_kg: weight,
            recorded_date: isoDate,
          },
          { onConflict: "user_id,recorded_date" }
        );
      } catch (e) {
        console.warn("Error recording weight in Supabase:", e);
      }
    }
  };

  return {
    profile,
    updateProfile,
    completedDays,
    markDayCompleted,
    exerciseLogs,
    logExercise,
    weightHistory,
    addWeightRecord,
    streakDays,
    isLoaded,
    isAuthenticated,
  };
}
