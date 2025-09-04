-- USE [LearningObjects]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_errorLogsJSONRecent]') AND type in (N'V'))
DROP VIEW [vw_errorLogsJSONRecent]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_errorLogsJSONToday]') AND type in (N'V'))
DROP VIEW [vw_errorLogsJSONToday]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_requestErrorLogsRecent]') AND type in (N'V'))
DROP VIEW [vw_requestErrorLogsRecent]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_requestErrorLogs404Recent]') AND type in (N'V'))
DROP VIEW [vw_requestErrorLogs404Recent]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_computerLogs]') AND type in (N'V'))
DROP VIEW [vw_computerLogs]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_associatedData]') AND type in (N'V'))
DROP VIEW [vw_associatedData]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_users]') AND type in (N'V'))
DROP VIEW [vw_users]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_usersCurrent]') AND type in (N'V'))
DROP VIEW [vw_usersCurrent]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjects]') AND type in (N'V'))
DROP VIEW [vw_learningObjects]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsSearch]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsSearch]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_courseCategories]') AND type in (N'V'))
DROP VIEW [vw_courseCategories]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_competencies]') AND type in (N'V'))
DROP VIEW [vw_competencies]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_nursingEssentials]') AND type in (N'V'))
-- DROP VIEW [vw_nursingEssentials]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsCourseCategories]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsCourseCategories]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsCompetencies]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsCompetencies]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsEssentials]') AND type in (N'V'))
-- DROP VIEW [vw_learningObjectsEssentials]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsKeywords]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsKeywords]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsNotes]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsNotes]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsUploads]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsUploads]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsUploadsServerCompare]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsUploadsServerCompare]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_userLists]') AND type in (N'V'))
DROP VIEW [vw_userLists]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_lmsConnections]') AND type in (N'V'))
DROP VIEW [vw_lmsConnections]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsContentReviewsDue]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsContentReviewsDue]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_learningObjectsContentReviews]') AND type in (N'V'))
DROP VIEW [vw_learningObjectsContentReviews]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectTypes]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectTypes]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsage]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsUsage]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageLastUpdated]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsUsageLastUpdated]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCounts]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsUsageCounts]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCountsReact]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsUsageCountsReact]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCountsjQuery]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsUsageCountsjQuery]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCountsByYearRaw]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUsageCountsByYearRaw]
GO
  IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCountsByYearByPartnerRaw]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUsageCountsByYearByPartnerRaw]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCountsByYear]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUsageCountsByYear]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCountsByYearByPartner]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUsageCountsByYearByPartner]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageCountsByPartner]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUsageCountsByPartner]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsDeleted]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsDeleted]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsReact]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsReact]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsjQuery]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsjQuery]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageProblems]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUsageProblems]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUsageComplete]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUsageComplete]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageCourseLists]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectUsageCourseLists]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageCourses]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectUsageCourses]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageCourseListsCurrent]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectUsageCourseListsCurrent]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageCoursesAudit]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectUsageCoursesAudit]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageCourseListProblems]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectUsageCourseListProblems]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageCoursesProblems]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectUsageCoursesProblems]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsProblems]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsProblems]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsRankings]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsRankings]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsWithoutCourses]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsWithoutCourses]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsCountsByYear]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsCountsByYear]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsDashboard]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsDashboard]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsStatistics]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsStatistics]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsStatus]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_learningObjectsStatus]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsNeedUpdating]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsNeedUpdating]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsUnused]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsUnused]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsNoLongerUsed]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsNoLongerUsed]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectsLittleUsed]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectsLittleUsed]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_computerLogsUsage]') AND type in (N'V'))
DROP VIEW [statistics].[vw_computerLogsUsage]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageTotalsPerSemester]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectUsageTotalsPerSemester]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_learningObjectUsageTotalsPerSemesterPerCourse]') AND type in (N'V'))
DROP VIEW [statistics].[vw_learningObjectUsageTotalsPerSemesterPerCourse]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartners]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartners]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersDistinct]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersDistinct]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersCurrent]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersCurrent]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersCurrentDistinct]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersCurrentDistinct]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_errorLogsJSONRecent]
AS
SELECT TOP (200) * FROM errorLogsJSON
ORDER BY timestamp DESC
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_errorLogsJSONToday]
AS
SELECT TOP (1000) * FROM errorLogsJSON
WHERE CAST(timestamp AS Date) = CAST(GETDATE() AS Date)
ORDER BY timestamp DESC
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_requestErrorLogsRecent]
AS
SELECT TOP (1000) *,
CASE
	WHEN PATINDEX('%[0-9]%', href) > 0 THEN LEFT(SUBSTRING(href, PATINDEX('%[0-9]%', href), LEN(href)), PATINDEX('%[^0-9]%', SUBSTRING(href, PATINDEX('%[0-9]%', href), LEN(href) ) + 'X') - 1)
	ELSE NULL
END AS learningObjectID,
CASE 
	WHEN CHARINDEX('/', REVERSE(href)) > 0 THEN LEFT(RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1), 
  CASE 
      WHEN CHARINDEX('?', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) > 0 
      THEN CHARINDEX('?', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) - 1 
      WHEN CHARINDEX('#', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) > 0 
      THEN CHARINDEX('#', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) - 1 
      ELSE LEN(RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1))
  END)
  ELSE NULL
END AS fileName
FROM requestErrorLogs
WHERE href NOT LIKE '%/CMSPages/%'
AND href NOT LIKE '%/squirrelmail/%'
AND href NOT LIKE '%/horde/%'
AND href NOT LIKE '%/libs/%'
AND href NOT LIKE '%/typo3/%'
AND href NOT LIKE '%/user/password#main-content%'
AND href NOT LIKE '%#main-content%'
ORDER BY timestamp DESC
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_requestErrorLogs404Recent]
AS
SELECT TOP (1000) *,
CASE
	WHEN PATINDEX('%[0-9]%', href) > 0 THEN LEFT(SUBSTRING(href, PATINDEX('%[0-9]%', href), LEN(href)), PATINDEX('%[^0-9]%', SUBSTRING(href, PATINDEX('%[0-9]%', href), LEN(href) ) + 'X') - 1)
	ELSE NULL
END AS learningObjectID,
CASE 
	WHEN CHARINDEX('/', REVERSE(href)) > 0 THEN LEFT(RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1), 
  CASE 
      WHEN CHARINDEX('?', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) > 0 
      THEN CHARINDEX('?', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) - 1 
      WHEN CHARINDEX('#', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) > 0 
      THEN CHARINDEX('#', RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1)) - 1 
      ELSE LEN(RIGHT(href, CHARINDEX('/', REVERSE(href)) - 1))
  END)
  ELSE NULL
END AS fileName
FROM requestErrorLogs
WHERE requestSource = '404'
AND href NOT LIKE '%/CMSPages/%'
AND href NOT LIKE '%/squirrelmail/%'
AND href NOT LIKE '%/horde/%'
AND href NOT LIKE '%/libs/%'
AND href NOT LIKE '%/typo3/%'
AND href NOT LIKE '%/user/password#main-content%'
AND href NOT LIKE '%#main-content%'
-- AND href NOT LIKE '%analytics-frame.html%'
-- AND href NOT LIKE '%/assets/%'
-- AND href NOT LIKE '%connectionKey='
-- AND href LIKE '%.html%'
-- AND href LIKE 'https://lor.orbiseducation.com%'
ORDER BY timestamp DESC
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_computerLogs]
AS
SELECT learningObjectID, learningObjectTitle, href, applicationVersion, browserData, ipAddress, lastAccessed, city, state, stateCode, countryName, countryCode, continentName, continentCode, latitude, longitude, postal, timestamp, userIdentifier
FROM computerLogs
UNION ALL
SELECT learningObjectID, learningObjectTitle, href, applicationVersion, browserData, ipAddress, lastAccessed, city, state, stateCode, countryName, countryCode, continentName, continentCode, latitude, longitude, postal, timestamp, userIdentifier
FROM computerLogs2024
UNION ALL
SELECT learningObjectID, learningObjectTitle, href, applicationVersion, browserData, ipAddress, lastAccessed, city, state, stateCode, countryName, countryCode, continentName, continentCode, latitude, longitude, postal, timestamp, userIdentifier
FROM computerLogs2023
UNION ALL
SELECT learningObjectID, learningObjectTitle, href, applicationVersion, browserData, ipAddress, lastAccessed, city, state, stateCode, countryName, countryCode, continentName, continentCode, latitude, longitude, postal, timestamp, userIdentifier
FROM computerLogs2022
UNION ALL
SELECT learningObjectID, learningObjectTitle, href, applicationVersion, browserData, ipAddress, lastAccessed, city, state, stateCode, countryName, countryCode, continentName, continentCode, latitude, longitude, postal, timestamp, userIdentifier
FROM computerLogs2021
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
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_users]
AS
SELECT userID, username, firstName, lastName, email, password, users.partnerID, partnerName, users.userRoleID, userRole, shared, requestedBy, requestDate, notes, lastLogin, updatedBy, users.active, users.createDate, updateDate, inactiveDate
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
CREATE VIEW [vw_usersCurrent]
AS
SELECT username, firstName, lastName, email, userRole, lastLogin
FROM vw_users
WHERE shared = 0
AND active = 1
AND (lastLogin LIKE '%' + CAST(DATEPART(year, GETDATE()) AS VARCHAR) + '%'
OR lastLogin LIKE '%' + CAST(DATEPART(year, DATEADD(year, -1, GETDATE())) AS VARCHAR) + '%')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjects]
AS
SELECT learningObjects.learningObjectID, learningObjectTitle, /* uploadSource, */ developmentToolID, developmentTools.name AS developmentTool, landingPagesRequested, availabilityID, availabilityData.name AS availabilityName, learningObjects.learningObjectCategoryID, categoryName AS learningObjectCategoryName, team, /* author, */ createdForPartnerID, partnerName, learningObjects.description, outcomes, /* programTypes.programTypeID, programType, courseCategories.courseCategoryID, courseCategory, */

-- programTypes = STRING_AGG(programTypes.programTypeID, ', '),

-- (SELECT STRING_AGG(courseCategoryID, ', ') AS courseCategories FROM learningObjectCourseCategories WHERE learningObjectCourseCategories.learningObjectID = learningObjects.learningObjectID GROUP BY courseCategoryID) AS courseCategories,
-- courseCategories = STRING_AGG(learningObjectCourseCategories.courseCategoryID, ', '),

bloomsTaxonomyID, bloomsTaxonomy.name AS bloomsTaxonomy, keywords = STRING_AGG(keyword, ', '), /* administratorOnly, */ forTesting,
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
  ELSE CAST(0 AS BIT)
END AS inExecutiveDemonstration,
videoID, jsonFileName, templateVersion, /* originalJSONData, developmentJSONData, */ productionJSONData, learningObjects.active, 
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM learningObjectsUploads) THEN CAST(1 AS BIT)
  ELSE CAST(0 AS BIT)
END AS hasUploads,
learningObjects.updatedBy, dbo.udf_getUsername(learningObjects.updatedBy) AS updatedByUsername, /* usernameLearningObjectUpdate, learningObjectUpdateDate, */ learningObjects.createDate, updateDate, uploadSource, learningObjectsUploads.updatedBy AS uploadedBy, dbo.udf_getUsername(learningObjectsUploads.updatedBy) AS uploadedByUsername, uploadDate, dbo.udf_getLastLearningObjectContentReview(learningObjects.learningObjectID) AS lastLearningObjectContentReview
FROM learningObjects
LEFT OUTER JOIN associatedData AS developmentTools ON developmentTools.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND developmentToolID = developmentTools.associatedDataID
-- INNER JOIN learningObjectCourseCategories ON learningObjectCourseCategories.learningObjectID = learningObjects.learningObjectID
-- INNER JOIN courseCategories ON courseCategories.courseCategoryID = learningObjectCourseCategories.courseCategoryID
-- INNER JOIN programTypes ON programTypes.programTypeID = courseCategories.programTypeID
LEFT OUTER JOIN associatedData AS bloomsTaxonomy ON bloomsTaxonomy.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'bloomsTaxonomy') AND bloomsTaxonomyID = bloomsTaxonomy.associatedDataID
LEFT OUTER JOIN [Partners].[dbo].[partners] ON learningObjects.createdForPartnerID = partners.partnerID
LEFT OUTER JOIN learningObjectCategories ON learningObjects.learningObjectCategoryID = learningObjectCategories.learningObjectCategoryID
-- LEFT OUTER JOIN learningObjectEssentials ON learningObjects.learningObjectID = learningObjectEssentials.learningObjectID
-- LEFT OUTER JOIN associatedData AS essentials ON essentials.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'essentials') AND learningObjectEssentials.essentialID = essentials.associatedDataID
LEFT OUTER JOIN associatedData AS availabilityData ON availabilityData.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'availability') AND availabilityID = availabilityData.associatedDataID
LEFT OUTER JOIN learningObjectKeywords ON learningObjects.learningObjectID = learningObjectKeywords.learningObjectID
-- LEFT OUTER JOIN (
-- SELECT learningObjectID, landingPagesRequested = STRING_AGG(landingPageRequested, ', ') FROM (
-- SELECT DISTINCT learningObjectID, RIGHT(request_uri, CHARINDEX('/', REVERSE(request_uri)) - 1) AS landingPageRequested FROM learningObjectUsageScrubbed WHERE request_uri IS NOT NULL) AS landingPages GROUP BY learningObjectID) AS landingPages ON learningObjects.learningObjectID = landingPages.learningObjectID
LEFT OUTER JOIN learningObjectsUploads ON learningObjects.learningObjectID = learningObjectsUploads.learningObjectID AND currentVersion = 1
GROUP BY learningObjects.learningObjectID, learningObjectTitle, /* uploadSource, */ developmentToolID, developmentTools.name, landingPagesRequested, availabilityID, availabilityData.name, learningObjects.learningObjectCategoryID, categoryName, team, /* author, */ createdForPartnerID, partnerName, learningObjects.description, outcomes, /* programTypes.programTypeID, programType, courseCategories.courseCategoryID, courseCategory, */ bloomsTaxonomyID, bloomsTaxonomy.name, /* administratorOnly, */ forTesting, videoID, jsonFileName, templateVersion, originalJSONData, developmentJSONData, productionJSONData, learningObjects.active, learningObjects.updatedBy, learningObjects.createDate, updateDate, uploadSource, learningObjectsUploads.updatedBy, learningObjectsUploads.updatedBy, uploadDate
UNION ALL
SELECT NULL AS learningObjectID, learningObjectTitle, /* NULL AS uploadSource, */ developmentToolID, developmentTools.name AS developmentTool, NULL AS landingPagesRequested, NULL AS availabilityID, NULL AS availabilityName, learningObjectsDevelopment.learningObjectCategoryID, categoryName AS learningObjectCategoryName, team, NULL AS createdForPartnerID, NULL AS partnerName, NULL AS description, NULL AS outcomes, NULL AS bloomsTaxonomyID, NULL AS bloomsTaxonomy, NULL AS keywords, /* NULL AS administratorOnly, */ NULL AS forTesting, NULL AS inExecutiveDemonstration, NULL AS videoID, jsonFileName, templateVersion, productionJSONData, learningObjectsDevelopment.active, NULL AS hasUploads, NULL AS updatedBy, NULL AS updatedByUsername, /* NULL AS usernameLearningObjectUpdate, NULL AS learningObjectUpdateDate, */ learningObjectsDevelopment.createDate, NULL AS updateDate, NULL AS uploadSource, NULL AS uploadedBy, NULL AS uploadedByUsername, NULL AS uploadDate, NULL AS lastLearningObjectContentReview
FROM learningObjectsDevelopment
LEFT OUTER JOIN associatedData AS developmentTools ON developmentTools.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND developmentToolID = developmentTools.associatedDataID
LEFT OUTER JOIN learningObjectCategories ON learningObjectsDevelopment.learningObjectCategoryID = learningObjectCategories.learningObjectCategoryID
GO


-- SELECT learningObjects.learningObjectID, programTypes = STRING_AGG(programTypes.programTypeID, ', '), courseCategories = STRING_AGG(learningObjectCourseCategories.courseCategoryID, ', ')
-- FROM learningObjects
-- INNER JOIN learningObjectCourseCategories ON learningObjectCourseCategories.learningObjectID = learningObjects.learningObjectID
-- INNER JOIN courseCategories ON courseCategories.courseCategoryID = learningObjectCourseCategories.courseCategoryID
-- INNER JOIN programTypes ON programTypes.programTypeID = courseCategories.programTypeID
-- GROUP BY learningObjects.learningObjectID

-- SELECT learningObjects.learningObjectID, courseCategories = STRING_AGG(learningObjectCourseCategories.courseCategoryID, ', ')
-- FROM learningObjects
-- INNER JOIN learningObjectCourseCategories ON learningObjectCourseCategories.learningObjectID = learningObjects.learningObjectID
-- GROUP BY learningObjects.learningObjectID

-- SELECT learningObjects.learningObjectID, programTypes = STRING_AGG(programTypes.programTypeID, ', ')
-- FROM learningObjects
-- INNER JOIN learningObjectCourseCategories ON learningObjectCourseCategories.learningObjectID = learningObjects.learningObjectID
-- INNER JOIN courseCategories ON courseCategories.courseCategoryID = learningObjectCourseCategories.courseCategoryID
-- INNER JOIN programTypes ON programTypes.programTypeID = courseCategories.programTypeID
-- GROUP BY learningObjects.learningObjectID


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsSearch]
AS
SELECT learningObjects.learningObjectID, learningObjectTitle, /* uploadSource, */ developmentToolID, developmentTools.name AS developmentTool, landingPagesRequested, availabilityID, availabilityData.name AS availabilityName, learningObjects.learningObjectCategoryID, categoryName AS learningObjectCategoryName, team, /* author, */ createdForPartnerID, partnerName, learningObjects.description, outcomes, /* programTypes.programTypeID, programType, courseCategories.courseCategoryID, courseCategory, */ bloomsTaxonomyID, bloomsTaxonomy.name AS bloomsTaxonomy, keywords = STRING_AGG(keyword, ', '), /* administratorOnly, */ forTesting,
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
  ELSE CAST(0 AS BIT)
END AS inExecutiveDemonstration,
videoID, jsonFileName, templateVersion, learningObjects.active, 
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM learningObjectsUploads) THEN CAST(1 AS BIT)
  ELSE CAST(0 AS BIT)
END AS hasUploads,
learningObjects.updatedBy, dbo.udf_getUsername(learningObjects.updatedBy) AS updatedByUsername, /* usernameLearningObjectUpdate, learningObjectUpdateDate, */ learningObjects.createDate, updateDate
FROM learningObjects
LEFT OUTER JOIN associatedData AS developmentTools ON developmentTools.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND developmentToolID = developmentTools.associatedDataID
LEFT OUTER JOIN associatedData AS bloomsTaxonomy ON bloomsTaxonomy.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'bloomsTaxonomy') AND bloomsTaxonomyID = bloomsTaxonomy.associatedDataID
LEFT OUTER JOIN [Partners].[dbo].[partners] ON learningObjects.createdForPartnerID = partners.partnerID
LEFT OUTER JOIN learningObjectCategories ON learningObjects.learningObjectCategoryID = learningObjectCategories.learningObjectCategoryID
-- LEFT OUTER JOIN learningObjectEssentials ON learningObjects.learningObjectID = learningObjectEssentials.learningObjectID
-- LEFT OUTER JOIN associatedData AS essentials ON essentials.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'essentials') AND learningObjectEssentials.essentialID = essentials.associatedDataID
LEFT OUTER JOIN associatedData AS availabilityData ON availabilityData.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'availability') AND availabilityID = availabilityData.associatedDataID
LEFT OUTER JOIN learningObjectKeywords ON learningObjects.learningObjectID = learningObjectKeywords.learningObjectID
-- LEFT OUTER JOIN (
-- SELECT learningObjectID, landingPagesRequested = STRING_AGG(landingPageRequested, ', ') FROM (
-- SELECT DISTINCT learningObjectID, RIGHT(request_uri, CHARINDEX('/', REVERSE(request_uri)) - 1) AS landingPageRequested FROM learningObjectUsageScrubbed WHERE request_uri IS NOT NULL) AS landingPages GROUP BY learningObjectID) AS landingPages ON learningObjects.learningObjectID = landingPages.learningObjectID
GROUP BY learningObjects.learningObjectID, learningObjectTitle, /* uploadSource, */ developmentToolID, developmentTools.name, landingPagesRequested, availabilityID, availabilityData.name, learningObjects.learningObjectCategoryID, categoryName, team, /* author, */ createdForPartnerID, partnerName, learningObjects.description, outcomes, /* programTypes.programTypeID, programType, courseCategories.courseCategoryID, courseCategory, */ bloomsTaxonomyID, bloomsTaxonomy.name, /* administratorOnly, */ forTesting, videoID, jsonFileName, templateVersion, originalJSONData, developmentJSONData, productionJSONData, learningObjects.active, learningObjects.updatedBy, learningObjects.createDate, updateDate
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_courseCategories]
AS
SELECT courseCategoryID, courseCategory, courseCategories.updatedBy AS courseCategoriesUpdatedBy, dbo.udf_getUsername(courseCategories.updatedBy) AS courseCategoriesUpdatedByUsername, courseCategories.active AS courseCategoriesActive, courseCategories.createDate AS courseCategoriesCreateDate, programTypes.programTypeID, programType, programTypes.updatedBy AS programTypesUpdatedBy, dbo.udf_getUsername(programTypes.updatedBy) AS programTypesUpdatedByUsername, programTypes.active AS programTypesActive, programTypes.createDate AS programTypesCreateDate
FROM courseCategories
INNER JOIN programTypes ON courseCategories.programTypeID = programTypes.programTypeID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_competencies]
AS
SELECT
CASE
  WHEN programName = 'Nursing Domains' THEN competencyDomains.domainID + '.' + competencies.competencyID + subcompetencyID
  WHEN programName = 'ACOTE' THEN competencyDomains.domainID + '.' + competencies.competencyID + '.' + subcompetencyID
  WHEN programName = 'CAPTE' THEN REPLACE(competencyDomains.domainID, 'Standard ', '') + competencies.competencyID + COALESCE(subcompetencyID, '')
END AS nursingCompetency,
competencyDomains.domainID, domainName, programName, competencies.competencyID, competencyName, subcompetencyID, level, subcompetencyName
FROM competencyDomains
INNER JOIN competencies ON competencyDomains.domainID = competencies.domainID
LEFT OUTER JOIN subcompetencies ON competencies.domainID = subcompetencies.domainID AND competencies.competencyID = subcompetencies.competencyID
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [vw_nursingEssentials]
-- AS
-- SELECT degree + ' Essential ' + essentialNumber AS nursingEssential, degree + ' Essential ' + essentialNumber + ' ' + essentialName AS nursingEssentialName, essentialID, essentialNumber, degree, essentialName
-- FROM nursingEssentials
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsCourseCategories]
AS
SELECT learningObjectID, learningObjectCourseCategories.courseCategoryID, learningObjectCourseCategories.updatedBy AS learningObjectCourseCategoriesUpdatedBy, dbo.udf_getUsername(learningObjectCourseCategories.updatedBy) AS updatedByUsername, learningObjectCourseCategories.createDate AS learningObjectCourseCategoriesCreateDate, courseCategory, courseCategories.updatedBy AS courseCategoriesUpdatedBy, dbo.udf_getUsername(courseCategories.updatedBy) AS courseCategoriesUpdatedByUsername, courseCategories.active AS courseCategoriesActive, courseCategories.createDate AS courseCategoriesCreateDate, programTypes.programTypeID, programType, programTypes.updatedBy AS programTypesUpdatedBy, dbo.udf_getUsername(programTypes.updatedBy) AS programTypesUpdatedByUsername, programTypes.active AS programTypesActive, programTypes.createDate AS programTypesCreateDate
FROM learningObjectCourseCategories
INNER JOIN courseCategories ON learningObjectCourseCategories.courseCategoryID = courseCategories.courseCategoryID
INNER JOIN programTypes ON courseCategories.programTypeID = programTypes.programTypeID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsCompetencies]
AS
SELECT learningObjectID, nursingCompetency,
-- learningObjectCompetencies.domainID, domainName, programName, learningObjectCompetencies.competencyID, competencyName, learningObjectCompetencies.subcompetencyID, level, subcompetencyName,
-- CAST(learningObjectCompetencies.domainID AS VARCHAR) + '.' + CAST(learningObjectCompetencies.competencyID AS VARCHAR) + COALESCE(learningObjectCompetencies.subcompetencyID, '') AS nursingCompetency,
-- CASE
--   WHEN subcompetencyName IS NOT NULL THEN subcompetencyName
--   ELSE competencyName
-- END AS competencyName,
CASE
  WHEN programName = 'Nursing Domains' AND level = 'Entry' THEN 'BSN Domain: '
  WHEN programName = 'Nursing Domains' AND level = 'Advanced' THEN 'MSN Domain: '
  WHEN programName <> 'Nursing Domains' THEN programName + ' ' + nursingCompetency + ': '
END + learningObjectCompetencies.domainID + ' ' + domainName + ' ' + learningObjectCompetencies.domainID + '.' + learningObjectCompetencies.competencyID + ' ' + competencyName + ' ' + nursingCompetency + ' ' + COALESCE(subcompetencyName, '') AS competencyName,
updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, learningObjectCompetencies.domainID, programName, learningObjectCompetencies.competencyID, learningObjectCompetencies.subcompetencyID
-- , domainName, competencyName, level, subcompetencyName
FROM learningObjectCompetencies
INNER JOIN vw_competencies ON learningObjectCompetencies.domainID = vw_competencies.domainID AND learningObjectCompetencies.competencyID = vw_competencies.competencyID AND (learningObjectCompetencies.subcompetencyID = vw_competencies.subcompetencyID OR vw_competencies.subcompetencyID IS NULL)
-- UNION ALL
-- SELECT learningObjectID, degree + ' Essential ' + essentialNumber AS nursingEssential, nursingEssentialName, updatedBy, 'Nursing Essential' AS competencyType
-- FROM learningObjectEssentials
-- INNER JOIN vw_nursingEssentials ON learningObjectEssentials.essentialID = vw_nursingEssentials.essentialID
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [vw_learningObjectsCompetencies]
-- AS
-- SELECT learningObjectID, updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, learningObjectCompetencies.createDate, nursingCompetency, vw_competencies.domainID, domainName, programName, vw_competencies.competencyID, competencyName, vw_competencies.subcompetencyID, vw_competencies.level, vw_competencies.subcompetencyName
-- FROM learningObjectCompetencies
-- INNER JOIN vw_competencies ON learningObjectCompetencies.domainID = vw_competencies.domainID AND learningObjectCompetencies.competencyID = vw_competencies.competencyID AND learningObjectCompetencies.subcompetencyID = vw_competencies.subcompetencyID
-- LEFT OUTER JOIN subcompetencies ON vw_competencies.domainID = subcompetencies.domainID AND vw_competencies.competencyID = subcompetencies.competencyID
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [vw_learningObjectsCompetencies]
-- AS
-- SELECT learningObjectID, nursingCompetency, domainID, domainName, competencyID, competencyName, subcompetencyID, level, subcompetencyName
-- FROM vw_learningObjects
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [vw_learningObjectsEssentials]
-- AS
-- SELECT learningObjectID, learningObjectEssentials.essentialID, updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, learningObjectEssentials.createDate
-- FROM learningObjectEssentials
-- INNER JOIN nursingEssentials ON learningObjectEssentials.essentialID = nursingEssentials.essentialID
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsKeywords]
AS
SELECT learningObjectID, learningObjectKeywords.keywordID, keywords.keyword, learningObjectKeywords.updatedBy AS learningObjectKeywordsUpdatedBy, dbo.udf_getUsername(learningObjectKeywords.updatedBy) AS updatedByUsername, learningObjectKeywords.createDate, keywords.updatedBy AS keywordsUpdatedBy, dbo.udf_getUsername(keywords.updatedBy) AS keywordsUpdatedByUsername, keywords.createDate AS keywordsCreateDate
FROM learningObjectKeywords
INNER JOIN keywords ON learningObjectKeywords.keywordID = keywords.keywordID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsNotes]
AS
SELECT learningObjectID, notes, updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, createDate
FROM learningObjectNotes
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsUploads]
AS
SELECT learningObjectID, uploadSource, currentVersion, updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, uploadDate, active, createDate
FROM learningObjectsUploads
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsUploadsServerCompare]
AS
SELECT learningObjectID, uploadSource, uploadDate, createDate, 1 AS FileOnServer, 0 AS FileInDatabase
FROM learningObjectServerFiles
WHERE uploadSource NOT IN (SELECT uploadSource FROM learningObjectsUploads)
AND uploadDate NOT LIKE '%:%'
UNION ALL
SELECT learningObjectID, uploadSource, NULL AS uploadDate, createDate, 1 AS FileOnServer, 0 AS FileInDatabase
FROM learningObjectServerFiles
WHERE uploadSource NOT IN (SELECT uploadSource FROM learningObjectsUploads)
AND uploadDate LIKE '%:%'
UNION ALL
SELECT learningObjectID, uploadSource, uploadDate, createDate, 0 AS FileOnServer, 1 AS FileInDatabase
FROM learningObjectsUploads
WHERE uploadSource NOT IN (SELECT uploadSource FROM learningObjectServerFiles)
AND active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_userLists]
AS
SELECT userLists.userListID, userID, listName, userLists.active AS userListsActive, userLists.createDate AS userListsCreateDate, userListItemID, userListItems.learningObjectID, notes, userListItems.active AS userListItemsActive, userListItems.createDate AS userListItemsCreateDate
FROM userLists
LEFT OUTER JOIN userListItems ON userLists.userListID = userListItems.userListID
WHERE userLists.active = 1
AND (userListItems.active = 1
OR userListItems.active IS NULL
OR NOT EXISTS (SELECT userListID FROM userLists WHERE userListItems.userListID = userLists.userListID AND userListItems.active = 1)
)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_lmsConnections]
AS
SELECT connectionID, lmsConnections.partnerID, partnerName, connectionName, connectionKey, secret, lmsName, /* dbo.udf_getCurrentLMSVersion(partnerName, lmsName) */ lmsVersion AS lmsVersion, ltiConnection, requestedBy, requestDate, notes, updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, lmsConnections.active, lmsConnections.createDate, updateDate, inactiveDate
-- ,
-- -- (SELECT COUNT(*) FROM learningObjectUsageScrubbed WHERE connectionKey = oauth_consumer_key) AS usageCountTotal,
-- -- (SELECT COUNT(*) FROM learningObjectUsageScrubbed WHERE connectionKey = oauth_consumer_key AND (context_label <> 'non-lti' AND context_label <> 'nonlti') AND partnerName <> 'Orbis Education') AS usageCountLTI,
-- (SELECT COUNT(*) FROM learningObjectUsageScrubbed WHERE connectionKey = oauth_consumer_key AND tool_consumer_info_product_family_code <> 'other' AND tool_consumer_info_product_family_code <> 'non-lti' AND partnerName <> 'Orbis Education') AS usageCountLTI,
-- -- (SELECT COUNT(*) FROM learningObjectUsageScrubbed WHERE connectionKey = oauth_consumer_key AND (context_label = 'non-lti' OR context_label = 'nonlti') AND partnerName <> 'Orbis Education') AS usageCountNonLTI
-- (SELECT COUNT(*) FROM learningObjectUsageScrubbed WHERE connectionKey = oauth_consumer_key AND (tool_consumer_info_product_family_code = 'other' OR tool_consumer_info_product_family_code = 'non-lti') AND partnerName <> 'Orbis Education') AS usageCountNonLTI
FROM lmsConnections
LEFT OUTER JOIN [Partners].[dbo].[partners] ON lmsConnections.partnerID = partners.partnerID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsContentReviewsDue]
AS
SELECT learningObjectID, learningObjectTitle, 'https://lor.orbiseducation.com/learningObjects/' + CAST(learningObjectID AS VARCHAR) + '/index.html?demonstrationMode=true' AS urlLORPreview, lastLearningObjectContentReview, forTesting, active, hasUploads
FROM vw_learningObjects
WHERE learningObjectID IS NOT NULL
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_learningObjectsContentReviews]
AS
SELECT learningObjectContentReviews.learningObjectID, passed, notes, updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, createDate, lastLearningObjectContentReview, forTesting, active
FROM learningObjectContentReviews
INNER JOIN [statistics].vw_learningObjectsContentReviewsDue ON learningObjectContentReviews.learningObjectID = vw_learningObjectsContentReviewsDue.learningObjectID
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectTypes]
-- AS
-- SELECT DISTINCT developmentToolID, developmentTools.name AS developmentTool, COUNT(*) AS learningObjectCount
-- FROM learningObjects
-- LEFT OUTER JOIN associatedData AS developmentTools ON developmentTools.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND developmentToolID = developmentTools.associatedDataID
-- GROUP BY developmentToolID, developmentTools.name
-- GO

-- * No longer needed; use learningObjectUsageScrubbed. -- 06/22/2022 MF
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsUsage]
-- AS
-- SELECT *
-- FROM learningObjectUsage
-- WHERE ISNUMERIC(learningObjectID) = 1
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsUsage]
-- AS
-- SELECT learningObjectID, COUNT(*) AS learningObjectCount
-- FROM learningObjectUsage
-- WHERE ISNUMERIC(learningObjectID) = 1
-- GROUP BY learningObjectID
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsUsageLastUpdated]
-- AS
-- -- * This query is taking too long to execute when using vw_learningObjectsUsage. -- 05/14/2022 MF
-- SELECT TOP (1) *
-- -- FROM learningObjectUsage
-- FROM learningObjectUsageIMPORT
-- WHERE ISNUMERIC(learningObjectID) = 1
-- ORDER BY timestamp DESC
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsUsageCounts]
-- AS
-- SELECT learningObjectCount, learningObjectID
-- FROM learningObjects
-- LEFT OUTER JOIN vw_learningObjectsUsage ON learningObjects.learningObjectID = vw_learningObjectsUsage.learningObjectID
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsUsageCountsReact]
-- AS
-- SELECT learningObjectCount, learningObjectID, title, url, team, type, developmentToolID
-- FROM vw_learningObjectsUsageCounts
-- LEFT OUTER JOIN learningObjects ON vw_learningObjectsUsageCounts.learningObjectID = learningObjects.learningObjectID
-- WHERE developmentToolID = 12
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsUsageCountsjQuery]
-- AS
-- SELECT learningObjectCount, learningObjectID, title, url, team, type, developmentToolID
-- FROM vw_learningObjectsUsageCounts
-- LEFT OUTER JOIN learningObjects ON vw_learningObjectsUsageCounts.learningObjectID = learningObjects.learningObjectID
-- WHERE developmentToolID = 5
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUsageCountsByYearRaw]
AS
SELECT DISTINCT learningObjectUsageScrubbed.learningObjectID,
-- learningObjectUsageScrubbed.resource_link_title, -- * The title is not consistent and this causes multiple records for the same learning object. -- 06/19/2022 MF
usageCountTotal.learningObjectLORCountTotal, usageCount2025.learningObjectLORCount2025, usageCount2024.learningObjectLORCount2024, usageCount2023.learningObjectLORCount2023, usageCount2022.learningObjectLORCount2022, usageCount2021.learningObjectLORCount2021, usageCount2020.learningObjectLORCount2020, usageCount2019.learningObjectLORCount2019,
(SELECT COUNT(*)
FROM learningObjectUsageScrubbed
-- * Removing the test data from the results. -- 07/14/2023 MF
WHERE partnerName <> 'Orbis Education'
) AS usageCountLORTotal,
(SELECT COUNT(*) AS learningObjectLORCount2025
FROM learningObjectUsageScrubbed
WHERE LEFT(timestamp, 4) = '2025'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education') AS usageCountLOR2025,
(SELECT COUNT(*) AS learningObjectLORCount2024
FROM learningObjectUsageScrubbed
WHERE LEFT(timestamp, 4) = '2024'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education') AS usageCountLOR2024,
(SELECT COUNT(*) AS learningObjectLORCount2023
FROM learningObjectUsageScrubbed
WHERE LEFT(timestamp, 4) = '2023'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education') AS usageCountLOR2023,
(SELECT COUNT(*) AS learningObjectLORCount2022
FROM learningObjectUsageScrubbed
WHERE LEFT(timestamp, 4) = '2022'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education') AS usageCountLOR2022,
(SELECT COUNT(*) AS learningObjectLORCount2021
FROM learningObjectUsageScrubbed
WHERE LEFT(timestamp, 4) = '2021'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education') AS usageCountLOR2021,
(SELECT COUNT(*) AS learningObjectLORCount2020
FROM learningObjectUsageScrubbed
WHERE LEFT(timestamp, 4) = '2020'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education') AS usageCountLOR2020,
(SELECT COUNT(*) AS learningObjectLORCount2019
FROM learningObjectUsageScrubbed
WHERE LEFT(timestamp, 4) = '2019'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education') AS usageCountLOR2019
FROM learningObjectUsageScrubbed
LEFT OUTER JOIN (
SELECT usageTotal.learningObjectID, COUNT(*) AS learningObjectLORCountTotal
FROM learningObjectUsageScrubbed AS usageTotal
-- * Removing the test data from the results. -- 07/14/2023 MF
WHERE partnerName <> 'Orbis Education'
GROUP BY usageTotal.learningObjectID) AS usageCountTotal ON usageCountTotal.learningObjectID = learningObjectUsageScrubbed.learningObjectID
LEFT OUTER JOIN (
SELECT usage2025.learningObjectID, COUNT(*) AS learningObjectLORCount2025
FROM learningObjectUsageScrubbed AS usage2025
WHERE LEFT(usage2025.timestamp, 4) = '2025'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY usage2025.learningObjectID) AS usageCount2025 ON usageCount2025.learningObjectID = learningObjectUsageScrubbed.learningObjectID
LEFT OUTER JOIN (
SELECT usage2024.learningObjectID, COUNT(*) AS learningObjectLORCount2024
FROM learningObjectUsageScrubbed AS usage2024
WHERE LEFT(usage2024.timestamp, 4) = '2024'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY usage2024.learningObjectID) AS usageCount2024 ON usageCount2024.learningObjectID = learningObjectUsageScrubbed.learningObjectID
LEFT OUTER JOIN (
SELECT usage2023.learningObjectID, COUNT(*) AS learningObjectLORCount2023
FROM learningObjectUsageScrubbed AS usage2023
WHERE LEFT(usage2023.timestamp, 4) = '2023'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY usage2023.learningObjectID) AS usageCount2023 ON usageCount2023.learningObjectID = learningObjectUsageScrubbed.learningObjectID
LEFT OUTER JOIN (
SELECT usage2022.learningObjectID, COUNT(*) AS learningObjectLORCount2022
FROM learningObjectUsageScrubbed AS usage2022
WHERE LEFT(usage2022.timestamp, 4) = '2022'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY usage2022.learningObjectID) AS usageCount2022 ON usageCount2022.learningObjectID = learningObjectUsageScrubbed.learningObjectID
LEFT OUTER JOIN (
SELECT usage2021.learningObjectID, COUNT(*) AS learningObjectLORCount2021
FROM learningObjectUsageScrubbed AS usage2021
WHERE LEFT(usage2021.timestamp, 4) = '2021'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY usage2021.learningObjectID) AS usageCount2021 ON usageCount2021.learningObjectID = learningObjectUsageScrubbed.learningObjectID
LEFT OUTER JOIN (
SELECT usage2020.learningObjectID, COUNT(*) AS learningObjectLORCount2020
FROM learningObjectUsageScrubbed AS usage2020
WHERE LEFT(usage2020.timestamp, 4) = '2020'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY usage2020.learningObjectID) AS usageCount2020 ON usageCount2020.learningObjectID = learningObjectUsageScrubbed.learningObjectID
LEFT OUTER JOIN (
SELECT usage2019.learningObjectID, COUNT(*) AS learningObjectLORCount2019
FROM learningObjectUsageScrubbed AS usage2019
WHERE LEFT(usage2019.timestamp, 4) = '2019'
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY usage2019.learningObjectID) AS usageCount2019 ON usageCount2019.learningObjectID = learningObjectUsageScrubbed.learningObjectID
-- * Removing the test data from the results. -- 07/14/2023 MF
WHERE partnerName <> 'Orbis Education'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUsageCountsByYearByPartnerRaw]
AS
SELECT learningObjectID, partnerName, LEFT(timestamp, 4) AS year, COUNT(*) AS usageCount
FROM learningObjectUsageScrubbed
WHERE tool_consumer_instance_name <> 'NULL'
-- * These partners have different values for tool_consumer_instance_name sometimes. -- 03/01/2023 MF
-- AND partnerName IN ('Bellarmine University', 'Felician University', 'Madonna University', 'Marian University', 'Misericordia University', 'Notre Dame of Maryland University', 'Orbis Education', 'Saint Louis University', 'University of the Incarnate Word', 'Utica University')
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GROUP BY learningObjectID, partnerName, LEFT(timestamp, 4)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUsageCountsByYear]
AS
SELECT DISTINCT learningObjectID, usageCountLORTotal, learningObjectLORCountTotal, learningObjectLORMinimumCountTotal, learningObjectLORMaximumCountTotal, learningObjectLORAverageCountTotal, learningObjectLORCountRankingTotal, learningObjectLORCountDenseRankingTotal, learningObjectCountRankingTotalOutOfTotal, learningObjectCountDenseRankingTotalOutOfTotal, usageCountLOR2025, learningObjectLORCount2025, minimumCountTotal2025, maximumCountTotal2025, averageCountTotal2025, learningObjectCountRankingTotal2025, learningObjectCountDenseRankingTotal2025, learningObjectCountRankingTotalOutOf2025, learningObjectCountDenseRankingTotalOutOf2025, usageCountLOR2024, learningObjectLORCount2024, minimumCountTotal2024, maximumCountTotal2024, averageCountTotal2024, learningObjectCountRankingTotal2024, learningObjectCountDenseRankingTotal2024, learningObjectCountRankingTotalOutOf2024, learningObjectCountDenseRankingTotalOutOf2024, usageCountLOR2023, learningObjectLORCount2023, minimumCountTotal2023, maximumCountTotal2023, averageCountTotal2023, learningObjectCountRankingTotal2023, learningObjectCountDenseRankingTotal2023, learningObjectCountRankingTotalOutOf2023, learningObjectCountDenseRankingTotalOutOf2023, usageCountLOR2022, learningObjectLORCount2022, minimumCountTotal2022, maximumCountTotal2022, averageCountTotal2022, learningObjectCountRankingTotal2022, learningObjectCountDenseRankingTotal2022, learningObjectCountRankingTotalOutOf2022, learningObjectCountDenseRankingTotalOutOf2022, usageCountLOR2021, learningObjectLORCount2021, minimumCountTotal2021, maximumCountTotal2021, averageCountTotal2021, learningObjectCountRankingTotal2021, learningObjectCountDenseRankingTotal2021, learningObjectCountRankingTotalOutOf2021, learningObjectCountDenseRankingTotalOutOf2021, usageCountLOR2020, learningObjectLORCount2020, minimumCountTotal2020, maximumCountTotal2020, averageCountTotal2020, learningObjectCountRankingTotal2020, learningObjectCountDenseRankingTotal2020, learningObjectCountRankingTotalOutOf2020, learningObjectCountDenseRankingTotalOutOf2020, usageCountLOR2019, learningObjectLORCount2019, minimumCountTotal2019, maximumCountTotal2019, averageCountTotal2019, learningObjectCountRankingTotal2019, learningObjectCountDenseRankingTotal2019, learningObjectCountRankingTotalOutOf2019, learningObjectCountDenseRankingTotalOutOf2019
FROM learningObjectUsageTotalsPerYear
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectIDTotal, usageCount AS usageCountLORTotal, learningObjectCount AS learningObjectLORCountTotal, minimumCountTotal AS learningObjectLORMinimumCountTotal, maximumCountTotal AS learningObjectLORMaximumCountTotal, averageCountTotal AS learningObjectLORAverageCountTotal, learningObjectCountRankingTotal AS learningObjectLORCountRankingTotal, learningObjectCountDenseRankingTotal AS learningObjectLORCountDenseRankingTotal, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOfTotal, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOfTotal FROM learningObjectUsageTotals) AS learningObjectUsageTotalsTotal ON learningObjectUsageTotalsTotal.learningObjectIDTotal = learningObjectUsageTotalsPerYear.learningObjectID
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectID2025, usageCount AS usageCountLOR2025, learningObjectCount AS learningObjectLORCount2025, minimumCountTotal AS minimumCountTotal2025, maximumCountTotal AS maximumCountTotal2025, averageCountTotal AS averageCountTotal2025, learningObjectCountRankingTotal AS learningObjectCountRankingTotal2025, learningObjectCountDenseRankingTotal AS learningObjectCountDenseRankingTotal2025, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOf2025, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOf2025 FROM learningObjectUsageTotalsPerYear WHERE year = '2025') AS learningObjectUsageTotals2025 ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjectUsageTotals2025.learningObjectID2025
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectID2024, usageCount AS usageCountLOR2024, learningObjectCount AS learningObjectLORCount2024, minimumCountTotal AS minimumCountTotal2024, maximumCountTotal AS maximumCountTotal2024, averageCountTotal AS averageCountTotal2024, learningObjectCountRankingTotal AS learningObjectCountRankingTotal2024, learningObjectCountDenseRankingTotal AS learningObjectCountDenseRankingTotal2024, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOf2024, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOf2024 FROM learningObjectUsageTotalsPerYear WHERE year = '2024') AS learningObjectUsageTotals2024 ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjectUsageTotals2024.learningObjectID2024
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectID2023, usageCount AS usageCountLOR2023, learningObjectCount AS learningObjectLORCount2023, minimumCountTotal AS minimumCountTotal2023, maximumCountTotal AS maximumCountTotal2023, averageCountTotal AS averageCountTotal2023, learningObjectCountRankingTotal AS learningObjectCountRankingTotal2023, learningObjectCountDenseRankingTotal AS learningObjectCountDenseRankingTotal2023, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOf2023, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOf2023 FROM learningObjectUsageTotalsPerYear WHERE year = '2023') AS learningObjectUsageTotals2023 ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjectUsageTotals2023.learningObjectID2023
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectID2022, usageCount AS usageCountLOR2022, learningObjectCount AS learningObjectLORCount2022, minimumCountTotal AS minimumCountTotal2022, maximumCountTotal AS maximumCountTotal2022, averageCountTotal AS averageCountTotal2022, learningObjectCountRankingTotal AS learningObjectCountRankingTotal2022, learningObjectCountDenseRankingTotal AS learningObjectCountDenseRankingTotal2022, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOf2022, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOf2022 FROM learningObjectUsageTotalsPerYear WHERE year = '2022') AS learningObjectUsageTotals2022 ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjectUsageTotals2022.learningObjectID2022
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectID2021, usageCount AS usageCountLOR2021, learningObjectCount AS learningObjectLORCount2021, minimumCountTotal AS minimumCountTotal2021, maximumCountTotal AS maximumCountTotal2021, averageCountTotal AS averageCountTotal2021, learningObjectCountRankingTotal AS learningObjectCountRankingTotal2021, learningObjectCountDenseRankingTotal AS learningObjectCountDenseRankingTotal2021, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOf2021, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOf2021 FROM learningObjectUsageTotalsPerYear WHERE year = '2021') AS learningObjectUsageTotals2021 ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjectUsageTotals2021.learningObjectID2021
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectID2020, usageCount AS usageCountLOR2020, learningObjectCount AS learningObjectLORCount2020, minimumCountTotal AS minimumCountTotal2020, maximumCountTotal AS maximumCountTotal2020, averageCountTotal AS averageCountTotal2020, learningObjectCountRankingTotal AS learningObjectCountRankingTotal2020, learningObjectCountDenseRankingTotal AS learningObjectCountDenseRankingTotal2020, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOf2020, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOf2020 FROM learningObjectUsageTotalsPerYear WHERE year = '2020') AS learningObjectUsageTotals2020 ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjectUsageTotals2020.learningObjectID2020
LEFT OUTER JOIN (
SELECT learningObjectID AS learningObjectID2019, usageCount AS usageCountLOR2019, learningObjectCount AS learningObjectLORCount2019, minimumCountTotal AS minimumCountTotal2019, maximumCountTotal AS maximumCountTotal2019, averageCountTotal AS averageCountTotal2019, learningObjectCountRankingTotal AS learningObjectCountRankingTotal2019, learningObjectCountDenseRankingTotal AS learningObjectCountDenseRankingTotal2019, learningObjectCountRankingTotalOutOf AS learningObjectCountRankingTotalOutOf2019, learningObjectCountDenseRankingTotalOutOf AS learningObjectCountDenseRankingTotalOutOf2019 FROM learningObjectUsageTotalsPerYear WHERE year = '2019') AS learningObjectUsageTotals2019 ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjectUsageTotals2019.learningObjectID2019
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUsageCountsByYearByPartner]
AS
SELECT DISTINCT learningObjectID, partnerName,
(SELECT usageCount FROM learningObjectUsageTotalsPerYearPerPartner AS sub
WHERE year = '2025'
AND learningObjectUsageTotalsPerYearPerPartner.partnerName = sub.partnerName
AND learningObjectUsageTotalsPerYearPerPartner.learningObjectID = sub.learningObjectID
) AS usageCount2025,
(SELECT usageCount FROM learningObjectUsageTotalsPerYearPerPartner AS sub
WHERE year = '2024'
AND learningObjectUsageTotalsPerYearPerPartner.partnerName = sub.partnerName
AND learningObjectUsageTotalsPerYearPerPartner.learningObjectID = sub.learningObjectID
) AS usageCount2024,
(SELECT usageCount FROM learningObjectUsageTotalsPerYearPerPartner AS sub
WHERE year = '2023'
AND learningObjectUsageTotalsPerYearPerPartner.partnerName = sub.partnerName
AND learningObjectUsageTotalsPerYearPerPartner.learningObjectID = sub.learningObjectID
) AS usageCount2023,
(SELECT usageCount FROM learningObjectUsageTotalsPerYearPerPartner AS sub
WHERE year = '2022'
AND learningObjectUsageTotalsPerYearPerPartner.partnerName = sub.partnerName
AND learningObjectUsageTotalsPerYearPerPartner.learningObjectID = sub.learningObjectID
) AS usageCount2022,
(SELECT usageCount FROM learningObjectUsageTotalsPerYearPerPartner AS sub
WHERE year = '2021'
AND learningObjectUsageTotalsPerYearPerPartner.partnerName = sub.partnerName
AND learningObjectUsageTotalsPerYearPerPartner.learningObjectID = sub.learningObjectID
) AS usageCount2021,
(SELECT usageCount FROM learningObjectUsageTotalsPerYearPerPartner AS sub
WHERE year = '2020'
AND learningObjectUsageTotalsPerYearPerPartner.partnerName = sub.partnerName
AND learningObjectUsageTotalsPerYearPerPartner.learningObjectID = sub.learningObjectID
) AS usageCount2020,
(SELECT usageCount FROM learningObjectUsageTotalsPerYearPerPartner AS sub
WHERE year = '2019'
AND learningObjectUsageTotalsPerYearPerPartner.partnerName = sub.partnerName
AND learningObjectUsageTotalsPerYearPerPartner.learningObjectID = sub.learningObjectID
) AS usageCount2019
FROM learningObjectUsageTotalsPerYearPerPartner
-- * Removing the test data from the results. -- 07/14/2023 MF
WHERE partnerName <> 'Orbis Education'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUsageCountsByPartner]
AS
SELECT partnerID, partnerName, COUNT(*) AS usageCount
FROM learningObjectUsageScrubbed
-- * Removing the test data from the results. -- 07/14/2023 MF
WHERE partnerName <> 'Orbis Education'
-- WHERE ISNUMERIC(learningObjectID) = 1
-- AND tool_consumer_instance_name <> 'NULL'
GROUP BY partnerID, partnerName
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsDeleted]
-- AS
-- SELECT learningObjectID, learningObjectTitle, team, learningObjectCategoryID, developmentToolID, forTesting,
-- CASE
--   WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
--   ELSE CAST(0 AS BIT)
-- END AS inExecutiveDemonstration,
-- jsonFileName, templateVersion, createDate
-- FROM learningObjects
-- WHERE active = 0
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsReact]
AS
SELECT learningObjectID, learningObjectTitle, team, learningObjectCategoryID, learningObjectCategoryName, developmentToolID, forTesting, videoID, 
CASE
  WHEN learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
  ELSE CAST(0 AS BIT)
END AS inExecutiveDemonstration, 
jsonFileName, templateVersion, /* originalJSONData, */ productionJSONData, landingPagesRequested, /* uploadSource, */ keywords, createDate, updateDate, /* courseCategoryID, programTypeID, programType, */ updatedBy, dbo.udf_getUsername(updatedBy) AS updatedByUsername, /* usernameLearningObjectUpdate, */ bloomsTaxonomyID, availabilityID, availabilityName, /* author, */ description, outcomes, createdForPartnerID, partnerName /* , administratorOnly */ /* , applicationVersion */ /* , lastUpdated */
FROM vw_learningObjects
WHERE learningObjectID IS NOT NULL
AND developmentToolID = (SELECT associatedDataID FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND name = 'React')
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsReact]
-- AS
-- SELECT *
-- FROM vw_learningObjects
-- WHERE developmentToolID = (SELECT associatedDataID FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND name = 'React')
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsjQuery]
-- AS
-- SELECT *
-- FROM vw_learningObjects
-- WHERE developmentToolID = (SELECT associatedDataID FROM [associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND name = 'jQuery')
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUsageProblems]
AS
SELECT *
FROM learningObjectUsageScrubbed
WHERE (ISNUMERIC(learningObjectID) = 0
OR context_title = 'NULL'
OR context_title IS NULL
OR resource_link_title = 'NULL'
OR resource_link_title IS NULL
OR tool_consumer_info_product_family_code = 'NULL'
OR tool_consumer_info_product_family_code IS NULL
OR tool_consumer_instance_name = 'NULL'
OR tool_consumer_instance_name IS NULL
-- OR launch_presentation_return_url = 'NULL'
-- OR launch_presentation_return_url IS NULL
OR context_label = 'NULL'
OR context_label IS NULL)
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUsageComplete]
AS
SELECT *
FROM learningObjectUsageScrubbed
WHERE user_id IS NOT NULL
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectUsageCourseLists]
-- AS
-- SELECT DISTINCT partnerName, context_title, context_label
-- FROM learningObjectUsageCourses
-- -- * Removing the test data from the results. -- 07/14/2023 MF
-- WHERE partnerName <> 'Orbis Education'
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectUsageCourses]
AS
SELECT DISTINCT learningObjectUsageScrubbed.partnerID, learningObjectUsageScrubbed.partnerName, /* learningObjectUsageScrubbed.context_title, resource_link_title, tool_consumer_info_product_family_code, tool_consumer_instance_name, launch_presentation_return_url, learningObjectUsageScrubbed.context_label, */ learningObjectID, learningObjectTitle, timestamp, /* learningObjectUsageScrubbed.context_titleORIGINAL, resource_link_titleORIGINAL, tool_consumer_info_product_family_codeORIGINAL, tool_consumer_instance_nameORIGINAL, launch_presentation_return_urlORIGINAL, learningObjectUsageScrubbed.context_labelORIGINAL, learningObjectIDORIGINAL, timestampORIGINAL, */ /* learningObjectUsageCourses.context_titleORIGINAL AS context_titleORIGINALCourses, */ learningObjectUsageCourses.context_title AS context_titleCourses, /* learningObjectUsageCourses.context_labelORIGINAL AS context_labelORIGINALCourses, */ learningObjectUsageCourses.context_label AS context_labelCourses, 'Visit Counts' AS dataSource
FROM learningObjectUsageScrubbed
INNER JOIN learningObjectUsageCourses ON learningObjectUsageScrubbed.partnerName = learningObjectUsageCourses.partnerName AND learningObjectUsageScrubbed.context_title = learningObjectUsageCourses.context_titleORIGINAL
--  AND learningObjectUsageScrubbed.context_label = learningObjectUsageCourses.context_labelORIGINAL
-- INNER JOIN learningObjectUsageCourses ON learningObjectUsageScrubbed.context_title = learningObjectUsageCourses.context_titleORIGINAL OR learningObjectUsageScrubbed.context_label = learningObjectUsageCourses.context_labelORIGINAL
-- * Removing the test data from the results. -- 07/14/2023 MF
WHERE learningObjectUsageScrubbed.partnerName <> 'Orbis Education'
AND learningObjectUsageCourses.context_title IS NOT NULL AND learningObjectUsageCourses.context_title <> ''
AND learningObjectUsageCourses.context_label IS NOT NULL AND learningObjectUsageCourses.context_label <> ''
UNION ALL
SELECT partnerID, partnerName, learningObjectID, learningObjectTitle, CAST(createDate AS VARCHAR) AS timestamp, course AS context_titleCourses, course AS context_labelCourses, 'Smartsheet' AS dataSource
FROM learningObjectsCourses
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectUsageCourseListsCurrent]
AS
SELECT DISTINCT partnerID, partnerName, learningObjectID, learningObjectTitle, context_titleCourses AS courseName, context_labelCourses AS courseLabel, dataSource
FROM vw_learningObjectUsageCourses
-- * The definition of current being used is that the learning object has been visited from a learning management system (LMS) during the current year or the previous year. -- 06/26/2023 MF
WHERE (timestamp LIKE CONVERT(VARCHAR, YEAR(GETDATE())) + '%' OR timestamp LIKE CONVERT(VARCHAR, YEAR(DATEADD(year, -1, GETDATE()))) + '%' OR dataSource = 'Smartsheet')
-- * Removing the test data from the results. -- 07/14/2023 MF
AND partnerName <> 'Orbis Education'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectUsageCoursesAudit]
AS
SELECT partnerID, partnerName, courseLabel, courseName, learningObjectTitle, 'https://lor.orbiseducation.com/lti/' + CAST(learningObjectID AS VARCHAR) + '/index.html' AS urlLORSource, learningObjectID
FROM vw_learningObjectUsageCourseListsCurrent
WHERE dataSource = 'Visit Counts'
AND learningObjectID IN (SELECT learningObjectID FROM learningObjects WHERE active = 1 AND forTesting = 0)
-- ORDER BY partnerName, courseLabel, learningObjectID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectUsageCourseListProblems]
AS
SELECT partnerName, courseCodeID, courseCode, courseNumber, COUNT(*) AS recordCount
FROM learningObjectUsageCourseList
GROUP BY partnerName, courseCodeID, courseCode, courseNumber
HAVING COUNT(*) > 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectUsageCoursesProblems]
AS
SELECT partnerID, partnerName, context_labelORIGINAL, context_label, context_titleORIGINAL, context_title
FROM learningObjectUsageCourses
WHERE context_label IS NULL
AND partnerName <> 'Orbis Education'
-- AND context_titleORIGINAL <> 'nonlti'
-- AND context_labelORIGINAL <> 'nonlti'
-- AND context_titleORIGINAL <> 'non-lti'
-- AND context_labelORIGINAL <> 'non-lti'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsProblems]
AS
SELECT learningObjectID, learningObjectTitle, team, learningObjectCategoryID, developmentToolID, templateVersion /* , updateDate */
FROM learningObjects
WHERE team IS NULL OR learningObjectCategoryID IS NULL OR developmentToolID IS NULL
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsRankings]
-- AS
-- SELECT learningObjects.learningObjectID, learningObjectTitle, team, learningObjects.learningObjectCategoryID, categoryName AS learningObjectCategoryName, developmentToolID, videoID, 
-- CASE
--   WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
--   ELSE CAST(0 AS BIT)
-- END AS inExecutiveDemonstration, 
-- jsonFileName, templateVersion, landingPagesRequested, learningObjects.createDate, updateDate, year, usageCount, learningObjectCount, learningObjectCountRankingTotal, learningObjectCountDenseRankingTotal, learningObjectCountRankingTotalOutOf, learningObjectCountDenseRankingTotalOutOf,
-- -- (SELECT TOP (1) applicationVersion FROM computerLogsMostRecent WHERE applicationVersion IS NOT NULL AND applicationVersion <> '' ORDER BY applicationVersion DESC) AS currentApplicationVersion, computerLogsMostRecent.applicationVersion
-- -- * The user defined functions are running too slow to display in the API. -- 08/22/2023 MF
-- dbo.udf_getCurrentApplicationVersion(NULL) AS currentApplicationVersion, dbo.udf_getCurrentApplicationVersion(learningObjects.learningObjectID) AS applicationVersion
-- FROM learningObjectUsageTotalsPerYear
-- INNER JOIN learningObjects ON learningObjectUsageTotalsPerYear.learningObjectID = learningObjects.learningObjectID
-- LEFT OUTER JOIN learningObjectCategories ON learningObjects.learningObjectCategoryID = learningObjectCategories.learningObjectCategoryID
-- -- LEFT OUTER JOIN computerLogsMostRecent ON learningObjects.learningObjectID = computerLogsMostRecent.learningObjectID
-- WHERE learningObjects.active = 1 AND forTesting = 0
-- GO

CREATE VIEW [statistics].[vw_learningObjectsWithoutCourses]
AS
SELECT *
FROM vw_learningObjects
WHERE learningObjectID <> 0
AND learningObjectID NOT IN (SELECT learningObjectID FROM learningObjectsCourses WHERE learningObjectID IS NOT NULL)
AND learningObjectID NOT IN (SELECT learningObjectID FROM learningObjectUsageCourseListCurrent)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsCountsByYear]
AS
SELECT DISTINCT learningObjects.learningObjectID, usageCountTotal.learningObjectCountTotal, usageCount2025.learningObjectCount2025, usageCount2024.learningObjectCount2024, usageCount2023.learningObjectCount2023, usageCount2022.learningObjectCount2022, usageCount2021.learningObjectCount2021,
(SELECT COUNT(*)
FROM vw_computerLogs
WHERE href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%'
) AS usageCountTotal,
(SELECT COUNT(*)
FROM computerLogs
WHERE (href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, lastAccessed ) = 2025
) AS usageCount2025,
(SELECT COUNT(*)
FROM computerLogs2024
WHERE (href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, lastAccessed ) = 2024
) AS usageCount2024,
(SELECT COUNT(*)
FROM computerLogs2023
WHERE (href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, lastAccessed ) = 2023
) AS usageCount2023,
(SELECT COUNT(*)
FROM computerLogs2022
WHERE (href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, lastAccessed ) = 2022
) AS usageCount2022,
(SELECT COUNT(*)
FROM computerLogs2021
WHERE (href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, lastAccessed ) = 2021
) AS usageCount2021
FROM learningObjects
LEFT OUTER JOIN (
SELECT usageTotal.learningObjectID, COUNT(*) AS learningObjectCountTotal
FROM vw_computerLogs AS usageTotal
WHERE usageTotal.href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR usageTotal.href LIKE 'https://lor.orbiseducation.com/learningObjects/%'
GROUP BY usageTotal.learningObjectID) AS usageCountTotal ON usageCountTotal.learningObjectID = learningObjects.learningObjectID
LEFT OUTER JOIN (
SELECT usage2025.learningObjectID, COUNT(*) AS learningObjectCount2025
FROM computerLogs AS usage2025
WHERE (usage2025.href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR usage2025.href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, usage2025.lastAccessed ) = 2025
GROUP BY usage2025.learningObjectID) AS usageCount2025 ON usageCount2025.learningObjectID = learningObjects.learningObjectID
LEFT OUTER JOIN (
SELECT usage2024.learningObjectID, COUNT(*) AS learningObjectCount2024
FROM computerLogs2024 AS usage2024
WHERE (usage2024.href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR usage2024.href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, usage2024.lastAccessed ) = 2024
GROUP BY usage2024.learningObjectID) AS usageCount2024 ON usageCount2024.learningObjectID = learningObjects.learningObjectID
LEFT OUTER JOIN (
SELECT usage2023.learningObjectID, COUNT(*) AS learningObjectCount2023
FROM computerLogs2023 AS usage2023
WHERE (usage2023.href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR usage2023.href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, usage2023.lastAccessed ) = 2023
GROUP BY usage2023.learningObjectID) AS usageCount2023 ON usageCount2023.learningObjectID = learningObjects.learningObjectID
LEFT OUTER JOIN (
SELECT usage2022.learningObjectID, COUNT(*) AS learningObjectCount2022
FROM computerLogs2022 AS usage2022
WHERE (usage2022.href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR usage2022.href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, usage2022.lastAccessed ) = 2022
GROUP BY usage2022.learningObjectID) AS usageCount2022 ON usageCount2022.learningObjectID = learningObjects.learningObjectID
LEFT OUTER JOIN (
SELECT usage2021.learningObjectID, COUNT(*) AS learningObjectCount2021
FROM computerLogs2021 AS usage2021
WHERE (usage2021.href LIKE 'https://lor.orbiseducation.com/system/files/%'
OR usage2021.href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
AND DATEPART( year, usage2021.lastAccessed ) = 2021
GROUP BY usage2021.learningObjectID) AS usageCount2021 ON usageCount2021.learningObjectID = learningObjects.learningObjectID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsDashboard]
AS
-- TODO: Remove any items in the query that aren't necessary for displaying the dashboard. -- 10/26/2023 MF
SELECT DISTINCT learningObjects.learningObjectID, learningObjects.learningObjectTitle, /* uploadSource, */ developmentToolID,

developmentTools.name AS developmentTool,
-- (SELECT name FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND associatedDataID = developmentToolID) AS developmentTool,

landingPagesRequested, availabilityID, availabilityData.name AS availabilityName, learningObjects.learningObjectCategoryID, categoryName AS learningObjectCategoryName, team, /* author, */ createdForPartnerID,

partners.partnerName,
-- (SELECT partnerName FROM [Partners].[dbo].[partners] WHERE partners.partnerID = learningObjects.createdForPartnerID) AS partnerName,

learningObjects.description, outcomes,
-- programTypes.programTypeID,

-- programType,
-- (SELECT programType FROM programTypes WHERE programTypes.programTypeID = courseCategories.programTypeID) AS programType,

-- courseCategories.courseCategoryID, 

-- courseCategory, 

bloomsTaxonomyID,

bloomsTaxonomy.name AS bloomsTaxonomy,
-- (SELECT name FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'bloomsTaxonomy') AND associatedDataID = bloomsTaxonomyID) AS bloomsTaxonomy,

keywords = STRING_AGG(keyword, ', '),
/* administratorOnly, */ learningObjects.forTesting,
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
  ELSE CAST(0 AS BIT)
END AS inExecutiveDemonstration,
videoID, jsonFileName, templateVersion, learningObjects.active, learningObjects.updatedBy, dbo.udf_getUsername(learningObjects.updatedBy) AS updatedByUsername, /* usernameLearningObjectUpdate, learningObjectUpdateDate, */ learningObjects.createDate, updateDate,
usageCountLORTotal, learningObjectLORCountTotal,
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM vw_learningObjectsWithoutCourses) THEN CAST(0 AS BIT)
  ELSE CAST(1 AS BIT)
END AS usedInCourses,
(SELECT TOP (1) applicationVersion FROM computerLogsMostRecent WHERE applicationVersion IS NOT NULL AND applicationVersion <> '' ORDER BY applicationVersion DESC) AS currentApplicationVersion, computerLogsMostRecent.applicationVersion
-- * The user defined functions are running too slow to display in the API. -- 08/22/2023 MF
-- dbo.udf_getCurrentApplicationVersion(NULL) AS currentApplicationVersion, dbo.udf_getCurrentApplicationVersion(learningObjects.learningObjectID) AS applicationVersion
FROM learningObjects
LEFT OUTER JOIN associatedData AS developmentTools ON developmentTools.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND developmentToolID = developmentTools.associatedDataID
LEFT OUTER JOIN associatedData AS bloomsTaxonomy ON bloomsTaxonomy.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'bloomsTaxonomy') AND bloomsTaxonomyID = bloomsTaxonomy.associatedDataID
LEFT OUTER JOIN [Partners].[dbo].[partners] ON learningObjects.createdForPartnerID = partners.partnerID
LEFT OUTER JOIN learningObjectCategories ON learningObjects.learningObjectCategoryID = learningObjectCategories.learningObjectCategoryID
-- LEFT OUTER JOIN learningObjectEssentials ON learningObjects.learningObjectID = learningObjectEssentials.learningObjectID
-- LEFT OUTER JOIN associatedData AS essentials ON essentials.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'essentials') AND learningObjectEssentials.essentialID = essentials.associatedDataID
LEFT OUTER JOIN associatedData AS availabilityData ON availabilityData.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'availability') AND availabilityID = availabilityData.associatedDataID
LEFT OUTER JOIN vw_learningObjectsUsageCountsByYear ON ISNUMERIC(vw_learningObjectsUsageCountsByYear.learningObjectID) = 1 AND learningObjects.learningObjectID = vw_learningObjectsUsageCountsByYear.learningObjectID
LEFT OUTER JOIN computerLogsMostRecent ON learningObjects.learningObjectID = computerLogsMostRecent.learningObjectID
LEFT OUTER JOIN learningObjectKeywords ON learningObjects.learningObjectID = learningObjectKeywords.learningObjectID
-- LEFT OUTER JOIN (
-- SELECT learningObjectID, landingPagesRequested = STRING_AGG(landingPageRequested, ', ') FROM (
-- SELECT DISTINCT learningObjectID, RIGHT(request_uri, CHARINDEX('/', REVERSE(request_uri)) - 1) AS landingPageRequested FROM learningObjectUsageScrubbed WHERE request_uri IS NOT NULL) AS landingPages GROUP BY learningObjectID) AS landingPages ON learningObjects.learningObjectID = landingPages.learningObjectID
GROUP BY learningObjects.learningObjectID, learningObjects.learningObjectTitle, /* uploadSource, */ developmentToolID, developmentTools.name, landingPagesRequested, availabilityID, availabilityData.name, learningObjects.learningObjectCategoryID, categoryName, team, /* author, */ createdForPartnerID, partners.partnerName, learningObjects.description, outcomes, /* programTypes.programTypeID, programType, courseCategories.courseCategoryID, courseCategory, */ bloomsTaxonomyID, bloomsTaxonomy.name, /* administratorOnly, */ learningObjects.forTesting, videoID, jsonFileName, templateVersion, originalJSONData, developmentJSONData, productionJSONData, learningObjects.active, learningObjects.updatedBy, learningObjects.createDate, updateDate, usageCountLORTotal, learningObjectLORCountTotal, computerLogsMostRecent.applicationVersion
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsStatistics]
AS
SELECT learningObjects.learningObjectID, learningObjects.learningObjectTitle, team, learningObjects.learningObjectCategoryID, categoryName AS learningObjectCategoryName, developmentToolID,

-- developmentTools.name AS developmentTool,
(SELECT name FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND associatedDataID = developmentToolID) AS developmentTool,

forTesting, videoID, 
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
  ELSE CAST(0 AS BIT)
END AS inExecutiveDemonstration, 
jsonFileName, templateVersion, learningObjects.active, landingPagesRequested, /* uploadSource, */ keywords = STRING_AGG(keyword, ', '), learningObjects.createDate, updateDate,

-- courseCategory,

-- programTypes.programTypeID,
-- (SELECT programTypeID FROM courseCategories WHERE courseCategories.courseCategoryID IN (SELECT courseCategoryID FROM learningObjects AS categoriesLearningObjects WHERE categoriesLearningObjects.learningObjectID = learningObjects.learningObjectID)) AS programTypeID,

-- programType,
-- (SELECT programType FROM programTypes WHERE programTypes.programTypeID IN (SELECT programTypeID FROM courseCategories WHERE courseCategories.courseCategoryID IN (SELECT courseCategoryID FROM learningObjects AS categoriesLearningObjects WHERE categoriesLearningObjects.learningObjectID = learningObjects.learningObjectID))) AS programType,

learningObjects.updatedBy, dbo.udf_getUsername(learningObjects.updatedBy) AS updatedByUsername, /* usernameLearningObjectUpdate, */ bloomsTaxonomyID,

-- bloomsTaxonomy.name AS bloomsTaxonomy,
(SELECT name FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'bloomsTaxonomy') AND associatedDataID = bloomsTaxonomyID) AS bloomsTaxonomy,

availabilityID, availabilityData.name AS availabilityName, /* author, */ learningObjects.description, outcomes, createdForPartnerID,

partners.partnerName,
-- (SELECT partnerName FROM [Partners].[dbo].[partners] WHERE partners.partnerID = learningObjects.createdForPartnerID) AS partnerName,

/* administratorOnly, */ usageCountLORTotal, learningObjectLORCountTotal, learningObjectLORMinimumCountTotal, learningObjectLORMaximumCountTotal, learningObjectLORAverageCountTotal, learningObjectLORCountRankingTotal, learningObjectLORCountDenseRankingTotal, learningObjectCountRankingTotalOutOfTotal, learningObjectCountDenseRankingTotalOutOfTotal,usageCountLOR2025, learningObjectLORCount2025, minimumCountTotal2025, maximumCountTotal2025, averageCountTotal2025, learningObjectCountRankingTotal2025, learningObjectCountDenseRankingTotal2025, learningObjectCountRankingTotalOutOf2025, learningObjectCountDenseRankingTotalOutOf2025, usageCountLOR2024, learningObjectLORCount2024, minimumCountTotal2024, maximumCountTotal2024, averageCountTotal2024, learningObjectCountRankingTotal2024, learningObjectCountDenseRankingTotal2024, learningObjectCountRankingTotalOutOf2024, learningObjectCountDenseRankingTotalOutOf2024, usageCountLOR2023, learningObjectLORCount2023, minimumCountTotal2023, maximumCountTotal2023, averageCountTotal2023, learningObjectCountRankingTotal2023, learningObjectCountDenseRankingTotal2023, learningObjectCountRankingTotalOutOf2023, learningObjectCountDenseRankingTotalOutOf2023, usageCountLOR2022, learningObjectLORCount2022, minimumCountTotal2022, maximumCountTotal2022, averageCountTotal2022, learningObjectCountRankingTotal2022, learningObjectCountDenseRankingTotal2022, learningObjectCountRankingTotalOutOf2022, learningObjectCountDenseRankingTotalOutOf2022, usageCountLOR2021, learningObjectLORCount2021, minimumCountTotal2021, maximumCountTotal2021, averageCountTotal2021, learningObjectCountRankingTotal2021, learningObjectCountDenseRankingTotal2021, learningObjectCountRankingTotalOutOf2021, learningObjectCountDenseRankingTotalOutOf2021, usageCountLOR2020, learningObjectLORCount2020, minimumCountTotal2020, maximumCountTotal2020, averageCountTotal2020, learningObjectCountRankingTotal2020, learningObjectCountDenseRankingTotal2020, learningObjectCountRankingTotalOutOf2020, learningObjectCountDenseRankingTotalOutOf2020, usageCountLOR2019, learningObjectLORCount2019, minimumCountTotal2019, maximumCountTotal2019, averageCountTotal2019, learningObjectCountRankingTotal2019, learningObjectCountDenseRankingTotal2019, learningObjectCountRankingTotalOutOf2019, learningObjectCountDenseRankingTotalOutOf2019, /* (SELECT timestamp FROM dbo.udf_getLastUpdatedUsage()) AS lastUpdated, */
CASE
  WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM vw_learningObjectsWithoutCourses) THEN CAST(0 AS BIT)
  ELSE CAST(1 AS BIT)
END AS usedInCourses,
(SELECT * FROM dbo.udf_getLastUpdatedCourses()) AS courseslastUpdated,
-- courses = STRING_AGG(course, ', ') WITHIN GROUP (ORDER BY course), partners = STRING_AGG(learningObjectsCourses.partnerName, ', ') /* WITHIN GROUP (ORDER BY partner) */ ,
(SELECT TOP (1) applicationVersion FROM computerLogsMostRecent WHERE applicationVersion IS NOT NULL AND applicationVersion <> '' ORDER BY applicationVersion DESC) AS currentApplicationVersion, computerLogsMostRecent.applicationVersion,
-- * The user defined functions are running too slow to display in the API. -- 08/22/2023 MF
-- dbo.udf_getCurrentApplicationVersion(NULL) AS currentApplicationVersion, dbo.udf_getCurrentApplicationVersion(learningObjects.learningObjectID) AS applicationVersion,
learningObjectCountTotal, learningObjectCount2025, learningObjectCount2024, learningObjectCount2023, learningObjectCount2022, learningObjectCount2021, usageCountTotal, usageCount2025, usageCount2024, usageCount2023, usageCount2022, usageCount2021
FROM learningObjects
-- LEFT OUTER JOIN associatedData AS developmentTools ON developmentTools.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND developmentToolID = developmentTools.associatedDataID
LEFT OUTER JOIN learningObjectCategories ON learningObjects.learningObjectCategoryID = learningObjectCategories.learningObjectCategoryID
-- LEFT OUTER JOIN associatedData AS bloomsTaxonomy ON bloomsTaxonomy.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'bloomsTaxonomy') AND bloomsTaxonomyID = bloomsTaxonomy.associatedDataID
LEFT OUTER JOIN associatedData AS availabilityData ON availabilityData.associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'availability') AND availabilityID = availabilityData.associatedDataID
LEFT OUTER JOIN [Partners].[dbo].[partners] ON learningObjects.createdForPartnerID = partners.partnerID
LEFT OUTER JOIN vw_learningObjectsUsageCountsByYear ON ISNUMERIC(vw_learningObjectsUsageCountsByYear.learningObjectID) = 1 AND learningObjects.learningObjectID = vw_learningObjectsUsageCountsByYear.learningObjectID
-- LEFT OUTER JOIN learningObjectsCourses ON learningObjects.learningObjectID = learningObjectsCourses.learningObjectID
LEFT OUTER JOIN computerLogsMostRecent ON learningObjects.learningObjectID = computerLogsMostRecent.learningObjectID
LEFT OUTER JOIN vw_learningObjectsCountsByYear ON learningObjects.learningObjectID = vw_learningObjectsCountsByYear.learningObjectID
LEFT OUTER JOIN learningObjectKeywords ON learningObjects.learningObjectID = learningObjectKeywords.learningObjectID
-- LEFT OUTER JOIN (
-- SELECT learningObjectID, landingPagesRequested = STRING_AGG(landingPageRequested, ', ') FROM (
-- SELECT DISTINCT learningObjectID, RIGHT(request_uri, CHARINDEX('/', REVERSE(request_uri)) - 1) AS landingPageRequested FROM learningObjectUsageScrubbed WHERE request_uri IS NOT NULL) AS landingPages GROUP BY learningObjectID) AS landingPages ON learningObjects.learningObjectID = landingPages.learningObjectID
WHERE learningObjects.active = 1 -- AND forTesting = 0
GROUP BY learningObjects.learningObjectID, learningObjects.learningObjectTitle, team, learningObjects.learningObjectCategoryID, categoryName, developmentToolID, forTesting, videoID, jsonFileName, templateVersion, learningObjects.active, learningObjects.createDate, landingPagesRequested, /* uploadSource, */ learningObjects.createDate, updateDate, /* courseCategory, programTypeID, programType, */ learningObjects.updatedBy, bloomsTaxonomyID, availabilityID, availabilityData.name, /* author, */ learningObjects.description, outcomes, createdForPartnerID, partners.partnerName, /* administratorOnly, */ usageCountLORTotal, learningObjectLORCountTotal, learningObjectLORMinimumCountTotal, learningObjectLORMaximumCountTotal, learningObjectLORAverageCountTotal, learningObjectLORCountRankingTotal, learningObjectLORCountDenseRankingTotal, learningObjectCountRankingTotalOutOfTotal, learningObjectCountDenseRankingTotalOutOfTotal, usageCountLOR2025, learningObjectLORCount2025, minimumCountTotal2025, maximumCountTotal2025, averageCountTotal2025, learningObjectCountRankingTotal2025, learningObjectCountDenseRankingTotal2025, learningObjectCountRankingTotalOutOf2025, learningObjectCountDenseRankingTotalOutOf2025, usageCountLOR2024, learningObjectLORCount2024, minimumCountTotal2024, maximumCountTotal2024, averageCountTotal2024, learningObjectCountRankingTotal2024, learningObjectCountDenseRankingTotal2024, learningObjectCountRankingTotalOutOf2024, learningObjectCountDenseRankingTotalOutOf2024, usageCountLOR2023, learningObjectLORCount2023, minimumCountTotal2023, maximumCountTotal2023, averageCountTotal2023, learningObjectCountRankingTotal2023, learningObjectCountDenseRankingTotal2023, learningObjectCountRankingTotalOutOf2023, learningObjectCountDenseRankingTotalOutOf2023, usageCountLOR2022, learningObjectLORCount2022, minimumCountTotal2022, maximumCountTotal2022, averageCountTotal2022, learningObjectCountRankingTotal2022, learningObjectCountDenseRankingTotal2022, learningObjectCountRankingTotalOutOf2022, learningObjectCountDenseRankingTotalOutOf2022, usageCountLOR2021, learningObjectLORCount2021, minimumCountTotal2021, maximumCountTotal2021, averageCountTotal2021, learningObjectCountRankingTotal2021, learningObjectCountDenseRankingTotal2021, learningObjectCountRankingTotalOutOf2021, learningObjectCountDenseRankingTotalOutOf2021, usageCountLOR2020, learningObjectLORCount2020, minimumCountTotal2020, maximumCountTotal2020, averageCountTotal2020, learningObjectCountRankingTotal2020, learningObjectCountDenseRankingTotal2020, learningObjectCountRankingTotalOutOf2020, learningObjectCountDenseRankingTotalOutOf2020, usageCountLOR2019, learningObjectLORCount2019, minimumCountTotal2019, maximumCountTotal2019, averageCountTotal2019, learningObjectCountRankingTotal2019, learningObjectCountDenseRankingTotal2019, learningObjectCountRankingTotalOutOf2019, learningObjectCountDenseRankingTotalOutOf2019, computerLogsMostRecent.applicationVersion, learningObjectCountTotal, learningObjectCount2025, learningObjectCount2024, learningObjectCount2023, learningObjectCount2022, learningObjectCount2021, usageCountTotal, usageCount2025, usageCount2024, usageCount2023, usageCount2022, usageCount2021
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_learningObjectsStatus]
-- AS
-- SELECT learningObjects.learningObjectID, learningObjects.learningObjectTitle, team, learningObjects.learningObjectCategoryID, categoryName AS learningObjectCategoryName, developmentToolID, videoID, 
-- CASE
--   WHEN learningObjects.learningObjectID IN (SELECT learningObjectID FROM executiveDemonstration WHERE active = 1) THEN CAST(1 AS BIT)
--   ELSE CAST(0 AS BIT)
-- END AS inExecutiveDemonstration, 
-- jsonFileName, templateVersion, landingPagesRequested, learningObjects.createDate, updateDate, usageCountLORTotal, learningObjectLORCountTotal, learningObjectLORCountRankingTotal, learningObjectLORCountDenseRankingTotal, learningObjectCountRankingTotalOutOfTotal, learningObjectCountDenseRankingTotalOutOfTotal, /* (SELECT timestamp FROM dbo.udf_getLastUpdatedUsage()) AS lastUpdated, */ (SELECT * FROM dbo.udf_getLastUpdatedCourses()) AS courseslastUpdated,
-- -- courses = STRING_AGG(course, ', ') WITHIN GROUP (ORDER BY course), partners = STRING_AGG(learningObjectsCourses.partnerName, ', ')
-- -- (SELECT TOP (1) applicationVersion FROM computerLogsMostRecent WHERE applicationVersion IS NOT NULL AND applicationVersion <> '' ORDER BY applicationVersion DESC) AS currentApplicationVersion, computerLogsMostRecent.applicationVersion
-- -- * The user defined functions are running too slow to display in the API. -- 08/22/2023 MF
-- dbo.udf_getCurrentApplicationVersion(NULL) AS currentApplicationVersion, dbo.udf_getCurrentApplicationVersion(learningObjects.learningObjectID) AS applicationVersion
-- FROM learningObjects
-- LEFT OUTER JOIN learningObjectCategories ON learningObjects.learningObjectCategoryID = learningObjectCategories.learningObjectCategoryID
-- LEFT OUTER JOIN vw_learningObjectsUsageCountsByYear ON ISNUMERIC(vw_learningObjectsUsageCountsByYear.learningObjectID) = 1 AND learningObjects.learningObjectID = vw_learningObjectsUsageCountsByYear.learningObjectID
-- -- LEFT OUTER JOIN learningObjectsCourses ON learningObjects.learningObjectID = learningObjectsCourses.learningObjectID
-- -- LEFT OUTER JOIN computerLogsMostRecent ON learningObjects.learningObjectID = computerLogsMostRecent.learningObjectID
-- -- LEFT OUTER JOIN vw_learningObjectsCountsByYear ON learningObjects.learningObjectID = vw_learningObjectsCountsByYear.learningObjectID
-- -- LEFT OUTER JOIN (
-- -- SELECT learningObjectID, landingPagesRequested = STRING_AGG(landingPageRequested, ', ') FROM (
-- -- SELECT DISTINCT learningObjectID, RIGHT(request_uri, CHARINDEX('/', REVERSE(request_uri)) - 1) AS landingPageRequested FROM learningObjectUsageScrubbed WHERE request_uri IS NOT NULL) AS landingPages GROUP BY learningObjectID) AS landingPages ON learningObjects.learningObjectID = landingPages.learningObjectID
-- WHERE learningObjects.active = 1 -- AND forTesting = 0
-- GROUP BY learningObjects.learningObjectID, learningObjects.learningObjectTitle, team, learningObjects.learningObjectCategoryID, categoryName, developmentToolID, videoID, jsonFileName, templateVersion, landingPagesRequested, learningObjects.createDate, updateDate, usageCountLORTotal, learningObjectLORCountTotal, learningObjectLORCountRankingTotal, learningObjectLORCountDenseRankingTotal, learningObjectCountRankingTotalOutOfTotal, learningObjectCountDenseRankingTotalOutOfTotal
-- -- , computerLogsMostRecent.applicationVersion
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsNeedUpdating]
AS
SELECT *
FROM vw_learningObjects
WHERE team IS NULL OR learningObjectCategoryID IS NULL OR developmentTool IS NULL
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsUnused]
AS
SELECT /* 'https://lor.orbiseducation.com/learningObject/edit/' + CAST(learningObjectID AS VARCHAR) AS urlLOR, */ *
FROM vw_learningObjects
WHERE learningObjectID IN (SELECT learningObjectID FROM vw_learningObjectsStatistics WHERE learningObjectLORCountTotal = 0 /* AND courses IS NULL */)
AND DATEADD(day, 180, createDate) < GETDATE()
-- AND jsonFileName IS NOT NULL
-- AND learningObjectCategoryID NOT IN (21, 22)
-- AND developmentToolID = (SELECT associatedDataID FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND name = 'React')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsNoLongerUsed]
AS
SELECT /* 'https://lor.orbiseducation.com/learningObject/edit/' + CAST(learningObjectID AS VARCHAR) AS urlLOR, */ *
FROM vw_learningObjects
WHERE learningObjectID IN (SELECT learningObjectID FROM vw_learningObjectsStatistics WHERE learningObjectLORCountTotal <> 0 /* AND courses IS NULL */ AND learningObjectLORCount2025 = 0 AND learningObjectLORCount2024 = 0)
AND DATEADD(day, 180, createDate) < GETDATE()
-- AND jsonFileName IS NOT NULL
-- AND learningObjectCategoryID NOT IN (21, 22)
-- AND developmentToolID = (SELECT associatedDataID FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND name = 'React')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectsLittleUsed]
AS
SELECT learningObjectLORCountTotal, learningObjectLORCount2025, learningObjectLORCount2024, learningObjectLORCount2023, learningObjectLORCount2022, learningObjectLORCount2021, learningObjectLORCount2020, learningObjectLORCount2019, vw_learningObjects.*
FROM vw_learningObjectsStatistics
INNER JOIN vw_learningObjects ON vw_learningObjectsStatistics.learningObjectID = vw_learningObjects.learningObjectID
WHERE learningObjectLORCountTotal < 100
AND learningObjectLORCountTotal <> 0
-- AND learningObjectLORCount2022 <> 0 AND learningObjectLORCount2021 <> 0 AND learningObjectLORCount2020 <> 0 AND learningObjectLORCount2019 <> 0
-- ? AND DATEADD(day, 180, createDate) < GETDATE()
-- AND learningObjectCategoryID NOT IN (21, 22)
-- AND developmentToolID = (SELECT associatedDataID FROM associatedData WHERE associatedDataCategoryID IN (SELECT associatedDataCategoryID FROM associatedDataCategories WHERE name = 'developmentTools') AND name = 'React')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_computerLogsUsage]
AS
SELECT learningObjectUsageScrubbed.learningObjectID, userIdentifier, vw_computerLogs.timestamp AS computerLogTimestamp, learningObjectUsageScrubbed.timestamp AS lorTimestamp, request_uri, partnerName, context_title, resource_link_title, tool_consumer_info_product_family_code, tool_consumer_instance_name, launch_presentation_return_url, context_label, oauth_consumer_key, oauth_signature_method, oauth_timestamp, oauth_nonce, oauth_version, context_id, custom_canvas_enrollment_state, ext_roles, launch_presentation_document_target, launch_presentation_locale, lti_message_type, lti_version, oauth_callback, resource_link_id, roles, tool_consumer_info_version, tool_consumer_instance_contact_email, tool_consumer_instance_guid, user_id, oauth_signature, vw_computerLogs.learningObjectTitle, href, applicationVersion, browserData, ipAddress, lastAccessed, city, state, stateCode, countryName, countryCode, continentName, continentCode, latitude, longitude, postal
FROM learningObjectUsageScrubbed
INNER JOIN vw_computerLogs ON learningObjectUsageScrubbed.timestamp > '2021-01-01'
AND learningObjectUsageScrubbed.learningObjectID = vw_computerLogs.learningObjectID
WHERE learningObjectUsageScrubbed.timestamp > '2021-01-01'
AND DATEADD(second, -5, learningObjectUsageScrubbed.timestamp) < DATEADD(hour, -5, vw_computerLogs.timestamp)
AND DATEADD(second, 5, learningObjectUsageScrubbed.timestamp) > DATEADD(hour, -5, vw_computerLogs.timestamp)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectUsageTotalsPerSemester]
AS
SELECT learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID, learningObjectTitle, learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID, partnerID, reportingTermName, startDate, endDate, learningObjectUsageCourseList.partnerName, SUM(usageCount) AS usageCount
FROM learningObjectUsageTotalsPerSemesterPerCourse
INNER JOIN vw_learningObjects ON learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID = vw_learningObjects.learningObjectID
INNER JOIN learningObjectUsageCourseList ON learningObjectUsageTotalsPerSemesterPerCourse.courseCodeID = learningObjectUsageCourseList.courseCodeID
INNER JOIN [Partners].[dbo].[vw_partnerReportingTerms] ON learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID = [Partners].[dbo].[vw_partnerReportingTerms].reportingTermID
WHERE (SELECT partnerName FROM [Partners].[dbo].[vw_partners] WHERE vw_partners.partnerID = vw_partnerReportingTerms.partnerID) = learningObjectUsageCourseList.partnerName
GROUP BY learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID, learningObjectTitle, learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID, partnerID, reportingTermName, startDate, endDate, learningObjectUsageCourseList.partnerName
-- ORDER BY reportingTermID, learningObjectTitle
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_learningObjectUsageTotalsPerSemesterPerCourse]
AS
SELECT learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID, learningObjectTitle, learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID, partnerID, reportingTermName,
CASE
	WHEN reportingTermName LIKE '%J-Term%' THEN 13
	WHEN reportingTermName LIKE '%Winter%' AND reportingTermName NOT LIKE '%Term %' THEN 10
	WHEN reportingTermName LIKE '%Winter%' AND reportingTermName LIKE '%Term 1%' THEN 11
	WHEN reportingTermName LIKE '%Winter%' AND reportingTermName LIKE '%Term 2%' THEN 12
	WHEN reportingTermName LIKE '%Spring%' AND reportingTermName NOT LIKE '%Term %' THEN 7
	WHEN reportingTermName LIKE '%Spring%' AND reportingTermName LIKE '%Term 1%' THEN 8
	WHEN reportingTermName LIKE '%Spring%' AND reportingTermName LIKE '%Term 2%' THEN 9
	WHEN reportingTermName LIKE '%Summer%' AND reportingTermName NOT LIKE '%Term %' THEN 4
	WHEN reportingTermName LIKE '%Summer%' AND reportingTermName LIKE '%Term 1%' THEN 5
	WHEN reportingTermName LIKE '%Summer%' AND reportingTermName LIKE '%Term 2%' THEN 6
	WHEN reportingTermName LIKE '%Fall%' AND reportingTermName NOT LIKE '%Term %' THEN 1
	WHEN reportingTermName LIKE '%Fall%' AND reportingTermName LIKE '%Term 1%' THEN 2
	WHEN reportingTermName LIKE '%Fall%' AND reportingTermName LIKE '%Term 2%' THEN 3
	ELSE NULL
END AS semesterMonth,
YEAR(startDate) AS semesterYear,
startDate, endDate, learningObjectUsageCourseList.partnerName, learningObjectUsageCourseList.courseCodeID, courseCode, courseNumber, courseTitle, usageCount
FROM learningObjectUsageTotalsPerSemesterPerCourse
INNER JOIN vw_learningObjects ON learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID = vw_learningObjects.learningObjectID
INNER JOIN learningObjectUsageCourseList ON learningObjectUsageTotalsPerSemesterPerCourse.courseCodeID = learningObjectUsageCourseList.courseCodeID
INNER JOIN [Partners].[dbo].[vw_partnerReportingTerms] ON learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID = [Partners].[dbo].[vw_partnerReportingTerms].reportingTermID
WHERE (SELECT partnerName FROM [Partners].[dbo].[vw_partners] WHERE vw_partners.partnerID = vw_partnerReportingTerms.partnerID) = learningObjectUsageCourseList.partnerName
-- ORDER BY semesterYear DESC, semesterMonth, partnerName, courseCodeID, learningObjectTitle
-- ? Why is the UNION query here? -- 08/20/2024 MF
-- * Possibly to have the aggregate semester data? -- 08/20/2024 MF
-- UNION ALL
-- SELECT learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID, learningObjectTitle, learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID, partnerID, reportingTermName, startDate, endDate, learningObjectUsageCourseList.partnerName, NULL AS courseCodeID, NULL AS courseCode, NULL AS courseNumber, NULL AS courseTitle, SUM(usageCount) AS usageCount
-- FROM learningObjectUsageTotalsPerSemesterPerCourse
-- INNER JOIN vw_learningObjects ON learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID = vw_learningObjects.learningObjectID
-- INNER JOIN learningObjectUsageCourseList ON learningObjectUsageTotalsPerSemesterPerCourse.courseCodeID = learningObjectUsageCourseList.courseCodeID
-- INNER JOIN [Partners].[dbo].[vw_partnerReportingTerms] ON learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID = [Partners].[dbo].[vw_partnerReportingTerms].reportingTermID
-- WHERE (SELECT partnerName FROM [Partners].[dbo].[vw_partners] WHERE vw_partners.partnerID = vw_partnerReportingTerms.partnerID) = learningObjectUsageCourseList.partnerName
-- GROUP BY learningObjectUsageTotalsPerSemesterPerCourse.learningObjectID, learningObjectTitle, learningObjectUsageTotalsPerSemesterPerCourse.reportingTermID, partnerID, reportingTermName, startDate, endDate, learningObjectUsageCourseList.partnerName
-- -- ORDER BY reportingTermID, courseCodeID, learningObjectTitle
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartners]
AS
SELECT learningObjectUsageScrubbed.learningObjectID, vw_learningObjects.learningObjectTitle, vw_learningObjects.createdForPartnerID, partnerID, vw_learningObjects.partnerName AS createdForPartnerName, learningObjectUsageScrubbed.partnerName, timestamp
FROM learningObjectUsageScrubbed
INNER JOIN vw_learningObjects ON learningObjectUsageScrubbed.learningObjectID = vw_learningObjects.learningObjectID AND availabilityID = 17
WHERE vw_learningObjects.createdForPartnerID <> learningObjectUsageScrubbed.partnerID
AND partnerID <> 23
AND learningObjectUsageScrubbed.partnerName <> 'Orbis Education'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersDistinct]
AS
SELECT DISTINCT learningObjectID, learningObjectTitle, createdForPartnerID, partnerID, createdForPartnerName, partnerName
FROM vw_partnerSpecificLearningObjectsUsedByOtherPartners
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersCurrent]
AS
SELECT learningObjectID, learningObjectTitle, createdForPartnerID, partnerID, createdForPartnerName, partnerName, timestamp
FROM vw_partnerSpecificLearningObjectsUsedByOtherPartners
WHERE (timestamp LIKE CONVERT(VARCHAR, YEAR(GETDATE())) + '%' OR timestamp LIKE CONVERT(VARCHAR, YEAR(DATEADD(year, -1, GETDATE()))) + '%')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnerSpecificLearningObjectsUsedByOtherPartnersCurrentDistinct]
AS
SELECT DISTINCT learningObjectID, learningObjectTitle, createdForPartnerID, partnerID, createdForPartnerName, partnerName
FROM vw_partnerSpecificLearningObjectsUsedByOtherPartnersCurrent
GO
