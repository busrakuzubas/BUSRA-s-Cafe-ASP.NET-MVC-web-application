USE [master]
GO
/****** Object:  Database [DbFood]    Script Date: 31.05.2023 03:50:10 ******/
CREATE DATABASE [DbFood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbFood', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbFood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbFood_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DbFood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbFood] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbFood] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DbFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbFood] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DbFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbFood] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DbFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbFood] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbFood] SET  MULTI_USER 
GO
ALTER DATABASE [DbFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbFood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbFood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbFood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DbFood] SET QUERY_STORE = OFF
GO
USE [DbFood]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 31.05.2023 03:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foods]    Script Date: 31.05.2023 03:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foods](
	[FoodId] [int] IDENTITY(1,1) NOT NULL,
	[FoodExplanation] [nvarchar](max) NULL,
	[FoodPrice] [int] NOT NULL,
	[Food_Name] [nvarchar](max) NULL,
	[Food_Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Foods] PRIMARY KEY CLUSTERED 
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DbFood] SET  READ_WRITE 
GO
