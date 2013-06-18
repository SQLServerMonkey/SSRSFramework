SET IDENTITY_INSERT [Custom].[ReportClassification] ON
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (1, N'Unclassified', N'Report can be freely distributed')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (2, N'Confidential', N'Report distribution is limited')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (3, N'Company Confidential', N'Report distribution is limited to comapny staff only')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (4, N'Customer Confidential', N'Report distribution is limited to customer and approved company staff')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (5, N'Restricted', N'Report distribution is limited to approved personell')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (6, N'Company Restricted', N'Report distribution is limited company staff')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (7, N'Secret', N'Report distribution is limited')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (8, N'Company Secret', N'Report distribution is limited to approved company staff')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (9, N'Financial Eyes Only', N'Report distribution is limited to approved financial staff only')
INSERT INTO [Custom].[ReportClassification] ([ReportClassificationID], [ClassificationName], [ClassificationDesc]) VALUES (10, N'Board Level Eyes Only', N'Report distribution is limited to board members only')
SET IDENTITY_INSERT [Custom].[ReportClassification] OFF
