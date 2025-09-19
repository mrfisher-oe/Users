USE [UsersDevelopment]
GO

TRUNCATE TABLE users
TRUNCATE TABLE userRoles
TRUNCATE TABLE applications
TRUNCATE TABLE userApplications
GO

DBCC CHECKIDENT('users', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
DBCC CHECKIDENT('applications', RESEED, 1)
GO

SET IDENTITY_INSERT [users] ON 
GO
INSERT INTO UsersDevelopment.dbo.users ([userID], [firstName], [lastName], [email], [username], [password], [partnerID], [partnerSiteID], [shared], [requestedBy], [requestDate], [notes], [lastLogin], [updatedBy], [active], [createDate], [updateDate], [inactiveDate])
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

INSERT INTO UsersDevelopment.dbo.userApplications ([userID], [applicationID], [userRoleID], [createDate])
SELECT * FROM Users.dbo.userApplications
