USE [UsersDevelopment]
GO

TRUNCATE TABLE users
TRUNCATE TABLE userRoles
TRUNCATE TABLE userApplications
TRUNCATE TABLE usersApplications
GO

DBCC CHECKIDENT('users', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
DBCC CHECKIDENT('userApplications', RESEED, 1)
GO

SET IDENTITY_INSERT [users] ON 
GO
INSERT INTO UsersDevelopment.dbo.users ([userID], [firstName], [lastName], [email], [username], [password], [partnerID], [partnerSiteID], [userRoleID], [shared], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate])
SELECT * FROM Users.dbo.users
SET IDENTITY_INSERT [users] OFF
GO

SET IDENTITY_INSERT [userRoles] ON 
GO
INSERT INTO UsersDevelopment.dbo.userRoles ([userRoleID]
	[userRole], [active], [createDate])
SELECT * FROM Users.dbo.userRoles
SET IDENTITY_INSERT [userRoles] OFF
GO

SET IDENTITY_INSERT [userApplications] ON 
GO
INSERT INTO UsersDevelopment.dbo.userApplications ([applicationID], [applicationName], [active], [createDate])
SELECT * FROM Users.dbo.userApplications
SET IDENTITY_INSERT [userApplications] OFF
GO

INSERT INTO UsersDevelopment.dbo.usersApplications ([userID], [applicationID], [createDate])
SELECT * FROM Users.dbo.usersApplications
