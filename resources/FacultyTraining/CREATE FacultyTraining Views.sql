-- USE [FacultyTraining]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_associatedData]') AND type in (N'V'))
DROP VIEW [vw_associatedData]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_seminars]') AND type in (N'V'))
DROP VIEW [vw_seminars]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_users]') AND type in (N'V'))
DROP VIEW [vw_users]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_associatedData]
AS
SELECT associatedDataCategories.associatedDataCategoryID, associatedDataCategories.name AS associatedDataCategoryName, associatedDataCategories.description AS associatedDataCategoryDescription, associatedDataCategories.active, associatedDataCategories.createDate, associatedDataID, associatedData.name, associatedData.description, sortID, associatedData.active AS associatedDataActive, associatedData.createDate AS associatedDataCreateDate
FROM associatedDataCategories
INNER JOIN associatedData ON associatedDataCategories.associatedDataCategoryID = associatedData.associatedDataCategoryID
WHERE associatedDataCategories.active = 1
AND associatedData.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_seminars]
AS
SELECT seminars.seminarID, seminarTitle, seminars.description, seminarTypeID, seminarTypes.name AS seminarTypeName, curriculumTrackID, curriculumTracks.name AS curriculumTrackName, contentSeriesID, contentSeries.name AS contentSeriesName, seminars.active, seminars.createDate, seminarDetailID, deliveryTypeID, deliveryTypes.name AS deliveryTypeName, creditHours, seminarDetails.active AS seminarDetailsActive, seminarDetails.createDate AS seminarDetailsCreateDate, comingSoon
FROM seminars
INNER JOIN seminarDetails ON seminars.seminarID = seminarDetails.seminarID
LEFT OUTER JOIN associatedData AS seminarTypes ON seminarTypes.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'seminarTypes') AND seminarTypeID = seminarTypes.associatedDataID
LEFT OUTER JOIN associatedData AS curriculumTracks ON curriculumTracks.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'curriculumTracks') AND curriculumTrackID = curriculumTracks.associatedDataID
LEFT OUTER JOIN associatedData AS contentSeries ON contentSeries.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'contentSeries') AND contentSeriesID = contentSeries.associatedDataID
LEFT OUTER JOIN associatedData AS deliveryTypes ON deliveryTypes.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'deliveryTypes') AND deliveryTypeID = deliveryTypes.associatedDataID
WHERE seminars.active = 1
AND seminarDetails.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_users]
AS
SELECT userID, username, firstName, lastName, email, password, users.userRoleID, userRole, requestedBy, requestDate, notes, lastLogin, users.active, /* users.createDate, */ updateDate
FROM users
INNER JOIN userRoles ON users.userRoleID = userRoles.userRoleID
WHERE userRoles.active = 1
GO
