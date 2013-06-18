SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [Custom].[InsertColourPalette]
(
    @ColourName NVARCHAR(100),
    @ColourHex NVARCHAR(8),
    @ReturnInserted BIT = 0
)
AS
BEGIN

    DECLARE @ErrorMessage NVARCHAR(2048)
    DECLARE @ErrorState INT
    DECLARE @ErrorSeverity INT
    DECLARE @Inserted TABLE([ColourPaletteID] SMALLINT, [ColourName] NVARCHAR(100), [ColourHex] NVARCHAR(8))
    ;
      
	SET NOCOUNT ON;
	
	BEGIN TRANSACTION
	
    BEGIN TRY
	    INSERT INTO [Custom].[ColourPalette]
        ([ColourName], [ColourHex])
        OUTPUT [INSERTED].[ColourPaletteID], [INSERTED].[ColourName], [INSERTED].[ColourHex]
            INTO @Inserted
        SELECT @ColourName, @ColourHex
        ;

	COMMIT TRANSACTION;

    IF(@ReturnInserted = 1)
    BEGIN
        SELECT [ColourPaletteID], [ColourName], [ColourHex]
        FROM @Inserted
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
