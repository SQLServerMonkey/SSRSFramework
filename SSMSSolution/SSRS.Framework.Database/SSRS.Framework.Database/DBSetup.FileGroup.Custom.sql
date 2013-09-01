USE [master]
GO
ALTER DATABASE [ReportServer] ADD FILEGROUP [Custom];
GO
ALTER DATABASE [ReportServer]
    ADD FILE
    (
        NAME = N'ReportServer_Custom',
        FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2012\MSSQL\DATA\ReportServer_Custom.ndf' ,
        SIZE = 1024MB,
        FILEGROWTH = 512MB
    ) TO FILEGROUP [Custom]
GO
