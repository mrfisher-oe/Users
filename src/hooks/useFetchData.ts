import { useEffect } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import { isEmpty, getDateTime, convertSpecialCharacters, addLog, addErrorLog, allowLogging } from "shared-functions";
import { setFetchAuthorization } from "../utilities/applicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired, setFetchDataUserApplications } from "../app/applicationSettingsSlice";
import { setAssociatedData, setUserApplications, setPartnerSites, setRequestTypes, addErrorMessage, clearMessages } from "../app/activitySlice";
import type { RootState } from '../app/store';

const useFetchData = () => {

  const dispatch = useAppDispatch();

  const applicationVersion = useAppSelector((state: RootState) => state.applicationSettings.applicationVersion);
  const baseURL = useAppSelector((state: RootState) => state.applicationSettings.baseURL);
  const baseURLApplied = useAppSelector((state: RootState) => state.applicationSettings.baseURLApplied);
  const computerLog = useAppSelector((state: RootState) => state.applicationSettings.computerLog);
  const userIdentifier = useAppSelector((state: RootState) => state.applicationSettings.userIdentifier);
  const demonstrationMode = useAppSelector((state: RootState) => state.applicationSettings.demonstrationMode);
  const environmentMode = useAppSelector((state: RootState) => state.applicationSettings.environmentMode);
  const databaseAvailable = useAppSelector((state: RootState) => state.applicationSettings.databaseAvailable);
  // const userTokenExpired = useAppSelector((state: RootState) => state.applicationSettings.userTokenExpired);

  const loggedInUser = useAppSelector((state: RootState) => state.activity.loggedInUser);
  const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  const fetchDataUserApplications = useAppSelector((state: RootState) => state.applicationSettings.fetchDataUserApplications);


  useEffect(() => {

    if (baseURLApplied !== true) return;

    loadPartnerSites();
    loadAssociatedData();

  }, [baseURLApplied]);


  useEffect(() => {

    if (!isEmpty(loggedInUser) && loggedInUser.isAdministrator) {

      // * Causes the application to possibly re-render many times with this code: dispatch(clearMessages());. -- 02/07/2025 MF
      // dispatch(setFetchDataUserApplications(true));

      loadUserApplications();

      loadRequestTypes();

    };

  }, [loggedInUser]);


  useEffect(() => {

    if (fetchDataUserApplications === true) {

      dispatch(clearMessages());

      loadUserApplications();

      dispatch(setFetchDataUserApplications(false));

    };

  }, [fetchDataUserApplications]);


  const loadUserApplications = () => {

    if (!isEmpty(sessionToken) && !isEmpty(baseURL)) {

      // * Causes the form to re-render after submission and the messages disappear before they can be viewed. -- 02/07/2025 MF
      // dispatch(clearMessages());

      dispatch(setUserApplications([]));

      let url: string = `${baseURL}userApplications/`;
      let response: any = "";
      let data: any = "";
      let operation: string = "Get SOS Assistant User Applications";

      fetch(url, {
        method: "GET",
        headers: new Headers({
          "Content-Type": "application/json", "Authorization": setFetchAuthorization(sessionToken, environmentMode, demonstrationMode)
        })
      })
        .then(results => {

          response = results;

          if (response.status === 200) {

            return response.json();

          } else {

            if (response.status === 401) {

              dispatch(setUserTokenExpired(true));

            };

            return Promise.reject(Error(response.status + " Fetch failed."));

          };

        })
        .then(results => {

          data = results;

          if (!isEmpty(data)) {

            if (data.transactionSuccess && !isEmpty(data.records)) {

              dispatch(setUserApplications(data.records));

              dispatch(setDatabaseAvailable(true));

            } else {

              // console.error(operation, `${operation}: ${data.message}`);

              dispatch(addErrorMessage(`${operation}: ${data.message}`));

              addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            };

          } else {

            // console.error(operation, `${operation}: No Results Returned.`);

            dispatch(addErrorMessage(`${operation}: No Results Returned.`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          };

        })
        .catch((error) => {

          // console.error(operation, "fetchData error", error);

          dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };


  const loadPartnerSites = () => {

    if (!isEmpty(baseURL)) {

      // * Causes the form to re-render after submission and the messages disappear before they can be viewed. -- 02/07/2025 MF
      // dispatch(clearMessages());

      dispatch(setPartnerSites([]));

      let url: string = `${baseURL}partnerSites/`;
      let response: any = "";
      let data: any = "";
      let operation: string = "Get Partner Sites";

      fetch(url, {
        method: "GET",
        headers: new Headers({
          "Content-Type": "application/json", "Authorization": setFetchAuthorization(null, environmentMode, demonstrationMode)
        })
      })
        .then(results => {

          response = results;

          if (response.status === 200) {

            return response.json();

          } else {

            if (response.status === 401) {

              dispatch(setUserTokenExpired(true));

            };

            return Promise.reject(Error(response.status + " Fetch failed."));

          };

        })
        .then(results => {

          data = results;

          if (!isEmpty(data)) {

            if (data.transactionSuccess && !isEmpty(data.records)) {

              dispatch(setPartnerSites(data.records));

              dispatch(setDatabaseAvailable(true));

            } else {

              // console.error(operation, `${operation}: ${data.message}`);

              dispatch(addErrorMessage(`${operation}: ${data.message}`));

              addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            };

          } else {

            // console.error(operation, `${operation}: No Results Returned.`);

            dispatch(addErrorMessage(`${operation}: No Results Returned.`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          };

        })
        .catch((error) => {

          // console.error(operation, "fetchData error", error);

          dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };


  const loadAssociatedData = () => {

    if (!isEmpty(baseURL)) {

      // * Causes the form to re-render after submission and the messages disappear before they can be viewed. -- 02/07/2025 MF
      // dispatch(clearMessages());

      dispatch(setAssociatedData(null));

      let url: string = `${baseURL}associatedData/`;
      let response: any = "";
      let data: any = "";
      let operation: string = "Get Associated Data";

      fetch(url, {
        method: "GET",
        headers: new Headers({
          "Content-Type": "application/json", "Authorization": setFetchAuthorization(null, environmentMode, demonstrationMode)
        })
      })
        .then(results => {

          response = results;

          if (response.status === 200) {

            return response.json();

          } else {

            if (response.status === 401) {

              dispatch(setUserTokenExpired(true));

            };

            return Promise.reject(Error(response.status + " Fetch failed."));

          };

        })
        .then(results => {

          data = results;

          if (!isEmpty(data)) {

            if (data.transactionSuccess && !isEmpty(data.records)) {

              dispatch(setAssociatedData(data.records));

              dispatch(setDatabaseAvailable(true));

            } else {

              // console.error(operation, `${operation}: ${data.message}`);

              dispatch(addErrorMessage(`${operation}: ${data.message}`));

              addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            };

          } else {

            // console.error(operation, `${operation}: No Results Returned.`);

            dispatch(addErrorMessage(`${operation}: No Results Returned.`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          };

        })
        .catch((error) => {

          // console.error(operation, "fetchData error", error);

          dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };


  const loadRequestTypes = () => {

    if (!isEmpty(baseURL)) {

      // * Causes the form to re-render after submission and the messages disappear before they can be viewed. -- 02/07/2025 MF
      // dispatch(clearMessages());

      dispatch(setRequestTypes([]));

      let url: string = `${baseURL}requestTypes/`;
      let response: any = "";
      let data: any = "";
      let operation: string = "Get Request Types";

      fetch(url, {
        method: "GET",
        headers: new Headers({
          "Content-Type": "application/json", "Authorization": setFetchAuthorization(null, environmentMode, demonstrationMode)
        })
      })
        .then(results => {

          response = results;

          if (response.status === 200) {

            return response.json();

          } else {

            if (response.status === 401) {

              dispatch(setUserTokenExpired(true));

            };

            return Promise.reject(Error(response.status + " Fetch failed."));

          };

        })
        .then(results => {

          data = results;

          if (!isEmpty(data)) {

            if (data.transactionSuccess && !isEmpty(data.records)) {

              dispatch(setRequestTypes(data.records));

              dispatch(setDatabaseAvailable(true));

            } else {

              // console.error(operation, `${operation}: ${data.message}`);

              dispatch(addErrorMessage(`${operation}: ${data.message}`));

              addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            };

          } else {

            // console.error(operation, `${operation}: No Results Returned.`);

            dispatch(addErrorMessage(`${operation}: No Results Returned.`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          };

        })
        .catch((error) => {

          // console.error(operation, "fetchData error", error);

          dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };

};

export default useFetchData;