import { createSlice } from "@reduxjs/toolkit";
import type { PayloadAction } from '@reduxjs/toolkit';

interface ApplicationSettingsTypes {
  applicationVersion: string,
  copyrightYear: string,
  applicationName: string,
  // databaseNameProduction: string,
  // databaseNameDevelopment: string,
  baseURL: string,
  baseURLApplied: boolean,
  browserData: object,
  computerLog: object,
  userIdentifier: string,
  databaseAvailable: boolean,
  userTokenExpired: boolean,

  locationLogged: boolean,

  // parametersURL: string,

  demonstrationMode: boolean,
  environmentMode: string,

  checkDatabaseAvailable: any,

  applicationSettings: object;
}

const initialState: ApplicationSettingsTypes = {
  applicationVersion: "",
  copyrightYear: "",
  applicationName: "Users",
  // databaseNameProduction: "Users",
  // databaseNameDevelopment: "UsersDevelopment",
  baseURL: "",
  baseURLApplied: false,
  browserData: {},
  computerLog: {},
  userIdentifier: "",
  databaseAvailable: true,
  userTokenExpired: false,

  locationLogged: false,

  // parametersURL: "",

  demonstrationMode: false,
  environmentMode: "",

  checkDatabaseAvailable: null,

  applicationSettings: {}

};

const applicationSettingsSlice = createSlice({
  name: "applicationSettings",
  initialState,
  reducers: {
    setApplicationVersion(state, action: PayloadAction<string>) {

      state.applicationVersion = action.payload;

    },
    setCopyrightYear(state, action: PayloadAction<string>) {

      state.copyrightYear = action.payload;

    },
    setBaseURL(state, action: PayloadAction<string>) {

      state.baseURL = action.payload;

    },
    setBaseURLApplied(state, action: PayloadAction<boolean>) {

      state.baseURLApplied = action.payload;

    },
    // setParametersURL(state, action: PayloadAction<any>) {

    //   state.parametersURL = action.payload;

    // },
    setDemonstrationMode(state, action: PayloadAction<boolean>) {

      state.demonstrationMode = action.payload;

    },
    setEnvironmentMode(state, action: PayloadAction<string>) {

      state.environmentMode = action.payload;

    },
    setComputerLog(state, action: PayloadAction<any>) {

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
    setUserIdentifier(state, action: PayloadAction<any>) {

      state.userIdentifier = action.payload;

    },
    setDatabaseAvailable(state, action: PayloadAction<boolean>) {

      state.databaseAvailable = action.payload;

    },
    setUserTokenExpired(state, action: PayloadAction<boolean>) {

      state.userTokenExpired = action.payload;

    },
    addBrowserData(state, action: PayloadAction<object>) {

      state.browserData = action.payload;

    },
    setLocationLogged(state, action: PayloadAction<boolean>) {

      state.locationLogged = action.payload;

    },
    setCheckDatabaseAvailable(state, action: PayloadAction<any>) {

      state.checkDatabaseAvailable = action.payload;

    },
    setApplicationSettings(state, action: PayloadAction<object | null>) {

      state.applicationSettings = action.payload;

    }
  }
});

export const { setApplicationVersion, setCopyrightYear, setBaseURL, setBaseURLApplied, /* setBaseURLPartners, setParametersURL, */ setDemonstrationMode, setEnvironmentMode, setComputerLog, setUserIdentifier, setDatabaseAvailable, setUserTokenExpired, addBrowserData, setLocationLogged, setCheckDatabaseAvailable, setApplicationSettings } = applicationSettingsSlice.actions;

export default applicationSettingsSlice.reducer;