-- USE [ExtendedRealityScheduling]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[applicationSettings]') AND type in (N'U'))
ALTER TABLE [applicationSettings] DROP CONSTRAINT IF EXISTS [DF_applicationSettings_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[databaseErrorLogs]') AND type in (N'U'))
ALTER TABLE [databaseErrorLogs] DROP CONSTRAINT [DF_databaseErrorLogs_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[logs]') AND type in (N'U'))
ALTER TABLE [logs] DROP CONSTRAINT [DF_logs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[errorLogs]') AND type in (N'U'))
ALTER TABLE [errorLogs] DROP CONSTRAINT [DF_errorLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[computerLogs]') AND type in (N'U'))
ALTER TABLE [computerLogs] DROP CONSTRAINT IF EXISTS [DF_computerLogs_timestamp]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[notificationLogs]') AND type in (N'U'))
ALTER TABLE [notificationLogs] DROP CONSTRAINT IF EXISTS [DF_notificationLogs_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationSessionLogs]') AND type in (N'U'))
ALTER TABLE [simulationSessionLogs] DROP CONSTRAINT IF EXISTS [DF_simulationSessionLogs_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationSessionsIncluded]') AND type in (N'U'))
ALTER TABLE [simulationSessionsIncluded] DROP CONSTRAINT IF EXISTS [DF_simulationSessionsIncluded_currentSessionCount]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationSessionsIncluded]') AND type in (N'U'))
ALTER TABLE [simulationSessionsIncluded] DROP CONSTRAINT IF EXISTS [DF_simulationSessionsIncluded_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulations]') AND type in (N'U'))
ALTER TABLE [simulations] DROP CONSTRAINT [DF_simulations_displayDemonstration]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulations]') AND type in (N'U'))
ALTER TABLE [simulations] DROP CONSTRAINT [DF_simulations_displayRequest]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulations]') AND type in (N'U'))
ALTER TABLE [simulations] DROP CONSTRAINT [DF_simulations_demonstrationOnly]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulations]') AND type in (N'U'))
ALTER TABLE [simulations] DROP CONSTRAINT [DF_simulations_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulations]') AND type in (N'U'))
ALTER TABLE [simulations] DROP CONSTRAINT [DF_simulations_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationTypes]') AND type in (N'U'))
ALTER TABLE [simulationTypes] DROP CONSTRAINT [DF_simulationTypes_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationTypes]') AND type in (N'U'))
ALTER TABLE [simulationTypes] DROP CONSTRAINT [DF_simulationTypes_active]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationStates]') AND type in (N'U'))
-- ALTER TABLE [simulationStates] DROP CONSTRAINT [DF_simulationStates_createDate]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationStates]') AND type in (N'U'))
-- ALTER TABLE [simulationStates] DROP CONSTRAINT [DF_simulationStates_active]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationsStates]') AND type in (N'U'))
-- ALTER TABLE [simulationsStates] DROP CONSTRAINT [DF_simulationsStates_createDate]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[associatedData]') AND type in (N'U'))
ALTER TABLE [associatedData] DROP CONSTRAINT [DF_associatedData_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[associatedData]') AND type in (N'U'))
ALTER TABLE [associatedData] DROP CONSTRAINT [DF_associatedData_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[nonpartners]') AND type in (N'U'))
ALTER TABLE [nonpartners] DROP CONSTRAINT [DF_nonpartners_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[nonpartners]') AND type in (N'U'))
ALTER TABLE [nonpartners] DROP CONSTRAINT IF EXISTS [DF_nonpartners_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[partnerSiteContacts]') AND type in (N'U'))
ALTER TABLE [partnerSiteContacts] DROP CONSTRAINT [DF_partnerSiteContacts_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[partnerSiteContacts]') AND type in (N'U'))
ALTER TABLE [partnerSiteContacts] DROP CONSTRAINT IF EXISTS [DF_partnerSiteContacts_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[contacts]') AND type in (N'U'))
ALTER TABLE [contacts] DROP CONSTRAINT [DF_contacts_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[contacts]') AND type in (N'U'))
ALTER TABLE [contacts] DROP CONSTRAINT IF EXISTS [DF_contacts_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requestTypes]') AND type in (N'U'))
ALTER TABLE [requestTypes] DROP CONSTRAINT [DF_requestTypes_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requestTypes]') AND type in (N'U'))
ALTER TABLE [requestTypes] DROP CONSTRAINT [DF_requestTypes_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[otherRequests]') AND type in (N'U'))
ALTER TABLE [otherRequests] DROP CONSTRAINT [DF_otherRequests_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[otherRequests]') AND type in (N'U'))
ALTER TABLE [otherRequests] DROP CONSTRAINT [DF_otherRequests_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[otherRequests]') AND type in (N'U'))
ALTER TABLE [otherRequests] DROP CONSTRAINT [DF_otherRequests_confirmed]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[otherRequestSimulations]') AND type in (N'U'))
ALTER TABLE [otherRequestSimulations] DROP CONSTRAINT [DF_otherRequestSimulations_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[otherRequestSimulations]') AND type in (N'U'))
ALTER TABLE [otherRequestSimulations] DROP CONSTRAINT [DF_otherRequestSimulations_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
ALTER TABLE [requests] DROP CONSTRAINT IF EXISTS [DF_requests_confirmed]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_clinicalReplacement]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_sendNotifications]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
-- ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_contentInLMS]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
-- ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_sosTrainingComplete]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
-- ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_printDocumentAndPasskeySent]
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
-- ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_releaseFormsUploaded]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requests]') AND type in (N'U'))
ALTER TABLE [requests] DROP CONSTRAINT [DF_requests_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[schedules]') AND type in (N'U'))
ALTER TABLE [schedules] DROP CONSTRAINT [DF_schedules_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[schedules]') AND type in (N'U'))
ALTER TABLE [schedules] DROP CONSTRAINT [DF_schedules_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[schedules]') AND type in (N'U'))
ALTER TABLE [schedules] DROP CONSTRAINT [DF_schedules_finalSubmission]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[schedules]') AND type in (N'U'))
ALTER TABLE [schedules] DROP CONSTRAINT [DF_schedules_submissionApproved]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[scheduleDates]') AND type in (N'U'))
ALTER TABLE [scheduleDates] DROP CONSTRAINT [DF_scheduleDates_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[scheduleDates]') AND type in (N'U'))
ALTER TABLE [scheduleDates] DROP CONSTRAINT [DF_scheduleDates_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[scheduleItems]') AND type in (N'U'))
ALTER TABLE [scheduleItems] DROP CONSTRAINT [DF_scheduleItems_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[scheduleItems]') AND type in (N'U'))
ALTER TABLE [scheduleItems] DROP CONSTRAINT [DF_scheduleItems_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[users]') AND type in (N'U'))
ALTER TABLE [users] DROP CONSTRAINT [DF_users_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[users]') AND type in (N'U'))
ALTER TABLE [users] DROP CONSTRAINT IF EXISTS [DF_users_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRoles]') AND type in (N'U'))
ALTER TABLE [userRoles] DROP CONSTRAINT [DF_userRoles_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRoles]') AND type in (N'U'))
ALTER TABLE [userRoles] DROP CONSTRAINT IF EXISTS [DF_userRoles_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUsers]') AND type in (N'U'))
ALTER TABLE [sosAssistantUsers] DROP CONSTRAINT [DF_sosAssistantUsers_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUsers]') AND type in (N'U'))
ALTER TABLE [sosAssistantUsers] DROP CONSTRAINT IF EXISTS [DF_sosAssistantUsers_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUserApplications]') AND type in (N'U'))
ALTER TABLE [sosAssistantUserApplications] DROP CONSTRAINT [DF_sosAssistantUserApplications_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUserApplications]') AND type in (N'U'))
ALTER TABLE [sosAssistantUserApplications] DROP CONSTRAINT IF EXISTS [DF_sosAssistantUserApplications_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUsersApplications]') AND type in (N'U'))
ALTER TABLE [sosAssistantUsersApplications] DROP CONSTRAINT [DF_sosAssistantUsersApplications_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUserRequests]') AND type in (N'U'))
ALTER TABLE [sosAssistantUserRequests] DROP CONSTRAINT [DF_sosAssistantUserRequests_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUserRequests]') AND type in (N'U'))
ALTER TABLE [sosAssistantUserRequests] DROP CONSTRAINT IF EXISTS [DF_sosAssistantUserRequests_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[sosAssistantUserRequests]') AND type in (N'U'))
ALTER TABLE [sosAssistantUserRequests] DROP CONSTRAINT IF EXISTS [DF_sosAssistantUserRequests_completed]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[shippingCompanies]') AND type in (N'U'))
ALTER TABLE [shippingCompanies] DROP CONSTRAINT [DF_shippingCompanies_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[shippingCompanies]') AND type in (N'U'))
ALTER TABLE [shippingCompanies] DROP CONSTRAINT IF EXISTS [DF_shippingCompanies_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationEquipment]') AND type in (N'U'))
ALTER TABLE [simulationEquipment] DROP CONSTRAINT [DF_simulationEquipment_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationEquipment]') AND type in (N'U'))
ALTER TABLE [simulationEquipment] DROP CONSTRAINT IF EXISTS [DF_simulationEquipment_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationEquipment]') AND type in (N'U'))
ALTER TABLE [simulationEquipment] DROP CONSTRAINT IF EXISTS [DF_simulationEquipment_inRotation]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[requestEquipment]') AND type in (N'U'))
ALTER TABLE [requestEquipment] DROP CONSTRAINT [DF_requestEquipment_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[simulationEquipmentTracking]') AND type in (N'U'))
ALTER TABLE [simulationEquipmentTracking] DROP CONSTRAINT [DF_simulationEquipmentTracking_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[travelTeams]') AND type in (N'U'))
ALTER TABLE [travelTeams] DROP CONSTRAINT [DF_travelTeams_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[travelTeams]') AND type in (N'U'))
ALTER TABLE [travelTeams] DROP CONSTRAINT IF EXISTS [DF_travelTeams_confirmed]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[travelTeamMembers]') AND type in (N'U'))
ALTER TABLE [travelTeamMembers] DROP CONSTRAINT [DF_travelTeamMembers_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[travelTeamMembers]') AND type in (N'U'))
ALTER TABLE [travelTeamMembers] DROP CONSTRAINT IF EXISTS [DF_travelTeamMembers_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[equipmentItems]') AND type in (N'U'))
ALTER TABLE [equipmentItems] DROP CONSTRAINT [DF_equipmentItems_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[equipmentItems]') AND type in (N'U'))
ALTER TABLE [equipmentItems] DROP CONSTRAINT IF EXISTS [DF_equipmentItems_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[equipmentChecklists]') AND type in (N'U'))
ALTER TABLE [equipmentChecklists] DROP CONSTRAINT [DF_equipmentChecklists_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[partnerEquipmentReviews]') AND type in (N'U'))
ALTER TABLE [partnerEquipmentReviews] DROP CONSTRAINT [DF_partnerEquipmentReviews_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[partnerEquipmentChecklists]') AND type in (N'U'))
ALTER TABLE [partnerEquipmentChecklists] DROP CONSTRAINT [DF_partnerEquipmentChecklists_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[anchorImages]') AND type in (N'U'))
ALTER TABLE [anchorImages] DROP CONSTRAINT [DF_anchorImages_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[anchorImages]') AND type in (N'U'))
ALTER TABLE [anchorImages] DROP CONSTRAINT IF EXISTS [DF_anchorImages_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[surveys]') AND type in (N'U'))
ALTER TABLE [surveys] DROP CONSTRAINT [DF_surveys_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[surveys]') AND type in (N'U'))
ALTER TABLE [surveys] DROP CONSTRAINT IF EXISTS [DF_surveys_active]
GO

DROP TABLE IF EXISTS [applicationSettings]
GO
DROP TABLE IF EXISTS [databaseErrorLogs]
GO
DROP TABLE IF EXISTS [logs]
GO
DROP TABLE IF EXISTS [errorLogs]
GO
DROP TABLE IF EXISTS [computerLogs]
GO
DROP TABLE IF EXISTS [notificationLogs]
GO
DROP TABLE IF EXISTS [simulationSessionLogs]
GO
DROP TABLE IF EXISTS [simulationSessionsIncluded]
GO
DROP TABLE IF EXISTS [simulations]
GO
DROP TABLE IF EXISTS [simulationTypes]
GO
-- DROP TABLE IF EXISTS [simulationStates]
-- GO
-- DROP TABLE IF EXISTS [simulationsStates]
-- GO
DROP TABLE IF EXISTS [associatedData]
GO
DROP TABLE IF EXISTS [nonpartners]
GO
DROP TABLE IF EXISTS [partnerSiteContacts]
GO
DROP TABLE IF EXISTS [contacts]
GO
DROP TABLE IF EXISTS [requestTypes]
GO
DROP TABLE IF EXISTS [otherRequests]
GO
DROP TABLE IF EXISTS [otherRequestSimulations]
GO
DROP TABLE IF EXISTS [requests]
GO
DROP TABLE IF EXISTS [schedules]
GO
DROP TABLE IF EXISTS [scheduleDates]
GO
DROP TABLE IF EXISTS [scheduleItems]
GO
DROP TABLE IF EXISTS [users]
GO
DROP TABLE IF EXISTS [userRoles]
GO
DROP TABLE IF EXISTS [sosAssistantUsers]
GO
DROP TABLE IF EXISTS [sosAssistantUserApplications]
GO
DROP TABLE IF EXISTS [sosAssistantUsersApplications]
GO
DROP TABLE IF EXISTS [sosAssistantUserRequests]
GO
DROP TABLE IF EXISTS [simulationEquipment]
GO
DROP TABLE IF EXISTS [requestEquipment]
GO
DROP TABLE IF EXISTS [simulationEquipmentTracking]
GO
DROP TABLE IF EXISTS [shippingCompanies]
GO
DROP TABLE IF EXISTS [travelTeams]
GO
DROP TABLE IF EXISTS [travelTeamMembers]
GO
DROP TABLE IF EXISTS [equipmentItems]
GO
DROP TABLE IF EXISTS [equipmentChecklists]
GO
DROP TABLE IF EXISTS [partnerEquipmentReviews]
GO
DROP TABLE IF EXISTS [partnerEquipmentChecklists]
GO
DROP TABLE IF EXISTS [anchorImages]
GO
DROP TABLE IF EXISTS [surveys]
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
	[startTimeDay] [time](7) NULL, -- * 07:00 -- 09/08/2023 MF
	[endTimeDay] [time](7) NULL, -- * 17:00 -- 09/08/2023 MF
	[minimumStudentsPerRequest] [INT] NULL, -- * 6 -- 09/08/2023 MF
	-- [minimumStudentsPerDay] [INT] NULL, -- * 2? -- 09/08/2023 MF
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
CREATE TABLE [errorLogs](
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
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
CREATE TABLE [logs](
	[href] [VARCHAR](500) NULL,
	[applicationVersion] [VARCHAR](50) NULL,
	[browserData] [NVARCHAR](MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
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
CREATE TABLE [notificationLogs](
	[requestID] [INT] NULL,
	[otherRequestID] [INT] NULL,
	[partnerSiteID] [INT] NULL,
	[contactID] [INT] NULL,
	[sosAssistantUserRequestID] [INT] NULL,
	[subject] [VARCHAR](500) NULL,
	[messageText] [VARCHAR](MAX) NULL,
	[messageHTML] [VARCHAR](MAX) NULL,
	[createDate] [DATETIME] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [simulationSessionLogs](
	[applicationID] [VARCHAR](250) NULL, -- ! Should never be displayed in any reports or anything that the end user sees. -- 08/01/2025 MF
	[gameID] [VARCHAR](250) NULL,
	[webhookType] [VARCHAR](250) NULL,
	[requestBody] [VARCHAR](MAX) NULL,
	[createDate] [DATETIME] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 -- * All records in this table are added to vw_currentSimulationSessions so that in an emergency a record can appear in the SOS Assistant session list. -- 08/06/2025 MF
CREATE TABLE [simulationSessionsIncluded](
	[simulationID] [INT] NULL,
	[sessionName] [VARCHAR](250) NULL,
	[partnerSiteID] [INT] NULL,
	[sessionEnvironment] [VARCHAR](250) NULL,
	[currentSessionCount] [INT] NOT NULL,
	[createDate] [DATETIME] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [simulations](
	[simulationID] [INT] IDENTITY(1,1) NOT NULL,
	[simulationName] [VARCHAR](250) NULL,
	[simulationTypeID] [INT] NOT NULL,
	[simulationDuration] [FLOAT] NULL, -- * 2 hours -- 09/08/2023 MF
	[groupsPerDay] [INT] NULL, -- * 4 -- 09/08/2023 MF
	[groupsPerScheduleItem] [INT] NULL, -- * 2 -- 09/08/2023 MF
	[studentsPerSubgroup] [INT] NULL, -- * 3 for XR and 4 for VR -- 09/08/2023 MF
	[eventColor] [VARCHAR](250) NULL,
	[displayDemonstration] [BIT] NOT NULL,
	[displayRequest] [BIT] NOT NULL,
	[demonstrationOnly] [BIT] NOT NULL,
	[applicationID] [VARCHAR](250) NULL, -- ! Should never be displayed in any reports or anything that the end user sees. -- 08/01/2025 MF
	[description] [VARCHAR](250) NULL,
	[facultyGuideURL] [VARCHAR](500) NULL,
	[printGuideURL] [VARCHAR](500) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_simulations] PRIMARY KEY CLUSTERED 
(
	[simulationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [simulationTypes](
	[simulationTypeID] [INT] IDENTITY(1,1) NOT NULL,
	[simulationTypeName] [VARCHAR](250) NULL,
	[studentAnnouncementURL] [VARCHAR](500) NULL,
	[groupNotesURL] [VARCHAR](500) NULL,
	[sosGuideURL] [VARCHAR](500) NULL,
	[sosChecklistURL] [VARCHAR](500) NULL,
	[refresherCourseURL] [VARCHAR](500) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_simulationTypes] PRIMARY KEY CLUSTERED 
(
	[simulationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- -- * Not being used. Left in database for now. -- 08/29/2025 MF
-- CREATE TABLE [simulationStates](
-- 	[simulationStateID] [INT] IDENTITY(1,1) NOT NULL,
-- 	[simulationStateName] [VARCHAR](250) NULL,
-- 	[active] [BIT] NOT NULL,
-- 	[createDate] [DATETIME] NOT NULL,
--  CONSTRAINT [PK_simulationStates] PRIMARY KEY CLUSTERED 
-- (
-- 	[simulationStateID] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
-- ) ON [PRIMARY]
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- -- * Not being used. Left in database for now. -- 08/29/2025 MF
-- CREATE TABLE [simulationsStates](
-- 	[simulationID] [INT] NOT NULL,
-- 	[simulationStateID] [INT] NOT NULL,
-- 	[createDate] [DATETIME] NOT NULL
-- ) ON [PRIMARY]
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [associatedData](
	[associatedDataID] [INT] IDENTITY(1,1) NOT NULL,
	[associatedDataCategoryID] [INT] NULL,
	[name] [VARCHAR](250) NULL,
	[sortID] [INT] NOT NULL,
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
CREATE TABLE [nonpartners](
	[partnerID] [INT] IDENTITY(1000,1) NOT NULL,
	[partnerName] [VARCHAR](255) NULL,
	[partnerAbbreviation] [VARCHAR](255) NULL,
	[currentPartner] [BIT] NULL,
	[partnerSiteID] [INT] NULL,
	[partnerSiteName] [VARCHAR](250) NULL,
	[partnerSiteNameAbbreviation] [VARCHAR](250) NULL,
	[partnerSiteAbbreviation] [VARCHAR](250) NULL,
	[partnerSiteAddressID] [INT] NULL,
	[street] [VARCHAR](250) NULL,
	[city] [VARCHAR](250) NULL,
	[state] [VARCHAR](250) NULL,
	[zipCode] [VARCHAR](50) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_nonpartners] PRIMARY KEY CLUSTERED 
(
	[partnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [partnerSiteContacts](
	[partnerSiteContactID] [INT] IDENTITY(1,1) NOT NULL,
	[partnerID] [INT] NULL,
	[partnerSiteID] [INT] NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[positionID] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_partnerSiteContacts] PRIMARY KEY CLUSTERED 
(
	[partnerSiteContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contacts](
	[contactID] [INT] IDENTITY(1,1) NOT NULL,
	[requestID] [INT] NOT NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[positionID] [INT] NULL,
	[pointOfContact] [BIT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[contactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [requestTypes](
	[requestTypeID] [INT] IDENTITY(1,1) NOT NULL,
	[requestTypeName] [VARCHAR](250) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_requestTypes] PRIMARY KEY CLUSTERED 
(
	[requestTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [otherRequests](
	[otherRequestID] [INT] IDENTITY(1,1) NOT NULL,
	[requestTypeID] [INT] NOT NULL,
	[partnerSiteID] [INT] NULL, -- * Demonstration Requests, Marketing Requests -- 11/19/2024 MF
	[conferenceName] [VARCHAR](255) NULL, -- * Conference Requests -- 11/19/2024 MF
	[street] [VARCHAR](250) NULL,
	[city] [VARCHAR](250) NULL,
	[state] [VARCHAR](250) NULL,
	[zipCode] [VARCHAR](50) NULL,
	[preferredDate] [DATETIME] NULL, -- * Demonstration Requests -- 11/19/2024 MF
	[startDate] [DATETIME] NULL, -- * Conference Requests, Marketing Requests -- 11/19/2024 MF
	[endDate] [DATETIME] NULL, -- * Conference Requests, Marketing Requests -- 11/19/2024 MF
	[programID] [INT] NULL, -- * Demonstration Requests -- 11/19/2024 MF
	[eventTypeID] [INT] NULL, -- * Marketing Requests -- 11/19/2024 MF
	[eventTypeOther] [VARCHAR](8000) NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[confirmed] [BIT] NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	[requestImportID] [INT] NULL, -- * Could be deleted at a later point when the data imported from Smartsheet is removed. -- 09/12/2024 MF
 CONSTRAINT [PK_otherRequests] PRIMARY KEY CLUSTERED 
(
	[otherRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [otherRequestSimulations](
	[otherRequestID] [INT] NOT NULL,
	[simulationID] [INT] NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [requests](
	[requestID] [INT] IDENTITY(1,1) NOT NULL,
	[requestTypeID] [INT] NOT NULL,
	[simulationID] [INT] NOT NULL,
	[partnerSiteID] [INT] NOT NULL,
	[startDate] [DATETIME] NULL,
	[endDate] [DATETIME] NULL,
	[totalStudentCount] [INT] NULL,
	[finalStudentCount] [INT] NULL,
	[alternateActivityID] [INT] NULL,
	[recordSessionID] [INT] NULL,
	[relatedCourse] [VARCHAR](250) NULL,
	[programID] [INT] NULL,
	[confirmed] [BIT] NOT NULL,
	[clinicalReplacement] [BIT] NOT NULL,
	[sendNotifications] [BIT] NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	[requestImportID] [INT] NULL, -- * Could be deleted at a later point when the data imported from Smartsheet is removed. -- 09/12/2024 MF
 CONSTRAINT [PK_requests] PRIMARY KEY CLUSTERED 
(
	[requestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [schedules](
	[scheduleID] [INT] IDENTITY(1,1) NOT NULL,
	[requestID] [INT] NOT NULL,
	[alternateActivityUpdatedID] [INT] NULL,
	[finalSubmission] [BIT] NOT NULL,
	[finalSubmissionDate] [DATETIME] NULL,
	[submissionApproved] [BIT] NOT NULL,
	[submissionApprovedDate] [DATETIME] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_schedules] PRIMARY KEY CLUSTERED 
(
	[scheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [scheduleDates](
	[scheduleDateID] [INT] IDENTITY(1,1) NOT NULL,
	[scheduleID] [INT] NOT NULL,
	[simulationDate] [DATETIME] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_scheduleDates] PRIMARY KEY CLUSTERED 
(
	[scheduleDateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [scheduleItems](
	[scheduleItemID] [INT] IDENTITY(1,1) NOT NULL,
	[scheduleDateID] [INT] NOT NULL,
	[groupName] [VARCHAR](50) NULL,
	[groupNumber] [VARCHAR](50) NULL,
	[startTime] [time](7) NULL,
	[location] [VARCHAR](250) NULL, -- ? roomNumber? -- 06/20/2023 MF
	[numberOfStudents] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_scheduleItems] PRIMARY KEY CLUSTERED 
(
	[scheduleItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
	[userRoleID] [INT] NULL,
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
CREATE TABLE [sosAssistantUsers](
	[userID] [INT] IDENTITY(1,1) NOT NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[username] [VARCHAR](255) NULL,
	[password] [VARCHAR](255) NULL,
	[partnerSiteID] [INT] NULL,
	[userRoleID] [INT] NULL,
	[lastLogin] [DATETIME] NULL,
	[updatedBy] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	[updateDate] [DATETIME] NULL,
	[inactiveDate] [DATETIME] NULL
 CONSTRAINT [PK_sosAssistantUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sosAssistantUserApplications](
	[applicationID] [INT] IDENTITY(1,1) NOT NULL,
	[applicationName] [VARCHAR](255) NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_sosAssistantUserApplications] PRIMARY KEY CLUSTERED 
(
	[applicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sosAssistantUsersApplications](
	[userID] [INT] NOT NULL,
	[applicationID] [INT] NOT NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sosAssistantUserRequests](
	[sosAssistantUserRequestID] [INT] IDENTITY(1,1) NOT NULL,
	[requestTypeID] [INT] NOT NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[partnerSiteID] [INT] NULL,
	[positionID] [INT] NULL,
	[programID] [INT] NULL,
	[simulationDate] [DATETIME] NULL,
	[details] [VARCHAR](8000) NULL,
	[completed] [BIT] NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_sosAssistantUserRequests] PRIMARY KEY CLUSTERED 
(
	[sosAssistantUserRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- TODO: Rename table to simulationEquipmentKits? -- 08/28/2025 MF
CREATE TABLE [simulationEquipment](
	[simulationEquipmentID] [INT] IDENTITY(1,1) NOT NULL,
	[kitNumber] [VARCHAR](50) NOT NULL,
	[simulationTypeID] [INT] NOT NULL,
	[kitTypeID] [INT] NOT NULL,
	[crates] [INT] NULL,
	[inRotation] [BIT] NOT NULL,
	[currentLocationID] [INT] NULL,
	[notes] [VARCHAR](1200) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_simulationEquipment] PRIMARY KEY CLUSTERED 
(
	[simulationEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- TODO: Rename table to requestEquipmentKits? -- 08/28/2025 MF
CREATE TABLE [requestEquipment](

	-- TODO: Add primary key column? -- 08/28/2025 MF

	[simulationEquipmentID] [INT] NOT NULL,
	[requestID] [INT] NULL,
	[otherRequestID] [INT] NULL,

	-- * Replaces Receipt Shipment Date, Return Shipment Date, To arrive back at corporate -- 08/28/2025 MF
	[shipToSiteDate] [DATETIME] NULL,
	[shipFromSiteDate] [DATETIME] NULL,

	-- TODO: Add to a new table to be a look up table for these? -- 08/28/2025 MF
	[street] [VARCHAR](250) NULL,
	[city] [VARCHAR](250) NULL,
	[state] [VARCHAR](250) NULL,
	[zipCode] [VARCHAR](50) NULL,

	-- TODO: Add to a new table to be a look up table for these? -- 08/28/2025 MF
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[phoneNumber] [VARCHAR](255) NULL,

	-- TODO: Add to a new table to be a look up table for these? -- 08/28/2025 MF
	-- ? Use Travel Team Members as the look up? -- 08/28/2025 MF
	[shipmentSupport] [VARCHAR](500) NULL,

	[notes] [VARCHAR](1200) NULL,

	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- TODO: Rename table to simulationEquipmentKitTracking? -- 08/28/2025 MF
CREATE TABLE [simulationEquipmentTracking](

	-- TODO: Add foreign key column of the primary key of requestEquipment? -- 08/28/2025 MF

	[simulationEquipmentID] [INT] NULL,
	[requestID] [INT] NULL, -- TODO: Add a composite key? -- 07/10/2025 MF
	[otherRequestID] [INT] NULL,

	-- TODO: Right now, the system only tracks one, so I am just entering the tracking number for the equipment going out to their site.
	[shippingDirectionID] [INT] NULL,

	[trackingNumber] [VARCHAR](255) NOT NULL,
	[shippingCompanyID] [VARCHAR](255) NULL,

	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [shippingCompanies](
	[shippingCompanyID] [INT] IDENTITY(1,1) NOT NULL,
	[companyName] [VARCHAR](255) NOT NULL,
	[trackingLink] [VARCHAR](500) NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_shippingCompanies] PRIMARY KEY CLUSTERED 
(
	[shippingCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [travelTeams](
	[travelTeamMemberID] [INT] NOT NULL,

	[requestID] [INT] NULL,
	[otherRequestID] [INT] NULL,

	[confirmed] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [travelTeamMembers](
	[travelTeamMemberID] [INT] IDENTITY(1,1) NOT NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[display] [BIT] NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	CONSTRAINT [PK_travelTeamMembers] PRIMARY KEY CLUSTERED 
(
	[travelTeamMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [equipmentItems](
	[equipmentItemID] [INT] IDENTITY(1,1) NOT NULL,
	[equipmentItemName] [VARCHAR](200) NULL,
	[notes] [VARCHAR](1200) NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_equipmentItems] PRIMARY KEY CLUSTERED 
(
	[equipmentItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [equipmentChecklists](
	-- [equipmentChecklistID] [INT] IDENTITY(1,1) NOT NULL, -- ? Needed? -- 06/27/2025 MF
	-- [simulationID] [INT] NOT NULL, -- ? Linked to simulationID or simulationTypes? Or linked to equipment kits? -- 06/27/2025 MF
	[simulationTypeID] [INT] NOT NULL, -- ? Linked to simulationID or simulationTypes? Or linked to equipment kits? -- 06/27/2025 MF

	[equipmentItemID] [INT] NOT NULL,
	[numberExpected] [INT] NOT NULL,

	[createDate] [DATETIME] NOT NULL,
--  CONSTRAINT [PK_equipmentChecklists] PRIMARY KEY CLUSTERED 
-- (
-- 	[equipmentChecklistID] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [partnerEquipmentReviews](
	[partnerEquipmentReviewID] [INT] IDENTITY(1,1) NOT NULL,
	-- [equipmentChecklistID] [INT] NOT NULL, -- ? Needed? -- 06/27/2025 MF

	[simulationEquipmentID] [INT] NOT NULL,

	[requestID] [INT] NULL,
	[otherRequestID] [INT] NULL,

	[receivedDate] [DATETIME] NULL,
	[returnedDate] [DATETIME] NULL, -- * Return ship date is scheduled by Orbis. -- 06/27/2025 MF

	[createDate] [DATETIME] NOT NULL
 CONSTRAINT [PK_partnerEquipmentReviews] PRIMARY KEY CLUSTERED 
(
	[partnerEquipmentReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [partnerEquipmentChecklists](
	[partnerEquipmentReviewID] [INT] NOT NULL,
	[equipmentItemID] [INT] NOT NULL,

	[numberPresent] [INT] NULL,

	[present] [BIT] NULL,
	[damaged] [BIT] NULL,
	[notFunctioning] [BIT] NULL, -- * Only for the return of the equipment. -- 06/27/2025 MF
	[notes] [VARCHAR](1200) NULL,

	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [anchorImages](
	[partnerSiteID] [INT] NOT NULL,
	[anchorImage] [VARCHAR](1200) NULL, -- ? Rename/add URL? -- 07/29/2025 MF
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [surveys](
	[partnerSiteID] [INT] NOT NULL,
	[simulationID] [INT] NOT NULL, -- TODO: Add a composite key? -- 07/10/2025 MF
	[programID] [INT] NOT NULL,
	[qrCode] [VARCHAR](1200) NULL, -- ? Rename/add URL? -- 07/29/2025 MF
	[url] [VARCHAR](1200) NULL, -- ? Keep this column? -- 07/29/2025 MF
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [applicationSettings] ADD CONSTRAINT [DF_applicationSettings_active] DEFAULT((1)) FOR [active]
GO
ALTER TABLE [databaseErrorLogs] ADD CONSTRAINT [DF_databaseErrorLogs_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [errorLogs] ADD CONSTRAINT [DF_errorLogs_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [logs] ADD CONSTRAINT [DF_logs_timestamp] DEFAULT (GETDATE()) FOR [timestamp]
GO
ALTER TABLE [computerLogs] ADD CONSTRAINT [DF_computerLogs_timestamp] DEFAULT(getdate()) FOR [timestamp]
GO
ALTER TABLE [notificationLogs] ADD CONSTRAINT [DF_notificationLogs_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [simulationSessionLogs] ADD CONSTRAINT [DF_simulationSessionLogs_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [simulationSessionsIncluded] ADD CONSTRAINT [DF_simulationSessionsIncluded_currentSessionCount] DEFAULT((1)) FOR [currentSessionCount]
GO
ALTER TABLE [simulationSessionsIncluded] ADD CONSTRAINT [DF_simulationSessionsIncluded_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [simulations] ADD CONSTRAINT [DF_simulations_displayDemonstration] DEFAULT ((1)) FOR [displayDemonstration]
GO
ALTER TABLE [simulations] ADD CONSTRAINT [DF_simulations_displayRequest] DEFAULT ((1)) FOR [displayRequest]
GO
ALTER TABLE [simulations] ADD CONSTRAINT [DF_simulations_demonstrationOnly] DEFAULT ((0)) FOR [demonstrationOnly]
GO
ALTER TABLE [simulations] ADD CONSTRAINT [DF_simulations_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [simulations] ADD CONSTRAINT [DF_simulations_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [simulationTypes] ADD CONSTRAINT [DF_simulationTypes_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [simulationTypes] ADD CONSTRAINT [DF_simulationTypes_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
-- ALTER TABLE [simulationStates] ADD CONSTRAINT [DF_simulationStates_active] DEFAULT ((1)) FOR [active]
-- GO
-- ALTER TABLE [simulationStates] ADD CONSTRAINT [DF_simulationStates_createDate] DEFAULT (GETDATE()) FOR [createDate]
-- GO
-- ALTER TABLE [simulationsStates] ADD CONSTRAINT [DF_simulationsStates_createDate] DEFAULT (GETDATE()) FOR [createDate]
-- GO
ALTER TABLE [associatedData] ADD CONSTRAINT [DF_associatedData_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [associatedData] ADD CONSTRAINT [DF_associatedData_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [nonpartners] ADD CONSTRAINT [DF_nonpartners_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [nonpartners] ADD CONSTRAINT [DF_nonpartners_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [partnerSiteContacts] ADD CONSTRAINT [DF_partnerSiteContacts_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [partnerSiteContacts] ADD CONSTRAINT [DF_partnerSiteContacts_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [contacts] ADD CONSTRAINT [DF_contacts_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [contacts] ADD CONSTRAINT [DF_contacts_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [requestTypes] ADD CONSTRAINT [DF_requestTypes_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [requestTypes] ADD CONSTRAINT [DF_requestTypes_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [otherRequests] ADD CONSTRAINT [DF_otherRequests_confirmed] DEFAULT ((0)) FOR [confirmed]
GO
ALTER TABLE [otherRequests] ADD CONSTRAINT [DF_otherRequests_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [otherRequests] ADD CONSTRAINT [DF_otherRequests_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [otherRequestSimulations] ADD CONSTRAINT [DF_otherRequestSimulations_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [otherRequestSimulations] ADD CONSTRAINT [DF_otherRequestSimulations_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_confirmed] DEFAULT ((0)) FOR [confirmed]
GO
ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_clinicalReplacement] DEFAULT ((0)) FOR [clinicalReplacement]
GO
ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_sendNotifications] DEFAULT ((1)) FOR [sendNotifications]
GO
-- ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_contentInLMS] DEFAULT ((0)) FOR [contentInLMS]
-- GO
-- ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_sosTrainingComplete] DEFAULT ((0)) FOR [sosTrainingComplete]
-- GO
-- ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_printDocumentAndPasskeySent] DEFAULT ((0)) FOR [printDocumentAndPasskeySent]
-- GO
-- ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_releaseFormsUploaded] DEFAULT ((0)) FOR [releaseFormsUploaded]
-- GO
ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [requests] ADD CONSTRAINT [DF_requests_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [schedules] ADD CONSTRAINT [DF_schedules_finalSubmission] DEFAULT ((0)) FOR [finalSubmission]
GO
ALTER TABLE [schedules] ADD CONSTRAINT [DF_schedules_submissionApproved] DEFAULT ((0)) FOR [submissionApproved]
GO
ALTER TABLE [schedules] ADD CONSTRAINT [DF_schedules_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [schedules] ADD CONSTRAINT [DF_schedules_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [scheduleDates] ADD CONSTRAINT [DF_scheduleDates_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [scheduleDates] ADD CONSTRAINT [DF_scheduleDates_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [scheduleItems] ADD CONSTRAINT [DF_scheduleItems_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [scheduleItems] ADD CONSTRAINT [DF_scheduleItems_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [userRoles] ADD CONSTRAINT [DF_userRoles_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [userRoles] ADD CONSTRAINT [DF_userRoles_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [sosAssistantUsers] ADD CONSTRAINT [DF_sosAssistantUsers_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [sosAssistantUsers] ADD CONSTRAINT [DF_sosAssistantUsers_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [sosAssistantUserApplications] ADD CONSTRAINT [DF_sosAssistantUserApplications_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [sosAssistantUserApplications] ADD CONSTRAINT [DF_sosAssistantUserApplications_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [sosAssistantUsersApplications] ADD CONSTRAINT [DF_sosAssistantUsersApplications_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [sosAssistantUserRequests] ADD CONSTRAINT [DF_sosAssistantUserRequests_completed] DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [sosAssistantUserRequests] ADD CONSTRAINT [DF_sosAssistantUserRequests_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [sosAssistantUserRequests] ADD CONSTRAINT [DF_sosAssistantUserRequests_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [simulationEquipment] ADD CONSTRAINT [DF_simulationEquipment_inRotation] DEFAULT ((1)) FOR [inRotation]
GO
ALTER TABLE [simulationEquipment] ADD CONSTRAINT [DF_simulationEquipment_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [simulationEquipment] ADD CONSTRAINT [DF_simulationEquipment_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [requestEquipment] ADD CONSTRAINT [DF_requestEquipment_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [simulationEquipmentTracking] ADD CONSTRAINT [DF_simulationEquipmentTracking_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [shippingCompanies] ADD CONSTRAINT [DF_shippingCompanies_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [shippingCompanies] ADD CONSTRAINT [DF_shippingCompanies_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [travelTeams] ADD CONSTRAINT [DF_travelTeams_confirmed] DEFAULT ((0)) FOR [confirmed]
GO
ALTER TABLE [travelTeams] ADD CONSTRAINT [DF_travelTeams_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [travelTeamMembers] ADD CONSTRAINT [DF_travelTeamMembers_display] DEFAULT ((1)) FOR [display]
GO
ALTER TABLE [travelTeamMembers] ADD CONSTRAINT [DF_travelTeamMembers_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [travelTeamMembers] ADD CONSTRAINT [DF_travelTeamMembers_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [equipmentItems] ADD CONSTRAINT [DF_equipmentItems_active] DEFAULT((1)) FOR [active]
GO
ALTER TABLE [equipmentItems] ADD CONSTRAINT [DF_equipmentItems_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [equipmentChecklists] ADD CONSTRAINT [DF_equipmentChecklists_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [partnerEquipmentReviews] ADD CONSTRAINT [DF_partnerEquipmentReviews_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [partnerEquipmentChecklists] ADD CONSTRAINT [DF_partnerEquipmentChecklists_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [anchorImages] ADD CONSTRAINT [DF_anchorImages_active] DEFAULT((1)) FOR [active]
GO
ALTER TABLE [anchorImages] ADD CONSTRAINT [DF_anchorImages_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [surveys] ADD CONSTRAINT [DF_surveys_active] DEFAULT((1)) FOR [active]
GO
ALTER TABLE [surveys] ADD CONSTRAINT [DF_surveys_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO

SET IDENTITY_INSERT [applicationSettings] ON 
GO
INSERT [applicationSettings] ([applicationSettingsID], [partnerID], [databaseName], [helpdeskPartnerSite], [startTimeDay], [endTimeDay], [minimumStudentsPerRequest], [active]) VALUES (1, 0, N'ExtendedRealityScheduling', N'Corporate', '07:00:00.0000000', '19:00:00.0000000', 6, 1)
GO
SET IDENTITY_INSERT [applicationSettings] OFF
GO
