type ApplicationID = {
  userID: number;
  applicationID: Record<number, unknown>;
};

export interface User {
  userID?: number;
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
  updatedBy?: number;
  isSystemAdministrator?: boolean;
  isAdministrator?: boolean;
  partnerSiteID?: number;
  applicationID?: ApplicationID[];
};

export interface UserRequest extends User {
  sosAssistantUserRequestID?: number;
  positionName?: string;
}