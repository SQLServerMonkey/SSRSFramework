USE [ReportServer];
GO

CREATE TABLE [Custom].[ColourPalette]
(
	[ColourPaletteID]	SMALLINT		NOT NULL,
	[ColourName]	    NVARCHAR(100)	NULL,
	[ColourHex]		    NVARCHAR(8)		NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[ColourPalette]
	ADD CONSTRAINT [PK_CustomColourPaletteColourPaletteId] PRIMARY KEY CLUSTERED ([ColourPaletteId])
    ON [Custom]
;
GO