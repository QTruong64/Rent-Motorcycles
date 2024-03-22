USE [master]
GO
/****** Object:  Database [RENT_MOTOR]    Script Date: 1/10/2024 11:59:09 PM ******/
CREATE DATABASE [RENT_MOTOR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RENT_MOTOR', FILENAME = N'D:\RENT_MOTOR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RENT_MOTOR_log', FILENAME = N'D:\RENT_MOTOR_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RENT_MOTOR] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RENT_MOTOR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RENT_MOTOR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET ARITHABORT OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RENT_MOTOR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RENT_MOTOR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RENT_MOTOR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RENT_MOTOR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET RECOVERY FULL 
GO
ALTER DATABASE [RENT_MOTOR] SET  MULTI_USER 
GO
ALTER DATABASE [RENT_MOTOR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RENT_MOTOR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RENT_MOTOR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RENT_MOTOR] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RENT_MOTOR] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RENT_MOTOR] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RENT_MOTOR', N'ON'
GO
ALTER DATABASE [RENT_MOTOR] SET QUERY_STORE = OFF
GO
USE [RENT_MOTOR]
GO
/****** Object:  Table [dbo].[bike]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bike](
	[id_bike] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](100) NULL,
	[price] [int] NULL,
	[IsActive] [bit] NULL,
	[id_type] [int] NULL,
	[IsHot] [bit] NULL,
	[describe] [nvarchar](max) NULL,
	[mass] [nchar](10) NULL,
	[volumn] [nchar](10) NULL,
	[size] [nchar](30) NULL,
	[consume] [nchar](30) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [Pk_bike] PRIMARY KEY CLUSTERED 
(
	[id_bike] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id_bill] [int] IDENTITY(1,1) NOT NULL,
	[id_rent] [int] NOT NULL,
	[money_hour] [int] NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_nill] PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[image] [nvarchar](100) NULL,
	[head] [nvarchar](200) NULL,
	[content] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id_cmt] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[content] [nvarchar](500) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[id_cmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](15) NULL,
	[email] [nvarchar](50) NULL,
	[facebook_link] [nvarchar](100) NULL,
 CONSTRAINT [PK__contact__DDDF328E0B62B1D8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id_employee] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](20) NULL,
	[pass] [nvarchar](30) NULL,
	[name] [nvarchar](50) NULL,
	[fulControl] [bit] NULL,
 CONSTRAINT [pk_employee] PRIMARY KEY CLUSTERED 
(
	[id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mail]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mail](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](150) NULL,
	[Message] [nvarchar](max) NULL,
	[IsRead] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rate]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[job] [nvarchar](50) NULL,
	[content] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_rate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rent]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rent](
	[id_rent] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
	[mail] [nvarchar](50) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_rent] PRIMARY KEY CLUSTERED 
(
	[id_rent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rentDetails]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rentDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rent] [int] NOT NULL,
	[id_bike] [int] NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_rentDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 1/10/2024 11:59:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id_type] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[price_hour] [int] NULL,
	[price_day] [int] NULL,
	[price_month] [int] NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bike]  WITH NOCHECK ADD  CONSTRAINT [FK_bike_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[type] ([id_type])
GO
ALTER TABLE [dbo].[bike] NOCHECK CONSTRAINT [FK_bike_type]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_rent] FOREIGN KEY([id_rent])
REFERENCES [dbo].[rent] ([id_rent])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_rent]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_blog] FOREIGN KEY([id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_blog]
GO
ALTER TABLE [dbo].[rentDetails]  WITH CHECK ADD  CONSTRAINT [FK_rentDetails_bike] FOREIGN KEY([id_bike])
REFERENCES [dbo].[bike] ([id_bike])
GO
ALTER TABLE [dbo].[rentDetails] CHECK CONSTRAINT [FK_rentDetails_bike]
GO
ALTER TABLE [dbo].[rentDetails]  WITH CHECK ADD  CONSTRAINT [FK_rentDetails_rent] FOREIGN KEY([id_rent])
REFERENCES [dbo].[rent] ([id_rent])
GO
ALTER TABLE [dbo].[rentDetails] CHECK CONSTRAINT [FK_rentDetails_rent]
GO
USE [master]
GO
ALTER DATABASE [RENT_MOTOR] SET  READ_WRITE 
GO
