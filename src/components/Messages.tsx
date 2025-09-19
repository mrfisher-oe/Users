import { useEffect } from "react";
import { useAppSelector, useAppDispatch } from "../app/hooks";
import { AlertPopup } from "shared-components";
import { isEmpty } from "shared-functions";
import { addInformationMessage, addSuccessMessage, addWarningMessage, addErrorMessage } from "../app/activitySlice";
import type { RootState } from '../app/store';

const Messages = () => {

  const dispatch = useAppDispatch();

  const informationMessage = useAppSelector((state: RootState) => state.activity.informationMessage);
  const informationMessageVisible = useAppSelector((state: RootState) => state.activity.informationMessageVisible);
  // const informationMessageStatic = useAppSelector((state: RootState) => state.activity.informationMessageStatic);
  const successMessage = useAppSelector((state: RootState) => state.activity.successMessage);
  const successMessageVisible = useAppSelector((state: RootState) => state.activity.successMessageVisible);
  // const successMessageStatic = useAppSelector((state: RootState) => state.activity.successMessageStatic);
  const warningMessage = useAppSelector((state: RootState) => state.activity.warningMessage);
  const warningMessageVisible = useAppSelector((state: RootState) => state.activity.warningMessageVisible);
  // const warningMessageStatic = useAppSelector((state: RootState) => state.activity.warningMessageStatic);
  const errorMessage = useAppSelector((state: RootState) => state.activity.errorMessage);
  const errorMessageVisible = useAppSelector((state: RootState) => state.activity.errorMessageVisible);
  // const errorMessageStatic = useAppSelector((state: RootState) => state.activity.errorMessageStatic);


  // // * https://stackoverflow.com/questions/65214950/how-to-disappear-alert-after-5-seconds-in-react-js -- 08/30/2021 MF
  // useEffect(() => {

  //   // * When the component is mounted, the alert is displayed for 5 seconds. -- 08/30/2021 MF

  //   if (!isEmpty(informationMessage) && informationMessageStatic !== true) {

  //     setTimeout(() => {

  //       dispatch(addInformationMessage(""));

  //     }, 5000);

  //   };

  // }, [informationMessage]);


  // * https://stackoverflow.com/questions/65214950/how-to-disappear-alert-after-5-seconds-in-react-js -- 08/30/2021 MF
  useEffect(() => {

    // * When the component is mounted, the alert is displayed for 5 seconds. -- 08/30/2021 MF

    if (!isEmpty(successMessage) /* && successMessageStatic !== true */) {

      setTimeout(() => {

        dispatch(addSuccessMessage(""));

      }, 5000);

    };

  }, [successMessage]);


  // // * https://stackoverflow.com/questions/65214950/how-to-disappear-alert-after-5-seconds-in-react-js -- 08/30/2021 MF
  // useEffect(() => {

  //   // * When the component is mounted, the alert is displayed for 5 seconds. -- 08/30/2021 MF

  //   if (!isEmpty(warningMessage) && warningMessageStatic !== true) {

  //     setTimeout(() => {

  //       dispatch(addWarningMessage(""));

  //     }, 5000);

  //   };

  // }, [warningMessage]);


  const updateInformationMessage = (alertItemContent: string) => {

    dispatch(addInformationMessage(alertItemContent));

  };

  const updateSuccessMessage = (alertItemContent: string) => {

    dispatch(addSuccessMessage(alertItemContent));

  };

  const updateWarningMessage = (alertItemContent: string) => {

    dispatch(addWarningMessage(alertItemContent));

  };

  const updateErrorMessage = (alertItemContent: string) => {

    dispatch(addErrorMessage(alertItemContent));

  };


  return (
    <div className="alert-messages-container">

      {informationMessageVisible === true ?

        <AlertPopup message={informationMessage} setMessage={updateInformationMessage} alertType="info" />

        : null}

      {successMessageVisible === true ?

        <AlertPopup message={successMessage} setMessage={updateSuccessMessage} alertType="success" />

        : null}

      {warningMessageVisible === true ?

        <AlertPopup message={warningMessage} setMessage={updateWarningMessage} alertType="warning" />

        : null}

      {errorMessageVisible === true ?

        <AlertPopup message={errorMessage} setMessage={updateErrorMessage} alertType="error" />

        : null}

    </div>
  );
};

export default Messages;
