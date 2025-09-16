import { createSlice } from "@reduxjs/toolkit";
import type { PayloadAction } from '@reduxjs/toolkit';
import { isEmpty } from "shared-functions";

interface ActivityTypes {
  sessionToken: string | null, // ?
  loggedInUser: any, // ?

  componentToLoad: string,
  isFormOpen: boolean,

  informationMessage: string,
  successMessage: string,
  warningMessage: string,
  errorMessage: string,

  informationMessageVisible: boolean,
  successMessageVisible: boolean,
  warningMessageVisible: boolean,
  errorMessageVisible: boolean;
}

const initialState: ActivityTypes = {
  sessionToken: null,
  loggedInUser: {},

  componentToLoad: "",
  isFormOpen: false,

  informationMessage: "",
  successMessage: "",
  warningMessage: "",
  errorMessage: "",

  informationMessageVisible: false,
  successMessageVisible: false,
  warningMessageVisible: false,
  errorMessageVisible: false
};

const activitySlice = createSlice({
  name: "activity",
  initialState,
  reducers: {
    setSessionToken(state, action: PayloadAction<string | null>) {

      state.sessionToken = action.payload;

    },
    setLoggedInUser(state, action: PayloadAction<object>) {

      state.loggedInUser = action.payload;

    },
    setComponentToLoad(state, action: PayloadAction<string>) {

      state.componentToLoad = action.payload;

    },
    setIsFormOpen(state, action: PayloadAction<boolean>) {

      state.isFormOpen = action.payload;

    },
    addInformationMessage(state, action: PayloadAction<string>) {

      if (!isEmpty(action.payload)) {

        // * Make sure that the new phrase isn't in the existing information message. -- 09/27/2021 MF
        // if (state.informationMessage !== action.payload) {
        if (state.informationMessage.includes(action.payload) === false) {

          if (!isEmpty(state.informationMessage)) {

            state.informationMessage = state.informationMessage + "<br />";
          };

          state.informationMessage = state.informationMessage + action.payload;
          state.informationMessageVisible = true;

        };

      } else {

        state.informationMessage = action.payload;
        state.informationMessageVisible = false;

      };

    },
    addSuccessMessage(state, action: PayloadAction<string>) {

      if (!isEmpty(action.payload)) {

        // * Make sure that the new phrase isn't in the existing success message. -- 09/27/2021 MF
        // if (state.successMessage !== action.payload) {
        if (!state.successMessage.includes(action.payload)) {

          if (!isEmpty(state.successMessage)) {

            state.successMessage = state.successMessage + "<br />";

          };

          state.successMessage = state.successMessage + action.payload;
          state.successMessageVisible = true;

        };

      } else {

        state.successMessage = action.payload;
        state.successMessageVisible = false;

      };

    },
    addWarningMessage(state, action: PayloadAction<string>) {

      if (!isEmpty(action.payload)) {

        // * Make sure that the new phrase isn't in the existing warning message. -- 09/27/2021 MF
        // if (state.warningMessage !== action.payload) {
        if (!state.warningMessage.includes(action.payload)) {

          if (!isEmpty(state.warningMessage)) {

            state.warningMessage = state.warningMessage + "<br />";

          };

          state.warningMessage = state.warningMessage + action.payload;
          state.warningMessageVisible = true;

        };

      } else {

        state.warningMessage = action.payload;
        state.warningMessageVisible = false;

      };

    },
    addErrorMessage(state, action: PayloadAction<string>) {

      if (!isEmpty(action.payload)) {

        // * Make sure that the new phrase isn't in the existing error message. -- 09/27/2021 MF
        // if (state.errorMessage !== action.payload) {
        if (!state.errorMessage.includes(action.payload)) {

          if (!isEmpty(state.errorMessage)) {

            state.errorMessage = state.errorMessage + "<br />";

          };

          state.errorMessage = state.errorMessage + action.payload;
          state.errorMessageVisible = true;

        };

      } else {

        state.errorMessage = action.payload;
        state.errorMessageVisible = false;

      };

    },
    clearMessages(state, action: PayloadAction<void>) {

      state.informationMessage = "";
      state.successMessage = "";
      state.warningMessage = "";
      state.errorMessage = "";

      state.informationMessageVisible = false;
      state.successMessageVisible = false;
      state.warningMessageVisible = false;
      state.errorMessageVisible = false;

    }
  }
});

export const { setSessionToken, setLoggedInUser, setComponentToLoad, setIsFormOpen, addInformationMessage, addSuccessMessage, addWarningMessage, addErrorMessage, clearMessages } = activitySlice.actions;

export default activitySlice.reducer;