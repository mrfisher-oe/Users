import { useEffect } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import { isEmpty, getDateTime, convertSpecialCharacters, addLog, addErrorLog, allowLogging } from "shared-functions";
import { setFetchAuthorization } from "../utilities/applicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired, setFetchDataApplications } from "../app/applicationSettingsSlice";
import { setAssociatedData, setApplications, setPartnerSites, setRequestTypes, addErrorMessage, clearMessages } from "../app/activitySlice";
import type { RootState } from '../app/store';

const useFetchData = () => {

  const dispatch = useAppDispatch();

  const applicationVersion = useAppSelector((state: RootState) => state.applicationSettings.applicationVersion);
  const baseURL = useAppSelector((state: RootState) => state.applicationSettings.baseURL);
  const baseURLPartners = useAppSelector((state: RootState) => state.applicationSettings.baseURLPartners);
  const baseURLExtendedRealityScheduling = useAppSelector((state: RootState) => state.applicationSettings.baseURLExtendedRealityScheduling);
  const baseURLApplied = useAppSelector((state: RootState) => state.applicationSettings.baseURLApplied);
  const computerLog = useAppSelector((state: RootState) => state.applicationSettings.computerLog);
  const userIdentifier = useAppSelector((state: RootState) => state.applicationSettings.userIdentifier);
  const demonstrationMode = useAppSelector((state: RootState) => state.applicationSettings.demonstrationMode);
  const environmentMode = useAppSelector((state: RootState) => state.applicationSettings.environmentMode);
  const databaseAvailable = useAppSelector((state: RootState) => state.applicationSettings.databaseAvailable);
  // const userTokenExpired = useAppSelector((state: RootState) => state.applicationSettings.userTokenExpired);

  const loggedInUser = useAppSelector((state: RootState) => state.activity.loggedInUser);
  const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  const fetchDataApplications = useAppSelector((state: RootState) => state.applicationSettings.fetchDataApplications);


  useEffect(() => {

    if (baseURLApplied !== true) return;

    loadPartnerSites();
    loadAssociatedData();

  }, [baseURLApplied]);


  useEffect(() => {

    // TODO: These will need to be rewritten to match the new data structures. -- 09/19/2025 MF
    // if (!isEmpty(loggedInUser) && loggedInUser.isAdministrator) {

    // * Causes the application to possibly re-render many times with this code: dispatch(clearMessages());. -- 02/07/2025 MF
    // dispatch(setFetchDataApplications(true));

    loadApplications();

    loadRequestTypes();

    // };

  }, [loggedInUser]);


  useEffect(() => {

    if (fetchDataApplications === true) {

      dispatch(clearMessages());

      loadApplications();

      dispatch(setFetchDataApplications(false));

    };

  }, [fetchDataApplications]);


  const loadApplications = () => {

    if (!isEmpty(sessionToken) && !isEmpty(baseURL)) {

      // * Causes the form to re-render after submission and the messages disappear before they can be viewed. -- 02/07/2025 MF
      // dispatch(clearMessages());

      dispatch(setApplications([]));

      let url: string = `${baseURL}applications/`;
      let response: any = "";
      let data: any = "";
      let operation: string = "Get User Applications";

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

              dispatch(setApplications(data.records));

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

      let url: string = `${baseURLExtendedRealityScheduling}partnerSites/`;
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

      let url: string = `${baseURLExtendedRealityScheduling}associatedData/`;
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

      let url: string = `${baseURLExtendedRealityScheduling}requestTypes/`;
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