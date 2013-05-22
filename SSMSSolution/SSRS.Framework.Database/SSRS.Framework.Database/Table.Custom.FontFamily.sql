USE [ReportServer];
GO

CREATE TABLE [custom].[FontFamily]
(
	[RecId]				TINYINT IDENTITY(1,1)		NOT NULL,
	[FontFamilyName]	NVARCHAR(50)				NOT NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[FontFamily]
	ADD CONSTRAINT [PK_CustomFontFamily_RecId] PRIMARY KEY CLUSTERED (RecID)
    ON [Custom]
;
GO