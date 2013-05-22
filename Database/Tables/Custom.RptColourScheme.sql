CREATE TABLE [Custom].[RptColourScheme]
(
[RecId] [smallint] NOT NULL IDENTITY(1, 1),
[TablixHeaderBackground] [smallint] NOT NULL,
[TablixHeaderText] [smallint] NOT NULL,
[RptText] [smallint] NOT NULL,
[RptTitle] [smallint] NOT NULL,
[RptSubTitle] [smallint] NOT NULL,
[RptClassification] [smallint] NOT NULL,
[RptHeader] [smallint] NOT NULL,
[RptFooter] [smallint] NOT NULL,
[RptBackground] [smallint] NOT NULL
) ON [Custom]
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [PK_CustomRptColourSchemeRecID] PRIMARY KEY CLUSTERED  ([RecId]) ON [Custom]
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeRptBackground_CustomColourPaletteRecID] FOREIGN KEY ([RptBackground]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeRptClassification_CustomColourPaletteRecID] FOREIGN KEY ([RptClassification]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeRptFooter_CustomColourPaletteRecID] FOREIGN KEY ([RptFooter]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeRptHeader_CustomColourPaletteRecID] FOREIGN KEY ([RptHeader]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeRptSubTitle_CustomColourPaletteRecID] FOREIGN KEY ([RptSubTitle]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeRptText_CustomColourPaletteRecID] FOREIGN KEY ([RptText]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeRptTitle_CustomColourPaletteRecID] FOREIGN KEY ([RptTitle]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeTablixHeaderBackground_CustomColourPaletteRecID] FOREIGN KEY ([TablixHeaderBackground]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
ALTER TABLE [Custom].[RptColourScheme] ADD CONSTRAINT [FK_CustomRptColourSchemeTablixHeaderText_CustomColourPaletteRecID] FOREIGN KEY ([TablixHeaderText]) REFERENCES [Custom].[ColourPalette] ([RecId])
GO
