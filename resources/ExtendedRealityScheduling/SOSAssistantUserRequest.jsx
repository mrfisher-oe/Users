import { useSelector } from "react-redux";
import { getDateTime, addLog, addErrorLog, addComputerLog, isLocalDevelopment, showPlayground, allowLogging } from "shared-functions";
import { setFetchAuthorization } from "../utilities/ApplicationFunctions";

const SOSAssistantUserRequest = () => {

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

  let redirectURL = "https://intranet.orbiseducation.com/sosAssistant/";

  if (isLocalDevelopment() || showPlayground(environmentMode, demonstrationMode)) {

    redirectURL = "https://intranet.orbiseducation.com/test_local/Michael_Playground/projectFiles/sosAssistant/";

  };

  redirectURL += "?componentToLoad=UserRequest";


  return (
    <section className="section-block large">

      <h2>SOS Assistant User Request</h2>

      <p>The <a href={redirectURL} onClick={() => { addLog(baseURL, setFetchAuthorization(null, environmentMode, demonstrationMode), databaseAvailable, allowLogging(), { operation: "SOS Assistant User Request Redirect", userIdentifier, href: window.location.href, applicationVersion, browserData: JSON.stringify(browserData), transactionData: { computerLog }, dateEntered: getDateTime() }); }}>User Request form</a> has moved to the SOS Assistant application.</p>

    </section>
  );
};

export default SOSAssistantUserRequest;