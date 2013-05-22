CREATE TABLE [Custom].[FontFamily]
(
[RecId] [tinyint] NOT NULL IDENTITY(1, 1),
[FontFamilyName] [nvarchar] (50) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL
) ON [Custom]
GO
ALTER TABLE [Custom].[FontFamily] ADD CONSTRAINT [PK_CustomFontFamily_RecId] PRIMARY KEY CLUSTERED  ([RecId]) ON [Custom]
GO
