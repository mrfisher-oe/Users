import React, { useState, useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
// import { useNavigate } from "react-router-dom";
import { FormInput } from "shared-components";
import { noFunctionAvailable, isEmpty, getDateTime, isNonEmptyArray, formatTrim, addLog, addErrorLog, showDevelopment, allowLogging } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/ApplicationFunctions";
import { setDatabaseAvailable, setFetchDataUserLists, setFetchDataUserSearches } from "../app/applicationSettingsSlice";
import { setSessionToken, setLoggedInUser, addInformationMessage, addSuccessMessage, addWarningMessage, addErrorMessage, clearMessages } from "../app/activitySlice";

const Login = (props) => {

  // * Available props: -- 07/20/2023 MF
  // * Functions: logOut -- 07/20/2023 MF

  const componentName = "Login";

  const dispatch = useDispatch();
  // const navigate = useNavigate();

  const applicationVersion = useSelector(state => state.applicationSettings.applicationVersion);
  // const copyrightYear = useSelector(state => state.applicationSettings.copyrightYear);
  const baseURL = useSelector(state => state.applicationSettings.baseURL);
  // const baseURLLOR = useSelector(state => state.applicationSettings.baseURLLOR);
  // const baseURLLORSource = useSelector(state => state.applicationSettings.baseURLLORSource);
  // const baseURLPartners = useSelector(state => state.applicationSettings.baseURLPartners);
  // const baseURLApplied = useSelector(state => state.applicationSettings.baseURLApplied);
  const browserData = useSelector(state => state.applicationSettings.browserData);
  const computerLog = useSelector(state => state.applicationSettings.computerLog);
  const userIdentifier = useSelector(state => state.applicationSettings.userIdentifier);
  // const cdnLocation = useSelector(state => state.applicationSettings.cdnLocation);
  const demonstrationMode = useSelector(state => state.activity.demonstrationMode);
  const environmentMode = useSelector(state => state.applicationSettings.environmentMode);
  // const landingPage = useSelector(state => state.applicationSettings.landingPage);
  // const learningObjectID = useSelector(state => state.applicationSettings.learningObjectID);
  // const loginLearningObjectID = useSelector(state => state.applicationSettings.loginLearningObjectID);
  const databaseAvailable = useSelector(state => state.applicationSettings.databaseAvailable);

  const loggedInUser = useSelector(state => state.activity.loggedInUser);
  // const sessionToken = useSelector(state => state.activity.sessionToken);

  let logOut = isEmpty(props) === false && isEmpty(props.logOut) === false ? props.logOut : noFunctionAvailable;

  const [txtUsername, setTxtUsername] = useState("");
  const [txtPassword, setTxtPassword] = useState("");

  const [inlineErrors, setInlineErrors] = useState({});


  // * If the token has expired, then the user is logged out of the current session. -- 06/06/2024 MF
  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    if (isEmpty(currentSessionToken) === true && isEmpty(loggedInUser) === false) {

      logOut();

    };

  });


  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    if (isEmpty(baseURL) === false && isEmpty(currentSessionToken) === false) {

      dispatch(setSessionToken(currentSessionToken));

      // * Fetch from the API to check these. -- 03/06/2021 MF
      getUser(currentSessionToken);

    };

  }, [baseURL]);


  // useEffect(() => {

  //   if (isEmpty(sessionToken) === false) {

  //     dispatch(clearMessages());

  //   };

  // }, [sessionToken]);


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

    };

  }, [txtUsername, txtPassword, inlineErrors]);


  const updateToken = (newToken) => {

    if (isEmpty(newToken) === false) {

      localStorage.setItem(sessionTokenName, newToken);

      // * Both local storage and cookies are being used because the API can't access local storage and the application was built using local storage first. The cookie was added for the API to read if the user is logged in. -- 04/25/2024 MF
      // * From https://stackoverflow.com/questions/37483263/cookie-not-getting-deleted-using-javascript -- 06/28/2024 MF
      // * From https://stackoverflow.com/questions/5688491/unable-to-delete-cookie-from-javascript -- 06/28/2024 MF
      document.cookie = `token=${newToken};max-age=86400;path=/;domain=${window.location.hostname}`;

    };

  };


  const getUser = (sessionToken) => {

    dispatch(clearMessages());

    let url = `${baseURL}users/user/`;
    let response = "";
    let data = "";
    let operation = "Get User";

    if (isEmpty(sessionToken) === false) {

      fetch(url, {
        method: "GET",
        headers: new Headers({
          "Content-Type": "application/json", "Authorization": setFetchAuthorization(sessionToken, environmentMode, demonstrationMode)
        })
      })
        .then(results => {

          response = results;

          if (response.ok !== true) {

            // throw Error(`${response.status} ${response.statusText} ${response.url}`);

          } else {

            if (response.status === 200) {

              return results.json();

            } else {

              return response.status;

            };

          };

        })
        .then(results => {

          data = results;

          if (isEmpty(data) === false) {

            if (data.transactionSuccess === true && isEmpty(data.records) === false) {

              if (data.records[0].active === true || data.records[0].active === 1) {

                // updateLoginStatus(data.records[0].username, data.records[0].password);
                // updateLoginStatus(data.records[0].userID);
                updateLoginStatus(data.records[0]);

                dispatch(setFetchDataUserLists(true));
                dispatch(setFetchDataUserSearches(true));

              } else {

                // * Won't hit this because no records will be returned if the user is not active. -- 03/06/2021 MF

                logOut();

              };

            } else {

              // let message = "Log In Failed";

              // console.error(componentName, getDateTime(), operation, `${operation}: ${data.message}`);

              // addErrorMessage(`${operation}: ${data.message}`);
              // dispatch(addErrorMessage(`${operation}: ${message}` ));

              addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

              logOut();

            };

          } else {

            // let message = "Log In Failed";

            // console.error(componentName, getDateTime(), operation, `${operation}: No Results Returned.`);

            // addErrorMessage(`${operation}: No Results Returned.`);
            // dispatch(addErrorMessage(`${operation}: ${message}` ));

            // addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

            logOut();

          };

        })
        .catch((error) => {

          // let message = "Log In Failed";

          // console.error(componentName, getDateTime(), operation, "fetchData error", error);

          // addErrorMessage(error);
          // dispatch(addErrorMessage(`${operation}: ${message}` ));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, componentName: componentName, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };


  const logIn = (usernameEntered, passwordEntered) => {

    // window.scrollTo(0, 0);

    dispatch(clearMessages());

    let username;
    let password;
    let operation = "Log In";

    // * Code that allows for the development login buttons to work on one click. -- 07/08/2021 MF
    // if (isEmpty(usernameEntered) === false) {

    username = formatTrim(usernameEntered);

    // } else {

    //   username = formatTrim(txtUsername);

    // };

    // if (isEmpty(passwordEntered) === false) {

    password = formatTrim(passwordEntered);

    // } else {

    //   password = formatTrim(txtPassword);

    // };

    let transactionValid = false;
    let errorMessages = "";
    let formatErrorMessages = "";

    let inlineErrorMessages = {};

    if (isEmpty(username) === true) {

      // * Check to make sure that Username was entered. -- 07/13/2021 MF
      // errorMessages = `${errorMessages}, <strong>Username</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtUsername: "Please enter the <strong>Username</strong>."
      };

    };

    if (isEmpty(password) === true) {

      // * Check to make sure that password was entered. -- 07/13/2021 MF
      // errorMessages = `${errorMessages}, <strong>Password</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtPassword: "Please enter the <strong>Password</strong>."
      };

    };

    // if (isEmpty(inlineErrorMessages) === false) {

    //   formatErrorMessages = `${formatErrorMessages}<br />Please fix the errors with the indicated fields in the form.`;

    // };

    // * This is too slow running to label the transaction as valid or invalid. -- 05/06/2021 MF
    // errorMessages = buildErrorMessages("your", errorMessages, formatErrorMessages);

    if (isEmpty(errorMessages) === false) {

      // errorMessages = `Please enter the your ${errorMessages.substring(1)}.`;
      errorMessages = `Please enter your${errorMessages.replace(/^,/, "")}.`;

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

      // * Display the error messages. -- 07/13/2021 MF
      if (isEmpty(errorMessages) === false) {

        dispatch(addErrorMessage(`${operation}: ${errorMessages}`));

      };

      if (isEmpty(inlineErrorMessages) === false) {

        setInlineErrors(inlineErrorMessages);

      };

      transactionValid = false;

    } else {

      transactionValid = true;

    };

    if (transactionValid === true) {

      postLogin(username, password);

      // } else {

      //   let message = "Log In Failed";

      //   // dispatch(addErrorMessage(operation));
      //   dispatch(addErrorMessage(`${operation}: ${message}`));

      //   addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, href: window.location.href, applicationVersion: applicationVersion, browserData: JSON.stringify(browserData), transactionData: { message, loggedInUser, computerLog }, dateEntered: getDateTime() });

    };

  };


  const postLogin = (usernameEntered, passwordEntered) => {

    // dispatch(clearMessages());

    let url = `${baseURL}users/login/`;
    let response = "";
    let data = "";
    let operation = "Login";

    let recordObject = {
      username: usernameEntered,
      password: passwordEntered
    };

    fetch(url, {
      method: "POST",
      headers: new Headers({
        "Content-Type": "application/json", "Authorization": setFetchAuthorization(null, environmentMode, demonstrationMode)
      }),
      body: JSON.stringify({ recordObject: recordObject })
    })
      .then(results => {

        response = results;

        if (response.ok !== true) {

          // throw Error(`${response.status} ${response.statusText} ${response.url}`);

        } else {

          if (response.status === 200) {

            return results.json();

          } else {

            return response.status;

          };

        };

      })
      .then(results => {

        data = results;

        if (isEmpty(data) === false) {

          if (data.transactionSuccess === true && isEmpty(data.records) === false) {

            if (data.records[0].active === true || data.records[0].active === 1) {

              // updateLoginStatus(data.records[0].username, data.records[0].password, usernameEntered, passwordEntered);
              // updateLoginStatus(data.records[0].username, usernameEntered, passwordEntered);
              updateLoginStatus(data.records[0], usernameEntered, passwordEntered);

              dispatch(setSessionToken(data.sessionToken));

              updateToken(data.sessionToken);

              dispatch(setFetchDataUserLists(true));
              dispatch(setFetchDataUserSearches(true));

            } else {

              // * Won't hit this because no records will be returned if the user is not active. -- 03/06/2021 MF

              logOut();

            };

          } else {

            let message = "Log In Failed";

            // console.error(componentName, getDateTime(), operation, `${operation}: ${data.message}`);

            // dispatch(addErrorMessage(`${operation}: ${data.message}`));
            dispatch(addErrorMessage(`${operation}: ${data.message}`));

            // addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            logOut();

          };

        } else {

          let message = "Log In Failed";

          // console.error(componentName, getDateTime(), operation, `${operation}: No Results Returned.`);

          // addErrorMessage(`${operation}: No Results Returned.`);
          // dispatch(addErrorMessage(`${operation}: No Results Returned.`));
          dispatch(addErrorMessage(`${operation}: ${message}`));

          // addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          logOut();

        };

      })
      .catch((error) => {

        let message = "Log In Failed";

        // console.error(componentName, getDateTime(), operation, "fetchData error", error);

        // addErrorMessage(error);
        dispatch(addErrorMessage(`${operation}: ${message}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, componentName: componentName, transactionData: { message, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

      });

  };


  const updateLoginStatus = (user, usernameEntered, passwordEntered) => {

    let loginStatus = { ...user };

    let operation = "Update Login Status";

    let newStatus = isEmpty(loginStatus) === false ? "success" : "failure";

    if (isEmpty(usernameEntered) === false) {

      loginStatus.enteredUsername = usernameEntered;

    };

    if (isEmpty(passwordEntered) === false) {

      loginStatus.enteredPassword = passwordEntered;

    };

    loginStatus.status = newStatus;

    if (loginStatus.userRole === "System Administrator") {

      loginStatus.isSystemAdministrator = true;
      loginStatus.isAdministrator = true;
      loginStatus.isEditor = true;
      loginStatus.isViewerPlusStatistics = true;
      loginStatus.isViewerPlusSource = true;
      loginStatus.isViewer = true;

    } else if (loginStatus.userRole === "Administrator") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = true;
      loginStatus.isEditor = true;
      loginStatus.isViewerPlusStatistics = true;
      loginStatus.isViewerPlusSource = true;
      loginStatus.isViewer = true;

    } else if (loginStatus.userRole === "Editor") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isEditor = true;
      loginStatus.isViewerPlusStatistics = true;
      loginStatus.isViewerPlusSource = true;
      loginStatus.isViewer = true;

    } else if (loginStatus.userRole === "Viewer Plus Statistics") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isEditor = false;
      loginStatus.isViewerPlusStatistics = true;
      loginStatus.isViewerPlusSource = true;
      loginStatus.isViewer = true;

    } else if (loginStatus.userRole === "Viewer Plus Source") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isEditor = false;
      loginStatus.isViewerPlusStatistics = false;
      loginStatus.isViewerPlusSource = true;
      loginStatus.isViewer = true;

    } else if (loginStatus.userRole === "Viewer") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isEditor = false;
      loginStatus.isViewerPlusStatistics = false;
      loginStatus.isViewerPlusSource = false;
      loginStatus.isViewer = true;

      // } else if (newStatus === "success") {

      //   loginStatus.isSystemAdministrator = false;
      //   loginStatus.isAdministrator = false;
      //   loginStatus.isEditor = false;
      //   loginStatus.isViewerPlusStatistics = false;
      //   loginStatus.isViewerPlusSource = false;
      //   loginStatus.isViewer = true;

    } else {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isEditor = false;
      loginStatus.isViewerPlusStatistics = false;
      loginStatus.isViewerPlusSource = false;
      loginStatus.isViewer = false;

    };

    dispatch(setLoggedInUser(loginStatus));

    if (newStatus === "success") {

      setTxtUsername("");
      setTxtPassword("");

      // if (isEmpty(loginLearningObjectID) === false) {

      //   window.location.href = `/learningObjects/${loginLearningObjectID}/index.html?connectionKey=e631a32a2-5df2-4fa8-aa63-1a7c5f6d25b`;

      //   // setTimeout(() => {

      //   //   window.location.href = `/learningObjects/${loginLearningObjectID}/index.html`;

      //   // }, 5000);

      //   // } else {

      //   //   // console.log(componentName, getDateTime(), "updateLoginStatus navigate");
      //   //   // navigate(`/learningObjects/?${parametersURL}`);
      //   //   navigate(`/?${parametersURL}`);

      // };

    } else {

      let message = "Log In Failed";

      // dispatch(addErrorMessage(operation));
      dispatch(addErrorMessage(`${operation}: ${message}`));

      addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, href: window.location.href, applicationVersion: applicationVersion, browserData: JSON.stringify(browserData), transactionData: { message, loggedInUser, computerLog }, dateEntered: getDateTime() });

    };

  };


  return (
    <section className="section-block login-form-section">

      <h2>Login</h2>

      <div className="field-legend-container"><div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div><div className="field-legend"><span className="required"> * </span>indicates a required field.</div></div>

      <form>

        <FormInput formInputID="txtUsername" inputType="text" labelText="Username" isRequired={true} inlineError={inlineErrors.txtUsername} inputValue={txtUsername} updateValue={setTxtUsername} />

        <FormInput formInputID="txtPassword" inputType="password" labelText="Password" isRequired={true} inlineError={inlineErrors.txtPassword} inputValue={txtPassword} updateValue={setTxtPassword} />

        <div className="flex-row">

          <button type="submit" className="btn btn-primary" onClick={(event) => { event.preventDefault(); logIn(txtUsername, txtPassword); }}>Log In</button>

          <button type="button" className="btn btn-dark-gray" onClick={(event) => { dispatch(clearMessages()); setInlineErrors({}); setTxtUsername(""); setTxtPassword(""); }}>Reset</button>

        </div>

        {showDevelopment(environmentMode) === true /* || showDemonstration(environmentMode, demonstrationMode, null) === true */ ?

          <React.Fragment>

            <div className="flex-row">
              <button type="button" className="btn btn-secondary" onClick={(event) => { setTxtUsername("ViewerUser"); setTxtPassword("ViewerUser"); logIn("ViewerUser", "ViewerUser"); }}>Viewer Login</button>
              <button type="button" className="btn btn-secondary" onClick={(event) => { setTxtUsername("ViewerPlusSourceUser"); setTxtPassword("ViewerPlusSourceUser"); logIn("ViewerPlusSourceUser", "ViewerPlusSourceUser"); }}>Viewer Plus Source Login</button>
              <button type="button" className="btn btn-secondary" onClick={(event) => { setTxtUsername("ViewerPlusStatisticsUser"); setTxtPassword("ViewerPlusStatisticsUser"); logIn("ViewerPlusStatisticsUser", "ViewerPlusStatisticsUser"); }}>Viewer Plus Statistics Login</button>
              <button type="button" className="btn btn-secondary" onClick={(event) => { setTxtUsername("user1"); setTxtPassword("wrong password"); logIn("user1", "wrong password"); }}>Failed Login</button>
            </div>

          </React.Fragment>

          : null}

        {/* <div className="field-legend-container"><div className="field-legend">Please contact the help desk for issues with logging in.</div></div> */}
        <div className="field-legend-container"><div className="field-legend"><p>If you have an account in the Learning Object Repository (LOR), please contact the help desk for issues with logging in.</p></div></div>

      </form>

    </section>
  );
};

export default Login;