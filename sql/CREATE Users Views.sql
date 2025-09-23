-- USE [Users]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_users]') AND type in (N'V'))
DROP VIEW [vw_users]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_applications]') AND type in (N'V'))
DROP VIEW [vw_applications]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_userApplications]') AND type in (N'V'))
DROP VIEW [vw_userApplications]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_userRequests]') AND type in (N'V'))
DROP VIEW [vw_userRequests]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_users]
AS
SELECT userID, firstName, lastName, email, username, password, users.partnerID, users.partnerSiteID, shared, requestedBy, requestDate, notes, lastLogin, updatedBy, users.active, users.createDate, updateDate, inactiveDate, partnerName, partnerAbbreviation, -- partnerSiteName, partnerSiteAbbreviation, city, state, 
(SELECT STRING_AGG(applicationName, ', ')
FROM userApplications
LEFT OUTER JOIN applications ON userApplications.applicationID = applications.applicationID
WHERE userID = users.userID) AS applications
FROM users
LEFT OUTER JOIN [Partners].[dbo].[partners] ON users.partnerID = partners.partnerID
-- WHERE users.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_applications]
AS
SELECT applicationID, applicationName
FROM applications
WHERE active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_userApplications]
AS
SELECT userID, userApplications.applicationID, applicationName, userApplications.userRoleID, userRole, userApplications.createDate AS userApplicationsCreateDate
FROM userApplications
INNER JOIN vw_applications ON userApplications.applicationID = vw_applications.applicationID
INNER JOIN userRoles ON userApplications.userRoleID = userRoles.userRoleID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_userRequests]
AS
SELECT userRequestID, userRequests.requestTypeID, requestTypeName, firstName, lastName, email, userRequests.partnerSiteID, positionID, positionData.name AS positionName, programID, programData.name AS programName,
CASE
  WHEN programData.name = 'Accelerated Bachelor of Science in Nursing (ABSN)' THEN 'ABSN'
  WHEN programData.name = 'Traditional Nursing Program (TRAD)' THEN 'TRAD'
  ELSE ''
END AS programNameAbbreviation,
simulationDate, details, completed,
CASE
  WHEN completed = 1 THEN 'Completed'
  ELSE 'Submitted'
END AS requestStatus,
userRequests.createDate, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, partnerSiteAddressesActive
FROM userRequests
-- TODO: Fix these references to the ExtendedRealityScheduling database. -- 09/22/2025 MF
LEFT OUTER JOIN [ExtendedRealityScheduling].[dbo].[requestTypes] ON userRequests.requestTypeID = requestTypes.requestTypeID
INNER JOIN [ExtendedRealityScheduling].[dbo].[vw_partnerSitesAll] ON userRequests.partnerSiteID = vw_partnerSitesAll.partnerSiteID
INNER JOIN [ExtendedRealityScheduling].[dbo].[associatedData] AS programData ON userRequests.programID = programData.associatedDataID
INNER JOIN [ExtendedRealityScheduling].[dbo].[associatedData] AS positionData ON userRequests.positionID = positionData.associatedDataID
WHERE userRequests.active = 1
GO
