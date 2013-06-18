USE [ReportServer];
GO

IF EXISTS
(
    SELECT 1
    FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_CATALOG = DB_NAME()
        AND TABLE_SCHEMA = 'custom'
        AND TABLE_NAME = 'vwReportDetail'
        AND TABLE_TYPE = 'view'
)
BEGIN 
    DROP VIEW [Custom].[vwReportDetail];
END
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