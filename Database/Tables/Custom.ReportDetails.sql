CREATE TABLE [Custom].[ReportDetails]
(
[RecID] [int] NOT NULL IDENTITY(1, 1),
[RDLName] [nvarchar] (425) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[ItemID] [uniqueidentifier] NOT NULL,
[ReportTitle] [nvarchar] (255) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[RptSubTitle] [nvarchar] (255) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[RptClassificationRecId] [tinyint] NOT NULL,
[FontFamilyRecId] [tinyint] NOT NULL
) ON [Custom]
GO
ALTER TABLE [Custom].[ReportDetails] ADD CONSTRAINT [PK_ReportDetails_RecID] PRIMARY KEY CLUSTERED  ([RecID]) ON [Custom]
GO
ALTER TABLE [Custom].[ReportDetails] ADD CONSTRAINT [FK_CustomReportDetailsFontFamilyRedId_CustomFontFamilyRecId] FOREIGN KEY ([FontFamilyRecId]) REFERENCES [Custom].[FontFamily] ([RecId])
GO
ALTER TABLE [Custom].[ReportDetails] ADD CONSTRAINT [FK_CustomReportDetailsItemID_DboCatalogItemId] FOREIGN KEY ([ItemID]) REFERENCES [dbo].[Catalog] ([ItemID])
GO
ALTER TABLE [Custom].[ReportDetails] ADD CONSTRAINT [FK_CustomReportDetailsRptClassificationRecId_CustomRptClassificationRecID] FOREIGN KEY ([RptClassificationRecId]) REFERENCES [Custom].[RptClassification] ([RecId])
GO
