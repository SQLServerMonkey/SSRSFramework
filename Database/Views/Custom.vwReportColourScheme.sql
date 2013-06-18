SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [Custom].[vwReportColourScheme]
AS

    SELECT [RptColourTxt].[ColourName] AS [ReportTextColourName], [RptColourTxt].[ColourHex] AS [ReportTextColourHex],
        [RptColourTitle].[ColourName] AS [ReportTitleColourName], [RptColourTitle].[ColourHex] AS [ReportTitleColourHex],
        [RptColourSubTitle].[ColourName] AS [ReportSubTitleColourName], [RptColourSubTitle].[ColourHex] AS [ReportSubTitleColourHex],
        [RptColourClass].[ColourName] AS [ReportClassificationColourName], [RptColourClass].[ColourHex] AS [ReportClassificationColourHex],
        [RptColourHeader].[ColourName] AS [ReportHeaderColourName],[RptColourHeader].[ColourHex] AS [ReportHeaderColourHex],
        [RptColourFooter].[ColourName] AS [ReportFooterColourName],[RptColourFooter].[ColourHex] AS [ReportFooterColourHex],
        [RptColourBackground].[ColourName] AS [ReportBackgroundColourName],[RptColourBackground].[ColourHex] AS [ReportBackgroundColourHex]
    FROM [Custom].[ReportColourScheme] AS [RptColourSch]
    JOIN [Custom].[ColourPalette] AS [RptColourTxt]
        ON [RptColourSch].[ReportTextColourPaletteID] = [RptColourTxt].[ColourPaletteID]
    JOIN [Custom].[ColourPalette] AS [RptColourTitle]
        ON [RptColourSch].[ReportTitleColourPaletteID] = [RptColourTitle].[ColourPaletteID]
    JOIN [Custom].[ColourPalette] AS [RptColourSubTitle]
        ON [RptColourSch].[ReportSubTitleColourPaletteID] = [RptColourSubTitle].[ColourPaletteID]
    JOIN [Custom].[ColourPalette] AS [RptColourClass]
        ON [RptColourSch].[ReportClassificationColourPaletteID] = [RptColourClass].[ColourPaletteID]
    JOIN [Custom].[ColourPalette] AS [RptColourHeader]
        ON [RptColourSch].[ReportHeaderColourPaletteID] = [RptColourHeader].[ColourPaletteID]
    JOIN [Custom].[ColourPalette] AS [RptColourFooter]
        ON [RptColourSch].[ReportFooterColourPaletteID] = [RptColourFooter].[ColourPaletteID]
    JOIN [Custom].[ColourPalette] AS [RptColourBackground]
        ON [RptColourSch].[ReportBackgroundColourPaletteID] = [RptColourBackground].[ColourPaletteID]
    ;

GO
