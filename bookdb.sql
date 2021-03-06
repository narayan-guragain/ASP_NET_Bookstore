USE [books]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 2017-11-06 1:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_carts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2017-11-06 1:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [varchar](50) NULL,
	[cart_id] [int] NULL,
	[customer_name] [varchar](50) NULL,
	[customer_phone] [varchar](50) NULL,
	[customer_address] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 2017-11-06 1:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[author] [varchar](50) NULL,
	[price] [money] NULL,
	[img] [varchar](50) NULL,
	[category] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (1, N'BEAUTIFUL LIARS', N'Skylar Harris', 11.0000, N'images/featured/lies123.png', N'literature')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (2, N'THE SNOWMAN', N'Jo Nesbo', 10.9300, N'Images/featured/snowman.PNG', N'literature')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (3, N'THE SUN AND HER ...', N'Rupi Kaur', 10.5900, N'Images/featured/rupi.jpg', N'literature')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (4, N'LOLITA', N'Vladimir Nabokov', 19.8000, N'Images/featured/lolita123.png', N'literature')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (5, N'LOVE ME BACK', N'Merrit Tierce', 11.6400, N'Images/featured/love123.png', N'literature')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (6, N'THE GREAT GATSBY', N'F. Scott Fitzgerald', 10.3300, N'Images/featured/gatsby.PNG', N'literature')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (7, N'LEARNING PYTHON', N'Mark Lutz', 23.0000, N'Images/prog/python.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (8, N'ASP.NET WEB API ... ', N'Rajesh Gunasundaram', 47.0800, N'Images/prog/asp1.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (9, N'JAVA: THE COMPLETE ...', N'Herbet Schildt', 66.6600, N'Images/prog/java.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (10, N'HEAD FIRST C# ...', N'Green & Stellman', 46.6800, N'Images/prog/headfirstcsharp.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (11, N'JAVA HOW TO  ...', N'Paul J Deitel', 222.3400, N'Images/prog/javahowto.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (13, N'C# 7.0 IN A NUTSHELL', N'Joseph Albahari', 78.1900, N'Images/prog/Csharp.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (14, N'VISUAL BASIC 2017', N'Corinne Hoisington', 288.5900, N'Images/prog/vb.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (15, N'MURACH''S PHP AND ...', N'Joel Murach', 54.3900, N'Images/prog/php.PNG', N'programming')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (16, N' DATABASE SYSTEMS', N'Thomas Connolly', 203.9500, N'Images/db/dbsys.PNG', N'database')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (17, N'DATABASE SYSTEMS', N'Carlos Coronel', 174.9500, N'Images/db/dbsystems.PNG', N'database')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (18, N'PHP AND MYSQL', N'Kevin Yank', 40.1400, N'Images/db/ninja.PNG', N'database')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (19, N'INTRODUCTION TO SQL', N'Rick F. Van Der Lans', 57.9900, N'Images/db/sql.PNG', N'database')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (20, N'NODE.JS WEB...', N'David Herron', 59.6400, N'Images/web/node.PNG', N'web')
INSERT [dbo].[products] ([id], [name], [author], [price], [img], [category]) VALUES (21, N'WEB DEVELOPMENT', N'Connolly & Hoar', 178.5500, N'Images/web/funda.PNG', N'web')
