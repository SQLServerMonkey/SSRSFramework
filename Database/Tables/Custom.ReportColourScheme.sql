CREATE TABLE [Custom].[ReportColourScheme]
(
[ReportColourSchemeID] [smallint] NOT NULL IDENTITY(1, 1),
[ReportTextColourPaletteID] [smallint] NOT NULL,
[ReportTitleColourPaletteID] [smallint] NOT NULL,
[ReportSubTitleColourPaletteID] [smallint] NOT NULL,
[ReportClassificationColourPaletteID] [smallint] NOT NULL,
[ReportHeaderColourPaletteID] [smallint] NOT NULL,
[ReportFooterColourPaletteID] [smallint] NOT NULL,
[ReportBackgroundColourPaletteID] [smallint] NOT NULL
) ON [Custom]
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [PK_CustomReportColourSchemeID] PRIMARY KEY CLUSTERED  ([ReportColourSchemeID]) ON [Custom]
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [FK_CustomReportColourSchemeReportBackgroundColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([ReportBackgroundColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [FK_CustomReportColourSchemeReportClassificationColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([ReportClassificationColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [FK_CustomReportColourSchemeReportFooterColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([ReportFooterColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [FK_CustomReportColourSchemeReportHeaderColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([ReportHeaderColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [FK_CustomReportColourSchemeReportSubTitleColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([ReportSubTitleColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [FK_CustomReportColourSchemeReportTextColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([ReportTextColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
ALTER TABLE [Custom].[ReportColourScheme] ADD CONSTRAINT [FK_CustomReportColourSchemeReportTitleColourPaletteID_CustomColourPaletteColourPaletteID] FOREIGN KEY ([ReportTitleColourPaletteID]) REFERENCES [Custom].[ColourPalette] ([ColourPaletteID])
GO
