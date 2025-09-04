-- USE [Users]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_users]') AND type in (N'V'))
DROP VIEW [vw_users]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_userApplications]') AND type in (N'V'))
DROP VIEW [vw_userApplications]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_users]
AS
SELECT userID, firstName, lastName, email, username, password, users.partnerID, users.partnerSiteID, users.userRoleID, userRole, shared, requestedBy, requestDate, notes, lastLogin, updatedBy, users.active, users.createDate, updateDate, inactiveDate, partnerName, partnerAbbreviation, -- partnerSiteName, partnerSiteAbbreviation, city, state, 
(SELECT STRING_AGG(applicationName, ', ')
FROM usersApplications
LEFT OUTER JOIN userApplications ON usersApplications.applicationID = userApplications.applicationID
WHERE userID = users.userID) AS applications
FROM users
INNER JOIN userRoles ON users.userRoleID = userRoles.userRoleID
LEFT OUTER JOIN [Partners].[dbo].[partners] ON users.partnerID = partners.partnerID
WHERE userRoles.active = 1
-- AND users.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_userApplications]
AS
SELECT userID, usersApplications.applicationID, usersApplications.createDate AS usersApplicationsCreateDate, applicationName
FROM usersApplications
INNER JOIN userApplications ON usersApplications.applicationID = userApplications.applicationID
WHERE userApplications.active = 1
GO
