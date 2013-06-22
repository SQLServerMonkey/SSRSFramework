CREATE TABLE [Custom].[MIMEType]
(
[MIMETypeID] [smallint] NOT NULL IDENTITY(1, 1),
[TypeClass] [nvarchar] (50) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[TypeName] [nvarchar] (50) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[TypeDescription] [nvarchar] (max) COLLATE Latin1_General_CI_AS_KS_WS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Custom].[MIMEType] ADD CONSTRAINT [PK_CustomMimeTypeMimeTypeID] PRIMARY KEY CLUSTERED  ([MIMETypeID]) ON [PRIMARY]
GO
