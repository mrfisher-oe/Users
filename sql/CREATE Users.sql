-- USE [Users]
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
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRoles]') AND type in (N'U'))
ALTER TABLE [userRoles] DROP CONSTRAINT [DF_userRoles_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRoles]') AND type in (N'U'))
ALTER TABLE [userRoles] DROP CONSTRAINT IF EXISTS [DF_userRoles_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[users]') AND type in (N'U'))
ALTER TABLE [users] DROP CONSTRAINT [DF_users_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[users]') AND type in (N'U'))
ALTER TABLE [users] DROP CONSTRAINT IF EXISTS [DF_users_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[applications]') AND type in (N'U'))
ALTER TABLE [applications] DROP CONSTRAINT [DF_applications_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[applications]') AND type in (N'U'))
ALTER TABLE [applications] DROP CONSTRAINT IF EXISTS [DF_applications_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userApplications]') AND type in (N'U'))
ALTER TABLE [userApplications] DROP CONSTRAINT [DF_userApplications_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRequests]') AND type in (N'U'))
ALTER TABLE [userRequests] DROP CONSTRAINT [DF_userRequests_createDate]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRequests]') AND type in (N'U'))
ALTER TABLE [userRequests] DROP CONSTRAINT IF EXISTS [DF_userRequests_active]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[userRequests]') AND type in (N'U'))
ALTER TABLE [userRequests] DROP CONSTRAINT IF EXISTS [DF_userRequests_completed]
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
DROP TABLE IF EXISTS [users]
GO
DROP TABLE IF EXISTS [userRoles]
GO
DROP TABLE IF EXISTS [applications]
GO
DROP TABLE IF EXISTS [userApplications]
GO
DROP TABLE IF EXISTS [userRequests]
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
CREATE TABLE [users](
	[userID] [INT] IDENTITY(1,1) NOT NULL,
	[firstName] [VARCHAR](255) NULL,
	[lastName] [VARCHAR](255) NULL,
	[email] [VARCHAR](255) NULL,
	[username] [VARCHAR](255) NULL,
	[password] [VARCHAR](255) NULL,
	[partnerID] [INT] NULL,
	[partnerSiteID] [INT] NULL,
	[shared] [BIT] NULL,
	[requestedBy] [VARCHAR](250) NULL,
	[requestDate] [DATETIME] NULL,
	[notes] [VARCHAR](8000) NULL,
	[lastLogin] [DATETIME] NULL,
	[updatedBy] [INT] NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
	[updateDate] [DATETIME] NULL,
	[inactiveDate] [DATETIME] NULL,
	[dataSource] [VARCHAR](255) NULL,
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
CREATE TABLE [applications](
	[applicationID] [INT] IDENTITY(1,1) NOT NULL,
	[applicationName] [VARCHAR](255) NOT NULL,
	[active] [BIT] NOT NULL,
	[createDate] [DATETIME] NOT NULL,
 CONSTRAINT [PK_applications] PRIMARY KEY CLUSTERED 
(
	[applicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [userApplications](
	[userID] [INT] NOT NULL,
	[applicationID] [INT] NOT NULL,
	[userRoleID] [INT] NULL,
	[createDate] [DATETIME] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [userRequests](
	[userRequestID] [INT] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK_userRequests] PRIMARY KEY CLUSTERED 
(
	[userRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [userRoles] ADD CONSTRAINT [DF_userRoles_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [userRoles] ADD CONSTRAINT [DF_userRoles_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [users] ADD CONSTRAINT [DF_users_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [applications] ADD CONSTRAINT [DF_applications_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [applications] ADD CONSTRAINT [DF_applications_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [userApplications] ADD CONSTRAINT [DF_userApplications_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO
ALTER TABLE [userRequests] ADD CONSTRAINT [DF_userRequests_completed] DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [userRequests] ADD CONSTRAINT [DF_userRequests_active] DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [userRequests] ADD CONSTRAINT [DF_userRequests_createDate] DEFAULT (GETDATE()) FOR [createDate]
GO

SET IDENTITY_INSERT [applicationSettings] ON 
GO
INSERT [applicationSettings] ([applicationSettingsID], [partnerID], [databaseName], [helpdeskPartnerSite], [active]) VALUES (1, 0, N'Users', N'Corporate', 1)
GO
SET IDENTITY_INSERT [applicationSettings] OFF
GO
