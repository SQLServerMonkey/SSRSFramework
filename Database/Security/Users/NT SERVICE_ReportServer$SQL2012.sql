IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'NT SERVICE\ReportServer$SQL2012')
CREATE LOGIN [NT SERVICE\ReportServer$SQL2012] FROM WINDOWS
GO
CREATE USER [NT SERVICE\ReportServer$SQL2012] FOR LOGIN [NT SERVICE\ReportServer$SQL2012] WITH DEFAULT_SCHEMA=[NT SERVICE\ReportServer$SQL2012]
GO
