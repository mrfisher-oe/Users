import { getFetchAuthorization } from "shared-functions";

export const setFetchAuthorization = (sessionToken, environmentMode, demonstrationMode) =>
  getFetchAuthorization(0, "Projects", "", sessionToken, environmentMode, demonstrationMode);
