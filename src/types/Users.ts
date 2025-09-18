export type User = {
  userID?: number;
  username: string;
  firstName: string;
  lastName: string;
  email: string;
  password?: string;
  userRoleID: string;
  requestedBy: string;
  requestDate: string;
  notes: string;
  active?: boolean;
  userRole?: string;
  lastLogin?: string;
  updatedBy?: number;
  isSystemAdministrator?: boolean;
} | null;