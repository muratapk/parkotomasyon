USE [master]
GO
/****** Object:  Database [park]    Script Date: 16.8.2021 21:28:45 ******/
CREATE DATABASE [park]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'park', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\park.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'park_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\park_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [park] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [park].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [park] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [park] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [park] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [park] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [park] SET ARITHABORT OFF 
GO
ALTER DATABASE [park] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [park] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [park] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [park] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [park] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [park] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [park] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [park] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [park] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [park] SET  DISABLE_BROKER 
GO
ALTER DATABASE [park] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [park] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [park] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [park] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [park] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [park] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [park] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [park] SET RECOVERY FULL 
GO
ALTER DATABASE [park] SET  MULTI_USER 
GO
ALTER DATABASE [park] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [park] SET DB_CHAINING OFF 
GO
ALTER DATABASE [park] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [park] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [park] SET DELAYED_DURABILITY = DISABLED 
GO
USE [park]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 16.8.2021 21:28:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kul] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
	[yetki] [tinyint] NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[markalar]    Script Date: 16.8.2021 21:28:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markalar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[marka] [nvarchar](50) NULL,
 CONSTRAINT [PK_markalar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParkBilgileri]    Script Date: 16.8.2021 21:28:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParkBilgileri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MusteriId] [int] NULL,
	[adsoyad] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
	[plaka] [nvarchar](50) NULL,
	[marka] [nvarchar](50) NULL,
	[yil] [int] NULL,
	[renk] [nvarchar](50) NULL,
	[parkYeriId] [int] NULL,
	[aciklama] [text] NULL,
	[girisTarihi] [datetime] NULL,
	[cikisTarihi] [datetime] NULL,
 CONSTRAINT [PK_ParkBilgileri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[parkYerleri]    Script Date: 16.8.2021 21:28:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parkYerleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[parkYeri] [nvarchar](50) NULL,
	[durumu] [nvarchar](50) NULL,
 CONSTRAINT [PK_parkYerleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[renkler]    Script Date: 16.8.2021 21:28:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renkler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[renk] [nvarchar](50) NULL,
 CONSTRAINT [PK_renkler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([Id], [kul], [sifre], [yetki]) VALUES (1, N'murat', N'123', 1)
INSERT [dbo].[admin] ([Id], [kul], [sifre], [yetki]) VALUES (2, N'asdfas', N'sadf', 1)
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[markalar] ON 

INSERT [dbo].[markalar] ([Id], [marka]) VALUES (1, N'Reaunlt')
INSERT [dbo].[markalar] ([Id], [marka]) VALUES (2, N'Mercedes')
INSERT [dbo].[markalar] ([Id], [marka]) VALUES (3, N'Bmw')
INSERT [dbo].[markalar] ([Id], [marka]) VALUES (4, N'Fiat')
INSERT [dbo].[markalar] ([Id], [marka]) VALUES (5, N'Hyundai')
INSERT [dbo].[markalar] ([Id], [marka]) VALUES (6, N'Toyota')
SET IDENTITY_INSERT [dbo].[markalar] OFF
SET IDENTITY_INSERT [dbo].[ParkBilgileri] ON 

INSERT [dbo].[ParkBilgileri] ([Id], [MusteriId], [adsoyad], [telefon], [plaka], [marka], [yil], [renk], [parkYeriId], [aciklama], [girisTarihi], [cikisTarihi]) VALUES (1, 1, N'murat', N'(505)    -  -', N'34rj', N'1', 1901, N'Id', 5, N'asfas', CAST(N'2021-08-12 20:15:58.000' AS DateTime), CAST(N'2021-08-12 20:15:58.000' AS DateTime))
INSERT [dbo].[ParkBilgileri] ([Id], [MusteriId], [adsoyad], [telefon], [plaka], [marka], [yil], [renk], [parkYeriId], [aciklama], [girisTarihi], [cikisTarihi]) VALUES (4, 2, N'sait', N'(505) 442-  -', N'34tr', N'2', 1902, N'Id', 3, N'asdfas', CAST(N'2021-08-18 20:42:09.000' AS DateTime), CAST(N'2021-08-10 20:42:09.000' AS DateTime))
INSERT [dbo].[ParkBilgileri] ([Id], [MusteriId], [adsoyad], [telefon], [plaka], [marka], [yil], [renk], [parkYeriId], [aciklama], [girisTarihi], [cikisTarihi]) VALUES (5, 1, N'ms', N'(505)    -  -', N'1', N'3', 1924, N'Id', 3, N'asdfas', CAST(N'2021-08-25 20:58:05.000' AS DateTime), CAST(N'2021-08-25 20:58:05.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ParkBilgileri] OFF
SET IDENTITY_INSERT [dbo].[parkYerleri] ON 

INSERT [dbo].[parkYerleri] ([Id], [parkYeri], [durumu]) VALUES (1, N'11', N'Boş')
INSERT [dbo].[parkYerleri] ([Id], [parkYeri], [durumu]) VALUES (2, N'12', N'Boş')
INSERT [dbo].[parkYerleri] ([Id], [parkYeri], [durumu]) VALUES (3, N'13', N'Boş')
INSERT [dbo].[parkYerleri] ([Id], [parkYeri], [durumu]) VALUES (4, N'14', N'Boş')
INSERT [dbo].[parkYerleri] ([Id], [parkYeri], [durumu]) VALUES (5, N'15', N'Boş')
INSERT [dbo].[parkYerleri] ([Id], [parkYeri], [durumu]) VALUES (6, N'16', N'Dolu')
SET IDENTITY_INSERT [dbo].[parkYerleri] OFF
SET IDENTITY_INSERT [dbo].[renkler] ON 

INSERT [dbo].[renkler] ([Id], [renk]) VALUES (1, N'Kırmızı')
INSERT [dbo].[renkler] ([Id], [renk]) VALUES (2, N'Beyaz')
INSERT [dbo].[renkler] ([Id], [renk]) VALUES (3, N'Gri')
INSERT [dbo].[renkler] ([Id], [renk]) VALUES (4, N'Sarı')
INSERT [dbo].[renkler] ([Id], [renk]) VALUES (5, N'Mor')
INSERT [dbo].[renkler] ([Id], [renk]) VALUES (6, N'Yeşil')
SET IDENTITY_INSERT [dbo].[renkler] OFF
USE [master]
GO
ALTER DATABASE [park] SET  READ_WRITE 
GO
