USE [ReportServer];
GO

CREATE TABLE [custom].[TablixConfiguration]
(
	[TablixConfigurationID]			                SMALLINT IDENTITY(1,1)		NOT NULL,
	[TablixHeaderBackgroundColourPaletteID]	        SMALLINT					NOT NULL,
	[TablixHeaderTextColourPaletteID]			    SMALLINT					NOT NULL,
	[TablixOddRowColourPaletteID]					SMALLINT					NOT NULL,
	[TablixEvenRowColourPaletteID]					SMALLINT					NOT NULL,
	[TablixHeaderFontFamilyID]  				    TINYINT	    				NOT NULL,
	[TablixBodyFontFamilyID]            			TINYINT	    				NOT NULL,
	[TablixGroupTotalFontFamilyID]					TINYINT	    				NOT NULL,
	[TablixHeaderFontWeightID]    					TINYINT 					NOT NULL,
	[TablixBodyFontWeightID]          				TINYINT 					NOT NULL,
    [TablixGroupTotalFontWeightID]                  TINYINT                     NOT NULL,
    [TablixHeaderFontSize]                          TINYINT                     NOT NULL,
    [TablixBodyFontSize]                            TINYINT                     NOT NULL,
    [TablixGroupTotalFontSize]                      TINYINT                     NOT NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [PK_CustomTablixConfigurationID] PRIMARY KEY CLUSTERED ([TablixConfigurationID])
    ON [Custom]
;
GO

ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderBackgroundColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([TablixHeaderBackgroundColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderTextColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([TablixHeaderTextColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO

ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixOddRowColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([TablixOddRowColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixEvenRowColourPaletteID_CustomColourPaletteColourPaletteID]
        FOREIGN KEY ([TablixEvenRowColourPaletteID]) REFERENCES [Custom].[ColourPalette]([ColourPaletteID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderFontFamilyID_CustomFontFamilyFontFamilyID]
        FOREIGN KEY ([TablixHeaderFontFamilyID]) REFERENCES [Custom].[FontFamily]([FontFamilyID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixBodyFontFamilyID_CustomFontFamilyFontFamilyID]
        FOREIGN KEY ([TablixBodyFontFamilyID]) REFERENCES [Custom].[FontFamily]([FontFamilyID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixGroupTotalFontFamilyID_CustomFontFamilyFontFamilyID]
        FOREIGN KEY ([TablixGroupTotalFontFamilyID]) REFERENCES [Custom].[FontFamily]([FontFamilyID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixHeaderFontWeightID_CustomFontFamilyFontFamilyID]
        FOREIGN KEY ([TablixHeaderFontWeightID]) REFERENCES [Custom].[FontWeight]([FontWeightID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixBodyFontWeightID_CustomFontFamilyFontFamilyID]
        FOREIGN KEY ([TablixBodyFontWeightID]) REFERENCES [Custom].[FontWeight]([FontWeightID])
;
GO
ALTER TABLE [Custom].[TablixConfiguration]
	ADD CONSTRAINT [FK_CustomTablixConfigurationTablixGroupTotalFontWeightID_CustomFontFamilyFontFamilyID]
        FOREIGN KEY ([TablixGroupTotalFontWeightID]) REFERENCES [Custom].[FontWeight]([FontWeightID])
;
GO
