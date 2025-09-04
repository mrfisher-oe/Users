-- USE [LearningObjects]
-- GO

-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLastLTIVisit]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
-- DROP FUNCTION udf_getLastLTIVisit
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLastUpdatedUsage]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
-- DROP FUNCTION udf_getLastUpdatedUsage
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getPartnerFullName]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getPartnerFullName
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getPartnerID]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getPartnerID
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getCurrentApplicationVersion]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
-- DROP FUNCTION udf_getCurrentApplicationVersion
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getCurrentLMSVersion]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getCurrentLMSVersion
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLastLORVisit]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getLastLORVisit
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLastUpdatedCourses]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getLastUpdatedCourses
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_removeLineBreaks]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
-- DROP FUNCTION udf_removeLineBreaks
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_convertLineBreaks]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
-- DROP FUNCTION udf_convertLineBreaks
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getTitleCase]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getTitleCase
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLearningObjectProgramTypes]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
-- DROP FUNCTION udf_getLearningObjectProgramTypes
-- GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLearningObjectCourseCategories]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
-- DROP FUNCTION udf_getLearningObjectCourseCategories
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getUsername]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getUsername
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getUserID]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getUserID
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getContentReviewPeriodMonths]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getContentReviewPeriodMonths
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLastLearningObjectContentReview]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getLastLearningObjectContentReview
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[udf_getLearningObjectName]') AND type IN ( N'FN', N'IF', N'TF', N'FS', N'FT' ))
DROP FUNCTION udf_getLearningObjectName
GO


-- * Last visit through an LTI connection -- 06/22/2022 MF
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE FUNCTION udf_getLastLTIVisit (
--   @learningObjectID INT
--   )

-- RETURNS TABLE
-- AS

--   RETURN (SELECT TOP (1) *
--   -- FROM learningObjectUsage
--   -- ? For some reason, this function doesn't appear to work properly when using the view? -- 04/21/2023 MF
--   -- FROM vw_learningObjectsUsage
--   FROM learningObjectUsageScrubbed
--   WHERE 
--   -- ISNUMERIC(learningObjectID) = 1
--   -- AND
--   learningObjectID = @learningObjectID
--   ORDER BY timestamp DESC)

-- GO

-- * Last update to lti usage -- 06/22/2022 MF
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE FUNCTION udf_getLastUpdatedUsage ()

-- RETURNS TABLE
-- AS

--   -- * This query is taking too long to execute when using vw_learningObjectsUsage and it's not necessary to use the larger table. -- 05/14/2022 MF
--   RETURN SELECT TOP (1) timestamp
--   FROM learningObjectsUsageIMPORT
--   -- WHERE ISNUMERIC(object_id) = 1
--   ORDER BY timestamp DESC

-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getPartnerFullName (
  @partnerName VARCHAR(500),
  @returnURL VARCHAR(500)
  )

RETURNS VARCHAR(500)
AS
BEGIN

  DECLARE @newPartnerName VARCHAR(500)
  SET @newPartnerName = REPLACE(@partnerName, 'BLOCKED - ', '') + ' (Not In Partner List)'

  IF EXISTS (SELECT TOP (1) partnerName FROM [Partners].[dbo].[partnerAlternateNames] WHERE partnerAlternateName = @partnerName)
  BEGIN

    SET @newPartnerName = (SELECT TOP (1) partnerName FROM [Partners].[dbo].[partnerAlternateNames] WHERE partnerAlternateName = @partnerName)

  END
  ELSE
  BEGIN

    IF @partnerName = 'loudcloud_dev' AND (@returnURL IS NULL OR @returnURL = '' OR @returnURL = 'NULL')
      BEGIN

        SET @newPartnerName = 'Grand Canyon University'

      END

    IF @returnURL LIKE '%misericordia%'
      BEGIN

        SET @newPartnerName = 'Misericordia University'

      END

    IF @returnURL LIKE '%stkateonline.%'
      BEGIN

        SET @newPartnerName = 'St. Catherine University'

      END

    IF @returnURL LIKE '%csp.%'
      BEGIN

        SET @newPartnerName = 'Concordia University, St. Paul'

      END

    IF @returnURL LIKE '%.gcu.%'
      BEGIN

        SET @newPartnerName = 'Grand Canyon University'

      END

    IF @returnURL LIKE '%orbis.%'
      BEGIN

        SET @newPartnerName = 'Orbis Education'

      END

    IF @returnURL LIKE '%stthom-test.%'
      BEGIN

        SET @newPartnerName = 'University of St. Thomas'

      END

    IF @returnURL LIKE '%uiwabsnonline.%'
      BEGIN

        SET @newPartnerName = 'University of the Incarnate Word'

      END

  END

  RETURN @newPartnerName

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getPartnerID (
  @partnerName VARCHAR(500)
  )

RETURNS VARCHAR(500)
AS
BEGIN

  DECLARE @newPartnerID INT
  SET @newPartnerID = NULL

  IF EXISTS (SELECT TOP (1) partnerID FROM [Partners].[dbo].[partnerAlternateNames] INNER JOIN [Partners].[dbo].[partners] ON partnerAlternateNames.partnerName = partners.partnerName WHERE partnerAlternateName = @partnerName)
  BEGIN

    SET @newPartnerID = (SELECT TOP (1) partnerID FROM [Partners].[dbo].[partnerAlternateNames] INNER JOIN [Partners].[dbo].[partners] ON partnerAlternateNames.partnerName = partners.partnerName WHERE partnerAlternateName = @partnerName)

  END

  RETURN @newPartnerID

END
GO

-- * The user defined functions are running too slow to display in the API. -- 08/22/2023 MF
-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE FUNCTION udf_getCurrentApplicationVersion (
--   @learningObjectID INT
--   )

-- RETURNS VARCHAR(50)
-- AS
-- BEGIN

--   -- DECLARE @currentApplicationVersion VARCHAR(50)

--   -- SET @currentApplicationVersion = (SELECT TOP (1) applicationVersion
--   -- FROM computerLogs
--   -- WHERE learningObjectID = @learningObjectID
--   -- AND (href LIKE 'https://lor.orbiseducation.com/system/files/%'
--   -- OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
--   -- ORDER BY lastAccessed DESC)

--   --   RETURN @currentApplicationVersion

--   RETURN (SELECT TOP (1) applicationVersion
--   FROM vw_computerLogs
--   WHERE learningObjectID = @learningObjectID OR @learningObjectID IS NULL
--   AND (href LIKE 'https://lor.orbiseducation.com/system/files/%'
--   OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
--   ORDER BY lastAccessed DESC)

-- END
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getCurrentLMSVersion (
  @partnerName VARCHAR(500),
  @lmsName VARCHAR(500)
  )

RETURNS VARCHAR(50)
AS
BEGIN

-- ? Sakai -- 11/07/2023 MF

  DECLARE @productFamilyCode VARCHAR(500)
  SET @productFamilyCode = @lmsName

  IF @lmsName = 'Blackboard Learn' 
    BEGIN

      SET @productFamilyCode = 'BlackboardLearn'

    END

  IF @lmsName = 'Canvas' 
    BEGIN

      SET @productFamilyCode = 'canvas'

    END

  IF @lmsName = 'LoudCloud' 
    BEGIN

      SET @productFamilyCode = 'loudcloud_ilp'

    END

  IF @lmsName = 'LoudCloud/Halo' 
    BEGIN

      SET @productFamilyCode = 'loudcloud_ilp'

    END

  IF @lmsName = 'Desire2Learn' 
    BEGIN

      SET @productFamilyCode = 'desire2learn'

    END

  IF @lmsName = 'Moodle' 
    BEGIN

      SET @productFamilyCode = 'moodle'

    END

  RETURN (SELECT TOP (1) tool_consumer_info_version
  FROM learningObjectUsageScrubbed
  WHERE partnerName = @partnerName
  AND tool_consumer_info_product_family_code = @productFamilyCode
  ORDER BY timestamp DESC)

END
GO

-- * Last visit on LOR (vw_computerLogs) -- 06/22/2022 MF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getLastLORVisit (
  @learningObjectID INT
  )

RETURNS TABLE
AS

  RETURN SELECT TOP (1) *
  FROM vw_computerLogs
  WHERE learningObjectID = @learningObjectID
  AND (href LIKE 'https://lor.orbiseducation.com/system/files/%'
  OR href LIKE 'https://lor.orbiseducation.com/learningObjects/%')
  ORDER BY lastAccessed DESC

GO

-- * Last update to courses -- 06/22/2022 MF
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getLastUpdatedCourses ()

RETURNS TABLE
AS

  RETURN SELECT TOP (1) createDate
  FROM learningObjectsCourses
  ORDER BY createDate DESC

GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE FUNCTION udf_removeLineBreaks (
--   @originalText VARCHAR(8000)
--   )

-- RETURNS VARCHAR(8000)
-- AS
-- BEGIN

--   RETURN REPLACE(@originalText, '\r\n', ' ')

-- END
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE FUNCTION udf_convertLineBreaks (
--   @originalText VARCHAR(8000)
--   )

-- RETURNS VARCHAR(8000)
-- AS
-- BEGIN

--   RETURN '<p className="card-text">' + REPLACE(REPLACE(REPLACE(@originalText, '\r\n', '</p><p className="card-text">'), '<p className="card-text"></p>', ''), ' </p>', '</p>') + '</p>'

-- END
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getTitleCase (
  @InputString varchar(4000)
  ) 

RETURNS VARCHAR(4000)
AS
BEGIN

  -- * Not used https://www.geeksforgeeks.org/how-to-capitalize-first-letter-in-sql/ -- 09/22/2023 MF
  -- * Not used https://stackoverflow.com/questions/11653491/sql-capitalize-first-letter-of-each-word -- 09/22/2023 MF

  -- * Used InitCap as a model http://www.sql-server-helper.com/functions/initcap.aspx -- 09/22/2023 MF
  -- * Used InitCap as a model https://stackoverflow.com/questions/55054/how-to-capitalize-the-first-letter-of-each-word-in-a-string-in-sql-server -- 09/22/2023 MF
  -- * Used InitCap as a model https://stackoverflow.com/questions/69032864/capitalize-the-first-letter-of-each-word-without-affecting-the-consecutive-lette -- 09/22/2023 MF

  DECLARE @Index INT
  DECLARE @Character CHAR(1)
  DECLARE @PreviousCharacter CHAR(1)
  DECLARE @OutputString VARCHAR(255)

  -- SET @OutputString = LOWER(@InputString)
  SET @OutputString = @InputString
  SET @Index = 1

  WHILE @Index <= LEN(@InputString)
  BEGIN

      SET @Character = SUBSTRING(@InputString, @Index, 1)
      SET @PreviousCharacter = CASE 
        WHEN @Index = 1 THEN ' '
        ELSE SUBSTRING(@InputString, @Index - 1, 1)
      END

      -- IF @PreviousCharacter IN (' ', ';', ':', '!', '?', ',', '.', '_', '-', '/', '&', '''', '(')
      IF @PreviousCharacter IN (' ', '-')
        BEGIN
          IF @PreviousCharacter <> '''' OR UPPER(@Character) <> 'S'
            BEGIN
              SET @OutputString = STUFF(@OutputString, @Index, 1, UPPER(@Character))
            END
        END

      SET @Index = @Index + 1

  END

  RETURN @OutputString

END
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE FUNCTION udf_getLearningObjectProgramTypes (
--   @learningObjectID INT
--   )

-- RETURNS VARCHAR(100)
-- AS
-- BEGIN

--   RETURN (SELECT STRING_AGG(courseCategories.programTypeID, ', ') AS programTypes
--   FROM learningObjectCourseCategories
--   INNER JOIN courseCategories ON courseCategories.courseCategoryID = learningObjectCourseCategories.courseCategoryID
--   WHERE learningObjectCourseCategories.learningObjectID = learningObjectID
--   GROUP BY learningObjectCourseCategories.learningObjectID)

-- END
-- GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE FUNCTION udf_getLearningObjectCourseCategories (
--   @learningObjectID INT
--   )

-- RETURNS VARCHAR(100)
-- AS
-- BEGIN

--   RETURN (SELECT STRING_AGG(courseCategoryID, ', ') AS courseCategories
--   FROM learningObjectCourseCategories
--   WHERE learningObjectCourseCategories.learningObjectID = learningObjectID
--   GROUP BY learningObjectCourseCategories.learningObjectID)

-- END
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getUsername (
  @userID INT
  )

RETURNS VARCHAR(255)
AS
BEGIN

  RETURN (SELECT username
  FROM users
  WHERE userID = @userID)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getUserID (
  @username VARCHAR(255)
  )

RETURNS VARCHAR(255)
AS
BEGIN

  RETURN (SELECT userID
  FROM users
  WHERE username = @username)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getContentReviewPeriodMonths (
  @learningObjectID INT
  )

RETURNS INT
AS
BEGIN

  RETURN (SELECT TOP (1) reviewPeriodMonths
  FROM learningObjectCourseCategories
  INNER JOIN courseCategories ON learningObjectCourseCategories.courseCategoryID = courseCategories.courseCategoryID
  WHERE learningObjectID = @learningObjectID
  ORDER BY reviewPeriodMonths ASC)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getLastLearningObjectContentReview (
  @learningObjectID INT
  )

RETURNS DATETIME
AS
BEGIN

  RETURN (SELECT TOP (1) createDate
  FROM learningObjectContentReviews
  WHERE learningObjectID = @learningObjectID
  ORDER BY createDate DESC)

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION udf_getLearningObjectName (
  @learningObjectID INT
  )

RETURNS VARCHAR(500)
AS
BEGIN

  RETURN (SELECT learningObjectTitle
  FROM learningObjects
  WHERE learningObjectID = @learningObjectID)

END
GO
