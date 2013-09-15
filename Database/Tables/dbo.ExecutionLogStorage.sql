CREATE TABLE [dbo].[ExecutionLogStorage]
(
[LogEntryId] [bigint] NOT NULL IDENTITY(1, 1),
[InstanceName] [nvarchar] (38) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[ReportID] [uniqueidentifier] NULL,
[UserName] [nvarchar] (260) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[ExecutionId] [nvarchar] (64) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[RequestType] [tinyint] NOT NULL,
[Format] [nvarchar] (26) COLLATE Latin1_General_CI_AS_KS_WS NULL,
[Parameters] [ntext] COLLATE Latin1_General_CI_AS_KS_WS NULL,
[ReportAction] [tinyint] NULL,
[TimeStart] [datetime] NOT NULL,
[TimeEnd] [datetime] NOT NULL,
[TimeDataRetrieval] [int] NOT NULL,
[TimeProcessing] [int] NOT NULL,
[TimeRendering] [int] NOT NULL,
[Source] [tinyint] NOT NULL,
[Status] [nvarchar] (40) COLLATE Latin1_General_CI_AS_KS_WS NOT NULL,
[ByteCount] [bigint] NOT NULL,
[RowCount] [bigint] NOT NULL,
[AdditionalInfo] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE TRIGGER [dbo].[TR_I_NotifyOnReportExecution]
    ON [dbo].[ExecutionLogStorage]
    FOR INSERT
AS
BEGIN

SET NOCOUNT ON;

IF EXISTS (SELECT 1 FROM Custom.ExecutionAlert AS ExecAlert JOIN INSERTED AS Ins ON ExecAlert.CatalogItemId = Ins.ReportID)
BEGIN

    DECLARE @ReportName NVARCHAR(425);
    DECLARE @UserName NVARCHAR(260);
    DECLARE @ExecID NVARCHAR(64);
    DECLARE @ReportTitle NVARCHAR(255);
    DECLARE @NotificationEmail NVARCHAR(100);
    DECLARE @MailProfile SYSNAME;
    
    --SELECT @ReportName = RptDetail.RDLName,
    --    @ReportTitle = RptDetail.ReportTitle,
    --    @UserName = Ins.UserName,
    --    @ExecID = Ins.ExecutionID,
    --    @NotificationEmail = ExecAlert.AlertToEmail
    --    @MailProfile = ExecAlert.DbMailProfile
    --FROM INSERTED AS Ins
    --JOIN Custom.ReportDetail AS RptDetail ON Ins.ReportID = RptDetail.ItemID
    --JOIN Custom.ExecutionAlert AS ExecAlert ON Ins.ReportID = ExecAlert.CatalogItemId
    --WHERE Ins.ReportAction = 9 --// Execute
    --;

    --EXEC msdb.dbo.sp_db_sendmail @recipients = @NotificationEmail,
    --    @type = ''

END

END
GO
ALTER TABLE [dbo].[ExecutionLogStorage] ADD CONSTRAINT [PK__Executio__05F5D7454968A380] PRIMARY KEY CLUSTERED  ([LogEntryId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ExecutionLog] ON [dbo].[ExecutionLogStorage] ([TimeStart], [LogEntryId]) ON [PRIMARY]
GO
GRANT REFERENCES ON  [dbo].[ExecutionLogStorage] TO [RSExecRole]
GRANT SELECT ON  [dbo].[ExecutionLogStorage] TO [RSExecRole]
GRANT INSERT ON  [dbo].[ExecutionLogStorage] TO [RSExecRole]
GRANT DELETE ON  [dbo].[ExecutionLogStorage] TO [RSExecRole]
GRANT UPDATE ON  [dbo].[ExecutionLogStorage] TO [RSExecRole]
GO
