USE [master]
GO
/****** Object:  Database [JonielDb]    Script Date: 23/02/2024 00:35:53 ******/
CREATE DATABASE [JonielDb]
GO
USE [JonielDb]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 23/02/2024 00:35:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Cidade] [varchar](50) NOT NULL,
	[Estado] [varchar](2) NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[Rua] [varchar](100) NOT NULL,
	[Numero] [varchar](10) NOT NULL,
	[Complemento] [varchar](50) NULL,
	[Ativo] [bit] NOT NULL,
	[CreateDate] [varchar](22) NULL,
	[UpdateDate] [varchar](22) NULL,
	[CEP] [varchar](8) NOT NULL,
 CONSTRAINT [PK_FORNECEDOR_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 23/02/2024 00:35:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Senha] [varchar](100) NOT NULL,
	[CreateDate] [varchar](22) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_LOGIN_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 23/02/2024 00:35:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FornecedorId] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Quantidade] [int] NOT NULL,
	[CreateDate] [varchar](22) NULL,
	[UpdateDate] [varchar](22) NULL,
 CONSTRAINT [PK_PRODUTO_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_PRODUTO_FORNECEDOR_FORNECEDORID] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_PRODUTO_FORNECEDOR_FORNECEDORID]
GO
USE [master]
GO
ALTER DATABASE [JonielDb] SET  READ_WRITE 
GO
