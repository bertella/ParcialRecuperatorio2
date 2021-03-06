USE [AgenciaViaje]
GO
/****** Object:  Table [dbo].[Transportes]    Script Date: 2/7/2021 23:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportes](
	[idTransporte] [int] NOT NULL,
	[nombreTransporte] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Transportes] PRIMARY KEY CLUSTERED 
(
	[idTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viajes]    Script Date: 2/7/2021 23:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viajes](
	[codigo] [int] NOT NULL,
	[destino] [varchar](50) NOT NULL,
	[transporte] [int] NOT NULL,
	[tipo] [int] NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_Viajes] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Transportes] ([idTransporte], [nombreTransporte]) VALUES (1, N'Avion')
INSERT [dbo].[Transportes] ([idTransporte], [nombreTransporte]) VALUES (2, N'Colectivo')
INSERT [dbo].[Transportes] ([idTransporte], [nombreTransporte]) VALUES (3, N'Tren')
INSERT [dbo].[Transportes] ([idTransporte], [nombreTransporte]) VALUES (4, N'Barco')
GO
INSERT [dbo].[Viajes] ([codigo], [destino], [transporte], [tipo], [fecha]) VALUES (1, N'Honolulu', 1, 2, CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Viajes] ([codigo], [destino], [transporte], [tipo], [fecha]) VALUES (2, N'Gualeguaychu', 2, 1, CAST(N'2021-02-22' AS Date))
GO
