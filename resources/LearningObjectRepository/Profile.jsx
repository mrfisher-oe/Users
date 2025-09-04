import React, { useState, useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { FormInput } from "shared-components";
import { useNavigate } from "react-router-dom";
import { emailFormat, isEmpty, getDateTime, isNonEmptyArray, getFirstItem, convertSpecialCharacters, convertNullEmptyString, formatTrim, addLog, addErrorLog, allowLogging } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/ApplicationFunctions";
import { setDatabaseAvailable } from "../app/applicationSettingsSlice";
import { setLoggedInUser, addInformationMessage, addSuccessMessage, addWarningMessage, addErrorMessage, clearMessages } from "../app/activitySlice";

const Profile = () => {

  const componentName = "Profile";

  const dispatch = useDispatch();
  const navigate = useNavigate();

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
  const databaseAvailable = useSelector(state => state.applicationSettings.databaseAvailable);

  const loggedInUser = useSelector(state => state.activity.loggedInUser);
  const sessionToken = useSelector(state => state.activity.sessionToken);

  const [currentUser, setCurrentUser] = useState({});
  const [userID, setUserID] = useState(null);
  const [txtUsername, setTxtUsername] = useState("");
  const [txtFirstName, setTxtFirstName] = useState("");
  const [txtLastName, setTxtLastName] = useState("");
  const [txtEmail, setTxtEmail] = useState("");
  const [txtPassword, setTxtPassword] = useState("");

  const [inlineErrors, setInlineErrors] = useState({});

  // let disabled = isEmpty(loggedInUser) === false ? loggedInUser.shared : loggedInUser.shared;
  let disabled = true;

  if (isEmpty(loggedInUser) === false) {

    disabled = loggedInUser.shared;

  };


  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    // * When going directly to the page in a new tab or when refreshing, the loggedInUser isn't available yet in Redux so currentSessionToken is checked instead. -- 06/28/2024 MF
    // * The check for only isEmpty(loggedInUser) === true won't work because, like in the above comment, currentSessionToken has a value and loggedInUser does not when this code is run. The check for loggedInUser must also have a check on the user role included.  -- 08/26/2024 MF
    if (isEmpty(currentSessionToken) === true /* || isEmpty(loggedInUser) === true */) {

      let operation = "Attempted Page Visit";

      addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, href: window.location.href, applicationVersion: applicationVersion, browserData: JSON.stringify(browserData), transactionData: { componentName, loggedInUser, computerLog }, dateEntered: getDateTime() });

      // navigate(`/?${parametersURL}`);
      navigate("/");

    };

  }, [loggedInUser]);


  useEffect(() => {

    loadRecord();

  }, [loggedInUser]);


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (isEmpty(inlineErrors) === false) {

      if (isEmpty(inlineErrors.txtFirstName) === false && isEmpty(txtFirstName) === false) {

        setInlineErrors({
          ...inlineErrors,
          txtFirstName: ""
        });

      };

      if (isEmpty(inlineErrors.txtLastName) === false && isEmpty(txtLastName) === false) {

        setInlineErrors({
          ...inlineErrors,
          txtLastName: ""
        });

      };

      if (isEmpty(inlineErrors.txtEmail) === false && isEmpty(txtEmail) === false && isEmpty(txtEmail.match(emailFormat)) === false) {

        setInlineErrors({
          ...inlineErrors,
          txtEmail: ""
        });

      };

    };

  }, [txtFirstName, txtLastName, txtEmail, inlineErrors]);


  const loadRecord = () => {

    if (isEmpty(loggedInUser) === false) {

      setCurrentUser(loggedInUser);
      setUserID(loggedInUser.userID);
      setTxtUsername(loggedInUser.username);
      setTxtFirstName(loggedInUser.firstName);
      setTxtLastName(loggedInUser.lastName);
      setTxtEmail(loggedInUser.email);
      // setTxtPassword(loggedInUser.password);

    } else {

      setCurrentUser({});
      setUserID(null);
      setTxtUsername("");
      setTxtFirstName("");
      setTxtLastName("");
      setTxtEmail("");
      setTxtPassword("");

    };

  };


  const saveRecord = () => {

    // window.scrollTo(0, 0);

    dispatch(clearMessages());

    let operation = "Save Record";

    let transactionValid = false;
    let errorMessages = "";
    let formatErrorMessages = "";

    let inlineErrorMessages = {};

    // if (isEmpty(formatTrim(txtUsername)) === true) {

    //   // * Make sure that the user's Username was entered. -- 06/24/2021 MF
    //   errorMessages = `${errorMessages}, <strong>Username</strong>`;

    // };

    if (isEmpty(formatTrim(txtFirstName)) === true) {

      // * Make sure that the user's First Name was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>First Name</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtFirstName: "Please enter the <strong>First Name</strong>."
      };

    };

    if (isEmpty(formatTrim(txtLastName)) === true) {

      // * Make sure that the user's Last Name was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Last Name</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtLastName: "Please enter the <strong>Last Name</strong>."
      };

    };

    if (isEmpty(formatTrim(txtEmail)) === true) {

      // * Make sure that the user's Email was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Email</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtEmail: "Please enter the <strong>Email</strong>."
      };

    } else {

      // * If txtEmail.match(emailFormat) === null (it is empty), it is not a valid email address. -- 08/03/2023 KH
      if (isEmpty(txtEmail.match(emailFormat)) === true) {

        // formatErrorMessages = `${formatErrorMessages}<br />Please enter a valid email address for the <strong>Email</strong>.`;

        inlineErrorMessages = {
          ...inlineErrorMessages,
          txtEmail: "Please enter a valid email address for the <strong>Email</strong>."
        };

      };

    };

    // if (isEmpty(formatTrim(txtPassword)) === true) {

    //   // * Make sure that the user's Password was entered. -- 06/24/2021 MF
    //   errorMessages = `${errorMessages}, <strong>Password</strong>`;

    // };

    if (isEmpty(inlineErrorMessages) === false) {

      formatErrorMessages = `${formatErrorMessages}<br />Please fix the errors with the indicated fields in the form.`;

    };

    // * This is too slow running to label the transaction as valid or invalid. -- 05/06/2021 MF
    // errorMessages = buildErrorMessages("users", errorMessages, formatErrorMessages);

    if (isEmpty(errorMessages) === false) {

      // errorMessages = `Please enter the user's ${errorMessages.substring(1)}.`;
      errorMessages = `Please enter the user's${errorMessages.replace(/^,/, "")}.`;

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
        // console.log(componentName, getDateTime(), errorMessages);
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

      // if (isEmpty(userID) === true) {

      //   // * Add the record. -- 04/16/2021 MF
      //   processTransaction("I");

      // } else {

      // * Update the record. -- 04/16/2021 MF
      processTransaction("U");

      // };

    };

  };


  const processTransaction = (transactionType) => {

    let url = `${baseURL}users/`;
    let response = "";
    let data = "";
    let operation = "";
    let method = "";
    let previousRecord = loggedInUser;
    let primaryKeyID = userID;

    let recordObject = {
      // username: convertNullEmptyString(formatTrim(txtUsername)),
      firstName: convertNullEmptyString(formatTrim(txtFirstName)),
      lastName: convertNullEmptyString(formatTrim(txtLastName)),
      email: convertNullEmptyString(formatTrim(txtEmail)),
      password: convertNullEmptyString(formatTrim(txtPassword)),
      updatedBy: isEmpty(loggedInUser) === false && loggedInUser.userID
    };

    // if (transactionType === "I") {

    //   // * Add the record. -- 04/16/2021 MF
    //   operation = "Added User";
    //   method = "POST";
    //   recordObject.active = true;

    // } else
    if (transactionType === "U") {

      // * Update the record. -- 04/16/2021 MF
      operation = "Updated User";
      method = "PUT";
      // url = url + primaryKeyID;
      recordObject.userID = primaryKeyID;
      // recordObject.active = loggedInUser.active;

      // } else if (transactionType === "D") {

      //   // * Delete the record. -- 06/02/2021 MF
      //   operation = "Deleted User";
      //   method = "PUT";
      //   url = url + primaryKeyID;
      //   recordObject.userID = primaryKeyID;
      //   recordObject.active = false;

    };

    fetch(url, {
      method: method,
      headers: new Headers({
        "Content-Type": "application/json", "Authorization": setFetchAuthorization(sessionToken, environmentMode, demonstrationMode)
      }),
      body: JSON.stringify({ recordObject: recordObject })
    })
      .then(results => {

        response = results;

        if (typeof response === "object") {

          if (response.status === 200) {

            // ? If the fetch fails, then set the databaseAvailable to false? -- 06/02/2021 MF
            // ? If the fetch fails, add a record to offlineUpdates? -- 06/02/2021 MF
            // if (response.ok !== true) {

            //     throw Error(`${response.status } ${response.statusText } ${response.url}`);

            // } else {

            // if (response.status === 200) {

            return response.json();

            // } else {

            //     return response.status;

            // };

            // };

          } else {

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: `${response.status} ${response.statusText} ${response.url}` }, dateEntered: getDateTime() });

          };

        };

      })
      .then(results => {

        data = results;

        if (isEmpty(data) === false) {

          if (data.transactionSuccess === true && isEmpty(data.records) === false) {

            let dataRecord = getFirstItem(data.records);

            setTxtUsername(convertNullEmptyString(dataRecord.username));
            setTxtFirstName(convertNullEmptyString(dataRecord.firstName));
            setTxtLastName(convertNullEmptyString(dataRecord.lastName));
            setTxtEmail(convertNullEmptyString(dataRecord.email));
            setTxtPassword(convertNullEmptyString(dataRecord.password));

            let newLoggedInUser = { ...currentUser };

            newLoggedInUser.username = convertNullEmptyString(dataRecord.username);
            newLoggedInUser.firstName = convertNullEmptyString(dataRecord.firstName);
            newLoggedInUser.lastName = convertNullEmptyString(dataRecord.lastName);
            newLoggedInUser.email = convertNullEmptyString(dataRecord.email);
            newLoggedInUser.password = convertNullEmptyString(dataRecord.password);

            dispatch(setLoggedInUser(newLoggedInUser));

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, href: window.location.href, applicationVersion: applicationVersion, browserData: JSON.stringify(browserData), transactionData: { dataRecord, previousRecord, loggedInUser, computerLog }, dateEntered: getDateTime() });

            dispatch(addSuccessMessage(`${operation}: ${data.message}`));

          } else {

            // console.error(componentName, getDateTime(), operation, "data.message", data.message);

            dispatch(addErrorMessage(`${operation}: ${data.message}`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

          };

        } else {

          // addErrorMessage(`${operation}: No Results Returned.`);
          dispatch(addErrorMessage(`${operation}: No Results Returned.`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

        };

      })
      .catch((error) => {

        // console.error(componentName, getDateTime(), operation, "error", error);

        // addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`);
        dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, componentName: componentName, transactionData: { primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

      });

  };


  return (
    <section className="section-block large">

      <h2>Profile</h2>

      {isEmpty(loggedInUser) === false && loggedInUser.shared !== true ?

        <React.Fragment>

          <div className="field-legend-container"><div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div><div className="field-legend"><span className="required"> * </span>indicates a required field.</div></div>

          <form className="admin-form">

            <p><strong>Username</strong>: {txtUsername}</p>

            <FormInput formInputID="txtFirstName" inputType="text" labelText="First Name" isRequired={true} inlineError={inlineErrors.txtFirstName} inputValue={txtFirstName} updateValue={setTxtFirstName} inputDisabled={disabled} />

            <FormInput formInputID="txtLastName" inputType="text" labelText="Last Name" isRequired={true} inlineError={inlineErrors.txtLastName} inputValue={txtLastName} updateValue={setTxtLastName} inputDisabled={disabled} />

            <FormInput formInputID="txtEmail" inputType="text" labelText="Email" isRequired={true} inlineError={inlineErrors.txtEmail} inputValue={txtEmail} updateValue={setTxtEmail} inputDisabled={disabled} />

            <FormInput formInputID="txtPassword" inputType="text" labelText="Password (Only updated if a value is entered)" inputValue={txtPassword} updateValue={setTxtPassword} inputDisabled={disabled} />

            <div className="flex-row">

              <button type="button" className="btn btn-primary" onClick={(event) => { saveRecord(); }}>Save</button>

              <button type="button" className="btn btn-dark-gray" onClick={(event) => { dispatch(clearMessages()); setInlineErrors({}); loadRecord(); }}>Reset</button>

              {/* <button type="button" className="btn btn-outline" onClick={(event) => { dispatch(clearMessages()); setCurrentUser({}); }}>Cancel</button> */}

            </div>

          </form>

        </React.Fragment>

        :

        <React.Fragment>

          <p><strong>Username</strong>: {txtUsername}</p>

          <p><strong>First Name</strong>: {txtFirstName}</p>

          <p><strong>Last Name</strong>: {txtLastName}</p>

          <p><strong>Email</strong>: {txtEmail}</p>

        </React.Fragment>

      }

    </section>
  );
};

export default Profile;