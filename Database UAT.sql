USE [tradespu_MARKET_PLACE_UAT]
GO
/****** Object:  Table [dbo].[BannerAd]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[BusinessBranchDetails]    Script Date: 24-09-2016 21:43:38 ******/
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
	[CityID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[BusinessDetails]    Script Date: 24-09-2016 21:43:38 ******/
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
	[CityID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Category]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[City]    Script Date: 24-09-2016 21:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(100,1) NOT NULL,
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
/****** Object:  Table [dbo].[Country]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[DbErrorLog]    Script Date: 24-09-2016 21:43:38 ******/
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
	[LogDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_DbErrorLog] PRIMARY KEY CLUSTERED 
(
	[DbErrorLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[EmailQueries]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[Enquiry]    Script Date: 24-09-2016 21:43:38 ******/
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
	[IsMultiProduct] [bit] NOT NULL CONSTRAINT [DF_Enquiry_IsMultiProduct_1]  DEFAULT ((0)),
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
/****** Object:  Table [dbo].[EnquiryLog]    Script Date: 24-09-2016 21:43:38 ******/
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
	[UnitCost] [decimal](10, 0) NOT NULL CONSTRAINT [DF_EnquiryLog_UnitCost]  DEFAULT ((0)),
	[Discount] [decimal](10, 0) NOT NULL CONSTRAINT [DF_EnquiryLog_Discount_1]  DEFAULT ((0)),
	[TotalCost] [decimal](10, 0) NOT NULL CONSTRAINT [DF_EnquiryLog_TotalCost_1]  DEFAULT ((0)),
	[DeliveryPeriod] [varchar](20) NOT NULL CONSTRAINT [DF_EnquiryLog_DeliveryPeriod]  DEFAULT (getdate()),
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
/****** Object:  Table [dbo].[EnquiryStatus]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[LoginLog]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[MainCategory]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[PlanFeature]    Script Date: 24-09-2016 21:43:38 ******/
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
	[IsEditable] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_PlanFeature] PRIMARY KEY CLUSTERED 
(
	[PlanFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PriceManagement]    Script Date: 24-09-2016 21:43:38 ******/
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
	[CreatedDate] [smalldatetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_PriceManagement] PRIMARY KEY CLUSTERED 
(
	[PriceManagementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PricePlan]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[ProductCatalog]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[Quotation]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[Screens]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[SMSLog]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[SubCategory]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[Subscription]    Script Date: 24-09-2016 21:43:38 ******/
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
	[IsExpired] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Subscription] PRIMARY KEY CLUSTERED 
(
	[SubscriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitofMeasurement]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[UserDetails]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 24-09-2016 21:43:38 ******/
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
/****** Object:  Table [dbo].[VendorInventory]    Script Date: 24-09-2016 21:43:38 ******/
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
INSERT [dbo].[BusinessBranchDetails] ([BranchID], [BranchName], [UserID], [Pincode], [Address], [Landmark], [CityID], [State], [Emails], [Phones], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Head Office', 3, N'500050', N'Chandanagar^ Near SBI^ Opp to KFC', N'KFC', 100, N'Telangana', N'', N'9111111111', 3, CAST(N'2016-07-01 07:15:00' AS SmallDateTime), 3, CAST(N'2016-07-01 07:15:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[BusinessBranchDetails] OFF
GO
INSERT [dbo].[BusinessDetails] ([UserID], [BusinessName], [BusinessType], [PAN], [PrimaryPhone], [Phones], [Emails], [CityID], [State], [Address], [Pincode], [WebsiteURL], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Vendor Business 1', 1, N'BSOEIJ7236', N'9111111111', N'0401234567^ 0405745764^ 0503276723', N'abc@mail.com^ xyz@mail.com', 100, N'Telangana', N'Chandanagar^ Hyderabad^ TS', N'500050', N'', 3, CAST(N'2016-07-01 07:12:00' AS SmallDateTime), 3, CAST(N'2016-07-01 07:12:00' AS SmallDateTime))
GO
INSERT [dbo].[BusinessDetails] ([UserID], [BusinessName], [BusinessType], [PAN], [PrimaryPhone], [Phones], [Emails], [CityID], [State], [Address], [Pincode], [WebsiteURL], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Vendor Business 2', 2, N'HWIHD623WD', N'9222222222', N'0405378343^ 057349812^ 0723568123', N'test@mail.com^ user@mail.com', 101, N'Tamilnadu', N'', N'      ', N'http://www.google.com', 4, CAST(N'2016-07-01 07:13:00' AS SmallDateTime), 4, CAST(N'2016-07-01 07:13:00' AS SmallDateTime))
GO
INSERT [dbo].[BusinessDetails] ([UserID], [BusinessName], [BusinessType], [PAN], [PrimaryPhone], [Phones], [Emails], [CityID], [State], [Address], [Pincode], [WebsiteURL], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Vendor Business 3', 3, N'IUOSD12357', N'9333333333', N'', N'', 102, N'', N'', N'      ', N'', 5, CAST(N'2016-07-01 07:14:00' AS SmallDateTime), 5, CAST(N'2016-07-01 07:14:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (100, 102, N'Electrical & Electronics', N'', 1, 1, 1, CAST(N'2016-06-28 00:00:00' AS SmallDateTime), 2, CAST(N'2016-07-09 20:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (104, 100, N'Industrial Parts & Accessories', NULL, 2, 1, 1, CAST(N'2016-06-29 16:31:00' AS SmallDateTime), 2, CAST(N'2016-07-01 21:56:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (105, 100, N'Pumps-Mechanical Parts & Spares', NULL, 3, 1, 1, CAST(N'2016-06-29 17:51:00' AS SmallDateTime), 2, CAST(N'2016-07-01 21:57:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (106, 100, N'Laboratory  Equipment', NULL, 4, 1, 1, CAST(N'2016-06-29 17:51:00' AS SmallDateTime), 2, CAST(N'2016-07-01 21:57:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (107, 100, N'Furniture Items', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (108, 100, N'Landscaping & Irrigation', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (109, 100, N'Minerals,Metals & Alloys', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (110, 100, N'Tools  & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (111, 100, N'Equipment & Machinery', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (112, 100, N'Security & Safety Systems', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (113, 100, N'Telecom systems & equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (114, 100, N'Air Conditioning & Ventilation System', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (115, 100, N'Pipes ^Valves & Fittings', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (116, 100, N'Fire Fighting & Protection system', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (117, 100, N'Civil', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (118, 100, N'Cabinet Hardware & Fittings', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (119, 100, N'Industrial Supplies', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (120, 100, N'Mechanical Parts & Spares', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (121, 100, N'Laboratory & Lab Equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (122, 100, N'Furniture & Supplies', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (123, 100, N'Agriculture & Farming', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (124, 100, N'Metals^Alloys & Minerals', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (125, 100, N'Hand & Machine Tools', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (126, 100, N'Engineering Services', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:33:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (127, 100, N'Security-safety system & service', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (128, 100, N'Telecom Equipment & Goods', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (129, 100, N'Air Conditioning And Ventilation System', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:37:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (130, 100, N'Valves', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:37:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (131, 100, N'Pipes & Fittings', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (132, 100, N'Fire Fighting And Protection system', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:37:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (133, 100, N'Plumbing & Drainage systems', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (134, 100, N'Building Management System & Controls', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:34:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (135, 100, N'Fire Alarm System', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:34:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (136, 100, N'Electrical', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:34:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (137, 100, N'Electronics', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (138, 100, N'Central Battery systems', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (139, 100, N'CCTV & Telephone systems', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (140, 101, N'Heavy Equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:34:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (141, 101, N'Safety Equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (142, 101, N'Surveying Equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (143, 102, N'Consultancy Services', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:34:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (144, 102, N'Manpower consultancy services', NULL, 0, 1, 1, CAST(N'2016-06-29 18:21:00' AS SmallDateTime), 2, CAST(N'2016-06-30 22:34:00' AS SmallDateTime))
GO
INSERT [dbo].[Category] ([CategoryID], [MainCategoryID], [CategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (145, 102, N'real estate', N'', 0, 1, 2, CAST(N'2016-07-24 21:54:00' AS SmallDateTime), 2, CAST(N'2016-07-24 21:54:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (100, 1, N'Hyderabad', N'', 0, 1, 3, CAST(N'2016-07-01 07:12:00' AS SmallDateTime), 3, CAST(N'2016-07-01 07:12:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (101, 1, N'Chennai', N'', 0, 1, 4, CAST(N'2016-07-01 07:13:00' AS SmallDateTime), 4, CAST(N'2016-07-01 07:13:00' AS SmallDateTime))
GO
INSERT [dbo].[City] ([CityID], [CountryID], [CityName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (102, 1, N'Vijayawada', N'', 0, 1, 5, CAST(N'2016-07-01 07:14:00' AS SmallDateTime), 5, CAST(N'2016-07-01 07:14:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

GO
INSERT [dbo].[Country] ([CountryID], [CountryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'India', 1, 1, CAST(N'2016-06-30 21:23:00' AS SmallDateTime), 1, CAST(N'2016-06-30 21:23:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailLog] ON 

GO
INSERT [dbo].[EmailLog] ([EmailLogID], [Emails], [Subject], [Body], [CreatedDate]) VALUES (1, N'VendorPro1@gmail.com', N'hi', N'test', CAST(N'2016-07-07 11:28:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[EmailLog] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailQueries] ON 

GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (1, 3, 636036937308366532, 1, 1, 5, N'Need Help to upload images', N'images upload', CAST(N'2016-07-09 20:42:00' AS SmallDateTime))
GO
INSERT [dbo].[EmailQueries] ([QueryID], [UserID], [ThreadID], [IsParent], [IsRead], [QueryCategory], [Subject], [Body], [CreatedDate]) VALUES (2, 2, 636036937308366532, 0, 1, 5, NULL, N'Ya you upload files in upload image process', CAST(N'2016-07-09 20:43:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[EmailQueries] OFF
GO
SET IDENTITY_INSERT [dbo].[Enquiry] ON 

GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (108, 8, N'08_07_2016_1', 1, 0, 0, 9, N'Ideawoods-classy-solid-wood-3-1-sofa-set', CAST(100.00 AS Decimal(10, 2)), 5, N'Need 100 units of sofas for distribution', N'Hyderabad', 8, CAST(N'2016-07-08 20:04:00' AS SmallDateTime), 8, CAST(N'2016-07-08 20:04:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (109, 7, N'08_07_2016_2', 2, 0, 0, 10, N'Classy Solid Wood', CAST(25.00 AS Decimal(10, 2)), 2, N'Need 10 units', N'Chennai', 7, CAST(N'2016-07-08 20:06:00' AS SmallDateTime), 7, CAST(N'2016-07-08 20:06:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (110, 7, N'08_07_2016_3', 11, 0, 0, 1, N'Hella Lights', CAST(30.00 AS Decimal(10, 2)), 2, N'asdfasdf fas', N'fasdf', 7, CAST(N'2016-07-08 22:05:00' AS SmallDateTime), 7, CAST(N'2016-07-08 22:05:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (111, 9, N'09_07_2016_4', 1, 0, 0, 3, N'Toys Bhoomi RC Forklift', CAST(2.00 AS Decimal(10, 2)), 2, N'1 Ton heavy duty', N'Dubai', 9, CAST(N'2016-07-09 12:07:00' AS SmallDateTime), 9, CAST(N'2016-07-09 12:07:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (112, 9, N'09_07_2016_5', 2, 0, 0, 5, N'Convection Microwave Oven', CAST(1.00 AS Decimal(10, 2)), 2, N'micorwave oven', N'dubai', 9, CAST(N'2016-07-09 19:11:00' AS SmallDateTime), 9, CAST(N'2016-07-09 19:11:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (113, 10, N'09_07_2016_6', 11, 0, 0, 1, N'Hella Lights', CAST(10.00 AS Decimal(10, 2)), 2, N'20w', N'dubai', 10, CAST(N'2016-07-09 19:55:00' AS SmallDateTime), 10, CAST(N'2016-07-09 19:55:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (114, 7, N'09_07_2016_7', 2, 0, 0, 1, N'Hella Lights', CAST(5.00 AS Decimal(10, 2)), 2, N'100w', N'Hyderabad', 7, CAST(N'2016-07-09 20:26:00' AS SmallDateTime), 7, CAST(N'2016-07-09 20:26:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (115, 9, N'08_09_2016_8', 2, 1, 1, 12, N'Sudhakar Pumps and motors', CAST(100.00 AS Decimal(10, 2)), 4, N'desc 1', N'Chennai', 0, CAST(N'2016-09-08 23:04:00' AS SmallDateTime), 0, CAST(N'2016-09-08 23:04:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (116, 9, N'08_09_2016_8', 11, 1, 1, 7, N'Wired Headphones', CAST(10.00 AS Decimal(10, 2)), 4, N'desc 2', N'Chennai', 0, CAST(N'2016-09-08 23:04:00' AS SmallDateTime), 3, CAST(N'2016-09-08 23:08:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (117, 9, N'08_09_2016_8', 2, 1, 1, 8, N'Carbon Steel Collapsible Wardrobe', CAST(4.00 AS Decimal(10, 2)), 2, N'desc 4', N'Chennai', 0, CAST(N'2016-09-08 23:04:00' AS SmallDateTime), 0, CAST(N'2016-09-08 23:04:00' AS SmallDateTime))
GO
INSERT [dbo].[Enquiry] ([EnquiryID], [UserID], [EnquiryLabel], [StatusID], [IsGeneralEnquiry], [IsMultiProduct], [ProductID], [ProductName], [Quantity], [UnitID], [ProductSpecification], [DeliveryLocation], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (118, 9, N'08_09_2016_8', 11, 1, 1, 9, N'Ideawoods-classy-solid-wood-3-1-sofa-set', CAST(1.00 AS Decimal(10, 2)), 5, N'unit', N'Chennai', 0, CAST(N'2016-09-08 23:04:00' AS SmallDateTime), 4, CAST(N'2016-09-08 23:14:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Enquiry] OFF
GO
SET IDENTITY_INSERT [dbo].[EnquiryLog] ON 

GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (1, 110, 7, 1, 1, 1, CAST(100 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', NULL, NULL, NULL, CAST(N'2016-07-08 22:09:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (2, 110, 3, 1, 0, 0, CAST(235 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', N'', NULL, NULL, CAST(N'2016-07-08 22:45:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (3, 110, 3, 1, 0, 0, CAST(250 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', N'', NULL, NULL, CAST(N'2016-07-08 22:53:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (4, 110, 3, 1, 0, 0, CAST(456 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', N'', NULL, NULL, CAST(N'2016-07-09 18:23:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (5, 112, 9, 2, 1, 0, CAST(650 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', NULL, NULL, NULL, CAST(N'2016-07-09 19:39:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (6, 113, 10, 3, 1, 1, CAST(20 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', NULL, NULL, NULL, CAST(N'2016-07-09 20:04:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (7, 113, 3, 3, 0, 0, CAST(20000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', N'', NULL, NULL, CAST(N'2016-07-09 20:22:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (8, 114, 7, 4, 1, 0, CAST(12000 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', NULL, NULL, NULL, CAST(N'2016-07-09 20:27:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (9, 109, 7, 5, 1, 0, CAST(160 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), CAST(0 AS Decimal(10, 0)), N'Jul 18 2016 10:38PM', NULL, NULL, NULL, CAST(N'2016-07-09 20:29:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (10, 116, 3, 6, 0, 0, CAST(300 AS Decimal(10, 0)), CAST(10 AS Decimal(10, 0)), CAST(2990 AS Decimal(10, 0)), N'2 months', N'', N'terms', N'', CAST(N'2016-09-08 23:08:00' AS SmallDateTime))
GO
INSERT [dbo].[EnquiryLog] ([EnquiryLogID], [EnquiryID], [UserID], [QuotationID], [IsParent], [IsRead], [UnitCost], [Discount], [TotalCost], [DeliveryPeriod], [Attachments], [PaymentTerms], [OtherDetails], [CreatedDate]) VALUES (11, 118, 4, 7, 0, 0, CAST(25000 AS Decimal(10, 0)), CAST(1500 AS Decimal(10, 0)), CAST(23500 AS Decimal(10, 0)), N'15 days', N'', N'items', N'terms', CAST(N'2016-09-08 23:14:00' AS SmallDateTime))
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
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (1, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 18:59:00' AS SmallDateTime), NULL)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (2, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 19:01:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (3, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 19:01:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (4, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 19:01:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (5, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 19:02:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (6, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 19:02:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (7, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 19:03:00' AS SmallDateTime), NULL)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (8, N'/GetQuote', N'Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])', N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Enquiry_EnquiryStatus". The conflict occurred in database "tradespu_MARKET_PLACE_UAT", table "dbo.EnquiryStatus", column ''StatusID''.
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
   at CLB.DP.MSSqlDataProvider.ExecuteScalar(String sql, Object[,] par, CommandType commandType)
   at CLB.BL.BLBaseClass.SaveData(Object[,] par)
   at CLB.BL.EnquiryManager.SaveEnquiry(Enquiry enquiry, Int64& identity, Boolean& status)', N'183.82.97.1', CAST(N'2016-07-08 19:07:00' AS SmallDateTime), NULL)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (9, N'/GetQuote', N'Void btnSubmitStep3_Click(System.Object, System.EventArgs)', N'Object reference not set to an instance of an object.', N'   at SendProductEnquiry.btnSubmitStep3_Click(Object sender, EventArgs e)', N'49.204.224.107', CAST(N'2016-07-08 20:06:00' AS SmallDateTime), NULL)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (10, N'/ManageEnquiry', N'Void LoadEnquiryDetails()', N'Method not found: ''System.Collections.Generic.List`1<CLB.DTO.EnquiryLog> CLB.BL.EnquiryLogManager.GetEnquiryLog(System.Nullable`1<Int64>, System.String, System.Nullable`1<Int64>, System.Nullable`1<Int32>)''.', N'   at ManageEnquiry.LoadEnquiryDetails()
   at ManageEnquiry.Page_Load(Object sender, EventArgs e)', N'49.204.224.107', CAST(N'2016-07-08 22:27:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (11, N'/ManageEnquiry', N'Void LoadEnquiryDetails()', N'Method not found: ''System.Collections.Generic.List`1<CLB.DTO.EnquiryLog> CLB.BL.EnquiryLogManager.GetEnquiryLog(System.Nullable`1<Int64>, System.String, System.Nullable`1<Int64>, System.Nullable`1<Int32>)''.', N'   at ManageEnquiry.LoadEnquiryDetails()
   at ManageEnquiry.Page_Load(Object sender, EventArgs e)', N'49.204.224.107', CAST(N'2016-07-08 22:28:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (12, N'/ManageEnquiry', N'Void LoadEnquiryDetails()', N'Method not found: ''System.Collections.Generic.List`1<CLB.DTO.EnquiryLog> CLB.BL.EnquiryLogManager.GetEnquiryLog(System.Nullable`1<Int64>, System.String, System.Nullable`1<Int64>, System.Nullable`1<Int32>)''.', N'   at ManageEnquiry.LoadEnquiryDetails()
   at ManageEnquiry.Page_Load(Object sender, EventArgs e)', N'49.204.224.107', CAST(N'2016-07-08 22:28:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (13, N'/ManageEnquiry', N'Void LoadEnquiryDetails()', N'Method not found: ''System.Collections.Generic.List`1<CLB.DTO.EnquiryLog> CLB.BL.EnquiryLogManager.GetEnquiryLog(System.Nullable`1<Int64>, System.String, System.Nullable`1<Int64>, System.Nullable`1<Int32>)''.', N'   at ManageEnquiry.LoadEnquiryDetails()
   at ManageEnquiry.Page_Load(Object sender, EventArgs e)', N'49.204.224.107', CAST(N'2016-07-08 22:28:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (14, N'/ViewEmailQueries', N'Void gridview_RowDataBound(System.Object, System.Web.UI.WebControls.GridViewRowEventArgs)', N'Object reference not set to an instance of an object.', N'   at EmailQueries_ViewEmailQueries.gridview_RowDataBound(Object sender, GridViewRowEventArgs e)', N'49.204.37.106', CAST(N'2016-07-09 00:29:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (15, N'/ViewEmailQueries', N'Void gridview_RowDataBound(System.Object, System.Web.UI.WebControls.GridViewRowEventArgs)', N'Object reference not set to an instance of an object.', N'   at EmailQueries_ViewEmailQueries.gridview_RowDataBound(Object sender, GridViewRowEventArgs e)', N'92.98.169.241', CAST(N'2016-07-09 19:15:00' AS SmallDateTime), 2)
GO
INSERT [dbo].[ErrorLog] ([ErrorLogID], [Page], [Method], [ErrorMessage], [DetailedMessage], [IPAddress], [LogDate], [UserID]) VALUES (16, N'/ViewEmailQueries', N'Void gridview_RowDataBound(System.Object, System.Web.UI.WebControls.GridViewRowEventArgs)', N'Object reference not set to an instance of an object.', N'   at EmailQueries_ViewEmailQueries.gridview_RowDataBound(Object sender, GridViewRowEventArgs e)', N'92.98.169.241', CAST(N'2016-07-09 19:16:00' AS SmallDateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[ErrorLog] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginLog] ON 

GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (1, 2, CAST(N'2016-06-30 21:13:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (2, 2, CAST(N'2016-06-30 21:17:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (3, 2, CAST(N'2016-06-30 21:19:00' AS SmallDateTime), NULL, N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (4, 2, CAST(N'2016-06-30 21:24:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (5, 2, CAST(N'2016-06-30 21:47:00' AS SmallDateTime), CAST(N'2016-06-30 21:48:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (6, 2, CAST(N'2016-06-30 21:47:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (7, 2, CAST(N'2016-06-30 21:50:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (8, 2, CAST(N'2016-06-30 22:00:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (9, 2, CAST(N'2016-06-30 22:17:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (10, 2, CAST(N'2016-06-30 22:18:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (11, 2, CAST(N'2016-07-01 07:06:00' AS SmallDateTime), CAST(N'2016-07-01 07:07:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (12, 2, CAST(N'2016-07-01 07:09:00' AS SmallDateTime), CAST(N'2016-07-01 07:10:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (13, 3, CAST(N'2016-07-01 07:10:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (14, 3, CAST(N'2016-07-01 07:10:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (15, 3, CAST(N'2016-07-01 07:10:00' AS SmallDateTime), CAST(N'2016-07-01 07:12:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (16, 4, CAST(N'2016-07-01 07:12:00' AS SmallDateTime), CAST(N'2016-07-01 07:13:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (17, 5, CAST(N'2016-07-01 07:13:00' AS SmallDateTime), CAST(N'2016-07-01 07:14:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (18, 3, CAST(N'2016-07-01 07:14:00' AS SmallDateTime), CAST(N'2016-07-01 07:22:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (19, 2, CAST(N'2016-07-01 07:22:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (20, 2, CAST(N'2016-07-01 07:29:00' AS SmallDateTime), CAST(N'2016-07-01 07:30:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (21, 3, CAST(N'2016-07-01 07:30:00' AS SmallDateTime), CAST(N'2016-07-01 07:31:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (22, 2, CAST(N'2016-07-01 16:22:00' AS SmallDateTime), NULL, N'86.96.24.159', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (23, 2, CAST(N'2016-07-01 21:38:00' AS SmallDateTime), NULL, N'86.96.24.159', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (24, 2, CAST(N'2016-07-01 21:52:00' AS SmallDateTime), CAST(N'2016-07-01 22:05:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (25, 2, CAST(N'2016-07-01 21:52:00' AS SmallDateTime), NULL, N'49.204.19.5', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (26, 3, CAST(N'2016-07-03 13:09:00' AS SmallDateTime), NULL, N'59.91.30.126', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (27, 4, CAST(N'2016-07-03 13:46:00' AS SmallDateTime), CAST(N'2016-07-03 13:56:00' AS SmallDateTime), N'117.206.229.180', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (28, 2, CAST(N'2016-07-05 06:38:00' AS SmallDateTime), CAST(N'2016-07-05 06:48:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (29, 2, CAST(N'2016-07-05 06:46:00' AS SmallDateTime), CAST(N'2016-07-05 06:48:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (30, 3, CAST(N'2016-07-05 06:48:00' AS SmallDateTime), CAST(N'2016-07-05 06:49:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (31, 4, CAST(N'2016-07-05 06:49:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (32, 4, CAST(N'2016-07-05 06:58:00' AS SmallDateTime), NULL, N'49.204.224.107', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (33, 4, CAST(N'2016-07-05 06:58:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (34, 4, CAST(N'2016-07-05 07:00:00' AS SmallDateTime), CAST(N'2016-07-05 07:07:00' AS SmallDateTime), N'::1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (35, 4, CAST(N'2016-07-05 19:45:00' AS SmallDateTime), CAST(N'2016-07-05 19:45:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (36, 3, CAST(N'2016-07-05 20:31:00' AS SmallDateTime), CAST(N'2016-07-05 20:31:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (37, 4, CAST(N'2016-07-05 20:31:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (38, 4, CAST(N'2016-07-05 20:47:00' AS SmallDateTime), CAST(N'2016-07-05 20:49:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (39, 2, CAST(N'2016-07-05 20:49:00' AS SmallDateTime), CAST(N'2016-07-05 20:50:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (40, 2, CAST(N'2016-07-07 11:26:00' AS SmallDateTime), NULL, N'83.110.69.30', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (41, 2, CAST(N'2016-07-07 13:49:00' AS SmallDateTime), NULL, N'49.204.37.106', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (42, 2, CAST(N'2016-07-07 14:18:00' AS SmallDateTime), NULL, N'49.204.37.106', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (43, 2, CAST(N'2016-07-07 14:24:00' AS SmallDateTime), NULL, N'49.204.37.106', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (44, 2, CAST(N'2016-07-08 18:42:00' AS SmallDateTime), NULL, N'183.82.97.1', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (45, 2, CAST(N'2016-07-08 18:42:00' AS SmallDateTime), CAST(N'2016-07-08 18:44:00' AS SmallDateTime), N'183.82.97.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (46, 3, CAST(N'2016-07-08 18:46:00' AS SmallDateTime), CAST(N'2016-07-08 18:52:00' AS SmallDateTime), N'92.98.171.187', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (47, 4, CAST(N'2016-07-08 18:48:00' AS SmallDateTime), CAST(N'2016-07-08 18:52:00' AS SmallDateTime), N'183.82.97.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (48, 3, CAST(N'2016-07-08 18:59:00' AS SmallDateTime), CAST(N'2016-07-08 19:02:00' AS SmallDateTime), N'183.82.97.1', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (49, 2, CAST(N'2016-07-08 20:09:00' AS SmallDateTime), NULL, N'49.204.37.106', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (50, 2, CAST(N'2016-07-08 22:06:00' AS SmallDateTime), CAST(N'2016-07-08 22:09:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (51, 2, CAST(N'2016-07-08 22:07:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (52, 3, CAST(N'2016-07-08 22:10:00' AS SmallDateTime), CAST(N'2016-07-08 22:12:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (53, 3, CAST(N'2016-07-08 22:11:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (54, 3, CAST(N'2016-07-08 22:12:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (55, 3, CAST(N'2016-07-08 22:13:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (56, 3, CAST(N'2016-07-08 22:15:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (57, 3, CAST(N'2016-07-08 22:26:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (58, 3, CAST(N'2016-07-08 22:28:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (59, 3, CAST(N'2016-07-08 22:43:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (60, 3, CAST(N'2016-07-08 22:53:00' AS SmallDateTime), CAST(N'2016-07-08 22:55:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (61, 2, CAST(N'2016-07-09 00:28:00' AS SmallDateTime), NULL, N'49.204.37.106', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (62, 2, CAST(N'2016-07-09 00:39:00' AS SmallDateTime), NULL, N'49.204.37.106', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (63, 3, CAST(N'2016-07-09 18:22:00' AS SmallDateTime), NULL, N'92.98.169.241', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (64, 3, CAST(N'2016-07-09 19:04:00' AS SmallDateTime), CAST(N'2016-07-09 19:06:00' AS SmallDateTime), N'92.98.169.241', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (65, 2, CAST(N'2016-07-09 19:13:00' AS SmallDateTime), NULL, N'92.98.169.241', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (66, 2, CAST(N'2016-07-09 19:32:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (67, 2, CAST(N'2016-07-09 19:32:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (68, 2, CAST(N'2016-07-09 19:33:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (69, 2, CAST(N'2016-07-09 19:33:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (70, 2, CAST(N'2016-07-09 19:33:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (71, 2, CAST(N'2016-07-09 19:33:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (72, 2, CAST(N'2016-07-09 19:33:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (73, 2, CAST(N'2016-07-09 19:33:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (74, 2, CAST(N'2016-07-09 19:33:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (75, 2, CAST(N'2016-07-09 19:34:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (76, 2, CAST(N'2016-07-09 19:34:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (77, 2, CAST(N'2016-07-09 19:35:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (78, 2, CAST(N'2016-07-09 19:46:00' AS SmallDateTime), CAST(N'2016-07-09 19:50:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (79, 3, CAST(N'2016-07-09 19:50:00' AS SmallDateTime), NULL, N'49.204.19.5', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (80, 3, CAST(N'2016-07-09 19:51:00' AS SmallDateTime), CAST(N'2016-07-09 19:51:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (81, 2, CAST(N'2016-07-09 19:57:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (82, 2, CAST(N'2016-07-09 20:03:00' AS SmallDateTime), CAST(N'2016-07-09 20:04:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (83, 3, CAST(N'2016-07-09 20:04:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (84, 3, CAST(N'2016-07-09 20:13:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (85, 3, CAST(N'2016-07-09 20:21:00' AS SmallDateTime), CAST(N'2016-07-09 20:23:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (86, 3, CAST(N'2016-07-09 20:26:00' AS SmallDateTime), CAST(N'2016-07-09 20:26:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (87, 2, CAST(N'2016-07-09 20:26:00' AS SmallDateTime), CAST(N'2016-07-09 20:27:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (88, 7, CAST(N'2016-07-09 20:28:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (89, 7, CAST(N'2016-07-09 20:28:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (90, 2, CAST(N'2016-07-09 20:29:00' AS SmallDateTime), CAST(N'2016-07-09 20:30:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (91, 7, CAST(N'2016-07-09 20:30:00' AS SmallDateTime), CAST(N'2016-07-09 20:39:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (92, 3, CAST(N'2016-07-09 20:40:00' AS SmallDateTime), CAST(N'2016-07-09 20:42:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (93, 2, CAST(N'2016-07-09 20:42:00' AS SmallDateTime), CAST(N'2016-07-09 20:43:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (94, 3, CAST(N'2016-07-09 20:43:00' AS SmallDateTime), CAST(N'2016-07-09 20:47:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (95, 2, CAST(N'2016-07-09 20:48:00' AS SmallDateTime), CAST(N'2016-07-09 20:49:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (96, 2, CAST(N'2016-07-09 20:49:00' AS SmallDateTime), CAST(N'2016-07-09 20:49:00' AS SmallDateTime), N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (97, 2, CAST(N'2016-07-09 20:49:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (98, 3, CAST(N'2016-07-10 15:22:00' AS SmallDateTime), NULL, N'49.204.19.5', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (99, 2, CAST(N'2016-07-12 22:08:00' AS SmallDateTime), NULL, N'86.96.26.70', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (100, 3, CAST(N'2016-07-18 22:50:00' AS SmallDateTime), NULL, N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (101, 2, CAST(N'2016-07-24 18:52:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (102, 2, CAST(N'2016-07-24 21:41:00' AS SmallDateTime), NULL, N'176.205.120.247', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (103, 2, CAST(N'2016-07-24 21:53:00' AS SmallDateTime), CAST(N'2016-07-24 22:00:00' AS SmallDateTime), N'176.205.120.247', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (104, 2, CAST(N'2016-07-24 21:59:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (105, 2, CAST(N'2016-07-24 22:00:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (106, 2, CAST(N'2016-07-24 22:00:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (107, 2, CAST(N'2016-07-24 22:00:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (108, 2, CAST(N'2016-07-24 22:00:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (109, 2, CAST(N'2016-07-24 22:00:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (110, 2, CAST(N'2016-07-24 22:01:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (111, 3, CAST(N'2016-07-24 22:32:00' AS SmallDateTime), CAST(N'2016-07-24 22:36:00' AS SmallDateTime), N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (112, 2, CAST(N'2016-07-24 22:40:00' AS SmallDateTime), NULL, N'49.204.60.151', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (113, 2, CAST(N'2016-07-25 21:26:00' AS SmallDateTime), NULL, N'92.98.200.201', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (114, 2, CAST(N'2016-07-27 23:30:00' AS SmallDateTime), CAST(N'2016-07-27 23:31:00' AS SmallDateTime), N'49.204.224.107', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (115, 2, CAST(N'2016-08-31 23:52:00' AS SmallDateTime), NULL, N'92.98.9.113', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (116, 2, CAST(N'2016-09-02 17:44:00' AS SmallDateTime), NULL, N'31.215.240.82', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (117, 2, CAST(N'2016-09-08 16:01:00' AS SmallDateTime), NULL, N'83.110.233.188', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (118, 2, CAST(N'2016-09-08 22:30:00' AS SmallDateTime), CAST(N'2016-09-08 22:35:00' AS SmallDateTime), N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (119, 3, CAST(N'2016-09-08 22:35:00' AS SmallDateTime), CAST(N'2016-09-08 22:40:00' AS SmallDateTime), N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (120, 2, CAST(N'2016-09-08 22:40:00' AS SmallDateTime), CAST(N'2016-09-08 22:42:00' AS SmallDateTime), N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (121, 3, CAST(N'2016-09-08 22:50:00' AS SmallDateTime), NULL, N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (122, 2, CAST(N'2016-09-08 23:05:00' AS SmallDateTime), CAST(N'2016-09-08 23:06:00' AS SmallDateTime), N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (123, 3, CAST(N'2016-09-08 23:06:00' AS SmallDateTime), CAST(N'2016-09-08 23:12:00' AS SmallDateTime), N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (124, 4, CAST(N'2016-09-08 23:13:00' AS SmallDateTime), CAST(N'2016-09-08 23:19:00' AS SmallDateTime), N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (125, 2, CAST(N'2016-09-08 23:23:00' AS SmallDateTime), NULL, N'83.110.66.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (126, 2, CAST(N'2016-09-12 16:20:00' AS SmallDateTime), NULL, N'176.205.124.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (127, 2, CAST(N'2016-09-12 16:53:00' AS SmallDateTime), CAST(N'2016-09-12 16:57:00' AS SmallDateTime), N'176.205.124.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (128, 2, CAST(N'2016-09-12 16:57:00' AS SmallDateTime), CAST(N'2016-09-12 17:00:00' AS SmallDateTime), N'176.205.124.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (129, 3, CAST(N'2016-09-12 17:00:00' AS SmallDateTime), NULL, N'176.205.124.26', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (130, 3, CAST(N'2016-09-12 17:01:00' AS SmallDateTime), NULL, N'176.205.124.26', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (131, 3, CAST(N'2016-09-12 17:02:00' AS SmallDateTime), NULL, N'176.205.124.26', 3)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (132, 2, CAST(N'2016-09-12 17:04:00' AS SmallDateTime), NULL, N'176.205.124.26', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (133, 2, CAST(N'2016-09-18 22:46:00' AS SmallDateTime), CAST(N'2016-09-18 22:47:00' AS SmallDateTime), N'157.48.119.150', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (134, 2, CAST(N'2016-09-18 22:47:00' AS SmallDateTime), NULL, N'92.98.175.227', 1)
GO
INSERT [dbo].[LoginLog] ([LoginLogID], [UserID], [LoginDate], [LogoutDate], [IPAddress], [Status]) VALUES (135, 2, CAST(N'2016-09-18 22:48:00' AS SmallDateTime), NULL, N'92.98.175.227', 1)
GO
SET IDENTITY_INSERT [dbo].[LoginLog] OFF
GO
SET IDENTITY_INSERT [dbo].[MainCategory] ON 

GO
INSERT [dbo].[MainCategory] ([MainCategoryID], [MainCategoryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (100, N' Materials', 1, 1, CAST(N'2016-06-28 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-28 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[MainCategory] ([MainCategoryID], [MainCategoryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (101, N'Rentals', 1, 1, CAST(N'2016-06-28 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-28 00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[MainCategory] ([MainCategoryID], [MainCategoryName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (102, N'Services', 1, 1, CAST(N'2016-06-28 00:00:00' AS SmallDateTime), 1, CAST(N'2016-06-28 00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[MainCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[PricePlan] ON 

GO
INSERT [dbo].[PricePlan] ([PlanID], [PlanName], [PlanPrice], [PlanSubscription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Gold', CAST(2000.00 AS Decimal(10, 2)), 3, 2, CAST(N'2016-09-08 23:24:00' AS SmallDateTime), 2, CAST(N'2016-09-08 23:24:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[PricePlan] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCatalog] ON 

GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Hella Lights', N'', 176, 100, 1, 3, CAST(N'2016-07-01 07:31:03.433' AS DateTime), 3, CAST(N'2016-07-01 07:31:03.433' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Home Audio Speaker', N'', 184, 100, 1, 3, CAST(N'2016-07-03 13:23:50.687' AS DateTime), 3, CAST(N'2016-07-03 13:23:50.687' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Toys Bhoomi RC Forklift', N'', 190, 100, 1, 3, CAST(N'2016-07-03 13:26:46.223' AS DateTime), 3, CAST(N'2016-07-03 13:26:46.223' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Full HD LED TV', N'', 191, 100, 1, 3, CAST(N'2016-07-03 13:28:48.863' AS DateTime), 3, CAST(N'2016-07-03 13:28:48.863' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Convection Microwave Oven', N'', 191, 100, 1, 3, CAST(N'2016-07-03 13:30:41.360' AS DateTime), 3, CAST(N'2016-07-03 13:30:41.360' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Carrier 1.5 Tons 5 Star Split AC', N'', 391, 114, 1, 3, CAST(N'2016-07-03 13:40:35.210' AS DateTime), 3, CAST(N'2016-07-03 13:40:35.210' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'Wired Headphones', N'', 188, 100, 1, 3, CAST(N'2016-07-03 13:44:49.113' AS DateTime), 3, CAST(N'2016-07-03 13:44:49.113' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'Carbon Steel Collapsible Wardrobe', N'', 150, 107, 1, 4, CAST(N'2016-07-03 13:51:38.630' AS DateTime), 4, CAST(N'2016-07-03 13:51:38.630' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'Ideawoods-classy-solid-wood-3-1-sofa-set', N'', 641, 122, 1, 4, CAST(N'2016-07-03 13:54:09.793' AS DateTime), 4, CAST(N'2016-07-03 13:54:09.793' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'Classy Solid Wood', N'', 151, 107, 1, 4, CAST(N'2016-07-05 20:47:27.777' AS DateTime), 4, CAST(N'2016-07-05 20:47:27.777' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'Sudhakar Pumps and mtors', N'', 100, 105, 1, 3, CAST(N'2016-09-08 22:39:33.627' AS DateTime), 3, CAST(N'2016-09-08 22:39:33.627' AS DateTime))
GO
INSERT [dbo].[ProductCatalog] ([ProductID], [ProductName], [AliasNames], [SubCategoryID], [CategoryID], [CountryID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'Sudhakar Pumps and motors', N'', 100, 105, 1, 3, CAST(N'2016-09-08 22:51:04.460' AS DateTime), 3, CAST(N'2016-09-08 22:51:04.460' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductCatalog] OFF
GO
SET IDENTITY_INSERT [dbo].[Quotation] ON 

GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 110, 7, 3, 11, 3, CAST(N'2016-07-08 22:09:00' AS SmallDateTime), 3, CAST(N'2016-07-08 22:09:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 112, 9, 3, 2, 3, CAST(N'2016-07-09 19:39:00' AS SmallDateTime), 3, CAST(N'2016-07-09 19:39:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 113, 10, 3, 11, 3, CAST(N'2016-07-09 20:04:00' AS SmallDateTime), 3, CAST(N'2016-07-09 20:04:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 114, 7, 3, 2, 3, CAST(N'2016-07-09 20:27:00' AS SmallDateTime), 3, CAST(N'2016-07-09 20:27:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 109, 7, 4, 2, 4, CAST(N'2016-07-09 20:29:00' AS SmallDateTime), 4, CAST(N'2016-07-09 20:29:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 116, 9, 3, 11, 3, CAST(N'2016-09-08 23:06:00' AS SmallDateTime), 3, CAST(N'2016-09-08 23:08:00' AS SmallDateTime))
GO
INSERT [dbo].[Quotation] ([QuotationID], [EnquiryID], [CustomerID], [VendorID], [StatusID], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 118, 9, 4, 11, 4, CAST(N'2016-09-08 23:06:00' AS SmallDateTime), 4, CAST(N'2016-09-08 23:14:00' AS SmallDateTime))
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
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'ManageBannerAd', N'Add BannerAd', 1, 1, 0, 0, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
GO
INSERT [dbo].[Screens] ([ScreenID], [ScreenName], [DisplayName], [Order], [Category], [Status], [ShowInMenu], [IsAdminScreen], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'ViewBannerAds', N'Banner Ads', 1, 1, 0, 1, 1, 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime), 1, CAST(N'2016-01-24 11:53:00' AS SmallDateTime))
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
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (100, 105, N'Pumps and Pumping Equipment', NULL, 1, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (101, 105, N'Dies, Jigs & Moulds', NULL, 2, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (102, 105, N'Manufacturing & Assembling Services', NULL, 3, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (103, 105, N'Bearings & Bearing Assemblies', NULL, 4, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (104, 105, N'Bolts, Screws, Pins & Components', NULL, 5, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (105, 105, N'Gears, Gear Boxes and Parts', NULL, 6, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (106, 105, N'Seals, Oil Seals & Industrial Seals', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (107, 105, N'Hydraulic & Pneumatic Machines', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (108, 105, N'Castings Manufacturers', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (109, 105, N'Alloy, Metal and Machine Screws', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (110, 105, N'Alloy, Metal and High Strength Bolts', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (111, 105, N'Alloy, Metal and Industrial Nuts', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (112, 105, N'Air Springs & Compression Springs', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (113, 105, N'Miscellaneous Gaskets & Gasket Seals', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (114, 105, N'Nails & Pins', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (115, 105, N'Sheet Metal & Turned Components', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (116, 105, N'Bushings & Bushing Parts', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (117, 105, N'Clutch, Clutch Parts & Accessories', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (118, 105, N'Forgings, Forging Parts & Supplies', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (119, 105, N'Alloy, Metal and Machine Washers', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (120, 105, N'CAD CAM Design & Consultancy', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (121, 105, N'Hydraulic & Pneumatic Cylinders', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (122, 105, N'Welding, Soldering & Brazing Service', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (123, 105, N'Molding & Moulding Services', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (124, 106, N'Water Bath', NULL, 1, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (125, 106, N'Centrifugal Machine', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (126, 106, N'Laminar Flow Machine ', NULL, 2, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (127, 106, N'Educational Trainer', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (128, 106, N'Fume Hoods', NULL, 3, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (129, 106, N'Laboratory shakers', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (130, 106, N'Laboratory Furniture', NULL, 5, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (131, 106, N'Anatomical models', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (132, 106, N'Laboratory bath', NULL, 6, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (133, 106, N'Laboratory Centrifuge', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (134, 106, N'Magnetic Stirrer', NULL, 4, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (135, 106, N'Humidity chambers', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (136, 106, N'Laboratory testing instruments', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (137, 106, N'Laboratory stirrer', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (138, 106, N'Diagnostic kits', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (139, 106, N'Filter Paper', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (140, 106, N'Digital PH meter', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (141, 106, N'Biosafety cabinets', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (142, 106, N'Pipette', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (143, 106, N'Laboratory hot plates', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (144, 106, N'Mechanical lab equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (145, 106, N'Engineering training equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (146, 106, N'Laboratory plasticware', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (147, 106, N'Bacteriological Incubator', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (148, 106, N'Testing sieves', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (149, 106, N'Laboratory mixers', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (150, 107, N'Home & Household Furniture', NULL, 2, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (151, 107, N'Office & Commercial Furniture', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (152, 107, N'Interior Designing & Decoration', NULL, 1, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (153, 107, N'Wooden Furniture For Home & Office', NULL, 3, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (154, 107, N'Retail Displays & Fixtures', NULL, 5, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (155, 107, N'Metal Furniture Suppliers', NULL, 4, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (156, 107, N'Hospital & Medical Furniture', NULL, 6, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (157, 107, N'Bedroom & Kitchen Furniture', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (158, 107, N'Furniture Fittings & Hardware', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (159, 107, N'Outdoor and Garden Furniture', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (160, 107, N'Heavy & Light Duty Casters & Rollers', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (161, 107, N'Furniture Racks & Shelves', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (162, 107, N'Trade Show & Exhibition Equipment', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (163, 107, N'Extruded & Molded Plastic Furniture', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (164, 107, N'Bathroom Cabinets & Furniture', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (165, 107, N'Furniture Making & Carpentry Service', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (166, 108, N'Agricultural Machines & Equipment', NULL, 1, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (167, 108, N'Seeds & Plantation Products', NULL, 2, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (168, 108, N'Horticulture & Garden Tools', NULL, 3, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (169, 108, N'Fresh Flowers, Plants & Trees', NULL, 4, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (170, 108, N'Fertilizers & Soil Additives', NULL, 5, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (171, 108, N'Starch, Husk & Agro Waste', NULL, 6, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (172, 108, N'Animal & Bird Feed Supplements', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (173, 108, N'Garden Planters, Pots & Urns', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (174, 108, N'Tractor Parts & Tractor Assemblies', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (175, 108, N'Livestock & Animal Husbandry', NULL, 0, 1, 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime), 1, CAST(N'2016-06-29 18:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (176, 100, N'Lights', NULL, 1, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (177, 100, N'Light Products', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (178, 100, N'Security & Protection devices', NULL, 5, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (179, 100, N'Switches & Switch gears', NULL, 3, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (180, 100, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (181, 100, N'Measuring Equipments & Instruments', NULL, 4, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (182, 100, N'Electric Fittings & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (183, 100, N'Electrical & Electrical Connectors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (184, 100, N'Amplifiers, headphones & Speakers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (185, 100, N'Electrical Cables & Wires', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (186, 100, N'Electronic & Electronic test devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (187, 100, N'Electronic Parts & Spares', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (188, 100, N'Telecommunication equipment & parts', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (189, 100, N'Auto electrical & Light system', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (190, 100, N'Electric motors & components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (191, 100, N'House hold Appliances & equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (192, 100, N'Resistors & other passive devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (193, 100, N'Battery & Storage devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (194, 100, N'Electrical Cables & wires', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (195, 100, N'Power Generators & Alternators', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (196, 100, N'Adhesive & Pressure Sensitive Tapes', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (197, 100, N'IC, Diodes and Other Active Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (198, 100, N'Electrical Control Panels & Boards', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (199, 100, N'Electrical & Signaling Contractors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (200, 100, N'Voltage & Power Transformers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (201, 100, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (202, 100, N'Table Lamps & Lamp Shades', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (203, 100, N'Instrument Calibration & Adjustment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (204, 100, N'Optical Components & Optics', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (205, 100, N'Metal and Alloy Wires', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (206, 100, N'Neon & Glow Signs', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (207, 100, N'LED, LCD TV and Monitors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (208, 100, N'Cables & Wiring Components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (209, 100, N'Stage, Flood and Commercial Lights', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (210, 100, N'Inverters and Power Converters', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (211, 100, N'CCTV & Surveillance', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (212, 100, N'Electronic Relays and Contactors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (213, 100, N'Voltage & Power Stabilizers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (214, 100, N'Chandeliers & Wall Sconces', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (215, 100, N'Interior and Exterior Lighting', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (216, 100, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (217, 100, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (218, 100, N'Fuses, Circuit Breakers & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (219, 100, N'GPS & Navigation Device', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (220, 100, N'Headphones and Microphones', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (221, 100, N'CD, DVD, MP3 & Audio Video Players', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (222, 100, N'Access Cards & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (223, 100, N'Decorative and Party Lights', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (224, 100, N'Computer Manufacturers & Assemblers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (225, 100, N'Conduits & Conduit Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (226, 100, N'Electrical & Electronic Goods Rental', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (227, 100, N'Coils & Electromagnetic Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (228, 100, N'Hospital & Medical Lights', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (229, 104, N'conveyor & transmission belts', NULL, 1, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (230, 104, N'Electric fittings & components', NULL, 2, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (231, 104, N'Dies,Jigs & Moulds', NULL, 3, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (232, 104, N'Manufacturing & Assembling services', NULL, 4, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (233, 104, N'Bearings & Bearing Assemblies', NULL, 5, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (234, 104, N'Industrial & Metal Fabrication', NULL, 6, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (235, 104, N'Electronic Parts & Spares', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (236, 104, N'Industrial & Engineering Goods', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (237, 104, N'Rubber & Rubber Products', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (238, 104, N'Hoses & Hose Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (239, 104, N'Electric Motors & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (240, 104, N'Seals, Oil Seals & Industrial Seals', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (241, 104, N'Battery & Storage Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (242, 104, N'Oils, Grease & Lubricants', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (243, 104, N'Safety Equipment & Systems', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (244, 104, N'Metal Finishing & Coating Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (245, 104, N'Material Testing Labs & Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (246, 104, N'Adhesives, Glue & Sealants', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (247, 104, N'Abrasives & Grains', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (248, 104, N'Industrial & Safety Clothing', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (249, 104, N'Measurement Gauges & Gauge Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (250, 104, N'Castings Manufacturers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (251, 104, N'Adhesive & Pressure Sensitive Tapes', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (252, 104, N'Aluminum, Brass, Bronze Pipes', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (253, 104, N'Industrial & Shipping Containers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (254, 104, N'Stained, Etched & Laminated Glass', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (255, 104, N'Air Springs & Compression Springs', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (256, 104, N'Instrument Calibration & Adjustment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (257, 104, N'Lifting Hooks, Chains & Clamps', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (258, 104, N'Magnets and Magnetic Separators', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (259, 104, N'Air, Gas & Other Compressors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (260, 104, N'Wire Mesh & Gratings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (261, 104, N'Miscellaneous Gaskets & Gasket Seals', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (262, 104, N'Metal Scrap & Waste Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (263, 104, N'Industrial Racks & Storage System', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (264, 104, N'Enclosures & Cabinets', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (265, 104, N'Elevators & Escalators', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (266, 104, N'Sheet Metal & Turned Components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (267, 104, N'Product Engineering and Prototyping', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (268, 104, N'Piston & Crankshaft Assemblies', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (269, 104, N'Boilers & Furnace', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (270, 104, N'Engineering, Shipping & Other Ropes', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (271, 104, N'Clutch, Clutch Parts & Accessories', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (272, 104, N'Fiber Glass Products', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (273, 104, N'Stamping & Stamping Supplies', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (274, 104, N'Forgings, Forging Parts & Supplies', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (275, 104, N'Heavy & Light Duty Casters & Rollers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (276, 104, N'Steel Bars, Rods, Plates & Sheets', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (277, 104, N'CAD CAM Design & Consultancy', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (278, 104, N'Conduits & Conduit Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (279, 104, N'Brushes & Bristles', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (280, 104, N'Hydraulic Cranes, Jacks & Stackers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (281, 104, N'Rust & Corrosion Protection Products', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (282, 104, N'Industrial & Machine Brushes', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (283, 104, N'Welding, Soldering & Brazing Service', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (284, 104, N'Molding & Moulding Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (285, 104, N'Lubrication Systems and Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (286, 109, N'Steel & Stainless Steel', NULL, 1, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (287, 109, N'Minerals and Ores', NULL, 2, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (288, 109, N'Metal & Metal Made Products', NULL, 3, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (289, 109, N'Metal Finishing & Coating Services', NULL, 4, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (290, 109, N'Aluminium and Aluminium Products', NULL, 6, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (291, 109, N'Abrasives & Grains', NULL, 5, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (292, 109, N'Iron & Ferro Alloys', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (293, 109, N'Coal, Carbon & Graphite', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (294, 109, N'Copper & Brass Products', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (295, 109, N'Metal Scrap & Waste Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (296, 109, N'Steel Bars, Rods, Plates & Sheets', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (297, 109, N'Ironware, Ironmongery & Iron Artware', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (298, 109, N'Cement & Concrete', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (299, 109, N'Mica & Mica Products', NULL, 0, 1, 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (300, 110, N'Pliers, Screwdrivers & Hammers', NULL, 1, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (301, 110, N'Milling & Grinding Tools', NULL, 4, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (302, 110, N'Cutting Tools & Equipment', NULL, 2, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (303, 110, N'Machine Tools & Accessories', NULL, 3, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (304, 110, N'Electrical & Electronic Goods Repair', NULL, 5, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (305, 110, N'Hydraulic & Pneumatic Tools', NULL, 6, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (306, 110, N'CNC Machines, Lathes & Tools', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (307, 110, N'Horticulture & Garden Tools', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (308, 110, N'Cutting Machines & Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (309, 110, N'Sewing & Knitting Machine', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (310, 110, N'Marine Tools & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (311, 110, N'Woodworking Tools & Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (312, 110, N'Cutting Blades, Knives and Scissors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (313, 110, N'Saws, Chainsaws and Saw Blades', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (314, 110, N'Honing & Surface Finishing Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (315, 110, N'Power Transmission Tools & Couplings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (316, 110, N'Spanners & Wrenches', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (317, 110, N'Used Machinery & Tools', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (318, 111, N'Machines & Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (319, 111, N'Instrumentation & Control Equipments', NULL, 6, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (320, 111, N'Manufacturing & Assembling Services', NULL, 3, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (321, 111, N'Milling & Grinding Tools', NULL, 1, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (322, 111, N'Welding Equipments & Machinery', NULL, 4, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (323, 111, N'Drilling & Boring Equipment', NULL, 5, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (324, 111, N'Cranes & Forklifts', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (325, 111, N'Industrial Furnaces & Ovens', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (326, 111, N'Water Treatment & Purifying Plants', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (327, 111, N'Metal Finishing & Coating Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (328, 111, N'Material Handling Machines & Systems', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (329, 111, N'Power Generators & Alternators', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (330, 111, N'Electrical & Signaling Contractors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (331, 111, N'Voltage & Power Transformers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (332, 111, N'Pollution Control Machines & Filters', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (333, 111, N'Engine & Engine Spare Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (334, 111, N'CNC Machines, Lathes & Tools', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (335, 111, N'Air Springs & Compression Springs', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (336, 111, N'Cooling & Heat Transfer Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (337, 111, N'Plant Design & Installation Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (338, 111, N'Chemical Plants & Machinery', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (339, 111, N'Industrial Mixers & Homogenizers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (340, 111, N'Casting and Moulding Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (341, 111, N'Industrial Racks & Storage System', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (342, 111, N'Dryers & Evaporators', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (343, 111, N'Building Survey & Soil Investigation', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (344, 111, N'Product Engineering and Prototyping', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (345, 111, N'Oxygen & Nitrogen Gas Plants', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (346, 111, N'Honing & Surface Finishing Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (347, 111, N'Voltage & Power Stabilizers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (348, 111, N'Earth Moving Machinery & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (349, 111, N'Power Transmission Tools & Couplings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (350, 111, N'Waste Management & Control Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (351, 111, N'Agricultural & Farm Consultants', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (352, 111, N'Oil Mill & Oil Extraction Machinery', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (353, 111, N'CAD CAM Design & Consultancy', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (354, 111, N'Product Packing & Labelling Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (355, 111, N'Medical and Specialty Gases', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (356, 111, N'Aircraft Engines & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (357, 111, N'Steering Parts & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (358, 111, N'Hydraulic Cranes, Jacks & Stackers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (359, 111, N'Metal, Plastic & Industrial Printing', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (360, 111, N'Process Control Systems & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (361, 111, N'Drilling, Boring & Mining Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (362, 111, N'Welding, Soldering & Brazing Service', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (363, 111, N'Extractors & Refining Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (364, 111, N'Lubrication Systems and Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (365, 112, N'Security & Protection Devices', NULL, 1, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (366, 112, N'Safety Equipment & Systems', NULL, 2, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (367, 112, N'Mechanical Locks & Electronic Locks', NULL, 3, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (368, 112, N'Gates, Grilles & Fences', NULL, 4, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (369, 112, N'Fire Fighting & Prevention Products', NULL, 5, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (370, 112, N'Residential & Commercial Security', NULL, 6, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (371, 112, N'CCTV & Surveillance', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (372, 112, N'Road Barriers & Safety', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (373, 112, N'Access Cards & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (374, 112, N'Intelligence Devices & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (375, 113, N'Switches & Switchgears', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (376, 113, N'Instrumentation & Control Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (377, 113, N'Electrical & Electronic Connectors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (378, 113, N'Electrical Cables & Wires', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (379, 113, N'Telecommunication Equipment & Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (380, 113, N'Electric Motors & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (381, 113, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (382, 113, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (383, 113, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (384, 113, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (385, 113, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (386, 113, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (387, 113, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (388, 113, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (389, 113, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (390, 114, N'Heater,thermostat & heating devices', NULL, 4, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (391, 114, N'Air Conditioning systems & equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (392, 114, N'Electric fans & Coolers', NULL, 3, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (393, 114, N'Energy conservation goods & products', NULL, 1, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (394, 114, N'Electrical & electronic goods repair', NULL, 5, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (395, 114, N' Insulation Materials & Accessories', NULL, 6, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (396, 114, N'Air Conditioning & heating equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (397, 114, N'Heater, Thermostat & Heating Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (398, 114, N'Filters & Filtration systems', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (399, 114, N'Steel & Stainless steel', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (400, 114, N'Bolts, screws, pins & components', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (401, 114, N'Air Handling Units/Fan Coil Units/VAV', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (402, 114, N'HVAC Controls, Sensors', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (403, 114, N'Dampers', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (404, 114, N'Ducts & Related Accessories', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (405, 115, N'Valves & Valve fittings', NULL, 6, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (406, 115, N'Pipe fittings & flanges', NULL, 5, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (407, 115, N'Plastic, PVC & PP Products', NULL, 3, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (408, 115, N'Steel Pipes and Tubes', NULL, 2, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (409, 115, N'Pipe Elbows, Joints & Couplings', NULL, 4, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (410, 115, N'Separators, Strainers & Purifiers', NULL, 1, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (411, 115, N'PVC, FRP, HDPE & Other Plastic Pipes', NULL, 4, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (412, 115, N'Pipe Bends & Parts', NULL, 4, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (413, 115, N'Flanges & Flanged Fittings', NULL, 5, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (414, 115, N'PVC, LDPE, HDPE & Plastic Sheets', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (415, 115, N'Alloy, Metal, Plastic Pipe Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (416, 115, N'Steel Pipes and Tubes', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (417, 116, N'Fire Fighting & Prevention Products', NULL, 0, 1, 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:40:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (418, 117, N'Cement & Concrete', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (419, 117, N'Joinery', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (420, 117, N'Doors,Windows,Frame works & Accessories', NULL, 1, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (421, 117, N'Bolts,screws,pins & Components', NULL, 2, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (422, 117, N'Mechanical Locks & Electronic Locks', NULL, 3, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (423, 117, N'Paints,Powders & Vanishes', NULL, 4, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (424, 117, N'Hardware Fittings', NULL, 5, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (425, 117, N'Timber,Plywood & Planks', NULL, 6, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (426, 117, N'Roofings & Ceiling Panels', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (427, 117, N'Gates, Grilles & Fences', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (428, 117, N'Door Hardware & Window Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (429, 117, N'Mortar, Brick & Grouts', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (430, 117, N'Prefabricated & Portable Buildings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (431, 117, N'Granite, Marble, Sandstone & Others', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (432, 117, N'Stained, Etched & Laminated Glass', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (433, 117, N'Carts, Dollies & Trolleys', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (434, 117, N'Scaffolding & Scaffolding Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (435, 117, N'Ceramic Tiles & Floorings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (436, 117, N'Wire Mesh & Gratings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (437, 117, N'Surface Coating & Paint Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (438, 117, N'Teflon, Wax & Surface Coatings	', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (439, 117, N'Elevators & Escalators', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (440, 117, N'Stone Tiles & Floorings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (441, 117, N'Stairs, Newels & Balusters', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (442, 117, N'Building & Construction Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (443, 117, N'Awnings, Canopies & Sheds', NULL, 6, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (444, 117, N'Faucets, Mixers & Taps', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (445, 117, N'Hooks, Mounts, Holders & Hardware', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (446, 117, N'Clamps & Clamping Equipment', NULL, 3, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (447, 117, N'Beams, Girders & Rebars', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (448, 117, N'Door, Window Frame, Panel & Shutters', NULL, 4, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (449, 117, N'Cobbles, Pebbles & Pavings', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (450, 117, N'Wood Tiles, Floorings & Laminates', NULL, 5, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (451, 117, N'Plastic Floorings & Tiles', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (452, 117, N'Acoustics and Soundproofing', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (453, 117, N'Geomembranes & Pond Liners', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (454, 117, N'Bathroom Cabinets & Furniture	', NULL, 0, 1, 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime), 1, CAST(N'2016-06-30 10:46:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (455, 118, N'Lights', NULL, 1, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (456, 118, N'Light Products', NULL, 2, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (457, 118, N'Security & Protection devices', NULL, 3, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (458, 118, N'Switches & Switch gears', NULL, 4, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (459, 118, N'Instrumentation & Control Equipments', NULL, 5, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (460, 118, N'Measuring Equipments & Instruments', NULL, 6, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (461, 118, N'Electric Fittings & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (462, 118, N'Electrical & Electrical Connectors', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (463, 118, N'Amplifiers, headphones & Speakers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (464, 118, N'Electrical Cables & Wires', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (465, 118, N'Electronic & Electronic test devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (466, 118, N'Electronic Parts & Spares', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (467, 118, N'Telecommunication equipment & parts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (468, 118, N'Auto electrical & Light system', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (469, 118, N'Heater,thermostat & heating devices', NULL, 2, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (470, 118, N'Air Conditioning systems & equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (471, 118, N'Electric fans & Coolers', NULL, 2, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (472, 118, N'Electric motors & components', NULL, 2, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (473, 118, N'House hold Appliances & equipments', NULL, 1, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (474, 118, N'Resistors & other passive devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (475, 118, N'Energy conservation goods & products', NULL, 4, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (476, 118, N'Electrical & electronic goods repair', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (477, 118, N'Battery & Storage devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (478, 118, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (479, 118, N'Power Generators & Alternators', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (480, 118, N'Adhesive & Pressure Sensitive Tapes', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (481, 118, N'IC, Diodes and Other Active Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (482, 118, N'Camera & Photography Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (483, 118, N'Electrical Control Panels & Boards', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (484, 118, N'Electrical & Signaling Contractors', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (485, 118, N'Voltage & Power Transformers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (486, 118, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (487, 118, N'Table Lamps & Lamp Shades', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (488, 118, N'Instrument Calibration & Adjustment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (489, 118, N'Optical Components & Optics', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (490, 118, N'Metal and Alloy Wires', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (491, 118, N'Neon & Glow Signs', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (492, 118, N'LED, LCD TV and Monitors', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (493, 118, N'Cables & Wiring Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (494, 118, N'Stage, Flood and Commercial Lights', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (495, 118, N'Inverters and Power Converters', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (496, 118, N'CCTV & Surveillance', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (497, 118, N'Electronic Relays and Contactors', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (498, 118, N'Voltage & Power Stabilizers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (499, 118, N'Chandeliers & Wall Sconces', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (500, 118, N'Interior and Exterior Lighting', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (501, 118, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (502, 118, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (503, 118, N'Fuses, Circuit Breakers & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (504, 118, N'GPS & Navigation Device', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (505, 118, N'Headphones and Microphones', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (506, 118, N'CD, DVD, MP3 & Audio Video Players', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (507, 118, N'Access Cards & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (508, 118, N'Decorative and Party Lights', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (509, 118, N'Computer Manufacturers & Assemblers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (510, 118, N'Conduits & Conduit Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (511, 118, N'Electrical & Electronic Goods Rental', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (512, 118, N'Coils & Electromagnetic Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (513, 118, N'Hospital & Medical Lights', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (514, 119, N'Valves & Valve fittings', NULL, 1, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (515, 119, N'conveyor & transmission belts', NULL, 2, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (516, 119, N'Electric fittings & components', NULL, 3, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (517, 119, N'Pipe fittings & flanges', NULL, 4, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (518, 119, N'Dies,Jigs & Moulds', NULL, 5, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (519, 119, N'Air Conditioning & heating equipment', NULL, 6, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (520, 119, N'Plastic, PVC & PP Products', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (521, 119, N'Manufacturing & Assembling services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (522, 119, N'Bearings & Bearing Assemblies', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (523, 119, N'Filters & Filtration systems', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (524, 119, N'Steel & Stainless steel', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (525, 119, N'Bolts, screws, pins & components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (526, 119, N'Electrical Cables & wires', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (527, 119, N'Industrial & Metal Fabrication', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (528, 119, N'Electronic Parts & Spares', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (529, 119, N'Industrial & Engineering Goods', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (530, 119, N'Rubber & Rubber Products', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (531, 119, N'Heater, Thermostat & Heating Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (532, 119, N'Hoses & Hose Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (533, 119, N'Electric Motors & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (534, 119, N'Seals, Oil Seals & Industrial Seals', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (535, 119, N'Battery & Storage Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (536, 119, N'Oils, Grease & Lubricants', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (537, 119, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (538, 119, N'Safety Equipment & Systems', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (539, 119, N'Metal Finishing & Coating Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (540, 119, N'Material Testing Labs & Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (541, 119, N'Adhesives, Glue & Sealants', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (542, 119, N'Abrasives & Grains', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (543, 119, N'Industrial & Safety Clothing', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (544, 119, N'Measurement Gauges & Gauge Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (545, 119, N'Steel Pipes and Tubes', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (546, 119, N'Castings Manufacturers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (547, 119, N'Adhesive & Pressure Sensitive Tapes', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (548, 119, N'Aluminum, Brass, Bronze Pipes', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (549, 119, N'"Industrial & Shipping Containers"', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (550, 119, N'Fire Fighting & Prevention Products', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (551, 119, N'Stained, Etched & Laminated Glass', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (552, 119, N'Air Springs & Compression Springs', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (553, 119, N'Instrument Calibration & Adjustment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (554, 119, N'Lifting Hooks, Chains & Clamps', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (555, 119, N'Magnets and Magnetic Separators', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (556, 119, N'Air, Gas & Other Compressors', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (557, 119, N'Wire Mesh & Gratings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (558, 119, N'Miscellaneous Gaskets & Gasket Seals', NULL, 2, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (559, 119, N'Pipe Elbows, Joints & Couplings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (560, 119, N'Separators, Strainers & Purifiers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (561, 119, N'Metal Scrap & Waste Materials', NULL, 3, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (562, 119, N'PVC, FRP, HDPE & Other Plastic Pipes', NULL, 4, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (563, 119, N'Industrial Racks & Storage System', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (564, 119, N'Enclosures & Cabinets', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (565, 119, N'Elevators & Escalators', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (566, 119, N'Sheet Metal & Turned Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (567, 119, N'Product Engineering and Prototyping', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (568, 119, N'Piston & Crankshaft Assemblies', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (569, 119, N'Boilers & Furnace', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (570, 119, N'Pipe Bends & Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (571, 119, N'Engineering, Shipping & Other Ropes', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (572, 119, N'Clutch, Clutch Parts & Accessories', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (573, 119, N'Fiber Glass Products', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (574, 119, N'Stamping & Stamping Supplies', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (575, 119, N'Flanges & Flanged Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (576, 119, N'Forgings, Forging Parts & Supplies', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (577, 119, N'Heavy & Light Duty Casters & Rollers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (578, 119, N'Steel Bars, Rods, Plates & Sheets', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (579, 119, N'PVC, LDPE, HDPE & Plastic Sheets', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (580, 119, N'Alloy, Metal, Plastic Pipe Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (581, 119, N'CAD CAM Design & Consultancy', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (582, 119, N'Conduits & Conduit Fittings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (583, 119, N'Brushes & Bristles', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (584, 119, N'Hydraulic Cranes, Jacks & Stackers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (585, 119, N'Rust & Corrosion Protection Products', NULL, 5, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (586, 119, N'Industrial & Machine Brushes', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (587, 119, N'Welding, Soldering & Brazing Service', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (588, 119, N'Molding & Moulding Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (589, 119, N'Lubrication Systems and Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (590, 120, N'Valves & Valve Fittings', NULL, 1, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (591, 120, N'Pumps and Pumping Equipment', NULL, 2, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (592, 120, N'Dies, Jigs & Moulds', NULL, 3, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (593, 120, N'Manufacturing & Assembling Services', NULL, 4, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (594, 120, N'Bearings & Bearing Assemblies', NULL, 5, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (595, 120, N'Bolts, Screws, Pins & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (596, 120, N'Gears, Gear Boxes and Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (597, 120, N'Seals, Oil Seals & Industrial Seals', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (598, 120, N'Hydraulic & Pneumatic Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (599, 120, N'Castings Manufacturers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (600, 120, N'Alloy, Metal and Machine Screws', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (601, 120, N'Alloy, Metal and High Strength Bolts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (602, 120, N'Alloy, Metal and Industrial Nuts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (603, 120, N'Air Springs & Compression Springs', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (604, 120, N'Miscellaneous Gaskets & Gasket Seals', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (605, 120, N'Nails & Pins', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (606, 120, N'Sheet Metal & Turned Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (607, 120, N'Bushings & Bushing Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (608, 120, N'Clutch, Clutch Parts & Accessories', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (609, 120, N'Forgings, Forging Parts & Supplies', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (610, 120, N'Alloy, Metal and Machine Washers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (611, 120, N'CAD CAM Design & Consultancy', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (612, 120, N'Hydraulic & Pneumatic Cylinders', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (613, 120, N'Welding, Soldering & Brazing Service', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (614, 120, N'Molding & Moulding Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:21:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (615, 121, N'Water Bath', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (616, 121, N'Centrifugal Machine', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (617, 121, N'Laminar Flow Machine ', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (618, 121, N'Educational Trainer', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (619, 121, N'Fume Hoods', NULL, 5, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (620, 121, N'Laboratory shakers', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (621, 121, N'Laboratory Furniture', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (622, 121, N'Anatomical models', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (623, 121, N'Laboratory bath', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (624, 121, N'Laboratory Centrifuge', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (625, 121, N'Magnetic Stirrer', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (626, 121, N'Humidity chambers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (627, 121, N'Laboratory testing instruments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (628, 121, N'Laboratory stirrer', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (629, 121, N'Diagnostic kits', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (630, 121, N'Filter Paper', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (631, 121, N'Digital PH meter', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (632, 121, N'Biosafety cabinets', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (633, 121, N'Pipette', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (634, 121, N'Laboratory hot plates', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (635, 121, N'Mechanical lab equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (636, 121, N'Engineering training equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (637, 121, N'Laboratory plasticware', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (638, 121, N'Bacteriological Incubator', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (639, 121, N'Testing sieves', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (640, 121, N'Laboratory mixers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (641, 122, N'Home & Household Furniture', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (642, 122, N'Office & Commercial Furniture', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (643, 122, N'Interior Designing & Decoration', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (644, 122, N'Wooden Furniture For Home & Office', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (645, 122, N'Retail Displays & Fixtures', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (646, 122, N'Metal Furniture Suppliers', NULL, 5, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (647, 122, N'Hospital & Medical Furniture', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (648, 122, N'Bedroom & Kitchen Furniture', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (649, 122, N'Furniture Fittings & Hardware', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (650, 122, N'Outdoor and Garden Furniture', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (651, 122, N'Heavy & Light Duty Casters & Rollers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (652, 122, N'Furniture Racks & Shelves', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (653, 122, N'Trade Show & Exhibition Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (654, 122, N'Extruded & Molded Plastic Furniture', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (655, 122, N'Bathroom Cabinets & Furniture', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (656, 122, N'Furniture Making & Carpentry Service', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (657, 123, N'Agricultural Machines & Equipment', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (658, 123, N'Seeds & Plantation Products', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (659, 123, N'Horticulture & Garden Tools', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (660, 123, N'Fresh Flowers, Plants & Trees', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (661, 123, N'Fertilizers & Soil Additives', NULL, 5, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (662, 123, N'Starch, Husk & Agro Waste', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (663, 123, N'Animal & Bird Feed Supplements', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (664, 123, N'Garden Planters, Pots & Urns', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (665, 123, N'Tractor Parts & Tractor Assemblies', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (666, 123, N'Livestock & Animal Husbandry', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (667, 124, N'Steel & Stainless Steel', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (668, 124, N'Minerals and Ores', NULL, 5, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (669, 124, N'Metal & Metal Made Products', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (670, 124, N'Metal Finishing & Coating Services', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (671, 124, N'Aluminium and Aluminium Products', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (672, 124, N'Abrasives & Grains', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (673, 124, N'Iron & Ferro Alloys', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (674, 124, N'Coal, Carbon & Graphite', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (675, 124, N'Copper & Brass Products', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (676, 124, N'Metal Scrap & Waste Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (677, 124, N'Steel Bars, Rods, Plates & Sheets', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (678, 124, N'Ironware, Ironmongery & Iron Artware', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (679, 124, N'Cement & Concrete', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (680, 124, N'Mica & Mica Products', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (681, 125, N'Pliers, Screwdrivers & Hammers', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (682, 125, N'Milling & Grinding Tools', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (683, 125, N'Cutting Tools & Equipment', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (684, 125, N'Machine Tools & Accessories', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (685, 125, N'Electrical & Electronic Goods Repair', NULL, 5, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (686, 125, N'Hydraulic & Pneumatic Tools', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (687, 125, N'CNC Machines, Lathes & Tools', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (688, 125, N'Horticulture & Garden Tools', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (689, 125, N'Cutting Machines & Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (690, 125, N'Sewing & Knitting Machine', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (691, 125, N'Marine Tools & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (692, 125, N'Woodworking Tools & Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (693, 125, N'Cutting Blades, Knives and Scissors', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (694, 125, N'Saws, Chainsaws and Saw Blades', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (695, 125, N'Honing & Surface Finishing Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (696, 125, N'Power Transmission Tools & Couplings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (697, 125, N'Spanners & Wrenches', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (698, 125, N'Used Machinery & Tools', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (699, 126, N'Machines & Equipments', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (700, 126, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (701, 126, N'Manufacturing & Assembling Services', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (702, 126, N'Milling & Grinding Tools', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (703, 126, N'Welding Equipments & Machinery', NULL, 5, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (704, 126, N'Drilling & Boring Equipment', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (705, 126, N'Cranes & Forklifts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (706, 126, N'Industrial Furnaces & Ovens', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (707, 126, N'Water Treatment & Purifying Plants', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (708, 126, N'Metal Finishing & Coating Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (709, 126, N'Material Handling Machines & Systems', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (710, 126, N'Power Generators & Alternators', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (711, 126, N'Electrical & Signaling Contractors', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (712, 126, N'Voltage & Power Transformers', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (713, 126, N'Pollution Control Machines & Filters', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (714, 126, N'Engine & Engine Spare Parts', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (715, 126, N'CNC Machines, Lathes & Tools', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (716, 126, N'Air Springs & Compression Springs', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (717, 126, N'Cooling & Heat Transfer Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (718, 126, N'Plant Design & Installation Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (719, 126, N'Chemical Plants & Machinery', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (720, 126, N'Industrial Mixers & Homogenizers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (721, 126, N'Casting and Moulding Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (722, 126, N'Industrial Racks & Storage System', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (723, 126, N'Dryers & Evaporators', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (724, 126, N'Building Survey & Soil Investigation', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (725, 126, N'Product Engineering and Prototyping', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (726, 126, N'Oxygen & Nitrogen Gas Plants', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (727, 126, N'Honing & Surface Finishing Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (728, 126, N'Voltage & Power Stabilizers', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (729, 126, N'Earth Moving Machinery & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (730, 126, N'Power Transmission Tools & Couplings', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (731, 126, N'Waste Management & Control Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (732, 126, N'Agricultural & Farm Consultants', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (733, 126, N'Oil Mill & Oil Extraction Machinery', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (734, 126, N'CAD CAM Design & Consultancy', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (735, 126, N'Product Packing & Labelling Services', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (736, 126, N'Medical and Specialty Gases', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (737, 126, N'Aircraft Engines & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (738, 126, N'Steering Parts & Components', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (739, 126, N'Hydraulic Cranes, Jacks & Stackers', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (740, 126, N'Metal, Plastic & Industrial Printing', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (741, 126, N'Process Control Systems & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (742, 126, N'Drilling, Boring & Mining Services', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (743, 126, N'Welding, Soldering & Brazing Service', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (744, 126, N'Extractors & Refining Machines', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (745, 126, N'Lubrication Systems and Equipment', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (746, 127, N'Security & Protection Devices', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (747, 127, N'Safety Equipment & Systems', NULL, 1, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (748, 127, N'Mechanical Locks & Electronic Locks', NULL, 2, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (749, 127, N'Gates, Grilles & Fences', NULL, 3, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (750, 127, N'Fire Fighting & Prevention Products', NULL, 4, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (751, 127, N'Residential & Commercial Security', NULL, 5, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (752, 127, N'CCTV & Surveillance', NULL, 6, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (753, 127, N'Road Barriers & Safety', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (754, 127, N'Access Cards & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (755, 127, N'Intelligence Devices & Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime), 1, CAST(N'2016-06-30 11:45:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (756, 128, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (757, 128, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (758, 128, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (759, 128, N'Electrical Cables & Wires', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (760, 128, N'Telecommunication Equipment & Parts', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (761, 128, N'Electric Motors & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (762, 128, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (763, 128, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (764, 128, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (765, 128, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (766, 128, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (767, 128, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (768, 128, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (769, 128, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (770, 128, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (771, 129, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (772, 129, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (773, 129, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (774, 129, N'Electrical Cables & Wires', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (775, 129, N'Telecommunication Equipment & Parts', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (776, 129, N'Electric Motors & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (777, 129, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (778, 129, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (779, 129, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (780, 129, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (781, 129, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (782, 129, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (783, 129, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (784, 129, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (785, 129, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (786, 130, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (787, 130, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (788, 130, N'Electrical & Electronic Connectors', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (789, 130, N'Electrical Cables & Wires', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (790, 130, N'Telecommunication Equipment & Parts', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (791, 130, N'Electric Motors & Components', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (792, 130, N'Resistors & Other Passive Devices', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (793, 130, N'Insulators & Insulation Materials', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (794, 130, N'Computer and Networking Solutions', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (795, 130, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (796, 130, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (797, 130, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (798, 130, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (799, 130, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (800, 130, N'Telecom Services, Engg & Maintenance', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (801, 131, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (802, 131, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (803, 131, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (804, 131, N'Electrical Cables & Wires', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (805, 131, N'Telecommunication Equipment & Parts', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (806, 131, N'Electric Motors & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (807, 131, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (808, 131, N'Insulators & Insulation Materials', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (809, 131, N'Computer and Networking Solutions', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (810, 131, N'Office Automation Products & Devices', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (811, 131, N'Computer Hardware & Network Support', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (812, 131, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (813, 131, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (814, 131, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (815, 131, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (816, 132, N'Switches & Switchgears', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (817, 132, N'Instrumentation & Control Equipments', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (818, 132, N'Electrical & Electronic Connectors', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (819, 132, N'Electrical Cables & Wires', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (820, 132, N'Telecommunication Equipment & Parts', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (821, 132, N'Electric Motors & Components', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (822, 132, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (823, 132, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (824, 132, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (825, 132, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (826, 132, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (827, 132, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (828, 132, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (829, 132, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (830, 132, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (831, 133, N'Switches & Switchgears', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (832, 133, N'Instrumentation & Control Equipments', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (833, 133, N'Electrical & Electronic Connectors', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (834, 133, N'Electrical Cables & Wires', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (835, 133, N'Telecommunication Equipment & Parts', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (836, 133, N'Electric Motors & Components', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (837, 133, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (838, 133, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (839, 133, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (840, 133, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (841, 133, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (842, 133, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (843, 133, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (844, 133, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (845, 133, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (846, 134, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (847, 134, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (848, 134, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (849, 134, N'Electrical Cables & Wires', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (850, 134, N'Telecommunication Equipment & Parts', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (851, 134, N'Electric Motors & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (852, 134, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (853, 134, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (854, 134, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (855, 134, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (856, 134, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (857, 134, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (858, 134, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (859, 134, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (860, 134, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (861, 135, N'Switches & Switchgears', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (862, 135, N'Instrumentation & Control Equipments', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (863, 135, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (864, 135, N'Electrical Cables & Wires', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (865, 135, N'Telecommunication Equipment & Parts', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (866, 135, N'Electric Motors & Components', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (867, 135, N'Resistors & Other Passive Devices', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (868, 135, N'Insulators & Insulation Materials', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (869, 135, N'Computer and Networking Solutions', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (870, 135, N'Office Automation Products & Devices', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (871, 135, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (872, 135, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (873, 135, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (874, 135, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (875, 135, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (876, 136, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (877, 136, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (878, 136, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (879, 136, N'Electrical Cables & Wires', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (880, 136, N'Telecommunication Equipment & Parts', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (881, 136, N'Electric Motors & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (882, 136, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (883, 136, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (884, 136, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (885, 136, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (886, 136, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (887, 136, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (888, 136, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (889, 136, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (890, 136, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (891, 137, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (892, 137, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (893, 137, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (894, 137, N'Electrical Cables & Wires', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (895, 137, N'Telecommunication Equipment & Parts', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (896, 137, N'Electric Motors & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (897, 137, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (898, 137, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (899, 137, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (900, 137, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (901, 137, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (902, 137, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (903, 137, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (904, 137, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (905, 137, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (906, 138, N'Switches & Switchgears', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (907, 138, N'Instrumentation & Control Equipments', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (908, 138, N'Electrical & Electronic Connectors', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (909, 138, N'Electrical Cables & Wires', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (910, 138, N'Telecommunication Equipment & Parts', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (911, 138, N'Electric Motors & Components', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (912, 138, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (913, 138, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (914, 138, N'Computer and Networking Solutions', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (915, 138, N'Office Automation Products & Devices', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (916, 138, N'Computer Hardware & Network Support', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (917, 138, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (918, 138, N'Antennas, Wifi & Communication Tower', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (919, 138, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (920, 138, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (921, 139, N'Switches & Switchgears', NULL, 1, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (922, 139, N'Instrumentation & Control Equipments', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (923, 139, N'Electrical & Electronic Connectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (924, 139, N'Electrical Cables & Wires', NULL, 4, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (925, 139, N'Telecommunication Equipment & Parts', NULL, 5, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (926, 139, N'Electric Motors & Components', NULL, 6, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (927, 139, N'Resistors & Other Passive Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (928, 139, N'Insulators & Insulation Materials', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (929, 139, N'Computer and Networking Solutions', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (930, 139, N'Office Automation Products & Devices', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (931, 139, N'Computer Hardware & Network Support', NULL, 2, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (932, 139, N'Hard Disks, Card Readers & Pen Drive', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (933, 139, N'Antennas, Wifi & Communication Tower', NULL, 3, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (934, 139, N'Tele Conferencing & VoIP Services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (935, 139, N'Telecom Services, Engg & Maintenance', NULL, 0, 1, 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:02:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (936, 140, N'Articulated dump trucks', NULL, 1, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (937, 140, N'backhoe loaders', NULL, 2, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (938, 140, N'compact backhoes', NULL, 3, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (939, 140, N'dozers', NULL, 4, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (940, 140, N'dump trucks', NULL, 5, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (941, 140, N'excavators', NULL, 6, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (942, 140, N'forklifts', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (943, 140, N'large forklifts', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (944, 140, N'mini excavators', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (945, 140, N'motor graders', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (946, 140, N'ride on sweepers', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (947, 140, N'ride on trenchers', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (948, 140, N'scrapers', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (949, 140, N'skid steer loaders', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (950, 140, N'soil copmpactors', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (951, 140, N'telehandler lifts', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (952, 140, N'track loader', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (953, 140, N'water trucks', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (954, 141, N'Arrow boards', NULL, 1, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (955, 141, N'barricades', NULL, 2, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (956, 141, N'construction signs & stands', NULL, 3, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (957, 141, N'crash attenuator', NULL, 4, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (958, 141, N'crash cushions', NULL, 5, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (959, 141, N'light towers', NULL, 6, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (960, 141, N'lights', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (961, 141, N'message boards', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (962, 141, N'portable traffic signal', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (963, 141, N'sand barrels', NULL, 6, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (964, 141, N'speed radar trailers', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (965, 141, N'traffic cones', NULL, 4, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (966, 141, N'traffic data collection', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (967, 141, N'traffic drums', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (968, 141, N'traffic safety apparel', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (969, 141, N'traffic waterfalls', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (970, 142, N'3D laser scanners', NULL, 1, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (971, 142, N'construction lasers', NULL, 2, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (972, 142, N'data collectors', NULL, 3, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (973, 142, N'digital levels', NULL, 4, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (974, 142, N'GPS/GNSS & Accessories', NULL, 5, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (975, 142, N'Magnetic Locators', NULL, 6, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (976, 142, N'Range finders', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (977, 142, N'Theodolites', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (978, 142, N'Tool stations', NULL, 0, 1, 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:12:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (979, 143, N'Construction design services', NULL, 1, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (980, 143, N'Structural design services', NULL, 2, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (981, 143, N'Architectural design services', NULL, 3, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (982, 143, N'MEP design services', NULL, 4, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (983, 143, N'Interior design services', NULL, 5, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (984, 143, N'Authorities approval services', NULL, 6, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (985, 143, N'Sustainability design services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (986, 143, N'LEED design services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (987, 143, N'Estidama design services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (988, 143, N'Kitchen specialist design services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (989, 143, N'Car Park design services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (990, 143, N'Lift/Elevators design services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (991, 143, N'Building cleaning design services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (992, 143, N'Building Survey & Soil Investigation services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (993, 143, N'Land Surveyors', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (994, 143, N'Mapping Service', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (995, 143, N'Building survey services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (996, 143, N'Layout survey services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (997, 143, N'Topographic survey services', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (998, 144, N'Masons', NULL, 6, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (999, 144, N'carpenters', NULL, 5, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1000, 144, N'welders', NULL, 4, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1001, 144, N'plumbers', NULL, 3, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1002, 144, N'steel fixers', NULL, 2, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1003, 144, N'AC technician', NULL, 1, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1004, 144, N'duct man', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1005, 144, N'insulators', NULL, 1, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1006, 144, N'Helpers', NULL, 0, 1, 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime), 1, CAST(N'2016-06-30 12:18:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1007, 145, N'villas', N'Villa', 0, 0, 2, CAST(N'2016-07-24 22:01:00' AS SmallDateTime), 2, CAST(N'2016-07-24 22:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1008, 145, N'hotels', N'Hotel', 0, 0, 2, CAST(N'2016-07-24 22:12:00' AS SmallDateTime), 2, CAST(N'2016-07-24 22:13:00' AS SmallDateTime))
GO
INSERT [dbo].[SubCategory] ([SubCategoryID], [CategoryID], [SubCategoryName], [AliasNames], [DisplayOrder], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1009, 145, N'apartments', N'Appartment', 0, 0, 2, CAST(N'2016-07-24 22:12:00' AS SmallDateTime), 2, CAST(N'2016-07-24 22:13:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitofMeasurement] ON 

GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Kilogram', 1, 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime))
GO
INSERT [dbo].[UnitofMeasurement] ([UnitID], [UnitName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Nos', 1, 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime), 1, CAST(N'2016-04-26 22:58:00' AS SmallDateTime))
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
SET IDENTITY_INSERT [dbo].[UnitofMeasurement] OFF
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Satya', N' Legend', 1, CAST(N'0001-01-01' AS Date), 1, N'192.168.1.2', 1, CAST(N'2016-01-03 20:41:00' AS SmallDateTime), 1, CAST(N'2016-02-24 08:32:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Vendor', N'Pro1', 1, CAST(N'0001-01-01' AS Date), 1, N'1.0.0.0', 0, CAST(N'2016-07-01 07:05:00' AS SmallDateTime), 0, CAST(N'2016-07-01 07:05:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Vendor', N'Pro2', 1, CAST(N'0001-01-01' AS Date), 1, N'1.0.0.0', 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime), 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Vendor', N'Pro3', 1, CAST(N'0001-01-01' AS Date), 1, N'1.0.0.0', 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime), 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Muneer', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'183.82.97.1', 0, CAST(N'2016-07-08 18:59:00' AS SmallDateTime), 0, CAST(N'2016-07-08 18:59:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'Shaik subhani', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'183.82.97.1', 0, CAST(N'2016-07-08 19:03:00' AS SmallDateTime), 0, CAST(N'2016-07-08 19:03:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'Test User', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.224.107', 0, CAST(N'2016-07-08 20:04:00' AS SmallDateTime), 0, CAST(N'2016-07-08 20:04:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'suresh', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'86.96.28.245', 0, CAST(N'2016-07-09 12:07:00' AS SmallDateTime), 0, CAST(N'2016-07-09 12:07:00' AS SmallDateTime))
GO
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [Gender], [DOB], [CountryID], [RegisteredIP], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'TestingASCust', N'', 1, CAST(N'0001-01-01' AS Date), 1, N'49.204.19.5', 0, CAST(N'2016-07-09 19:52:00' AS SmallDateTime), 0, CAST(N'2016-07-09 19:52:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'admin@gmail.com', N'9999999999', N'704E8810D5608A2C4EA8D89CD9C43462', NULL, 0, 0, 1, 1, 1, CAST(N'2013-10-09 12:59:00' AS SmallDateTime), 1, CAST(N'2014-01-03 15:37:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'VendorPro1@gmail.com', N'9111111111', N'73CEA60EF1A08AD6798D1F93B74A6C30', NULL, 0, 3, 2, 1, 0, CAST(N'2016-07-01 07:05:00' AS SmallDateTime), 0, CAST(N'2016-07-01 07:05:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'VendorPro2@gmail.com', N'9222222222', N'73CEA60EF1A08AD6798D1F93B74A6C30', NULL, 0, 0, 2, 1, 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime), 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'VendorPro3@gmail.com', N'9333333333', N'73CEA60EF1A08AD6798D1F93B74A6C30', NULL, 0, 0, 2, 1, 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime), 0, CAST(N'2016-07-01 07:08:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'muneer_india@yahoo.com', N'0508491725', N'E02D0A639C0368AAB5ADDB7AC5C60CD8', NULL, 1, 0, 3, 1, 0, CAST(N'2016-07-08 18:59:00' AS SmallDateTime), 0, CAST(N'2016-07-08 18:59:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'shaikmsubhani@gmail.com', N'1234567891', N'5D0055BE50C9FA56B6BC30C84CCA7F80', NULL, 0, 0, 3, 1, 0, CAST(N'2016-07-08 19:03:00' AS SmallDateTime), 0, CAST(N'2016-07-08 19:03:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'satyasai.kc@gmail.com', N'1234567890', N'3A6AEBA837F8E6EDCF150C35F8100E3A', NULL, 1, 0, 3, 1, 0, CAST(N'2016-07-08 20:04:00' AS SmallDateTime), 0, CAST(N'2016-07-08 20:04:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'suresh_amara@yahoo.com', N'9652440774', N'9722C237B99915EB7477DE749CE2FCBE', NULL, 1, 0, 3, 1, 0, CAST(N'2016-07-09 12:07:00' AS SmallDateTime), 0, CAST(N'2016-07-09 12:07:00' AS SmallDateTime))
GO
INSERT [dbo].[Users] ([UserID], [Email], [Mobile], [Password], [PasswordChangedDate], [IsNewPassword], [InvalidLoginAttempts], [RoleID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'mahaboobshaik1@outlook.com', N'9322222222', N'00068BB213BA0426CC1D9049595EC941', NULL, 1, 0, 3, 5, 0, CAST(N'2016-07-09 19:52:00' AS SmallDateTime), 0, CAST(N'2016-07-09 19:52:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[VendorInventory] ON 

GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 3, 1, N'&lt;div&gt;&lt;font color=&quot;#545454&quot; face=&quot;arial^ sans-serif&quot; size=&quot;2&quot;&gt;&lt;span style=&quot;line-height: 18.2px; background-color: rgb(255^ 255^ 255);&quot;&gt;Auxiliary headlamps by HELLA – powerful light with passion. Whoever ventures off the beaten track must always be ready to face extremes.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;font color=&quot;#545454&quot; face=&quot;arial^ sans-serif&quot; size=&quot;2&quot;&gt;&lt;span style=&quot;line-height: 18.2px; background-color: rgb(255^ 255^ 255);&quot;&gt;Discover all the latest news about HELLA here. calls_16.png. HELLA Overview. Learn more aboutHELLA in your region. HTW Banner. HELLA Tech World.&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;', N'www.myhellalights.com/', 1, CAST(9000 AS Decimal(8, 0)), 2, 1, 3, CAST(N'2016-07-01 07:31:03.823' AS DateTime), 3, CAST(N'2016-07-01 07:31:03.823' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 3, 2, N'&lt;font color=&quot;#666666&quot; face=&quot;arial^ tahoma^ verdana^ sans-serif&quot;&gt;&lt;span style=&quot;font-size: 13px; line-height: 18px; word-spacing: 2px;&quot;&gt;YOUR AUDIO HUB With four inputs including one wireless^ the Addon T20 is the hub of all your home audio. Stream your music wirelessly^ connect your TV^ Apple&amp;nbsp;&lt;/span&gt;&lt;/font&gt;', N'http://www.flipkart.com/audio-pro-addon-t20-home-speaker/', 1, CAST(89990 AS Decimal(8, 0)), 28, 1, 3, CAST(N'2016-07-03 13:23:50.743' AS DateTime), 3, CAST(N'2016-07-03 13:23:50.743' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 3, 3, N'Bringing the job site to your own backward with Toys Bhoomi’s motorized Construction machines. Toys Bhoomi presents the newly launched RC Forklift^ made out of high quality material and is very detailed just like the real thing for indoor and outdoor use. RC Front Loader will give you hours', N'http://www.flipkart.com/toys-bhoomi-rc-forklift-construction/', 1, CAST(799 AS Decimal(8, 0)), 6, 1, 3, CAST(N'2016-07-03 13:26:46.250' AS DateTime), 3, CAST(N'2016-07-03 13:26:46.250' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 3, 4, N'&lt;div&gt;LED Display&lt;/div&gt;&lt;div&gt;108 cm (43)&lt;/div&gt;&lt;div&gt;Full HD^ 1920 x 1080&lt;/div&gt;&lt;div&gt;2 x HDMI^ 1 x USB&lt;/div&gt;&lt;div&gt;Refresh Rate - PMI (Picture Mastering Index): 300 Hz&lt;/div&gt;', N'http://www.flipkart.com/lg-108cm-43-full-hd-led-tv/', 1, CAST(35967 AS Decimal(8, 0)), 6, 1, 3, CAST(N'2016-07-03 13:28:48.877' AS DateTime), 3, CAST(N'2016-07-03 13:28:48.877' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 3, 5, N'&lt;span style=&quot;color: rgb(86^ 86^ 86); font-family: arial^ tahoma^ verdana^ sans-serif; font-size: 13px; line-height: 16.9px; background-color: rgb(255^ 255^ 255);&quot;&gt;This 25-litre convection oven flaunts a stylish yet convenient design with its mirror glass finish door and feather touch controls. It features a stainless steel cavity that gives a good cooking performance&lt;/span&gt;', N'http://www.flipkart.com/morphy-richards-25cg-25-l-convection-microwave-oven/', 1, CAST(10990 AS Decimal(8, 0)), 28, 1, 3, CAST(N'2016-07-03 13:30:41.380' AS DateTime), 3, CAST(N'2016-07-03 13:30:41.380' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 3, 6, N'&lt;ul class=&quot;keyFeaturesList&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 20px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 16.9px; font-family: arial^ tahoma^ verdana^ sans-serif; vertical-align: baseline; color: rgb(51^ 51^ 51); background-color: rgb(255^ 255^ 255);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;As the capacity is in the range of 1 to 1.5 tons^ it is recommended that you use a 4 KVA (10 Amps) stabilizer with this Air Conditioner in order to prevent damage from power fluctuations. Recommended to buy brand genuine accessories.&lt;/li&gt;&lt;/ul&gt;', N'http://www.flipkart.com/carrier-1-5-tons-5-star-split-ac-white/p/', 1, CAST(35490 AS Decimal(8, 0)), 28, 1, 3, CAST(N'2016-07-03 13:40:37.937' AS DateTime), 3, CAST(N'2016-07-03 13:40:37.937' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 3, 7, N'&lt;ul class=&quot;key-specifications fk-ul-disc lpadding20 line fk-font-11 fk-fontlight&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 20px; border: 0px; font-stretch: inherit; vertical-align: baseline; overflow: hidden; background-color: rgb(255^ 255^ 255);&quot;&gt;&lt;li class=&quot;key-specification tmargin2 bmargin2&quot; style=&quot;margin: 0px 0px 2px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-stretch: inherit; vertical-align: baseline;&quot;&gt;&lt;font color=&quot;#848484&quot; face=&quot;arial^ tahoma^ verdana^ sans-serif&quot;&gt;&lt;span style=&quot;font-size: 11px;&quot;&gt;The comfy ear cushions prevent audio leakage^ so people around you won&#39;t be annoyed by the rock music you listen to. The cushions also enhance bass frequencies.&lt;/span&gt;&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;', N'http://www.flipkart.com/philips-shp1900-97-wired-headphones/p', 1, CAST(473 AS Decimal(8, 0)), 28, 1, 3, CAST(N'2016-07-03 13:44:49.130' AS DateTime), 3, CAST(N'2016-07-03 13:44:49.130' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 4, 9, N'&lt;span style=&quot;color: rgb(102^ 102^ 102); line-height: 18px; font-family: arial^ tahoma^ verdana^ sans-serif; font-size: 13px; word-spacing: 2px; background-color: rgb(255^ 255^ 255);&quot;&gt;Idea Woods Milan Sofa Set with Brown Upholstery: Transform your living room into a comfortable^ relaxing and stylish place with the Milan sofa set from Idea Woods. The set includes a three-seater sofa and two single-seater sofas^ and the sofas have an elegant brown fabric upholstery. The durable and sturdy sofa sets inner frame is made of silver wood and the backrest has polyfill and moulded foam^&amp;nbsp;&lt;/span&gt;', N'http://www.flipkart.com/ideawoods-classy-solid-wood-3-1-sofa-set/', 1, CAST(45000 AS Decimal(8, 0)), 28, 1, 4, CAST(N'2016-07-03 13:54:09.827' AS DateTime), 4, CAST(N'2016-07-05 07:01:01.990' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 4, 10, N'&lt;span style=&quot;color: rgb(132^ 132^ 132); font-family: arial^ tahoma^ verdana^ sans-serif; font-size: 11px; line-height: 14.3px; background-color: rgb(255^ 255^ 255);&quot;&gt;30 day replacement warranty against any manufacturing defects The warranty does not cover natural wear and tear and excludes commercial use&lt;/span&gt;', N'http://www.flipkart.com/ideawoods-classy-solid-wood-sectional-sofa-set/p', 1, CAST(41000 AS Decimal(8, 0)), 28, 1, 4, CAST(N'2016-07-05 20:47:27.800' AS DateTime), 4, CAST(N'2016-07-05 20:47:27.800' AS DateTime))
GO
INSERT [dbo].[VendorInventory] ([InventoryID], [UserID], [ProductID], [Description], [MoreRedirectURL], [ShowProductInSearch], [PricePerUnit], [UnitID], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 3, 12, N'testing', N'http://google.com', 1, CAST(1000 AS Decimal(8, 0)), 2, 5, 3, CAST(N'2016-09-08 22:39:33.643' AS DateTime), 3, CAST(N'2016-09-08 22:51:04.497' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[VendorInventory] OFF
GO
ALTER TABLE [dbo].[BannerAd] ADD  CONSTRAINT [DF_BannerAd_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[BannerAd] ADD  CONSTRAINT [DF_BannerAd_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BannerAd] ADD  CONSTRAINT [DF_BannerAd_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[DbErrorLog] ADD  CONSTRAINT [DF_DbErrorLog_LogDate]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[PlanFeature] ADD  CONSTRAINT [DF_PlanFeature_IsEditable]  DEFAULT ((1)) FOR [IsEditable]
GO
ALTER TABLE [dbo].[PlanFeature] ADD  CONSTRAINT [DF_PlanFeature_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PlanFeature] ADD  CONSTRAINT [DF_PlanFeature_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[PriceManagement] ADD  CONSTRAINT [DF_PriceManagement_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceManagement] ADD  CONSTRAINT [DF_PriceManagement_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[SMSLog] ADD  CONSTRAINT [DF_SMSLog_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Subscription] ADD  CONSTRAINT [DF_Subscription_IsExpired]  DEFAULT ((0)) FOR [IsExpired]
GO
ALTER TABLE [dbo].[Subscription] ADD  CONSTRAINT [DF_Subscription_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Subscription] ADD  CONSTRAINT [DF_Subscription_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
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
/****** Object:  StoredProcedure [dbo].[uspSearchProducts]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSendEnquirytoVendors]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDAuthenticateUser]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDChangePassword]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDDeleteData]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDGetData]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDGetDataFromMultipleTables]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDInsertData]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDInsertMultipleRows]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDLogError]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDMasterData]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDUpdateData]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDUpdateField]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDUpdateMultipleRows]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspSTDUsers]    Script Date: 24-09-2016 21:43:45 ******/
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
/****** Object:  StoredProcedure [dbo].[uspValidateSubscription]    Script Date: 24-09-2016 21:43:45 ******/
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
