SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
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
