-- USE [ExtendedRealityScheduling]
-- GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_partnerSitesAll]') AND type in (N'V'))
DROP VIEW [vw_partnerSitesAll]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulations]') AND type in (N'V'))
DROP VIEW [vw_simulations]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_otherRequests]') AND type in (N'V'))
DROP VIEW [vw_otherRequests]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_otherRequestSimulations]') AND type in (N'V'))
DROP VIEW [vw_otherRequestSimulations]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_requests]') AND type in (N'V'))
DROP VIEW [vw_requests]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_contacts]') AND type in (N'V'))
DROP VIEW [vw_contacts]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_requestsNotifications]') AND type in (N'V'))
DROP VIEW [vw_requestsNotifications]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_partnerSiteContacts]') AND type in (N'V'))
DROP VIEW [vw_partnerSiteContacts]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSchedules]') AND type in (N'V'))
DROP VIEW [vw_simulationSchedules]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationScheduleDates]') AND type in (N'V'))
DROP VIEW [vw_simulationScheduleDates]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationScheduleItems]') AND type in (N'V'))
DROP VIEW [vw_simulationScheduleItems]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_users]') AND type in (N'V'))
DROP VIEW [vw_users]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_upcomingSimulations]') AND type in (N'V'))
DROP VIEW [vw_upcomingSimulations]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_schedulesApproved]') AND type in (N'V'))
DROP VIEW [vw_schedulesApproved]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_implementationSurveys]') AND type in (N'V'))
DROP VIEW [vw_implementationSurveys]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_implementationResources]') AND type in (N'V'))
DROP VIEW [vw_implementationResources]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_sosAssistantUsers]') AND type in (N'V'))
DROP VIEW [vw_sosAssistantUsers]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_sosAssistantUserApplications]') AND type in (N'V'))
DROP VIEW [vw_sosAssistantUserApplications]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_sosAssistantUserRequests]') AND type in (N'V'))
DROP VIEW [vw_sosAssistantUserRequests]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_notificationLogsJoined]') AND type in (N'V'))
DROP VIEW [vw_notificationLogsJoined]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_notificationLogsRecent]') AND type in (N'V'))
DROP VIEW [vw_notificationLogsRecent]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_notificationLogsAllRequests]') AND type in (N'V'))
DROP VIEW [vw_notificationLogsAllRequests]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_notificationLogsRequests]') AND type in (N'V'))
DROP VIEW [vw_notificationLogsRequests]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_notificationLogsOtherRequests]') AND type in (N'V'))
DROP VIEW [vw_notificationLogsOtherRequests]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_notificationLogsSOSAssistantUserRequests]') AND type in (N'V'))
DROP VIEW [vw_notificationLogsSOSAssistantUserRequests]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationEquipmentHeadsets]') AND type in (N'V'))
DROP VIEW [vw_simulationEquipmentHeadsets]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationEquipment]') AND type in (N'V'))
DROP VIEW [vw_simulationEquipment]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_travelTeamMembers]') AND type in (N'V'))
DROP VIEW [vw_travelTeamMembers]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_travelTeams]') AND type in (N'V'))
DROP VIEW [vw_travelTeams]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_shippingCompanies]') AND type in (N'V'))
DROP VIEW [vw_shippingCompanies]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationEquipmentTracking]') AND type in (N'V'))
DROP VIEW [vw_simulationEquipmentTracking]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_requestEquipment]') AND type in (N'V'))
DROP VIEW [vw_requestEquipment]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_equipmentShipping]') AND type in (N'V'))
DROP VIEW [vw_equipmentShipping]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_anchorImages]') AND type in (N'V'))
DROP VIEW [vw_anchorImages]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_surveys]') AND type in (N'V'))
DROP VIEW [vw_surveys]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_equipmentChecklists]') AND type in (N'V'))
DROP VIEW [vw_equipmentChecklists]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_partnerEquipmentChecklists]') AND type in (N'V'))
DROP VIEW [vw_partnerEquipmentChecklists]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsBase]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsBase]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsJoins]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsJoins]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionDevices]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionDevices]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsHeadsets]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsHeadsets]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_currentSimulationSessionsCloseFirst]') AND type in (N'V'))
-- DROP VIEW [vw_currentSimulationSessionsCloseFirst]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessions]') AND type in (N'V'))
DROP VIEW [vw_simulationSessions]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsIncluded]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsIncluded]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_currentSimulationSessions]') AND type in (N'V'))
DROP VIEW [vw_currentSimulationSessions]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsToday]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsToday]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsCreateIssues]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsCreateIssues]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsIssues]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsIssues]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsUnscheduled]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsUnscheduled]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vw_simulationSessionsUntested]') AND type in (N'V'))
DROP VIEW [vw_simulationSessionsUntested]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_requestScheduleDatesMismatch]') AND type in (N'V'))
DROP VIEW [statistics].[vw_requestScheduleDatesMismatch]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_requestContactDuplicates]') AND type in (N'V'))
DROP VIEW [statistics].[vw_requestContactDuplicates]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_statisticsImplementedBase]') AND type in (N'V'))
DROP VIEW [statistics].[vw_statisticsImplementedBase]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_statisticsPendingBase]') AND type in (N'V'))
DROP VIEW [statistics].[vw_statisticsPendingBase]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_statisticsPreviousYearsBase]') AND type in (N'V'))
DROP VIEW [statistics].[vw_statisticsPreviousYearsBase]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_statisticsCurrentYearBase]') AND type in (N'V'))
DROP VIEW [statistics].[vw_statisticsCurrentYearBase]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_statisticsPartners]') AND type in (N'V'))
DROP VIEW [statistics].[vw_statisticsPartners]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_simulationProjections]') AND type in (N'V'))
DROP VIEW [statistics].[vw_simulationProjections]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnersSitesImplemented]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnersSitesImplemented]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_simulationsStudentsCompleted]') AND type in (N'V'))
DROP VIEW [statistics].[vw_simulationsStudentsCompleted]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnersStudentsCompleted]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnersStudentsCompleted]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnersSimulations]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnersSimulations]
GO
-- IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_studentsPerYearPerPartner]') AND type in (N'V'))
-- DROP VIEW [statistics].[vw_studentsPerYearPerPartner]
-- GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_finalStudentCountProblems]') AND type in (N'V'))
DROP VIEW [statistics].[vw_finalStudentCountProblems]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_partnersFirstImplementations]') AND type in (N'V'))
DROP VIEW [statistics].[vw_partnersFirstImplementations]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[statistics].[vw_requestStudentTotalsBySemester]') AND type in (N'V'))
DROP VIEW [statistics].[vw_requestStudentTotalsBySemester]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_partnerSitesAll]
AS
SELECT partnerID, partnerName, partnerAbbreviation, /* helpdeskDepartment, helpdeskEmail, helpdeskShortURL, helpdeskFullURL, */ currentPartner, partnersActive, partnersCreateDate, partnerSiteID, partnerSiteName, partnerSiteNameAbbreviation, partnerSiteAbbreviation, partnerSitesActive, partnerSitesCreateDate, partnerSiteAddressID, street, city, state, zipCode, partnerSiteAddressesActive, partnerSiteAddressesCreateDate
FROM [Partners].[dbo].vw_partnerSites
UNION ALL
SELECT partnerID, partnerName, partnerAbbreviation, currentPartner, active AS partnersActive, createDate AS partnersCreateDate, partnerSiteID, partnerSiteName, partnerSiteNameAbbreviation, partnerSiteAbbreviation, active AS partnerSitesActive, createDate AS partnerSitesCreateDate, partnerSiteAddressID, street, city, state, zipCode, active AS partnerSiteAddressesActive, createDate AS partnerSiteAddressesCreateDate
FROM nonpartners
WHERE active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulations]
AS
SELECT simulationID, simulationTypes.simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL
FROM simulations
INNER JOIN simulationTypes ON simulations.simulationTypeID = simulationTypes.simulationTypeID
WHERE simulations.active = 1
AND simulationTypes.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_otherRequests]
AS
SELECT otherRequests.otherRequestID, otherRequests.requestTypeID, requestTypeName,
(SELECT STRING_AGG(simulationName, ', ')
FROM otherRequestSimulations
INNER JOIN vw_simulations ON otherRequestSimulations.simulationID = vw_simulations.simulationID
WHERE otherRequestID = otherRequests.otherRequestID) AS simulations, otherRequests.partnerSiteID, conferenceName, otherRequests.street AS conferenceStreet, otherRequests.city AS conferenceCity, otherRequests.state AS conferenceState, otherRequests.zipCode AS conferenceZipCode, preferredDate, startDate, endDate, programID, programData.name AS programName,
CASE
  WHEN programData.name = 'Accelerated Bachelor of Science in Nursing (ABSN)' THEN 'ABSN'
  WHEN programData.name = 'Traditional Nursing Program (TRAD)' THEN 'TRAD'
  ELSE ''
END AS programNameAbbreviation,
eventTypeID, eventTypeData.name AS eventTypeName, eventTypeOther, firstName, lastName, email, confirmed, dbo.udf_getRequestStatus(confirmed, preferredDate, preferredDate) AS requestStatus, otherRequests.createDate, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, vw_partnerSitesAll.street, vw_partnerSitesAll.city, vw_partnerSitesAll.state, vw_partnerSitesAll.zipCode
FROM otherRequests
LEFT OUTER JOIN requestTypes ON otherRequests.requestTypeID = requestTypes.requestTypeID
LEFT OUTER JOIN vw_partnerSitesAll ON otherRequests.partnerSiteID = vw_partnerSitesAll.partnerSiteID
LEFT OUTER JOIN associatedData AS programData ON otherRequests.programID = programData.associatedDataID
LEFT OUTER JOIN associatedData AS eventTypeData ON otherRequests.eventTypeID = eventTypeData.associatedDataID
WHERE otherRequests.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_otherRequestSimulations]
AS
SELECT otherRequestSimulations.otherRequestID, vw_otherRequests.requestTypeID, requestTypeName, simulations, partnerSiteID, conferenceName, conferenceStreet, conferenceCity, conferenceState, conferenceZipCode, preferredDate, startDate, endDate, programID, programName, programNameAbbreviation, eventTypeID, eventTypeName, eventTypeOther, firstName, lastName, email, confirmed, requestStatus, vw_otherRequests.createDate, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, otherRequestSimulations.simulationID, simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL
FROM vw_otherRequests
INNER JOIN otherRequestSimulations ON vw_otherRequests.otherRequestID = otherRequestSimulations.otherRequestID
INNER JOIN vw_simulations ON otherRequestSimulations.simulationID = vw_simulations.simulationID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_requests]
AS
SELECT requests.requestID, requests.requestTypeID, requestTypeName, requests.simulationID, simulationTypeID, simulationName, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, requests.partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityData.name AS alternateActivityName, recordSessionID, recordSessionData.name AS recordSessionName, relatedCourse, programID, programData.name AS programName,
CASE
  WHEN programData.name = 'Accelerated Bachelor of Science in Nursing (ABSN)' THEN 'ABSN'
  WHEN programData.name = 'Traditional Nursing Program (TRAD)' THEN 'TRAD'
  ELSE ''
END AS programNameAbbreviation,
confirmed, clinicalReplacement, sendNotifications, requests.createDate, dbo.udf_getRequestStatus(confirmed, startDate, endDate) AS requestStatus, dbo.udf_getScheduleStatus(submissionApproved, finalSubmission) AS scheduleStatus, dbo.udf_getScheduleStartDateMatches(requests.requestID) AS scheduleStartDateMatches, dbo.udf_getScheduleEndDateMatches(requests.requestID) AS scheduleEndDateMatches,
partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, schedules.scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedData.name AS alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate
FROM requests
LEFT OUTER JOIN requestTypes ON requests.requestTypeID = requestTypes.requestTypeID
INNER JOIN vw_simulations ON requests.simulationID = vw_simulations.simulationID
LEFT OUTER JOIN associatedData AS alternateActivityData ON requests.alternateActivityID = alternateActivityData.associatedDataID
LEFT OUTER JOIN associatedData AS recordSessionData ON requests.recordSessionID = recordSessionData.associatedDataID
INNER JOIN vw_partnerSitesAll ON requests.partnerSiteID = vw_partnerSitesAll.partnerSiteID
LEFT OUTER JOIN schedules ON requests.requestID = schedules.requestID AND (schedules.active = 1 OR schedules.active IS NULL)
LEFT OUTER JOIN associatedData AS alternateActivityUpdatedData ON schedules.alternateActivityUpdatedID = alternateActivityUpdatedData.associatedDataID
LEFT OUTER JOIN associatedData AS programData ON requests.programID = programData.associatedDataID
WHERE requests.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_contacts]
AS
SELECT contactID, requestID, firstName, lastName, email, positionID, associatedData.name AS positionName, pointOfContact
FROM contacts
INNER JOIN associatedData ON contacts.positionID = associatedData.associatedDataID
WHERE contacts.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_requestsNotifications]
AS
SELECT requests.requestID, requests.requestTypeID, requestTypeName, requests.simulationID, simulationTypeID,simulationName, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, requests.partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityData.name AS alternateActivityName, recordSessionID, recordSessionData.name AS recordSessionName, relatedCourse, programID, programData.name AS programName,
CASE
  WHEN programData.name = 'Accelerated Bachelor of Science in Nursing (ABSN)' THEN 'ABSN'
  WHEN programData.name = 'Traditional Nursing Program (TRAD)' THEN 'TRAD'
  ELSE ''
END AS programNameAbbreviation,
confirmed, clinicalReplacement, sendNotifications, dbo.udf_getRequestStatus(confirmed, startDate, endDate) AS requestStatus, dbo.udf_getScheduleStatus(submissionApproved, finalSubmission) AS scheduleStatus, dbo.udf_getScheduleStartDateMatches(requests.requestID) AS scheduleStartDateMatches, dbo.udf_getScheduleEndDateMatches(requests.requestID) AS scheduleEndDateMatches,
partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, schedules.scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedData.name AS alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, contactID, firstName, lastName, email, positionID, positionName, pointOfContact
FROM requests
LEFT OUTER JOIN requestTypes ON requests.requestTypeID = requestTypes.requestTypeID
INNER JOIN vw_simulations ON requests.simulationID = vw_simulations.simulationID
INNER JOIN associatedData AS alternateActivityData ON requests.alternateActivityID = alternateActivityData.associatedDataID
LEFT OUTER JOIN associatedData AS recordSessionData ON requests.recordSessionID = recordSessionData.associatedDataID
INNER JOIN vw_partnerSitesAll ON requests.partnerSiteID = vw_partnerSitesAll.partnerSiteID
LEFT OUTER JOIN schedules ON requests.requestID = schedules.requestID AND (schedules.active = 1 OR schedules.active IS NULL)
LEFT OUTER JOIN associatedData AS alternateActivityUpdatedData ON schedules.alternateActivityUpdatedID = alternateActivityUpdatedData.associatedDataID
LEFT OUTER JOIN associatedData AS programData ON requests.programID = programData.associatedDataID
INNER JOIN vw_contacts ON requests.requestID = vw_contacts.requestID
WHERE email IS NOT NULL AND email <> ''
AND requests.active = 1
AND pointOfContact = 1
-- -- * The Course Lead position should never receive email notifications. -- 03/13/2025 MF
-- AND positionID <> 8
AND sendNotifications = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_partnerSiteContacts]
AS
SELECT partnerSiteContactID, partnerSiteContacts.partnerSiteID, vw_partnerSitesAll.partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, city, state, firstName, lastName, email, positionID, associatedData.name AS positionName
FROM partnerSiteContacts
INNER JOIN associatedData ON partnerSiteContacts.positionID = associatedData.associatedDataID
LEFT OUTER JOIN vw_partnerSitesAll ON partnerSiteContacts.partnerSiteID = vw_partnerSitesAll.partnerSiteID
WHERE partnerSiteContacts.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSchedules]
AS
SELECT vw_requests.requestID, requestTypeID, requestTypeName, simulationID, simulationName, simulationTypeID, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, vw_requests.scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, scheduleDates.scheduleDateID, simulationDate, scheduleItems.scheduleItemID, groupName, groupNumber, startTime, scheduleItems.location AS scheduleItemsLocation, numberOfStudents
FROM vw_requests
INNER JOIN scheduleDates ON vw_requests.scheduleID = scheduleDates.scheduleID
INNER JOIN scheduleItems ON scheduleDates.scheduleDateID = scheduleItems.scheduleDateID
WHERE scheduleDates.active = 1
AND scheduleItems.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationScheduleDates]
AS
SELECT vw_requests.requestID, requestTypeID, requestTypeName, vw_requests.scheduleID, simulationID, simulationName, simulationTypeID, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, scheduleDates.scheduleDateID, simulationDate
FROM vw_requests
INNER JOIN scheduleDates ON vw_requests.scheduleID = scheduleDates.scheduleID
WHERE scheduleDates.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationScheduleItems]
AS
SELECT scheduleID, scheduleDates.scheduleDateID, simulationDate, scheduleItemID, startTime, groupName, groupNumber, location, numberOfStudents
FROM scheduleDates
INNER JOIN scheduleItems ON scheduleDates.scheduleDateID = scheduleItems.scheduleDateID
WHERE scheduleDates.active = 1
AND scheduleItems.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_users]
AS
SELECT userID, username, firstName, lastName, email, password, users.userRoleID, userRole, requestedBy, requestDate, notes, lastLogin, users.active, updateDate
FROM users
INNER JOIN userRoles ON users.userRoleID = userRoles.userRoleID
WHERE userRoles.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_upcomingSimulations]
AS
SELECT vw_requests.requestID, requestTypeID, requestTypeName, simulationID, simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, dbo.udf_getLastNotification(vw_requests.requestID) AS lastNotification, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, contactID, firstName, lastName, email, positionID, pointOfContact
FROM vw_requests
INNER JOIN vw_contacts ON vw_requests.requestID = vw_contacts.requestID
WHERE email IS NOT NULL AND email <> ''
-- * Send five weeks before an implementation startDate initially. -- 08/29/2025 MF
AND DATEADD(week, -5, startDate) <= GETDATE()
AND startDate > GETDATE()
-- * Send a reminder every week until a schedule has been submitted. -- 08/29/2025 MF
-- ? Does this date calculation need to be changed? What if the previous notification occurred seconds after this one? Then wouldn't it take another day before it is sent out?  -- 01/07/2025 MF
AND (DATEADD(day, 7, dbo.udf_getLastNotification(vw_requests.requestID)) <= GETDATE()
OR dbo.udf_getLastNotification(vw_requests.requestID) IS NULL)
AND (vw_requests.requestID NOT IN (SELECT requestID FROM schedules WHERE active = 1)
OR vw_requests.requestID IN (SELECT requestID FROM schedules WHERE active = 1 AND finalSubmission <> 1))
AND pointOfContact = 1
-- -- * The Course Lead position should never receive email notifications. -- 03/13/2025 MF
-- AND positionID <> 8
AND sendNotifications = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_schedulesApproved]
AS
SELECT vw_requests.requestID, requestTypeID, requestTypeName, simulationID, simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, contactID, firstName, lastName, email, positionID, pointOfContact
FROM vw_requests
INNER JOIN vw_contacts ON vw_requests.requestID = vw_contacts.requestID
WHERE email IS NOT NULL AND email <> ''
-- * Schedules can be approved before they are considered upcoming. -- 06/25/2024 MF
-- AND DATEADD(week, -5, startDate) <= GETDATE()
-- AND startDate > GETDATE()
-- AND vw_requests.requestID IN (SELECT requestID FROM schedules WHERE active = 1 AND submissionApproved = 1)
AND submissionApproved = 1
AND pointOfContact = 1
-- -- * The Course Lead position should never receive email notifications. -- 03/13/2025 MF
-- AND positionID <> 8
AND sendNotifications = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_implementationSurveys]
AS
SELECT vw_requests.requestID, requestTypeID, requestTypeName, simulationID, simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, dbo.udf_getLastNotification(vw_requests.requestID) AS lastNotification, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, contactID, firstName, lastName, email, positionID, pointOfContact
FROM vw_requests
INNER JOIN vw_contacts ON vw_requests.requestID = vw_contacts.requestID
WHERE email IS NOT NULL AND email <> ''
-- * Send on the endDate of an implementation. -- 08/29/2025 MF
AND GETDATE() BETWEEN endDate AND DATEADD(day, 1, endDate)
-- AND positionID IN (6, 7, 8, 9)
-- -- * The Course Lead position should never receive email notifications. -- 03/13/2025 MF
-- AND positionID IN (6, 7, 9)
-- * The Director Nursing Services (DNS) position would never receive these email notifications. -- 08/28/2025 MF
AND positionID IN (7, 9)
AND sendNotifications = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_implementationResources]
AS
SELECT vw_requests.requestID, requestTypeID, requestTypeName, vw_requests.simulationID, simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, vw_requests.partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, vw_requests.programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, dbo.udf_getLastNotification(vw_requests.requestID) AS lastNotification, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, contactID, firstName, lastName, email, positionID, pointOfContact, qrCode, anchorImage
FROM vw_requests
INNER JOIN vw_contacts ON vw_requests.requestID = vw_contacts.requestID
LEFT OUTER JOIN anchorImages ON vw_requests.partnerSiteID = anchorImages.partnerSiteID
LEFT OUTER JOIN surveys ON vw_requests.partnerSiteID = surveys.partnerSiteID AND vw_requests.simulationID = surveys.simulationID AND vw_requests.programID = surveys.programID
WHERE email IS NOT NULL AND email <> ''
-- * Send seven days before an implementation startDate. -- 08/29/2025 MF
AND GETDATE() BETWEEN DATEADD(day, -7, startDate) AND DATEADD(day, -6, startDate)
-- AND positionID IN (6, 7, 8, 9)
-- -- * The Course Lead position should never receive email notifications. -- 03/13/2025 MF
-- AND positionID IN (6, 7, 9)
-- * The Director Nursing Services (DNS) position would never receive these email notifications. -- 08/28/2025 MF
AND positionID IN (7, 9)
AND sendNotifications = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_sosAssistantUsers]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT userID, username, firstName, lastName, email, password, sosAssistantUsers.userRoleID, userRole, NULL AS requestedBy, NULL AS requestDate, NULL AS notes, lastLogin, sosAssistantUsers.active, updateDate, sosAssistantUsers.partnerSiteID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, city, state, 
(SELECT STRING_AGG(applicationName, ', ')
FROM sosAssistantUsersApplications
LEFT OUTER JOIN sosAssistantUserApplications ON sosAssistantUsersApplications.applicationID = sosAssistantUserApplications.applicationID
WHERE userID = sosAssistantUsers.userID) AS applications
FROM sosAssistantUsers
INNER JOIN userRoles ON sosAssistantUsers.userRoleID = userRoles.userRoleID
LEFT OUTER JOIN vw_partnerSitesAll ON sosAssistantUsers.partnerSiteID = vw_partnerSitesAll.partnerSiteID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_sosAssistantUserApplications]
AS
SELECT userID, sosAssistantUsersApplications.applicationID, sosAssistantUsersApplications.createDate AS sosAssistantUsersApplicationsCreateDate, applicationName
FROM sosAssistantUsersApplications
INNER JOIN sosAssistantUserApplications ON sosAssistantUsersApplications.applicationID = sosAssistantUserApplications.applicationID
WHERE sosAssistantUserApplications.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_sosAssistantUserRequests]
AS
SELECT sosAssistantUserRequestID, sosAssistantUserRequests.requestTypeID, requestTypeName, firstName, lastName, email, sosAssistantUserRequests.partnerSiteID, positionID, positionData.name AS positionName, programID, programData.name AS programName,
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
sosAssistantUserRequests.createDate, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, partnerSiteAddressesActive
FROM sosAssistantUserRequests
LEFT OUTER JOIN requestTypes ON sosAssistantUserRequests.requestTypeID = requestTypes.requestTypeID
INNER JOIN vw_partnerSitesAll ON sosAssistantUserRequests.partnerSiteID = vw_partnerSitesAll.partnerSiteID
INNER JOIN associatedData AS programData ON sosAssistantUserRequests.programID = programData.associatedDataID
INNER JOIN associatedData AS positionData ON sosAssistantUserRequests.positionID = positionData.associatedDataID
WHERE sosAssistantUserRequests.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_notificationLogsJoined]
AS
SELECT jsonValues.partnerSiteID, jsonValues.requestID, jsonValues.contactID, jsonValues.otherRequestID, jsonValues.sosAssistantUserRequestID, operation, transactionData, messageID, toEmail, jsonValues.subject, messageText, messageHTML, response, accepted, rejected, dateEntered AS logsDateEntered, timestamp AS logsTimestamp, createDate AS notificationLogsCreateDate
FROM logs
CROSS APPLY OPENJSON (transactionData)
  WITH (
    requestID INT '$.requestID'
    , partnerSiteID INT '$.partnerSiteID'
    , contactID INT '$.contactID'
    , otherRequestID INT '$.otherRequestID'
    , sosAssistantUserRequestID INT '$.sosAssistantUserRequestID'
    , messageID VARCHAR(500) '$.messageId'
    , toEmail VARCHAR(500) '$.toEmail'
    , subject VARCHAR(500) '$.subject'
    , response VARCHAR(500) '$.response'
    , accepted NVARCHAR(MAX) '$.accepted' AS JSON
    , rejected NVARCHAR(MAX) '$.rejected' AS JSON
  ) AS jsonValues
LEFT OUTER JOIN notificationLogs ON notificationLogs.subject COLLATE Latin1_General_100_CI_AI_SC_UTF8 = jsonValues.subject COLLATE Latin1_General_100_CI_AI_SC_UTF8

AND jsonValues.partnerSiteID = notificationLogs.partnerSiteID
AND (
(jsonValues.requestID = notificationLogs.requestID AND jsonValues.contactID = notificationLogs.contactID)
OR (jsonValues.requestID = notificationLogs.requestID AND jsonValues.contactID IS NULL)
OR jsonValues.otherRequestID = notificationLogs.otherRequestID
OR jsonValues.sosAssistantUserRequestID = notificationLogs.sosAssistantUserRequestID
)

AND DATEPART(year, timestamp) = DATEPART(year, createDate)
AND DATEPART(month, timestamp) = DATEPART(month, createDate)
AND DATEPART(day, timestamp) = DATEPART(day, createDate)
AND DATEPART(hour, timestamp) = DATEPART(hour, createDate)
WHERE operation LIKE '%sendNotificationEmail Message sent.%'
-- AND jsonValues.partnerSiteID IS NOT NULL
--  WHERE messageID IN ('<849a5895-8a46-d42e-3986-8a57c3b97313@orbiseducation.com>', '<002644ec-92fd-155d-0075-a6df91099b46@orbiseducation.com>', '<6afd8c98-723b-4e1d-60d3-0694cd8d6dfb@orbiseducation.com>', '<c48c105c-1b6f-b1bb-2f84-543c82ce2c80@orbiseducation.com>')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_notificationLogsRecent]
AS
SELECT TOP (200) * FROM notificationLogs
ORDER BY createDate DESC
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_notificationLogsRequests]
AS
SELECT vw_requests.requestID, requestTypeID, requestTypeName, simulationID, simulationTypeID, simulationName, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, vw_requests.partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, vw_contacts.contactID, firstName, lastName, email, positionID, positionName, pointOfContact, notificationLogs.requestID AS notificationLogsRequestID, otherRequestID AS notificationLogsOtherRequestID, notificationLogs.partnerSiteID AS notificationLogsPartnerSiteID, notificationLogs.contactID AS notificationLogsContactID, sosAssistantUserRequestID AS notificationLogsSOSAssistantUserRequestID, subject, dbo.udf_getEmailType(subject) AS emailType, messageText, messageHTML, notificationLogs.createDate AS notificationLogsCreateDate -- , dbo.udf_getSOSSurveySent(requests.requestID, NULL) AS sosSurveySent, dbo.udf_getFacultySurveySent(requests.requestID, NULL) AS facultySurveySent, dbo.udf_getSOSResourcesSent(requests.requestID, NULL) AS sosResourcesSent, dbo.udf_getFacultyResourcesSent(requests.requestID, NULL) AS facultyResourcesSent
FROM vw_requests
INNER JOIN vw_contacts ON vw_requests.requestID = vw_contacts.requestID
INNER JOIN notificationLogs ON vw_requests.requestID = notificationLogs.requestID AND vw_contacts.contactID = notificationLogs.contactID
UNION ALL
SELECT vw_requests.requestID, requestTypeID, requestTypeName, simulationID, simulationTypeID, simulationName, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, vw_requests.partnerSiteID, startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate, NULL AS contactID, NULL AS firstName, NULL AS lastName, 'mixedreality@orbiseducation.com' AS email, NULL AS positionID, NULL AS positionName, NULL AS pointOfContact, notificationLogs.requestID AS notificationLogsRequestID, otherRequestID AS notificationLogsOtherRequestID, notificationLogs.partnerSiteID AS notificationLogsPartnerSiteID, notificationLogs.contactID AS notificationLogsContactID, sosAssistantUserRequestID AS notificationLogsSOSAssistantUserRequestID, subject, dbo.udf_getEmailType(subject) AS emailType, messageText, messageHTML, notificationLogs.createDate AS notificationLogsCreateDate -- , dbo.udf_getSOSSurveySent(requests.requestID, NULL) AS sosSurveySent, dbo.udf_getFacultySurveySent(requests.requestID, NULL) AS facultySurveySent, dbo.udf_getSOSResourcesSent(requests.requestID, NULL) AS sosResourcesSent, dbo.udf_getFacultyResourcesSent(requests.requestID, NULL) AS facultyResourcesSent
FROM vw_requests
INNER JOIN notificationLogs ON vw_requests.requestID = notificationLogs.requestID AND notificationLogs.contactID IS NULL
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_notificationLogsOtherRequests]
AS
SELECT vw_otherRequests.otherRequestID, simulations, requestTypeID, requestTypeName, vw_otherRequests.partnerSiteID, firstName, lastName, email, preferredDate, programID, programName, programNameAbbreviation, confirmed, requestStatus, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, requestID AS notificationLogsRequestID, notificationLogs.otherRequestID AS notificationLogsOtherRequestID, notificationLogs.partnerSiteID AS notificationLogsPartnerSiteID, contactID AS notificationLogsContactID, sosAssistantUserRequestID AS notificationLogsSOSAssistantUserRequestID, subject, dbo.udf_getEmailType(subject) AS emailType, messageText, messageHTML, notificationLogs.createDate AS notificationLogsCreateDate
FROM vw_otherRequests
INNER JOIN notificationLogs ON vw_otherRequests.otherRequestID = notificationLogs.otherRequestID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_notificationLogsSOSAssistantUserRequests]
AS
SELECT vw_sosAssistantUserRequests.sosAssistantUserRequestID, requestTypeID, requestTypeName, firstName, lastName, email, vw_sosAssistantUserRequests.partnerSiteID, positionID, positionName, programID, programName, programNameAbbreviation, simulationDate, details, completed, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, requestID AS notificationLogsRequestID, otherRequestID AS notificationLogsOtherRequestID, notificationLogs.partnerSiteID AS notificationLogsPartnerSiteID, contactID AS notificationLogsContactID, notificationLogs.sosAssistantUserRequestID AS notificationLogsSOSAssistantUserRequestID, subject, dbo.udf_getEmailType(subject) AS emailType, messageText, messageHTML, notificationLogs.createDate AS notificationLogsCreateDate
FROM vw_sosAssistantUserRequests
INNER JOIN notificationLogs ON vw_sosAssistantUserRequests.sosAssistantUserRequestID = notificationLogs.sosAssistantUserRequestID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_notificationLogsAllRequests]
AS
SELECT notificationLogsRequestID, notificationLogsOtherRequestID, notificationLogsPartnerSiteID, notificationLogsContactID, notificationLogsSOSAssistantUserRequestID, requestTypeID, requestTypeName, simulationID, simulationName, partnerID, partnerName, partnerSiteName, scheduleID, contactID, firstName, lastName, email, positionID, positionName, subject, emailType, messageText, messageHTML, notificationLogsCreateDate
FROM vw_notificationLogsRequests
UNION ALL
SELECT notificationLogsRequestID, notificationLogsOtherRequestID, notificationLogsPartnerSiteID, notificationLogsContactID, notificationLogsSOSAssistantUserRequestID, requestTypeID, requestTypeName, NULL AS simulationID, simulations AS simulationName, partnerID, partnerName, partnerSiteName, NULL AS scheduleID, NULL AS contactID, firstName, lastName, email, NULL AS positionID, NULL AS positionName, subject, emailType, messageText, messageHTML, notificationLogsCreateDate
FROM vw_notificationLogsOtherRequests
UNION ALL
SELECT notificationLogsRequestID, notificationLogsOtherRequestID, notificationLogsPartnerSiteID, notificationLogsContactID, notificationLogsSOSAssistantUserRequestID, requestTypeID, requestTypeName, NULL AS simulationID, NULL AS simulationName, partnerID, partnerName, partnerSiteName, NULL AS scheduleID, NULL AS contactID, firstName, lastName, email, positionID, positionName, subject, emailType, messageText, messageHTML, notificationLogsCreateDate
FROM vw_notificationLogsSOSAssistantUserRequests
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationEquipment]
AS
SELECT simulationEquipmentID, kitNumber, simulationEquipment.simulationTypeID, simulationTypeName, kitTypeID, name AS kitTypeName,
CASE
  WHEN simulationEquipment.simulationTypeID = 1 THEN 'MR' + kitNumber
  WHEN simulationEquipment.simulationTypeID = 2 THEN 'VR' + kitNumber
  ELSE CAST(simulationEquipment.simulationTypeID AS VARCHAR) + ' ' + kitNumber
END AS kitName, crates, inRotation, currentLocationID, notes, simulationEquipment.active, partnerID, partnerName, partnerAbbreviation, partnerSiteID, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, partnerSiteAddressesActive
FROM simulationEquipment
INNER JOIN simulationTypes ON simulationEquipment.simulationTypeID = simulationTypes.simulationTypeID
INNER JOIN associatedData ON kitTypeID = associatedDataID
LEFT OUTER JOIN vw_partnerSitesAll ON simulationEquipment.currentLocationID = vw_partnerSitesAll.partnerSiteID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationEquipmentHeadsets]
AS
SELECT simulationHeadsets.simulationHeadsetID, headsetName, headsetTypeID, simulationTypes.simulationTypeName AS headsetTypeName, simulationHeadsets.active, simulationHeadsets.notes AS simulationHeadsetsNotes, vw_simulationEquipment.simulationEquipmentID, kitNumber, vw_simulationEquipment.simulationTypeID, vw_simulationEquipment.simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, vw_simulationEquipment.notes AS simulationEquipmentNotes, vw_simulationEquipment.active AS simulationEquipmentActive, partnerID, partnerName, partnerAbbreviation, partnerSiteID, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, partnerSiteAddressesActive
FROM simulationHeadsets
INNER JOIN simulationTypes ON headsetTypeID = simulationTypes.simulationTypeID
LEFT OUTER JOIN simulationEquipmentHeadsets ON simulationHeadsets.simulationHeadsetID = simulationEquipmentHeadsets.simulationHeadsetID
LEFT OUTER JOIN vw_simulationEquipment ON simulationEquipmentHeadsets.simulationEquipmentID = vw_simulationEquipment.simulationEquipmentID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_travelTeamMembers]
AS
SELECT travelTeamMemberID, firstName, lastName, email, display, active
FROM travelTeamMembers
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_travelTeams]
AS
SELECT travelTeams.travelTeamMemberID, travelTeams.requestID, requestTypeID, requestTypeName, travelTeams.confirmed, firstName, lastName, email, display, travelTeamMembers.active AS travelTeamMemberActive
FROM travelTeams
INNER JOIN vw_requests ON travelTeams.requestID = vw_requests.requestID
INNER JOIN travelTeamMembers ON travelTeams.travelTeamMemberID = travelTeamMembers.travelTeamMemberID
UNION ALL
SELECT travelTeams.travelTeamMemberID, travelTeams.otherRequestID, requestTypeID, requestTypeName, travelTeams.confirmed, travelTeamMembers.firstName, travelTeamMembers.lastName, travelTeamMembers.email, display, travelTeamMembers.active AS travelTeamMemberActive
FROM travelTeams
INNER JOIN vw_otherRequests ON travelTeams.otherRequestID = vw_otherRequests.otherRequestID
INNER JOIN travelTeamMembers ON travelTeams.travelTeamMemberID = travelTeamMembers.travelTeamMemberID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_shippingCompanies]
AS
SELECT shippingCompanyID, companyName, trackingLink
FROM shippingCompanies
WHERE active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationEquipmentTracking]
AS
-- TODO: Add the columns from simulationEquipment? -- 08/29/2025 MF
SELECT /* simulationEquipmentID, */ simulationEquipmentTracking.requestID, requestTypeID, requestTypeName, shippingDirectionID, shippingDirection.name AS shippingDirection, trackingNumber, simulationEquipmentTracking.shippingCompanyID, companyName, trackingLink
FROM simulationEquipmentTracking
INNER JOIN vw_requests ON simulationEquipmentTracking.requestID = vw_requests.requestID
LEFT OUTER JOIN shippingCompanies ON simulationEquipmentTracking.shippingCompanyID = shippingCompanies.shippingCompanyID
LEFT OUTER JOIN associatedData AS shippingDirection ON simulationEquipmentTracking.shippingDirectionID = shippingDirection.associatedDataID
UNION ALL
SELECT /* simulationEquipmentID, */ simulationEquipmentTracking.otherRequestID, requestTypeID, requestTypeName, shippingDirectionID, shippingDirection.name AS shippingDirection, trackingNumber, simulationEquipmentTracking.shippingCompanyID, companyName, trackingLink
FROM simulationEquipmentTracking
INNER JOIN vw_otherRequests ON simulationEquipmentTracking.otherRequestID = vw_otherRequests.otherRequestID
LEFT OUTER JOIN shippingCompanies ON simulationEquipmentTracking.shippingCompanyID = shippingCompanies.shippingCompanyID
LEFT OUTER JOIN associatedData AS shippingDirection ON simulationEquipmentTracking.shippingDirectionID = shippingDirection.associatedDataID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_requestEquipment]
AS
SELECT requestEquipment.simulationEquipmentID, requestEquipment.requestID, requestTypeID, requestTypeName, kitNumber, vw_simulationEquipment.simulationTypeID, vw_simulationEquipment.simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, vw_simulationEquipment.notes
-- TODO: Add the new columns from requestEquipment. -- 08/29/2025 MF
FROM requestEquipment
INNER JOIN vw_requests ON requestEquipment.requestID = vw_requests.requestID
INNER JOIN vw_simulationEquipment ON requestEquipment.simulationEquipmentID = vw_simulationEquipment.simulationEquipmentID
UNION ALL
SELECT requestEquipment.simulationEquipmentID, requestEquipment.otherRequestID, requestTypeID, requestTypeName, kitNumber, simulationTypeID, simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, vw_simulationEquipment.notes
-- TODO: Add the new columns from requestEquipment. -- 08/29/2025 MF
FROM requestEquipment
INNER JOIN vw_otherRequests ON requestEquipment.otherRequestID = vw_otherRequests.otherRequestID
INNER JOIN vw_simulationEquipment ON requestEquipment.simulationEquipmentID = vw_simulationEquipment.simulationEquipmentID
GO

-- SELECT requestID, requestTypeName, COUNT(*) AS kitCount
-- FROM [ExtendedRealitySchedulingDevelopment].[dbo].[vw_equipmentShipping]
-- WHERE partnerID <> 6
-- GROUP BY requestID, requestTypeID, requestTypeName
-- -- HAVING COUNT(*) = 1
-- HAVING COUNT(*) > 1

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_equipmentShipping]
AS
SELECT vw_requests.requestID, vw_requests.requestTypeID, vw_requests.requestTypeName, simulationName, DATEADD(day, -1, startDate) AS travelStartDate, DATEADD(day, 1, endDate) AS travelEndDate, partnerID, partnerName, partnerAbbreviation, partnerSiteID, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode
, simulationEquipmentID, kitNumber, vw_requestEquipment.simulationTypeID, vw_requestEquipment.simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, notes
, shippingDirectionID, shippingDirection, trackingNumber, shippingCompanyID, companyName, trackingLink
, 1 AS numberOfKits
, NULL AS shippedByDate
, NULL AS shippedToSiteDate
, NULL AS shippedFromSiteDate
, NULL AS address
, NULL AS pointOfContact
, NULL AS shipmentSupport
FROM vw_requests
LEFT OUTER JOIN vw_requestEquipment ON vw_requests.requestTypeID = 1 AND vw_requests.requestID = vw_requestEquipment.requestID
LEFT OUTER JOIN vw_simulationEquipmentTracking ON vw_requests.requestTypeID = 1 AND vw_requests.requestID = vw_simulationEquipmentTracking.requestID
UNION ALL
SELECT otherRequestID, vw_otherRequests.requestTypeID, vw_otherRequests.requestTypeName, simulations, DATEADD(day, -1, preferredDate) AS travelStartDate, DATEADD(day, 1, preferredDate) AS travelEndDate, partnerID, partnerName, partnerAbbreviation, partnerSiteID, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, conferenceStreet, conferenceCity, conferenceState, conferenceZipCode
, simulationEquipmentID, kitNumber, simulationTypeID, simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, notes
, shippingDirectionID, shippingDirection, trackingNumber, shippingCompanyID, companyName, trackingLink
, 1 AS numberOfKits
, NULL AS shippedByDate
, NULL AS shippedToSiteDate
, NULL AS shippedFromSiteDate
, NULL AS address
, NULL AS pointOfContact
, NULL AS shipmentSupport
FROM vw_otherRequests
LEFT OUTER JOIN vw_requestEquipment ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_requestEquipment.requestID
LEFT OUTER JOIN vw_simulationEquipmentTracking ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_simulationEquipmentTracking.requestID
WHERE preferredDate IS NOT NULL
AND conferenceStreet IS NOT NULL
UNION ALL
SELECT otherRequestID, vw_otherRequests.requestTypeID, vw_otherRequests.requestTypeName, simulations, DATEADD(day, -1, preferredDate) AS travelStartDate, DATEADD(day, 1, preferredDate) AS travelEndDate, partnerID, partnerName, partnerAbbreviation, partnerSiteID, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode
, simulationEquipmentID, kitNumber, simulationTypeID, simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, notes
, shippingDirectionID, shippingDirection, trackingNumber, shippingCompanyID, companyName, trackingLink
, 1 AS numberOfKits
, NULL AS shippedByDate
, NULL AS shippedToSiteDate
, NULL AS shippedFromSiteDate
, NULL AS address
, NULL AS pointOfContact
, NULL AS shipmentSupport
FROM vw_otherRequests
LEFT OUTER JOIN vw_requestEquipment ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_requestEquipment.requestID
LEFT OUTER JOIN vw_simulationEquipmentTracking ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_simulationEquipmentTracking.requestID
WHERE preferredDate IS NOT NULL
AND conferenceStreet IS NULL
UNION ALL
SELECT otherRequestID, vw_otherRequests.requestTypeID, vw_otherRequests.requestTypeName, simulations, DATEADD(day, -1, startDate) AS travelStartDate, DATEADD(day, 1, endDate) AS travelEndDate, partnerID, partnerName, partnerAbbreviation, partnerSiteID, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, conferenceStreet, conferenceCity, conferenceState, conferenceZipCode
, simulationEquipmentID, kitNumber, simulationTypeID, simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, notes
, shippingDirectionID, shippingDirection, trackingNumber, shippingCompanyID, companyName, trackingLink
, 1 AS numberOfKits
, NULL AS shippedByDate
, NULL AS shippedToSiteDate
, NULL AS shippedFromSiteDate
, NULL AS address
, NULL AS pointOfContact
, NULL AS shipmentSupport
FROM vw_otherRequests
LEFT OUTER JOIN vw_requestEquipment ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_requestEquipment.requestID
LEFT OUTER JOIN vw_simulationEquipmentTracking ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_simulationEquipmentTracking.requestID
WHERE preferredDate IS NULL
AND conferenceStreet IS NOT NULL
UNION ALL
SELECT otherRequestID, vw_otherRequests.requestTypeID, vw_otherRequests.requestTypeName, simulations, DATEADD(day, -1, startDate) AS travelStartDate, DATEADD(day, 1, endDate) AS travelEndDate, partnerID, partnerName, partnerAbbreviation, partnerSiteID, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode
, simulationEquipmentID, kitNumber, simulationTypeID, simulationTypeName, kitTypeID, kitTypeName, kitName, crates, inRotation, currentLocationID, notes
, shippingDirectionID, shippingDirection, trackingNumber, shippingCompanyID, companyName, trackingLink
, 1 AS numberOfKits
, NULL AS shippedByDate
, NULL AS shippedToSiteDate
, NULL AS shippedFromSiteDate
, NULL AS address
, NULL AS pointOfContact
, NULL AS shipmentSupport
FROM vw_otherRequests
LEFT OUTER JOIN vw_requestEquipment ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_requestEquipment.requestID
LEFT OUTER JOIN vw_simulationEquipmentTracking ON vw_otherRequests.requestTypeID = 2 AND vw_otherRequests.otherRequestID = vw_simulationEquipmentTracking.requestID
WHERE preferredDate IS NULL
AND conferenceStreet IS NULL
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_anchorImages]
AS
SELECT anchorImages.partnerSiteID, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, anchorImage, active, createDate
FROM anchorImages
INNER JOIN vw_partnerSitesAll ON anchorImages.partnerSiteID = vw_partnerSitesAll.partnerSiteID
WHERE anchorImages.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_surveys]
AS
SELECT surveys.partnerSiteID, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, surveys.simulationID, simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, programID, programData.name AS programName,
CASE
  WHEN programData.name = 'Accelerated Bachelor of Science in Nursing (ABSN)' THEN 'ABSN'
  WHEN programData.name = 'Traditional Nursing Program (TRAD)' THEN 'TRAD'
  ELSE ''
END AS programNameAbbreviation,
qrCode, url
FROM surveys
INNER JOIN vw_simulations ON surveys.simulationID = vw_simulations.simulationID
INNER JOIN associatedData AS programData ON surveys.programID = programData.associatedDataID
INNER JOIN vw_partnerSitesAll ON surveys.partnerSiteID = vw_partnerSitesAll.partnerSiteID
WHERE surveys.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_equipmentChecklists]
AS
SELECT equipmentChecklists.simulationTypeID, simulationTypeName, equipmentChecklists.equipmentItemID, equipmentItemName, notes, numberExpected, equipmentChecklists.createDate AS equipmentChecklistsCreateDate
FROM equipmentChecklists
INNER JOIN simulationTypes ON equipmentChecklists.simulationTypeID = simulationTypes.simulationTypeID
INNER JOIN equipmentItems ON equipmentChecklists.equipmentItemID = equipmentItems.equipmentItemID
WHERE equipmentItems.active = 1
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_partnerEquipmentChecklists]
AS
SELECT partnerEquipmentReviews.partnerEquipmentReviewID, partnerEquipmentReviews.requestID, otherRequestID, receivedDate, returnedDate, partnerEquipmentReviews.createDate AS partnerEquipmentReviewsCreateDate, partnerEquipmentChecklists.equipmentItemID, numberPresent, present, damaged, notFunctioning, partnerEquipmentChecklists.notes AS partnerEquipmentChecklistsNotes, partnerEquipmentChecklists.createDate AS partnerEquipmentChecklistsCreateDate, vw_equipmentChecklists.simulationTypeID, vw_equipmentChecklists.simulationTypeName, equipmentItemName, vw_equipmentChecklists.notes AS equipmentItemNotes, numberExpected, equipmentChecklistsCreateDate
FROM partnerEquipmentReviews
INNER JOIN partnerEquipmentChecklists ON partnerEquipmentReviews.partnerEquipmentReviewID = partnerEquipmentChecklists.partnerEquipmentReviewID
INNER JOIN vw_requests ON partnerEquipmentReviews.requestID = vw_requests.requestID
INNER JOIN vw_equipmentChecklists ON vw_requests.simulationTypeID = vw_equipmentChecklists.simulationTypeID
WHERE vw_equipmentChecklists.equipmentItemID = partnerEquipmentChecklists.equipmentItemID
UNION ALL
-- ? What checklist to send for a demonstration, conference or marketing request when multiple simulations are selected? -- 07/14/2025 MF
SELECT partnerEquipmentReviews.partnerEquipmentReviewID, requestID, partnerEquipmentReviews.otherRequestID, receivedDate, returnedDate, partnerEquipmentReviews.createDate AS partnerEquipmentReviewsCreateDate, partnerEquipmentChecklists.equipmentItemID, numberPresent, present, damaged, notFunctioning, partnerEquipmentChecklists.notes AS partnerEquipmentChecklistsNotes, partnerEquipmentChecklists.createDate AS partnerEquipmentChecklistsCreateDate, vw_equipmentChecklists.simulationTypeID, vw_equipmentChecklists.simulationTypeName, equipmentItemName, vw_equipmentChecklists.notes AS equipmentItemNotes, numberExpected, equipmentChecklistsCreateDate
FROM partnerEquipmentReviews
INNER JOIN partnerEquipmentChecklists ON partnerEquipmentReviews.partnerEquipmentReviewID = partnerEquipmentChecklists.partnerEquipmentReviewID --AND equipmentChecklists.equipmentItemID = partnerEquipmentChecklists.equipmentItemID
-- INNER JOIN vw_otherRequests ON partnerEquipmentReviews.otherRequestID = vw_otherRequests.otherRequestID
INNER JOIN vw_otherRequestSimulations ON partnerEquipmentReviews.otherRequestID = vw_otherRequestSimulations.otherRequestID
INNER JOIN vw_equipmentChecklists ON vw_otherRequestSimulations.simulationTypeID = vw_equipmentChecklists.simulationTypeID
WHERE vw_equipmentChecklists.equipmentItemID = partnerEquipmentChecklists.equipmentItemID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsBase]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT applicationID, gameID, webhookType, requestBody, createDate
FROM simulationSessionLogs
WHERE applicationID IS NOT NULL AND applicationID <> ''
AND gameID IS NOT NULL AND gameID <> ''
AND webhookType IN ('Create', 'Close')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsJoins]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT applicationID, gameID, webhookType, requestBody, createDate
FROM simulationSessionLogs
WHERE applicationID IS NOT NULL AND applicationID <> ''
AND gameID IS NOT NULL AND gameID <> ''
AND webhookType IN ('Create', 'Join', 'ClientDisconnect')
GO

-- * 'Type', 'Reason' -- 08/19/2025 MF
-- * 'ClientDisconnect', '0'
-- * 'ClientTimeoutDisconnect', '1'
-- * 'ManagedDisconnect', '2'
-- * 'ServerDisconnect', '3'
-- * 'TimeoutDisconnect', '4'
-- * 'LeaveRequest', '101'
-- * 'PlayerTtlTimedOut', '102'
-- * 'PeerLastTouchTimedout', '103'
-- * 'PluginRequest', '104'
-- * 'PluginFailedJoin', '105''

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionDevices]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT gameID AS deviceName, sortGroup
FROM (
SELECT DISTINCT gameID, 1 AS sortGroup
FROM simulationSessionLogs
WHERE gameID IS NOT NULL AND gameID <> ''
AND gameID <> 'iPad'
AND gameID NOT LIKE 'H2-%'
AND gameID <> 'Quest 3'
AND gameID NOT LIKE 'Q3-%'
UNION ALL
SELECT DISTINCT gameID, 2 AS sortGroup
FROM simulationSessionLogs
WHERE gameID IS NOT NULL AND gameID <> ''
AND gameID <> 'iPad'
AND (gameID LIKE 'H2-%'
OR gameID = 'Quest 3'
OR gameID LIKE 'Q3-%')
) AS devices
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsHeadsets]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT vw_simulationSessionsBase.applicationID, gameID AS sessionName, webhookType, requestBody, vw_simulationSessionsBase.createDate, partnerID, partnerName, partnerSiteID, partnerSiteName,
-- CASE
--   WHEN partnerName <> '' AND partnerName IS NOT NULL AND partnerSiteName <> '' AND partnerSiteName IS NOT NULL THEN partnerName + '-' + partnerSiteName
--   ELSE NULL
-- END AS partnerAndSiteName,
CASE
  WHEN sessionEnvironment IS NOT NULL THEN sessionEnvironment
  ELSE 'Production'
END AS sessionEnvironment
, simulationID, simulationTypeID, simulationTypeName, simulationName
FROM vw_simulationSessionsBase
LEFT OUTER JOIN vw_simulations ON vw_simulationSessionsBase.applicationID = vw_simulations.applicationID
CROSS APPLY OPENJSON (requestBody)
    WITH (
      CreateOptions NVARCHAR(MAX) '$.CreateOptions' AS JSON
    ) AS createOptions
CROSS APPLY OPENJSON (createOptions)
    WITH (
      CustomProperties NVARCHAR(MAX) '$.CustomProperties' AS JSON
    ) AS customProperties
CROSS APPLY OPENJSON (customProperties)
    WITH (
      partnerID VARCHAR(500) '$.partnerID'
      , partnerName VARCHAR(500) '$.partnerName'
      , partnerSiteID VARCHAR(500) '$.partnerSiteID'
      , partnerSiteName VARCHAR(500) '$.partnerSiteName'
      , sessionEnvironment VARCHAR(500) '$.sessionEnvironment'
    ) AS partnerProperties
-- ? Add INNER JOIN to partner/partner site properties? -- 03/18/2025 MF
-- WHERE webhookType = 'Create'
-- -- ? Not sure if these are needed because the CROSS APPLY OPENJSON code means that those properties must be in the requestBody. -- 08/01/2025 MF
-- AND requestBody LIKE '%partnerID%'
-- AND requestBody LIKE '%partnerName%'
-- AND requestBody LIKE '%partnerSiteID%'
-- AND requestBody LIKE '%partnerSiteName%'
-- AND requestBody LIKE '%sessionEnvironment%'
-- AND requestBody NOT LIKE '%partnerSiteID":0%'
-- * The Close records are no longer needed in this view. -- 08/04/2025 MF
-- UNION ALL
-- SELECT vw_simulationSessionsBase.applicationID, gameID AS sessionName, webhookType, requestBody, vw_simulationSessionsBase.createDate, NULL AS partnerID, NULL AS partnerName, NULL AS partnerSiteID, NULL AS partnerSiteName, 'Production' AS sessionEnvironment, simulationID, simulationTypeID, simulationTypeName, simulationName
-- FROM vw_simulationSessionsBase
-- LEFT OUTER JOIN vw_simulations ON vw_simulationSessionsBase.applicationID = vw_simulations.applicationID
-- WHERE webhookType = 'Close'
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [vw_currentSimulationSessionsCloseFirst]
-- AS
-- -- * Used by the SOS Assistant application. -- 02/07/2025 MF
-- SELECT firstDateCreate.gameID, firstDateCreate.firstDate AS firstDateCreate, firstDateClose.firstDate AS firstDateClose
-- FROM (
-- SELECT gameID, webhookType,
-- (
-- SELECT TOP (1) createDate FROM vw_simulationSessionsBase AS firstCreateDates
-- WHERE firstCreateDates.gameID = vw_simulationSessionsBase.gameID
-- AND firstCreateDates.webhookType = vw_simulationSessionsBase.webhookType
-- ORDER BY createDate DESC
-- ) AS firstDate
-- -- , CAST(createDate AS DATE) AS createDate
-- FROM vw_simulationSessionsBase
-- WHERE webhookType = 'Create'
-- AND CAST(createDate AS DATE) = CAST(DATEADD(hour, -5, GETDATE()) AS DATE)
-- -- AND CAST(createDate AS DATE) = CAST(GETDATE() AS DATE)
-- GROUP BY gameID, webhookType
-- ) AS firstDateCreate
-- INNER JOIN (
-- SELECT gameID, webhookType,
-- (
-- SELECT TOP (1) createDate FROM vw_simulationSessionsBase AS firstCreateDates
-- WHERE firstCreateDates.gameID = vw_simulationSessionsBase.gameID
-- AND firstCreateDates.webhookType = vw_simulationSessionsBase.webhookType
-- ORDER BY createDate DESC
-- ) AS firstDate
-- -- , CAST(createDate AS DATE) AS createDate
-- FROM vw_simulationSessionsBase
-- WHERE webhookType = 'Close'
-- AND CAST(createDate AS DATE) = CAST(DATEADD(hour, -5, GETDATE()) AS DATE)
-- -- AND CAST(createDate AS DATE) = CAST(GETDATE() AS DATE)
-- GROUP BY gameID, webhookType
-- ) AS firstDateClose ON firstDateCreate.gameID = firstDateClose.gameID
-- WHERE firstDateCreate.firstDate > firstDateClose.firstDate
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessions]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT applicationID, sessionName, simulationName, partnerID, partnerName, partnerSiteID, partnerSiteName, partnerAndSiteName, sessionEnvironment, requestBody, createDate, simulationID, simulationTypeID, simulationTypeName, createCount, closeCount, allSessionCreateCount, allSessionCloseCount, extraCloseCount, extraCreatePreviousCount, noCustomPropertiesCount, partnerSiteZeroCount,
createCount - closeCount + noCustomPropertiesCount + partnerSiteZeroCount + extraCloseCount - extraCreatePreviousCount AS currentSessionCount
FROM (
SELECT createSessions.applicationID, createSessions.gameID AS sessionName, vw_simulations.simulationName, partnerID, partnerName, partnerSiteID, partnerSiteName, partnerAndSiteName, sessionEnvironment, requestBody, createDate, simulationID, simulationTypeID, simulationTypeName, createSessions.createCount, closeSessions.closeCount, allSessionCounts.createCount AS allSessionCreateCount, allSessionCounts.closeCount AS allSessionCloseCount,
CASE
  WHEN extraCloseCount IS NOT NULL AND extraCloseCount > 0 THEN extraCloseCount
  ELSE 0
END AS extraCloseCount,
CASE
  WHEN extraCreatePreviousCount IS NOT NULL AND extraCreatePreviousCount > 0 THEN extraCreatePreviousCount
  ELSE 0
END AS extraCreatePreviousCount,
CASE
  WHEN noCustomPropertiesSessions.noCustomPropertiesCount IS NOT NULL THEN noCustomPropertiesSessions.noCustomPropertiesCount
  ELSE 0
END AS noCustomPropertiesCount,
CASE
  WHEN partnerSiteZeroCount IS NOT NULL THEN partnerSiteZeroCount
  ELSE 0
END AS partnerSiteZeroCount
-- CASE
--   WHEN closedFirst IS NOT NULL THEN 1
--   ELSE 0
-- END AS closedFirst,
-- CASE
--   WHEN noCustomPropertiesSessions.noCustomPropertiesCount IS NOT NULL AND closedFirst IS NOT NULL THEN createSessions.createCount - closeSessions.closeCount + noCustomPropertiesSessions.noCustomPropertiesCount - 1 -- * The closedFirst "bit." -- 07/31/2025 MF
--   -- WHEN noCustomPropertiesCount IS NOT NULL AND closedFirst IS NOT NULL THEN createCount - closeCount + noCustomPropertiesCount + 1 -- * The closedFirst "bit." -- 07/31/2025 MF
--   WHEN noCustomPropertiesSessions.noCustomPropertiesCount IS NULL AND closedFirst IS NOT NULL THEN createSessions.createCount - closeSessions.closeCount - 1 -- * The closedFirst "bit." -- 07/31/2025 MF
--   -- WHEN noCustomPropertiesCount IS NULL AND closedFirst IS NOT NULL THEN createCount - closeCount + 1 -- * The closedFirst "bit." -- 07/31/2025 MF
--   WHEN noCustomPropertiesSessions.noCustomPropertiesCount IS NOT NULL AND closedFirst IS NULL THEN createSessions.createCount - closeSessions.closeCount + noCustomPropertiesSessions.noCustomPropertiesCount
--   WHEN noCustomPropertiesSessions.noCustomPropertiesCount IS NULL AND closedFirst IS NULL THEN createSessions.createCount - closeSessions.closeCount
-- END AS currentSessionCount
-- , (SELECT COUNT(*) FROM vw_simulationSessionsBase) AS countTotal,
-- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create', 'Close')) AS createCloseCountTotal,
-- ((SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create')) + (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Close'))) AS countTotalCalculated,
-- -- (SELECT COUNT(*) FROM simulationSessionLogs WHERE webhookType IN ('Load')) AS loadCountTotal,
-- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create')) AS createCountTotal,
-- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create') AND applicationID IS NOT NULL AND gameID IS NOT NULL AND requestBody LIKE '%partnerID%' AND requestBody LIKE '%partnerName%' AND requestBody LIKE '%partnerSiteID%' AND requestBody LIKE '%partnerSiteName%' AND requestBody LIKE '%sessionEnvironment%' AND requestBody NOT LIKE '%partnerSiteID":0%') AS customPropertiesCount,
-- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create') AND (requestBody NOT LIKE '%partnerID%' OR requestBody NOT LIKE '%partnerName%' OR requestBody NOT LIKE '%partnerSiteID%' OR requestBody NOT LIKE '%partnerSiteName%' OR requestBody NOT LIKE '%sessionEnvironment%') AND requestBody NOT LIKE '%partnerSiteID":0%') AS noCustomPropertiesCountTotal,
-- -- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create') AND (applicationID IS NULL OR gameID IS NULL)) AS createNullCount,
-- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create') AND applicationID IS NOT NULL AND gameID IS NOT NULL AND requestBody LIKE '%partnerID%' AND requestBody LIKE '%partnerName%' AND requestBody LIKE '%partnerSiteID%' AND requestBody LIKE '%partnerSiteName%' AND requestBody LIKE '%sessionEnvironment%' AND requestBody NOT LIKE '%partnerSiteID":0%') + (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create') AND (requestBody NOT LIKE '%partnerID%' OR requestBody NOT LIKE '%partnerName%' OR requestBody NOT LIKE '%partnerSiteID%' OR requestBody NOT LIKE '%partnerSiteName%' OR requestBody NOT LIKE '%sessionEnvironment%') AND requestBody NOT LIKE '%partnerSiteID":0%') AS calculatedCreateCountTotal,
-- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Create') AND requestBody LIKE '%partnerSiteID":0%') AS partnerSiteZeroCountTotal,
-- (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Close')) AS closeCountTotal
-- -- , (SELECT COUNT(*) FROM vw_simulationSessionsBase WHERE webhookType IN ('Close') AND (applicationID IS NULL OR gameID IS NULL)) AS closeNullCount
FROM vw_simulations

LEFT OUTER JOIN (
SELECT applicationID, gameID, COUNT(*) AS createCount
-- ? TODO: Fix that vw_currentSimulationSessionsCloseFirst uses the current date? -- 07/31/2025 MF
-- * For each date in vw_simulationSessionsBase, select the first (earliest) record for each headset that is a close record. -- 07/31/2025 MF
-- ? Is this even needed anymore with the new query? -- 07/31/2025 MF
-- , (SELECT gameID FROM vw_currentSimulationSessionsCloseFirst WHERE vw_simulationSessionsBase.gameID = vw_currentSimulationSessionsCloseFirst.gameID) AS closedFirst
FROM vw_simulationSessionsBase
CROSS APPLY OPENJSON (requestBody)
    WITH (
      CreateOptions NVARCHAR(MAX) '$.CreateOptions' AS JSON
    ) AS createOptions
CROSS APPLY OPENJSON (createOptions)
    WITH (
      CustomProperties NVARCHAR(MAX) '$.CustomProperties' AS JSON
    ) AS customProperties
CROSS APPLY OPENJSON (customProperties)
    WITH (
      partnerID VARCHAR(500) '$.partnerID'
      , partnerName VARCHAR(500) '$.partnerName'
      , partnerSiteID VARCHAR(500) '$.partnerSiteID'
      , partnerSiteName VARCHAR(500) '$.partnerSiteName'
      , sessionEnvironment VARCHAR(500) '$.sessionEnvironment'
    ) AS partnerProperties
-- ? Add INNER JOIN to partner/partner site properties? -- 03/18/2025 MF
WHERE requestBody NOT LIKE '%partnerSiteID":0%'
-- ? Not sure if these are needed because the CROSS APPLY OPENJSON code means that those properties must be in the requestBody. -- 08/01/2025 MF
AND webhookType = 'Create'
AND requestBody LIKE '%partnerID%'
AND requestBody LIKE '%partnerName%'
AND requestBody LIKE '%partnerSiteID%'
AND requestBody LIKE '%partnerSiteName%'
AND requestBody LIKE '%sessionEnvironment%'
GROUP BY applicationID, gameID
) AS createSessions ON vw_simulations.applicationID = createSessions.applicationID

LEFT OUTER JOIN (
SELECT vw_simulationSessionsBase.applicationID, gameID, COUNT(*) AS closeCount
FROM vw_simulationSessionsBase
WHERE webhookType = 'Close'
GROUP BY vw_simulationSessionsBase.applicationID, gameID
) AS closeSessions ON vw_simulations.applicationID = closeSessions.applicationID AND createSessions.applicationID = closeSessions.applicationID AND createSessions.gameID = closeSessions.gameID

LEFT OUTER JOIN (
SELECT applicationID, gameID, createCount, closeCount, closeCount - createCount AS extraCloseCount -- , createCount - closeCount AS extraCreateCount
FROM (
SELECT createSessions.applicationID, createSessions.gameID, COUNT(*) AS createCount, closeCount
FROM vw_simulationSessionsBase AS createSessions
LEFT OUTER JOIN (
SELECT vw_simulationSessionsBase.applicationID, gameID, COUNT(*) AS closeCount
FROM vw_simulationSessionsBase
WHERE webhookType IN ('Close')
GROUP BY vw_simulationSessionsBase.applicationID, gameID
) AS closeSessions ON createSessions.applicationID = closeSessions.applicationID AND createSessions.gameID = closeSessions.gameID
WHERE webhookType IN ('Create')
GROUP BY createSessions.applicationID, createSessions.gameID, closeCount
) AS allSessions
-- WHERE createCount <> closeCount
-- WHERE createCount < closeCount
) AS allSessionCounts ON vw_simulations.applicationID = allSessionCounts.applicationID AND createSessions.applicationID = allSessionCounts.applicationID AND createSessions.gameID = allSessionCounts.gameID

LEFT OUTER JOIN (
SELECT applicationID, gameID, /* createPreviousCount, closePreviousCount, */ createPreviousCount - closePreviousCount AS extraCreatePreviousCount -- , closePreviousCount - createPreviousCount AS extraClosePreviousCount
FROM (
SELECT createSessions.applicationID, createSessions.gameID, COUNT(*) AS createPreviousCount, closePreviousCount
FROM vw_simulationSessionsBase AS createSessions
LEFT OUTER JOIN (
SELECT vw_simulationSessionsBase.applicationID, gameID, COUNT(*) AS closePreviousCount
FROM vw_simulationSessionsBase
WHERE webhookType IN ('Close')
AND CAST(createDate AS DATE) < CAST(DATEADD(hour, -5, GETDATE()) AS DATE)
GROUP BY vw_simulationSessionsBase.applicationID, gameID
) AS closeSessions ON createSessions.applicationID = closeSessions.applicationID AND createSessions.gameID = closeSessions.gameID
WHERE webhookType IN ('Create')
AND CAST(createDate AS DATE) < CAST(DATEADD(hour, -5, GETDATE()) AS DATE)
GROUP BY createSessions.applicationID, createSessions.gameID, closePreviousCount
) AS allSessions
-- WHERE createPreviousCount <> closePreviousCount
-- WHERE createPreviousCount > closePreviousCount
) AS allSessionPreviousCounts ON vw_simulations.applicationID = allSessionPreviousCounts.applicationID AND createSessions.applicationID = allSessionPreviousCounts.applicationID AND createSessions.gameID = allSessionPreviousCounts.gameID

-- * Retrieves the session information for the most recent record in vw_simulationSessionsHeadsets. -- 08/01/2025 MF
OUTER APPLY (SELECT * FROM dbo.udf_getSimulationSession(createSessions.applicationID, createSessions.gameID)) AS currentSimulationSessionsHeadsets
LEFT OUTER JOIN (
SELECT applicationID, gameID, COUNT(*) AS noCustomPropertiesCount
FROM vw_simulationSessionsBase
WHERE webhookType = 'Create'
AND (requestBody NOT LIKE '%partnerID%'
OR requestBody NOT LIKE '%partnerName%'
OR requestBody NOT LIKE '%partnerSiteID%'
OR requestBody NOT LIKE '%partnerSiteName%'
OR requestBody NOT LIKE '%sessionEnvironment%')
AND requestBody NOT LIKE '%partnerSiteID":0%'
GROUP BY applicationID, gameID
) AS noCustomPropertiesSessions ON vw_simulations.applicationID = noCustomPropertiesSessions.applicationID AND createSessions.applicationID = noCustomPropertiesSessions.applicationID AND createSessions.gameID = noCustomPropertiesSessions.gameID

LEFT OUTER JOIN (
SELECT applicationID, gameID, COUNT(*) AS partnerSiteZeroCount
FROM vw_simulationSessionsBase
WHERE webhookType = 'Create'
AND requestBody LIKE '%partnerSiteID":0%'
GROUP BY applicationID, gameID
) AS partnerSiteZeroSessions ON vw_simulations.applicationID = partnerSiteZeroSessions.applicationID AND createSessions.applicationID = partnerSiteZeroSessions.applicationID AND createSessions.gameID = partnerSiteZeroSessions.gameID
) AS simulationSessions
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsIncluded]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
-- * All records in this table are added to the current sessions view so that in an emergency a record can appear in the SOS Assistant session list. -- 08/06/2025 MF
SELECT vw_simulations.applicationID, simulationSessionsIncluded.sessionName, vw_simulations.simulationName, NULL AS createCount, NULL AS closeCount, NULL AS allSessionCreateCount, NULL AS allSessionCloseCount, NULL AS noCustomPropertiesCount, NULL AS partnerSiteZeroCount, simulationSessionsIncluded.currentSessionCount, NULL AS extraCloseCount, NULL AS extraCreatePreviousCount, vw_partnerSitesAll.partnerID, vw_partnerSitesAll.partnerName, simulationSessionsIncluded.partnerSiteID, vw_partnerSitesAll.partnerSiteName,
CASE
  WHEN vw_partnerSitesAll.partnerName <> '' AND vw_partnerSitesAll.partnerName IS NOT NULL AND vw_partnerSitesAll.partnerSiteName <> '' AND vw_partnerSitesAll.partnerSiteName IS NOT NULL THEN vw_partnerSitesAll.partnerName + '-' + vw_partnerSitesAll.partnerSiteName
  ELSE NULL
END AS partnerAndSiteName,
simulationSessionsIncluded.sessionEnvironment, currentSimulationSessionsHeadsets.requestBody, simulationSessionsIncluded.createDate, simulationSessionsIncluded.simulationID, vw_simulations.simulationTypeID, vw_simulations.simulationTypeName
FROM simulationSessionsIncluded
INNER JOIN vw_simulations ON simulationSessionsIncluded.simulationID = vw_simulations.simulationID
INNER JOIN vw_partnerSitesAll ON simulationSessionsIncluded.partnerSiteID = vw_partnerSitesAll.partnerSiteID
-- * This join is running too slow to consistently for the data to be available to the application. -- 08/06/2025 MF
-- LEFT OUTER JOIN vw_simulationSessions ON simulationSessionsIncluded.simulationID = vw_simulationSessions.simulationID AND simulationSessionsIncluded.sessionName = vw_simulationSessions.sessionName AND simulationSessionsIncluded.partnerSiteID = vw_simulationSessions.partnerSiteID AND simulationSessionsIncluded.sessionEnvironment = vw_simulationSessions.sessionEnvironment
-- * Retrieves the session information for the most recent record in vw_simulationSessionsHeadsets. -- 08/01/2025 MF
-- TODO: Change to use vw_simulationSessionsBase? -- 08/01/2025 MF
OUTER APPLY (SELECT * FROM dbo.udf_getSimulationSession(vw_simulations.applicationID, simulationSessionsIncluded.sessionName)) AS currentSimulationSessionsHeadsets
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_currentSimulationSessions]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT applicationID, sessionName, simulationName, createCount, closeCount, allSessionCreateCount, allSessionCloseCount, extraCloseCount, extraCreatePreviousCount, noCustomPropertiesCount, partnerSiteZeroCount, currentSessionCount, partnerID, partnerName, partnerSiteID, partnerSiteName, partnerAndSiteName, sessionEnvironment, requestBody, createDate, simulationID, simulationTypeID, simulationTypeName
FROM vw_simulationSessions
 -- ? Account for the time zone also in the query? -- 07/17/2025 MF
 -- ? Account for the daylight savings time also in the query? -- 07/17/2025 MF
 -- * https://stackoverflow.com/questions/6781121/determine-if-daylight-saving-time-is-active-sql-server -- 07/17/2025 MF
 -- * EST (GMT-5), PST (GMT-8)
 -- * Sets the current DATETIME to EST to help with the time zone differences when calculating what day a headset session started and ended. -- 07/17/2025 MF
WHERE CAST(createDate AS DATE) = CAST(DATEADD(hour, -5, GETDATE()) AS DATE)
-- WHERE CAST(createDate AS DATE) = CAST(GETDATE() AS DATE)
-- ? Can be used to look a specific day snapshot? -- 08/07/2025 MF
-- WHERE CAST(createDate AS DATE) = CAST('2025-08-06' AS DATE)
UNION ALL -- TODO: Use only UNION? -- 08/07/2025 MF
 -- * All records in this view are added to the current sessions view so that in an emergency a record can appear in the SOS Assistant session list. -- 08/06/2025 MF
SELECT applicationID, sessionName, simulationName, createCount, closeCount, allSessionCreateCount, allSessionCloseCount, extraCloseCount, extraCreatePreviousCount, noCustomPropertiesCount, partnerSiteZeroCount, currentSessionCount, partnerID, partnerName, partnerSiteID, partnerSiteName, partnerAndSiteName, sessionEnvironment, requestBody, createDate, simulationID, simulationTypeID, simulationTypeName
FROM vw_simulationSessionsIncluded
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsCreateIssues]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT simulationSessionLogs.applicationID, gameID AS sessionName, webhookType, requestBody, createDate, simulationID, simulationTypeID, simulationTypeName, simulationName
FROM simulationSessionLogs
INNER JOIN vw_simulations ON vw_simulations.applicationID = simulationSessionLogs.applicationID
WHERE webhookType = 'Create'
AND (requestBody NOT LIKE '%partnerID%'
OR requestBody NOT LIKE '%partnerName%'
OR requestBody NOT LIKE '%partnerSiteID%'
OR requestBody NOT LIKE '%partnerSiteName%'
OR requestBody NOT LIKE '%sessionEnvironment%'
OR requestBody LIKE '%partnerSiteID":0%')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsIssues]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT applicationID, sessionName, simulationName, createCount, closeCount, allSessionCreateCount, allSessionCloseCount, extraCloseCount, extraCreatePreviousCount, noCustomPropertiesCount, partnerSiteZeroCount, currentSessionCount, partnerID, partnerName, partnerSiteID, partnerSiteName, partnerAndSiteName, sessionEnvironment, requestBody, createDate, simulationID, simulationTypeID, simulationTypeName
FROM vw_simulationSessions
WHERE currentSessionCount NOT IN (0, 1)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsToday]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT simulationSessionLogs.applicationID, simulationName, gameID AS sessionName, webhookType, requestBody, createDate
FROM simulationSessionLogs
INNER JOIN vw_simulations ON simulationSessionLogs.applicationID = vw_simulations.applicationID
WHERE simulationSessionLogs.applicationID IS NOT NULL AND simulationSessionLogs.applicationID <> ''
AND gameID IS NOT NULL AND gameID <> ''
AND webhookType IN ('Create', 'Close')
 -- ? Account for the time zone also in the query? -- 07/17/2025 MF
 -- ? Account for the daylight savings time also in the query? -- 07/17/2025 MF
 -- * https://stackoverflow.com/questions/6781121/determine-if-daylight-saving-time-is-active-sql-server -- 07/17/2025 MF
 -- * EST (GMT-5), PST (GMT-8)
 -- * Sets the current DATETIME to EST to help with the time zone differences when calculating what day a headset session started and ended. -- 07/17/2025 MF
-- WHERE CAST(createDate AS DATE) = CAST(DATEADD(hour, -5, GETDATE()) AS DATE)
AND CAST(createDate AS DATE) = CAST(GETDATE() AS DATE)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsUnscheduled]
AS
-- * Used by the SOS Assistant application. -- 02/07/2025 MF
SELECT applicationID, sessionName, requestBody, createDate, partnerID, partnerName, partnerSiteID, partnerSiteName, sessionEnvironment, simulationID, simulationTypeID, simulationTypeName, simulationName
FROM vw_simulationSessionsHeadsets
WHERE sessionEnvironment = 'Production'
AND sessionName NOT LIKE '%-ORB%'
AND sessionName NOT IN ('iPad', 'DESKTOP-9B9PVLH', 'KATYFLORES', 'Quest 3', 'THUNDERDOME-89', 'Unnamed Room', 'VENGEANCE')
-- * Current extended reality developer laptops -- 07/30/2025 MF
-- * DBAIN-ORB32176, ASCHUE-ORB32847, RBURIT-ORB30347, KFLORE-ORB32178, JOBESO-ORBB32179, JBARRI-ORB30233, MORRIS-ORB31532
-- * Any sessions initiated at the corporate office (partnerID = 23) can be ignored. -- 08/01/2025 MF
AND partnerID NOT IN (0, 23)
AND CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR) NOT IN (
SELECT CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR) -- , requestID, startDate, endDate
FROM vw_requests
-- * The time range includes four days before the start date to account for equipment testing. -- 07/28/2025 MF
WHERE vw_simulationSessionsHeadsets.createDate > DATEADD(day, -4, startDate)
AND vw_simulationSessionsHeadsets.createDate < DATEADD(day, 1, endDate)
)
AND CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR) NOT IN (
SELECT CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR) -- , otherRequestID, preferredDate, startDate, endDate
FROM vw_otherRequestSimulations
WHERE (vw_simulationSessionsHeadsets.createDate > DATEADD(day, -4, startDate)
AND vw_simulationSessionsHeadsets.createDate < DATEADD(day, 1, endDate))
OR (vw_simulationSessionsHeadsets.createDate > DATEADD(day, -4, preferredDate)
AND vw_simulationSessionsHeadsets.createDate < DATEADD(day, 1, preferredDate))
)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [vw_simulationSessionsUntested]
AS
SELECT requestID, requestTypeID, requestTypeName, simulationID, simulationTypeID, simulationName, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, partnerSiteID, startDate, endDate, NULL AS preferredDate, programID, programName, programNameAbbreviation, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, createDate -- , totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, confirmed, clinicalReplacement, sendNotifications, createDate, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, scheduleID, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate
FROM vw_requests
WHERE CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR) NOT IN (
SELECT CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR)
FROM vw_simulationSessionsHeadsets
-- * The time range includes four days before the start date to account for equipment testing. -- 07/28/2025 MF
WHERE createDate > DATEADD(day, -4, vw_requests.startDate)
AND createDate < vw_requests.startDate
)
AND startDate < GETDATE()
-- * The date that the session logs first started to be collected. -- 08/01/2025 MF
AND startDate > '2025-01-22'
UNION ALL
SELECT otherRequestID, requestTypeID, requestTypeName, simulationID, simulationTypeID, simulationName, simulationTypeName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, partnerSiteID, startDate, endDate, preferredDate, programID, programName, programNameAbbreviation, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, partnerSiteAddressID, street, city, state, zipCode, createDate
-- , simulations, conferenceName, conferenceStreet, conferenceCity, conferenceState, conferenceZipCode, eventTypeID, eventTypeName, eventTypeOther, firstName, lastName, email, confirmed, requestStatus, createDate
FROM vw_otherRequestSimulations
WHERE CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR) NOT IN (
SELECT CAST(partnerSiteID AS VARCHAR) + '||' + CAST(simulationID AS VARCHAR) -- , otherRequestID, preferredDate, startDate, endDate
FROM vw_otherRequestSimulations
-- * The time range includes four days before the start date to account for equipment testing. -- 07/28/2025 MF
WHERE createDate > DATEADD(day, -4, vw_otherRequestSimulations.startDate)
AND createDate < vw_otherRequestSimulations.startDate
OR (createDate > DATEADD(day, -4, vw_otherRequestSimulations.preferredDate)
AND createDate < vw_otherRequestSimulations.preferredDate)
)
AND (startDate < GETDATE() OR startDate IS NULL)
-- * The date that the session logs first started to be collected. -- 08/01/2025 MF
AND (startDate > '2025-01-22' OR startDate IS NULL)
AND (preferredDate < GETDATE() OR preferredDate IS NULL)
-- * The date that the session logs first started to be collected. -- 08/01/2025 MF
AND (preferredDate > '2025-01-22' OR preferredDate IS NULL)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_requestScheduleDatesMismatch]
AS
SELECT requestID, simulationID, simulationTypeID, simulationName, startDate, endDate, totalStudentCount, finalStudentCount, confirmed, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, partnerID, partnerName, partnerSiteID, partnerSiteName, scheduleID, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate
FROM vw_requests
WHERE scheduleStartDateMatches = 0
OR scheduleEndDateMatches = 0
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_requestContactDuplicates]
-- AS
-- -- * No longer needed. -- 09/04/2025 MF
-- SELECT requestID, simulationID, simulationName, startDate, endDate, confirmed, requestStatus, scheduleStatus, partnerID, partnerName, partnerSiteID, partnerSiteName, scheduleID, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate
-- FROM vw_requests
-- WHERE requestID IN (
-- -- ? Add positionID into this calculation? -- 09/02/2025 MF
-- SELECT requestID --, email, COUNT(*)
-- FROM contacts
-- WHERE active = 1
-- AND email IS NOT NULL
-- -- AND positionID IS NOT NULL
-- GROUP BY requestID, email -- , positionID
-- HAVING COUNT(*) > 1
-- UNION
-- SELECT requestID --, firstName + lastName, COUNT(*)
-- FROM contacts
-- WHERE active = 1
-- AND firstName IS NOT NULL
-- AND lastName IS NOT NULL
-- AND email IS NULL
-- -- AND positionID IS NOT NULL
-- GROUP BY requestID, firstName + lastName -- , positionID
-- HAVING COUNT(*) > 1
-- )
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_statisticsImplementedBase]
AS
SELECT DISTINCT requestID, DATEPART(year, startDate) AS requestYear, totalStudentCount, finalStudentCount, simulationID, simulationName, simulationTypeID, simulationTypeName, partnerID, partnerName, partnerSiteID, partnerSiteName
FROM vw_requests
WHERE DATEADD(day, 1, endDate) < GETDATE()
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_statisticsPendingBase]
AS
SELECT DISTINCT requestID, DATEPART(year, startDate) AS requestYear, totalStudentCount, simulationID, simulationName, simulationTypeID, simulationTypeName, partnerID, partnerName, partnerSiteID, partnerSiteName
FROM vw_requests
WHERE DATEADD(day, 1, endDate) > GETDATE()
-- * Only includes requests from the current year. -- 10/15/2024 MF
AND DATEPART(year, startDate) < DATEPART(year, DATEADD(year, 1, GETDATE()))
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_statisticsPreviousYearsBase]
AS
SELECT DISTINCT requestID, DATEPART(year, startDate) AS requestYear, finalStudentCount, simulationID, simulationName, simulationTypeID, simulationTypeName, partnerID, partnerName, partnerSiteID, partnerSiteName
FROM vw_requests
WHERE DATEPART(year, endDate) < DATEPART(year, GETDATE())
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_statisticsCurrentYearBase]
AS
SELECT DISTINCT requestID, DATEPART(year, startDate) AS requestYear, totalStudentCount, finalStudentCount, simulationID, simulationName, simulationTypeID, simulationTypeName, partnerID, partnerName, partnerSiteID, partnerSiteName
FROM vw_requests
WHERE DATEPART(year, endDate) = DATEPART(year, GETDATE())
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_statisticsPartners]
AS
SELECT DISTINCT partnerID, partnerName
FROM vw_statisticsImplementedBase
UNION
SELECT DISTINCT partnerID, partnerName
FROM vw_statisticsPendingBase
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_simulationProjections]
AS
SELECT vw_simulations.simulationID, vw_simulations.simulationName,
COALESCE(partnersImplemented, 0) AS partnersImplemented,
COALESCE(partnersPending, 0) AS partnersPending,
COALESCE(partnerSitesImplemented, 0) AS partnerSitesImplemented,
COALESCE(partnerSitesPending, 0) AS partnerSitesPending,
COALESCE(implementationsCompleted, 0) AS implementationsCompleted,
COALESCE(implementationsPending, 0) AS implementationsPending,
COALESCE(totalStudentsCompleted, 0) AS totalStudentsCompleted,
COALESCE(totalStudentsPending, 0) AS totalStudentsPending
FROM vw_simulations
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS partnersImplemented
FROM (
SELECT simulationID, simulationName, partnerID -- , partnerName
FROM vw_statisticsImplementedBase
GROUP BY simulationID, simulationName, partnerID -- , partnerName
) AS partnersImplementedSimulations
GROUP BY simulationID, simulationName
) AS newPartnersImplementedSimulations ON vw_simulations.simulationID = newPartnersImplementedSimulations.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS partnersPending
FROM (
SELECT simulationID, simulationName, partnerID -- , partnerName
FROM vw_statisticsPendingBase
WHERE CAST(partnerID AS VARCHAR) + CAST(simulationID AS VARCHAR) NOT IN (SELECT DISTINCT CAST(partnerID AS VARCHAR) + CAST(simulationID AS VARCHAR)
FROM vw_statisticsImplementedBase)
GROUP BY simulationID, simulationName, partnerID -- , partnerName
) AS partnersPendingSimulations
GROUP BY simulationID, simulationName
) AS newPartnersPendingSimulations ON vw_simulations.simulationID = newPartnersPendingSimulations.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS partnerSitesImplemented
FROM (
SELECT simulationID, simulationName, partnerSiteID, /* partnerSiteName, */ partnerID -- , partnerName
FROM vw_statisticsImplementedBase
GROUP BY simulationID, simulationName, partnerSiteID, /* partnerSiteName, */ partnerID -- , partnerName
) AS partnerSitesImplementedSimulations
GROUP BY simulationID, simulationName
) AS newPartnerSitesImplementedSimulations ON vw_simulations.simulationID = newPartnerSitesImplementedSimulations.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS partnerSitesPending
FROM (
SELECT simulationID, simulationName, partnerSiteID, /* partnerSiteName, */ partnerID -- , partnerName
FROM vw_statisticsPendingBase
WHERE CAST(partnerSiteID AS VARCHAR) + CAST(simulationID AS VARCHAR) NOT IN (SELECT DISTINCT CAST(partnerSiteID AS VARCHAR) + CAST(simulationID AS VARCHAR)
FROM vw_statisticsImplementedBase)
GROUP BY simulationID, simulationName, partnerSiteID, /* partnerSiteName, */ partnerID -- , partnerName
) AS partnerSitesPendingSimulations
GROUP BY simulationID, simulationName
) AS newPartnerSitesPendingSimulations ON vw_simulations.simulationID = newPartnerSitesPendingSimulations.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS implementationsCompleted
FROM vw_statisticsImplementedBase
GROUP BY simulationID, simulationName
) AS newImplementationsCompleted ON vw_simulations.simulationID = newImplementationsCompleted.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS implementationsPending
FROM vw_statisticsPendingBase
GROUP BY simulationID, simulationName
) AS newImplementationsPending ON vw_simulations.simulationID = newImplementationsPending.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, SUM(finalStudentCount) AS totalStudentsCompleted
FROM vw_statisticsImplementedBase
GROUP BY simulationID, simulationName
) AS totalStudentsCompleted ON vw_simulations.simulationID = totalStudentsCompleted.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, SUM(totalStudentCount) AS totalStudentsPending
FROM vw_statisticsPendingBase
GROUP BY simulationID, simulationName
) AS totalStudentsPending ON vw_simulations.simulationID = totalStudentsPending.simulationID
UNION ALL
SELECT NULL, 'Total',
(SELECT COUNT(*) FROM (
SELECT DISTINCT partnerName
FROM vw_statisticsImplementedBase
) AS partners) AS partnersImplemented,
(SELECT COUNT(*) FROM (
SELECT DISTINCT partnerName
FROM vw_statisticsPendingBase
WHERE CAST(partnerID AS VARCHAR) + CAST(simulationID AS VARCHAR) NOT IN (SELECT DISTINCT CAST(partnerID AS VARCHAR) + CAST(simulationID AS VARCHAR)
FROM vw_statisticsImplementedBase)
) AS partners) AS partnersPending,
(SELECT COUNT(*) FROM (
SELECT DISTINCT partnerSiteName
FROM vw_statisticsImplementedBase
) AS partnerNames) AS partnerSitesImplemented,
(SELECT COUNT(*) FROM (
SELECT DISTINCT partnerSiteName
FROM vw_statisticsPendingBase
WHERE CAST(partnerSiteID AS VARCHAR) + CAST(simulationID AS VARCHAR) NOT IN (SELECT DISTINCT CAST(partnerSiteID AS VARCHAR) + CAST(simulationID AS VARCHAR)
FROM vw_statisticsImplementedBase)
) AS partnerNames) AS partnerSitesPending,
SUM(implementationsCompleted) AS implementationsCompleted, SUM(implementationsPending) AS implementationsPending, SUM(totalStudentsCompleted) AS totalStudentsCompleted, SUM(totalStudentsPending) AS totalStudentsPending
FROM vw_simulations
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS implementationsCompleted
FROM vw_statisticsImplementedBase
GROUP BY simulationID, simulationName
) AS newImplementationsCompleted ON vw_simulations.simulationID = newImplementationsCompleted.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, COUNT(*) AS implementationsPending
FROM vw_statisticsPendingBase
GROUP BY simulationID, simulationName
) AS newImplementationsPending ON vw_simulations.simulationID = newImplementationsPending.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, SUM(finalStudentCount) AS totalStudentsCompleted
FROM vw_statisticsImplementedBase
GROUP BY simulationID, simulationName
) AS totalStudentsCompleted ON vw_simulations.simulationID = totalStudentsCompleted.simulationID
LEFT OUTER JOIN (
SELECT simulationID, simulationName, SUM(totalStudentCount) AS totalStudentsPending
FROM vw_statisticsPendingBase
GROUP BY simulationID, simulationName
) AS totalStudentsPending ON vw_simulations.simulationID = totalStudentsPending.simulationID
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnersSitesImplemented]
AS
SELECT partnerYearsImplemented.requestYear, COUNT(*) AS partnersImplemented, COALESCE(partnersPending, 0) AS partnersPending, partnerSitesImplemented, COALESCE(partnerSitesPending, 0) AS partnerSitesPending
FROM (
SELECT requestYear, partnerID
FROM vw_statisticsImplementedBase
GROUP BY requestYear, partnerID
) AS partnerYearsImplemented
LEFT OUTER JOIN (
SELECT requestYear, COUNT(*) AS partnersPending
FROM (
SELECT requestYear, partnerID
FROM vw_statisticsPendingBase
WHERE partnerID NOT IN (
SELECT partnerID
FROM vw_statisticsImplementedBase
WHERE requestYear = DATEPART(year, GETDATE())
)
GROUP BY requestYear, partnerID
) AS partnerYears
GROUP BY requestYear
) AS partnerYearsPending ON partnerYearsImplemented.requestYear = partnerYearsPending.requestYear
LEFT OUTER JOIN (
SELECT requestYear, COUNT(*) AS partnerSitesImplemented
FROM (
SELECT requestYear, partnerSiteID
FROM vw_statisticsImplementedBase
GROUP BY requestYear, partnerSiteID
) AS partnerSiteYears
GROUP BY requestYear
) AS partnerSiteYearsImplemented ON partnerYearsImplemented.requestYear = partnerSiteYearsImplemented.requestYear
LEFT OUTER JOIN (
SELECT requestYear, COUNT(*) AS partnerSitesPending
FROM (
SELECT requestYear, partnerSiteID
FROM vw_statisticsPendingBase
WHERE partnerSiteID NOT IN (
SELECT partnerSiteID
FROM vw_statisticsImplementedBase
WHERE requestYear = DATEPART(year, GETDATE())
)
GROUP BY requestYear, partnerSiteID
) AS partnerSiteYears
GROUP BY requestYear
) AS partnerSiteYearsPending ON partnerYearsPending.requestYear = partnerSiteYearsPending.requestYear
GROUP BY partnerYearsImplemented.requestYear, partnerSitesImplemented, partnersPending, partnerSitesPending
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_simulationsStudentsCompleted]
AS
SELECT simulationID, simulationName,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2019
FROM vw_statisticsImplementedBase
WHERE requestYear = 2019
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2019,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2020
FROM vw_statisticsImplementedBase
WHERE requestYear = 2020
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2020,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2021
FROM vw_statisticsImplementedBase
WHERE requestYear = 2021
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2021,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2022
FROM vw_statisticsImplementedBase
WHERE requestYear = 2022
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2022,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2023
FROM vw_statisticsImplementedBase
WHERE requestYear = 2023
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2023,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2024
FROM vw_statisticsImplementedBase
WHERE requestYear = 2024
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2024,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2025
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2025,
COALESCE((SELECT SUM(totalStudentCount) AS totalStudents2025Pending
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
AND simulationRequests.simulationID = vw_statisticsPendingBase.simulationID
GROUP BY simulationName, requestYear
), 0) AS totalStudents2025Pending,
FLOOR((COALESCE((SELECT SUM(finalStudentCount)
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025
AND simulationRequests.simulationID = vw_statisticsImplementedBase.simulationID), 0) + COALESCE((SELECT SUM(totalStudentCount)
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
AND simulationRequests.simulationID = vw_statisticsPendingBase.simulationID
), 0)) * (SELECT
CASE
	WHEN DATEPART(month, GETDATE()) BETWEEN 1 AND 4 THEN 3 -- * Spring
	WHEN DATEPART(month, GETDATE()) BETWEEN 5 AND 8 THEN 1.5 -- * Summer
	WHEN DATEPART(month, GETDATE()) BETWEEN 9 AND 12 THEN 1 -- * Fall
END AS semesterMultiplier))
AS totalStudents2025Projected
FROM (
SELECT simulationID, simulationName
FROM vw_statisticsImplementedBase
GROUP BY simulationID, simulationName
) AS simulationRequests
UNION ALL
SELECT NULL, 'Total',
(SELECT SUM(finalStudentCount) AS totalStudents2019
FROM vw_statisticsImplementedBase
WHERE requestYear = 2019
) AS totalStudents2019,
(SELECT SUM(finalStudentCount) AS totalStudents2020
FROM vw_statisticsImplementedBase
WHERE requestYear = 2020
) AS totalStudents2020,
(SELECT SUM(finalStudentCount) AS totalStudents2021
FROM vw_statisticsImplementedBase
WHERE requestYear = 2021
) AS totalStudents2021,
(SELECT SUM(finalStudentCount) AS totalStudents2022
FROM vw_statisticsImplementedBase
WHERE requestYear = 2022
) AS totalStudents2022,
(SELECT SUM(finalStudentCount) AS totalStudents2023
FROM vw_statisticsImplementedBase
WHERE requestYear = 2023
) AS totalStudents2023,
(SELECT SUM(finalStudentCount) AS totalStudents2024
FROM vw_statisticsImplementedBase
WHERE requestYear = 2024
) AS totalStudents2024,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2025
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025
), 0) AS totalStudents2025,
COALESCE((SELECT SUM(totalStudentCount) AS totalStudents2025Pending
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
), 0) AS totalStudents2025Pending,
FLOOR((COALESCE((SELECT SUM(finalStudentCount)
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025), 0) + COALESCE((SELECT SUM(totalStudentCount)
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
), 0)) * (SELECT
CASE
	WHEN DATEPART(month, GETDATE()) BETWEEN 1 AND 4 THEN 3 -- * Spring
	WHEN DATEPART(month, GETDATE()) BETWEEN 5 AND 8 THEN 1.5 -- * Summer
	WHEN DATEPART(month, GETDATE()) BETWEEN 9 AND 12 THEN 1 -- * Fall
END AS semesterMultiplier))
AS totalStudents2025Projected
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnersStudentsCompleted]
AS
SELECT partnerID, partnerName,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2019
FROM vw_statisticsImplementedBase
WHERE requestYear = 2019
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2019,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2020
FROM vw_statisticsImplementedBase
WHERE requestYear = 2020
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2020,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2021
FROM vw_statisticsImplementedBase
WHERE requestYear = 2021
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2021,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2022
FROM vw_statisticsImplementedBase
WHERE requestYear = 2022
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2022,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2023
FROM vw_statisticsImplementedBase
WHERE requestYear = 2023
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2023,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2024
FROM vw_statisticsImplementedBase
WHERE requestYear = 2024
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2024,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2025
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2025,
COALESCE((SELECT SUM(totalStudentCount) AS totalStudents2025
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
AND vw_statisticsPartners.partnerID = vw_statisticsPendingBase.partnerID
GROUP BY partnerName, requestYear
), 0) AS totalStudents2025Pending,
FLOOR((COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2025
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025
AND vw_statisticsPartners.partnerID = vw_statisticsImplementedBase.partnerID
GROUP BY partnerName, requestYear
), 0) + COALESCE((SELECT SUM(totalStudentCount) AS totalStudents2025
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
AND vw_statisticsPartners.partnerID = vw_statisticsPendingBase.partnerID
GROUP BY partnerName, requestYear
), 0)) * (SELECT
CASE
	WHEN DATEPART(month, GETDATE()) BETWEEN 1 AND 4 THEN 3 -- * Spring
	WHEN DATEPART(month, GETDATE()) BETWEEN 5 AND 8 THEN 1.5 -- * Summer
	WHEN DATEPART(month, GETDATE()) BETWEEN 9 AND 12 THEN 1 -- * Fall
END AS semesterMultiplier))
AS totalStudents2025Projected
FROM vw_statisticsPartners
UNION ALL
SELECT NULL, 'Total',
(SELECT SUM(finalStudentCount) AS totalStudents2019
FROM vw_statisticsImplementedBase
WHERE requestYear = 2019
GROUP BY requestYear
) AS totalStudents2019,
(SELECT SUM(finalStudentCount) AS totalStudents2020
FROM vw_statisticsImplementedBase
WHERE requestYear = 2020
GROUP BY requestYear
) AS totalStudents2020,
(SELECT SUM(finalStudentCount) AS totalStudents2021
FROM vw_statisticsImplementedBase
WHERE requestYear = 2021
GROUP BY requestYear
) AS totalStudents2021,
(SELECT SUM(finalStudentCount) AS totalStudents2022
FROM vw_statisticsImplementedBase
WHERE requestYear = 2022
GROUP BY requestYear
) AS totalStudents2022,
(SELECT SUM(finalStudentCount) AS totalStudents2023
FROM vw_statisticsImplementedBase
WHERE requestYear = 2023
GROUP BY requestYear
) AS totalStudents2023,
(SELECT SUM(finalStudentCount) AS totalStudents2024
FROM vw_statisticsImplementedBase
WHERE requestYear = 2024
GROUP BY requestYear
) AS totalStudents2024,
COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2025
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025
GROUP BY requestYear
), 0) AS totalStudents2025,
COALESCE((SELECT SUM(totalStudentCount) AS totalStudents2025
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
GROUP BY requestYear
), 0) AS totalStudents2025Pending,
FLOOR((COALESCE((SELECT SUM(finalStudentCount) AS totalStudents2025
FROM vw_statisticsImplementedBase
WHERE requestYear = 2025
GROUP BY requestYear
), 0) + COALESCE((SELECT SUM(totalStudentCount) AS totalStudents2025
FROM vw_statisticsPendingBase
WHERE requestYear = 2025
GROUP BY requestYear
), 0)) * (SELECT
CASE
	WHEN DATEPART(month, GETDATE()) BETWEEN 1 AND 4 THEN 3 -- * Spring
	WHEN DATEPART(month, GETDATE()) BETWEEN 5 AND 8 THEN 1.5 -- * Summer
	WHEN DATEPART(month, GETDATE()) BETWEEN 9 AND 12 THEN 1 -- * Fall
END AS semesterMultiplier))
AS totalStudents2025Projected
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnersSimulations]
AS
SELECT partnerID, partnerName,
(SELECT STRING_AGG(simulationName, ', ')
FROM (
SELECT DISTINCT simulationName
FROM vw_statisticsImplementedBase
WHERE vw_statisticsImplementedBase.partnerID = vw_statisticsPartners.partnerID) AS distinctSimulations) AS simulationsImplemented,
(SELECT STRING_AGG(simulationName, ', ')
FROM (
SELECT DISTINCT simulationName
FROM vw_statisticsPendingBase
WHERE vw_statisticsPendingBase.partnerID = vw_statisticsPartners.partnerID
AND partnerName NOT IN (SELECT DISTINCT partnerName
FROM vw_statisticsImplementedBase WHERE vw_statisticsImplementedBase.simulationID = vw_statisticsPendingBase.simulationID)) AS distinctSimulations) AS simulationsPending
FROM vw_statisticsPartners
GO

-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE VIEW [statistics].[vw_studentsPerYearPerPartner]
-- AS
-- SELECT requestYear, SUM(finalStudentCount) AS finalStudentCount, partnerID, partnerName
-- FROM (
-- SELECT requestYear, SUM(finalStudentCount) AS finalStudentCount, partnerID, partnerName
-- FROM vw_statisticsImplementedBase
-- GROUP BY requestYear, partnerID, partnerName
-- UNION ALL
-- SELECT requestYear, SUM(totalStudentCount) AS finalStudentCount, partnerID, partnerName
-- FROM vw_statisticsPendingBase
-- GROUP BY requestYear, partnerID, partnerName
-- ) AS finalNumbers
-- GROUP BY requestYear, partnerID, partnerName
-- GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_finalStudentCountProblems]
AS
SELECT DISTINCT vw_requests.requestID, partnerID, partnerName, partnerSiteID, partnerSiteName, vw_requests.simulationID, vw_requests.simulationName, vw_requests.startDate, vw_requests.endDate, vw_requests.totalStudentCount, vw_requests.finalStudentCount, vw_requests.scheduleID, numberOfStudents --, studentCount
FROM vw_requests
LEFT OUTER JOIN vw_simulationSchedules ON vw_requests.requestID = vw_simulationSchedules.requestID
WHERE vw_requests.finalStudentCount IS NULL
AND DATEADD(day, 1, vw_requests.endDate) < GETDATE()
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_partnersFirstImplementations]
AS
SELECT partnerID, partnerName, partnerSiteID, partnerSiteName, simulationID, simulationName,
(SELECT TOP (1) startDate FROM vw_requests AS firstImplementations
WHERE firstImplementations.simulationID = vw_requests.simulationID
AND firstImplementations.partnerSiteID = vw_requests.partnerSiteID
ORDER BY startDate ASC) AS firstImplementationDate
FROM vw_requests
WHERE startDate < GETDATE()
GROUP BY simulationID, simulationName, partnerID, partnerName, partnerSiteID, partnerSiteName
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [statistics].[vw_requestStudentTotalsBySemester]
AS
SELECT vw_requests.requestID, simulationID, simulationTypeID, simulationTypeName, simulationName, simulationDuration, groupsPerDay, groupsPerScheduleItem, studentsPerSubgroup, eventColor, displayDemonstration, displayRequest, demonstrationOnly, applicationID, description, facultyGuideURL, printGuideURL, studentAnnouncementURL, groupNotesURL, sosGuideURL, sosChecklistURL, refresherCourseURL, partnerSiteID,
CASE
	WHEN DATEPART(month, startDate) BETWEEN 1 AND 4 THEN CONCAT('Spring ', YEAR(startDate))
	WHEN DATEPART(month, startDate) BETWEEN 5 AND 8 THEN CONCAT('Summer ', YEAR(startDate))
	WHEN DATEPART(month, startDate) BETWEEN 9 AND 12 THEN CONCAT('Fall ', YEAR(startDate))
	ELSE NULL
END AS semester,
CASE
	WHEN DATEPART(month, startDate) BETWEEN 1 AND 4 THEN 3
	WHEN DATEPART(month, startDate) BETWEEN 5 AND 8 THEN 2
	WHEN DATEPART(month, startDate) BETWEEN 9 AND 12 THEN 1
	ELSE NULL
END AS semesterMonth,
YEAR(startDate) AS semesterYear,
startDate, endDate, totalStudentCount, finalStudentCount, alternateActivityID, alternateActivityName, recordSessionID, recordSessionName, relatedCourse, programID, programName, programNameAbbreviation, confirmed, clinicalReplacement, sendNotifications, requestStatus, scheduleStatus, scheduleStartDateMatches, scheduleEndDateMatches, partnerID, partnerName, partnerAbbreviation, partnerSiteName, partnerSiteAbbreviation, alternateActivityUpdatedID, alternateActivityUpdatedName, finalSubmission, finalSubmissionDate, submissionApproved, submissionApprovedDate
FROM vw_requests
-- ORDER BY semesterYear DESC, semesterMonth, partnerName, partnerSiteName, simulationName, startDate DESC
GO
