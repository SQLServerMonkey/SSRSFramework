USE [ReportServer];
GO

BEGIN TRANSACTION

BEGIN TRY

    INSERT INTO [Custom].[FontFamily]
        ([FontFamilyName])
    VALUES
        (N'Arial'),(N'Arial Black'),(N'Arial Narrow'),(N'Arial Rounded MT Bold'),
        (N'Arial Unicode MS'),(N'Calibri'),(N'Calibri Light'),(N'Cambria'),
        (N'Comic Sans MS'),(N'Times New Roman'),(N'Verdana'),(N'Wingdings')
    ;

    COMMIT TRANSACTION;

    SELECT *
    FROM [Custom].[FontFamily]
    ;

END TRY
BEGIN CATCH
    
    IF(@@TRANCOUNT > 0)
    BEGIN
        ROLLBACK TRANSACTION;
    END  

    SELECT ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState
    ;

END CATCH