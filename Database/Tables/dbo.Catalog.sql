CREATE TABLE [dbo].[Catalog]
(
[ItemID] [uniqueidentifier] NOT NULL,
[Path] [nvarchar] (425) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[Name] [nvarchar] (425) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[ParentID] [uniqueidentifier] NULL,
[Type] [int] NOT NULL,
[Content] [image] NULL,
[Intermediate] [uniqueidentifier] NULL,
[SnapshotDataID] [uniqueidentifier] NULL,
[LinkSourceID] [uniqueidentifier] NULL,
[Property] [ntext] COLLATE Latin1_General_CI_AS_KS_WS NULL,
[Description] [nvarchar] (512) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[Hidden] [bit] NULL,
[CreatedByID] [uniqueidentifier] NOT NULL,
[CreationDate] [datetime] NOT NULL,
[ModifiedByID] [uniqueidentifier] NOT NULL,
[ModifiedDate] [datetime] NOT NULL,
[MimeType] [nvarchar] (260) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[SnapshotLimit] [int] NULL,
[Parameter] [ntext] COLLATE Latin1_General_CI_AS_KS_WS NULL,
[PolicyID] [uniqueidentifier] NOT NULL,
[PolicyRoot] [bit] NOT NULL,
[ExecutionFlag] [int] NOT NULL,
[ExecutionTime] [datetime] NULL,
[SubType] [nvarchar] (128) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[ComponentID] [uniqueidentifier] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[TR_I_AddReportToCustomFramework]
    ON [dbo].[Catalog]
    FOR INSERT
AS
BEGIN

    SET NOCOUNT ON;

    BEGIN TRY

        DECLARE @TablixConfigID SMALLINT = (SELECT Config.TablixConfigurationID FROM Custom.TablixConfiguration AS Config WHERE Config.TablixConfigurationName = N'Default');
        DECLARE @ReportClassification TINYINT = (SELECT RptClass.ReportClassificationID FROM Custom.ReportClassification AS RptClass WHERE RptClass.ClassificationName = N'Unclassified');
        DECLARE @ReportDefaultFont TINYINT = (SELECT Font.FontFamilyId FROM Custom.FontFamily AS Font WHERE Font.FontFamilyName = N'Verdana');
        DECLARE @ReportDefaultColourScheme TINYINT = (SELECT ColScheme.ReportColourSchemeID FROM Custom.ReportColourScheme AS ColScheme WHERE ColScheme.ReportColourSchemeName = N'Default');

        INSERT INTO Custom.ReportDetail
                ( ReportColourSchemeID ,
                  ReportClassificationID ,
                  FontFamilyID ,
                  RDLName ,
                  ItemID ,
                  ReportTitle ,
                  ReportSubTitle ,
                  ReportTablixConfigurationID ,
                  ReportImageLibraryID
                )
        SELECT    @ReportDefaultColourScheme , -- ReportColourSchemeID - smallint
                  @ReportClassification, -- ReportClassificationID - tinyint
                  @ReportDefaultFont, -- FontFamilyID - tinyint
                  Ins.name, -- RDLName - nvarchar(425)
                  Ins.ItemID, -- ItemID - uniqueidentifier
                  N'', -- ReportTitle - nvarchar(255)
                  N'', -- ReportSubTitle - nvarchar(255)
                  @TablixConfigID,
                  1  -- ReportImageLibraryID - int
        FROM INSERTED AS Ins
        WHERE Ins.[Type] IN (2,4) --// Types: 2 = Report, 4 = Linked Report
        ;

    END TRY
    BEGIN CATCH

        DECLARE @ErrorMessage NVARCHAR(2048);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT @ErrorMessage = ERROR_MESSAGE(),
            @ErrorState = ERROR_STATE(),
            @ErrorSeverity = ERROR_SEVERITY()
        ;

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH

END
GO


ALTER TABLE [dbo].[Catalog] ADD CONSTRAINT [PK_Catalog] PRIMARY KEY NONCLUSTERED  ([ItemID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Link] ON [dbo].[Catalog] ([LinkSourceID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[Catalog] ([ParentID]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [IX_Catalog] ON [dbo].[Catalog] ([Path]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SnapshotDataId] ON [dbo].[Catalog] ([SnapshotDataID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ComponentLookup] ON [dbo].[Catalog] ([Type], [ComponentID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Catalog] WITH NOCHECK ADD CONSTRAINT [FK_Catalog_CreatedByID] FOREIGN KEY ([CreatedByID]) REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Catalog] WITH NOCHECK ADD CONSTRAINT [FK_Catalog_LinkSourceID] FOREIGN KEY ([LinkSourceID]) REFERENCES [dbo].[Catalog] ([ItemID])
GO
ALTER TABLE [dbo].[Catalog] WITH NOCHECK ADD CONSTRAINT [FK_Catalog_ModifiedByID] FOREIGN KEY ([ModifiedByID]) REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Catalog] WITH NOCHECK ADD CONSTRAINT [FK_Catalog_ParentID] FOREIGN KEY ([ParentID]) REFERENCES [dbo].[Catalog] ([ItemID])
GO
ALTER TABLE [dbo].[Catalog] WITH NOCHECK ADD CONSTRAINT [FK_Catalog_Policy] FOREIGN KEY ([PolicyID]) REFERENCES [dbo].[Policies] ([PolicyID])
GO
GRANT REFERENCES ON  [dbo].[Catalog] TO [RSExecRole]
GRANT SELECT ON  [dbo].[Catalog] TO [RSExecRole]
GRANT INSERT ON  [dbo].[Catalog] TO [RSExecRole]
GRANT DELETE ON  [dbo].[Catalog] TO [RSExecRole]
GRANT UPDATE ON  [dbo].[Catalog] TO [RSExecRole]
GO
