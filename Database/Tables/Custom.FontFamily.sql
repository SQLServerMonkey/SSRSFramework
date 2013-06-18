CREATE TABLE [Custom].[FontFamily]
(
[FontFamilyId] [tinyint] NOT NULL IDENTITY(1, 1),
[FontFamilyName] [nvarchar] (50) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL
) ON [Custom]
ALTER TABLE [Custom].[FontFamily] ADD 
CONSTRAINT [PK_CustomFontFamilyFontFamilyId] PRIMARY KEY CLUSTERED  ([FontFamilyId]) ON [Custom]
GO
