import React from "react";
import ReactDOM from "react-dom/client";
import { PublicClientApplication, EventType, EventMessage, AuthenticationResult } from "@azure/msal-browser";
import { MsalProvider } from "@azure/msal-react";
import { msalConfig } from "./utilities/authenticationConfig";
import App from "./App";
import "shared-components/shared-components.css";
import "./css/index.css";
// * https://stackoverflow.com/questions/66384368/how-is-it-possible-to-access-homepage-from-package-json-in-a-react-app -- 12/17/2021 MF
// * Using Vite requires a different syntax. -- 09/22/2023 MF
import { version, copyrightYear } from "../package.json";
const applicationVersion = version;

// const componentName = "index";

// console.log(componentName, "applicationVersion", applicationVersion);
// console.log(componentName, "copyrightYear", copyrightYear);

export const msalInstance = new PublicClientApplication(msalConfig);

msalInstance.initialize().then(() => {

  // * Default to using the first account if no account is active on page load
  if (!msalInstance.getActiveAccount() && msalInstance.getAllAccounts().length > 0) {

    // * Account selection logic is app dependent. Adjust as needed for different use cases.
    msalInstance.setActiveAccount(msalInstance.getAllAccounts()[0]);

  };

  // * Optional - This will update account state if a user signs in from another tab or window
  msalInstance.enableAccountStorageEvents();

  msalInstance.addEventCallback((event: EventMessage) => {

    if (event.eventType === EventType.LOGIN_SUCCESS) {
      const result = event.payload as AuthenticationResult;

      if (result?.account) {
        msalInstance.setActiveAccount(result.account);
      }

    };

  });

  const root = ReactDOM.createRoot(document.getElementById("root"));

  root.render(
    <React.StrictMode>
      <MsalProvider instance={msalInstance}>
        <App applicationVersion={applicationVersion} copyrightYear={copyrightYear} />
      </MsalProvider>
    </React.StrictMode>
  );

});
