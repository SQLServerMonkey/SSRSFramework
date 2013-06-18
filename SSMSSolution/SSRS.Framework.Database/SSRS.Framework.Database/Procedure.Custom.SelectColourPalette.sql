USE [ReportServer];
GO

IF EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_CATALOG = DB_NAME() AND ROUTINE_SCHEMA = 'custom' AND ROUTINE_NAME = 'SelectColourPalette' AND ROUTINE_TYPE = 'PROCEDURE')
BEGIN 
    DROP PROC [Custom].[SelectColourPalette];
END 
GO

CREATE PROC [Custom].[SelectColourPalette] 
(
    @ColourPaletteID SMALLINT = NULL
)
AS 
BEGIN

	SELECT [ColourPaletteID], [ColourName], [ColourHex] 
	FROM   [Custom].[ColourPalette] 
	WHERE  ([ColourPaletteID] = @ColourPaletteID OR @ColourPaletteID IS NULL) 

END

GO