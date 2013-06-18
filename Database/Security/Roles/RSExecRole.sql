CREATE ROLE [RSExecRole]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'RSExecRole', N'NT SERVICE\ReportServer$SQL2012'
GO
