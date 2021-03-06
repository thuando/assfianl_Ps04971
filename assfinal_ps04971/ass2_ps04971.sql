USE [master]
GO
/****** Object:  Database [ass_PS04971]    Script Date: 17/06/2017 9:50:50 CH ******/
CREATE DATABASE [ass_PS04971]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ass1_PS04971', FILENAME = N'E:\DATA\ass1_PS04971.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ass1_PS04971_log', FILENAME = N'E:\DATA\ass1_PS04971_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ass_PS04971] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ass_PS04971].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ass_PS04971] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ass_PS04971] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ass_PS04971] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ass_PS04971] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ass_PS04971] SET ARITHABORT OFF 
GO
ALTER DATABASE [ass_PS04971] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ass_PS04971] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ass_PS04971] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ass_PS04971] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ass_PS04971] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ass_PS04971] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ass_PS04971] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ass_PS04971] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ass_PS04971] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ass_PS04971] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ass_PS04971] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ass_PS04971] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ass_PS04971] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ass_PS04971] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ass_PS04971] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ass_PS04971] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ass_PS04971] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ass_PS04971] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ass_PS04971] SET  MULTI_USER 
GO
ALTER DATABASE [ass_PS04971] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ass_PS04971] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ass_PS04971] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ass_PS04971] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ass_PS04971] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ass_PS04971]
GO
/****** Object:  Table [dbo].[Departs]    Script Date: 17/06/2017 9:50:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departs](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Records]    Script Date: 17/06/2017 9:50:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Records](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](30) NULL,
	[Reason] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Staffid] [int] NULL,
 CONSTRAINT [PK_Records] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 17/06/2017 9:50:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Birthday] [datetime2](7) NULL,
	[Photo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](11) NULL,
	[Salary] [money] NULL,
	[Notes] [nvarchar](50) NULL,
	[DepartId] [nvarchar](10) NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 17/06/2017 9:50:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'BQT', N'Ban Quản Trị')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'IT', N'Phòng IT')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'QLNS', N'Quản Lý Nhân Sự')
SET IDENTITY_INSERT [dbo].[Records] ON 

INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (2, N'0', N'312', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (3, N'0', N'312', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (4, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1002, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10009)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1003, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10021)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1004, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10024)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1005, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10025)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1006, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10026)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1007, N'0', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10025)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1008, N'0', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10025)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1009, N'0', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10030)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1010, N'0', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10030)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1011, N'0', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10029)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1012, N'0', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10029)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1013, N'0', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10029)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1014, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [Staffid]) VALUES (1015, N'1', N'', CAST(N'2017-06-17 00:00:00.000' AS DateTime), 10030)
SET IDENTITY_INSERT [dbo].[Records] OFF
SET IDENTITY_INSERT [dbo].[Staffs] ON 

INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (2, N'thuận', 1, CAST(N'1997-11-08 00:00:00.0000000' AS DateTime2), N'hinh-goc-lam-anh-the.jpg', N'thuandcp@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'IT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10009, N'thuận', 0, CAST(N'1997-08-08 00:00:00.0000000' AS DateTime2), N'p1.png', N'dcp@gmail.com', N'01612098712', 120000.0000, N'Phòng IT', N'BQT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10020, N'Chí', 0, CAST(N'2009-06-09 00:00:00.0000000' AS DateTime2), N'p2.png', N'thuandcp@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'QLNS')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10021, N'thuận', 1, CAST(N'1997-02-02 00:00:00.0000000' AS DateTime2), N'p4.png', N'p@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'IT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10024, N'thuận', 1, CAST(N'1997-11-08 00:00:00.0000000' AS DateTime2), N'1.jpg', N'thuandcp@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'IT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10025, N'thuận', 0, CAST(N'1997-08-08 00:00:00.0000000' AS DateTime2), N'p1.png', N'dcp@gmail.com', N'01612098712', 120000.0000, N'Phòng IT', N'BQT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10026, N'thuận', 1, CAST(N'1997-11-08 00:00:00.0000000' AS DateTime2), N'hinh-goc-lam-anh-the.jpg', N'thuandcp@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'IT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10029, N'thuận', 0, CAST(N'1997-11-08 00:00:00.0000000' AS DateTime2), N'123.jpg', N'thuandcp@gmail.com', N'123', 100000.0000, N'Phòng IT', N'BQT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10030, N'tín', 1, CAST(N'2017-06-17 00:00:00.0000000' AS DateTime2), N'dich-vu-chup-anh-the-lay-ngay-sau-5-phut-3.jpg', N'thuandcp@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'QLNS')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10031, N'thuận', 1, CAST(N'1997-11-08 00:00:00.0000000' AS DateTime2), N'dich-vu-chup-anh-the-lay-ngay-sau-5-phut-3.jpg', N'thuandcp@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'IT')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (10032, N'thuận', 1, CAST(N'2017-06-17 00:00:00.0000000' AS DateTime2), N'hinh-goc-lam-anh-the.jpg', N'thuandcp@gmail.com', N'01612098761', 100000.0000, N'Phòng IT', N'QLNS')
SET IDENTITY_INSERT [dbo].[Staffs] OFF
INSERT [dbo].[Users] ([Username], [Password], [Fullname]) VALUES (N'admin', N'123', N'Ban Quản Lý')
INSERT [dbo].[Users] ([Username], [Password], [Fullname]) VALUES (N'thuan', N'123', N'user thường abc')
ALTER TABLE [dbo].[Records]  WITH CHECK ADD  CONSTRAINT [FK_Records_Staffs] FOREIGN KEY([Staffid])
REFERENCES [dbo].[Staffs] ([Id])
GO
ALTER TABLE [dbo].[Records] CHECK CONSTRAINT [FK_Records_Staffs]
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD  CONSTRAINT [FK_Staffs_Departs] FOREIGN KEY([DepartId])
REFERENCES [dbo].[Departs] ([Id])
GO
ALTER TABLE [dbo].[Staffs] CHECK CONSTRAINT [FK_Staffs_Departs]
GO
USE [master]
GO
ALTER DATABASE [ass_PS04971] SET  READ_WRITE 
GO
