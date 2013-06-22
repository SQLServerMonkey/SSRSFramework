CREATE TABLE [Custom].[ReportDetail]
(
[ReportDetailID] [int] NOT NULL IDENTITY(1, 1),
[ReportColourSchemeID] [smallint] NOT NULL,
[ReportClassificationID] [tinyint] NOT NULL,
[FontFamilyID] [tinyint] NOT NULL,
[RDLName] [nvarchar] (425) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[ItemID] [uniqueidentifier] NOT NULL,
[ReportTitle] [nvarchar] (255) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[ReportSubTitle] [nvarchar] (255) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[ReportTablixConfigurationID] [smallint] NOT NULL,
[ReportImageLibraryID] [int] NOT NULL
) ON [Custom]
ALTER TABLE [Custom].[ReportDetail] ADD 
CONSTRAINT [PK_CustomReportDetailsReportDetailID] PRIMARY KEY CLUSTERED  ([ReportDetailID]) ON [Custom]
ALTER TABLE [Custom].[ReportDetail] ADD
CONSTRAINT [FK_CustomReportDetailsReportClassificationReportClassificationID_CustomRptClassificationRptClassificationID] FOREIGN KEY ([ReportClassificationID]) REFERENCES [Custom].[ReportClassification] ([ReportClassificationID])
ALTER TABLE [Custom].[ReportDetail] ADD
CONSTRAINT [FK_CustomReportDetailsFontFamilyId_CustomFontFamilyFontFamilyId] FOREIGN KEY ([FontFamilyID]) REFERENCES [Custom].[FontFamily] ([FontFamilyId])
ALTER TABLE [Custom].[ReportDetail] ADD
CONSTRAINT [FK_CustomReportDetailsItemID_DboCatalogItemId] FOREIGN KEY ([ItemID]) REFERENCES [dbo].[Catalog] ([ItemID])
ALTER TABLE [Custom].[ReportDetail] ADD
CONSTRAINT [FK_CustomReportDetailReportTablixConfigurationID_CustomTablicConfigurationTablicXonfigurationID] FOREIGN KEY ([ReportTablixConfigurationID]) REFERENCES [Custom].[TablixConfiguration] ([TablixConfigurationID])
ALTER TABLE [Custom].[ReportDetail] ADD
CONSTRAINT [FK_CustomReportDetailReportImageLibraryID_CustomReportImageLibraryReportImageLibraryID] FOREIGN KEY ([ReportImageLibraryID]) REFERENCES [Custom].[ReportImageLibrary] ([ReportImageLibraryID])





GO
