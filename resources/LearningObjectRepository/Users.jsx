import React, { useState, useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { useNavigate } from "react-router-dom";
import classnames from "classnames";
import { DialogBoxConfirmation, FormDropdown, FormInput, SortableColumnHeader, ToggleSwitch, useDialogBoxConfirmation, NoResultsText } from "shared-components";
import { emailFormat, isEmpty, getDateTime, isNonEmptyArray, getFirstItem, displayValue, displayDateAndTime, sortObjectArrayByProperty, convertSpecialCharacters, convertNullEmptyString, formatTrim, formatToString, formatLowerCase, formatDate, formatSearchInput, addLog, addErrorLog, allowLogging } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/ApplicationFunctions";
import { setDatabaseAvailable } from "../app/applicationSettingsSlice";
import { addInformationMessage, addSuccessMessage, addWarningMessage, addErrorMessage, clearMessages, setIsFormOpen } from "../app/activitySlice";

const Users = () => {

  const componentName = "Users";

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

  const isFormOpen = useSelector(state => state.activity.isFormOpen);

  // const availability = useSelector(state => state.metadata.availability);
  // const bloomsTaxonomies = useSelector(state => state.metadata.bloomsTaxonomies);
  // const competencyPrograms = useSelector(state => state.metadata.competencyPrograms);
  // const competencyDomains = useSelector(state => state.metadata.competencyDomains);
  // const domainCompetencies = useSelector(state => state.metadata.domainCompetencies);
  // const domainSubcompetencies = useSelector(state => state.metadata.domainSubcompetencies);
  // const courseCategories = useSelector(state => state.metadata.courseCategories);
  // const developmentTools = useSelector(state => state.metadata.developmentTools);
  // const keywords = useSelector(state => state.metadata.keywords);
  // const learningObjectCategories = useSelector(state => state.metadata.learningObjectCategories);
  // const medicalAbbreviations = useSelector(state => state.metadata.medicalAbbreviations);
  // const programTypes = useSelector(state => state.metadata.programTypes);
  const partners = useSelector(state => state.metadata.partners);

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
  const [ddPartnerID, setDdPartnerID] = useState(null);
  const [ddUserRole, setDdUserRole] = useState(null);
  const [rdoShared, setRdoShared] = useState(false);
  const [txtRequestedBy, setTxtRequestedBy] = useState("");
  const [txtRequestDate, setTxtRequestDate] = useState("");
  const [txtNotes, setTxtNotes] = useState("");

  const [inlineErrors, setInlineErrors] = useState({});

  const [txtSearch, setTxtSearch] = useState("");
  const [ddUserRoleFilter, setDdUserRoleFilter] = useState("");
  const [ddPartnerFilter, setDdPartnerFilter] = useState("");
  const [ddSharedFilter, setDdSharedFilter] = useState("");
  const [ddActiveFilter, setDdActiveFilter] = useState("true");

  const [noResultsDisplay, setNoResultsDisplay] = useState(true);

  const [sortProperty, setSortProperty] = useState(""); // ? Default to lastName? -- 10/27/2023 JH
  const [sortDirection, setSortDirection] = useState(""); // ? Default to asc? -- 10/27/2023 JH

  const [processTransactionValue, confirmationDialogBoxOpen, confirmationDialogBoxSize, confirmationDialogBoxTitle, confirmationDialogBoxContent, confirmationDialogBoxType, confirmationDialogBoxContinue, confirmAction, deleteRecord, hardDeleteRecord, closeDeleteDialogBox, setConfirmationDialogBoxContinue, setProcessTransactionValue] = useDialogBoxConfirmation();


  useEffect(() => {

    loadUsers();

    loadUserRoles();

  }, []);


  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    // * When going directly to the page in a new tab or when refreshing, the loggedInUser isn't available yet in Redux so currentSessionToken is checked instead. -- 06/28/2024 MF
    if (isEmpty(currentSessionToken) === true || (isEmpty(loggedInUser) === false && loggedInUser.isSystemAdministrator !== true)) {

      let operation = "Attempted Page Visit";

      addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, href: window.location.href, applicationVersion: applicationVersion, browserData: JSON.stringify(browserData), transactionData: { componentName, loggedInUser, computerLog }, dateEntered: getDateTime() });

      // navigate(`/?${parametersURL}`);
      navigate("/");

    };

  }, [loggedInUser]);


  useEffect(() => {

    loadRecord(currentUser);

  }, [currentUser]);


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

    if (isNonEmptyArray(users) === true) {

      let combinedResults = [...users];

      if (isEmpty(txtSearch) === false) {

        combinedResults = combinedResults.filter((user) => formatLowerCase(user.username).includes(formatSearchInput(txtSearch)) || formatLowerCase(user.firstName).includes(formatSearchInput(txtSearch)) || formatLowerCase(user.lastName).includes(formatSearchInput(txtSearch)));

      };

      if (isEmpty(ddUserRoleFilter) === false) {

        combinedResults = combinedResults.filter((user) => formatToString(user.userRoleID) === ddUserRoleFilter);

      };

      if (isEmpty(ddPartnerFilter) === false) {

        combinedResults = combinedResults.filter((user) => formatToString(user.partnerID) === ddPartnerFilter);

      };

      if (isEmpty(ddSharedFilter) === false) {

        if (ddSharedFilter === "true") {

          combinedResults = combinedResults.filter((user) => user.shared === true);

        } else {

          combinedResults = combinedResults.filter((user) => user.shared === false);

        };

      };

      if (isEmpty(ddActiveFilter) === false) {

        if (ddActiveFilter === "true") {

          combinedResults = combinedResults.filter((user) => user.active === true || user.active === 1);

        } else {

          combinedResults = combinedResults.filter((user) => user.active === false || user.active === 0);

        };

      };

      if (isNonEmptyArray(combinedResults) === true && isEmpty(sortProperty) === false && sortDirection !== "unsorted") {

        combinedResults = sortObjectArrayByProperty(combinedResults, sortProperty, sortDirection);

      };

      if (!isNonEmptyArray(combinedResults)) {

        setNoResultsDisplay(true);

      };

      setCurrentUsers(combinedResults);

    };

  }, [users, txtSearch, ddUserRoleFilter, ddPartnerFilter, ddActiveFilter, ddSharedFilter, sortProperty, sortDirection]);


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (isEmpty(inlineErrors) === false) {

      if (isEmpty(inlineErrors.txtUsername) === false && isEmpty(txtUsername) === false && checkIsDuplicateUsername(txtUsername) === false) {

        setInlineErrors({
          ...inlineErrors,
          txtUsername: ""
        });

      };

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

      if (isEmpty(inlineErrors.ddUserRole) === false && isEmpty(ddUserRole) === false) {

        setInlineErrors({
          ...inlineErrors,
          ddUserRole: ""
        });

      };

    };

  }, [txtUsername, txtFirstName, txtLastName, txtEmail, ddUserRole, inlineErrors]);


  const loadUsers = () => {

    if (isEmpty(baseURL) === false) {

      dispatch(clearMessages());

      setUsers([]);

      let url = `${baseURL}users/`;
      let response = "";
      let data = "";
      let operation = "Get Users";

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

              setUsers(data.records);

              dispatch(setDatabaseAvailable(true));

            } else {

              // console.error(componentName, getDateTime(), operation, `${operation}: ${data.message}`);

              // addErrorMessage(`${operation}: ${data.message}`);
              dispatch(addErrorMessage(`${operation}: ${data.message}`));

              addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            };

          } else {

            // console.error(componentName, getDateTime(), operation, `${operation}: No Results Returned.`);

            // addErrorMessage(`${operation}: No Results Returned.`);
            dispatch(addErrorMessage(`${operation}: No Results Returned.`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          };

        })
        .catch((error) => {

          // console.error(componentName, getDateTime(), operation, "fetchData error", error);

          // addErrorMessage(error);
          dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, componentName: componentName, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };


  const loadUserRoles = () => {

    if (isEmpty(baseURL) === false) {

      dispatch(clearMessages());

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

              setUserRoles(data.records);

              dispatch(setDatabaseAvailable(true));

            } else {

              // console.error(componentName, getDateTime(), operation, `${operation}: ${data.message}`);

              // addErrorMessage(`${operation}: ${data.message}`);
              dispatch(addErrorMessage(`${operation}: ${data.message}`));

              addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

            };

          } else {

            // console.error(componentName, getDateTime(), operation, `${operation}: No Results Returned.`);

            // addErrorMessage(`${operation}: No Results Returned.`);
            dispatch(addErrorMessage(`${operation}: No Results Returned.`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, componentName: componentName, transactionData: { url: url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

          };

        })
        .catch((error) => {

          // console.error(componentName, getDateTime(), operation, "fetchData error", error);

          // addErrorMessage(error);
          dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, componentName: componentName, transactionData: { applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

          dispatch(setDatabaseAvailable(false));

        });

    };

  };


  const loadRecord = (newCurrentUser) => {

    if (isEmpty(newCurrentUser) === false) {

      setUserID(newCurrentUser.userID);
      setTxtUsername(newCurrentUser.username);
      setTxtFirstName(newCurrentUser.firstName);
      setTxtLastName(newCurrentUser.lastName);
      setTxtEmail(newCurrentUser.email);
      // setTxtPassword(newCurrentUser.password);
      setTxtPassword("");
      setDdPartnerID(newCurrentUser.partnerID);
      setDdUserRole(newCurrentUser.userRoleID);
      setRdoShared(newCurrentUser.shared);
      setTxtRequestedBy(newCurrentUser.requestedBy);
      setTxtRequestDate(formatDate(newCurrentUser.requestDate));
      setTxtNotes(newCurrentUser.notes);

    } else {

      setUserID(null);
      setTxtUsername("");
      setTxtFirstName("");
      setTxtLastName("");
      setTxtEmail("");
      setTxtPassword("");
      setDdPartnerID(null);
      setDdUserRole(null);
      setRdoShared(0);
      setTxtRequestedBy("");
      setTxtRequestDate("");
      setTxtNotes("");

    };

  };


  const clearSearch = () => {

    setTxtSearch("");
    setDdUserRoleFilter("");
    setDdPartnerFilter("");
    setDdActiveFilter("true");
    setDdSharedFilter("");
    setSortProperty("");
    setSortDirection("");

  };


  const checkIsDuplicateUsername = (username) => {

    let duplicateUsernameFilter = users.filter((user) => formatLowerCase(user.username) === formatLowerCase(username));

    return isNonEmptyArray(duplicateUsernameFilter);

  };


  const saveRecord = () => {

    // window.scrollTo(0, 0);

    dispatch(clearMessages());

    let operation = "Save Record";

    let transactionValid = false;
    let errorMessages = "";
    let formatErrorMessages = "";

    let inlineErrorMessages = {};

    if (isEmpty(formatTrim(txtUsername)) === true) {

      // * Make sure that the user's Username was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Username</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtUsername: "Please enter the <strong>Username</strong>."
      };

    } else if (checkIsDuplicateUsername(formatTrim(txtUsername)) === true && isEmpty(userID) === true) {

      // * Make sure that the user's Username isn't taken. -- 06/24/2021 MF
      // formatErrorMessages = `${formatErrorMessages}<br /> A user with this username already exists. Please enter a different <strong>Username</strong>.`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtUsername: "A user with this username already exists. Please enter a different <strong>Username</strong>."
      };

    };

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

    if (isEmpty(formatTrim(ddUserRole)) === true) {

      // * Make sure that the user's Role was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Role</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        ddUserRole: "Please enter the <strong>Role</strong>."
      };

    };

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

      if (isEmpty(userID) === true) {

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

    processTransaction("R");

  };


  const processTransaction = (transactionType) => {

    let url = `${baseURL}users/`;
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
      partnerID: convertNullEmptyString(ddPartnerID),
      userRoleID: convertNullEmptyString(ddUserRole),
      shared: convertNullEmptyString(rdoShared),
      requestedBy: convertNullEmptyString(formatTrim(txtRequestedBy)),
      requestDate: convertNullEmptyString(formatTrim(txtRequestDate)),
      notes: convertNullEmptyString(formatTrim(txtNotes)),
      updatedBy: isEmpty(loggedInUser) === false && loggedInUser.userID
    };

    if (transactionType === "I") {

      // * Add the record. -- 04/16/2021 MF
      operation = "Added User";
      method = "POST";
      recordObject.active = true;

    } else if (transactionType === "U") {

      // * Update the record. -- 04/16/2021 MF
      operation = "Updated User";
      method = "PUT";
      url = url + primaryKeyID;
      recordObject.userID = primaryKeyID;
      recordObject.active = currentUser.active;

    } else if (transactionType === "D") {

      // * Delete the record. -- 06/02/2021 MF
      operation = "Deleted User";
      method = "PUT";
      url = url + primaryKeyID;
      recordObject.userID = primaryKeyID;
      recordObject.active = false;

    } else if (transactionType === "R") {

      // * Enable the record. -- 07/26/2021 MF
      operation = "Restored User";
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

            // setTxtUsername(convertNullEmptyString(dataRecord.username));
            // setTxtFirstName(convertNullEmptyString(dataRecord.firstName));
            // setTxtLastName(convertNullEmptyString(dataRecord.lastName));
            // setTxtEmail(convertNullEmptyString(dataRecord.email));
            // setTxtPassword(convertNullEmptyString(dataRecord.password));
            // setDdPartnerID(convertNullEmptyString(dataRecord.partnerID));
            // setDdUserRole(convertNullEmptyString(dataRecord.userRoleID));
            // setRdoShared(convertNullEmptyString(dataRecord.shared));
            // setTxtRequestedBy(convertNullEmptyString(dataRecord.requestedBy));
            // setTxtRequestDate(convertNullEmptyString(dataRecord.requestDate));
            // setTxtNotes(convertNullEmptyString(dataRecord.notes));

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, href: window.location.href, applicationVersion: applicationVersion, browserData: JSON.stringify(browserData), transactionData: { dataRecord, previousRecord, loggedInUser, computerLog }, dateEntered: getDateTime() });

            clearSearch();

            loadUsers();

            dispatch(addSuccessMessage(`${operation}: ${data.message}`));

            dispatch(setIsFormOpen(false));

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

        window.scrollTo(0, 0);

      })
      .catch((error) => {

        // console.error(componentName, getDateTime(), operation, "error", error);

        // addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`);
        dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: operation, userIdentifier: userIdentifier, componentName: componentName, transactionData: { primaryKeyID, previousRecord, recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

        window.scrollTo(0, 0);

      });

  };


  return (
    <section className="section-block large">

      <h2>Users</h2>

      {isFormOpen !== true ?

        <React.Fragment>

          <div className="flex-row justify-end right-corner-buttons">

            <button type="button" className="btn btn-success" onClick={(event) => { setCurrentUser({}); dispatch(setIsFormOpen(true)); }}>Add User</button>

          </div>

          <form onSubmit={event => { event.preventDefault(); }}>

            <div className="horizontal-form">

              <FormInput formInputID="txtSearch" inputType="text" labelText="User" isRequired={false} placeholderText="Search Username" inputValue={txtSearch} updateValue={setTxtSearch} />

              {isNonEmptyArray(userRoles) === true ?

                <FormDropdown formInputID="ddUserRoleFilter" labelText="User Roles" placeholderText="All" optionData={userRoles} optionID="userRoleID" optionText={[{ type: "property", text: "userRole" }]} inputValue={ddUserRoleFilter} updateValue={setDdUserRoleFilter} />

                : null}

              {isNonEmptyArray(partners) === true ?

                <FormDropdown formInputID="ddPartnerFilter" labelText="Partners" placeholderText="All" optionData={partners} optionID="partnerID" optionText={[{ type: "property", text: "partnerName" }]} inputValue={ddPartnerFilter} updateValue={setDdPartnerFilter} />

                : null}

              <FormDropdown formInputID="ddSharedFilter" labelText="Shared Account" placeholderText="All" optionData={[{ optionValue: "true", optionName: "Yes" }, { optionValue: "false", optionName: "No" }]} optionID="optionValue" optionText={[{ type: "property", text: "optionName" }]} inputValue={ddSharedFilter} updateValue={setDdSharedFilter} />

              <FormDropdown formInputID="ddActiveFilter" labelText="Active Users" placeholderText="All" optionData={[{ optionValue: "true", optionName: "Active" }, { optionValue: "false", optionName: "Inactive" }]} optionID="optionValue" optionText={[{ type: "property", text: "optionName" }]} inputValue={ddActiveFilter} updateValue={setDdActiveFilter} />

              <button type="button" className="btn btn-dark-gray clear-search-button" onClick={() => { clearSearch(); }}>Clear Search</button>

            </div>

          </form>

        </React.Fragment>

        : null}

      {isFormOpen !== true && isNonEmptyArray(currentUsers) === true ?

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
                  <SortableColumnHeader columnText="Partner" columnPropertyName="partnerName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Role" columnPropertyName="userRole" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Shared" columnPropertyName="shared" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Last Login" columnPropertyName="lastLogin" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
                <th>
                  <SortableColumnHeader columnText="Active" columnPropertyName="active" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                </th>
              </tr>
            </thead>
            <tbody>

              {currentUsers.map((user) => {

                let tableRowClasses = classnames("clickable-table-row", {
                  "inactive-table-row": user.active === false
                });

                return (
                  <tr key={user.userID} className={tableRowClasses} onClick={(event) => { window.scrollTo(0, 0); setCurrentUser(user); dispatch(setIsFormOpen(true)); }}>
                    <td>{user.firstName}</td>
                    <td>{user.lastName}</td>
                    <td>{user.email}</td>
                    <td>{user.username}</td>
                    <td>{user.partnerName}</td>
                    <td>{user.userRole}</td>
                    <td className="text-center">
                      {user.shared === true || user.shared === 1 ? "Yes" : "-"}
                      <span className="sr-only">{displayValue(user.shared)}</span>
                    </td>
                    <td>{user.lastLogin === "1970-01-01T00:00:00.000Z" ? "-" : displayDateAndTime(user.lastLogin)}</td>
                    <td className="text-center">
                      {user.active === true || user.active === 1 ? "Yes" : "-"}
                      <span className="sr-only">{displayValue(user.active)}</span>
                    </td>
                  </tr>
                );

              })}

            </tbody>
          </table>
        </div>

        :

        noResultsDisplay === true ? <NoResultsText /> : null

      }

      {isFormOpen === true ?

        <React.Fragment>

          <div className="field-legend-container"><div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div><div className="field-legend"><span className="required"> * </span>indicates a required field.</div></div>

          <form className="admin-form">

            <FormInput formInputID="txtUsername" inputType="text" labelText="Username" isRequired={true} inlineError={inlineErrors.txtUsername} inputValue={txtUsername} updateValue={setTxtUsername} />

            <FormInput formInputID="txtFirstName" inputType="text" labelText="First Name" isRequired={true} inlineError={inlineErrors.txtFirstName} inputValue={txtFirstName} updateValue={setTxtFirstName} />

            <FormInput formInputID="txtLastName" inputType="text" labelText="Last Name" isRequired={true} inlineError={inlineErrors.txtLastName} inputValue={txtLastName} updateValue={setTxtLastName} />

            <FormInput formInputID="txtEmail" inputType="text" labelText="Email" isRequired={true} inlineError={inlineErrors.txtEmail} inputValue={txtEmail} updateValue={setTxtEmail} />

            <FormInput formInputID="txtPassword" inputType="text" labelText="Password (Only updated if a value is entered)" inputValue={txtPassword} updateValue={setTxtPassword} />

            <FormDropdown formInputID="ddPartnerID" labelText="Partner" optionData={partners} optionID="partnerID" optionText={[{ type: "property", text: "partnerName" }]} inputValue={ddPartnerID} updateValue={setDdPartnerID} />

            <FormDropdown formInputID="ddUserRole" labelText="Role" isRequired={true} optionData={userRoles} optionID="userRoleID" optionText={[{ type: "property", text: "userRole" }]} inlineError={inlineErrors.ddUserRole} inputValue={ddUserRole} updateValue={setDdUserRole} />

            <ToggleSwitch formInputID="rdoShared" labelText="Shared Account" isRequired={true} inputValue={rdoShared} updateValue={setRdoShared} />

            <FormInput formInputID="txtRequestedBy" inputType="text" labelText="Requested By" inputValue={txtRequestedBy} updateValue={setTxtRequestedBy} />

            <div className="form-group">

              <label htmlFor="txtRequestDate">Request Date</label>
              <input type="date" id="txtRequestDate" value={txtRequestDate} onChange={(event) => { setTxtRequestDate(event.target.value); }} />

            </div>

            <FormInput formInputID="txtNotes" inputType="textarea" labelText="Notes" textareaRows={10} inputValue={txtNotes} updateValue={setTxtNotes} />

            <div className="flex-row">

              <button type="button" className="btn btn-primary" onClick={(event) => { saveRecord(); }}>Save</button>

              {isEmpty(userID) === false ?

                <button type="button" className="btn btn-dark-gray" onClick={(event) => { dispatch(clearMessages()); setInlineErrors({}); loadRecord(currentUser); }}>Reset</button>

                : null}

              <button type="button" className="btn btn-outline" onClick={(event) => { dispatch(clearMessages()); setInlineErrors({}); setCurrentUser({}); dispatch(setIsFormOpen(false)); }}>Cancel</button>

              {isEmpty(userID) === false ?

                <React.Fragment>

                  <button type="button" className="btn btn-danger" onClick={(event) => { deleteRecord(); }} disabled={currentUser.active !== true}>Delete</button>

                  <button type="button" className="btn btn-success" onClick={(event) => { enableRecord(); }} disabled={currentUser.active === true}>Enable</button>

                </React.Fragment>

                : null}

            </div>

          </form>

          <div className="field-legend-container mt-3">

            <h4>User Roles</h4>

            <p>Each user role has all of the permissions of the previous user roles in the list.</p>

            <ol>
              <li><strong>Viewer:</strong> view a limited set of data about learning objects</li>
              <li><strong>Viewer Plus Source:</strong> view the LMS connection source link</li>
              <li><strong>Viewer Plus Statistics:</strong> view all of the data about learning objects</li>
              <li><strong>Editor:</strong> add and edit the properties of learning objects but not upload a learning object</li>
              <li><strong>Administrator:</strong> upload a learning object</li>
              <li><strong>System Administrator:</strong> edit users and other application settings like the LMS connection and form data</li>
            </ol>

          </div>

        </React.Fragment>

        : null}

      <DialogBoxConfirmation dialogBoxSize={confirmationDialogBoxSize} dialogBoxTitle={confirmationDialogBoxTitle} dialogBoxContent={confirmationDialogBoxContent} dialogBoxOpen={confirmationDialogBoxOpen} dialogBoxType={confirmationDialogBoxType} setDialogBoxContinue={setConfirmationDialogBoxContinue} />

    </section>
  );
};

export default Users;