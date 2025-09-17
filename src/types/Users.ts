export type User = {
  userID?: string | number; // TODO string or number? -- 09/15/2025 JH
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
  updatedBy?: string | number; // TODO string or number? -- 09/15/2025 JH
  isSystemAdministrator?: boolean;
} | null;