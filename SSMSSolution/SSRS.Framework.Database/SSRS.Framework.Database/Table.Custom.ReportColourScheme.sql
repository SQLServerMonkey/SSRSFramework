USE [ReportServer];
GO

CREATE TABLE [custom].[ReportColourScheme]
(
	[ReportColourSchemeID]			                SMALLINT IDENTITY(1,1)		NOT NULL,
	[ReportTextColourPaletteID]					    SMALLINT					NOT NULL,
	[ReportTitleColourPaletteID]					SMALLINT					NOT NULL,
	[ReportSubTitleColourPaletteID]				    SMALLINT					NOT NULL,
	[ReportClassificationColourPaletteID]			SMALLINT					NOT NULL,
	[ReportHeaderColourPaletteID]					SMALLINT					NOT NULL,
	[ReportFooterColourPaletteID]					SMALLINT					NOT NULL,
	[ReportBackgroundColourPaletteID]				SMALLINT					NOT NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [PK_CustomReportColourSchemeID] PRIMARY KEY CLUSTERED ([ReportColourSchemeID])
    ON [Custom]
;
GO

ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [FK_CustomReportColourSchemeReportTextColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([ReportTextColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [FK_CustomReportColourSchemeReportTitleColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([ReportTitleColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [FK_CustomReportColourSchemeReportSubTitleColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([ReportSubTitleColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [FK_CustomReportColourSchemeReportClassificationColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([ReportClassificationColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [FK_CustomReportColourSchemeReportHeaderColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([ReportHeaderColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [FK_CustomReportColourSchemeReportFooterColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([ReportFooterColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[ReportColourScheme]
	ADD CONSTRAINT [FK_CustomReportColourSchemeReportBackgroundColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([ReportBackgroundColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO