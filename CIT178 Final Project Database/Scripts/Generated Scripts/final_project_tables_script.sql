USE [Cronos_Frontier]
GO
/****** Object:  Table [dbo].[Autonomous_Operators]    Script Date: 12/5/2018 9:53:59 AM ******/
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
/****** Object:  Table [dbo].[CFProjects]    Script Date: 12/5/2018 9:53:59 AM ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 12/5/2018 9:53:59 AM ******/
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
/****** Object:  Table [dbo].[Facilities]    Script Date: 12/5/2018 9:53:59 AM ******/
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
/****** Object:  Table [dbo].[JobCode]    Script Date: 12/5/2018 9:53:59 AM ******/
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
/****** Object:  Table [dbo].[Operator_Assignment]    Script Date: 12/5/2018 9:54:00 AM ******/
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
/****** Object:  Table [dbo].[OperatorLogs]    Script Date: 12/5/2018 9:54:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperatorLogs](
	[AutoOpID] [varchar](15) NULL,
	[status] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Assignment]    Script Date: 12/5/2018 9:54:00 AM ******/
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
