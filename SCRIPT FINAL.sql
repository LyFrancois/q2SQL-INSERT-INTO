USE [GroceriesDB]
GO
/****** Object:  Table [dbo].[grocery]    Script Date: 27/10/2020 10:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grocery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[montant] [decimal](18, 0) NULL,
	[grocery_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 27/10/2020 10:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[prix] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[grocery] ON 

INSERT [dbo].[grocery] ([id], [montant], [grocery_date]) VALUES (1, CAST(150 AS Decimal(18, 0)), CAST(N'2020-10-21T00:00:00.000' AS DateTime))
INSERT [dbo].[grocery] ([id], [montant], [grocery_date]) VALUES (2, CAST(20 AS Decimal(18, 0)), CAST(N'2020-10-21T00:00:00.000' AS DateTime))
INSERT [dbo].[grocery] ([id], [montant], [grocery_date]) VALUES (4, CAST(150 AS Decimal(18, 0)), CAST(N'2020-10-21T00:00:00.000' AS DateTime))
INSERT [dbo].[grocery] ([id], [montant], [grocery_date]) VALUES (5, CAST(20 AS Decimal(18, 0)), CAST(N'2020-10-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[grocery] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [prix]) VALUES (2, N'pain', CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[product] ([id], [name], [prix]) VALUES (3, N'Nutella', CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[product] ([id], [name], [prix]) VALUES (13, N'beurre', CAST(1200 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[product] OFF
GO
