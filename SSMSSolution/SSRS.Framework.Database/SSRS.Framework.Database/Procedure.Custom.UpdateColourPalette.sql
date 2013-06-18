USE [ReportServer];
GO

IF EXISTS
(
    SELECT 1
    FROM INFORMATION_SCHEMA.ROUTINES
    WHERE ROUTINE_CATALOG = DB_NAME()
        AND ROUTINE_SCHEMA = 'custom'
        AND ROUTINE_NAME = 'UpdateColourPalette'
        AND ROUTINE_TYPE = 'PROCEDURE'
)
BEGIN 
    DROP PROC [Custom].[UpdateColourPalette];
END 
GO

CREATE PROC [Custom].[UpdateColourPalette] 
    @ColourPaletteID SMALLINT,
    @ColourName NVARCHAR(100),
    @ColourHex NVARCHAR(8),
    @ReturnUpdated BIT = 0
AS
BEGIN

    DECLARE @ErrorMessage NVARCHAR(2048)
    DECLARE @ErrorState INT
    DECLARE @ErrorSeverity INT
    ;  

	SET NOCOUNT ON;
	
	BEGIN TRANSACTION
    
    BEGIN TRY
    
        --// Update does not permit the modification of the Identity value.
	    UPDATE [Custom].[ColourPalette]
	    SET [ColourName] = @ColourName,
            [ColourHex] = @ColourHex
	    WHERE [ColourPaletteID] = @ColourPaletteID
        ;
	
	    COMMIT TRANSACTION;

        IF(@ReturnUpdated = 1)
        BEGIN
	        SELECT [ColourPaletteID], [ColourName], [ColourHex]
	        FROM [Custom].[ColourPalette]
	        WHERE [ColourPaletteID] = @ColourPaletteID
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