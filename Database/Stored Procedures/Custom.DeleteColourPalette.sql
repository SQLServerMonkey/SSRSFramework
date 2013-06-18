SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [Custom].[DeleteColourPalette]
    @ColourPaletteID SMALLINT,
    @ReturnDeleted BIT = 0
AS
BEGIN

	SET NOCOUNT ON;

    DECLARE @ErrorMessage NVARCHAR(2048)
    DECLARE @ErrorState INT
    DECLARE @ErrorSeverity INT
    DECLARE @Deleted TABLE([ColourPaletteID] SMALLINT, [ColourName] NVARCHAR(100), [ColourHex] NVARCHAR(8))
    ;

	BEGIN TRANSACTION
    
    BEGIN TRY
    
	    DELETE FROM [Custom].[ColourPalette]
        OUTPUT [DELETED].[ColourPaletteID], [DELETED].[ColourName], [DELETED].[ColourHex]
            INTO @Deleted
	    WHERE [ColourPaletteID] = @ColourPaletteID
        ;

	    COMMIT TRANSACTION;

        IF(@ReturnDeleted = 1)
        BEGIN
            
            SELECT [ColourPaletteID], [ColourName], [ColourHex]
            FROM @Deleted
            ;
         
        END      

    END TRY
    BEGIN CATCH
  
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END
        
        SELECT @ErrorMessage = ERROR_MESSAGE(),
            @ErrorState = ERROR_STATE(),
            @ErrorSeverity = ERROR_SEVERITY()
        ;

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    
    END CATCH

END  
GO
