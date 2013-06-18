CREATE TABLE [dbo].[Users]
(
[UserID] [uniqueidentifier] NOT NULL,
[Sid] [varbinary] (85) NULL,
[UserType] [int] NOT NULL,
[AuthType] [int] NOT NULL,
[UserName] [nvarchar] (260) COLLATE Latin1_General_CI_AS_KS_WS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY NONCLUSTERED  ([UserID]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [IX_Users] ON [dbo].[Users] ([Sid], [UserName], [AuthType]) ON [PRIMARY]
GO
GRANT REFERENCES ON  [dbo].[Users] TO [RSExecRole]
GRANT SELECT ON  [dbo].[Users] TO [RSExecRole]
GRANT INSERT ON  [dbo].[Users] TO [RSExecRole]
GRANT DELETE ON  [dbo].[Users] TO [RSExecRole]
GRANT UPDATE ON  [dbo].[Users] TO [RSExecRole]
GO
