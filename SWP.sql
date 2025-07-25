USE [BanHangOnlineNew]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[discountID] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](255) NULL,
	[type] [nvarchar](20) NULL,
	[value] [decimal](10, 2) NULL,
	[minOrderValue] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[status] [bit] NULL,
	[createdAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[discountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[userID] [int] NOT NULL,
	[note] [nvarchar](255) NOT NULL,
	[rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galleries]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galleries](
	[galleryID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[picLink] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[galleryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[RecipientType] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[orderID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [decimal](20, 2) NOT NULL,
	[color] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[orderConfirmed] [bit] NOT NULL,
	[orderDate] [datetime] NULL,
	[totalMoney] [decimal](20, 2) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[paymentStatus] [nvarchar](50) NULL,
	[deliveryStatus] [nvarchar](50) NULL,
	[paymentType] [nvarchar](100) NULL,
	[deliveryInfo] [nvarchar](100) NULL,
	[nameOrder] [nvarchar](100) NULL,
	[deliveryLocation] [nvarchar](300) NOT NULL,
	[discountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productCategories]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productCategories](
	[productID] [int] NOT NULL,
	[categoryID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[screen] [nvarchar](200) NULL,
	[os] [nvarchar](100) NULL,
	[mainCamera] [nvarchar](200) NULL,
	[selfieCamera] [nvarchar](200) NULL,
	[chip] [nvarchar](100) NULL,
	[ram] [nvarchar](100) NULL,
	[storage] [nvarchar](200) NULL,
	[sim] [nvarchar](200) NULL,
	[battery] [nvarchar](100) NULL,
	[charger] [nvarchar](200) NULL,
	[color] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[price] [decimal](20, 2) NOT NULL,
	[discount] [decimal](20, 2) NULL,
	[quantity] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[description] [nvarchar](2000) NULL,
	[thumbnail] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/25/2025 8:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](255) NULL,
	[roleID] [int] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (1, N'Smartphones', N'High-performance mobile phones with advanced features.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (2, N'Tablets', N'Mobile computers with larger screens than smartphones, ideal for entertainment, productivity, and creativity.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (3, N'Apple', N'Premium smartphones,... known for their sleek design, powerful performance, and innovative iOS operating system.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (4, N'Samsung', N'Leading Android smartphone manufacturer offering a wide range of devices for various budgets and needs.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (5, N'Oppo', N'Popular smartphone brand known for its innovative camera technology and fast charging capabilities.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (6, N'Xiaomi', N'Cost-effective smartphone brand offering high-performance features at competitive prices.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (7, N'Realme', N'Emerging smartphone brand focusing on powerful processors and stylish designs at affordable prices.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (8, N'Honor', N'Sub-brand of Huawei known for its innovative features and competitive pricing for budget-conscious users.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (9, N'Tecno', N'Smartphone brand offering budget-friendly devices with long battery life and impressive camera features.')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (10, N'Iphone 11', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (11, N'Iphone 12', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (12, N'Iphone 13', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (13, N'Iphone 14', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (14, N'Iphone 15', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (15, N'Galaxy Z', N'Cao cấp, gập')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (16, N'Galaxy S', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (17, N'Galaxy A', N'Tầm trung')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (18, N'Galaxy M', N'Giá rẻ')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (19, N'OPPO Find N', N'Cao cấp, gập')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (20, N'OPPO Find X', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (21, N'OPPO Reno', N'Tầm trung')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (22, N'OPPO A', N'Giá rẻ')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (23, N'iPad Gen', N'Tầm trung')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (24, N'iPad Air', N'Tầm trung, kích thước lớn')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (25, N'iPad Mini', N'Tầm trung, kích thước nhỏ gọn')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (26, N'iPad Pro', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (27, N'Galaxy Tab S', N'Cao cấp')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (28, N'Galaxy Tab A', N'Giá rẻ')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (29, N'Xiaomi Redmi Pad', N'Tầm trung')
INSERT [dbo].[Categories] ([categoryID], [name], [description]) VALUES (30, N'Xiaomi Pad', N'Tầm trung')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([discountID], [code], [name], [type], [value], [minOrderValue], [quantity], [startDate], [endDate], [status], [createdAt]) VALUES (1, N'MUAHE2025', N'giảm giá mùa hè', N'fixed', CAST(500000.00 AS Decimal(10, 2)), CAST(5000000.00 AS Decimal(10, 2)), 5, CAST(N'2025-07-14T00:00:00.000' AS DateTime), CAST(N'2025-08-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-07-15T00:11:10.110' AS DateTime))
INSERT [dbo].[Discounts] ([discountID], [code], [name], [type], [value], [minOrderValue], [quantity], [startDate], [endDate], [status], [createdAt]) VALUES (2, N'MUAHE20255', N'giảm giá mùa hè', N'fixed', CAST(500000.00 AS Decimal(10, 2)), CAST(1000000.00 AS Decimal(10, 2)), 5, CAST(N'2025-07-21T00:00:00.000' AS DateTime), CAST(N'2025-08-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-07-21T08:01:42.333' AS DateTime))
INSERT [dbo].[Discounts] ([discountID], [code], [name], [type], [value], [minOrderValue], [quantity], [startDate], [endDate], [status], [createdAt]) VALUES (3, N'7K2025', N'Tester', N'fixed', CAST(6000.00 AS Decimal(10, 2)), CAST(5000.00 AS Decimal(10, 2)), 100, CAST(N'2025-07-25T00:00:00.000' AS DateTime), CAST(N'2025-08-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-07-25T08:37:12.513' AS DateTime))
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedbacks] ON 

INSERT [dbo].[Feedbacks] ([ID], [productID], [userID], [note], [rating]) VALUES (5, 25, 3, N'Sản phẩm rất tốt, giao hàng nhanh', 5)
INSERT [dbo].[Feedbacks] ([ID], [productID], [userID], [note], [rating]) VALUES (6, 26, 3, N'Không hài lòng về chất lượng', 2)
INSERT [dbo].[Feedbacks] ([ID], [productID], [userID], [note], [rating]) VALUES (7, 27, 3, N'Tạm ổn, phù hợp với giá tiền', 3)
INSERT [dbo].[Feedbacks] ([ID], [productID], [userID], [note], [rating]) VALUES (8, 29, 3, N'Dịch vụ chăm sóc khách hàng tuyệt vời', 4)
INSERT [dbo].[Feedbacks] ([ID], [productID], [userID], [note], [rating]) VALUES (9, 30, 3, N'Sản phẩm lỗi, cần đổi trả', 1)
INSERT [dbo].[Feedbacks] ([ID], [productID], [userID], [note], [rating]) VALUES (12, 2, 5, N'10 điểm', 5)
INSERT [dbo].[Feedbacks] ([ID], [productID], [userID], [note], [rating]) VALUES (13, 25, 6, N'aa', 5)
SET IDENTITY_INSERT [dbo].[Feedbacks] OFF
GO
SET IDENTITY_INSERT [dbo].[Galleries] ON 

INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (1, 1, N'./img_svg/0_picProduct/Oppo/oppo-reno11-xanh.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (2, 1, N'./img_svg/0_picProduct/Oppo/oppo-reno11-xanh-bien.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (3, 2, N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (4, 2, N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (5, 2, N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (6, 3, N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (7, 3, N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (8, 3, N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (9, 4, N'./img_svg/0_picProduct/Iphone/11/iphone-11-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (10, 4, N'./img_svg/0_picProduct/Iphone/11/iphone-11-trang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (11, 4, N'./img_svg/0_picProduct/Iphone/11/iphone-11-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (12, 5, N'./img_svg/0_picProduct/Iphone/12/12_12-mini/iphone-12-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (13, 5, N'./img_svg/0_picProduct/Iphone/12/12_12-mini/iphone-12-do.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (14, 5, N'./img_svg/0_picProduct/Iphone/12/12_12-mini/iphone-12-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (15, 5, N'./img_svg/0_picProduct/Iphone/12/12_12-mini/iphone-12-trang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (16, 6, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (17, 6, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (18, 6, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (19, 6, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (20, 7, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (21, 7, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (22, 7, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (23, 7, N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (24, 8, N'./img_svg/0_picProduct/Iphone/13/13_13-mini/iphone-13-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (25, 8, N'./img_svg/0_picProduct/Iphone/13/13_13-mini/iphone-13-hong.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (26, 8, N'./img_svg/0_picProduct/Iphone/13/13_13-mini/iphone-13-trang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (27, 8, N'./img_svg/0_picProduct/Iphone/13/13_13-mini/iphone-13-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (28, 9, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (29, 9, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (30, 9, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (31, 9, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (32, 10, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (33, 10, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (34, 10, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (35, 10, N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (36, 11, N'./img_svg/0_picProduct/Iphone/14/14_14-plus/iphone-14-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (37, 11, N'./img_svg/0_picProduct/Iphone/14/14_14-plus/iphone-14-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (38, 11, N'./img_svg/0_picProduct/Iphone/14/14_14-plus/iphone-14-trang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (39, 11, N'./img_svg/0_picProduct/Iphone/14/14_14-plus/iphone-14-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (40, 12, N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (41, 12, N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (42, 12, N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (43, 13, N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (44, 13, N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (45, 13, N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (46, 14, N'./img_svg/0_picProduct/Iphone/15/15_15-plus/iphone-15-hong.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (47, 14, N'./img_svg/0_picProduct/Iphone/15/15_15-plus/iphone-15-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (48, 14, N'./img_svg/0_picProduct/Iphone/15/15_15-plus/iphone-15-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (49, 15, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (50, 15, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-tunhien.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (51, 15, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-trang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (52, 15, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (53, 16, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (54, 16, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-tunhien.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (55, 16, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-trang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (56, 16, N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-titan-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (57, 17, N'./img_svg/0_picProduct/Samsung/Galaxy-A/samsung-galaxy-a55-den.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (58, 17, N'./img_svg/0_picProduct/Samsung/Galaxy-A/samsung-galaxy-a55-tim.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (59, 17, N'./img_svg/0_picProduct/Samsung/Galaxy-A/samsung-galaxy-a55-xanh.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (60, 18, N'./img_svg/0_picProduct/Samsung/Galaxy-M/m15/samsung-galaxy-m15-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (61, 18, N'./img_svg/0_picProduct/Samsung/Galaxy-M/m15/samsung-galaxy-m15-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (62, 18, N'./img_svg/0_picProduct/Samsung/Galaxy-M/m15/samsung-galaxy-m15-xanh-ngoc.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (63, 19, N'./img_svg/0_picProduct/Samsung/Galaxy-M/m55/samsung-galaxy-m55-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (64, 19, N'./img_svg/0_picProduct/Samsung/Galaxy-M/m55/samsung-galaxy-m55-xanh-la.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (65, 20, N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-flip4/samsung-galaxy-z-flip4-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (66, 20, N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-flip4/samsung-galaxy-z-flip4-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (67, 20, N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-flip4/samsung-galaxy-z-flip4-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (68, 21, N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-fold5/=samsung-galaxy-zfold-5-vang.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (69, 21, N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-fold5/samsung-galaxy-zfold-5-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (70, 21, N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-fold5/samsung-galaxy-zfold-5-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (71, 22, N'./img_svg/0_picProduct/Samsung/s24_s24-plus/samsung-galaxy-s24-plus-den.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (72, 22, N'./img_svg/0_picProduct/Samsung/s24_s24-plus/samsung-galaxy-s24-plus-tim.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (73, 22, N'./img_svg/0_picProduct/Samsung/s24_s24-plus/samsung-galaxy-s24-plus-vang.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (74, 22, N'./img_svg/0_picProduct/Samsung/s24_s24-plus/samsung-galaxy-s24-plus-xam.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (75, 23, N'./img_svg/0_picProduct/Samsung/s24-ultra/samsung-galaxy-s24-ultra-den.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (76, 23, N'./img_svg/0_picProduct/Samsung/s24-ultra/samsung-galaxy-s24-ultra-tim.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (77, 23, N'./img_svg/0_picProduct/Samsung/s24-ultra/samsung-galaxy-s24-ultra-vang.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (78, 23, N'./img_svg/0_picProduct/Samsung/s24-ultra/samsung-galaxy-s24-ultra-xam.png')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (79, 24, N'./img_svg/0_picProduct/Xiaomi/xiaomi-poco-m6-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (80, 24, N'./img_svg/0_picProduct/Xiaomi/xiaomi-poco-m6-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (81, 24, N'./img_svg/0_picProduct/Xiaomi/xiaomi-poco-m6-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (82, 25, N'./img_svg/0_picProduct/Samsung/Galaxy-Tab/samsung-galaxy-tab-s9-kem.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (83, 25, N'./img_svg/0_picProduct/Samsung/Galaxy-Tab/samsung-galaxy-tab-s9-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (84, 26, N'./img_svg/0_picProduct/Samsung/Galaxy-Tab/samsung-galaxy-tab-s9-kem.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (85, 26, N'./img_svg/0_picProduct/Samsung/Galaxy-Tab/samsung-galaxy-tab-s9-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (86, 27, N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (87, 27, N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-hong.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (88, 27, N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (89, 28, N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (90, 28, N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-hong.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (91, 28, N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (92, 29, N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (93, 29, N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (94, 29, N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (95, 30, N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (96, 30, N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (97, 30, N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-xanh.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (98, 31, N'./img_svg/0_picProduct/iPad/mini/ipad-mini-6-tim.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (99, 31, N'./img_svg/0_picProduct/iPad/mini/ipad-mini-6-vang.jpg')
GO
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (100, 31, N'./img_svg/0_picProduct/iPad/mini/ipad-mini-6-xam.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (101, 32, N'./img_svg/0_picProduct/iPad/pro/ipad-pro-13inch-M4-wifi-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (102, 32, N'./img_svg/0_picProduct/iPad/pro/ipad-pro-13inch-M4-wifi-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (103, 33, N'./img_svg/0_picProduct/iPad/pro/ipad-pro-13inch-M4-wifi-bac.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (104, 33, N'./img_svg/0_picProduct/iPad/pro/ipad-pro-13inch-M4-wifi-den.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (105, 34, N'./img_svg/0_picProduct/iphone16_1.jpg')
INSERT [dbo].[Galleries] ([galleryID], [productID], [picLink]) VALUES (106, 34, N'./img_svg/0_picProduct/iphone16_2.jpg')
SET IDENTITY_INSERT [dbo].[Galleries] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationID], [RecipientType], [Title], [Message], [CreatedAt]) VALUES (1, N'Employee', N'lksfjsd', N'1234324', CAST(N'2025-07-15T10:25:39.0733333' AS DateTime2))
INSERT [dbo].[Notifications] ([NotificationID], [RecipientType], [Title], [Message], [CreatedAt]) VALUES (2, N'Customer', N'Siêu sale', N'Giảm giá 50% cho mọi đơn hàng', CAST(N'2025-07-15T10:46:23.8633333' AS DateTime2))
INSERT [dbo].[Notifications] ([NotificationID], [RecipientType], [Title], [Message], [CreatedAt]) VALUES (3, N'Customer', N'Giảm giá mùa hè', N'Giảm 50% - Đơn tối thiểu 1 triệu', CAST(N'2025-07-21T08:02:52.1966667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (2, 2, 2, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Vàng')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (9, 4, 11, 1, CAST(8500000.00 AS Decimal(20, 2)), N'Đen')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (10, 2, 12, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (11, 3, 13, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (12, 3, 14, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (13, 3, 16, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (14, 2, 18, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (15, 25, 18, 1, CAST(16990000.00 AS Decimal(20, 2)), N'Kem')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (16, 2, 19, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (17, 2, 20, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (18, 2, 24, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (19, 2, 25, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (20, 2, 26, 3, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (21, 2, 27, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (22, 2, 28, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (23, 1, 29, 1, CAST(7990000.00 AS Decimal(20, 2)), N'Xanh biển')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (24, 3, 30, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (25, 3, 31, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (26, 3, 32, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (27, 1, 33, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (28, 1, 34, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (29, 1, 35, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (30, 1, 36, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (31, 1, 37, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (32, 1, 39, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (33, 1, 40, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (34, 1, 41, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (35, 1, 42, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (36, 1, 43, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (37, 2, 44, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (38, 1, 45, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (39, 1, 46, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (40, 1, 47, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (41, 1, 48, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (42, 2, 48, 0, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (43, 26, 49, 1, CAST(18900000.00 AS Decimal(20, 2)), N'Kem')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (44, 2, 48, 0, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (45, 3, 48, 0, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (46, 2, 50, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (47, 2, 51, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (48, 2, 52, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (49, 1, 53, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (50, 2, 53, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (51, 25, 54, 1, CAST(16990000.00 AS Decimal(20, 2)), N'Kem')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (52, 1, 55, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (53, 1, 56, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (54, 4, 57, 1, CAST(8500000.00 AS Decimal(20, 2)), N'Đen')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (55, 3, 58, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (56, 27, 58, 1, CAST(9990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (57, 25, 58, 1, CAST(16990000.00 AS Decimal(20, 2)), N'Kem')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (58, 3, 53, 3, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (59, 28, 53, 1, CAST(13690000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (60, 4, 59, 1, CAST(8500000.00 AS Decimal(20, 2)), N'Đen')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (61, 28, 60, 1, CAST(13690000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (62, 4, 60, 1, CAST(8500000.00 AS Decimal(20, 2)), N'Đen')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (63, 3, 61, 1, CAST(23990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (64, 2, 62, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (68, 1, 64, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (69, 4, 65, 2, CAST(8500000.00 AS Decimal(20, 2)), N'Đen')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (70, 1, 65, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (71, 2, 66, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (72, 1, 66, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (85, 1, 67, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (86, 1, 68, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (87, 1, 70, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (88, 1, 71, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (89, 1, 72, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (90, 1, 73, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (91, 2, 74, 1, CAST(20990000.00 AS Decimal(20, 2)), N'Bạc')
INSERT [dbo].[OrderDetails] ([ID], [productID], [orderID], [quantity], [price], [color]) VALUES (92, 1, 74, 1, CAST(8000.00 AS Decimal(20, 2)), N'Xanh')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (2, 4, 0, CAST(N'2025-07-15T00:12:00.123' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Watting', N'Watting', N'Watting', N'Watting', N'staff', N'stafflocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (11, 5, 1, CAST(N'2025-07-15T23:10:20.607' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (12, 5, 1, CAST(N'2025-07-16T00:57:22.723' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (13, 5, 1, CAST(N'2025-07-16T00:57:46.470' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (14, 3, 1, CAST(N'2025-07-16T01:22:17.887' AS DateTime), CAST(23990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (16, 3, 1, CAST(N'2025-07-16T01:22:38.473' AS DateTime), CAST(23990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (18, 3, 1, CAST(N'2025-07-16T01:35:19.587' AS DateTime), CAST(37980000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (19, 5, 1, CAST(N'2025-07-16T01:42:05.620' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (20, 5, 1, CAST(N'2025-07-16T01:42:34.210' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (24, 5, 1, CAST(N'2025-07-16T01:47:19.353' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (25, 5, 1, CAST(N'2025-07-16T01:47:34.977' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (26, 5, 1, CAST(N'2025-07-16T01:48:03.810' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (27, 5, 1, CAST(N'2025-07-16T01:54:32.717' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (28, 5, 1, CAST(N'2025-07-16T02:00:45.623' AS DateTime), CAST(20990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (29, 5, 1, CAST(N'2025-07-16T02:24:10.740' AS DateTime), CAST(7990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (30, 5, 1, CAST(N'2025-07-16T09:47:45.397' AS DateTime), CAST(23990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (31, 5, 1, CAST(N'2025-07-16T09:49:39.113' AS DateTime), CAST(23990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (32, 5, 1, CAST(N'2025-07-16T09:59:57.587' AS DateTime), CAST(23990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (33, 5, 1, CAST(N'2025-07-16T10:40:48.817' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (34, 3, 1, CAST(N'2025-07-16T10:57:15.700' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (35, 3, 1, CAST(N'2025-07-16T10:59:48.217' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (36, 3, 1, CAST(N'2025-07-16T11:01:36.383' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (37, 6, 1, CAST(N'2025-07-16T11:09:42.353' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'0858723794', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'admin', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (39, 6, 1, CAST(N'2025-07-16T11:12:32.843' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'0858723794', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'admin', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (40, 3, 1, CAST(N'2025-07-16T11:13:03.237' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (41, 5, 1, CAST(N'2025-07-16T11:13:37.230' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (42, 5, 1, CAST(N'2025-07-16T11:14:30.937' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (43, 5, 1, CAST(N'2025-07-16T11:14:44.547' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (44, 5, 1, CAST(N'2025-07-16T11:15:22.180' AS DateTime), CAST(20990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (45, 5, 1, CAST(N'2025-07-16T11:17:10.210' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (46, 5, 1, CAST(N'2025-07-16T11:21:33.707' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (47, 5, 1, CAST(N'2025-07-17T17:30:52.267' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (48, 3, 1, CAST(N'2025-07-21T07:53:34.673' AS DateTime), CAST(58000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Delivered', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (49, 5, 0, CAST(N'2025-07-21T03:21:47.167' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Watting', N'Watting', N'Watting', N'Watting', N'customer', N'customerlocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (50, 3, 1, CAST(N'2025-07-21T08:04:14.203' AS DateTime), CAST(20540000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (51, 3, 1, CAST(N'2025-07-21T08:07:00.443' AS DateTime), CAST(20540000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (52, 6, 1, CAST(N'2025-07-21T08:28:53.940' AS DateTime), CAST(21040000.00 AS Decimal(20, 2)), N'0858723794', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'admin', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (53, 3, 1, CAST(N'2025-07-24T17:48:43.097' AS DateTime), CAST(71970000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (54, 6, 1, CAST(N'2025-07-24T16:53:06.803' AS DateTime), CAST(16990000.00 AS Decimal(20, 2)), N'0858723794', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'admin', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (55, 6, 1, CAST(N'2025-07-24T17:05:56.077' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'0858723794', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'admin', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (56, 6, 1, CAST(N'2025-07-24T17:06:52.447' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'0858723794', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'admin', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (57, 6, 1, CAST(N'2025-07-24T17:07:41.693' AS DateTime), CAST(8500000.00 AS Decimal(20, 2)), N'0858723794', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'admin', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (58, 6, 0, CAST(N'2025-07-24T17:22:46.443' AS DateTime), CAST(9990000.00 AS Decimal(20, 2)), N'0858723794', N'Pending', N'Watting', N'Watting', N'Watting', N'admin111111111111111', N'123 Admin Street', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (59, 3, 1, CAST(N'2025-07-24T17:49:28.057' AS DateTime), CAST(8500000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (60, 3, 1, CAST(N'2025-07-24T18:02:37.760' AS DateTime), CAST(22190000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (61, 3, 1, CAST(N'2025-07-24T18:06:32.743' AS DateTime), CAST(23990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (62, 3, 1, CAST(N'2025-07-24T18:06:52.453' AS DateTime), CAST(20990000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (64, 3, 1, CAST(N'2025-07-24T18:17:44.633' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (65, 3, 1, CAST(N'2025-07-24T18:19:05.120' AS DateTime), CAST(17000000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (66, 3, 1, CAST(N'2025-07-24T18:23:25.867' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'COD', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (67, 3, 1, CAST(N'2025-07-25T08:07:01.547' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (68, 3, 1, CAST(N'2025-07-25T08:10:59.663' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Pending', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (70, 3, 1, CAST(N'2025-07-25T08:11:39.000' AS DateTime), CAST(8000.00 AS Decimal(20, 2)), N'1234567890', N'Pending', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (71, 3, 1, CAST(N'2025-07-25T08:37:39.743' AS DateTime), CAST(1000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (72, 3, 1, CAST(N'2025-07-25T08:38:15.533' AS DateTime), CAST(1000.00 AS Decimal(20, 2)), N'1234567890', N'Unpaid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (73, 3, 1, CAST(N'2025-07-25T08:39:23.850' AS DateTime), CAST(2000.00 AS Decimal(20, 2)), N'1234567890', N'Paid', N'Processing', N'PAYOS', N'Giaohangtietkiem', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
INSERT [dbo].[Orders] ([orderID], [userID], [orderConfirmed], [orderDate], [totalMoney], [phone], [paymentStatus], [deliveryStatus], [paymentType], [deliveryInfo], [nameOrder], [deliveryLocation], [discountID]) VALUES (74, 3, 0, CAST(N'2025-07-25T08:41:01.160' AS DateTime), CAST(0.00 AS Decimal(20, 2)), N'1234567890', N'Watting', N'Watting', N'Watting', N'Watting', N'Nguyễn Mạnh Duy Hưng', N'Nguyễn Mạnh Duy Hưnglocation', NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (1, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (2, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (3, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (4, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (5, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (6, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (7, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (8, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (9, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (10, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (11, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (12, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (13, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (14, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (15, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (16, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (17, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (18, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (19, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (20, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (21, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (22, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (23, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (24, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (25, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (26, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (27, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (28, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (29, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (30, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (31, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (32, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (33, 2)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (2, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (3, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (4, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (5, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (6, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (7, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (8, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (9, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (10, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (11, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (12, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (13, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (14, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (15, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (16, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (27, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (28, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (29, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (30, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (31, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (32, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (33, 3)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (17, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (18, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (19, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (20, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (21, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (22, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (23, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (25, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (26, 4)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (1, 5)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (24, 6)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (34, 1)
INSERT [dbo].[productCategories] ([productID], [categoryID]) VALUES (34, 3)
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (1, 1, N'6.4 inches', N'Android 14', N'50 MP', N'32 MP', N'MediaTek Dimensity 7050', N'8 GB', N'256 GB', N'Dual SIM', N'4500 mAh', N'65W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (2, 1, N'6.4 inches', N'Android 14', N'50 MP', N'32 MP', N'MediaTek Dimensity 7050', N'8 GB', N'256 GB', N'Dual SIM', N'4500 mAh', N'65W', N'Xanh biển')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (3, 2, N'5.8 inches', N'iOS 13', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'256 GB', N'Dual SIM', N'3046 mAh', N'18W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (4, 2, N'5.8 inches', N'iOS 13', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'256 GB', N'Dual SIM', N'3046 mAh', N'18W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (5, 2, N'5.8 inches', N'iOS 13', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'256 GB', N'Dual SIM', N'3046 mAh', N'18W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (6, 3, N'5.8 inches', N'iOS 13', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'512 GB', N'Dual SIM', N'3046 mAh', N'18W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (7, 3, N'5.8 inches', N'iOS 13', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'512 GB', N'Dual SIM', N'3046 mAh', N'18W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (8, 3, N'5.8 inches', N'iOS 13', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'512 GB', N'Dual SIM', N'3046 mAh', N'18W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (9, 4, N'6.1 inches', N'iOS 13', N'12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'64 GB', N'Dual SIM', N'3110 mAh', N'18W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (10, 4, N'6.1 inches', N'iOS 13', N'12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'64 GB', N'Dual SIM', N'3110 mAh', N'18W', N'Trắng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (11, 4, N'6.1 inches', N'iOS 13', N'12 MP + 12 MP', N'12 MP', N'Apple A13 Bionic', N'4 GB', N'64 GB', N'Dual SIM', N'3110 mAh', N'18W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (12, 5, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'64 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (13, 5, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'64 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Đỏ')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (14, 5, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'64 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (15, 5, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'64 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Trắng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (16, 6, N'6.7 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3687 mAh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (17, 6, N'6.7 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3687 mAh', N'20W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (18, 6, N'6.7 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3687 mAh', N'20W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (19, 6, N'6.7 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3687 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (20, 7, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (21, 7, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (22, 7, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (23, 7, N'6.1 inches', N'iOS 14', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A14 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'2815 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (24, 8, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'4 GB', N'128 GB', N'Dual SIM', N'3240 mAh', N'20W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (25, 8, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'4 GB', N'128 GB', N'Dual SIM', N'3240 mAh', N'20W', N'Hồng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (26, 8, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'4 GB', N'128 GB', N'Dual SIM', N'3240 mAh', N'20W', N'Trắng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (27, 8, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'4 GB', N'128 GB', N'Dual SIM', N'3240 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (28, 9, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3095 mAh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (29, 9, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3095 mAh', N'20W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (30, 9, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3095 mAh', N'20W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (31, 9, N'6.1 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3095 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (32, 10, N'6.7 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'4352 mAh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (33, 10, N'6.7 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'4352 mAh', N'20W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (34, 10, N'6.7 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'4352 mAh', N'20W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (35, 10, N'6.7 inches', N'iOS 15', N'12 MP + 12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'4352 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (36, 11, N'6.1 inches', N'iOS 16', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3279 mAh', N'20W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (37, 11, N'6.1 inches', N'iOS 16', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3279 mAh', N'20W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (38, 11, N'6.1 inches', N'iOS 16', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3279 mAh', N'20W', N'Trắng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (39, 11, N'6.1 inches', N'iOS 16', N'12 MP + 12 MP', N'12 MP', N'Apple A15 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3279 mAh', N'20W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (40, 12, N'6.1 inches', N'iOS 16', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3200 mAh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (41, 12, N'6.1 inches', N'iOS 16', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3200 mAh', N'20W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (42, 12, N'6.1 inches', N'iOS 16', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'3200 mAh', N'20W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (43, 13, N'6.7 inches', N'iOS 16', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'4323 mAh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (44, 13, N'6.7 inches', N'iOS 16', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'4323 mAh', N'20W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (45, 13, N'6.7 inches', N'iOS 16', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'256 GB', N'Dual SIM', N'4323 mAh', N'20W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (46, 14, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'4383 mAh', N'20W', N'Hồng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (47, 14, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'4383 mAh', N'20W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (48, 14, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP', N'12 MP', N'Apple A16 Bionic', N'6 GB', N'128 GB', N'Dual SIM', N'4383 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (49, 15, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'256 GB', N'Dual SIM', N'4323 mAh', N'20W', N'Titan tự nhiên')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (50, 15, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'256 GB', N'Dual SIM', N'4323 mAh', N'20W', N'Trắng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (51, 15, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'256 GB', N'Dual SIM', N'4323 mAh', N'20W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (52, 15, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'256 GB', N'Dual SIM', N'4323 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (53, 16, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'1 TB', N'Dual SIM', N'4323 mAh', N'20W', N'Titan tự nhiên')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (54, 16, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'1 TB', N'Dual SIM', N'4323 mAh', N'20W', N'Trắng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (55, 16, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'1 TB', N'Dual SIM', N'4323 mAh', N'20W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (56, 16, N'6.7 inches', N'iOS 17', N'48 MP + 12 MP + 12 MP', N'12 MP', N'Apple A17 Pro', N'8 GB', N'1 TB', N'Dual SIM', N'4323 mAh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (57, 17, N'6.5 inches', N'Android 14', N'50 MP + 12 MP + 5 MP', N'32 MP', N'Exynos 1480', N'8 GB', N'128 GB', N'Dual SIM', N'5000 mAh', N'25W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (58, 17, N'6.5 inches', N'Android 14', N'50 MP + 12 MP + 5 MP', N'32 MP', N'Exynos 1480', N'8 GB', N'128 GB', N'Dual SIM', N'5000 mAh', N'25W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (59, 17, N'6.5 inches', N'Android 14', N'50 MP + 12 MP + 5 MP', N'32 MP', N'Exynos 1480', N'8 GB', N'128 GB', N'Dual SIM', N'5000 mAh', N'25W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (60, 18, N'6.4 inches', N'Android 14', N'50 MP + 5 MP + 2MP', N'8 MP', N'Dimensity 6100+', N'6 GB', N'128 GB', N'Dual SIM', N'5000 mAh', N'25W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (61, 18, N'6.4 inches', N'Android 14', N'50 MP + 5 MP + 2MP', N'8 MP', N'Dimensity 6100+', N'6 GB', N'128 GB', N'Dual SIM', N'5000 mAh', N'25W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (62, 18, N'6.4 inches', N'Android 14', N'50 MP + 5 MP + 2MP', N'8 MP', N'Dimensity 6100+', N'6 GB', N'128 GB', N'Dual SIM', N'5000 mAh', N'25W', N'Xanh ngọc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (63, 19, N'6.7 inches', N'Android 14', N'50 MP + 8 MP + 2 MP', N'32 MP', N'Snapdragon 7 Gen 1', N'8 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'45W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (64, 19, N'6.7 inches', N'Android 14', N'50 MP + 8 MP + 2 MP', N'32 MP', N'Snapdragon 7 Gen 1', N'8 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'45W', N'Xanh ngọc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (65, 20, N'6.7 inches', N'Android 12', N'12 MP + 12 MP', N'10 MP', N'Snapdragon 8+ Gen 1', N'8 GB', N'128 GB', N'Dual SIM', N'3700 mAh', N'25W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (66, 20, N'6.7 inches', N'Android 12', N'12 MP + 12 MP', N'10 MP', N'Snapdragon 8+ Gen 1', N'8 GB', N'128 GB', N'Dual SIM', N'3700 mAh', N'25W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (67, 20, N'6.7 inches', N'Android 12', N'12 MP + 12 MP', N'10 MP', N'Snapdragon 8+ Gen 1', N'8 GB', N'128 GB', N'Dual SIM', N'3700 mAh', N'25W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (68, 21, N'7.6 inches', N'Android 13', N'50 MP + 12 MP + 10 MP', N'10 MP + 4MP', N'Snapdragon 8+ Gen 1', N'12 GB', N'256 GB', N'Dual SIM', N'4400 mAh', N'25W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (69, 21, N'7.6 inches', N'Android 13', N'50 MP + 12 MP + 10 MP', N'10 MP + 4MP', N'Snapdragon 8+ Gen 1', N'12 GB', N'256 GB', N'Dual SIM', N'4400 mAh', N'25W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (70, 21, N'7.6 inches', N'Android 13', N'50 MP + 12 MP + 10 MP', N'10 MP + 4MP', N'Snapdragon 8+ Gen 1', N'12 GB', N'256 GB', N'Dual SIM', N'4400 mAh', N'25W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (71, 22, N'6.6 inches', N'Android 14', N'50 MP + 12 MP + 10 MP', N'12 MP', N'Exynos 2400', N'12 GB', N'256 GB', N'Dual SIM', N'4900 mAh', N'45W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (72, 22, N'6.6 inches', N'Android 14', N'50 MP + 12 MP + 10 MP', N'12 MP', N'Exynos 2400', N'12 GB', N'256 GB', N'Dual SIM', N'4900 mAh', N'45W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (73, 22, N'6.6 inches', N'Android 14', N'50 MP + 12 MP + 10 MP', N'12 MP', N'Exynos 2400', N'12 GB', N'256 GB', N'Dual SIM', N'4900 mAh', N'45W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (74, 22, N'6.6 inches', N'Android 14', N'50 MP + 12 MP + 10 MP', N'12 MP', N'Exynos 2400', N'12 GB', N'256 GB', N'Dual SIM', N'4900 mAh', N'45W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (75, 23, N'6.8 inches', N'Android 14', N'200 MP + 12 MP + 10 MP + 10 MP', N'12 MP', N'Snapdragon 8 Gen 3', N'12 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'45W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (76, 23, N'6.8 inches', N'Android 14', N'200 MP + 12 MP + 10 MP + 10 MP', N'12 MP', N'Snapdragon 8 Gen 3', N'12 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'45W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (77, 23, N'6.8 inches', N'Android 14', N'200 MP + 12 MP + 10 MP + 10 MP', N'12 MP', N'Snapdragon 8 Gen 3', N'12 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'45W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (78, 23, N'6.8 inches', N'Android 14', N'200 MP + 12 MP + 10 MP + 10 MP', N'12 MP', N'Snapdragon 8 Gen 3', N'12 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'45W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (79, 24, N'6.67 inches', N'Android 13', N'64 MP + 8 MP + 2 MP', N'16 MP', N'MediaTek Helio G99-Ultra', N'8 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'18W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (80, 24, N'6.67 inches', N'Android 13', N'64 MP + 8 MP + 2 MP', N'16 MP', N'MediaTek Helio G99-Ultra', N'8 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'18W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (81, 24, N'6.67 inches', N'Android 13', N'64 MP + 8 MP + 2 MP', N'16 MP', N'MediaTek Helio G99-Ultra', N'8 GB', N'256 GB', N'Dual SIM', N'5000 mAh', N'18W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (82, 25, N'11 inches', N'Android 13', N'13 MP', N'12 MP', N'Snapdragon 8 Gen 2', N'8 GB', N'128 GB', N'Nano-SIM', N'8400 mAh', N'45W', N'Kem')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (83, 25, N'11 inches', N'Android 13', N'13 MP', N'12 MP', N'Snapdragon 8 Gen 2', N'8 GB', N'128 GB', N'Nano-SIM', N'8400 mAh', N'45W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (84, 26, N'11 inches', N'Android 13', N'13 MP', N'12 MP', N'Snapdragon 8 Gen 2', N'12 GB', N'256 GB', N'Nano-SIM', N'8400 mAh', N'45W', N'Kem')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (85, 26, N'11 inches', N'Android 13', N'13 MP', N'12 MP', N'Snapdragon 8 Gen 2', N'12 GB', N'256 GB', N'Nano-SIM', N'8400 mAh', N'45W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (86, 27, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'64 GB', N'No SIM', N'28.6 Wh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (87, 27, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'64 GB', N'No SIM', N'28.6 Wh', N'20W', N'Hồng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (88, 27, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'64 GB', N'No SIM', N'28.6 Wh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (89, 28, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'256 GB', N'No SIM', N'28.6 Wh', N'20W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (90, 28, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'256 GB', N'No SIM', N'28.6 Wh', N'20W', N'Hồng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (91, 28, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple A14 Bionic', N'4 GB', N'256 GB', N'No SIM', N'28.6 Wh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (92, 29, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple M2', N'8 GB', N'128 GB', N'No SIM', N'28.6 Wh', N'20W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (93, 29, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple M2', N'8 GB', N'128 GB', N'No SIM', N'28.6 Wh', N'20W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (94, 29, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple M2', N'8 GB', N'128 GB', N'No SIM', N'28.6 Wh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (95, 30, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple M2', N'8 GB', N'1 TB', N'No SIM', N'28.6 Wh', N'20W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (96, 30, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple M2', N'8 GB', N'1 TB', N'No SIM', N'28.6 Wh', N'20W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (97, 30, N'10.9 inches', N'iPadOS 16', N'12 MP', N'12 MP', N'Apple M2', N'8 GB', N'1 TB', N'No SIM', N'28.6 Wh', N'20W', N'Xanh')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (98, 31, N'8.3 inches', N'iPadOS 15', N'12 MP', N'12 MP', N'Apple A15 Bionic', N'4 GB', N'64 GB', N'No SIM', N'19.3 Wh', N'20W', N'Tím')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (99, 31, N'8.3 inches', N'iPadOS 15', N'12 MP', N'12 MP', N'Apple A15 Bionic', N'4 GB', N'64 GB', N'No SIM', N'19.3 Wh', N'20W', N'Vàng')
GO
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (100, 31, N'8.3 inches', N'iPadOS 15', N'12 MP', N'12 MP', N'Apple A15 Bionic', N'4 GB', N'64 GB', N'No SIM', N'19.3 Wh', N'20W', N'Xám')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (101, 32, N'12.9 inches', N'iPadOS 17', N'12 MP + 10 MP', N'12 MP', N'Apple M4', N'16 GB', N'256 GB', N'No SIM', N'40.88 Wh', N'30W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (102, 32, N'12.9 inches', N'iPadOS 17', N'12 MP + 10 MP', N'12 MP', N'Apple M4', N'16 GB', N'256 GB', N'No SIM', N'40.88 Wh', N'30W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (103, 33, N'11 inches', N'iPadOS 17', N'12 MP + 10 MP', N'12 MP', N'Apple M4', N'16 GB', N'256 GB', N'No SIM', N'28.65 Wh', N'30W', N'Bạc')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (104, 33, N'11 inches', N'iPadOS 17', N'12 MP + 10 MP', N'12 MP', N'Apple M4', N'16 GB', N'256 GB', N'No SIM', N'28.65 Wh', N'30W', N'Đen')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (105, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'128', N'Nano + esim', N'3323', N'25W', N'Đỏ')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (106, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'256', N'Nano + esim', N'3323', N'25W', N'Đỏ')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (107, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'512', N'Nano + esim', N'3323', N'25W', N'Đỏ')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (108, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'128', N'Nano + esim', N'3323', N'25W', N'Cam')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (109, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'256', N'Nano + esim', N'3323', N'25W', N'Cam')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (110, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'512', N'Nano + esim', N'3323', N'25W', N'Cam')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (111, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'128', N'Nano + esim', N'3323', N'25W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (112, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'256', N'Nano + esim', N'3323', N'25W', N'Vàng')
INSERT [dbo].[ProductDetails] ([ID], [productID], [screen], [os], [mainCamera], [selfieCamera], [chip], [ram], [storage], [sim], [battery], [charger], [color]) VALUES (113, 34, N'Oled', N'IOS18', N'24mp', N'12mp', N'A18', N'6G', N'512', N'Nano + esim', N'3323', N'25W', N'Vàng')
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (1, N'OPPO Reno11 F 5G 8GB-256GB', CAST(10000.00 AS Decimal(20, 2)), CAST(8000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'OPPO Reno11 F 5G 8GB-256GB', N'./img_svg/0_picProduct/Oppo/oppo-reno11-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (2, N'iPhone 11 Pro 256GB', CAST(25000000.00 AS Decimal(20, 2)), CAST(20990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 11 Pro 256GB', N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (3, N'iPhone 11 Pro 512GB', CAST(27900000.00 AS Decimal(20, 2)), CAST(23990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 11 Pro 512GB', N'./img_svg/0_picProduct/Iphone/11/pro_pro-max/iphone-11-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (4, N'iPhone 11 64GB', CAST(11990000.00 AS Decimal(20, 2)), CAST(8500000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 11 64GB', N'./img_svg/0_picProduct/Iphone/11/iphone-11-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (5, N'iPhone 12 64GB', CAST(17990000.00 AS Decimal(20, 2)), CAST(11990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 12 64GB', N'./img_svg/0_picProduct/Iphone/12/12_12-mini/iphone-12-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (6, N'iPhone 12 Pro Max 128GB', CAST(21990000.00 AS Decimal(20, 2)), CAST(17990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 12 Pro Max 128GB', N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (7, N'iPhone 12 Pro 256GB', CAST(19990000.00 AS Decimal(20, 2)), CAST(15990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 12 Pro Max 256GB', N'./img_svg/0_picProduct/Iphone/12/pro_pro-max/iphone-12-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (8, N'iPhone 13 128GB', CAST(18990000.00 AS Decimal(20, 2)), CAST(13890000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 13 128GB', N'./img_svg/0_picProduct/Iphone/13/13_13-mini/iphone-13-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (9, N'iPhone 13 Pro 128GB', CAST(24990000.00 AS Decimal(20, 2)), CAST(20990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 13 Pro 128GB', N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (10, N'iPhone 13 Pro Max 256GB', CAST(28990000.00 AS Decimal(20, 2)), CAST(24990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 13 Pro Max 256GB', N'./img_svg/0_picProduct/Iphone/13/pro_pro-max/iphone-13-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (11, N'iPhone 14 128GB', CAST(21990000.00 AS Decimal(20, 2)), CAST(17790000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 14 128GB', N'./img_svg/0_picProduct/Iphone/14/14_14-plus/iphone-14-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (12, N'iPhone 14 Pro 128GB', CAST(27990000.00 AS Decimal(20, 2)), CAST(24690000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 14 Pro 128GB', N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (13, N'iPhone 14 Pro Max 256GB', CAST(32990000.00 AS Decimal(20, 2)), CAST(27990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 14 Pro Max 256GB', N'./img_svg/0_picProduct/Iphone/14/pro_pro-max/iphone-14-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (14, N'iPhone 15 Plus 128GB', CAST(25990000.00 AS Decimal(20, 2)), CAST(22990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 15 Plus 128GB', N'./img_svg/0_picProduct/Iphone/15/15_15-plus/iphone-15-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (15, N'iPhone 15 Pro Max 256GB', CAST(34990000.00 AS Decimal(20, 2)), CAST(29290000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 15 Pro Max 256GB', N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (16, N'iPhone 15 Pro Max 1TB', CAST(46990000.00 AS Decimal(20, 2)), CAST(42990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPhone 15 Pro Max 512GB', N'./img_svg/0_picProduct/Iphone/15/pro_pro-max/iphone-15-pro-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (17, N'Samsung Galaxy A55 5G 128GB', CAST(9990000.00 AS Decimal(20, 2)), CAST(9690000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy A55 5GB 128GB', N'./img_svg/0_picProduct/Samsung/Galaxy-A/samsung-galaxy-a55-thumnail.png')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (18, N'Samsung Galaxy M15 5G 128GB', CAST(5990000.00 AS Decimal(20, 2)), CAST(4690000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy M15 5GB 128GB', N'./img_svg/0_picProduct/Samsung/Galaxy-M/m15/samsung-galaxy-m15-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (19, N'Samsung Galaxy M55 5G 256GB', CAST(11690000.00 AS Decimal(20, 2)), CAST(10690000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy M55 5GB 256GB', N'./img_svg/0_picProduct/Samsung/Galaxy-M/m55/samsung-galaxy-m55-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (20, N'Samsung Galaxy Z Flip4 5G 128GB', CAST(23990000.00 AS Decimal(20, 2)), CAST(12990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy Z Flip4 5G 128GB', N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-flip4/samsung-galaxy-z-flip4-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (21, N'Samsung Galaxy Z Fold5 5G 256GB', CAST(40990000.00 AS Decimal(20, 2)), CAST(27990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy Z Fold5 5G 256GB', N'./img_svg/0_picProduct/Samsung/Galaxy-Z/z-fold5/samsung-galaxy-zfold-5-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (22, N'Samsung Galaxy S24 Plus 5G 256GB', CAST(26990000.00 AS Decimal(20, 2)), CAST(24990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy S24 Plus 5G 256GB', N'./img_svg/0_picProduct/Samsung/s24_s24-plus/samsung-galaxy-s24-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (23, N'Samsung Galaxy S24 Ultra 5G 256GB', CAST(33990000.00 AS Decimal(20, 2)), CAST(29990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy S24 Ultra 5G 256GB', N'./img_svg/0_picProduct/Samsung/s24-ultra/samsung-galaxy-s24-ultra-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (24, N'Xiaomi Poco M6 Pro 8GB-256GB', CAST(6490000.00 AS Decimal(20, 2)), CAST(5900000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Xiaomi Poco M6 Pro 8GB-256GB', N'./img_svg/0_picProduct/Xiaomi/xiaomi-poco-m6-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (25, N'Samsung Galaxy Tab S9 2024 128GB', CAST(19900000.00 AS Decimal(20, 2)), CAST(16990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy Tab S9 2024 128GB', N'./img_svg/0_picProduct/Samsung/Galaxy-Tab/samsung-galaxy-tab-s9-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (26, N'Samsung Galaxy Tab S9 2024 256GB', CAST(21000000.00 AS Decimal(20, 2)), CAST(18900000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'Samsung Galaxy Tab S9 2024 256GB', N'./img_svg/0_picProduct/Samsung/Galaxy-Tab/samsung-galaxy-tab-s9-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (27, N'iPad Gen 10 2022 WiFi 64GB', CAST(12900000.00 AS Decimal(20, 2)), CAST(9990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPad Gen 10 2022 WiFi 64GB', N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (28, N'iPad Gen 10 2022 WiFi 256GB', CAST(16990000.00 AS Decimal(20, 2)), CAST(13690000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPad Gen 10 2022 WiFi 256GB', N'./img_svg/0_picProduct/iPad/gen/ipad-gen-10-wifi-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (29, N'iPad Air 11inch M2 WiFi 128GB', CAST(20000000.00 AS Decimal(20, 2)), CAST(16990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPad Air 11inch M2 WiFi 128GB', N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (30, N'iPad Air 11inch M2 WiFi 1TB', CAST(32000000.00 AS Decimal(20, 2)), CAST(30500000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPad Air 11inch M2 WiFi 1TB', N'./img_svg/0_picProduct/iPad/air/ipad-air-11inch-M2-wifi-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (31, N'iPad mini 6 2021 8.3 inch WiFi 64GB', CAST(13200000.00 AS Decimal(20, 2)), CAST(12800000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPad mini 6 2021 8.3 inch WiFi 64GB', N'./img_svg/0_picProduct/iPad/mini/ipad-mini-6-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (32, N'iPad Pro 13 inch M4 2024 Wifi 256GB', CAST(43490000.00 AS Decimal(20, 2)), CAST(43390000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPad Pro 13 inch M4 2024 Wifi 256GB', N'./img_svg/0_picProduct/iPad/pro/ipad-pro-13inch-M4-wifi-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (33, N'iPad Pro 11 inch M4 2024 Wifi 256GB', CAST(30000000.00 AS Decimal(20, 2)), CAST(28990000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-15T00:04:13.130' AS DateTime), CAST(N'2025-07-15T00:04:13.130' AS DateTime), N'iPad Pro 11 inch M4 2024 Wifi 256GB', N'./img_svg/0_picProduct/iPad/pro/ipad-pro-13inch-M4-wifi-thumnail.jpg')
INSERT [dbo].[Products] ([productID], [name], [price], [discount], [quantity], [created_at], [updated_at], [description], [thumbnail]) VALUES (34, N'Iphone 16', CAST(25000000.00 AS Decimal(20, 2)), CAST(5000000.00 AS Decimal(20, 2)), 100, CAST(N'2025-07-21T00:00:00.000' AS DateTime), CAST(N'2025-07-21T00:00:00.000' AS DateTime), N'Iphone 16 ProMAX', N'./img_svg/0_picProduct/iphone16.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([roleID], [name]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([roleID], [name]) VALUES (2, N'customer')
INSERT [dbo].[Roles] ([roleID], [name]) VALUES (3, N'staff')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userID], [fullName], [email], [password], [phone], [address], [roleID], [status]) VALUES (3, N'Nguyễn Mạnh Duy Hưng', N'ryannguyen070823@gmail.com', N'12345', N'1234567890', N'Nguyễn Mạnh Duy Hưnglocation', 2, 1)
INSERT [dbo].[Users] ([userID], [fullName], [email], [password], [phone], [address], [roleID], [status]) VALUES (4, N'staff', N'staff@gmail.com', N'12345', N'1234567890', N'stafflocation', 3, 1)
INSERT [dbo].[Users] ([userID], [fullName], [email], [password], [phone], [address], [roleID], [status]) VALUES (5, N'customer', N'customer@gmail.com', N'12345', N'1234567890', N'customerlocation', 3, 1)
INSERT [dbo].[Users] ([userID], [fullName], [email], [password], [phone], [address], [roleID], [status]) VALUES (6, N'admin', N'admin@gmail.com', N'12345', N'0858723794', N'123 Admin Street', 1, 1)
INSERT [dbo].[Users] ([userID], [fullName], [email], [password], [phone], [address], [roleID], [status]) VALUES (7, N'Le van A', N'ALe@gmail.com', N'12345', N'0987654112', N'Le van Alocation', 2, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Discount__357D4CF9F4312C6C]    Script Date: 7/25/2025 8:57:50 AM ******/
ALTER TABLE [dbo].[Discounts] ADD UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__72E12F1B9091358F]    Script Date: 7/25/2025 8:57:50 AM ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E6164F52C5661]    Script Date: 7/25/2025 8:57:50 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT ((0)) FOR [minOrderValue]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Galleries]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Galleries]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Galleries]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Discounts] FOREIGN KEY([discountID])
REFERENCES [dbo].[Discounts] ([discountID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Discounts]
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Categories] ([categoryID])
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Categories] ([categoryID])
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Categories] ([categoryID])
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[productCategories]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
