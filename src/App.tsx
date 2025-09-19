import { useState, useEffect } from "react";
import { useAppSelector, useAppDispatch } from "./app/hooks";
import { /* AuthenticatedTemplate, UnauthenticatedTemplate, */ useIsAuthenticated, useMsal } from "@azure/msal-react";
import { InteractionStatus } from "@azure/msal-browser";
// import { msalInstance } from "./index";
import { AlertPopup, Footer, Header } from "shared-components";
import { isEmpty, getDateTime, isNonEmptyArray, formatTrim, getFirstItem, convertSpecialCharacters, getQueryStringData, addLog, addErrorLog, addComputerLog, parse, getBrowserData, isLocalDevelopment, showDevelopment, showPlayground, showAuthentication, allowLogging, resolveBaseURL, resolveRedirectURL } from "shared-functions";
import { loginRequest } from "./utilities/authenticationConfig";
import { setApplicationVersion, setCopyrightYear, setBaseURL, setBaseURLApplied, /* setParametersURL, */ setDemonstrationMode, setEnvironmentMode, setComputerLog, setUserIdentifier, setDatabaseAvailable, setUserTokenExpired, setLocationLogged } from "./app/applicationSettingsSlice";
import { setComponentToLoad, addSuccessMessage, addErrorMessage, clearMessages } from "./app/activitySlice";
import { setFetchAuthorization /* , callMsGraph */ } from "./utilities/applicationFunctions";
import type { AlertItem, AlertType } from "./types/Alert";
import type { Response, URL1, URL2 } from "./types/Response";
import type { RootState } from './app/store';
import Login from "./components/Login";
import Messages from "./components/Messages";
import Navigation from "./components/Navigation";
import Profile from "./components/Profile";
import Users from "./components/Users";
import UserApplications from "./components/UserApplications";
import UserRequest from "./components/UserRequest";
import UserRequests from "./components/UserRequests";

type AppProps = {
  applicationVersion: string;
  copyrightYear: string;
};

const App = ({ applicationVersion = "0.0.0", copyrightYear = "2025" }: AppProps) => {

  const dispatch = useAppDispatch();

  const applicationName = useAppSelector((state: RootState) => state.applicationSettings.applicationName);

  // const applicationVersion = useAppSelector((state: RootState) => state.applicationSettings.applicationVersion);
  const baseURL = useAppSelector((state: RootState) => state.applicationSettings.baseURL);
  // const baseURLApplied = useAppSelector((state: RootState) => state.applicationSettings.baseURLApplied);
  const computerLog = useAppSelector((state: RootState) => state.applicationSettings.computerLog);
  const userIdentifier = useAppSelector((state: RootState) => state.applicationSettings.userIdentifier);
  const demonstrationMode = useAppSelector((state: RootState) => state.applicationSettings.demonstrationMode);
  const environmentMode = useAppSelector((state: RootState) => state.applicationSettings.environmentMode);
  const databaseAvailable = useAppSelector((state: RootState) => state.applicationSettings.databaseAvailable);
  // const userTokenExpired = useAppSelector((state: RootState) => state.applicationSettings.userTokenExpired);

  const loggedInUser = useAppSelector((state: RootState) => state.activity.loggedInUser);
  const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  const componentToLoad = useAppSelector((state: RootState) => state.activity.componentToLoad);

  const locationLogged = useAppSelector((state: RootState) => state.applicationSettings.locationLogged);

  const isAuthenticated = useIsAuthenticated();
  const { inProgress, instance } = useMsal();

  const [url1Loaded, setURL1Loaded] = useState<boolean>(false);
  const [url2Loaded, setURL2Loaded] = useState<boolean>(false);
  const [browserData, setBrowserData] = useState<Partial<Navigator>>({});
  const [computerLog1, setComputerLog1] = useState<URL1>();
  const [computerLog2, setComputerLog2] = useState<URL2>();

  const [alertItem, setAlertItem] = useState<AlertItem>({ operation: "", alertType: "", message: "" });
  const [alertType, setAlertType] = useState<AlertType>("");

  const [invalidURL, setInvalidURL] = useState<boolean | null>(null);

  const redirectURL = resolveRedirectURL(environmentMode, demonstrationMode);


  useEffect(() => {

    if (!isEmpty(applicationVersion)) {

      dispatch(setApplicationVersion(applicationVersion));

    };

  }, [applicationVersion]);


  useEffect(() => {

    if (!isEmpty(copyrightYear)) {

      dispatch(setCopyrightYear(copyrightYear));

    };

  }, [copyrightYear]);


  useEffect(() => {

    let newBaseURL = resolveBaseURL("user", environmentMode, demonstrationMode, false);

    dispatch(setBaseURL(newBaseURL));

    dispatch(setBaseURLApplied(true));

    let queryStringData = getQueryStringData();

    // * Retrieve the queryString values if there are any. -- 05/10/2022 MF
    // const parametersURL = !isEmpty(queryStringData) && !isEmpty(queryStringData.parametersURL) ? queryStringData.parametersURL : null;
    const demonstrationModeQueryString = !isEmpty(queryStringData) && !isEmpty(queryStringData.demonstrationMode) ? queryStringData.demonstrationMode : null;
    const environmentModeQueryString = !isEmpty(queryStringData) && !isEmpty(queryStringData.environmentMode) ? queryStringData.environmentMode : null;

    // if (!isEmpty(parametersURL)) {

    //   dispatch(setParametersURL(parametersURL.replace("?", "")));

    // };

    if (demonstrationModeQueryString === "true") {

      dispatch(setDemonstrationMode(true));

    } else if (demonstrationModeQueryString === "false") {

      dispatch(setDemonstrationMode(false));

    };

    if (!isEmpty(environmentModeQueryString)) {

      dispatch(setEnvironmentMode(environmentModeQueryString));

    };

    if (locationLogged !== true && allowLogging()) {

      // * Only has the IP Address -- 07/29/2021 MF
      // * https://api.ipify.org?format=json -- 07/29/2021 MF

      // * Doesn't have the city, state and postal code anymore for some reason. -- 07/29/2021 MF
      let url1 = "https://geolocation-db.com/json/";

      fetch(url1)
        .then(results => {

          return results.json();

        }).then((results: URL1) => {

          // {"country_code":"US","country_name":"United States","city":null,"postal":null,"latitude":37.751,"longitude":-97.822,"IPv4":"65.132.108.210","state":null}

          setComputerLog1(results);

          setURL1Loaded(true);

        })
        .catch(() => {

          setURL1Loaded(true);

        });

      let url2 = "https://api.db-ip.com/v2/free/self";

      fetch(url2)
        .then(results => {

          return results.json();

        }).then((results: URL2) => {

          // *   {
          // *     "ipAddress": "47.227.241.250",
          // *     "continentCode": "NA",
          // *     "continentName": "North America",
          // *     "countryCode": "US",
          // *     "countryName": "United States",
          // *     "stateProvCode": "IN",
          // *     "stateProv": "Indiana",
          // *     "city": "Carmel"
          // * }

          if (isEmpty(results.error)) {

            setComputerLog2(results);

          };

          setURL2Loaded(true);

        })
        .catch(() => {

          setURL2Loaded(true);

        });

    };

    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);


  useEffect(() => {

    if (url1Loaded === true && url2Loaded === true) {

      if (locationLogged !== true && allowLogging()) {

        addVisitLog();

      };

      setURL1Loaded(false);
      setURL2Loaded(false);

    };

    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [computerLog1, computerLog2, url1Loaded, url2Loaded]);


  const addVisitLog = () => {

    let computerLog = addComputerLog(computerLog1, computerLog2);

    setComputerLog(computerLog);

    const ipAddress = !isEmpty(computerLog) && !isEmpty(computerLog.ipAddress) ? computerLog.ipAddress : "";
    const city = !isEmpty(computerLog) && !isEmpty(computerLog.city) ? computerLog.city : "";
    // let state = !isEmpty(computerLog) && !isEmpty(computerLog.stateProv) ? computerLog.stateProv : "";
    const state = !isEmpty(computerLog) && !isEmpty(computerLog.state) ? computerLog.state : "";
    const countryCode = !isEmpty(computerLog) && !isEmpty(computerLog.countryCode) ? computerLog.countryCode : "";
    const countryName = !isEmpty(computerLog) && !isEmpty(computerLog.countryName) ? computerLog.countryName : "";
    const continentCode = !isEmpty(computerLog) && !isEmpty(computerLog.continentCode) ? computerLog.continentCode : "";
    const continentName = !isEmpty(computerLog) && !isEmpty(computerLog.continentName) ? computerLog.continentName : "";
    const stateProvCode = !isEmpty(computerLog) && !isEmpty(computerLog.stateProvCode) ? computerLog.stateProvCode : "";

    const latitude = !isEmpty(computerLog) && !isEmpty(computerLog.latitude) ? computerLog.latitude : "";
    const longitude = !isEmpty(computerLog) && !isEmpty(computerLog.longitude) ? computerLog.longitude : "";
    const postal = !isEmpty(computerLog) && !isEmpty(computerLog.postal) ? computerLog.postal : "";

    const href = !isEmpty(window.location.href) ? window.location.href : "";

    const userIdentifier = window.btoa(JSON.stringify({ ipAddress, lastAccessed: getDateTime() }));

    setUserIdentifier(userIdentifier);

    const url = `${baseURL}computerLogs/`;
    let response; // ! If we know the type and default value to set it to then we can assign this properly. -- 09/05/2025 JW
    let data = { transactionSuccess: false, message: "", records: [] };
    let operation = "Update Computer Log";

    let recordObject = {};

    if (allowLogging()) {

      recordObject = {

        learningObjectID: null, /* learningObjectID, */
        learningObjectTitle: applicationName, /* title, */
        href,
        applicationVersion,
        browserData: JSON.stringify(getBrowserData()),

        lastAccessed: getDateTime(),

        userIdentifier,

        // * For https://api.db-ip.com/v2/free/self -- 07/29/2021 MF
        ipAddress,
        city,
        // state: stateProv,
        state,
        countryCode,
        countryName,
        continentCode,
        continentName,
        stateCode: stateProvCode,

        // * From https://geolocation-db.com/json/ -- 07/29/2021 MF
        latitude,
        longitude,
        postal

      };

    } else {

      recordObject = {

        learningObjectID: null, /* learningObjectID, */
        learningObjectTitle: applicationName, /* title, */
        href,
        applicationVersion,
        browserData: JSON.stringify(getBrowserData()),

        lastAccessed: getDateTime(),

        userIdentifier,

        // // * For https://api.db-ip.com/v2/free/self -- 07/29/2021 MF
        // ipAddress,
        // city,
        // // state: stateProv,
        // state,
        // countryCode,
        // countryName,
        // continentCode,
        // continentName,
        // stateCode: stateProvCode,

        // // * From https://geolocation-db.com/json/ -- 07/29/2021 MF
        // latitude,
        // longitude,
        // postal

      };

    };

    fetch(url, {
      method: "POST",
      headers: new Headers({
        "Content-Type": "application/json", "Authorization": setFetchAuthorization(null, environmentMode, demonstrationMode)
      }),
      body: JSON.stringify({ recordObject })
    })
      .then(results => {

        response = results;

        if (response.status === 200) {

          return response.json();

        } else {

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, userIdentifier, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, applicationVersion, computerLog }, errorData: { message: `${response.status} ${response.statusText} ${response.url}` }, dateEntered: getDateTime() });

          return Promise.reject(Error(response.status + " Fetch failed."));

        };

      })
      .then((results: Response<null>) => {

        data = results;

        if (!isEmpty(data)) {

          if (data.transactionSuccess && !isEmpty(data.records)) {

            setLocationLogged(true);

            setDatabaseAvailable(true);

          } else {

            // console.error(operation, "data.message", data.message);

            // setAlertItem({ operation, alertType: "error", message: data.message });

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, recordObject, applicationVersion, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

          };

        } else {

          // setAlertItem({ operation, alertType: "error", message: "No Results Returned." });

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, recordObject, applicationVersion, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

        };

      })
      .catch((error) => {

        // console.error(operation, "addVisitLog error", error);

        // setAlertItem({ operation, alertType: "error", message: `${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}` });

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { recordObject, applicationVersion, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        setDatabaseAvailable(false);

      });

  };


  return (
    <>

      <Header applicationName={applicationName} />

      {/* {isAuthenticated === true ? <Navigation /> : null} */}
      <Navigation />

      <Messages />

      {isAuthenticated === true ?

        <nav className="sub-header-nav">
          <ul>

            {/* {isAuthenticated === false && inProgress !== InteractionStatus.Startup && inProgress !== InteractionStatus.HandleRedirect && showAuthentication() ?

              <li><a href="#" onClick={(event) => { event.preventDefault(); instance.loginRedirect({ ...loginRequest, redirectUri: redirectURL }); }}>Log In</a></li>

              : null} */}

            {isAuthenticated === true ?

              <li><a href="#" onClick={(event) => { event.preventDefault(); instance.logoutRedirect({ postLogoutRedirectUri: redirectURL }); }}>Log Out</a></li>

              : null}

          </ul>
        </nav>

        : null}

      <main>

        {isEmpty(alertItem) === false && isEmpty(alertType) === false ? <AlertPopup message={alertItem} setMessage={setAlertItem} alertType={alertType} /> : null}

        {/* // * To set up https://www.npmjs.com/package/@azure/msal-react -- 09/13/2024 MF */}

        {/* // * From https://github.com/AzureAD/microsoft-authentication-library-for-js/blob/dev/lib/msal-react/docs/getting-started.md -- 09/13/2024 MF */}

        {/* // * From https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/samples/msal-react-samples/react-router-sample -- 09/13/2024 MF */}

        {isAuthenticated === false && inProgress !== InteractionStatus.Startup && inProgress !== InteractionStatus.HandleRedirect && showAuthentication() ?

          <section className="section-block">

            <div className="unauthenticated-message">
              <i className="fa fa-exclamation-triangle unauthenticated-message__icon"></i>
              <p className="unauthenticated-message__text">You must be logged in to view this content.</p>
            </div>

            <div className="flex-row justify-center mb-3">
              <a href="#" className="btn btn-primary" onClick={(event) => { event.preventDefault(); instance.loginRedirect({ ...loginRequest, redirectUri: redirectURL }); }}>Log In</a>
            </div>

          </section>

          : null}

        {isAuthenticated === true ?

          <>

            <Login invalidURL={invalidURL} />

            {componentToLoad === "Profile" ? <Profile /> : null}

            {componentToLoad === "Users" ? <Users /> : null}

          </>

          : null}

        <Footer copyrightYear={copyrightYear} applicationVersion={applicationVersion} />

      </main>

    </>
  );
};

export default App;