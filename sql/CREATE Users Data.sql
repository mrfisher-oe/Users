-- USE [Users]
-- GO

TRUNCATE TABLE userApplications
TRUNCATE TABLE userRoles
GO

DBCC CHECKIDENT('userApplications', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
GO

SET IDENTITY_INSERT [userApplications] ON 
GO
INSERT [userApplications] ([applicationID], [applicationName], [active], [createDate]) VALUES (1, N'SOS Assistant', 1, CAST(N'2025-01-28T22:55:51.467' AS DateTime))
GO
INSERT [userApplications] ([applicationID], [applicationName], [active], [createDate]) VALUES (2, N'Electronic Health Record', 1, CAST(N'2025-01-28T22:56:11.600' AS DateTime))
GO
SET IDENTITY_INSERT [userApplications] OFF
GO
SET IDENTITY_INSERT [userRoles] ON 
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (1, N'Viewer', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (2, N'Viewer Plus Source', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (3, N'Viewer Plus Statistics', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (4, N'Editor', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (5, N'Administrator', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (6, N'System Administrator', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (7, N'Director Nursing Services (DNS)', 1, CAST(N'2024-05-16T17:37:56.197' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (8, N'Simulation Operations Specialist (SOS)', 1, CAST(N'2024-05-16T17:38:11.523' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (9, N'Course Lead', 1, CAST(N'2024-05-16T17:38:31.930' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (10, N'Assisting Clinical Faculty', 1, CAST(N'2024-05-16T17:38:38.370' AS DateTime))
GO
SET IDENTITY_INSERT [userRoles] OFF
GO
