-- USE [ExtendedRealityScheduling]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLastNotification]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getLastNotification
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getRequestStatus]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getRequestStatus
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getScheduleStatus]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getScheduleStatus
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getScheduleStartDateMatches]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getScheduleStartDateMatches
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getScheduleEndDateMatches]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getScheduleEndDateMatches
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getSimulationSession]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getSimulationSession
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getEmailType]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getEmailType
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getSOSSurveySent]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getSOSSurveySent
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getFacultySurveySent]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getFacultySurveySent
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getSOSResourcesSent]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getSOSResourcesSent
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getFacultyResourcesSent]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getFacultyResourcesSent
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getLastNotification (
  @requestID INT
  )

RETURNS DATETIME
AS
BEGIN

  RETURN (SELECT TOP (1) createDate
  FROM notificationLogs
  WHERE requestID = @requestID
  AND subject LIKE 'Please create and submit your %'
  ORDER BY createDate DESC)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getRequestStatus (
  @confirmed BIT,
  @startDate DATETIME,
  @endDate DATETIME
  )

RETURNS VARCHAR(500)
AS
BEGIN

  DECLARE @statusText VARCHAR(500)

  IF DATEADD(day, 1, @endDate) <= GETDATE()
    BEGIN

    SET @statusText = 'Completed'

    END
  ELSE IF DATEADD(week, -5, @startDate) <= GETDATE() AND @startDate > GETDATE()
    BEGIN

    SET @statusText = 'Upcoming'

    END
  ELSE IF @confirmed = 1
    BEGIN

    SET @statusText = 'Confirmed'

    END
  ELSE
    BEGIN

    SET @statusText = 'Submitted'

    END

  RETURN @statusText

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getScheduleStatus (
  @submissionApproved BIT,
  @finalSubmission BIT
  )

RETURNS VARCHAR(500)
AS
BEGIN

  DECLARE @statusText VARCHAR(500)

  IF @submissionApproved = 1
    BEGIN

    SET @statusText = 'Approved'

    END
  ELSE IF @finalSubmission = 1
    BEGIN

    SET @statusText = 'Submitted'

    END
  ELSE
    BEGIN

    SET @statusText = 'Incomplete'

    END

  RETURN @statusText

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getScheduleStartDateMatches (
  @requestID INT
  )

RETURNS BIT
AS
BEGIN

  DECLARE @rowCount INT
  DECLARE @scheduleDatesMatch BIT

  SET @rowCount = (SELECT COUNT(*)
  FROM requests
  LEFT OUTER JOIN schedules ON requests.requestID = schedules.requestID
  INNER JOIN scheduleDates ON schedules.scheduleID = scheduleDates.scheduleID
  WHERE
  -- requests.active = 1
  -- AND schedules.active = 1
  -- AND scheduleDates.active = 1
  -- AND
  startDate <> (SELECT TOP (1) simulationDate FROM scheduleDates WHERE active = 1 AND scheduleDates.scheduleID = schedules.scheduleID ORDER BY simulationDate ASC)
  AND requests.requestID = @requestID)

  If (@rowCount > 0)

    SET @scheduleDatesMatch = 0

  ELSE

    SET @scheduleDatesMatch = 1

  RETURN @scheduleDatesMatch

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getScheduleEndDateMatches (
  @requestID INT
  )

RETURNS BIT
AS
BEGIN

  DECLARE @rowCount INT
  DECLARE @scheduleDatesMatch BIT

  SET @rowCount = (SELECT COUNT(*)
  FROM requests
  LEFT OUTER JOIN schedules ON requests.requestID = schedules.requestID
  INNER JOIN scheduleDates ON schedules.scheduleID = scheduleDates.scheduleID
  WHERE
  -- requests.active = 1
  -- AND schedules.active = 1
  -- AND scheduleDates.active = 1
  -- AND 
  endDate <> (SELECT TOP (1) simulationDate FROM scheduleDates WHERE active = 1 AND scheduleDates.scheduleID = schedules.scheduleID ORDER BY simulationDate DESC)
  AND requests.requestID = @requestID)

  If (@rowCount > 0)

    SET @scheduleDatesMatch = 0

  ELSE

    SET @scheduleDatesMatch = 1

  RETURN @scheduleDatesMatch

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getSimulationSession (
  @applicationID VARCHAR(500),
  @sessionName VARCHAR(500)
  )

RETURNS TABLE
AS
-- * Used by the SOS Assistant application. -- 09/03/2024 MF

  RETURN SELECT TOP (1) requestBody, createDate, sessionEnvironment,
  CASE
    WHEN partnerID IS NOT NULL THEN partnerID
    ELSE NULL
  END AS partnerID,
  CASE
    WHEN partnerName IS NOT NULL THEN partnerName
    ELSE NULL
  END AS partnerName,
  CASE
    WHEN partnerSiteID IS NOT NULL THEN partnerSiteID
    ELSE NULL
  END AS partnerSiteID,
  CASE
    WHEN partnerSiteName IS NOT NULL THEN partnerSiteName
    ELSE NULL
  END AS partnerSiteName,
  CASE
    WHEN partnerName <> '' AND partnerName IS NOT NULL AND partnerSiteName <> '' AND partnerSiteName IS NOT NULL THEN partnerName + '-' + partnerSiteName
    ELSE NULL
  END AS partnerAndSiteName
  FROM vw_simulationSessionsHeadsets
  WHERE webhookType = 'Create'
  -- ? Needed? -- 07/31/2025 MF
  -- AND CAST(createDate AS DATE) = CAST(GETDATE() AS DATE)
  AND applicationID = @applicationID
  AND sessionName = @sessionName
  ORDER BY createDate DESC

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getEmailType (
  @subject VARCHAR(500)
  )

RETURNS VARCHAR(255)
AS
BEGIN
  DECLARE @emailType VARCHAR(255)
  SET @emailType = 'Unknown'

  IF @subject LIKE 'Please create and submit your%'
    BEGIN

      SET @emailType = 'Upcoming Simulation'

    END

  IF @subject LIKE 'An extended reality schedule has been submitted%'
    BEGIN

      SET @emailType = 'Schedule Submitted'

    END

  IF @subject LIKE 'Your extended reality simulation schedule has been approved%'
    BEGIN

      SET @emailType = 'Schedule Approved'

    END

  IF @subject LIKE 'An extended reality Implementation request%'
    BEGIN

      SET @emailType = 'Request Submitted'

    END

  IF @subject LIKE 'An extended reality Demonstration request has been submitted%'
    BEGIN

      SET @emailType = 'Demonstration Request Submitted'

    END

  IF @subject LIKE 'An extended reality Conference request has been submitted%'
    BEGIN

      SET @emailType = 'Conference Request Submitted'

    END

  IF @subject LIKE 'An extended reality Marketing request has been submitted%'
    BEGIN

      SET @emailType = 'Marketing Request Submitted'

    END

  IF @subject LIKE 'An SOS Assistant user request has been submitted%'
    BEGIN

      SET @emailType = 'SOS Assistant User Request Submitted'

    END

  IF @subject LIKE 'SOS Survey: (%'
    BEGIN

      SET @emailType = 'SOS Survey'

    END

  IF @subject LIKE 'Faculty Survey: (%'
    BEGIN

      SET @emailType = 'Faculty Survey'

    END

  IF @subject LIKE 'An extended reality schedule has been unsubmitted%'
    BEGIN

      SET @emailType = 'Schedule Unsubmitted'

    END

  IF @subject LIKE 'Your extended reality simulation schedule has been unapproved%'
    BEGIN

      SET @emailType = 'Schedule Unapproved'

    END

  RETURN @emailType

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getSOSSurveySent (
  @requestID INT,
  @otherRequestID INT
  )

RETURNS DATETIME
AS
BEGIN

  RETURN (SELECT TOP (1) createDate
  FROM notificationLogs
  WHERE subject LIKE '%SOS Survey: %'
  AND (requestID = @requestID OR @requestID IS NULL)
  AND (otherRequestID = @otherRequestID OR @otherRequestID IS NULL)
  ORDER BY createDate DESC)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getFacultySurveySent (
  @requestID INT,
  @otherRequestID INT
  )

RETURNS DATETIME
AS
BEGIN

  RETURN (SELECT TOP (1) createDate
  FROM notificationLogs
  WHERE subject LIKE '%Faculty Survey: %'
  AND (requestID = @requestID OR @requestID IS NULL)
  AND (otherRequestID = @otherRequestID OR @otherRequestID IS NULL)
  ORDER BY createDate DESC)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getSOSResourcesSent (
  @requestID INT,
  @otherRequestID INT
  )

RETURNS DATETIME
AS
BEGIN

  RETURN (SELECT TOP (1) createDate
  FROM notificationLogs
  WHERE subject LIKE '%SOS Resources %'
  AND (requestID = @requestID OR @requestID IS NULL)
  AND (otherRequestID = @otherRequestID OR @otherRequestID IS NULL)
  ORDER BY createDate DESC)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getFacultyResourcesSent (
  @requestID INT,
  @otherRequestID INT
  )

RETURNS DATETIME
AS
BEGIN

  RETURN (SELECT TOP (1) createDate
  FROM notificationLogs
  WHERE subject LIKE '%Faculty Resources %'
  AND (requestID = @requestID OR @requestID IS NULL)
  AND (otherRequestID = @otherRequestID OR @otherRequestID IS NULL)
  ORDER BY createDate DESC)

END
GO
