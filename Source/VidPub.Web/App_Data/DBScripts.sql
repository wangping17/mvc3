USE [VidPub]
GO
/****** Object:  Table [dbo].[Productions]    Script Date: 07/28/2011 11:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Slug] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Author] [nvarchar](50) NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[ReleasedOn] [date] NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Productions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Productions] ON
INSERT [dbo].[Productions] ([ID], [Title], [Slug], [Description], [Author], [Price], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (1, N'Production 1', N'p1', N'asdasd', N'Author 1', CAST(12.00 AS Decimal(8, 2)), CAST(0x87340B00 AS Date), CAST(0x6F340B00 AS Date), CAST(0x6F340B00 AS Date))
INSERT [dbo].[Productions] ([ID], [Title], [Slug], [Description], [Author], [Price], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (2, N'Production 2', N'p2', N'Lorem Ipsum', N'Author 2', CAST(15.00 AS Decimal(8, 2)), CAST(0x88340B00 AS Date), CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Productions] ([ID], [Title], [Slug], [Description], [Author], [Price], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (3, N'Production 3', N'p3', N'Lorem Ipsum', N'Author 3', CAST(18.00 AS Decimal(8, 2)), CAST(0x6B950A00 AS Date), CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
SET IDENTITY_INSERT [dbo].[Productions] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 07/28/2011 11:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[StreamUntil] [date] NULL,
	[DownloadUntil] [date] NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([ID], [Email], [StreamUntil], [DownloadUntil], [CreatedOn], [UpdatedOn]) VALUES (1, N'test12@test.com', CAST(0x8B340B00 AS Date), CAST(0x87340B00 AS Date), CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Customers] ([ID], [Email], [StreamUntil], [DownloadUntil], [CreatedOn], [UpdatedOn]) VALUES (2, N'test2@test.com', CAST(0x84340B00 AS Date), NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Customers] ([ID], [Email], [StreamUntil], [DownloadUntil], [CreatedOn], [UpdatedOn]) VALUES (3, N'test3@test.com', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 07/28/2011 11:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[HashedPassword] [nvarchar](50) NULL,
	[LastLogin] [date] NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[Token] [nvarchar](255) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([ID], [Email], [HashedPassword], [LastLogin], [CreatedAt], [UpdatedAt], [Token]) VALUES (1, N'rob@tekpub.com', N'5BAA61E4C9B93F3F0682250B6CF8331B7EE68FD8', NULL, CAST(0x7F340B00 AS Date), CAST(0x7F340B00 AS Date), N'e0287913-8a98-4927-8d77-95edb64705a4')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 07/28/2011 11:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Subscription] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Episodes]    Script Date: 07/28/2011 11:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Episodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductionID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ReleasedOn] [date] NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Episodes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Episodes] ON
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (1, 1, 1, N'Episode 1-1', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (2, 1, 2, N'Episode 1-2', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (3, 1, 3, N'Episode 1-3', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (5, 2, 1, N'Episode 2-1', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (6, 2, 2, N'Episode 2-2', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (9, 2, 3, N'Episode 2-3', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (10, 3, 1, N'Episode 3-1', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (11, 3, 2, N'Episode 3-2', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
INSERT [dbo].[Episodes] ([ID], [ProductionID], [Number], [Title], [Description], [ReleasedOn], [CreatedOn], [UpdatedOn]) VALUES (13, 3, 3, N'Episode 3-3', NULL, NULL, CAST(0x78340B00 AS Date), CAST(0x78340B00 AS Date))
SET IDENTITY_INSERT [dbo].[Episodes] OFF
/****** Object:  Table [dbo].[Customers_Productions]    Script Date: 07/28/2011 11:57:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_Productions](
	[CustomerID] [int] NOT NULL,
	[ProductionID] [int] NOT NULL,
 CONSTRAINT [PK_Customers_Productions] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[ProductionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Customer_CreatedOn]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customer_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Customer_UpdatedOn]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customer_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Episodes_Number]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_Number]  DEFAULT ((0)) FOR [Number]
GO
/****** Object:  Default [DF_Episodes_CreatedOn]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Episodes_UpdatedOn]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Productions_Price]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Productions] ADD  CONSTRAINT [DF_Productions_Price]  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  Default [DF_Productions_CreatedOn]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Productions] ADD  CONSTRAINT [DF_Productions_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Productions_CreatedOn1]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Productions] ADD  CONSTRAINT [DF_Productions_CreatedOn1]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Subscription_CreatedOn]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Subscriptions] ADD  CONSTRAINT [DF_Subscription_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Subscription_UpdatedOn]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Subscriptions] ADD  CONSTRAINT [DF_Subscription_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
/****** Object:  Default [DF_Users_CreatedAt]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF_Users_UpdatedAt]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UpdatedAt]  DEFAULT (getdate()) FOR [UpdatedAt]
GO
/****** Object:  ForeignKey [FK_Customers_Productions_Customer]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Customers_Productions]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Productions_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Customers_Productions] CHECK CONSTRAINT [FK_Customers_Productions_Customer]
GO
/****** Object:  ForeignKey [FK_Customers_Productions_Productions]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Customers_Productions]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Productions_Productions] FOREIGN KEY([ProductionID])
REFERENCES [dbo].[Productions] ([ID])
GO
ALTER TABLE [dbo].[Customers_Productions] CHECK CONSTRAINT [FK_Customers_Productions_Productions]
GO
/****** Object:  ForeignKey [FK_Episodes_Productions]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Episodes]  WITH CHECK ADD  CONSTRAINT [FK_Episodes_Productions] FOREIGN KEY([ProductionID])
REFERENCES [dbo].[Productions] ([ID])
GO
ALTER TABLE [dbo].[Episodes] CHECK CONSTRAINT [FK_Episodes_Productions]
GO
/****** Object:  ForeignKey [FK_Subscription_Customer]    Script Date: 07/28/2011 11:57:21 ******/
ALTER TABLE [dbo].[Subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_Subscription_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Subscriptions] CHECK CONSTRAINT [FK_Subscription_Customer]
GO
