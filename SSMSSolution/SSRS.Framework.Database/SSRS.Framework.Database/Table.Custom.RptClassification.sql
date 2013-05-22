USE [ReportServer];
GO

CREATE TABLE [Custom].[RptClassification]
(
	[RecId]			TINYINT IDENTITY(1,1)	NOT NULL,
	[ClassificationName]	NVARCHAR(100)	NOT NULL,
	[ClassificationDesc]	NVARCHAR(MAX)	NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[RptClassification]
	ADD CONSTRAINT [PK_CustomRptClassificationRecID] PRIMARY KEY CLUSTERED (RecId)
    ON [Custom]
;
GO