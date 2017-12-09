USE [LOS_MRTG_DATA]
GO
/****** Object:  Table [dbo].[ACCINFO]    Script Date: 11/07/2017 11:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACCINFO](
	[ACC_ID] [uniqueidentifier] NOT NULL,
	[AP_REGNO] [varchar](20) NULL,
	[ACC_SEQ] [int] NULL,
	[BANKID] [varchar](10) NULL,
	[ACC_NUM] [varchar](50) NULL,
	[ACC_TYPE] [varchar](50) NULL,
	[CURR_CODE] [varchar](10) NULL,
	[ACC_AMOUNT] [float] NULL,
	[ACC_OPENDATE] [datetime] NULL,
	[ACC_CLOSEDATE] [datetime] NULL,
 CONSTRAINT [PK_ACCINFO] PRIMARY KEY NONCLUSTERED 
(
	[ACC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ACCINFO_MAIN] UNIQUE CLUSTERED 
(
	[AP_REGNO] ASC,
	[ACC_SEQ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ACCINFO] ([ACC_ID], [AP_REGNO], [ACC_SEQ], [BANKID], [ACC_NUM], [ACC_TYPE], [CURR_CODE], [ACC_AMOUNT], [ACC_OPENDATE], [ACC_CLOSEDATE]) VALUES (N'193ff0cd-29f8-4a06-ba51-ad7aebc7034e', N'KPR073701170814', 1, N'950', N'10203040', NULL, NULL, NULL, NULL, NULL)
/****** Object:  ForeignKey [FK_ACCINFO]    Script Date: 11/07/2017 11:25:12 ******/
ALTER TABLE [dbo].[ACCINFO]  WITH CHECK ADD  CONSTRAINT [FK_ACCINFO] FOREIGN KEY([AP_REGNO])
REFERENCES [dbo].[APP] ([AP_REGNO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ACCINFO] CHECK CONSTRAINT [FK_ACCINFO]
GO
