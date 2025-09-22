USE [UsersDevelopment]
GO

TRUNCATE TABLE Users.dbo.[users]
TRUNCATE TABLE users
TRUNCATE TABLE userRoles
TRUNCATE TABLE applications
TRUNCATE TABLE userApplications
TRUNCATE TABLE Users.dbo.[userRequests]
TRUNCATE TABLE userRequests
GO

DBCC CHECKIDENT('Users.dbo.users', RESEED, 1)
DBCC CHECKIDENT('users', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
DBCC CHECKIDENT('applications', RESEED, 1)
DBCC CHECKIDENT('Users.dbo.userRequests', RESEED, 1)
DBCC CHECKIDENT('userRequests', RESEED, 1)
GO

-- TODO: Remove when application is in production. -- 09/22/2025 MF
INSERT INTO Users.dbo.users ([firstName], [lastName], [email], [username], [password], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate], [dataSource])
SELECT [firstName], [lastName], [email], [username], [password], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate], 'ExtendedRealityScheduling' FROM ExtendedRealityScheduling.dbo.users
GO

-- TODO: Remove when application is in production. -- 09/22/2025 MF
INSERT INTO Users.dbo.users ([firstName], [lastName], [email], [username], [password], [partnerSiteID], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [dataSource])
SELECT [firstName], [lastName], [email], [username], [password], [partnerSiteID], [lastLogin], [updatedBy], [active], [createDate], [updateDate], 'SOSAssistant' FROM ExtendedRealityScheduling.dbo.sosAssistantUsers
GO

-- TODO: Remove when application is in production. -- 09/22/2025 MF
INSERT INTO Users.dbo.users ([firstName], [lastName], [email], [username], [password], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate], [dataSource])
SELECT [firstName], [lastName], [email], [username], [password], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate], 'FacultyTraining' FROM FacultyTraining.dbo.users
GO

-- TODO: Remove when application is in production. -- 09/22/2025 MF
INSERT INTO Users.dbo.users ([firstName], [lastName], [email], [username], [password], [partnerID], [shared], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate], [dataSource])
SELECT [firstName], [lastName], [email], [username], [password], [partnerID], [shared], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate], 'LearningObjects' FROM LearningObjects.dbo.users
GO

SET IDENTITY_INSERT [users] ON 
GO
INSERT INTO UsersDevelopment.dbo.users ([userID], [firstName], [lastName], [email], [username], [password], [partnerID], [partnerSiteID], [shared], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate], [dataSource])
SELECT * FROM Users.dbo.users
SET IDENTITY_INSERT [users] OFF
GO

SET IDENTITY_INSERT [userRoles] ON 
GO
INSERT INTO UsersDevelopment.dbo.userRoles ([userRoleID], [userRole], [active], [createDate])
SELECT * FROM Users.dbo.userRoles
SET IDENTITY_INSERT [userRoles] OFF
GO

SET IDENTITY_INSERT [applications] ON 
GO
INSERT INTO UsersDevelopment.dbo.applications ([applicationID], [applicationName], [active], [createDate])
SELECT * FROM Users.dbo.applications
SET IDENTITY_INSERT [applications] OFF
GO

-- TODO: Remove when application is in production. -- 09/22/2025 MF
INSERT INTO Users.dbo.userApplications ([userID], [applicationID], [userRoleID], [createDate])
SELECT (SELECT [userID] FROM [Users].[dbo].[users] WHERE [Users].[dbo].[users].username = [ExtendedRealityScheduling].[dbo].[sosAssistantUsers].username AND active = 1 AND datasource = 'SOSAssistant') AS userID,
CASE
  WHEN applicationID = 1 THEN 6
  WHEN applicationID = 2 THEN 1
END AS applicationID,
CASE
  WHEN userRoleID = 7 THEN 1
  WHEN userRoleID = 1 THEN 5
  WHEN userRoleID = 2 THEN 6
  WHEN userRoleID = 3 THEN 7
  WHEN userRoleID = 4 THEN 8
  WHEN userRoleID = 8 THEN 9
  WHEN userRoleID = 5 THEN 10
  WHEN userRoleID = 6 THEN 11
END AS userRoleID,
[ExtendedRealityScheduling].[dbo].[sosAssistantUsersApplications].[createDate]
FROM [ExtendedRealityScheduling].[dbo].[sosAssistantUsersApplications]
INNER JOIN [ExtendedRealityScheduling].[dbo].[sosAssistantUsers] ON [ExtendedRealityScheduling].[dbo].[sosAssistantUsersApplications].userID = [ExtendedRealityScheduling].[dbo].[sosAssistantUsers].userID
WHERE (SELECT [userID] FROM [Users].[dbo].[users] WHERE [Users].[dbo].[users].username = [ExtendedRealityScheduling].[dbo].[sosAssistantUsers].username AND active = 1 AND datasource = 'SOSAssistant') IS NOT NULL
UNION ALL
SELECT (SELECT [userID] FROM [Users].[dbo].[users] WHERE [Users].[dbo].[users].username = [ExtendedRealityScheduling].[dbo].[sosAssistantUsers].username AND active = 0 AND datasource = 'SOSAssistant') AS userID,
CASE
  WHEN applicationID = 1 THEN 6
  WHEN applicationID = 2 THEN 1
END AS applicationID,
CASE
  WHEN userRoleID = 7 THEN 1
  WHEN userRoleID = 1 THEN 5
  WHEN userRoleID = 2 THEN 6
  WHEN userRoleID = 3 THEN 7
  WHEN userRoleID = 4 THEN 8
  WHEN userRoleID = 8 THEN 9
  WHEN userRoleID = 5 THEN 10
  WHEN userRoleID = 6 THEN 11
END AS userRoleID,
[ExtendedRealityScheduling].[dbo].[sosAssistantUsersApplications].[createDate]
FROM [ExtendedRealityScheduling].[dbo].[sosAssistantUsersApplications]
INNER JOIN [ExtendedRealityScheduling].[dbo].[sosAssistantUsers] ON [ExtendedRealityScheduling].[dbo].[sosAssistantUsersApplications].userID = [ExtendedRealityScheduling].[dbo].[sosAssistantUsers].userID
WHERE username IN ('jericho.guerrero', 'jennifer.kaup', 'joyce.campbell')
UNION ALL
SELECT (SELECT [userID] FROM [Users].[dbo].[users] WHERE [Users].[dbo].[users].username = [ExtendedRealityScheduling].[dbo].[users].username AND datasource = 'ExtendedRealityScheduling') AS userID,
2 AS applicationID,
CASE
  WHEN userRoleID = 7 THEN 1
  WHEN userRoleID = 1 THEN 5
  WHEN userRoleID = 2 THEN 6
  WHEN userRoleID = 3 THEN 7
  WHEN userRoleID = 4 THEN 8
  WHEN userRoleID = 8 THEN 9
  WHEN userRoleID = 5 THEN 10
  WHEN userRoleID = 6 THEN 11
END AS userRoleID,
[ExtendedRealityScheduling].[dbo].[users].[createDate]
FROM [ExtendedRealityScheduling].[dbo].[users]
UNION ALL
SELECT (SELECT [userID] FROM [Users].[dbo].[users] WHERE [Users].[dbo].[users].username = [FacultyTraining].[dbo].[users].username AND datasource = 'FacultyTraining') AS userID,
3 AS applicationID,
CASE
  WHEN userRoleID = 1 THEN 5
  WHEN userRoleID = 2 THEN 6
END AS userRoleID,
[FacultyTraining].[dbo].[users].[createDate]
FROM [FacultyTraining].[dbo].[users]
UNION ALL
SELECT (SELECT [userID] FROM [Users].[dbo].[users] WHERE [Users].[dbo].[users].username = [LearningObjects].[dbo].[users].username AND datasource = 'LearningObjects') AS userID,
4 AS applicationID,
CASE
  WHEN userRoleID = 1 THEN 1
  WHEN userRoleID = 2 THEN 2
  WHEN userRoleID = 3 THEN 3
  WHEN userRoleID = 4 THEN 4
  WHEN userRoleID = 5 THEN 5
  WHEN userRoleID = 6 THEN 6
END AS userRoleID,
[LearningObjects].[dbo].[users].[createDate]
FROM [LearningObjects].[dbo].[users]

INSERT INTO UsersDevelopment.dbo.userApplications ([userID], [applicationID], [userRoleID], [createDate])
SELECT * FROM Users.dbo.userApplications

-- TODO: Remove when application is in production. -- 09/22/2025 MF
SET IDENTITY_INSERT Users.dbo.[userRequests] ON 
GO
INSERT INTO Users.dbo.userRequests ([userRequestID], [requestTypeID], [firstName], [lastName], [email], [partnerSiteID], [positionID], [programID], [simulationDate], [details], [completed], [active], [createDate])
SELECT [sosAssistantUserRequestID], [requestTypeID], [firstName], [lastName], [email], [partnerSiteID], [positionID], [programID], [simulationDate], [details], [completed], [active], [createDate] FROM ExtendedRealityScheduling.dbo.sosAssistantUserRequests
GO
SET IDENTITY_INSERT Users.dbo.[userRequests] OFF
GO

SET IDENTITY_INSERT [userRequests] ON 
GO
INSERT INTO UsersDevelopment.dbo.userRequests ([userRequestID], [requestTypeID], [firstName], [lastName], [email], [partnerSiteID], [positionID], [programID], [simulationDate], [details], [completed], [active], [createDate])
SELECT [userRequestID], [requestTypeID], [firstName], [lastName], [email], [partnerSiteID], [positionID], [programID], [simulationDate], [details], [completed], [active], [createDate] FROM Users.dbo.userRequests
GO
SET IDENTITY_INSERT [userRequests] OFF
GO
