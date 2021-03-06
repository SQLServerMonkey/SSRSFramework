CREATE TABLE [Custom].[ExecutionAlert]
(
[ExecutionAlertId] [smallint] NOT NULL IDENTITY(1, 1),
[CatalogItemId] [uniqueidentifier] NOT NULL,
[UsersUserId] [uniqueidentifier] NOT NULL,
[AlertToEmail] [nvarchar] (100) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[DbMailProfile] [sys].[sysname] NOT NULL
) ON [Custom]
ALTER TABLE [Custom].[ExecutionAlert] ADD 
CONSTRAINT [PK_CustomExecutionAlertRecId] PRIMARY KEY CLUSTERED  ([ExecutionAlertId]) ON [Custom]
ALTER TABLE [Custom].[ExecutionAlert] ADD
CONSTRAINT [FK_CustomExecutionAlertCatalogItemId_DboCatalogItemId] FOREIGN KEY ([CatalogItemId]) REFERENCES [dbo].[Catalog] ([ItemID])



GO
