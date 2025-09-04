-- USE [ExtendedRealityScheduling]
-- GO

TRUNCATE TABLE associatedData
TRUNCATE TABLE nonpartners
TRUNCATE TABLE partnerSiteContacts
TRUNCATE TABLE requestTypes
TRUNCATE TABLE shippingCompanies
TRUNCATE TABLE simulations
TRUNCATE TABLE simulationEquipment
TRUNCATE TABLE simulationTypes
-- TRUNCATE TABLE simulationStates
-- TRUNCATE TABLE simulationsStates
TRUNCATE TABLE sosAssistantUserApplications
TRUNCATE TABLE travelTeamMembers
TRUNCATE TABLE userRoles
GO

DBCC CHECKIDENT('associatedData', RESEED, 1)
DBCC CHECKIDENT('nonpartners', RESEED, 1)
DBCC CHECKIDENT('partnerSiteContacts', RESEED, 1)
DBCC CHECKIDENT('requestTypes', RESEED, 1)
DBCC CHECKIDENT('shippingCompanies', RESEED, 1)
DBCC CHECKIDENT('simulations', RESEED, 1)
DBCC CHECKIDENT('simulationEquipment', RESEED, 1)
DBCC CHECKIDENT('simulationTypes', RESEED, 1)
-- DBCC CHECKIDENT('simulationStates', RESEED, 1)
DBCC CHECKIDENT('sosAssistantUserApplications', RESEED, 1)
DBCC CHECKIDENT('travelTeamMembers', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
GO

SET IDENTITY_INSERT [associatedData] ON 
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (1, 1, N'Yes', 1, 1, CAST(N'2023-06-13T14:56:53.097' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (2, 1, N'No', 2, 1, CAST(N'2023-06-13T14:56:57.080' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (3, 1, N'Not Sure', 3, 1, CAST(N'2023-06-13T14:57:01.993' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (4, 2, N'Yes', 1, 1, CAST(N'2023-06-27T08:56:21.393' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (5, 2, N'No', 2, 1, CAST(N'2023-06-27T08:56:27.073' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (6, 3, N'Director Nursing Services (DNS)', 1, 1, CAST(N'2023-08-03T09:56:29.460' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (7, 3, N'Simulation Operations Specialist (SOS)', 2, 1, CAST(N'2023-08-03T09:56:29.467' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (8, 3, N'Course Lead', 3, 1, CAST(N'2023-08-03T09:56:29.467' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (9, 3, N'Assisting Clinical Faculty', 4, 1, CAST(N'2023-08-03T09:56:29.470' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (10, 4, N'Accelerated Bachelor of Science in Nursing (ABSN)', 1, 1, CAST(N'2024-05-16T17:39:53.070' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (11, 4, N'Traditional Nursing Program', 2, 1, CAST(N'2024-05-16T17:40:04.163' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (12, 5, N'Media Request', 1, 1, CAST(N'2024-11-19T17:29:40.163' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (13, 5, N'Open House for Prospective Students', 2, 1, CAST(N'2024-11-19T17:29:49.020' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (14, 5, N'Other', 3, 1, CAST(N'2024-11-19T17:29:57.233' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (15, 6, N'Meta Quest 3', 1, 1, CAST(N'2025-08-28T18:16:38.127' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (16, 6, N'Microsoft HoloLens', 2, 1, CAST(N'2025-08-28T18:16:38.160' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (17, 7, N'Shipping To Partner Site', 1, 1, CAST(N'2025-09-03T21:22:28.840' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [sortID], [active], [createDate]) VALUES (18, 7, N'Shipping From Partner Site', 2, 1, CAST(N'2025-09-03T21:22:48.040' AS DateTime))
GO
SET IDENTITY_INSERT [associatedData] OFF
GO
SET IDENTITY_INSERT [nonpartners] ON 
GO
INSERT [nonpartners] ([partnerID], [partnerName], [partnerAbbreviation], [currentPartner], [partnerSiteID], [partnerSiteName], [partnerSiteNameAbbreviation], [partnerSiteAbbreviation], [partnerSiteAddressID], [street], [city], [state], [zipCode], [active], [createDate]) VALUES (1000, N'Conemaugh Memorial Medical Center', 'CMMC', 0, 1000, N'Johnstown', NULL, NULL, 1000, N'1086 Franklin Street', N'Johnstown', N'PA', N'15905', 1, CAST(N'2024-11-27T22:23:33.060' AS DateTime))
GO
SET IDENTITY_INSERT [nonpartners] OFF
GO
SET IDENTITY_INSERT [partnerSiteContacts] ON 
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (1, 24, 28, N'Alec', N'Arevalo', N'alec.arevalo@absn.plu.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (2, 28, 34, N'Kevin', N'Barnes', N'kevin.barnes@absn.stthom.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (3, 31, 41, N'Jessica', N'Barsa', N'jessica.barsa@absn.xavier.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (4, 14, 13, N'Jennifer', N'Beemsterboer', N'jennifer.beemsterboer@absn.luc.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (5, 6, 4, N'Brandon', N'Boettcher', N'brandon.boettcher@absn.csp.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (6, 10, 9, N'Francine', N'Bretz', N'francine.bretz@absn.gcu.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (7, 21, 24, N'Mark', N'Cameron', N'mark.cameron@northeasternnursing.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (8, 31, 43, N'Cindy', N'Campbell', N'cindy.campbell@absn.xavier.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (9, 29, 36, N'Tameria', N'Cox', N'tameria.cox@mariannursing.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (10, 18, 21, N'Matthew', N'Crowcroft', N'matthew.crowcroft@orbiseducation.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (11, 30, 37, N'Michelle', N'Danao', N'michelle.danao@uticanursing.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (12, 14, 13, N'Julianne', N'Devine', N'julianne.devine@absn.luc.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (13, 29, 36, N'Ricardo', N'Diaz Lopez', N'ricardo.diazlopez@absn.uiw.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (14, 28, 34, N'Channing', N'Eriks', N'channing.eriks@absn.stthom.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (15, 6, 4, N'Krista', N'Escobar', N'krista.escobar@absn.csp.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (16, 10, NULL, N'Kara', N'Garner', N'kara.garner@absn.gcu.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (17, 7, 6, N'Narciso', N'Gonzales', N'narciso.gonzales@absn.concordia.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (18, 7, 6, N'Jericho', N'Guerrero', N'jericho.guerrero@absn.concordia.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (19, 18, 21, N'Shannon', N'Guibord', N'shannon.guibord@orbiseducation.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (20, 31, 42, N'Shelly', N'Hall', N'shelly.hall@absn.xavier.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (21, 14, 13, N'David', N'Hendrickson', N'david.hendrickson@orbiseducation.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (22, 19, 22, N'Dominique', N'James', N'dominique.james@absn.mercer.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (23, 27, 33, N'Julie', N'Johnson', N'julie.johnson@orbiseducation.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (24, 9, 8, N'James', N'Kreie', N'james.kreie@absn.felician.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (25, 18, 21, N'Brenda', N'Kutzke', N'brenda.kutzke@mastersnursing.marquette.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (26, 14, 13, N'Gretchen', N'LaCivita', N'gretchen.lacivita@absn.luc.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (27, 7, 6, N'Carol', N'Lamb', N'carol.lamb@absn.concordia.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (28, 17, 16, N'Teresa', N'Lewis', N'teresa.lewis@mariannursing.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (29, 22, 26, N'Nikkia', N'Lyons', N'nikkia.lyons@absn.ndm.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (30, 10, NULL, N'Miranda', N'Malone', N'miranda.malone@absn.gcu.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (31, 17, 15, N'Julie', N'Marrs', N'julie.marrs@mariannursing.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (32, 6, 4, N'Marco', N'Masteller', N'marco.masteller@absn.csp.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (33, 28, 34, N'Cindy', N'Morataya', N'cindy.morataya@absn.stthom.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (34, 22, 26, N'Deborah', N'Naccarini', N'deborah.naccarini@absn.ndm.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (35, 15, 14, N'Brennan', N'Neaton', N'brennan.neaton@absn.madonna.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (36, 21, 25, N'Sharon', N'Nelson', N'sharon.nelson@orbiseducation.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (37, 17, 19, N'Kari', N'Newport', N'kari.newport@mariannursing.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (38, 9, 8, N'Arthur', N'Pacheco', N'arthur.pacheco@absn.felician.edu', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (39, 15, 14, N'Karen', N'Piotrowski', N'karen.piotrowski@absn.madonna.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (40, 28, 34, N'Ineshia', N'Potts', N'ineshia.potts@absn.stthom.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (41, 30, 40, N'Elizabeth', N'Scofield', N'elizabeth.scofield@uticanursing.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (42, 17, 15, N'Ashley', N'Snider', N'ashley.snider@mariannursing.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (43, 20, 23, N'Shaulene', N'Stanley', N'shaulene.stanley@absn.misericordia.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (44, 28, 34, N'Kristen', N'Tamez', N'kristen.tamez@absn.stthom.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (45, 19, 22, N'Kwanza', N'Thomas', N'kwanza.thomas@orbiseducation.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (46, 9, 8, N'Sabratha', N'Thomas', N'sabratha.thomas@orbiseducation.com', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (47, 17, 19, N'Alexander', N'Tyrey', N'alexander.tyrey@mariannursing.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (48, 29, 36, N'Misty', N'Watts', N'misty.watts@absn.uiw.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (49, 7, 6, N'Kathleen', N'Williams', N'kathleen.williams@absn.concordia.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (50, 12, 12, N'Tina', N'Wright', N'tina.wright@absn.harding.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (51, 17, 19, N'Derrick', N'Young', N'derrick.young@mariannursing.com', 7, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (52, 1, 1, N'Veronica', N'Ziegler', N'veronica.ziegler@absn.averett.edu', 6, 1, CAST(N'2023-08-07T12:35:15.983' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (53, 1, 1, N'Neftali', N'Deno', N'neftali.deno@absn.averett.edu', 7, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (54, 31, 43, N'David', N'Shablak', N'david.shablak@absn.xavier.edu', 7, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (55, 30, 40, N'Patti', N'Farley', N'patricia.farley@gce.com', 6, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (56, 6, 4, N'Wendy', N'Merchant-Schulte', N'wendy.merchantschulte@orbiseducation.com', 6, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
GO
INSERT [partnerSiteContacts] ([partnerSiteContactID], [partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (57, 6, 4, N'Debra', N'Whitney', N'debra.whitneygalvin@absn.csp.edu', 6, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
GO
SET IDENTITY_INSERT [partnerSiteContacts] OFF
GO
-- INSERT [partnerSiteContacts] ([partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (10, NULL, N'Elizabeth', N'Lara', NULL, 6, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
-- GO
-- INSERT [partnerSiteContacts] ([partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (10, NULL, N'Cyndi', N'North', NULL, 6, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
-- GO
-- INSERT [partnerSiteContacts] ([partnerID], [partnerSiteID], [firstName], [lastName], [email], [positionID], [active], [createDate]) VALUES (18, 21, N'Amy', N'Steffey', NULL, 6, 1, CAST(N'2023-08-07T12:46:48.017' AS DateTime))
-- GO
SET IDENTITY_INSERT [requestTypes] ON 
GO
INSERT [requestTypes] ([requestTypeID], [requestTypeName], [active], [createDate]) VALUES (1, N'Implementation', 1, CAST(N'2024-11-27T18:02:26.823' AS DateTime))
GO
INSERT [requestTypes] ([requestTypeID], [requestTypeName], [active], [createDate]) VALUES (2, N'Demonstration', 1, CAST(N'2024-11-27T18:02:36.683' AS DateTime))
GO
INSERT [requestTypes] ([requestTypeID], [requestTypeName], [active], [createDate]) VALUES (3, N'Conference', 1, CAST(N'2024-11-27T18:04:00.637' AS DateTime))
GO
INSERT [requestTypes] ([requestTypeID], [requestTypeName], [active], [createDate]) VALUES (4, N'Marketing', 1, CAST(N'2024-11-27T18:04:04.537' AS DateTime))
GO
INSERT [requestTypes] ([requestTypeID], [requestTypeName], [active], [createDate]) VALUES (5, N'SOS Assistant User', 1, CAST(N'2024-12-02T19:35:02.657' AS DateTime))
GO
SET IDENTITY_INSERT [requestTypes] OFF
GO
SET IDENTITY_INSERT [shippingCompanies] ON 
GO
INSERT [shippingCompanies] ([shippingCompanyID], [companyName], [trackingLink], [active], [createDate]) VALUES (1, N'FedEx', N'https://www.fedex.com/fedextrack/?trknbr=', 1, CAST(N'2024-07-11T16:27:38.200' AS DateTime))
GO
INSERT [shippingCompanies] ([shippingCompanyID], [companyName], [trackingLink], [active], [createDate]) VALUES (2, N'UPS', N'https://www.ups.com/tracking/tracking.cgi?tracknum=', 1, CAST(N'2024-07-11T16:29:57.730' AS DateTime))
GO
SET IDENTITY_INSERT [shippingCompanies] OFF
GO
SET IDENTITY_INSERT [simulations] ON 
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (1, N'Johnson Obstetrics (OB) I', 1, 2, 4, 2, 4, N'#539E59', 1, 1, 0, N'7744b300-08b3-4eb2-8086-4326a3542c18', N'Mild Pre-eclampsia', N'https://orbiseducation.box.com/s/w58c9pcxdvdoj449ld0rfp7fzsbmh2jb', N'https://orbiseducation.box.com/s/99fglqxguuuaa0u005wx7odylt1kes69', 1, CAST(N'2023-06-09T13:59:57.953' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (2, N'Johnson Obstetrics (OB) II', 1, 2, 4, 2, 4, N'#87A79F', 1, 1, 0, N'5f4e05af-fd16-4783-8a3e-396fe9fc4de8', N'Severe Pre-eclampsia', N'https://orbiseducation.box.com/s/iowyjtzozj06rol0ypfz3j5spms78yew', N'https://orbiseducation.box.com/s/dx9rh1rup0qlgzc7wo032kqad83x1ca1', 1, CAST(N'2023-06-09T14:00:45.210' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (3, N'Jones Pediatrics (Peds)', 1, 2, 4, 2, 4, N'#F6EC54', 1, 1, 0, N'84059188-7251-4fab-a911-efe8516bc49e', N'Child Abuse', N'https://orbiseducation.box.com/s/zgk9ww0id1n1l3dy7dew78oncdni5vga', N'https://orbiseducation.box.com/s/e6sx7q14knntwpjdmhkn1u2l0w6lr4bc', 1, CAST(N'2023-06-09T14:00:54.143' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (4, N'Johnson Newborn Assessment', 1, 2, 4, 2, 4, N'#435B65', 1, 1, 0, N'f076ae74-980a-41fc-9bde-62fab1b156cb', N'Head-to-Toe Assessment of a Day-old Infant', N'https://orbiseducation.box.com/s/y781i00o2f466mmt7w4awm57xoiojccf', N'https://orbiseducation.box.com/s/3wgtlw8nc705khupxvvde4cwbx5tsbxn', 1, CAST(N'2023-06-09T14:01:02.200' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (5, N'Phillips Mental Health', 1, 2, 4, 2, 4, N'#F05936', 1, 1, 0, N'0f373875-7db3-47cc-b592-a59f48d9f611', N'Alcohol Withdrawal Syndrome', N'https://orbiseducation.box.com/s/jd9zjhpov41dcjr9bfkl1k9es9ysp1ln', N'https://orbiseducation.box.com/s/s8nwj8mgf007yp0amsiqy4tkoz4bia3j', 1, CAST(N'2023-06-09T14:01:14.123' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (6, N'Scott Emergency Department (ED)', 2, 2, 4, 2, 4, N'#4BA0BF', 1, 1, 0, NULL, N'Human Trafficking', N'https://orbiseducation.box.com/s/y7n92px3z32qldpdbj30o4cjsll07bl0', N'https://orbiseducation.box.com/s/twqmzpjvr5v3zhllbtuu4dpfsinsrgqz', 1, CAST(N'2023-06-09T14:01:24.867' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (7, N'Adams Medical-Surgical (Med-Surg)', 1, 2, 4, 2, 4, N'#41755B', 1, 1, 0, N'afb5ea2d-c65e-4d6a-92c7-f8d4c612e778', N'Congestive Heart Failure', N'https://orbiseducation.box.com/s/q69q9zqe5f2impq3bolcvzvkggmeqkqc', N'https://orbiseducation.box.com/s/z1dcfv0gqgro166mi6wq4q915jucvwtu', 1, CAST(N'2023-06-26T10:03:58.453' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (8, N'Gonzalez Mental Health/Medical-Surgical (Med-Surg)', 1, 2, 4, 2, 4, N'#CC4073', 0, 0, 0, N'69433fc3-6ffa-48a3-ac98-cc25da85567c', N'Urinary Tract Infection (UTI) with Agitation/Combativeness', N'https://orbiseducation.box.com/s/41s038dy59h8apljzu76rlr8vk6jrb2f', N'https://orbiseducation.box.com/s/3n12w4f06t8dcyifhsf85xi3n7mopvgu', 1, CAST(N'2023-06-26T10:04:07.083' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (9, N'Fuentes Pediatrics (Peds)', 1, 2, 4, 2, 4, N'#5b7de1', 1, 1, 0, N'd99d0eed-939e-4211-8d26-4b858df348ae', N'Respiratory Distress/Bronchiolitis', N'https://orbiseducation.box.com/s/uum2sbqkcze516uzg8cq1j958l2n9syy', N'https://orbiseducation.box.com/s/4eqd12a4wv6ixm4b584952flwfl4t02p', 1, CAST(N'2024-07-19T15:33:30.757' AS DateTime))
GO
INSERT [simulations] ([simulationID], [simulationName], [simulationTypeID], [simulationDuration], [groupsPerDay], [groupsPerScheduleItem], [studentsPerSubgroup], [eventColor], [displayDemonstration], [displayRequest], [demonstrationOnly], [applicationID], [description], [facultyGuideURL], [printGuideURL], [active], [createDate]) VALUES (10, N'Mixed Reality Simulation Demonstration', 1, 0, 0, 0, 0, N'#d22d56', 0, 0, 1, NULL, N'Demonstration Simulation', NULL, NULL, 1, CAST(N'2024-11-27T19:35:38.890' AS DateTime))
GO
SET IDENTITY_INSERT [simulations] OFF
GO
SET IDENTITY_INSERT [simulationEquipment] ON 
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (1, N'1', 1, 16, 2, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:09:35.473' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (2, N'2', 1, 16, 2, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:09:45.600' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (3, N'3', 1, 16, 2, 0, 5, NULL, 1, CAST(N'2024-06-14T16:10:28.177' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (4, N'4', 1, 16, 2, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:10:36.840' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (5, N'5', 1, 16, 2, 0, 5, NULL, 1, CAST(N'2024-06-14T16:10:42.187' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (6, N'6', 1, 16, 2, 0, 52, NULL, 1, CAST(N'2024-06-14T16:10:52.263' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (7, N'7', 1, 16, 2, 0, 49, N'Developer Kit', 1, CAST(N'2024-06-14T16:10:58.613' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (8, N'8', 1, 16, 2, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:11:02.900' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (9, N'9', 1, 16, 2, 0, 34, NULL, 1, CAST(N'2024-06-14T16:11:08.250' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (10, N'10', 1, 16, 2, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:11:13.010' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (11, N'11', 1, 16, 2, 0, 4, NULL, 1, CAST(N'2024-06-14T16:11:18.773' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (12, N'12', 1, 16, 2, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:11:23.617' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (13, N'1', 2, 15, 1, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:13:34.387' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (14, N'2', 2, 15, 1, 1, NULL, NULL, 1, CAST(N'2024-06-14T16:13:45.447' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (15, N'3', 2, 15, 1, 1, NULL, NULL, 1, CAST(N'2025-01-06T16:10:41.827' AS DateTime))
GO
INSERT [simulationEquipment] ([simulationEquipmentID], [kitNumber], [simulationTypeID], [kitTypeID], [crates], [inRotation], [currentLocationID], [notes], [active], [createDate]) VALUES (16, N'13', 1, 16, 1, 1, NULL, N'Marketing Kit', 1, CAST(N'2025-01-08T14:42:42.020' AS DateTime))
GO
SET IDENTITY_INSERT [simulationEquipment] OFF
GO
SET IDENTITY_INSERT [simulationTypes] ON 
GO
INSERT [simulationTypes] ([simulationTypeID], [simulationTypeName], [studentAnnouncementURL], [groupNotesURL], [sosGuideURL], [sosChecklistURL], [refresherCourseURL], [active], [createDate]) VALUES (1, N'Mixed Reality', N'https://orbiseducation.box.com/s/ndcp10q9ohgmvu7r460sbkkmuu8npmk1', N'https://orbiseducation.box.com/s/a4bpu8abegatytfv1s8m165bp33m555e', N'https://orbiseducation.box.com/s/80w6il49g2745ps0u51eq6ukbuw96ij1', N'https://orbiseducation.box.com/s/d3o0dhh8vsvxghcskztgojac58udpuzs', N'https://rise.articulate.com/share/aU6T_u5C50RmlcmRkAXf6yWUCrql757P#/', 1, CAST(N'2023-06-09T13:58:11.453' AS DateTime))
GO
INSERT [simulationTypes] ([simulationTypeID], [simulationTypeName], [studentAnnouncementURL], [groupNotesURL], [sosGuideURL], [sosChecklistURL], [refresherCourseURL], [active], [createDate]) VALUES (2, N'Virtual Reality', N'https://orbiseducation.box.com/s/qlxys9ukck35ttlbde9hozb8k2i3ty4v', N'https://orbiseducation.box.com/s/i8otuknl998pfmrolx461yu73toi25ab', N'https://orbiseducation.box.com/s/hhvixzx3svw5dige3ffpkvcg78vhnvyv', N'https://orbiseducation.box.com/s/1jx3n8us4n03vq640szwfdxoytmbrj18', N'https://rise.articulate.com/share/aU6T_u5C50RmlcmRkAXf6yWUCrql757P#/', 1, CAST(N'2023-06-09T13:58:25.187' AS DateTime))
GO
SET IDENTITY_INSERT [simulationTypes] OFF
GO
-- SET IDENTITY_INSERT [simulationStates] ON 
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (1, N'resumed', 1, CAST(N'2025-03-11T16:06:19.030' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (2, N'paused', 1, CAST(N'2025-03-11T16:06:25.657' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (3, N'controlPanel', 1, CAST(N'2025-03-11T16:06:30.787' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (4, N'goodSbar', 1, CAST(N'2025-03-11T16:06:35.090' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (5, N'badEnding', 1, CAST(N'2025-03-11T16:06:39.870' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (6, N'goodEnding', 1, CAST(N'2025-03-11T16:06:44.853' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (7, N'medAdministered', 1, CAST(N'2025-03-11T16:06:50.883' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (8, N'start', 1, CAST(N'2025-03-11T16:06:55.910' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (9, N'resumeStart', 1, CAST(N'2025-03-11T16:07:00.597' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (10, N'albuterolAdministered', 1, CAST(N'2025-04-01T13:45:56.757' AS DateTime))
-- GO
-- INSERT [simulationStates] ([simulationStateID], [simulationStateName], [active], [createDate]) VALUES (11, N'tylenolAdministered', 1, CAST(N'2025-04-01T13:46:04.840' AS DateTime))
-- GO
-- SET IDENTITY_INSERT [simulationStates] OFF
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (1, 1, CAST(N'2025-03-11T16:17:48.583' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (1, 2, CAST(N'2025-03-11T16:17:48.583' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (1, 3, CAST(N'2025-03-11T16:17:48.587' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (1, 4, CAST(N'2025-03-11T16:17:48.587' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (1, 5, CAST(N'2025-03-11T16:17:48.587' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (1, 6, CAST(N'2025-03-11T16:17:48.590' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (2, 1, CAST(N'2025-03-11T16:17:48.590' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (2, 2, CAST(N'2025-03-11T16:17:48.590' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (2, 3, CAST(N'2025-03-11T16:17:48.590' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (2, 4, CAST(N'2025-03-11T16:17:48.593' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (2, 5, CAST(N'2025-03-11T16:17:48.593' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (2, 6, CAST(N'2025-03-11T16:17:48.593' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (2, 7, CAST(N'2025-03-11T16:17:48.597' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (3, 1, CAST(N'2025-03-11T16:17:48.597' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (3, 2, CAST(N'2025-03-11T16:17:48.597' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (3, 3, CAST(N'2025-03-11T16:17:48.600' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (3, 5, CAST(N'2025-03-11T16:17:48.600' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (3, 6, CAST(N'2025-03-11T16:17:48.600' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (4, 1, CAST(N'2025-03-11T16:17:48.600' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (4, 2, CAST(N'2025-03-11T16:17:48.603' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (4, 3, CAST(N'2025-03-11T16:17:48.603' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (5, 1, CAST(N'2025-03-11T16:17:48.603' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (5, 2, CAST(N'2025-03-11T16:17:48.607' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (5, 3, CAST(N'2025-03-11T16:17:48.607' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (5, 4, CAST(N'2025-03-11T16:17:48.607' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (5, 5, CAST(N'2025-03-11T16:17:48.610' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (5, 6, CAST(N'2025-03-11T16:17:48.610' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (7, 1, CAST(N'2025-03-11T16:17:48.610' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (7, 2, CAST(N'2025-03-11T16:17:48.613' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (7, 3, CAST(N'2025-03-11T16:17:48.613' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (7, 5, CAST(N'2025-03-11T16:17:48.613' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (7, 6, CAST(N'2025-03-11T16:17:48.617' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (7, 8, CAST(N'2025-03-11T16:17:48.617' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (7, 9, CAST(N'2025-03-11T16:17:48.617' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (9, 10, CAST(N'2025-04-01T13:59:04.117' AS DateTime))
-- GO
-- INSERT [simulationsStates] ([simulationID], [simulationStateID], [createDate]) VALUES (9, 11, CAST(N'2025-04-01T13:59:04.157' AS DateTime))
-- GO
SET IDENTITY_INSERT [sosAssistantUserApplications] ON 
GO
INSERT [sosAssistantUserApplications] ([applicationID], [applicationName], [active], [createDate]) VALUES (1, N'SOS Assistant', 1, CAST(N'2025-01-28T22:55:51.467' AS DateTime))
GO
INSERT [sosAssistantUserApplications] ([applicationID], [applicationName], [active], [createDate]) VALUES (2, N'Electronic Health Record', 1, CAST(N'2025-01-28T22:56:11.600' AS DateTime))
GO
SET IDENTITY_INSERT [sosAssistantUserApplications] OFF
GO
SET IDENTITY_INSERT [travelTeamMembers] ON 
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (1, N'Eric', N'Arnold', N'eric.arnold@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:50:30.650' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (2, N'David', N'Bain', N'david.bain@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:43:44.997' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (3, N'Brandon', N'Boettcher', N'brandon.boettcher@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:56:48.240' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (4, N'Robert', N'Burita', N'robert.burita@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:51:08.207' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (5, N'Alexis', N'Carter', N'alexis.carter@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:43:35.383' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (6, N'Narciso', N'Gonzales', N'narciso.gonzales@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:44:55.773' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (7, N'Katelyn', N'Hochstetler', N'katelyn.hochstetler@orbiseducation.com
', 1, 1, CAST(N'2024-06-14T16:43:54.890' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (8, N'Dominique', N'James', N'dominique.james@orbiseducation.com', 0, 1, CAST(N'2024-06-14T16:50:20.410' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (9, N'Nav', N'Loveday', N'nav.loveday@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:44:05.880' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (10, N'Julie', N'Marrs', N'julie.marrs@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:50:53.177' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (11, N'Roger', N'Morgan', N'roger.morgan@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:44:15.797' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (12, N'James', N'Obeso', N'james.obeso@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:50:40.517' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (13, N'Aaron', N'Schuette', N'aaron.schuette@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:44:36.850' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (14, N'David', N'Shablak', N'david.shablak@absn.xavier.edu', 0, 1, CAST(N'2024-06-14T16:50:11.783' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (15, N'Samantha', N'Smeltzer', N'samantha.smeltzer@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:44:29.470' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (16, N'Claire', N'Vita', N'claire.vita@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:49:59.047' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (17, N'Asif', N'Zaidi', N'syed.asifzaidi@orbiseducation.com', 1, 1, CAST(N'2024-06-14T16:45:02.717' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (18, N'Leanne', N'Abramo', N'leanne.abramo@orbiseducation.com', 0, 1, CAST(N'2024-07-03T22:24:03.127' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (19, N'Beth', N'Bruner', N'beth.bruner@orbiseducation.com', 1, 1, CAST(N'2024-07-03T22:24:03.130' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (20, N'Darlene', N'Sobus', N'darlene.sobus@orbiseducation.com', 0, 1, CAST(N'2024-07-03T22:24:03.130' AS DateTime))
GO
INSERT [travelTeamMembers] ([travelTeamMemberID], [firstName], [lastName], [email], [display], [active], [createDate]) VALUES (21, N'Alexander', N'Wolf', N'alexander.wolf@orbiseducation.com', 1, 1, CAST(N'2024-07-03T22:24:03.130' AS DateTime))
GO
SET IDENTITY_INSERT [travelTeamMembers] OFF
GO
SET IDENTITY_INSERT [userRoles] ON 
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (1, N'Administrator', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (2, N'System Administrator', 1, CAST(N'2023-08-03T20:13:35.080' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (3, N'Director Nursing Services (DNS)', 1, CAST(N'2024-05-16T17:37:56.197' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (4, N'Simulation Operations Specialist (SOS)', 1, CAST(N'2024-05-16T17:38:11.523' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (5, N'Course Lead', 1, CAST(N'2024-05-16T17:38:31.930' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (6, N'Assisting Clinical Faculty', 1, CAST(N'2024-05-16T17:38:38.370' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (7, N'Viewer', 1, CAST(N'2024-08-15T16:57:44.990' AS DateTime))
GO
SET IDENTITY_INSERT [userRoles] OFF
GO
