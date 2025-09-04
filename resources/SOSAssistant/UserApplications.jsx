import { useState, useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { DialogBoxConfirmation, FormInput, useDialogBoxConfirmation } from "shared-components";
import { isEmpty, getDateTime, isNonEmptyArray, getFirstItem, convertSpecialCharacters, convertNullEmptyString, formatTrim, addLog, addErrorLog, allowLogging } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/ApplicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired, setFetchDataSOSAssistantUserApplications } from "../app/applicationSettingsSlice";
import { setComponentToLoad, setIsFormOpen, addErrorMessage, clearMessages } from "../app/activitySlice";

const UserApplications = () => {

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

  const loggedInUser = useSelector(state => state.activity.loggedInUser);
  const sessionToken = useSelector(state => state.activity.sessionToken);

  const isFormOpen = useSelector(state => state.activity.isFormOpen);

  // const simulations = useSelector(state => state.activity.simulations);
  // const simulationTypes = useSelector(state => state.activity.simulationTypes);
  const sosAssistantUserApplications = useSelector(state => state.activity.sosAssistantUserApplications);
  // const requestTypes = useSelector(state => state.activity.requestTypes);
  // const partners = useSelector(state => state.activity.partners);
  // const currentPartners = useSelector(state => state.activity.currentPartners);
  // const partnerSites = useSelector(state => state.activity.partnerSites);
  // const currentPartnerSites = useSelector(state => state.activity.currentPartnerSites);
  // const partnerSiteContacts = useSelector(state => state.activity.partnerSiteContacts);
  // const associatedData = useSelector(state => state.activity.associatedData);
  // const simulationEquipment = useSelector(state => state.activity.simulationEquipment);
  // const travelTeamMembers = useSelector(state => state.activity.travelTeamMembers);
  // const activeTravelTeamMembers = useSelector(state => state.activity.activeTravelTeamMembers);
  // const displayTravelTeamMembers = useSelector(state => state.activity.displayTravelTeamMembers);

  const [currentUserApplication, setCurrentUserApplication] = useState({});
  const [applicationID, setApplicationID] = useState(null);
  const [txtApplicationName, setTxtApplicationName] = useState("");

  const [inlineErrors, setInlineErrors] = useState({});

  const [processTransactionValue, confirmationDialogBoxOpen, confirmationDialogBoxSize, confirmationDialogBoxTitle, confirmationDialogBoxContent, confirmationDialogBoxType, confirmationDialogBoxContinue, confirmAction, deleteRecord, hardDeleteRecord, closeDeleteDialogBox, setConfirmationDialogBoxContinue, setProcessTransactionValue] = useDialogBoxConfirmation();


  useEffect(() => {

    let currentSessionToken = localStorage.getItem(sessionTokenName);

    // * When going directly to the page in a new tab or when refreshing, the loggedInUser isn't available yet in Redux so currentSessionToken is checked instead. -- 06/28/2024 MF
    if (isEmpty(currentSessionToken) || (!isEmpty(loggedInUser) && !loggedInUser.isSystemAdministrator)) {

      let operation = "Attempted Page Visit";

      addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { loggedInUser, computerLog }, dateEntered: getDateTime() });

      dispatch(setComponentToLoad(""));

    };

  }, [loggedInUser]);


  useEffect(() => {

    loadRecord(currentUserApplication);

  }, [currentUserApplication]);


  // * Used for passing on the transaction value from the delete hook. -- 10/16/2023 JH
  useEffect(() => {

    if (!isEmpty(processTransactionValue)) {

      dispatch(clearMessages());

      processTransaction(processTransactionValue);

      setProcessTransactionValue("");

    };

  }, [processTransactionValue]);


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (!isEmpty(inlineErrors)) {

      if (!isEmpty(inlineErrors.txtApplicationName) && !isEmpty(txtApplicationName)) {

        setInlineErrors({
          ...inlineErrors,
          txtApplicationName: ""
        });

      };

    };

  }, [txtApplicationName, inlineErrors]);


  const loadRecord = (newCurrentUserApplication) => {

    if (!isEmpty(newCurrentUserApplication)) {

      setApplicationID(newCurrentUserApplication.applicationID);
      setTxtApplicationName(newCurrentUserApplication.applicationName);

    } else {

      setApplicationID(null);
      setTxtApplicationName("");

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

    if (isEmpty(formatTrim(txtApplicationName))) {

      // * Make sure that the Application Name was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Application Name</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtApplicationName: "Please enter the <strong>Application Name</strong>."
      };

    };

    if (!isEmpty(inlineErrorMessages)) {

      formatErrorMessages = `${formatErrorMessages}<br />Please fix the errors with the indicated fields in the form.`;

    };

    // * This is too slow running to label the transaction as valid or invalid. -- 05/06/2021 MF
    // errorMessages = buildErrorMessages("simulations", errorMessages, formatErrorMessages);

    if (!isEmpty(errorMessages)) {

      // errorMessages = `Please enter the simulation's ${errorMessages.substring(1)}.`;
      errorMessages = `Please enter the simulation's${errorMessages.replace(/^,/, "")}.`;

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

      if (isEmpty(applicationID)) {

        // * Add the record. -- 04/16/2021 MF
        processTransaction("I");

      } else {

        // * Update the record. -- 04/16/2021 MF
        processTransaction("U");

      };

    };

  };


  const processTransaction = (transactionType) => {

    let url = `${baseURL}sosAssistantUserApplications/`;
    let response = "";
    let data = "";
    let operation = "";
    let method = "";
    let previousRecord = currentUserApplication;
    let primaryKeyID = applicationID;

    let recordObject = {
      applicationName: convertNullEmptyString(formatTrim(txtApplicationName))
    };

    if (transactionType === "I") {

      // * Add the record. -- 04/16/2021 MF
      operation = "Added SOS Assistant User Application";
      method = "POST";
      recordObject.active = true;

    } else if (transactionType === "U") {

      // * Update the record. -- 04/16/2021 MF
      operation = "Updated SOS Assistant User Application";
      method = "PUT";
      url = url + primaryKeyID;
      recordObject.applicationID = primaryKeyID;
      recordObject.active = currentUserApplication.active;

    } else if (transactionType === "D") {

      // * Delete the record. -- 06/02/2021 MF
      operation = "Deleted SOS Assistant User Application";
      method = "PUT";
      url = url + primaryKeyID;
      recordObject.applicationID = primaryKeyID;
      recordObject.active = false;

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

            // * Close form when any transaction (I, U, D) is successful. -- 07/25/2023 JH
            dispatch(setIsFormOpen(false));

            dispatch(setDatabaseAvailable(true));

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { dataRecord, previousRecord, loggedInUser, computerLog }, dateEntered: getDateTime() });

            dispatch(setFetchDataSOSAssistantUserApplications(true));

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

      <DialogBoxConfirmation dialogBoxSize={confirmationDialogBoxSize} dialogBoxTitle={confirmationDialogBoxTitle} dialogBoxContent={confirmationDialogBoxContent} dialogBoxOpen={confirmationDialogBoxOpen} dialogBoxType={confirmationDialogBoxType} setDialogBoxContinue={setConfirmationDialogBoxContinue} />

      <h2>SOS Assistant User Applications</h2>

      {isNonEmptyArray(sosAssistantUserApplications) && isFormOpen !== true ?

        <>

          <div className="flex-row justify-end right-corner-buttons">
            <button type="button" className="btn btn-success" onClick={() => { setCurrentUserApplication({}); dispatch(setIsFormOpen(true)); }}>Add SOS Assistant User Application</button>
          </div>

          <div className="table-container">
            <table>
              <thead>
                <tr>
                  <th>SOS Assistant User Application</th>
                </tr>
              </thead>
              <tbody>

                {sosAssistantUserApplications.map((sosAssistantUserApplication) => {

                  return (
                    <tr key={sosAssistantUserApplication.applicationID} className="clickable-table-row" onClick={() => { window.scrollTo(0, 0); setCurrentUserApplication(sosAssistantUserApplication); dispatch(setIsFormOpen(true)); }}>
                      <td>{sosAssistantUserApplication.applicationName}</td>
                    </tr>
                  );

                })}

              </tbody>
            </table>
          </div>

        </>

        : null}

      {isFormOpen === true ?

        <form className="admin-form">

          <div className="field-legend-container">
            <div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div>
            <div className="field-legend"><span className="required"> * </span>indicates a required field.</div>
          </div>

          <FormInput formInputID="txtApplicationName" inputType="text" labelText="Application Name" isRequired={true} inlineError={inlineErrors.txtApplicationName} inputValue={txtApplicationName} updateValue={setTxtApplicationName} />

          <div className="flex-row">

            <button type="button" className="btn btn-primary" onClick={() => { saveRecord(); }}>Save</button>

            <button type="button" className="btn btn-info" onClick={() => { loadRecord(currentUserApplication); dispatch(clearMessages()); setInlineErrors({}); }}>Reset</button>

            <button type="button" className="btn btn-outline" onClick={() => { setCurrentUserApplication({}); dispatch(setIsFormOpen(false)); dispatch(clearMessages()); setInlineErrors({}); }}>Cancel</button>

            {!isEmpty(applicationID) ?

              <button type="button" className="btn btn-danger" onClick={() => { deleteRecord(); }}>Delete</button>

              : null}

          </div>

        </form>

        : null}

    </section>
  );
};

export default UserApplications;