CREATE TABLE [Custom].[ColourPalette]
(
[ColourPaletteID] [smallint] IDENTITY(1,1) NOT NULL,
[ColourName] [nvarchar] (100) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[ColourHex] [nvarchar] (8) COLLATE Latin1_General_CI_AS_KS_WS NULL
) ON [Custom]
ALTER TABLE [Custom].[ColourPalette] ADD 
CONSTRAINT [PK_CustomColourPaletteColourPaletteId] PRIMARY KEY CLUSTERED  ([ColourPaletteID]) ON [Custom]
GO
