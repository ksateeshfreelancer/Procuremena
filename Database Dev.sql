USE [tradespu_MARKET_PLACE]
GO
/****** Object:  Table [dbo].[BannerAd]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerAd](
	[BannerAdID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[InventoryID] [bigint] NOT NULL,
	[BannerPosition] [tinyint] NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_BannerAd] PRIMARY KEY CLUSTERED 
(
	[BannerAdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessBranchDetails]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessBranchDetails](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](100) NOT NULL,
	[UserID] [int] NOT NULL,
	[Pincode] [char](6) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Landmark] [nvarchar](100) NULL,
	[CityID] [varchar](100) NOT NULL,
	[State] [nvarchar](50) NULL,
	[Emails] [varchar](100) NULL,
	[Phones] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_BusinessBranchDetails_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_BusinessBranchDetails_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_BusinessBranchDetails] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusinessDetails]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessDetails](
	[UserID] [int] NOT NULL,
	[BusinessName] [varchar](100) NOT NULL,
	[BusinessType] [tinyint] NOT NULL,
	[PAN] [char](10) NULL,
	[PrimaryPhone] [varchar](15) NOT NULL,
	[Phones] [varchar](50) NULL,
	[Emails] [varchar](100) NULL,
	[CityID] [varchar](100) NOT NULL,
	[State] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Pincode] [char](6) NULL,
	[WebsiteURL] [varchar](50) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_BusinessDetails_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_BusinessDetails_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_BusinessDetails] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(100,1) NOT NULL,
	[MainCategoryID] [int] NOT NULL,
	[CategoryName] [varchar](100) NOT NULL,
	[AliasNames] [varchar](200) NULL,
	[DisplayOrder] [tinyint] NOT NULL CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)),
	[Status] [bit] NOT NULL CONSTRAINT [DEF_Category_Status]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Category_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [varchar](100) NOT NULL,
	[CountryID] [tinyint] NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[AliasNames] [varchar](200) NULL CONSTRAINT [DF_City_DisplayOrder1]  DEFAULT ((0)),
	[DisplayOrder] [tinyint] NOT NULL CONSTRAINT [DF_City_DisplayOrder]  DEFAULT ((0)),
	[Status] [bit] NOT NULL CONSTRAINT [DF_City_Status]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_City_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_City_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [tinyint] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DF_Country_Status]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Country_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Country_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DbErrorLog]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DbErrorLog](
	[DbErrorLogID] [int] IDENTITY(1,1) NOT NULL,
	[ErrorNumber] [int] NOT NULL,
	[ErrorSeverity] [tinyint] NOT NULL,
	[ErrorState] [tinyint] NOT NULL,
	[ErrorProcedure] [varchar](50) NOT NULL,
	[ErrorLine] [int] NOT NULL,
	[ErrorMessage] [varchar](1000) NOT NULL,
	[LogDate] [smalldatetime] NOT NULL CONSTRAINT [DF_DbErrorLog_LogDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_DbErrorLog] PRIMARY KEY CLUSTERED 
(
	[DbErrorLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmailLog](
	[EmailLogID] [int] IDENTITY(1,1) NOT NULL,
	[Emails] [varchar](500) NOT NULL,
	[Subject] [varchar](100) NOT NULL,
	[Body] [varchar](2000) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_EmailLog_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_EmailLog] PRIMARY KEY CLUSTERED 
(
	[EmailLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmailQueries]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmailQueries](
	[QueryID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ThreadID] [bigint] NOT NULL,
	[IsParent] [bit] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[QueryCategory] [tinyint] NOT NULL,
	[Subject] [varchar](100) NULL,
	[Body] [varchar](4000) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_EmailQueries] PRIMARY KEY CLUSTERED 
(
	[QueryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enquiry]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enquiry](
	[EnquiryID] [bigint] IDENTITY(100,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[EnquiryLabel] [varchar](20) NOT NULL,
	[StatusID] [tinyint] NOT NULL CONSTRAINT [DEF_Enquiry_EnquiryStatus]  DEFAULT ((1)),
	[IsGeneralEnquiry] [bit] NOT NULL CONSTRAINT [DF_Enquiry_IsGeneralEnquiry]  DEFAULT ((0)),
	[IsMultiProduct] [bit] NOT NULL CONSTRAINT [DF_Enquiry_IsMultiProduct]  DEFAULT ((0)),
	[ProductID] [bigint] NOT NULL,
	[ProductName] [varchar](100) NULL,
	[Quantity] [decimal](10, 2) NOT NULL,
	[UnitID] [tinyint] NOT NULL,
	[ProductSpecification] [varchar](1000) NULL,
	[DeliveryLocation] [varchar](100) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Enquiry_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Enquiry_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Enquiry] PRIMARY KEY CLUSTERED 
(
	[EnquiryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EnquiryLog]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnquiryLog](
	[EnquiryLogID] [bigint] IDENTITY(1,1) NOT NULL,
	[EnquiryID] [bigint] NOT NULL,
	[UserID] [int] NOT NULL,
	[QuotationID] [bigint] NOT NULL,
	[IsParent] [bit] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[UnitCost] [decimal](10, 0) NOT NULL CONSTRAINT [DF_EnquiryLog_EstimatedCost]  DEFAULT ((0)),
	[Discount] [decimal](10, 0) NOT NULL CONSTRAINT [DF_EnquiryLog_Discount]  DEFAULT ((0)),
	[TotalCost] [decimal](10, 0) NOT NULL CONSTRAINT [DF_EnquiryLog_TotalCost]  DEFAULT ((0)),
	[DeliveryPeriod] [varchar](20) NOT NULL CONSTRAINT [DF_EnquiryLog_DeliveryDate]  DEFAULT (getdate()),
	[Attachments] [varchar](100) NULL,
	[PaymentTerms] [varchar](1000) NULL,
	[OtherDetails] [varchar](1000) NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_EnquiryLog_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_EnquiryLog] PRIMARY KEY CLUSTERED 
(
	[EnquiryLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EnquiryStatus]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnquiryStatus](
	[StatusID] [tinyint] NOT NULL,
	[StatusName] [varchar](50) NOT NULL,
	[StatusDescription] [varchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_EnquiryStatus_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_EnquiryStatus_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_EnquiryStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[ErrorLogID] [int] IDENTITY(1,1) NOT NULL,
	[Page] [varchar](100) NOT NULL,
	[Method] [varchar](200) NOT NULL,
	[ErrorMessage] [varchar](1000) NOT NULL,
	[DetailedMessage] [varchar](4000) NOT NULL,
	[IPAddress] [varchar](15) NOT NULL,
	[LogDate] [smalldatetime] NOT NULL CONSTRAINT [DF_ErrorLog_LogDate]  DEFAULT (getdate()),
	[UserID] [int] NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[ErrorLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginLog]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginLog](
	[LoginLogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[LoginDate] [smalldatetime] NOT NULL,
	[LogoutDate] [smalldatetime] NULL,
	[IPAddress] [varchar](15) NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_LoginLog] PRIMARY KEY CLUSTERED 
(
	[LoginLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MainCategory]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MainCategory](
	[MainCategoryID] [int] IDENTITY(100,1) NOT NULL,
	[MainCategoryName] [varchar](100) NOT NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DEF_MainCategory_Status]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_MainCategory_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_MainCategory_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_MainCategory] PRIMARY KEY CLUSTERED 
(
	[MainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanFeature]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanFeature](
	[PlanFeatureID] [int] IDENTITY(1,1) NOT NULL,
	[FeatureName] [varchar](100) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[ControlType] [tinyint] NOT NULL,
	[IsEditable] [bit] NOT NULL CONSTRAINT [DF_PlanFeature_IsEditable]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PlanFeature_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PlanFeature_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_PlanFeature] PRIMARY KEY CLUSTERED 
(
	[PlanFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriceManagement]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PriceManagement](
	[PriceManagementID] [int] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NOT NULL,
	[PlanFeatureID] [int] NOT NULL,
	[ControlValue] [varchar](50) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PriceManagement_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PriceManagement_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_PriceManagement] PRIMARY KEY CLUSTERED 
(
	[PriceManagementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PricePlan]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PricePlan](
	[PlanID] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [varchar](50) NOT NULL,
	[PlanPrice] [decimal](10, 2) NOT NULL,
	[PlanSubscription] [tinyint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PricePlan_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PricePlan_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_PricePlan] PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCatalog]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCatalog](
	[ProductID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[AliasNames] [nvarchar](200) NULL,
	[SubCategoryID] [int] NOT NULL CONSTRAINT [DF_Table_1_ProductCategory]  DEFAULT ((0)),
	[CategoryID] [int] NOT NULL,
	[CountryID] [tinyint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductCatalog] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotation](
	[QuotationID] [bigint] IDENTITY(1,1) NOT NULL,
	[EnquiryID] [bigint] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[StatusID] [tinyint] NOT NULL CONSTRAINT [DF_Quotation_StatusID]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Quotation_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Quotation_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Quotation] PRIMARY KEY CLUSTERED 
(
	[QuotationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(100,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[Level] [tinyint] NOT NULL,
	[Screens] [nvarchar](500) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Roles_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Roles_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Screens]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Screens](
	[ScreenID] [int] NOT NULL,
	[ScreenName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](100) NOT NULL,
	[Order] [tinyint] NOT NULL,
	[Category] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[ShowInMenu] [bit] NOT NULL CONSTRAINT [DF_Screens_Accessibility]  DEFAULT ((1)),
	[IsAdminScreen] [bit] NOT NULL CONSTRAINT [DF_Screens_IsAdminScreen]  DEFAULT ((0)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Screens_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Screens_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Screens] PRIMARY KEY CLUSTERED 
(
	[ScreenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMSLog]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMSLog](
	[SMSLogID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNos] [varchar](100) NOT NULL,
	[Message] [varchar](200) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_SMSLog] PRIMARY KEY CLUSTERED 
(
	[SMSLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] IDENTITY(100,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryName] [varchar](100) NOT NULL,
	[AliasNames] [varchar](200) NULL,
	[DisplayOrder] [tinyint] NOT NULL CONSTRAINT [DF_SubCategory_DisplayOrder]  DEFAULT ((0)),
	[Status] [bit] NOT NULL CONSTRAINT [DEF_SubCategory_Status]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_SubCategory_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_SubCategory_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[SubscriptionID] [int] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[IsExpired] [bit] NOT NULL CONSTRAINT [DF_Subscription_IsExpired]  DEFAULT ((0)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Subscription_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Subscription_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Subscription] PRIMARY KEY CLUSTERED 
(
	[SubscriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitofMeasurement]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitofMeasurement](
	[UnitID] [tinyint] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DF_UnitofMeasurement_Status]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_UnitofMeasurement_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_UnitofMeasurement_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_UnitofMeasurement] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Gender] [bit] NULL,
	[DOB] [date] NOT NULL,
	[CountryID] [tinyint] NOT NULL,
	[RegisteredIP] [varchar](15) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_UserDetails_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_UserDetails_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Mobile] [varchar](10) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[IsNewPassword] [bit] NULL CONSTRAINT [DF_Users_IsNewPassword]  DEFAULT ((0)),
	[InvalidLoginAttempts] [tinyint] NOT NULL CONSTRAINT [DF_Users_InvalidLoginAttempts]  DEFAULT ((0)),
	[RoleID] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Users_CreatedDate]  DEFAULT (getdate()),
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_Users_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [pk_Users_uid] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorInventory]    Script Date: 24-09-2016 19:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorInventory](
	[InventoryID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[MoreRedirectURL] [nvarchar](200) NULL,
	[ShowProductInSearch] [bit] NOT NULL CONSTRAINT [DF_VendorInventory_ShowProductInSearch]  DEFAULT ((1)),
	[PricePerUnit] [decimal](8, 0) NOT NULL CONSTRAINT [DF_VendorInventory_PricePerUnit]  DEFAULT ((0)),
	[UnitID] [tinyint] NULL,
	[Status] [int] NOT NULL CONSTRAINT [DF_VendorInventory_Status]  DEFAULT ((1)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_VendorInventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BusinessBranchDetails] ON 

GO
INSERT [dbo].[BusinessBranchDetails] ([BranchID], [BranchName], [UserID], [Pincode], [Address], [Landmark], [CityID], [State], [Emails], [Phones], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Head Office', 2, N'500050', N'Hyderabad^ Secunderabad', N'Khairatabad', N'101', N'Telangana', N'', N'9999912345', 2, CAST(N'2016-06-07 00:22:00' AS SmallDateTime), 2, CAST(N'2016-06-07 00:22:00' AS SmallDateTime))
GO
INSERT [dbo].[BusinessBranchDetails] ([BranchID], [BranchName], [UserID], [Pincode], [Address], [Landmark], [CityID], [State], [Emails], [Phones], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'Delhi office', 2, N'939393', N'Hello delhi', N'Jahanghir Road', N'100', N'New Delhi', N'ororo@mai.com', N'9393939393', 2, CAST(N'2016-06-07 00:40:00' AS SmallDateTime), 2, CAST(N'2016-06-07 00:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[BusinessBranchDetails] OFF
GO
INSERT [dbo].[BusinessDetails] ([UserID], [BusinessName], [BusinessType], [PAN], [PrimaryPhone], [Phones], [Emails], [CityID], [State], [Address], [Pincode], [WebsiteURL], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Mart', 3, N'121       ', N'121', N'12^3^4', N'bha@g.com', N'100', N'100', N'sds', N'111   ', N'', 2, CAST(N'2016-05-01 00:00:00' AS SmallDateTime), 2, CAST(N'2016-06-07 01:03:00' AS SmallDateTime))
GO
INSERT [dbo].[BusinessDetails] ([UserID], [BusinessName], [BusinessType], [PAN], [PrimaryPhone], [Phones], [Emails], [CityID], [State], [Address], [Pincode], [WebsiteURL], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'Satya`s International', 2, N'123123123 ', N'123123123', N'', N'', N'101', N'TELANGANA', N'', N'      ', N'', 18, CAST(N'2016-06-12 21:28:00' AS SmallDateTime), 18, CAST(N'2016-06-12 21:28:00' AS SmallDateTime))
GO
INSERT [dbo].[BusinessDetails] ([UserID], [BusinessName], [BusinessType], [PAN], [PrimaryPhone], [Phones], [Emails], [CityID], [State], [Address], [Pincode], [WebsiteURL], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1025, N'Prasad s Continental', 1, N'123123123 ', N'1230897123', N'', N'', N'106', N'Tamilnadu', N'', N'      ', N'', 1025, CAST(N'2016-06-16 08:18:00' AS SmallDateTime), 1025, CAST(N'2016-06-16 08:18:00' AS SmallDateTime))
GO
INSERT [dbo].[BusinessDetails] ([UserID], [BusinessName], [BusinessType], [PAN], [PrimaryPhone], [Phones], [Emails], [CityID], [State], [Address], [Pincode], [WebsiteURL], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1028, N'Amara BUsiness Solutions', 2, N'BIIPK84576', N'823748293', N'', N'', N'106', N'', N'', N'      ', N'', 1028, CAST(N'2016-06-18 14:47:00' AS SmallDateTime), 1028, CAST(N'2016-06-18 14:47:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (100, 100, N'Electrical & Electronics', N'Electronics^ Electrical', 1, 1, 1, CAST(N'2016-05-01 23:49:00' AS SmallDateTime), 1, CAST(N'2016-06-27 21:54:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (101, 100, N'Industrial Supplies', N'', 3, 1, 1, CAST(N'2016-05-02 00:00:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:18:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (102, 101, N'Heavy Equipment', N'', 0, 0, 1, CAST(N'2016-05-02 00:04:00' AS SmallDateTime), 1, CAST(N'2016-06-26 08:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (103, 101, N'Safety Equipment', N'', 2, 1, 1, CAST(N'2016-05-02 00:04:00' AS SmallDateTime), 1, CAST(N'2016-06-15 23:34:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (104, 101, N'Surveying Equipment', N'', 4, 1, 1, CAST(N'2016-05-02 00:04:00' AS SmallDateTime), 1, CAST(N'2016-06-14 23:14:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (105, 102, N'Consultancy Services', N'', 0, 1, 1, CAST(N'2016-05-02 00:04:00' AS SmallDateTime), 1, CAST(N'2016-06-27 21:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (106, 102, N'Manpower consultancy services', N'', 0, 1, 1, CAST(N'2016-05-02 00:04:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:04:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'100', 1, N'Delhi', N'New Delhi', 0, 1, 1, CAST(N'2016-05-03 08:27:00' AS SmallDateTime), 1, CAST(N'2016-05-03 08:27:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'101', 1, N'Hyderabad', N'Secunderabad', 0, 1, 1, CAST(N'2016-05-03 08:31:00' AS SmallDateTime), 1, CAST(N'2016-06-17 01:04:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'104', 1, N'Vijayawada', N'Bejawada', 1, 1, 1, CAST(N'2016-05-03 09:02:00' AS SmallDateTime), 1, CAST(N'2016-06-17 01:04:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'105', 1, N'Nellore', N'', 0, 1, 2, CAST(N'2016-06-07 00:38:00' AS SmallDateTime), 2, CAST(N'2016-06-07 00:38:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'106', 1, N'Chennai', N'', 0, 1, 1025, CAST(N'2016-06-16 08:18:00' AS SmallDateTime), 1025, CAST(N'2016-06-16 08:18:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'107', 1, N'Bangalore', N'', 0, 1, 3, CAST(N'2016-07-06 17:52:00' AS SmallDateTime), 3, CAST(N'2016-07-06 17:52:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'108', 1, N'Warangal', N'', 0, 1, 0, CAST(N'2016-07-08 20:31:00' AS SmallDateTime), 0, CAST(N'2016-07-08 20:31:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'109', 1, N'Lucknow', N'', 0, 1, 0, CAST(N'2016-07-09 15:46:00' AS SmallDateTime), 0, CAST(N'2016-07-09 15:46:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'110', 1, N'Guntur', N'', 0, 1, 0, CAST(N'2016-07-10 09:35:00' AS SmallDateTime), 0, CAST(N'2016-07-10 09:35:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'111', 1, N'dubai', N'', 0, 1, 0, CAST(N'2016-07-10 15:30:00' AS SmallDateTime), 0, CAST(N'2016-07-10 15:30:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

GO
INSERT [dbo].[Country] ([CountryID], [CountryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'India', 1, 1, CAST(N'2016-04-27 00:48:00' AS SmallDateTime), 1, CAST(N'2016-04-27 00:48:00' AS SmallDateTime))
GO
INSERT [dbo].[Country] ([CountryID], [CountryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'USA', 1, 1, CAST(N'2016-05-03 08:26:00' AS SmallDateTime), 1, CAST(N'2016-06-14 23:19:00' AS SmallDateTime))
GO
INSERT [dbo].[Country] ([CountryID], [CountryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'UAE', 1, 1, CAST(N'2016-05-03 08:26:00' AS SmallDateTime), 1, CAST(N'2016-05-03 08:27:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[DbErrorLog] ON 

GO
INSERT [dbo].[DbErrorLog] ([DbErrorLogID], [ErrorNumber], [ErrorSeverity], [ErrorState], [ErrorProcedure], [ErrorLine], [ErrorMessage], [LogDate]) VALUES (1, 547, 16, 0, N'uspInsertMultipleRows', 2, N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_City_Country". The conflict occurred in database "tradespu_MARKET_PLACE", table "dbo.Country", column ''CountryID''.', CAST(N'2016-05-03 08:41:00' AS SmallDateTime))
GO
INSERT [dbo].[DbErrorLog] ([DbErrorLogID], [ErrorNumber], [ErrorSeverity], [ErrorState], [ErrorProcedure], [ErrorLine], [ErrorMessage], [LogDate]) VALUES (8, 512, 16, 1, N'uspValidateSubscription', 36, N'Subquery returned more than 1 value. This is not permitted when the subquery follows =, !=, <, <= , >, >= or when the subquery is used as an expression.', CAST(N'2016-06-16 23:30:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[DbErrorLog] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailLog] ON 

GO
INSERT [dbo].[EmailLog] ([EmailLogID], [Emails], [Subject], [Body], [CreatedDate]) VALUES (8, N'user3@gmail.com', N'hi subject', N'hi body', CAST(N'2016-06-12 13:23:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailLog] ([EmailLogID], [Emails], [Subject], [Body], [CreatedDate]) VALUES (9, N'satyasai.kc@gmail.com', N'hi', N'hiii', CAST(N'2016-06-12 20:15:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailLog] ([EmailLogID], [Emails], [Subject], [Body], [CreatedDate]) VALUES (10, N'satyasai.kc@gmail.com', N'sd', N'sddd', CAST(N'2016-06-12 20:22:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailLog] ([EmailLogID], [Emails], [Subject], [Body], [CreatedDate]) VALUES (11, N'shaikmsubhani@gmail.com^ nag.arjunt@outlook.com^ satyasai.kc@gmail.com', N'Local Search Demo', N'Hi^&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;h2&gt;&lt;u&gt;&lt;strike&gt;&lt;i&gt;&amp;nbsp;This is &lt;/i&gt;&lt;/strike&gt;&lt;/u&gt;demo session for local search portal.&lt;/h2&gt;', CAST(N'2016-06-14 23:57:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailLog] ([EmailLogID], [Emails], [Subject], [Body], [CreatedDate]) VALUES (12, N'Suresh_amara@yahoo.com', N'Your Subscription is about to expire', N'Please renew. We are giving 20%', CAST(N'2016-06-18 16:43:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[EmailLog] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailQueries] ON 

GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (1, 2, 636008536878429935, 1, 1, 3, N'Hello', N'testing 123', CAST(N'2016-06-06 23:48:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (2, 2, 636008539204391185, 1, 1, 2, N'testing 2', N'hello testing', CAST(N'2016-06-06 23:52:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (3, 2, 636008536878429935, 0, 1, 3, NULL, N'is someone there ???', CAST(N'2016-06-06 23:52:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (4, 2, 636008536878429935, 0, 1, 3, NULL, N'yeah.. I`m there..', CAST(N'2016-06-06 23:52:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (5, 1, 636008536878429935, 0, 0, 3, NULL, N'no^ I`m there..', CAST(N'2016-06-06 23:59:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (6, 3, 636015423857902047, 1, 1, 1, N'Registration', N'How to upgrade to vendor', CAST(N'2016-06-14 23:06:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (7, 1, 636015423857902047, 0, 1, 1, NULL, N'here are the steps to register', CAST(N'2016-06-14 23:10:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (8, 1, 636008536878429935, 0, 0, 3, NULL, N'hi admin replied', CAST(N'2016-06-15 00:03:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (9, 3, 636015423857902047, 0, 1, 1, NULL, N'ok^ thanks admin', CAST(N'2016-06-15 08:32:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (10, 3, 636015423857902047, 0, 1, 1, NULL, N'hey', CAST(N'2016-06-15 08:34:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (11, 1, 636015423857902047, 0, 1, 1, NULL, N'yes user', CAST(N'2016-06-15 10:12:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (12, 3, 636015423857902047, 0, 1, 1, NULL, N'test', CAST(N'2016-06-15 10:25:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (13, 3, 636016309318620665, 1, 0, 3, N'Finance related query', N'Hi Admin^
 please answer my query', CAST(N'2016-06-15 23:42:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (14, 1025, 636016616215001415, 1, 0, 5, N'Hello ! Olaa', N'Hi Admin^ I`m newly registered', CAST(N'2016-06-16 08:14:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (15, 1028, 636018578969318808, 1, 1, 1, N'Have query reg vendor reg', N'hi pls sugest', CAST(N'2016-06-18 14:45:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (16, 1, 636018578969318808, 0, 1, 1, NULL, N'please follow below steps', CAST(N'2016-06-18 14:45:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[EmailQueries] OFF
GO
SET IDENTITY_INSERT [dbo].[Enquiry] ON 

GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (104, 3, N'29_05_2016_1', 11, 1, 0, 3, N'Air Conditioners', CAST(20.00 AS Decimal(10, 2)), 5, N'hi this is testing', N'104', 3, CAST(N'2016-05-29 12:59:00' AS SmallDateTime), 3, CAST(N'2016-05-29 12:59:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (105, 3, N'29_05_2016_2', 2, 1, 0, 3, N'Air Conditioners', CAST(23.00 AS Decimal(10, 2)), 8, N'hi testing 2', N'101', 3, CAST(N'2016-05-29 13:07:00' AS SmallDateTime), 3, CAST(N'2016-05-29 13:07:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (106, 23, N'29_05_2016_3', 1, 1, 0, 3, N'Air Conditioners', CAST(43.00 AS Decimal(10, 2)), 16, N'hello testing 4', N'101', 23, CAST(N'2016-05-29 13:25:00' AS SmallDateTime), 23, CAST(N'2016-05-29 13:25:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (107, 1024, N'12_06_2016_4', 2, 1, 0, 5, N'Disco Lights', CAST(1000.00 AS Decimal(10, 2)), 38, N'I want disco lights', N'101', 1024, CAST(N'2016-06-12 23:44:00' AS SmallDateTime), 1024, CAST(N'2016-06-12 23:44:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (108, 3, N'14_06_2016_5', 1, 1, 0, 3, N'Air Conditioners', CAST(100.00 AS Decimal(10, 2)), 2, N'asd', N'101', 3, CAST(N'2016-06-14 22:45:00' AS SmallDateTime), 3, CAST(N'2016-06-14 22:45:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (109, 3, N'14_06_2016_6', 1, 1, 0, 8, N'Sign boards', CAST(200.00 AS Decimal(10, 2)), 5, N'Red color^ 4 x 4 size', N'101', 3, CAST(N'2016-06-14 22:49:00' AS SmallDateTime), 3, CAST(N'2016-06-14 22:49:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (112, 3, N'15_06_2016_7', 12, 1, 0, 8, N'left arrow boards', CAST(12.00 AS Decimal(10, 2)), 4, N'hi testing', N'101', 3, CAST(N'2016-06-16 00:16:00' AS SmallDateTime), 3, CAST(N'2016-06-16 00:16:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (113, 1025, N'16_06_2016_8', 1, 1, 0, 7, N'CC Cameras', CAST(40.00 AS Decimal(10, 2)), 5, N'HD camaras', N'101', 1025, CAST(N'2016-06-16 07:55:00' AS SmallDateTime), 1025, CAST(N'2016-06-16 07:55:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (114, 1026, N'17_06_2016_9', 2, 1, 0, 3, N'Acs', CAST(2.00 AS Decimal(10, 2)), 2, N'testing', N'101', 1026, CAST(N'2016-06-17 19:00:00' AS SmallDateTime), 1026, CAST(N'2016-06-17 19:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (115, 1028, N'18_06_2016_10', 2, 1, 0, 3, N'Acs', CAST(10.00 AS Decimal(10, 2)), 2, N'Hi', N'101', 1028, CAST(N'2016-06-18 14:33:00' AS SmallDateTime), 1028, CAST(N'2016-06-18 14:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (116, 3, N'18_06_2016_11', 11, 1, 0, 6, N'Tube lights', CAST(3.00 AS Decimal(10, 2)), 2, N'testing', N'101', 3, CAST(N'2016-06-18 16:11:00' AS SmallDateTime), 3, CAST(N'2016-06-18 16:11:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (117, 3, N'18_06_2016_12', 11, 1, 0, 3, N'Air Conditioners', CAST(54.00 AS Decimal(10, 2)), 2, N'I Need Daikin ACs', N'101', 3, CAST(N'2016-06-18 16:16:00' AS SmallDateTime), 3, CAST(N'2016-06-18 16:16:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (118, 3, N'21_06_2016_13', 1, 1, 0, 8, N'left arrow boards', CAST(200.00 AS Decimal(10, 2)), 2, N'hi', N'104', 3, CAST(N'2016-06-21 07:31:00' AS SmallDateTime), 3, CAST(N'2016-06-21 07:31:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (119, 3, N'21_06_2016_14', 1, 1, 0, 5, N'Disco Lights', CAST(10.00 AS Decimal(10, 2)), 2, N'testing', N'104', 3, CAST(N'2016-06-21 07:40:00' AS SmallDateTime), 3, CAST(N'2016-06-21 07:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (120, 3, N'21_06_2016_15', 12, 1, 0, 5, N'Special Lights', CAST(10.00 AS Decimal(10, 2)), 2, N'testing', N'104', 3, CAST(N'2016-06-21 07:41:00' AS SmallDateTime), 3, CAST(N'2016-06-21 07:41:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (124, 1030, N'25_06_2016_16', 1, 1, 0, 5, N'Disco Lights', CAST(78.00 AS Decimal(10, 2)), 2, N'testin specifications', NULL, 1030, CAST(N'2016-06-26 02:57:00' AS SmallDateTime), 1030, CAST(N'2016-06-26 02:57:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (125, 1031, N'25_06_2016_17', 1, 1, 0, 3, N'Air Conditioners', CAST(222.00 AS Decimal(10, 2)), 2, N'Good', NULL, 1031, CAST(N'2016-06-26 03:56:00' AS SmallDateTime), 1031, CAST(N'2016-06-26 03:56:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (126, 1, N'27_06_2016_18', 1, 0, 0, 3, N'Air Conditioners', CAST(100.00 AS Decimal(10, 2)), 2, N'ac', N'104', 1, CAST(N'2016-06-27 21:47:00' AS SmallDateTime), 1, CAST(N'2016-06-27 21:47:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (127, 1033, N'05_07_2016_19', 1, 0, 0, 10, N'Laser Scanners', CAST(10.00 AS Decimal(10, 2)), 2, N'test', N'104', 1033, CAST(N'2016-07-05 18:15:00' AS SmallDateTime), 1033, CAST(N'2016-07-05 18:15:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (128, 3, N'06_07_2016_20', 1, 1, 1, 3, N'Air Conditioners', CAST(100.00 AS Decimal(10, 2)), 3, N'Hi this is description for product 1', N'104', 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime), 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (129, 3, N'06_07_2016_20', 1, 1, 1, 7, N'CC Cameras', CAST(100.00 AS Decimal(10, 2)), 3, N'Hi this is description for product 2', N'104', 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime), 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (130, 3, N'06_07_2016_20', 1, 1, 1, 5, N'Disco Lights', CAST(1.00 AS Decimal(10, 2)), 2, N'prod 3 description', N'104', 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime), 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (131, 3, N'06_07_2016_20', 1, 1, 1, 11, N'Sofa Set', CAST(2.00 AS Decimal(10, 2)), 4, N't4', N'104', 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime), 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (132, 3, N'06_07_2016_20', 1, 1, 1, 8, N'left arrow boards', CAST(600.00 AS Decimal(10, 2)), 5, N'test', N'104', 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime), 3, CAST(N'2016-07-06 13:38:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (133, 3, N'06_07_2016_21', 1, 1, 0, 11, N'Sofa Set', CAST(2.00 AS Decimal(10, 2)), 5, N'Need sofa set for testing on 6 july', N'104', 3, CAST(N'2016-07-06 16:42:00' AS SmallDateTime), 3, CAST(N'2016-07-06 16:42:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (135, 3, N'06_07_2016_22', 1, 1, 1, 11, N'Sofa Set', CAST(10.00 AS Decimal(10, 2)), 2, N'Hello desc', N'104', 3, CAST(N'2016-07-06 16:49:00' AS SmallDateTime), 3, CAST(N'2016-07-06 16:49:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (136, 3, N'06_07_2016_22', 1, 1, 1, 5, N'Special Lights', CAST(100.00 AS Decimal(10, 2)), 2, N'test', N'104', 3, CAST(N'2016-07-06 16:49:00' AS SmallDateTime), 3, CAST(N'2016-07-06 16:49:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (137, 3, N'06_07_2016_22', 1, 1, 1, 5, N'Disco Lights', CAST(102.00 AS Decimal(10, 2)), 3, N'test 1', N'104', 3, CAST(N'2016-07-06 16:49:00' AS SmallDateTime), 3, CAST(N'2016-07-06 16:49:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (138, 3, N'06_07_2016_23', 1, 1, 0, 3, N'Air Conditioners', CAST(10.00 AS Decimal(10, 2)), 3, N'test', N'107', 3, CAST(N'2016-07-06 17:52:00' AS SmallDateTime), 3, CAST(N'2016-07-06 17:52:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (139, 3, N'06_07_2016_24', 5, 1, 1, 8, N'Sign boards', CAST(10.00 AS Decimal(10, 2)), 2, N'test', N'100', 3, CAST(N'2016-07-06 17:54:00' AS SmallDateTime), 2, CAST(N'2016-07-09 12:55:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (140, 3, N'06_07_2016_24', 5, 1, 1, 11, N'Sofa Set', CAST(2.00 AS Decimal(10, 2)), 2, N'prod 3 description', N'100', 3, CAST(N'2016-07-06 17:54:00' AS SmallDateTime), 2, CAST(N'2016-07-09 12:55:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (147, 1035, N'08_07_2016_25', 1, 0, 0, 5, N'Disco Lights', CAST(100.00 AS Decimal(10, 2)), 2, N'test', N'108', 1035, CAST(N'2016-07-08 20:31:00' AS SmallDateTime), 1035, CAST(N'2016-07-08 20:31:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (148, 1036, N'09_07_2016_26', 1, 1, 0, 8, N'left arrow boards', CAST(100.00 AS Decimal(10, 2)), 4, N'test', N'109', 1036, CAST(N'2016-07-09 15:46:00' AS SmallDateTime), 1036, CAST(N'2016-07-09 15:46:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (149, 1038, N'09_07_2016_27', 1, 0, 0, 8, N'Sign boards', CAST(100.00 AS Decimal(10, 2)), 2, N'tste', N'105', 1038, CAST(N'2016-07-09 15:48:00' AS SmallDateTime), 1038, CAST(N'2016-07-09 15:48:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (150, 3, N'09_07_2016_28', 11, 1, 1, 5, N'Disco Lights', CAST(100.00 AS Decimal(10, 2)), 2, N'test', N'105', 3, CAST(N'2016-07-09 15:51:00' AS SmallDateTime), 2, CAST(N'2016-07-12 22:37:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (151, 3, N'09_07_2016_28', 2, 1, 1, 3, N'Air Conditioners', CAST(10.00 AS Decimal(10, 2)), 2, N'testt123', N'105', 3, CAST(N'2016-07-09 15:51:00' AS SmallDateTime), 3, CAST(N'2016-07-09 15:51:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (152, 3, N'09_07_2016_28', 11, 1, 1, 11, N'Sofa Set', CAST(123.00 AS Decimal(10, 2)), 2, N'test', N'105', 3, CAST(N'2016-07-09 15:51:00' AS SmallDateTime), 2, CAST(N'2016-07-12 22:37:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (155, 1041, N'10_07_2016_29', 1, 0, 0, 3, N'Air Conditioners', CAST(10.00 AS Decimal(10, 2)), 2, N'1.5t', N'111', 1041, CAST(N'2016-07-10 15:30:00' AS SmallDateTime), 1041, CAST(N'2016-07-10 15:30:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (156, 1042, N'10_07_2016_30', 11, 1, 0, 5, N'Disco Lights', CAST(15.00 AS Decimal(10, 2)), 2, N'12w', N'111', 1042, CAST(N'2016-07-10 15:41:00' AS SmallDateTime), 1042, CAST(N'2016-07-10 15:41:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (157, 3, N'10_07_2016_31', 1, 0, 0, 5, N'Disco Lights', CAST(100.00 AS Decimal(10, 2)), 2, N'test', N'vijayawada', 3, CAST(N'2016-07-10 21:01:00' AS SmallDateTime), 3, CAST(N'2016-07-10 21:01:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (158, 3, N'10_07_2016_32', 1, 0, 0, 5, N'Disco Lights', CAST(200.00 AS Decimal(10, 2)), 2, N'rets', N'Chennai', 3, CAST(N'2016-07-10 21:11:00' AS SmallDateTime), 3, CAST(N'2016-07-10 21:11:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (159, 3, N'10_07_2016_33', 1, 0, 0, 3, N'Air Conditioners', CAST(100.00 AS Decimal(10, 2)), 2, N'test', N'Location', 3, CAST(N'2016-07-10 21:13:00' AS SmallDateTime), 3, CAST(N'2016-07-10 21:13:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (160, 1043, N'10_07_2016_34', 1, 0, 0, 3, N'Air Conditioners', CAST(100.00 AS Decimal(10, 2)), 2, N'asd', N'asd', 1043, CAST(N'2016-07-10 21:19:00' AS SmallDateTime), 1043, CAST(N'2016-07-10 21:19:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (161, 3, N'27_07_2016_35', 11, 1, 1, 3, N'Coolers', CAST(10.00 AS Decimal(10, 2)), 5, N'test cooler', N'Lingampally', 3, CAST(N'2016-07-27 16:02:00' AS SmallDateTime), 3, CAST(N'2016-07-27 16:02:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (162, 3, N'27_07_2016_35', 11, 1, 1, 8, N'Sign boards', CAST(10.00 AS Decimal(10, 2)), 6, N'test board', N'Lingampally', 3, CAST(N'2016-07-27 16:02:00' AS SmallDateTime), 2, CAST(N'2016-07-27 16:07:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (163, 3, N'27_07_2016_35', 11, 1, 1, 5, N'Special Lights', CAST(10.00 AS Decimal(10, 2)), 7, N'test light', N'Lingampally', 3, CAST(N'2016-07-27 16:02:00' AS SmallDateTime), 2, CAST(N'2016-07-27 16:07:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Enquiry] OFF
GO
SET IDENTITY_INSERT [dbo].[EnquiryLog] ON 

GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (1, 104, 3, 4, 1, 1, CAST(150 AS Decimal(10, 0)), CAST(10 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-04-13', NULL, NULL, N'hi this is testing', CAST(N'2016-05-29 17:03:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (2, 104, 2, 4, 0, 0, CAST(170 AS Decimal(10, 0)), CAST(20 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-01-25', N'636013602203893784_Angular JS sessions level 02.pdf', NULL, N'Hi^ PFA.', CAST(N'2016-06-12 20:30:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (3, 104, 2, 4, 0, 0, CAST(22 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-02-03', N'', NULL, N'Hi^ I&#39;m ready to give 10 % discount on the quotation provided. Let&amp;nbsp; me know if you are interested.', CAST(N'2016-06-12 20:41:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (4, 104, 2, 4, 0, 0, CAST(345 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-02-14', N'', NULL, N'Hello &lt;strike&gt;&lt;em&gt;buddy&lt;/em&gt;&lt;/strike&gt;', CAST(N'2016-06-12 20:41:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (5, 104, 3, 5, 1, 1, CAST(560 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-05-17', NULL, NULL, N'hi this is testing', CAST(N'2016-05-29 17:03:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (6, 104, 18, 5, 0, 0, CAST(790 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-03-26', N'', NULL, N'hi mama^ I will send the quotation shortly', CAST(N'2016-06-12 21:19:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (23, 116, 3, 22, 1, 1, CAST(560 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-01-28', NULL, NULL, N'testing', CAST(N'2016-06-18 16:11:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (24, 117, 3, 23, 1, 1, CAST(320 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-04-05', NULL, NULL, N'I Need Daikin ACs', CAST(N'2016-06-18 16:17:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (25, 117, 1028, 23, 0, 0, CAST(540 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-06-14', N'', NULL, N'Hi please find the attached estimate..&lt;br&gt;', CAST(N'2016-06-18 16:23:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (26, 104, 2, 4, 0, 0, CAST(400 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-06-30', N'', NULL, N'', CAST(N'2016-06-26 08:27:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (32, 139, 3, 29, 1, 1, CAST(230 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-07', NULL, NULL, N'test', CAST(N'2016-07-07 02:48:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (33, 139, 3, 30, 1, 1, CAST(500 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-07', NULL, NULL, N'test', CAST(N'2016-07-07 02:48:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (34, 140, 3, 31, 1, 1, CAST(360 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-07', NULL, NULL, N'prod 3 description', CAST(N'2016-07-07 02:48:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (35, 139, 2, 29, 0, 0, CAST(20000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-22', N'', NULL, N'', CAST(N'2016-07-09 11:33:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (36, 140, 2, 31, 0, 0, CAST(100000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-22', N'', NULL, N'', CAST(N'2016-07-09 11:33:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (37, 139, 2, 29, 0, 0, CAST(19000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-16', N'', NULL, N'', CAST(N'2016-07-09 11:52:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (38, 140, 2, 31, 0, 0, CAST(95000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-16', N'', NULL, N'', CAST(N'2016-07-09 11:52:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (41, 139, 2, 29, 0, 0, CAST(15000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-15', N'', NULL, N'', CAST(N'2016-07-09 12:55:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (42, 140, 2, 31, 0, 0, CAST(80000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-15', N'', NULL, N'', CAST(N'2016-07-09 12:55:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (43, 116, 2, 22, 0, 0, CAST(100 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-28', N'', NULL, N'', CAST(N'2016-07-09 12:56:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (44, 156, 1042, 32, 1, 1, CAST(200 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-10', NULL, NULL, N'12w', CAST(N'2016-07-10 15:42:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (45, 156, 1042, 33, 1, 0, CAST(450 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-10', NULL, NULL, N'12w', CAST(N'2016-07-10 15:42:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (46, 156, 2, 32, 0, 0, CAST(12000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'2016-07-23', N'', NULL, N'', CAST(N'2016-07-10 15:59:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (47, 156, 2, 32, 0, 0, CAST(100 AS Decimal(10, 0)), CAST(20 AS Decimal(10, 0)), CAST(1480 AS Decimal(10, 0)), N'2 months', N'', N'No text', N'no details', CAST(N'2016-07-11 22:53:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (48, 156, 2, 32, 0, 0, CAST(400 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(6000 AS Decimal(10, 0)), N'20 months', N'', N'hi we will tey to deliver product under cc tv surveillance and  do not negotiate on price. pls     contact us only if you are interested', N'', CAST(N'2016-07-11 23:01:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (49, 150, 2, 34, 0, 0, CAST(5 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(500 AS Decimal(10, 0)), N'6 months', N'', N'', N'', CAST(N'2016-07-12 22:03:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (50, 152, 2, 37, 0, 0, CAST(1 AS Decimal(10, 0)), CAST(23 AS Decimal(10, 0)), CAST(100 AS Decimal(10, 0)), N'6 months', N'', N'', N'', CAST(N'2016-07-12 22:03:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (51, 150, 2, 34, 0, 0, CAST(10 AS Decimal(10, 0)), CAST(100 AS Decimal(10, 0)), CAST(900 AS Decimal(10, 0)), N'3 months', N'', N'simple `return` is not working for me. this is why i googled it and found this post. `return false` works. i am running osx lion with chrome', N'"We can break the $.each() loop at a particular iteration by making the callback function return false. Returning non-false', CAST(N'2016-07-12 22:04:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (52, 150, 2, 34, 0, 0, CAST(100 AS Decimal(10, 0)), CAST(20 AS Decimal(10, 0)), CAST(9980 AS Decimal(10, 0)), N'1 month', N'', N'', N'', CAST(N'2016-07-12 22:37:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (53, 152, 2, 37, 0, 0, CAST(100 AS Decimal(10, 0)), CAST(2 AS Decimal(10, 0)), CAST(12298 AS Decimal(10, 0)), N'1 month', N'', N'', N'', CAST(N'2016-07-12 22:37:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (54, 162, 2, 39, 0, 0, CAST(100 AS Decimal(10, 0)), CAST(100 AS Decimal(10, 0)), CAST(900 AS Decimal(10, 0)), N'25 working days', N'', N'hi this is testing', N'this is other details', CAST(N'2016-07-27 16:07:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (55, 163, 2, 41, 0, 0, CAST(200 AS Decimal(10, 0)), CAST(200 AS Decimal(10, 0)), CAST(1800 AS Decimal(10, 0)), N'25 working days', N'', N'hi this is testing', N'this is other details', CAST(N'2016-07-27 16:07:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[EnquiryLog] OFF
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Initiated', N'Indicates User has initiated an enquiry', 1, CAST(N'2016-04-26 23:18:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:18:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'AdminApproved', N'Indicates user has sent request and administrator has approved.  Post that enquiry will be sent to vendors', 1, CAST(N'2016-04-26 23:18:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:18:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'VendorReplied', N'Indicates if vendor has replied to users queries. this is a chain process. user sends queries and vendor replies to it', 1, CAST(N'2016-04-26 23:19:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:19:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'UserReplied', N'Indicates if user has replied to vendor''s updated estimate. this is a chain process. user sends queries and vendor replies to it', 1, CAST(N'2016-04-26 23:19:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:19:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'UserInterested', N'Indicates if user has replied to at least one quotation from vendor', 1, CAST(N'2016-04-26 23:19:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:19:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'AdminClosed', N'Indicates enquiry is closed successfully by admin', 1, CAST(N'2016-04-26 23:20:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:20:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'UserClosed', N'Indicates enquiry is closed successfully by user', 1, CAST(N'2016-04-26 23:20:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:20:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryStatus] ([StatusID], [StatusName], [StatusDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'UserContactedOfflineClosed', N'Indicates if user has contacted vendors offline i.e. by mail/phone', 1, CAST(N'2016-04-26 23:20:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:20:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[ErrorLog] ON 

GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (1, N'D:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Invalid object name ''Referrals''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataFromMultipleTables(Object[,] par) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 455
   at CLB.BL.UserManager.GetUsers(Nullable`1 userID, Nullable`1[] role, String email, String mobile) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Accounts\User Manager.cs:line 256', N'49.204.224.107', CAST(N'2016-05-02 02:11:00' AS SmallDateTime), NULL)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (2, N'/SendEmail', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Incorrect syntax near ''Success''.
Unclosed quotation mark after the character string ''
		SELECT @IdentityOut = SCOPE_IDENTITY() 
	END	''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 110
   at CLB.DP.DataProviderFacade.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 38
   at CLB.BL.BLBaseClass.SaveData(Object[,] par) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 211
   at CLB.BL.BLBaseClass.Save_Update(Object obj, Tables tablename, String[] propertiestoSkip, Boolean& status, Int32& identity, String uniqueColumns, String filterColumnName, String filterColumnValue, Boolean includeAuditColumns) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 660', N'49.204.224.107', CAST(N'2016-06-12 10:53:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (3, N'/SendEmail', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The conversion of a varchar data type to a smalldatetime data type resulted in an out-of-range value.
The statement has been terminated.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 110
   at CLB.DP.DataProviderFacade.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 38
   at CLB.BL.BLBaseClass.SaveData(Object[,] par) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 211
   at CLB.BL.BLBaseClass.Save_Update(Object obj, Tables tablename, String[] propertiestoSkip, Boolean& status, Int32& identity, String uniqueColumns, String filterColumnName, String filterColumnValue, Boolean includeAuditColumns) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 660', N'49.204.224.107', CAST(N'2016-06-12 10:59:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (4, N'/SendEmail', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The conversion of a varchar data type to a smalldatetime data type resulted in an out-of-range value.
The statement has been terminated.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 110
   at CLB.DP.DataProviderFacade.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 38
   at CLB.BL.BLBaseClass.SaveData(Object[,] par) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 211
   at CLB.BL.BLBaseClass.Save_Update(Object obj, Tables tablename, String[] propertiestoSkip, Boolean& status, Int32& identity, String uniqueColumns, String filterColumnName, String filterColumnValue, Boolean includeAuditColumns) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 660', N'49.204.224.107', CAST(N'2016-06-12 11:01:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (5, N'/SendEmail', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The conversion of a varchar data type to a smalldatetime data type resulted in an out-of-range value.
The statement has been terminated.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 110
   at CLB.DP.DataProviderFacade.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 38
   at CLB.BL.BLBaseClass.SaveData(Object[,] par) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 211
   at CLB.BL.BLBaseClass.Save_Update(Object obj, Tables tablename, String[] propertiestoSkip, Boolean& status, Int32& identity, String uniqueColumns, String filterColumnName, String filterColumnValue, Boolean includeAuditColumns) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 660', N'49.204.224.107', CAST(N'2016-06-12 11:07:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (6, N'/ViewEnquiries', N'Void btnSave_Click(System.Object, System.EventArgs)', N'Object reference not set to an instance of an object.', N'   at ViewEnquiries.btnSave_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Admin\ViewEnquiries.aspx.cs:line 67', N'49.204.224.107', CAST(N'2016-06-12 23:12:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (7, N'/ViewEnquiries', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Invalid column name ''CreatedBy''.
Invalid column name ''ModifiedBy''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at CLB.DP.MSSqlDataProvider.ExecuteNonQuery(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 131
   at CLB.DP.DataProviderFacade.ExecuteNonQuery(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 43
   at CLB.BL.VendorInventoryManager.SendEnquirytoVendors(Nullable`1 enquiryID) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\VendorInventory Manager.cs:line 157', N'49.204.224.107', CAST(N'2016-06-12 23:14:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (8, N'/ManageInventory', N'Void WinIOError(Int32, System.String)', N'Access to the path ''D:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Uploads\ProductImages\10010\'' is denied.', N'   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.Directory.InternalCreateDirectory(String fullPath, String path, Object dirSecurityObj, Boolean checkHost)
   at System.IO.Directory.InternalCreateDirectoryHelper(String path, Boolean checkHost)
   at System.IO.Directory.CreateDirectory(String path)
   at ManageInventory.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 242', N'49.204.224.107', CAST(N'2016-06-12 23:18:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (9, N'/ViewInventory', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Invalid column name ''VendorInventoryID''.
Invalid column name ''VendorInventoryID''.
IF(Exists(SELECT * FROM [VendorInventory] WHERE [VendorInventoryID] = ''10011''))
		BEGIN
			DELETE FROM [VendorInventory] WHERE [VendorInventoryID] = ''10011''
			 SELECT @Message = ''Delete''
			 END
		 ELSE
			SELECT @Message = ''NotFound''', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at CLB.DP.MSSqlDataProvider.ExecuteNonQuery(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 131
   at CLB.DP.DataProviderFacade.ExecuteNonQuery(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 43
   at CLB.BL.BLBaseClass.DeleteData(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 62
   at CLB.BL.VendorInventoryManager.DeleteVendorInventory(Int32 vendorInventoryID, Boolean& status) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\VendorInventory Manager.cs:line 104', N'49.204.224.107', CAST(N'2016-06-12 23:39:00' AS SmallDateTime), 18)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (10, N'/ViewEnquiries', N'Void SendEnquirytoVendors(Int64)', N'Object reference not set to an instance of an object.', N'   at ViewEnquiries.SendEnquirytoVendors(Int64 enquiryID) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Admin\ViewEnquiries.aspx.cs:line 328
   at ViewEnquiries.gridview_RowCommand(Object sender, GridViewCommandEventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Admin\ViewEnquiries.aspx.cs:line 225', N'49.204.224.107', CAST(N'2016-06-12 23:46:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (11, N'/ViewEnquiries', N'Void SendEnquirytoVendors(Int64)', N'Object reference not set to an instance of an object.', N'   at ViewEnquiries.SendEnquirytoVendors(Int64 enquiryID) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Admin\ViewEnquiries.aspx.cs:line 332', N'49.204.224.107', CAST(N'2016-06-12 23:52:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (12, N'/VendorEnquiries', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Timeout expired.  The timeout period elapsed prior to completion of the operation or the server is not responding.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.QuotationManager.GetQuotations(Nullable`1 enquiryID, Nullable`1 customerID, Nullable`1 vendorID, Nullable`1 enquiryStatusID, String enquiryLabel, String fromDate, String toDate) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\Quotation Man', N'49.204.224.107', CAST(N'2016-06-13 00:36:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (13, N'/VendorEnquiries', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Timeout expired.  The timeout period elapsed prior to completion of the operation or the server is not responding.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.QuotationManager.GetQuotations(Nullable`1 enquiryID, Nullable`1 customerID, Nullable`1 vendorID, Nullable`1 enquiryStatusID, String enquiryLabel, String fromDate, String toDate) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\Quotation Man', N'49.204.224.107', CAST(N'2016-06-13 00:36:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (14, N'/ViewEnquiries', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Timeout expired.  The timeout period elapsed prior to completion of the operation or the server is not responding.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.EnquiryManager.GetEnquiries(Nullable`1 enquiryID, Nullable`1 userID, Nullable`1 enquiryStatusID, String enquiryLabel, String fromDate, String toDate) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\Enquiry Manager.cs:line 246', N'49.204.224.107', CAST(N'2016-06-13 00:37:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (15, N'/ViewEnquiries', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Timeout expired.  The timeout period elapsed prior to completion of the operation or the server is not responding.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.EnquiryManager.GetEnquiries(Nullable`1 enquiryID, Nullable`1 userID, Nullable`1 enquiryStatusID, String enquiryLabel, String fromDate, String toDate) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\Enquiry Manager.cs:line 246', N'49.204.224.107', CAST(N'2016-06-13 03:03:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (16, N'/ViewEnquiries', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Timeout expired.  The timeout period elapsed prior to completion of the operation or the server is not responding.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.EnquiryManager.GetEnquiries(Nullable`1 enquiryID, Nullable`1 userID, Nullable`1 enquiryStatusID, String enquiryLabel, String fromDate, String toDate) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\Enquiry Manager.cs:line 246', N'49.204.224.107', CAST(N'2016-06-13 03:04:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (17, N'/SendEnquiry', N'Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean)', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at SendEnquiry.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Enquiry\SendEnquiry.aspx.cs:line 122', N'49.204.224.107', CAST(N'2016-06-14 22:40:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (18, N'/SendEnquiry', N'Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean)', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at SendEnquiry.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Enquiry\SendEnquiry.aspx.cs:line 122', N'49.204.224.107', CAST(N'2016-06-14 22:43:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (19, N'/ViewInventory', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Invalid column name ''UnitID''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.VendorInventoryManager.GetVendorInventory(Nullable`1 inventoryID, Nullable`1 productID, String productName, Nullable`1 userID, Nullable`1 categoryID, Nullable`1 subCategoryID, Nullable`1 countryID) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\', N'49.204.224.107', CAST(N'2016-06-14 23:31:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (20, N'/ViewInventory', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Invalid column name ''UnitID''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.VendorInventoryManager.GetVendorInventory(Nullable`1 inventoryID, Nullable`1 productID, String productName, Nullable`1 userID, Nullable`1 categoryID, Nullable`1 subCategoryID, Nullable`1 countryID) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\', N'49.204.224.107', CAST(N'2016-06-14 23:31:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (21, N'/ViewInventory', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Invalid column name ''UnitID''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at CLB.DP.MSSqlDataProvider.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 87
   at CLB.DP.DataProviderFacade.ExecuteDataTable(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 33
   at CLB.BL.BLBaseClass.GetDataTable(Object[,] par, String storedProcedure) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 473
   at CLB.BL.VendorInventoryManager.GetVendorInventory(Nullable`1 inventoryID, Nullable`1 productID, String productName, Nullable`1 userID, Nullable`1 categoryID, Nullable`1 subCategoryID, Nullable`1 countryID) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\', N'49.204.224.107', CAST(N'2016-06-14 23:36:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (22, N'/ManageInventory', N'Void WinIOError(Int32, System.String)', N'Could not find a part of the path ''D:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Uploads\ProductImages\11''.', N'   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.FileSystemEnumerableIterator`1.CommonInit()
   at System.IO.FileSystemEnumerableIterator`1..ctor(String path, String originalUserPath, String searchPattern, SearchOption searchOption, SearchResultHandler`1 resultHandler, Boolean checkHost)
   at System.IO.Directory.GetFiles(String path)
   at ManageInventory.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 89', N'49.204.224.107', CAST(N'2016-06-14 23:44:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (23, N'/ManageInventory', N'Void WinIOError(Int32, System.String)', N'Could not find a part of the path ''D:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Uploads\ProductImages\11''.', N'   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.FileSystemEnumerableIterator`1.CommonInit()
   at System.IO.FileSystemEnumerableIterator`1..ctor(String path, String originalUserPath, String searchPattern, SearchOption searchOption, SearchResultHandler`1 resultHandler, Boolean checkHost)
   at System.IO.Directory.GetFiles(String path)
   at ManageInventory.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 89', N'49.204.224.107', CAST(N'2016-06-14 23:45:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (24, N'/ManageInventory', N'Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean)', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at ManageInventory.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 192', N'49.204.224.107', CAST(N'2016-06-15 11:03:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (25, N'/ManageInventory', N'Void StringToNumber(System.String, System.Globalization.NumberStyles, NumberBuffer ByRef, System.Globalization.NumberFormatInfo, Boolean)', N'Input string was not in a correct format.', N'   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Int32.Parse(String s)
   at ManageInventory.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 192', N'49.204.224.107', CAST(N'2016-06-16 08:31:00' AS SmallDateTime), 1025)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (26, N'/ManageInventory', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Incorrect syntax near '',''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 110
   at CLB.DP.DataProviderFacade.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 38
   at CLB.BL.BLBaseClass.SaveData(Object[,] par) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 215
   at CLB.BL.VendorInventoryManager.SaveVendorInventory(VendorInventory vendorInventory, Int64& identity, Boolean& status) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\VendorInventory Manager.cs:line 74', N'49.204.224.107', CAST(N'2016-06-16 08:35:00' AS SmallDateTime), 1025)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (27, N'/ManageInventory', N'Boolean CheckSubscription()', N'Object reference not set to an instance of an object.', N'   at ManageInventory.CheckSubscription() in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 444
   at ManageInventory.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 75', N'49.204.224.107', CAST(N'2016-07-05 19:48:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (28, N'/ManageInventory', N'Void WinIOError(Int32, System.String)', N'Could not find a part of the path ''D:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Uploads\ProductImages\10016''.', N'   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.FileSystemEnumerableIterator`1.CommonInit()
   at System.IO.FileSystemEnumerableIterator`1..ctor(String path, String originalUserPath, String searchPattern, SearchOption searchOption, SearchResultHandler`1 resultHandler, Boolean checkHost)
   at System.IO.Directory.GetFiles(String path)
   at ManageInventory.btnSubmit_Click(Object sender, EventArgs e) in d:\inetpub\vhosts\tekkispace.com\localsearch.tekkispace.com\Vendor\ManageInventory.aspx.cs:line 91', N'49.204.224.107', CAST(N'2016-07-05 19:55:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (32, N'/SendEnquiry', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'Invalid column name ''SuppliersCity''.', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, SqlDataReader ds)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteScalar()
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProvider.cs:line 110
   at CLB.DP.DataProviderFacade.ExecuteScalar(String sql, Object[,] par, CommandType commandType) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\DataProvider\DataProviderFacade.cs:line 38
   at CLB.BL.BLBaseClass.SaveData(Object[,] par) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\BL.Base Class.cs:line 227
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status) in f:\Projects\Shaik Projects\MarketPlace\SourceCode\BusinessLogic\Vendor\Enquiry Manager.cs:line 53', N'49.204.224.107', CAST(N'2016-07-10 16:44:00' AS SmallDateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[ErrorLog] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginLog] ON 

GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1, 1, CAST(N'2016-04-24 01:16:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (2, 1, CAST(N'2016-04-24 01:16:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (3, 1, CAST(N'2016-04-24 18:52:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (4, 1, CAST(N'2016-04-24 23:20:00' AS SmallDateTime), NULL, N'127.0.0.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (5, 1, CAST(N'2016-04-24 23:27:00' AS SmallDateTime), NULL, N'127.0.0.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (6, 1, CAST(N'2016-04-24 23:27:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (7, 1, CAST(N'2016-04-25 00:20:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (8, 1, CAST(N'2016-04-25 00:30:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (9, 1, CAST(N'2016-04-25 00:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (10, 1, CAST(N'2016-05-01 14:44:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (11, 1, CAST(N'2016-05-01 14:58:00' AS SmallDateTime), CAST(N'2016-05-01 14:58:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (12, 1, CAST(N'2016-05-01 14:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (13, 1, CAST(N'2016-05-01 23:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (14, 1, CAST(N'2016-05-01 23:55:00' AS SmallDateTime), CAST(N'2016-05-02 00:12:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (15, 1, CAST(N'2016-05-02 00:14:00' AS SmallDateTime), CAST(N'2016-05-02 00:23:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (16, 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime), CAST(N'2016-05-02 00:41:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (18, 1, CAST(N'2016-05-02 02:14:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (19, 1, CAST(N'2016-05-02 02:18:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (20, 1, CAST(N'2016-05-02 02:34:00' AS SmallDateTime), CAST(N'2016-05-02 02:39:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (21, 1, CAST(N'2016-05-02 06:11:00' AS SmallDateTime), CAST(N'2016-05-02 06:14:00' AS SmallDateTime), N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (22, 1, CAST(N'2016-05-02 22:02:00' AS SmallDateTime), CAST(N'2016-05-02 22:02:00' AS SmallDateTime), N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (23, 1, CAST(N'2016-05-02 22:02:00' AS SmallDateTime), NULL, N'86.96.29.209', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (24, 1, CAST(N'2016-05-02 22:02:00' AS SmallDateTime), NULL, N'86.96.29.209', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (25, 1, CAST(N'2016-05-03 08:26:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (26, 1, CAST(N'2016-05-03 08:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (27, 1, CAST(N'2016-05-03 08:35:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (28, 1, CAST(N'2016-05-03 08:36:00' AS SmallDateTime), CAST(N'2016-05-03 08:41:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (29, 1, CAST(N'2016-05-03 09:00:00' AS SmallDateTime), NULL, N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (30, 1, CAST(N'2016-05-06 18:07:00' AS SmallDateTime), NULL, N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (31, 1, CAST(N'2016-05-06 18:07:00' AS SmallDateTime), NULL, N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (32, 1, CAST(N'2016-05-07 12:10:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (33, 1, CAST(N'2016-05-09 09:41:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (34, 1, CAST(N'2016-05-09 09:46:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (35, 1, CAST(N'2016-05-09 10:33:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (36, 1, CAST(N'2016-05-09 10:49:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (37, 1, CAST(N'2016-05-09 22:35:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (38, 1, CAST(N'2016-05-09 22:46:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (39, 1, CAST(N'2016-05-09 23:12:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (40, 1, CAST(N'2016-05-09 23:29:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (41, 1, CAST(N'2016-05-09 23:32:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (42, 1, CAST(N'2016-05-09 23:39:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (43, 1, CAST(N'2016-05-09 23:43:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (44, 1, CAST(N'2016-05-10 00:04:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (45, 1, CAST(N'2016-05-10 00:18:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (46, 1, CAST(N'2016-05-10 00:21:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (47, 1, CAST(N'2016-05-10 00:23:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (48, 1, CAST(N'2016-05-10 00:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (49, 1, CAST(N'2016-05-10 00:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (50, 1, CAST(N'2016-05-10 00:33:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (51, 1, CAST(N'2016-05-10 06:29:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (52, 1, CAST(N'2016-05-10 07:21:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (53, 1, CAST(N'2016-05-10 07:36:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (54, 1, CAST(N'2016-05-10 07:49:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (55, 1, CAST(N'2016-05-10 08:26:00' AS SmallDateTime), CAST(N'2016-05-10 08:27:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (56, 1, CAST(N'2016-05-10 11:24:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (57, 1, CAST(N'2016-05-10 11:28:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (58, 1, CAST(N'2016-05-10 11:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (59, 1, CAST(N'2016-05-10 11:46:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (60, 1, CAST(N'2016-05-10 11:53:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (61, 1, CAST(N'2016-05-10 12:07:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (62, 1, CAST(N'2016-05-12 09:35:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (63, 1, CAST(N'2016-05-12 09:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (64, 1, CAST(N'2016-05-12 10:39:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (65, 1, CAST(N'2016-05-12 11:45:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (66, 1, CAST(N'2016-05-12 12:46:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (67, 1, CAST(N'2016-05-13 11:04:00' AS SmallDateTime), NULL, N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (68, 1, CAST(N'2016-05-13 11:27:00' AS SmallDateTime), NULL, N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (69, 1, CAST(N'2016-05-15 08:54:00' AS SmallDateTime), NULL, N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (70, 1, CAST(N'2016-05-15 12:10:00' AS SmallDateTime), NULL, N'49.204.37.134', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (71, 1, CAST(N'2016-05-15 21:49:00' AS SmallDateTime), CAST(N'2016-05-15 21:49:00' AS SmallDateTime), N'49.205.204.44', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (72, 1, CAST(N'2016-05-15 21:49:00' AS SmallDateTime), NULL, N'92.98.8.118', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (73, 1, CAST(N'2016-05-15 21:50:00' AS SmallDateTime), NULL, N'92.98.8.118', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (74, 1, CAST(N'2016-05-16 08:04:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (75, 1, CAST(N'2016-05-16 08:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (76, 1, CAST(N'2016-05-16 08:29:00' AS SmallDateTime), CAST(N'2016-05-16 08:31:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (77, 1, CAST(N'2016-05-16 08:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (78, 1, CAST(N'2016-05-16 08:33:00' AS SmallDateTime), CAST(N'2016-05-16 08:35:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (79, 2, CAST(N'2016-05-16 08:35:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (80, 2, CAST(N'2016-05-16 08:36:00' AS SmallDateTime), CAST(N'2016-05-16 08:38:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (81, 1, CAST(N'2016-05-16 08:38:00' AS SmallDateTime), CAST(N'2016-05-16 08:44:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (82, 1, CAST(N'2016-05-16 08:44:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (83, 3, CAST(N'2016-05-16 08:48:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (84, 3, CAST(N'2016-05-16 08:51:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (85, 3, CAST(N'2016-05-16 08:51:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (86, 3, CAST(N'2016-05-16 08:58:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (87, 3, CAST(N'2016-05-16 09:00:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (88, 3, CAST(N'2016-05-16 09:01:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (89, 3, CAST(N'2016-05-16 09:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (90, 3, CAST(N'2016-05-16 22:55:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (91, 3, CAST(N'2016-05-16 23:01:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (92, 3, CAST(N'2016-05-16 23:17:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (93, 3, CAST(N'2016-05-16 23:31:00' AS SmallDateTime), CAST(N'2016-05-16 23:46:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (94, 1, CAST(N'2016-05-16 23:46:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (95, 1, CAST(N'2016-05-17 00:18:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (96, 1, CAST(N'2016-05-17 00:19:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (97, 1, CAST(N'2016-05-18 09:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (98, 1, CAST(N'2016-05-18 22:34:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (99, 1, CAST(N'2016-05-18 22:44:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (100, 1, CAST(N'2016-05-18 22:49:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (101, 1, CAST(N'2016-05-18 22:52:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (102, 1, CAST(N'2016-05-18 23:04:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (103, 1, CAST(N'2016-05-18 23:08:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (104, 1, CAST(N'2016-05-18 23:27:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (105, 1, CAST(N'2016-05-18 23:52:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (106, 1, CAST(N'2016-05-19 00:11:00' AS SmallDateTime), CAST(N'2016-05-19 00:13:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (107, 1, CAST(N'2016-05-20 13:28:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (108, 1, CAST(N'2016-05-21 13:22:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (109, 1, CAST(N'2016-05-21 14:40:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (110, 1, CAST(N'2016-05-21 15:32:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (111, 1, CAST(N'2016-05-21 15:47:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (112, 1, CAST(N'2016-05-21 16:12:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (113, 1, CAST(N'2016-05-21 16:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (114, 1, CAST(N'2016-05-21 16:55:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (115, 1, CAST(N'2016-05-21 20:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (116, 1, CAST(N'2016-05-21 20:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (117, 1, CAST(N'2016-05-21 23:13:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (118, 1, CAST(N'2016-05-27 07:36:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (119, 1, CAST(N'2016-05-27 08:04:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (120, 1, CAST(N'2016-05-27 11:24:00' AS SmallDateTime), NULL, N'92.98.9.97', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (121, 1, CAST(N'2016-05-28 15:43:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (122, 1, CAST(N'2016-05-29 08:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (123, 3, CAST(N'2016-05-29 12:37:00' AS SmallDateTime), CAST(N'2016-05-29 12:51:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (124, 1, CAST(N'2016-05-29 12:51:00' AS SmallDateTime), CAST(N'2016-05-29 12:52:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (125, 3, CAST(N'2016-05-29 12:52:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (126, 3, CAST(N'2016-05-29 13:04:00' AS SmallDateTime), CAST(N'2016-05-29 13:08:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (127, 1, CAST(N'2016-05-29 13:26:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (128, 1, CAST(N'2016-05-29 13:38:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (129, 1, CAST(N'2016-05-29 16:22:00' AS SmallDateTime), CAST(N'2016-05-29 16:25:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (130, 1, CAST(N'2016-05-29 16:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (131, 1, CAST(N'2016-05-29 16:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (132, 1, CAST(N'2016-05-29 16:33:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (133, 1, CAST(N'2016-05-29 16:36:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (134, 1, CAST(N'2016-05-29 16:47:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (135, 1, CAST(N'2016-05-29 17:09:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (136, 1, CAST(N'2016-05-29 22:22:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (137, 1, CAST(N'2016-05-29 23:01:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (138, 1, CAST(N'2016-06-05 18:21:00' AS SmallDateTime), NULL, N'49.204.29.39', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (139, 1, CAST(N'2016-06-06 08:50:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (140, 1, CAST(N'2016-06-06 09:37:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (141, 1, CAST(N'2016-06-06 11:41:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (142, 2, CAST(N'2016-06-06 23:39:00' AS SmallDateTime), CAST(N'2016-06-06 23:41:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (143, 2, CAST(N'2016-06-06 23:41:00' AS SmallDateTime), CAST(N'2016-06-06 23:42:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (144, 2, CAST(N'2016-06-06 23:42:00' AS SmallDateTime), CAST(N'2016-06-06 23:44:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (145, 2, CAST(N'2016-06-06 23:44:00' AS SmallDateTime), CAST(N'2016-06-06 23:45:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (146, 2, CAST(N'2016-06-06 23:45:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (147, 2, CAST(N'2016-06-06 23:48:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (148, 1, CAST(N'2016-06-06 23:53:00' AS SmallDateTime), CAST(N'2016-06-07 00:02:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (149, 2, CAST(N'2016-06-07 00:10:00' AS SmallDateTime), CAST(N'2016-06-07 00:10:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (150, 2, CAST(N'2016-06-07 00:10:00' AS SmallDateTime), CAST(N'2016-06-07 00:23:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (151, 2, CAST(N'2016-06-07 00:23:00' AS SmallDateTime), CAST(N'2016-06-07 00:25:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (152, 1, CAST(N'2016-06-07 00:25:00' AS SmallDateTime), CAST(N'2016-06-07 00:26:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (153, 2, CAST(N'2016-06-07 00:26:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (154, 2, CAST(N'2016-06-07 00:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (155, 2, CAST(N'2016-06-07 00:37:00' AS SmallDateTime), CAST(N'2016-06-07 00:41:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (156, 2, CAST(N'2016-06-07 00:40:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (157, 2, CAST(N'2016-06-07 00:55:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (158, 2, CAST(N'2016-06-07 01:00:00' AS SmallDateTime), CAST(N'2016-06-07 01:03:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (159, 2, CAST(N'2016-06-07 01:03:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (160, 2, CAST(N'2016-06-07 08:20:00' AS SmallDateTime), CAST(N'2016-06-07 08:20:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (161, 1, CAST(N'2016-06-07 08:20:00' AS SmallDateTime), CAST(N'2016-06-07 08:20:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (162, 2, CAST(N'2016-06-07 08:20:00' AS SmallDateTime), CAST(N'2016-06-07 08:21:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (163, 1, CAST(N'2016-06-07 08:24:00' AS SmallDateTime), CAST(N'2016-06-07 08:24:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (164, 1, CAST(N'2016-06-07 08:27:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (165, 1, CAST(N'2016-06-07 08:27:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (166, 1, CAST(N'2016-06-07 08:27:00' AS SmallDateTime), CAST(N'2016-06-07 08:27:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (167, 1, CAST(N'2016-06-07 08:28:00' AS SmallDateTime), CAST(N'2016-06-07 08:28:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (168, 2, CAST(N'2016-06-09 07:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (169, 2, CAST(N'2016-06-09 08:16:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (170, 1, CAST(N'2016-06-09 08:21:00' AS SmallDateTime), CAST(N'2016-06-09 08:24:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (171, 2, CAST(N'2016-06-10 07:39:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (172, 2, CAST(N'2016-06-10 07:39:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (173, 1, CAST(N'2016-06-10 07:45:00' AS SmallDateTime), CAST(N'2016-06-10 07:47:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (174, 1, CAST(N'2016-06-10 07:47:00' AS SmallDateTime), CAST(N'2016-06-10 07:51:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (175, 1, CAST(N'2016-06-10 07:52:00' AS SmallDateTime), CAST(N'2016-06-10 07:52:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (176, 1, CAST(N'2016-06-10 07:52:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (177, 1, CAST(N'2016-06-10 08:08:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (178, 1, CAST(N'2016-06-10 08:10:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (179, 1, CAST(N'2016-06-10 08:14:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (180, 1, CAST(N'2016-06-10 08:21:00' AS SmallDateTime), CAST(N'2016-06-10 08:26:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (181, 1, CAST(N'2016-06-10 08:28:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (182, 1, CAST(N'2016-06-10 08:32:00' AS SmallDateTime), CAST(N'2016-06-10 08:33:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (183, 1, CAST(N'2016-06-10 08:33:00' AS SmallDateTime), CAST(N'2016-06-10 08:35:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (184, 1, CAST(N'2016-06-10 08:35:00' AS SmallDateTime), CAST(N'2016-06-10 08:36:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (185, 1, CAST(N'2016-06-10 08:36:00' AS SmallDateTime), CAST(N'2016-06-10 08:37:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (186, 1, CAST(N'2016-06-10 08:38:00' AS SmallDateTime), CAST(N'2016-06-10 08:38:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (187, 1, CAST(N'2016-06-10 08:38:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (188, 1, CAST(N'2016-06-10 08:43:00' AS SmallDateTime), CAST(N'2016-06-10 08:48:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (189, 2, CAST(N'2016-06-10 08:48:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (190, 1, CAST(N'2016-06-10 08:48:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (191, 1, CAST(N'2016-06-10 23:13:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (192, 1, CAST(N'2016-06-11 08:20:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (193, 2, CAST(N'2016-06-11 08:24:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (194, 1, CAST(N'2016-06-11 08:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (195, 2, CAST(N'2016-06-11 08:30:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (196, 1, CAST(N'2016-06-11 08:54:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (197, 1, CAST(N'2016-06-11 15:43:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1171, 2, CAST(N'2016-06-12 00:13:00' AS SmallDateTime), CAST(N'2016-06-12 00:14:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1172, 2, CAST(N'2016-06-12 00:14:00' AS SmallDateTime), CAST(N'2016-06-12 00:15:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1173, 2, CAST(N'2016-06-12 00:15:00' AS SmallDateTime), CAST(N'2016-06-12 00:17:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1174, 2, CAST(N'2016-06-12 00:17:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1175, 2, CAST(N'2016-06-12 00:19:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1176, 2, CAST(N'2016-06-12 08:53:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1177, 1, CAST(N'2016-06-12 09:46:00' AS SmallDateTime), NULL, N'124.123.76.225', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1178, 1, CAST(N'2016-06-12 09:58:00' AS SmallDateTime), CAST(N'2016-06-12 10:04:00' AS SmallDateTime), N'124.123.76.225', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1179, 1, CAST(N'2016-06-12 10:08:00' AS SmallDateTime), CAST(N'2016-06-12 10:08:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1180, 1, CAST(N'2016-06-12 10:23:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1181, 1, CAST(N'2016-06-12 10:45:00' AS SmallDateTime), CAST(N'2016-06-12 10:47:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1182, 1, CAST(N'2016-06-12 10:47:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1183, 1, CAST(N'2016-06-12 10:50:00' AS SmallDateTime), CAST(N'2016-06-12 10:50:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1184, 1, CAST(N'2016-06-12 10:50:00' AS SmallDateTime), CAST(N'2016-06-12 10:52:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1185, 1, CAST(N'2016-06-12 10:52:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1186, 1, CAST(N'2016-06-12 10:54:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1187, 1, CAST(N'2016-06-12 10:59:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1188, 1, CAST(N'2016-06-12 11:02:00' AS SmallDateTime), CAST(N'2016-06-12 11:08:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1189, 2, CAST(N'2016-06-12 12:24:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1190, 1, CAST(N'2016-06-12 13:12:00' AS SmallDateTime), CAST(N'2016-06-12 13:24:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1191, 2, CAST(N'2016-06-12 13:36:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1192, 2, CAST(N'2016-06-12 13:54:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1193, 2, CAST(N'2016-06-12 14:09:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1194, 2, CAST(N'2016-06-12 14:10:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1195, 2, CAST(N'2016-06-12 14:12:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1196, 1, CAST(N'2016-06-12 20:14:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1197, 2, CAST(N'2016-06-12 20:30:00' AS SmallDateTime), CAST(N'2016-06-12 20:42:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1198, 1, CAST(N'2016-06-12 20:42:00' AS SmallDateTime), CAST(N'2016-06-12 21:02:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1199, 18, CAST(N'2016-06-12 21:02:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1200, 18, CAST(N'2016-06-12 21:03:00' AS SmallDateTime), CAST(N'2016-06-12 21:19:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1201, 1, CAST(N'2016-06-12 21:19:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1202, 18, CAST(N'2016-06-12 21:24:00' AS SmallDateTime), CAST(N'2016-06-12 21:29:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1203, 18, CAST(N'2016-06-12 21:31:00' AS SmallDateTime), CAST(N'2016-06-12 21:31:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1204, 1, CAST(N'2016-06-12 21:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1205, 1, CAST(N'2016-06-12 21:40:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1206, 1, CAST(N'2016-06-12 22:01:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1207, 18, CAST(N'2016-06-12 22:09:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1208, 18, CAST(N'2016-06-12 22:09:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1209, 18, CAST(N'2016-06-12 22:09:00' AS SmallDateTime), CAST(N'2016-06-12 22:16:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1210, 18, CAST(N'2016-06-12 22:11:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1211, 18, CAST(N'2016-06-12 22:13:00' AS SmallDateTime), CAST(N'2016-06-12 22:13:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1212, 2, CAST(N'2016-06-12 22:13:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1213, 2, CAST(N'2016-06-12 22:13:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1214, 2, CAST(N'2016-06-12 22:13:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1215, 18, CAST(N'2016-06-12 22:13:00' AS SmallDateTime), CAST(N'2016-06-12 22:14:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1216, 1, CAST(N'2016-06-12 22:14:00' AS SmallDateTime), CAST(N'2016-06-12 22:19:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1217, 2, CAST(N'2016-06-12 22:16:00' AS SmallDateTime), CAST(N'2016-06-12 22:16:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1218, 2, CAST(N'2016-06-12 22:16:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1219, 2, CAST(N'2016-06-12 22:16:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1220, 2, CAST(N'2016-06-12 22:17:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1221, 2, CAST(N'2016-06-12 22:18:00' AS SmallDateTime), CAST(N'2016-06-12 22:18:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1222, 2, CAST(N'2016-06-12 22:18:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1223, 2, CAST(N'2016-06-12 22:18:00' AS SmallDateTime), CAST(N'2016-06-12 22:19:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1224, 2, CAST(N'2016-06-12 22:19:00' AS SmallDateTime), CAST(N'2016-06-12 22:19:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1225, 1, CAST(N'2016-06-12 22:19:00' AS SmallDateTime), CAST(N'2016-06-12 22:19:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1226, 18, CAST(N'2016-06-12 22:19:00' AS SmallDateTime), CAST(N'2016-06-12 22:20:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1227, 2, CAST(N'2016-06-12 22:20:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1228, 2, CAST(N'2016-06-12 22:21:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1229, 1, CAST(N'2016-06-12 22:25:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1230, 1, CAST(N'2016-06-12 22:26:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1231, 1, CAST(N'2016-06-12 22:32:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1232, 1, CAST(N'2016-06-12 22:33:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1233, 1, CAST(N'2016-06-12 22:35:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1234, 1, CAST(N'2016-06-12 22:35:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1235, 1, CAST(N'2016-06-12 22:37:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1236, 1, CAST(N'2016-06-12 22:38:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1237, 1, CAST(N'2016-06-12 22:56:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1238, 1, CAST(N'2016-06-12 22:58:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1239, 1, CAST(N'2016-06-12 23:01:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1240, 1, CAST(N'2016-06-12 23:01:00' AS SmallDateTime), CAST(N'2016-06-12 23:18:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1241, 1, CAST(N'2016-06-12 23:11:00' AS SmallDateTime), CAST(N'2016-06-12 23:16:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1242, 2, CAST(N'2016-06-12 23:16:00' AS SmallDateTime), CAST(N'2016-06-12 23:17:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1243, 18, CAST(N'2016-06-12 23:17:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1244, 18, CAST(N'2016-06-12 23:18:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1245, 18, CAST(N'2016-06-12 23:39:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1246, 18, CAST(N'2016-06-12 23:39:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1247, 18, CAST(N'2016-06-12 23:41:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1248, 18, CAST(N'2016-06-12 23:41:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1249, 18, CAST(N'2016-06-12 23:42:00' AS SmallDateTime), CAST(N'2016-06-12 23:43:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1250, 1, CAST(N'2016-06-12 23:44:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1251, 1, CAST(N'2016-06-12 23:46:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1252, 1, CAST(N'2016-06-13 00:00:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1253, 1, CAST(N'2016-06-13 00:02:00' AS SmallDateTime), CAST(N'2016-06-13 00:05:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1254, 18, CAST(N'2016-06-13 00:05:00' AS SmallDateTime), CAST(N'2016-06-13 00:05:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1255, 2, CAST(N'2016-06-13 00:05:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1256, 2, CAST(N'2016-06-13 00:35:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1257, 2, CAST(N'2016-06-13 00:35:00' AS SmallDateTime), CAST(N'2016-06-13 00:36:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1258, 1, CAST(N'2016-06-13 00:36:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1259, 1, CAST(N'2016-06-13 00:38:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1260, 1, CAST(N'2016-06-13 02:09:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1261, 1, CAST(N'2016-06-13 02:17:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1262, 1, CAST(N'2016-06-13 02:35:00' AS SmallDateTime), CAST(N'2016-06-13 02:42:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1263, 1, CAST(N'2016-06-13 03:02:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1264, 1, CAST(N'2016-06-13 03:06:00' AS SmallDateTime), CAST(N'2016-06-13 03:14:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1265, 1, CAST(N'2016-06-13 08:22:00' AS SmallDateTime), CAST(N'2016-06-13 08:23:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1266, 1, CAST(N'2016-06-13 08:55:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1267, 1, CAST(N'2016-06-13 08:56:00' AS SmallDateTime), CAST(N'2016-06-13 08:57:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1268, 2, CAST(N'2016-06-13 08:56:00' AS SmallDateTime), CAST(N'2016-06-13 08:57:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1269, 1, CAST(N'2016-06-13 08:57:00' AS SmallDateTime), CAST(N'2016-06-13 09:03:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1270, 1, CAST(N'2016-06-13 09:03:00' AS SmallDateTime), CAST(N'2016-06-13 09:05:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1271, 1, CAST(N'2016-06-13 21:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1272, 1, CAST(N'2016-06-13 21:34:00' AS SmallDateTime), CAST(N'2016-06-13 21:41:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1273, 1, CAST(N'2016-06-13 21:36:00' AS SmallDateTime), CAST(N'2016-06-13 21:40:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1274, 1, CAST(N'2016-06-13 22:23:00' AS SmallDateTime), CAST(N'2016-06-13 22:24:00' AS SmallDateTime), N'49.204.13.229', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1275, 1, CAST(N'2016-06-14 22:24:00' AS SmallDateTime), CAST(N'2016-06-14 22:26:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1276, 1, CAST(N'2016-06-14 22:32:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1277, 3, CAST(N'2016-06-14 22:35:00' AS SmallDateTime), CAST(N'2016-06-14 22:36:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1278, 3, CAST(N'2016-06-14 22:40:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1279, 3, CAST(N'2016-06-14 22:40:00' AS SmallDateTime), CAST(N'2016-06-14 22:43:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1280, 3, CAST(N'2016-06-14 22:44:00' AS SmallDateTime), CAST(N'2016-06-14 22:45:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1281, 3, CAST(N'2016-06-14 22:47:00' AS SmallDateTime), CAST(N'2016-06-14 22:49:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1282, 3, CAST(N'2016-06-14 23:04:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1283, 3, CAST(N'2016-06-14 23:05:00' AS SmallDateTime), CAST(N'2016-06-14 23:11:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1284, 1, CAST(N'2016-06-14 23:09:00' AS SmallDateTime), CAST(N'2016-06-14 23:11:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1285, 1, CAST(N'2016-06-14 23:11:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1286, 2, CAST(N'2016-06-14 23:36:00' AS SmallDateTime), CAST(N'2016-06-14 23:42:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1287, 1, CAST(N'2016-06-14 23:42:00' AS SmallDateTime), CAST(N'2016-06-15 00:02:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1288, 2, CAST(N'2016-06-15 00:02:00' AS SmallDateTime), CAST(N'2016-06-15 00:02:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1289, 1, CAST(N'2016-06-15 00:02:00' AS SmallDateTime), CAST(N'2016-06-15 00:03:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1290, 2, CAST(N'2016-06-15 00:03:00' AS SmallDateTime), CAST(N'2016-06-15 00:06:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1291, 1, CAST(N'2016-06-15 00:06:00' AS SmallDateTime), CAST(N'2016-06-15 00:07:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1292, 2, CAST(N'2016-06-15 00:07:00' AS SmallDateTime), CAST(N'2016-06-15 00:09:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1293, 1, CAST(N'2016-06-15 00:19:00' AS SmallDateTime), NULL, N'176.205.126.35', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1294, 2, CAST(N'2016-06-15 00:20:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1295, 2, CAST(N'2016-06-15 00:20:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1296, 1, CAST(N'2016-06-15 00:24:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1297, 1, CAST(N'2016-06-15 00:24:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1298, 2, CAST(N'2016-06-15 00:25:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1299, 2, CAST(N'2016-06-15 00:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1300, 1, CAST(N'2016-06-15 00:25:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1301, 2, CAST(N'2016-06-15 00:25:00' AS SmallDateTime), CAST(N'2016-06-15 00:26:00' AS SmallDateTime), N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1302, 1, CAST(N'2016-06-15 00:26:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1303, 1, CAST(N'2016-06-15 00:26:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1304, 2, CAST(N'2016-06-15 00:26:00' AS SmallDateTime), CAST(N'2016-06-15 00:36:00' AS SmallDateTime), N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1305, 1, CAST(N'2016-06-15 00:36:00' AS SmallDateTime), NULL, N'183.82.148.140', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1306, 1, CAST(N'2016-06-15 00:37:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1307, 2, CAST(N'2016-06-15 00:37:00' AS SmallDateTime), CAST(N'2016-06-15 00:44:00' AS SmallDateTime), N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1308, 1, CAST(N'2016-06-15 08:13:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1309, 1, CAST(N'2016-06-15 08:27:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1310, 3, CAST(N'2016-06-15 08:27:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1311, 1, CAST(N'2016-06-15 08:35:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1312, 3, CAST(N'2016-06-15 08:38:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1313, 1, CAST(N'2016-06-15 08:53:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1314, 3, CAST(N'2016-06-15 10:05:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1315, 1, CAST(N'2016-06-15 10:06:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1316, 1, CAST(N'2016-06-15 10:17:00' AS SmallDateTime), CAST(N'2016-06-15 10:32:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1317, 3, CAST(N'2016-06-15 10:17:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1318, 1, CAST(N'2016-06-15 10:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1319, 1, CAST(N'2016-06-15 10:36:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1320, 1, CAST(N'2016-06-15 10:45:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1321, 1, CAST(N'2016-06-15 10:46:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1322, 1, CAST(N'2016-06-15 10:58:00' AS SmallDateTime), CAST(N'2016-06-15 11:03:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1323, 1, CAST(N'2016-06-15 15:29:00' AS SmallDateTime), NULL, N'86.98.49.216', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1324, 1, CAST(N'2016-06-15 20:06:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1325, 1, CAST(N'2016-06-15 20:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1326, 1, CAST(N'2016-06-15 20:26:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1327, 1, CAST(N'2016-06-15 20:29:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1328, 1, CAST(N'2016-06-15 20:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1329, 1, CAST(N'2016-06-15 21:00:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1330, 1, CAST(N'2016-06-15 23:21:00' AS SmallDateTime), CAST(N'2016-06-15 23:26:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1331, 1, CAST(N'2016-06-15 23:29:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1332, 3, CAST(N'2016-06-15 23:41:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1333, 3, CAST(N'2016-06-16 00:11:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1334, 3, CAST(N'2016-06-16 00:15:00' AS SmallDateTime), CAST(N'2016-06-16 00:20:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1335, 2, CAST(N'2016-06-16 07:49:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1336, 3, CAST(N'2016-06-16 07:49:00' AS SmallDateTime), CAST(N'2016-06-16 07:59:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1337, 1025, CAST(N'2016-06-16 07:57:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1338, 1025, CAST(N'2016-06-16 07:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1339, 1025, CAST(N'2016-06-16 07:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1340, 1025, CAST(N'2016-06-16 08:00:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1341, 1025, CAST(N'2016-06-16 08:00:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1342, 1025, CAST(N'2016-06-16 08:06:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1343, 1025, CAST(N'2016-06-16 08:08:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1344, 1025, CAST(N'2016-06-16 08:08:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1345, 1, CAST(N'2016-06-16 08:09:00' AS SmallDateTime), CAST(N'2016-06-16 08:12:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1346, 1, CAST(N'2016-06-16 08:09:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1347, 1025, CAST(N'2016-06-16 08:12:00' AS SmallDateTime), CAST(N'2016-06-16 08:18:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1348, 1025, CAST(N'2016-06-16 08:18:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1349, 1025, CAST(N'2016-06-16 08:28:00' AS SmallDateTime), CAST(N'2016-06-16 08:37:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1350, 1025, CAST(N'2016-06-16 08:36:00' AS SmallDateTime), CAST(N'2016-06-16 08:37:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1351, 1025, CAST(N'2016-06-16 22:13:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1352, 1025, CAST(N'2016-06-16 22:21:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1353, 1025, CAST(N'2016-06-16 22:39:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1354, 1, CAST(N'2016-06-16 23:08:00' AS SmallDateTime), CAST(N'2016-06-16 23:12:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1355, 1, CAST(N'2016-06-16 23:12:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1356, 1, CAST(N'2016-06-16 23:19:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1357, 1, CAST(N'2016-06-16 23:20:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1358, 2, CAST(N'2016-06-16 23:44:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1359, 2, CAST(N'2016-06-16 23:44:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1360, 2, CAST(N'2016-06-16 23:58:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1361, 2, CAST(N'2016-06-17 00:04:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1362, 2, CAST(N'2016-06-17 00:08:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1363, 2, CAST(N'2016-06-17 00:23:00' AS SmallDateTime), CAST(N'2016-06-17 00:25:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1364, 2, CAST(N'2016-06-17 00:27:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1365, 2, CAST(N'2016-06-17 00:27:00' AS SmallDateTime), CAST(N'2016-06-17 00:27:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1366, 2, CAST(N'2016-06-17 00:29:00' AS SmallDateTime), CAST(N'2016-06-17 00:31:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1367, 1, CAST(N'2016-06-17 00:50:00' AS SmallDateTime), NULL, N'127.0.0.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1368, 1, CAST(N'2016-06-17 00:56:00' AS SmallDateTime), CAST(N'2016-06-17 00:57:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1369, 1, CAST(N'2016-06-17 01:03:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1370, 1, CAST(N'2016-06-17 01:10:00' AS SmallDateTime), CAST(N'2016-06-17 01:14:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1371, 1, CAST(N'2016-06-17 01:15:00' AS SmallDateTime), CAST(N'2016-06-17 01:20:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1372, 1, CAST(N'2016-06-17 12:38:00' AS SmallDateTime), NULL, N'86.96.27.71', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1373, 1026, CAST(N'2016-06-17 18:55:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1374, 1, CAST(N'2016-06-17 18:55:00' AS SmallDateTime), CAST(N'2016-06-17 18:56:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1375, 1026, CAST(N'2016-06-17 18:56:00' AS SmallDateTime), CAST(N'2016-06-17 19:01:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1376, 1, CAST(N'2016-06-17 19:02:00' AS SmallDateTime), CAST(N'2016-06-17 19:03:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1377, 1, CAST(N'2016-06-17 19:03:00' AS SmallDateTime), CAST(N'2016-06-17 19:05:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1378, 1, CAST(N'2016-06-17 22:30:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1379, 1, CAST(N'2016-06-18 08:08:00' AS SmallDateTime), CAST(N'2016-06-18 08:11:00' AS SmallDateTime), N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1380, 1027, CAST(N'2016-06-18 08:12:00' AS SmallDateTime), NULL, N'183.82.148.140', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1381, 1, CAST(N'2016-06-18 08:12:00' AS SmallDateTime), NULL, N'183.82.148.140', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1382, 1, CAST(N'2016-06-18 10:01:00' AS SmallDateTime), CAST(N'2016-06-18 10:02:00' AS SmallDateTime), N'45.121.114.207', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1383, 1028, CAST(N'2016-06-18 14:37:00' AS SmallDateTime), NULL, N'59.92.246.88', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1384, 1028, CAST(N'2016-06-18 14:38:00' AS SmallDateTime), NULL, N'59.92.246.88', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1385, 1028, CAST(N'2016-06-18 14:38:00' AS SmallDateTime), NULL, N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1386, 1, CAST(N'2016-06-18 14:39:00' AS SmallDateTime), NULL, N'59.92.246.88', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1387, 1, CAST(N'2016-06-18 14:39:00' AS SmallDateTime), NULL, N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1388, 1028, CAST(N'2016-06-18 14:43:00' AS SmallDateTime), CAST(N'2016-06-18 14:47:00' AS SmallDateTime), N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1389, 2, CAST(N'2016-06-18 14:47:00' AS SmallDateTime), CAST(N'2016-06-18 14:50:00' AS SmallDateTime), N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1390, 1028, CAST(N'2016-06-18 14:50:00' AS SmallDateTime), NULL, N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1391, 1, CAST(N'2016-06-18 15:08:00' AS SmallDateTime), NULL, N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1392, 1028, CAST(N'2016-06-18 15:11:00' AS SmallDateTime), CAST(N'2016-06-18 15:11:00' AS SmallDateTime), N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1393, 2, CAST(N'2016-06-18 15:11:00' AS SmallDateTime), CAST(N'2016-06-18 15:12:00' AS SmallDateTime), N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1394, 1028, CAST(N'2016-06-18 15:12:00' AS SmallDateTime), NULL, N'59.92.246.88', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1395, 1028, CAST(N'2016-06-18 15:55:00' AS SmallDateTime), CAST(N'2016-06-18 15:55:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1396, 2, CAST(N'2016-06-18 15:55:00' AS SmallDateTime), CAST(N'2016-06-18 15:59:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1397, 1, CAST(N'2016-06-18 16:00:00' AS SmallDateTime), NULL, N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1398, 1028, CAST(N'2016-06-18 16:04:00' AS SmallDateTime), CAST(N'2016-06-18 16:09:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1399, 2, CAST(N'2016-06-18 16:09:00' AS SmallDateTime), CAST(N'2016-06-18 16:10:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1400, 3, CAST(N'2016-06-18 16:10:00' AS SmallDateTime), CAST(N'2016-06-18 16:11:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1401, 3, CAST(N'2016-06-18 16:12:00' AS SmallDateTime), NULL, N'117.201.217.175', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1402, 3, CAST(N'2016-06-18 16:12:00' AS SmallDateTime), CAST(N'2016-06-18 16:12:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1403, 2, CAST(N'2016-06-18 16:12:00' AS SmallDateTime), CAST(N'2016-06-18 16:13:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1404, 1028, CAST(N'2016-06-18 16:13:00' AS SmallDateTime), CAST(N'2016-06-18 16:15:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1405, 3, CAST(N'2016-06-18 16:15:00' AS SmallDateTime), CAST(N'2016-06-18 16:17:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1406, 1028, CAST(N'2016-06-18 16:18:00' AS SmallDateTime), CAST(N'2016-06-18 16:24:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1407, 1, CAST(N'2016-06-18 16:24:00' AS SmallDateTime), NULL, N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1408, 1, CAST(N'2016-06-18 16:29:00' AS SmallDateTime), NULL, N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1409, 2, CAST(N'2016-06-18 16:59:00' AS SmallDateTime), CAST(N'2016-06-18 17:04:00' AS SmallDateTime), N'117.201.217.175', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1410, 1, CAST(N'2016-06-19 11:37:00' AS SmallDateTime), NULL, N'183.82.204.225', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1411, 1, CAST(N'2016-06-21 07:13:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1412, 3, CAST(N'2016-06-21 07:29:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1413, 3, CAST(N'2016-06-21 07:30:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1414, 3, CAST(N'2016-06-21 07:30:00' AS SmallDateTime), CAST(N'2016-06-21 07:43:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1415, 2, CAST(N'2016-06-21 07:44:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1416, 1, CAST(N'2016-06-21 22:37:00' AS SmallDateTime), CAST(N'2016-06-21 22:47:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1417, 1, CAST(N'2016-06-22 08:15:00' AS SmallDateTime), CAST(N'2016-06-22 08:34:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1418, 3, CAST(N'2016-06-22 11:41:00' AS SmallDateTime), CAST(N'2016-06-22 11:54:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1419, 3, CAST(N'2016-06-22 11:54:00' AS SmallDateTime), CAST(N'2016-06-22 12:09:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1420, 3, CAST(N'2016-06-23 08:07:00' AS SmallDateTime), CAST(N'2016-06-23 08:14:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1421, 3, CAST(N'2016-06-23 08:31:00' AS SmallDateTime), CAST(N'2016-06-23 08:35:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1422, 3, CAST(N'2016-06-23 10:15:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1423, 3, CAST(N'2016-06-23 10:55:00' AS SmallDateTime), CAST(N'2016-06-23 11:02:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1424, 3, CAST(N'2016-06-23 11:12:00' AS SmallDateTime), CAST(N'2016-06-23 11:23:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1425, 1, CAST(N'2016-06-24 15:07:00' AS SmallDateTime), NULL, N'176.205.123.139', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1426, 3, CAST(N'2016-06-26 02:11:00' AS SmallDateTime), CAST(N'2016-06-26 02:28:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1427, 1, CAST(N'2016-06-26 07:31:00' AS SmallDateTime), CAST(N'2016-06-26 07:33:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1428, 1, CAST(N'2016-06-26 07:55:00' AS SmallDateTime), CAST(N'2016-06-26 08:00:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1429, 1, CAST(N'2016-06-26 08:04:00' AS SmallDateTime), CAST(N'2016-06-26 08:06:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1430, 2, CAST(N'2016-06-26 08:07:00' AS SmallDateTime), CAST(N'2016-06-26 08:07:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1431, 2, CAST(N'2016-06-26 08:13:00' AS SmallDateTime), CAST(N'2016-06-26 08:16:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1432, 2, CAST(N'2016-06-26 08:17:00' AS SmallDateTime), CAST(N'2016-06-26 08:22:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1433, 2, CAST(N'2016-06-26 08:19:00' AS SmallDateTime), CAST(N'2016-06-26 08:19:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1434, 2, CAST(N'2016-06-26 08:21:00' AS SmallDateTime), CAST(N'2016-06-26 08:23:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1435, 2, CAST(N'2016-06-26 08:23:00' AS SmallDateTime), CAST(N'2016-06-26 08:28:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1436, 1, CAST(N'2016-06-27 20:44:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1437, 3, CAST(N'2016-06-27 20:55:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1438, 3, CAST(N'2016-06-27 21:07:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1439, 1, CAST(N'2016-06-27 21:13:00' AS SmallDateTime), CAST(N'2016-06-27 21:16:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1440, 1, CAST(N'2016-06-27 21:13:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1441, 1, CAST(N'2016-06-27 21:13:00' AS SmallDateTime), CAST(N'2016-06-27 21:16:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1442, 1, CAST(N'2016-06-27 21:37:00' AS SmallDateTime), CAST(N'2016-06-27 21:50:00' AS SmallDateTime), N'86.96.31.134', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1443, 1, CAST(N'2016-06-27 21:50:00' AS SmallDateTime), CAST(N'2016-06-27 21:55:00' AS SmallDateTime), N'86.96.31.134', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1444, 3, CAST(N'2016-06-27 21:55:00' AS SmallDateTime), CAST(N'2016-06-27 21:55:00' AS SmallDateTime), N'86.96.31.134', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1445, 3, CAST(N'2016-06-27 21:55:00' AS SmallDateTime), CAST(N'2016-06-27 21:56:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1446, 1, CAST(N'2016-06-27 21:56:00' AS SmallDateTime), CAST(N'2016-06-27 21:59:00' AS SmallDateTime), N'86.96.31.134', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1447, 3, CAST(N'2016-06-27 21:56:00' AS SmallDateTime), CAST(N'2016-06-27 21:57:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1448, 3, CAST(N'2016-06-27 21:57:00' AS SmallDateTime), CAST(N'2016-06-27 21:59:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1449, 3, CAST(N'2016-06-27 21:59:00' AS SmallDateTime), NULL, N'86.96.31.134', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1450, 3, CAST(N'2016-06-27 22:00:00' AS SmallDateTime), NULL, N'86.96.31.134', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1451, 3, CAST(N'2016-06-27 22:06:00' AS SmallDateTime), NULL, N'49.204.19.5', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1452, 3, CAST(N'2016-06-27 22:06:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1453, 3, CAST(N'2016-06-27 22:26:00' AS SmallDateTime), CAST(N'2016-06-27 22:26:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1454, 2, CAST(N'2016-06-27 22:27:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1455, 1, CAST(N'2016-06-28 06:47:00' AS SmallDateTime), CAST(N'2016-06-28 06:53:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1456, 3, CAST(N'2016-06-28 06:53:00' AS SmallDateTime), CAST(N'2016-06-28 06:55:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1457, 3, CAST(N'2016-06-28 06:55:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1458, 3, CAST(N'2016-06-28 07:17:00' AS SmallDateTime), CAST(N'2016-06-28 07:17:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1459, 3, CAST(N'2016-06-28 07:19:00' AS SmallDateTime), CAST(N'2016-06-28 07:23:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1460, 3, CAST(N'2016-06-28 07:26:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1461, 3, CAST(N'2016-06-28 07:29:00' AS SmallDateTime), CAST(N'2016-06-28 07:33:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1462, 1, CAST(N'2016-06-28 10:18:00' AS SmallDateTime), NULL, N'183.82.97.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1463, 1, CAST(N'2016-06-28 12:05:00' AS SmallDateTime), CAST(N'2016-06-28 12:07:00' AS SmallDateTime), N'183.83.21.61', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1464, 1, CAST(N'2016-06-28 14:33:00' AS SmallDateTime), CAST(N'2016-06-28 14:33:00' AS SmallDateTime), N'183.82.97.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1465, 3, CAST(N'2016-06-28 14:33:00' AS SmallDateTime), NULL, N'183.82.97.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1466, 1, CAST(N'2016-06-28 21:02:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1467, 1, CAST(N'2016-06-28 21:26:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1468, 3, CAST(N'2016-06-28 21:40:00' AS SmallDateTime), CAST(N'2016-06-28 21:41:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1469, 1, CAST(N'2016-06-28 21:42:00' AS SmallDateTime), CAST(N'2016-06-28 21:43:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1470, 1, CAST(N'2016-06-28 21:43:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1471, 1, CAST(N'2016-06-28 21:43:00' AS SmallDateTime), CAST(N'2016-06-28 21:46:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1472, 1, CAST(N'2016-06-28 21:47:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1473, 3, CAST(N'2016-06-29 06:49:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1474, 3, CAST(N'2016-06-29 08:40:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1475, 3, CAST(N'2016-06-30 08:23:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1476, 3, CAST(N'2016-06-30 11:11:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1477, 3, CAST(N'2016-06-30 11:32:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1478, 1, CAST(N'2016-06-30 21:07:00' AS SmallDateTime), NULL, N'49.204.22.131', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1479, 1, CAST(N'2016-06-30 21:25:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1480, 1, CAST(N'2016-06-30 21:35:00' AS SmallDateTime), CAST(N'2016-06-30 21:44:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1481, 1, CAST(N'2016-06-30 22:42:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1482, 1, CAST(N'2016-06-30 22:44:00' AS SmallDateTime), CAST(N'2016-06-30 22:50:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1483, 3, CAST(N'2016-06-30 22:46:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1484, 3, CAST(N'2016-06-30 22:50:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1485, 1, CAST(N'2016-07-04 16:06:00' AS SmallDateTime), CAST(N'2016-07-04 16:06:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1486, 3, CAST(N'2016-07-04 16:08:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1487, 3, CAST(N'2016-07-04 20:09:00' AS SmallDateTime), CAST(N'2016-07-04 20:15:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1488, 1, CAST(N'2016-07-05 06:22:00' AS SmallDateTime), CAST(N'2016-07-05 06:22:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1489, 1, CAST(N'2016-07-05 06:28:00' AS SmallDateTime), CAST(N'2016-07-05 06:28:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1490, 3, CAST(N'2016-07-05 06:28:00' AS SmallDateTime), CAST(N'2016-07-05 06:28:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1491, 1, CAST(N'2016-07-05 06:36:00' AS SmallDateTime), CAST(N'2016-07-05 06:37:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1492, 3, CAST(N'2016-07-05 19:29:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1493, 2, CAST(N'2016-07-05 19:46:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1494, 2, CAST(N'2016-07-05 19:50:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1495, 2, CAST(N'2016-07-05 19:55:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1496, 2, CAST(N'2016-07-05 20:01:00' AS SmallDateTime), CAST(N'2016-07-05 20:17:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1497, 3, CAST(N'2016-07-06 10:56:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1498, 3, CAST(N'2016-07-06 11:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1499, 3, CAST(N'2016-07-06 12:48:00' AS SmallDateTime), CAST(N'2016-07-06 12:49:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1500, 3, CAST(N'2016-07-06 12:49:00' AS SmallDateTime), CAST(N'2016-07-06 12:51:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1501, 3, CAST(N'2016-07-06 12:50:00' AS SmallDateTime), CAST(N'2016-07-06 12:51:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1502, 3, CAST(N'2016-07-06 12:51:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1503, 3, CAST(N'2016-07-06 12:51:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1504, 3, CAST(N'2016-07-06 13:39:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1505, 3, CAST(N'2016-07-06 16:41:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1506, 3, CAST(N'2016-07-06 17:17:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1507, 3, CAST(N'2016-07-06 18:03:00' AS SmallDateTime), CAST(N'2016-07-06 18:04:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1508, 3, CAST(N'2016-07-06 18:04:00' AS SmallDateTime), CAST(N'2016-07-06 18:06:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1509, 1, CAST(N'2016-07-06 18:06:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1510, 1, CAST(N'2016-07-06 18:15:00' AS SmallDateTime), CAST(N'2016-07-06 18:29:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1511, 1, CAST(N'2016-07-06 18:29:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1512, 1, CAST(N'2016-07-06 18:44:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1513, 1, CAST(N'2016-07-07 01:02:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1514, 1, CAST(N'2016-07-07 01:22:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1515, 1, CAST(N'2016-07-07 01:26:00' AS SmallDateTime), CAST(N'2016-07-07 01:43:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1516, 1, CAST(N'2016-07-07 01:47:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1517, 1, CAST(N'2016-07-07 01:53:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1518, 1, CAST(N'2016-07-07 02:21:00' AS SmallDateTime), CAST(N'2016-07-07 02:33:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1519, 1, CAST(N'2016-07-07 02:33:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1520, 1, CAST(N'2016-07-07 02:38:00' AS SmallDateTime), CAST(N'2016-07-07 02:43:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1521, 1, CAST(N'2016-07-07 02:43:00' AS SmallDateTime), CAST(N'2016-07-07 02:45:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1522, 1, CAST(N'2016-07-07 02:45:00' AS SmallDateTime), CAST(N'2016-07-07 02:49:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1523, 2, CAST(N'2016-07-07 02:49:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1524, 2, CAST(N'2016-07-07 03:09:00' AS SmallDateTime), CAST(N'2016-07-07 03:18:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1525, 3, CAST(N'2016-07-08 19:04:00' AS SmallDateTime), NULL, N'183.82.97.1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1526, 2, CAST(N'2016-07-09 10:47:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1527, 2, CAST(N'2016-07-09 10:54:00' AS SmallDateTime), CAST(N'2016-07-09 10:59:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1528, 2, CAST(N'2016-07-09 11:00:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1529, 2, CAST(N'2016-07-09 11:00:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1530, 2, CAST(N'2016-07-09 11:29:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1531, 2, CAST(N'2016-07-09 11:51:00' AS SmallDateTime), CAST(N'2016-07-09 12:05:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1532, 1, CAST(N'2016-07-09 12:05:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1533, 1, CAST(N'2016-07-09 12:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1534, 2, CAST(N'2016-07-09 12:38:00' AS SmallDateTime), CAST(N'2016-07-09 12:57:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1535, 1, CAST(N'2016-07-09 12:57:00' AS SmallDateTime), CAST(N'2016-07-09 12:57:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1536, 3, CAST(N'2016-07-09 12:57:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1537, 3, CAST(N'2016-07-09 13:16:00' AS SmallDateTime), CAST(N'2016-07-09 13:36:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1538, 1, CAST(N'2016-07-09 13:36:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1539, 3, CAST(N'2016-07-09 13:59:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1540, 3, CAST(N'2016-07-09 14:13:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1541, 3, CAST(N'2016-07-09 15:05:00' AS SmallDateTime), CAST(N'2016-07-09 15:08:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1542, 2, CAST(N'2016-07-09 15:08:00' AS SmallDateTime), CAST(N'2016-07-09 15:17:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1543, 3, CAST(N'2016-07-09 15:17:00' AS SmallDateTime), CAST(N'2016-07-09 15:25:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1544, 2, CAST(N'2016-07-09 15:18:00' AS SmallDateTime), CAST(N'2016-07-09 15:28:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1545, 1, CAST(N'2016-07-09 15:25:00' AS SmallDateTime), CAST(N'2016-07-09 15:28:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1546, 2, CAST(N'2016-07-09 15:49:00' AS SmallDateTime), CAST(N'2016-07-09 15:49:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1547, 3, CAST(N'2016-07-09 15:49:00' AS SmallDateTime), CAST(N'2016-07-09 15:49:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1548, 3, CAST(N'2016-07-09 15:50:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1549, 1, CAST(N'2016-07-09 19:16:00' AS SmallDateTime), CAST(N'2016-07-09 19:18:00' AS SmallDateTime), N'49.204.37.106', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1550, 1, CAST(N'2016-07-09 19:34:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1551, 3, CAST(N'2016-07-09 20:35:00' AS SmallDateTime), CAST(N'2016-07-09 20:50:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1552, 1, CAST(N'2016-07-09 20:51:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1554, 3, CAST(N'2016-07-10 12:23:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1555, 1, CAST(N'2016-07-10 15:09:00' AS SmallDateTime), CAST(N'2016-07-10 15:08:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1556, 1, CAST(N'2016-07-10 15:11:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1557, 3, CAST(N'2016-07-10 15:23:00' AS SmallDateTime), CAST(N'2016-07-10 15:27:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1558, 2, CAST(N'2016-07-10 15:34:00' AS SmallDateTime), CAST(N'2016-07-10 15:38:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1559, 1, CAST(N'2016-07-10 15:41:00' AS SmallDateTime), CAST(N'2016-07-10 15:43:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1560, 2, CAST(N'2016-07-10 15:43:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1561, 2, CAST(N'2016-07-10 15:58:00' AS SmallDateTime), CAST(N'2016-07-10 16:00:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1562, 1, CAST(N'2016-07-10 16:00:00' AS SmallDateTime), CAST(N'2016-07-10 16:04:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1563, 3, CAST(N'2016-07-10 16:04:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1564, 1, CAST(N'2016-07-10 20:03:00' AS SmallDateTime), CAST(N'2016-07-10 20:04:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1565, 3, CAST(N'2016-07-10 20:59:00' AS SmallDateTime), CAST(N'2016-07-10 21:14:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1566, 2, CAST(N'2016-07-10 21:32:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1567, 2, CAST(N'2016-07-10 21:33:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1568, 2, CAST(N'2016-07-11 20:18:00' AS SmallDateTime), CAST(N'2016-07-11 20:21:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1569, 1, CAST(N'2016-07-11 20:21:00' AS SmallDateTime), CAST(N'2016-07-11 20:25:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1570, 1, CAST(N'2016-07-11 20:21:00' AS SmallDateTime), NULL, N'::1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1571, 3, CAST(N'2016-07-11 20:56:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1572, 2, CAST(N'2016-07-11 21:05:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1573, 2, CAST(N'2016-07-11 21:43:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1574, 2, CAST(N'2016-07-11 22:15:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1575, 2, CAST(N'2016-07-11 22:28:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1576, 2, CAST(N'2016-07-11 23:02:00' AS SmallDateTime), CAST(N'2016-07-11 23:03:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1577, 1, CAST(N'2016-07-11 23:03:00' AS SmallDateTime), CAST(N'2016-07-11 23:04:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1578, 2, CAST(N'2016-07-12 20:43:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1579, 2, CAST(N'2016-07-12 21:03:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1580, 2, CAST(N'2016-07-12 21:40:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1581, 2, CAST(N'2016-07-12 22:31:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1582, 2, CAST(N'2016-07-12 22:34:00' AS SmallDateTime), CAST(N'2016-07-12 22:45:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1583, 3, CAST(N'2016-07-12 22:45:00' AS SmallDateTime), CAST(N'2016-07-12 22:48:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1584, 3, CAST(N'2016-07-13 22:16:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1585, 3, CAST(N'2016-07-13 22:20:00' AS SmallDateTime), CAST(N'2016-07-13 22:29:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1586, 1, CAST(N'2016-07-13 22:29:00' AS SmallDateTime), CAST(N'2016-07-13 22:42:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1587, 3, CAST(N'2016-07-13 22:31:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1588, 1, CAST(N'2016-07-13 22:43:00' AS SmallDateTime), CAST(N'2016-07-13 22:43:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1589, 1, CAST(N'2016-07-19 22:47:00' AS SmallDateTime), NULL, N'92.98.212.232', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1590, 1, CAST(N'2016-07-23 19:55:00' AS SmallDateTime), NULL, N'92.98.201.32', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1591, 3, CAST(N'2016-07-24 18:05:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1592, 3, CAST(N'2016-07-24 18:07:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1593, 3, CAST(N'2016-07-24 22:21:00' AS SmallDateTime), CAST(N'2016-07-24 22:29:00' AS SmallDateTime), N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1594, 2, CAST(N'2016-07-24 22:30:00' AS SmallDateTime), CAST(N'2016-07-24 22:30:00' AS SmallDateTime), N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1595, 3, CAST(N'2016-07-25 20:25:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1596, 3, CAST(N'2016-07-25 20:50:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1597, 3, CAST(N'2016-07-25 21:55:00' AS SmallDateTime), CAST(N'2016-07-25 21:56:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1598, 1, CAST(N'2016-07-25 22:07:00' AS SmallDateTime), CAST(N'2016-07-25 22:08:00' AS SmallDateTime), N'49.204.30.252', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1599, 3, CAST(N'2016-07-26 07:09:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1600, 3, CAST(N'2016-07-26 07:17:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1601, 1, CAST(N'2016-07-26 20:53:00' AS SmallDateTime), CAST(N'2016-07-26 20:55:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1602, 1, CAST(N'2016-07-26 20:55:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1603, 3, CAST(N'2016-07-27 15:46:00' AS SmallDateTime), CAST(N'2016-07-27 16:02:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1604, 1, CAST(N'2016-07-27 16:02:00' AS SmallDateTime), CAST(N'2016-07-27 16:03:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1605, 2, CAST(N'2016-07-27 16:03:00' AS SmallDateTime), CAST(N'2016-07-27 16:07:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1606, 1, CAST(N'2016-07-27 16:07:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1607, 1, CAST(N'2016-07-27 19:29:00' AS SmallDateTime), CAST(N'2016-07-27 19:37:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1608, 3, CAST(N'2016-07-27 19:37:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1609, 1, CAST(N'2016-07-27 20:19:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1610, 1, CAST(N'2016-07-27 20:25:00' AS SmallDateTime), CAST(N'2016-07-27 20:33:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1611, 2, CAST(N'2016-07-27 20:31:00' AS SmallDateTime), CAST(N'2016-07-27 20:41:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1612, 2, CAST(N'2016-07-27 20:33:00' AS SmallDateTime), CAST(N'2016-07-27 20:33:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1613, 3, CAST(N'2016-07-27 20:33:00' AS SmallDateTime), CAST(N'2016-07-27 20:36:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1614, 2, CAST(N'2016-07-27 20:36:00' AS SmallDateTime), CAST(N'2016-07-27 20:41:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1615, 3, CAST(N'2016-07-27 20:42:00' AS SmallDateTime), CAST(N'2016-07-27 20:43:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1616, 1, CAST(N'2016-08-23 01:42:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1617, 1, CAST(N'2016-08-23 01:44:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1618, 1, CAST(N'2016-08-23 01:55:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1619, 1, CAST(N'2016-08-23 01:58:00' AS SmallDateTime), CAST(N'2016-08-23 02:01:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (2616, 1, CAST(N'2016-09-02 17:53:00' AS SmallDateTime), NULL, N'31.215.240.82', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (2617, 1, CAST(N'2016-09-08 23:14:00' AS SmallDateTime), CAST(N'2016-09-08 23:14:00' AS SmallDateTime), N'::1', 1)
GO
SET IDENTITY_INSERT [dbo].[LoginLog] OFF
GO
SET IDENTITY_INSERT [dbo].[MainCategory] ON 

GO
INSERT [dbo].[MainCategory] ([MainCategoryID], [MainCategoryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (100, N'Materials & Equipments', 1, 1, CAST(N'2016-05-01 23:41:00' AS SmallDateTime), 1, CAST(N'2016-05-01 23:41:00' AS SmallDateTime))
GO
INSERT [dbo].[MainCategory] ([MainCategoryID], [MainCategoryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (101, N'Rental Services', 1, 1, CAST(N'2016-05-01 23:41:00' AS SmallDateTime), 1, CAST(N'2016-05-01 23:41:00' AS SmallDateTime))
GO
INSERT [dbo].[MainCategory] ([MainCategoryID], [MainCategoryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (102, N'Service Providers', 1, 1, CAST(N'2016-05-01 23:41:00' AS SmallDateTime), 1, CAST(N'2016-05-01 23:41:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[MainCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[PlanFeature] ON 

GO
INSERT [dbo].[PlanFeature] ([PlanFeatureID], [FeatureName], [Description], [ControlType], [IsEditable], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'tbox feature', N'hello', 0, 1, 1, CAST(N'2016-05-10 08:02:00' AS SmallDateTime), 1, CAST(N'2016-05-10 08:27:00' AS SmallDateTime))
GO
INSERT [dbo].[PlanFeature] ([PlanFeatureID], [FeatureName], [Description], [ControlType], [IsEditable], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'cbox feature', N'hello cbox', 1, 0, 1, CAST(N'2016-05-10 08:03:00' AS SmallDateTime), 1, CAST(N'2016-06-22 08:28:00' AS SmallDateTime))
GO
INSERT [dbo].[PlanFeature] ([PlanFeatureID], [FeatureName], [Description], [ControlType], [IsEditable], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'testing', N'ttt', 1, 1, 1, CAST(N'2016-05-13 11:27:00' AS SmallDateTime), 1, CAST(N'2016-05-13 11:27:00' AS SmallDateTime))
GO
INSERT [dbo].[PlanFeature] ([PlanFeatureID], [FeatureName], [Description], [ControlType], [IsEditable], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Products Upload', N'No of products uploaded', 0, 0, 1, CAST(N'2016-05-16 08:30:00' AS SmallDateTime), 1, CAST(N'2016-05-16 08:30:00' AS SmallDateTime))
GO
INSERT [dbo].[PlanFeature] ([PlanFeatureID], [FeatureName], [Description], [ControlType], [IsEditable], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Responsive', N'Responsive design', 1, 1, 1, CAST(N'2016-06-18 16:27:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:27:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[PlanFeature] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceManagement] ON 

GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (49, 1, 1, N'', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (50, 1, 2, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (51, 1, 4, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (52, 1, 5, N'10', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (53, 1, 6, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (54, 3, 1, N'', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (55, 3, 2, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (56, 3, 4, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (57, 3, 5, N'20', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (58, 3, 6, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (59, 4, 1, N'', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (60, 4, 2, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (61, 4, 4, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (62, 4, 5, N'50', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (63, 4, 6, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (64, 5, 1, N'', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (65, 5, 2, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (66, 5, 4, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (67, 5, 5, N'100', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PriceManagement] ([PriceManagementID], [PlanID], [PlanFeatureID], [ControlValue], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (68, 5, 6, N'0', 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:31:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[PriceManagement] OFF
GO
SET IDENTITY_INSERT [dbo].[PricePlan] ON 

GO
INSERT [dbo].[PricePlan] ([PlanID], [PlanName], [PlanPrice], [PlanSubscription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'test', CAST(123.00 AS Decimal(10, 2)), 2, 1, CAST(N'2016-05-10 08:11:00' AS SmallDateTime), 1, CAST(N'2016-05-10 08:11:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePlan] ([PlanID], [PlanName], [PlanPrice], [PlanSubscription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Basic', CAST(2000.00 AS Decimal(10, 2)), 2, 1, CAST(N'2016-05-16 08:31:00' AS SmallDateTime), 1, CAST(N'2016-05-16 08:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePlan] ([PlanID], [PlanName], [PlanPrice], [PlanSubscription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Standard', CAST(5000.00 AS Decimal(10, 2)), 2, 1, CAST(N'2016-05-16 08:31:00' AS SmallDateTime), 1, CAST(N'2016-05-16 08:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PricePlan] ([PlanID], [PlanName], [PlanPrice], [PlanSubscription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Enterprise', CAST(25000.00 AS Decimal(10, 2)), 6, 1, CAST(N'2016-06-18 16:30:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:30:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[PricePlan] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCatalog] ON 

GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Air Conditioners', N'Acs^ Coolers', 100, 100, 1, 2, CAST(N'2016-05-09 00:00:00.000' AS DateTime), 1, CAST(N'2016-06-14 23:32:47.517' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Disco Lights', N'Special Lights^ Pub lights', 100, 100, 1, 2, CAST(N'2016-06-09 08:20:19.210' AS DateTime), 1, CAST(N'2016-06-14 23:33:55.180' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Tube lights', N'', 100, 100, 1, 2, CAST(N'2016-06-10 07:44:05.863' AS DateTime), 2, CAST(N'2016-06-10 07:44:05.863' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'CC Cameras', N'', 107, 100, 1, 2, CAST(N'2016-06-10 07:45:21.700' AS DateTime), 2, CAST(N'2016-06-10 07:45:21.700' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'Sign boards', N'left arrow boards^ right arrow boards', 103, 103, 1, 1, CAST(N'2016-06-11 08:44:04.610' AS DateTime), 1, CAST(N'2016-06-11 08:44:04.610' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'test', N'123^ 456', 104, 104, 1, 1, CAST(N'2016-06-11 08:44:34.347' AS DateTime), 1, CAST(N'2016-06-11 08:44:44.857' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'Laser Scanners', N'', 104, 104, 1, 1025, CAST(N'2016-06-16 22:40:39.613' AS DateTime), 1025, CAST(N'2016-06-16 22:40:39.613' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'Sofa Set', N'', 112, 100, 1, 2, CAST(N'2016-07-05 20:07:37.957' AS DateTime), 2, CAST(N'2016-07-05 20:07:37.957' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductCatalog] OFF
GO
SET IDENTITY_INSERT [dbo].[Quotation] ON 

GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 104, 3, 2, 11, 2, CAST(N'2016-05-29 17:03:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 104, 3, 18, 11, 18, CAST(N'2016-05-29 17:03:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (22, 116, 3, 2, 11, 2, CAST(N'2016-06-18 16:11:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, 117, 3, 1028, 11, 1028, CAST(N'2016-06-18 16:17:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (29, 139, 3, 2, 11, 2, CAST(N'2016-07-07 02:48:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (30, 139, 3, 1025, 11, 1025, CAST(N'2016-07-07 02:48:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (31, 140, 3, 2, 11, 2, CAST(N'2016-07-07 02:48:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (32, 156, 1042, 2, 11, 2, CAST(N'2016-07-10 15:42:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (33, 156, 1042, 18, 11, 18, CAST(N'2016-07-10 15:42:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (34, 150, 3, 2, 11, 2, CAST(N'2016-07-11 23:04:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (35, 150, 3, 18, 11, 18, CAST(N'2016-07-11 23:04:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (36, 151, 3, 1028, 11, 1028, CAST(N'2016-07-11 23:04:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (37, 152, 3, 2, 11, 2, CAST(N'2016-07-11 23:04:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (38, 161, 3, 1028, 11, 1028, CAST(N'2016-07-27 16:03:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (39, 162, 3, 2, 11, 2, CAST(N'2016-07-27 16:03:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (40, 162, 3, 1025, 11, 1025, CAST(N'2016-07-27 16:03:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (41, 163, 3, 2, 11, 2, CAST(N'2016-07-27 16:03:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (42, 163, 3, 18, 11, 18, CAST(N'2016-07-27 16:03:00' AS SmallDateTime), 1, CAST(N'2016-07-27 19:36:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Quotation] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Administrator', 1, N'1~2~3~4~5~6~7~8~9~10~11~12~13~16~17~18~19~21~22~27~28~31~32~33~34~35~36~37~38~39~40~41~42~43~44~45~46~51', 1, CAST(N'2013-10-09 14:42:00' AS SmallDateTime), 1, CAST(N'2014-01-03 17:43:00' AS SmallDateTime))
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Vendor', 2, N'14~18~19~21~22~23~25~26~27~28~43~44~47~48~51~55', 1, CAST(N'2013-10-09 14:42:00' AS SmallDateTime), 1, CAST(N'2016-01-31 03:26:00' AS SmallDateTime))
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Customer', 2, N'15~18~19~20~21~22~24~27~28~29~30~49~50~51~52~53~54', 1, CAST(N'2013-10-09 14:42:00' AS SmallDateTime), 1, CAST(N'2016-01-30 23:43:00' AS SmallDateTime))
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Guest', 1, N'28', 1, CAST(N'2013-10-09 14:42:00' AS SmallDateTime), 1, CAST(N'2013-10-09 14:42:00' AS SmallDateTime))
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (101, N'Accounts', 1, N'45~31~34~2', 1, CAST(N'2016-01-28 01:56:00' AS SmallDateTime), 1, CAST(N'2016-06-13 21:40:00' AS SmallDateTime))
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (105, N'Role 2', 1, N'5~6', 1, CAST(N'2016-01-28 01:57:00' AS SmallDateTime), 1, CAST(N'2016-07-10 15:11:00' AS SmallDateTime))
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (107, N'Role 3', 1, N'11~13', 1, CAST(N'2016-02-01 08:29:00' AS SmallDateTime), 1, CAST(N'2016-07-10 15:11:00' AS SmallDateTime))
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (108, N'Finanance', 1, N'12~5~6~1~8', 1, CAST(N'2016-06-18 08:15:00' AS SmallDateTime), 1, CAST(N'2016-07-10 15:11:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'MapPlanFeatures', N'Price Plan Features', 1, 1, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'ViewCategories', N'Categories', 1, 1, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'ViewCities', N'Cities', 1, 1, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'ViewCountries', N'Countries', 1, 1, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'ViewEnquiries', N'Enquiries', 2, 2, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'ViewEnquiryDetails', N'Enquiry Details', 2, 2, 1, 0, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'ViewPlanFeatures', N'PlanFeatures', 5, 1, 1, 0, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'ViewPricePlans', N'Price Plans', 6, 1, 1, 0, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'ViewSubCategories', N'Sub Categories', 1, 1, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'ViewUnitofMeasurements', N'View Units', 1, 1, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'ManageBannerAd', N'Add BannerAd', 1, 1, 1, 0, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'ViewBannerAds', N'Banner Ads', 1, 1, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'ADashboard', N'Admin Dashboard', 1, 0, 1, 0, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'VDashboard', N'Vendor Dashboard', 1, 0, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'CDashboard', N'Customer Dashboard', 1, 0, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, N'ViewDynamicPages', N'Dynamic Pages', 1, 0, 0, 1, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, N'ManageLandingPage', N'Manage Landing Page', 1, 0, 0, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'EmailContent', N'Email Content', 2, 4, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'ViewEmailQueries', N'View Email Queries', 1, 4, 1, 1, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (20, N'SendEnquiry', N'Send Enquiry', 1, 2, 1, 1, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (21, N'SendEmail', N'Send Email', 1, 4, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (22, N'SendSMS', N'Send SMS', 1, 4, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, N'ManageBusinessBranch', N'Add Business Branch', 1, 2, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (24, N'CustomerProfile', N'My Profile', 1, 3, 1, 1, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (25, N'VendorProfile', N'My Profile', 1, 3, 1, 1, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (26, N'ViewBusinessBranches', N'Business Branches', 1, 3, 1, 1, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (27, N'ChangePassword', N'Change Password', 1, 0, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (28, N'Logout', N'Logout', 1, 0, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (29, N'VendorRegistration', N'Vendor Registration', 3, 2, 1, 1, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (30, N'VendorRegistrationSuccess', N'Vendor Registration Success', 1, 0, 1, 0, 0, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (31, N'ManageRoleAccess', N'Add Role Access', 0, 2, 1, 0, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (32, N'ViewRolesAccess', N'Roles Access', 1, 2, 1, 1, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (33, N'ViewSubscriptions', N'Subscriptions', 1, 1, 1, 1, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (34, N'ManageSubscription', N'Add Subscription', 0, 1, 1, 0, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (35, N'ManageVendor', N'Manage Vendor', 0, 3, 1, 0, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (36, N'ManageVendors', N'Manage Vendors', 0, 0, 0, 0, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (37, N'ViewVendors', N'Vendors', 1, 3, 1, 1, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (38, N'ManageCustomer', N'Manage Customer', 0, 3, 1, 0, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (39, N'ManageCustomers', N'Manage Customers', 0, 0, 0, 0, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (40, N'ViewCustomers', N'Customers', 1, 3, 1, 1, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (41, N'ManageStaff', N'Manage Staff', 0, 3, 1, 0, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (42, N'ViewStaff', N'Staff', 1, 3, 1, 1, 1, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (43, N'ManageInventory', N'Add Product', 1, 2, 1, 0, 0, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (44, N'ViewInventory', N'Product Inventory', 1, 2, 1, 1, 0, 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime), 1, CAST(N'2016-02-16 12:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (45, N'ManageProduct', N'Add Product', 1, 2, 1, 0, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (46, N'ViewProducts', N'Product Catalog', 1, 2, 1, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (47, N'VendorEnquiries', N'Enquiries', 1, 2, 1, 1, 0, 1, CAST(N'2016-06-12 00:11:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:11:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (48, N'ManageEnquiry', N'Enquiry Details', 0, 2, 1, 0, 0, 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (49, N'ViewQuotations', N'Quotations', 0, 2, 1, 0, 0, 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (50, N'ViewCustomerEnquiries', N'Enquiries', 3, 2, 1, 0, 0, 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (51, N'ViewEnquiryInfo', N'Enquiry Details', 0, 1, 1, 0, 0, 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (52, N'ViewQuotationHistory', N'Quotation History', 0, 1, 1, 0, 0, 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (53, N'ViewVendorDetails', N'Vendor Details', 0, 1, 1, 0, 0, 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (54, N'SendMultiItemEnquiry', N'Send Multi Item Enquiry', 2, 2, 1, 1, 0, 1, CAST(N'2016-07-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-07-12 00:12:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (55, N'ManageMultiItemEnquiry', N'Enquiry Details', 0, 2, 1, 0, 0, 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime), 1, CAST(N'2016-06-12 00:12:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (100, 100, N'Lights', N'', 0, 1, 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (101, 101, N'Valves & Valve fittings', N'', 0, 1, 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (102, 102, N'Articulated dump trucks', N'', 1, 1, 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime), 1, CAST(N'2016-06-14 23:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (103, 103, N'Arrow boards', N'', 2, 1, 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (104, 104, N'3D laser scanners', N'', 0, 1, 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (105, 105, N'Construction design services', N'', 0, 1, 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (106, 106, N'Masons', N'', 0, 1, 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (107, 100, N'Security & Protection devices', N'', 0, 1, 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime), 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (108, 100, N'Switches & Switch gears', N'', 0, 1, 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime), 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (109, 100, N'Instrumentation & Control Equipments', N'', 0, 1, 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime), 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (110, 100, N'Measuring Equipments & Instruments', N'', 0, 1, 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime), 1, CAST(N'2016-06-09 08:24:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (111, 100, N'AC', N'AC', 3, 1, 1, CAST(N'2016-06-18 08:17:00' AS SmallDateTime), 1, CAST(N'2016-06-18 08:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (112, 100, N'Test Mason', N'Test Mason', 2, 1, 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (113, 100, N'Test Security Services', N'Test Security', 0, 1, 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (114, 100, N'Test Construction', N'Test Construct', 3, 1, 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (115, 100, N'Test Anchor', N'Test Switch', 0, 1, 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (116, 100, N'Test Samsung', N'Samsung', 0, 1, 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (117, 101, N'Test Philips', N'Philips', 0, 1, 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (118, 102, N'Test LG', N'LG', 0, 1, 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-18 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (119, 106, N'Masons Lights', N'', 0, 1, 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (120, 106, N'Reliance Masons', N'', 1, 1, 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (121, 103, N'New Arrow boards', N'', 2, 1, 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (122, 103, N'Spiral boards', N'', 2, 1, 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime), 1, CAST(N'2016-05-02 00:22:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscription] ON 

GO
INSERT [dbo].[Subscription] ([SubscriptionID], [PlanID], [UserID], [StartDate], [EndDate], [IsExpired], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 4, 2, CAST(N'2016-06-13 00:00:00' AS SmallDateTime), CAST(N'2017-06-20 00:00:00' AS SmallDateTime), 0, 1, CAST(N'2016-05-19 00:05:00' AS SmallDateTime), 1, CAST(N'2016-05-19 00:07:00' AS SmallDateTime))
GO
INSERT [dbo].[Subscription] ([SubscriptionID], [PlanID], [UserID], [StartDate], [EndDate], [IsExpired], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 5, 1028, CAST(N'2016-07-11 00:00:00' AS SmallDateTime), CAST(N'2017-07-11 00:00:00' AS SmallDateTime), 0, 1, CAST(N'2016-06-18 16:40:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:40:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Subscription] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitofMeasurement] ON 

GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Kilogram', 1, 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Nos', 1, 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Pieces', 1, 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Tons', 1, 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Units', 1, 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Others', 1, 1, CAST(N'2016-04-26 22:59:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:59:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'Bags', 1, 1, CAST(N'2016-04-26 22:59:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:59:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'Barrels', 1, 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'Boxes', 1, 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'Bushels', 1, 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'Cartons', 1, 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'Dozens', 1, 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'Foot', 1, 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'Gallon', 1, 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:00:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'Grams', 1, 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, N'Hectare', 1, 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, N'Kilometer', 1, 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'Litre', 1, 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'Litres', 1, 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (20, N'Long Ton', 1, 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:01:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (21, N'Meter', 1, 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (22, N'Metric Tons', 1, 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, N'Nos', 1, 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (24, N'Ounce', 1, 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (25, N'Packets', 1, 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (26, N'Packs', 1, 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (27, N'Pairs', 1, 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:02:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (28, N'Pieces', 1, 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (29, N'Pound', 1, 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (30, N'Reams', 1, 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (31, N'Rolls', 1, 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (32, N'Sets', 1, 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (33, N'Sheets', 1, 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:03:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (34, N'Short Ton', 1, 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (35, N'Square Feet', 1, 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (36, N'Square Meters', 1, 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (37, N'Tons', 1, 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (38, N'Units', 1, 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime), 1, CAST(N'2016-04-26 23:04:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[UnitofMeasurement] OFF
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Satya', N' Legend', 1, CAST(N'0001-01-01' AS Date), 1, N'192.168.1.2', 1, CAST(N'2016-01-03 20:41:00' AS SmallDateTime), 1, CAST(N'2016-02-24 08:32:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Vendor', N'1', 0, CAST(N'1987-01-28' AS Date), 1, N'192.168.1.2', 1, CAST(N'2016-01-03 20:41:00' AS SmallDateTime), 1, CAST(N'2016-06-10 08:14:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'User test', N'3', 0, CAST(N'2003-01-01' AS Date), 1, N'192.168.1.2', 1, CAST(N'2016-01-03 20:41:00' AS SmallDateTime), 1, CAST(N'2016-06-10 08:15:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'vendor', N'2', 1, CAST(N'0001-01-01' AS Date), 1, N'::1', 0, CAST(N'2016-05-02 02:09:00' AS SmallDateTime), 18, CAST(N'2016-06-12 21:28:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, N'Kotla', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'::1', 0, CAST(N'2016-05-29 13:25:00' AS SmallDateTime), 0, CAST(N'2016-05-29 13:25:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (25, N'Staff', N'1', 0, CAST(N'1997-06-16' AS Date), 1, N'::1', 1, CAST(N'2016-06-10 08:22:00' AS SmallDateTime), 1, CAST(N'2016-06-10 08:22:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1024, N'User 100', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-06-12 23:44:00' AS SmallDateTime), 0, CAST(N'2016-06-12 23:44:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1025, N'Satya', N'K', 1, CAST(N'1984-01-04' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-06-16 07:55:00' AS SmallDateTime), 1025, CAST(N'2016-06-16 08:13:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1026, N'test', N'user', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-06-17 18:55:00' AS SmallDateTime), 0, CAST(N'2016-06-17 18:55:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1027, N'Shaik', N'Subhani', 0, CAST(N'2016-06-08' AS Date), 1, N'183.82.148.140', 1, CAST(N'2016-06-17 22:33:00' AS SmallDateTime), 1, CAST(N'2016-06-17 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1028, N'Suresh', N'Amara', 0, CAST(N'2016-06-15' AS Date), 1, N'45.121.114.207', 0, CAST(N'2016-06-18 14:33:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:53:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1030, N'Satay', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-06-26 02:57:00' AS SmallDateTime), 0, CAST(N'2016-06-26 02:57:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1031, N'Shaikmsubha', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.19.5', 0, CAST(N'2016-06-26 03:56:00' AS SmallDateTime), 0, CAST(N'2016-06-26 03:56:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1033, N'Test user', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'::1', 0, CAST(N'2016-07-05 18:14:00' AS SmallDateTime), 0, CAST(N'2016-07-05 18:14:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1034, N'Test', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'::1', 0, CAST(N'2016-07-08 20:14:00' AS SmallDateTime), 0, CAST(N'2016-07-08 20:14:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1035, N'user', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'::1', 0, CAST(N'2016-07-08 20:31:00' AS SmallDateTime), 0, CAST(N'2016-07-08 20:31:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1036, N'test', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-07-09 15:46:00' AS SmallDateTime), 0, CAST(N'2016-07-09 15:46:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1037, N'ures', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-07-09 15:47:00' AS SmallDateTime), 0, CAST(N'2016-07-09 15:47:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1038, N'pp', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-07-09 15:48:00' AS SmallDateTime), 0, CAST(N'2016-07-09 15:48:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1040, N'test', N'79', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-07-10 09:41:00' AS SmallDateTime), 0, CAST(N'2016-07-10 09:41:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1041, N'shaik', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.19.5', 0, CAST(N'2016-07-10 15:28:00' AS SmallDateTime), 0, CAST(N'2016-07-10 15:28:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1042, N'Shaik', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.19.5', 0, CAST(N'2016-07-10 15:41:00' AS SmallDateTime), 0, CAST(N'2016-07-10 15:41:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1043, N'jasdhakj', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'::1', 0, CAST(N'2016-07-10 21:19:00' AS SmallDateTime), 0, CAST(N'2016-07-10 21:19:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'admin@gmail.com', N'9999999999', N'704E8810D5608A2C4EA8D89CD9C43462', NULL, 0, 0, 1, 1, 1, CAST(N'2013-10-09 12:59:00' AS SmallDateTime), 1, CAST(N'2014-01-03 15:37:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'vendor1@gmail.com', N'9999999992', N'62E2DB77DE41AA9D431D7C9C2E96A799', CAST(N'2016-02-20 13:16:04.790' AS DateTime), 0, 0, 2, 1, 1, CAST(N'2013-10-09 18:46:00' AS SmallDateTime), 1, CAST(N'2016-06-10 08:14:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'user3@gmail.com', N'9999999993', N'637C22F6CB36A5F9293484151E55CC8F', NULL, 0, 0, 3, 1, 1, CAST(N'2013-10-10 11:40:00' AS SmallDateTime), 1, CAST(N'2016-06-10 08:15:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'vendor2@gmail.com', N'9999999995', N'23B947F6B4FA69B5105C8F4BC517B8DA', NULL, 0, 0, 2, 1, 0, CAST(N'2016-05-02 02:09:00' AS SmallDateTime), 0, CAST(N'2016-05-02 02:09:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, N'Kotla@mail.com', N'9234879234', N'38CFF52D536AA9A3A023C7EF109A7E74', NULL, 1, 0, 3, 5, 0, CAST(N'2016-05-29 13:25:00' AS SmallDateTime), 0, CAST(N'2016-05-29 13:25:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (25, N'staff1@mail.com', N'8347923782', N'F3E1F3F757DAE0F7A7EEA461755DA335', NULL, 1, 0, 101, 1, 1, CAST(N'2016-06-10 08:22:00' AS SmallDateTime), 1, CAST(N'2016-06-10 08:22:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1024, N'user100@mail.com', N'912391239', N'38CFF52D536AA9A3A023C7EF109A7E74', NULL, 1, 0, 3, 0, 0, CAST(N'2016-06-12 23:44:00' AS SmallDateTime), 0, CAST(N'2016-06-12 23:44:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1025, N'user2015@mail.com', N'8276236723', N'6861C858B8BA4404C02C69811A4269E9', NULL, 0, 0, 2, 1, 0, CAST(N'2016-06-16 07:55:00' AS SmallDateTime), 0, CAST(N'2016-06-16 07:55:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1026, N'user123@mail.com', N'9387923789', N'D7851337B69A53982B1E055910FE9E8B', NULL, 0, 0, 3, 1, 0, CAST(N'2016-06-17 18:55:00' AS SmallDateTime), 0, CAST(N'2016-06-17 18:55:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1027, N'shaikmsubhani@gmail.com', N'9949047979', N'D593F97FFC16BE7E8A41232C1746B21C', NULL, 1, 1, 101, 1, 1, CAST(N'2016-06-17 22:33:00' AS SmallDateTime), 1, CAST(N'2016-06-17 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1028, N'Suresh_amara@yahoo.com', N'1234512345', N'CB28958435ABEBE5810DCFB767703C11', NULL, 0, 0, 2, 1, 0, CAST(N'2016-06-18 14:33:00' AS SmallDateTime), 1, CAST(N'2016-06-18 16:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1030, N'user1030@mail.com', N'234789234', N'543B2144B1BF4BA952A36CCA728C3CE4', NULL, 1, 0, 3, 5, 0, CAST(N'2016-06-26 02:57:00' AS SmallDateTime), 0, CAST(N'2016-06-26 02:57:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1031, N'Shaikmsubhani@gmail.com', N'778787778', N'FDB725A50E1AC8022EF26A9C5561314C', NULL, 1, 0, 3, 5, 0, CAST(N'2016-06-26 03:56:00' AS SmallDateTime), 0, CAST(N'2016-06-26 03:56:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1033, N'testuser90@mail.com', N'9090909090', N'5144CE3D768C6D03F540C9B658A45A7F', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-05 18:14:00' AS SmallDateTime), 0, CAST(N'2016-07-05 18:14:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1034, N'user455@mail.com', N'7834568734', N'38A85543922870A6C6046C04F8121D02', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-08 20:14:00' AS SmallDateTime), 0, CAST(N'2016-07-08 20:14:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1035, N'user8910@mail.com', N'8728347284', N'DBEC9405FF29DEEB24136E96CD4C6EF6', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-08 20:31:00' AS SmallDateTime), 0, CAST(N'2016-07-08 20:31:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1036, N'useri@mail.com', N'9234872934', N'1A4A733A61EFE75DBC535D33D9ECECD9', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-09 15:46:00' AS SmallDateTime), 0, CAST(N'2016-07-09 15:46:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1037, N'SDFSDF@MAIL.COM', N'2384728934', N'D8DA14512A0825B6CA3B9C5F3C0703F4', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-09 15:47:00' AS SmallDateTime), 0, CAST(N'2016-07-09 15:47:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1038, N'pp@mail.com', N'3487349579', N'F4223C5CC697AB0C7FD3EC44EB1B355D', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-09 15:48:00' AS SmallDateTime), 0, CAST(N'2016-07-09 15:48:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1040, N'satyasai.kc@gmail.com', N'8234723947', N'A2759D1DBB477049670FDF74C70182E4', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-10 09:41:00' AS SmallDateTime), 0, CAST(N'2016-07-10 09:41:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1041, N'msubhani_urs@hotmail.com', N'9490959786', N'6F3529C8F82C8923B717DEDB0A93F1A5', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-10 15:28:00' AS SmallDateTime), 0, CAST(N'2016-07-10 15:28:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1042, N'subhani_20@yahoo.com', N'9490959786', N'37B615A64A44EB5605E2FF2141052CB9', NULL, 1, 0, 3, 1, 0, CAST(N'2016-07-10 15:41:00' AS SmallDateTime), 0, CAST(N'2016-07-10 15:41:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1043, N'tyads@asd.com', N'3472834097', N'806F2945C8ABEA54D17024506C283A82', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-10 21:19:00' AS SmallDateTime), 0, CAST(N'2016-07-10 21:19:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[VendorInventory] ON 

GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 2, 8, N'&lt;p&gt;Diakin^ blue star 0 general&lt;/p&gt;', N'http://google.com', 1, CAST(200 AS Decimal(8, 0)), NULL, 1, 2, CAST(N'2016-05-09 00:00:00.000' AS DateTime), 1, CAST(N'2016-06-11 08:34:21.730' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 2, 5, N'hello disco', N'http://localhost:41369/ViewInventory', 1, CAST(245 AS Decimal(8, 0)), NULL, 1, 2, CAST(N'2016-06-09 08:20:20.897' AS DateTime), 2, CAST(N'2016-06-11 08:30:19.933' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 2, 11, N'hello', N'http://google.com', 1, CAST(320 AS Decimal(8, 0)), NULL, 1, 2, CAST(N'2016-06-10 07:45:21.780' AS DateTime), 2, CAST(N'2016-06-10 07:45:21.780' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 2, 9, N'hello', N'', 1, CAST(15000 AS Decimal(8, 0)), NULL, 1, 2, CAST(N'2016-06-11 08:47:31.970' AS DateTime), 2, CAST(N'2016-06-11 08:52:21.920' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10012, 18, 5, N'hello disco', N'', 1, CAST(1200 AS Decimal(8, 0)), NULL, 1, 18, CAST(N'2016-06-12 23:42:45.143' AS DateTime), 18, CAST(N'2016-06-12 23:42:45.143' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10013, 1025, 8, N'hello sign boards', N'http://google.com', 1, CAST(20 AS Decimal(8, 0)), 6, 1, 1025, CAST(N'2016-06-16 08:29:58.580' AS DateTime), 1025, CAST(N'2016-06-16 08:29:58.580' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10014, 1025, 10, N'hi laser', N'', 1, CAST(30 AS Decimal(8, 0)), NULL, 1, 1025, CAST(N'2016-06-16 22:40:56.483' AS DateTime), 1025, CAST(N'2016-06-16 22:40:56.483' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10015, 1028, 3, N'new description 1 4 yt&lt;br&gt;', N'google.com', 1, CAST(20000 AS Decimal(8, 0)), 15, 1, 1028, CAST(N'2016-06-18 14:53:03.840' AS DateTime), 1, CAST(N'2016-06-18 16:08:24.623' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[VendorInventory] OFF
GO
ALTER TABLE [dbo].[BannerAd] ADD  CONSTRAINT [DF_BannerAd_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[BannerAd] ADD  CONSTRAINT [DF_BannerAd_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BannerAd] ADD  CONSTRAINT [DF_BannerAd_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[SMSLog] ADD  CONSTRAINT [DF_SMSLog_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BannerAd]  WITH CHECK ADD  CONSTRAINT [FK_BannerAd_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[BannerAd] CHECK CONSTRAINT [FK_BannerAd_Users]
GO
ALTER TABLE [dbo].[BannerAd]  WITH CHECK ADD  CONSTRAINT [FK_BannerAd_VendorInventory] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[VendorInventory] ([InventoryID])
GO
ALTER TABLE [dbo].[BannerAd] CHECK CONSTRAINT [FK_BannerAd_VendorInventory]
GO
ALTER TABLE [dbo].[BusinessBranchDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessBranchDetails_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[BusinessBranchDetails] CHECK CONSTRAINT [FK_BusinessBranchDetails_City]
GO
ALTER TABLE [dbo].[BusinessBranchDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessBranchDetails_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[BusinessBranchDetails] CHECK CONSTRAINT [FK_BusinessBranchDetails_Users]
GO
ALTER TABLE [dbo].[BusinessDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessDetails_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[BusinessDetails] CHECK CONSTRAINT [FK_BusinessDetails_City]
GO
ALTER TABLE [dbo].[BusinessDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessDetails_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[BusinessDetails] CHECK CONSTRAINT [FK_BusinessDetails_Users]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_MainCategory] FOREIGN KEY([MainCategoryID])
REFERENCES [dbo].[MainCategory] ([MainCategoryID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_MainCategory]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[EmailQueries]  WITH CHECK ADD  CONSTRAINT [FK_EmailQueries_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[EmailQueries] CHECK CONSTRAINT [FK_EmailQueries_Users]
GO
ALTER TABLE [dbo].[Enquiry]  WITH CHECK ADD  CONSTRAINT [FK_Enquiry_EnquiryStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[EnquiryStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Enquiry] CHECK CONSTRAINT [FK_Enquiry_EnquiryStatus]
GO
ALTER TABLE [dbo].[Enquiry]  WITH CHECK ADD  CONSTRAINT [FK_Enquiry_ProductCatalog] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductCatalog] ([ProductID])
GO
ALTER TABLE [dbo].[Enquiry] CHECK CONSTRAINT [FK_Enquiry_ProductCatalog]
GO
ALTER TABLE [dbo].[Enquiry]  WITH CHECK ADD  CONSTRAINT [FK_Enquiry_UnitofMeasurement] FOREIGN KEY([UnitID])
REFERENCES [dbo].[UnitofMeasurement] ([UnitID])
GO
ALTER TABLE [dbo].[Enquiry] CHECK CONSTRAINT [FK_Enquiry_UnitofMeasurement]
GO
ALTER TABLE [dbo].[Enquiry]  WITH CHECK ADD  CONSTRAINT [FK_Enquiry_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Enquiry] CHECK CONSTRAINT [FK_Enquiry_Users]
GO
ALTER TABLE [dbo].[EnquiryLog]  WITH CHECK ADD  CONSTRAINT [FK_EnquiryLog_Enquiry] FOREIGN KEY([EnquiryID])
REFERENCES [dbo].[Enquiry] ([EnquiryID])
GO
ALTER TABLE [dbo].[EnquiryLog] CHECK CONSTRAINT [FK_EnquiryLog_Enquiry]
GO
ALTER TABLE [dbo].[EnquiryLog]  WITH CHECK ADD  CONSTRAINT [FK_EnquiryLog_Quotation] FOREIGN KEY([QuotationID])
REFERENCES [dbo].[Quotation] ([QuotationID])
GO
ALTER TABLE [dbo].[EnquiryLog] CHECK CONSTRAINT [FK_EnquiryLog_Quotation]
GO
ALTER TABLE [dbo].[EnquiryLog]  WITH CHECK ADD  CONSTRAINT [FK_EnquiryLog_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[EnquiryLog] CHECK CONSTRAINT [FK_EnquiryLog_Users]
GO
ALTER TABLE [dbo].[LoginLog]  WITH CHECK ADD  CONSTRAINT [FK_LoginLog_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[LoginLog] CHECK CONSTRAINT [FK_LoginLog_Users]
GO
ALTER TABLE [dbo].[PriceManagement]  WITH CHECK ADD  CONSTRAINT [FK_PriceManagement_PlanFeature] FOREIGN KEY([PlanFeatureID])
REFERENCES [dbo].[PlanFeature] ([PlanFeatureID])
GO
ALTER TABLE [dbo].[PriceManagement] CHECK CONSTRAINT [FK_PriceManagement_PlanFeature]
GO
ALTER TABLE [dbo].[PriceManagement]  WITH CHECK ADD  CONSTRAINT [FK_PriceManagement_PricePlan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[PricePlan] ([PlanID])
GO
ALTER TABLE [dbo].[PriceManagement] CHECK CONSTRAINT [FK_PriceManagement_PricePlan]
GO
ALTER TABLE [dbo].[ProductCatalog]  WITH CHECK ADD  CONSTRAINT [FK_ProductCatalog_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[ProductCatalog] CHECK CONSTRAINT [FK_ProductCatalog_Category]
GO
ALTER TABLE [dbo].[ProductCatalog]  WITH CHECK ADD  CONSTRAINT [FK_ProductCatalog_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[ProductCatalog] CHECK CONSTRAINT [FK_ProductCatalog_Country]
GO
ALTER TABLE [dbo].[ProductCatalog]  WITH CHECK ADD  CONSTRAINT [FK_ProductCatalog_SubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[SubCategory] ([SubCategoryID])
GO
ALTER TABLE [dbo].[ProductCatalog] CHECK CONSTRAINT [FK_ProductCatalog_SubCategory]
GO
ALTER TABLE [dbo].[Quotation]  WITH CHECK ADD  CONSTRAINT [FK_Quotation_Enquiry] FOREIGN KEY([EnquiryID])
REFERENCES [dbo].[Enquiry] ([EnquiryID])
GO
ALTER TABLE [dbo].[Quotation] CHECK CONSTRAINT [FK_Quotation_Enquiry]
GO
ALTER TABLE [dbo].[Quotation]  WITH CHECK ADD  CONSTRAINT [FK_Quotation_EnquiryStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[EnquiryStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Quotation] CHECK CONSTRAINT [FK_Quotation_EnquiryStatus]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_BusinessDetails] FOREIGN KEY([UserID])
REFERENCES [dbo].[BusinessDetails] ([UserID])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_BusinessDetails]
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_PricePlan] FOREIGN KEY([PlanID])
REFERENCES [dbo].[PricePlan] ([PlanID])
GO
ALTER TABLE [dbo].[Subscription] CHECK CONSTRAINT [FK_Subscription_PricePlan]
GO
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_Country]
GO
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[VendorInventory]  WITH CHECK ADD  CONSTRAINT [FK_VendorInventory_ProductCatalog] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductCatalog] ([ProductID])
GO
ALTER TABLE [dbo].[VendorInventory] CHECK CONSTRAINT [FK_VendorInventory_ProductCatalog]
GO
ALTER TABLE [dbo].[VendorInventory]  WITH CHECK ADD  CONSTRAINT [FK_VendorInventory_UnitofMeasurement] FOREIGN KEY([UnitID])
REFERENCES [dbo].[UnitofMeasurement] ([UnitID])
GO
ALTER TABLE [dbo].[VendorInventory] CHECK CONSTRAINT [FK_VendorInventory_UnitofMeasurement]
GO
ALTER TABLE [dbo].[VendorInventory]  WITH CHECK ADD  CONSTRAINT [FK_VendorInventory_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[VendorInventory] CHECK CONSTRAINT [FK_VendorInventory_Users]
GO
/****** Object:  StoredProcedure [dbo].[uspSearchProducts]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Satya
-- Create date: 11/01/2016
-- Modified date: 11/01/2016
-- Modified comments: 
-- Description: Get ProductS list
-- =============================================
--select * from tbl_Product
--exec [uspSearchProducts] 'Mobiles','Mobiles',null,null
--exec [uspSearchProducts] 'None','None','arrow',null
--exec [uspSearchProducts] 'None','None','None',0
CREATE PROCEDURE [dbo].[uspSearchProducts]
(
@CategoryName NVARCHAR(50) = NULL,
@SubCategoryName NVARCHAR(50) = NULL,
@ProductName NVARCHAR(50) = NULL,
@CityID INT = NULL
)

AS
BEGIN

--AUTO DELETE EXPIRED BANNERS FROM BannerAd TABLE
DELETE FROM BannerAd WHERE ExpiryDate > GETDATE() 

IF (@CategoryName IS NULL OR @CategoryName = 'None' OR @CategoryName = 'ALL') SET @CategoryName = NULL
IF (@SubCategoryName IS NULL OR @SubCategoryName = 'None' OR @SubCategoryName = 'ALL') SET @SubCategoryName = NULL
IF (@ProductName IS NULL OR @ProductName = 'None' OR @ProductName = 'ALL') SET @ProductName = NULL
IF (@CityID IS NULL OR @CityID = 0) SET @CityID = NULL
--IF (@FromPrice IS NULL OR @FromPrice = 0) SET @FromPrice = NULL

DECLARE @tempProductIDs VARCHAR(1000), @x XML

SELECT @tempProductIDs = COALESCE(@tempProductIDs + ',', '') + CAST(PC.ProductID  AS VARCHAR(10))
	FROM VendorInventory VI	
	INNER JOIN BusinessDetails BD ON VI.UserID = BD.UserID	
	INNER JOIN ProductCatalog PC ON PC.ProductID = VI.ProductID
	INNER JOIN SubCategory SC ON PC.SubCategoryID = SC.SubCategoryID
	INNER JOIN Category C ON PC.CategoryID = C.CategoryID
	WHERE VI.[Status] = 1 AND VI.ShowProductInSearch = 1 AND
	(@ProductName IS NULL OR (LOWER(PC.ProductName) LIKE '%' + LOWER(@ProductName) + '%' OR 
		LOWER(PC.AliasNames) LIKE '%' + LOWER(@ProductName) + '%'))
	AND (@SubCategoryName IS NULL OR (LOWER(SC.SubCategoryName) LIKE '%' + LOWER(@SubCategoryName) + '%' OR 
			(LOWER(SC.AliasNames) LIKE '%' + LOWER(@SubCategoryName) + '%')))
	AND (@CategoryName IS NULL OR ((LOWER(C.CategoryName) LIKE '%' + LOWER(@CategoryName) + '%') OR 
			LOWER(C.AliasNames) LIKE '%' + LOWER(@CategoryName) + '%'))
	AND BD.CityID = COALESCE(@CityID, BD.CityID)

SELECT @x = CAST('<A>'+ REPLACE(@tempProductIDs,',','</A><A>')+ '</A>' AS XML)

--Resultset1 - Products
SELECT VI.*, BD.*, PC.*, SC.SubCategoryName, C.CategoryName, UOM.UnitName
	FROM VendorInventory VI	
	INNER JOIN BusinessDetails BD ON VI.UserID = BD.UserID
	INNER JOIN ProductCatalog PC ON PC.ProductID = VI.ProductID
	INNER JOIN SubCategory SC ON PC.SubCategoryID = SC.SubCategoryID
	INNER JOIN Category C ON PC.CategoryID = C.CategoryID	
	LEFT JOIN UnitofMeasurement UOM ON VI.UnitID = UOM.UnitID
	WHERE 
	VI.ProductID IN (SELECT t.value('.', 'int') AS inVal FROM @x.nodes('/A') AS x(t))	
	ORDER BY PC.ProductName ASC

END


GO
/****** Object:  StoredProcedure [dbo].[uspSendEnquirytoVendors]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Satya
-- Create date: 16-May-2016
-- Description:	Check if vendor has matching product and send enquiry to vendors
-- =============================================
/*
declare @tmpOutput VARCHAR(30)
EXEC uspSendEnquirytoVendors '1', @tmpOutput OUTPUT
SELECT @tmpOutput
*/
CREATE PROCEDURE [dbo].[uspSendEnquirytoVendors]
(	
	@EnquiryID BIGINT,
	@OutMessage VARCHAR(30) OUTPUT
)
AS
BEGIN
DECLARE @tmpUserIDs VARCHAR(1000), @Index INT = 1, @tmpUserID VARCHAR(10), @ProductID BIGINT, @Continue BIT = 1

BEGIN TRY 
-- Start the transaction..
BEGIN TRANSACTION

	IF @EnquiryID IS NULL OR @EnquiryID = 0
	BEGIN
		SET @OutMessage = 'Failed'
		SET @Continue = 0
	END
	IF NOT EXISTS (SELECT * FROM Enquiry WHERE EnquiryID = @EnquiryID)
	BEGIN
		SET @OutMessage = 'NotFound'
		SET @Continue = 0
	END
	--enquiry to vendors should be done only once
	IF (SELECT StatusID FROM Enquiry WHERE EnquiryID = @EnquiryID) != 1
	BEGIN
		SET @OutMessage = 'Duplicate'
		SET @Continue = 0
	END

	IF @Continue = 1
	BEGIN
	--RETRIEVE PRODUCT USER SEARCHED FOR
	SELECT @ProductID = ProductID FROM Enquiry WHERE EnquiryID = @EnquiryID
	--Update the status of enquiry as admin has approved
	UPDATE Enquiry SET StatusID = 2 WHERE EnquiryID = @EnquiryID
	--Get list of users who have matching product ids
	SELECT @tmpUserIDs = COALESCE(@tmpUserIDs + ',', '') + CONVERT(VARCHAR(10), UserID) 
		FROM VendorInventory WHERE ProductID  = @ProductID AND ShowProductInSearch = 1 AND [Status] = 1
	SET @tmpUserIDs += ','
	
	--Delete existing records if any
	IF EXISTS (SELECT * FROM dbo.EnquiryLog WHERE EnquiryID = @EnquiryID)
		DELETE FROM dbo.EnquiryLog WHERE EnquiryID = @EnquiryID
	IF EXISTS (SELECT * FROM dbo.Quotation WHERE EnquiryID = @EnquiryID)
		DELETE FROM dbo.Quotation WHERE EnquiryID = @EnquiryID

	--Loop through each user
	WHILE CHARINDEX(',', @tmpUserIDs) > 0
	BEGIN
		SET @tmpUserID = SUBSTRING(@tmpUserIDs, 0, CHARINDEX(',',@tmpUserIDs));

		INSERT INTO dbo.Quotation
                         (EnquiryID, CustomerID, VendorID, StatusID, CreatedBy, ModifiedBy)
		VALUES        (@EnquiryID, (SELECT UserID FROM Enquiry WHERE EnquiryID = @EnquiryID),
				@tmpUserID, 2, @tmpUserID, @tmpUserID)

		--Do not insert record as this is not tracked or shown in enquiry history
		/*
		INSERT INTO dbo.EnquiryLog
                    (EnquiryID, UserID, QuotationID, IsParent, IsRead, Content)
		VALUES        (@EnquiryID, (SELECT UserID FROM Enquiry WHERE EnquiryID = @EnquiryID), SCOPE_IDENTITY(), 1, 0, 
				(SELECT ProductSpecification FROM Enquiry WHERE EnquiryID = @EnquiryID))
		*/
		--remove current column from columns csv and proceed to next iteration
		SET @tmpUserIDs = SUBSTRING(@tmpUserIDs, CHARINDEX(',',@tmpUserIDs) + 1, LEN(@tmpUserIDs) - @Index);
	END
	SET @OutMessage = 'Success'
	END
COMMIT TRAN -- Transaction Success!	
--SET @OutMessage = 'NO PAYOUT DONE'
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK TRAN --RollBack in case of Error						
		-- Log exception details 
		PRINT 'Error Message is : '+ ERROR_MESSAGE()
		INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
						ErrorProcedure, ErrorLine, ErrorMessage)
		SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
				ERROR_PROCEDURE(),ERROR_LINE(), ERROR_MESSAGE()
		SET @OutMessage = 'Failed'
END CATCH

END


GO
/****** Object:  StoredProcedure [dbo].[uspSTDAuthenticateUser]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 1-Jul-2013
-- Description:	Authenticate user 
-- =============================================
/*
select * from users
declare @Message varchar(100)
exec uspSTDAuthenticateUser
'9999999999','704E8810D5608A2C4EA8D89CD9C43462','127.0.0.1',@OutMessage = @Message output
print @Message 
*/
CREATE PROCEDURE [dbo].[uspSTDAuthenticateUser]  
(  
	@Username VARCHAR(50),  
	@Password VARCHAR(50),
	@IPAddress VARCHAR(20),
	@OutMessage VARCHAR(30) OUTPUT 
)    
AS  
DECLARE @tmpUserID INT, @tmpLoginStatus TINYINT = 0, @tmpIsNewPassword BIT, @tmpInvalidLoginAttempts TINYINT,
		@tmpIsValidSubscription BIT
--Login_Status = 1 - Succcess
--Login_Status = 2 - Inactive
--Login_Status = 3 - Failed
BEGIN

	--Check user subscription
	declare @Message varchar(100)
	exec uspValidateSubscription @OutMessage = @Message output

	--select * from Users
	--Check if User exists with given username
	IF(Exists(SELECT UserID FROM Users WHERE Email = @Username OR Mobile = @Username))
	BEGIN
		--store user id to log user details
		SELECT @tmpUserID = UserID FROM Users WHERE (Email = @Username OR Mobile = @Username)		
		
		SELECT @tmpInvalidLoginAttempts = InvalidLoginAttempts FROM Users WHERE 
									(Email = @Username OR Mobile = @Username)
		--Check if user exceeded invalid login attempts
		IF(@tmpInvalidLoginAttempts >= 5)
			SET @OutMessage = 'Locked'
		ELSE
		BEGIN	
			--Check if User exists with given username and password
			IF(Exists(SELECT UserID FROM Users WHERE (Email = @Username OR Mobile = @Username) AND ([Password] = @Password)))
			BEGIN			
				IF((SELECT [Status] FROM Users WHERE (Email = @Username OR Mobile = @Username) AND [Password] = @Password) = 0)
				BEGIN
					SET @OutMessage = 'InActive'
					SET @tmpLoginStatus = 2
				END
				ELSE
				BEGIN
					
					--store isnewpassword status to @tmpIsNewPassword
					SET @tmpLoginStatus = 1
					SELECT @tmpIsNewPassword = IsNewPassword FROM Users WHERE (Email = @Username OR Mobile = @Username)
					
					--Subscription validation starts
					--check if user has registered for subscription at least once
					--applicable only for vendors
					IF (SELECT RoleID FROM Users WHERE UserID = @tmpUserID) = 2
					BEGIN
						IF EXISTS (SELECT * FROM Subscription WHERE UserID = @tmpUserID)
						BEGIN
							--indicates user has registered for subscription
							IF EXISTS (SELECT * FROM Subscription WHERE UserID = @tmpUserID AND IsExpired = 0)
								SET @tmpIsValidSubscription = 1
							ELSE
								SET @tmpIsValidSubscription = 0
						END
						ELSE
							SET @tmpIsValidSubscription = 1
					END
					ELSE
						SET @tmpIsValidSubscription = 1
					--Subscription validation ends

					--result set 1 > get user details
					SELECT U.UserID, U.Email, U.Mobile,UD.*, U.PasswordChangedDate, @tmpIsValidSubscription [IsValidSubscription],
						U.IsNewPassword, U.RoleID, R.Screens, U.[Status]						
					FROM Users U INNER JOIN UserDetails UD ON U.UserID = UD.UserID
					 INNER JOIN [Roles] R ON R.RoleID = U.RoleID
					 WHERE (U.Email = @Username OR U.Mobile = @Username) AND (U.Password = @Password)
					
					--result set 2 > get all screens					 
					SELECT * FROM Screens					

					 SET @OutMessage = 'Success'
					 
					 --Reset invalid login attempts to 0
					 UPDATE Users SET InvalidLoginAttempts = 0 WHERE (Email = @Username OR Mobile = @Username)
						
					 --Update record only if IsNewPassword is true
					 IF(@tmpIsNewPassword = 1)
					 BEGIN
						UPDATE Users SET IsNewPassword = 0 WHERE (Email = @Username OR Mobile = @Username)
						SET @OutMessage = 'PasswordChanged'
					END
				END
			END
			ELSE	
			BEGIN				
				SET @tmpInvalidLoginAttempts += 1
				IF (SELECT [RoleID] FROM Users WHERE Email = @Username OR Mobile = @Username) != 1
					UPDATE Users SET InvalidLoginAttempts = @tmpInvalidLoginAttempts WHERE 
					(Email = @Username OR Mobile = @Username)
				SET @OutMessage = 'CredentialsIncorrect'
				SET @tmpLoginStatus = 3
			END
		END
	END
	ELSE
	BEGIN
		SET @OutMessage = 'CredentialsIncorrect'
		SET @tmpLoginStatus = 3
	END
END

IF(@tmpUserID IS NOT NULL AND @tmpLoginStatus > 0)
BEGIN
	INSERT INTO [LoginLog]
           (UserID
           ,[LoginDate]
           ,[IPAddress]
           ,[Status])
	     VALUES (@tmpUserID, GETDATE(), @IPAddress, @tmpLoginStatus)

	--Result set 3
	SELECT * FROM LoginLog WHERE LoginLogID = SCOPE_IDENTITY()
END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDChangePassword]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 2-Jul-2013
-- Modified date: <>
-- Modified comments: <>
-- Description:	<SP to Change Password>
-- =============================================
--select * from tbl_users
--BD588F5F88EAA29A0E4F620B03800765
CREATE PROCEDURE [dbo].[uspSTDChangePassword]
(
    @UserID INT = NULL, -- userid or email is required
    @Email VARCHAR(50) = NULL, -- userid or email is required
    @OldPassword VARCHAR(50),
	@NewPassword VARCHAR(50),
	@OutMessage VARCHAR(30) OUTPUT 
	)
AS

BEGIN

DECLARE @tempOldPassword VARCHAR(50), @tmpUserID INT = 0

IF(@UserID IS NOT NULL)
	SET @tmpUserID = @UserID
IF(@Email IS NOT NULL)
	SELECT @tmpUserID = [UserID] FROM Users WHERE (Email = @Email)

IF @tmpUserID > 0
BEGIN
	SELECT @tempOldPassword = [Password] FROM Users WHERE ([UserID] = @tmpUserID)	

	IF (@tempOldPassword = @OldPassword)
        BEGIN
		UPDATE Users SET
			  [Password] = @NewPassword
			  ,PasswordChangedDate = GETDATE()
			  ,InvalidLoginAttempts = 0
		 WHERE      (UserID = @UserID OR Email = @Email)
        
        SET @OutMessage = 'PasswordChanged'        
        END
	ELSE
		SET @OutMessage = 'OldPasswordIncorrect'
END
ELSE
        SET @OutMessage = 'NotFound'
END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDDeleteData]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 28-Jun-2013
-- Modified date: <>
-- Modified comments: <>
-- Description:	<Delete data based on dynamic table name and columns>
-- =============================================
/*
declare @Message NVARCHAR(10)
exec uspDeleteData 'PopularRecharges', 'PopularRechargeID','1', @OutMessage = @Message output
print @Message
*/
CREATE PROCEDURE [dbo].[uspSTDDeleteData]
(
@TableName VARCHAR(30),
@ColumnName VARCHAR(30) = NULL,
@ColumnValue VARCHAR(50) = NULL,
@OutMessage VARCHAR(30) OUTPUT 
)
AS
BEGIN

SET @OutMessage = 'Delete'

DECLARE @Query NVARCHAR(1000) = ''

IF((@ColumnName IS NOT NULL) AND (@ColumnValue IS NOT NULL))
	BEGIN
		SET @Query=
		'IF(Exists(SELECT * FROM [' + @TableName + '] WHERE [' + @ColumnName + '] = ''' + @ColumnValue + '''))
		BEGIN
			DELETE FROM [' + @TableName + '] WHERE [' + @ColumnName + '] = ''' + @ColumnValue + '''
			 SELECT @Message = ''Delete''
			 END
		 ELSE
			SELECT @Message = ''NotFound'''
	END
ELSE
	BEGIN
		SET @Query=
		'DELETE FROM [' + @TableName + ']
		 SELECT @Message = ''Delete'''
	END	
	
print @Query

EXEC SP_EXECUTESQL @Query, N'@Message NVARCHAR(10) OUT', @OutMessage OUT

END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDGetData]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 17-Jul-2013
-- Description:	GET data in table based on dynamic table name, column names and column values
-- =============================================
/*

declare @Message NVARCHAR(10)
exec uspGetData
'CommissionMarkups',
'Membership,Role,CreatedBy',
'%4%,4,0',null,
@OutMessage = @Message output
print @Message
*/
CREATE PROCEDURE [dbo].[uspSTDGetData]
(
@TableName VARCHAR(30),
@ColumnNames VARCHAR(1000) = NULL, 
@ColumnValues VARCHAR(1000) = NULL,
@ColumnsToRetrieve VARCHAR(200) = NULL,
@OutMessage VARCHAR(30) = 'Success' OUTPUT 
)
AS
BEGIN
IF ((@ColumnNames IS NOT NULL) AND (@ColumnValues IS NOT NULL))
BEGIN
DECLARE @Index INT = 1, @Condition NVARCHAR(500) = '', @tmpColumnName NVARCHAR(50) = '', 
		@tmpColumnNames NVARCHAR(1000) = @ColumnNames + ',', -- add a comma in the end to make the list loopable
		@tmpColumnValues NVARCHAR(1000) = @ColumnValues + ',',-- add a comma in the end to make the list loopable
		@GetQuery NVARCHAR(2000) = '';
		WHILE CHARINDEX(',', @tmpColumnNames) > 0
BEGIN
	--get column name in current index   
	IF ((@ColumnNames IS NOT NULL) AND (@ColumnValues IS NOT NULL))
	BEGIN
		SET @tmpColumnName = SUBSTRING(@tmpColumnNames, 0, CHARINDEX(',',@tmpColumnNames));
		IF (@GetQuery != '')		
			SET @GetQuery += ' AND '
		IF(CHARINDEX('%', SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues)))=0)		
			SET @GetQuery += 'T.[' + @tmpColumnName + '] = ''' + SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues))+'''';		
		ELSE        
			SET @GetQuery += 'T.[' + @tmpColumnName + '] like ''' + SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues))+'''';        	
	END
   --remove current column from columns csv and proceed to next iteration
   SET @tmpColumnNames = SUBSTRING(@tmpColumnNames, CHARINDEX(',',@tmpColumnNames) + 1, LEN(@tmpColumnNames) - @Index);
   SET @tmpColumnValues = SUBSTRING(@tmpColumnValues, CHARINDEX(',',@tmpColumnValues) + 1, LEN(@tmpColumnValues) - @Index);
END
END
DECLARE @QUERY NVARCHAR(3000) = ''
DECLARE @AdditionalColumns NVARCHAR(250) = 
--  add cratedby name, modified by name columns to query
' ,(SELECT U.FirstName + '' '' + U.LastName FROM UserDetails U WHERE U.UserID = T.CreatedBy) [CreatedBy1], ' + 
' (SELECT U.FirstName + '' '' + U.LastName FROM UserDetails U WHERE U.UserID = T.ModifiedBy) [ModifiedBy1] '

IF (@ColumnsToRetrieve IS NOT NULL)
BEGIN
	IF ((@ColumnNames IS NOT NULL) AND (@ColumnValues IS NOT NULL))
	BEGIN
		SET @QUERY='SELECT '+ @ColumnsToRetrieve + @AdditionalColumns + ', T.CreatedDate, T.ModifiedDate FROM ' + @TableName + ' T WHERE ' + @GetQuery
	END
	ELSE
	BEGIN
		SET @QUERY='SELECT ' + @ColumnsToRetrieve + @AdditionalColumns + ', T.CreatedDate, T.ModifiedDate FROM ' + @TableName + ' T'
	END
END

IF(@ColumnsToRetrieve IS NULL)
BEGIN
	IF ((@ColumnNames IS NOT NULL) AND (@ColumnValues IS NOT NULL))
	BEGIN
		SET @QUERY = 'SELECT T.*' + @AdditionalColumns + 'FROM ' + @TableName + ' T WHERE ' + @GetQuery
	END
	ELSE
	BEGIN
		SET @QUERY = 'SELECT  T.*' + @AdditionalColumns + 'FROM ' + @TableName + ' T'
	END
END
--select(@QUERY)
PRINT @Query
EXEC SP_EXECUTESQL @Query, N'@Message NVARCHAR(10) OUT', @OutMessage OUT
END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDGetDataFromMultipleTables]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 03-Jan-2016
-- Description:	Get data from multiple tables
/* CHANGE TRACK
14-May-2016 > Satya > Added additional filters, added new param @EnquiryLabel
15-May-2016 > Satya > Added additional columns
*/
-- =============================================
/*
exec uspGetDataFromMultipleTables
'GetCommMarkup',null,null,null,null,null,null,null,58,null,null,1,
null,null,null
*/
CREATE PROCEDURE [dbo].[uspSTDGetDataFromMultipleTables]
	-- Add the parameters for the stored procedure here
	@TxnType VARCHAR(120),
	@CategoryID INT = NULL,
	@CountryID INT = NULL,
	@CustomerID INT = NULL,
	@Email VARCHAR(50) = NULL,
	@EnquiryID BIGINT = NULL,
	@EnquiryLabel VARCHAR(50) = NULL,
	@EnquiryStatusID TINYINT = NULL,
	@InventoryID BIGINT = NULL,	
	@Mobile VARCHAR(15) = NULL,
	@Password VARCHAR(50) = NULL,
	@ProductID BIGINT = NULL,	
	@ProductName NVARCHAR(50) = NULL,
	@QuotationID INT = NULL,
	@Role VARCHAR(20) = NULL,
	@SubCategoryID INT = NULL,
	@SubscriptionID INT = NULL,
	@Status TINYINT = NULL,
	@ThreadID BIGINT = NULL,
	@UserID INT = NULL,
	@FromDate DATE = NULL,
	@ToDate DATE = NULL,
	@Username VARCHAR(50) = NULL,	
	@VendorID INT = NULL,
	@BannerAdID INT = NULL,
	@Output VARCHAR(150) = 'Success' OUTPUT
AS
BEGIN

DECLARE @x XML, @y XML 
DECLARE @tempProductIDs VARCHAR(1000), @tempOrderIDs VARCHAR(1000)     
	
	IF(@TxnType = 'BannerAd')
	BEGIN
		SELECT BA.*, U.*, UD.*,IV.*,
		(SELECT USD.FirstName + ' ' + USD.LastName FROM UserDetails USD WHERE USD.UserID = U.CreatedBy) [CreatedBy1],  
		(SELECT USD.FirstName + ' ' + USD.LastName FROM UserDetails USD WHERE USD.UserID = U.ModifiedBy) [ModifiedBy1] 
		FROM BannerAd BA 
		INNER JOIN [Users] U ON BA.UserID = U.UserID
		INNER JOIN UserDetails UD ON U.UserID = UD.UserID 
		INNER JOIN VendorInventory IV ON U.UserID = IV.UserID 
		WHERE
			BA.BannerAdID = COALESCE(@BannerAdId, BA.BannerAdID) AND
			BA.[Status] = COALESCE(@Status, BA.[Status])
	END

	ELSE IF(@TxnType = 'BusinessBranchDetails')
	BEGIN
		SELECT B.*, C.CityName,
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = B.CreatedBy) [CreatedBy1],  
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = B.ModifiedBy) [ModifiedBy1] 
		FROM BusinessBranchDetails B 
			INNER JOIN City C ON B.CityID = C.CityID
		WHERE B.UserID = COALESCE(@UserID, B.UserID)
	END
	
	ELSE IF(@TxnType = 'BusinessDetails')
	BEGIN
		SELECT B.*, C.CityName,
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = B.CreatedBy) [CreatedBy1],  
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = B.ModifiedBy) [ModifiedBy1] 
		FROM BusinessDetails B 
			INNER JOIN City C ON B.CityID = C.CityID
		WHERE B.UserID = COALESCE(@UserID, B.UserID)
	END
	
	ELSE IF(@TxnType = 'Category')
	BEGIN
		SELECT C.*, MC.MainCategoryName,
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = C.CreatedBy) [CreatedBy1],  
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = C.ModifiedBy) [ModifiedBy1] 
		FROM Category C
			INNER JOIN MainCategory MC ON MC.MainCategoryID = C.MainCategoryID
	END

	ELSE IF(@TxnType = 'DeleteEnquiry')
	BEGIN
		BEGIN TRY
		BEGIN TRANSACTION	
			DELETE FROM EnquiryLog WHERE EnquiryID = @EnquiryID
			DELETE FROM Quotation WHERE EnquiryID = @EnquiryID
			DELETE FROM Enquiry WHERE EnquiryID = @EnquiryID
			SELECT 'SUCCESS' [Status]
			COMMIT TRAN -- Transaction Success!		
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN
			INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
									ErrorProcedure, ErrorLine, ErrorMessage)
					SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
							'uspSTDGetDataFromMultipleTables-DeleteEnquiry',ERROR_LINE(), ERROR_MESSAGE()
			SELECT 'FAILED' [Status]
		END CATCH
	END

	ELSE IF(@TxnType = 'DeleteQuotation')
	BEGIN
		BEGIN TRY
		BEGIN TRANSACTION			
			DELETE FROM EnquiryLog WHERE EnquiryID = @EnquiryID
			DELETE FROM Quotation WHERE EnquiryID = @EnquiryID			
			SELECT 'SUCCESS' [Status]
			COMMIT TRAN -- Transaction Success!		
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN
			INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
									ErrorProcedure, ErrorLine, ErrorMessage)
					SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
							'uspSTDGetDataFromMultipleTables-DeleteQuotation',ERROR_LINE(), ERROR_MESSAGE()
			SELECT 'FAILED' [Status]
		END CATCH
	END
	
	ELSE IF(@TxnType = 'DeleteUser')
	BEGIN
		BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM BusinessBranchDetails WHERE UserID = @UserID
			DELETE FROM BusinessDetails WHERE UserID = @UserID
			DELETE FROM UserDetails WHERE UserID = @UserID
			DELETE FROM UserBalanceLog WHERE UserID = @UserID
			DELETE FROM Users WHERE UserID = @UserID
			SELECT 'SUCCESS' [Status]
			COMMIT TRAN -- Transaction Success!	
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN
			INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
									ErrorProcedure, ErrorLine, ErrorMessage)
					SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
							'uspSTDGetDataFromMultipleTables-DeleteUser',ERROR_LINE(), ERROR_MESSAGE()
			SELECT 'FAILED' [Status]
		END CATCH
	END

	ELSE IF(@TxnType = 'DeleteProduct')
	BEGIN
		BEGIN TRY
		BEGIN TRANSACTION
			IF(Exists(SELECT InventoryID FROM VendorInventory WHERE ProductID = @ProductID))
				SELECT 'FAILED' [Status]
			ELSE
			BEGIN				
				DELETE FROM ProductCatalog WHERE ProductID = @ProductID
				SELECT 'SUCCESS' [Status]
			END		
			COMMIT TRAN -- Transaction Success!		
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN
			INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
									ErrorProcedure, ErrorLine, ErrorMessage)
					SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
							'uspSTDGetDataFromMultipleTables-DeleteProduct',ERROR_LINE(), ERROR_MESSAGE()
			SELECT 'FAILED' [Status]
		END CATCH
	END

	ELSE IF(@TxnType = 'EmailQueries')
	BEGIN
		SELECT EQ.*, UD.FirstName, UD.LastName FROM EmailQueries EQ
		INNER JOIN UserDetails UD ON EQ.UserID = UD.UserID
		WHERE EQ.ThreadID = COALESCE(@ThreadID, EQ.ThreadID)
			AND EQ.UserID = COALESCE(@UserID, EQ.UserID)
	END

	ELSE IF(@TxnType = 'Enquiry')
	BEGIN
		SELECT E.*, U.RoleID, U.Email, U.Mobile, UD.FirstName, UD.LastName, UD.CountryID,
				ES.StatusName, ES.StatusDescription, PC.ProductName [ProductName], PC.AliasNames,
				UOM.UnitName
		FROM Enquiry E
			INNER JOIN EnquiryStatus ES ON ES.StatusID = E.StatusID			
			LEFT JOIN ProductCatalog PC ON PC.ProductID = E.ProductID			
			INNER JOIN Users U ON U.UserID = E.UserID
			INNER JOIN UserDetails UD ON UD.UserID = E.UserID		
			INNER JOIN UnitofMeasurement UOM ON UOM.UnitID = E.UnitID
			WHERE E.UserID = COALESCE(@UserID, E.UserID)
			AND E.EnquiryID = COALESCE(@EnquiryID, E.EnquiryID)
			AND E.EnquiryLabel = COALESCE(@EnquiryLabel, E.EnquiryLabel)
			AND E.StatusID = COALESCE(@EnquiryStatusID, E.StatusID)
			AND E.CreatedDate BETWEEN COALESCE(@FromDate,E.CreatedDate) AND COALESCE(@ToDate,GETDATE())
	END
	ELSE IF(@TxnType = 'EnquiryLog')
	BEGIN
		SELECT EL.*, UD.FirstName, UD.LastName,
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = EL.UserID) [CreatedBy1]
		FROM EnquiryLog EL
		INNER JOIN UserDetails UD ON EL.UserID = UD.UserID
		INNER JOIN Enquiry E ON EL.EnquiryID = E.EnquiryID
		WHERE EL.QuotationID = COALESCE(@QuotationID, EL.QuotationID)
			AND E.EnquiryLabel = COALESCE(@EnquiryLabel, E.EnquiryLabel)
			AND EL.UserID = COALESCE(@UserID, EL.UserID)
	END

	ELSE IF(@TxnType='ForgotPassword')
	BEGIN
		IF(EXISTS(SELECT UserID FROM dbo.Users WHERE Email=@Username)) 
		BEGIN
		SET @UserID=(SELECT UserID FROM dbo.Users WHERE Email=@Username)
		   UPDATE dbo.Users SET [Password] = @Password, PasswordChangedDate = GETDATE(), 
			InvalidLoginAttempts = 0 WHERE UserID = @UserID
			SET @Output = 'Success'
		END	
		ELSE
			SET @Output = 'Failed'
    END

	ELSE IF(@TxnType = 'GetUsers')
	BEGIN
		SELECT U.*, UD.*, RO.*,
		(SELECT USD.FirstName + ' ' + USD.LastName FROM UserDetails USD WHERE USD.UserID = U.CreatedBy) [CreatedBy1],  
		(SELECT USD.FirstName + ' ' + USD.LastName FROM UserDetails USD WHERE USD.UserID = U.ModifiedBy) [ModifiedBy1] 
		FROM Users U 
		INNER JOIN [Roles] RO ON U.RoleID = RO.RoleID
		INNER JOIN UserDetails UD ON U.UserID = UD.UserID 
		--LEFT JOIN Referrals R ON U.UserID = R.UserID
		--LEFT JOIN Ranking RA ON R.RankID = RA.RankID
		WHERE U.UserID = COALESCE(@UserID, u.UserID) AND
				((@Role IS NOT NULL AND U.[RoleID] IN 
					(SELECT t.value('.', 'int') AS inVal FROM @x.nodes('/A') AS x(t)))OR 
					(@Role IS NULL AND U.[RoleID] = U.[RoleID])) AND
				U.Email = COALESCE(@Email, u.Email) AND
				U.Mobile = COALESCE(@Mobile, u.Mobile)
	END

	ELSE IF(@TxnType = 'ProductCatalog')
	BEGIN
		SELECT PC.*, SC.SubCategoryName, C.CategoryName, MC.MainCategoryName, MC.MainCategoryID, CO.CountryName, 
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = PC.CreatedBy) [CreatedBy1],  
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = PC.ModifiedBy) [ModifiedBy1] 
		FROM ProductCatalog PC
			INNER JOIN SubCategory SC ON PC.SubCategoryID = SC.SubCategoryID
			INNER JOIN Category C ON PC.CategoryID = C.CategoryID
			INNER JOIN MainCategory MC ON MC.MainCategoryID = C.MainCategoryID
			INNER JOIN Country CO ON PC.CountryID = CO.CountryID
			WHERE 			
			PC.SubCategoryID = COALESCE(@SubCategoryID, PC.SubCategoryID)
			AND PC.CategoryID = COALESCE(@CategoryID, PC.CategoryID)
			AND PC.CountryID = COALESCE(@CountryID, PC.CountryID)		
	END

	ELSE IF(@TxnType = 'Quotation')
	BEGIN
		SELECT Q.*, E.*, E.StatusID [EnquiryStatusID], ES.StatusName, ES.StatusDescription, PC.ProductName [ProductName], PC.AliasNames,
				UOM.UnitName, BD.BusinessName, Q.StatusID [QuotationStatusID], E.CreatedDate [EnquiryCreatedDate],
				(SELECT CityName FROM City C WHERE C.CityID = BD.CityID) [VendorLocation],
			subqry.*,--select latest quote details from vendor			
			(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = Q.CreatedBy) [CreatedBy1],  
			(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = Q.ModifiedBy) [ModifiedBy1] 
		FROM Quotation Q
			INNER JOIN Enquiry E ON Q.EnquiryID = E.EnquiryID			
			INNER JOIN EnquiryStatus ES ON ES.StatusID = Q.StatusID
			LEFT JOIN ProductCatalog PC ON PC.ProductID = E.ProductID
			LEFT JOIN BusinessDetails BD ON Q.VendorID = BD.UserID 
			INNER JOIN UnitofMeasurement UOM ON UOM.UnitID = E.UnitID
			OUTER APPLY(SELECT TOP 1 UnitCost, Discount, TotalCost, DeliveryPeriod FROM EnquiryLog EL 
				WHERE EL.QuotationID = Q.QuotationID  AND EL.UserID = Q.VendorID  ORDER BY  CreatedDate DESC) subqry
			WHERE 
			Q.CustomerID = COALESCE(@CustomerID, Q.CustomerID)
			AND E.EnquiryLabel = COALESCE(@EnquiryLabel, E.EnquiryLabel)
			AND Q.VendorID = COALESCE(@VendorID, Q.VendorID)
			AND Q.EnquiryID = COALESCE(@EnquiryID, Q.EnquiryID)
			AND Q.StatusID = COALESCE(@EnquiryStatusID, Q.StatusID)
			AND Q.CreatedDate BETWEEN COALESCE(@FromDate,Q.CreatedDate) AND COALESCE(@ToDate,GETDATE())
	END

	ELSE IF(@TxnType = 'SubCategory')
	BEGIN
		SELECT SC.*, C.CategoryID, C.CategoryName, C.DisplayOrder as [CDisplayOrder],
			(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = SC.CreatedBy) [CreatedBy1],  
			(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = SC.ModifiedBy) [ModifiedBy1] 
			FROM SubCategory SC 
				LEFT JOIN Category C ON SC.CategoryID = C.CategoryID
		WHERE SC.SubCategoryID = COALESCE(@SubCategoryID, SC.SubCategoryID)
	END

	ELSE IF(@TxnType = 'Subscription')
	BEGIN
		SELECT S.* , 
			(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = S.CreatedBy) [CreatedBy1],  
			(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = S.ModifiedBy) [ModifiedBy1] 
			FROM Subscription S
		WHERE S.SubscriptionID = COALESCE(@SubscriptionID, S.SubscriptionID)
				AND S.UserID = COALESCE(@UserID, S.UserID)
				AND S.IsExpired = COALESCE(@Status, S.IsExpired)
	END

	ELSE IF(@TxnType = 'VendorInventory')
	BEGIN
		SELECT VI.*, PC.*, BD.BusinessName, BD.BusinessType, BD.PAN, BD.Phones, BD.Emails,
		UOM.UnitName, 
		BD.[Address], BD.Pincode, BD.WebsiteURL, SC.SubCategoryName, C.CategoryName, CO.CountryName, 
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = PC.CreatedBy) [CreatedBy1],  
		(SELECT U.FirstName + ' ' + U.LastName FROM UserDetails U WHERE U.UserID = PC.ModifiedBy) [ModifiedBy1] 
		FROM VendorInventory VI
			INNER JOIN BusinessDetails BD ON BD.UserID = VI.UserID
			INNER JOIN ProductCatalog PC ON PC.ProductID = VI.ProductID
			INNER JOIN SubCategory SC ON PC.SubCategoryID = SC.SubCategoryID
			INNER JOIN Category C ON PC.CategoryID = C.CategoryID
			INNER JOIN Country CO ON PC.CountryID = CO.CountryID
			LEFT JOIN UnitofMeasurement UOM ON VI.UnitID = UOM.UnitID
			WHERE 			
			PC.SubCategoryID = COALESCE(@SubCategoryID, PC.SubCategoryID)
			AND PC.CategoryID = COALESCE(@CategoryID, PC.CategoryID)
			AND PC.CountryID = COALESCE(@CountryID, PC.CountryID)		
			AND VI.UserID = COALESCE(@UserID, VI.UserID)		
			AND VI.ProductID = COALESCE(@ProductID, VI.ProductID)
			AND VI.InventoryID = COALESCE(@InventoryID, VI.InventoryID)
			AND (@ProductName IS NULL OR (LOWER(PC.ProductName) LIKE '%' + LOWER(@ProductName) + '%'))
	END
	/******** LOGS ***********/
	ELSE IF(@TxnType='DbErrorLog')
	BEGIN
		SELECT * FROM dbo.DbErrorLog 
		WHERE LogDate BETWEEN COALESCE(@FromDate,LogDate) AND COALESCE(@ToDate,GETDATE())
		ORDER BY LogDate DESC
	END

	ELSE IF(@TxnType='ErrorLog')
	BEGIN
		SELECT * FROM dbo.ErrorLog
		WHERE LogDate BETWEEN COALESCE(@FromDate,LogDate) AND COALESCE(@ToDate,GETDATE())
		ORDER BY LogDate DESC
	END

	ELSE IF(@TxnType='LoginLog')
	BEGIN
		SELECT LL.*,UD.FirstName +' '+UD.LastName as [UserName], U.Email, U.Mobile ,U.[RoleID]
		FROM dbo.LoginLog LL 
		INNER JOIN UserDetails UD ON LL.UserID = UD.UserID
		INNER JOIN Users U ON LL.UserID = U.UserID
		WHERE LoginDate BETWEEN COALESCE(@FromDate,LoginDate) AND COALESCE(@ToDate,GETDATE())
		ORDER BY LL.LoginDate DESC
	END	
	/******** LOGS ***********/
END
GO
/****** Object:  StoredProcedure [dbo].[uspSTDInsertData]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Satya
-- Create date: 29-Jun-2013
-- Modified date: <>
-- Modified comments: <>
-- Description:	<Insert data in to a table based on dynamic table name, column names and column values>
-- =============================================
/*
declare @Message VARCHAR(10),@IdentityOut INT
exec uspInsertData
'RoomAmenities',
'[PropertyId],[RoomTypeId],[AmenitiesDetailId],[CreatedBy],[CreatedDate],[ModifiedBy],[ModifiedDate]',
'2,3,3,1,GETDATE(),1,GETDATE()', @OutMessage = @Message output,@Identity = @IdentityOut output
print @Message print @IdentityOut
*/
CREATE PROCEDURE [dbo].[uspSTDInsertData]
(
@TableName VARCHAR(30),
@ColumnNames VARCHAR(1000),
@ColumnValues VARCHAR(2000),
@UniqueColumns VARCHAR(200) = NULL,
@OutMessage VARCHAR(30) OUTPUT,
@Identity INT = NULL OUTPUT 
)
AS
BEGIN

DECLARE @Index INT = 1, @Condition VARCHAR(500) = '', @tmpColumnName VARCHAR(50) = '', 
		@tmpColumnNames VARCHAR(1000) = @ColumnNames + ',', -- add a comma in the end to make the list loopable
		@tmpColumnValues VARCHAR(1000) = @ColumnValues + ','-- add a comma in the end to make the list loopable
		
--check if at least one column should be unique
IF @UniqueColumns IS NOT NULL
BEGIN
--Loop ColumnNames, ColumnValues and build where condition
WHILE CHARINDEX(',', @tmpColumnNames) > 0
BEGIN
	--get column name in current index
   SET @tmpColumnName = SUBSTRING(@tmpColumnNames, 0, CHARINDEX(',',@tmpColumnNames));
   --trim first and last characters only if appended in braces
	IF (LEFT(@tmpColumnName, 1) = '[' AND RIGHT(@tmpColumnName, 1) = ']')
		SET @tmpColumnName = SUBSTRING(@tmpColumnName, 2, LEN(@tmpColumnName)-2);
   --check if column name in current index is present in 
	IF((@UniqueColumns = @tmpColumnName) OR (@UniqueColumns LIKE @tmpColumnName + ',%') OR 
		(@UniqueColumns LIKE '%,'+@tmpColumnName+',%') OR (@UniqueColumns LIKE '%,'+ @tmpColumnName))
	BEGIN
		--skip 'AND' if first time
		IF(@Condition != '') SET @Condition += ' AND '
			
		IF (SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues)) = 'null')
			SET @Condition += '['+@tmpColumnName + '] IS NULL';
		ELSE
			SET @Condition += '['+@tmpColumnName + '] = ' + 
								SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues));
	END  
	--remove current column from columns csv and proceed to next iteration
   SET @tmpColumnNames = SUBSTRING(@tmpColumnNames, CHARINDEX(',',@tmpColumnNames) + 1, LEN(@tmpColumnNames) - @Index);
   SET @tmpColumnValues = SUBSTRING(@tmpColumnValues, CHARINDEX(',',@tmpColumnValues) + 1, LEN(@tmpColumnValues) - @Index);
END
END

--build dynamic query
DECLARE @Query NVARCHAR(3500) = '';
--print @TableName
--print 'and'
--print @ColumnNames 
--print 'and'
--print @ColumnValues 
	IF @UniqueColumns IS NOT NULL
		SET @Query = 'IF(NOT EXISTS(SELECT * FROM ' + @TableName + ' WHERE ' + @Condition + '))';	
			
	SET @Query += '
	BEGIN
		INSERT INTO ' + @TableName + ' (' + @ColumnNames + ')
		VALUES     (' + @ColumnValues + ')
		SELECT @Message = ''Success''
		SELECT @IdentityOut = SCOPE_IDENTITY() 
	END	';
	
	IF @UniqueColumns IS NOT NULL
		SET @Query += '
		ELSE
		BEGIN
			SELECT @Message = ''Duplicate''
			SELECT @IdentityOut = 0
		END	'
--SELECT @Query	
EXEC SP_EXECUTESQL @Query, N'@Message VARCHAR(10) OUT,@IdentityOut INT OUT', @OutMessage OUT,@Identity OUT

END



GO
/****** Object:  StoredProcedure [dbo].[uspSTDInsertMultipleRows]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<SRUJAN>
-- Create date: <13/08/2013>
-- Description:	<INSERT MULTIPLE ROWS>
-- =============================================

-- INSERT INTO MULTIPLE ROWS
/*
declare @Message VARCHAR(10)  
exec uspInsertMultipleRows  
'APIProviders',  
'[APIProviderName],[ServiceType],[Order],[Status],[CreatedBy],[ModifiedBy]',  
'''freeRecharge - PrepaidDTH'',''7'',''0'',''1'',''64'',''64''~''freeRecharge - PostpaidDTH'',''7'',''0'',''1'',''64'',''64''',  
@OutMessage = @Message output  
print @Message    
*/

CREATE PROCEDURE [dbo].[uspSTDInsertMultipleRows] 
 @TableName VARCHAR(30),   
 @ColumnNamesArray VARCHAR(1000),  
 @ColumnValuesArray VARCHAR(MAX),
 @OutMessage VARCHAR(30) = 'Success' OUTPUT   
AS
BEGIN

BEGIN TRY
	BEGIN TRANSACTION
	
	DECLARE @Index INT = 1, @Condition VARCHAR(500) = '', @tmpColumnName VARCHAR(50) = '',   
	  @tmpColumnValuesArray VARCHAR(MAX) = '', @tmpColumnValue VARCHAR(2000) = '',   
	  @tmpColumnValues VARCHAR(MAX) = '';-- add a comma in the end to make the list loopable  
	--build dynamic query  
	DECLARE @Query NVARCHAR(MAX) = '';  
	DECLARE @tmpIndex TINYINT = 0;  
	SET @tmpColumnValues = @ColumnValuesArray + '~'  
	  
	--Loop multiple rows  
	WHILE CHARINDEX('~', @tmpColumnValues) > 0  
	BEGIN 
	SET @tmpColumnValuesArray = SUBSTRING(@tmpColumnValues, 0, CHARINDEX('~',@tmpColumnValues));

	SET @Query += '
	INSERT INTO '+@TableName+' ('+@ColumnNamesArray+') VALUES('+@tmpColumnValuesArray+')';

	SET @tmpColumnValues = SUBSTRING(@tmpColumnValues, CHARINDEX('~',@tmpColumnValues) + 1, LEN(@tmpColumnValues) - @Index);
	END

	SET @Query += '  
		SELECT @Message = ''Success''';

	PRINT(@Query)
	EXEC SP_EXECUTESQL @Query, N'@Message VARCHAR(10) OUT', @OutMessage OUT
	COMMIT TRAN
	SET @OutMessage='Success'
END TRY
BEGIN CATCH
	ROLLBACK TRAN
	INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
							ErrorProcedure, ErrorLine, ErrorMessage)
			SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
					'uspInsertMultipleRows',ERROR_LINE(), ERROR_MESSAGE()
	SET @OutMessage='Failed'
END CATCH
END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDLogError]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 1-Jul-2013
-- Modified date: <>
-- Modified comments: <>
-- Description:	<STORED PROCECURE TO SAVE ERRORS>
-- =============================================
CREATE PROCEDURE [dbo].[uspSTDLogError]		
	@Page	VARCHAR(100),
	@Method	VARCHAR(200),
	@ErrorMessage VARCHAR(1000),
	@DetailedMessage VARCHAR(3000),	
	@IPAddress VARCHAR(15),	
	@UserID		INT = NULL
AS
BEGIN
	INSERT INTO ErrorLog
                (Page
                , Method
                , ErrorMessage
                , DetailedMessage                
                , IPAddress
                , UserID)
	VALUES     (@Page
                , @Method
                , @ErrorMessage
                , @DetailedMessage                
                , @IPAddress
                , @UserID)
	
END

SET ANSI_NULLS OFF




GO
/****** Object:  StoredProcedure [dbo].[uspSTDMasterData]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 24-Jan-2016
-- Description:	Insert default data into master tables
-- =============================================
CREATE PROCEDURE [dbo].[uspSTDMasterData]
AS
BEGIN

SET IDENTITY_INSERT [dbo].[Roles] ON 
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Administrator', 1, N'1~2~3~4~5~6~7~8~9~10~11~12~13~14~15~16~17~18~19~20~21~22~23~24~25~26~27~28~29~30~31~32~33~34~35~36~37~38~39~40~41~42~43~44', 1, CAST(0xA2520372 AS SmallDateTime), 1, CAST(0xA2A80427 AS SmallDateTime))
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Agent', 1, N'40~15~22~16~13~34~20~37', 1, CAST(0xA2520372 AS SmallDateTime), 1, CAST(0xA2820421 AS SmallDateTime))
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'User', 1, NULL, 1, CAST(0xA2520372 AS SmallDateTime), 1, CAST(0xA2520372 AS SmallDateTime))
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Level], [Screens], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Guest', 1, NULL, 1, CAST(0xA2520372 AS SmallDateTime), 1, CAST(0xA2520372 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Roles] OFF

INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'ADashboard', N'Dashboard', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'AgDashboard', N'Dashboard', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'UDashboard', N'Dashboard', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'ViewDynamicPages', N'Dynamic Pages', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'ManageLandingPage', N'Manage Landing Page', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'EmailContent', N'Email Content', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'ViewEmailQueries', N'View Email Queries', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'ManageMeeting', N'Manage Meeting', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'ViewMeetings', N'View Meetings', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'ManageNotifications', N'Manage Notifications', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'SendEmail', N'Send Email', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'SendSMS', N'Send SMS', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'ManageOffer', N'Manage Offer', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'ManagePromocode', N'Manage Promocode', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'ViewOffers', N'View Offers', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, N'ManageProduct', N'Manage Product', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, N'ManageProductInventory', N'Manage Product Inventory', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'ViewProductReview', N'View Product Review', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'ProductDetails', N'Product Details', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (20, N'ViewBrands', N'View Brands', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (21, N'ViewCategories', N'View Categories', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (22, N'ViewComboProducts', N'View Combo Products', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, N'ViewFeatures', N'View Features', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (24, N'ViewProducts', N'View Products', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (25, N'ViewSubCategories', N'View Sub Categories', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (26, N'AgentProfile', N'Agent Profile', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (27, N'UserProfile', N'User Profile', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (28, N'ViewActiveOrders', N'View Active Orders', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (29, N'ManageRanking', N'Manage Ranking', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (30, N'ViewRankings', N'View Rankings', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (31, N'AgentRegistration', N'Agent Registration', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (32, N'AccessPermissions', N'Access Permissions', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (33, N'ManageRoleAccess', N'Manage Role Access', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (34, N'ManageRoles', N'Manage Roles', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (35, N'ViewRolesAccess', N'View Roles Access', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (36, N'ManageAgent', N'Manage Agent', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (37, N'ManageAgents', N'Manage Agents', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (38, N'ViewAgents', N'View Agents', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (39, N'ManageUser', N'Manage User', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (40, N'ManageUsers', N'Manage Users', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (41, N'ViewUsers', N'View Users', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (42, N'ManageStaff', N'Manage Staff', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (43, N'ViewStaff', N'View Staff', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [Accessibility], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (44, N'PaymentGatewayAndBankAccounts', N'PaymentGateway', 1, 1, 1, 1, 1, CAST(0xA59702C9 AS SmallDateTime), 1, CAST(0xA59702C9 AS SmallDateTime))

END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDUpdateData]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 29-Jun-2013
-- Modified date: <>
-- Modified comments: <>
-- Description:	<Update data in table based on dynamic table name, column names and column values>
-- =============================================
/*
declare @Message VARCHAR(10)
exec uspUpdateData
'PopularRecharges',
'[OperatorName],[RechargeType],[Denomination],[TalkTime],[Validity],[Description]',
'Idea,6,100,86,0,Limited Period Offer','OperatorName',
'PopularRechargeID','100', @OutMessage = @Message output
print @Message
*/

CREATE PROCEDURE [dbo].[uspSTDUpdateData]
(
@TableName VARCHAR(30),
@ColumnNames VARCHAR(1000),
@ColumnValues VARCHAR(2000),
@UniqueColumns VARCHAR(200) = NULL,
@FilterColumnName VARCHAR(30),
@FilterColumnValue VARCHAR(50),
@OutMessage VARCHAR(30) = 'Success' OUTPUT 
)
AS
BEGIN

DECLARE @Index INT = 1, @Condition VARCHAR(500) = '', @tmpColumnName VARCHAR(50) = '', 
		@tmpColumnNames VARCHAR(1000) = @ColumnNames + ',', -- add a comma in the end to make the list loopable
		@tmpColumnValues VARCHAR(1000) = @ColumnValues + ',',-- add a comma in the end to make the list loopable
		@UpdateQuery VARCHAR(2000) = '';

--Loop ColumnNames, ColumnValues and build where condition
WHILE CHARINDEX(',', @tmpColumnNames) > 0
BEGIN
	--get column name in current index
   SET @tmpColumnName = SUBSTRING(@tmpColumnNames, 0, CHARINDEX(',',@tmpColumnNames));
   --trim first and last characters only if appended in braces
   IF (LEFT(@tmpColumnName, 1) = '[' AND RIGHT(@tmpColumnName, 1) = ']')
		SET @tmpColumnName = SUBSTRING(@tmpColumnName, 2, LEN(@tmpColumnName)-2);

   IF (@UpdateQuery != '')
		SET @UpdateQuery += ', '
   
   SET @UpdateQuery += '[' + @tmpColumnName + '] = ' + SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues));
   
   --check if at least one column should be unique
	IF @UniqueColumns IS NOT NULL
	BEGIN
	   --check if column name in current index is present in 
		IF((@UniqueColumns = @tmpColumnName) OR (@UniqueColumns LIKE @tmpColumnName + ',%') OR 
			(@UniqueColumns LIKE '%,'+@tmpColumnName+',%') OR (@UniqueColumns LIKE '%,'+ @tmpColumnName))
		BEGIN
			--skip 'AND' if first time
			IF(@Condition != '') SET @Condition += ' AND '
				
			IF (SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues)) = 'null')
				SET @Condition += '['+@tmpColumnName + '] IS NULL';
			ELSE
				SET @Condition += '[' + @tmpColumnName + '] = ' + 
									SUBSTRING(@tmpColumnValues, 0, CHARINDEX(',',@tmpColumnValues));
		END  
	END
	--remove current column from columns csv and proceed to next iteration
   SET @tmpColumnNames = SUBSTRING(@tmpColumnNames, CHARINDEX(',',@tmpColumnNames) + 1, LEN(@tmpColumnNames) - @Index);
   SET @tmpColumnValues = SUBSTRING(@tmpColumnValues, CHARINDEX(',',@tmpColumnValues) + 1, LEN(@tmpColumnValues) - @Index);
END


IF(@Condition != '') SET @Condition += ' AND '
SET @Condition += ' [' + @FilterColumnName + '] != ' + @FilterColumnValue;


--build dynamic query
DECLARE @Query NVARCHAR(3000) = '';

	SET @Query = 'IF(Exists(SELECT * FROM [' + @TableName + '] WHERE [' + @FilterColumnName + '] = ' + @FilterColumnValue + '))
					BEGIN 
					'
	IF @UniqueColumns IS NOT NULL
		SET @Query += 'IF(NOT EXISTS(SELECT * FROM ' + @TableName + ' WHERE ' + @Condition + '))';	
			
	SET @Query += '
	BEGIN
		UPDATE ' + @TableName + '
		   SET ' +
			  @UpdateQuery + '
		 WHERE [' + @FilterColumnName + '] = ' + @FilterColumnValue+
		'  
		SELECT @Message = ''Success'' 
		END';
	IF @UniqueColumns IS NOT NULL
		SET @Query += '
			ELSE
			SELECT @Message = ''Duplicate'''
			
	SET @Query += '
		END
	  ELSE
		SELECT @Message = ''NotFound'''
--PRINT @Query
EXEC SP_EXECUTESQL @Query, N'@Message VARCHAR(10) OUT', @OutMessage OUT

END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDUpdateField]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 28-Jun-2013
-- Modified date: <>
-- Modified comments: <>
-- Description:	<Update single field in a table based on dynamic table name and column>
-- =============================================
/*
declare @Message VARCHAR(10)
exec uspUpdateField 'Users', 'Services','1,2,3,4,5,6,7', 'Username','dfdf', @OutMessage = @Message output
print @Message
*/
CREATE PROCEDURE [dbo].[uspSTDUpdateField]
(
@TableName VARCHAR(30),
@ColumnName VARCHAR(30),
@ColumnValue VARCHAR(50),
@FilterColumnName VARCHAR(30),
@FilterColumnValue VARCHAR(50),
@OutMessage VARCHAR(30) OUTPUT 
)
AS
BEGIN

SET @OutMessage = 'Success'

DECLARE @Query NVARCHAR(1000) = 
'IF(Exists(SELECT * FROM [' + @TableName + '] WHERE [' + @FilterColumnName + '] = ''' + @FilterColumnValue + '''))
BEGIN
	UPDATE [' + @TableName + '] SET [' + @ColumnName + '] = ''' + @ColumnValue + ''' WHERE [' + @FilterColumnName + '] = ''' + @FilterColumnValue + '''
	SELECT @Message = ''Success''
END
ELSE
	SELECT @Message = ''NotFound'''


print @query
EXEC SP_EXECUTESQL @Query, N'@Message VARCHAR(10) OUT', @OutMessage OUT

END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDUpdateMultipleRows]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================  
-- Author:  SATYA  
-- Create date: 29-Jul-2013  
-- Description: Update multiple rows/multiple columns  

/** 
--UPDATE SINGLE ROW SINGLE COLUMN 
declare @Message VARCHAR(10)  
exec uspUpdateMultipleRows  
'PopularRecharges',  
'OperatorName',  
'Idea',  
'PopularRechargeID','100', @OutMessage = @Message output  
print @Message  
  
-- UPDATE MULTIPLE ROWS SINGLE COLUMN 
declare @Message VARCHAR(10)  
exec uspUpdateMultipleRows  
'PopularRecharges',  
'OperatorName',  
'Idea~Airtel~Voda',  
'PopularRechargeID','100,101,102', @OutMessage = @Message output  
print @Message  
  
-- UPDATE SINGLE ROW MULTIPLE COLUMNS 
declare @Message VARCHAR(10)  
exec uspUpdateMultipleRows  
'PopularRecharges',  
'OperatorName,RechargeType,Denomination',  
'Idea,2,100',  
'PopularRechargeID','100', @OutMessage = @Message output  
print @Message  
  
-- UPDATE MULTIPLE ROWS MULTIPLE COLUMNS 
declare @Message VARCHAR(10)  
exec uspUpdateMultipleRows  
'ServiceswiseBalance',  
'Balance,BalanceAlert',  
'10000.00,1000.00~12000.00,1000.00~11000.00,1000.00~15000.00,1000.00~19000.00,1000.00~20000.00,1000.00~16000.00,2000.00',  
'BalanceID','1,2,3,4,5,6,7', @OutMessage = @Message output  
print @Message 
**/  
  
-- =============================================  
  
CREATE PROCEDURE [dbo].[uspSTDUpdateMultipleRows]  
 -- Add the parameters for the stored procedure here  
 @TableName VARCHAR(30),   
 @ColumnNames VARCHAR(500),  
 @ColumnValuesArray VARCHAR(MAX),
 @FilterColumnName VARCHAR(100),  
 @FilterColumnValues VARCHAR(500),   
 @OutMessage VARCHAR(30) = 'Success' OUTPUT   
AS  
BEGIN  

BEGIN TRY
	BEGIN TRANSACTION	
	DECLARE @Index INT = 1, @Condition VARCHAR(500) = '', @tmpColumnName VARCHAR(50) = '',   
	  @tmpColumnValuesArray VARCHAR(MAX) = '', @tmpColumnValue VARCHAR(2000) = '',   
	  @tmpColumnNames VARCHAR(1000) = '', -- add a comma in the end to make the list loopable  
	  @tmpColumnValues VARCHAR(MAX) = '',-- add a comma in the end to make the list loopable  
	  @tmpFilterColumnValues VARCHAR(MAX) = @FilterColumnValues + ',', @UpdateQuery VARCHAR(2000) = '';  
	--build dynamic query  
	DECLARE @Query NVARCHAR(MAX) = '';  
	DECLARE @tmpIndex TINYINT = 0;  
	SET @tmpColumnValues = @ColumnValuesArray + '~'  
	  
	--Loop multiple rows  
	WHILE CHARINDEX(',', @tmpFilterColumnValues) > 0  
	BEGIN   
	 SET @tmpColumnValuesArray = SUBSTRING(@tmpColumnValues, 0, CHARINDEX('~',@tmpColumnValues)) + ',';   
	 --reset column names to start from beginning  
	 SET @tmpColumnNames = @ColumnNames + ','   
	   
	 --Loop ColumnNames, ColumnValues and build where condition   
	 WHILE CHARINDEX(',', @tmpColumnNames) > 0  
	 BEGIN   
	  --get column name in current index  
		SET @tmpColumnName = SUBSTRING(@tmpColumnNames, 0, CHARINDEX(',',@tmpColumnNames));  
		SET @tmpColumnValue = SUBSTRING(@tmpColumnValuesArray, 0, CHARINDEX(',',@tmpColumnValuesArray));  
	      
		IF (@UpdateQuery != '')  
	   SET @UpdateQuery += ', '  
	      
		 SET @UpdateQuery += '[' + @tmpColumnName + '] = ' + @tmpColumnValue;  
	       
	  SET @tmpIndex += 1   
	  --remove current column from columns csv and proceed to next iteration  
		SET @tmpColumnNames = SUBSTRING(@tmpColumnNames, CHARINDEX(',',@tmpColumnNames) + 1, LEN(@tmpColumnNames) - @Index);      
		SET @tmpColumnValuesArray = SUBSTRING(@tmpColumnValuesArray, CHARINDEX(',',@tmpColumnValuesArray) + 1, LEN(@tmpColumnValuesArray) - @Index);      
	 END  
	   
	 IF(@Condition != '') SET @Condition += ' AND '  
	 SET @Condition += ' [' + @FilterColumnName + '] != ' +   
		SUBSTRING(@tmpFilterColumnValues, 0, CHARINDEX(',',@tmpFilterColumnValues));  
	      
	 SET @Query += '
	 UPDATE ' + @TableName + ' SET ' + @UpdateQuery + ' WHERE [' +   
		 @FilterColumnName + '] = ' + SUBSTRING(@tmpFilterColumnValues, 0, CHARINDEX(',',@tmpFilterColumnValues));  
	 set @UpdateQuery=''  
	 --remove current filter column from columns csv and proceed to next iteration  
	 SET @tmpColumnValues = SUBSTRING(@tmpColumnValues, CHARINDEX('~',@tmpColumnValues) + 1, LEN(@tmpColumnValues) - @Index);  
	 SET @tmpFilterColumnValues = SUBSTRING(@tmpFilterColumnValues, CHARINDEX(',',@tmpFilterColumnValues) + 1, LEN(@tmpFilterColumnValues) - @Index);  
	  
	END   
	  
	SET @Query += '  
		SELECT @Message = ''Success''';  
	       
		 --PRINT @Query  
	EXEC SP_EXECUTESQL @Query, N'@Message VARCHAR(10) OUT', @OutMessage OUT  
	COMMIT TRAN
	SET @OutMessage='Success'
END TRY
BEGIN CATCH
	ROLLBACK TRAN
	INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
							ErrorProcedure, ErrorLine, ErrorMessage)
			SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
					'uspUpdateMultipleRows',ERROR_LINE(), ERROR_MESSAGE()
	SET @OutMessage='Failed'
END CATCH
END




GO
/****** Object:  StoredProcedure [dbo].[uspSTDUsers]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 1-Jul-2013
-- Description:	Perform CRUD operations on users and userdetails tables
-- =============================================

CREATE PROCEDURE [dbo].[uspSTDUsers]
(
@UserID INT, 
@Parent INT = 0,
@IsNewPassword bit=0,
@Membership TINYINT=0,
@Role TINYINT=0,
@Password VARCHAR(250)=NULL, 
@Companyname VARCHAR(50)=NULL,
@Address VARCHAR(150)=NULL,
@PAN VARCHAR(10)=NULL,
@Pincode VARCHAR(6)=null,
@Telephone VARCHAR(15)=null,
@Status TINYINT = NULL, 

@FirstName VARCHAR(50)=NULL,
@LastName VARCHAR(50)=NULL,
@Gender INT=0,
@DOB VARCHAR(10)=NULL,  
@Email VARCHAR(50)=NULL,
@AlternateEmail VARCHAR(50)=NULL,
@Mobile VARCHAR(15)=NULL,
@AlternateMobile VARCHAR(15)=NULL,
@City VARCHAR(30)=NULL,  
@State VARCHAR(50)=NULL,
@RegisteredIP VARCHAR(20)=NULL,
@TxnType VARCHAR(10)=NULL,

@CreatedBy INT=0,
@ModifiedBy INT=0,
@OutMessage VARCHAR(30) OUTPUT 
)
AS
BEGIN

DECLARE @tmpEmail VARCHAR(50), @tmpMobile VARCHAR(10), @ReturnID INT

--Check if User already exists
IF(EXISTS(SELECT UserID FROM Users WHERE (UserID = @UserID)) AND @TxnType = 'Update')
	BEGIN
		--Retrieve respective email and mobile of User
		SELECT @tmpEmail = [Email] FROM Users WHERE (UserID = @UserID)
		SELECT @tmpMobile = [Mobile] FROM Users WHERE (UserID = @UserID)
		--Check if User with same Name 
		IF(Exists(SELECT UserID FROM Users WHERE 
			(([Email] = @Email AND @Email != @tmpEmail) OR 
			([Mobile] = @Mobile AND @Mobile != @tmpMobile))))			
			SET @OutMessage = 'Duplicate'
		ELSE
			BEGIN
			--Start the Try Block..
				BEGIN TRY 
				-- Start the transaction..
					BEGIN TRANSACTION 					 
					--Update User if User already exists
						UPDATE [Users]
						   SET  [Role]=@Role
							   ,[AlternateEmail] = @AlternateEmail
							   ,[AlternateMobile] = @AlternateMobile							   
							   ,[Status]=@Status
							   ,[ModifiedBy]=@ModifiedBy
							   ,[ModifiedDate]=GETDATE()
						 WHERE      (UserID = @UserID)
						UPDATE [UserDetails]
						   SET  [FirstName]=@FirstName
								   ,[LastName]=@LastName
								   ,[Gender]=@Gender
								   ,[DOB]=@DOB								   
								   ,[Telephone]=@Telephone
								   ,[Address]=@Address
								   ,[Pincode]=@Pincode
								   ,[City]=@City
								   ,[State]=@State 
								   ,[RegisteredIP]=@RegisteredIP
								   ,[ModifiedBy]=@ModifiedBy
								   ,[ModifiedDate]=GETDATE()
						 WHERE [UserID] = @UserID							
					select @UserID
					COMMIT TRAN -- Transaction Success!	
					SET @OutMessage = 'Success'
				END TRY
				BEGIN CATCH
					IF @@TRANCOUNT > 0
						ROLLBACK TRAN --RollBack in case of Error						
						-- Log exception details 
						PRINT 'Error Message is : '+ ERROR_MESSAGE()
						INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
										ErrorProcedure, ErrorLine, ErrorMessage)
						SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
								ERROR_PROCEDURE(),ERROR_LINE(), ERROR_MESSAGE()
						SET @OutMessage = 'Failed'
				END CATCH
			END
	END
--Check if new User is Inserted
ELSE IF(@TxnType = 'INSERT')
	BEGIN
		--Check if User with same Name Already Exists
		IF(Exists(SELECT [UserID] FROM Users WHERE (Email = @Email OR Mobile = @Mobile)))
			SET @OutMessage = 'Duplicate'
		--Insert User if User doesnot exist
		ELSE 
		--Start the Try Block..
				 BEGIN TRY 
				-- Start the transaction..
				 BEGIN TRANSACTION 
						INSERT INTO [Users]
							   ([IsNewPassword] 
							   ,[Email]
							   ,[AlternateEmail]
							   ,[Mobile]
							   ,[AlternateMobile]
							   ,[Password]
							   ,[InvalidLoginAttempts]
							   ,[Role]
							   ,[Status]
							   ,[CreatedBy] 
							   ,[CreatedDate]
							   ,[ModifiedBy] )
						 VALUES
							   (@IsNewPassword
							   ,@Email
							   ,@AlternateEmail
							   ,@Mobile
							   ,@AlternateMobile
							   ,@Password
							   ,0
							   ,@Role
							   ,@Status
							   ,@CreatedBy
							   ,GETDATE()
							   ,@ModifiedBy)

						SELECT @ReturnID = SCOPE_IDENTITY()
						select @ReturnID
						
						INSERT INTO [UserDetails]
								   ([UserID]
								   ,[FirstName]
								   ,[LastName]
								   ,[Gender]
								   ,[DOB]								   								   
								   ,[Telephone]
								   ,[City]
								   ,[State]
								   ,[Address]
								   ,[Pincode]
								   ,[RegisteredIP]
								   ,[CreatedBy]
								   ,[CreatedDate]
								   ,[ModifiedBy])
							 VALUES
								   (@ReturnID
								   ,@FirstName
								   ,@LastName
								   ,@Gender
								   ,@DOB								   
								   ,@Telephone
								   ,@City
							       ,@State
							       ,@Address
							       ,@Pincode
								   ,@RegisteredIP
								   ,@CreatedBy
								   ,GETDATE()
								   ,@ModifiedBy)
           COMMIT TRAN -- Transaction Success!	
           SET @OutMessage = 'Success'
				END TRY
				BEGIN CATCH
					IF @@TRANCOUNT > 0
						ROLLBACK TRAN --RollBack in case of Error
						-- Log exception details 						
						PRINT 'Error Message is : '+ ERROR_MESSAGE()
						INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
										ErrorProcedure, ErrorLine, ErrorMessage)
						SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
								ERROR_PROCEDURE(),ERROR_LINE(), ERROR_MESSAGE()
						SET @OutMessage = 'Failed'
				END CATCH
			
	END
--Check if Existing User is Deleted
ELSE IF(@TxnType = 'DELETE')
	BEGIN
		--** DONOT DELETE TRANSACTION LOG **
        --DELETE FROM LoginLog WHERE UserID = @UserID		        
		--DELETE FROM UserDetails WHERE UserID = @UserID
		UPDATE Users SET [Status] = 2 WHERE UserID = @UserID		
		--DELETE FROM Users WHERE UserID = @UserID		
		SET @OutMessage = 'Delete'
	END
ELSE 
	SET @OutMessage = 'NotFound'
		
END




GO
/****** Object:  StoredProcedure [dbo].[uspValidateSubscription]    Script Date: 24-09-2016 19:41:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Satya
-- Create date: 16-Jun-2016
-- Description:	Validate subscription
-- =============================================
/*
select * from subscription
declare @Message varchar(100)
exec uspValidateSubscription @OutMessage = @Message output
print @Message 
*/
CREATE PROCEDURE [dbo].[uspValidateSubscription]  
(
	@OutMessage VARCHAR(30) OUTPUT
)
AS  
--Temp Variables
DECLARE @tmpSubscriptionIDs VARCHAR(1000), @Index INT = 1, @tmpSubscriptionID VARCHAR(10), @tmpCurrDate DATE, 
	@tmpWeekStartDate DATE, @tmpMonthStartDate DATE, @tmpIdentity INT;
BEGIN
BEGIN TRY 
-- Start the transaction..
BEGIN TRANSACTION
	--Get list of users who have done transactions in given period
	SELECT @tmpSubscriptionIDs = COALESCE(@tmpSubscriptionIDs + ', ', '') + CONVERT(VARCHAR(5), SubscriptionID) 
	FROM Subscription WHERE IsExpired = 0
	SET @tmpSubscriptionIDs += ','
	print @tmpSubscriptionIDs
	--Loop through each user
	WHILE CHARINDEX(',', @tmpSubscriptionIDs) > 0
	BEGIN
		SET @tmpSubscriptionID = SUBSTRING(@tmpSubscriptionIDs, 0, CHARINDEX(',',@tmpSubscriptionIDs));			
		
		IF (SELECT CONVERT(DATE, EndDate) FROM Subscription WHERE SubscriptionID = @tmpSubscriptionID) < CONVERT(DATE, GETDATE())
			UPDATE Subscription SET IsExpired = 1 WHERE SubscriptionID = @tmpSubscriptionID
					
		SET @OutMessage = 'Success'		
		--PRINT 'TEMPUSERID = ' + @tmpSubscriptionIDs
		--remove current column from columns csv and proceed to next iteration
		SET @tmpSubscriptionIDs = SUBSTRING(@tmpSubscriptionIDs, CHARINDEX(',',@tmpSubscriptionIDs) + 1, LEN(@tmpSubscriptionIDs) - @Index);			
	END
COMMIT TRAN -- Transaction Success!	
--SET @OutMessage = 'NO PAYOUT DONE'
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK TRAN --RollBack in case of Error						
		-- Log exception details 
		PRINT 'Error Message is : '+ ERROR_MESSAGE()
		INSERT INTO DbErrorLog (ErrorNumber, ErrorSeverity, ErrorState, 
						ErrorProcedure, ErrorLine, ErrorMessage)
		SELECT ERROR_NUMBER(), ERROR_SEVERITY(),ERROR_STATE(),
				ERROR_PROCEDURE(),ERROR_LINE(), ERROR_MESSAGE()
		SET @OutMessage = 'Failed'
END CATCH
END



GO
