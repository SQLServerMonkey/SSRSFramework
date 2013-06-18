USE [ReportServer];
GO

CREATE TABLE [Custom].[ReportDetail]
(
	[ReportDetailID]			INT IDENTITY(1,1)	NOT NULL,
    [ReportColourSchemeID]      SMALLINT            NOT NULL,
    [ReportClassificationID]	TINYINT				NOT NULL,
	[FontFamilyID]			    TINYINT				NOT NULL,
	[RDLName]					NVARCHAR(425)		NOT NULL,
	[ItemID]					UNIQUEIDENTIFIER	NOT NULL,
	[ReportTitle]				NVARCHAR(255)		NULL,
	[ReportSubTitle]			NVARCHAR(255)		NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[ReportDetail]
	ADD CONSTRAINT [PK_CustomReportDetailsReportDetailID] PRIMARY KEY CLUSTERED ([ReportDetailID])
    ON [Custom]
;
GO

ALTER TABLE [Custom].[ReportDetail]
	ADD CONSTRAINT [FK_CustomReportDetailsItemID_DboCatalogItemId]
        FOREIGN KEY (ItemID) REFERENCES [dbo].[catalog]([ItemID])
;
GO

ALTER TABLE [Custom].[ReportDetail]
	ADD CONSTRAINT [FK_CustomReportDetailsFontFamilyId_CustomFontFamilyFontFamilyId]
        FOREIGN KEY ([FontFamilyID]) REFERENCES [Custom].[FontFamily]([FontFamilyId])
;
GO

ALTER TABLE [Custom].[ReportDetail]
	ADD CONSTRAINT [FK_CustomReportDetailsReportClassificationReportClassificationID_CustomRptClassificationRptClassificationID]
        FOREIGN KEY (ReportClassificationId) REFERENCES [Custom].[ReportClassification]([ReportClassificationID])
;
GO