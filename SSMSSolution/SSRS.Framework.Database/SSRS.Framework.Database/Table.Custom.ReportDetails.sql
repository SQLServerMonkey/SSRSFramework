USE [ReportServer];
GO

CREATE TABLE [Custom].[ReportDetails]
(
	[RecID]						INT IDENTITY(1,1)	NOT NULL,
	[RDLName]					NVARCHAR(425)		NOT NULL,
	[ItemID]					UNIQUEIDENTIFIER	NOT NULL,
	[ReportTitle]				NVARCHAR(255)		NULL,
	[RptSubTitle]				NVARCHAR(255)		NULL,
	[RptClassificationRecId]	TINYINT				NOT NULL,
	[FontFamilyRecId]			TINYINT				NOT NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[ReportDetails]
	ADD CONSTRAINT [PK_ReportDetails_RecID] PRIMARY KEY CLUSTERED (RecID)
    ON [Custom]
;
GO

ALTER TABLE [Custom].[ReportDetails]
	ADD CONSTRAINT [FK_CustomReportDetailsItemID_DboCatalogItemId] FOREIGN KEY (ItemID) REFERENCES [dbo].[catalog](ItemID)
;
GO

ALTER TABLE [Custom].[ReportDetails]
	ADD CONSTRAINT [FK_CustomReportDetailsFontFamilyRedId_CustomFontFamilyRecId] FOREIGN KEY ([FontFamilyRecId]) REFERENCES [Custom].[FontFamily](RecID)
;
GO

ALTER TABLE [Custom].[ReportDetails]
	ADD CONSTRAINT [FK_CustomReportDetailsRptClassificationRecId_CustomRptClassificationRecID] FOREIGN KEY (RptClassificationRecId) REFERENCES [Custom].[RptClassification](RecId)
;
GO