USE [ReportServer];
GO

CREATE TABLE [custom].[RptColourScheme]
(
	[RecId]						SMALLINT IDENTITY(1,1)		NOT NULL,
	[TablixHeaderBackground]	SMALLINT					NOT NULL,
	[TablixHeaderText]			SMALLINT					NOT NULL,
	[RptText]					SMALLINT					NOT NULL,
	[RptTitle]					SMALLINT					NOT NULL,
	[RptSubTitle]				SMALLINT					NOT NULL,
	[RptClassification]			SMALLINT					NOT NULL,
	[RptHeader]					SMALLINT					NOT NULL,
	[RptFooter]					SMALLINT					NOT NULL,
	[RptBackground]				SMALLINT					NOT NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [PK_CustomRptColourSchemeRecID] PRIMARY KEY CLUSTERED (RecID)
    ON [Custom]
;
GO

ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeTablixHeaderBackground_CustomColourPaletteRecID] FOREIGN KEY ([TablixHeaderBackground]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeTablixHeaderText_CustomColourPaletteRecID] FOREIGN KEY ([TablixHeaderText]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeRptText_CustomColourPaletteRecID] FOREIGN KEY ([RptText]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeRptTitle_CustomColourPaletteRecID] FOREIGN KEY ([RptTitle]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeRptSubTitle_CustomColourPaletteRecID] FOREIGN KEY ([RptSubTitle]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeRptClassification_CustomColourPaletteRecID] FOREIGN KEY ([RptClassification]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeRptHeader_CustomColourPaletteRecID] FOREIGN KEY ([RptHeader]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeRptFooter_CustomColourPaletteRecID] FOREIGN KEY ([RptFooter]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO
ALTER TABLE [Custom].[RptColourScheme]
	ADD CONSTRAINT [FK_CustomRptColourSchemeRptBackground_CustomColourPaletteRecID] FOREIGN KEY ([RptBackground]) REFERENCES [Custom].[ColourPalette](RecID)
;
GO