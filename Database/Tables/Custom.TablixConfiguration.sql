CREATE TABLE [Custom].[TablixConfiguration]
(
[TablixConfigurationID] [smallint] NOT NULL IDENTITY(1, 1),
[TablixHeaderBackgroundColourPaletteID] [smallint] NOT NULL,
[TablixHeaderTextColourPaletteID] [smallint] NOT NULL,
[TablixOddRowColourPaletteID] [smallint] NOT NULL,
[TablixEvenRowColourPaletteID] [smallint] NOT NULL,
[TablixHeaderFontFamilyID] [tinyint] NOT NULL,
[TablixBodyFontFamilyID] [tinyint] NOT NULL,
[TablixGroupTotalFontFamilyID] [tinyint] NOT NULL,
[TablixHeaderFontWeightID] [tinyint] NOT NULL,
[TablixBodyFontWeightID] [tinyint] NOT NULL,
[TablixGroupTotalFontWeightID] [tinyint] NOT NULL,
[TablixHeaderFontSize] [tinyint] NOT NULL,
[TablixBodyFontSize] [tinyint] NOT NULL,
[TablixGroupTotalFontSize] [tinyint] NOT NULL
) ON [Custom]
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [PK_CustomTablixConfigurationID] PRIMARY KEY CLUSTERED  ([TablixConfigurationID]) ON [Custom]
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixBodyFontFamilyID_CustomFontFamilyFontFamilyID] FOREIGN KEY ([TablixBodyFontFamilyID]) REFERENCES [Custom].[FontFamily] ([FontFamilyId])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixBodyFontWeightID_CustomFontFamilyFontFamilyID] FOREIGN KEY ([TablixBodyFontWeightID]) REFERENCES [Custom].[FontWeight] ([FontWeightID])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixEvenRowColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([TablixEvenRowColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixGroupTotalFontFamilyID_CustomFontFamilyFontFamilyID] FOREIGN KEY ([TablixGroupTotalFontFamilyID]) REFERENCES [Custom].[FontFamily] ([FontFamilyId])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixGroupTotalFontWeightID_CustomFontFamilyFontFamilyID] FOREIGN KEY ([TablixGroupTotalFontWeightID]) REFERENCES [Custom].[FontWeight] ([FontWeightID])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderBackgroundColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([TablixHeaderBackgroundColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderFontFamilyID_CustomFontFamilyFontFamilyID] FOREIGN KEY ([TablixHeaderFontFamilyID]) REFERENCES [Custom].[FontFamily] ([FontFamilyId])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderFontWeightID_CustomFontFamilyFontFamilyID] FOREIGN KEY ([TablixHeaderFontWeightID]) REFERENCES [Custom].[FontWeight] ([FontWeightID])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderTextColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([TablixHeaderTextColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[TablixConfiguration] ADD CONSTRAINT [FK_CustomTablixConfigurationTablixOddRowColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([TablixOddRowColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
