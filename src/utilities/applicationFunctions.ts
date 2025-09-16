import { getFetchAuthorization } from "shared-functions";

export const sessionTokenName = "users";

export const setFetchAuthorization = (sessionToken, environmentMode, demonstrationMode) =>
  getFetchAuthorization(0, "Users", "UsersDevelopment", sessionToken, environmentMode, demonstrationMode);
