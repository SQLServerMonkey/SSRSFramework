SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [Custom].[vwReportDetail]
AS

    SELECT [RptDetail].[RDLName], [RptDetail].[ItemID], [RptDetail].[ReportTitle], [RptDetail].[ReportSubTitle],
        [RptClass].[ClassificationName], [RptFont].[FontFamilyName]
    FROM [Custom].[ReportDetail] AS [RptDetail]
    JOIN [Custom].[FontFamily] AS [RptFont]
        ON [RptDetail].[FontFamilyID] = [RptFont].[FontFamilyID]
    JOIN [Custom].[ReportClassification] AS [RptClass]
        ON [RptDetail].[ReportClassificationID] = [RptClass].[ReportClassificationID]
    JOIN [Custom].[ReportColourScheme] AS [RptColScheme]
        ON [RptDetail].[ReportColourSchemeID] = [RptColScheme].ReportColourSchemeID
    ;

GO
