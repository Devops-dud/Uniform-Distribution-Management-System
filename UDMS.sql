USE [UDMS]
GO
/****** Object:  Table [dbo].[AccessLog]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessLog](
	[id] [uniqueidentifier] NOT NULL,
	[date] [datetime] NULL,
	[username] [nvarchar](100) NULL,
	[ip_address] [nvarchar](150) NULL,
	[machine_name] [nvarchar](250) NULL,
	[operation] [nvarchar](250) NULL,
	[object_info] [nvarchar](250) NULL,
	[browser_info] [text] NULL,
 CONSTRAINT [PK_AccessLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [uniqueidentifier] NOT NULL,
	[BadgeNumber] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Gender] [nvarchar](10) NULL,
	[PositionCategory] [uniqueidentifier] NOT NULL,
	[JobPosition] [nvarchar](250) NULL,
	[JobGrade] [nvarchar](250) NULL,
	[JobCategory] [nvarchar](250) NULL,
	[Department] [nvarchar](250) NULL,
	[Inactive] [bit] NULL,
	[EMail] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entitlement]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entitlement](
	[Id] [uniqueidentifier] NOT NULL,
	[LuStatusId] [uniqueidentifier] NOT NULL,
	[PositionCategory] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ApprovedBy] [nvarchar](100) NULL,
	[ApprovedDate] [datetime] NULL,
	[NotificationOfficeManager] [bit] NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_Entitlement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntitlementUniformItems]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntitlementUniformItems](
	[Id] [uniqueidentifier] NOT NULL,
	[Entitlement] [uniqueidentifier] NOT NULL,
	[IMS_ITEM_ID] [int] NOT NULL,
	[ItemName] [nvarchar](250) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Period] [int] NOT NULL,
 CONSTRAINT [PK_EntitlementUniformItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuStatus]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuStatus](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lu_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionCategory]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_PositionCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniformIssue]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniformIssue](
	[Id] [uniqueidentifier] NOT NULL,
	[LuStatusId] [uniqueidentifier] NULL,
	[Department] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ApprovedBy] [nvarchar](100) NULL,
	[ApprovedDate] [datetime] NULL,
	[NotificationOfficeManager] [bit] NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_UniformIssue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniformIssueDetail]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniformIssueDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[UniformIssue] [uniqueidentifier] NULL,
	[UniformRequisitionDetail] [uniqueidentifier] NULL,
	[IMS_GRN_DETAIL_ID] [int] NULL,
	[Size] [nvarchar](50) NULL,
 CONSTRAINT [PK_UniformIssueDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniformRequisition]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniformRequisition](
	[Id] [uniqueidentifier] NOT NULL,
	[EmployeeId] [uniqueidentifier] NOT NULL,
	[Department] [nvarchar](250) NULL,
	[LuStatusId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ApprovedBy] [nvarchar](100) NULL,
	[ApprovedDate] [datetime] NULL,
	[NotificationManager] [bit] NULL,
	[NotificationForIssue] [bit] NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_UniformRequisition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniformRequisitionDetail]    Script Date: 9/21/2024 12:33:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniformRequisitionDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[UniformRequisitionId] [uniqueidentifier] NOT NULL,
	[IMS_ITEM_ID] [int] NOT NULL,
	[ItemName] [nvarchar](250) NOT NULL,
	[Size] [nvarchar](50) NULL,
 CONSTRAINT [PK_UniformRequisitionDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_PositionCategory] FOREIGN KEY([PositionCategory])
REFERENCES [dbo].[PositionCategory] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_PositionCategory]
GO
ALTER TABLE [dbo].[Entitlement]  WITH CHECK ADD  CONSTRAINT [FK_Entitlement_LuStatus] FOREIGN KEY([LuStatusId])
REFERENCES [dbo].[LuStatus] ([Id])
GO
ALTER TABLE [dbo].[Entitlement] CHECK CONSTRAINT [FK_Entitlement_LuStatus]
GO
ALTER TABLE [dbo].[Entitlement]  WITH CHECK ADD  CONSTRAINT [FK_Entitlement_PositionCategory] FOREIGN KEY([PositionCategory])
REFERENCES [dbo].[PositionCategory] ([Id])
GO
ALTER TABLE [dbo].[Entitlement] CHECK CONSTRAINT [FK_Entitlement_PositionCategory]
GO
ALTER TABLE [dbo].[EntitlementUniformItems]  WITH CHECK ADD  CONSTRAINT [FK_EntitlementUniformItems_Entitlement] FOREIGN KEY([Entitlement])
REFERENCES [dbo].[Entitlement] ([Id])
GO
ALTER TABLE [dbo].[EntitlementUniformItems] CHECK CONSTRAINT [FK_EntitlementUniformItems_Entitlement]
GO
ALTER TABLE [dbo].[UniformIssue]  WITH CHECK ADD  CONSTRAINT [FK_UniformIssue_LuStatus] FOREIGN KEY([LuStatusId])
REFERENCES [dbo].[LuStatus] ([Id])
GO
ALTER TABLE [dbo].[UniformIssue] CHECK CONSTRAINT [FK_UniformIssue_LuStatus]
GO
ALTER TABLE [dbo].[UniformIssueDetail]  WITH CHECK ADD  CONSTRAINT [FK_UniformIssueDetail_UniformIssue] FOREIGN KEY([UniformIssue])
REFERENCES [dbo].[UniformIssue] ([Id])
GO
ALTER TABLE [dbo].[UniformIssueDetail] CHECK CONSTRAINT [FK_UniformIssueDetail_UniformIssue]
GO
ALTER TABLE [dbo].[UniformIssueDetail]  WITH CHECK ADD  CONSTRAINT [FK_UniformIssueDetail_UniformRequisitionDetail] FOREIGN KEY([UniformRequisitionDetail])
REFERENCES [dbo].[UniformRequisitionDetail] ([Id])
GO
ALTER TABLE [dbo].[UniformIssueDetail] CHECK CONSTRAINT [FK_UniformIssueDetail_UniformRequisitionDetail]
GO
ALTER TABLE [dbo].[UniformRequisition]  WITH CHECK ADD  CONSTRAINT [FK_UniformRequisition_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[UniformRequisition] CHECK CONSTRAINT [FK_UniformRequisition_Employee]
GO
ALTER TABLE [dbo].[UniformRequisition]  WITH CHECK ADD  CONSTRAINT [FK_UniformRequisition_LuStatus] FOREIGN KEY([LuStatusId])
REFERENCES [dbo].[LuStatus] ([Id])
GO
ALTER TABLE [dbo].[UniformRequisition] CHECK CONSTRAINT [FK_UniformRequisition_LuStatus]
GO
ALTER TABLE [dbo].[UniformRequisitionDetail]  WITH CHECK ADD  CONSTRAINT [FK_UniformRequisitionDetail_UniformRequisition] FOREIGN KEY([UniformRequisitionId])
REFERENCES [dbo].[UniformRequisition] ([Id])
GO
ALTER TABLE [dbo].[UniformRequisitionDetail] CHECK CONSTRAINT [FK_UniformRequisitionDetail_UniformRequisition]
GO
