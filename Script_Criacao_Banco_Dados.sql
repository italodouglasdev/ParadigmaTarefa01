USE [ParadigmaDb]
GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 01/24/2023 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](500) NOT NULL,
	[Salario] [numeric](18, 0) NOT NULL,
	[DeptId] [int] NOT NULL,
 CONSTRAINT [PK_Pessoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pessoa] ON
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (1, N'Joe', CAST(70000 AS Numeric(18, 0)), 1)
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (3, N'Henry', CAST(80000 AS Numeric(18, 0)), 2)
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (4, N'Sam', CAST(60000 AS Numeric(18, 0)), 2)
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (5, N'Max', CAST(90000 AS Numeric(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[Pessoa] OFF
/****** Object:  Table [dbo].[Departamento]    Script Date: 01/24/2023 19:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON
INSERT [dbo].[Departamento] ([Id], [Nome]) VALUES (1, N'TI')
INSERT [dbo].[Departamento] ([Id], [Nome]) VALUES (2, N'Vendas')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
