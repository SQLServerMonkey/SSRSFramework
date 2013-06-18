CREATE TABLE [dbo].[Policies]
(
[PolicyID] [uniqueidentifier] NOT NULL,
[PolicyFlag] [tinyint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Policies] ADD CONSTRAINT [PK_Policies] PRIMARY KEY CLUSTERED  ([PolicyID]) ON [PRIMARY]
GO
GRANT REFERENCES ON  [dbo].[Policies] TO [RSExecRole]
GRANT SELECT ON  [dbo].[Policies] TO [RSExecRole]
GRANT INSERT ON  [dbo].[Policies] TO [RSExecRole]
GRANT DELETE ON  [dbo].[Policies] TO [RSExecRole]
GRANT UPDATE ON  [dbo].[Policies] TO [RSExecRole]
GO
