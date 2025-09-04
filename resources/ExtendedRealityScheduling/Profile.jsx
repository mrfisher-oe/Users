import { useState, useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { FormInput } from "shared-components";
import { emailFormat, isEmpty, getDateTime, getFirstItem, convertSpecialCharacters, convertNullEmptyString, formatTrim, addLog, addErrorLog, allowLogging } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/ApplicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired } from "../app/applicationSettingsSlice";
import { setLoggedInUser, setComponentToLoad, addSuccessMessage, addErrorMessage, clearMessages } from "../app/activitySlice";

const Profile = () => {

  const dispatch = useDispatch();

  const applicationVersion = useSelector(state => state.applicationSettings.applicationVersion);
  const baseURL = useSelector(state => state.applicationSettings.baseURL);
  // const baseURLApplied = useSelector(state => state.applicationSettings.baseURLApplied);
  const browserData = useSelector(state => state.applicationSettings.browserData);
  const computerLog = useSelector(state => state.applicationSettings.computerLog);
  const userIdentifier = useSelector(state => state.applicationSettings.userIdentifier);
  const demonstrationMode = useSelector(state => state.activity.demonstrationMode);
  const environmentMode = useSelector(state => state.applicationSettings.environmentMode);
  const databaseAvailable = useSelector(state => state.applicationSettings.databaseAvailable);
  // const userTokenExpired = useSelector(state => state.applicationSettings.userTokenExpired);

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


  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    // * When going directly to the page in a new tab or when refreshing, the loggedInUser isn't available yet in Redux so currentSessionToken is checked instead. -- 06/28/2024 MF
    if (isEmpty(currentSessionToken) || isEmpty(loggedInUser)) {

      let operation = "Attempted Page Visit";

      addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { loggedInUser, computerLog }, dateEntered: getDateTime() });

      dispatch(setComponentToLoad(""));

    };

  }, [loggedInUser]);


  useEffect(() => {

    loadRecord();

  }, [loggedInUser]);


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (!isEmpty(inlineErrors)) {

      if (!isEmpty(inlineErrors.txtFirstName) && !isEmpty(txtFirstName)) {

        setInlineErrors({
          ...inlineErrors,
          txtFirstName: ""
        });

      };

      if (!isEmpty(inlineErrors.txtLastName) && !isEmpty(txtLastName)) {

        setInlineErrors({
          ...inlineErrors,
          txtLastName: ""
        });

      };

      if (!isEmpty(inlineErrors.txtEmail) && !isEmpty(txtEmail) && !isEmpty(txtEmail.match(emailFormat))) {

        setInlineErrors({
          ...inlineErrors,
          txtEmail: ""
        });

      };

    };

  }, [txtFirstName, txtLastName, txtEmail, inlineErrors]);


  const loadRecord = () => {

    if (!isEmpty(loggedInUser)) {

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

    // if (isEmpty(formatTrim(txtUsername))) {

    //   // * Make sure that the user's Username was entered. -- 06/24/2021 MF
    //   errorMessages = `${errorMessages}, <strong>Username</strong>`;

    // };

    if (isEmpty(formatTrim(txtFirstName))) {

      // * Make sure that the user's First Name was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>First Name</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtFirstName: "Please enter the <strong>First Name</strong>."
      };

    };

    if (isEmpty(formatTrim(txtLastName))) {

      // * Make sure that the user's Last Name was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Last Name</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtLastName: "Please enter the <strong>Last Name</strong>."
      };

    };

    if (isEmpty(formatTrim(txtEmail))) {

      // * Make sure that the user's Email was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Email</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtEmail: "Please enter the <strong>Email</strong>."
      };

    } else {

      // * If txtEmail.match(emailFormat) === null (it is empty), it is not a valid email address. -- 08/03/2023 KH
      if (isEmpty(txtEmail.match(emailFormat))) {

        // formatErrorMessages = `${formatErrorMessages}<br />Please enter a valid email address for the <strong>Email</strong>.`;

        inlineErrorMessages = {
          ...inlineErrorMessages,
          txtEmail: "Please enter a valid email address for the <strong>Email</strong>."
        };

      };

    };

    // if (isEmpty(formatTrim(txtPassword))) {

    //   // * Make sure that the user's Password was entered. -- 06/24/2021 MF
    //   errorMessages = `${errorMessages}, <strong>Password</strong>`;

    // };

    if (!isEmpty(inlineErrorMessages)) {

      formatErrorMessages = `${formatErrorMessages}<br />Please fix the errors with the indicated fields in the form.`;

    };

    // * This is too slow running to label the transaction as valid or invalid. -- 05/06/2021 MF
    // errorMessages = buildErrorMessages("users", errorMessages, formatErrorMessages);

    if (!isEmpty(errorMessages)) {

      // errorMessages = `Please enter the user's ${errorMessages.substring(1)}.`;
      errorMessages = `Please enter the user's${errorMessages.replace(/^,/, "")}.`;

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

      if (!isEmpty(errorMessages)) {

        // * Display the error messages. -- 04/16/2021 MF
        // console.log(errorMessages);
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

      // if (isEmpty(userID)) {

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
      updatedBy: !isEmpty(loggedInUser) && loggedInUser.userID
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
      body: JSON.stringify({ recordObject })
    })
      .then(results => {

        response = results;

        if (response.status === 200) {

          return response.json();

        } else {

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: `${response.status} ${response.statusText} ${response.url}` }, dateEntered: getDateTime() });

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

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { dataRecord, previousRecord, loggedInUser, computerLog }, dateEntered: getDateTime() });

            dispatch(addSuccessMessage(`${operation}: ${data.message}`));

          } else {

            // console.error(operation, "data.message", data.message);

            dispatch(addErrorMessage(`${operation}: ${data.message}`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

          };

        } else {

          dispatch(addErrorMessage(`${operation}: No Results Returned.`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

        };

      })
      .catch((error) => {

        // console.error(operation, "error", error);

        dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

      });

  };


  return (
    <section className="section-block large">

      <h2>Profile</h2>

      <div className="field-legend-container">
        <div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div>
        <div className="field-legend"><span className="required"> * </span>indicates a required field.</div>
      </div>

      <form className="admin-form">

        <p><strong>Username</strong>: {txtUsername}</p>

        {/* <FormInput formInputID="txtUsername" inputType="text" labelText="Username" isRequired={true} inputValue={txtUsername} updateValue={setTxtUsername} /> */}

        <FormInput formInputID="txtFirstName" inputType="text" labelText="First Name" isRequired={true} inlineError={inlineErrors.txtFirstName} inputValue={txtFirstName} updateValue={setTxtFirstName} />

        <FormInput formInputID="txtLastName" inputType="text" labelText="Last Name" isRequired={true} inlineError={inlineErrors.txtLastName} inputValue={txtLastName} updateValue={setTxtLastName} />

        <FormInput formInputID="txtEmail" inputType="text" labelText="Email" isRequired={true} inlineError={inlineErrors.txtEmail} inputValue={txtEmail} updateValue={setTxtEmail} />

        <FormInput formInputID="txtPassword" inputType="text" labelText="Password (Only updated if a value is entered)" isRequired={true} inputValue={txtPassword} updateValue={setTxtPassword} />

        <div className="flex-row">

          <button type="button" className="btn btn-primary" onClick={() => { saveRecord(); }}>Save</button>

          <button type="button" className="btn btn-dark-gray" onClick={() => { loadRecord(); dispatch(clearMessages()); setInlineErrors({}); }}>Reset</button>

          {/* <button type="button" className="btn btn-outline" onClick={() => { setCurrentUser({}); dispatch(clearMessages()); setInlineErrors({}); }}>Cancel</button> */}

        </div>

      </form>

    </section>
  );
};

export default Profile;