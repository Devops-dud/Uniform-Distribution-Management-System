USE [IMS]
GO
/****** Object:  Table [dbo].[AccessLog]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NULL,
	[user_id] [int] NULL,
	[user_full_name] [nvarchar](250) NULL,
	[ip_address] [nvarchar](150) NULL,
	[machine_name] [nvarchar](150) NULL,
	[operation] [nvarchar](150) NULL,
	[object_id] [int] NULL,
	[browser_info] [text] NULL,
 CONSTRAINT [PK_AccessLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assign_Item_Code]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assign_Item_Code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[last_number] [int] NOT NULL,
 CONSTRAINT [PK_Assign_Item_Code] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttemptCounter]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttemptCounter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](30) NOT NULL,
	[no_attemps] [int] NOT NULL,
	[IP_Address] [nvarchar](30) NOT NULL,
	[machine_name] [text] NULL,
 CONSTRAINT [PK_AttemptCounter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[capitalization]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[capitalization](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[non_GRN_Item_Id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[item_Id] [int] NOT NULL,
	[item_description] [text] NULL,
	[Purchased_Quantity] [float] NOT NULL,
	[unit_Price] [float] NOT NULL,
	[Total_Price] [float] NOT NULL,
	[vendor_name] [text] NOT NULL,
	[created_by] [int] NULL,
	[created_date] [date] NULL,
	[approved_by] [int] NULL,
	[approved_date] [date] NULL,
	[is_void] [bit] NULL,
	[remark] [text] NULL,
 CONSTRAINT [PK_capitalization] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Abbreviation]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Abbreviation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[abbreviation] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Category_Abbreviation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contract]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contract](
	[contract_id] [int] IDENTITY(1,1) NOT NULL,
	[vendor_id] [int] NOT NULL,
	[description] [text] NOT NULL,
	[measurment] [float] NULL,
	[unit_Price] [float] NULL,
	[start_date] [date] NULL,
	[termination_date] [date] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_date] [date] NOT NULL,
	[remark] [text] NULL,
	[location] [text] NULL,
 CONSTRAINT [PK_contract] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[depreciationFormula]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[depreciationFormula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_id] [int] NULL,
	[item_id] [int] NOT NULL,
	[useful_life_in_days] [int] NOT NULL,
	[residual_percentage] [float] NOT NULL,
	[effective_from] [date] NULL,
	[effective_to] [date] NULL,
	[created_by] [text] NULL,
	[created_date] [date] NULL,
	[isCurrent] [bit] NOT NULL,
	[checked_by] [text] NULL,
	[checked_date] [date] NULL,
	[comment] [text] NULL,
 CONSTRAINT [PK_depreciationFormulaOnStore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filtered_Items]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filtered_Items](
	[filtered_Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[status_id] [int] NOT NULL,
	[filtering_Status_id] [int] NOT NULL,
	[sr_number] [int] NOT NULL,
	[sr_detail_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[approved_quantity] [float] NOT NULL,
	[remaining_quantity] [float] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_date] [date] NOT NULL,
	[isPRGiven] [bit] NULL,
	[approved_by] [int] NULL,
	[approved_date] [date] NULL,
	[rejection_comment] [text] NULL,
 CONSTRAINT [PK_Filtered_Items] PRIMARY KEY CLUSTERED 
(
	[filtered_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fiscal_year]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fiscal_year](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NOT NULL,
	[Name] [nvarchar](30) NULL,
	[expiry_date] [date] NOT NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK_fiscal_year] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fixed_Asset_Allocation]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fixed_Asset_Allocation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fixed_asset_allocation_master_id] [int] NOT NULL,
	[SR_Id] [int] NULL,
	[GRN_Detail_Id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[is_void] [bit] NULL,
	[approved_quantity] [float] NOT NULL,
	[allocated_quantity] [float] NOT NULL,
	[remaining_bal_before_allocation] [float] NULL,
	[remaining_bal_after_allocation] [float] NULL,
	[date_in_use] [datetime] NULL,
	[unit_price] [float] NULL,
	[total_price] [float] NULL,
	[prepared_by] [text] NULL,
	[prepared_date] [date] NULL,
	[remark] [text] NULL,
 CONSTRAINT [PK_Fixed_Asset_Allocation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fixed_Asset_Allocation_Master]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fixed_Asset_Allocation_Master](
	[id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[prepared_by] [text] NOT NULL,
	[received_by] [text] NULL,
	[checked_by] [text] NULL,
	[department_id] [int] NOT NULL,
	[rejection_comment] [text] NULL,
	[checked_date] [date] NULL,
	[prepared_date] [date] NULL,
	[Paper_SIV_number] [nvarchar](10) NULL,
 CONSTRAINT [PK_Fixed_Asset_Allocation_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fixed_asset_disposal]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fixed_asset_disposal](
	[disposal_id] [int] NOT NULL,
	[tagNo] [nvarchar](100) NOT NULL,
	[return_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[disposal_reason_id] [int] NOT NULL,
	[disposal_date] [date] NOT NULL,
	[prepared_date] [date] NULL,
	[prepared_by] [text] NULL,
	[checked_by] [text] NULL,
	[checked_date] [date] NULL,
	[rejection_comment] [text] NULL,
	[disposingDepartment] [int] NOT NULL,
	[disposal_price] [float] NULL,
	[residual_price] [float] NULL,
 CONSTRAINT [PK_fixed_asset_disposal] PRIMARY KEY CLUSTERED 
(
	[disposal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fixed_asset_disposal_reason]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fixed_asset_disposal_reason](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reason_name] [nvarchar](250) NOT NULL,
	[created_date] [date] NOT NULL,
	[created_by] [text] NOT NULL,
 CONSTRAINT [PK_fixed_asset_disposal_reason] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fixed_asset_maintenance]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fixed_asset_maintenance](
	[maintenance_id] [int] NOT NULL,
	[status_id] [int] NULL,
	[Fixed_Asset_Id] [int] NOT NULL,
	[tagNo] [nvarchar](100) NOT NULL,
	[requesting_department] [int] NOT NULL,
	[description] [text] NOT NULL,
	[assigned_officer] [text] NULL,
	[completion_date] [date] NULL,
	[maintenance_status] [nvarchar](20) NULL,
	[replaced_item] [text] NULL,
	[maintenance_price] [float] NULL,
	[requested_by] [int] NULL,
	[requested_date] [date] NOT NULL,
	[isCurrent] [bit] NULL,
	[checked_by] [nvarchar](100) NULL,
	[checked_date] [date] NULL,
	[comment] [text] NULL,
 CONSTRAINT [PK_tbl_maintenance] PRIMARY KEY CLUSTERED 
(
	[maintenance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fixed_asset_reissue]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fixed_asset_reissue](
	[reissue_id] [int] NOT NULL,
	[return_id] [int] NOT NULL,
	[tagNo] [nvarchar](100) NOT NULL,
	[reissue_price] [float] NULL,
	[reissue_date] [date] NULL,
	[status_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[reissued_to] [text] NULL,
	[receiving_department_id] [int] NOT NULL,
	[prepared_by] [int] NOT NULL,
	[prepared_date] [text] NOT NULL,
	[checked_by] [int] NULL,
	[checked_date] [date] NULL,
	[isCurrent] [bit] NOT NULL,
	[rejection_comment] [text] NULL,
	[received_by] [int] NULL,
	[received_date] [date] NULL,
 CONSTRAINT [PK_fixed_asset_reissue] PRIMARY KEY CLUSTERED 
(
	[reissue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fixed_asset_return]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fixed_asset_return](
	[return_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[Fixed_Asset_Id] [int] NOT NULL,
	[tagNo] [nvarchar](100) NOT NULL,
	[return_price] [float] NULL,
	[stop_depreciation] [bit] NULL,
	[returned_date] [date] NOT NULL,
	[created_by] [int] NULL,
	[created_date] [date] NULL,
	[isCurerent] [bit] NOT NULL,
	[returningDepartment] [int] NOT NULL,
	[checked_by] [int] NULL,
	[checked_date] [date] NULL,
	[received_by] [int] NULL,
	[received_date] [date] NULL,
	[depreciation_stopped_by] [int] NULL,
	[depreciation_stopped_date] [date] NULL,
	[rejection_comment] [text] NULL,
	[held_for_sale] [bit] NULL,
	[Paper_FARN_number] [nvarchar](10) NULL,
	[approved_by] [int] NULL,
	[approved_date] [date] NULL,
 CONSTRAINT [PK_fixed_asset_return] PRIMARY KEY CLUSTERED 
(
	[return_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fixed_asset_transfer]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fixed_asset_transfer](
	[transfer_id] [int] NOT NULL,
	[Fixed_Asset_Id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[from_department] [int] NOT NULL,
	[to_department] [int] NOT NULL,
	[transferred_to] [text] NULL,
	[transfered_Date] [date] NULL,
	[isCurrent] [bit] NOT NULL,
	[prepared_by] [int] NOT NULL,
	[prepared_date] [date] NOT NULL,
	[tagNo] [nvarchar](100) NOT NULL,
	[transfer_price] [float] NULL,
	[checked_by] [int] NULL,
	[checked_date] [date] NULL,
	[rejection_comment] [text] NULL,
	[approved_by] [int] NULL,
	[approved_date] [date] NULL,
	[received_by] [int] NULL,
	[received_date] [date] NULL,
	[checked_by_destination] [int] NULL,
	[checked_date_destination] [date] NULL,
 CONSTRAINT [PK_fixed_asset_transfer] PRIMARY KEY CLUSTERED 
(
	[transfer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FixedAssetHistory]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FixedAssetHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[tag_no] [varchar](500) NOT NULL,
	[allocation_date] [date] NOT NULL,
	[status] [varchar](50) NOT NULL,
	[cost] [float] NOT NULL,
	[created_date] [date] NOT NULL,
	[created_by] [varchar](500) NOT NULL,
 CONSTRAINT [PK_FixedAssetHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRN_Detail]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRN_Detail](
	[GRN_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[GRN_Number] [int] NOT NULL,
	[PR_Number] [int] NOT NULL,
	[item_Id] [int] NOT NULL,
	[part_no] [nvarchar](200) NULL,
	[Purchased_Quantity] [float] NOT NULL,
	[remaining_balance] [float] NOT NULL,
	[actual_balance] [float] NULL,
	[is_void] [bit] NULL,
	[unit_Price] [float] NOT NULL,
	[Total_Price] [float] NOT NULL,
	[remark] [nvarchar](255) NULL,
 CONSTRAINT [PK_GRN_Detail_1] PRIMARY KEY CLUSTERED 
(
	[GRN_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRN_Master]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRN_Master](
	[GRN_Number] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[supplier_invoice_number] [nvarchar](50) NULL,
	[paper_grn_number] [nvarchar](10) NULL,
	[created_date] [date] NULL,
	[created_by] [nvarchar](40) NULL,
	[approved_date] [date] NULL,
	[approved_by] [int] NULL,
	[received_by] [int] NULL,
	[received_date] [date] NULL,
	[rejection_comment] [text] NULL,
 CONSTRAINT [PK_GRN_Master] PRIMARY KEY CLUSTERED 
(
	[GRN_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRNEmail]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRNEmail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[grn_detail_id] [int] NOT NULL,
	[email_sent] [bit] NOT NULL,
 CONSTRAINT [PK_GRNEmail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LNK_ROLE_PERMISSION]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LNK_ROLE_PERMISSION](
	[Role_Id] [int] NOT NULL,
	[Permission_Id] [int] NOT NULL,
 CONSTRAINT [PK_LNK_ROLE_PERMISSION] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC,
	[Permission_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LNK_USER_ROLE]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LNK_USER_ROLE](
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
 CONSTRAINT [PK_LNK_USER_ROLE] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC,
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nonce] [varchar](50) NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_Logins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lu_filtering_status]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lu_filtering_status](
	[filtering_status_name] [nvarchar](60) NOT NULL,
	[status_desc] [nvarchar](50) NULL,
	[filtering_status_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_lu_filtering_status] PRIMARY KEY CLUSTERED 
(
	[filtering_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISSIONS]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISSIONS](
	[Permission_Id] [int] IDENTITY(1,1) NOT NULL,
	[PermissionDescription] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_PERMISSIONS] PRIMARY KEY CLUSTERED 
(
	[Permission_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[procurment_master_status]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[procurment_master_status](
	[procurment_status_id] [int] IDENTITY(1,1) NOT NULL,
	[pr_number] [int] NOT NULL,
	[status_name] [int] NOT NULL,
	[assigned_officer] [text] NULL,
	[proforma_collection_date] [date] NULL,
	[proforma_opening_date] [date] NULL,
	[minute_prepared_date] [date] NULL,
	[minute_signed_date] [date] NULL,
	[minute_approved] [date] NULL,
	[minute_number] [int] NULL,
	[remark] [text] NULL,
	[checked_by_auditor] [text] NULL,
 CONSTRAINT [PK_procurment_master_status] PRIMARY KEY CLUSTERED 
(
	[procurment_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[procurment_status_detail]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[procurment_status_detail](
	[procurment_status_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[procurment_master_id] [int] NOT NULL,
	[assigned_officer] [nvarchar](50) NULL,
	[proforma_collection_date] [date] NULL,
	[proforma_opening_date] [date] NULL,
	[minute_prepared_date] [date] NULL,
	[minute_signed_date] [date] NULL,
	[minute_approved] [date] NULL,
	[minute_number] [int] NULL,
	[remark] [nvarchar](255) NULL,
	[checked_by_auditor] [text] NULL,
 CONSTRAINT [PK_procurment_status_detail] PRIMARY KEY CLUSTERED 
(
	[procurment_status_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[procurment_status_names]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[procurment_status_names](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_procurment_status_names] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Requisition_Detail]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Requisition_Detail](
	[pr_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[pr_number] [int] NOT NULL,
	[sr_number] [int] NULL,
	[item_id] [int] NOT NULL,
	[code_no] [nvarchar](50) NULL,
	[part_no] [nvarchar](50) NULL,
	[balance_in_stock] [float] NULL,
	[requested_quantity] [float] NOT NULL,
	[is_void] [bit] NULL,
	[remark] [text] NULL,
	[isremoved] [bit] NOT NULL,
	[removed_by] [int] NULL,
	[rejection_comment] [text] NULL,
	[req_number] [nvarchar](100) NULL,
 CONSTRAINT [PK_Purchase_Requisition_Detail] PRIMARY KEY CLUSTERED 
(
	[pr_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseRequisition]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseRequisition](
	[pr_number] [int] NOT NULL,
	[to_supplier] [text] NOT NULL,
	[from_department] [nvarchar](50) NOT NULL,
	[date_created] [date] NOT NULL,
	[pr_status] [int] NOT NULL,
	[paper_PR_number] [nvarchar](10) NULL,
	[rejection_comment] [text] NULL,
	[approved_date] [date] NULL,
	[approved_by] [int] NULL,
	[prepared_by] [text] NULL,
 CONSTRAINT [PK_PurchaseRequisition] PRIMARY KEY CLUSTERED 
(
	[pr_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLES](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[RoleDescription] [nvarchar](250) NULL,
	[IsSysAdmin] [bit] NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Roles] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sequence_type]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sequence_type](
	[seq_type_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[init_value] [int] NOT NULL,
	[increment] [int] NOT NULL,
	[max_value] [int] NOT NULL,
 CONSTRAINT [PK_sequence_type] PRIMARY KEY CLUSTERED 
(
	[seq_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serial_number_shelf]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serial_number_shelf](
	[shelf_id] [int] IDENTITY(1,1) NOT NULL,
	[seq_type_id] [int] NOT NULL,
	[serial_value] [int] NOT NULL,
	[is_hold] [bit] NOT NULL,
 CONSTRAINT [PK_serial_number_shelf] PRIMARY KEY CLUSTERED 
(
	[shelf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serial_schema]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serial_schema](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fiscal_year_id] [int] NOT NULL,
	[seq_type_id] [int] NOT NULL,
	[last_serial] [int] NOT NULL,
	[is_locked] [bit] NOT NULL,
	[locked_by] [int] NOT NULL,
 CONSTRAINT [PK_serial_schema] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIV_Detail]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIV_Detail](
	[SIV_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[SR_Id] [int] NOT NULL,
	[SIV_Number] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[approved_amount] [float] NOT NULL,
	[issued_quantity] [float] NOT NULL,
	[unit_price] [float] NOT NULL,
	[is_void] [bit] NULL,
	[created_date] [date] NOT NULL,
	[Is_Item_Removed] [bit] NOT NULL,
	[removed_by] [int] NOT NULL,
	[GRN_Number] [int] NOT NULL,
	[available_stock_before_issue] [float] NOT NULL,
	[available_stock_after_issue] [float] NOT NULL,
	[department_id] [int] NULL,
	[is_removed] [bit] NULL,
	[is_Item_Received] [bit] NULL,
	[received_by] [int] NULL,
	[received_date] [datetime] NULL,
	[issued_by] [text] NULL,
	[issued_date] [date] NULL,
	[prepared_by] [text] NULL,
	[prepared_date] [date] NULL,
 CONSTRAINT [PK_SIV_Detail] PRIMARY KEY CLUSTERED 
(
	[SIV_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIV_Master]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIV_Master](
	[SIV_Number] [int] NOT NULL,
	[created_date] [date] NULL,
	[is_Item_Received] [bit] NULL,
	[received_By] [nvarchar](50) NULL,
	[SIV_Status] [int] NOT NULL,
	[resubmit_comment] [text] NULL,
	[approved_date] [date] NULL,
	[approved_by] [int] NULL,
	[department_id] [int] NOT NULL,
	[created_by] [nvarchar](40) NULL,
	[Paper_SIV_number] [nvarchar](10) NULL,
 CONSTRAINT [PK_tbl_SIV] PRIMARY KEY CLUSTERED 
(
	[SIV_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[store_requisition]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[store_requisition](
	[SR_Number] [int] NOT NULL,
	[requested_by] [text] NULL,
	[requesting_dept] [int] NOT NULL,
	[created_date] [date] NULL,
	[SR_Status] [int] NOT NULL,
	[approval_date] [date] NULL,
	[prepared_by] [int] NULL,
	[approved_by] [int] NULL,
	[Paper_SRF_number] [nvarchar](10) NULL,
	[rejection_comment] [text] NULL,
 CONSTRAINT [PK_tbl_Store_Request] PRIMARY KEY CLUSTERED 
(
	[SR_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[store_requisition_detail]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[store_requisition_detail](
	[SR_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[SR_Number] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[requested_amount] [float] NOT NULL,
	[Purpose] [text] NULL,
	[Removed_By] [int] NULL,
	[IsRemoved] [bit] NULL,
	[item_descrption] [text] NULL,
	[part_no] [nvarchar](100) NULL,
	[code_no] [nvarchar](100) NULL,
	[is_Void] [bit] NULL,
 CONSTRAINT [PK_store_requisition_detail] PRIMARY KEY CLUSTERED 
(
	[SR_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreReq_PurchaseReq_Association]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreReq_PurchaseReq_Association](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pr_detail_id] [int] NOT NULL,
	[sr_number] [int] NOT NULL,
 CONSTRAINT [PK_StoreReq_PurchaseReq_Association] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Fixed_Asset]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Fixed_Asset](
	[Fixed_Asset_Id] [int] IDENTITY(1,1) NOT NULL,
	[allocation_id] [int] NOT NULL,
	[item_description] [text] NULL,
	[Old_Tag_Number] [nvarchar](100) NULL,
	[Tag_Number] [nvarchar](100) NOT NULL,
	[serial_no] [nvarchar](100) NULL,
	[created_by] [int] NULL,
	[created_date] [date] NULL,
	[is_transferred] [bit] NULL,
	[is_reissued] [bit] NULL,
	[is_returned] [bit] NULL,
	[is_disposed] [bit] NULL,
	[is_Item_Received] [bit] NULL,
	[is_in_maintenance] [bit] NULL,
	[received_by] [int] NULL,
	[received_date] [date] NULL,
 CONSTRAINT [PK_tbl_Fixed_Asset] PRIMARY KEY CLUSTERED 
(
	[Fixed_Asset_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Fixed_Asset_Void_Items]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Fixed_Asset_Void_Items](
	[void_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [text] NULL,
	[allocation_id] [int] NOT NULL,
	[void_by] [text] NOT NULL,
	[void_date] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Fixed_Asset_Void_Items] PRIMARY KEY CLUSTERED 
(
	[void_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_item_Status]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_item_Status](
	[pr_status_id] [int] NOT NULL,
	[pr_detail_id] [int] NOT NULL,
	[purchased_quantity] [float] NOT NULL,
	[remaining_quantity] [float] NOT NULL,
	[status_id] [int] NOT NULL,
	[remark] [text] NULL,
	[updated_by] [int] NOT NULL,
	[updated_date] [date] NOT NULL,
 CONSTRAINT [PK_tbl_item_Status] PRIMARY KEY CLUSTERED 
(
	[pr_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_Category]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_Category](
	[category_name] [nvarchar](500) NOT NULL,
	[description] [text] NULL,
	[is_fixed_asset] [bit] NULL,
	[category_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_lu_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_contract_payment]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_contract_payment](
	[contract_payment_id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[amount] [float] NOT NULL,
	[date_from] [date] NULL,
	[date_to] [date] NULL,
	[payment_type] [nvarchar](50) NOT NULL,
	[created_by] [int] NOT NULL,
	[created_date] [date] NOT NULL,
	[checked_by] [int] NULL,
	[checked_date] [date] NULL,
	[comment] [text] NULL,
 CONSTRAINT [PK_tbl_lu_contract_type] PRIMARY KEY CLUSTERED 
(
	[contract_payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_contract_type]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_contract_type](
	[contract_payment_id] [int] NOT NULL,
	[payment_type_name] [nvarchar](20) NOT NULL,
	[created_date] [date] NOT NULL,
	[created_by] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_department]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_department](
	[department_name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](250) NULL,
	[department_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_lu_department] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_Items]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_Items](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[item_name] [nvarchar](500) NOT NULL,
	[item_desc] [text] NULL,
	[unit] [nvarchar](20) NULL,
	[item_code] [varchar](50) NULL,
	[alert_before] [float] NULL,
	[reorder_amount] [float] NULL,
	[created_date] [date] NULL,
	[created_by] [int] NULL,
 CONSTRAINT [PK_tbl_lu_Items] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_Status]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_Status](
	[status_name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](255) NULL,
	[status_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_lu_Status_1] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_lu_vendor]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lu_vendor](
	[vendor_id] [int] IDENTITY(1,1) NOT NULL,
	[vendor_name] [nvarchar](500) NOT NULL,
	[created_date] [date] NOT NULL,
	[created_by] [int] NOT NULL,
	[address] [text] NULL,
 CONSTRAINT [PK_tbl_lu_vendor] PRIMARY KEY CLUSTERED 
(
	[vendor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NonGRN_Items]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NonGRN_Items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_id] [int] NOT NULL,
	[item_description] [text] NULL,
	[item_Id] [int] NOT NULL,
	[Purchased_Quantity] [float] NOT NULL,
	[unit_Price] [float] NOT NULL,
	[Total_Price] [float] NOT NULL,
	[vendor_name] [text] NOT NULL,
	[department_id] [int] NOT NULL,
	[created_by] [int] NULL,
	[created_date] [date] NULL,
	[approved_by] [int] NULL,
	[approved_date] [date] NULL,
	[is_void] [bit] NULL,
	[remark] [text] NULL,
 CONSTRAINT [PK_tbl_Fixed_Asset_NonGRN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SIV_Void_Items]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SIV_Void_Items](
	[void_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [text] NULL,
	[siv_detail_id] [int] NOT NULL,
	[void_by] [text] NOT NULL,
	[void_date] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_SIV_Void_Items] PRIMARY KEY CLUSTERED 
(
	[void_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Store_void_items]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Store_void_items](
	[sr_void_id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [text] NOT NULL,
	[void_by] [text] NOT NULL,
	[void_date] [datetime] NOT NULL,
	[SR_detail_id] [int] NULL,
	[item_id] [int] NULL,
 CONSTRAINT [PK_tbl_Store_void_items] PRIMARY KEY CLUSTERED 
(
	[sr_void_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_supplier]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_supplier](
	[supplier_name] [nvarchar](500) NOT NULL,
	[created_date] [date] NULL,
	[created_by] [int] NULL,
	[supplier_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_supplier] PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Tag_Number_History]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Tag_Number_History](
	[Update_history_id] [int] NOT NULL,
	[fixed_asset_id] [int] NOT NULL,
	[from_tag_number] [nvarchar](100) NOT NULL,
	[to_tag_number] [nvarchar](100) NOT NULL,
	[reason_for_update] [text] NOT NULL,
	[updated_date] [date] NOT NULL,
	[updated_by] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Tag_Number_History] PRIMARY KEY CLUSTERED 
(
	[Update_history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 9/21/2024 12:36:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[LastModified] [datetime] NULL,
	[Inactive] [bit] NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[IDNo] [nvarchar](50) NULL,
	[Title] [nvarchar](30) NULL,
	[Initial] [nvarchar](3) NULL,
	[EMail] [nvarchar](100) NULL,
	[department_id] [int] NULL,
	[password] [varchar](100) NULL,
	[isFirstTime] [bit] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[depreciationFormula] ADD  CONSTRAINT [DF_depreciationFormulaOnStore_isCurrent]  DEFAULT ((1)) FOR [isCurrent]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation] ADD  CONSTRAINT [DF_Fixed_Asset_Allocation_is_void]  DEFAULT ((0)) FOR [is_void]
GO
ALTER TABLE [dbo].[fixed_asset_reissue] ADD  CONSTRAINT [DF_fixed_asset_reissue_isCurrent]  DEFAULT ((1)) FOR [isCurrent]
GO
ALTER TABLE [dbo].[fixed_asset_return] ADD  CONSTRAINT [DF_fixed_asset_return_stop_depreciation]  DEFAULT ((0)) FOR [stop_depreciation]
GO
ALTER TABLE [dbo].[fixed_asset_return] ADD  CONSTRAINT [DF_fixed_asset_return_isCurerent]  DEFAULT ((1)) FOR [isCurerent]
GO
ALTER TABLE [dbo].[GRN_Detail] ADD  CONSTRAINT [DF_GRN_Detail_is_void]  DEFAULT ((0)) FOR [is_void]
GO
ALTER TABLE [dbo].[Purchase_Requisition_Detail] ADD  CONSTRAINT [DF_Purchase_Requisition_Detail_is_void]  DEFAULT ((0)) FOR [is_void]
GO
ALTER TABLE [dbo].[ROLES] ADD  CONSTRAINT [DF_ROLES_IsSysAdmin]  DEFAULT ((0)) FOR [IsSysAdmin]
GO
ALTER TABLE [dbo].[ROLES] ADD  CONSTRAINT [DF_ROLES_LastModified]  DEFAULT (getdate()) FOR [LastModified]
GO
ALTER TABLE [dbo].[SIV_Detail] ADD  CONSTRAINT [DF_SIV_Detail_is_void]  DEFAULT ((0)) FOR [is_void]
GO
ALTER TABLE [dbo].[store_requisition_detail] ADD  CONSTRAINT [DF_store_requisition_detail_is_Void]  DEFAULT ((0)) FOR [is_Void]
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset] ADD  CONSTRAINT [DF_tbl_Fixed_Asset_is_transferred]  DEFAULT ((0)) FOR [is_transferred]
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset] ADD  CONSTRAINT [DF_tbl_Fixed_Asset_is_reissued]  DEFAULT ((0)) FOR [is_reissued]
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items] ADD  CONSTRAINT [DF_tbl_Fixed_Asset_NonGRN_is_void]  DEFAULT ((0)) FOR [is_void]
GO
ALTER TABLE [dbo].[USERS] ADD  CONSTRAINT [DF_USERS_Inactive]  DEFAULT ((0)) FOR [Inactive]
GO
ALTER TABLE [dbo].[AccessLog]  WITH CHECK ADD  CONSTRAINT [FK_AccessLog_USERS] FOREIGN KEY([user_id])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[AccessLog] CHECK CONSTRAINT [FK_AccessLog_USERS]
GO
ALTER TABLE [dbo].[Assign_Item_Code]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Item_Code_tbl_lu_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[tbl_lu_Category] ([category_id])
GO
ALTER TABLE [dbo].[Assign_Item_Code] CHECK CONSTRAINT [FK_Assign_Item_Code_tbl_lu_Category]
GO
ALTER TABLE [dbo].[capitalization]  WITH CHECK ADD  CONSTRAINT [FK_capitalization_tbl_lu_Items] FOREIGN KEY([item_Id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[capitalization] CHECK CONSTRAINT [FK_capitalization_tbl_lu_Items]
GO
ALTER TABLE [dbo].[capitalization]  WITH CHECK ADD  CONSTRAINT [FK_capitalization_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[capitalization] CHECK CONSTRAINT [FK_capitalization_tbl_lu_Status]
GO
ALTER TABLE [dbo].[capitalization]  WITH CHECK ADD  CONSTRAINT [FK_capitalization_tbl_NonGRN_Items] FOREIGN KEY([non_GRN_Item_Id])
REFERENCES [dbo].[tbl_NonGRN_Items] ([id])
GO
ALTER TABLE [dbo].[capitalization] CHECK CONSTRAINT [FK_capitalization_tbl_NonGRN_Items]
GO
ALTER TABLE [dbo].[capitalization]  WITH CHECK ADD  CONSTRAINT [FK_capitalization_USERS] FOREIGN KEY([created_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[capitalization] CHECK CONSTRAINT [FK_capitalization_USERS]
GO
ALTER TABLE [dbo].[capitalization]  WITH CHECK ADD  CONSTRAINT [FK_capitalization_USERS1] FOREIGN KEY([approved_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[capitalization] CHECK CONSTRAINT [FK_capitalization_USERS1]
GO
ALTER TABLE [dbo].[Category_Abbreviation]  WITH CHECK ADD  CONSTRAINT [FK_Category_Abbreviation_tbl_lu_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[tbl_lu_Category] ([category_id])
GO
ALTER TABLE [dbo].[Category_Abbreviation] CHECK CONSTRAINT [FK_Category_Abbreviation_tbl_lu_Category]
GO
ALTER TABLE [dbo].[contract]  WITH CHECK ADD  CONSTRAINT [FK_contract_tbl_lu_vendor] FOREIGN KEY([vendor_id])
REFERENCES [dbo].[tbl_lu_vendor] ([vendor_id])
GO
ALTER TABLE [dbo].[contract] CHECK CONSTRAINT [FK_contract_tbl_lu_vendor]
GO
ALTER TABLE [dbo].[depreciationFormula]  WITH CHECK ADD  CONSTRAINT [FK_depreciationFormula_tbl_lu_Category] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[depreciationFormula] CHECK CONSTRAINT [FK_depreciationFormula_tbl_lu_Category]
GO
ALTER TABLE [dbo].[depreciationFormula]  WITH CHECK ADD  CONSTRAINT [FK_depreciationFormula_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[depreciationFormula] CHECK CONSTRAINT [FK_depreciationFormula_tbl_lu_Status]
GO
ALTER TABLE [dbo].[Filtered_Items]  WITH CHECK ADD  CONSTRAINT [FK_Filtered_Items_lu_filtering_status] FOREIGN KEY([filtering_Status_id])
REFERENCES [dbo].[lu_filtering_status] ([filtering_status_id])
GO
ALTER TABLE [dbo].[Filtered_Items] CHECK CONSTRAINT [FK_Filtered_Items_lu_filtering_status]
GO
ALTER TABLE [dbo].[Filtered_Items]  WITH CHECK ADD  CONSTRAINT [FK_Filtered_Items_store_requisition] FOREIGN KEY([sr_number])
REFERENCES [dbo].[store_requisition] ([SR_Number])
GO
ALTER TABLE [dbo].[Filtered_Items] CHECK CONSTRAINT [FK_Filtered_Items_store_requisition]
GO
ALTER TABLE [dbo].[Filtered_Items]  WITH CHECK ADD  CONSTRAINT [FK_Filtered_Items_store_requisition_detail] FOREIGN KEY([sr_detail_id])
REFERENCES [dbo].[store_requisition_detail] ([SR_detail_id])
GO
ALTER TABLE [dbo].[Filtered_Items] CHECK CONSTRAINT [FK_Filtered_Items_store_requisition_detail]
GO
ALTER TABLE [dbo].[Filtered_Items]  WITH CHECK ADD  CONSTRAINT [FK_Filtered_Items_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[Filtered_Items] CHECK CONSTRAINT [FK_Filtered_Items_tbl_lu_Items]
GO
ALTER TABLE [dbo].[Filtered_Items]  WITH CHECK ADD  CONSTRAINT [FK_Filtered_Items_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[Filtered_Items] CHECK CONSTRAINT [FK_Filtered_Items_tbl_lu_Status]
GO
ALTER TABLE [dbo].[Filtered_Items]  WITH CHECK ADD  CONSTRAINT [FK_Filtered_Items_USERS] FOREIGN KEY([created_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[Filtered_Items] CHECK CONSTRAINT [FK_Filtered_Items_USERS]
GO
ALTER TABLE [dbo].[Filtered_Items]  WITH CHECK ADD  CONSTRAINT [FK_Filtered_Items_USERS1] FOREIGN KEY([approved_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[Filtered_Items] CHECK CONSTRAINT [FK_Filtered_Items_USERS1]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation]  WITH CHECK ADD  CONSTRAINT [FK_Fixed_Asset_Allocation_Fixed_Asset_Allocation] FOREIGN KEY([fixed_asset_allocation_master_id])
REFERENCES [dbo].[Fixed_Asset_Allocation_Master] ([id])
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation] CHECK CONSTRAINT [FK_Fixed_Asset_Allocation_Fixed_Asset_Allocation]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation]  WITH CHECK ADD  CONSTRAINT [FK_Fixed_Asset_Allocation_Fixed_Asset_Allocation1] FOREIGN KEY([GRN_Detail_Id])
REFERENCES [dbo].[GRN_Detail] ([GRN_Detail_Id])
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation] CHECK CONSTRAINT [FK_Fixed_Asset_Allocation_Fixed_Asset_Allocation1]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation]  WITH CHECK ADD  CONSTRAINT [FK_Fixed_Asset_Allocation_store_requisition] FOREIGN KEY([SR_Id])
REFERENCES [dbo].[store_requisition] ([SR_Number])
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation] CHECK CONSTRAINT [FK_Fixed_Asset_Allocation_store_requisition]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation]  WITH CHECK ADD  CONSTRAINT [FK_Fixed_Asset_Allocation_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation] CHECK CONSTRAINT [FK_Fixed_Asset_Allocation_tbl_lu_Items]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation_Master]  WITH CHECK ADD  CONSTRAINT [FK_Fixed_Asset_Allocation_Master_Fixed_Asset_Allocation_Master] FOREIGN KEY([id])
REFERENCES [dbo].[Fixed_Asset_Allocation_Master] ([id])
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation_Master] CHECK CONSTRAINT [FK_Fixed_Asset_Allocation_Master_Fixed_Asset_Allocation_Master]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation_Master]  WITH CHECK ADD  CONSTRAINT [FK_Fixed_Asset_Allocation_Master_tbl_lu_department] FOREIGN KEY([department_id])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation_Master] CHECK CONSTRAINT [FK_Fixed_Asset_Allocation_Master_tbl_lu_department]
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation_Master]  WITH CHECK ADD  CONSTRAINT [FK_Fixed_Asset_Allocation_Master_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[Fixed_Asset_Allocation_Master] CHECK CONSTRAINT [FK_Fixed_Asset_Allocation_Master_tbl_lu_Status]
GO
ALTER TABLE [dbo].[fixed_asset_disposal]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_disposal_fixed_asset_disposal_reason] FOREIGN KEY([disposal_reason_id])
REFERENCES [dbo].[fixed_asset_disposal_reason] ([id])
GO
ALTER TABLE [dbo].[fixed_asset_disposal] CHECK CONSTRAINT [FK_fixed_asset_disposal_fixed_asset_disposal_reason]
GO
ALTER TABLE [dbo].[fixed_asset_disposal]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_disposal_fixed_asset_return] FOREIGN KEY([return_id])
REFERENCES [dbo].[fixed_asset_return] ([return_id])
GO
ALTER TABLE [dbo].[fixed_asset_disposal] CHECK CONSTRAINT [FK_fixed_asset_disposal_fixed_asset_return]
GO
ALTER TABLE [dbo].[fixed_asset_disposal]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_disposal_tbl_lu_department] FOREIGN KEY([disposingDepartment])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[fixed_asset_disposal] CHECK CONSTRAINT [FK_fixed_asset_disposal_tbl_lu_department]
GO
ALTER TABLE [dbo].[fixed_asset_disposal]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_disposal_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[fixed_asset_disposal] CHECK CONSTRAINT [FK_fixed_asset_disposal_tbl_lu_Status]
GO
ALTER TABLE [dbo].[fixed_asset_maintenance]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_maintenance_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[fixed_asset_maintenance] CHECK CONSTRAINT [FK_fixed_asset_maintenance_tbl_lu_Status]
GO
ALTER TABLE [dbo].[fixed_asset_maintenance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_maintenance_tbl_Fixed_Asset] FOREIGN KEY([Fixed_Asset_Id])
REFERENCES [dbo].[tbl_Fixed_Asset] ([Fixed_Asset_Id])
GO
ALTER TABLE [dbo].[fixed_asset_maintenance] CHECK CONSTRAINT [FK_tbl_maintenance_tbl_Fixed_Asset]
GO
ALTER TABLE [dbo].[fixed_asset_maintenance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_maintenance_tbl_lu_department] FOREIGN KEY([requesting_department])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[fixed_asset_maintenance] CHECK CONSTRAINT [FK_tbl_maintenance_tbl_lu_department]
GO
ALTER TABLE [dbo].[fixed_asset_maintenance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_maintenance_USERS1] FOREIGN KEY([requested_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_maintenance] CHECK CONSTRAINT [FK_tbl_maintenance_USERS1]
GO
ALTER TABLE [dbo].[fixed_asset_reissue]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_reissue_fixed_asset_return] FOREIGN KEY([return_id])
REFERENCES [dbo].[fixed_asset_return] ([return_id])
GO
ALTER TABLE [dbo].[fixed_asset_reissue] CHECK CONSTRAINT [FK_fixed_asset_reissue_fixed_asset_return]
GO
ALTER TABLE [dbo].[fixed_asset_reissue]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_reissue_tbl_lu_department] FOREIGN KEY([receiving_department_id])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[fixed_asset_reissue] CHECK CONSTRAINT [FK_fixed_asset_reissue_tbl_lu_department]
GO
ALTER TABLE [dbo].[fixed_asset_reissue]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_reissue_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[fixed_asset_reissue] CHECK CONSTRAINT [FK_fixed_asset_reissue_tbl_lu_Items]
GO
ALTER TABLE [dbo].[fixed_asset_reissue]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_reissue_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[fixed_asset_reissue] CHECK CONSTRAINT [FK_fixed_asset_reissue_tbl_lu_Status]
GO
ALTER TABLE [dbo].[fixed_asset_reissue]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_reissue_USERS] FOREIGN KEY([received_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_reissue] CHECK CONSTRAINT [FK_fixed_asset_reissue_USERS]
GO
ALTER TABLE [dbo].[fixed_asset_reissue]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_reissue_USERS1] FOREIGN KEY([prepared_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_reissue] CHECK CONSTRAINT [FK_fixed_asset_reissue_USERS1]
GO
ALTER TABLE [dbo].[fixed_asset_reissue]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_reissue_USERS2] FOREIGN KEY([checked_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_reissue] CHECK CONSTRAINT [FK_fixed_asset_reissue_USERS2]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_Fixed_Asset_Allocation] FOREIGN KEY([Fixed_Asset_Id])
REFERENCES [dbo].[tbl_Fixed_Asset] ([Fixed_Asset_Id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_Fixed_Asset_Allocation]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_tbl_lu_department] FOREIGN KEY([returningDepartment])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_tbl_lu_department]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_tbl_lu_Status]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_USERS] FOREIGN KEY([created_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_USERS]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_USERS1] FOREIGN KEY([received_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_USERS1]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_USERS2] FOREIGN KEY([depreciation_stopped_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_USERS2]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_USERS3] FOREIGN KEY([checked_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_USERS3]
GO
ALTER TABLE [dbo].[fixed_asset_return]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_return_USERS4] FOREIGN KEY([approved_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_return] CHECK CONSTRAINT [FK_fixed_asset_return_USERS4]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_Fixed_Asset_Allocation] FOREIGN KEY([Fixed_Asset_Id])
REFERENCES [dbo].[tbl_Fixed_Asset] ([Fixed_Asset_Id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_Fixed_Asset_Allocation]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_tbl_lu_department] FOREIGN KEY([from_department])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_tbl_lu_department]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_tbl_lu_department1] FOREIGN KEY([to_department])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_tbl_lu_department1]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_tbl_lu_Status]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_USERS] FOREIGN KEY([prepared_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_USERS]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_USERS1] FOREIGN KEY([checked_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_USERS1]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_USERS2] FOREIGN KEY([checked_by_destination])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_USERS2]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_USERS3] FOREIGN KEY([approved_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_USERS3]
GO
ALTER TABLE [dbo].[fixed_asset_transfer]  WITH CHECK ADD  CONSTRAINT [FK_fixed_asset_transfer_USERS4] FOREIGN KEY([received_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[fixed_asset_transfer] CHECK CONSTRAINT [FK_fixed_asset_transfer_USERS4]
GO
ALTER TABLE [dbo].[FixedAssetHistory]  WITH CHECK ADD  CONSTRAINT [FK_FixedAssetHistory_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[FixedAssetHistory] CHECK CONSTRAINT [FK_FixedAssetHistory_tbl_lu_Items]
GO
ALTER TABLE [dbo].[GRN_Detail]  WITH CHECK ADD  CONSTRAINT [FK_GRN_Detail_GRN_Master] FOREIGN KEY([GRN_Number])
REFERENCES [dbo].[GRN_Master] ([GRN_Number])
GO
ALTER TABLE [dbo].[GRN_Detail] CHECK CONSTRAINT [FK_GRN_Detail_GRN_Master]
GO
ALTER TABLE [dbo].[GRN_Detail]  WITH CHECK ADD  CONSTRAINT [FK_GRN_Detail_PurchaseRequisition] FOREIGN KEY([PR_Number])
REFERENCES [dbo].[PurchaseRequisition] ([pr_number])
GO
ALTER TABLE [dbo].[GRN_Detail] CHECK CONSTRAINT [FK_GRN_Detail_PurchaseRequisition]
GO
ALTER TABLE [dbo].[GRN_Detail]  WITH CHECK ADD  CONSTRAINT [FK_GRN_Detail_tbl_lu_Items] FOREIGN KEY([item_Id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[GRN_Detail] CHECK CONSTRAINT [FK_GRN_Detail_tbl_lu_Items]
GO
ALTER TABLE [dbo].[GRN_Master]  WITH CHECK ADD  CONSTRAINT [FK_GRN_Master_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[GRN_Master] CHECK CONSTRAINT [FK_GRN_Master_tbl_lu_Status]
GO
ALTER TABLE [dbo].[GRN_Master]  WITH CHECK ADD  CONSTRAINT [FK_GRN_Master_tbl_supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[tbl_supplier] ([supplier_id])
GO
ALTER TABLE [dbo].[GRN_Master] CHECK CONSTRAINT [FK_GRN_Master_tbl_supplier]
GO
ALTER TABLE [dbo].[GRNEmail]  WITH CHECK ADD  CONSTRAINT [FK_GRNEmail_GRN_Detail] FOREIGN KEY([grn_detail_id])
REFERENCES [dbo].[GRN_Detail] ([GRN_Detail_Id])
GO
ALTER TABLE [dbo].[GRNEmail] CHECK CONSTRAINT [FK_GRNEmail_GRN_Detail]
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION]  WITH NOCHECK ADD  CONSTRAINT [FK_LNK_ROLE_PERMISSION_PERMISSIONS] FOREIGN KEY([Permission_Id])
REFERENCES [dbo].[PERMISSIONS] ([Permission_Id])
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION] CHECK CONSTRAINT [FK_LNK_ROLE_PERMISSION_PERMISSIONS]
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION]  WITH NOCHECK ADD  CONSTRAINT [FK_LNK_ROLE_PERMISSION_ROLES] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[ROLES] ([Role_Id])
GO
ALTER TABLE [dbo].[LNK_ROLE_PERMISSION] CHECK CONSTRAINT [FK_LNK_ROLE_PERMISSION_ROLES]
GO
ALTER TABLE [dbo].[LNK_USER_ROLE]  WITH NOCHECK ADD  CONSTRAINT [FK_LNK_USER_ROLE_ROLES] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[ROLES] ([Role_Id])
GO
ALTER TABLE [dbo].[LNK_USER_ROLE] CHECK CONSTRAINT [FK_LNK_USER_ROLE_ROLES]
GO
ALTER TABLE [dbo].[LNK_USER_ROLE]  WITH NOCHECK ADD  CONSTRAINT [FK_LNK_USER_ROLE_USERS] FOREIGN KEY([User_Id])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[LNK_USER_ROLE] CHECK CONSTRAINT [FK_LNK_USER_ROLE_USERS]
GO
ALTER TABLE [dbo].[procurment_master_status]  WITH CHECK ADD  CONSTRAINT [FK_procurment_master_status_procurment_status_names] FOREIGN KEY([status_name])
REFERENCES [dbo].[procurment_status_names] ([status_id])
GO
ALTER TABLE [dbo].[procurment_master_status] CHECK CONSTRAINT [FK_procurment_master_status_procurment_status_names]
GO
ALTER TABLE [dbo].[procurment_master_status]  WITH CHECK ADD  CONSTRAINT [FK_procurment_master_status_PurchaseRequisition] FOREIGN KEY([pr_number])
REFERENCES [dbo].[PurchaseRequisition] ([pr_number])
GO
ALTER TABLE [dbo].[procurment_master_status] CHECK CONSTRAINT [FK_procurment_master_status_PurchaseRequisition]
GO
ALTER TABLE [dbo].[procurment_status_detail]  WITH CHECK ADD  CONSTRAINT [FK_procurment_status_detail_procurment_master_status] FOREIGN KEY([procurment_master_id])
REFERENCES [dbo].[procurment_master_status] ([procurment_status_id])
GO
ALTER TABLE [dbo].[procurment_status_detail] CHECK CONSTRAINT [FK_procurment_status_detail_procurment_master_status]
GO
ALTER TABLE [dbo].[Purchase_Requisition_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Requisition_Detail_PurchaseRequisition] FOREIGN KEY([pr_number])
REFERENCES [dbo].[PurchaseRequisition] ([pr_number])
GO
ALTER TABLE [dbo].[Purchase_Requisition_Detail] CHECK CONSTRAINT [FK_Purchase_Requisition_Detail_PurchaseRequisition]
GO
ALTER TABLE [dbo].[Purchase_Requisition_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Requisition_Detail_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[Purchase_Requisition_Detail] CHECK CONSTRAINT [FK_Purchase_Requisition_Detail_tbl_lu_Items]
GO
ALTER TABLE [dbo].[Purchase_Requisition_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Purchase_Requisition_Detail_USERS] FOREIGN KEY([removed_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[Purchase_Requisition_Detail] CHECK CONSTRAINT [FK_tbl_Purchase_Requisition_Detail_USERS]
GO
ALTER TABLE [dbo].[PurchaseRequisition]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseRequisition_tbl_lu_Status] FOREIGN KEY([pr_status])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[PurchaseRequisition] CHECK CONSTRAINT [FK_PurchaseRequisition_tbl_lu_Status]
GO
ALTER TABLE [dbo].[serial_number_shelf]  WITH CHECK ADD  CONSTRAINT [FK_serial_number_shelf_sequence_type] FOREIGN KEY([seq_type_id])
REFERENCES [dbo].[sequence_type] ([seq_type_id])
GO
ALTER TABLE [dbo].[serial_number_shelf] CHECK CONSTRAINT [FK_serial_number_shelf_sequence_type]
GO
ALTER TABLE [dbo].[serial_schema]  WITH CHECK ADD  CONSTRAINT [FK_serial_schema_sequence_type] FOREIGN KEY([seq_type_id])
REFERENCES [dbo].[sequence_type] ([seq_type_id])
GO
ALTER TABLE [dbo].[serial_schema] CHECK CONSTRAINT [FK_serial_schema_sequence_type]
GO
ALTER TABLE [dbo].[serial_schema]  WITH CHECK ADD  CONSTRAINT [FK_serial_schema_serial_schema] FOREIGN KEY([fiscal_year_id])
REFERENCES [dbo].[fiscal_year] ([id])
GO
ALTER TABLE [dbo].[serial_schema] CHECK CONSTRAINT [FK_serial_schema_serial_schema]
GO
ALTER TABLE [dbo].[SIV_Detail]  WITH CHECK ADD  CONSTRAINT [FK_SIV_Detail_GRN_Master] FOREIGN KEY([GRN_Number])
REFERENCES [dbo].[GRN_Master] ([GRN_Number])
GO
ALTER TABLE [dbo].[SIV_Detail] CHECK CONSTRAINT [FK_SIV_Detail_GRN_Master]
GO
ALTER TABLE [dbo].[SIV_Detail]  WITH CHECK ADD  CONSTRAINT [FK_SIV_Detail_store_requisition] FOREIGN KEY([SR_Id])
REFERENCES [dbo].[store_requisition] ([SR_Number])
GO
ALTER TABLE [dbo].[SIV_Detail] CHECK CONSTRAINT [FK_SIV_Detail_store_requisition]
GO
ALTER TABLE [dbo].[SIV_Detail]  WITH CHECK ADD  CONSTRAINT [FK_SIV_Detail_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[SIV_Detail] CHECK CONSTRAINT [FK_SIV_Detail_tbl_lu_Items]
GO
ALTER TABLE [dbo].[SIV_Detail]  WITH CHECK ADD  CONSTRAINT [FK_SIV_Detail_USERS] FOREIGN KEY([received_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[SIV_Detail] CHECK CONSTRAINT [FK_SIV_Detail_USERS]
GO
ALTER TABLE [dbo].[SIV_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SIV_Detail_tbl_SIV] FOREIGN KEY([SIV_Number])
REFERENCES [dbo].[SIV_Master] ([SIV_Number])
GO
ALTER TABLE [dbo].[SIV_Detail] CHECK CONSTRAINT [FK_tbl_SIV_Detail_tbl_SIV]
GO
ALTER TABLE [dbo].[SIV_Master]  WITH CHECK ADD  CONSTRAINT [FK_SIV_Master_tbl_lu_department] FOREIGN KEY([department_id])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[SIV_Master] CHECK CONSTRAINT [FK_SIV_Master_tbl_lu_department]
GO
ALTER TABLE [dbo].[SIV_Master]  WITH CHECK ADD  CONSTRAINT [FK_SIV_tbl_lu_Status] FOREIGN KEY([SIV_Status])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[SIV_Master] CHECK CONSTRAINT [FK_SIV_tbl_lu_Status]
GO
ALTER TABLE [dbo].[store_requisition]  WITH CHECK ADD  CONSTRAINT [FK_store_requisition_tbl_lu_department] FOREIGN KEY([requesting_dept])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[store_requisition] CHECK CONSTRAINT [FK_store_requisition_tbl_lu_department]
GO
ALTER TABLE [dbo].[store_requisition]  WITH CHECK ADD  CONSTRAINT [FK_store_requisition_tbl_lu_Status] FOREIGN KEY([SR_Status])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[store_requisition] CHECK CONSTRAINT [FK_store_requisition_tbl_lu_Status]
GO
ALTER TABLE [dbo].[store_requisition]  WITH CHECK ADD  CONSTRAINT [FK_store_requisition_USERS] FOREIGN KEY([prepared_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[store_requisition] CHECK CONSTRAINT [FK_store_requisition_USERS]
GO
ALTER TABLE [dbo].[store_requisition_detail]  WITH CHECK ADD  CONSTRAINT [FK_store_requisition_detail_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[store_requisition_detail] CHECK CONSTRAINT [FK_store_requisition_detail_tbl_lu_Items]
GO
ALTER TABLE [dbo].[store_requisition_detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Store_Request_Detail_tbl_Store_Request] FOREIGN KEY([SR_Number])
REFERENCES [dbo].[store_requisition] ([SR_Number])
GO
ALTER TABLE [dbo].[store_requisition_detail] CHECK CONSTRAINT [FK_tbl_Store_Request_Detail_tbl_Store_Request]
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Fixed_Asset_tbl_lu_department] FOREIGN KEY([allocation_id])
REFERENCES [dbo].[Fixed_Asset_Allocation] ([id])
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset] CHECK CONSTRAINT [FK_tbl_Fixed_Asset_tbl_lu_department]
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Fixed_Asset_USERS] FOREIGN KEY([created_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset] CHECK CONSTRAINT [FK_tbl_Fixed_Asset_USERS]
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Fixed_Asset_USERS1] FOREIGN KEY([received_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset] CHECK CONSTRAINT [FK_tbl_Fixed_Asset_USERS1]
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset_Void_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Fixed_Asset_Void_Items_Fixed_Asset_Allocation] FOREIGN KEY([allocation_id])
REFERENCES [dbo].[Fixed_Asset_Allocation] ([id])
GO
ALTER TABLE [dbo].[tbl_Fixed_Asset_Void_Items] CHECK CONSTRAINT [FK_tbl_Fixed_Asset_Void_Items_Fixed_Asset_Allocation]
GO
ALTER TABLE [dbo].[tbl_lu_contract_payment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_lu_contract_payment_tbl_lu_contract_payment] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contract] ([contract_id])
GO
ALTER TABLE [dbo].[tbl_lu_contract_payment] CHECK CONSTRAINT [FK_tbl_lu_contract_payment_tbl_lu_contract_payment]
GO
ALTER TABLE [dbo].[tbl_lu_contract_payment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_lu_contract_payment_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[tbl_lu_contract_payment] CHECK CONSTRAINT [FK_tbl_lu_contract_payment_tbl_lu_Status]
GO
ALTER TABLE [dbo].[tbl_lu_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_lu_Items_tbl_lu_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[tbl_lu_Category] ([category_id])
GO
ALTER TABLE [dbo].[tbl_lu_Items] CHECK CONSTRAINT [FK_tbl_lu_Items_tbl_lu_Category]
GO
ALTER TABLE [dbo].[tbl_lu_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_lu_Items_USERS] FOREIGN KEY([created_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[tbl_lu_Items] CHECK CONSTRAINT [FK_tbl_lu_Items_USERS]
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NonGRN_Items_tbl_lu_department] FOREIGN KEY([department_id])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items] CHECK CONSTRAINT [FK_tbl_NonGRN_Items_tbl_lu_department]
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NonGRN_Items_tbl_lu_Items] FOREIGN KEY([item_Id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items] CHECK CONSTRAINT [FK_tbl_NonGRN_Items_tbl_lu_Items]
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NonGRN_Items_tbl_lu_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tbl_lu_Status] ([status_id])
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items] CHECK CONSTRAINT [FK_tbl_NonGRN_Items_tbl_lu_Status]
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NonGRN_Items_USERS] FOREIGN KEY([created_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items] CHECK CONSTRAINT [FK_tbl_NonGRN_Items_USERS]
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NonGRN_Items_USERS1] FOREIGN KEY([approved_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[tbl_NonGRN_Items] CHECK CONSTRAINT [FK_tbl_NonGRN_Items_USERS1]
GO
ALTER TABLE [dbo].[tbl_SIV_Void_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SIV_Void_Items_SIV_Detail] FOREIGN KEY([siv_detail_id])
REFERENCES [dbo].[SIV_Detail] ([SIV_detail_id])
GO
ALTER TABLE [dbo].[tbl_SIV_Void_Items] CHECK CONSTRAINT [FK_tbl_SIV_Void_Items_SIV_Detail]
GO
ALTER TABLE [dbo].[tbl_Store_void_items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Store_void_items_store_requisition_detail] FOREIGN KEY([SR_detail_id])
REFERENCES [dbo].[store_requisition_detail] ([SR_detail_id])
GO
ALTER TABLE [dbo].[tbl_Store_void_items] CHECK CONSTRAINT [FK_tbl_Store_void_items_store_requisition_detail]
GO
ALTER TABLE [dbo].[tbl_Store_void_items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Store_void_items_tbl_lu_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[tbl_lu_Items] ([item_id])
GO
ALTER TABLE [dbo].[tbl_Store_void_items] CHECK CONSTRAINT [FK_tbl_Store_void_items_tbl_lu_Items]
GO
ALTER TABLE [dbo].[tbl_supplier]  WITH CHECK ADD  CONSTRAINT [FK_tbl_supplier_USERS] FOREIGN KEY([created_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[tbl_supplier] CHECK CONSTRAINT [FK_tbl_supplier_USERS]
GO
ALTER TABLE [dbo].[tbl_Tag_Number_History]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tag_Number_History_USERS] FOREIGN KEY([updated_by])
REFERENCES [dbo].[USERS] ([User_Id])
GO
ALTER TABLE [dbo].[tbl_Tag_Number_History] CHECK CONSTRAINT [FK_tbl_Tag_Number_History_USERS]
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD  CONSTRAINT [FK_USERS_USERS] FOREIGN KEY([department_id])
REFERENCES [dbo].[tbl_lu_department] ([department_id])
GO
ALTER TABLE [dbo].[USERS] CHECK CONSTRAINT [FK_USERS_USERS]
GO
