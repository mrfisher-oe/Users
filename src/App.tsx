import { useState, useEffect } from "react";
import { /* AuthenticatedTemplate, UnauthenticatedTemplate, */ useIsAuthenticated, useMsal } from "@azure/msal-react";
import { InteractionStatus } from "@azure/msal-browser";
import { AlertPopup, CheckboxGroup, FormDropdown, FormInput, FormRadioGroup, Footer, Header } from "shared-components";
import { isEmpty, getDateTime, isNonEmptyArray, getFirstItem, convertSpecialCharacters, convertNullEmptyString, isWholeNumber, formatTrim, getQueryStringData, addLog, addErrorLog, addComputerLog, parse, isLocalDevelopment, showDevelopment, showPlayground, allowLogging, resolveBaseURL, resolveRedirectURL } from "shared-functions";
// import { msalInstance } from "./index";
import { loginRequest } from "./utilities/authenticationConfig";
import { setFetchAuthorization /* , callMsGraph */ } from "./utilities/applicationFunctions";

type InlineErrors = {
  txtUsername: string;
  txtPassword: string;
  ddAccountType: string;
  cbxUserPermissions: { userPermissionID: number, userPermission: string }[];
  rdoActive: string;
} | null;

type AppProps = {
  applicationVersion: string;
  copyrightYear: string;
}

const App = ({ applicationVersion = "0.0.0", copyrightYear = "2025" }: AppProps) => {

  // * Available props: -- 04/29/2022 MF
  // * Properties: applicationVersion, copyrightYear -- 04/29/2022 MF

  const componentName = "App";

  const isAuthenticated = useIsAuthenticated();
  const { inProgress, instance } = useMsal();

  const [url1Loaded, setURL1Loaded] = useState<boolean>(false);
  const [url2Loaded, setURL2Loaded] = useState<boolean>(false);
  const [browserData, setBrowserData] = useState({});
  const [computerLog1, setComputerLog1] = useState({});
  const [computerLog2, setComputerLog2] = useState({});
  const [locationLogged, setLocationLogged] = useState<boolean>(false);
  const [databaseAvailable, setDatabaseAvailable] = useState(true);
  const [computerLog, setComputerLog] = useState({});
  const [userIdentifier, setUserIdentifier] = useState("");

  const [parametersURL, setParametersURL] = useState("");
  const [environmentMode, setEnvironmentMode] = useState("");
  const [demonstrationMode, setDemonstrationMode] = useState<boolean>(false);

  const [alertItem, setAlertItem] = useState("");
  const [alertType, setAlertType] = useState("");
  const [inlineErrors, setInlineErrors] = useState<InlineErrors>({
    txtUsername: "",
    txtPassword: "",
    ddAccountType: "",
    cbxUserPermissions: [],
    rdoActive: "",
  });

  const [currentUser, setCurrentUser] = useState({});
  const [txtUsername, setTxtUsername] = useState("");
  const [txtPassword, setTxtPassword] = useState("");
  const [ddAccountType, setDdAccountType] = useState("");
  const [cbxUserPermissions, setCbxUserPermissions] = useState([]);
  const [rdoActive, setRdoActive] = useState<string>("");

  const [isFormOpen, setIsFormOpen] = useState(false);

  // const [accessToken, setAccessToken] = useState("");
  // const [loginStatus, setLoginStatus] = useState("");
  // const [stopProcessing, setStopProcessing] = useState(false);

  let applicationName = "Users";

  const baseURL = resolveBaseURL("project", environmentMode, demonstrationMode, false);

  const redirectURL = resolveRedirectURL(environmentMode, demonstrationMode);


  // * Never finished getting this to work. -- 09/25/2024 MF
  // useEffect(() => {

  //   if (isAuthenticated === true && isEmpty(loginStatus) === true && stopProcessing === false) {

  //     // let account = msalInstance.getActiveAccount();
  //     // let accessToken = "";

  //     // const response = await msalInstance.acquireTokenSilent({ ...loginRequest, account: account });

  //     // accessToken = response.accessToken;

  //     let accessToken = callMsGraph();

  //     console.log(componentName, getDateTime(), "accessToken", accessToken);

  //     if (isEmpty(accessToken) === false) {

  //       setAccessToken(accessToken);

  //       // loadUserProfile(accessToken);

  //       // let userProfile = callMsGraph();

  //       // console.log(componentName, getDateTime(), "userProfile", userProfile);

  //       // setLoginStatus(userProfile);

  //       // setStopProcessing(true);

  //     };

  //   };

  // }, [isAuthenticated, loginStatus]);


  // useEffect(() => {

  //   if (isEmpty(accessToken) === false) {

  //     loadUserProfile(accessToken);

  //     // let userProfile = callMsGraph();

  //     // console.log(componentName, getDateTime(), "userProfile", userProfile);

  //     // setLoginStatus(userProfile);

  //     setStopProcessing(true);

  //   };

  // }, [accessToken]);


  useEffect(() => {

    let queryStringData = getQueryStringData();

    // * Retrieve the queryString values if there are any. -- 05/10/2022 MF
    // let parametersURL = !isEmpty(queryStringData) && !isEmpty(queryStringData.parametersURL) ? queryStringData.parametersURL : null;
    let demonstrationModeQueryString = !isEmpty(queryStringData) && !isEmpty(queryStringData.demonstrationMode) ? queryStringData.demonstrationMode : null;
    let environmentModeQueryString = !isEmpty(queryStringData) && !isEmpty(queryStringData.environmentMode) ? queryStringData.environmentMode : null;

    // if (!isEmpty(parametersURL)) {

    //   setParametersURL(parametersURL.replace("?", ""));

    // };

    if (demonstrationModeQueryString === "true") {

      setDemonstrationMode(true);

    } else if (demonstrationModeQueryString === "false") {

      setDemonstrationMode(false);

    };

    if (!isEmpty(environmentModeQueryString)) {

      setEnvironmentMode(environmentModeQueryString);

    };

    setBrowserData({ appCodeName: navigator.appCodeName, appName: navigator.appName, appVersion: navigator.appVersion, cookieEnabled: navigator.cookieEnabled, language: navigator.language, onLine: navigator.onLine, platform: navigator.platform, product: navigator.product, userAgent: navigator.userAgent });

    if (locationLogged !== true && allowLogging()) {

      // * Only has the IP Address -- 07/29/2021 MF
      // * https://api.ipify.org?format=json -- 07/29/2021 MF

      // * Doesn't have the city, state and postal code anymore for some reason. -- 07/29/2021 MF
      let url1 = "https://geolocation-db.com/json/";

      fetch(url1)
        .then(results => {

          return results.json();

        }).then((results) => {

          // {"country_code":"US","country_name":"United States","city":null,"postal":null,"latitude":37.751,"longitude":-97.822,"IPv4":"65.132.108.210","state":null}

          setComputerLog1(results);

          setURL1Loaded(true);

        })
        .catch((error) => {

          setURL1Loaded(true);

        });

      let url2 = "https://api.db-ip.com/v2/free/self";

      fetch(url2)
        .then(results => {

          return results.json();

        }).then((results) => {

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
        .catch((error) => {

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


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (isEmpty(inlineErrors) === false) {

      if (isEmpty(inlineErrors.txtUsername) === false && isEmpty(txtUsername) === false) {

        setInlineErrors({
          ...inlineErrors,
          txtUsername: ""
        });

      };

      if (isEmpty(inlineErrors.txtPassword) === false && isEmpty(txtPassword) === false) {

        setInlineErrors({
          ...inlineErrors,
          txtPassword: ""
        });

      };

      if (isEmpty(inlineErrors.ddAccountType) === false && isEmpty(ddAccountType) === false) {

        setInlineErrors({
          ...inlineErrors,
          ddAccountType: ""
        });

      };

      if (isEmpty(inlineErrors.cbxUserPermissions) === false && isNonEmptyArray(cbxUserPermissions) === true) {

        setInlineErrors({
          ...inlineErrors,
          cbxUserPermissions: []
        });

      };

      if (isEmpty(inlineErrors.rdoActive) === false && isEmpty(rdoActive) === false) {

        setInlineErrors({
          ...inlineErrors,
          rdoActive: ""
        });

      };

    };

  }, [txtUsername, txtPassword, ddAccountType, cbxUserPermissions, rdoActive, inlineErrors]);


  const addVisitLog = () => {

    let computerLog = addComputerLog(computerLog1, computerLog2);

    setComputerLog(computerLog);

    let ipAddress = !isEmpty(computerLog) && !isEmpty(computerLog.ipAddress) ? computerLog.ipAddress : "";
    let city = !isEmpty(computerLog) && !isEmpty(computerLog.city) ? computerLog.city : "";
    // let state = !isEmpty(computerLog) && !isEmpty(computerLog.stateProv) ? computerLog.stateProv : "";
    let state = !isEmpty(computerLog) && !isEmpty(computerLog.state) ? computerLog.state : "";
    let countryCode = !isEmpty(computerLog) && !isEmpty(computerLog.countryCode) ? computerLog.countryCode : "";
    let countryName = !isEmpty(computerLog) && !isEmpty(computerLog.countryName) ? computerLog.countryName : "";
    let continentCode = !isEmpty(computerLog) && !isEmpty(computerLog.continentCode) ? computerLog.continentCode : "";
    let continentName = !isEmpty(computerLog) && !isEmpty(computerLog.continentName) ? computerLog.continentName : "";
    let stateProvCode = !isEmpty(computerLog) && !isEmpty(computerLog.stateProvCode) ? computerLog.stateProvCode : "";

    let latitude = !isEmpty(computerLog) && !isEmpty(computerLog.latitude) ? computerLog.latitude : "";
    let longitude = !isEmpty(computerLog) && !isEmpty(computerLog.longitude) ? computerLog.longitude : "";
    let postal = !isEmpty(computerLog) && !isEmpty(computerLog.postal) ? computerLog.postal : "";

    let href = !isEmpty(window.location.href) ? window.location.href : "";

    let userIdentifier = window.btoa(JSON.stringify({ ipAddress, lastAccessed: getDateTime() }));

    setUserIdentifier(userIdentifier);

    let url = `${baseURL}computerLogs/`;
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
        browserData: JSON.stringify(browserData),

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
        browserData: JSON.stringify(browserData),

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
      .then(results => {

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


  const saveRecord = () => {

    // window.scrollTo(0, 0);

    setAlertType("");
    setAlertItem("");

    let operation = "Save Record";

    let transactionValid = false;
    let errorMessages = "";
    let formatErrorMessages = "";

    let inlineErrorMessages = {};

    if (isEmpty(formatTrim(txtUsername)) === true) {

      // * Make sure that the Username was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Username</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtUsername: "Please enter the <strong>Username</strong>."
      };

    };

    if (isEmpty(formatTrim(txtPassword)) === true) {

      // * Make sure that the Password was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Password</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtPassword: "Please enter the <strong>Password</strong>."
      };

    };

    if (isEmpty(formatTrim(ddAccountType)) === true) {

      // * Make sure that the Password was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Account Type</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        ddAccountType: "Please select the <strong>Account Type</strong>."
      };

    };

    if (isEmpty(formatTrim(cbxUserPermissions)) === true) {

      // * Make sure that the Password was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>User Permissions</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        cbxUserPermissions: "Please select the <strong>User Permissions</strong>."
      };

    };

    if (isEmpty(rdoActive) === true) {

      // * Make sure that Active was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Active</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        rdoActive: "Please select <strong>Active</strong>."
      };

    };

    // * This is too slow running to label the transaction as valid or invalid. -- 05/06/2021 MF
    // errorMessages = buildErrorMessages("name", errorMessages, formatErrorMessages);

    if (isEmpty(errorMessages) === false) {

      // errorMessages = `Please enter the ${errorMessages.substring(1)}.`;
      errorMessages = `Please enter the${errorMessages.replace(/^,/, "")}.`;

    };

    if (isEmpty(formatErrorMessages) === false) {

      if (isEmpty(errorMessages) === true) {

        errorMessages = formatErrorMessages.replace(/<br\s*\/?>/, "");

      } else {

        // errorMessages = Parse(errorMessages + formatErrorMessages);
        errorMessages = errorMessages + formatErrorMessages;

      };

    };

    if (isEmpty(errorMessages) === false || isEmpty(inlineErrorMessages) === false) {

      if (isEmpty(errorMessages) === false) {

        // * Display the error messages. -- 04/16/2021 MF
        // addErrorMessage(errorMessages);
        setAlertType("error");
        setAlertItem(`${operation}: ${errorMessages}`);
        // setAlertItem({ operation: operation, alertType: "error", message: errorMessages });
        transactionValid = false;

        // dispatch(setResponseReturned(true));

      };

      if (isEmpty(inlineErrorMessages) === false) {

        setInlineErrors(inlineErrorMessages as InlineErrors);
        transactionValid = false;

      };

    } else {

      transactionValid = true;

    };

    if (transactionValid === true) {

      // if (isEmpty(currentID) === true) {

      //   // * Add the record. -- 04/16/2021 MF
      //   processTransaction("I");

      // } else {

      //   // * Update the record. -- 04/16/2021 MF
      //   processTransaction("U");

      // };

      setAlertType("success");
      setAlertItem(`${operation}: Updated record.`);
      // setAlertItem({ operation: operation, alertType: "success", message: "Updated record." });

    };

  };


  const deleteRecord = () => {

  };


  // * Never finished getting this to work. -- 09/25/2024 MF
  // const loadUserProfile = (accessToken) => {

  //   setAlertType("");
  //   setAlertItem("");

  //   setLoginStatus([]);

  //   let url = "https://graph.microsoft.com/v1.0/me";
  //   let response = "";
  //   let data = "";
  //   let operation = "Get User Profile";

  //   fetch(url, {
  //     method: "GET",
  //     headers: new Headers({
  //       "Content-Type": "application/json", "Authorization": `Bearer ${accessToken}`
  //     })
  //   })
  //     .then(results => {

  //       response = results;

  //       console.log(componentName, getDateTime(), "response", response);

  //       if (response.ok !== true) {

  //         // throw Error(`${response.status} ${response.statusText} ${response.url}`);

  //       } else {

  //         if (response.status === 200) {

  //           return results.json();

  //         } else {

  //           return response.status;

  //         };

  //       };

  //     })
  //     .then(results => {

  //       data = results;

  //       console.log(componentName, getDateTime(), "data", data);

  //       if (isEmpty(data) === false) {

  //         setLoginStatus(data);

  //       } else {

  //         // console.error(componentName, getDateTime(), operation, `${operation}: No Results Returned.`);

  //         setAlertType("error");
  //         setAlertItem(`${operation}: No Results Returned.`);

  //         addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data: data, applicationVersion: applicationVersion, computerLog: computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

  //       };

  //     })
  //     .catch((error) => {

  //       // console.error(componentName, getDateTime(), operation, "fetchData error", error);

  //       setAlertType("error");
  //       setAlertItem(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`);

  //       addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, componentName: componentName, transactionData: { applicationVersion: applicationVersion, computerLog: computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

  //     });

  // };


  return (
    <>

      <Header applicationName={applicationName} />

      {isAuthenticated === true ?

        <nav className="sub-header-nav">
          <ul>

            {/* {isAuthenticated === false && inProgress !== InteractionStatus.Startup && inProgress !== InteractionStatus.HandleRedirect ?

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


        {isAuthenticated === false && inProgress !== InteractionStatus.Startup && inProgress !== InteractionStatus.HandleRedirect ?

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

          <section className="section-block">

            <div className="field-legend-container"><div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div><div className="field-legend"><span className="required"> * </span>indicates a required field.</div></div>

            <form>

              <FormInput formInputID="txtUsername" inputType="text" labelText="Username" isRequired={true} inputValue={txtUsername} updateValue={setTxtUsername} />

              <FormInput formInputID="txtPassword" labelText="Password" isRequired={true} inputType="password" inputHint="Your password must be at least eight characters and must contain at least one number, one uppercase letter, one lowercase letter, and one special character." inlineError={inlineErrors.txtPassword} inputValue={txtPassword} updateValue={setTxtPassword} />

              <FormDropdown formInputID="ddAccountType" labelText="Account Type" isRequired={true} optionData={[{ accountTypeID: 1, accountType: "User" }, { accountTypeID: 2, accountType: "Admin" }]} optionID="accountTypeID" optionText={[{ type: "property", text: "accountType" }]} inlineError={inlineErrors.ddAccountType} inputValue={ddAccountType} updateValue={setDdAccountType} />

              <CheckboxGroup formInputID="cbxUserPermissions" legendText="User Permissions" isRequired={true} optionData={[{ userPermissionID: 1, userPermission: "Read" }, { userPermissionID: 2, userPermission: "Write" }]} optionID="userPermissionID" optionText={[{ type: "property", text: "userPermission" }]} inlineError={inlineErrors.cbxUserPermissions} inputValue={cbxUserPermissions} updateValue={setCbxUserPermissions} />

              <FormRadioGroup formInputID="rdoActive" legendText="Active" isRequired={true} optionData={[{ optionID: 1, optionText: "Yes" }, { optionID: 2, optionText: "No" }]} optionID="optionID" optionText={[{ type: "property", text: "optionText" }]} inlineError={inlineErrors.rdoActive} inputValue={rdoActive} updateValue={setRdoActive} />

              <div className="flex-row">

                <button type="button" className="btn btn-primary" onClick={(event) => { saveRecord(); }}>Log In</button>

                <button type="button" className="btn btn-info" onClick={(event) => { setTxtUsername(""); setTxtPassword(""); setDdAccountType(""); setCbxUserPermissions([]); setRdoActive(""); setInlineErrors(null); setAlertItem(""); setAlertType(""); }}>Reset</button>

                <button type="button" className="btn btn-outline" onClick={(event) => { setCurrentUser({}); setIsFormOpen(false); setInlineErrors(null); setAlertItem(""); setAlertType(""); }}>Cancel</button>

                <button type="button" className="btn btn-danger" onClick={(event) => { deleteRecord(); }}>Delete</button>

              </div>

            </form>

          </section>

          : null}

        <Footer copyrightYear={copyrightYear} applicationVersion={applicationVersion} />

      </main>

    </>
  );
};

export default App;