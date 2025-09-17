import { createSlice } from "@reduxjs/toolkit";
import type { PayloadAction } from '@reduxjs/toolkit';
import { isEmpty } from "shared-functions";
import type { User } from "../types/Users";

type ActivityTypes = {
  sessionToken: string | null; // ?
  loggedInUser: User; // ?

  componentToLoad: string;
  isFormOpen: boolean;

  currentUserRequestID: any;
  currentUserRequest: Record<string, unknown>;

  sosAssistantUserApplications: Record<string, unknown>[];

  partners: Record<string, unknown>[];
  currentPartners: Record<string, unknown>[];
  partnerSites: Record<string, unknown>[];
  currentPartnerSites: Record<string, unknown>[];

  informationMessage: string;
  successMessage: string;
  warningMessage: string;
  errorMessage: string;

  informationMessageVisible: boolean;
  successMessageVisible: boolean;
  warningMessageVisible: boolean;
  errorMessageVisible: boolean;
};

const initialState: ActivityTypes = {
  sessionToken: null,
  loggedInUser: null,

  componentToLoad: "",
  isFormOpen: false,

  currentUserRequestID: null,
  currentUserRequest: {},

  sosAssistantUserApplications: [],

  partners: [],
  currentPartners: [],
  partnerSites: [],
  currentPartnerSites: [],

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
    setSessionToken(state, action: PayloadAction<ActivityTypes["sessionToken"]>) {

      state.sessionToken = action.payload;

    },
    setLoggedInUser(state, action: PayloadAction<ActivityTypes["loggedInUser"]>) {

      state.loggedInUser = action.payload;

    },
    setComponentToLoad(state, action: PayloadAction<ActivityTypes["componentToLoad"]>) {

      state.componentToLoad = action.payload;

    },
    setIsFormOpen(state, action: PayloadAction<ActivityTypes["isFormOpen"]>) {

      state.isFormOpen = action.payload;

    },
    setCurrentUserRequest(state, action: PayloadAction<ActivityTypes["currentUserRequest"]>) {

      state.currentUserRequest = action.payload;

      if (!isEmpty(action.payload)) {

        state.currentUserRequestID = action.payload.sosAssistantUserRequestID;

      } else {

        state.currentUserRequestID = null;

      };

    },
    setSOSAssistantUserApplications(state, action: PayloadAction<ActivityTypes["sosAssistantUserApplications"]>) {

      state.sosAssistantUserApplications = action.payload;

    },
    setPartnerSites(state, action: PayloadAction<ActivityTypes["partnerSites"]>) {

      state.partnerSites = action.payload;

      let partnerSitesList = action.payload;
      let currentPartnerSitesList = [];
      let partnersList = [];
      let currentPartnersList = [];

      for (let i = 0; i < partnerSitesList.length; i++) {

        if (partnerSitesList[i].currentPartner || partnerSitesList[i].currentPartner === 1) {

          currentPartnerSitesList.push(partnerSitesList[i]);

        };

        if (partnersList.findIndex((partner) => partner.partnerID === partnerSitesList[i].partnerID) === -1) {

          partnersList.push({ partnerID: partnerSitesList[i].partnerID, partnerName: partnerSitesList[i].partnerName });

          if (partnerSitesList[i].currentPartner || partnerSitesList[i].currentPartner === 1) {

            currentPartnersList.push({ partnerID: partnerSitesList[i].partnerID, partnerName: partnerSitesList[i].partnerName });

          };

        };

      };

      state.partners = [...partnersList];
      state.currentPartners = [...currentPartnersList];
      state.currentPartnerSites = [...currentPartnerSitesList];

    },
    addInformationMessage(state, action: PayloadAction<ActivityTypes["informationMessage"]>) {

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
    addSuccessMessage(state, action: PayloadAction<ActivityTypes["successMessage"]>) {

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
    addWarningMessage(state, action: PayloadAction<ActivityTypes["warningMessage"]>) {

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
    addErrorMessage(state, action: PayloadAction<ActivityTypes["errorMessage"]>) {

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

export const { setSessionToken, setLoggedInUser, setComponentToLoad, setIsFormOpen, setCurrentUserRequest, setSOSAssistantUserApplications, setPartnerSites, addInformationMessage, addSuccessMessage, addWarningMessage, addErrorMessage, clearMessages } = activitySlice.actions;

export default activitySlice.reducer;