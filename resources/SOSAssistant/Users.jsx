import { useState, useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { CheckboxGroup, DialogBoxConfirmation, FormDropdown, FormInput, SortableColumnHeader, useDialogBoxConfirmation, NoResultsText } from "shared-components";
import { emailFormat, isEmpty, getDateTime, isNonEmptyArray, getFirstItem, displayDateAndTime, sortObjectArrayByProperty, convertSpecialCharacters, convertNullEmptyString, formatTrim, formatToString, formatLowerCase, formatSearchInput, addLog, addErrorLog, allowLogging } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/ApplicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired } from "../app/applicationSettingsSlice";
import { setComponentToLoad, setIsFormOpen, addSuccessMessage, addErrorMessage, clearMessages } from "../app/activitySlice";

const Users = ({ processTransactionUserRequest }) => {

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

  // const sosAssistantUserRequests = useSelector(state => state.activity.sosAssistantUserRequests);
  const sosAssistantUserApplications = useSelector(state => state.activity.sosAssistantUserApplications);
  // const requestTypes = useSelector(state => state.activity.requestTypes);
  // const partners = useSelector(state => state.activity.partners);
  // const currentPartners = useSelector(state => state.activity.currentPartners);
  // const partnerSites = useSelector(state => state.activity.partnerSites);
  const currentPartnerSites = useSelector(state => state.activity.currentPartnerSites);
  // const associatedData = useSelector(state => state.activity.associatedData);

  const isFormOpen = useSelector(state => state.activity.isFormOpen);

  const currentUserRequest = useSelector(state => state.activity.currentUserRequest);
  // const currentUserRequestID = useSelector(state => state.activity.currentUserRequestID);

  // * Search/filters -- 05/07/2024 JH
  const [txtSearch, setTxtSearch] = useState("");
  const [ddUserRoleFilter, setDdUserRoleFilter] = useState("");
  const [ddActiveFilter, setDdActiveFilter] = useState("true");

  const [noResultsDisplay, setNoResultsDisplay] = useState("");

  const [sortProperty, setSortProperty] = useState(""); // ? Default to lastName? -- 10/27/2023 JH
  const [sortDirection, setSortDirection] = useState(""); // ? Default to asc? -- 10/27/2023 JH

  const [users, setUsers] = useState([]);
  const [userRoles, setUserRoles] = useState([]);

  const [currentUsers, setCurrentUsers] = useState([]);
  const [currentUser, setCurrentUser] = useState({});

  const [userID, setUserID] = useState(null);
  const [txtUsername, setTxtUsername] = useState("");
  const [txtFirstName, setTxtFirstName] = useState("");
  const [txtLastName, setTxtLastName] = useState("");
  const [txtEmail, setTxtEmail] = useState("");
  const [txtPassword, setTxtPassword] = useState("");
  const [ddUserRole, setDdUserRole] = useState("");
  const [ddPartnerSiteID, setDdPartnerSiteID] = useState("");
  const [cbxApplicationID, setCbxApplicationID] = useState([]);

  const [inlineErrors, setInlineErrors] = useState({});

  const [processTransactionValue, confirmationDialogBoxOpen, confirmationDialogBoxSize, confirmationDialogBoxTitle, confirmationDialogBoxContent, confirmationDialogBoxType, confirmationDialogBoxContinue, confirmAction, deleteRecord, hardDeleteRecord, closeDeleteDialogBox, setConfirmationDialogBoxContinue, setProcessTransactionValue] = useDialogBoxConfirmation();


  useEffect(() => {

    loadUsers();

    loadUserRoles();

  }, []);


  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    // * When going directly to the page in a new tab or when refreshing, the loggedInUser isn't available yet in Redux so currentSessionToken is checked instead. -- 06/28/2024 MF
    if (isEmpty(currentSessionToken) || (!isEmpty(loggedInUser) && !loggedInUser.isAdministrator)) {

      let operation = "Attempted Page Visit";

      addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { loggedInUser, computerLog }, dateEntered: getDateTime() });

      dispatch(setComponentToLoad(""));

    };

  }, [loggedInUser]);


  useEffect(() => {

    loadRecord(currentUser);

  }, [currentUser]);


  // * If adding user from UserRequests.js, then set currentUser to currentUserRequest. -- 05/22/2024 JH
  useEffect(() => {

    if (!isEmpty(currentUserRequest) && isNonEmptyArray(userRoles)) {

      let newUserRole = getFirstItem(userRoles.filter(userRole => userRole.userRole === currentUserRequest.positionName));
      let newUserRoleID = !isEmpty(newUserRole) ? newUserRole.userRoleID : null;

      let newCurrentUser = {
        email: currentUserRequest.email,
        firstName: currentUserRequest.firstName,
        lastName: currentUserRequest.lastName,
        partnerSiteID: currentUserRequest.partnerSiteID,
        userID: null,
        userRoleID: newUserRoleID,
        username: ""
      };

      setCurrentUser(newCurrentUser);

    };

  }, [currentUserRequest, userRoles]);


  // * Used for passing on the transaction value from the delete hook. -- 10/16/2023 JH
  useEffect(() => {

    if (!isEmpty(processTransactionValue)) {

      dispatch(clearMessages());

      processTransaction(processTransactionValue);

      setProcessTransactionValue("");

    };

  }, [processTransactionValue]);


  // * Search/filter users -- 08/31/2023 JH
  useEffect(() => {

    if (isNonEmptyArray(users)) {

      let combinedResults = [...users];

      if (!isEmpty(txtSearch)) {

        combinedResults = combinedResults.filter((user) => formatLowerCase(user.username).includes(formatSearchInput(txtSearch)) || formatLowerCase(user.firstName).includes(formatSearchInput(txtSearch)) || formatLowerCase(user.lastName).includes(formatSearchInput(txtSearch)));

      };

      if (!isEmpty(ddUserRoleFilter)) {

        combinedResults = combinedResults.filter((user) => formatToString(user.userRoleID) === ddUserRoleFilter);

      };

      if (!isEmpty(ddActiveFilter)) {

        if (ddActiveFilter === "true") {

          combinedResults = combinedResults.filter((user) => user.active || user.active === 1);

        } else {

          combinedResults = combinedResults.filter((user) => !user.active || user.active === 0);

        };

      };

      if (isNonEmptyArray(combinedResults) && !isEmpty(sortProperty) && sortDirection !== "unsorted") {

        combinedResults = sortObjectArrayByProperty(combinedResults, sortProperty, sortDirection);

      };

      if (!isNonEmptyArray(combinedResults)) {

        setNoResultsDisplay(true);

      };

      setCurrentUsers(combinedResults);

    };

  }, [users, txtSearch, ddUserRoleFilter, ddActiveFilter, sortProperty, sortDirection]);


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (!isEmpty(inlineErrors)) {

      if (!isEmpty(inlineErrors.txtUsername) && !isEmpty(txtUsername)) {

        setInlineErrors({
          ...inlineErrors,
          txtUsername: ""
        });

      };

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

      if (!isEmpty(inlineErrors.ddUserRole) && !isEmpty(ddUserRole)) {

        setInlineErrors({
          ...inlineErrors,
          ddUserRole: ""
        });

      };

      if (!isEmpty(inlineErrors.ddPartnerSiteID) && !isEmpty(ddPartnerSiteID)) {

        setInlineErrors({
          ...inlineErrors,
          ddPartnerSiteID: ""
        });

      };

    };

  }, [txtUsername, txtFirstName, txtLastName, txtEmail, ddUserRole, ddPartnerSiteID, inlineErrors]);


  const loadUsers = () => {

    if (!isEmpty(baseURL)) {

      dispatch(clearMessages());

      setUsers([]);

      let url = `${baseURL}sosAssistantUsers/`;
      let response = "";
      let data = "";
      let operation = "Get SOS Assistant Users";

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

              let newUsers = [...data.records];

              // * Removes the Extended Reality Scheduling users from the records. This is temporary fop the transition to moving the SOS Assistant users to this application. -- 08/22/2025 MF
              newUsers = newUsers.filter(user => !isEmpty(user.applications));

              setUsers(newUsers);

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


  const loadUserRoles = () => {

    if (!isEmpty(baseURL)) {

      // * Causes the form to re-render after submission and the messages disappear before they can be viewed. -- 02/07/2025 MF
      // dispatch(clearMessages());

      setUserRoles([]);

      let url = `${baseURL}users/userRoles/`;
      let response = "";
      let data = "";
      let operation = "Get User Roles";

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

              setUserRoles(data.records);

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


  const loadUserApplications = (currentUserID) => {

    if (!isEmpty(baseURL)) {

      // * Causes the form to re-render after submission and the messages disappear before they can be viewed. -- 02/07/2025 MF
      // dispatch(clearMessages());

      let url = `${baseURL}sosAssistantUsers/applications/${currentUserID}/`;
      let response = "";
      let data = "";
      let operation = "Get User Applications";

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

              let applicationIDs = data.records.map((record) => formatToString(record.applicationID));

              setCbxApplicationID(applicationIDs);

              dispatch(setDatabaseAvailable(true));

              // } else {

              //   // console.error(operation, `${operation}: ${data.message}`);

              //   dispatch(addErrorMessage(`${operation}: ${data.message}`));

              //   addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

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


  const loadRecord = (newCurrentUser) => {

    if (!isEmpty(newCurrentUser)) {

      setUserID(newCurrentUser.userID);
      setTxtUsername(newCurrentUser.username);
      setTxtFirstName(newCurrentUser.firstName);
      setTxtLastName(newCurrentUser.lastName);
      setTxtEmail(newCurrentUser.email);
      // setTxtPassword(newCurrentUser.password);
      setTxtPassword("");
      setDdUserRole(newCurrentUser.userRoleID);
      setDdPartnerSiteID(newCurrentUser.partnerSiteID);

      loadUserApplications(newCurrentUser.userID);

    } else {

      setUserID(null);
      setTxtUsername("");
      setTxtFirstName("");
      setTxtLastName("");
      setTxtEmail("");
      setTxtPassword("");
      setDdUserRole("");
      setDdPartnerSiteID("");

      setCbxApplicationID([]);

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

    if (isEmpty(formatTrim(txtUsername))) {

      // * Make sure that the user's Username was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Username</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtUsername: "Please enter the <strong>Username</strong>."
      };

    };

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

    if (isEmpty(formatTrim(ddUserRole))) {

      // * Make sure that the user's Role was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Role</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        ddUserRole: "Please enter the <strong>Role</strong>."
      };

    };

    if (isEmpty(ddPartnerSiteID)) {

      // * Make sure that the Partner and Partner Site was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Partner and Partner Site</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        ddPartnerSiteID: "Please enter the user's <strong>Partner and Partner Site</strong>."
      };

    };

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
        // addErrorMessage(errorMessages);
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

      if (isEmpty(userID)) {

        // * Add the record. -- 04/16/2021 MF
        processTransaction("I");

      } else {

        // * Update the record. -- 04/16/2021 MF
        processTransaction("U");

      };

    };

  };


  const enableRecord = () => {

    // window.scrollTo(0, 0);

    dispatch(clearMessages());

    // setDeletingRecord(true);

    // dispatch(openDialogBox({ dialogBoxType: "confirmDelete" }));

    processTransaction("R");

  };


  const processTransaction = (transactionType) => {

    let url = `${baseURL}sosAssistantUsers/`;
    let response = "";
    let data = "";
    let operation = "";
    let method = "";
    let previousRecord = currentUser;
    let primaryKeyID = userID;

    let recordObject = {
      username: convertNullEmptyString(formatTrim(txtUsername)),
      firstName: convertNullEmptyString(formatTrim(txtFirstName)),
      lastName: convertNullEmptyString(formatTrim(txtLastName)),
      email: convertNullEmptyString(formatTrim(txtEmail)),
      password: convertNullEmptyString(formatTrim(txtPassword)),
      userRoleID: convertNullEmptyString(ddUserRole),
      partnerSiteID: convertNullEmptyString(ddPartnerSiteID),
      updatedBy: !isEmpty(loggedInUser) && loggedInUser.userID
    };

    if (transactionType === "I") {

      // * Add the record. -- 04/16/2021 MF
      operation = "Added SOS Assistant User";
      method = "POST";
      recordObject.active = true;

    } else if (transactionType === "U") {

      // * Update the record. -- 04/16/2021 MF
      operation = "Updated SOS Assistant User";
      method = "PUT";
      url = url + primaryKeyID;
      recordObject.userID = primaryKeyID;
      recordObject.active = currentUser.active;

    } else if (transactionType === "D") {

      // * Delete the record. -- 06/02/2021 MF
      operation = "Deleted SOS Assistant User";
      method = "PUT";
      url = url + primaryKeyID;
      recordObject.userID = primaryKeyID;
      recordObject.active = false;

    } else if (transactionType === "R") {

      // * Enable the record. -- 07/26/2021 MF
      operation = "Enabled SOS Assistant User";
      method = "PUT";
      url = url + primaryKeyID;
      recordObject.userID = primaryKeyID;
      recordObject.active = true;

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

            // setTxtUsername(convertNullEmptyString(dataRecord.username));
            // setTxtFirstName(convertNullEmptyString(dataRecord.firstName));
            // setTxtLastName(convertNullEmptyString(dataRecord.lastName));
            // setTxtEmail(convertNullEmptyString(dataRecord.email));
            // setTxtPassword(convertNullEmptyString(dataRecord.password));
            // setDdUserRole(convertNullEmptyString(dataRecord.userRoleID));

            primaryKeyID = data.primaryKeyID;

            if (transactionType === "I" && !isEmpty(currentUserRequest)) {

              processTransactionUserRequest("U");

            };

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { dataRecord, previousRecord, loggedInUser, computerLog }, dateEntered: getDateTime() });

            clearSearch();

            loadUsers();

            dispatch(addSuccessMessage(`${operation}: ${data.message}`));

            dispatch(setIsFormOpen(false));

          } else {

            // console.error(operation, "data.message", data.message);

            dispatch(addErrorMessage(`${operation}: ${data.message}`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

          };

        } else {

          dispatch(addErrorMessage(`${operation}: No Results Returned.`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

        };

        window.scrollTo(0, 0);

      })
      .then(results => {

        if (data.transactionSuccess && !isEmpty(data.records)) {

          // *Add the SOS Assistant User Applications records with the userID. -- 07/15/2024 MF
          processUserApplications(primaryKeyID);

        };

      })
      .catch((error) => {

        // console.error(operation, "error", error);

        dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

        window.scrollTo(0, 0);

      });

  };


  const processUserApplications = (primaryKeyID) => {

    // * Update the SOS Assistant Users Applications in the database. -- 02/06/2025 EBG

    // * Causes the edit form to re-render after submission and the messages disappear before they can be viewed. -- 05/07/2024 MF
    // dispatch(clearMessages());

    let url = `${baseURL}sosAssistantUsers/sosAssistantUsersApplications/${primaryKeyID}/`;
    let response = "";
    let data = "";
    let operation = "";
    let method = "";
    // let previousRecord = currentSimulation;
    // let primaryKeyID = currentSimulationID;

    let recordObject = cbxApplicationID.map((application) => ({ userID: primaryKeyID, applicationID: application }));

    // * Add the record. -- 02/06/2025 EBG
    operation = "Added SOS Assistant Users Application";
    method = "POST";
    recordObject.active = true;

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

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: `${response.status} ${response.statusText} ${response.url}` }, dateEntered: getDateTime() });

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

            dispatch(setDatabaseAvailable(true));

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { primaryKeyID, /* dataRecord, */ loggedInUser, computerLog }, dateEntered: getDateTime() });

            dispatch(addSuccessMessage(`${operation}: ${data.message}`));

            // } else {

            //   dispatch(addErrorMessage(`${operation}: ${data.message}`));

            //   addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

          };

        } else {

          dispatch(addErrorMessage(`${operation}: No Results Returned.`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, primaryKeyID, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

        };

      })
      .catch((error) => {

        dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { primaryKeyID, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

      });

  };


  const clearSearch = () => {

    setTxtSearch("");
    setDdUserRoleFilter("");
    setDdActiveFilter("true");
    setSortProperty("");
    setSortDirection("");

  };


  return (
    <section className="section-block large">

      <h2>Users</h2>

      {isFormOpen !== true ?

        <>

          <div className="flex-row justify-end align-end mb-3">

            <button type="button" className="btn btn-success" onClick={() => { setCurrentUser({}); dispatch(setIsFormOpen(true)); }}>Add User</button>

          </div>

          <form onSubmit={event => { event.preventDefault(); }}>

            <div className="horizontal-form">

              <FormInput formInputID="txtSearch" inputType="text" labelText="User" isRequired={false} placeholderText="Search Username" inputValue={txtSearch} updateValue={setTxtSearch} />

              <FormDropdown formInputID="ddUserRoleFilter" labelText="User Roles" placeholderText="All" isRequired={false} optionData={userRoles} optionID="userRoleID" optionText={[{ type: "property", text: "userRole" }]} inputValue={ddUserRoleFilter} updateValue={setDdUserRoleFilter} />

              <FormDropdown formInputID="ddActiveFilter" labelText="Active Users" placeholderText="All" isRequired={false} optionData={[{ activeID: "true", activeName: "Active" }, { activeID: "false", activeName: "Inactive" }]} optionID="activeID" optionText={[{ type: "property", text: "activeName" }]} inputValue={ddActiveFilter} updateValue={setDdActiveFilter} />

              <button type="button" className="btn btn-dark-gray clear-search-button" onClick={() => { clearSearch(); }}>Clear Search</button>

            </div>

          </form>

        </>

        : null}

      {isFormOpen !== true && isNonEmptyArray(currentUsers) ?

        <div className="table-container">
          <table>
            <thead>
              <tr>
                <th>
                  <SortableColumnHeader columnText="First Name" columnPropertyName="firstName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Last Name" columnPropertyName="lastName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Email" columnPropertyName="email" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Username" columnPropertyName="username" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Role" columnPropertyName="userRole" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Partner" columnPropertyName="partnerName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Site" columnPropertyName="partnerSiteName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Last Login" columnPropertyName="lastLogin" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                {/* <th>
                  <SortableColumnHeader columnText="Active" columnPropertyName="active" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th> */}
                <th>Applications</th>
              </tr>
            </thead>
            <tbody>

              {currentUsers.map((user, index) => {

                return (
                  <tr key={index} /* key={user.userID} */ className="clickable-table-row" onClick={() => { window.scrollTo(0, 0); setCurrentUser(user); dispatch(setIsFormOpen(true)); }}>
                    <td>{user.firstName}</td>
                    <td>{user.lastName}</td>
                    <td>{user.email}</td>
                    <td>{user.username}</td>
                    <td>{user.userRole}</td>
                    <td>{user.partnerName}</td>
                    <td>{user.partnerSiteName}</td>
                    <td>{user.lastLogin === "1970-01-01T00:00:00.000Z" ? "-" : displayDateAndTime(user.lastLogin)}</td>
                    {/* <td className="text-center">
                      {user.active || user.active === 1 ? "Yes" : "-"}
                      <span className="sr-only">{displayValue(user.active)}</span>
                    </td> */}
                    <td>{user.applications}</td>
                  </tr>
                );

              })}

            </tbody>
          </table>
        </div>

        :

        <>{noResultsDisplay === true ? <NoResultsText /> : null}</>

      }

      {isFormOpen === true ?

        <>

          <div className="field-legend-container">
            <div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div>
            <div className="field-legend"><span className="required"> * </span>indicates a required field.</div>
          </div>

          <form className="admin-form">

            <FormInput formInputID="txtUsername" inputType="text" labelText="Username" isRequired={true} inlineError={inlineErrors.txtUsername} inputValue={txtUsername} updateValue={setTxtUsername} />

            <FormInput formInputID="txtFirstName" inputType="text" labelText="First Name" isRequired={true} inlineError={inlineErrors.txtFirstName} inputValue={txtFirstName} updateValue={setTxtFirstName} />

            <FormInput formInputID="txtLastName" inputType="text" labelText="Last Name" isRequired={true} inlineError={inlineErrors.txtLastName} inputValue={txtLastName} updateValue={setTxtLastName} />

            <FormInput formInputID="txtEmail" inputType="text" labelText="Email" isRequired={true} inlineError={inlineErrors.txtEmail} inputValue={txtEmail} updateValue={setTxtEmail} />

            <FormInput formInputID="txtPassword" inputType="text" labelText="Password (Only updated if a value is entered)" isRequired={true} inputValue={txtPassword} updateValue={setTxtPassword} />

            <FormDropdown formInputID="ddPartnerSiteID" labelText="Partner and Partner Site" placeholderText="Select Partner and Partner Site" isRequired={true} optionData={currentPartnerSites} optionID="partnerSiteID" optionText={[{ type: "property", text: "partnerName" }, { type: "string", text: " (" }, { type: "property", text: "partnerSiteName" }, { type: "string", text: ")" }]} inlineError={inlineErrors.ddPartnerSiteID} inputValue={ddPartnerSiteID} updateValue={setDdPartnerSiteID} />

            <FormDropdown formInputID="ddUserRole" labelText="Role" isRequired={true} optionData={userRoles} optionID="userRoleID" optionText={[{ type: "property", text: "userRole" }]} inlineError={inlineErrors.ddUserRole} inputValue={ddUserRole} updateValue={setDdUserRole} />

            <CheckboxGroup formInputID="cbxApplicationID" legendText="Application Access" isRequired={true} formColumns={1} optionData={sosAssistantUserApplications} optionID="applicationID" optionText={[{ type: "property", text: "applicationName" }]} inlineError={inlineErrors.cbxApplicationID} inputValue={cbxApplicationID} updateValue={setCbxApplicationID} />

            <div className="flex-row">

              <button type="button" className="btn btn-primary" onClick={() => { saveRecord(); }}>Save</button>

              <button type="button" className="btn btn-dark-gray" onClick={() => { loadRecord(currentUser); dispatch(clearMessages()); setInlineErrors({}); }}>Reset</button>

              <button type="button" className="btn btn-outline" onClick={() => { setCurrentUser({}); dispatch(setIsFormOpen(false)); dispatch(clearMessages()); setInlineErrors({}); }}>Cancel</button>

              {!isEmpty(userID) ?

                <>

                  <button type="button" className="btn btn-danger" onClick={() => { deleteRecord(); }} disabled={currentUser.active !== true}>Delete</button>

                  <button type="button" className="btn btn-success" onClick={() => { enableRecord(); }} disabled={currentUser.active}>Enable</button>

                </>

                : null}

            </div>

            <div className="field-legend-container mt-3">

              <h4>User Roles</h4>

              <p>Each user role has all of the permissions of the previous user roles in the list.</p>

              <ol>
                <li><strong>Assisting Clinical Faculty:</strong> view the complete calendar information, and use SOS Assistant and EHR applications</li>
                <li><strong>Course Lead:</strong> view the complete calendar information, and use SOS Assistant and EHR applications</li>
                <li><strong>Director Nursing Services (DNS):</strong> view the complete calendar information, and use SOS Assistant and EHR applications</li>
                <li><strong>Simulation Operations Specialist (SOS):</strong> view the complete calendar information, and use SOS Assistant and EHR applications</li>
                <li><strong>Simulation Operations Specialist (SOS) Traveling:</strong> view the complete calendar information, and use SOS Assistant and EHR applications</li>
                <li><strong>Viewer:</strong> view the complete calendar information, and use SOS Assistant and EHR applications</li>
                <li><strong>Administrator:</strong> view and edit SOS Assistant requests and users,, and use SOS Assistant and EHR applications</li>
                <li><strong>System Administrator:</strong> view and edit requests and schedules, edit users and other application settings like the simulations and form data, and use SOS Assistant and EHR applications</li>
              </ol>

            </div>

          </form>

          <DialogBoxConfirmation dialogBoxOpen={confirmationDialogBoxOpen} dialogBoxType={confirmationDialogBoxType} setDialogBoxContinue={setConfirmationDialogBoxContinue} />

        </>

        : null}

    </section>
  );
};

export default Users;