USE [ReportServer];
GO

CREATE TABLE [custom].[FontFamily]
(
	[FontFamilyId]		TINYINT IDENTITY(1,1)		NOT NULL,
	[FontFamilyName]	NVARCHAR(50)				NOT NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[FontFamily]
	ADD CONSTRAINT [PK_CustomFontFamilyFontFamilyId] PRIMARY KEY CLUSTERED ([FontFamilyId])
    ON [Custom]
;
GO