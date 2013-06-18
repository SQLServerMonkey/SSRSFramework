CREATE TABLE [Custom].[ReportClassification]
(
[ReportClassificationID] [tinyint] NOT NULL IDENTITY(1, 1),
[ClassificationName] [nvarchar] (100) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[ClassificationDesc] [nvarchar] (max) COLLATE Latin1_General_CI_AS_KS_WS NULL
) ON [Custom] TEXTIMAGE_ON [Custom]
GO
ALTER TABLE [Custom].[ReportClassification] ADD CONSTRAINT [PK_CustomReportClassificationReportClassificationID] PRIMARY KEY CLUSTERED  ([ReportClassificationID]) ON [Custom]
GO
