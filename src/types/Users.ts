type ApplicationID = {
  userID: string | number;
  applicationID: Record<string, unknown>;
};

export interface User {
  userID?: string | number; // TODO string or number? -- 09/15/2025 JH
  username: string;
  firstName: string;
  lastName: string;
  email: string;
  password?: string;
  userRoleID: string;
  requestedBy?: string;
  requestDate?: string;
  notes?: string;
  active?: boolean;
  userRole?: string;
  lastLogin?: string;
  updatedBy?: string | number; // TODO string or number? -- 09/15/2025 JH
  isSystemAdministrator?: boolean;
  isAdministrator?: boolean;
  partnerSiteID?: string | number; // TODO string or number? -- 09/15/2025 JH
  applicationID?: ApplicationID[]; // TODO string or number? -- 09/15/2025 JH
};

export interface UserRequest extends User {
  sosAssistantUserRequestID?: string | number;
  positionName?: string;
}