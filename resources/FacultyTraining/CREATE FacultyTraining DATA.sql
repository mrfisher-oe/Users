-- USE [FacultyTraining]
-- GO

TRUNCATE TABLE associatedData
TRUNCATE TABLE associatedDataCategories
TRUNCATE TABLE seminars
TRUNCATE TABLE seminarDetails
TRUNCATE TABLE userRoles
GO

DBCC CHECKIDENT('associatedData', RESEED, 1)
DBCC CHECKIDENT('associatedDataCategories', RESEED, 1)
DBCC CHECKIDENT('seminars', RESEED, 1)
DBCC CHECKIDENT('seminarDetails', RESEED, 1)
DBCC CHECKIDENT('userRoles', RESEED, 1)
GO


SET IDENTITY_INSERT [associatedData] ON 
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (1, 1, N'Academic Nurse Educator Competencies', NULL, 5, 0, CAST(N'2024-08-26T20:25:46.520' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (2, 1, N'Facilitating SIM Series', NULL, 1, 1, CAST(N'2024-08-26T20:26:03.720' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (3, 1, N'Licensure & Practice Readiness Series
', NULL, 2, 1, CAST(N'2024-08-26T20:26:22.287' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (4, 1, N'Nursing Preceptor', NULL, 3, 1, CAST(N'2024-08-26T20:26:41.920' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (5, 1, N'Online Education Management', NULL, 4, 1, CAST(N'2024-08-26T20:27:08.560' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (6, 2, N'Leadership', NULL, 4, 1, CAST(N'2024-08-22T15:17:50.643' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (7, 2, N'Onboarding', NULL, 1, 1, CAST(N'2024-08-26T20:16:21.287' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (8, 2, N'Simulation/Clinical', NULL, 3, 1, CAST(N'2024-08-26T20:20:23.203' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (9, 2, N'Teaching', NULL, 2, 1, CAST(N'2024-08-26T20:20:47.643' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (10, 3, N'Asynchronous', NULL, 2, 1, CAST(N'2024-08-26T20:28:26.020' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (11, 3, N'In Person', NULL, 1, 1, CAST(N'2024-08-26T20:28:33.750' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (12, 4, N'Healthcare Seminars', NULL, 1, 1, CAST(N'2024-08-26T20:32:48.053' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (13, 4, N'Joint Provider Offerings', NULL, 3, 1, CAST(N'2024-08-26T20:32:59.107' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (14, 4, N'Nursing Seminars', NULL, 2, 1, CAST(N'2024-08-26T20:33:17.000' AS DateTime))
GO
INSERT [associatedData] ([associatedDataID], [associatedDataCategoryID], [name], [description], [sortID], [active], [createDate]) VALUES (15, 1, N'Academic Leadership Series', NULL, 6, 1, CAST(N'2025-08-05T11:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [associatedData] OFF
GO
SET IDENTITY_INSERT [associatedDataCategories] ON 
GO
INSERT [associatedDataCategories] ([associatedDataCategoryID], [name], [description], [active], [createDate]) VALUES (1, N'contentSeries', NULL, 1, CAST(N'2024-08-22T15:13:25.007' AS DateTime))
GO
INSERT [associatedDataCategories] ([associatedDataCategoryID], [name], [description], [active], [createDate]) VALUES (2, N'curriculumTracks', NULL, 1, CAST(N'2024-08-22T15:13:24.977' AS DateTime))
GO
INSERT [associatedDataCategories] ([associatedDataCategoryID], [name], [description], [active], [createDate]) VALUES (3, N'deliveryTypes', NULL, 1, CAST(N'2024-08-22T15:13:25.040' AS DateTime))
GO
INSERT [associatedDataCategories] ([associatedDataCategoryID], [name], [description], [active], [createDate]) VALUES (4, N'seminarTypes', NULL, 1, CAST(N'2024-08-22T15:13:25.070' AS DateTime))
GO
SET IDENTITY_INSERT [associatedDataCategories] OFF
GO
SET IDENTITY_INSERT [seminars] ON 
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (1, N'Best Practices for Online Teaching', N'This seminar identifies the five most common best practices in online teaching: setting course expectations, creating a learning community, encouraging active learning, giving prompt feedback, and respecting diverse talents and ways of learning.', 12, 7, NULL, 1, CAST(N'2024-08-28T15:54:08.123' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (2, N'Clinical Preparation', N'This seminar focuses on the clinical nurse educator''s preparation (agency, faculty, and student) and other factors that influence clinical learning.', 14, 7, NULL, 1, CAST(N'2024-08-28T15:54:08.157' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (3, N'Process of Clinical Teaching', N'This seminar discusses five common components of clinical teaching (outcomes, needs, learning activities, guidance, and evaluation) and strategies to effectively facilitate student learning and performance.', 14, 7, NULL, 1, CAST(N'2024-08-28T15:54:08.187' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (4, N'Legal and Ethical Considerations in Academia', N'Academic and clinical educators need to be knowledgeable about laws and ethical issues that arise when facilitating learning in pre-licensure programs. This seminar identifies pertinent laws in higher education and ethical issues that faculty need to understand. In the seminar, both the application and implications of violating the law(s) will be presented.', 12, 7, NULL, 1, CAST(N'2024-08-28T15:54:08.217' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (5, N'Transition: Practice to Academia', N'Expert clinicians transition from practice to academia with little knowledge or skill of the role of the academic educator. In this seminar, the learner will explore information to assist in developing their new academic role.', 12, 7, NULL, 1, CAST(N'2024-08-28T15:54:08.247' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (6, N'Learning Management System (LMS)', N'*Currently have versions for Canvas and Blackboard \r\rThe LMS onboarding course serves as a helpful guide that is comprised of the most important need-to-know information surrounding the use of each LMS. The course includes information on navigation, grading, and testing. It goes beyond by demonstrating best practices for instructors to adhere to during their time in the LMS. Instructors who finish the LMS onboarding component should leave with a solid baseline of knowledge to make them effective LMS users.', 12, 7, NULL, 1, CAST(N'2024-08-28T15:54:08.277' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (7, N'Incivility: Awareness, Prevention, and Responding', N'This seminar focuses on increasing awareness of incivility, identifying preventative learning strategies, and discovering effective ways to respond to disruptive behaviors in the learning environment.', 12, 9, NULL, 1, CAST(N'2024-08-28T15:54:08.307' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (8, N'Diverse Learner: Building Learner Capacity', N'This seminar explores culturally responsive teaching and discusses implementation strategies to help teach effectively in an inclusive and equitable learning environment.', 12, 9, NULL, 1, CAST(N'2024-08-28T15:54:08.347' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (9, N'Evidence-Based Teaching to Guide Educational Decisions and Practices', N'This seminar explores the four phases of evidence-based teaching and identifies strategies to help engage in this practice.', 12, 9, NULL, 0, CAST(N'2024-08-28T15:54:08.373' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (10, N'Simulation Overview for Healthcare Educators (Part 1 of 5)', N'This introductory seminar provides foundational information addressing the pedagogy of simulation, the increased use of simulation-based experiences in pre-licensure healthcare programs and introduces standards of best practice to follow when providing simulation-based experiences.', 12, 8, 2, 1, CAST(N'2024-08-28T15:54:08.403' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (11, N'Facilitating Simulation-Based Experiences in Healthcare Education (Part 2 of 5)', N'This seminar explores the standards of best practice when facilitating a simulation-based experience. Topics covered in this seminar include facilitator attributes and responsibilities, participants'' preparation, and applying a facilitative approach to guiding learners in meeting the simulation objectives.', 12, 8, 2, 1, CAST(N'2024-08-28T15:54:08.433' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (12, N'Debriefing After Simulation-Based Experiences in Healthcare Education (Part 3 of 5)', N'This seminar explores theoretical concepts and evidence-based models of debriefing and identifies best practices for facilitating a debriefing.', 12, 8, 2, 1, CAST(N'2024-08-28T15:54:08.460' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (13, N'Evaluating the Effectiveness of Simulation-Based Experiences (Part 4 of 5)', N'This seminar discusses tools and strategies for conducting evaluations that identify the effectiveness of simulation-based experiences.', 12, 8, 2, 1, CAST(N'2024-08-28T15:54:08.490' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (14, N'Faculty Role in Virtual Simulation-Based Experiences (Part 5 of 5)', N'This seminar discusses different virtual modalities as well as opportunities and challenges of implementing and facilitating virtual simulation-based experiences.', 12, 8, 2, 1, CAST(N'2024-08-28T15:54:08.520' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (15, N'Application Workshop: (Facilitating Healthcare Simulations for Pre-Licensure Healthcare Programs)\rApplying Best Practices for Simulation Experiences: From Design to Evaluation', N'This one-day (8 hr.) live workshop includes a brief content review of the International Nursing Association for Clinical Simulation and Learning (INACSL) Standards of Best Practice: SimulationSM. Additionally, participants will facilitate simulation-based experiences from prebriefing to debriefing and engage in evaluating the simulation-based experiences.', 12, 8, 2, 0, CAST(N'2024-08-28T15:54:08.550' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (16, N'Developing Outcome-Focused Thinking (Part 1 of 7)', N'This seminar identifies models and strategies for developing students'' thinking competency.', 12, 9, 3, 1, CAST(N'2024-08-28T15:54:08.580' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (17, N'Teaching Clinical Judgment Throughout the Curriculum (Part 2 of 7)', N'This seminar assists the nurse educator in selecting effective learning strategies that help facilitate nursing students'' acquisition of the knowledge and skills that are needed to develop clinical judgment competency. The following content is explored: Tanner''s Clinical Judgment Model, NCSBN Clinical Judgment Measurement Model (CJMM), and teaching strategies for each concept of the CJMM.', 14, 9, 3, 1, CAST(N'2024-08-28T15:54:08.610' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (18, N'Teaching and Learning Strategies to Foster Clinical Judgment in the Learning Lab & Clinical Setting (Part 3 of 7)', N'This seminar presents a variety of teaching and learning strategies for the educator to adopt, modify, and incorporate into the lab and clinical learning environment.', 14, 9, 3, 1, CAST(N'2024-08-28T15:54:08.640' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (19, N'Teaching and Learning Strategies to Foster Clinical Judgment in the Didactic Setting (Part 4 of 7)', N'This seminar presents a variety of teaching and learning strategies for the educator to adopt, modify, and incorporate into the didactic (online and face-to-face) learning environment.', 14, 9, 3, 1, CAST(N'2024-08-28T15:54:08.670' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (20, N'Next Generation NCLEX: Test Construction and Test Item Writing (Part 5 of 7)', N'This seminar provides nurse educators with the knowledge and skills needed to help evaluate students'' acquisition of the required thinking skills needed to demonstrate safe, entry-level practice. The following content is explored: Overview of the Next Generation NCLEX (NGN)-RN, and best practices in test construction and item writing for nursing exams. This includes Test Blueprint, Testing Directions, Bloom''s Taxonomy, Principles of Test Item Writing, NCSBN Guidelines for Test Writing, Innovative Item Types, and Writing High Level Test Items.', 14, 9, 3, 1, CAST(N'2024-08-28T15:54:08.700' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (21, N'Item Analysis: Objective Evaluation of Test Items (Part 6 of 7)', N'This seminar explores the multiple elements involved in the item analysis process and provides an opportunity to apply the knowledge and skills gained in order to complete an item analysis.', 12, 9, 3, 1, CAST(N'2024-08-28T15:54:08.730' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (22, N'Using the Task Model to Write Clinical Judgement Test Questions for Nursing Exams (Part 7 of 7)', N'This seminar explores the concepts of the NCSBN task model to help nurse educators in writing clinical judgement test items and provides an opportunity to develop test items using the task model.', 14, 9, 3, 1, CAST(N'2024-08-28T15:54:08.760' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (23, N'Application Workshop: Applying Best Practices to Prepare for Next Generation NCLEX', N'This live-workshop explores implementing best practices on the following topics: clinical judgment, Next Generation NCLEX, test blueprints, creating test items, test analysis reports, task model (NCSBN), test item revisions, stand-alone test items, and NGN-style test item sets.', 14, 9, 3, 1, CAST(N'2024-08-28T15:54:08.790' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (24, N'Academic Advising to Facilitate Student Success', N'This seminar identifies several advising models, discusses the roles and responsibilities of advisors, and explores issues an academic advisor in a pre-licensure program may encounter.', 12, 6, NULL, 0, CAST(N'2024-08-28T15:54:08.820' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (25, N'Introduction to Nursing Preceptorship (Part 1 of 3)', N'This seminar defines the preceptorship model, explores the roles and responsibilities of those participating in the preceptorship, and explores important concepts in building a precepting experience.', 14, 6, 4, 1, CAST(N'2024-08-28T15:54:08.863' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (26, N'Managing the Precepting Experience (Part 2 of 3)', N'This second seminar explores required interpersonal communication skills, strategies to manage the precepting experience, and legal and ethical considerations that further inform the nurse about their role as preceptor.', 14, 6, 4, 1, CAST(N'2024-08-28T15:54:08.893' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (27, N'Strategies for the Precepting Experience (Part 3 of 3)', N'This seminar identifies teaching and learning strategies that support the continuing development of outcome-focused thinking, as well as skills such as organizing, prioritizing, and delegating. Additionally, to prepare the nurse for their critical role as a nurse preceptor, this seminar explores potential challenging situations and discusses evaluating the precepting experience.', 14, 6, 4, 1, CAST(N'2024-08-28T15:54:08.923' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (28, N'Coaching: An Emerging Practice for Transformational Nurse Leaders', N'Presented by Phyllis Kritek, PhD, RN, FAAN, University of St. Thomas Peavy School of Nursing\r\rThis seminar presents coaching as a leadership practice and illustrates how clinical, mid-level, and executive nurse leaders can employ coaching. Coaching has proven to be extremely valuable in building one''s individual transformational leadership capacity and creating a high-performance team culture.', 13, 6, NULL, 1, CAST(N'2024-08-28T15:54:08.957' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (29, N'Effective Communication and Meaningful Feedback', N'This seminar provides educators with the knowledge and skills to communicate effectively with students and peers as well as explore meaningful feedback. Educators many times begin teaching with little to no training in communication and feedback best practices for meeting the needs of students. This seminar explores the following communication best practices: effective communication skills for students and peers, types of feedback, and how to provide meaningful feedback.', 12, 9, NULL, 1, CAST(N'2024-08-28T15:54:08.990' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (30, N'Phase 1: Setting the Tone for Engagement (Part 1 of 4)', N'This first installment focuses on concepts related to the preparation that should take place prior to setting up and teaching students in an online/hybrid course.', 12, 9, 5, 1, CAST(N'2024-08-28T15:54:09.027' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (31, N'Phase 2: Launching a Learning Community (Part 2 of 4)', N'This second installment focuses on concepts related to the first few weeks of teaching an online/hybrid course and the importance of communication and support from the start.', 12, 9, 5, 1, CAST(N'2024-08-28T15:54:09.057' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (32, N'Academic Nurse Educator: Cultivating Your Role', N'The first seminar in this series discusses the role and scope of practice for academic nurse educators/academic clinical nurse educators in higher education and identifies ways to develop and demonstrate the core competencies required to be an effective nurse educator.', 14, 6, 1, 0, CAST(N'2024-08-28T15:54:09.087' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (33, N'Phase 3: Digging Deeper for Comprehension (Part 3 of 4)', N'This third installment focuses on concepts that relate to the middle weeks of teaching and online/hybrid course and the importance of asking specific questions for comprehension.', 12, 9, 5, 1, CAST(N'2024-08-28T15:54:09.117' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (34, N'Academic Nurse Educator: Knowing and Supporting the Learner', N'This second seminar explores the population of today''s nursing student to understand their learning needs as they progress toward becoming a professional nurse.', 14, 6, 1, 0, CAST(N'2024-08-28T15:54:09.147' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (35, N'Phase 4: Closing Experiences (Part 4 of 4)', N'This fourth installment focuses on concepts related to the final weeks of teaching an online/hybrid course and the importance of identifying conceptual takeaway lessons for students and instructors.', 12, 9, 5, 1, CAST(N'2024-08-28T15:54:09.173' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (36, N'Academic Nurse Educator: Constructing Communities to Foster Learning', N'This third seminar explores creating a supportive learning community that fosters student learning and discusses factors that can deter from the learning environment.', 14, 6, 1, 0, CAST(N'2024-08-28T15:54:09.203' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (37, N'Application Workshop: Best Practices for Educator Written Tests', N'This live-workshop explores best practices for the following topics: test blueprints, creating test items, assembling the test, test committees, test analysis reports, and test item revision.\r\r', 12, 9, NULL, 1, CAST(N'2024-08-28T15:54:09.237' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (38, N'Introduction to the Professional Simulation Operation Specialist (SOS) Role', N'This seminar provides an introduction to the role and responsibilities and provides a foundation for you to begin building your knowledge to obtain your certification as a Simulation Operations Specialist.', 12, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.263' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (39, N'Working with Adult Learners: Theory & Practice', N'This seminar provides prelicensure healthcare educators with the knowledge, skills, and attitudes to work with adult learners. This seminar will examine various theories related to foundational principles in working with adults, generational differences, and the assessment of students'' learning style. Strategies and techniques will also be recommended.', 12, 9, NULL, 1, CAST(N'2024-08-28T15:54:09.293' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (40, N'Academic Nurse Educator: Strategies to Facilitate Student Learning', N'This fourth seminar explores selecting and implementing educational strategies that are active, engaging, and facilitate the acquisition of the knowledge, skills, and attitudes that are critical to "thinking like a nurse."', 14, 6, 1, 0, CAST(N'2024-08-28T15:54:09.323' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (41, N'Nurse Leader as Coach: Optimizing Engagement and Performance', N'Presented by: Phyllis Kritek, PhD, RN, FAAN, University of St. Thomas Peavy School of Nursing\r\rResearch supports nurse leaders adopting and utilizing a coaching mindset and process in the professional nursing community. This seminar discusses the value of expanding one''s knowledge of and capacity as a nurse leader to apply coaching as the primary way of developing and working with individuals and teams.', 13, 6, NULL, 1, CAST(N'2024-08-28T15:54:09.353' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (42, N'Building a Team with a Transformational Leadership Foundation', N'This live leadership training explores building and improving the professional team. Topics explored include: transformational leadership and key traits, personality, conflict management and leadership styles of self and team, and best practice and implementation of effective communication practices including providing feedback to students, adjunct instructors and peer to peer.', 12, 6, NULL, 1, CAST(N'2024-08-28T15:54:09.387' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (43, N'Application Workshop: Unlocking the AACN Essentials: A Journey to Competency-Based Education', N'This workshop provides a dive into the AACN 2021 Essentials. The importance of the essentials and the move to a competency-based education will be explored. A competency-based education will be defined, and tangible tools given to guide faculty on how to assess and evaluate students in multiple settings including lab/clinical and simulation. Best practices to assess and evaluate students in the coach/mentor role versus the instructor/teacher role are also presented with application activities.', 14, 9, NULL, 1, CAST(N'2024-08-28T15:54:09.417' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (44, N'Healthcare Simulation Best Practices', N'This seminar provides basic beginning understanding and consistent educational building blocks for the novice Simulation Operation Specialist (SOS). In addition, this seminar can be used for the experienced SOS who is preparing to take the certification exam as a refresher.', 12, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.450' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (45, N'Simulation Technology Operations', N'Within simulation operations, the Simulation Operations Specialist (S0S) will encounter many different modalities, technologies, and equipment to keep a program ongoing. In this seminar, the foundations to demonstrating knowledge of fundamental practices across a broad spectrum will be accomplished and discussed.', 12, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.480' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (46, N'Application Workshop: Simulation 101: Getting to Know the Healthcare Simulation Standards of Best Practice', N'Facilitated by Samantha Smeltzer, DNP, RN, CHSE\r\rThis workshop provides faculty the opportunity to gain important knowledge on how to utilize the Healthcare Simulation Standards of Best Practice<sup>TM</sup> when creating simulation-based activities. New faculty and experienced faculty can take the knowledge from this workshop to identify simulation best practices and resources to help in the facilitation of simulation and to meet the needs of the learner.', 14, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.513' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (47, N'Application Workshop: Simulation', N'Facilitated by Samantha Smeltzer, DNP, RN, CHSE\r\rUsing the Healthcare Simulation Standards of Best Practice<sup>TM</sup> as a guide, this workshop dives into the areas of pre-briefing, facilitation, and debriefing in simulation. Learning and applying the best practices in simulation allows a formalized and standardized process in the areas of pre-briefing and debriefing students to ensure safety and meet course outcomes and objectives.', 14, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.547' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (48, N'Application Workshop: Implementing the Standards: Simulation Design', N'Facilitated by Samantha Smeltzer, DNP, RN, CHSE\r\rThis workshop focuses on the Healthcare Simulation Standards of Best Practice<sup>TM</sup> standard of Simulation Design. Simulation-based experiences are purposefully designed to meet identified objectives and optimize the achievement of expected outcomes. Knowledge gained from this workshop will allow a formalized and standardized process in the areas of simulation design to ensure simulations are standardized, meet the needs of the learner, meeting course outcomes and objectives as well as provide a safe learning environment.', 14, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.580' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (49, N'Application Workshop: Implementing the Standards: A Guide on Pre-briefing', N'Facilitated by Samantha Smeltzer, DNP, RN, CHSE\r\rThis workshop focuses on the Healthcare Simulation Standards of Best Practice<sup>TM</sup> standard of Pre-Briefing. The knowledge gained from this workshop will prepare faculty to provide best practices in pre-briefing for simulation including key elements to standardize the process before the start of simulation, creating a script to utilize with learners, and ensuring that learners understand ground rules and expectations in order to have positive outcomes in simulation.', 14, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.617' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (50, N'Application Workshop: Coaching for Success: Empowering Nursing Educators in Competency-Based Education', N'This workshop delves into the principles of coaching for competency-based education. The AACN 2021 Essentials calls for nursing educators to shift from teacher/instructor to coach/mentor. Participants will gain a better understanding of coaching in education, techniques and strategies to apply to practice, and how to guide students in the development of competencies and positive outcomes.', 14, 9, NULL, 1, CAST(N'2024-08-28T15:54:09.653' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (51, N'Advanced Simulation Technology Operations', N'This seminar provides information on the professional SOS role and the advanced simulation information needed to utilize best practices in technological operations and planning.', 12, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.683' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (52, N'Application Workshop: Debriefing with Good Judgment: The Basics', N'Facilitated by Samantha Smeltzer, DNP, RN, CHSE\r\rThis workshop provides training on the formalized process of debriefing using the Healthcare Simulation Standards of Best Practice as a guide. The process of providing the basics of debriefing which includes setting ground rules, providing expectations, and ensuring a safe environment for student learning to meet course outcomes and objectives.', 14, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.710' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (53, N'Leveraging AI for Nursing Education: Learning with ChatGPT', N'In this seminar, you will receive an overview of artificial intelligence (AI) and its application in the field of nursing education. Other topics that will be explored include: an introduction to ChatGPT as an AI-based conversational agent and an explanation for its capabilities in facilitating learning, how it can enhance nursing education, responsible use of AI technology, and how to make learning more accessible and flexible for faculty and students.', 14, 9, NULL, 1, CAST(N'2024-08-28T15:54:09.740' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (54, N'Preparing for the Certified Healthcare Simulation Operations Specialist (CHSOS) Standardized Exam', N'This seminar provides healthcare simulation operations specialists (SOS) with information on the importance of achieving certification and practices that assist in planning their learning needs. The practices discussed will offer a framework to support SOSs in meeting the pretraining requirements for certification and preparing for the examination.', 12, 8, NULL, 1, CAST(N'2024-08-28T15:54:09.770' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (55, N'Best Practices in Nursing Skills Laboratory', N'This seminar is designed to equip nurse educators with the knowledge and skills necessary to effectively manage and enhance skills labs. The seminar covers foundational aspects such as the definition and historical development of skills labs, and progresses through practical topics including designing effective labs, implementing teaching strategies, and conducting assessments. It also explores techniques for managing diverse student needs, fostering a supportive learning environment, and embracing continuous improvement and innovation.', 14, 7, NULL, 1, CAST(N'2024-10-02T15:54:09.770' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (56, N'Concepts Unleashed: Exam Reviews for Success', N'This seminar is designed to empower nursing educators with the skills to implement effective conceptual exam reviews. Participants will learn to develop review sessions that promote critical thinking, clarify complex nursing concepts, and address student misconceptions. Through hands-on strategies, technology integration, and formative assessment techniques, educators will be equipped to create engaging and impactful review sessions that enhance student performance and clinical readiness. This seminar emphasizes practical application and continuous improvement, ensuring that nursing educators are well-prepared to support their students'' learning journeys.', 14, 9, NULL, 1, CAST(N'2024-11-25T15:54:09.770' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (57, N'Faculty Toolkit: Practical Applications for Teaching', N'This toolkit provides faculty with practical resources to enhance teaching and streamline course development. Explore tools for engaging presentations, multimedia integration, interactive learning, and assessment strategies. With job aids and recommended tools, this resource supports faculty in creating dynamic and effective learning experiences.', 12, 9, NULL, 1, CAST(N'2024-11-25T15:54:09.770' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (58, N'Coaching for Growth: Navigating Feedback and Support', N'This seminar equips leaders with practical tools to address underperformance, navigate high-stakes conversations, and support accountability across teams. Participants will learn to distinguish between coaching and correcting, lead difficult discussions with professionalism, and document expectations clearly and effectively. Designed for academic and practice-based leaders seeking to build confidence and consistency in performance management.', 12, 6, 15, 1, CAST(N'2025-08-05T11:00:00.000' AS DateTime))
GO
INSERT [seminars] ([seminarID], [seminarTitle], [description], [seminarTypeID], [curriculumTrackID], [contentSeriesID], [active], [createDate]) VALUES (59, N'Journey to Certification: Certified Nurse Educator (CNE) Prep', N'This self-paced seminar prepares nurse educators for the NLN Certified Nurse Educator (CNE&reg;) exam. Aligned with the CNE competencies and Caputi''s review text, the course includes seven modules covering teaching strategies, curriculum design, assessment, leadership, and more. Learners engage with interactive content, self-assessments, and a final exam readiness plan to build confidence and identify study priorities.', 14, 6, NULL, 1, CAST(N'2025-08-14T19:05:52.843' AS DateTime))
GO
SET IDENTITY_INSERT [seminars] OFF
GO
SET IDENTITY_INSERT [seminarDetails] ON 
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (1, 1, 10, 1.25, 0, 1, CAST(N'2024-08-28T15:54:05.533' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (2, 2, 10, 0.75, 0, 1, CAST(N'2024-08-28T15:54:05.563' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (3, 2, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:05.593' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (4, 3, 10, 0.75, 0, 1, CAST(N'2024-08-28T15:54:05.623' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (5, 3, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:05.650' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (6, 4, 10, 0.75, 0, 1, CAST(N'2024-08-28T15:54:05.680' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (7, 4, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:05.710' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (8, 5, 10, 0.75, 0, 1, CAST(N'2024-08-28T15:54:05.740' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (9, 5, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:05.767' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (10, 6, 10, NULL, 0, 1, CAST(N'2024-08-28T15:54:05.797' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (11, 7, 10, 1.1, 0, 1, CAST(N'2024-08-28T15:54:05.827' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (12, 7, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:05.853' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (13, 8, 10, 1.25, 0, 1, CAST(N'2024-08-28T15:54:05.883' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (14, 8, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:05.917' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (15, 9, 10, NULL, 0, 1, CAST(N'2024-08-28T15:54:05.947' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (16, 9, 11, NULL, 0, 1, CAST(N'2024-08-28T15:54:05.977' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (17, 10, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:06.007' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (18, 10, 11, 2.5, 0, 1, CAST(N'2024-08-28T15:54:06.033' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (19, 11, 10, 1.25, 0, 1, CAST(N'2024-08-28T15:54:06.063' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (20, 11, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:06.090' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (21, 12, 10, 1.4, 0, 1, CAST(N'2024-08-28T15:54:06.120' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (22, 12, 11, 2.5, 0, 1, CAST(N'2024-08-28T15:54:06.157' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (23, 13, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:06.183' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (24, 13, 11, 1.5, 0, 1, CAST(N'2024-08-28T15:54:06.223' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (25, 14, 10, 0.9, 0, 1, CAST(N'2024-08-28T15:54:06.253' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (26, 14, 11, 1, 0, 1, CAST(N'2024-08-28T15:54:06.280' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (27, 15, 10, NULL, 0, 1, CAST(N'2024-08-28T15:54:06.310' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (28, 15, 11, NULL, 0, 1, CAST(N'2024-08-28T15:54:06.340' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (29, 16, 10, 1.1, 0, 1, CAST(N'2024-08-28T15:54:06.370' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (30, 16, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:06.400' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (31, 17, 10, 1.4, 0, 1, CAST(N'2024-08-28T15:54:06.430' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (32, 17, 11, 2.5, 0, 1, CAST(N'2024-08-28T15:54:06.463' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (33, 18, 10, 1.4, 0, 1, CAST(N'2024-08-28T15:54:06.493' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (34, 18, 11, 2.5, 0, 1, CAST(N'2024-08-28T15:54:06.523' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (35, 19, 10, 1.1, 0, 1, CAST(N'2024-08-28T15:54:06.557' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (36, 19, 11, 1.5, 0, 1, CAST(N'2024-08-28T15:54:06.583' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (37, 20, 10, 1.4, 0, 1, CAST(N'2024-08-28T15:54:06.613' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (38, 20, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:06.643' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (39, 21, 10, 1.1, 0, 1, CAST(N'2024-08-28T15:54:06.673' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (40, 21, 11, 1.5, 0, 1, CAST(N'2024-08-28T15:54:06.703' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (41, 22, 10, 1.4, 0, 1, CAST(N'2024-08-28T15:54:06.737' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (42, 22, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:06.767' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (43, 23, 11, 7, 0, 1, CAST(N'2024-08-28T15:54:06.800' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (44, 24, 10, 0.9, 0, 1, CAST(N'2024-08-28T15:54:06.833' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (45, 24, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:06.867' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (46, 25, 10, 1.1, 0, 1, CAST(N'2024-08-28T15:54:06.900' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (47, 25, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:06.933' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (48, 26, 10, 1.4, 0, 1, CAST(N'2024-08-28T15:54:06.963' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (49, 26, 11, 3, 0, 1, CAST(N'2024-08-28T15:54:06.990' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (50, 27, 10, 1.4, 0, 1, CAST(N'2024-08-28T15:54:07.020' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (51, 27, 11, 3, 0, 1, CAST(N'2024-08-28T15:54:07.050' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (52, 28, 10, 1.5, 0, 1, CAST(N'2024-08-28T15:54:07.080' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (53, 29, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.110' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (54, 29, 11, 3, 0, 1, CAST(N'2024-08-28T15:54:07.140' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (55, 30, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.170' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (56, 31, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.200' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (57, 32, 10, 0.75, 0, 1, CAST(N'2024-08-28T15:54:07.230' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (58, 32, 11, 1, 0, 1, CAST(N'2024-08-28T15:54:07.263' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (59, 33, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.293' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (60, 34, 10, 0.75, 0, 1, CAST(N'2024-08-28T15:54:07.323' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (61, 34, 11, 1, 0, 1, CAST(N'2024-08-28T15:54:07.357' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (62, 35, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.383' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (63, 36, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.413' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (64, 36, 11, 2, 0, 0, CAST(N'2024-08-28T15:54:07.443' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (65, 37, 11, 4.5, 0, 1, CAST(N'2024-08-28T15:54:07.473' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (66, 38, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.517' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (67, 39, 10, 0.75, 0, 1, CAST(N'2024-08-28T15:54:07.547' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (68, 40, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.580' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (69, 40, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:07.610' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (70, 41, 10, 1.5, 0, 1, CAST(N'2024-08-28T15:54:07.640' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (71, 42, 11, 4, 0, 1, CAST(N'2024-08-28T15:54:07.670' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (72, 43, 11, 7, 0, 1, CAST(N'2024-08-28T15:54:07.700' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (73, 44, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.730' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (74, 45, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:07.760' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (75, 46, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:07.790' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (76, 47, 11, 6, 0, 1, CAST(N'2024-08-28T15:54:07.820' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (77, 48, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:07.850' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (78, 49, 11, 2.5, 0, 1, CAST(N'2024-08-28T15:54:07.880' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (79, 50, 11, 2, 0, 1, CAST(N'2024-08-28T15:54:07.910' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (80, 51, 10, 0.6, 0, 1, CAST(N'2024-08-28T15:54:07.947' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (81, 52, 11, 2.5, 0, 1, CAST(N'2024-08-28T15:54:07.977' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (82, 53, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:08.010' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (83, 54, 10, 1, 0, 1, CAST(N'2024-08-28T15:54:08.040' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (84, 55, 10, 1, 0, 1, CAST(N'2024-10-02T15:54:08.040' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (85, 56, 10, 1, 0, 1, CAST(N'2024-11-25T15:54:08.040' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (86, 56, 11, 2, 0, 1, CAST(N'2024-11-25T15:54:08.040' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (87, 57, 10, NULL, 0, 1, CAST(N'2024-11-25T15:54:08.040' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (88, 58, 10, 1.33, 0, 1, CAST(N'2025-08-05T11:00:00.000' AS DateTime))
GO
INSERT [seminarDetails] ([seminarDetailID], [seminarID], [deliveryTypeID], [creditHours], [comingSoon], [active], [createDate]) VALUES (89, 59, 10, 6, 0, 1, CAST(N'2025-08-14T19:05:53.043' AS DateTime))
GO
SET IDENTITY_INSERT [seminarDetails] OFF
GO
SET IDENTITY_INSERT [userRoles] ON 
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (1, N'Administrator', 1, CAST(N'2025-03-28T13:03:14.600' AS DateTime))
GO
INSERT [userRoles] ([userRoleID], [userRole], [active], [createDate]) VALUES (2, N'System Administrator', 1, CAST(N'2025-03-28T13:03:14.630' AS DateTime))
GO
SET IDENTITY_INSERT [userRoles] OFF
GO
