import { useState, useEffect } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import { FormInput } from "shared-components";
import { isEmpty, getDateTime, formatTrim, addLog, addErrorLog, showDevelopment, allowLogging, getBrowserData } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/applicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired } from "../app/applicationSettingsSlice";
import { setLoggedInUser, setSessionToken, setComponentToLoad, addErrorMessage, clearMessages } from "../app/activitySlice";
import type { RootState } from '../app/store';

type InlineErrors = {
  txtUsername: string;
  txtPassword: string;
} | null;

type LoginProps = {
  invalidURL?: boolean | null;
} | null;

const Login = ({ invalidURL }: LoginProps) => {

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
  // const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  const componentToLoad = useAppSelector((state: RootState) => state.activity.componentToLoad);

  const [txtUsername, setTxtUsername] = useState<string>("");
  const [txtPassword, setTxtPassword] = useState<string>("");

  const [inlineErrors, setInlineErrors] = useState<InlineErrors>({
    txtUsername: "",
    txtPassword: ""
  });


  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    if (!isEmpty(baseURL) && !isEmpty(currentSessionToken)) {

      dispatch(setSessionToken(currentSessionToken));

      // * Fetch from the API to check these. -- 03/06/2021 MF
      getUser(currentSessionToken);

    };

  }, [baseURLApplied]);


  // useEffect(() => {

  //   if (!isEmpty(sessionToken)) {

  //     dispatch(clearMessages());

  //   };

  // }, [sessionToken]);


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (!isEmpty(inlineErrors)) {

      if (!isEmpty(inlineErrors.txtUsername) && !isEmpty(txtUsername)) {

        setInlineErrors({
          ...inlineErrors,
          txtUsername: ""
        });

      };

      if (!isEmpty(inlineErrors.txtPassword) && !isEmpty(txtPassword)) {

        setInlineErrors({
          ...inlineErrors,
          txtPassword: ""
        });

      };

    };

  }, [txtUsername, txtPassword, inlineErrors]);


  const updateToken = (newToken: string) => {

    if (!isEmpty(newToken)) {

      localStorage.setItem(sessionTokenName, newToken);

    };

  };


  const getUser = (sessionToken: string) => {

    dispatch(clearMessages());

    let url: string = `${baseURL}users/user/`;
    let response: any = ""; // TODO create types for response?
    let data: any = "";
    let operation: string = "Get User";

    if (!isEmpty(sessionToken)) {

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

              if (data.records[0].active || data.records[0].active === 1) {

                // updateLoginStatus(data.records[0].username, data.records[0].password);
                // updateLoginStatus(data.records[0].userID);
                updateLoginStatus(data.records[0], null, null);

              } else {

                // * Won't hit this because no records will be returned if the user is not active. -- 03/06/2021 MF

                // logOut();

              };

            } else {

              // let message = "Log In Failed";

              // console.error(operation, `${operation}: ${data.message}`);

              // dispatch(addErrorMessage(`${operation}: ${data.message}`));

              // addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

              // logOut();

            };

          } else {

            // let message = "Log In Failed";

            // console.error(operation, `${operation}: No Results Returned.`);

            // dispatch(addErrorMessage(`${operation}: No Results Returned.`));

            // addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

            // logOut();

          };

        })
        .catch((error) => {

          // let message = "Log In Failed";

          // console.error(operation, "fetchData error", error);

          // dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };


  const logIn = (usernameEntered: string, passwordEntered: string) => {

    // window.scrollTo(0, 0);

    dispatch(clearMessages());

    let username;
    let password;
    let operation = "Log In";

    // * Code that allows for the development login buttons to work on one click. -- 07/08/2021 MF
    // if (!isEmpty(usernameEntered)) {

    username = formatTrim(usernameEntered);

    // } else {

    //   username = formatTrim(txtUsername);

    // };

    // if (!isEmpty(passwordEntered)) {

    password = formatTrim(passwordEntered);

    // } else {

    //   password = formatTrim(txtPassword);

    // };

    let transactionValid = false;
    let errorMessages = "";
    let formatErrorMessages = "";

    let inlineErrorMessages: InlineErrors = {
      txtUsername: "",
      txtPassword: ""
    };

    if (isEmpty(username)) {

      // * Check to make sure that Username was entered. -- 07/13/2021 MF
      // errorMessages = `${errorMessages}, <strong>Username</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtUsername: "Please enter the <strong>Username</strong>."
      };

    };

    if (isEmpty(password)) {

      // * Check to make sure that password was entered. -- 07/13/2021 MF
      // errorMessages = `${errorMessages}, <strong>Password</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtPassword: "Please enter the <strong>Password</strong>."
      };

    };

    // if (!isEmpty(inlineErrorMessages)) {

    //   formatErrorMessages = `${formatErrorMessages}<br />Please fix the errors with the indicated fields in the form.`;

    // };

    // * This is too slow running to label the transaction as valid or invalid. -- 05/06/2021 MF
    // errorMessages = buildErrorMessages("your", errorMessages, formatErrorMessages);

    if (!isEmpty(errorMessages)) {

      // errorMessages = `Please enter the your ${errorMessages.substring(1)}.`;
      errorMessages = `Please enter your${errorMessages.replace(/^,/, "")}.`;

    };

    if (!isEmpty(formatErrorMessages)) {

      if (isEmpty(errorMessages)) {

        errorMessages = formatErrorMessages.replace(/<br\s*\/?>/, "");

      } else {

        // errorMessages = Parse(errorMessages + formatErrorMessages);
        errorMessages = errorMessages + formatErrorMessages;

      };

    };

    if (!isEmpty(errorMessages) || !isEmpty(inlineErrorMessages)) {

      // * Display the error messages. -- 07/13/2021 MF
      if (!isEmpty(errorMessages)) {

        dispatch(addErrorMessage(`${operation}: ${errorMessages}`));

      };

      if (!isEmpty(inlineErrorMessages)) {

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

      //   addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(getBrowserData()), transactionData: { message, loggedInUser, computerLog }, dateEntered: getDateTime() });

    };

  };


  const postLogin = (usernameEntered: string, passwordEntered: string) => {

    // dispatch(clearMessages());

    let url: string = `${baseURL}users/login/`;
    let response: any = "";
    let data: any = "";
    let operation: string = "Login";

    let recordObject = {
      username: usernameEntered,
      password: passwordEntered
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

            if (data.records[0].active || data.records[0].active === 1) {

              // updateLoginStatus(data.records[0].username, data.records[0].password, usernameEntered, passwordEntered);
              // updateLoginStatus(data.records[0].username, usernameEntered, passwordEntered);
              updateLoginStatus(data.records[0], usernameEntered, passwordEntered);

              dispatch(setSessionToken(data.sessionToken));

              updateToken(data.sessionToken);

            } else {

              // * Won't hit this because no records will be returned if the user is not active. -- 03/06/2021 MF

              // logOut();

            };

          } else {

            let message = "Log In Failed";

            // console.error(operation, `${operation}: ${data.message}`);

            dispatch(addErrorMessage(`${operation}: ${data.message}`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            // logOut();

          };

        } else {

          let message = "Log In Failed";

          // console.error(operation, `${operation}: No Results Returned.`);

          // dispatch(addErrorMessage(`${operation}: No Results Returned.`));
          dispatch(addErrorMessage(`${operation}: ${message}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          // logOut();

        };

      })
      .catch((error) => {

        let message = "Log In Failed";

        // console.error(operation, "fetchData error", error);

        // dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));
        dispatch(addErrorMessage(`${operation}: ${message}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

      });

  };


  const updateLoginStatus = (user: any | void, usernameEntered: string | void, passwordEntered: string | void) => {

    let loginStatus = { ...user };
    let operation = "Update Login Status";

    let newStatus = !isEmpty(loginStatus) ? "success" : "failure";

    if (!isEmpty(usernameEntered)) {

      loginStatus.enteredUsername = usernameEntered;

    };

    if (!isEmpty(passwordEntered)) {

      loginStatus.enteredPassword = passwordEntered;

    };

    loginStatus.status = newStatus;

    if (loginStatus.userRole === "System Administrator") {

      loginStatus.isSystemAdministrator = true;
      loginStatus.isAdministrator = true;
      loginStatus.isExtendedRealitySimulationSpecialist = true;
      loginStatus.isDirectorSimulationAndIntegratedSimulationOperations = true;

    } else if (loginStatus.userRole === "Administrator") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = true;
      loginStatus.isExtendedRealitySimulationSpecialist = true;
      loginStatus.isDirectorSimulationAndIntegratedSimulationOperations = true;

    } else if (loginStatus.userRole === "Extended Reality Simulation Specialist") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isExtendedRealitySimulationSpecialist = true;
      loginStatus.isDirectorSimulationAndIntegratedSimulationOperations = false;

    } else if (loginStatus.userRole === "Director, Simulation and Integrated Simulation Operations") {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isExtendedRealitySimulationSpecialist = false;
      loginStatus.isDirectorSimulationAndIntegratedSimulationOperations = true;

    } else {

      loginStatus.isSystemAdministrator = false;
      loginStatus.isAdministrator = false;
      loginStatus.isExtendedRealitySimulationSpecialist = false;
      loginStatus.isDirectorSimulationAndIntegratedSimulationOperations = false;

    };

    dispatch(setLoggedInUser(loginStatus));

    if (newStatus === "success") {

      setTxtUsername("");
      setTxtPassword("");

      if (loginStatus.isSystemAdministrator) {

        dispatch(setComponentToLoad("Requests"));

      } else {

        dispatch(setComponentToLoad("ScheduleCalendar"));

      };

    } else {

      let message = "Log In Failed";

      // addErrorMessage(operation);
      dispatch(addErrorMessage(`${operation}: ${message}`));

      addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(getBrowserData()), transactionData: { message, loggedInUser, computerLog }, dateEntered: getDateTime() });

    };

  };


  return (
    <>

      {isEmpty(loggedInUser) && invalidURL !== true && componentToLoad === "Login" ?

        <section className="section-block">

          <h2>Administrator Login</h2>

          <div className="field-legend-container">
            <div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div>
            <div className="field-legend"><span className="required"> * </span>indicates a required field.</div>
          </div>

          <form>

            <FormInput formInputID="txtUsername" inputType="text" labelText="Username" isRequired={true} inlineError={inlineErrors.txtUsername} inputValue={txtUsername} updateValue={setTxtUsername} />

            <FormInput formInputID="txtPassword" inputType="password" labelText="Password" isRequired={true} inlineError={inlineErrors.txtPassword} inputValue={txtPassword} updateValue={setTxtPassword} />

            <div className="flex-row">

              <button type="submit" className="btn btn-primary" onClick={(event) => { event.preventDefault(); logIn(txtUsername, txtPassword); }}>Log In</button>

              <button type="button" className="btn btn-dark-gray" onClick={() => { setTxtUsername(""); setTxtPassword(""); setInlineErrors({ txtUsername: "", txtPassword: "" }); }}>Reset</button>

            </div>

            {showDevelopment(environmentMode) /* || showDemonstration(environmentMode, demonstrationMode, null) */ ?

              <div className="flex-row">
                <button type="button" className="btn btn-secondary" onClick={() => { setTxtUsername("SimulationOperationsSpecialistUser"); setTxtPassword("SimulationOperationsSpecialistUser"); logIn("SimulationOperationsSpecialistUser", "SimulationOperationsSpecialistUser"); }}>Simulation Operations Specialist Login</button>
                <button type="button" className="btn btn-secondary" onClick={() => { setTxtUsername("AdministratorUser"); setTxtPassword("AdministratorUser"); logIn("AdministratorUser", "AdministratorUser"); }}>Administrator Login</button>
                <button type="button" className="btn btn-secondary" onClick={() => { setTxtUsername("user1"); setTxtPassword("wrong password"); logIn("user1", "wrong password"); }}>Failed Login</button>
              </div>

              : null}

            <div className="field-legend-container"><div className="field-legend">Please contact the help desk for issues with logging in.</div></div>

          </form>

        </section>

        : null}

    </>
  );
};

export default Login;