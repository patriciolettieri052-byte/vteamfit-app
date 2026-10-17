"use client";

import { useState, useEffect } from "react";

export interface UserProfileState {
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

const DEFAULT_PROFILE: UserProfileState = {
  name: "Atleta VTeam",
  email: "atleta@vteamfit.app",
  gender: "Mujer",
  weight: 65,
  height: 168,
  age: 27,
  activePlanId: "plan-padel",
};

const INITIAL_WEIGHT_HISTORY: WeightRecord[] = [
  { date: "01/10", weight: 66.8 },
  { date: "05/10", weight: 66.2 },
  { date: "10/10", weight: 65.7 },
  { date: "14/10", weight: 65.3 },
  { date: "17/10", weight: 65.0 },
];

export function useAppStore() {
  const [profile, setProfile] = useState<UserProfileState>(DEFAULT_PROFILE);
  const [completedDays, setCompletedDays] = useState<Record<string, boolean>>({});
  const [exerciseLogs, setExerciseLogs] = useState<Record<string, ExerciseLog>>({});
  const [weightHistory, setWeightHistory] = useState<WeightRecord[]>(INITIAL_WEIGHT_HISTORY);
  const [streakDays, setStreakDays] = useState<number>(4);
  const [isLoaded, setIsLoaded] = useState(false);

  // Load from LocalStorage on mount
  useEffect(() => {
    try {
      const storedProfile = localStorage.getItem("vteamfit_profile");
      if (storedProfile) setProfile(JSON.parse(storedProfile));

      const storedDays = localStorage.getItem("vteamfit_completed_days");
      if (storedDays) setCompletedDays(JSON.parse(storedDays));

      const storedLogs = localStorage.getItem("vteamfit_exercise_logs");
      if (storedLogs) setExerciseLogs(JSON.parse(storedLogs));

      const storedWeights = localStorage.getItem("vteamfit_weights");
      if (storedWeights) setWeightHistory(JSON.parse(storedWeights));

      const storedStreak = localStorage.getItem("vteamfit_streak");
      if (storedStreak) setStreakDays(parseInt(storedStreak, 10));
    } catch (e) {
      console.warn("Storage sync fallback:", e);
    } finally {
      setIsLoaded(true);
    }
  }, []);

  const updateProfile = (data: Partial<UserProfileState>) => {
    setProfile((prev) => {
      const updated = { ...prev, ...data };
      if (typeof window !== "undefined") {
        localStorage.setItem("vteamfit_profile", JSON.stringify(updated));
      }
      return updated;
    });
  };

  const markDayCompleted = (week: number, dayNumber: number) => {
    const key = `w${week}_d${dayNumber}`;
    setCompletedDays((prev) => {
      const updated = { ...prev, [key]: true };
      if (typeof window !== "undefined") {
        localStorage.setItem("vteamfit_completed_days", JSON.stringify(updated));
      }
      return updated;
    });
    setStreakDays((prev) => {
      const next = prev + 1;
      if (typeof window !== "undefined") {
        localStorage.setItem("vteamfit_streak", next.toString());
      }
      return next;
    });
  };

  const logExercise = (exerciseKey: string, log: ExerciseLog) => {
    setExerciseLogs((prev) => {
      const updated = { ...prev, [exerciseKey]: log };
      if (typeof window !== "undefined") {
        localStorage.setItem("vteamfit_exercise_logs", JSON.stringify(updated));
      }
      return updated;
    });
  };

  const addWeightRecord = (weight: number) => {
    const today = new Date();
    const dateStr = `${today.getDate().toString().padStart(2, "0")}/${(today.getMonth() + 1).toString().padStart(2, "0")}`;
    const newRecord = { date: dateStr, weight };
    setWeightHistory((prev) => {
      const updated = [...prev, newRecord];
      if (typeof window !== "undefined") {
        localStorage.setItem("vteamfit_weights", JSON.stringify(updated));
      }
      return updated;
    });
    updateProfile({ weight });
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
  };
}
