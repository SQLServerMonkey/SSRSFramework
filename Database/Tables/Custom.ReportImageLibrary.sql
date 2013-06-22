CREATE TABLE [Custom].[ReportImageLibrary]
(
[ReportImageLibraryID] [int] NOT NULL IDENTITY(1, 1),
[ImageName] [nvarchar] (100) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[MIMETypeid] [smallint] NOT NULL,
[ImageLocation] [nvarchar] (255) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[ImageDescription] [nvarchar] (max) COLLATE Latin1_General_CI_AS_KS_WS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Custom].[ReportImageLibrary] ADD CONSTRAINT [PK_CustomReportImageLibraryReportImageLibraryID] PRIMARY KEY CLUSTERED  ([ReportImageLibraryID]) ON [PRIMARY]
GO
ALTER TABLE [Custom].[ReportImageLibrary] ADD CONSTRAINT [FK_CustomReportImageLibraryMIMETypeID_CustomMIMTTypeMIMETypeID] FOREIGN KEY ([MIMETypeid]) REFERENCES [Custom].[MIMEType] ([MIMETypeID])
GO
