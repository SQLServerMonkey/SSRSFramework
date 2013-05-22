CREATE TABLE [Custom].[ColourPalette]
(
[RecId] [smallint] NOT NULL,
[ColourName] [nvarchar] (100) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[ColourHex] [nvarchar] (8) COLLATE Latin1_General_CI_AS_KS_WS NULL
) ON [Custom]
GO
ALTER TABLE [Custom].[ColourPalette] ADD CONSTRAINT [PK_CustomColourPaletteRecID] PRIMARY KEY CLUSTERED  ([RecId]) ON [Custom]
GO
