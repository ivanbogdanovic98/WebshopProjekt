USE [master]
GO
/****** Object:  Database [Projektni zadatak - internet trgovina]    Script Date: 24.1.2020. 17:13:22 ******/
CREATE DATABASE [Projektni zadatak - internet trgovina]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projektni zadatak - internet trgovina', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Projektni zadatak - internet trgovina.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projektni zadatak - internet trgovina_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Projektni zadatak - internet trgovina_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projektni zadatak - internet trgovina].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET  MULTI_USER 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET QUERY_STORE = OFF
GO
USE [Projektni zadatak - internet trgovina]
GO
/****** Object:  Table [dbo].[kategorije]    Script Date: 24.1.2020. 17:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategorije](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ime] [varchar](50) NOT NULL,
 CONSTRAINT [PK_kategorije] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[korisnici]    Script Date: 24.1.2020. 17:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[korisnici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ime] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[lozinka] [varchar](20) NOT NULL,
	[uloga] [int] NOT NULL,
 CONSTRAINT [PK_korisnici] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[povijest]    Script Date: 24.1.2020. 17:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[povijest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idkup] [int] NOT NULL,
	[idpro] [int] NOT NULL,
	[cijena] [decimal](10, 2) NOT NULL,
	[kolicina] [int] NOT NULL,
	[datum] [datetime] NOT NULL,
	[nacin] [varchar](10) NOT NULL,
 CONSTRAINT [PK_povijest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prijave]    Script Date: 24.1.2020. 17:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prijave](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[ime] [varchar](50) NOT NULL,
	[datum] [datetime] NOT NULL,
 CONSTRAINT [PK_prijave] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proizvodi]    Script Date: 24.1.2020. 17:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proizvodi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ime] [varchar](50) NOT NULL,
	[idkat] [int] NOT NULL,
	[kolicina] [int] NOT NULL,
	[cijena] [decimal](10, 2) NOT NULL,
	[proizvodac] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
 CONSTRAINT [PK_proizvodi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kategorije] ON 

INSERT [dbo].[kategorije] ([id], [ime]) VALUES (1, N'Maticne ploce')
INSERT [dbo].[kategorije] ([id], [ime]) VALUES (2, N'Procesori')
INSERT [dbo].[kategorije] ([id], [ime]) VALUES (3, N'Graficke kartice')
SET IDENTITY_INSERT [dbo].[kategorije] OFF
SET IDENTITY_INSERT [dbo].[korisnici] ON 

INSERT [dbo].[korisnici] ([id], [ime], [email], [lozinka], [uloga]) VALUES (1, N'Pero Peric', N'pero@gmail.com', N'1234', 1)
INSERT [dbo].[korisnici] ([id], [ime], [email], [lozinka], [uloga]) VALUES (2, N'Marko Markovic', N'marko@gmail.com', N'123', 2)
SET IDENTITY_INSERT [dbo].[korisnici] OFF
SET IDENTITY_INSERT [dbo].[povijest] ON 

INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (1, 2, 1, CAST(398.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-22T16:34:52.000' AS DateTime), N'online')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (2, 2, 4, CAST(626.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-22T16:43:54.000' AS DateTime), N'online')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (3, 2, 1, CAST(398.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-22T16:48:26.000' AS DateTime), N'online')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (4, 2, 4, CAST(626.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-22T16:48:26.000' AS DateTime), N'online')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (5, 2, 6, CAST(464.55 AS Decimal(10, 2)), 1, CAST(N'2020-01-22T16:48:26.000' AS DateTime), N'online')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (6, 1, 1, CAST(398.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-22T16:55:33.000' AS DateTime), N'online')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (14, 2, 1, CAST(398.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-24T16:46:24.000' AS DateTime), N'online')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (15, 2, 1, CAST(398.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-24T16:49:49.000' AS DateTime), N'gotovina')
INSERT [dbo].[povijest] ([id], [idkup], [idpro], [cijena], [kolicina], [datum], [nacin]) VALUES (16, 2, 1, CAST(398.05 AS Decimal(10, 2)), 1, CAST(N'2020-01-24T16:52:22.000' AS DateTime), N'gotovina')
SET IDENTITY_INSERT [dbo].[povijest] OFF
SET IDENTITY_INSERT [dbo].[prijave] ON 

INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (1, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T15:47:48.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (2, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T15:51:05.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (3, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T15:52:19.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (4, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T15:54:22.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (5, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T15:58:03.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (6, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T15:58:43.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (7, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T16:01:16.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (8, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T16:02:23.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (9, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T16:14:38.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (10, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T16:26:23.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (11, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T16:26:56.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (12, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T16:31:29.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (13, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T16:34:12.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (14, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T16:34:49.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (15, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T16:36:26.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (16, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T16:41:48.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (17, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T16:46:06.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (18, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T16:54:15.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (19, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T16:55:11.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (20, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T17:04:07.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (21, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T17:12:46.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (22, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T17:17:21.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (23, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T17:20:15.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (24, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T17:31:24.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (25, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T17:35:51.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (26, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T17:41:32.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (27, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-22T17:47:26.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (28, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T17:50:11.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (29, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T17:59:00.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (30, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-22T18:04:43.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (31, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:05:37.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (32, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:20:19.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (33, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:22:19.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (34, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:24:57.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (35, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:26:17.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (36, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:33:40.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (37, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:36:14.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (38, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:37:50.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (39, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:38:07.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (40, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:45:03.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (41, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T15:56:56.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (42, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T16:03:26.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (43, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T16:30:35.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (44, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T16:34:18.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (45, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T16:42:25.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (46, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-23T16:46:03.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (47, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T15:20:19.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (48, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T15:22:53.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (49, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T15:28:39.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (50, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T15:29:02.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (51, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T15:30:44.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (52, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T15:30:57.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (53, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T15:36:04.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (54, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T15:43:32.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (55, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T16:06:52.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (56, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T16:10:48.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (57, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T16:16:06.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (58, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T16:16:13.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (59, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T16:47:46.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (60, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T16:51:35.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (61, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T16:59:59.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (62, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T17:00:30.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (63, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T17:03:22.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (64, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T17:05:25.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (65, N'marko@gmail.com', N'Marko Markovic', CAST(N'2020-01-24T17:08:27.000' AS DateTime))
INSERT [dbo].[prijave] ([id], [email], [ime], [datum]) VALUES (66, N'pero@gmail.com', N'Pero Peric', CAST(N'2020-01-24T17:08:58.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[prijave] OFF
SET IDENTITY_INSERT [dbo].[proizvodi] ON 

INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (1, N'Maticna ploca', 1, 10, CAST(398.05 AS Decimal(10, 2)), N'ASROCK', N'A320M-HDV R4.0')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (4, N'Maticna ploca', 1, 5, CAST(626.05 AS Decimal(10, 2)), N'ASROCK', N'AB350 Pro4')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (6, N'Maticna ploca', 1, 7, CAST(464.55 AS Decimal(10, 2)), N'ASROCK', N'AB350M-HDV R4.0')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (7, N'Maticna ploca', 1, 11, CAST(683.05 AS Decimal(10, 2)), N'ASROCK', N'B365M Pro4')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (8, N'Maticna ploca', 1, 6, CAST(1186.55 AS Decimal(10, 2)), N'ASUS', N'B450-F Gaming')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (9, N'Maticna ploca', 1, 3, CAST(911.05 AS Decimal(10, 2)), N'ASUS', N'B450-PLUS')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (10, N'Maticna ploca', 1, 7, CAST(559.55 AS Decimal(10, 2)), N'ASUS', N'A320M-A')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (11, N'Maticna ploca', 1, 15, CAST(740.05 AS Decimal(10, 2)), N'GIGABYTE', N'B365M D3H')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (12, N'Procesor', 2, 11, CAST(749.55 AS Decimal(10, 2)), N'AMD', N'Ryzen 3 2200G BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (13, N'Procesor', 2, 7, CAST(854.05 AS Decimal(10, 2)), N'AMD', N'Ryzen 3 3200G BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (14, N'Procesor', 2, 3, CAST(1329.05 AS Decimal(10, 2)), N'AMD', N'Ryzen 3 3400G BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (15, N'Procesor', 2, 5, CAST(1614.05 AS Decimal(10, 2)), N'AMD', N'Ryzen 5 3600 BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (16, N'Procesor', 2, 9, CAST(3039.05 AS Decimal(10, 2)), N'AMD', N'Ryzen 7 3700X BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (17, N'Procesor', 2, 16, CAST(1329.05 AS Decimal(10, 2)), N'Intel', N'Core i5 9400F BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (18, N'Procesor', 2, 10, CAST(3419.05 AS Decimal(10, 2)), N'Intel', N'Core i7 9700K BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (19, N'Procesor', 2, 9, CAST(4654.05 AS Decimal(10, 2)), N'Intel', N'Core i9 9900K BOX')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (20, N'Graficka kartica', 3, 7, CAST(949.05 AS Decimal(10, 2)), N'ASUS', N'ROG Radeon RX 560 Strix Gaming')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (21, N'Graficka kartica', 3, 11, CAST(1129.55 AS Decimal(10, 2)), N'SAPPHIRE', N'AMD Radeon RX 560 Pulse')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (22, N'Graficka kartica', 3, 5, CAST(1329.05 AS Decimal(10, 2)), N'GAINWARD', N'GeForce GTX 1650 Ghost')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (23, N'Graficka kartica', 3, 11, CAST(1614.05 AS Decimal(10, 2)), N'POWERCOLOR', N'Radeon RX 580 Red Dragon')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (24, N'Graficka kartica', 3, 20, CAST(1737.55 AS Decimal(10, 2)), N'SAPPHIRE', N'Radeon RX 5500XT Pulse')
INSERT [dbo].[proizvodi] ([id], [ime], [idkat], [kolicina], [cijena], [proizvodac], [model]) VALUES (25, N'Graficka kartica', 3, 12, CAST(1861.05 AS Decimal(10, 2)), N'ASUS', N'GeForce GTX 1650 SUPER TUF Gaming OC Edition')
SET IDENTITY_INSERT [dbo].[proizvodi] OFF
USE [master]
GO
ALTER DATABASE [Projektni zadatak - internet trgovina] SET  READ_WRITE 
GO
