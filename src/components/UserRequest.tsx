import { useState, useEffect } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import { FormDropdown, FormInput, FormRadioGroup } from "shared-components";
import { emailFormat, isEmpty, getDateTime, isNonEmptyArray, getFirstItem, convertSpecialCharacters, convertNullEmptyString, formatTrim, createDateFromString, isFutureDate, addLog, addErrorLog, parse, allowLogging, getBrowserData } from "shared-functions";
import { setFetchAuthorization } from "../utilities/applicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired } from "../app/applicationSettingsSlice";
import { setComponentToLoad, addSuccessMessage, addErrorMessage, clearMessages } from "../app/activitySlice";
import type { RootState } from '../app/store';

type InlineErrors = {
  ddPartnerSiteID: string;
  txtFirstName: string;
  txtLastName: string;
  txtEmail: string;
  txtSimulationDate: string;
  ddPositionID: string;
  rdoProgramID: string;
  txtPreferredDate: string;
} | null;

const UserRequest = () => {

  const dispatch = useAppDispatch();

  const applicationVersion = useAppSelector((state: RootState) => state.applicationSettings.applicationVersion);
  const baseURL = useAppSelector((state: RootState) => state.applicationSettings.baseURL);
  const baseURLPartners = useAppSelector((state: RootState) => state.applicationSettings.baseURLPartners);
  const baseURLExtendedRealityScheduling = useAppSelector((state: RootState) => state.applicationSettings.baseURLExtendedRealityScheduling);
  // const baseURLApplied = useAppSelector((state: RootState) => state.applicationSettings.baseURLApplied);
  const computerLog = useAppSelector((state: RootState) => state.applicationSettings.computerLog);
  const userIdentifier = useAppSelector((state: RootState) => state.applicationSettings.userIdentifier);
  const demonstrationMode = useAppSelector((state: RootState) => state.applicationSettings.demonstrationMode);
  const environmentMode = useAppSelector((state: RootState) => state.applicationSettings.environmentMode);
  const databaseAvailable = useAppSelector((state: RootState) => state.applicationSettings.databaseAvailable);
  // const userTokenExpired = useAppSelector((state: RootState) => state.applicationSettings.userTokenExpired);

  const loggedInUser = useAppSelector((state: RootState) => state.activity.loggedInUser);
  // const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  // const userRequests = useAppSelector((state: RootState) => state.activity.userRequests);
  // const applications = useAppSelector((state: RootState) => state.activity.applications);
  // const requestTypes = useAppSelector((state: RootState) => state.activity.requestTypes);
  // const partners = useAppSelector((state: RootState) => state.activity.partners);
  // const currentPartners = useAppSelector((state: RootState) => state.activity.currentPartners);
  // const partnerSites = useAppSelector((state: RootState) => state.activity.partnerSites);
  const currentPartnerSites = useAppSelector((state: RootState) => state.activity.currentPartnerSites);
  const associatedData = useAppSelector((state: RootState) => state.activity.associatedData);

  const userRequestTypeID = useAppSelector((state: RootState) => state.activity.userRequestTypeID);

  const [userRequestID, setUserRequestID] = useState(null);
  const [ddPartnerSiteID, setDdPartnerSiteID] = useState("");
  const [txtFirstName, setTxtFirstName] = useState("");
  const [txtLastName, setTxtLastName] = useState("");
  const [txtEmail, setTxtEmail] = useState("");
  const [ddPositionID, setDdPositionID] = useState("");
  const [rdoProgramID, setRdoProgramID] = useState("");
  const [txtSimulationDate, setTxtSimulationDate] = useState("");
  const [cbxNotApplicable, setCbxNotApplicable] = useState(false);
  const [txtDetails, setTxtDetails] = useState("");

  const [inlineErrors, setInlineErrors] = useState<InlineErrors>({
    ddPartnerSiteID: "",
    txtFirstName: "",
    txtLastName: "",
    txtEmail: "",
    txtSimulationDate: "",
    ddPositionID: "",
    rdoProgramID: "",
    txtPreferredDate: ""
  });

  let buttonsDisabled = !isEmpty(userRequestID);

  let currentDate = new Date();

  let formattedSimulationDate = createDateFromString(txtSimulationDate);

  let contactPositions = [];

  if (isNonEmptyArray(associatedData)) {

    contactPositions = associatedData.filter((contactPosition) => contactPosition.associatedDataCategoryID === 3);

  };

  let programs = [];

  if (isNonEmptyArray(associatedData)) {

    programs = associatedData.filter((program) => program.associatedDataCategoryID === 4);

  };


  // * Clear inline error messages. -- 12/05/2023 JH
  useEffect(() => {

    if (!isEmpty(inlineErrors)) {

      if (!isEmpty(inlineErrors.ddPartnerSiteID) && !isEmpty(ddPartnerSiteID)) {

        setInlineErrors({
          ...inlineErrors,
          ddPartnerSiteID: ""
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

      if (!isEmpty(inlineErrors.txtEmail) && !isEmpty(txtEmail) && isEmpty(txtEmail.match(emailFormat))) {

        setInlineErrors({
          ...inlineErrors,
          txtEmail: ""
        });

      };

      if ((!isEmpty(inlineErrors.txtSimulationDate) && !isEmpty(txtSimulationDate) && isFutureDate(formattedSimulationDate, currentDate)) || cbxNotApplicable === true) {

        setInlineErrors({
          ...inlineErrors,
          txtSimulationDate: ""
        });

      };

      if (!isEmpty(inlineErrors.ddPositionID) && !isEmpty(ddPositionID)) {

        setInlineErrors({
          ...inlineErrors,
          ddPositionID: ""
        });

      };

      if (!isEmpty(inlineErrors.rdoProgramID) && !isEmpty(rdoProgramID)) {

        setInlineErrors({
          ...inlineErrors,
          rdoProgramID: ""
        });

      };

    };

  }, [ddPartnerSiteID, txtFirstName, txtLastName, txtEmail, txtSimulationDate, cbxNotApplicable, ddPositionID, rdoProgramID, inlineErrors]);


  const saveRecord = () => {

    dispatch(clearMessages());

    let operation: string = "Save Record";

    let transactionValid: boolean = false;
    let errorMessages: string = "";
    let formatErrorMessages: string = "";

    let inlineErrorMessages: InlineErrors = {
      ddPartnerSiteID: "",
      txtFirstName: "",
      txtLastName: "",
      txtEmail: "",
      txtSimulationDate: "",
      ddPositionID: "",
      rdoProgramID: "",
      txtPreferredDate: ""
    };

    if (isEmpty(ddPartnerSiteID)) {

      // * Make sure that the Partner and Partner Site was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Partner and Partner Site</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        ddPartnerSiteID: "Please enter the user request's <strong>Partner and Partner Site</strong>."
      };

    };

    if (isEmpty(txtFirstName)) {

      // * Make sure that the First Name was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>First Name</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtFirstName: "Please enter the <strong>First Name</strong>."
      };

    };

    if (isEmpty(txtLastName)) {

      // * Make sure that the Last Name was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Last Name</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtLastName: "Please enter the <strong>Last Name</strong>."
      };

    };

    if (isEmpty(txtEmail)) {

      // * Make sure that the Email was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Email</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        txtEmail: "Please enter the <strong>Email</strong>."
      };

    };

    if (cbxNotApplicable !== true) {

      if (isEmpty(txtSimulationDate)) {

        // * Make sure that the Implementation Date was entered. -- 06/24/2021 MF
        // errorMessages = `${errorMessages}, <strong>Implementation Date</strong>`;

        inlineErrorMessages = {
          ...inlineErrorMessages,
          txtSimulationDate: "Please enter the <strong>Implementation Date</strong>."
        };

      } else {

        if (!isFutureDate(formattedSimulationDate, currentDate)) {

          // * Make sure that the Implementation Date is a date in the future. -- 08/03/2023 KH
          // formatErrorMessages = `${formatErrorMessages}<br /> The <strong>Implementation Date</strong> must be a future date.`;

          inlineErrorMessages = {
            ...inlineErrorMessages,
            txtSimulationDate: "The <strong>Implementation Date</strong> must be a future date."
          };

        };

      };

    };

    if (isEmpty(formatTrim(ddPositionID))) {

      // * Make sure that the Position was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Position</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        ddPositionID: "Please enter the <strong>Position</strong>."
      };

    };

    if (isEmpty(rdoProgramID)) {

      // * Make sure that the Program was entered. -- 06/24/2021 MF
      // errorMessages = `${errorMessages}, <strong>Program</strong>`;

      inlineErrorMessages = {
        ...inlineErrorMessages,
        rdoProgramID: "Please select the <strong>Program</strong>."
      };

    };

    if (!isEmpty(inlineErrorMessages)) {

      formatErrorMessages = `${formatErrorMessages}<br />Please fix the errors with the indicated fields in the form.`;

    };

    // * This is too slow running to label the transaction as valid or invalid. -- 05/06/2021 MF
    // errorMessages = buildErrorMessages("request", errorMessages, formatErrorMessages);

    if (!isEmpty(errorMessages)) {

      // errorMessages = `Please enter the user request's ${errorMessages.substring(1)}.`;
      errorMessages = `Please enter the user request's${errorMessages.replace(/^,/, "")}.`;

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

      // window.scrollTo(0, 0);

      transactionValid = true;

    };

    if (transactionValid === true) {

      // if (formPage === 5) {

      // if (isEmpty(userRequestID)) {

      // * Add the record. -- 04/16/2021 MF
      processTransaction("I");

      // } else {

      //   // * Update the record. -- 04/16/2021 MF
      //   processTransaction("U");

      // };

      // } else {

      //   setFormPage(formPage + 1);

      // };

    };

  };


  const processTransaction = (transactionType: string) => {

    let url: string = `${baseURL}userRequests/`;
    let response: any = "";
    let data: any = "";
    let operation: string = "";
    let method: string = "";
    // let previousRecord = currentRequest;
    let primaryKeyID: string | number = "";

    let recordObject: any = {
      requestTypeID: convertNullEmptyString(userRequestTypeID),
      firstName: convertNullEmptyString(formatTrim(txtFirstName)),
      lastName: convertNullEmptyString(formatTrim(txtLastName)),
      email: convertNullEmptyString(formatTrim(txtEmail)),
      partnerSiteID: convertNullEmptyString(ddPartnerSiteID),
      positionID: convertNullEmptyString(formatTrim(ddPositionID)),
      programID: convertNullEmptyString(formatTrim(rdoProgramID)),
      details: convertNullEmptyString(formatTrim(txtDetails))
    };

    if (cbxNotApplicable !== true) {

      recordObject.simulationDate = convertNullEmptyString(formatTrim(txtSimulationDate));

    };

    if (transactionType === "I") {

      // * Add the record. -- 04/16/2021 MF
      operation = "Added User Request";
      method = "POST";
      recordObject.active = true;

      // } else if (transactionType === "U") {

      //   // * Update the record. -- 04/16/2021 MF
      //   operation = "Updated User Request";
      //   method = "PUT";
      //   url = url + primaryKeyID;
      //   recordObject.userRequestID = primaryKeyID;
      //   recordObject.active = currentRequest.active;

      // } else if (transactionType === "D") {

      //   // * Delete the record. -- 06/02/2021 MF
      //   operation = "Deleted User Request";
      //   method = "PUT";
      //   url = url + primaryKeyID;
      //   recordObject.userRequestID = primaryKeyID;
      //   recordObject.active = false;

    };

    fetch(url, {
      method: method,
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

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: `${response.status} ${response.statusText} ${response.url}` }, dateEntered: getDateTime() });

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

            dispatch(setDatabaseAvailable(true));

            primaryKeyID = data.primaryKeyID;

            setUserRequestID(primaryKeyID);

            addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(getBrowserData()), transactionData: { dataRecord, /* previousRecord, */ loggedInUser, computerLog }, dateEntered: getDateTime() });

            dispatch(addSuccessMessage(`${operation}: ${data.message}`));

            sendNotificationEmail(userRequestTypeID, primaryKeyID);

            dispatch(setComponentToLoad(""));

          } else {

            // console.error(operation, "data.message", data.message);

            dispatch(addErrorMessage(`${operation}: ${data.message}`));

            addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: data.message }, dateEntered: getDateTime() });

          };

        } else {

          dispatch(addErrorMessage(`${operation}: No Results Returned.`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: `${operation} SQL Server`, transactionData: { url, response: { ok: response.ok, redirected: response.redirected, status: response.status, statusText: response.statusText, type: response.type, url: response.url }, data, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { message: "No Results Returned." }, dateEntered: getDateTime() });

        };

      })
      .catch((error) => {

        // console.error(operation, "error", error);

        dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

        addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { primaryKeyID, /* previousRecord, */ recordObject, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        dispatch(setDatabaseAvailable(false));

      });

  };


  const sendNotificationEmail = (submitType: string | number, primaryKeyID: string | number) => {

    if (!isEmpty(baseURL)) {

      let url: string = `${baseURL}notifications/`;
      let response: any = "";
      let data: any = "";
      let operation: string = "";

      if (submitType === 5) {

        url += `notifyUser/${primaryKeyID}/`;

      };

      fetch(url, {
        method: "GET",
        headers: new Headers({
          "Content-Type": "application/json", "Authorization": setFetchAuthorization(null, environmentMode, demonstrationMode)
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

        })
        .catch((error) => {

          // console.error("addErrorLog error", error);
          // console.error("addErrorLog error.name", error.name);
          // console.error("addErrorLog error.message", error.message);

          // dispatch(addErrorMessage(`${operation}: ${convertSpecialCharacters(error.name)}: ${convertSpecialCharacters(error.message)}`));

          addErrorLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, transactionData: { submitType, primaryKeyID, applicationVersion, loggedInUser, computerLog }, errorData: { name: error.name, message: error.message, inner: error.inner, stack: error.stack }, dateEntered: getDateTime() });

        });

    };

  };


  return (
    <section className="section-block large">

      <form className="request-form" onSubmit={(event) => { event.preventDefault(); }}>

        <h2>User Request</h2>

        <div className="field-legend-container">
          <div className="field-legend"><em>Note: Form fields that are grayed out are not able to be changed.</em></div>
          <div className="field-legend"><span className="required"> * </span>indicates a required field.</div>
          <div className="field-legend">If you have questions or need special accommodations, please email <a href="mailto:mixedreality@orbiseducation.com">mixedreality@orbiseducation.com</a>.</div>
        </div>

        <FormDropdown formInputID="ddPartnerSiteID" labelText="Partner and Partner Site" placeholderText="Select Partner and Partner Site" isRequired={true} optionData={currentPartnerSites} optionID="partnerSiteID" optionText={[{ type: "property", text: "partnerName" }, { type: "string", text: " (" }, { type: "property", text: "partnerSiteName" }, { type: "string", text: ")" }]} inlineError={inlineErrors.ddPartnerSiteID} inputValue={ddPartnerSiteID} updateValue={setDdPartnerSiteID} />

        <FormInput formInputID="txtFirstName" inputType="text" labelText="First Name" isRequired={true} inlineError={inlineErrors.txtFirstName} inputValue={txtFirstName} updateValue={setTxtFirstName} />

        <FormInput formInputID="txtLastName" inputType="text" labelText="Last Name" isRequired={true} inlineError={inlineErrors.txtLastName} inputValue={txtLastName} updateValue={setTxtLastName} />

        <FormInput formInputID="txtEmail" inputType="text" labelText="Email" isRequired={true} inlineError={inlineErrors.txtEmail} inputValue={txtEmail} updateValue={setTxtEmail} />

        <FormDropdown formInputID="ddPositionID" labelText="Position" placeholderText="Select Position" isRequired={true} optionData={contactPositions} optionID="associatedDataID" optionText={[{ type: "property", text: "name" }]} inlineError={inlineErrors.ddPositionID} inputValue={ddPositionID} updateValue={setDdPositionID} />

        <FormRadioGroup formInputID="rdoProgramID" legendText="Program" isRequired={true} formColumns={2} optionData={programs} optionID="associatedDataID" optionText={[{ type: "property", text: "name" }]} inlineError={inlineErrors.rdoProgramID} inputValue={rdoProgramID} updateValue={setRdoProgramID} />

        <div className={`form-group sos-date-na-grid ${!isEmpty(inlineErrors.txtPreferredDate) ? "input-error" : ""}`}>

          <label htmlFor="txtSimulationDate">What is the date of your next mixed reality simulation implementation? {cbxNotApplicable !== true ? <span className="required"> * <span className="sr-only">required</span></span> : null}</label>

          <div className="flex-row align-center">

            <input type="date" id="txtSimulationDate" value={txtSimulationDate} onChange={(event) => { setTxtSimulationDate(event.target.value); }} disabled={cbxNotApplicable === true} />

            <div className="form-group date-na-checkbox">
              <input type="checkbox" id="cbxNotApplicable" checked={cbxNotApplicable} onChange={() => { setCbxNotApplicable(!cbxNotApplicable); }} />
              <label htmlFor="cbxNotApplicable">Haven't yet scheduled for the next semester.</label>
            </div>

          </div>

          {!isEmpty(inlineErrors.txtSimulationDate) ?

            <div className="inline-alert inline-alert-danger">{parse(inlineErrors.txtSimulationDate)}</div>

            : null}

        </div>

        <FormInput formInputID="txtDetails" inputType="textarea" labelText="Are there any other details you would like to share?" inputValue={txtDetails} updateValue={setTxtDetails} />

        <hr />

        <div className="flex-row align-end justify-end">

          <button type="submit" className="btn btn-primary" disabled={buttonsDisabled} onClick={() => { window.scrollTo(0, 0); saveRecord(); }}>Save</button>

        </div>

      </form>

    </section>
  );
};

export default UserRequest;