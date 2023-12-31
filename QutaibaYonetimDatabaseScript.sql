USE [master]
GO
/****** Object:  Database [YonetmePanalDBqutaiba1]    Script Date: 12/27/2023 7:57:14 PM ******/
CREATE DATABASE [YonetmePanalDBqutaiba1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YonetmePanalDBqutaiba1', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\YonetmePanalDBqutaiba1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YonetmePanalDBqutaiba1_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\YonetmePanalDBqutaiba1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YonetmePanalDBqutaiba1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET ARITHABORT OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET  MULTI_USER 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET QUERY_STORE = ON
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [YonetmePanalDBqutaiba1]
GO
/****** Object:  Table [dbo].[Boxes]    Script Date: 12/27/2023 7:57:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boxes](
	[BoxID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Contant] [nvarchar](max) NOT NULL,
	[BoxType] [int] NOT NULL,
 CONSTRAINT [PK_Boxes] PRIMARY KEY CLUSTERED 
(
	[BoxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 12/27/2023 7:57:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[StartDate] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 12/27/2023 7:57:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[NoteID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[NoteType] [int] NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[NoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/27/2023 7:57:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](25) NOT NULL,
	[Birthday] [date] NOT NULL,
	[StartDate] [date] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (1, 15693, N'Cash Para', N'1253 TL', 1)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (2, 15693, N'Vakif Bankası', N'13480 Dolar', 1)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (3, 15693, N'Zirrat Bankası', N'23480 TL', 1)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (4, 15693, N'Zirrat Bankası', N'100 M Dolar', 1)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (5, 15693, N'ForEx', N'21350 Dolar', 1)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (6, 15693, N'Dolar', N'123500', 2)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (7, 15693, N'TL', N'153140', 2)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (8, 15693, N'Shekel', N'2430 ', 2)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (9, 15693, N'Euro', N'1530', 2)
INSERT [dbo].[Boxes] ([BoxID], [UserID], [Title], [Contant], [BoxType]) VALUES (10, 15693, N'Toplam Borclar', N'154381 TL + 21420 Dolar', 3)
GO
INSERT [dbo].[Messages] ([MessageID], [UserID], [UserName], [Message], [PhoneNumber], [Email], [StartDate]) VALUES (1, 15693, N'Qutaiba Ashqar', N'I have a problem, call me!', N'+90 552 530 04 77', N'qutaibaashqar@gmail.com', CAST(N'2023-05-05' AS Date))
GO
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (1, 15693, N'Migros, 245 TL, 22/05/2023, Ödendi', 1)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (2, 15693, N'Turksat, 2400 TL, 25/05/2023, Ödendi', 1)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (3, 15693, N'Turk telekom, 2000 TL, 30/05/2023, Ödendi', 2)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (4, 15693, N'Zaker, 500 TL, 01/06/2023, Ödendi', 2)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (5, 15693, N'Mohammed, 150 Dolar, 01/10/2023, Ödendi', 2)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (6, 15693, N'Mohammed, 2000 TL, 02/11/2023, Ödendi', 2)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (7, 15693, N'Ugurcan, 2300 TL,  her ayın 25 sinde, Aktif', 2)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (8, 15693, N'Busra, 2000 TL, 03/08/2023, Ödendi', 2)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (9, 15693, N'Dogukan, 1000 TL, 30/09/2023, Ödendi', 2)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (10, 15693, N'Abd 2000 TL 15/05/2023 Ödendi', 3)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (11, 15693, N'Abd 2000 TL 20/05/2023 Ödendi', 3)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (12, 15693, N'Hamza 500 Dolar 15/05/2023 Ödenmedi', 3)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (13, 15693, N'Hudi 160 Dolar 15/07/2023 Ödendi', 3)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (14, 15693, N'Mahummod, 1300 TL, her ayın 25sinde, Aktif', 3)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (15, 15693, N'Abd, 13000 Dolar, 13/12/2023, Ödenmedi', 3)
INSERT [dbo].[Notes] ([NoteID], [UserID], [Content], [NoteType]) VALUES (16, 15693, N'Ahmet, 3500 TL, her ayın 25sinde, Aktif', 3)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Email], [PhoneNumber], [Birthday], [StartDate]) VALUES (15693, N'Qutaiba Ashqar', N'34905', N'qutaibaashqar@gmail.com', N'+90 552 530 04 77', CAST(N'2001-01-01' AS Date), CAST(N'2023-05-05' AS Date))
GO
ALTER TABLE [dbo].[Boxes]  WITH CHECK ADD  CONSTRAINT [FK_Boxes_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Boxes] CHECK CONSTRAINT [FK_Boxes_Users]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_Users]
GO
USE [master]
GO
ALTER DATABASE [YonetmePanalDBqutaiba1] SET  READ_WRITE 
GO
