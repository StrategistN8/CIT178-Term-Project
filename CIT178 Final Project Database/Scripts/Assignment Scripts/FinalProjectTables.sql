USE [master]
GO
/****** Object:  Database [Cronos_Frontier]    Script Date: 10/14/2018 10:44:14 PM ******/
CREATE DATABASE [Cronos_Frontier]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cronos_Frontier', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Cronos_Frontier.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cronos_Frontier_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Cronos_Frontier_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Cronos_Frontier] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cronos_Frontier].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cronos_Frontier] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cronos_Frontier] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cronos_Frontier] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cronos_Frontier] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cronos_Frontier] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET RECOVERY FULL 
GO
ALTER DATABASE [Cronos_Frontier] SET  MULTI_USER 
GO
ALTER DATABASE [Cronos_Frontier] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cronos_Frontier] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cronos_Frontier] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cronos_Frontier] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cronos_Frontier] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cronos_Frontier', N'ON'
GO
ALTER DATABASE [Cronos_Frontier] SET QUERY_STORE = OFF
GO
USE [Cronos_Frontier]
GO
/****** Object:  Table [dbo].[Autonomous_Operators]    Script Date: 10/14/2018 10:44:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autonomous_Operators](
	[AutoOpID] [varchar](15) NOT NULL,
	[CodeName] [varchar](20) NOT NULL,
	[JobCode] [varchar](10) NOT NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Autonomous_Operators] PRIMARY KEY CLUSTERED 
(
	[AutoOpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CFProjects]    Script Date: 10/14/2018 10:44:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFProjects](
	[ProjectID] [varchar](30) NOT NULL,
	[FacilityID] [varchar](10) NOT NULL,
	[StartDate] [date] NOT NULL,
	[ProjectDescription] [varchar](100) NULL,
 CONSTRAINT [PK__CFProjects] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/14/2018 10:44:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [varchar](10) NOT NULL,
	[JobCode] [varchar](10) NOT NULL,
	[FirstName] [varchar](25) NULL,
	[LastName] [varchar](25) NULL,
	[Title] [varchar](20) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 10/14/2018 10:44:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facilities](
	[FacilityID] [varchar](10) NOT NULL,
	[FacilityName] [varchar](50) NOT NULL,
	[FacilityLocation] [varchar](15) NOT NULL,
 CONSTRAINT [PK__FacilityID] PRIMARY KEY CLUSTERED 
(
	[FacilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCode]    Script Date: 10/14/2018 10:44:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCode](
	[JobCode] [varchar](10) NOT NULL,
	[JobDescription] [varchar](30) NULL,
 CONSTRAINT [PK_JobCode] PRIMARY KEY CLUSTERED 
(
	[JobCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operator_Assignment]    Script Date: 10/14/2018 10:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operator_Assignment](
	[FacilityID] [varchar](10) NOT NULL,
	[AutoOpID] [varchar](15) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Operator_Assignment] PRIMARY KEY CLUSTERED 
(
	[AutoOpID] ASC,
	[FacilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Assignment]    Script Date: 10/14/2018 10:44:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Assignment](
	[ProjectID] [varchar](30) NOT NULL,
	[EmployeeID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Project_Assignment] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC,
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Autonomous_Operators]  WITH CHECK ADD  CONSTRAINT [FK_JobCode] FOREIGN KEY([JobCode])
REFERENCES [dbo].[JobCode] ([JobCode])
GO
ALTER TABLE [dbo].[Autonomous_Operators] CHECK CONSTRAINT [FK_JobCode]
GO
ALTER TABLE [dbo].[CFProjects]  WITH CHECK ADD  CONSTRAINT [FK_Facilities] FOREIGN KEY([FacilityID])
REFERENCES [dbo].[Facilities] ([FacilityID])
GO
ALTER TABLE [dbo].[CFProjects] CHECK CONSTRAINT [FK_Facilities]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_JobCode] FOREIGN KEY([JobCode])
REFERENCES [dbo].[JobCode] ([JobCode])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_JobCode]
GO
ALTER TABLE [dbo].[Operator_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_AutoOpID] FOREIGN KEY([AutoOpID])
REFERENCES [dbo].[Autonomous_Operators] ([AutoOpID])
GO
ALTER TABLE [dbo].[Operator_Assignment] CHECK CONSTRAINT [FK_AutoOpID]
GO
ALTER TABLE [dbo].[Operator_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Operator_Assignment_Facilities] FOREIGN KEY([FacilityID])
REFERENCES [dbo].[Facilities] ([FacilityID])
GO
ALTER TABLE [dbo].[Operator_Assignment] CHECK CONSTRAINT [FK_Operator_Assignment_Facilities]
GO
ALTER TABLE [dbo].[Project_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Project_Assignment_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Project_Assignment] CHECK CONSTRAINT [FK_Project_Assignment_EmployeeID]
GO
ALTER TABLE [dbo].[Project_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Project_ID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[CFProjects] ([ProjectID])
GO
ALTER TABLE [dbo].[Project_Assignment] CHECK CONSTRAINT [FK_Project_ID]
GO
USE [master]
GO
ALTER DATABASE [Cronos_Frontier] SET  READ_WRITE 
GO
