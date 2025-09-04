-- USE [LearningObjects]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[errorLogs]') AND type in (N'U'))
ALTER TABLE [errorLogs] DROP CONSTRAINT [DF_errorLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[errorLogsJSON]') AND type in (N'U'))
ALTER TABLE [errorLogsJSON] DROP CONSTRAINT [DF_errorLogsJSON_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[computerLogs]') AND type in (N'U'))
ALTER TABLE [computerLogs] DROP CONSTRAINT IF EXISTS [DF_computerLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[computerLogs2024]') AND type in (N'U'))
ALTER TABLE [computerLogs2024] DROP CONSTRAINT IF EXISTS [DF_computerLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[computerLogs2023]') AND type in (N'U'))
ALTER TABLE [computerLogs2023] DROP CONSTRAINT IF EXISTS [DF_computerLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[computerLogs2022]') AND type in (N'U'))
ALTER TABLE [computerLogs2022] DROP CONSTRAINT IF EXISTS [DF_computerLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[computerLogs2021]') AND type in (N'U'))
ALTER TABLE [computerLogs2021] DROP CONSTRAINT IF EXISTS [DF_computerLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[databaseErrorLogs]') AND type in (N'U'))
ALTER TABLE [databaseErrorLogs] DROP CONSTRAINT [DF_databaseErrorLogs_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[logs]') AND type in (N'U'))
ALTER TABLE [logs] DROP CONSTRAINT [DF_logs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[logs2024]') AND type in (N'U'))
ALTER TABLE [logs2024] DROP CONSTRAINT [DF_logs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[logs2023]') AND type in (N'U'))
ALTER TABLE [logs2023] DROP CONSTRAINT [DF_logs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[logs2022]') AND type in (N'U'))
ALTER TABLE [logs2022] DROP CONSTRAINT [DF_logs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requestErrorLogs]') AND type in (N'U'))
ALTER TABLE [requestErrorLogs] DROP CONSTRAINT [DF_requestErrorLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[applicationSettings]') AND type in (N'U'))
ALTER TABLE [applicationSettings] DROP CONSTRAINT IF EXISTS [DF_applicationSettings_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjects]') AND type in (N'U'))
ALTER TABLE [learningObjects] DROP CONSTRAINT [DF_learningObjects_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjects]') AND type in (N'U'))
ALTER TABLE [learningObjects] DROP CONSTRAINT [DF_learningObjects_updateDate]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjects]') AND type in (N'U'))
-- ALTER TABLE [learningObjects] DROP CONSTRAINT [DF_learningObjects_learningObjectUpdateDate]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjects]') AND type in (N'U'))
ALTER TABLE [learningObjects] DROP CONSTRAINT [DF_learningObjects_active]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsIMPORT]') AND type in (N'U'))
-- ALTER TABLE [learningObjectsIMPORT] DROP CONSTRAINT [DF_learningObjectsIMPORT_createDate]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsIMPORT]') AND type in (N'U'))
-- ALTER TABLE [learningObjectsIMPORT] DROP CONSTRAINT [DF_learningObjectsIMPORT_updateDate]
-- GO
-- -- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsIMPORT]') AND type in (N'U'))
-- -- ALTER TABLE [learningObjectsIMPORT] DROP CONSTRAINT [DF_learningObjectsIMPORT_learningObjectUpdateDate]
-- -- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsIMPORT]') AND type in (N'U'))
-- ALTER TABLE [learningObjectsIMPORT] DROP CONSTRAINT [DF_learningObjectsIMPORT_active]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsUploads]') AND type in (N'U'))
ALTER TABLE [learningObjectsUploads] DROP CONSTRAINT [DF_learningObjectsUploads_currentVersion]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsUploads]') AND type in (N'U'))
ALTER TABLE [learningObjectsUploads] DROP CONSTRAINT [DF_learningObjectsUploads_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsUploads]') AND type in (N'U'))
ALTER TABLE [learningObjectsUploads] DROP CONSTRAINT [DF_learningObjectsUploads_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsDevelopment]') AND type in (N'U'))
ALTER TABLE [learningObjectsDevelopment] DROP CONSTRAINT [DF_learningObjectsDevelopment_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectsDevelopment]') AND type in (N'U'))
ALTER TABLE [learningObjectsDevelopment] DROP CONSTRAINT [DF_learningObjectsDevelopment_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectCourseCategories]') AND type in (N'U'))
ALTER TABLE [learningObjectCourseCategories] DROP CONSTRAINT [DF_learningObjectCourseCategories_createDate]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectEssentials]') AND type in (N'U'))
-- ALTER TABLE [learningObjectEssentials] DROP CONSTRAINT [DF_learningObjectEssentials_createDate]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectCompetencies]') AND type in (N'U'))
ALTER TABLE [learningObjectCompetencies] DROP CONSTRAINT [DF_learningObjectCompetencies_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectKeywords]') AND type in (N'U'))
ALTER TABLE [learningObjectKeywords] DROP CONSTRAINT [DF_learningObjectKeywords_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[keywords]') AND type in (N'U'))
ALTER TABLE [keywords] DROP CONSTRAINT [DF_keywords_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectContentReviews]') AND type in (N'U'))
ALTER TABLE [learningObjectContentReviews] DROP CONSTRAINT [DF_learningObjectContentReviews_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectNotes]') AND type in (N'U'))
ALTER TABLE [learningObjectNotes] DROP CONSTRAINT [DF_learningObjectNotes_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[medicalAbbreviations]') AND type in (N'U'))
ALTER TABLE [medicalAbbreviations] DROP CONSTRAINT [DF_medicalAbbreviations_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[medicalAbbreviations]') AND type in (N'U'))
ALTER TABLE [medicalAbbreviations] DROP CONSTRAINT IF EXISTS [DF_medicalAbbreviations_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[courseCategories]') AND type in (N'U'))
ALTER TABLE [courseCategories] DROP CONSTRAINT [DF_courseCategories_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[courseCategories]') AND type in (N'U'))
ALTER TABLE [courseCategories] DROP CONSTRAINT IF EXISTS [DF_courseCategories_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[programTypes]') AND type in (N'U'))
ALTER TABLE [programTypes] DROP CONSTRAINT [DF_programTypes_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[programTypes]') AND type in (N'U'))
ALTER TABLE [programTypes] DROP CONSTRAINT IF EXISTS [DF_programTypes_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[associatedDataCategories]') AND type in (N'U'))
ALTER TABLE [associatedDataCategories] DROP CONSTRAINT [DF_associatedDataCategories_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[associatedDataCategories]') AND type in (N'U'))
ALTER TABLE [associatedDataCategories] DROP CONSTRAINT IF EXISTS [DF_associatedDataCategories_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[associatedData]') AND type in (N'U'))
ALTER TABLE [associatedData] DROP CONSTRAINT [DF_associatedData_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[associatedData]') AND type in (N'U'))
ALTER TABLE [associatedData] DROP CONSTRAINT IF EXISTS [DF_associatedData_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectCategories]') AND type in (N'U'))
ALTER TABLE [learningObjectCategories] DROP CONSTRAINT [DF_learningObjectCategories_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectCategories]') AND type in (N'U'))
ALTER TABLE [learningObjectCategories] DROP CONSTRAINT [DF_learningObjectCategories_active]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[nursingEssentials]') AND type in (N'U'))
-- ALTER TABLE [nursingEssentials] DROP CONSTRAINT [DF_nursingEssentials_createDate]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[nursingEssentials]') AND type in (N'U'))
-- ALTER TABLE [nursingEssentials] DROP CONSTRAINT [DF_nursingEssentials_active]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[competencyDomains]') AND type in (N'U'))
ALTER TABLE [competencyDomains] DROP CONSTRAINT [DF_competencyDomains_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[competencyDomains]') AND type in (N'U'))
ALTER TABLE [competencyDomains] DROP CONSTRAINT [DF_competencyDomains_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[competencies]') AND type in (N'U'))
ALTER TABLE [competencies] DROP CONSTRAINT [DF_competencies_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[competencies]') AND type in (N'U'))
ALTER TABLE [competencies] DROP CONSTRAINT [DF_competencies_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[subcompetencies]') AND type in (N'U'))
ALTER TABLE [subcompetencies] DROP CONSTRAINT [DF_subcompetencies_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[subcompetencies]') AND type in (N'U'))
ALTER TABLE [subcompetencies] DROP CONSTRAINT [DF_subcompetencies_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[users]') AND type in (N'U'))
ALTER TABLE [users] DROP CONSTRAINT [DF_users_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[users]') AND type in (N'U'))
ALTER TABLE [users] DROP CONSTRAINT IF EXISTS [DF_users_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[users]') AND type in (N'U'))
ALTER TABLE [users] DROP CONSTRAINT IF EXISTS [DF_users_shared]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRoles]') AND type in (N'U'))
ALTER TABLE [userRoles] DROP CONSTRAINT [DF_userRoles_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRoles]') AND type in (N'U'))
ALTER TABLE [userRoles] DROP CONSTRAINT IF EXISTS [DF_userRoles_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userSearches]') AND type in (N'U'))
ALTER TABLE [userSearches] DROP CONSTRAINT [DF_userSearches_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userLists]') AND type in (N'U'))
ALTER TABLE [userLists] DROP CONSTRAINT [DF_userLists_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userLists]') AND type in (N'U'))
ALTER TABLE [userLists] DROP CONSTRAINT IF EXISTS [DF_userLists_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userListItems]') AND type in (N'U'))
ALTER TABLE [userListItems] DROP CONSTRAINT [DF_userListItems_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userListItems]') AND type in (N'U'))
ALTER TABLE [userListItems] DROP CONSTRAINT IF EXISTS [DF_userListItems_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[lmsConnections]') AND type in (N'U'))
ALTER TABLE [lmsConnections] DROP CONSTRAINT [DF_lmsConnections_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[lmsConnections]') AND type in (N'U'))
ALTER TABLE [lmsConnections] DROP CONSTRAINT IF EXISTS [DF_lmsConnections_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[issues]') AND type in (N'U'))
ALTER TABLE [issues] DROP CONSTRAINT IF EXISTS [DF_issues_timestamp]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statements]') AND type in (N'U'))
-- ALTER TABLE [statements] DROP CONSTRAINT [DF_statements_timestampServer]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectUsage]') AND type in (N'U'))
ALTER TABLE [learningObjectUsage] DROP CONSTRAINT IF EXISTS [DF_learningObjectUsage_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectUsageTotalsIMPORT]') AND type in (N'U'))
ALTER TABLE [learningObjectUsageTotalsIMPORT] DROP CONSTRAINT [DF_learningObjectUsageTotalsIMPORT_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectUsageTotalsPerYearIMPORT]') AND type in (N'U'))
ALTER TABLE [learningObjectUsageTotalsPerYearIMPORT] DROP CONSTRAINT [DF_learningObjectUsageTotalsPerYearIMPORT_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectUsageTotalsPerYearPerPartnerIMPORT]') AND type in (N'U'))
ALTER TABLE [learningObjectUsageTotalsPerYearPerPartnerIMPORT] DROP CONSTRAINT [DF_learningObjectUsageTotalsPerYearPerPartnerIMPORT_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectUsageTotalsPerSemesterPerCourseIMPORT]') AND type in (N'U'))
ALTER TABLE [learningObjectUsageTotalsPerSemesterPerCourseIMPORT] DROP CONSTRAINT [DF_learningObjectUsageTotalsPerSemesterPerCourseIMPORT_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[learningObjectServerFiles]') AND type in (N'U'))
ALTER TABLE [learningObjectServerFiles] DROP CONSTRAINT [DF_learningObjectServerFiles_createDate]
GO

DROP TABLE IF EXISTS [databaseErrorLogs]
GO
DROP TABLE IF EXISTS [errorLogs]
GO
DROP TABLE IF EXISTS [errorLogsJSON]
GO
DROP TABLE IF EXISTS [computerLogs]
GO
DROP TABLE IF EXISTS [computerLogs2024]
GO
DROP TABLE IF EXISTS [computerLogs2023]
GO
DROP TABLE IF EXISTS [computerLogs2022]
GO
DROP TABLE IF EXISTS [computerLogs2021]
GO
DROP TABLE IF EXISTS [computerLogsMostRecent]
GO
DROP TABLE IF EXISTS [logs]
GO
DROP TABLE IF EXISTS [logs2024]
GO
DROP TABLE IF EXISTS [logs2023]
GO
DROP TABLE IF EXISTS [logs2022]
GO
DROP TABLE IF EXISTS [requestErrorLogs]
GO
DROP TABLE IF EXISTS [applicationSettings]
GO
DROP TABLE IF EXISTS [learningObjects]
GO
-- DROP TABLE IF EXISTS [learningObjectsIMPORT]
-- GO
DROP TABLE IF EXISTS [learningObjectsUploads]
GO
DROP TABLE IF EXISTS [learningObjectsDevelopment]
GO
DROP TABLE IF EXISTS [learningObjectCourseCategories]
GO
-- DROP TABLE IF EXISTS [learningObjectEssentialsOLD]
-- GO
-- DROP TABLE IF EXISTS [learningObjectEssentials]
-- GO
DROP TABLE IF EXISTS [learningObjectCompetencies]
GO
DROP TABLE IF EXISTS [learningObjectKeywords]
GO
DROP TABLE IF EXISTS [keywords]
GO
DROP TABLE IF EXISTS [learningObjectContentReviews]
GO
DROP TABLE IF EXISTS [learningObjectNotes]
GO
DROP TABLE IF EXISTS [medicalAbbreviations]
GO
DROP TABLE IF EXISTS [courseCategories]
GO
DROP TABLE IF EXISTS [programTypes]
GO
DROP TABLE IF EXISTS [associatedData]
GO
DROP TABLE IF EXISTS [associatedDataCategories]
GO
DROP TABLE IF EXISTS [learningObjectCategories]
GO
-- DROP TABLE IF EXISTS [nursingEssentials]
-- GO
DROP TABLE IF EXISTS [competencyDomains]
GO
DROP TABLE IF EXISTS [competencies]
GO
DROP TABLE IF EXISTS [subcompetencies]
GO
DROP TABLE IF EXISTS [users]
GO
DROP TABLE IF EXISTS [userRoles]
GO
DROP TABLE IF EXISTS [userSearches]
GO
DROP TABLE IF EXISTS [userLists]
GO
DROP TABLE IF EXISTS [userListItems]
GO
DROP TABLE IF EXISTS [lmsConnections]
GO
DROP TABLE IF EXISTS [issues]
GO
-- DROP TABLE IF EXISTS [statements]
-- GO
DROP TABLE IF EXISTS [learningObjectUsage]
GO
DROP TABLE IF EXISTS [learningObjectUsageScrubbed]
GO
DROP TABLE IF EXISTS [learningObjectUsageScrubbedIMPORT]
GO
DROP TABLE IF EXISTS [learningObjectUsageCourses]
GO
DROP TABLE IF EXISTS [learningObjectUsageCourseList]
GO
DROP TABLE IF EXISTS [learningObjectUsageCourseListCurrent]
GO

DROP TABLE IF EXISTS [learningObjectUsageTotals]
GO
DROP TABLE IF EXISTS [learningObjectUsageTotalsIMPORT]
GO
DROP TABLE IF EXISTS [learningObjectUsageTotalsPerYear]
GO
DROP TABLE IF EXISTS [learningObjectUsageTotalsPerYearIMPORT]
GO
DROP TABLE IF EXISTS [learningObjectUsageTotalsPerYearPerPartner]
GO
DROP TABLE IF EXISTS [learningObjectUsageTotalsPerYearPerPartnerIMPORT]
GO
DROP TABLE IF EXISTS [learningObjectUsageTotalsPerSemesterPerCourse]
GO
DROP TABLE IF EXISTS [learningObjectUsageTotalsPerSemesterPerCourseIMPORT]
GO
DROP TABLE IF EXISTS [learningObjectServerFiles]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [computerLogs](
	[learningObjectID] [INT] NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[ipAddress] [VARCHAR](50) NULL,
	[lastAccessed] [DATETIME] NULL,
	[city] [VARCHAR](200) NULL,
	[state] [VARCHAR](200) NULL,
	[stateCode] [VARCHAR](50) NULL,
	[countryName] [VARCHAR](200) NULL,
	[countryCode] [VARCHAR](200) NULL,
	[continentName] [VARCHAR](200) NULL,
	[continentCode] [VARCHAR](200) NULL,
	[latitude] [VARCHAR](50) NULL,
	[longitude] [VARCHAR](50) NULL,
	[postal] [VARCHAR](50) NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [computerLogs2024](
	[learningObjectID] [INT] NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[ipAddress] [VARCHAR](50) NULL,
	[lastAccessed] [DATETIME] NULL,
	[city] [VARCHAR](200) NULL,
	[state] [VARCHAR](200) NULL,
	[stateCode] [VARCHAR](50) NULL,
	[countryName] [VARCHAR](200) NULL,
	[countryCode] [VARCHAR](200) NULL,
	[continentName] [VARCHAR](200) NULL,
	[continentCode] [VARCHAR](200) NULL,
	[latitude] [VARCHAR](50) NULL,
	[longitude] [VARCHAR](50) NULL,
	[postal] [VARCHAR](50) NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [computerLogs2023](
	[learningObjectID] [INT] NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[ipAddress] [VARCHAR](50) NULL,
	[lastAccessed] [DATETIME] NULL,
	[city] [VARCHAR](200) NULL,
	[state] [VARCHAR](200) NULL,
	[stateCode] [VARCHAR](50) NULL,
	[countryName] [VARCHAR](200) NULL,
	[countryCode] [VARCHAR](200) NULL,
	[continentName] [VARCHAR](200) NULL,
	[continentCode] [VARCHAR](200) NULL,
	[latitude] [VARCHAR](50) NULL,
	[longitude] [VARCHAR](50) NULL,
	[postal] [VARCHAR](50) NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [computerLogs2022](
	[learningObjectID] [INT] NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[ipAddress] [VARCHAR](50) NULL,
	[lastAccessed] [DATETIME] NULL,
	[city] [VARCHAR](200) NULL,
	[state] [VARCHAR](200) NULL,
	[stateCode] [VARCHAR](50) NULL,
	[countryName] [VARCHAR](200) NULL,
	[countryCode] [VARCHAR](200) NULL,
	[continentName] [VARCHAR](200) NULL,
	[continentCode] [VARCHAR](200) NULL,
	[latitude] [VARCHAR](50) NULL,
	[longitude] [VARCHAR](50) NULL,
	[postal] [VARCHAR](50) NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [computerLogs2021](
	[learningObjectID] [INT] NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[ipAddress] [VARCHAR](50) NULL,
	[lastAccessed] [DATETIME] NULL,
	[city] [VARCHAR](200) NULL,
	[state] [VARCHAR](200) NULL,
	[stateCode] [VARCHAR](50) NULL,
	[countryName] [VARCHAR](200) NULL,
	[countryCode] [VARCHAR](200) NULL,
	[continentName] [VARCHAR](200) NULL,
	[continentCode] [VARCHAR](200) NULL,
	[latitude] [VARCHAR](50) NULL,
	[longitude] [VARCHAR](50) NULL,
	[postal] [VARCHAR](50) NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [computerLogsMostRecent](
	[learningObjectID] [INT] NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[ipAddress] [VARCHAR](50) NULL,
	[lastAccessed] [DATETIME] NULL,
	[city] [VARCHAR](200) NULL,
	[state] [VARCHAR](200) NULL,
	[stateCode] [VARCHAR](50) NULL,
	[countryName] [VARCHAR](200) NULL,
	[countryCode] [VARCHAR](200) NULL,
	[continentName] [VARCHAR](200) NULL,
	[continentCode] [VARCHAR](200) NULL,
	[latitude] [VARCHAR](50) NULL,
	[longitude] [VARCHAR](50) NULL,
	[postal] [VARCHAR](50) NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [errorLogs](
	[learningObjectID] [INT] NULL,
	[href] [VARCHAR](500) NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[pageID] [VARCHAR](200) NULL,
	[operation] [VARCHAR](200) NULL,
	[componentName] [VARCHAR](200) NULL,
	[transactionData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[errorData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [errorLogsJSON](
	[learningObjectID] [INT] NULL,
	[href] [VARCHAR](500) NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[pageID] [VARCHAR](200) NULL,
	[errorData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[userIdentifier] [VARCHAR](200) NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logs](
	[learningObjectID] [INT] NULL,
	[href] [VARCHAR](500) NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[pageID] [VARCHAR](200) NULL,
	[operation] [VARCHAR](200) NULL,
	[transactionData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logs2024](
	[learningObjectID] [INT] NULL,
	[href] [VARCHAR](500) NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[pageID] [VARCHAR](200) NULL,
	[operation] [VARCHAR](200) NULL,
	[transactionData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logs2023](
	[learningObjectID] [INT] NULL,
	[href] [VARCHAR](500) NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[pageID] [VARCHAR](200) NULL,
	[operation] [VARCHAR](200) NULL,
	[transactionData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logs2022](
	[learningObjectID] [INT] NULL,
	[href] [VARCHAR](500) NULL,
	[learningObjectTitle] [VARCHAR](200) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[pageID] [VARCHAR](200) NULL,
	[operation] [VARCHAR](200) NULL,
	[transactionData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL,
	[userIdentifier] [VARCHAR](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [requestErrorLogs](
	[href] [VARCHAR](500) NULL,
	[referrer] [VARCHAR](500) NULL,
	[requestSource] [VARCHAR](50) NULL, -- * Learning Management System or other?  -- 05/10/2024 MF
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [applicationSettings](
	[applicationSettingsID] [INT] IDENTITY(1,1) NOT NULL,
	[partnerID] [INT] NULL,
	[databaseName] [VARCHAR](255) NULL,
	[helpdeskPartnerSite] [VARCHAR](255) NULL,
	[active] [BIT] NOT NULL,
 CONSTRAINT [PK_applicationSettings] PRIMARY KEY CLUSTERED 
(
	[applicationSettingsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [databaseErrorLogs](
	[userName] [VARCHAR](100) NULL,
	[errorNumber] [INT] NULL,
	[errorState] [INT] NULL,
	[errorSeverity] [INT] NULL,
	[errorLine] [INT] NULL,
	[errorProcedure] [VARCHAR](MAX) NULL,
	[errorMessage] [VARCHAR](MAX) NULL,
	[createDate] [DATETIME] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjects](
	[learningObjectID] [INT] IDENTITY(1,1) NOT NULL,
	[learningObjectTitle] [VARCHAR](255) NULL,
	[learningObjectCategoryID] [INT] NULL,
	[developmentToolID] [INT] NULL,
	-- [programTypeID] [INT] NULL,
	-- [courseCategoryID] [INT] NULL,
	[bloomsTaxonomyID] [INT] NULL,
	-- [keywords] [VARCHAR](255) NULL,
	-- [essentials] [VARCHAR](255) NULL,
	-- [mapping] [VARCHAR](1200) NULL,
	[availabilityID] [INT] NULL,
	[createdForPartnerID] [VARCHAR](255) NULL,
	[description] [VARCHAR](1200) NULL,
	[outcomes] [VARCHAR](1200) NULL,
	-- [notes] [VARCHAR](8000) NULL,
	[landingPagesRequested] [VARCHAR](255) NULL,
	[team] [VARCHAR](250) NULL,
	-- [author] [VARCHAR](255) NULL,
	-- [administratorOnly] [BIT] NULL,
	[forTesting] [BIT] NULL,
	[videoID] [INT] NULL,
	[jsonFileName] [VARCHAR](250) NULL,
	-- [type] [VARCHAR](255) NULL,
	-- [packageLocation] [VARCHAR](255) NULL,
	-- [uploadSource] [VARCHAR](255) NULL,
	[templateVersion] [VARCHAR](50) NULL,
	[originalJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[developmentJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[productionJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[active] [BIT] NOT NULL,
	[updatedBy] [INT] NULL,
	-- [usernameLearningObjectUpdate] [VARCHAR](100) NULL,
	-- [learningObjectUpdateDate] [DATETIME] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	[updateDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_learningObjects] PRIMARY KEY CLUSTERED 
(
	[learningObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [learningObjectsIMPORT](
-- -- ? No longer needed? -- 09/06/2024 MF
-- -- * Still used in convertJSONToSQL.js -- 09/12/2024 MF
-- 	[learningObjectID] [INT] IDENTITY(1,1) NOT NULL,
-- 	[learningObjectTitle] [VARCHAR](255) NULL,
-- 	[learningObjectCategoryID] [INT] NULL,
-- 	[developmentToolID] [INT] NULL,
-- 	-- [programTypeID] [INT] NULL,
-- 	-- [courseCategoryID] [INT] NULL,
-- 	[bloomsTaxonomyID] [INT] NULL,
-- 	-- [keywords] [VARCHAR](255) NULL,
-- 	-- [essentials] [VARCHAR](255) NULL,
-- 	-- [mapping] [VARCHAR](1200) NULL,
-- 	[availability] [INT] NULL,
-- 	[createdForPartnerID] [VARCHAR](255) NULL,
-- 	[description] [VARCHAR](1200) NULL,
-- 	[outcomes] [VARCHAR](1200) NULL,
-- 	-- [notes] [VARCHAR](8000) NULL,
-- 	[landingPagesRequested] [VARCHAR](255) NULL,
-- 	[team] [VARCHAR](250) NULL,
-- 	-- [author] [VARCHAR](255) NULL,
-- 	-- [administratorOnly] [BIT] NULL,
-- 	[forTesting] [BIT] NULL,
-- 	[videoID] [INT] NULL,
-- 	[jsonFileName] [VARCHAR](250) NULL,
-- 	-- [type] [VARCHAR](255) NULL,
-- 	-- [packageLocation] [VARCHAR](255) NULL,
-- 	-- [uploadSource] [VARCHAR](255) NULL,
-- 	[templateVersion] [VARCHAR](50) NULL,
-- 	[originalJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[developmentJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[productionJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[active] [BIT] NOT NULL,
-- 	[updatedBy] [INT] NULL,
-- 	-- [usernameLearningObjectUpdate] [VARCHAR](100) NULL,
-- 	-- [learningObjectUpdateDate] [DATETIME] NOT NULL,
-- 	[createDate] [DATETIME] NOT NULL,
-- 	[updateDate] [DATETIME] NOT NULL,
--  CONSTRAINT [PK_learningObjectsIMPORT] PRIMARY KEY CLUSTERED 
-- (
-- 	[learningObjectID] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
-- ) ON [PRIMARY]
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectsUploads](
	[learningObjectID] [INT] NOT NULL,
	[uploadSource] [VARCHAR](255) NOT NULL,
	[currentVersion] [BIT] NOT NULL,
	[updatedBy] [INT] NULL,
	[uploadDate] [DATETIME] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectsDevelopment](
	[learningObjectTitle] [VARCHAR](255) NULL,
	[learningObjectCategoryID] [INT] NULL,
	[developmentToolID] [INT] NULL,
	[team] [VARCHAR](250) NULL,
	[jsonFileName] [VARCHAR](250) NULL,
	[templateVersion] [VARCHAR](50) NULL,
	[originalJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[developmentJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[productionJSONData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectCourseCategories](
	[learningObjectID] [INT] NOT NULL,
	[courseCategoryID] [INT] NOT NULL,
	[updatedBy] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [learningObjectEssentialsOLD](
-- 	[learningObjectID] [INT] NOT NULL,
-- 	[essentialID] [INT] NOT NULL
-- ) ON [PRIMARY]
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [learningObjectEssentials](
-- 	[learningObjectID] [INT] NOT NULL,
-- 	[essentialID] [INT] NOT NULL,
-- 	[updatedBy] [INT] NULL,
-- 	[createDate] [DATETIME] NOT NULL
-- ) ON [PRIMARY]
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectCompetencies](
	[learningObjectID] [INT] NOT NULL,
	[domainID] [VARCHAR](50) NOT NULL,
	[competencyID] [VARCHAR](50) NOT NULL,
	[subcompetencyID] [VARCHAR](50) NULL,
	[updatedBy] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectKeywords](
	[learningObjectID] [INT] NOT NULL,
	[keywordID] [INT] NOT NULL,
	[keyword] [VARCHAR](255) NOT NULL,
	[updatedBy] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [keywords](
	[keywordID] [INT] IDENTITY(1,1) NOT NULL,
	[keyword] [VARCHAR](255) NOT NULL,
	[updatedBy] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
 CONSTRAINT [PK_keywords] PRIMARY KEY CLUSTERED 
(
	[keywordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectContentReviews](
	[learningObjectID] [INT] NOT NULL,
	[passed] [BIT] NOT NULL,
	[notes] [VARCHAR](1200) NULL,
	[updatedBy] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectNotes](
	[learningObjectID] [INT] NOT NULL,
	[notes] [VARCHAR](1200) NULL,
	[updatedBy] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [medicalAbbreviations](
	[medicalAbbreviation] [VARCHAR](255) NULL,
	[medicalTerm] [VARCHAR](255) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [courseCategories](
	[courseCategoryID] [INT] IDENTITY(1,1) NOT NULL,
	[courseCategory] [VARCHAR](100) NULL,
	[reviewPeriodMonths] [INT] NULL,
	[programTypeID] [INT] NULL,
	[updatedBy] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_courseCategories] PRIMARY KEY CLUSTERED 
(
	[courseCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [programTypes](
	[programTypeID] [INT] IDENTITY(1,1) NOT NULL,
	[programType] [VARCHAR](255) NULL,
	[updatedBy] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_programTypes] PRIMARY KEY CLUSTERED 
(
	[programTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [associatedData](
	[associatedDataID] [INT] IDENTITY(1,1) NOT NULL,
	[associatedDataCategoryID] [INT] NULL,
	[name] [VARCHAR](50) NULL,
	[description] [VARCHAR](50) NULL,
	[sortID] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_associatedData] PRIMARY KEY CLUSTERED 
(
	[associatedDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [associatedDataCategories](
	[associatedDataCategoryID] [INT] IDENTITY(1,1) NOT NULL,
	[name] [VARCHAR](50) NULL,
	[description] [VARCHAR](50) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_associatedDataCategories] PRIMARY KEY CLUSTERED 
(
	[associatedDataCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectCategories](
	[learningObjectCategoryID] [INT] IDENTITY(1,1) NOT NULL,
	[categoryName] [VARCHAR](250) NULL,
	[description] [VARCHAR](1200) NULL,
	[sortID] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_learningObjectCategories] PRIMARY KEY CLUSTERED 
(
	[learningObjectCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [nursingEssentials](
-- 	[essentialID] [INT] NOT NULL,
-- 	[essentialNumber] [VARCHAR](50) NULL,
-- 	[degree] [VARCHAR](50) NULL, -- * BSN, MSN, DNP
-- 	[essentialName] [VARCHAR](250) NULL,
-- 	[active] [BIT] NOT NULL,
-- 	[createDate] [DATETIME] NOT NULL,
--  CONSTRAINT [PK_nursingEssentials] PRIMARY KEY CLUSTERED 
-- (
-- 	[essentialID] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
-- ) ON [PRIMARY]
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [competencyDomains](
	[domainID] [VARCHAR](50) NOT NULL,
	[domainName] [VARCHAR](1000) NULL,
	[programName] [VARCHAR](250) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_competencyDomains] PRIMARY KEY CLUSTERED 
(
	[domainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [competencies](
-- ? Add composite key? -- 07/18/2023 MF
	[domainID] [VARCHAR](50) NOT NULL,
	[competencyID] [VARCHAR](50) NOT NULL,
	[competencyName] [VARCHAR](1000) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [subcompetencies](
-- ? Add composite key? -- 07/18/2023 MF
	[domainID] [VARCHAR](50) NOT NULL,
	[competencyID] [VARCHAR](50) NOT NULL,
	[subcompetencyID] [VARCHAR](50) NOT NULL,
	[level] [VARCHAR](250) NULL,
	[subcompetencyName] [VARCHAR](1000) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [users](
	[userID] [INT] IDENTITY(1,1) NOT NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[username] [VARCHAR](255) NULL,
	[password] [VARCHAR](255) NULL,
	[partnerID] [INT] NULL,
	[userRoleID] [INT] NULL,
	[shared] [BIT] NULL,
	[requestedBy] [VARCHAR](250) NULL,
	[requestDate] [DATETIME] NULL,
	[notes] [VARCHAR](8000) NULL,
	[lastLogin] [DATETIME] NULL,
	[updatedBy] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	[updateDate] [DATETIME] NULL,
	[inactiveDate] [DATETIME] NULL
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [userRoles](
	[userRoleID] [INT] IDENTITY(1,1) NOT NULL,
	[userRole] [VARCHAR](255) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_userRoles] PRIMARY KEY CLUSTERED 
(
	[userRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [userSearches](
	[userID] [INT] NOT NULL,
	[userSearchLabel] [VARCHAR](8000) NULL,
	[userSearch] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [userLists](
	[userListID] [INT] IDENTITY(1,1) NOT NULL,
	[userID] [INT] NOT NULL,
	[listName] [VARCHAR](255) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_userLists] PRIMARY KEY CLUSTERED 
(
	[userListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [userListItems](
	[userListItemID] [INT] IDENTITY(1,1) NOT NULL,
	[userListID] [INT] NOT NULL,
	[learningObjectID] [INT] NOT NULL,
	[notes] [VARCHAR](8000) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_userListItems] PRIMARY KEY CLUSTERED 
(
	[userListItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lmsConnections](
	[connectionID] [INT] IDENTITY(1,1) NOT NULL,
	[partnerID] [INT] NULL,
	[connectionName] [VARCHAR](550) NOT NULL,
	[connectionKey] [VARCHAR](550) NOT NULL,
	[secret] [VARCHAR](550) NULL,
	[lmsName] [VARCHAR](250) NULL,
	[lmsVersion] [VARCHAR](250) NULL,
	[ltiConnection] [BIT] NULL,
	[requestedBy] [VARCHAR](250) NULL,
	[requestDate] [DATETIME] NULL,
	[notes] [VARCHAR](8000) NULL,
	[updatedBy] [INT] NULL, -- TODO: Add to table or use logging instead? -- 10/04/2023 MF
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	[updateDate] [DATETIME] NULL, -- TODO: Add to table or use logging instead? -- 10/04/2023 MF
	[inactiveDate] [DATETIME] NULL
 CONSTRAINT [PK_lmsConnections] PRIMARY KEY CLUSTERED 
(
	[connectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [issues](
	[issueID] [INT] IDENTITY(1,1) NOT NULL,
	[summary] [VARCHAR](200) NULL,
	[issueDetails] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[environment] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[learningObject] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[user] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[dateEntered] [DATETIME] NULL,
	[timestamp] [DATETIME] NULL,
 CONSTRAINT [PK_issues] PRIMARY KEY CLUSTERED 
(
	[issueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [statements](
-- 	[actor] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[verb] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[object] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[result] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[context] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[timestamp] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
-- 	[createDate] [DATETIME] NULL,
-- 	[timestampServer] [DATETIME] NULL
-- ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsage](
	[learningObjectID] [VARCHAR](100) NULL, -- ? [learningObjectID] [INT] NULL,
	[request_uri] [VARCHAR](1000) NULL,

	-- * Protocol parameters -- 07/19/2023 MF
	[lti_message_type] [VARCHAR](1000) NULL,
	[lti_version] [VARCHAR](1000) NULL,

	-- * OAuth parameters -- 07/19/2023 MF
	[oauth_callback] [VARCHAR](1000) NULL,
	[oauth_consumer_key] [VARCHAR](1000) NULL,
	[oauth_nonce] [VARCHAR](1000) NULL,
	[oauth_signature] [VARCHAR](1000) NULL,
	[oauth_signature_method] [VARCHAR](1000) NULL,
	[oauth_timestamp] [VARCHAR](1000) NULL,
	[oauth_version] [VARCHAR](1000) NULL,

	-- * Context parameters -- 07/19/2023 MF
	[context_id] [VARCHAR](1000) NULL,
	[context_label] [VARCHAR](100) NULL,
	[context_title] [VARCHAR](1000) NULL,
	[context_type] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[resource_link_id] [VARCHAR](1000) NULL,
	[resource_link_title] [VARCHAR](1000) NULL,

	-- * User parameters -- 07/19/2023 MF
	-- * These data points contain personally identifiable information about students: lis_person_contact_email_primary, lis_person_name_family, lis_person_name_full, lis_person_name_given -- 07/19/2023 MF
	[lis_person_contact_email_primary] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_family] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_full] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_given] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[roles] [VARCHAR](1000) NULL,
	[user_id] [VARCHAR](1000) NULL,

	-- * Consumer parameters -- 07/19/2023 MF
	[tool_consumer_info_product_family_code] [VARCHAR](100) NULL,
	[tool_consumer_info_version] [VARCHAR](1000) NULL,
	[tool_consumer_instance_contact_email] [VARCHAR](1000) NULL,
	[tool_consumer_instance_description] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[tool_consumer_instance_guid] [VARCHAR](1000) NULL,
	[tool_consumer_instance_name] [VARCHAR](100) NULL,
	[tool_consumer_instance_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * Presentation parameters -- 07/19/2023 MF
	[launch_presentation_css_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[launch_presentation_document_target] [VARCHAR](1000) NULL,
	[launch_presentation_locale] [VARCHAR](1000) NULL,
	[launch_presentation_return_url] [VARCHAR](1000) NULL,

	-- * Grade service parameters -- 07/19/2023 MF
	[lis_course_offering_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_course_section_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_outcome_service_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_result_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * LTI Deep Linking launch parameters -- 07/19/2023 MF
	-- [accept_media_type] [VARCHAR](1000) NULL,
	-- [accept_presentation_document_targets] [VARCHAR](1000) NULL,
	-- [content_item_return_url] [VARCHAR](1000) NULL,
	-- [data] [VARCHAR](1000) NULL,

	-- * Custom Canvas values -- 07/19/2023 MF
	[custom_canvas_enrollment_state] [VARCHAR](1000) NULL,
	[ext_roles] [VARCHAR](1000) NULL,

	-- [dateEntered] [DATETIME] NULL,
	-- [timestamp] [VARCHAR](100) NULL
	[timestamp] [DATETIME] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageScrubbed](
	[learningObjectID] [VARCHAR](100) NULL, -- ? [learningObjectID] [INT] NULL,
	[request_uri] [VARCHAR](1000) NULL,
	[partnerID] [INT] NULL,
	[partnerName] [VARCHAR](255) NULL,
	[learningObjectTitle] [VARCHAR](255) NULL,

	-- * Protocol parameters -- 07/19/2023 MF
	[lti_message_type] [VARCHAR](1000) NULL,
	[lti_version] [VARCHAR](1000) NULL,

	-- * OAuth parameters -- 07/19/2023 MF
	[oauth_callback] [VARCHAR](1000) NULL,
	[oauth_consumer_key] [VARCHAR](1000) NULL,
	[oauth_nonce] [VARCHAR](1000) NULL,
	[oauth_signature] [VARCHAR](1000) NULL,
	[oauth_signature_method] [VARCHAR](1000) NULL,
	[oauth_timestamp] [VARCHAR](1000) NULL,
	[oauth_version] [VARCHAR](1000) NULL,

	-- * Context parameters -- 07/19/2023 MF
	[context_id] [VARCHAR](1000) NULL,
	[context_label] [VARCHAR](100) NULL,
	[context_title] [VARCHAR](1000) NULL,
	[context_type] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[resource_link_id] [VARCHAR](1000) NULL,
	[resource_link_title] [VARCHAR](1000) NULL,

	-- * User parameters -- 07/19/2023 MF
	-- * These data points contain personally identifiable information about students: lis_person_contact_email_primary, lis_person_name_family, lis_person_name_full, lis_person_name_given -- 07/19/2023 MF
	[lis_person_contact_email_primary] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_family] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_full] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_given] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[roles] [VARCHAR](1000) NULL,
	[user_id] [VARCHAR](1000) NULL,

	-- * Consumer parameters -- 07/19/2023 MF
	[tool_consumer_info_product_family_code] [VARCHAR](100) NULL,
	[tool_consumer_info_version] [VARCHAR](1000) NULL,
	[tool_consumer_instance_contact_email] [VARCHAR](1000) NULL,
	[tool_consumer_instance_description] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[tool_consumer_instance_guid] [VARCHAR](1000) NULL,
	[tool_consumer_instance_name] [VARCHAR](100) NULL,
	[tool_consumer_instance_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * Presentation parameters -- 07/19/2023 MF
	[launch_presentation_css_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[launch_presentation_document_target] [VARCHAR](1000) NULL,
	[launch_presentation_locale] [VARCHAR](1000) NULL,
	[launch_presentation_return_url] [VARCHAR](1000) NULL,

	-- * Grade service parameters -- 07/19/2023 MF
	[lis_course_offering_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_course_section_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_outcome_service_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_result_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * LTI Deep Linking launch parameters -- 07/19/2023 MF
	-- [accept_media_type] [VARCHAR](1000) NULL,
	-- [accept_presentation_document_targets] [VARCHAR](1000) NULL,
	-- [content_item_return_url] [VARCHAR](1000) NULL,
	-- [data] [VARCHAR](1000) NULL,

	-- * Custom Canvas values -- 07/19/2023 MF
	[custom_canvas_enrollment_state] [VARCHAR](1000) NULL,
	[ext_roles] [VARCHAR](1000) NULL,

	-- [dateEntered] [DATETIME] NULL,
	[timestamp] [VARCHAR](100) NULL,

	[learningObjectIDORIGINAL] [VARCHAR](100) NULL, -- ? [learningObjectID] [INT] NULL,
	[request_uriORIGINAL] [VARCHAR](1000) NULL,

	-- * Protocol parameters -- 07/19/2023 MF
	[lti_message_typeORIGINAL] [VARCHAR](1000) NULL,
	[lti_versionORIGINAL] [VARCHAR](1000) NULL,

	-- * OAuth parameters -- 07/19/2023 MF
	[oauth_callbackORIGINAL] [VARCHAR](1000) NULL,
	[oauth_consumer_keyORIGINAL] [VARCHAR](1000) NULL,
	[oauth_nonceORIGINAL] [VARCHAR](1000) NULL,
	[oauth_signatureORIGINAL] [VARCHAR](1000) NULL,
	[oauth_signature_methodORIGINAL] [VARCHAR](1000) NULL,
	[oauth_timestampORIGINAL] [VARCHAR](1000) NULL,
	[oauth_versionORIGINAL] [VARCHAR](1000) NULL,

	-- * Context parameters -- 07/19/2023 MF
	[context_idORIGINAL] [VARCHAR](1000) NULL,
	[context_labelORIGINAL] [VARCHAR](100) NULL,
	[context_titleORIGINAL] [VARCHAR](1000) NULL,
	[context_typeORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[resource_link_idORIGINAL] [VARCHAR](1000) NULL,
	[resource_link_titleORIGINAL] [VARCHAR](1000) NULL,

	-- * User parameters -- 07/19/2023 MF
	-- * These data points contain personally identifiable information about students: lis_person_contact_email_primary, lis_person_name_family, lis_person_name_full, lis_person_name_given -- 07/19/2023 MF
	[lis_person_contact_email_primaryORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_familyORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_fullORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_givenORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[rolesORIGINAL] [VARCHAR](1000) NULL,
	[user_idORIGINAL] [VARCHAR](1000) NULL,

	-- * Consumer parameters -- 07/19/2023 MF
	[tool_consumer_info_product_family_codeORIGINAL] [VARCHAR](100) NULL,
	[tool_consumer_info_versionORIGINAL] [VARCHAR](1000) NULL,
	[tool_consumer_instance_contact_emailORIGINAL] [VARCHAR](1000) NULL,
	[tool_consumer_instance_descriptionORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[tool_consumer_instance_guidORIGINAL] [VARCHAR](1000) NULL,
	[tool_consumer_instance_nameORIGINAL] [VARCHAR](100) NULL,
	[tool_consumer_instance_urlORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * Presentation parameters -- 07/19/2023 MF
	[launch_presentation_css_urlORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[launch_presentation_document_targetORIGINAL] [VARCHAR](1000) NULL,
	[launch_presentation_localeORIGINAL] [VARCHAR](1000) NULL,
	[launch_presentation_return_urlORIGINAL] [VARCHAR](1000) NULL,

	-- * Grade service parameters -- 07/19/2023 MF
	[lis_course_offering_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_course_section_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_outcome_service_urlORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_result_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * LTI Deep Linking launch parameters -- 07/19/2023 MF
	-- [accept_media_typeORIGINAL] [VARCHAR](1000) NULL,
	-- [accept_presentation_document_targetsORIGINAL] [VARCHAR](1000) NULL,
	-- [content_item_return_urlORIGINAL] [VARCHAR](1000) NULL,
	-- [dataORIGINAL] [VARCHAR](1000) NULL,

	-- * Custom Canvas values -- 07/19/2023 MF
	[custom_canvas_enrollment_stateORIGINAL] [VARCHAR](1000) NULL,
	[ext_rolesORIGINAL] [VARCHAR](1000) NULL,

	-- [dateEnteredORIGINAL] [DATETIME] NULL,
	[timestampORIGINAL] [VARCHAR](100) NULL -- ? Needed? -- 07/19/2023 MF

) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageScrubbedIMPORT](
	[learningObjectID] [VARCHAR](100) NULL, -- ? [learningObjectID] [INT] NULL,
	[request_uri] [VARCHAR](1000) NULL,
	[partnerID] [INT] NULL,
	[partnerName] [VARCHAR](255) NULL,
	[learningObjectTitle] [VARCHAR](255) NULL,

	-- * Protocol parameters -- 07/19/2023 MF
	[lti_message_type] [VARCHAR](1000) NULL,
	[lti_version] [VARCHAR](1000) NULL,

	-- * OAuth parameters -- 07/19/2023 MF
	[oauth_callback] [VARCHAR](1000) NULL,
	[oauth_consumer_key] [VARCHAR](1000) NULL,
	[oauth_nonce] [VARCHAR](1000) NULL,
	[oauth_signature] [VARCHAR](1000) NULL,
	[oauth_signature_method] [VARCHAR](1000) NULL,
	[oauth_timestamp] [VARCHAR](1000) NULL,
	[oauth_version] [VARCHAR](1000) NULL,

	-- * Context parameters -- 07/19/2023 MF
	[context_id] [VARCHAR](1000) NULL,
	[context_label] [VARCHAR](100) NULL,
	[context_title] [VARCHAR](1000) NULL,
	[context_type] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[resource_link_id] [VARCHAR](1000) NULL,
	[resource_link_title] [VARCHAR](1000) NULL,

	-- * User parameters -- 07/19/2023 MF
	-- * These data points contain personally identifiable information about students: lis_person_contact_email_primary, lis_person_name_family, lis_person_name_full, lis_person_name_given -- 07/19/2023 MF
	[lis_person_contact_email_primary] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_family] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_full] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_given] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[roles] [VARCHAR](1000) NULL,
	[user_id] [VARCHAR](1000) NULL,

	-- * Consumer parameters -- 07/19/2023 MF
	[tool_consumer_info_product_family_code] [VARCHAR](100) NULL,
	[tool_consumer_info_version] [VARCHAR](1000) NULL,
	[tool_consumer_instance_contact_email] [VARCHAR](1000) NULL,
	[tool_consumer_instance_description] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[tool_consumer_instance_guid] [VARCHAR](1000) NULL,
	[tool_consumer_instance_name] [VARCHAR](100) NULL,
	[tool_consumer_instance_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * Presentation parameters -- 07/19/2023 MF
	[launch_presentation_css_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[launch_presentation_document_target] [VARCHAR](1000) NULL,
	[launch_presentation_locale] [VARCHAR](1000) NULL,
	[launch_presentation_return_url] [VARCHAR](1000) NULL,

	-- * Grade service parameters -- 07/19/2023 MF
	[lis_course_offering_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_course_section_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_outcome_service_url] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_result_sourcedid] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * LTI Deep Linking launch parameters -- 07/19/2023 MF
	-- [accept_media_type] [VARCHAR](1000) NULL,
	-- [accept_presentation_document_targets] [VARCHAR](1000) NULL,
	-- [content_item_return_url] [VARCHAR](1000) NULL,
	-- [data] [VARCHAR](1000) NULL,

	-- * Custom Canvas values -- 07/19/2023 MF
	[custom_canvas_enrollment_state] [VARCHAR](1000) NULL,
	[ext_roles] [VARCHAR](1000) NULL,

	-- [dateEntered] [DATETIME] NULL,
	[timestamp] [VARCHAR](100) NULL,

	[learningObjectIDORIGINAL] [VARCHAR](100) NULL, -- ? [learningObjectID] [INT] NULL,
	[request_uriORIGINAL] [VARCHAR](1000) NULL,

	-- * Protocol parameters -- 07/19/2023 MF
	[lti_message_typeORIGINAL] [VARCHAR](1000) NULL,
	[lti_versionORIGINAL] [VARCHAR](1000) NULL,

	-- * OAuth parameters -- 07/19/2023 MF
	[oauth_callbackORIGINAL] [VARCHAR](1000) NULL,
	[oauth_consumer_keyORIGINAL] [VARCHAR](1000) NULL,
	[oauth_nonceORIGINAL] [VARCHAR](1000) NULL,
	[oauth_signatureORIGINAL] [VARCHAR](1000) NULL,
	[oauth_signature_methodORIGINAL] [VARCHAR](1000) NULL,
	[oauth_timestampORIGINAL] [VARCHAR](1000) NULL,
	[oauth_versionORIGINAL] [VARCHAR](1000) NULL,

	-- * Context parameters -- 07/19/2023 MF
	[context_idORIGINAL] [VARCHAR](1000) NULL,
	[context_labelORIGINAL] [VARCHAR](100) NULL,
	[context_titleORIGINAL] [VARCHAR](1000) NULL,
	[context_typeORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[resource_link_idORIGINAL] [VARCHAR](1000) NULL,
	[resource_link_titleORIGINAL] [VARCHAR](1000) NULL,

	-- * User parameters -- 07/19/2023 MF
	-- * These data points contain personally identifiable information about students: lis_person_contact_email_primary, lis_person_name_family, lis_person_name_full, lis_person_name_given -- 07/19/2023 MF
	[lis_person_contact_email_primaryORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_familyORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_fullORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_name_givenORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[rolesORIGINAL] [VARCHAR](1000) NULL,
	[user_idORIGINAL] [VARCHAR](1000) NULL,

	-- * Consumer parameters -- 07/19/2023 MF
	[tool_consumer_info_product_family_codeORIGINAL] [VARCHAR](100) NULL,
	[tool_consumer_info_versionORIGINAL] [VARCHAR](1000) NULL,
	[tool_consumer_instance_contact_emailORIGINAL] [VARCHAR](1000) NULL,
	[tool_consumer_instance_descriptionORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[tool_consumer_instance_guidORIGINAL] [VARCHAR](1000) NULL,
	[tool_consumer_instance_nameORIGINAL] [VARCHAR](100) NULL,
	[tool_consumer_instance_urlORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * Presentation parameters -- 07/19/2023 MF
	[launch_presentation_css_urlORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[launch_presentation_document_targetORIGINAL] [VARCHAR](1000) NULL,
	[launch_presentation_localeORIGINAL] [VARCHAR](1000) NULL,
	[launch_presentation_return_urlORIGINAL] [VARCHAR](1000) NULL,

	-- * Grade service parameters -- 07/19/2023 MF
	[lis_course_offering_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_course_section_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_outcome_service_urlORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_person_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF
	[lis_result_sourcedidORIGINAL] [VARCHAR](1000) NULL, -- * Not in the Canvas implementation -- 07/19/2023 MF

	-- * LTI Deep Linking launch parameters -- 07/19/2023 MF
	-- [accept_media_typeORIGINAL] [VARCHAR](1000) NULL,
	-- [accept_presentation_document_targetsORIGINAL] [VARCHAR](1000) NULL,
	-- [content_item_return_urlORIGINAL] [VARCHAR](1000) NULL,
	-- [dataORIGINAL] [VARCHAR](1000) NULL,

	-- * Custom Canvas values -- 07/19/2023 MF
	[custom_canvas_enrollment_stateORIGINAL] [VARCHAR](1000) NULL,
	[ext_rolesORIGINAL] [VARCHAR](1000) NULL,

	-- [dateEnteredORIGINAL] [DATETIME] NULL,
	[timestampORIGINAL] [VARCHAR](100) NULL -- ? Needed? -- 07/19/2023 MF

) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageCourses](
	[partnerID] [INT] NULL,
	[partnerName] [VARCHAR](255) NULL,
	[context_titleORIGINAL] [VARCHAR](255) NULL,
	[context_title] [VARCHAR](255) NULL,
	[context_labelORIGINAL] [VARCHAR](100) NULL,
	[context_label] [VARCHAR](100) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageCourseList](
	[partnerName] [VARCHAR](255) NULL,
	[courseCodeID] [VARCHAR](100) NULL,
	[courseCode] [VARCHAR](100) NULL,
	[courseNumber] [VARCHAR](100) NULL,
	[courseTitle] [VARCHAR](255) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageCourseListCurrent](
	[partnerName] [VARCHAR](255) NULL,
	[courseCodeID] [VARCHAR](100) NULL,
	[learningObjectID] [INT] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotals](
	[learningObjectID] [INT] NOT NULL,
	[usageCount] [INT] NULL,
	[learningObjectCount] [INT] NULL,
	[minimumCountTotal] [INT] NULL,
	[maximumCountTotal] [INT] NULL,
	[averageCountTotal] [INT] NULL,
	[learningObjectCountRankingTotal] [INT] NULL,
	[learningObjectCountDenseRankingTotal] [INT] NULL,
	[learningObjectCountRankingTotalOutOf] [INT] NULL,
	[learningObjectCountDenseRankingTotalOutOf] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotalsIMPORT](
	[learningObjectID] [INT] NOT NULL,
	[usageCount] [INT] NULL,
	[learningObjectCount] [INT] NULL,
	[minimumCountTotal] [INT] NULL,
	[maximumCountTotal] [INT] NULL,
	[averageCountTotal] [INT] NULL,
	[learningObjectCountRankingTotal] [INT] NULL,
	[learningObjectCountDenseRankingTotal] [INT] NULL,
	[learningObjectCountRankingTotalOutOf] [INT] NULL,
	[learningObjectCountDenseRankingTotalOutOf] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotalsPerYear](
	[learningObjectID] [INT] NOT NULL,
	[year] [VARCHAR](50) NOT NULL,
	[usageCount] [INT] NULL,
	[learningObjectCount] [INT] NULL,
	[minimumCountTotal] [INT] NULL,
	[maximumCountTotal] [INT] NULL,
	[averageCountTotal] [INT] NULL,
	[learningObjectCountRankingTotal] [INT] NULL,
	[learningObjectCountDenseRankingTotal] [INT] NULL,
	[learningObjectCountRankingTotalOutOf] [INT] NULL,
	[learningObjectCountDenseRankingTotalOutOf] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotalsPerYearIMPORT](
	[learningObjectID] [INT] NOT NULL,
	[year] [VARCHAR](50) NOT NULL,
	[usageCount] [INT] NULL,
	[learningObjectCount] [INT] NULL,
	[minimumCountTotal] [INT] NULL,
	[maximumCountTotal] [INT] NULL,
	[averageCountTotal] [INT] NULL,
	[learningObjectCountRankingTotal] [INT] NULL,
	[learningObjectCountDenseRankingTotal] [INT] NULL,
	[learningObjectCountRankingTotalOutOf] [INT] NULL,
	[learningObjectCountDenseRankingTotalOutOf] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotalsPerYearPerPartner](
	[learningObjectID] [INT] NOT NULL,
	[partnerName] [VARCHAR](255) NULL,
	[year] [VARCHAR](50) NOT NULL,
	[usageCount] [INT] NULL,
	-- [learningObjectCount] [INT] NULL,
	-- [minimumCountTotal] [INT] NULL,
	-- [maximumCountTotal] [INT] NULL,
	-- [averageCountTotal] [INT] NULL,
	-- [learningObjectCountRankingTotal] [INT] NULL,
	-- [learningObjectCountDenseRankingTotal] [INT] NULL,
	-- [learningObjectCountRankingTotalOutOf] [INT] NULL,
	-- [learningObjectCountDenseRankingTotalOutOf] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotalsPerYearPerPartnerIMPORT](
	[learningObjectID] [INT] NOT NULL,
	[partnerName] [VARCHAR](255) NULL,
	[year] [VARCHAR](50) NOT NULL,
	[usageCount] [INT] NULL,
	-- [learningObjectCount] [INT] NULL,
	-- [minimumCountTotal] [INT] NULL,
	-- [maximumCountTotal] [INT] NULL,
	-- [averageCountTotal] [INT] NULL,
	-- [learningObjectCountRankingTotal] [INT] NULL,
	-- [learningObjectCountDenseRankingTotal] [INT] NULL,
	-- [learningObjectCountRankingTotalOutOf] [INT] NULL,
	-- [learningObjectCountDenseRankingTotalOutOf] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotalsPerSemesterPerCourse](
	[learningObjectID] [INT] NOT NULL,
	-- [partnerID] [INT] NOT NULL,
	[reportingTermID] [INT] NOT NULL,
	[courseCodeID] [VARCHAR](100) NOT NULL,
	[usageCount] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectUsageTotalsPerSemesterPerCourseIMPORT](
	[learningObjectID] [INT] NOT NULL,
	-- [partnerID] [INT] NOT NULL,
	[reportingTermID] [INT] NOT NULL,
	[courseCodeID] [VARCHAR](100) NOT NULL,
	[usageCount] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

-- * In the uploads directory on the server, run this Linux command: find -type f -exec ls -la {} \; | cut -d ' ' -f 6- > allUploadsFind.txt -- 09/10/2024 MF
-- * From https://superuser.com/questions/228529/how-to-recursively-list-all-files-with-timestamps-and-full-path -- 09/10/2024 MF
-- * Create an SQL insert file out of it to insert the records into learningObjectServerFiles. -- 09/10/2024 MF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [learningObjectServerFiles](
	[learningObjectID] [INT] NULL,
	[uploadSource] [VARCHAR](255) NULL,
	[uploadDate] [VARCHAR](255) NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [logs] ADD CONSTRAINT [DF_logs_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [logs2024] ADD CONSTRAINT [DF_logslogs2024_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [logs2023] ADD CONSTRAINT [DF_logslogs2023_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [logs2022] ADD CONSTRAINT [DF_logs2022_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [requestErrorLogs] ADD CONSTRAINT [DF_requestErrorLogs_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [computerLogs] ADD CONSTRAINT [DF_computerLogs_timestamp] DEFAULT(getdate()) FOR [timestamp]
GO
ALTER TABLE [computerLogs2024] ADD CONSTRAINT [DF_computerLogs2024_timestamp] DEFAULT(getdate()) FOR [timestamp]
GO
ALTER TABLE [computerLogs2023] ADD CONSTRAINT [DF_computerLogs2023_timestamp] DEFAULT(getdate()) FOR [timestamp]
GO
ALTER TABLE [computerLogs2022] ADD CONSTRAINT [DF_computerLogs2022_timestamp] DEFAULT(getdate()) FOR [timestamp]
GO
ALTER TABLE [computerLogs2021] ADD CONSTRAINT [DF_computerLogs2021_timestamp] DEFAULT(getdate()) FOR [timestamp]
GO
-- ALTER TABLE [statements] ADD CONSTRAINT [DF_statements_timestampServer] DEFAULT (GETDATE()) FOR [timestampServer]
-- GO
ALTER TABLE [databaseErrorLogs] ADD CONSTRAINT [DF_databaseErrorLogs_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [errorLogs] ADD CONSTRAINT [DF_errorLogs_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [errorLogsJSON] ADD CONSTRAINT [DF_errorLogsJSON_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [applicationSettings] ADD CONSTRAINT [DF_applicationSettings_active] DEFAULT((1)) FOR [active]
GO
ALTER TABLE [learningObjects] ADD CONSTRAINT [DF_learningObjects_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjects] ADD CONSTRAINT [DF_learningObjects_updateDate] DEFAULT (GETDATE()) FOR [updateDate]
GO
-- ALTER TABLE [learningObjects] ADD CONSTRAINT [DF_learningObjects_learningObjectUpdateDate] DEFAULT (GETDATE()) FOR [learningObjectUpdateDate]
-- GO
ALTER TABLE [learningObjects] ADD CONSTRAINT [DF_learningObjects_active] DEFAULT ((1)) FOR [active]
GO
-- ALTER TABLE [learningObjectsIMPORT] ADD CONSTRAINT [DF_learningObjectsIMPORT_createDate] DEFAULT (GETDATE()) FOR [createDate]
-- GO
-- ALTER TABLE [learningObjectsIMPORT] ADD CONSTRAINT [DF_learningObjectsIMPORT_updateDate] DEFAULT (GETDATE()) FOR [updateDate]
-- GO
-- -- ALTER TABLE [learningObjectsIMPORT] ADD CONSTRAINT [DF_learningObjectsIMPORT_learningObjectUpdateDate] DEFAULT (GETDATE()) FOR [learningObjectUpdateDate]
-- -- GO
-- ALTER TABLE [learningObjectsIMPORT] ADD CONSTRAINT [DF_learningObjectsIMPORT_active] DEFAULT ((1)) FOR [active]
-- GO
ALTER TABLE [learningObjectsUploads] ADD CONSTRAINT [DF_learningObjectsUploads_currentVersion] DEFAULT ((0)) FOR [currentVersion]
GO
ALTER TABLE [learningObjectsUploads] ADD CONSTRAINT [DF_learningObjectsUploads_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectsUploads] ADD CONSTRAINT [DF_learningObjectsUploads_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [learningObjectsDevelopment] ADD CONSTRAINT [DF_learningObjectsDevelopment_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectsDevelopment] ADD CONSTRAINT [DF_learningObjectsDevelopment_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [learningObjectCourseCategories] ADD CONSTRAINT [DF_learningObjectCourseCategories_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
-- ALTER TABLE [learningObjectEssentials] ADD CONSTRAINT [DF_learningObjectEssentials_createDate] DEFAULT (GETDATE()) FOR [createDate]
-- GO
ALTER TABLE [learningObjectCompetencies] ADD CONSTRAINT [DF_learningObjectCompetencies_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectKeywords] ADD CONSTRAINT [DF_learningObjectKeywords_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [keywords] ADD CONSTRAINT [DF_keywords_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectContentReviews] ADD CONSTRAINT [DF_learningObjectContentReviews_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectNotes] ADD CONSTRAINT [DF_learningObjectNotes_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [medicalAbbreviations] ADD CONSTRAINT [DF_medicalAbbreviations_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [medicalAbbreviations] ADD CONSTRAINT [DF_medicalAbbreviations_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [courseCategories] ADD CONSTRAINT [DF_courseCategories_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [courseCategories] ADD CONSTRAINT [DF_courseCategories_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [programTypes] ADD CONSTRAINT [DF_programTypes_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [programTypes] ADD CONSTRAINT [DF_programTypes_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [associatedData] ADD CONSTRAINT [DF_associatedData_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [associatedData] ADD CONSTRAINT [DF_associatedData_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [associatedDataCategories] ADD CONSTRAINT [DF_associatedDataCategories_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [associatedDataCategories] ADD CONSTRAINT [DF_associatedDataCategories_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectCategories] ADD CONSTRAINT [DF_learningObjectCategories_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectCategories] ADD CONSTRAINT [DF_learningObjectCategories_active] DEFAULT ((1)) FOR [active]
GO
-- ALTER TABLE [nursingEssentials] ADD CONSTRAINT [DF_nursingEssentials_createDate] DEFAULT (GETDATE()) FOR [createDate]
-- GO
-- ALTER TABLE [nursingEssentials] ADD CONSTRAINT [DF_nursingEssentials_active] DEFAULT ((1)) FOR [active]
-- GO
ALTER TABLE [competencyDomains] ADD CONSTRAINT [DF_competencyDomains_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [competencyDomains] ADD CONSTRAINT [DF_competencyDomains_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [competencies] ADD CONSTRAINT [DF_competencies_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [competencies] ADD CONSTRAINT [DF_competencies_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [subcompetencies] ADD CONSTRAINT [DF_subcompetencies_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [subcompetencies] ADD CONSTRAINT [DF_subcompetencies_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_shared] DEFAULT ((0)) FOR [shared]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_updateDate] DEFAULT (GETDATE()) FOR [updateDate]
GO
ALTER TABLE [userRoles] ADD CONSTRAINT [DF_userRoles_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [userRoles] ADD CONSTRAINT [DF_userRoles_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [userSearches] ADD CONSTRAINT [DF_userSearches_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [userLists] ADD CONSTRAINT [DF_userLists_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [userLists] ADD CONSTRAINT [DF_userLists_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [userListItems] ADD CONSTRAINT [DF_userListItems_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [userListItems] ADD CONSTRAINT [DF_userListItems_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [lmsConnections] ADD CONSTRAINT [DF_lmsConnections_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [lmsConnections] ADD CONSTRAINT [DF_lmsConnections_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [issues] ADD CONSTRAINT [DF_issues_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [learningObjectUsage] ADD CONSTRAINT [DF_learningObjectUsage_timestamp] DEFAULT(getdate()) FOR [timestamp]
GO
ALTER TABLE [learningObjectUsageTotalsIMPORT] ADD CONSTRAINT [DF_learningObjectUsageTotalsIMPORT_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectUsageTotalsPerYearIMPORT] ADD CONSTRAINT [DF_learningObjectUsageTotalsPerYearIMPORT_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectUsageTotalsPerYearPerPartnerIMPORT] ADD CONSTRAINT [DF_learningObjectUsageTotalsPerYearPerPartnerIMPORT_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectUsageTotalsPerSemesterPerCourseIMPORT] ADD CONSTRAINT [DF_learningObjectUsageTotalsPerSemesterPerCourseIMPORT_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [learningObjectServerFiles] ADD CONSTRAINT [DF_learningObjectServerFiles_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO


SET IDENTITY_INSERT [applicationSettings] ON 
GO
INSERT [applicationSettings] ([applicationSettingsID], [partnerID], [databaseName], [helpdeskPartnerSite], [active]) VALUES (1, 0, N'LearningObjects', N'Corporate', 1)
GO
SET IDENTITY_INSERT [applicationSettings] OFF
GO
