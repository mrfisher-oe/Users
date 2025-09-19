import { createSlice } from "@reduxjs/toolkit";
import type { PayloadAction } from '@reduxjs/toolkit';

type ApplicationSettingsTypes = {
  applicationVersion: string;
  copyrightYear: string;
  applicationName: string;
  // databaseNameProduction: string;
  // databaseNameDevelopment: string;
  baseURL: string;
  baseURLApplied: boolean;
  browserData: {
    appCodeName: string;
    appName: string;
    appVersion: string;
    cookieEnabled: boolean;
    language: string;
    onLine: boolean;
    platform: string;
    product: string;
    userAgent: string;
  } | null;
  // browserData: Partial<Navigator>; // * This causes an error that I'm not sure how to fix -- 09/16/2025 JH
  computerLog: Record<string, unknown>;
  userIdentifier: string;
  databaseAvailable: boolean;
  userTokenExpired: boolean;

  locationLogged: boolean;

  // parametersURL: string;

  demonstrationMode: boolean;
  environmentMode: string;

  checkDatabaseAvailable: any;

  applicationSettings: Record<string, unknown>;

  fetchDataSOSAssistantUserApplications: boolean;
};

const initialState: ApplicationSettingsTypes = {
  applicationVersion: "",
  copyrightYear: "",
  applicationName: "Users",
  // databaseNameProduction: "Users",
  // databaseNameDevelopment: "UsersDevelopment",
  baseURL: "",
  baseURLApplied: false,
  browserData: null,
  computerLog: {},
  userIdentifier: "",
  databaseAvailable: true,
  userTokenExpired: false,

  locationLogged: false,

  // parametersURL: "",

  demonstrationMode: false,
  environmentMode: "",

  checkDatabaseAvailable: null,

  applicationSettings: {},


  fetchDataSOSAssistantUserApplications: false

};

const applicationSettingsSlice = createSlice({
  name: "applicationSettings",
  initialState,
  reducers: {
    setApplicationVersion(state, action: PayloadAction<ApplicationSettingsTypes["applicationVersion"]>) {

      state.applicationVersion = action.payload;

    },
    setCopyrightYear(state, action: PayloadAction<ApplicationSettingsTypes["copyrightYear"]>) {

      state.copyrightYear = action.payload;

    },
    setBaseURL(state, action: PayloadAction<ApplicationSettingsTypes["baseURL"]>) {

      state.baseURL = action.payload;

    },
    setBaseURLApplied(state, action: PayloadAction<ApplicationSettingsTypes["baseURLApplied"]>) {

      state.baseURLApplied = action.payload;

    },
    // setParametersURL(state, action: PayloadAction<ApplicationSettingsTypes["parametersURL"]>) {

    //   state.parametersURL = action.payload;

    // },
    setDemonstrationMode(state, action: PayloadAction<ApplicationSettingsTypes["demonstrationMode"]>) {

      state.demonstrationMode = action.payload;

    },
    setEnvironmentMode(state, action: PayloadAction<ApplicationSettingsTypes["environmentMode"]>) {

      state.environmentMode = action.payload;

    },
    setComputerLog(state, action: PayloadAction<ApplicationSettingsTypes["computerLog"]>) {

      state.computerLog = action.payload;

      // let computerLogItem = action.payload;

      // if (typeof computerLogItem === "object") {

      //   // * From https://geolocation-db.com/json/ -- 09/27/2021 MF
      //   if (!isEmpty(computerLogItem.country_code)) {

      //     state.computerLog.countryCode = computerLogItem.country_code;

      //   };

      //   if (!isEmpty(computerLogItem.country_name)) {

      //     state.computerLog.countryName = computerLogItem.country_name;

      //   };

      //   if (!isEmpty(computerLogItem.city)) {

      //     state.computerLog.city = computerLogItem.city;

      //   };

      //   if (!isEmpty(computerLogItem.postal)) {

      //     state.computerLog.postal = computerLogItem.postal;

      //   };

      //   if (!isEmpty(computerLogItem.latitude)) {

      //     state.computerLog.latitude = computerLogItem.latitude;

      //   };

      //   if (!isEmpty(computerLogItem.longitude)) {

      //     state.computerLog.longitude = computerLogItem.longitude;

      //   };

      //   if (!isEmpty(computerLogItem.IPv4)) {

      //     state.computerLog.ipAddress = computerLogItem.IPv4;

      //   };

      //   if (!isEmpty(computerLogItem.state)) {

      //     state.computerLog.state = computerLogItem.state;

      //   };

      //   // * From https://api.db-ip.com/v2/free/self -- 09/27/2021 MF
      //   if (!isEmpty(computerLogItem.ipAddress)) {

      //     state.computerLog.ipAddress = computerLogItem.ipAddress;

      //   };

      //   if (!isEmpty(computerLogItem.continentCode)) {

      //     state.computerLog.continentCode = computerLogItem.continentCode;

      //   };

      //   if (!isEmpty(computerLogItem.continentName)) {

      //     state.computerLog.continentName = computerLogItem.continentName;

      //   };

      //   if (!isEmpty(computerLogItem.countryCode)) {

      //     state.computerLog.countryCode = computerLogItem.countryCode;

      //   };

      //   if (!isEmpty(computerLogItem.countryName)) {

      //     state.computerLog.countryName = computerLogItem.countryName;

      //   };

      //   if (!isEmpty(computerLogItem.stateProvCode)) {

      //     state.computerLog.stateProvCode = computerLogItem.stateProvCode;

      //   };

      //   if (!isEmpty(computerLogItem.stateProv)) {

      //     state.computerLog.state = computerLogItem.state;

      //   };

      //   if (!isEmpty(computerLogItem.city)) {

      //     state.computerLog.city = computerLogItem.city;

      //   };

      // };

    },
    setUserIdentifier(state, action: PayloadAction<ApplicationSettingsTypes["userIdentifier"]>) {

      state.userIdentifier = action.payload;

    },
    setDatabaseAvailable(state, action: PayloadAction<ApplicationSettingsTypes["databaseAvailable"]>) {

      state.databaseAvailable = action.payload;

    },
    setUserTokenExpired(state, action: PayloadAction<ApplicationSettingsTypes["userTokenExpired"]>) {

      state.userTokenExpired = action.payload;

    },
    addBrowserData(state, action: PayloadAction<ApplicationSettingsTypes["browserData"]>) {

      // ? Remove from redux and just use getBrowserData from shared-functions? -- 09/17/2025 JH
      state.browserData = action.payload;

    },
    setLocationLogged(state, action: PayloadAction<ApplicationSettingsTypes["locationLogged"]>) {

      state.locationLogged = action.payload;

    },
    setCheckDatabaseAvailable(state, action: PayloadAction<ApplicationSettingsTypes["checkDatabaseAvailable"]>) {

      state.checkDatabaseAvailable = action.payload;

    },
    setApplicationSettings(state, action: PayloadAction<ApplicationSettingsTypes["applicationSettings"]>) {

      state.applicationSettings = action.payload;

    },
    setFetchDataSOSAssistantUserApplications(state, action: PayloadAction<ApplicationSettingsTypes["fetchDataSOSAssistantUserApplications"]>) {

      state.fetchDataSOSAssistantUserApplications = action.payload;

    }
  }
});

export const { setApplicationVersion, setCopyrightYear, setBaseURL, setBaseURLApplied, /* setBaseURLPartners, setParametersURL, */ setDemonstrationMode, setEnvironmentMode, setComputerLog, setUserIdentifier, setDatabaseAvailable, setUserTokenExpired, setLocationLogged, setCheckDatabaseAvailable, setApplicationSettings, setFetchDataSOSAssistantUserApplications } = applicationSettingsSlice.actions;

export default applicationSettingsSlice.reducer;