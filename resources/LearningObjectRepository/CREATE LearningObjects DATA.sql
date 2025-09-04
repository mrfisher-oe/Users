-- USE [LearningObjects]
-- GO

TRUNCATE TABLE courseCategories
TRUNCATE TABLE programTypes
GO

TRUNCATE TABLE associatedData
TRUNCATE TABLE associatedDataCategories
TRUNCATE TABLE learningObjectCategories
TRUNCATE TABLE userRoles
GO

-- TRUNCATE TABLE nursingEssentials
TRUNCATE TABLE competencyDomains
TRUNCATE TABLE competencies
TRUNCATE TABLE subcompetencies
GO

TRUNCATE TABLE medicalAbbreviations
GO

TRUNCATE TABLE lmsConnections
GO
TRUNCATE TABLE activitySourceRepository
GO

DBCC CHECKIDENT('courseCategories', RESEED, 1)
DBCC CHECKIDENT('programTypes', RESEED, 1)
DBCC CHECKIDENT('associatedData', RESEED, 1)
DBCC CHECKIDENT('associatedDataCategories', RESEED, 1)
DBCC CHECKIDENT('learningObjectCategories', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
DBCC CHECKIDENT('lmsConnections', RESEED, 1)
GO

SET IDENTITY_INSERT [courseCategories] ON 
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (1, N'Anatomy and Physiology', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.393' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (2, N'Art', NULL, 1, NULL, 0, CAST(N'2023-08-15T16:52:12.393' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (3, N'Biology', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.393' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (4, N'Chemistry', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.393' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (5, N'Ecology', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.397' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (6, N'English', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.397' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (7, N'Microbiology', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.397' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (8, N'Physiology', 18, 1, NULL, 0, CAST(N'2023-08-15T16:52:12.400' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (9, N'Psychology', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.400' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (10, N'Social Sciences', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.400' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (11, N'Statistics', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.400' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (12, N'Theology', 18, 1, NULL, 1, CAST(N'2023-08-15T16:52:12.400' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (13, N'Adult Health and Medical/Surgical', 6, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.400' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (14, N'Community', 18, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.403' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (15, N'Fundamentals', 18, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.403' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (16, N'Older Adults', 6, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.403' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (17, N'Leadership', 18, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.403' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (18, N'Legal and Ethics', 18, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.407' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (19, N'Maternal/Newborn', 6, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.407' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (20, N'Mental Health', 6, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.407' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (21, N'Pathophysiology', 18, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.407' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (22, N'Pediatrics', 6, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.410' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (23, N'Pharmacology', 6, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.410' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (24, N'Research', 18, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.410' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (25, N'Epartneremiology and Research', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.410' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (26, N'Family Nurse Practitioner (FNP)', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.410' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (27, N'Informatics', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.410' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (28, N'Interdisciplinary Teams', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.413' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (29, N'Leadership and Administration', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.413' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (30, N'Neonatal Nurse Practitioner (NNP)', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.413' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (31, N'Policy and Law', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.417' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (32, N'Psychiatric/Mental Health', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.417' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (33, N'Quality and Patient Safety', NULL, 3, NULL, 0, CAST(N'2023-08-15T16:52:12.417' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (42, N'General (Physical Therapy Assistant)', NULL, 5, NULL, 1, CAST(N'2023-08-15T16:52:12.417' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (43, N'Dosage Calculations', 18, 2, NULL, 1, CAST(N'2023-08-15T16:52:12.420' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (44, N'Kinesiology/Biomechanics', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.420' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (45, N'Pediatrics', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.420' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (46, N'Clinical Skills', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.420' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (47, N'Documentation', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.420' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (48, N'Assessment/Screening', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.423' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (49, N'Older Adults', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.423' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (50, N'Physical Dysfunction', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.423' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (51, N'Mental Health', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.423' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (52, N'Occupational Therapy (OT) Practice', 18, 4, NULL, 1, CAST(N'2023-08-15T16:52:12.423' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (53, N'Fundamentals', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.427' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (54, N'Clinical Microbiology', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.427' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (55, N'Clinical Chemistry', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.427' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (56, N'Immunohematology', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.427' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (57, N'Immunology', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.430' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (58, N'Hematology', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.430' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (59, N'Urinalysis/Body Fluids', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.430' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (60, N'Molecular Diagnostics', NULL, 6, NULL, 0, CAST(N'2023-08-15T16:52:12.430' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (61, N'Research', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.433' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (62, N'Lab Management/Operations', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.433' AS DateTime))
GO
INSERT [courseCategories] ([courseCategoryID], [courseCategory], [reviewPeriodMonths], [programTypeID], [updatedBy], [active], [createDate]) VALUES (63, N'Hemostasis and Thrombosis', NULL, 6, NULL, 1, CAST(N'2023-08-15T16:52:12.433' AS DateTime))
GO
SET IDENTITY_INSERT [courseCategories] OFF
GO

SET IDENTITY_INSERT [programTypes] ON 
GO
INSERT [programTypes] ([programTypeID], [programType], [updatedBy], [active], [createDate]) VALUES (1, N'General Education', NULL, 1, CAST(N'2023-08-15T16:52:12.437' AS DateTime))
GO
INSERT [programTypes] ([programTypeID], [programType], [updatedBy], [active], [createDate]) VALUES (2, N'Nursing Undergraduate', NULL, 1, CAST(N'2023-08-15T16:52:12.437' AS DateTime))
GO
INSERT [programTypes] ([programTypeID], [programType], [updatedBy], [active], [createDate]) VALUES (3, N'Nursing Graduate', NULL, 0, CAST(N'2023-08-15T16:52:12.437' AS DateTime))
GO
INSERT [programTypes] ([programTypeID], [programType], [updatedBy], [active], [createDate]) VALUES (4, N'Occupational Therapy Assistant (OTA)', NULL, 1, CAST(N'2023-08-15T16:52:12.437' AS DateTime))
GO
INSERT [programTypes] ([programTypeID], [programType], [updatedBy], [active], [createDate]) VALUES (5, N'Physical Therapy Assistant (PTA)', NULL, 1, CAST(N'2023-08-15T16:52:12.440' AS DateTime))
GO
INSERT [programTypes] ([programTypeID], [programType], [updatedBy], [active], [createDate]) VALUES (6, N'Medical Laboratory Science (MLS)', NULL, 1, CAST(N'2023-08-15T16:52:12.440' AS DateTime))
GO
SET IDENTITY_INSERT [programTypes] OFF
GO

SET IDENTITY_INSERT [associatedData] ON 
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (1, 1, N'Remembering', NULL, 1, 1, CAST(N'2023-08-14T22:15:58.953' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (2, 1, N'Understanding', NULL, 2, 1, CAST(N'2023-08-14T22:15:58.993' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (3, 1, N'Applying', NULL, 3, 1, CAST(N'2023-08-14T22:15:59.037' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (4, 1, N'Analyzing', NULL, 4, 1, CAST(N'2023-08-14T22:15:59.080' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (5, 1, N'Evaluating', NULL, 5, 1, CAST(N'2023-08-14T22:15:59.130' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (6, 1, N'Creating', NULL, 6, 1, CAST(N'2023-08-14T22:15:59.190' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (7, 2, N'Captivate', NULL, 1, 0, CAST(N'2023-08-14T22:15:58.630' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (8, 2, N'Flash AS2', NULL, 1, 0, CAST(N'2023-08-14T22:15:58.667' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (9, 2, N'Flash AS3', NULL, 1, 0, CAST(N'2023-08-14T22:15:58.710' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (10, 2, N'Flex', NULL, 1, 0, CAST(N'2023-08-14T22:15:58.747' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (11, 2, N'jQuery', NULL, 1, 1, CAST(N'2023-08-14T22:15:58.790' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (12, 2, N'React', NULL, 1, 1, CAST(N'2023-08-14T22:15:58.830' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (13, 2, N'HTML', NULL, 1, 1, CAST(N'2023-08-14T22:15:58.870' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (14, 2, N'Storyline', NULL, 1, 1, CAST(N'2023-08-14T22:15:58.910' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (15, 2, N'AngularJS', NULL, 1, 1, CAST(N'2023-08-14T22:15:58.910' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (16, 3, N'All Partners', NULL, 1, 1, CAST(N'2024-07-08T15:07:49.310' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (17, 3, N'Partner Specific', NULL, 2, 1, CAST(N'2024-07-08T15:08:05.563' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (18, 2, N'Rise', NULL, 1, 1, CAST(N'2025-02-06T17:10:30.323' AS DateTime))
GO
SET IDENTITY_INSERT [associatedData] OFF
GO

SET IDENTITY_INSERT [associatedDataCategories] ON 
GO
INSERT [associatedDataCategories] ([associatedDataCategoryID], [name], [description], [active], [createDate]) VALUES (1, N'bloomsTaxonomy', NULL, 1, CAST(N'2023-08-14T22:15:59.363' AS DateTime))
GO
INSERT [associatedDataCategories] ([associatedDataCategoryID], [name], [description], [active], [createDate]) VALUES (2, N'developmentTools', NULL, 1, CAST(N'2023-08-14T22:15:59.320' AS DateTime))
GO
INSERT [associatedDataCategories] ([associatedDataCategoryID], [name], [description], [active], [createDate]) VALUES (3, N'availability', NULL, 1, CAST(N'2024-07-08T15:06:59.527' AS DateTime))
GO
SET IDENTITY_INSERT [associatedDataCategories] OFF
GO

SET IDENTITY_INSERT [userRoles] ON 
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (1, N'Viewer', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (2, N'Viewer Plus Source', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (3, N'Viewer Plus Statistics', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (4, N'Editor', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (5, N'Administrator', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (6, N'System Administrator', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
SET IDENTITY_INSERT [userRoles] OFF
GO

SET IDENTITY_INSERT [learningObjectCategories] ON 
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (1, N'Brain Game', NULL, 2, 1, CAST(N'2022-12-05T17:32:56.797' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (2, N'Case Study', N'A series of information pages and questions that focus on a particular patient. Contains the userScore at the end.', 3, 1, CAST(N'2022-06-28T16:34:37.240' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (3, N'Click Matching', NULL, 4, 0, CAST(N'2022-06-28T16:34:37.307' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (4, N'Concept Map', NULL, 5, 1, CAST(N'2022-12-05T17:32:56.817' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (5, N'Demonstration', N'Used to demonstrate the capabilities of the template.', 24, 1, CAST(N'2022-06-28T16:34:38.047' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (6, N'Design', N'Used to display all the sizing options of the template.', 25, 0, CAST(N'2022-06-28T16:34:38.103' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (7, N'Model Matching', N'Matching exercise that has imagery as the background to match text items on.', 7, 1, CAST(N'2022-06-28T16:34:37.370' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (8, N'Flow Chart', NULL, 8, 1, CAST(N'2022-12-07T08:42:06.540' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (9, N'Image Matching', N'Matching exercise like modelMatching but two images are matched.', 9, 1, CAST(N'2022-06-28T16:34:37.427' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (10, N'Informational', N'Like a case study but contains no questions.', 10, 1, CAST(N'2022-06-28T16:34:37.487' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (11, N'Lab Demonstration', NULL, 11, 1, CAST(N'2022-06-28T16:34:37.550' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (12, N'Labeling', NULL, 12, 1, CAST(N'2022-12-05T17:40:31.580' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (13, N'Matching', N'In the React Template, a matching exercise that has no imagery. Items to be matched are all text based. Previously did not have dragging capabilities. Formerly called Click Matching. Storyline learning objects also uses this category.', 13, 1, CAST(N'2022-12-07T08:42:06.540' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (14, N'Medical Laboratory Science', N'A series of information pages and questions that focus on a particular device that is used in a laboratory.', 14, 1, CAST(N'2022-06-28T16:34:37.677' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (15, N'Custom', N'A learning object that is not like any others.', 6, 1, CAST(N'2022-06-28T16:34:37.740' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (16, N'Ordering', NULL, 15, 1, CAST(N'2022-12-05T17:37:53.940' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (17, N'Presentation', NULL, 16, 1, CAST(N'2022-12-05T17:32:56.820' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (18, N'Questions Activity', N'Contains a series of questions and does not use imagery. Uses the QuestionTracker component. Uses Score Container. Contains the userScore at the end.', 17, 1, CAST(N'2022-06-28T16:34:37.800' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (19, N'Quiz', N'Contains a series of questions and uses imagery like a case study. Does not use the QuestionTracker component. Does not use Score Container. Contains the userScore at the end.', 18, 1, CAST(N'2022-06-28T16:34:37.860' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (20, N'Styleguide', NULL, 19, 1, CAST(N'2022-12-05T18:05:27.483' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (21, N'Template', N'A learning object that is copied to create new learning objects of a certain type.', 26, 1, CAST(N'2022-12-02T20:09:27.747' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (22, N'Test', N'A learning object that is used for testing purposes only.', 27, 1, CAST(N'2022-12-05T18:05:27.487' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (23, N'Unfolding Case', N'Page numbers are not displayed since the user can jump around in the order of the pages so the numbering doesn''t matter and isn''t accurate.', 20, 1, CAST(N'2022-06-28T16:34:37.920' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (24, N'WebGL', N'Uses the Unity WebGL interface.', 23, 1, CAST(N'2022-06-28T16:34:37.983' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (25, N'Video', N'Contains a video.', 21, 1, CAST(N'2022-12-05T18:05:27.493' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (26, N'Video Playlist', N'Contains a video playlist.', 22, 1, CAST(N'2022-12-05T18:05:27.493' AS DateTime))
GO
INSERT [learningObjectCategories] ([learningObjectCategoryID], [categoryName], [description], [sortID], [active], [createDate]) VALUES (27, N'Anatomy Matching', NULL, 1, 1, CAST(N'2023-04-18T11:18:10.057' AS DateTime))
GO
SET IDENTITY_INSERT [learningObjectCategories] OFF
GO

-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (1, N'I', N'BSN', N'Liberal Education for Baccalaureate Generalist Nursing Practice', 1, CAST(N'2023-08-08T16:04:03.657' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (2, N'II', N'BSN', N'Basic Organizational and Systems Leadership for Quality Care and Patient Safety', 1, CAST(N'2023-08-08T16:04:20.517' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (3, N'III', N'BSN', N'Scholarship for Evidence-Based Practice', 1, CAST(N'2023-08-08T16:04:31.853' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (4, N'IV', N'BSN', N'Information Management and Application of Patient Care Technology', 1, CAST(N'2023-08-08T16:04:43.340' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (5, N'V', N'BSN', N'Healthcare Policy, Finance, and Regulatory Environments', 1, CAST(N'2023-08-08T16:04:54.440' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (6, N'VI', N'BSN', N'Interprofessional Communication and Collaboration for Improving Patient Health Outcomes', 1, CAST(N'2023-08-08T16:05:05.013' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (7, N'VII', N'BSN', N'Clinical Prevention and Population Health', 1, CAST(N'2023-08-08T16:05:15.857' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (8, N'VIII', N'BSN', N'Professionalism and Professional Values', 1, CAST(N'2023-08-08T16:05:26.487' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (9, N'IX', N'BSN', N'Baccalaureate Generalist Nursing Practice', 1, CAST(N'2023-08-08T16:05:37.270' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (10, N'I', N'MSN', N'Background for Practice from Sciences and Humanities', 1, CAST(N'2023-08-08T16:10:03.860' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (11, N'II', N'MSN', N'Organizational and Systems Leadership', 1, CAST(N'2023-08-08T16:10:14.257' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (12, N'III', N'MSN', N'Quality Improvement and Safety', 1, CAST(N'2023-08-08T16:10:24.257' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (13, N'IV', N'MSN', N'Translating and Integrating Scholarship into Practice', 1, CAST(N'2023-08-08T16:10:38.077' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (14, N'V', N'MSN', N'Informatics and Healthcare Technologies', 1, CAST(N'2023-08-08T16:10:48.600' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (15, N'VI', N'MSN', N'Health Policy and Advocacy', 1, CAST(N'2023-08-08T16:11:00.010' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (16, N'VII', N'MSN', N'Interprofessional Collaboration for Improving Patient and Population Health Outcomes', 1, CAST(N'2023-08-08T16:11:10.603' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (17, N'VIII', N'MSN', N'Clinical Prevention and Population Health for Improving Health', 1, CAST(N'2023-08-08T16:11:22.190' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (18, N'IX', N'MSN', N'Master''s-Level Nursing Practice', 1, CAST(N'2023-08-08T16:11:34.740' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (19, N'I', N'DNP', N'Scientific Underpinnings for Practice', 1, CAST(N'2023-08-08T16:14:02.590' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (20, N'II', N'DNP', N'Organizational and Systems Leadership for Quality Improvement and Systems Thinking', 1, CAST(N'2023-08-08T16:14:12.623' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (21, N'III', N'DNP', N'Clinical Scholarship and Analytical Methods for Evidence-Based Practice ', 1, CAST(N'2023-08-08T16:14:23.253' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (22, N'IV', N'DNP', N'Information Systems/Technology and Patient Care Technology for the Improvement and Transformation of Health Care', 1, CAST(N'2023-08-08T16:14:38.483' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (23, N'V', N'DNP', N'Health Care Policy for Advocacy in Health Care', 1, CAST(N'2023-08-08T16:14:48.857' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (24, N'VI', N'DNP', N'Interprofessional Collaboration for Improving Patient and Population Health Outcomes', 1, CAST(N'2023-08-08T16:14:59.210' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (25, N'VII', N'DNP', N'Clinical Prevention and Population Health for Improving the Nation''s Health', 1, CAST(N'2023-08-08T16:15:09.523' AS DateTime))
-- GO
-- INSERT [nursingEssentials] ([essentialID], [essentialNumber], [degree], [essentialName], [active], [createDate]) VALUES (26, N'VIII', N'DNP', N'Advanced Nursing Practice', 1, CAST(N'2023-08-08T16:15:20.310' AS DateTime))
-- GO

INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'1', N'Knowledge of Nursing Practice', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.417' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'10', N'Personal, Professional, and Leadership Development', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.430' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'2', N'Person-Centered Care', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.430' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'3', N'Population Health', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.430' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'4', N'Scholarship for the Nursing Discipline', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.430' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'5', N'Quality and Safety', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.433' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'6', N'Interprofessional Partnerships', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.433' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'7', N'Systems-Based Practice', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.433' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'8', N'Informatics and Healthcare Technologies', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.433' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'9', N'Professionalism', N'Nursing Domains', 1, CAST(N'2023-07-18T18:02:54.437' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'A', N'General Requirements', N'ACOTE', 1, CAST(N'2023-08-09T15:37:20.817' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'B', N'Content Requirements', N'ACOTE', 1, CAST(N'2023-08-09T15:37:41.927' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'C', N'Fieldwork Education', N'ACOTE', 1, CAST(N'2023-08-09T15:37:56.627' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'D', N'Baccalaureate Project/Doctoral Capstone', N'ACOTE', 1, CAST(N'2023-08-09T15:38:52.363' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 1', N'The program meets graduate achievement measures and program outcomes related to its mission and goals.', N'CAPTE', 1, CAST(N'2023-08-10T19:19:13.620' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 2', N'The program is engaged in effective, on-going, formal, comprehensive processes for self-assessment and planning for the purpose of program improvement.', N'CAPTE', 1, CAST(N'2023-08-10T19:20:53.337' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 3', N'The institution and program operate with integrity.', N'CAPTE', 1, CAST(N'2023-08-10T19:21:00.273' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 4', N'The program faculty are qualified for their roles and effective in carrying out their responsibilities.', N'CAPTE', 1, CAST(N'2023-08-10T19:21:12.413' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 5', N'The program recruits, admits and graduates students consistent with the missions and goals of the institution and the program and consistent with societal needs for physical therapy services for a diverse population.', N'CAPTE', 1, CAST(N'2023-08-10T19:21:23.673' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 6', N'The program has a comprehensive curriculum plan.', N'CAPTE', 1, CAST(N'2023-08-10T19:21:34.030' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 7', N'The curriculum includes content, learning experiences, and student testing and evaluation processes designed to prepare students to achieve educational outcomes required for initial practice in physical therapy and for lifelong learning necessary for functioning within an ever-changing health care environment.', N'CAPTE', 1, CAST(N'2023-08-10T19:22:13.797' AS DateTime))
GO
INSERT [competencyDomains] ([domainID], [domainName], [programName], [active], [createDate]) VALUES (N'Standard 8', N'The program resources are sufficient to meet the current and projected needs of the program.', N'CAPTE', 1, CAST(N'2023-08-10T19:22:38.020' AS DateTime))
GO

INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'1', N'1', N'Demonstrate an understanding of the discipline of nursing''s distinctive perspective and where shared perspectives exist with other disciplines', 1, CAST(N'2023-07-18T18:10:53.620' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'1', N'2', N'Apply theory and research-based knowledge from nursing, the arts, humanities, and other sciences.', 1, CAST(N'2023-07-18T18:10:53.633' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'1', N'3', N'Demonstrate clinical judgement founded on a broad knowledge base.', 1, CAST(N'2023-07-18T18:10:53.633' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'1', N'Engage with the individual in establishing a caring relationship.', 1, CAST(N'2023-07-18T18:10:53.633' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'2', N'Communicate effectively with individuals.', 1, CAST(N'2023-07-18T18:10:53.637' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'3', N'Integrate assessment skills in practice.', 1, CAST(N'2023-07-18T18:10:53.637' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'4', N'Diagnose actual or potential health problems and needs.', 1, CAST(N'2023-07-18T18:10:53.637' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'5', N'Develop a plan of care.', 1, CAST(N'2023-07-18T18:10:53.640' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'6', N'Demonstrate accountability for care delivery.', 1, CAST(N'2023-07-18T18:10:53.640' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'7', N'Evaluate outcomes of care.', 1, CAST(N'2023-07-18T18:10:53.640' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'8', N'Promote self-care management.', 1, CAST(N'2023-07-18T18:10:53.643' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'2', N'9', N'Provide care coordination.', 1, CAST(N'2023-07-18T18:10:53.643' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'3', N'1', N'Manage population health.', 1, CAST(N'2023-07-18T18:10:53.647' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'3', N'2', N'Engage in effective partnerships.', 1, CAST(N'2023-07-18T18:10:53.647' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'3', N'3', N'Consider the socioeconomic impact of the delivery of health care.', 1, CAST(N'2023-07-18T18:10:53.647' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'3', N'4', N'Advance equitable population health policy.', 1, CAST(N'2023-07-18T18:10:53.653' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'3', N'5', N'Demonstrate advocacy strategies.', 1, CAST(N'2023-07-18T18:10:53.663' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'3', N'6', N'Advance preparedness to protect population health during disasters and public health emergencies.', 1, CAST(N'2023-07-18T18:10:53.663' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'4', N'1', N'Advance the scholarship of nursing.', 1, CAST(N'2023-07-18T18:10:53.667' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'4', N'2', N'Integrate best evidence into nursing practice.', 1, CAST(N'2023-07-18T18:10:53.670' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'4', N'3', N'Promote the ethical conduct of scholarly activities.', 1, CAST(N'2023-07-18T18:10:53.673' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'5', N'1', N'Apply quality improvement principles in care delivery.', 1, CAST(N'2023-07-18T18:10:53.677' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'5', N'2', N'Contribute to a culture of patient safety.', 1, CAST(N'2023-07-18T18:10:53.677' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'5', N'3', N'Contribute to a culture of provider and work environment safety.', 1, CAST(N'2023-07-18T18:10:53.677' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'6', N'1', N'Communicate in a manner that facilitates a partnership approach to quality care delivery.', 1, CAST(N'2023-07-18T18:10:53.677' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'6', N'2', N'Perform effectively in different team roles, using principles and values of team dynamics.', 1, CAST(N'2023-07-18T18:10:53.680' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'6', N'3', N'Use knowledge of nursing and other professions to address healthcare needs.', 1, CAST(N'2023-07-18T18:10:53.680' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'6', N'4', N'Work with other professions to maintain a climate of mutual learning, respect, and shared values.', 1, CAST(N'2023-07-18T18:10:53.680' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'7', N'1', N'Apply knowledge of systems to work effectively across the continuum of care.', 1, CAST(N'2023-07-18T18:10:53.680' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'7', N'2', N'Incorporate consideration of cost-effectiveness of care.', 1, CAST(N'2023-07-18T18:10:53.680' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'7', N'3', N'Optimize system effectiveness through application of innovation and evidence-based practice.', 1, CAST(N'2023-07-18T18:10:53.680' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'8', N'1', N'Describe the various information and communication technology tools used in the care of patients, communities, and populations.', 1, CAST(N'2023-07-18T18:10:53.683' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'8', N'2', N'Use information and communication technology to gather data, create information, and generate knowledge.', 1, CAST(N'2023-07-18T18:10:53.683' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'8', N'3', N'Use information and communication technologies and informatics processess to deliver safe nursing care to diverse populations in a variety of settings.', 1, CAST(N'2023-07-18T18:10:53.683' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'8', N'4', N'Use information and communication technology to support documentation of care and communication among providers, patients, and all system levels.', 1, CAST(N'2023-07-18T18:10:53.683' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'8', N'5', N'Use information and communication technologies in accordance with ethical, legal, professional, and regulatory standards, and workplace policies in the delivery of care.', 1, CAST(N'2023-07-18T18:10:53.687' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'9', N'1', N'Demonstrate an ethical comportment in one''s practice reflective of nursing''s mission to society.', 1, CAST(N'2023-07-18T18:10:53.687' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'9', N'2', N'Employ participatory approach to nursing care.', 1, CAST(N'2023-07-18T18:10:53.687' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'9', N'3', N'Demonstrate accountability to the individual, society, and the profession.', 1, CAST(N'2023-07-18T18:10:53.687' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'9', N'4', N'Comply with relevant laws, policies, and regulations.', 1, CAST(N'2023-07-18T18:10:53.690' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'9', N'5', N'Demonstrate the professional identity of nursing.', 1, CAST(N'2023-07-18T18:10:53.690' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'9', N'6', N'Integrate diversity, equity, and inclusion as core to one''s professional identity.', 1, CAST(N'2023-07-18T18:10:53.690' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'10', N'1', N'Demonstrate a commitment to personal health and well-being.', 1, CAST(N'2023-07-18T18:10:53.690' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'10', N'2', N'Demonstrate a spirit of inquiry that fosters flexibility and professional maturity.', 1, CAST(N'2023-07-18T18:10:53.693' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'10', N'3', N'Develop capacity for leadership.', 1, CAST(N'2023-07-18T18:10:53.693' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'A', N'1', N'Sponsorship and Accreditation', 1, CAST(N'2023-08-09T15:48:41.193' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'A', N'2', N'Academic Resources', 1, CAST(N'2023-08-09T15:48:58.327' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'A', N'3', N'Students', 1, CAST(N'2023-08-09T15:49:07.980' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'A', N'5', N'Curriculum Framework', 1, CAST(N'2023-08-09T15:52:04.433' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'A', N'6', N'Strategic Plan and Program Assessment', 1, CAST(N'2023-08-09T15:52:13.830' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'B', N'1', N'Foundational Content Requirements', 1, CAST(N'2023-08-09T15:52:23.440' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'B', N'2', N'Occupational Therapy Theoretical Perspectives', 1, CAST(N'2023-08-09T15:52:32.257' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'B', N'3', N'Basic Tenets of Occupational Therapy', 1, CAST(N'2023-08-09T15:52:41.963' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'B', N'4', N'Referral, Screening, Evaluation, and Intervention Plan (Intervention Plan: Formulation and Implementation)/Screening, Evaluation, and Intervention Plan (Intervention and Implementation)', 1, CAST(N'2023-08-09T15:53:05.223' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'B', N'5', N'Context of Service Delivery, Leadership, and Management of Occupational Therapy Services', 1, CAST(N'2023-08-09T15:53:09.233' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'B', N'6', N'Scholarship', 1, CAST(N'2023-08-09T15:53:16.810' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'B', N'7', N'Professional Ethics, Values, and Responsibilities', 1, CAST(N'2023-08-09T15:53:25.330' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'C', N'1', N'Fieldwork Education', 1, CAST(N'2023-08-09T15:53:33.880' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'D', N'1', N'Baccalaureate Project/Doctoral Capstone', 1, CAST(N'2023-08-09T15:53:44.973' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'A', N'4', N'Public Information and Policies', 1, CAST(N'2023-08-09T15:49:56.730' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 1', N'A', N'The mission of the program is written and compatible with the mission of the institution, with the unit(s) in which the program resides, and with contemporary preparation of physical therapists.', 1, CAST(N'2023-08-11T12:25:42.520' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 1', N'B', N'The program has documented goals that are based on its mission, that reflect contemporary physical therapy education, research and practice, and that lead to expected program outcomes.', 1, CAST(N'2023-08-11T12:25:42.530' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 1', N'C', N'The program meets required student achievement measures and its mission and goals as demonstrated by actual program outcomes.', 1, CAST(N'2023-08-11T12:25:42.537' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 2', N'A', N'The program has documented and implemented on-going, formal, and comprehensive program assessment processes that are designed to determine program effectiveness and used to foster program improvement.', 1, CAST(N'2023-08-11T12:25:42.550' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 2', N'B', N'For each of the following, the program provides an analysis of relevant data and identifies needed program change(s) with timelines for implementation and reassessment.', 1, CAST(N'2023-08-11T12:25:42.550' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 2', N'C', N'The curriculum assessment plan is written and addresses the curriculum as a whole.', 1, CAST(N'2023-08-11T12:25:42.557' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 2', N'D', N'The program has implemented a strategic plan that guides its future development.', 1, CAST(N'2023-08-11T12:25:42.557' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'A', N'The sponsoring institution(s) is (are) authorized under applicable state law or other acceptable authority to provide postsecondary education and has degree granting authority.', 1, CAST(N'2023-08-11T12:25:42.557' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'B', N'The sponsoring institution(s) is (are) accredited by an agency or association recognized by the US Department of Education (USDE) or by the Council for Higher Education Accreditation (CHEA).', 1, CAST(N'2023-08-11T12:25:42.560' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'C', N'Institutional policies related to academic standards and to faculty roles and workload are applied to the program in a manner that recognizes and supports the academic and professional aspects of the physical therapy program, including, but not limited to, providing for reduction in teaching load for administrative functions.', 1, CAST(N'2023-08-11T12:25:42.560' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'D', N'Policies and procedures exist to facilitate equal opportunity and nondiscrimination for faculty, staff and prospective/enrolled students.', 1, CAST(N'2023-08-11T12:25:42.563' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'E', N'Policies, procedures, and practices that affect the rights, responsibilities, safety, privacy, and dignity of program faculty and staff are written, disseminated, and applied consistently and equitably.', 1, CAST(N'2023-08-11T12:25:42.563' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'F', N'Policies, procedures, and practices exist for handling complaints that fall outside the realm of due process, including a prohibition of retaliation following complaint submission.', 1, CAST(N'2023-08-11T12:25:42.563' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'G', N'Program specific policies and procedures are compatible with institutional policies and with applicable law.', 1, CAST(N'2023-08-11T12:25:42.563' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 3', N'H', N'Program policies, procedures, and practices provide for compliance with accreditation policies and procedures.', 1, CAST(N'2023-08-11T12:25:42.567' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'A', N'Each core faculty member, including the program director and clinical education coordinator, has doctoral preparation, contemporary expertise in assigned teaching areas, and demonstrated effectiveness in teaching and student evaluation.', 1, CAST(N'2023-08-11T12:25:42.573' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'B', N'Each core faculty member has a well-defined, ongoing scholarly agenda that reflects contributions.', 1, CAST(N'2023-08-11T12:25:42.577' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'C', N'Each core faculty member has a record of institutional or professional service.', 1, CAST(N'2023-08-11T12:25:42.577' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'D', N'Each associated faculty member has contemporary expertise in assigned teaching areas and demonstrated effectiveness in teaching and student evaluation.', 1, CAST(N'2023-08-11T12:25:42.577' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'E', N'Formal evaluation of each core faculty member occurs in a manner and timeline consistent with applicable institutional policy.', 1, CAST(N'2023-08-11T12:25:42.577' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'F', N'Regular evaluation of associated faculty occurs and results in a plan to address identified needs.', 1, CAST(N'2023-08-11T12:25:42.580' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'G', N'The program director demonstrates the academic and professional qualifications and relevant experience in higher education requisite for providing effective leadership for the program, the program faculty, and the students.', 1, CAST(N'2023-08-11T12:25:42.580' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'H', N'The program director provides effective leadership for the program including, but not limited to, responsibility for communication, program assessment and planning, fiscal management, and faculty evaluation.', 1, CAST(N'2023-08-11T12:25:42.580' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'I', N'The clinical education coordinator is a physical therapist who holds an active, unrestricted PT license in any United States jurisdiction and the state where the program is located if required by that state''s jurisdiction, and has a minimum of three years of full-time post-licensure clinical practice.', 1, CAST(N'2023-08-11T12:25:42.580' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'J', N'The clinical education coordinator is effective in developing, conducting, and coordinating the clinical education program.', 1, CAST(N'2023-08-11T12:25:42.580' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'K', N'The collective core and associated faculty include an effective blend of individuals with doctoral preparation.', 1, CAST(N'2023-08-11T12:25:42.583' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'L', N'The collective core faculty initiate, adopt, evaluate, and uphold academic regulations specific to the program and compatible with institutional policies, procedures and practices.', 1, CAST(N'2023-08-11T12:25:42.583' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'M', N'The collective core faculty have primary responsibility for development, review and revision of the curriculum with input from other appropriate communities of interest.', 1, CAST(N'2023-08-11T12:25:42.583' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'N', N'The collective core faculty are responsible for assuring that students are professional, competent, and safe and ready to progress to clinical education.', 1, CAST(N'2023-08-11T12:25:42.587' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 4', N'O', N'Clinical instructors are licensed physical therapists, with a minimum of one year of full time (or equivalent) post-licensure clinical experience, and are effective role models and clinical teachers.', 1, CAST(N'2023-08-11T12:25:42.587' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 5', N'A', N'Program policies, procedures, and practices related to student recruitment and admission are based on appropriate and equitable criteria and applicable law, are written and made available to prospective students, and are applied consistently and equitably.', 1, CAST(N'2023-08-11T12:25:42.590' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 5', N'B', N'Prospective and enrolled students are provided with relevant information about the institution and program that may affect them.', 1, CAST(N'2023-08-11T12:25:42.590' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 5', N'C', N'Enrollment agreements, if used, comply with institutional accrediting agency and state requirements and are only executed with a prospective student after disclosure of the information delineated in 5B and formal admission to the program has occurred.', 1, CAST(N'2023-08-11T12:25:42.590' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 5', N'D', N'Policies, procedures, and practices that affect the rights, responsibilities, safety, privacy, and dignity of program students are written and provided to students and applied consistently and equitably.', 1, CAST(N'2023-08-11T12:25:42.590' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 5', N'E', N'Policies, procedures, and practices related to student retention, student progression and dismissal through the program are based on appropriate and equitable criteria and applicable law, are written and provided to students, and are applied consistently and equitably.', 1, CAST(N'2023-08-11T12:25:42.593' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'A', N'The comprehensive curriculum plan is based on: (1) information about the contemporary practice of physical therapy; (2) standards of practice; and (3) current literature, documents, publications, and other resources related to the profession, to the delivery of health care services, to physical therapy education, and to educational theory.', 1, CAST(N'2023-08-11T12:25:42.593' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'B', N'The curriculum plan includes an expectation that students enter the professional program with a baccalaureate degree.', 1, CAST(N'2023-08-11T12:25:42.593' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'C', N'The specific prerequisite course work is determined by the program''s curriculum plan.', 1, CAST(N'2023-08-11T12:25:42.593' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'D', N'The curriculum plan includes a description of the curriculum model and the educational principles on which it is built.', 1, CAST(N'2023-08-11T12:25:42.597' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'E', N'The curriculum plan includes a series of organized, sequential and integrated courses designed to facilitate achievement of the expected student outcomes, including the expected student learning outcomes described in Standard 7.', 1, CAST(N'2023-08-11T12:25:42.597' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'F', N'The didactic and clinical curriculum includes interprofessional education; learning activities are directed toward the development of interprofessional competencies.', 1, CAST(N'2023-08-11T12:25:42.597' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'G', N'The curriculum plan includes course syllabi that are comprehensive and inclusive of all CAPTE expectations.', 1, CAST(N'2023-08-11T12:25:42.597' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'H', N'The curriculum plan includes learning objectives stated in behavioral terms that reflect the breadth and depth of the course content and describe the level of student performance expected.', 1, CAST(N'2023-08-11T12:25:42.600' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'I', N'The curriculum plan includes a variety of effective instructional methods selected to maximize learning.', 1, CAST(N'2023-08-11T12:25:42.600' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'J', N'The curriculum plan includes a variety of effective tests and measures and evaluation processes used by faculty to determine whether students have achieved the learning objectives.', 1, CAST(N'2023-08-11T12:25:42.600' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'If the curriculum plan includes courses offered by distance education methods, the program provides evidence.', 1, CAST(N'2023-08-11T12:25:42.600' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'L', N'The curriculum plan includes clinical education experiences for each student that encompass.', 1, CAST(N'2023-08-11T12:25:42.610' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'M', N'The series of courses included in the professional curriculum is comprised of at least semester credit hours (or the equivalent) and is completed (including clinical education) in no less than 6 semesters or the equivalent.
', 1, CAST(N'2023-08-11T12:25:42.613' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 6', N'N', N'The institution awards the Doctor of Physical Therapy (DPT) as the first professional degree for physical therapists at satisfactory completion of the program.', 1, CAST(N'2023-08-11T12:25:42.613' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 7', N'A', N'The physical therapist professional curriculum includes content and learning experiences in the biological, physical, behavioral and movement sciences necessary for entry level practice. Topics covered include anatomy, physiology, genetics, exercise science, biomechanics, kinesiology, neuroscience, pathology, pharmacology, diagnostic imaging, histology, nutrition, and psychosocial aspects of health and disability.', 1, CAST(N'2023-08-11T12:25:42.617' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 7', N'B', N'The physical therapist professional curriculum includes content and learning experiences in communication, ethics and values, management, finance, teaching and learning, law, clinical reasoning, evidenced-based practice and applied statistics.', 1, CAST(N'2023-08-11T12:25:42.617' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 7', N'C', N'The physical therapist professional curriculum includes content and learning experiences.', 1, CAST(N'2023-08-11T12:25:42.617' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'The physical therapist professional curriculum includes content and learning experiences designed to prepare students to achieve educational outcomes required for initial practice of physical therapy.', 1, CAST(N'2023-08-11T12:25:42.617' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'A', N'The collective core faculty is sufficient in number to allow each individual core faculty member to meet teaching, scholarship and service expectations and to achieve the expected program outcomes.', 1, CAST(N'2023-08-11T12:25:42.653' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'B', N'The program has, or has ensured access to, adequate secretarial/administrative and technical support services to meet expected program outcomes.', 1, CAST(N'2023-08-11T12:25:42.663' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'C', N'Financial resources are adequate to achieve the program''s stated mission, goals, and expected program outcomes and to support the academic integrity and continuing viability of the program.', 1, CAST(N'2023-08-11T12:25:42.663' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'D', N'The program has, or has ensured access to, space, equipment, technology and materials of sufficient quality and quantity to meet program goals related to teaching, scholarship and service.', 1, CAST(N'2023-08-11T12:25:42.667' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'E', N'The resources of the institutional library system and related learning resource centers are adequate to support the needs and meet the goals of the program, faculty and students.', 1, CAST(N'2023-08-11T12:25:42.670' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'F', N'The clinical sites available to the program are sufficient to provide the quality, quantity and variety of expected experiences to prepare students for their roles and responsibilities as physical therapists.', 1, CAST(N'2023-08-11T12:25:42.673' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'G', N'There are effective written agreements between the institution and the clinical education sites that are current and describe the rights and responsibilities of both parties.', 1, CAST(N'2023-08-11T12:25:42.673' AS DateTime))
GO
INSERT [competencies] ([domainID], [competencyID], [competencyName], [active], [createDate]) VALUES (N'Standard 8', N'H', N'Academic services, counseling services, health services, disability services, and financial aid services are available to program students.', 1, CAST(N'2023-08-11T12:25:42.673' AS DateTime))
GO

INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'11', NULL, N'Qualified Level II Fieldwork Supervisors', 1, CAST(N'2023-08-09T15:58:42.387' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'12', NULL, N'Evaluating the Effectiveness of Supervision', 1, CAST(N'2023-08-09T15:58:42.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'13', NULL, N'Level II Fieldwork Supervision', 1, CAST(N'2023-08-09T15:58:42.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'14', NULL, N'Fieldwork Supervision Where No OT Services Exist', 1, CAST(N'2023-08-09T15:58:42.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'15', NULL, N'Evaluation of Student Performance on Level II Fieldwork', 1, CAST(N'2023-08-09T15:58:42.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'16', NULL, N'Fieldwork Supervision Outside the U.S.', 1, CAST(N'2023-08-09T15:58:42.393' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'1', NULL, N'Baccalaureate Project/Doctoral Capstone Reflects Curriculum Design', 1, CAST(N'2023-08-09T15:58:42.393' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'2', NULL, N'Design of Baccalaureate Project/Doctoral Capstone', 1, CAST(N'2023-08-09T15:58:42.393' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'3', NULL, N'Preparation for Doctoral Capstone Project', 1, CAST(N'2023-08-09T15:58:42.393' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'4', NULL, N'MOUs for Doctoral Capstone Experience', 1, CAST(N'2023-08-09T15:58:42.397' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'5', NULL, N'Length of Doctoral Capstone Experience', 1, CAST(N'2023-08-09T15:58:42.397' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'6', NULL, N'Mentor for Doctoral Capstone', 1, CAST(N'2023-08-09T15:58:42.397' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'7', NULL, N'Evaluation of Baccalaureate Project/Doctoral Capstone Experiences', 1, CAST(N'2023-08-09T15:58:42.397' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'D', N'1', N'8', NULL, N'Baccalaureate/Doctoral Capstone Project', 1, CAST(N'2023-08-09T15:58:42.400' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'1', N'a', N'Entry', N'Identify concepts, derived from theories from nursing and other disciplines, which distinguish the practice of nursing.', 1, CAST(N'2023-07-18T18:30:46.283' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'1', N'b', N'Entry', N'Apply knowledge of nursing science that develops a foundation for nursing practice.', 1, CAST(N'2023-07-18T18:30:46.287' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'1', N'c', N'Entry', N'Understand the historical foundation of nursing as the relationship developed between the individual and nurse.', 1, CAST(N'2023-07-18T18:30:46.287' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'1', N'd', N'Entry', N'Articulate nursing''s distinct perspective to practice.', 1, CAST(N'2023-07-18T18:30:46.290' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'a', N'Entry', N'Apply or employ knowledge from nursing science as well as the natural, physical, and social sciences to build an understanding of the human experience and nursing practice', 1, CAST(N'2023-07-18T18:30:46.297' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'b', N'Entry', N'Demonstrate intellectual curiosity.', 1, CAST(N'2023-07-18T18:30:46.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'c', N'Entry', N'Demonstrate social responsibility as a global citizen who fosters the attainment of health equity for all.', 1, CAST(N'2023-07-18T18:30:46.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'd', N'Entry', N'Examine influence of personal values in decision making for nursing practice.', 1, CAST(N'2023-07-18T18:30:46.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'e', N'Entry', N'Demonstrate ethical decision making.', 1, CAST(N'2023-07-18T18:30:46.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'3', N'a', N'Entry', N'Demonstrate clinical reasoning.', 1, CAST(N'2023-07-18T18:30:46.303' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'3', N'b', N'Entry', N'Integrate nursing knowledge (theories, multiple ways of knowing, evidence) and knowledge from other disciplines and inquiry to inform clinical judgment.', 1, CAST(N'2023-07-18T18:30:46.303' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'3', N'c', N'Entry', N'Incorporate knowledge from nursing and other disciplines to support clinical judgment.', 1, CAST(N'2023-07-18T18:30:46.303' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'1', N'a', N'Entry', N'Demonstrate healthy, self-care behaviors that promote wellness and resiliency.', 1, CAST(N'2023-07-18T18:30:46.520' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'1', N'b', N'Entry', N'Manage conflict between personal and professional responsibilities', 1, CAST(N'2023-07-18T18:30:46.523' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'a', N'Entry', N'Engage in guided and spontaneous reflection of one''s practice.', 1, CAST(N'2023-07-18T18:30:46.523' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'b', N'Entry', N'Integrate comprehensive feedback to improve performance.', 1, CAST(N'2023-07-18T18:30:46.523' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'c', N'Entry', N'Commit to personal and professional development.', 1, CAST(N'2023-07-18T18:30:46.523' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'd', N'Entry', N'Expand personal knowledge to inform clinical judgment.', 1, CAST(N'2023-07-18T18:30:46.523' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'e', N'Entry', N'Identify role models and mentors to support professional growth.', 1, CAST(N'2023-07-18T18:30:46.527' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'f', N'Entry', N'Participate in ongoingactivities that embrace principles of diversity, equity, inclusion, and anti- discrimination.', 1, CAST(N'2023-07-18T18:30:46.527' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'a', N'Entry', N'Compare and contrast leadership principles andtheories.', 1, CAST(N'2023-07-18T18:30:46.533' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'b', N'Entry', N'Formulate a personal leadership style.', 1, CAST(N'2023-07-18T18:30:46.533' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'c', N'Entry', N'Demonstrate leadership behaviors in professional situations.', 1, CAST(N'2023-07-18T18:30:46.533' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'd', N'Entry', N'Demonstrate self-efficacy consistent with one''s professional development.', 1, CAST(N'2023-07-18T18:30:46.537' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'e', N'Entry', N' Use appropriate resources when dealing with ambiguity.', 1, CAST(N'2023-07-18T18:30:46.537' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'f', N'Entry', N'Modify one''s own leadership behaviors based on guided self-reflection.', 1, CAST(N'2023-07-18T18:30:46.537' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'g', N'Entry', N'Demonstrate self-awareness of one''s own implicit biasesand their relationship to one''s culture and environment.', 1, CAST(N'2023-07-18T18:30:46.537' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'h', N'Entry', N'Communicate a consistent image of the nurse as a leader', 1, CAST(N'2023-07-18T18:30:46.540' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'i', N'Entry', N'Recognize the importance of nursing''s contributions as leaders in practice and policy issues.', 1, CAST(N'2023-07-18T18:30:46.540' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'1', N'a', N'Entry', N'Demonstrate qualities of empathy.', 1, CAST(N'2023-07-18T18:30:46.307' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'1', N'b', N'Entry', N'Demonstrate compassionate care.', 1, CAST(N'2023-07-18T18:30:46.307' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'1', N'c', N'Entry', N'Establish mutual respect with the individual and family.', 1, CAST(N'2023-07-18T18:30:46.307' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'a', N'Entry', N'Demonstrate relationship-centered care.', 1, CAST(N'2023-07-18T18:30:46.310' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'b', N'Entry', N'Consider individual beliefs, values, and personalized information in communications.', 1, CAST(N'2023-07-18T18:30:46.310' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'c', N'Entry', N'Use a variety of communication modes appropriate for the context.', 1, CAST(N'2023-07-18T18:30:46.313' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'd', N'Entry', N'Demonstrate the ability to conduct sensitive or difficult conversations.', 1, CAST(N'2023-07-18T18:30:46.317' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'e', N'Entry', N'Use evidence-based patient teaching materials, considering health literacy, vision, hearing, and cultural sensitivity.', 1, CAST(N'2023-07-18T18:30:46.317' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'f', N'Entry', N'Demonstrate emotional intelligence in communications.', 1, CAST(N'2023-07-18T18:30:46.317' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'a', N'Entry', N'Create an environment during assessment that promotes a dynamic interactive experience.', 1, CAST(N'2023-07-18T18:30:46.323' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'b', N'Entry', N'Obtain a complete and accurate history in a systematic manner.', 1, CAST(N'2023-07-18T18:30:46.323' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'c', N'Entry', N'Perform a clinically relevant,holistic health assessment.', 1, CAST(N'2023-07-18T18:30:46.323' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'd', N'Entry', N'Perform point of care screening/diagnostic testing (e.g. blood glucose, PO2, EKG).', 1, CAST(N'2023-07-18T18:30:46.327' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'e', N'Entry', N'Distinguish between normal and abnormal health findings.', 1, CAST(N'2023-07-18T18:30:46.327' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'f', N'Entry', N'Apply nursing knowledge to gain a holistic perspective of the person, family, community, and population.', 1, CAST(N'2023-07-18T18:30:46.327' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'g', N'Entry', N'Communicate findings of a comprehensive assessment.', 1, CAST(N'2023-07-18T18:30:46.330' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'4', N'a', N'Entry', N'Synthesize assessment data in the context of the individual''s current preferences, situation, and experience.', 1, CAST(N'2023-07-18T18:30:46.330' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'4', N'b', N'Entry', N'Create a list of problems/health concerns.', 1, CAST(N'2023-07-18T18:30:46.337' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'4', N'c', N'Entry', N'Prioritize problems/health concerns.', 1, CAST(N'2023-07-18T18:30:46.343' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'4', N'd', N'Entry', N'Understand and apply the results of social screening, psychological testing, laboratory data, imaging studies, and other diagnostic tests in actions and plans of care.', 1, CAST(N'2023-07-18T18:30:46.343' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'4', N'e', N'Entry', N'Contribute as a team member to the formation and improvement of diagnoses.', 1, CAST(N'2023-07-18T18:30:46.347' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'a', N'Entry', N'Engage the individualand the team in plan development.', 1, CAST(N'2023-07-18T18:30:46.347' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'b', N'Entry', N'Organize care based on mutual health goals.', 1, CAST(N'2023-07-18T18:30:46.353' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'c', N'Entry', N'Prioritize care based on best evidence.', 1, CAST(N'2023-07-18T18:30:46.357' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'd', N'Entry', N'Incorporate evidence-based intervention to improve outcomes and safety.', 1, CAST(N'2023-07-18T18:30:46.357' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'e', N'Entry', N'Anticipate outcomes of care (expected, unexpected, and potentially adverse).', 1, CAST(N'2023-07-18T18:30:46.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'f', N'Entry', N'Demonstrate rationale for plan.', 1, CAST(N'2023-07-18T18:30:46.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'g', N'Entry', N'Address individuals''experiences and perspectives in designing plans of care.', 1, CAST(N'2023-07-18T18:30:46.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'a', N'Entry', N'Implement individualized plan of care using established protocols.', 1, CAST(N'2023-07-18T18:30:46.363' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'b', N'Entry', N'Communicate care delivery through multiple modalities.', 1, CAST(N'2023-07-18T18:30:46.367' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'c', N'Entry', N'Delegate appropriately to team members.', 1, CAST(N'2023-07-18T18:30:46.367' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'd', N'Entry', N'Monitor the implementation of the plan of care.', 1, CAST(N'2023-07-18T18:30:46.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'7', N'a', N'Entry', N'Reassess the individual to evaluate health outcomes/goals.', 1, CAST(N'2023-07-18T18:30:46.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'7', N'b', N'Entry', N'Modify plan of care as needed.', 1, CAST(N'2023-07-18T18:30:46.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'7', N'c', N'Entry', N'Recognize the need for modifications to standard practice.', 1, CAST(N'2023-07-18T18:30:46.387' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'a', N'Entry', N'Assist the individual to engage in self-care management.', 1, CAST(N'2023-07-18T18:30:46.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'b', N'Entry', N'Employ individualized educational strategies based on learning theories, methodologies, and health literacy.', 1, CAST(N'2023-07-18T18:30:46.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'c', N'Entry', N'Educate individuals and families regarding self-care for health promotion, illness prevention, and illness management.', 1, CAST(N'2023-07-18T18:30:46.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'd', N'Entry', N'Respect individuals and families''self-determination in their healthcare decisions.', 1, CAST(N'2023-07-18T18:30:46.390' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'e', N'Entry', N'Identify personal, system,and community resources available to support self-care management.', 1, CAST(N'2023-07-18T18:30:46.393' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'a', N'Entry', N'Facilitate continuity of care based on assessment of assets and needs.', 1, CAST(N'2023-07-18T18:30:46.393' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'b', N'Entry', N'Communicate with relevant stakeholders across health systems.', 1, CAST(N'2023-07-18T18:30:46.393' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'c', N'Entry', N'Promote collaboration by clarifying responsibilities among individual, family, and team members.', 1, CAST(N'2023-07-18T18:30:46.397' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'd', N'Entry', N'Recognize when additional expertise and knowledge is needed to manage the patient.', 1, CAST(N'2023-07-18T18:30:46.403' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'e', N'Entry', N'Provide coordination of care of individuals and families in collaboration with care team.', 1, CAST(N'2023-07-18T18:30:46.403' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'a', N'Entry', N'Define a target population including its functional and problem-solving capabilities (anywhere in the continuum of care).', 1, CAST(N'2023-07-18T18:30:46.407' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'b', N'Entry', N'Assess population health data.', 1, CAST(N'2023-07-18T18:30:46.407' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'c', N'Entry', N'Assess the priorities of the community and/or the affected clinical population.', 1, CAST(N'2023-07-18T18:30:46.407' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'd', N'Entry', N'Compare and contrast local, regional, national, and global benchmarks to identify health patterns across populations.', 1, CAST(N'2023-07-18T18:30:46.407' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'e', N'Entry', N'Apply an understanding of the public health system and its interfaces with clinical health care in addressing population health needs.', 1, CAST(N'2023-07-18T18:30:46.410' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'f', N'Entry', N'Develop an action plan to meet an identified need(s), including evaluation methods.', 1, CAST(N'2023-07-18T18:30:46.410' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'h', N'Entry', N'Describe general principles and practices for the clinical management of populations across the age continuum.', 1, CAST(N'2023-07-18T18:30:46.410' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'i', N'Entry', N'Identify ethical principles to protect the healthand safety of diverse populations.', 1, CAST(N'2023-07-18T18:30:46.410' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'a', N'Entry', N'Engage with other health professionals to address population health issues.', 1, CAST(N'2023-07-18T18:30:46.413' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'b', N'Entry', N'Demonstrate effective collaboration and mutual accountability with relevant stakeholders.', 1, CAST(N'2023-07-18T18:30:46.413' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'c', N'Entry', N'Use culturally and linguistically responsive communication strategies.', 1, CAST(N'2023-07-18T18:30:46.413' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'3', N'a', N'Entry', N'Describe access and equity implications of proposed intervention(s).', 1, CAST(N'2023-07-18T18:30:46.413' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'3', N'b', N'Entry', N'Prioritize patient-focused and/or community action plans that are safe, effective, and efficient in the context of available resources.', 1, CAST(N'2023-07-18T18:30:46.417' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'a', N'Entry', N'Describe policy development processes', 1, CAST(N'2023-07-18T18:30:46.417' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'b', N'Entry', N'Describe the impact of policies on population outcomes, including social justice and health equity.', 1, CAST(N'2023-07-18T18:30:46.417' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'c', N'Entry', N'Identify best evidence to support policy development.', 1, CAST(N'2023-07-18T18:30:46.417' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'd', N'Entry', N'Propose modifications to or development of policy based on population findings.', 1, CAST(N'2023-07-18T18:30:46.420' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'e', N'Entry', N'Develop an awareness of the interconnectedness of population health across borders.', 1, CAST(N'2023-07-18T18:30:46.420' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'a', N'Entry', N'Articulate a need for change.', 1, CAST(N'2023-07-18T18:30:46.420' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'b', N'Entry', N'Describe the intent of the proposed change.', 1, CAST(N'2023-07-18T18:30:46.420' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'c', N'Entry', N'Define stakeholders, including members of the community and/or clinical populations, and their level of influence.', 1, CAST(N'2023-07-18T18:30:46.420' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'd', N'Entry', N'Implement messaging strategies appropriate to audience and stakeholders.', 1, CAST(N'2023-07-18T18:30:46.423' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'e', N'Entry', N'Evaluate the effectiveness of advocacy actions.', 1, CAST(N'2023-07-18T18:30:46.423' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'a', N'Entry', N'Identify changes in conditions that might indicate a disaster or public health emergency.', 1, CAST(N'2023-07-18T18:30:46.423' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'b', N'Entry', N'Understand the impact of climate change on environmental and population health.', 1, CAST(N'2023-07-18T18:30:46.427' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'c', N'Entry', N'Describe the health and safety hazards of disasters and public health emergencies.', 1, CAST(N'2023-07-18T18:30:46.427' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'd', N'Entry', N'Describe the overarching principles and methods regarding personal safety measures, including personal protective equipment (PPE).', 1, CAST(N'2023-07-18T18:30:46.427' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'e', N'Entry', N'Implement infection control measures and proper use of personal protective equipment.', 1, CAST(N'2023-07-18T18:30:46.427' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'g', N'Entry', N'Participate in the implementation of sociocultural and linguistically responsive interventions.', 1, CAST(N'2023-07-18T18:30:46.430' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'a', N'Entry', N'Demonstrate an understanding of different approaches to scholarly practice.', 1, CAST(N'2023-07-18T18:30:46.430' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'b', N'Entry', N'Demonstrate application of different levels of evidence.', 1, CAST(N'2023-07-18T18:30:46.430' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'c', N'Entry', N'Apply theoretical framework(s)/models in practice.', 1, CAST(N'2023-07-18T18:30:46.430' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'd', N'Entry', N'Demonstrate an understanding of basic elements of the research process.', 1, CAST(N'2023-07-18T18:30:46.430' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'e', N'Entry', N'Participate in scholarly inquiry as a team member.', 1, CAST(N'2023-07-18T18:30:46.430' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'f', N'Entry', N'Evaluate research.', 1, CAST(N'2023-07-18T18:30:46.433' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'g', N'Entry', N'Communicate scholarly findings.', 1, CAST(N'2023-07-18T18:30:46.433' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'a', N'Entry', N'Evaluate clinical practice to generate questions to improve nursing care.', 1, CAST(N'2023-07-18T18:30:46.433' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'b', N'Entry', N'Evaluate appropriateness and strength of the evidence.', 1, CAST(N'2023-07-18T18:30:46.433' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'c', N'Entry', N'Usebest evidence in practice.', 1, CAST(N'2023-07-18T18:30:46.437' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'd', N'Entry', N'Participate in the implementation of a practice change to improve nursing care.', 1, CAST(N'2023-07-18T18:30:46.437' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'e', N'Entry', N'Participate in the evaluation of outcomes and their implications for practice.', 1, CAST(N'2023-07-18T18:30:46.437' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'a', N'Entry', N'Explain the rationale for ethical research guidelines, including Institutional Review Board (IRB) guidelines.', 1, CAST(N'2023-07-18T18:30:46.437' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'b', N'Entry', N'Demonstrate ethical behaviors in scholarly projects including quality improvement and EBP initiatives.', 1, CAST(N'2023-07-18T18:30:46.440' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'd', N'Entry', N'Advocate for the protection of participants in the conduct of scholarly initiatives.', 1, CAST(N'2023-07-18T18:30:46.440' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'e', N'Entry', N'Recognize the impact of equity issues in research.', 1, CAST(N'2023-07-18T18:30:46.440' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'a', N'Entry', N'Recognize nursing''s essential role in improving healthcare quality and safety.', 1, CAST(N'2023-07-18T18:30:46.440' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'b', N'Entry', N'Identify sources and applications of national safety and quality standards to guide nursing practice.', 1, CAST(N'2023-07-18T18:30:46.440' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'c', N'Entry', N'Implement standardized, evidence-basedprocesses for care delivery.', 1, CAST(N'2023-07-18T18:30:46.443' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'd', N'Entry', N'Interpret benchmark and unit outcome data to inform individual and microsystem practice.', 1, CAST(N'2023-07-18T18:30:46.443' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'e', N'Entry', N'Compare quality improvement methods in the delivery of patient care.', 1, CAST(N'2023-07-18T18:30:46.443' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'f', N'Entry', N'Identify strategies to improve outcomes of patient care in practice.', 1, CAST(N'2023-07-18T18:30:46.443' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'g', N'Entry', N'Participate in the implementation of a practice change.', 1, CAST(N'2023-07-18T18:30:46.447' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'h', N'Entry', N'Develop a plan for monitoring quality improvement change.', 1, CAST(N'2023-07-18T18:30:46.447' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'a', N'Entry', N'Describe the factors that create a culture of safety.', 1, CAST(N'2023-07-18T18:30:46.447' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'b', N'Entry', N'Articulate the nurse''s role within an interprofessional team in promoting safety and preventing errors and near misses.', 1, CAST(N'2023-07-18T18:30:46.447' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'c', N'Entry', N'Examine basic safety design principles to reduce risk of harm.', 1, CAST(N'2023-07-18T18:30:46.450' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'd', N'Entry', N'Assume accountability for reporting unsafe conditions, near misses, and errors to reduce harm.', 1, CAST(N'2023-07-18T18:30:46.450' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'e', N'Entry', N'Describe processes used in understanding causes of error.', 1, CAST(N'2023-07-18T18:30:46.450' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'f', N'Entry', N'Use national patient safety resources, initiatives, and regulations at the point of care.', 1, CAST(N'2023-07-18T18:30:46.450' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'a', N'Entry', N'Identify actual and potential level of risks to providers within the workplace.', 1, CAST(N'2023-07-18T18:30:46.450' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'b', N'Entry', N'Recognize how to prevent workplace violence and injury.', 1, CAST(N'2023-07-18T18:30:46.450' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'c', N'Entry', N'Promote policies for prevention of violence and risk mitigation.', 1, CAST(N'2023-07-18T18:30:46.453' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'd', N'Entry', N'Recognize one''s role in sustaining a just culture reflecting civility and respect.', 1, CAST(N'2023-07-18T18:30:46.453' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'a', N'Entry', N'Communicate the nurse''s roles and responsibilitiesclearly.', 1, CAST(N'2023-07-18T18:30:46.453' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'b', N'Entry', N'Use various communication tools and techniques effectively.', 1, CAST(N'2023-07-18T18:30:46.453' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'c', N'Entry', N'Elicit the perspectives of team members to inform person-centered care decision making.', 1, CAST(N'2023-07-18T18:30:46.457' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'd', N'Entry', N'Articulate impact of diversity, equity, and inclusion on team-based communications.', 1, CAST(N'2023-07-18T18:30:46.457' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'e', N'Entry', N'Communicate individual information in a professional,accurate, and timely manner.', 1, CAST(N'2023-07-18T18:30:46.457' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'f', N'Entry', N'Communicate as informed by legal, regulatory, and policy guidelines.', 1, CAST(N'2023-07-18T18:30:46.457' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'a', N'Entry', N'Apply principles of team dynamics, including team roles, to facilitate effective team functioning.', 1, CAST(N'2023-07-18T18:30:46.460' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'b', N'Entry', N'Delegate work to team members based on their roles and competency.', 1, CAST(N'2023-07-18T18:30:46.460' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'c', N'Entry', N'Engage in the work of the team as appropriate to one''s scope of practice and competency.', 1, CAST(N'2023-07-18T18:30:46.460' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'd', N'Entry', N'Recognize how one''s uniqueness (as a person and a nurse) contributes to effective interprofessional working relationships.', 1, CAST(N'2023-07-18T18:30:46.460' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'e', N'Entry', N'Apply principles of team leadership and management. performance to improve quality and assure safety.', 1, CAST(N'2023-07-18T18:30:46.460' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'f', N'Entry', N'Evaluate performance of individual and team to improve quality and promote safety.', 1, CAST(N'2023-07-18T18:30:46.460' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'3', N'a', N'Entry', N'Integrate the roles and responsibilities of healthcare professionals through interprofessional collaborative practice.', 1, CAST(N'2023-07-18T18:30:46.463' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'3', N'b', N'Entry', N'Leverage roles and abilities of team members to optimize care.', 1, CAST(N'2023-07-18T18:30:46.463' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'3', N'c', N'Entry', N'Communicate with team members to clarify responsibilities in executing plan of care.', 1, CAST(N'2023-07-18T18:30:46.463' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'a', N'Entry', N'Demonstrate an awareness of one''s biases and how they may affect mutual respect and communication with team members.', 1, CAST(N'2023-07-18T18:30:46.463' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'b', N'Entry', N'Demonstrate respect for the perspectives and experiences of other professions.', 1, CAST(N'2023-07-18T18:30:46.467' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'c', N'Entry', N'Engage in constructive communication to facilitate conflict management.', 1, CAST(N'2023-07-18T18:30:46.467' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'd', N'Entry', N'Collaborate with interprofessional team members to establish mutual healthcare goals for individuals, communities, or populations.', 1, CAST(N'2023-07-18T18:30:46.467' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'a', N'Entry', N'Describe organizational structure, mission, vision, philosophy, and values.', 1, CAST(N'2023-07-18T18:30:46.467' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'b', N'Entry', N'Explain the relationships of macrosystems, mesosystems, and microsystems.', 1, CAST(N'2023-07-18T18:30:46.470' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'c', N'Entry', N'Differentiate between various healthcare delivery environments across the continuum of care.', 1, CAST(N'2023-07-18T18:30:46.470' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'd', N'Entry', N'Recognize internal and external systemprocesses that impact care coordination and transition of care.', 1, CAST(N'2023-07-18T18:30:46.470' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'a', N'Entry', N'Describe the financial and payment models of health care.', 1, CAST(N'2023-07-18T18:30:46.470' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'b', N'Entry', N'Recognize the impact of health disparities and social determinants of health on care outcomes.', 1, CAST(N'2023-07-18T18:30:46.470' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'c', N'Entry', N'Describe the impact of healthcare cost and payment models on the delivery, access, and quality of care.', 1, CAST(N'2023-07-18T18:30:46.473' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'd', N'Entry', N'Explain the relationship of policy, regulatory requirements, and economics on care outcomes.', 1, CAST(N'2023-07-18T18:30:46.473' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'e', N'Entry', N'Incorporate considerations of efficiency, value, and cost in providing care.', 1, CAST(N'2023-07-18T18:30:46.473' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'f', N'Entry', N'Identify the impact of differing system structures, leadership, and workforce needs on care outcomes.', 1, CAST(N'2023-07-18T18:30:46.473' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'a', N'Entry', N'Demonstrate a systematic approach for decision-making.', 1, CAST(N'2023-07-18T18:30:46.473' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'b', N'Entry', N'Use reported performance metrics to compare/monitor outcomes.', 1, CAST(N'2023-07-18T18:30:46.477' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'c', N'Entry', N'Participate in evaluating system effectiveness.', 1, CAST(N'2023-07-18T18:30:46.477' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'd', N'Entry', N'Recognize internal and external system processes and structures that perpetuate racism and other forms of discrimination within health care.', 1, CAST(N'2023-07-18T18:30:46.477' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'a', N'Entry', N'Identify the variety of information and communication technologies used in care settings.', 1, CAST(N'2023-07-18T18:30:46.477' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'b', N'Entry', N'Identify the basic concepts of electronic health, mobile health, and telehealth systems for enabling patient care.', 1, CAST(N'2023-07-18T18:30:46.480' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'c', N'Entry', N'Effectively use electronic communication tools.', 1, CAST(N'2023-07-18T18:30:46.480' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'd', N'Entry', N'Describe the appropriate use of multimedia applications in health care.', 1, CAST(N'2023-07-18T18:30:46.480' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'e', N'Entry', N'Demonstrate best practice use of social networking applications.', 1, CAST(N'2023-07-18T18:30:46.480' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'f', N'Entry', N'Explain the importance of nursing engagement in the planning and selection of healthcare technologies.', 1, CAST(N'2023-07-18T18:30:46.480' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'a', N'Entry', N'Enter accurate data when chronicling care.', 1, CAST(N'2023-07-18T18:30:46.483' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'b', N'Entry', N'Explain how data entered on one patient impacts public and population health data.', 1, CAST(N'2023-07-18T18:30:46.483' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'c', N'Entry', N'Use appropriate data when planning care.', 1, CAST(N'2023-07-18T18:30:46.483' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'd', N'Entry', N'Demonstrate the appropriate use of health information literacy assessments and improvement strategies.', 1, CAST(N'2023-07-18T18:30:46.483' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'e', N'Entry', N'Describe the importance of standardized nursing data to reflect the unique contribution of nursing practice.', 1, CAST(N'2023-07-18T18:30:46.487' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'a', N'Entry', N'Demonstrate appropriate use of information and communication technologies.', 1, CAST(N'2023-07-18T18:30:46.487' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'b', N'Entry', N'Evaluate how decision support tools impact clinical judgment and safe patient care.', 1, CAST(N'2023-07-18T18:30:46.487' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'c', N'Entry', N'Use information and communication technology in a manner that supports the nurse-patient relationship.', 1, CAST(N'2023-07-18T18:30:46.487' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'd', N'Entry', N'Examine how emerging technologies influence healthcare delivery and clinical decision making.', 1, CAST(N'2023-07-18T18:30:46.490' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'e', N'Entry', N'Identify impact of information and communication technology on quality and safety of care.', 1, CAST(N'2023-07-18T18:30:46.490' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'f', N'Entry', N'Identify the importance of reporting system processes and functional issues (error messages, mis-directions, device malfunctions, etc.) according to organizational policies and procedures.', 1, CAST(N'2023-07-18T18:30:46.490' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'4', N'a', N'Entry', N'Explain the role of communication technology in enhancing clinical information flows.', 1, CAST(N'2023-07-18T18:30:46.490' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'4', N'b', N'Entry', N'Describe how information and communication technology tools support patient and team communications.', 1, CAST(N'2023-07-18T18:30:46.490' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'4', N'c', N'Entry', N'Identify the basic concepts of electronic health, mobile health, and telehealth systems in enabling patient care.', 1, CAST(N'2023-07-18T18:30:46.490' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'4', N'd', N'Entry', N'Explain the impact of health information exchange, interoperability, and integration on health care.', 1, CAST(N'2023-07-18T18:30:46.493' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'a', N'Entry', N'Identify common risks associated with using information and communication technology.', 1, CAST(N'2023-07-18T18:30:46.493' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'b', N'Entry', N'Demonstrate ethical use of social networking applications.', 1, CAST(N'2023-07-18T18:30:46.493' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'c', N'Entry', N'Comply with legal and regulatory requirements while using communication and information technologies.', 1, CAST(N'2023-07-18T18:30:46.493' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'd', N'Entry', N'Educate patients on their rights to access, review, and correct personal data and medical records.', 1, CAST(N'2023-07-18T18:30:46.497' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'e', N'Entry', N'Discuss how clinical judgmentand critical thinking must prevail in the presence of information and communication technologies.', 1, CAST(N'2023-07-18T18:30:46.497' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'f', N'Entry', N'Deliver care using remote technology.', 1, CAST(N'2023-07-18T18:30:46.497' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'a', N'Entry', N'Apply principles of professional nursing ethics and human rights in patient care and professional situations.', 1, CAST(N'2023-07-18T18:30:46.497' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'b', N'Entry', N'Reflect on one''s actions and their consequences.', 1, CAST(N'2023-07-18T18:30:46.497' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'c', N'Entry', N'Demonstrate ethical behaviors in practice.', 1, CAST(N'2023-07-18T18:30:46.500' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'd', N'Entry', N'Change behavior based on self and situational awareness.', 1, CAST(N'2023-07-18T18:30:46.500' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'e', N'Entry', N'Report unethical behaviors when observed.', 1, CAST(N'2023-07-18T18:30:46.500' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'f', N'Entry', N'Safeguard privacy,confidentiality, and autonomy in all interactions.', 1, CAST(N'2023-07-18T18:30:46.500' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'g', N'Entry', N'Advocate for the individual''s right to self-determination.', 1, CAST(N'2023-07-18T18:30:46.500' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'a', N'Entry', N'Employ the use of intentional presence to facilitate shared meaning of the experience between nurse and recipient of care.', 1, CAST(N'2023-07-18T18:30:46.503' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'b', N'Entry', N'Facilitate health and healing through compassionate caring.', 1, CAST(N'2023-07-18T18:30:46.503' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'c', N'Entry', N'Demonstrate empathy to the individual''s life experience.', 1, CAST(N'2023-07-18T18:30:46.503' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'd', N'Entry', N'Advocate for practices that advance diversity, equity,and inclusion.', 1, CAST(N'2023-07-18T18:30:46.503' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'e', N'Entry', N'Demonstrate cultural sensitivity and humility in practice.', 1, CAST(N'2023-07-18T18:30:46.507' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'f', N'Entry', N'Apply principles of therapeutic relationships and professional boundaries.', 1, CAST(N'2023-07-18T18:30:46.507' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'g', N'Entry', N'Communicate in a professional manner.', 1, CAST(N'2023-07-18T18:30:46.507' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'a', N'Entry', N'Engage in advocacy that promotes the best interest of the individual, community, and profession.', 1, CAST(N'2023-07-18T18:30:46.507' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'b', N'Entry', N'Demonstrate the moral courage to report concerns related to actual or potential hazards and/or errors.', 1, CAST(N'2023-07-18T18:30:46.510' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'c', N'Entry', N'Demonstrate professional and personal honesty and integrity.', 1, CAST(N'2023-07-18T18:30:46.510' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'd', N'Entry', N'Take responsibility for one''s roles, decisions, obligations,Actions, and care outcomes.', 1, CAST(N'2023-07-18T18:30:46.510' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'e', N'Entry', N'Engage in professional activities and/or organizations.', 1, CAST(N'2023-07-18T18:30:46.510' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'f', N'Entry', N'Demonstrate adherence to a culture of civility.', 1, CAST(N'2023-07-18T18:30:46.510' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'g', N'Entry', N'Advocate for social justice and health equity, including addressing the health of vulnerable populations.', 1, CAST(N'2023-07-18T18:30:46.510' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'h', N'Entry', N'Engage in peer evaluation.', 1, CAST(N'2023-07-18T18:30:46.513' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'a', N'Entry', N'Advocate for policies that promote health and prevent harm.', 1, CAST(N'2023-07-18T18:30:46.513' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'b', N'Entry', N'Adhere to the registered nurse scope and standards of practice.', 1, CAST(N'2023-07-18T18:30:46.513' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'c', N'Entry', N'Adhere to regulatory requirements and workplace policiesconsistent with one''s educational preparation.', 1, CAST(N'2023-07-18T18:30:46.513' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'a', N'Entry', N'Describe nursing''s professional identity and contributions to the healthcare team.', 1, CAST(N'2023-07-18T18:30:46.517' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'b', N'Entry', N'Demonstrate the core values of professional nursing identity.', 1, CAST(N'2023-07-18T18:30:46.517' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'c', N'Entry', N'Demonstrate sensitivity to the values of others.', 1, CAST(N'2023-07-18T18:30:46.517' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'd', N'Entry', N'Demonstrate ethical comportment and moral courage in decision making and actions.', 1, CAST(N'2023-07-18T18:30:46.517' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'e', N'Entry', N'Demonstrate emotional intelligence.', 1, CAST(N'2023-07-18T18:30:46.520' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'a', N'Entry', N'Demonstrate respect for diverse individual differences and diverse communities and populations', 1, CAST(N'2023-07-18T18:30:46.520' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'c', N'Entry', N'Integrate coreprinciples of social justiceand human rightsinto practice.', 1, CAST(N'2023-07-18T18:30:46.520' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'b', N'Entry', N'Demonstrate awareness of personal and professional values and conscious and unconscious biases.', 1, CAST(N'2023-07-18T18:30:46.520' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'1', N'e', N'Advanced', N'Translate evidence from nursing science as well as other sciences into practice.', 1, CAST(N'2023-08-08T17:02:02.683' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'1', N'f', N'Advanced', N'Demonstrate the application of nursing science to practice.', 1, CAST(N'2023-08-08T17:02:02.707' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'1', N'g', N'Advanced', N'Integrate an understanding of nursing history in advancing nursing''s influence in health care.', 1, CAST(N'2023-08-08T17:02:02.707' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'f', N'Advanced', N'Synthesize knowledge from nursing and other disciplines to inform education, practice, and research.', 1, CAST(N'2023-08-08T17:02:02.710' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'g', N'Advanced', N'Apply a systematic and defendable approach to nursing practice decisions.', 1, CAST(N'2023-08-08T17:02:02.717' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'h', N'Advanced', N'Employ ethical decision making to assess, intervene, and evaluate nursing care.', 1, CAST(N'2023-08-08T17:02:02.720' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'i', N'Advanced', N'Demonstrate socially responsible leadership.', 1, CAST(N'2023-08-08T17:02:02.720' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'2', N'j', N'Advanced', N'Translate theories from nursing and other disciplines to practice.', 1, CAST(N'2023-08-08T17:02:02.723' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'3', N'd', N'Advanced', N'Integrate foundational and advanced specialty knowledge into clinical reasoning.', 1, CAST(N'2023-08-08T17:02:02.723' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'3', N'e', N'Advanced', N'Synthesize current and emerging evidence to Influence practice.', 1, CAST(N'2023-08-08T17:02:02.723' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'1', N'3', N'f', N'Advanced', N'Analyze decision models from nursing and other knowledge domains to improve clinical judgment.', 1, CAST(N'2023-08-08T17:02:02.727' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'1', N'd', N'Advanced', N'Promote caring relationships to effect positive outcomes.', 1, CAST(N'2023-08-08T17:02:02.727' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'1', N'e', N'Advanced', N'Foster caring relationships.', 1, CAST(N'2023-08-08T17:02:02.730' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'g', N'Advanced', N'Demonstrate advanced communication skills and techniques using a variety of modalities with diverse audiences.', 1, CAST(N'2023-08-08T17:02:02.730' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'h', N'Advanced', N'Design evidence-based, person-centered engagement materials.', 1, CAST(N'2023-08-08T17:02:02.730' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'i', N'Advanced', N'Apply individualized information, such as genetic/genomic, pharmacogenetic, and environmental exposure information in the delivery of personalized health care.', 1, CAST(N'2023-08-08T17:02:02.730' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'2', N'j', N'Advanced', N'Facilitate difficult conversations and disclosure of sensitive information.', 1, CAST(N'2023-08-08T17:02:02.730' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'3', N'h', N'Advanced', N'Demonstrate that one''s practice is informed by a comprehensive assessment appropriate to the functional area of advanced nursing practice.', 1, CAST(N'2023-08-08T17:02:02.733' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'4', N'f', N'Advanced', N'Employ context driven, advanced reasoning to the diagnostic and decision-making process.', 1, CAST(N'2023-08-08T17:02:02.733' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'4', N'g', N'Advanced', N'Integrate advanced scientific knowledge to guide decision making.', 1, CAST(N'2023-08-08T17:02:02.733' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'h', N'Advanced', N'Lead and collaborate with an interprofessional team to develop a comprehensive plan of care.', 1, CAST(N'2023-08-08T17:02:02.737' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'i', N'Advanced', N'Prioritize risk mitigation strategies to prevent or reduce adverse outcomes.', 1, CAST(N'2023-08-08T17:02:02.740' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'j', N'Advanced', N'Develop evidence-based interventions to improve outcomes and safety.', 1, CAST(N'2023-08-08T17:02:02.740' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'5', N'k', N'Advanced', N'Incorporate innovations into practice when evidence is not available.', 1, CAST(N'2023-08-08T17:02:02.743' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'e', N'Advanced', N'Model best care practices to the team.', 1, CAST(N'2023-08-08T17:02:02.743' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'f', N'Advanced', N'Monitor aggregate metrics to assure accountability for care outcomes.', 1, CAST(N'2023-08-08T17:02:02.743' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'g', N'Advanced', N'Promote delivery of care that supports practice at the full scope of education.', 1, CAST(N'2023-08-08T17:02:02.743' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'h', N'Advanced', N'Contribute to the development of policies and processes that promote transparency and accountability.', 1, CAST(N'2023-08-08T17:02:02.747' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'i', N'Advanced', N'Apply current and emerging evidence to the development of care guidelines/tools.', 1, CAST(N'2023-08-08T17:02:02.747' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'6', N'j', N'Advanced', N'Ensure accountability throughout transitions of care across the health continuum.', 1, CAST(N'2023-08-08T17:02:02.747' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'7', N'd', N'Advanced', N'Analyze data to identify gaps and inequities in care and monitor trends in outcomes.', 1, CAST(N'2023-08-08T17:02:02.750' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'7', N'e', N'Advanced', N'Monitor epidemiological and system-level aggregate data to determine healthcare outcomes and trends.', 1, CAST(N'2023-08-08T17:02:02.750' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'7', N'f', N'Advanced', N'Synthesize outcome data to inform evidence-based practice, guidelines, and policies.', 1, CAST(N'2023-08-08T17:02:02.750' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'f', N'Advanced', N'Develop strategies that promote self-care management.', 1, CAST(N'2023-08-08T17:02:02.750' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'g', N'Advanced', N'Incorporate the use of current and emerging technologies to support self-care management.', 1, CAST(N'2023-08-08T17:02:02.760' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'h', N'Advanced', N'Employ counseling techniques, including motivational interviewing, to advance wellness and self-care management.', 1, CAST(N'2023-08-08T17:02:02.760' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'i', N'Advanced', N'Evaluate adequacy of resources available to support self-care management.', 1, CAST(N'2023-08-08T17:02:02.760' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'8', N'j', N'Advanced', N'Foster partnerships with community organizations to support self-care management.', 1, CAST(N'2023-08-08T17:02:02.760' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'f', N'Advanced', N'Evaluate communication pathways among providers and others across settings, systems, and communities.', 1, CAST(N'2023-08-08T17:02:02.760' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'g', N'Advanced', N'Develop strategies to optimize care coordination and transitions of care.', 1, CAST(N'2023-08-08T17:02:02.763' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'h', N'Advanced', N'Guide the coordination of care across health systems.', 1, CAST(N'2023-08-08T17:02:02.763' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'i', N'Advanced', N'Analyze system-level and public policy influence on care coordination.', 1, CAST(N'2023-08-08T17:02:02.763' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'2', N'9', N'j', N'Advanced', N'Participate in system-level change to improve care coordination across settings.', 1, CAST(N'2023-08-08T17:02:02.767' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'e', N'Advanced', N'Apply an understanding of the public health system and its interfaces with clinical health care in addressing population health needs.', 1, CAST(N'2023-08-08T17:02:02.767' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'j', N'Advanced', N'Assess the efficacy of a system''s capability to serve a target sub-population''s healthcare needs.', 1, CAST(N'2023-08-08T17:02:02.767' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'k', N'Advanced', N'Analyze primary and secondary population health data for multiple populations against relevant benchmarks.', 1, CAST(N'2023-08-08T17:02:02.770' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'l', N'Advanced', N'Use established or evolving methods to determine population-focused priorities for care.', 1, CAST(N'2023-08-08T17:02:02.770' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'm', N'Advanced', N'Develop a collaborative approach with relevant stakeholders to address population healthcare needs, including evaluation methods.', 1, CAST(N'2023-08-08T17:02:02.770' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'1', N'n', N'Advanced', N'Collaborate with appropriate stakeholders to implement a sociocultural and linguistically responsive intervention plan.', 1, CAST(N'2023-08-08T17:02:02.773' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'd', N'Advanced', N'Ascertain collaborative opportunities for individuals and organizations to improve population health.', 1, CAST(N'2023-08-08T17:02:02.773' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'e', N'Advanced', N'Challenge biases and barriers that impact population health outcomes.', 1, CAST(N'2023-08-08T17:02:02.773' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'f', N'Advanced', N'Evaluate the effectiveness of partnerships for achieving health equity.', 1, CAST(N'2023-08-08T17:02:02.777' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'g', N'Advanced', N'Lead partnerships to improve population health outcomes.', 1, CAST(N'2023-08-08T17:02:02.780' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'2', N'h', N'Advanced', N'Assess preparation and readiness of partners to organize during natural and manmade disasters.', 1, CAST(N'2023-08-08T17:02:02.783' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'3', N'c', N'Advanced', N'Analyze cost-benefits of selected population-based interventions.', 1, CAST(N'2023-08-08T17:02:02.783' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'3', N'd', N'Advanced', N'Collaborate with partners to secure and leverage resources necessary for effective, sustainable interventions.', 1, CAST(N'2023-08-08T17:02:02.783' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'3', N'e', N'Advanced', N'Advocate for interventions that maximize cost-effective, accessible, and equitable resources for populations.', 1, CAST(N'2023-08-08T17:02:02.787' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'3', N'f', N'Advanced', N'Incorporate ethical principles in resource allocation in achieving equitable health.', 1, CAST(N'2023-08-08T17:02:02.787' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'f', N'Advanced', N'Identify opportunities to influence the policy process.', 1, CAST(N'2023-08-08T17:02:02.787' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'g', N'Advanced', N'Design comprehensive advocacy strategies to support the policy process.', 1, CAST(N'2023-08-08T17:02:02.787' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'h', N'Advanced', N'Engage in strategies to influence policy change.', 1, CAST(N'2023-08-08T17:02:02.790' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'i', N'Advanced', N'Contribute to policy development at the system, local, regional, or national levels.', 1, CAST(N'2023-08-08T17:02:02.790' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'j', N'Advanced', N'Assess the impact of policy changes.', 1, CAST(N'2023-08-08T17:02:02.790' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'k', N'Advanced', N'Evaluate the ability of policy to address disparities and inequities within segments of the population.', 1, CAST(N'2023-08-08T17:02:02.790' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'4', N'l', N'Advanced', N'Evaluate the risks to population health associated with globalization.', 1, CAST(N'2023-08-08T17:02:02.793' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'f', N'Advanced', N'Appraise advocacy priorities for a population.', 1, CAST(N'2023-08-08T17:02:02.793' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'g', N'Advanced', N'Strategize with an interdisciplinary group and others to develop effective advocacy approaches.', 1, CAST(N'2023-08-08T17:02:02.793' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'h', N'Advanced', N'Engage in relationship-building activities with stakeholders at any level of influence, including system, local, state, national, and/or global.', 1, CAST(N'2023-08-08T17:02:02.793' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'5', N'i', N'Advanced', N'Demonstrate leadership skills to promote advocacy efforts that include principles of social justice, diversity, equity, and inclusion.', 1, CAST(N'2023-08-08T17:02:02.797' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'f', N'Advanced', N'Collaboratively initiate rapid response activities to protect population health.', 1, CAST(N'2023-08-08T17:02:02.797' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'g', N'Advanced', N'Participate in ethical decision making that includes diversity, equity, and inclusion in advanced preparedness to protect populations.', 1, CAST(N'2023-08-08T17:02:02.797' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'h', N'Advanced', N'Collaborate with interdisciplinary teams to lead preparedness and mitigation efforts to protect population health with attention to the most vulnerable populations.', 1, CAST(N'2023-08-08T17:02:02.797' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'i', N'Advanced', N'Coordinate the implementation of evidence-based infection control measures and proper use of personal protective equipment.', 1, CAST(N'2023-08-08T17:02:02.800' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'3', N'6', N'j', N'Advanced', N'Contribute to system-level planning, decision making, and evaluation for disasters and public health emergencies.', 1, CAST(N'2023-08-08T17:02:02.800' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'h', N'Advanced', N'Apply and critically evaluate advanced knowledge in a defined area of nursing practice.', 1, CAST(N'2023-08-08T17:02:02.800' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'i', N'Advanced', N'Engage in scholarship to advance health.', 1, CAST(N'2023-08-08T17:02:02.800' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'j', N'Advanced', N'Discern appropriate applications of quality improvement, research, and evaluation methodologies.', 1, CAST(N'2023-08-08T17:02:02.800' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'k', N'Advanced', N'Collaborate to advance one''s scholarship.', 1, CAST(N'2023-08-08T17:02:02.803' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'l', N'Advanced', N'Disseminate one''s scholarship to diverse audiences using a variety of approaches or modalities.', 1, CAST(N'2023-08-08T17:02:02.803' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'1', N'm', N'Advanced', N'Advocate within the interprofessional team and with other stakeholders for the contributions of nursing scholarship.', 1, CAST(N'2023-08-08T17:02:02.803' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'f', N'Advanced', N'Use diverse sources of evidence to inform practice.', 1, CAST(N'2023-08-08T17:02:02.807' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'g', N'Advanced', N'Lead the translation of evidence into practice.', 1, CAST(N'2023-08-08T17:02:02.807' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'h', N'Advanced', N'Address opportunities for innovation and changes in practice.', 1, CAST(N'2023-08-08T17:02:02.813' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'i', N'Advanced', N'Collaborate in the development of new/revised policy or regulation in the light of new evidence.', 1, CAST(N'2023-08-08T17:02:02.817' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'j', N'Advanced', N'Articulate inconsistencies between practice policies and best evidence.', 1, CAST(N'2023-08-08T17:02:02.817' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'2', N'k', N'Advanced', N'Evaluate outcomes and impact of new practices based on the evidence.', 1, CAST(N'2023-08-08T17:02:02.817' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'e', N'Advanced', N'Identify and mitigate potential risks and areas of ethical concern in the conduct of scholarly activities.', 1, CAST(N'2023-08-08T17:02:02.820' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'f', N'Advanced', N'Apply IRB guidelines throughout the scholarship process.', 1, CAST(N'2023-08-08T17:02:02.820' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'g', N'Advanced', N'Ensure the protection of participants in the conduct of scholarship.', 1, CAST(N'2023-08-08T17:02:02.820' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'h', N'Advanced', N'Implement processes that support ethical conduct in practice and scholarship.', 1, CAST(N'2023-08-08T17:02:02.820' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'4', N'3', N'i', N'Advanced', N'Apply ethical principles to the dissemination of nursing scholarship.', 1, CAST(N'2023-08-08T17:02:02.823' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'i', N'Advanced', N'Establish and incorporate data driven benchmarks to monitor system performance.', 1, CAST(N'2023-08-08T17:02:02.823' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'j', N'Advanced', N'Use national safety resources to lead team-based change initiatives.', 1, CAST(N'2023-08-08T17:02:02.823' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'k', N'Advanced', N'Integrate outcome metrics to inform change and policy recommendations.', 1, CAST(N'2023-08-08T17:02:02.823' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'l', N'Advanced', N'Collaborate in analyzing organizational process improvement initiatives.', 1, CAST(N'2023-08-08T17:02:02.827' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'm', N'Advanced', N'Lead the development of a business plan for quality improvement initiatives.', 1, CAST(N'2023-08-08T17:02:02.827' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'n', N'Advanced', N'Advocate for change related to financial policies that impact the relationship between economics and quality care delivery.', 1, CAST(N'2023-08-08T17:02:02.827' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'1', N'o', N'Advanced', N'Advance quality improvement practices through dissemination of outcomes.', 1, CAST(N'2023-08-08T17:02:02.827' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'g', N'Advanced', N'Evaluate the alignment of system data and comparative patient safety benchmarks.', 1, CAST(N'2023-08-08T17:02:02.830' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'h', N'Advanced', N'Lead analysis of actual errors, near misses, and potential situations that would impact safety.', 1, CAST(N'2023-08-08T17:02:02.830' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'i', N'Advanced', N'Design evidence-based interventions to mitigate risk.', 1, CAST(N'2023-08-08T17:02:02.830' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'2', N'j', N'Advanced', N'Evaluate emergency preparedness system-level plans to protect safety.', 1, CAST(N'2023-08-08T17:02:02.830' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'e', N'Advanced', N'Advocate for structures, policies, and processes that promote a culture of safety and prevent workplace risks and injury.', 1, CAST(N'2023-08-08T17:02:02.833' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'f', N'Advanced', N'Foster a just culture reflecting civility and respect.', 1, CAST(N'2023-08-08T17:02:02.833' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'g', N'Advanced', N'Create a safe and transparent culture for reporting incidents.', 1, CAST(N'2023-08-08T17:02:02.833' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'5', N'3', N'h', N'Advanced', N'Role model and lead well-being and resiliency for self and team.', 1, CAST(N'2023-08-08T17:02:02.833' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'g', N'Advanced', N'Evaluate effectiveness of interprofessional communication tools and techniques to support and improve the efficacy of team-based interactions.', 1, CAST(N'2023-08-08T17:02:02.837' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'h', N'Advanced', N'Facilitate improvements in interprofessional communications of individual information (e.g. EHR).', 1, CAST(N'2023-08-08T17:02:02.837' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'i', N'Advanced', N'Role model respect for diversity, equity, and inclusion in team-based communications.', 1, CAST(N'2023-08-08T17:02:02.837' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'j', N'Advanced', N'Communicate nursing''s unique disciplinary knowledge to strengthen interprofessional partnerships.', 1, CAST(N'2023-08-08T17:02:02.840' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'k', N'Advanced', N'Provide expert consultation for other members of the healthcare team in one''s area of practice.', 1, CAST(N'2023-08-08T17:02:02.840' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'1', N'l', N'Advanced', N'Demonstrate capacity to resolve interprofessional conflict.', 1, CAST(N'2023-08-08T17:02:02.840' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'g', N'Advanced', N'Integrate evidence-based strategies and processes to improve team effectiveness and outcomes.', 1, CAST(N'2023-08-08T17:02:02.840' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'h', N'Advanced', N'Evaluate the impact of team dynamics and performance on desired outcomes.', 1, CAST(N'2023-08-08T17:02:02.840' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'i', N'Advanced', N'Reflect on how one''s role and expertise influences team performance.', 1, CAST(N'2023-08-08T17:02:02.843' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'2', N'j', N'Advanced', N'Foster positive team dynamics to strengthen desired outcomes.', 1, CAST(N'2023-08-08T17:02:02.843' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'3', N'd', N'Advanced', N'Direct interprofessional activities and initiatives.', 1, CAST(N'2023-08-08T17:02:02.843' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'e', N'Advanced', N'Practice self-assessment to mitigate conscious and implicit biases toward other team members.', 1, CAST(N'2023-08-08T17:02:02.843' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'f', N'Advanced', N'Foster an environment that supports the constructive sharing of multiple perspectives and enhances interprofessional learning.', 1, CAST(N'2023-08-08T17:02:02.847' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'g', N'Advanced', N'Integrate diversity, equity, and inclusion into team practices.', 1, CAST(N'2023-08-08T17:02:02.847' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'h', N'Advanced', N'Manage disagreements, conflicts, and challenging conversations among team members.', 1, CAST(N'2023-08-08T17:02:02.847' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'6', N'4', N'i', N'Advanced', N'Promote an environment that advances interprofessional learning.', 1, CAST(N'2023-08-08T17:02:02.847' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'e', N'Advanced', N'Participate in organizational strategic planning.', 1, CAST(N'2023-08-08T17:02:02.850' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'f', N'Advanced', N'Participate in system-wide initiatives that improve care delivery and/or outcomes.', 1, CAST(N'2023-08-08T17:02:02.850' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'g', N'Advanced', N'Analyze system-wide processes to optimize outcomes.', 1, CAST(N'2023-08-08T17:02:02.850' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'1', N'h', N'Advanced', N'Design policies to impact health equity and structural racism within systems, communities, and populations.', 1, CAST(N'2023-08-08T17:02:02.850' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'g', N'Advanced', N'Analyze relevant internal and external factors that drive healthcare costs and reimbursement.', 1, CAST(N'2023-08-08T17:02:02.850' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'h', N'Advanced', N'Design practices that enhance value, access, quality, and cost-effectiveness.', 1, CAST(N'2023-08-08T17:02:02.853' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'i', N'Advanced', N'Advocate for healthcare economic policies and regulations to enhance value, quality, and cost-effectiveness.', 1, CAST(N'2023-08-08T17:02:02.853' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'j', N'Advanced', N'Formulate, document, and disseminate the return on investment for improvement initiatives collaboratively with an interdisciplinary team.', 1, CAST(N'2023-08-08T17:02:02.853' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'k', N'Advanced', N'Recommend system-wide strategies that improve cost- effectiveness considering structure, leadership, and workforce needs.', 1, CAST(N'2023-08-08T17:02:02.857' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'2', N'l', N'Advanced', N'Evaluate health policies based on an ethical framework considering cost-effectiveness, health equity, and care outcomes.', 1, CAST(N'2023-08-08T17:02:02.857' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'e', N'Advanced', N'Apply innovative and evidence-based strategies focusing on system preparedness and capabilities.', 1, CAST(N'2023-08-08T17:02:02.857' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'f', N'Advanced', N'Design system improvement strategies based on performance data and metrics.', 1, CAST(N'2023-08-08T17:02:02.857' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'g', N'Advanced', N'Manage change to sustain system effectiveness.', 1, CAST(N'2023-08-08T17:02:02.860' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'7', N'3', N'h', N'Advanced', N'Design system improvement strategies that address internal and external system processes and structures that perpetuate structural racism and other forms of discrimination in healthcare systems.', 1, CAST(N'2023-08-08T17:02:02.860' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'g', N'Advanced', N'Identify best evidence and practices for the application of information and communication technologies to support care.', 1, CAST(N'2023-08-08T17:02:02.860' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'h', N'Advanced', N'Evaluate the unintended consequences of information and communication technologies on care processes, communications, and information flow across care settings.', 1, CAST(N'2023-08-08T17:02:02.860' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'i', N'Advanced', N'Propose a plan to influence the selection and implementation of new information and communication technologies.', 1, CAST(N'2023-08-08T17:02:02.860' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'j', N'Advanced', N'Explore the fiscal impact of information and communication technologies on health care.', 1, CAST(N'2023-08-08T17:02:02.863' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'1', N'k', N'Advanced', N'Identify the impact of information and communication technologies on workflow processes and healthcare outcomes.', 1, CAST(N'2023-08-08T17:02:02.863' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'f', N'Advanced', N'Generate information and knowledge from health information technology databases.', 1, CAST(N'2023-08-08T17:02:02.863' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'g', N'Advanced', N'Evaluate the use of communication technology to improve consumer health information literacy.', 1, CAST(N'2023-08-08T17:02:02.863' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'h', N'Advanced', N'Use standardized data to evaluate decision-making and outcomes across all systems levels.', 1, CAST(N'2023-08-08T17:02:02.867' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'i', N'Advanced', N'Clarify how the collection of standardized data advances the practice, understanding, and value of nursing and supports care.', 1, CAST(N'2023-08-08T17:02:02.867' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'2', N'j', N'Advanced', N'Interpret primary and secondary data and other information to support care.', 1, CAST(N'2023-08-08T17:02:02.867' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'g', N'Advanced', N'Evaluate the use of information and communication technology to address needs, gaps, and inefficiencies in care.', 1, CAST(N'2023-08-08T17:02:02.867' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'h', N'Advanced', N'Formulate a plan to influence decision-making processes for selecting, implementing, and evaluating support tools.', 1, CAST(N'2023-08-08T17:02:02.870' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'i', N'Advanced', N'Appraise the role of information and communication technologies in engaging the patient and supporting the nurse-patient relationship.', 1, CAST(N'2023-08-08T17:02:02.870' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'j', N'Advanced', N'Evaluate the potential uses and impact of emerging technologies in health care.', 1, CAST(N'2023-08-08T17:02:02.870' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'3', N'k', N'Advanced', N'Pose strategies to reduce inequities in digital access to data and information.', 1, CAST(N'2023-08-08T17:02:02.870' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'4', N'e', N'Advanced', N'Assess best practices for the use of advanced information and communication technologies to support patient and team communications.', 1, CAST(N'2023-08-08T17:02:02.870' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'4', N'f', N'Advanced', N'Employ electronic health, mobile health, and telehealth systems to enable quality, ethical, and efficient patient care.', 1, CAST(N'2023-08-08T17:02:02.873' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'4', N'g', N'Advanced', N'Evaluate the impact of health information exchange, interoperability, and integration to support patient-centered care.', 1, CAST(N'2023-08-08T17:02:02.873' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'g', N'Advanced', N'Apply risk mitigation and security strategies to reduce misuse of information and communication technology.', 1, CAST(N'2023-08-08T17:02:02.873' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'h', N'Advanced', N'Assess potential ethical and legal issues associated with the use of information and communication technology.', 1, CAST(N'2023-08-08T17:02:02.877' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'i', N'Advanced', N'Recommend strategies to protect health information when using communication and information technology.', 1, CAST(N'2023-08-08T17:02:02.877' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'j', N'Advanced', N'Promote patient engagement with their personal health data.', 1, CAST(N'2023-08-08T17:02:02.877' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'k', N'Advanced', N'Advocate for policies and regulations that support the appropriate use of technologies impacting health care.', 1, CAST(N'2023-08-08T17:02:02.877' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'8', N'5', N'l', N'Advanced', N'Analyze the impact of federal and state policies and regulation on health data and technology in care settings.', 1, CAST(N'2023-08-08T17:02:02.880' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'h', N'Advanced', N'Analyze current policies and practices in the context of an ethical framework.', 1, CAST(N'2023-08-08T17:02:02.880' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'i', N'Advanced', N'Model ethical behaviors in practice and leadership roles.', 1, CAST(N'2023-08-08T17:02:02.880' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'j', N'Advanced', N'Suggest solutions when unethical behaviors are observed.', 1, CAST(N'2023-08-08T17:02:02.880' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'1', N'k', N'Advanced', N'Assume accountability for working to resolve ethical dilemmas.', 1, CAST(N'2023-08-08T17:02:02.880' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'h', N'Advanced', N'Foster opportunities for intentional presence in practice.', 1, CAST(N'2023-08-08T17:02:02.883' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'i', N'Advanced', N'Identify innovative and evidence-based practices that promote person-centered care.', 1, CAST(N'2023-08-08T17:02:02.883' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'j', N'Advanced', N'Advocate for practices that advance diversity, equity, and inclusion.', 1, CAST(N'2023-08-08T17:02:02.883' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'k', N'Advanced', N'Model professional expectations for therapeutic relationships.', 1, CAST(N'2023-08-08T17:02:02.883' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'2', N'l', N'Advanced', N'Facilitate communication that promotes a participatory approach.', 1, CAST(N'2023-08-08T17:02:02.887' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'i', N'Advanced', N'Advocate for nursing''s professional responsibility for ensuring optimal care outcomes', 1, CAST(N'2023-08-08T17:02:02.887' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'j', N'Advanced', N'Demonstrate leadership skills when participating in professional activities and/or organizations.', 1, CAST(N'2023-08-08T17:02:02.887' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'k', N'Advanced', N'Address actual or potential hazards and/or errors.', 1, CAST(N'2023-08-08T17:02:02.890' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'l', N'Advanced', N'Foster a practice environment that promotes accountability for care outcomes.', 1, CAST(N'2023-08-08T17:02:02.890' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'm', N'Advanced', N'Advocate for policies/practices that promote social justice and health equity.', 1, CAST(N'2023-08-08T17:02:02.890' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'n', N'Advanced', N'Foster strategies that promote a culture of civility across a variety of settings.', 1, CAST(N'2023-08-08T17:02:02.890' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'3', N'o', N'Advanced', N'Lead in the development of opportunities for professional and interprofessional activities.', 1, CAST(N'2023-08-08T17:02:02.890' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'd', N'Advanced', N'Advocate for polices that enable nurses to practice to the full extent of their education.', 1, CAST(N'2023-08-08T17:02:02.893' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'e', N'Advanced', N'Assess the interaction between regulatory agency requirements and quality, fiscal, and value-based indicators.', 1, CAST(N'2023-08-08T17:02:02.893' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'f', N'Advanced', N'Evaluate the effect of legal and regulatory policies on nursing practice and healthcare outcomes.', 1, CAST(N'2023-08-08T17:02:02.893' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'g', N'Advanced', N'Analyze efforts to change legal and regulatory policies that improve nursing practice and health outcomes.', 1, CAST(N'2023-08-08T17:02:02.893' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'4', N'h', N'Advanced', N'Participate in the implementation of policies and regulations to improve the professional practice environment and healthcare outcomes.', 1, CAST(N'2023-08-08T17:02:02.897' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'f', N'Advanced', N'Articulate nursing''s unique professional identity to other interprofessional team members and the public.', 1, CAST(N'2023-08-08T17:02:02.897' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'g', N'Advanced', N'Evaluate practice environment to ensure that nursing core values are demonstrated.', 1, CAST(N'2023-08-08T17:02:02.897' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'h', N'Advanced', N'Identify opportunities to lead with moral courage to influence team decision-making.', 1, CAST(N'2023-08-08T17:02:02.897' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'5', N'i', N'Advanced', N'Engage in professional organizations that reflect nursing''s values and identity.', 1, CAST(N'2023-08-08T17:02:02.900' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'd', N'Advanced', N'Model respect for diversity, equity, and inclusion for all team members.', 1, CAST(N'2023-08-08T17:02:02.900' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'e', N'Advanced', N'Critique one''s personal and professional practices in the context of nursing''s core values.', 1, CAST(N'2023-08-08T17:02:02.900' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'f', N'Advanced', N'Analyze the impact of structural and cultural influences on nursing''s professional identity.', 1, CAST(N'2023-08-08T17:02:02.900' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'g', N'Advanced', N'Ensure that care provided by self and others is reflective of nursing''s core values.', 1, CAST(N'2023-08-08T17:02:02.900' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'h', N'Advanced', N'Structure the practice environment to facilitate care that is culturally and linguistically appropriate.', 1, CAST(N'2023-08-08T17:02:02.903' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'9', N'6', N'i', N'Advanced', N'Ensure self and others are accountable in upholding moral, legal, and humanistic principles related to health.', 1, CAST(N'2023-08-08T17:02:02.903' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'1', N'c', N'Advanced', N'Contribute to an environment that promotes self-care, personal health, and well-being.', 1, CAST(N'2023-08-08T17:02:02.907' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'1', N'd', N'Advanced', N'Evaluate the workplace environment to determine level of health and well-being.', 1, CAST(N'2023-08-08T17:02:02.907' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'g', N'Advanced', N'Demonstrate cognitive flexibility in managing change within complex environments.', 1, CAST(N'2023-08-08T17:02:02.907' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'h', N'Advanced', N'Mentor others in the development of their professional growth and accountability.', 1, CAST(N'2023-08-08T17:02:02.910' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'i', N'Advanced', N'Foster activities that support a culture of lifelong learning.', 1, CAST(N'2023-08-08T17:02:02.910' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'2', N'j', N'Advanced', N'Expand leadership skills through professional service.', 1, CAST(N'2023-08-08T17:02:02.910' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'j', N'Advanced', N'Provide leadership to advance the nursing profession.', 1, CAST(N'2023-08-08T17:02:02.910' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'k', N'Advanced', N'Influence intentional change guided by leadership principles and theories.', 1, CAST(N'2023-08-08T17:02:02.913' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'l', N'Advanced', N'Evaluate the outcomes of intentional change.', 1, CAST(N'2023-08-08T17:02:02.913' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'm', N'Advanced', N'Evaluate strategies/methods for peer review.', 1, CAST(N'2023-08-08T17:02:02.913' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'n', N'Advanced', N'Participate in the evaluation of other members of the care team.', 1, CAST(N'2023-08-08T17:02:02.913' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'o', N'Advanced', N'Demonstrate leadership skills in times of uncertainty and crisis.', 1, CAST(N'2023-08-08T17:02:02.917' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'p', N'Advanced', N'Advocate for the promotion of social justice and eradication of structural racism and systematic inequity in nursing and society.', 1, CAST(N'2023-08-08T17:02:02.917' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'10', N'3', N'q', N'Advanced', N'Advocate for the nursing profession in a manner that is consistent, positive, relevant, accurate, and distinctive.', 1, CAST(N'2023-08-08T17:02:02.917' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'1', N'1', NULL, N'Institutional Accreditation', 1, CAST(N'2023-08-09T15:58:42.247' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'1', N'2', NULL, N'Institutional Authority', 1, CAST(N'2023-08-09T15:58:42.263' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'1', N'3', NULL, N'Institutional Setting', 1, CAST(N'2023-08-09T15:58:42.263' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'1', N'4', NULL, N'Sponsoring Institution Responsibilities', 1, CAST(N'2023-08-09T15:58:42.263' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'1', N'5', NULL, N'Notification Requirements', 1, CAST(N'2023-08-09T15:58:42.267' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'1', NULL, N'Program Director', 1, CAST(N'2023-08-09T15:58:42.267' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'2', NULL, N'FTE Faculty Composition', 1, CAST(N'2023-08-09T15:58:42.270' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'3', NULL, N'Program Director and Faculty Qualifications', 1, CAST(N'2023-08-09T15:58:42.270' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'4', NULL, N'Academic Fieldwork Coordinator', 1, CAST(N'2023-08-09T15:58:42.270' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'5', NULL, N'Doctoral Capstone Coordinator', 1, CAST(N'2023-08-09T15:58:42.273' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'6', NULL, N'Licensed OT and OTA Faculty', 1, CAST(N'2023-08-09T15:58:42.273' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'7', NULL, N'Faculty Degrees', 1, CAST(N'2023-08-09T15:58:42.273' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'8', NULL, N'Site Coordinator', 1, CAST(N'2023-08-09T15:58:42.280' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'9', NULL, N'Sufficient Faculty', 1, CAST(N'2023-08-09T15:58:42.280' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'10', NULL, N'Clerical and Support Staff', 1, CAST(N'2023-08-09T15:58:42.280' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'11', NULL, N'Budget', 1, CAST(N'2023-08-09T15:58:42.280' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'12', NULL, N'Adequate Space', 1, CAST(N'2023-08-09T15:58:42.283' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'13', NULL, N'Equipment, Supplies, and Evaluative and Treatment Methodologies', 1, CAST(N'2023-08-09T15:58:42.283' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'14', NULL, N'Library, Reference Materials, Instructional Aids, and Technology', 1, CAST(N'2023-08-09T15:58:42.283' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'2', N'15', NULL, N'Distance Education', 1, CAST(N'2023-08-09T15:58:42.287' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'3', N'1', NULL, N'Admission Criteria', 1, CAST(N'2023-08-09T15:58:42.287' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'3', N'2', NULL, N'Admission Policies', 1, CAST(N'2023-08-09T15:58:42.287' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'3', N'3', NULL, N'Credit for Previous Courses/Work Experience', 1, CAST(N'2023-08-09T15:58:42.290' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'3', N'4', NULL, N'Criteria for Successful Completion', 1, CAST(N'2023-08-09T15:58:42.293' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'3', N'5', NULL, N'Evaluation on a Regular Basis', 1, CAST(N'2023-08-09T15:58:42.293' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'3', N'6', NULL, N'Student Support Services', 1, CAST(N'2023-08-09T15:58:42.293' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'3', N'7', NULL, N'Advising by Faculty', 1, CAST(N'2023-08-09T15:58:42.293' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'1', NULL, N'Accurate Program Publications', 1, CAST(N'2023-08-09T15:58:42.297' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'2', NULL, N'Publication of Program Outcomes', 1, CAST(N'2023-08-09T15:58:42.297' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'3', NULL, N'Publication of ACOTE Information', 1, CAST(N'2023-08-09T15:58:42.297' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'4', NULL, N'Published Policies and Procedures', 1, CAST(N'2023-08-09T15:58:42.297' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'5', NULL, N'Ability to Benefit', 1, CAST(N'2023-08-09T15:58:42.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'6', NULL, N'Progression, Retention, Graduation, Certification, and Credentialing Requirements', 1, CAST(N'2023-08-09T15:58:42.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'7', NULL, N'Completion in a Timely Manner', 1, CAST(N'2023-08-09T15:58:42.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'4', N'8', NULL, N'Student Records', 1, CAST(N'2023-08-09T15:58:42.300' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'5', N'1', NULL, N'Curriculum-Preparation to Practice as a Generalist', 1, CAST(N'2023-08-09T15:58:42.303' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'5', N'2', NULL, N'Curriculum-Preparation and Application of In-depth Knowledge', 1, CAST(N'2023-08-09T15:58:42.303' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'5', N'3', NULL, N'Program Length', 1, CAST(N'2023-08-09T15:58:42.303' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'5', N'4', NULL, N'Program Mission and Philosophy', 1, CAST(N'2023-08-09T15:58:42.313' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'5', N'5', NULL, N'Curriculum Design', 1, CAST(N'2023-08-09T15:58:42.320' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'5', N'6', NULL, N'Scholarship Agenda', 1, CAST(N'2023-08-09T15:58:42.320' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'5', N'7', NULL, N'Written Syllabi and Assessment Strategies', 1, CAST(N'2023-08-09T15:58:42.323' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'6', N'1', NULL, N'Strategic Plan', 1, CAST(N'2023-08-09T15:58:42.323' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'6', N'2', NULL, N'Professional Development Plans', 1, CAST(N'2023-08-09T15:58:42.323' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'6', N'3', NULL, N'Program Evaluation', 1, CAST(N'2023-08-09T15:58:42.327' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'A', N'6', N'4', NULL, N'Certification Exam Pass Rate', 1, CAST(N'2023-08-09T15:58:42.327' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'1', N'1', NULL, N'Human Body, Development, and Behavior', 1, CAST(N'2023-08-09T15:58:42.327' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'1', N'2', NULL, N'Sociocultural, Socioeconomic, Diversity Factors, and Lifestyle Choices', 1, CAST(N'2023-08-09T15:58:42.327' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'1', N'3', NULL, N'Social Determinants of Health', 1, CAST(N'2023-08-09T15:58:42.330' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'1', N'4', NULL, N'Quantitative Statistics and Qualitative Analysis', 1, CAST(N'2023-08-09T15:58:42.330' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'2', N'1', NULL, N'Scientific Evidence, Theories, Models of Practice, and Frames of Reference', 1, CAST(N'2023-08-09T15:58:42.330' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'2', N'2', NULL, N'Theory Development', 1, CAST(N'2023-08-09T15:58:42.333' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'3', N'1', NULL, N'OT History, Philosophical Base, Theory, and Sociopolitical Climate', 1, CAST(N'2023-08-09T15:58:42.333' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'3', N'2', NULL, N'Interaction of Occupation and Activity', 1, CAST(N'2023-08-09T15:58:42.333' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'3', N'3', NULL, N'Distinct Nature of Occupation', 1, CAST(N'2023-08-09T15:58:42.337' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'3', N'4', NULL, N'Balancing Areas of Occupation, Role in Promotion of Health, and Prevention', 1, CAST(N'2023-08-09T15:58:42.337' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'3', N'5', NULL, N'Effects of Disease Processes', 1, CAST(N'2023-08-09T15:58:42.337' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'3', N'6', NULL, N'Activity Analysis', 1, CAST(N'2023-08-09T15:58:42.337' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'3', N'7', NULL, N'Safety of Self and Others', 1, CAST(N'2023-08-09T15:58:42.340' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'1', NULL, N'Therapeutic Use of Self', 1, CAST(N'2023-08-09T15:58:42.340' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'2', NULL, N'Clinical Reasoning', 1, CAST(N'2023-08-09T15:58:42.340' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'3', NULL, N'Occupation-Based Interventions', 1, CAST(N'2023-08-09T15:58:42.340' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'4', NULL, N'Standardized and Nonstandardized Screening and Assessment Tools', 1, CAST(N'2023-08-09T15:58:42.340' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'5', NULL, N'Application of Assessment Tools and Interpretation of Results', 1, CAST(N'2023-08-09T15:58:42.343' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'6', NULL, N'Reporting Data', 1, CAST(N'2023-08-09T15:58:42.343' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'7', NULL, N'Interpret Standardized Test Scores', 1, CAST(N'2023-08-09T15:58:42.343' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'8', NULL, N'Interpret Evaluation Data', 1, CAST(N'2023-08-09T15:58:42.343' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'9', NULL, N'Remediation and Compensation', 1, CAST(N'2023-08-09T15:58:42.347' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'10', NULL, N'Provide Interventions and Procedures', 1, CAST(N'2023-08-09T15:58:42.347' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'11', NULL, N'Assistive Technologies and Devices', 1, CAST(N'2023-08-09T15:58:42.347' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'12', NULL, N'Orthoses and Prosthetic Devices', 1, CAST(N'2023-08-09T15:58:42.347' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'13', NULL, N'Functional Mobility', 1, CAST(N'2023-08-09T15:58:42.350' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'14', NULL, N'Community Mobility', 1, CAST(N'2023-08-09T15:58:42.350' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'15', NULL, N'Technology in Practice', 1, CAST(N'2023-08-09T15:58:42.350' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'16', NULL, N'Dysphagia and Feeding Disorders', 1, CAST(N'2023-08-09T15:58:42.350' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'17', NULL, N'Superficial Thermal, Deep Thermal, and Electrotherapeutic Agents and Mechanical Devices', 1, CAST(N'2023-08-09T15:58:42.353' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'18', NULL, N'Grade and Adapt Processes or Environments', 1, CAST(N'2023-08-09T15:58:42.353' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'19', NULL, N'Consultative Process', 1, CAST(N'2023-08-09T15:58:42.353' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'20', NULL, N'Care Coordination, Case Management, and Transition Services', 1, CAST(N'2023-08-09T15:58:42.357' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'21', NULL, N'Teaching-Learning Process and Health Literacy', 1, CAST(N'2023-08-09T15:58:42.357' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'22', NULL, N'Need for Continued or Modified Intervention', 1, CAST(N'2023-08-09T15:58:42.357' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'23', NULL, N'Effective Communication', 1, CAST(N'2023-08-09T15:58:42.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'24', NULL, N'Effective Intraprofessional Collaboration', 1, CAST(N'2023-08-09T15:58:42.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'25', NULL, N'Principles of Interprofessional Team Dynamics', 1, CAST(N'2023-08-09T15:58:42.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'26', NULL, N'Referral to Specialists', 1, CAST(N'2023-08-09T15:58:42.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'27', NULL, N'Community and Primary Care Programs', 1, CAST(N'2023-08-09T15:58:42.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'28', NULL, N'Plan for Discharge', 1, CAST(N'2023-08-09T15:58:42.360' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'4', N'29', NULL, N'Reimbursement Systems and Documentation', 1, CAST(N'2023-08-09T15:58:42.363' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'1', NULL, N'Factors, Policy Issues, and Social Systems', 1, CAST(N'2023-08-09T15:58:42.363' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'2', NULL, N'Advocacy', 1, CAST(N'2023-08-09T15:58:42.363' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'3', NULL, N'Business Aspects of Practice', 1, CAST(N'2023-08-09T15:58:42.363' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'4', NULL, N'Systems and Structures That Create Legislation', 1, CAST(N'2023-08-09T15:58:42.367' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'5', NULL, N'Requirements for Credentialing and Licensure', 1, CAST(N'2023-08-09T15:58:42.367' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'6', NULL, N'Market the Delivery of Services', 1, CAST(N'2023-08-09T15:58:42.367' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'7', NULL, N'Quality Management and Improvement', 1, CAST(N'2023-08-09T15:58:42.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'5', N'8', NULL, N'Supervision of Personnel', 1, CAST(N'2023-08-09T15:58:42.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'6', N'1', NULL, N'Scholarly Study', 1, CAST(N'2023-08-09T15:58:42.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'6', N'2', NULL, N'Quantitative and Qualitative Methods', 1, CAST(N'2023-08-09T15:58:42.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'6', N'3', NULL, N'Scholarly Reports', 1, CAST(N'2023-08-09T15:58:42.370' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'6', N'4', NULL, N'Locating and Securing Grants', 1, CAST(N'2023-08-09T15:58:42.373' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'6', N'5', NULL, N'Ethical Policies and Procedures for Research', 1, CAST(N'2023-08-09T15:58:42.373' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'6', N'6', NULL, N'Preparation for Work in an Academic Setting', 1, CAST(N'2023-08-09T15:58:42.373' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'7', N'1', NULL, N'Ethical Decision Making', 1, CAST(N'2023-08-09T15:58:42.373' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'7', N'2', NULL, N'Professional Engagement', 1, CAST(N'2023-08-09T15:58:42.377' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'7', N'3', NULL, N'Promote Occupational Therapy', 1, CAST(N'2023-08-09T15:58:42.377' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'7', N'4', NULL, N'Ongoing Professional Development', 1, CAST(N'2023-08-09T15:58:42.377' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'B', N'7', N'5', NULL, N'Personal and Professional Responsibilities', 1, CAST(N'2023-08-09T15:58:42.380' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'1', NULL, N'Fieldwork Program Reflects the Curriculum Design', 1, CAST(N'2023-08-09T15:58:42.380' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'2', NULL, N'Criteria and Process for Selecting Fieldwork Sites', 1, CAST(N'2023-08-09T15:58:42.380' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'3', NULL, N'Fieldwork Objectives', 1, CAST(N'2023-08-09T15:58:42.380' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'4', NULL, N'Ratio of Fieldwork Educators to Students', 1, CAST(N'2023-08-09T15:58:42.380' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'5', NULL, N'Sufficient Fieldwork Agreements', 1, CAST(N'2023-08-09T15:58:42.383' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'6', NULL, N'Level I and II Fieldwork MOUs', 1, CAST(N'2023-08-09T15:58:42.383' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'7', NULL, N'Fieldwork in Behavioral Health or Psychological and Social Factors', 1, CAST(N'2023-08-09T15:58:42.383' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'8', NULL, N'Qualified Level I Fieldwork Supervisors', 1, CAST(N'2023-08-09T15:58:42.387' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'9', NULL, N'Level I Fieldwork', 1, CAST(N'2023-08-09T15:58:42.387' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'C', N'1', N'10', NULL, N'Length of Level II Fieldwork', 1, CAST(N'2023-08-09T15:58:42.387' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 1', N'C', N'1', NULL, N'Graduation rates are at least 80% averaged over two years.', 1, CAST(N'2023-08-11T12:25:42.540' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 1', N'C', N'2', NULL, N'Ultimate licensure pass rates are at least 85%, averaged over two years.', 1, CAST(N'2023-08-11T12:25:42.543' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 1', N'C', N'3', NULL, N'Employment rates are at least 90%, averaged over two years.', 1, CAST(N'2023-08-11T12:25:42.547' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 1', N'C', N'4', NULL, N'Students demonstrate entry-level clinical performance during clinical education experiences prior to graduation.', 1, CAST(N'2023-08-11T12:25:42.547' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 1', N'C', N'5', NULL, N'The program graduates meet the expected outcomes as defined by the program.', 1, CAST(N'2023-08-11T12:25:42.547' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 1', N'C', N'6', NULL, N'The program meets expected outcomes related to its mission and goals.', 1, CAST(N'2023-08-11T12:25:42.550' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 2', N'B', N'1', NULL, N'The admissions process, criteria and prerequisites meet the needs and expectations of the program.', 1, CAST(N'2023-08-11T12:25:42.550' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 2', N'B', N'2', NULL, N'Program enrollment appropriately reflects available resources, program outcomes and workforce needs.', 1, CAST(N'2023-08-11T12:25:42.550' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 2', N'B', N'3', NULL, N'The collective core, associated and clinical education faculty meet program and curricular needs.', 1, CAST(N'2023-08-11T12:25:42.553' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 2', N'B', N'4', NULL, N'Program resources are meeting, and will continue to meet, current and projected program needs including, but not limited to, financial resources, staff, space, equipment, technology, materials, library and learning resources, and student services.', 1, CAST(N'2023-08-11T12:25:42.553' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 2', N'B', N'5', NULL, N'Program policies and procedures, as well as relevant institutional policies and procedures meet program needs.', 1, CAST(N'2023-08-11T12:25:42.553' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 3', N'H', N'1', NULL, N'Maintenance of accurate information, easily accessible to the public, on the program website regarding accreditation status (including CAPTE logo and required accreditation statement) and current student achievement measures.', 1, CAST(N'2023-08-11T12:25:42.567' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 3', N'H', N'2', NULL, N'Timely submission of required fees and documentation, including reports of graduation rates, performance on state licensing examinations, and employment rates;', 1, CAST(N'2023-08-11T12:25:42.570' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 3', N'H', N'3', NULL, N'Following policies and procedures of CAPTE as outlined in the CAPTE Rules of Practice and Procedure.', 1, CAST(N'2023-08-11T12:25:42.570' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 3', N'H', N'4', NULL, N'Timely notification of expected or unexpected substantive change(s) within the program and of any change in institutional accreditation status or legal authority to provide post-secondary education.', 1, CAST(N'2023-08-11T12:25:42.570' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 3', N'H', N'5', NULL, N'Coming into compliance with accreditation Standards and Required Elements within two years of being determined to be out of compliance.', 1, CAST(N'2023-08-11T12:25:42.570' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'1', NULL, N'Faculty teaching by distance are effective in the provision of distance education.', 1, CAST(N'2023-08-11T12:25:42.600' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'2', NULL, N'The rigor of the distance education courses is equivalent to that of site-based courses.', 1, CAST(N'2023-08-11T12:25:42.603' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'3', NULL, N'Student performance meets the expectations of the faculty as described in course syllabi and demonstrated in student assessment.', 1, CAST(N'2023-08-11T12:25:42.603' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'4', NULL, N'There is a mechanism for determining student identity during course activities and when testing occurs at a distance.', 1, CAST(N'2023-08-11T12:25:42.603' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'5', NULL, N'There is a mechanism for maintaining test security and integrity when testing occurs at a distance.', 1, CAST(N'2023-08-11T12:25:42.603' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'6', NULL, N'There is a mechanism for maintaining student privacy as appropriate.', 1, CAST(N'2023-08-11T12:25:42.607' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'7', NULL, N'Students have been informed of any additional fees related to distance education.', 1, CAST(N'2023-08-11T12:25:42.607' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'K', N'8', NULL, N'Distance education students have access to academic, health, counseling, disability and financial aid services commensurate with services that students receive on campus.', 1, CAST(N'2023-08-11T12:25:42.607' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'L', N'1', NULL, N'Management of patients/clients with diseases and conditions representative of those commonly seen in practice across the lifespan and the continuum of care.', 1, CAST(N'2023-08-11T12:25:42.610' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'L', N'2', NULL, N'Practice in settings representative of those in which physical therapy is commonly practiced.', 1, CAST(N'2023-08-11T12:25:42.610' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'L', N'3', NULL, N'Involvement in interprofessional practice.', 1, CAST(N'2023-08-11T12:25:42.610' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'L', N'4', NULL, N'Direction and supervision of the physical therapist assistant and other physical therapy personnel.', 1, CAST(N'2023-08-11T12:25:42.613' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 6', N'L', N'5', NULL, N'Other experiences that lead to the achievement of the program''s defined expected student outcomes.', 1, CAST(N'2023-08-11T12:25:42.613' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'1', NULL, N'Adhere to legal practice standards, including all federal, state, and institutional regulations related to patient/client care and fiscal management.', 1, CAST(N'2023-08-11T12:25:42.620' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'2', NULL, N'Report to appropriate authorities suspected cases of abuse of vulnerable populations.', 1, CAST(N'2023-08-11T12:25:42.620' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'3', NULL, N'Report to appropriate authorities suspected cases of fraud and abuse related to the utilization of and payment for physical therapy and other health care services.', 1, CAST(N'2023-08-11T12:25:42.620' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'4', NULL, N'Practice in a manner consistent with the APTA Code of Ethics.', 1, CAST(N'2023-08-11T12:25:42.620' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'5', NULL, N'Practice in a manner consistent with the APTA Core Values.', 1, CAST(N'2023-08-11T12:25:42.620' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'6', NULL, N'Implement, in response to an ethical situation, a plan of action that demonstrates sound moral reasoning congruent with core professional ethics and values.', 1, CAST(N'2023-08-11T12:25:42.623' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'7', NULL, N'Communicate effectively with all stakeholders, including patients/clients, family members, caregivers, practitioners, interprofessional team members, consumers, payers, and policymakers.', 1, CAST(N'2023-08-11T12:25:42.623' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'8', NULL, N'Identify, respect, and act with consideration for patients/clients differences, values, preferences, and expressed needs in all professional activities.', 1, CAST(N'2023-08-11T12:25:42.627' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'9', NULL, N'Access and critically analyze scientific literature.', 1, CAST(N'2023-08-11T12:25:42.627' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'10', NULL, N'Apply current knowledge, theory, and professional judgment while considering the patient/client perspective, the environment, and available resources.', 1, CAST(N'2023-08-11T12:25:42.627' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'11', NULL, N'Identify, evaluate and integrate the best evidence for practice with clinical judgment and patient/client values, needs, and preferences to determine the best care for a patient/client.', 1, CAST(N'2023-08-11T12:25:42.627' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'12', NULL, N'Effectively educate others using teaching methods that are commensurate with the needs of the learner, including participation in the clinical education of students.', 1, CAST(N'2023-08-11T12:25:42.630' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'13', NULL, N'Participate in professional and community organizations that provide opportunities for volunteerism, advocacy and leadership.', 1, CAST(N'2023-08-11T12:25:42.630' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'14', NULL, N'Advocate for the profession and the healthcare needs of society through legislative and political processes.', 1, CAST(N'2023-08-11T12:25:42.630' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'15', NULL, N'Identify career development and lifelong learning opportunities, including the role of the physical therapist in the clinical education of physical therapist students.', 1, CAST(N'2023-08-11T12:25:42.630' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'16', NULL, N'Determine when patients/clients need further examination or consultation by a physical therapist or referral to another health care professional.', 1, CAST(N'2023-08-11T12:25:42.630' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'17', NULL, N'Obtain a history and relevant information from the patient/client and from other sources as needed.', 1, CAST(N'2023-08-11T12:25:42.633' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'18', NULL, N'Perform systems review.', 1, CAST(N'2023-08-11T12:25:42.633' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'19', NULL, N'Select, and competently administer tests and measures appropriate to the patient''s age, diagnosis and health status', 1, CAST(N'2023-08-11T12:25:42.633' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'20', NULL, N'Evaluate data from the examination (history, health record, systems review, and tests and measures) to make clinical judgments.', 1, CAST(N'2023-08-11T12:25:42.633' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'21', NULL, N'Use the International Classification of Function (ICF) to describe a patient''s/client''s impairments, activity and participation limitations.', 1, CAST(N'2023-08-11T12:25:42.637' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'22', NULL, N'Determine a diagnosis that guides future patient/client management.', 1, CAST(N'2023-08-11T12:25:42.637' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'23', NULL, N'Determine patient/client goals and expected outcomes within available resources (including applicable payment sources) and specify expected length of time to achieve the goals and outcomes.', 1, CAST(N'2023-08-11T12:25:42.637' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'24', NULL, N'Establish a safe and effective plan of care in collaboration with appropriate stakeholders, including patients/clients, family members, payors, other professionals and other appropriate individuals.', 1, CAST(N'2023-08-11T12:25:42.640' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'25', NULL, N'Determine those components of the plan of care that may, or may not, be directed to the physical therapist assistant (PTA) based on (a) the needs of the patient/client, (b) the role, education, and training of the PTA, (c) competence of the individual PTA, (d) jurisdictional law, (e) practice guidelines policies, and (f) facility policies.', 1, CAST(N'2023-08-11T12:25:42.640' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'26', NULL, N'Create a discontinuation of episode of care plan that optimizes success for the patient in moving along the continuum of care.', 1, CAST(N'2023-08-11T12:25:42.640' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'27', NULL, N'Competently perform physical therapy interventions to achieve patient/client goals and outcomes.', 1, CAST(N'2023-08-11T12:25:42.640' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'28', NULL, N'Manage the delivery of the plan of care that is consistent with professional obligations, interprofessional collaborations, and administrative policies and procedures of the practice environment.', 1, CAST(N'2023-08-11T12:25:42.643' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'29', NULL, N'Delineate, communicate and supervise those areas of the plan of care that will be directed to the PTA.', 1, CAST(N'2023-08-11T12:25:42.643' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'30', NULL, N'Monitor and adjust the plan of care in response to patient/client status.', 1, CAST(N'2023-08-11T12:25:42.643' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'31', NULL, N'Assess patient outcomes, including the use of appropriate standardized tests and measures that address impairments, functional status and participation.', 1, CAST(N'2023-08-11T12:25:42.643' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'32', NULL, N'Complete accurate documentation related to 7D15 - 7D30 that follows guidelines and specific documentation formats required by state practice acts, the practice setting, and other regulatory agencies.', 1, CAST(N'2023-08-11T12:25:42.647' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'33', NULL, N'Respond effectively to patient/client and environmental emergencies in one''s practice setting.', 1, CAST(N'2023-08-11T12:25:42.647' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'34', NULL, N'Provide physical therapy services that address primary, secondary and tertiary prevention, health promotion, and wellness to individuals, groups, and communities.', 1, CAST(N'2023-08-11T12:25:42.647' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'35', NULL, N'Provide care through direct access.', 1, CAST(N'2023-08-11T12:25:42.650' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'36', NULL, N'Participate in the case management process.', 1, CAST(N'2023-08-11T12:25:42.650' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'37', NULL, N'Assess and document safety risks of patients and the healthcare provider and design and implement strategies to improve safety in the healthcare setting as an individual and as a member of the interprofessional healthcare team.', 1, CAST(N'2023-08-11T12:25:42.650' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'38', NULL, N'Participate in activities for ongoing assessment and improvement of quality services.', 1, CAST(N'2023-08-11T12:25:42.650' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'39', NULL, N'Participate in patient-centered interprofessional collaborative practice.', 1, CAST(N'2023-08-11T12:25:42.650' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'40', NULL, N'Use health informatics in the health care environment.', 1, CAST(N'2023-08-11T12:25:42.650' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'41', NULL, N'Assess health care policies and their potential impact on the healthcare environment and practice.', 1, CAST(N'2023-08-11T12:25:42.653' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'42', NULL, N'Participate in the financial management of the practice setting, including accurate billing and payment for services rendered.', 1, CAST(N'2023-08-11T12:25:42.653' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 7', N'D', N'43', NULL, N'Participate in practice management, including marketing, public relations, regulatory and legal requirements, risk management, staffing and continuous quality improvement.', 1, CAST(N'2023-08-11T12:25:42.653' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 8', N'D', N'1', NULL, N'Classroom and laboratory environments are supportive of effective teaching and learning.', 1, CAST(N'2023-08-11T12:25:42.667' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 8', N'D', N'2', NULL, N'Space is sufficient for faculty and staff offices, student advisement, conducting confidential meetings, storing office equipment and documents, and securing confidential materials.', 1, CAST(N'2023-08-11T12:25:42.667' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 8', N'D', N'3', NULL, N'Students have access to laboratory space outside of scheduled class time for practice of clinical skills.', 1, CAST(N'2023-08-11T12:25:42.670' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 8', N'D', N'4', NULL, N'Equipment and materials are typical of those used in contemporary physical therapy practice, are sufficient in number, are in safe working order, and are available when needed.', 1, CAST(N'2023-08-11T12:25:42.670' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 8', N'D', N'5', NULL, N'Technology resources meet the needs of the program.', 1, CAST(N'2023-08-11T12:25:42.670' AS DateTime))
GO
INSERT [subcompetencies] ([domainID], [competencyID], [subcompetencyID], [level], [subcompetencyName], [active], [createDate]) VALUES (N'Standard 8', N'D', N'6', NULL, N'Core faculty have access to sufficient space and equipment to fulfill their scholarly agendas.', 1, CAST(N'2023-08-11T12:25:42.670' AS DateTime))
GO

INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ABG', N'Arterial Blood Gases', 1, CAST(N'2023-09-22T16:32:37.120' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ACE', N'Angiotensin Converting Enzyme', 1, CAST(N'2023-09-22T16:32:37.123' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ACL', N'Anterior Cruciate Ligament', 1, CAST(N'2023-09-22T16:32:37.123' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ADHD', N'Attention Deficit Hyperactivity Disorder', 1, CAST(N'2023-09-22T16:32:37.123' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AFIB', N'Atrial Fibrillation', 1, CAST(N'2023-09-22T16:32:37.133' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AIDS', N'Acquired Immunodeficiency Syndrome', 1, CAST(N'2023-09-22T16:32:37.137' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ALP', N'Alkaline Phosphatase', 1, CAST(N'2023-09-22T16:32:37.137' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ALS', N'Amyotrophic Lateral Sclerosis.', 1, CAST(N'2023-09-22T16:32:37.137' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ALT', N'Alanine Aminotransferase', 1, CAST(N'2023-09-22T16:32:37.140' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AMD', N'Age-Related Macular Degeneration', 1, CAST(N'2023-09-22T16:32:37.140' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AMI', N'Acute Myocardial Infarction', 1, CAST(N'2023-09-22T16:32:37.140' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AODM', N'Adult Onset Diabetes Mellitus', 1, CAST(N'2023-09-22T16:32:37.140' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AST', N'Aspartate Aminotransferase', 1, CAST(N'2023-09-22T16:32:37.140' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AVM', N'Arteriovenous Malformation', 1, CAST(N'2023-09-22T16:32:37.143' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BID', N'Twice A Day', 1, CAST(N'2023-09-22T16:32:37.143' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BMI', N'Body Mass Index', 1, CAST(N'2023-09-22T16:32:37.143' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BP', N'Blood Pressure', 1, CAST(N'2023-09-22T16:32:37.143' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BPH', N'Benign Prostatic Hypertrophy', 1, CAST(N'2023-09-22T16:32:37.147' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BRCA', N'Breast Cancer Gene', 1, CAST(N'2023-09-22T16:32:37.147' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BUN', N'Blood Urea Nitrogen', 1, CAST(N'2023-09-22T16:32:37.147' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CA', N'Cancer OR Calcium', 1, CAST(N'2023-09-22T16:32:37.147' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CA-125', N'Cancer Antigen 125', 1, CAST(N'2023-09-22T16:32:37.150' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CABG', N'Coronary Artery Bypass Graft', 1, CAST(N'2023-09-22T16:32:37.150' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CAD', N'Coronary Artery Disease', 1, CAST(N'2023-09-22T16:32:37.150' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CAT', N'Computerized Axial Tomography', 1, CAST(N'2023-09-22T16:32:37.150' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CBC', N'Complete Blood Count', 1, CAST(N'2023-09-22T16:32:37.150' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CHD', N'Congenital Heart Disease', 1, CAST(N'2023-09-22T16:32:37.153' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CHF', N'Congestive Heart Failure', 1, CAST(N'2023-09-22T16:32:37.153' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CMV', N'Cytomegalovirus', 1, CAST(N'2023-09-22T16:32:37.153' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CNS', N'Central Nervous System', 1, CAST(N'2023-09-22T16:32:37.153' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'COPD', N'Chronic Obstructive Pulmonary Disease', 1, CAST(N'2023-09-22T16:32:37.157' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CPK', N'Creatine Phosphokinase', 1, CAST(N'2023-09-22T16:32:37.157' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CPR', N'Cardiopulmonary Resuscitation', 1, CAST(N'2023-09-22T16:32:37.157' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CRF', N'Chronic Renal Failure', 1, CAST(N'2023-09-22T16:32:37.160' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CRP', N'C-Reactive Protein', 1, CAST(N'2023-09-22T16:32:37.160' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CSF', N'Cerebrospinal Fluid', 1, CAST(N'2023-09-22T16:32:37.160' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CVA', N'Cerebrovascular Accident', 1, CAST(N'2023-09-22T16:32:37.160' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CXR', N'Chest X-Ray', 1, CAST(N'2023-09-22T16:32:37.160' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'D&C', N'Dilatation And Curettage', 1, CAST(N'2023-09-22T16:32:37.163' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DJD', N'Degenerative Joint Disease', 1, CAST(N'2023-09-22T16:32:37.163' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DM', N'Diabetes Mellitus', 1, CAST(N'2023-09-22T16:32:37.163' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DTP', N'Diphtheria, Tetanus, Pertussis', 1, CAST(N'2023-09-22T16:32:37.167' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DVT', N'Deep-Vein Thrombosis', 1, CAST(N'2023-09-22T16:32:37.167' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DX', N'Diagnosis', 1, CAST(N'2023-09-22T16:32:37.167' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ECG', N'Electrocardiogram', 1, CAST(N'2023-09-22T16:32:37.167' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'EKG', N'Electrocardiogram', 1, CAST(N'2023-09-22T16:32:37.170' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ECHO', N'Echocardiogram', 1, CAST(N'2023-09-22T16:32:37.170' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'EEG', N'Electroencephalogram', 1, CAST(N'2023-09-22T16:32:37.170' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'EMG', N'Electromyography', 1, CAST(N'2023-09-22T16:32:37.170' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ENT', N'Ear, Nose And Throat', 1, CAST(N'2023-09-22T16:32:37.170' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ERCP', N'Endoscopic Retrograde Cholangiopancreatography', 1, CAST(N'2023-09-22T16:32:37.173' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ESR', N'Erythrocyte Sedimentation Rate', 1, CAST(N'2023-09-22T16:32:37.173' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ESRD', N'End-Stage Renal (Kidney) Disease', 1, CAST(N'2023-09-22T16:32:37.173' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'FSH', N'Follicle Stimulating Hormone', 1, CAST(N'2023-09-22T16:32:37.173' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GERD', N'Gastroesophageal Reflux Disease', 1, CAST(N'2023-09-22T16:32:37.177' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GI', N'Gastrointestinal', 1, CAST(N'2023-09-22T16:32:37.177' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GFR', N'Glomerular Filtration Rate', 1, CAST(N'2023-09-22T16:32:37.177' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GU', N'Genitourinary', 1, CAST(N'2023-09-22T16:32:37.177' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HAV', N'Hepatitis A Virus', 1, CAST(N'2023-09-22T16:32:37.180' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HBV', N'Hepatitis B Virus', 1, CAST(N'2023-09-22T16:32:37.180' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HCT', N'Hematocrit', 1, CAST(N'2023-09-22T16:32:37.180' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HCV', N'Hepatitis C Virus', 1, CAST(N'2023-09-22T16:32:37.180' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HDL', N'High Density Lipoprotein', 1, CAST(N'2023-09-22T16:32:37.180' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HGB', N'Hemoglobin', 1, CAST(N'2023-09-22T16:32:37.180' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HIV', N'Human Immunodeficiency Virus', 1, CAST(N'2023-09-22T16:32:37.183' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HPV', N'Human Papilloma Virus', 1, CAST(N'2023-09-22T16:32:37.183' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HRT', N'Hormone Replacement Therapy', 1, CAST(N'2023-09-22T16:32:37.183' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HTN', N'Hypertension', 1, CAST(N'2023-09-22T16:32:37.183' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IBD', N'Inflammatory Bowel Disease', 1, CAST(N'2023-09-22T16:32:37.187' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IBS', N'Irritable Bowel Syndrome', 1, CAST(N'2023-09-22T16:32:37.187' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ICD', N'Implantable Cardioverter Defibrillator', 1, CAST(N'2023-09-22T16:32:37.187' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ICU', N'Intensive Care Unit', 1, CAST(N'2023-09-22T16:32:37.187' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IDDM', N'Insulin-Dependent Diabetes Mellitus', 1, CAST(N'2023-09-22T16:32:37.190' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IM', N'Intramuscular', 1, CAST(N'2023-09-22T16:32:37.190' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IUD', N'Intrauterine Device', 1, CAST(N'2023-09-22T16:32:37.190' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IV', N'Intravenous', 1, CAST(N'2023-09-22T16:32:37.190' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IVP', N'Intravenous Pyelogram', 1, CAST(N'2023-09-22T16:32:37.193' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'LDL', N'Low Density Lipoprotein', 1, CAST(N'2023-09-22T16:32:37.193' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'LFT', N'Liver Function Tests', 1, CAST(N'2023-09-22T16:32:37.193' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MI', N'Myocardial Infarction', 1, CAST(N'2023-09-22T16:32:37.193' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MMR', N'Measles, Mumps, And Rubella', 1, CAST(N'2023-09-22T16:32:37.197' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MRI', N'Magnetic Resonance Imaging', 1, CAST(N'2023-09-22T16:32:37.197' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MRSA', N'Methicillin-Resistant Staphylococcus Aureus', 1, CAST(N'2023-09-22T16:32:37.197' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MS', N'Multiple Sclerosis', 1, CAST(N'2023-09-22T16:32:37.197' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'NG', N'Nasogastric', 1, CAST(N'2023-09-22T16:32:37.200' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'NIDDM', N'Non-Insulin Dependent Diabetes Mellitus', 1, CAST(N'2023-09-22T16:32:37.200' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'NKDA', N'No Known Drug Allergies', 1, CAST(N'2023-09-22T16:32:37.200' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'NSAID', N'Non-Steroidal Anti-Inflammatory Drug', 1, CAST(N'2023-09-22T16:32:37.200' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'OCD', N'Obsessive-Compulsive Disorder', 1, CAST(N'2023-09-22T16:32:37.200' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PAD', N'Peripheral Arterial Disease', 1, CAST(N'2023-09-22T16:32:37.203' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PAP', N'Papanicolau', 1, CAST(N'2023-09-22T16:32:37.203' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PAT', N'Paroxysmal Atrial Tachycardia', 1, CAST(N'2023-09-22T16:32:37.203' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PET', N'Positron Emission Tomography', 1, CAST(N'2023-09-22T16:32:37.203' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PFT', N'Pulmonary Function Test', 1, CAST(N'2023-09-22T16:32:37.207' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PID', N'Pelvic Inflammatory Disease', 1, CAST(N'2023-09-22T16:32:37.207' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PMS', N'Premenstrual Syndrome', 1, CAST(N'2023-09-22T16:32:37.207' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PPD', N'Purified Protein Derivative', 1, CAST(N'2023-09-22T16:32:37.207' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PRN', N'As Needed', 1, CAST(N'2023-09-22T16:32:37.210' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PSA', N'Prostate Specific Antigen', 1, CAST(N'2023-09-22T16:32:37.210' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ACT', N'Activated Clotting Time', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PTH', N'Parathyroid Hormone', 1, CAST(N'2023-09-22T16:32:37.210' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PTSD', N'Post-Traumatic Stress Syndrome', 1, CAST(N'2023-09-22T16:32:37.210' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PTT', N'Partial Thromboplastin Time', 1, CAST(N'2023-09-22T16:32:37.213' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PUD', N'Peptic Ulcer Disease', 1, CAST(N'2023-09-22T16:32:37.213' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PVC', N'Premature Ventricular Contraction', 1, CAST(N'2023-09-22T16:32:37.213' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'QID', N'Four Times A Day', 1, CAST(N'2023-09-22T16:32:37.217' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'RA', N'Rheumatoid Arthritis', 1, CAST(N'2023-09-22T16:32:37.217' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'RBC', N'Red Blood Cell', 1, CAST(N'2023-09-22T16:32:37.217' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'RSV', N'Respiratory Syncytial Virus', 1, CAST(N'2023-09-22T16:32:37.217' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'Rx', N'Prescription', 1, CAST(N'2023-09-22T16:32:37.217' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SAD', N'Seasonal Affective Disorder', 1, CAST(N'2023-09-22T16:32:37.220' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SIDS', N'Sudden Infant Death Syndrome', 1, CAST(N'2023-09-22T16:32:37.220' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SLE', N'Systemic Lupus Erythematosus', 1, CAST(N'2023-09-22T16:32:37.220' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SOB', N'Shortness Of Breath', 1, CAST(N'2023-09-22T16:32:37.230' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'STD', N'Sexually Transmitted Disease', 1, CAST(N'2023-09-22T16:32:37.230' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'T3', N'Triiodothyronine', 1, CAST(N'2023-09-22T16:32:37.230' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'T4', N'Thyroxine', 1, CAST(N'2023-09-22T16:32:37.230' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TB', N'Tuberculosis', 1, CAST(N'2023-09-22T16:32:37.233' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TAH', N'Total Abdominal Hysterectomy', 1, CAST(N'2023-09-22T16:32:37.233' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TIA', N'Transient Ischemic Attack', 1, CAST(N'2023-09-22T16:32:37.233' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TIBC', N'Total Iron Binding Capacity', 1, CAST(N'2023-09-22T16:32:37.237' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TID', N'Three Times A Day', 1, CAST(N'2023-09-22T16:32:37.237' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TMJ', N'Temporomandibular Joint', 1, CAST(N'2023-09-22T16:32:37.237' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TORCH', N'Stands For A Group Of Infections That May Cause Birth Defects', 1, CAST(N'2023-09-22T16:32:37.237' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TSH', N'Thyroid Stimulating Hormone', 1, CAST(N'2023-09-22T16:32:37.240' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TURP', N'Transurethral Resection Of Prostate Gland', 1, CAST(N'2023-09-22T16:32:37.240' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'URI', N'Upper Respiratory Infection', 1, CAST(N'2023-09-22T16:32:37.240' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'UTI', N'Urinary Tract Infection', 1, CAST(N'2023-09-22T16:32:37.240' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'XRT', N'Radiotherapy', 1, CAST(N'2023-09-22T16:32:37.240' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'WBC', N'White Blood Cell', 1, CAST(N'2023-09-22T16:32:37.243' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AD', N'Autonomic Dysreflexia', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ADL', N'Activities Of Daily Living', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ADLs', N'Activities Of Daily Living', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ALL', N'Acute Lymphocytic Leukemia', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ANS', N'Autonomic Nervous System', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CI', N'Cardiac Index', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DAT', N'Direct Antiglobulin Test', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ESI', N'Epidural Steroid Injection', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IAT', N'Intra-Arterial Therapy', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IPE', N'Interprofessional Education', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MHC', N'Major Histocompatibility Complex', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'Mono', N'Mononucleosis', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'OB', N'Obstetrics', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'OT', N'Occupational Therapy', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'OTA', N'Occupational Therapy Assistant', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PAM', N'Physical Agent Modality', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PAS', N'Physician-Assisted Suicide', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PICO', N'Population, Intervention, Control, And Outcomes', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PIP', N'Proximal Inter-Phalangeal', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'POC', N'Point Of Care', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PPE', N'Personal Protective Equipment', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PT', N'Physical Therapy', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PTA', N'Physical Therapy Assistant', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ROM', N'Range of Motion', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SIT', N'Stress Inoculation Training', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'STI', N'Sexually Transmitted Infection', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TA', N'Truncus Arteriosus', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TBI', N'Traumatic Brain Injury', 1, CAST(N'2023-09-22T17:14:49.823' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DEI', N'Diversity, Equity, and Inclusion', 1, CAST(N'2023-10-20T08:13:47.317' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SOAP', N'Subjective, Objective, Assessment and Plan', 1, CAST(N'2023-10-20T08:27:50.580' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HIPAA', N'Health Insurance Portability and Accountability Act', 1, CAST(N'2023-10-20T08:30:53.763' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HIV/AIDS', N'Human Immunodeficiency Virus/Acquired Immunodeficiency Syndrome', 1, CAST(N'2023-10-20T08:37:41.300' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IPC', N'Interprofessional Collaborative Practice', 1, CAST(N'2023-10-20T08:38:27.717' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IVF', N'In Vitro Fertilization', 1, CAST(N'2023-10-20T08:39:29.553' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ABSN', N'Accelerated Bachelor of Science in Nursing', 1, CAST(N'2023-10-20T08:49:15.733' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ABCDE', N'Airway, Breathing, Circulation, Disability, and Exposure', 1, CAST(N'2023-10-20T08:49:45.020' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AML', N'Acute Myeloid Leukemia', 1, CAST(N'2023-10-20T08:50:10.520' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ANOVA', N'Analysis of Variance', 1, CAST(N'2023-10-20T08:50:37.597' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'APA', N'American Psychological Association', 1, CAST(N'2023-10-20T08:50:54.967' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BBP', N'Bloodborne Pathogens', 1, CAST(N'2023-10-20T08:51:21.307' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BCR', N'B Cell Receptor', 1, CAST(N'2023-10-20T08:51:40.060' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'BUBBLE', N'Breast, Uterus, Bladder, Bowel, Lochia, Episiotomy', 1, CAST(N'2023-10-20T08:52:24.583' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'Rh', N'Rhesus', 1, CAST(N'2023-10-20T09:02:04.760' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CDC', N'Centers for Disease Control and Prevention', 1, CAST(N'2023-10-20T09:02:42.610' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CJD', N'Creutzfeldt-Jakob Disease', 1, CAST(N'2023-10-20T09:03:08.667' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'COPM', N'Canadian Occupational Performance Measure', 1, CAST(N'2023-10-20T09:05:46.713' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CPT', N'Current Procedural Terminology', 1, CAST(N'2023-10-20T09:07:10.973' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'OB/GYN', N'Obstetrics/Gynecology', 1, CAST(N'2023-10-20T09:12:15.400' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GYN', N'Gynecology', 1, CAST(N'2023-10-20T09:12:24.583' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'UA', N'Urinalysis', 1, CAST(N'2023-10-20T09:15:32.077' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DNA', N'Deoxyribonucleic Acid', 1, CAST(N'2023-10-20T09:26:00.693' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TNM', N'Tumour, Node, Metastasis', 1, CAST(N'2023-10-20T09:28:10.920' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'R-FLACC', N'Revised Face, Legs, Activity, Cry, Consolability', 1, CAST(N'2023-10-20T09:31:05.943' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PICOT', N'Patient, Intervention, Comparison, Outcome and (Sometimes) Time', 1, CAST(N'2023-10-20T09:32:51.087' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'STEMI', N'ST Segment Elevation Myocardial Infarction', 1, CAST(N'2023-10-20T09:37:01.967' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MLS', N'Medical Laboratory Science', 1, CAST(N'2023-10-20T09:41:26.173' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HLA', N'Human Leukocyte Antigens', 1, CAST(N'2023-10-20T09:48:43.127' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DHS', N'Dapsone Hypersensitivity Syndrome', 1, CAST(N'2023-10-20T09:50:21.403' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DIP', N'Distal Interphalangeal', 1, CAST(N'2023-10-20T09:50:45.787' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HCO', N'Healthcare Organization', 1, CAST(N'2023-10-20T09:56:43.820' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ISD', N'Instructional Systems Designer', 1, CAST(N'2023-10-20T09:57:12.890' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'LCMS', N'Learning Content Management System', 1, CAST(N'2023-10-20T09:58:17.700' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'LMS', N'Learning Management System', 1, CAST(N'2023-10-20T09:58:26.207' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MLT', N'Medical Laboratory Technician', 1, CAST(N'2023-10-20T09:58:54.553' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'OPM', N'Online Program Management', 1, CAST(N'2023-10-20T10:00:02.780' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SIS', N'Student Information System', 1, CAST(N'2023-10-20T10:00:20.453' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'WBS', N'Work Breakdown Structure', 1, CAST(N'2023-10-20T10:00:39.847' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AACN', N'American Association of Colleges of Nursing', 1, CAST(N'2023-10-20T10:01:33.513' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AAN', N'American Academy of Nursing', 1, CAST(N'2023-10-20T10:01:45.660' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ACCU', N'Association of Catholic Colleges and Universities', 1, CAST(N'2023-10-20T10:02:04.200' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'CCNE', N'Commission on Collegiate Nursing Education', 1, CAST(N'2023-10-20T10:02:24.783' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ASC', N'Academic Success Coach', 1, CAST(N'2023-10-20T10:03:14.523' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'AQM', N'Admissions Quality Manager', 1, CAST(N'2023-10-20T10:04:20.910' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DCCR', N'Director of Community and Corporate Relations', 1, CAST(N'2023-10-20T10:04:44.217' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DNS', N'Director of Nursing Services', 1, CAST(N'2023-10-20T10:05:00.327' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ELAM', N'E-Learning Account Manager', 1, CAST(N'2023-10-20T10:05:19.320' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ELD', N'E-Learning Developer', 1, CAST(N'2023-10-20T10:05:56.130' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ELPA', N'E-Learning Program Administrator', 1, CAST(N'2023-10-20T10:06:16.390' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ID', N'Instructional Designer', 1, CAST(N'2023-10-20T10:07:57.743' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ASCM', N'Academic Success Manager', 1, CAST(N'2023-10-20T10:08:33.907' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PAS', N'Prerequisite Academic Student Success Coach', 0, CAST(N'2023-10-20T10:09:04.990' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PD', N'Product Development', 1, CAST(N'2023-10-20T10:09:29.373' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SD', N'Site Director', 1, CAST(N'2023-10-20T10:10:24.560' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SME', N'Subject Matter Expert', 1, CAST(N'2023-10-20T10:10:45.567' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ASD', N'Academic Site Director', 1, CAST(N'2023-10-20T10:12:48.593' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'EBP', N'Evidence-Based Practice', 1, CAST(N'2023-10-20T10:21:32.450' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'EHR', N'Electronic Health Record', 1, CAST(N'2023-10-20T10:21:49.820' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'FEMA', N'Federal Emergency Management Agency', 1, CAST(N'2023-10-20T10:22:29.137' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'FIM', N'Functional Independence Measure', 1, CAST(N'2023-10-20T10:22:46.177' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GABA', N'Gamma-Aminobutyric Acid', 1, CAST(N'2023-10-20T10:23:08.113' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GDM', N'Gestational Diabetes Mellitus', 1, CAST(N'2023-10-20T10:23:30.840' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GPA', N'Granulomatosis with Polyangiitis', 1, CAST(N'2023-10-20T10:24:03.117' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GPC', N'Giant Papillary Conjunctivitis', 1, CAST(N'2023-10-20T10:24:28.713' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'GPR', N'General Practice Residency', 1, CAST(N'2023-10-20T10:24:44.673' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'hCG', N'Human Chorionic Gonadotropin', 1, CAST(N'2023-10-20T10:25:19.760' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HDFN', N'Hemolytic Disease of the Fetus and Newborn', 1, CAST(N'2023-10-20T10:26:01.350' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'HEENT', N'Head, Eyes, Ear, Nose and Throat', 1, CAST(N'2023-10-20T10:26:39.127' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IADL', N'Instrumental Activities Of Daily Living', 1, CAST(N'2023-10-20T10:27:22.347' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IADLs', N'Instrumental Activities Of Daily Living', 1, CAST(N'2023-10-20T10:27:31.990' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IDEA', N'Individuals with Disabilities Education Act', 1, CAST(N'2023-10-20T10:28:00.727' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IEP', N'Individualized Education Plan', 1, CAST(N'2023-10-20T10:28:34.753' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IFSP', N'Individualized Family Service Plan', 1, CAST(N'2023-10-20T10:29:05.197' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'LAS', N'Lymphadenopathy Syndrome', 1, CAST(N'2023-10-20T10:29:30.950' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'LOCF', N'Levels of Cognitive Functioning Scale', 1, CAST(N'2023-10-20T10:30:13.617' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MCP', N'Metacarpophalangeal', 1, CAST(N'2023-10-20T10:30:36.430' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MLA', N'Modern Language Association', 1, CAST(N'2023-10-20T10:31:44.350' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'MTCT', N'Mother-to-Child Transmission', 1, CAST(N'2023-10-20T10:32:06.667' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'NCLB', N'No Child Left Behind', 1, CAST(N'2023-10-20T10:32:32.630' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'OTC', N'Over-The-Counter', 1, CAST(N'2023-10-20T10:33:08.403' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'PB', N'Peripheral Blood', 1, CAST(N'2023-10-20T10:34:19.033' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'pH', N'Potential Hydrogen', 1, CAST(N'2023-10-20T10:36:18.880' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'POV', N'Point of View', 1, CAST(N'2023-10-20T10:37:33.710' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'QC', N'Quality Controls', 1, CAST(N'2023-10-20T10:38:13.587' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'QSEN', N'Quality and Safety Education for Nurses', 1, CAST(N'2023-10-20T10:38:32.567' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SARS', N'Severe Acute Respiratory Syndrome', 1, CAST(N'2023-10-20T10:41:02.020' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SBAR', N'Situation-Background-Assessment-Recommendation', 1, CAST(N'2023-10-20T10:41:20.933' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TBSA', N'Total Body Surface Area', 1, CAST(N'2023-10-20T10:41:49.187' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TCR', N'T Cell Receptor', 1, CAST(N'2023-10-20T10:43:59.850' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TPAL', N'Term Births, Preterm Births, Abortions, Living Children', 1, CAST(N'2023-10-20T10:45:17.400' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'APGAR', N'Appearance, Pulse, Grimace, Activity, and Respiration', 1, CAST(N'2023-10-20T11:10:36.490' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'RAAS', N'Renin-Angiotensin-Aldosterone System', 1, CAST(N'2023-10-20T15:51:13.920' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SER', N'Smooth Endoplasmic Reticulum', 1, CAST(N'2023-10-20T15:58:55.010' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'RER', N'Rough Endoplasmic Reticulum', 1, CAST(N'2023-10-20T15:54:08.653' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'ATP', N'Adenosine Triphosphate', 1, CAST(N'2023-10-20T16:19:53.167' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'DHQ', N'Donor History Questionnaire', 1, CAST(N'2023-10-20T16:20:39.360' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IgE', N'Immunoglobulin E', 1, CAST(N'2023-10-20T16:21:07.433' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'IgG', N'Immunoglobulin G', 1, CAST(N'2023-10-20T16:21:24.737' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'NPN', N'Non-Protein Nitrogen', 1, CAST(N'2023-10-20T16:22:41.020' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'SPEP', N'Serum Protein Electrophoresis', 1, CAST(N'2023-10-20T16:23:12.783' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'TDM', N'Therapeutic Drug Monitoring', 1, CAST(N'2023-10-20T16:23:41.257' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'O2', N'Oxygen', 1, CAST(N'2023-10-20T16:35:37.123' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'A&P', N'Anatomy and Physiology', 1, CAST(N'2023-10-20T13:52:51.293' AS DateTime))
GO
INSERT [medicalAbbreviations] ([medicalAbbreviation], [medicalTerm], [active], [createDate]) VALUES (N'E. Coli', N'Escherichia Coli', 1, CAST(N'2023-10-20T13:53:51.293' AS DateTime))
GO

SET IDENTITY_INSERT [lmsConnections] ON 
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (4, 21, N'neu_blackboard', N'3A0l0y6e~sJksaksyTSsusgDgpefnry0RIE0Ew6wbF6thUfTEEYrvWV1SVrnRxGniecJF', N'Blackboard Learn', NULL, NULL, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (5, 17, N'Marian_Canvas', N'4117~OldMacDonaldHadAFarm-EIEIO1SVrnRxGniecJFp1OZfCoFjulie4', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (6, 18, N'Marquette_Canvas', N'3N0u0m6e~nJFslkuymTesnsqDupefry0RE0w6bF6tUfYrvWV1SVrnGniecJFp1OZfCoFj', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (7, 25, N'Roseman_Canvas', N'U3S2N0u0smn6UeS~NnuJsFnsSlJkuymyNCP0w6bF6tUfYrvWV1SVrnGenieJp1OZfUtNv', N'Canvas', N'cloud', NULL, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (8, 30, N'Utica_Canvas', N'zMUo3oSs2eNT0rua0x6U~NMnouoJsseFTnrsaSxmyNCP0w6bF6tUYrvV1SVrnTraxJp1fU', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (9, 27, N'StKate_Canvas', N'W3i0l0d6c~aJtsskMyoTtshseDrpSferrya0pRhIiEn0eEIwr6ewlbaFn6dYrvWVnRxcF', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (10, NULL, N'canvas', N'3006~JskyTssDpfry0RIE0Ew6wbF6thUfTEEYrvWV1SVrnRxGniecJFp1OZfCoFjutie4', N'Canvas', NULL, NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (11, 23, N'Orbis_Canvas', N'2919F630-C336-A4DB-3CCE5F4F84609A2C-256B454D-F7C4-3AAD-82599FDACF18A12F', N'Canvas', N'cloud', NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (12, 32, N'ConcordiaPortland', N'4EE9F28C-A27D-A917-3696793339EF255C', N'Blackboard Learn', NULL, NULL, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (14, 31, N'Xavier_Canvas', N'DArtagnanMu$k3teer11084211416', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (15, 18, N'Marquette_D2L', N'D2L0RE0w6bF6tUfYrvGniecJFp1OZfCoFj3N0u0m6lkuymTesnsqDupef', N'Desire2Learn', NULL, NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (16, 7, N'ConcordiaTexas', N'C7B225B8-F3B3-A02C-35830DF2066400C9', N'Blackboard Learn', N'3900.80.0-rel.22+521f7fd', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (17, 27, N'StKate_D2L', N'D2L-W3i0l0d6c~aJtsskDTtshseDrpSferrya0pRhIiEn0eEIwr6ewlbaFn6dYrvWVnRxcF', N'Desire2Learn', NULL, NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (18, 7, N'ConcordiaTexasGrnd', N'D8C326B9-G4B4-A02D-46941FG3178900Z9', N'Blackboard Learn', N'3900.80.0-rel.22+521f7fd', NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (19, 14, N'Loyola_Sakai', N'2017~JrkaTmsBplri0NIG0Ww0wlFfthU-EYrvWV1SVrnRxG-0620', N'Sakai', NULL, 0, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (20, 15, N'Madonna_Bb', N'3011CA95-A4F2-D5D8-A944E1A8EC685903-20170907', N'Blackboard Learn', NULL, 0, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (21, 23, N'Testing Non LTI Request', N'fredfredfred', N'NA', NULL, 0, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (22, 15, N'Madonna_Canvas', N'2u]=t%$"z(~eN!8Y^]@Wt)k4x!B^GJfj{=n"J+S!', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (23, 9, N'Felician_Canvas', N'82BF663A-C071-20F5-5BE5E6EE304690F7', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (24, 19, N'Mercer_Canvas', N'5B11BD659-ECDB-AD9FBA256788E6A5', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (25, 20, N'Misericordia_Canvas', N'bfd06ba8-b7c4-4014-a2cf-94445f6dec5c', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (26, 9, N'Felician_D2L', N'ce8016f6-a65c-4a1d-9988-38b2e73411fa', N'Desire2Learn', NULL, 0, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (27, 20, N'Misericordia_Bb', N'56719004-a0f0-475f-b29b-6cbfede308bb', N'Blackboard Learn', N'3900.80.0-rel.22+521f7fd', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (28, 11, N'Harcum_Canvas', N'4e7cda05-c4ae-4e50-b084-085f15e6b5ea', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (29, 28, N'StThomas_Bb', N'5fcfea5e-a9f4-448b-9c0b-5fec44ceb872', N'Blackboard Learn', N'3900.80.0-rel.28+80fe7a8', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (30, 6, N'ConcordiaStPaul_Bb', N'39ee01f6-a084-4faf-b98a-5c75865e7768', N'Blackboard Learn', NULL, 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (31, 29, N'IncarnateWord_Canvas', N'f562e990-fb64-4988-818e-887d8d35bba4', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (32, 10, N'GrandCanyon_LC', N'1ba00836-257d-4733-99d5-f83dbe5e56eb', N'LoudCloud/Halo', N'7.3', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (33, 6, N'ConcordiaStPaul_Bb_SME', N'3c98f32e-b506-4741-bb97-289e3b891d4e', N'Blackboard Learn', NULL, NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (34, 29, N'IncarnateWord_Canvas2', N'515ae3c0-c883-49f1-bdac-9071279f6a29', N'Canvas', N'cloud', 0, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (35, 17, N'Marian_Ground', N'9FA57F3F-905C-31B4-B3AA0E7DDB27191F', N'Canvas', N'cloud', NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (36, 22, N'NotreDame_Canvas', N'dcba8eda-4117-4018-9cc8-7170caef2055', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (37, 1, N'Averett_Canvas', N'538beb4b-9454-41a6-a7dc-587886f1011d', N'Canvas', N'cloud', 1, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (38, 31, N'Xavier_Canvas02', N'54455a31-5d28-4a36-90fb-b5930eef9226', N'Canvas', N'cloud', NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (39, 11, N'Harcum_Canvas02', N'f8b544be-b4e7-4d01-893f-0600c6158542', N'Canvas', N'cloud', NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (40, 26, N'SaintLouis_Bb', N'b10b1f6e-7968-463e-b0a6-971559641650', N'Blackboard Learn', NULL, NULL, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (41, 18, N'Marquette_DEMSN', N'5e73fad2-aff5-4477-be74-184fff48b46a', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (42, 8, N'Dominican_Canvas', N'ee126353-9df4-4919-b6a8-d1b133813ebb', N'Canvas', N'cloud', 1, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (43, 2, N'Bellarmine_Canvas', N'02a7bc0b-3a21-408f-9a81-085f31025654', N'Canvas', NULL, 1, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (44, 26, N'SaintLouis_Canvas', N'538a151e-4da9-4121-8e8b-763ae612ac9c', N'Canvas', N'cloud', 1, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (45, 2, N'Bellarmine_Moodle', N'98ea7a17-cd7e-4304-9276-ca2ae14652fe', N'Moodle', NULL, 1, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (46, 26, N'SaintLouis_Canvas02', N'9a12eaf4-7b41-495a-b556-a3b17c895581', N'Canvas', N'cloud', NULL, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (47, 24, N'Pacific Lutheran Canvas', N'2b13ca6f-813e-460d-bc9b-ebbe3f958e35', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (48, 12, N'Harding University Canvas', N'06ad99c1-0ab2-420c-a6e6-f2303d1d0a41', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (49, 5, N'College of Mount Saint Vincent_Canvas', N'4b195e35-d450-47c6-bf6e-3f9cd46add3e', N'Canvas', N'cloud', 1, NULL, 0, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (51, 23, N'Orbis_Bb', N'6a3bc777-ac68-4b85-8174-8abfa3d6503f', N'Blackboard Learn', N'3900.78.0-rel.23+5efc216', NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (52, 5, N'College of Mount Saint Vincent_Ground_Canvas', N'15037bbe-89c5-40d2-bc11-87d312352292', N'Canvas', N'cloud', NULL, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
INSERT [lmsConnections] ([connectionID], [partnerID], [connectionName], [connectionKey], [lmsName], [lmsVersion], [ltiConnection], [updatedBy], [active], [createDate], [updateDate]) VALUES (53, 13, N'ConcordiaIrvine_Canvas', N'a886c396-43cc-4134-979a-c6e1281e7fd7', N'Canvas', N'cloud', 1, NULL, 1, CAST(N'2023-07-22T20:53:47.757' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [lmsConnections] OFF
GO

INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (211, N'ABG Interpretations Practice and Activity LO_211')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (303, N'ABG Practice LO_303')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1149, N'AML Alternative Names Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'AML Subtype')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'APA Activities')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1098, N'Acquired Hemolytic Anemias')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Active Childbirth- Maternal Child Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Active and Passive Insufficencies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Acute vs Chronic Inflammation Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1437, N'Adult Health Cardiovascular and Respiratory Illnesses LO_1437')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1038, N'Advantages of Cloud Computing')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Alterations in the Reproductive System - Part 1 Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Alterations in the Reproductive System - Part 2 Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Amebas: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Archive')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Anatomy')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (989, N'Antibiotic Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'AntifungalDrugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1560, N'Antigen-Antibody Part 1 LO_1560')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1561, N'Antigen-Antibody Part 2 LO_1561')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (170, N'Appendicular Skeleton Lab Demonstration LO_170')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (367, N'Appendicular Skeleton Matching LO_367')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Approaches to Intervention')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (962, N'Arizona Nurse Practice Act Legal and Ethical')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Arterial Blood Gas Practice')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (390, N'Arterial Pulse Sites Matching LO_390')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (372, N'Arteries Identification Matching LO_372')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (171, N'Arteries Lab Demonstration LO_171')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Arthropods: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (748, N'Assessment Data Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Assistive Devices')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1123, N'Assistive Devices and Adaptive Equipment')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Assistive Technology Matching Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (202, N'Auscultatory Areas Matching LO_202')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Autonomic Nervous System')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (434, N'Axial Skeleton Lab Demo LO_434')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (366, N'Axial Skeleton Matching LO_366')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (973, N'Axial and Appendicular Skeleton')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Basic Assumptions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (541, N'Bed and Patient Positioning')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Behavior-Change-Model - NEU')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Behavioral Change Models - Orbis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1180, N'Benign WBC Disease Characteristics')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Benner''s')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (524, N'Bioethics and Moral Theory')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Blackboard Projects')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Blood Bank Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (767, N'Blood Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1066, N'Blood Composition')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1055, N'Blood Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Blood Transfusion Process')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1185, N'Blood Type Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (635, N'Body Functions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (84, N'Body Percept or Praxis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (489, N'Brain Illustration Component Matching LO_489')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Brain Injuries - Part 1')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (416, N'Brain Injuries Part 2')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (176, N'Brain Lab Demonstration LO_176')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (6, N'Brain Model Matching LO_6')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (878, N'Brain and Cranial Nerves Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Breath Sounds Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Burn Classification')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (642, N'Burns Case Study 1 LO_642')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (671, N'Burns Case Study 2 LO_671')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (672, N'Burns Case Study 3 LO_672')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Business Dimensions of Health Care - Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'CNS_StimulantTnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (363, N'COPD with Pneumonia Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'CPT Code Matching Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Calculating Hematology Dilutions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1086, N'Calculating RBC Indices')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Cancer TMN Staging Method')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Captivate HTML Output')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (350, N'Cardiac Matching LO_350')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Cardiac TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (386, N'Cardiovascular Case Study 1 LO_386')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (387, N'Cardiovascular Case Study 2 LO_387')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (385, N'Cardiovascular Case Study 3A LO_385')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (384, N'Cardiovascular Case Study 3B LO_384')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (343, N'Cardiovascular System Generic vs. Trade Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Cardiovasular Terms')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Care During Active Labor')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (389, N'Cell Component Matching LO_389')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Cell Counter Histograms')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (177, N'Cell Lab Demonstration LO_177')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Cell Maturation')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (169, N'Cell Structures and Tissues Lab Demonstration LO_169')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (458, N'Cells Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (695, N'Central Nervous System Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1523, N'Centrifuge Matching LO_1523')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Cestodes: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (510, N'Chain of Infection')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Change Terms and Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Characteristics of L1, L2, L3')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Characteristics of Lipid Storage Disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Chemical Basis of Life')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (658, N'Chemical Principles Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (502, N'Chemistry Terms Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Child Abuse and Pediatric Emergencies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Childhood Mental Health Disorders - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'ChildhoodMentaHealthDisorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'CholinergicDrugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Chronic Conditions Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1107, N'Classifying Anemias')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (646, N'Client Learning and Objectives')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1251, N'Clinical Judgment')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Clinical Research Abstracts')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'CoagulationModifierDrugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1238, N'Common Fahrenheit & Celsius Temperatures')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Communication, Techniques in the Communication Process and Conflict Management')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1334, N'Community Health Case Study - Covid19 LO_1334')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'CommunityNeedsAssessmentTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Comparing Research, Evidence-Based Practice, and Quality Improvement')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1531, N'Complement Activation LO_1531')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (460, N'Connective Tissue Matching LO_460')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1314, N'Control of Gene Expression')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (348, N'Control of Microbes Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1243, N'Converting Fahrenheit and Celsius')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Critical Goals of Gait Phases')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Critical Thinking Process Matching (BLS 4610)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Cryotherapy and Thermotherapy')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (361, N'Cups and Syringe Dosage LO_361')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1177, N'Cytochemical Stains')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (357, N'DNA Structure LO_357')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1043, N'Debatable Thesis vs Statement of Fact')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1046, N'Delegation Simulation LO_1046')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Dementia, Delirium, Depression')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Dependent Transfer Training Intervention')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (970, N'Depressant Classifications and Medications')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1178, N'Descriptions of Myelodysplastic Syndromes')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Determine the Dosage')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Developmental Grasp Patterns Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Developmental vs. Situational Stress')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (304, N'Diabetes Mellitus: Type 1 or 2? LO_304')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (566, N'Diagnosis Review Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Digestive System')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (768, N'Digestive System Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Digestive System Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Digestive System Drag and Drop')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (178, N'Digestive System Lab Demonstration LO_178')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (155, N'Digestive System Matching LO_155')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (307, N'Digestive System Terms Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1241, N'Dilutions of Dilutions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1024, N'Disability in Adolescence and Adulthood Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1031, N'Disability in Family and Childhood Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Disorder Identification Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Documentation Classification')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Dosage Calculations')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'ECG Pharmacology LO')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EHR')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EHR Generic')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EHR Medication Administration')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EHR Updates')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EHR1')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EHR2')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EHR4')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EKG Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (933, N'EKG Interpretation 2 LO_933')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (305, N'EKG Interpretation LO_305')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (919, N'EKG Readings LO_919')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'ELD- In Progress')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'ELD- Non Storyline')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'EMW & Alternative Therapies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (449, N'Ear & Eye Matching LO_449')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (4, N'Ear Illustration Matching LO_4')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (175, N'Ear Lab Demonstration LO_175')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (479, N'Ear Organ Model Matching LO_479')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Ecology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Effective vs. Ineffective Research Questions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Electrolyte Identification Matching (MLS 4110)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (362, N'Electron Configuration LO_362')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Elements of a Short Story - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Elevator Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (445, N'Elimination Drugs Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Elimination Drugs Matching (Orbis)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Embryology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Embryology Drag and Drop')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Endocrine Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Endocrine Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (994, N'Endocrine Glands Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (694, N'Endocrine System Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Endocrine System Drag and Drop')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (329, N'Endocrine System Generic vs. Trade Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (310, N'Endocrine System Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (306, N'Endocrine Terms Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Endocrine Word Parts Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (328, N'Endocrine system drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1148, N'Eosinophilia vs Eosinopenia')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (365, N'Epithelial Muscle and Tissue Matching LO_365')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (499, N'Equivalencies Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1071, N'Erythrocyte Membrane Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1090, N'Erythrocyte Metabolism')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Erythropoiesis Development Table LO')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Euthanasia & PAS')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Evidence Hierarchy Multiple Choice')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1252, N'Evidence-Based Medicine Triad Venn Diagram')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1257, N'Evidence-Based Practice Process Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Evidence-based Medicine Terms and Definitions (BLS 4610)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1077, N'Extravascular Hemolysis Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Eye & Ear Lab Demonstration')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (478, N'Eye Illustration Matching LO_478')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (174, N'Eye Lab Demonstration LO_174')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (5, N'Eye Model Matching Activity LO_5')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'F and C Temperature Conversion')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Factors that Contribute')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (647, N'Family Home Visit Prioritization')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Female Reproductive System')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Female Reproductive System Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (369, N'Female Reproductive System Matching LO_369')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (290, N'Female Reproductive System Physiology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (519, N'Female Reproductive and Infertility Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'FemaleReproductiveSystem')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Filariae: Who am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1240, N'Find the Diluent')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1237, N'Find the Dilution')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1239, N'Find the Solute')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Flagellates-Who Am I')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'FluidElectrolyteNutritionTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Food Plate')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (206, N'Food Plate Activity LO_206')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (286, N'Foot Matching LO_286')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Frames of Reference')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Functional Organization of Nervous Tissue')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Functional Organization of the Endocrine System Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Fundamental Case Study Pressure Injury')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (355, N'Fungal Infections Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (345, N'GI Generic vs. Trade Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'GPC Concept Map (MLS 4250)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'GPR Concept Map (MLS 4520)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Gait Deviation')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (985, N'Gait Patterns')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Gastro Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1242, N'General Metric Conversions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'General Research Terminology - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (427, N'General Research Terminology LO_427')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (164, N'General and Local Anesthetics Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Genetics')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'GestationalAgeAssessmentTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Globin Chain Synthesis LO')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Goniometric Placements LE')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Goniometric Placements UE')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Good or Bad Blood Smears Matching (MDLS 316)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Gram Negative Organisms That Do Not Grow on MAC')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1096, N'Gram Stain Flow Chart')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Group vs Team')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (802, N'Growth and Development Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'GrowthandDevelopmentTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Guess The APGAR Score')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'HIPAA')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (738, N'HIPAA Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'HVPC Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (447, N'Hand Matching LO_447')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hand and Foot Matching LO 446')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Health Assessment Interview Techniques')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Health Assessments Terms and Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Health Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Healthcare System Terms and Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1062, N'Heart Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (926, N'Heart Failure LO_926')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (180, N'Heart Lab Demonstration LO_180')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Heart Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Heart and Breath Sounds Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'HeartMatching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Helminths, Specimen Collection Processing, and Artifacts Round 1')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1084, N'Hemacytometer Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hematologic System Generic vs. Trade System Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1082, N'Hematology Lab Testing')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1140, N'Hematology Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hematopoiesis LO')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1073, N'Heme Synthesis Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1012, N'Hemodynamic Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hemoflagellates: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hemoglobin Composition Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1070, N'Hemoglobin Derivatives')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1091, N'Hemoglobin Electrophoresis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hemoglobinopathies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1361, N'Hemostasis Specimen Management')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hemostasis and Thrombosis (BLS 4220)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (156, N'Hepatobiliary System Matching LO_156')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (520, N'Historic Nurses Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'History and Law of  Disability in Society')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'History of Microbiology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (521, N'Home Modifications and Assessment LO_521')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (161, N'Hormone Table')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (462, N'Host Microbe Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (457, N'Host Pathogen Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'How to Critique Presentations')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Human Body Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Hydrotherapy')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'HypothesisTestingTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'IPE, IPC and Triple Aim')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (498, N'IV Orders Matching LO_498')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (7, N'IV Starts Matching LO_7')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'IV_Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Identifying Microscope Parts Matching (MDLS 316)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1058, N'Immune System Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'ImmunizationMatching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1165, N'Immunodeficiencies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Infection Drugs-Accessible Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (324, N'Infection Generic vs. Trade Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (527, N'Informed Consent')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Insulin - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Insulin onset, peak, and duration')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Intake Output')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Integumentary System')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Intermittent Pneumatic Compression')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Intro to Anatomy and Physiology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Intro to Religion')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Introduction to Law and Ethics')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Iontophoresis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Iron Panel')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Job Satisfaction Contributors')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Joint Motions, planes & axes')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Knightsburg District')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'LOs to Add Copyrights')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (259, N'Labor and Delivery LO_259')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1011, N'Law, the Courts, and Contracts')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Leadership - Scheduling Conflict')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Legal Terms Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Legal and Ethical Issues in Nursing')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1139, N'Leukemoid Reaction Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (522, N'Levels of Consciousness')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (354, N'Lewis Dot Structure LO_354')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Limb Action of Gait Phases')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1268, N'Lipid Assays Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Lipoproteins: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Literature Search Matching (BLS 4610)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Lymphatic System Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Lymphopoiesis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Male Reproductive System')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1060, N'Male Reproductive System Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (370, N'Male Reproductive System Matching LO_370')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Male Reproductive and Infertility Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MaleReproductiveSystem')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Manager Mentor Program Decision Tree')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Manual Muscle Test Grades - Storyline output')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Manual PLT Count')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1111, N'Manual RBC Counts')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1160, N'Manual WBC Counts')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Marian Lab Demo Video Player')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Maslow''s Hiearchy of Needs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Maternal Child Breastfeeding Client')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Maternal Child Care Case Study-Newborn Care')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Maternal Health - Feeding - Breast or Bottle')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Maternal High Risk Case Study UIW')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MaternalConditionsAndTheirEffects_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1161, N'Mature Lymphoid Disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Measurement Abbreviations - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (274, N'Measurement Abbreviations LO_274')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Measurement Equivalencies Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (828, N'Measuring Goniometer Angles: Advanced LO_828')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (800, N'Measuring Goniometer Angles: Basics LO_800')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (565, N'Mechanisms of Hypersensitivity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Medical Abbreviations Part 1')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Medical Abbreviations Part 2')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1001, N'Medical Records and Informed Consent')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MedicalAbbreviations_1_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MedicalAbbreviations_2_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MedicalAbbreviations_3_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MedicalAbbreviations_5_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MedicalAbbreviations_5_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'MedicalAbbreviations_6_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Medication Abbreviation Matching 1 & 2')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Megakaryopoiesis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Mental Health  Depression in Older Adults Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1226, N'Mental Health Eating Disorder Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1227, N'Mental Health PTSD case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1220, N'Mental Health Panic Disorder Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Metabolism Key Vocabulary Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (656, N'Micro Metabolism Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1236, N'Micro-Milli Metric Conversions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (655, N'Microbial Diseases Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (654, N'Microbial Genetics Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Microcytic Hypochromic Anemias')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Microscope (Foundations of MLS)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1311, N'Military Time Conversion')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1189, N'Miscellaneous Protozoa - Who am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Mitochondria and Respiration Key Vocabulary Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (351, N'Mixing Insulin')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Modification Techniques - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (451, N'Modifying Client Behavior Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Module 8 Matching Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Monopoiesis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1199, N'Monospot Results')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (976, N'Muscle Contractions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Muscle Gross Anatomy')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (892, N'Muscle Terms Matching LO_892')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Muscles')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (182, N'Muscles I - Head & Neck -Lab Demo LO_182')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (183, N'Muscles II - Torso -Lab Demo LO_183')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (184, N'Muscles III - Upper Extremity -Lab Demo LO_184')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (188, N'Muscles IV - Lower Extremity -Lab Demo LO_188')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (375, N'Muscles of the Head & Neck Matching Activity LO_375')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (378, N'Muscles of the Lower Extremity Matching Activity LO_378')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (376, N'Muscles of the Torso Matching Activity LO_376')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (377, N'Muscles of the Upper Extremity Matching Activity LO_377')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (889, N'Muscular System Medical Terms Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (747, N'Musculoskeletal System Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1162, N'Mutations Specific to Malignancies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Myeloblasts vs Lymphoblasts')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Myeloproliferative Neoplasm Subtype Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'NDMU Scavenger Hunt')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'NDMU Scavenger Hunt - Important Information')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (463, N'Natural Selection')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Nematodes: Who am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Neurologic and Neuromuscular Disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1, N'Neurological Disorders Terms and Definitions LO_1')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Neurological Generic vs Trade Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Neurological System Drugs Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (450, N'Neurotransmitter Functions Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1159, N'Neutrophilia vs Neutropenia')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Newborn High Risk Case Study- Trauma (NUR 4450)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (455, N'Nontherapeutic Communication Techniques')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1255, N'Normal Platelet Function Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (298, N'Nursing Administration Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (753, N'Nursing Licensure, Critical Thinking, and Cultural Competency Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1303, N'Nursing Process Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (597, N'Nursing Roles')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Nursing Theorists Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Nursing Theorists Matching (NUR 329)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Nursing Timeline')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Nutrition')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1235, N'OB Medications Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'OT Practice Framework')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'OT Process Components')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'OTC Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (636, N'Offering Constructive Feedback')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (388, N'Organ Donation LO_388')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Organ-Operation-4-22-14')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'OrganDonation')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Osmotic Hydrostatic Pressure')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Osmotic Hydrostatic Pressure Demo')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'OsmoticHydrostaticPressure')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (648, N'Osteoarthritis and Rheumatoid Arthritis Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1078, N'Oxygen Binding to Hemoglobin Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Oxygen Dependent & Independent Killing')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (649, N'Oxygen Devices Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Oxygen Dissociation Curve')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1080, N'Oxygen Release from Hemoglobin Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'PICO Clinical Questions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'PROM sequencing')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'PT Lab Safety Identification')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (991, N'Pain Management Case Study LO_991')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (979, N'Pain and Inflammation Drugs Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pain and Inflammation Generic vs Trade Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (282, N'Pain-Related Terms and Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (347, N'Parasite Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Parasites Introduction')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (528, N'Paternalism and Patient Autonomy')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1370, N'Pathogenicity Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pathology Scenarios')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (595, N'Patient De-escalation')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Patient Threats and Safety Measures')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pediatric Case Study End of Life')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pediatric Child Abuse Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1099, N'Pediatric Cultural Care Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pediatric Obesity and Hypertension Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pediatric Seizures Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pedigree Activity 01')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (746, N'Peds 2 EHR LO_746')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1063, N'Pelvic Tilt and Hip Flexion and Extension LO_1063')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1650, N'Performing a Total Protein Assay LO_1650')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1007, N'Peripheral Circulation and Regulation Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Peripheral Nervous System')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1032, N'Personal Protective Equipment (OTA Version) LO_1032')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Personal Protective Equipment (PPE) Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (540, N'Personal Protective Equipment (PPE) Activity LO_540')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pharmacology - Roseman')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pharmacology Family Case Studies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (594, N'Phases of the Nursing Process - Terms and Definitions LO_594')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (529, N'Philosophical Justice and Healthcare')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Philosophy')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Physical Assessment Techniques')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (749, N'Physical Assessment of the Abdomen')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Physical Therapy Equipment Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Physical Therapy Equipment Use')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Physician Order Form')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Plasmodium-Babesia: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (684, N'Playground Assessment LO_684')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Positioning Pressure Point')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Practice Dilutions Thoma Pipette')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (651, N'Pressure Ulcer Review')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Pretransfusion Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (703, N'Primary Team Member Roles')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Profession Criteria Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Profession Terminology Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (752, N'Professional Nursing, Image, and Values Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Progressive and Degenerative Neuro Disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Proteins')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Protozoa, Specimen Collection-Processing, and Artifacts Round 1')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Psychology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (158, N'Psychotherapeutic Drugs Terms and Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1631, N'Psychotic Client Case Study LO_1631')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Punnett Square')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (645, N'Quarantine Process Prioritization')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'RBC Production Disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'RCT Study Design')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'RCT Study Design_Orbis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'RNA Splicing: Splice the Message')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'ROM')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (356, N'Reading Medication Labels LO_356')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Reflex and Postural Control Response')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Religion')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1223, N'Renal Diagnosis Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1027, N'Representing Disability in Literature and Film')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Reproductive Cycle phases')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Reproductive Phases Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (531, N'Reproductive Technology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Research')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Research Ethics Multiple Choice (BLS 4610)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Research Path Flow Chart')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Research Terminology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Respiratory - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Respiratory Disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (187, N'Respiratory Lab Demonstration LO_187')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (438, N'Respiratory Pathogens Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Respiratory System Braingame')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1056, N'Respiratory System Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (346, N'Respiratory System Generic vs. Trade Drugs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (371, N'Respiratory System Matching LO_371')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1100, N'Reticulocyte Counts & Adjustments')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1045, N'Revising Academic Paragraphs')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1230, N'Risks to Client Safety')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Role of OT in School Settings Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'SCI Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'SOAP Note Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (632, N'SOAP and SBAR Practice')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'SPICES Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'STDs Matching Rebuild')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Sampling and the Cental Limit Theorem - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Sampling and the Central Limit Theorem')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Scavenger Hunt - Important Information Misericordia')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Scavenger Hunt - Who to Contact Utica')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1225, N'Scientific Method for Research Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Sensory Preceptions Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Sensory Preceptions Matching DUP OLDER')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (80, N'Sensory System Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1234, N'Serial Dilutions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (638, N'Service Learning, Social Justice and Occupational Therapy')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (89, N'Service Management Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Setting Identification')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Sexually Transmitted Infections (STI) Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Shape and Configuration of Skin Lesions Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Short Story')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1041, N'Shoulder Girdle and Scapulohumeral Rhythm LO_1041')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Sickle Cell Pathology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1182, N'Sickle Cell Pathology Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (401, N'Skeletal System Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Skeletal System Roots Suffix Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (964, N'Skin Lesions Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (185, N'Spinal Cord Lab Demonstration LO_185')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (368, N'Spinal Cord Matching LO_368')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Spinal Traction')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'St. Kate - Fieldwork Intro Video')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Stage of Personality Development - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (754, N'State Nurse Practice Act, Legal and Ethical Aspects of Nursing, and Nursing Theory Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Statistics')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'StatisticsIntroTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1087, N'Stem Cell Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Stem Cells and Cancer Vocabulary Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Steps in Intravascular Hemolysis')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Storyline Archive')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Storyline V1')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Storyline V2')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Storyline V3')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (212, N'Study Design Activity LO_212')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Subjective vs. Objective Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1228, N'Substance Use Disorder Case Study')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Subtypes of ALL (Cell Surface Markers) Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Sugar Levels in Foods Accessible Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Swf to Storyline')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Symbol Abbreviation Matching Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'SymbolsAbbreviationsMatching_1_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'SymbolsAbbreviationsMatching_2_TND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (951, N'Sympathetic and Parasymathetic Nervous System Matching LO_951')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1554, N'T-Cells and B-Cells: Cognate Pairs LO_1554')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (804, N'TB Skin Tests LO_804')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'TBI Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'TENS & IFC')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'TMN Staging Method')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1044, N'Technical Standards')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Teen Pregnancy Case Studies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Teen Pregnancy V1 Utica (And Marquette  5A & B Split)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Teen Pregnancy V2 Marian')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Teen Pregnancy V3 CTX')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'TestsofFetalWellBeingTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Thalassemia LO')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (776, N'The Heart Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (890, N'The Integumentary System Terms Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'The Microbial World and You')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (755, N'The Nursing Process, Quality Care, and QSEN Competencies Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1015, N'The Special Senses Brain Game')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (508, N'Theories of Grief')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Theories of Grief Click Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (454, N'Therapeutic Communication Techniques')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (513, N'Therapeutic Communication for Psychotic Disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Therapeutic Drug Monitoring (TDM) - Terms and Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Therapeutic Massage')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Thesis Statements Multiple Choice')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Thoma Pipette')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Tips for Oral Presentations Matching (BLS 4610)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Tips for Success')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1501, N'Toll-Like Receptors LO_1501')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Toxic Substance Identification: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Trace or Toxic Element Identification_Who Am I')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'TransculturalNursingTND')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Transfer Training Intervention')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Trematodes: Who Am I?')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (491, N'Triage Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (699, N'True or False Labor')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Type I and Type II Errors Activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Type I or Type II Errors')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (507, N'Types of Anemia')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Types of Anemias')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Types of Care for Aging Population')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Types of Physical Assessment')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Ultrasound')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Unfolding Case Studies')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Unfolding Case Studies (1)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (673, N'Upper Extremity Muscle and Joint Matching LO_673')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1313, N'Urinalysis Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1061, N'Urinary System Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (379, N'Urinary System Lab Demonstration LO_379')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (157, N'Urinary System Matching LO_157')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (523, N'Urinary System Terms and Definitions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1497, N'Using Different Types of Pipettes LO_1497')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1550, N'Using a Centrifuge LO_1550')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1551, N'Using an Analytical Balance LO_1551')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1081, N'VCS Technology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (373, N'Veins Identification Matching LO_373')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (186, N'Veins Lab Demonstration LO_186')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1092, N'Venipuncture Ordering')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1048, N'Vertebral Column and Trunk LO_1048')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1059, N'Vessels Concept Map')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Vision and Cognitive Impairment - TermsDnD')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Visual Perception')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Visual Perception Skills')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Weak versus Effective Research Thesis Statements')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (644, N'Weight Bearing Precautions')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Weight Conversion')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'What Medication Am I')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (1200, N'What to do With a Dilution')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'White Blood Cell Function Matching (MDLS 316)')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Who to Contact Scavenger Hunt - Misericordia')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (289, N'Windshield Survey Matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Writing an Academic Essay')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Xavier')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'Xavier Micro')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (583, N'anxiety and antipsychotic matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'anxiety matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'behavioral change model')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'childhood disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'conditions matching')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (582, N'defense mechanisms')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'does the mother need rhogam activity')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'family characteristics')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'hypertension-activity-heart-series')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'math-remediation-case-studies-03-13-2014')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'mc json')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (580, N'mood disorders')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'phases of development')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'schizophrenia terminology')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N't&d json')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'table json')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'teen-pregnancy-template-html5-03-12-2014')
GO
INSERT [activitySourceRepository] ([learningObjectID], [title]) VALUES (NULL, N'the_3_ps_game')
GO







SELECT  * FROM learningObjects WHERE learningObjectID > 1714
SELECT  * FROM learningObjectsUploads WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectCourseCategories WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectCompetencies WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectKeywords WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectContentReviews WHERE learningObjectID > 1714
SELECT  * FROM learningObjectNotes WHERE learningObjectID > 1714
-- SELECT  * FROM userListItems WHERE learningObjectID > 1714

SELECT  * FROM learningObjectUsage WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectUsageScrubbed WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectUsageScrubbedIMPORT WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectUsageCourseListCurrent WHERE learningObjectID > 1714
SELECT  * FROM learningObjectUsageTotals WHERE learningObjectID > 1714
SELECT  * FROM learningObjectUsageTotalsIMPORT WHERE learningObjectID > 1714
SELECT  * FROM learningObjectUsageTotalsPerYear WHERE learningObjectID > 1714
SELECT  * FROM learningObjectUsageTotalsPerYearIMPORT WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectUsageTotalsPerYearPerPartner WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectUsageTotalsPerYearPerPartnerIMPORT WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectUsageTotalsPerSemesterPerCourse WHERE learningObjectID > 1714
-- SELECT  * FROM learningObjectUsageTotalsPerSemesterPerCourseIMPORT WHERE learningObjectID > 1714



