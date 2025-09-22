import { createSlice } from "@reduxjs/toolkit";
import type { PayloadAction } from '@reduxjs/toolkit';
import { isEmpty, isNonEmptyArray } from "shared-functions";
import type { User, UserRequest } from "../types/User";

type ActivityTypes = {
  sessionToken: string | null; // ?
  loggedInUser: User | null; // ?

  componentToLoad: string;
  isFormOpen: boolean;

  associatedData: any[],

  currentUserRequestID: any;
  // currentUserRequest: UserRequest | null;
  currentUserRequest: any; // TODO type -- 09/18/2025 JH

  applications: Record<string, unknown>[];

  partners: Record<string, unknown>[];
  currentPartners: Record<string, unknown>[];
  partnerSites: Record<string, unknown>[];
  currentPartnerSites: Record<string, unknown>[];

  requestTypes: any[];
  simulationRequestTypeID: string | number;
  demonstrationRequestTypeID: string | number;
  conferenceRequestTypeID: string | number;
  marketingRequestTypeID: string | number;
  userRequestTypeID: string | number;

  userRequests: any; // TODO type -- 09/18/2025 JH

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

  associatedData: [],

  currentUserRequestID: null,
  currentUserRequest: null,

  applications: [],

  partners: [],
  currentPartners: [],
  partnerSites: [],
  currentPartnerSites: [],

  requestTypes: [],
  simulationRequestTypeID: null,
  demonstrationRequestTypeID: null,
  conferenceRequestTypeID: null,
  marketingRequestTypeID: null,
  userRequestTypeID: null,

  userRequests: null,

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
    setAssociatedData(state, action: PayloadAction<ActivityTypes["associatedData"]>) {

      state.associatedData = action.payload;

    },
    setUserRequests(state, action) {

      state.userRequests = action.payload;

    },
    setCurrentUserRequest(state, action: PayloadAction<ActivityTypes["currentUserRequest"]>) {

      state.currentUserRequest = action.payload;

      if (!isEmpty(action.payload)) {

        state.currentUserRequestID = action.payload.userRequestID;

      } else {

        state.currentUserRequestID = null;

      };

    },
    setApplications(state, action: PayloadAction<ActivityTypes["applications"]>) {

      state.applications = action.payload;

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
    setRequestTypes(state, action) {

      state.requestTypes = action.payload;

      if (isNonEmptyArray(action.payload)) {

        for (let i = 0; i < action.payload.length; i++) {

          switch (action.payload[i].requestTypeName) {
            case "Implementation":
              state.simulationRequestTypeID = action.payload[i].requestTypeID;
              break;
            case "Demonstration":
              state.demonstrationRequestTypeID = action.payload[i].requestTypeID;
              break;
            case "Conference":
              state.conferenceRequestTypeID = action.payload[i].requestTypeID;
              break;
            case "Marketing":
              state.marketingRequestTypeID = action.payload[i].requestTypeID;
              break;
            case "SOS Assistant User":
              state.userRequestTypeID = action.payload[i].requestTypeID;
              break;
            default:
              console.log("A request type not accounted for.");
          };

        };

      };

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

export const { setSessionToken, setLoggedInUser, setComponentToLoad, setIsFormOpen, setAssociatedData, setUserRequests, setCurrentUserRequest, setApplications, setPartnerSites, setRequestTypes, addInformationMessage, addSuccessMessage, addWarningMessage, addErrorMessage, clearMessages } = activitySlice.actions;

export default activitySlice.reducer;