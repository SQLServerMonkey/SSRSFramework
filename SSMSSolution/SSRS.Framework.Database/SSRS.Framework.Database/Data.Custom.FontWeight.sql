USE [ReportServer];
GO

BEGIN TRANSACTION

BEGIN TRY

    INSERT INTO [Custom].[FontWeight]
        ([FontWeightName],[FontWeightDescription])
    VALUES
        (N'Default',N''),
        (N'Normal',N''),
        (N'Thin',N''),
        (N'ExtraLight',N''),
        (N'Light',N''),
        (N'Medium',N''),
        (N'SemiBold',N''),
        (N'Bold',N''),
        (N'ExtraBold',N''),
        (N'Heavy',N'')
    ;

    COMMIT TRANSACTION;

    SELECT *
    FROM [Custom].[FontWeight]
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