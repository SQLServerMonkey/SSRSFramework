:CONNECT JQMLPT01\Kapuchin_2012

USE [Master];
GO

:Setvar DatabaseName ReportServer
:Setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL11.KAPUCHIN_2012\MSSQL\DATA\"
:Setvar DefaultFilePrefix ReportServer

ALTER DATABASE [$(DatabaseName)]
	ADD FILEGROUP [Custom]
;
GO

ALTER DATABASE [$(DatabaseName)]
	ADD FILE
	(
		NAME = [CustomData],
		FILENAME = '$(DefaultDataPath)$(DefaultFilePrefix)_Custom.ndf',
        SIZE = 1024 MB,
        FILEGROWTH = 256 MB
	)
    TO FILEGROUP [Custom]
;
GO