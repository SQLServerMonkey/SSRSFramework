USE [ReportServer];
GO

CREATE TABLE [Custom].[ColourPalette]
(
	[RecId]			SMALLINT		NOT NULL,
	[ColourName]	NVARCHAR(100)	NULL,
	[ColourHex]		NVARCHAR(8)		NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[ColourPalette]
	ADD CONSTRAINT [PK_CustomColourPaletteRecID] PRIMARY KEY CLUSTERED (RecID)
    ON [Custom]
;
GO