USE [ReportServer];
GO

CREATE TABLE [Custom].[FontWeight]
(
    FontWeightID            TINYINT IDENTITY(1,1) NOT NULL,
    FontWeightName          NVARCHAR(25) NOT NULL,
    FontWeightDescription   NVARCHAR(100) NULL
)

ALTER TABLE [Custom].[FontWeight]
    ADD CONSTRAINT [PK_CustomFontWeightFontWeightID] PRIMARY KEY CLUSTERED ([FontWeightID])
;