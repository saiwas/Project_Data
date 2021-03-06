USE [Electronic_course_sys]
GO
/****** Object:  Table [dbo].[Teacher_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher_info_tab](
	[TNo] [varchar](50) NOT NULL,
	[TAge] [decimal](2, 0) NULL,
	[TSex] [int] NULL,
	[TPwd] [varchar](255) NULL,
 CONSTRAINT [PK_Teacher_info_tab_1] PRIMARY KEY CLUSTERED 
(
	[TNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher_info_tab', @level2type=N'COLUMN',@level2name=N'TNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher_info_tab', @level2type=N'COLUMN',@level2name=N'TAge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher_info_tab', @level2type=N'COLUMN',@level2name=N'TSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher_info_tab', @level2type=N'COLUMN',@level2name=N'TPwd'
GO
/****** Object:  Table [dbo].[Course_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course_info_tab](
	[CourseNo] [varchar](50) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[Credits] [int] NULL,
	[CanChooseClasses] [varchar](255) NOT NULL,
	[BeginTime] [varchar](200) NULL,
	[Deadline] [varchar](200) NULL,
 CONSTRAINT [PK_Course_info_tab_1] PRIMARY KEY CLUSTERED 
(
	[CourseNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course_info_tab', @level2type=N'COLUMN',@level2name=N'CourseNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course_info_tab', @level2type=N'COLUMN',@level2name=N'CourseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course_info_tab', @level2type=N'COLUMN',@level2name=N'Credits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可选' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course_info_tab', @level2type=N'COLUMN',@level2name=N'CanChooseClasses'
GO
/****** Object:  Table [dbo].[Code_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Code_tab](
	[CodeID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[CodeContent] [varchar](50) NULL,
	[CodeTable] [varchar](255) NULL,
 CONSTRAINT [PK_Code_tab] PRIMARY KEY CLUSTERED 
(
	[CodeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码集编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Code_tab', @level2type=N'COLUMN',@level2name=N'CodeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码集代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Code_tab', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码表示的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Code_tab', @level2type=N'COLUMN',@level2name=N'CodeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码所属表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Code_tab', @level2type=N'COLUMN',@level2name=N'CodeTable'
GO
/****** Object:  Table [dbo].[Admin_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_tab](
	[AId] [int] NOT NULL,
	[ANo] [varchar](50) NULL,
	[APwd] [varchar](50) NULL,
	[APower] [varchar](50) NULL,
 CONSTRAINT [PK_Admin_tab] PRIMARY KEY CLUSTERED 
(
	[AId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_tab](
	[CTId] [int] NOT NULL,
	[CNo] [varchar](50) NULL,
	[TNo] [varchar](50) NULL,
 CONSTRAINT [PK_CT_tab] PRIMARY KEY CLUSTERED 
(
	[CTId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CT_tab', @level2type=N'COLUMN',@level2name=N'CTId'
GO
/****** Object:  Table [dbo].[SD_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SD_tab](
	[SDId] [int] NOT NULL,
	[SDName] [varchar](50) NULL,
	[TNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SD_tab] PRIMARY KEY CLUSTERED 
(
	[SDId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Classes_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes_info_tab](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](10) NULL,
	[TNo] [varchar](50) NOT NULL,
	[SDId] [int] NOT NULL,
 CONSTRAINT [PK_Classes_info_tab] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Classes_info_tab', @level2type=N'COLUMN',@level2name=N'ClassId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Classes_info_tab', @level2type=N'COLUMN',@level2name=N'ClassName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责教师号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Classes_info_tab', @level2type=N'COLUMN',@level2name=N'TNo'
GO
/****** Object:  Table [dbo].[Studunts_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Studunts_info_tab](
	[SNo] [varchar](30) NOT NULL,
	[SName] [varchar](50) NULL,
	[SSex] [int] NOT NULL,
	[SPwd] [varchar](255) NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_Studunts_info_tab_1] PRIMARY KEY CLUSTERED 
(
	[SNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Studunts_info_tab', @level2type=N'COLUMN',@level2name=N'SNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Studunts_info_tab', @level2type=N'COLUMN',@level2name=N'SName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Studunts_info_tab', @level2type=N'COLUMN',@level2name=N'SSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Studunts_info_tab', @level2type=N'COLUMN',@level2name=N'SPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Studunts_info_tab', @level2type=N'COLUMN',@level2name=N'ClassId'
GO
/****** Object:  Table [dbo].[SC_tab]    Script Date: 03/11/2013 13:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC_tab](
	[SID] [varchar](30) NOT NULL,
	[CId] [varchar](50) NOT NULL,
	[Grade] [int] NULL,
 CONSTRAINT [PK_CS_tab] PRIMARY KEY CLUSTERED 
(
	[SID] ASC,
	[CId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SC_tab', @level2type=N'COLUMN',@level2name=N'Grade'
GO
/****** Object:  Default [DF_Course_info_tab_CanChoose]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[Course_info_tab] ADD  CONSTRAINT [DF_Course_info_tab_CanChoose]  DEFAULT ((0)) FOR [CanChooseClasses]
GO
/****** Object:  ForeignKey [FK_CT_tab_Course_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[CT_tab]  WITH CHECK ADD  CONSTRAINT [FK_CT_tab_Course_info_tab] FOREIGN KEY([CNo])
REFERENCES [dbo].[Course_info_tab] ([CourseNo])
GO
ALTER TABLE [dbo].[CT_tab] CHECK CONSTRAINT [FK_CT_tab_Course_info_tab]
GO
/****** Object:  ForeignKey [FK_CT_tab_Teacher_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[CT_tab]  WITH CHECK ADD  CONSTRAINT [FK_CT_tab_Teacher_info_tab] FOREIGN KEY([TNo])
REFERENCES [dbo].[Teacher_info_tab] ([TNo])
GO
ALTER TABLE [dbo].[CT_tab] CHECK CONSTRAINT [FK_CT_tab_Teacher_info_tab]
GO
/****** Object:  ForeignKey [FK_SD_tab_Teacher_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[SD_tab]  WITH CHECK ADD  CONSTRAINT [FK_SD_tab_Teacher_info_tab] FOREIGN KEY([TNo])
REFERENCES [dbo].[Teacher_info_tab] ([TNo])
GO
ALTER TABLE [dbo].[SD_tab] CHECK CONSTRAINT [FK_SD_tab_Teacher_info_tab]
GO
/****** Object:  ForeignKey [FK_Classes_info_tab_SD_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[Classes_info_tab]  WITH CHECK ADD  CONSTRAINT [FK_Classes_info_tab_SD_tab] FOREIGN KEY([SDId])
REFERENCES [dbo].[SD_tab] ([SDId])
GO
ALTER TABLE [dbo].[Classes_info_tab] CHECK CONSTRAINT [FK_Classes_info_tab_SD_tab]
GO
/****** Object:  ForeignKey [FK_Classes_info_tab_Teacher_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[Classes_info_tab]  WITH CHECK ADD  CONSTRAINT [FK_Classes_info_tab_Teacher_info_tab] FOREIGN KEY([TNo])
REFERENCES [dbo].[Teacher_info_tab] ([TNo])
GO
ALTER TABLE [dbo].[Classes_info_tab] CHECK CONSTRAINT [FK_Classes_info_tab_Teacher_info_tab]
GO
/****** Object:  ForeignKey [FK_Studunts_info_tab_Classes_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[Studunts_info_tab]  WITH CHECK ADD  CONSTRAINT [FK_Studunts_info_tab_Classes_info_tab] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes_info_tab] ([ClassId])
GO
ALTER TABLE [dbo].[Studunts_info_tab] CHECK CONSTRAINT [FK_Studunts_info_tab_Classes_info_tab]
GO
/****** Object:  ForeignKey [FK_SC_tab_Course_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[SC_tab]  WITH CHECK ADD  CONSTRAINT [FK_SC_tab_Course_info_tab] FOREIGN KEY([CId])
REFERENCES [dbo].[Course_info_tab] ([CourseNo])
GO
ALTER TABLE [dbo].[SC_tab] CHECK CONSTRAINT [FK_SC_tab_Course_info_tab]
GO
/****** Object:  ForeignKey [FK_SC_tab_Studunts_info_tab]    Script Date: 03/11/2013 13:38:02 ******/
ALTER TABLE [dbo].[SC_tab]  WITH CHECK ADD  CONSTRAINT [FK_SC_tab_Studunts_info_tab] FOREIGN KEY([SID])
REFERENCES [dbo].[Studunts_info_tab] ([SNo])
GO
ALTER TABLE [dbo].[SC_tab] CHECK CONSTRAINT [FK_SC_tab_Studunts_info_tab]
GO
