import { useState, useEffect } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import { DialogBoxConfirmation, FormInput, useDialogBoxConfirmation } from "shared-components";
import { isEmpty, getDateTime, isNonEmptyArray, getFirstItem, convertSpecialCharacters, convertNullEmptyString, formatTrim, addLog, addErrorLog, allowLogging, getBrowserData } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/applicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired, setFetchDataUserApplications } from "../app/applicationSettingsSlice";
import { setComponentToLoad, setIsFormOpen, addErrorMessage, clearMessages } from "../app/activitySlice";
import type { RootState } from '../app/store';

type InlineErrors = {
  txtApplicationName: string;
} | null;

const UserApplications = () => {

  const dispatch = useAppDispatch();

  const applicationVersion = useAppSelector((state: RootState) => state.applicationSettings.applicationVersion);
  const baseURL = useAppSelector((state: RootState) => state.applicationSettings.baseURL);
  // const baseURLApplied = useAppSelector((state: RootState) => state.applicationSettings.baseURLApplied);
  const computerLog = useAppSelector((state: RootState) => state.applicationSettings.computerLog);
  const userIdentifier = useAppSelector((state: RootState) => state.applicationSettings.userIdentifier);
  const demonstrationMode = useAppSelector((state: RootState) => state.applicationSettings.demonstrationMode);
  const environmentMode = useAppSelector((state: RootState) => state.applicationSettings.environmentMode);
  const databaseAvailable = useAppSelector((state: RootState) => state.applicationSettings.databaseAvailable);

  const loggedInUser = useAppSelector((state: RootState) => state.activity.loggedInUser);
  const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  const isFormOpen = useAppSelector((state: RootState) => state.activity.isFormOpen);

  const userApplications = useAppSelector((state: RootState) => state.activity.userApplications);

  const [currentUserApplication, setCurrentUserApplication] = useState<any>({}); // TODO type -- 09/18/2025 JH
  const [applicationID, setApplicationID] = useState<string | number>(null);
  const [txtApplicationName, setTxtApplicationName] = useState<string>("");

  const [inlineErrors, setInlineErrors] = useState<InlineErrors>({
    txtApplicationName: ""
  });

  const [processTransactionValue, confirmationDialogBoxOpen, confirmationDialogBoxSize, confirmationDialogBoxTitle, confirmationDialogBoxContent, confirmationDialogBoxType, confirmationDialogBoxContinue, confirmAction, deleteRecord, hardDeleteRecord, closeDeleteDialogBox, setConfirmationDialogBoxContinue, setProcessTransactionValue] = useDialogBoxConfirmation();


  // TODO: These will need to be rewritten to match the new data structures. -- 09/19/2025 MF
  // useEffect(() => {

  //   let currentSessionToken = localStorage.getItem(sessionTokenName);

  //   // * When going directly to the page in a new tab or when refreshing, the loggedInUser isn't available yet in Redux so currentSessionToken is checked instead. -- 06/28/2024 MF
  //   if (isEmpty(currentSessionToken) || (!isEmpty(loggedInUser) && !loggedInUser.isSystemAdministrator)) {

  //     let operation = "Attempted Page Visit";

  //     addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(getBrowserData()), transactionData: { loggedInUser, computerLog }, dateEntered: getDateTime() });

  //     dispatch(setComponentToLoad(""));

  //   };

  // }, [loggedInUser]);


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


  const loadRecord = (
    newCurrentUserApplication: any // TODO type -- 09/18/2025 JH
  ) => {

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

    let operation: string = "Save Record";

    let transactionValid: boolean = false;
    let errorMessages: string = "";
    let formatErrorMessages: string = "";

    let inlineErrorMessages: InlineErrors = {
      txtApplicationName: ""
    };

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


  const processTransaction = (transactionType: string) => {

    let url: string = `${baseURL}userApplications/`;
    let response: any = "";
    let data: any = "";
    let operation: string = "";
    let method: string = "";
    let previousRecord: any = currentUserApplication; // TODO type -- 09/18/2025 JH
    let primaryKeyID: string | number = applicationID;

    let recordObject: Record<string, unknown> = {
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

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(getBrowserData()), transactionData: { dataRecord, previousRecord, loggedInUser, computerLog }, dateEntered: getDateTime() });

            dispatch(setFetchDataUserApplications(true));

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

      {isNonEmptyArray(userApplications) && isFormOpen !== true ?

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

                {userApplications.map((
                  userApplication: any // TODO type -- 09/18/2025 JH
                ) => {

                  return (
                    <tr key={userApplication.applicationID} className="clickable-table-row" onClick={() => { window.scrollTo(0, 0); setCurrentUserApplication(userApplication); dispatch(setIsFormOpen(true)); }}>
                      <td>{userApplication.applicationName}</td>
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

            <button type="button" className="btn btn-info" onClick={() => { loadRecord(currentUserApplication); dispatch(clearMessages()); setInlineErrors({ txtApplicationName: "" }); }}>Reset</button>

            <button type="button" className="btn btn-outline" onClick={() => { setCurrentUserApplication({}); dispatch(setIsFormOpen(false)); dispatch(clearMessages()); setInlineErrors({ txtApplicationName: "" }); }}>Cancel</button>

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