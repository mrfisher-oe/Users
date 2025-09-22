-- USE [Users]
-- GO

TRUNCATE TABLE applications
TRUNCATE TABLE userRoles
GO

DBCC CHECKIDENT('applications', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
GO

SET IDENTITY_INSERT [applications] ON 
GO
INSERT [applications] ([applicationID], [applicationName], [active], [createDate]) VALUES (1, N'Electronic Health Record Login', 1, CAST(N'2025-09-19T21:41:26.073' AS DateTime))
GO
INSERT [applications] ([applicationID], [applicationName], [active], [createDate]) VALUES (2, N'Extended Reality Scheduling System', 1, CAST(N'2025-09-19T21:41:26.073' AS DateTime))
GO
INSERT [applications] ([applicationID], [applicationName], [active], [createDate]) VALUES (3, N'Faculty Training and Development Curriculum', 1, CAST(N'2025-09-19T21:41:26.073' AS DateTime))
GO
INSERT [applications] ([applicationID], [applicationName], [active], [createDate]) VALUES (4, N'Learning Object Repository', 1, CAST(N'2025-09-19T21:41:26.073' AS DateTime))
GO
INSERT [applications] ([applicationID], [applicationName], [active], [createDate]) VALUES (5, N'Partners', 1, CAST(N'2025-09-19T21:41:26.073' AS DateTime))
GO
INSERT [applications] ([applicationID], [applicationName], [active], [createDate]) VALUES (6, N'SOS Assistant', 1, CAST(N'2025-09-19T21:41:26.073' AS DateTime))
GO
INSERT [applications] ([applicationID], [applicationName], [active], [createDate]) VALUES (7, N'Users', 1, CAST(N'2025-09-19T21:41:26.073' AS DateTime))
GO
SET IDENTITY_INSERT [applications] OFF
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
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (9, N'Simulation Operations Specialist (SOS) Traveling', 1, CAST(N'2024-10-22 19:23:52.627' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (10, N'Course Lead', 1, CAST(N'2024-05-16T17:38:31.930' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (11, N'Assisting Clinical Faculty', 1, CAST(N'2024-05-16T17:38:38.370' AS DateTime))
GO
SET IDENTITY_INSERT [userRoles] OFF
GO
