import { useState, useEffect } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import { FormDropdown, DialogBoxConfirmation, SortableColumnHeader, useDialogBoxConfirmation, NoResultsText } from "shared-components";
import { isEmpty, getDateTime, isNonEmptyArray, getFirstItem, sortObjectArrayByProperty, displayValue, displayDate, convertSpecialCharacters, addLog, addErrorLog, allowLogging, getBrowserData } from "shared-functions";
import { sessionTokenName, setFetchAuthorization } from "../utilities/applicationFunctions";
import { setDatabaseAvailable, setUserTokenExpired } from "../app/applicationSettingsSlice";
import { setComponentToLoad, setIsFormOpen, setCurrentUserRequest, setUserRequests, addSuccessMessage, addErrorMessage, clearMessages } from "../app/activitySlice";
import type { RootState } from '../app/store';

const UserRequests = ({ processTransactionUserRequest }) => {

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
  const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  const userRequests = useAppSelector((state: RootState) => state.activity.userRequests);
  // const applications = useAppSelector((state: RootState) => state.activity.applications);
  // const requestTypes = useAppSelector((state: RootState) => state.activity.requestTypes);
  // const partners = useAppSelector((state: RootState) => state.activity.partners);
  const currentPartners = useAppSelector((state: RootState) => state.activity.currentPartners);
  // const partnerSites = useAppSelector((state: RootState) => state.activity.partnerSites);
  const currentPartnerSites = useAppSelector((state: RootState) => state.activity.currentPartnerSites);
  // const associatedData = useAppSelector((state: RootState) => state.activity.associatedData);

  const currentUserRequest = useAppSelector((state: RootState) => state.activity.currentUserRequest);
  // const currentUserRequestID = useAppSelector((state: RootState) => state.activity.currentUserRequestID);

  // * Search/filters -- 05/07/2024 JH
  const [ddPartnerID, setDdPartnerID] = useState<any>(null); // TODO type -- 09/18/2025 JH
  const [ddPartnerSiteID, setDdPartnerSiteID] = useState<any>(null); // TODO type -- 09/18/2025 JH
  const [ddRequestStatus, setDdRequestStatus] = useState<string>("Submitted");

  const [currentUserRequests, setCurrentUserRequests] = useState<Record<string, unknown>[]>([]);

  const [noResultsDisplay, setNoResultsDisplay] = useState(false);

  const [sortProperty, setSortProperty] = useState("createDate");
  const [sortDirection, setSortDirection] = useState("desc");

  const [processTransactionValue, confirmationDialogBoxOpen, confirmationDialogBoxSize, confirmationDialogBoxTitle, confirmationDialogBoxContent, confirmationDialogBoxType, confirmationDialogBoxContinue, confirmAction, deleteRecord, hardDeleteRecord, closeDeleteDialogBox, setConfirmationDialogBoxContinue, setProcessTransactionValue] = useDialogBoxConfirmation();


  useEffect(() => {

    loadUserRequests();

  }, []);


  useEffect(() => {

    if (!isEmpty(processTransactionValue)) {

      dispatch(clearMessages());

      processTransactionUserRequest("D");

      setProcessTransactionValue("");

      loadUserRequests();

    };

  }, [processTransactionValue]);


  // TODO: These will need to be rewritten to match the new data structures. -- 09/19/2025 MF
  // useEffect(() => {

  //   let currentSessionToken = localStorage.getItem(sessionTokenName);

  //   // * When going directly to the page in a new tab or when refreshing, the loggedInUser isn't available yet in Redux so currentSessionToken is checked instead. -- 06/28/2024 MF
  //   if (isEmpty(currentSessionToken) || (!isEmpty(loggedInUser) && !loggedInUser.isAdministrator)) {

  //     let operation = "Attempted Page Visit";

  //     addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation, userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(getBrowserData()), transactionData: { loggedInUser, computerLog }, dateEntered: getDateTime() });

  //     dispatch(setComponentToLoad(""));

  //   };

  // }, [loggedInUser]);


  useEffect(() => {

    // let ddPartnerSiteIDSearch = "";

    // if (!isEmpty(ddPartnerSiteID)) {

    //   ddPartnerSiteIDSearch = ddPartnerSiteID;

    // };

    if (isNonEmptyArray(userRequests)) {

      setCurrentUserRequests([]);

      let combinedResults = [...userRequests];

      if (!isEmpty(ddPartnerID)) {

        combinedResults = combinedResults.filter((userRequest) => parseInt(userRequest.partnerID) === parseInt(ddPartnerID));

      };

      if (!isEmpty(ddPartnerSiteID)) {

        combinedResults = combinedResults.filter((userRequest) => parseInt(userRequest.partnerSiteID) === parseInt(ddPartnerSiteID));

      };

      if (!isEmpty(ddRequestStatus)) {

        if (ddRequestStatus === "Completed") {

          combinedResults = combinedResults.filter((userRequest) => userRequest.requestStatus === "Completed");

        } else if (ddRequestStatus === "Submitted") {

          combinedResults = combinedResults.filter((userRequest) => userRequest.requestStatus === "Submitted");

        };

      };

      if (isNonEmptyArray(combinedResults) && !isEmpty(sortProperty) && sortDirection !== "unsorted") {

        combinedResults = sortObjectArrayByProperty(combinedResults, sortProperty, sortDirection);

      };

      if (!isNonEmptyArray(combinedResults)) {

        setNoResultsDisplay(true);

      };

      setCurrentUserRequests(combinedResults);

    };

  }, [userRequests, ddPartnerID, ddPartnerSiteID, ddRequestStatus, sortProperty, sortDirection]);


  const loadUserRequests = () => {

    if (!isEmpty(baseURL)) {

      dispatch(clearMessages());

      dispatch(setUserRequests([]));
      setCurrentUserRequests([]);

      let url: string = `${baseURL}userRequests/`;
      let response: any = "";
      let data: any = "";
      let operation: string = "Get User Requests";

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

              dispatch(setUserRequests(data.records));
              setCurrentUserRequests(data.records);

              //  * If there's currently a currentUserRequestID, then update currentRequest with the new record -- 05/06/2024 JH
              if (!isEmpty(currentUserRequest)) {

                let newCurrentUserID = getFirstItem(data.records.filter(record => record.userRequestID === currentUserRequest.userRequestID));

                if (!isEmpty(newCurrentUserID)) {

                  dispatch(setCurrentUserRequest(newCurrentUserID));

                };

              };

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


  return (
    <section className="section-block extra-large">

      <h2>User Requests</h2>

      {isEmpty(currentUserRequest) && isNonEmptyArray(userRequests) ?

        <>

          <form onSubmit={event => { event.preventDefault(); }}>

            <div className="requests__search-row">

              <div className="horizontal-form">

                <FormDropdown formInputID="ddPartnerID" labelText="Partner Name" placeholderText="Select Partner" isRequired={false} optionData={currentPartners} optionID="partnerID" optionText={[{ type: "property", text: "partnerName" }]} inputValue={ddPartnerID} updateValue={setDdPartnerID} />

                <div className="form-group">

                  <label htmlFor="ddPartnerSiteID">Partner Site</label>

                  <select className="form-control" id="ddPartnerSiteID" value={ddPartnerSiteID} onChange={(event) => { setDdPartnerSiteID(parseInt(event.target.value)); }}>

                    <option value="">Select Partner Site</option>

                    {isNonEmptyArray(currentPartnerSites) ?

                      <>

                        {/* // * The commenting out of key={partnerSite.partnerSiteID} is not a mistake. Please leave this in place until some questions with the underlying data are resolved. -- 06/23/2023 MF */}

                        {currentPartnerSites.map((
                          // TODO type -- 09/18/2025 JH
                          partnerSite: any,
                          index: number
                        ) => {

                          let partnerCityState = !isEmpty(partnerSite.city) && !isEmpty(partnerSite.state) ? "(" + partnerSite.city + ", " + partnerSite.state + ")" : "";

                          return (
                            <option key={index} /* key={partnerSite.partnerSiteID} */ value={partnerSite.partnerSiteID}>{partnerSite.partnerName} {partnerSite.partnerSiteName} {partnerCityState}</option>
                          );

                        })}

                      </>

                      : null}

                  </select>

                </div>

                <FormDropdown formInputID="ddRequestStatus" labelText="Request Status" placeholderText="Submitted" isRequired={false} optionData={[{ requestStatusValue: "Completed", requestStatusText: "Completed" }, { requestStatusValue: "All", requestStatusText: "All" }]} optionID="requestStatusValue" optionText={[{ type: "property", text: "requestStatusText" }]} inputValue={ddRequestStatus} updateValue={setDdRequestStatus} />

                <button type="button" className="btn btn-dark-gray clear-search-button" onClick={() => { setDdPartnerID(null); setDdPartnerSiteID(null); setDdRequestStatus("Submitted"); setSortProperty(""); setSortDirection(""); }}>Clear Search</button>

              </div>

            </div>

          </form>

          <div className="table-container">

            {isNonEmptyArray(currentUserRequests) ?

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
                      <SortableColumnHeader columnText="Position Name" columnPropertyName="positionName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                    </th>
                    <th>
                      <SortableColumnHeader columnText="Program Name" columnPropertyName="programName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                    </th>
                    <th>
                      <SortableColumnHeader columnText="Partner" columnPropertyName="partnerName" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                    </th>
                    <th>
                      <SortableColumnHeader columnText="Location" columnPropertyName="city" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                    </th>
                    <th>
                      <SortableColumnHeader columnText="Implementation Date" columnPropertyName="simulationDate" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                    </th>
                    <th>
                      <SortableColumnHeader columnText="Completed" columnPropertyName="completed" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                    </th>
                    <th>
                      <SortableColumnHeader columnText="Create Date" columnPropertyName="createDate" sortDirection={sortDirection} sortProperty={sortProperty} setSortDirection={setSortDirection} setSortProperty={setSortProperty} />
                    </th>
                  </tr>
                </thead>

                <tbody>

                  <>

                    {currentUserRequests.map((
                      userRequest: any // TODO type -- 09/18/2025 JH
                    ) => {

                      return (
                        <tr key={userRequest.userRequestID} className="clickable-table-row" onClick={() => { window.scrollTo(0, 0); dispatch(setCurrentUserRequest(userRequest)); }}>
                          <td>{userRequest.firstName}</td>
                          <td>{userRequest.lastName}</td>
                          <td>{userRequest.email}</td>
                          <td>{userRequest.positionName}</td>
                          <td>{userRequest.programName}</td>
                          <td>{userRequest.partnerName}</td>
                          {/* <td>{userRequest.partnerSiteName}</td> */}
                          <td>{userRequest.city}{!isEmpty(userRequest.city) && !isEmpty(userRequest.state) ? ", " : ""}{userRequest.state}</td>
                          <td>{displayDate(userRequest.simulationDate)}</td>
                          <td className="text-center">
                            {userRequest.completed || userRequest.completed === 1 ? <i className="fa fa-check green-text"></i> : "-"}
                            <span className="sr-only">{displayValue(userRequest.completed)}</span>
                          </td>
                          <td>{displayDate(userRequest.createDate)}</td>
                        </tr>
                      );

                    })}

                  </>

                </tbody>

              </table>

              :

              <>{noResultsDisplay === true ? <NoResultsText /> : null}</>

            }

          </div>

        </>

        : null}

      {!isEmpty(currentUserRequest) ?

        <>

          <hr />

          <div className="readonly-form-info">

            <div className="form-two-columns">

              <div className="form-column-half">

                <div className="title-area">

                  <h3>{currentUserRequest.partnerName}</h3>

                  <p>
                    <strong>Program</strong>: {currentUserRequest.programName}
                  </p>

                  <p>
                    <strong>Implementation Date</strong>: {!isEmpty(currentUserRequest.simulationDate) ? displayDate(currentUserRequest.simulationDate) : ""}
                  </p>

                  <p>
                    <strong>Details</strong><br />
                    {currentUserRequest.details}
                  </p>

                </div>

              </div>

              <div className="form-column-half">

                <h4>Requested User</h4>

                <div className="table-container">

                  <table className="mt-3">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Position</th>
                      </tr>
                    </thead>

                    <tbody>

                      <tr>
                        <td>{currentUserRequest.lastName}{!isEmpty(currentUserRequest.lastName) && !isEmpty(currentUserRequest.firstName) ? ", " : ""}{currentUserRequest.firstName}</td>
                        <td>{currentUserRequest.email}</td>
                        <td>{currentUserRequest.positionName}</td>
                      </tr>

                    </tbody>

                  </table>

                </div>

                <div>
                  <button type="button" className="btn btn-success" onClick={() => { window.scrollTo(0, 0); dispatch(setComponentToLoad("Users")); dispatch(setIsFormOpen(true)); }}>Add User</button>
                </div>

              </div>

            </div>

            <hr />

            <div className="flex-row justify-center">

              <button type="button" className="btn btn-danger" onClick={() => { deleteRecord(); }}>Delete</button>
              <button type="button" className="btn btn-light-gray" onClick={() => { window.scrollTo(0, 0); dispatch(setCurrentUserRequest({})); }}>Close</button>

            </div>

          </div>

        </>

        : null}

      <DialogBoxConfirmation dialogBoxOpen={confirmationDialogBoxOpen} dialogBoxType={confirmationDialogBoxType} setDialogBoxContinue={setConfirmationDialogBoxContinue} />


    </section>
  );
};

export default UserRequests;