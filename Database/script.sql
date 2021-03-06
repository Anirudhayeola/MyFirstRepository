USE [master]
GO
/****** Object:  Database [EvolentContacts]    Script Date: 19-04-2018 PM 05:02:47 ******/
CREATE DATABASE [EvolentContacts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EvolentContacts', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ANIRUDHA\MSSQL\DATA\EvolentContacts.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EvolentContacts_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ANIRUDHA\MSSQL\DATA\EvolentContacts_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EvolentContacts] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EvolentContacts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EvolentContacts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EvolentContacts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EvolentContacts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EvolentContacts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EvolentContacts] SET ARITHABORT OFF 
GO
ALTER DATABASE [EvolentContacts] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EvolentContacts] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EvolentContacts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EvolentContacts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EvolentContacts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EvolentContacts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EvolentContacts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EvolentContacts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EvolentContacts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EvolentContacts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EvolentContacts] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EvolentContacts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EvolentContacts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EvolentContacts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EvolentContacts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EvolentContacts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EvolentContacts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EvolentContacts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EvolentContacts] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EvolentContacts] SET  MULTI_USER 
GO
ALTER DATABASE [EvolentContacts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EvolentContacts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EvolentContacts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EvolentContacts] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EvolentContacts]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19-04-2018 PM 05:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [nvarchar](50) NULL,
	[Last Name] [nvarchar](50) NULL,
	[Email] [varchar](320) NULL,
	[Phone Number] [varchar](25) NULL,
	[Status] [varchar](15) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [First Name], [Last Name], [Email], [Phone Number], [Status]) VALUES (9, N'Shdjas', N'msksan', N'slfks@fdsf.com', N'4566656565', N'Active')
INSERT [dbo].[Employee] ([Id], [First Name], [Last Name], [Email], [Phone Number], [Status]) VALUES (10, N'hsdjshs', N'fkdjfs', N'kdjds@dadjs.com', N'7879456879', N'Inactive')
INSERT [dbo].[Employee] ([Id], [First Name], [Last Name], [Email], [Phone Number], [Status]) VALUES (11, N'tuhaummc', N'jsdhd', N'xassa@asas.oowq', N'2637236736', N'Active')
INSERT [dbo].[Employee] ([Id], [First Name], [Last Name], [Email], [Phone Number], [Status]) VALUES (12, N'mkmkl', N'wrkelkr', N'dfg@sfsd.com', N'3432423434', N'Inactive')
SET IDENTITY_INSERT [dbo].[Employee] OFF
USE [master]
GO
ALTER DATABASE [EvolentContacts] SET  READ_WRITE 
GO
