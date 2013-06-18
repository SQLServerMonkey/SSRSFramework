USE [ReportServer];
GO

CREATE TABLE [Custom].[ExecutionAlert]
(
	[ExecutionAlertId]      SMALLINT IDENTITY(1,1)	NOT NULL,
	[CatalogItemId]	        UNIQUEIDENTIFIER		NOT NULL,
	[UsersUserId]	        UNIQUEIDENTIFIER		NOT NULL,
	[AlertToEmail]	        NVARCHAR(100)			NOT NULL
) ON [Custom]
;
GO

ALTER TABLE [Custom].[ExecutionAlert]
	ADD CONSTRAINT [PK_CustomExecutionAlertRecId] PRIMARY KEY CLUSTERED ([ExecutionAlertId])
    ON [Custom]
;
GO

ALTER TABLE [Custom].[ExecutionAlert]
	ADD CONSTRAINT [FK_CustomExecutionAlertCatalogItemId_DboCatalogItemId]
        FOREIGN KEY ([CatalogItemId]) REFERENCES [dbo].[Catalog]([ItemId])
;
GO

ALTER TABLE [Custom].[ExecutionAlert]
	ADD CONSTRAINT [FK_CustomExecutionAlertUsersUserId_DboUsersUserId]
        FOREIGN KEY ([UsersUserId]) REFERENCES [dbo].[Users]([UserId])
;
