import { configureStore } from "@reduxjs/toolkit";
import applicationSettingsSlice from "./applicationSettingsSlice";
import activitySlice from "./activitySlice";

export const store = configureStore({
  reducer: {
    applicationSettings: applicationSettingsSlice,
    activity: activitySlice
  }
});

// * Infer the `RootState` and `AppDispatch` types from the store itself
export type RootState = ReturnType<typeof store.getState>;
export type AppDispatch = typeof store.dispatch;