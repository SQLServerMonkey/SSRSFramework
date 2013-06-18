USE [ReportServer];
GO

CREATE TABLE [Custom].[ReportClassification]
(
	[ReportClassificationID]	TINYINT IDENTITY(1,1)	NOT NULL,
	[ClassificationName]	NVARCHAR(100)	NOT NULL,
	[ClassificationDesc]	NVARCHAR(MAX)	NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[ReportClassification]
	ADD CONSTRAINT [PK_CustomReportClassificationReportClassificationID] PRIMARY KEY CLUSTERED ([ReportClassificationID])
    ON [Custom]
;
GO