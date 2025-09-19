import { useEffect, useRef } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import classnames from "classnames";
import { useNativeClickListener } from "shared-components";
import { isEmpty, isLocalDevelopment } from "shared-functions";
import { setLoggedInUser, setSessionToken, setComponentToLoad, setIsFormOpen } from "../app/activitySlice";
import { setUserTokenExpired } from "../app/applicationSettingsSlice";
import type { RootState } from '../app/store';

const Navigation = () => {

  const dropdownRef = useRef<HTMLButtonElement>(null);

  const dispatch = useAppDispatch();

  // const applicationVersion = useAppSelector((state: RootState) => state.applicationSettings.applicationVersion);
  // const baseURL = useAppSelector((state: RootState) => state.applicationSettings.baseURL);
  // const baseURLApplied = useAppSelector((state: RootState) => state.applicationSettings.baseURLApplied);
  // const computerLog = useAppSelector((state: RootState) => state.applicationSettings.computerLog);
  // const userIdentifier = useAppSelector((state: RootState) => state.applicationSettings.userIdentifier);
  // const demonstrationMode = useAppSelector((state: RootState) => state.applicationSettings.demonstrationMode);
  // const environmentMode = useAppSelector((state: RootState) => state.applicationSettings.environmentMode);
  // const databaseAvailable = useAppSelector((state: RootState) => state.applicationSettings.databaseAvailable);
  const userTokenExpired = useAppSelector((state: RootState) => state.applicationSettings.userTokenExpired);

  const loggedInUser = useAppSelector((state: RootState) => state.activity.loggedInUser);
  // const sessionToken = useAppSelector((state: RootState) => state.activity.sessionToken);

  const componentToLoad = useAppSelector((state: RootState) => state.activity.componentToLoad);

  const [isDropdownOpen, setIsDropdownOpen] = useNativeClickListener(dropdownRef, false);

  const dropdownIcon = classnames("fa", {
    "fa-caret-up": isDropdownOpen === true,
    "fa-caret-down": isDropdownOpen !== true
  });


  useEffect(() => {

    if (userTokenExpired === true) {

      logOut();

      dispatch(setUserTokenExpired(false));

    };

  }, [userTokenExpired]);


  const logOut = () => {

    dispatch(setIsFormOpen(false));

    // * The order matters for this code. The component is refreshed when setLoggedInUser({}) occurs and the localStorage is never cleared. -- 10/26/2023 MF
    localStorage.clear();

    dispatch(setSessionToken(null));

    dispatch(setLoggedInUser(null));

    dispatch(setComponentToLoad(""));

  };


  const returnActiveClass = (componentName: string, classList: string) => {

    let newClassList: string = !isEmpty(classList) ? classList : "";

    newClassList += componentToLoad === componentName ? " active" : "";

    return newClassList;

  };


  return (
    <nav className="sub-header-nav">
      <ul>

        {/* <li>
          <button
            type="button"
            onClick={() => { setIsDropdownOpen(!isDropdownOpen); }}
            ref={dropdownRef}
          >
            Dropdown <i className={dropdownIcon}></i>
          </button>

          {isDropdownOpen === true ?

            <ul className="dropdown">
              <li>
                <button
                  type="button"
                  role="link"
                  className={returnActiveClass("DropdownLink1", "")}
                  onClick={() => { window.scrollTo(0, 0); dispatch(setComponentToLoad("")); }}
                >
                  Dropdown Link 1
                </button>
              </li>
            </ul>

            : null}

        </li> */}

        {isEmpty(loggedInUser) ?

          <li>
            <button
              type="button"
              role="link"
              className={returnActiveClass("Login", "")}
              onClick={() => { window.scrollTo(0, 0); dispatch(setComponentToLoad("Login")); }}
            >
              Administrator Login
            </button>
          </li>

          : null}

        {!isEmpty(loggedInUser) ?

          <>

            <li>
              <button
                type="button"
                role="link"
                className={returnActiveClass("Users", "")}
                onClick={() => { window.scrollTo(0, 0); dispatch(setComponentToLoad("Users")); }}
              >
                Users
              </button>
            </li>

            <li>
              <button
                type="button"
                role="link"
                onClick={() => { window.scrollTo(0, 0); logOut(); }}
              >
                Log Out
              </button>
            </li>

            <li>
              <button
                type="button"
                role="link"
                className={componentToLoad === "Profile" ? "active" : ""}
                onClick={() => { window.scrollTo(0, 0); dispatch(setComponentToLoad("Profile")); }}
              >
                {!isEmpty(loggedInUser.firstName) ? <>{loggedInUser.firstName}{!isEmpty(loggedInUser.lastName) ? <> {loggedInUser.lastName},</> : null}</> : null}
                {!isEmpty(loggedInUser.userRole) ? <> {loggedInUser.userRole}</> : null}
              </button>
            </li>

          </>

          : null}

      </ul>
    </nav>
  );
};

export default Navigation;;