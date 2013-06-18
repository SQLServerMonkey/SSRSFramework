CREATE TABLE [Custom].[FontWeight]
(
[FontWeightID] [tinyint] NOT NULL IDENTITY(1, 1),
[FontWeightName] [nvarchar] (25) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[FontWeightDescription] [nvarchar] (100) COLLATE Latin1_General_CI_AS_KS_WS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Custom].[FontWeight] ADD CONSTRAINT [PK_CustomFontWeightFontWeightID] PRIMARY KEY CLUSTERED  ([FontWeightID]) ON [PRIMARY]
GO
