USE [master]
GO
/****** Object:  Database [DEMS]    Script Date: 06/05/2017 00:05:45 ******/
CREATE DATABASE [DEMS] ON  PRIMARY 
( NAME = N'DEMS', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DEMS.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DEMS_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DEMS.ldf' , SIZE = 8384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DEMS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEMS] SET ANSI_NULL_DEFAULT ON
GO
ALTER DATABASE [DEMS] SET ANSI_NULLS ON
GO
ALTER DATABASE [DEMS] SET ANSI_PADDING ON
GO
ALTER DATABASE [DEMS] SET ANSI_WARNINGS ON
GO
ALTER DATABASE [DEMS] SET ARITHABORT ON
GO
ALTER DATABASE [DEMS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DEMS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DEMS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DEMS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DEMS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DEMS] SET CURSOR_DEFAULT  LOCAL
GO
ALTER DATABASE [DEMS] SET CONCAT_NULL_YIELDS_NULL ON
GO
ALTER DATABASE [DEMS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DEMS] SET QUOTED_IDENTIFIER ON
GO
ALTER DATABASE [DEMS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DEMS] SET  DISABLE_BROKER
GO
ALTER DATABASE [DEMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DEMS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DEMS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DEMS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DEMS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DEMS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DEMS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DEMS] SET  READ_WRITE
GO
ALTER DATABASE [DEMS] SET RECOVERY FULL
GO
ALTER DATABASE [DEMS] SET  MULTI_USER
GO
ALTER DATABASE [DEMS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DEMS] SET DB_CHAINING OFF
GO
USE [DEMS]
GO
/****** Object:  Table [dbo].[tbshift]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbshift](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[shift] [varchar](50) NULL,
	[starttime] [time](7) NULL,
	[closetime] [time](7) NULL,
	[latetime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbshift] ON
INSERT [dbo].[tbshift] ([Id], [shift], [starttime], [closetime], [latetime]) VALUES (1, N'Morning', CAST(0x07002465C7090000 AS Time), CAST(0x07008C2929120000 AS Time), CAST(0x07005ED0B2000000 AS Time))
INSERT [dbo].[tbshift] ([Id], [shift], [starttime], [closetime], [latetime]) VALUES (2, N'Evening', CAST(0x070068C461080000 AS Time), CAST(0x0700D088C3100000 AS Time), CAST(0x07008C8647000000 AS Time))
INSERT [dbo].[tbshift] ([Id], [shift], [starttime], [closetime], [latetime]) VALUES (4, N'Both', CAST(0x0700C6C37C620000 AS Time), CAST(0x07002E88DE6A0000 AS Time), CAST(0x07005EFF1A5A0000 AS Time))
INSERT [dbo].[tbshift] ([Id], [shift], [starttime], [closetime], [latetime]) VALUES (5, N'Both', CAST(0x0700B0BD58750000 AS Time), CAST(0x070066D503840000 AS Time), CAST(0x0700964C40730000 AS Time))
SET IDENTITY_INSERT [dbo].[tbshift] OFF
/****** Object:  Table [dbo].[tbSession]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbSession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Session] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbSession] ON
INSERT [dbo].[tbSession] ([Id], [Session]) VALUES (1, N'2011')
INSERT [dbo].[tbSession] ([Id], [Session]) VALUES (2, N'2013')
INSERT [dbo].[tbSession] ([Id], [Session]) VALUES (4, N'2012')
INSERT [dbo].[tbSession] ([Id], [Session]) VALUES (5, N'2014')
INSERT [dbo].[tbSession] ([Id], [Session]) VALUES (6, N'2016')
INSERT [dbo].[tbSession] ([Id], [Session]) VALUES (8, N'1017')
SET IDENTITY_INSERT [dbo].[tbSession] OFF
/****** Object:  Table [dbo].[tbreligion]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbreligion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[religion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbreligion] ON
INSERT [dbo].[tbreligion] ([Id], [religion]) VALUES (1, N'hidu')
INSERT [dbo].[tbreligion] ([Id], [religion]) VALUES (2, N'Muslime')
INSERT [dbo].[tbreligion] ([Id], [religion]) VALUES (3, N'Sikh')
INSERT [dbo].[tbreligion] ([Id], [religion]) VALUES (4, N'Cristian')
INSERT [dbo].[tbreligion] ([Id], [religion]) VALUES (11, N'Hindu')
INSERT [dbo].[tbreligion] ([Id], [religion]) VALUES (12, N'Hindu')
SET IDENTITY_INSERT [dbo].[tbreligion] OFF
/****** Object:  Table [dbo].[tbQuestionPatern]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbQuestionPatern](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[patern] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbQuestionPatern] ON
INSERT [dbo].[tbQuestionPatern] ([Id], [patern]) VALUES (1, N'Oral')
INSERT [dbo].[tbQuestionPatern] ([Id], [patern]) VALUES (2, N'Verbal')
INSERT [dbo].[tbQuestionPatern] ([Id], [patern]) VALUES (3, N'Written')
SET IDENTITY_INSERT [dbo].[tbQuestionPatern] OFF
/****** Object:  Table [dbo].[tbMndSub]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbMndSub](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[grp] [varchar](50) NULL,
	[cls] [varchar](50) NULL,
	[mndsub] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbMndSub] ON
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (1, N'Student', N'MBA', N'6')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (2, N'Student', N'MBA', N'2')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (3, N'HR', N'BTech', N'2')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (4, N'A/c', N'BBA', N'4')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (5, N'A/c', N'BBA', N'4')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (7, N'Student', N'MBA', N'12')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (10, N'Student', N'MBA', N'3')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (11, N'Student', N'MBA', N'3')
INSERT [dbo].[tbMndSub] ([Id], [grp], [cls], [mndsub]) VALUES (17, N'Student', N'MBA', N'8')
SET IDENTITY_INSERT [dbo].[tbMndSub] OFF
/****** Object:  Table [dbo].[tbmarksheetcollection]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbmarksheetcollection](
	[Id] [varchar](50) NOT NULL,
	[examtype] [varchar](50) NULL,
	[generateddate] [date] NULL,
	[formno] [varchar](50) NULL,
	[marksheet] [varchar](max) NULL,
	[status] [varchar](50) NULL,
	[markbatch] [varchar](50) NULL,
	[totalmarks] [varchar](50) NULL,
	[examinfoid] [varchar](max) NULL,
	[exportstatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[tbmarksheetcollection] ([Id], [examtype], [generateddate], [formno], [marksheet], [status], [markbatch], [totalmarks], [examinfoid], [exportstatus]) VALUES (N'10000Ist Term', N'Ist Term', CAST(0xC03C0B00 AS Date), N'10000', N'../Marksheet/Marksheet10000Ist Term.pdf', N'Grade D, Pass', N'MBA_2014', N'299/600', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'1')
INSERT [dbo].[tbmarksheetcollection] ([Id], [examtype], [generateddate], [formno], [marksheet], [status], [markbatch], [totalmarks], [examinfoid], [exportstatus]) VALUES (N'100022nd Term', N'2nd Term', CAST(0xC03C0B00 AS Date), N'10002', N'../Marksheet/Marksheet100022nd Term.pdf', N'Grade D, Pass', N'MBA_2014', N'333/600', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'1')
INSERT [dbo].[tbmarksheetcollection] ([Id], [examtype], [generateddate], [formno], [marksheet], [status], [markbatch], [totalmarks], [examinfoid], [exportstatus]) VALUES (N'10002Ist Term', N'Ist Term', CAST(0xC03C0B00 AS Date), N'10002', N'../Marksheet/Marksheet10002Ist Term.pdf', N'Grade C, Good,Pass', N'MBA_2014', N'384/600', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'1')
INSERT [dbo].[tbmarksheetcollection] ([Id], [examtype], [generateddate], [formno], [marksheet], [status], [markbatch], [totalmarks], [examinfoid], [exportstatus]) VALUES (N'10004Ist Term', N'Ist Term', CAST(0xC03C0B00 AS Date), N'10004', N'../Marksheet/Marksheet10004Ist Term.pdf', N'Failed', N'M Tech_2014', N'54/600', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'0')
INSERT [dbo].[tbmarksheetcollection] ([Id], [examtype], [generateddate], [formno], [marksheet], [status], [markbatch], [totalmarks], [examinfoid], [exportstatus]) VALUES (N'100052nd Term', N'2nd Term', CAST(0xC03C0B00 AS Date), N'10005', N'../Marksheet/Marksheet100052nd Term.pdf', N'Grade B,Very Good,Pass', N'MBA_2014', N'475/600', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'0')
/****** Object:  Table [dbo].[tbmarkentry]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbmarkentry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[studentname] [varchar](50) NULL,
	[studentrollno] [int] NULL,
	[fname] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[batch] [varchar](50) NULL,
	[subject] [varchar](50) NULL,
	[shift] [varchar](50) NULL,
	[examtype] [varchar](50) NULL,
	[examinfoid] [varchar](max) NULL,
	[obtainedmarks] [float] NULL,
	[passmarks] [int] NULL,
	[questionmarks] [int] NULL,
	[patterntype] [varchar](50) NULL,
	[total] [float] NULL,
	[statusmarksheet] [varchar](50) NULL,
	[exportstatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbmarkentry] ON
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (3, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Math', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 50, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (4, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Math', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 34, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (5, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'English', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 60, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (14, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Geography', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 87, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (15, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Geography', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 67, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (16, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Geography', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 56, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (17, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'Histroy', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 45, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (18, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Histroy', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 78, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (19, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Histroy', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 54, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (20, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Histroy', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 56, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (21, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'Hindi', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 87, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (22, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Hindi', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 65, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (23, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Hindi', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 45, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (24, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Hindi', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 32, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (25, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'Math', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 45, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (26, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Math', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 9, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (27, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Math', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 98, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (28, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Math', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 78, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (29, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'English', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 56, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (30, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'English', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 67, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (31, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'English', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 67, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (32, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'English', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 67, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (33, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'Science', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 56, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (34, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Science', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 67, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (35, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Science', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 98, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (36, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Science', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 78, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (41, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'Geography', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 43, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (42, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Geography', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 45, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (43, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Geography', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 76, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (44, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Geography', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 78, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (45, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'Histroy', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 56, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (46, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Histroy', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 67, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (47, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Histroy', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 76, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (48, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Histroy', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 76, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (49, N'Deepak', 10000, N'yhghaghahah', N'09891260711', N'MBA_2014', N'Hindi', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 67, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (50, N'Roshan Thakur', 10002, N'Rajkumr', N'876251411', N'MBA_2014', N'Hindi', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 78, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (51, N'Anuradha', 10003, N'&nbsp;', N'09891260711', N'MBA_2014', N'Hindi', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 98, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (52, N'Anant', 10005, N'Rajkumar', N'9891260711', N'MBA_2014', N'Hindi', N'Morning', N'2nd Term ', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', 98, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (85, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Math', N'Morning', N'Ist Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 2, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (86, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'English', N'Morning', N'Ist Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 21, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (87, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Science', N'Morning', N'Ist Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 3, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (88, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Geography', N'Morning', N'Ist Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 4, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (89, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Histroy', N'Morning', N'Ist Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 12, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (90, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Hindi', N'Morning', N'Ist Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 12, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (91, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Hindi', N'Morning', N'2nd Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 12, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (92, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Histroy', N'Morning', N'2nd Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 12, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (93, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Geography', N'Morning', N'2nd Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 12, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (94, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Science', N'Morning', N'2nd Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 11, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (95, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'English', N'Morning', N'2nd Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 3, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (96, N'Anant Tyagi', 10004, N'Rajkumar', N'9997534969', N'M Tech_2014', N'Math', N'Morning', N'2nd Term ', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', 0, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (97, N'Deepak', 10000, N'yhghaghahah', N'9716526132', N'MBA_2014', N'Math', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 54, 33, 100, N' Written', NULL, NULL, NULL)
INSERT [dbo].[tbmarkentry] ([Id], [studentname], [studentrollno], [fname], [mobile], [batch], [subject], [shift], [examtype], [examinfoid], [obtainedmarks], [passmarks], [questionmarks], [patterntype], [total], [statusmarksheet], [exportstatus]) VALUES (98, N'Roshan Thakur', 10002, N'Rajkumr', N'9716526132', N'MBA_2014', N'Math', N'Morning', N'Ist Term ', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', 56, 33, 100, N' Written', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbmarkentry] OFF
/****** Object:  Table [dbo].[tbMandatorySubClass]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbMandatorySubClass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](50) NULL,
	[sub] [nchar](10) NULL,
	[code] [varchar](50) NULL,
	[optional] [varchar](50) NULL,
	[mandatoryoptional] [varchar](50) NULL,
	[marks] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbMandatorySubClass] ON
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (1, N'MCA', N'Math      ', N'MCA1002', N'No', N'No', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (2, N'MCA', N'English   ', N'MCA1003', N'Yes', N'Yes', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (3, N'BBA', N'Science   ', N'BBA1004', N'Yes', N'Yes', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (4, N'M Tech', N'Math      ', N'MT1002', N'Yes', N'No', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (5, N'M Tech', N'English   ', N'MT1002', N'Yes', N'No', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (6, N'M Tech', N'Science   ', N'MT1003', N'Yes', N'Yes', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (7, N'M Tech', N'Geography ', N'MT1004', N'Yes', N'Yes', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (8, N'M Tech', N'Histroy   ', N'MT1005', N'Yes', N'Yes', 100)
INSERT [dbo].[tbMandatorySubClass] ([Id], [class], [sub], [code], [optional], [mandatoryoptional], [marks]) VALUES (9, N'M Tech', N'Hindi     ', N'MT1005', N'Yes', N'Yes', 100)
SET IDENTITY_INSERT [dbo].[tbMandatorySubClass] OFF
/****** Object:  Table [dbo].[tbInstiClgInfo]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbInstiClgInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[registration] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[ImgUrl] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbInstiClgInfo] ON
INSERT [dbo].[tbInstiClgInfo] ([Id], [name], [address], [contact], [fax], [email], [registration], [country], [ImgUrl]) VALUES (3, N'RD Engineering College DUAHAI', N'DUHAI Ghaziabad UP', N'09716526132', N'9716526132', N'troshan23@gmail.com', N'123456', N'India', N'/Uploads/r.jpg')
SET IDENTITY_INSERT [dbo].[tbInstiClgInfo] OFF
/****** Object:  Table [dbo].[tbgrading]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbgrading](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[grade] [varchar](50) NULL,
	[markmin] [float] NULL,
	[markmax] [float] NULL,
	[pointmin] [float] NULL,
	[pointmax] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbgrading] ON
INSERT [dbo].[tbgrading] ([Id], [grade], [markmin], [markmax], [pointmin], [pointmax]) VALUES (1, N'C', 12, 45, 6, 7)
INSERT [dbo].[tbgrading] ([Id], [grade], [markmin], [markmax], [pointmin], [pointmax]) VALUES (2, N'A+', 12, 45, 3, 4)
INSERT [dbo].[tbgrading] ([Id], [grade], [markmin], [markmax], [pointmin], [pointmax]) VALUES (3, N'C', 12, 34, 5, 8)
INSERT [dbo].[tbgrading] ([Id], [grade], [markmin], [markmax], [pointmin], [pointmax]) VALUES (4, N'B', 15, 50, 4, 5)
SET IDENTITY_INSERT [dbo].[tbgrading] OFF
/****** Object:  Table [dbo].[tbFinance]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbFinance](
	[FId] [int] IDENTITY(1,1) NOT NULL,
	[classname] [varchar](50) NULL,
	[fgstartdate] [date] NULL,
	[fgenddate] [date] NULL,
	[fgcreateddate] [date] NULL,
	[feecategory] [varchar](50) NULL,
	[batch] [varchar](50) NULL,
	[feefine] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[FId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbFinance] ON
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (1, N'M Tech', CAST(0x983C0B00 AS Date), CAST(0x9A3C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Admid Card', N'M Tech_2014', N'2000')
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (2, N'PollyTecnic', CAST(0x933C0B00 AS Date), CAST(0x9A3C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Admid Card', N'BBA_2014', N'0000')
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (3, N'B Pharma', CAST(0x8E3C0B00 AS Date), CAST(0x983C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Library', N'M Tech_2014', N'523')
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (4, N'B Pharma', CAST(0x8E3C0B00 AS Date), CAST(0x983C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Library', N'BBA_2014', N'312')
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (5, N'MCA', CAST(0x8C3C0B00 AS Date), CAST(0x9C3C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Tifin Charge', N'BBA_2013', N'432')
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (6, N'BSc', CAST(0x8C3C0B00 AS Date), CAST(0x9C3C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Exam Fee', N'MBA_2014', N'123')
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (7, N'PollyTecnic', CAST(0x843C0B00 AS Date), CAST(0xFE3C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Exam Fee', N'BBA_2013', N'534')
INSERT [dbo].[tbFinance] ([FId], [classname], [fgstartdate], [fgenddate], [fgcreateddate], [feecategory], [batch], [feefine]) VALUES (8, N'PollyTecnic', CAST(0x853C0B00 AS Date), CAST(0xA43C0B00 AS Date), CAST(0xA03C0B00 AS Date), N'Admid Card', N'M Tech_2014', N'321')
SET IDENTITY_INSERT [dbo].[tbFinance] OFF
/****** Object:  Table [dbo].[tbExamType]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbExamType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[examname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbExamType] ON
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (1, N'Ist Term')
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (2, N'2nd Term')
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (3, N'4th Term')
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (4, N'Annual Exam')
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (5, N'Annual Exam')
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (6, N'Annual Exam')
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (7, N'Annual Exam')
INSERT [dbo].[tbExamType] ([Id], [examname]) VALUES (8, N'2nd Term')
SET IDENTITY_INSERT [dbo].[tbExamType] OFF
/****** Object:  Table [dbo].[tbExamInfo]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbExamInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[examId] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbExamInfo] ON
INSERT [dbo].[tbExamInfo] ([Id], [examId]) VALUES (1, N'BBA_2014_2nd Term_04/29/2017_04/20/2017')
INSERT [dbo].[tbExamInfo] ([Id], [examId]) VALUES (2, N'BBA_2014_2nd Term_04/13/2017_04/10/2017')
INSERT [dbo].[tbExamInfo] ([Id], [examId]) VALUES (3, N'M Tech_2014_4th Term_04/18/2017_04/22/2017')
SET IDENTITY_INSERT [dbo].[tbExamInfo] OFF
/****** Object:  Table [dbo].[tbemployee]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbemployee](
	[EId] [int] IDENTITY(10000,1) NOT NULL,
	[name] [varchar](50) NULL,
	[fname] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[religion] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[praddress] [varchar](50) NULL,
	[shift] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[joindate] [date] NULL,
	[gender] [varchar](50) NULL,
	[mname] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[maritalstatus] [varchar](50) NULL,
	[dob] [date] NULL,
	[lastdegree] [varchar](50) NULL,
	[nationality] [varchar](50) NULL,
	[blooggroop] [varchar](50) NULL,
	[profileimg] [varchar](max) NULL,
	[cardno] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[basic] [varchar](50) NULL,
	[grosspay] [varchar](50) NULL,
	[total] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[activestatus] [varchar](50) NULL,
	[createddate] [date] NULL,
	[notification] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbemployee] ON
INSERT [dbo].[tbemployee] ([EId], [name], [fname], [department], [religion], [email], [praddress], [shift], [status], [joindate], [gender], [mname], [designation], [maritalstatus], [dob], [lastdegree], [nationality], [blooggroop], [profileimg], [cardno], [type], [phone], [basic], [grosspay], [total], [password], [username], [activestatus], [createddate], [notification]) VALUES (10001, N'Shivraaj Singh', N'Rajkumar ', N'Proffessor', N'hello', N'troshan44@gmail.com', N'H. No 1546, Arthala, Ambedkar  nagar
Mohan Nagar', N'Both', N'Parmanent', CAST(0x953C0B00 AS Date), N'Male', N'Shobha Devi', N'HMR', N'merried', CAST(0x983C0B00 AS Date), N'M Tech', N'Indian', N'B+', N'/Imgempstaff/(R)120720131_2.jpg', N'EMPRtr1111', N'Employee', N'9716526144', N'555', N'100', N'655', N'123', N'5__Shivraaj Singh', N'Deactivated', CAST(0xCD3C0B00 AS Date), N'Hello Sir I am Here...')
INSERT [dbo].[tbemployee] ([EId], [name], [fname], [department], [religion], [email], [praddress], [shift], [status], [joindate], [gender], [mname], [designation], [maritalstatus], [dob], [lastdegree], [nationality], [blooggroop], [profileimg], [cardno], [type], [phone], [basic], [grosspay], [total], [password], [username], [activestatus], [createddate], [notification]) VALUES (10002, N'Anu', N'Dhulichan', N'Library Assistant', N'hidu', N'troshan23@gmail.com', N'H. No 1546, Arthala, Ambedkar  nagar
Mohan Nagar', N'Morning', N'Temporary', CAST(0x6E3C0B00 AS Date), N'Male', N'Shobha Evi', N'A/c', N'unmerried', CAST(0x703C0B00 AS Date), N'MCA', N'Foreigner', N'A+', N'/Imgempstaff/15590260_1193412794083636_5429321634217077335_n.jpg', N'EMPAtr1111', N'Employee', N'9716526132', N'543', N'543', N'1086', N'456', N'6__Anu', N'Activated', CAST(0x9E3C0B00 AS Date), N'The College teachers shall include Professors, Associate Professors, Assistant Professors, Demonstrators, Librarians, Typewriting/Computer Instructors and other employee appointed for teaching work in degree or Post-graduate Non-Govt. Aided Colleges covered by the Haryana Affiliating Colleges (Security of Service) Act 1979.')
INSERT [dbo].[tbemployee] ([EId], [name], [fname], [department], [religion], [email], [praddress], [shift], [status], [joindate], [gender], [mname], [designation], [maritalstatus], [dob], [lastdegree], [nationality], [blooggroop], [profileimg], [cardno], [type], [phone], [basic], [grosspay], [total], [password], [username], [activestatus], [createddate], [notification]) VALUES (10003, N'Roshan Thakur', N'Rajkumar thakur', N'Library Assistant', N'Muslime', N'troshan23@gmail.com', N'H. No 1546, Arthala, Ambedkar  nagar
Mohan Nagar', N'Morning', N'Parmanent', CAST(0x5B950A00 AS Date), N'Male', N'naha', N'Student', N'unmerried', CAST(0x703C0B00 AS Date), N'MCA', N'Indian', N'A+', N'/Imgempstaff/g.jpg', N'EMPRtr1112', N'Employee', N'9716526132', N'432', N'123', N'555', N'789', N'8__Roshan Thakur', N'Deactivated', CAST(0x9E3C0B00 AS Date), N'The College teachers shall include Professors, Associate Professors, Assistant Professors, Demonstrators, Librarians, Typewriting/Computer Instructors and other employee appointed for teaching work in degree or Post-graduate Non-Govt. Aided Colleges covered by the Haryana Affiliating Colleges (Security of Service) Act 1979.')
INSERT [dbo].[tbemployee] ([EId], [name], [fname], [department], [religion], [email], [praddress], [shift], [status], [joindate], [gender], [mname], [designation], [maritalstatus], [dob], [lastdegree], [nationality], [blooggroop], [profileimg], [cardno], [type], [phone], [basic], [grosspay], [total], [password], [username], [activestatus], [createddate], [notification]) VALUES (10004, N'Roshan Thakur', N'Rajkumar thakur', N'Student', N'hidu', N'troshan23@gmail.com', N'H. No 1546, Arthala, Ambedkar  nagar', N'Morning', N'Parmanent', CAST(0x6E3C0B00 AS Date), N'Male', N'Shobha Evi', N'Student', N'unmerried', CAST(0x703C0B00 AS Date), N'MBA', N'--Select--', N'A+', N'/Imgempstaff/(R)20082014270.jpg', N'EMPRtr1112', N'Staff', N'9716526132', N'431', N'1234', N'1665', N'123', N'9__Roshan Thakur', N'Activated', CAST(0x9E3C0B00 AS Date), N'The College teachers shall include Professors, Associate Professors, Assistant Professors, Demonstrators, Librarians, Typewriting/Computer Instructors and other employee appointed for teaching work in degree or Post-graduate Non-Govt. Aided Colleges covered by the Haryana Affiliating Colleges (Security of Service) Act 1979.')
INSERT [dbo].[tbemployee] ([EId], [name], [fname], [department], [religion], [email], [praddress], [shift], [status], [joindate], [gender], [mname], [designation], [maritalstatus], [dob], [lastdegree], [nationality], [blooggroop], [profileimg], [cardno], [type], [phone], [basic], [grosspay], [total], [password], [username], [activestatus], [createddate], [notification]) VALUES (10005, N'Nabin Sharma', N'xyz', N'Student', N'Muslime', N'nabin23@gtaba', N'hagajgjagjd', N'Morning', N'Parmanent', CAST(0x6E3C0B00 AS Date), N'Male', N'hjhdahkdhka', N'A/c', N'unmerried', CAST(0x703C0B00 AS Date), N'MCA', N'Indian', N'A+', N'/Imgempstaff/DefaultAuthorImage.jpg', N'EMPNna1112', N'Staff', N'9716526132', N'4232', N'1234', N'5466', N'456', N'10__Nabin Sharma', N'Activated', CAST(0x9E3C0B00 AS Date), N'The College teachers shall include Professors, Associate Professors, Assistant Professors, Demonstrators, Librarians, Typewriting/Computer Instructors and other employee appointed for teaching work in degree or Post-graduate Non-Govt. Aided Colleges covered by the Haryana Affiliating Colleges (Security of Service) Act 1979.')
INSERT [dbo].[tbemployee] ([EId], [name], [fname], [department], [religion], [email], [praddress], [shift], [status], [joindate], [gender], [mname], [designation], [maritalstatus], [dob], [lastdegree], [nationality], [blooggroop], [profileimg], [cardno], [type], [phone], [basic], [grosspay], [total], [password], [username], [activestatus], [createddate], [notification]) VALUES (10011, N'Anuradha Saini', N'Dhulichand Saini', N'Library Assistant', N'hidu', N'anuradha22dolly@gmail.com', N'1546, Arthala Mohan Nagar, Ghaziabad', N'Morning', N'Parmanent', CAST(0xE83C0B00 AS Date), N'Female', N'XYZ', N'A/c', N'Merried', CAST(0x133D0B00 AS Date), N'MCA', N'Indian', N'A-', N'/Imgempstaff/personal-7.jpg', N'EMPAan1112', N'Employee', N'9997534969', NULL, NULL, NULL, N'123', N'10011__Anuradha Saini', N'Activated', CAST(0xE33C0B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[tbemployee] OFF
/****** Object:  Table [dbo].[tbdistrict]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbdistrict](
	[DId] [int] NOT NULL,
	[district] [varchar](50) NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (1, N'	Nicobar', 2)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (2, N'	North and Middle Andaman', 2)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (3, N'	South Andaman', 2)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (4, N'	Anantapur', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (5, N'	Chittoor', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (6, N'	Cuddapah', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (7, N'	East Godavari', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (8, N'	Guntur', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (9, N'	Krishna', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (10, N'	Kurnool', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (11, N'	Nellore', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (12, N'	Prakasam', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (13, N'	Srikakulam', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (14, N'	Visakhapatnam', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (15, N'	Vizianagaram', 1)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (16, N'	West Godavari', 2)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (17, N'	Anjaw', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (18, N'	Changlang', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (19, N'	Dibang Valley', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (20, N'	East Kameng', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (21, N'	East Siang', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (22, N'	Kurung Kumey', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (23, N'	Lohit', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (24, N'	Longding', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (25, N'	Lower Dibang Valley', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (26, N'	Lower Subansiri', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (27, N'	Papum Pare', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (28, N'	Tawang', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (29, N'	Tirap', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (30, N'	Upper Siang', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (31, N'	Upper Subansiri', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (32, N'	West Kameng', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (33, N'	West Siang', 3)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (34, N'	Baksa', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (35, N'	Barpeta', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (36, N'	Bongaigaon', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (37, N'	Cachar', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (38, N'	Chirang', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (39, N'	Darrang', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (40, N'	Dhemaji', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (41, N'	Dhubri', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (42, N'	Dibrugarh', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (43, N'	Dima Hasao', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (44, N'	Goalpara', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (45, N'	Golaghat', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (46, N'	Hailakandi', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (47, N'	Jorhat', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (48, N'	Kamrup Metropolitan', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (49, N'	Kamrup', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (50, N'	Karbi Anglong', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (51, N'	Karimganj', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (52, N'	Kokrajhar', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (53, N'	Lakhimpur', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (54, N'	Morigaon', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (55, N'	Nagaon', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (56, N'	Nalbari', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (57, N'	Sivasagar', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (58, N'	Sonitpur', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (59, N'	Tinsukia', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (60, N'	Udalguri', 4)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (61, N'	Araria', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (62, N'	Arwal', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (63, N'	Aurangabad', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (64, N'	Banka', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (65, N'	Begusarai', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (66, N'	Bhagalpur', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (67, N'	Bhojpur', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (68, N'	Buxar', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (69, N'	Darbhanga', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (70, N'	East Champaran', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (71, N'	Gaya', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (72, N'	Gopalganj', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (73, N'	Jamui', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (74, N'	Jehanabad', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (75, N'	Kaimur ', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (76, N'	Katihar', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (77, N'	Khagaria', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (78, N'	Kishanganj', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (79, N'	Lakhisarai', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (80, N'	Madhepura', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (81, N'	Madhubani', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (82, N'	Munger', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (83, N'	Muzaffarpur', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (84, N'	Nalanda', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (85, N'	Nawada', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (86, N'	Patna', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (87, N'	Purnia', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (88, N'	Rohtas', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (89, N'	Saharsa', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (90, N'	Samastipur', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (91, N'	Saran', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (92, N'	Sheikhpura', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (93, N'	Sheohar', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (94, N'	Sitamarhi', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (95, N'	Siwan', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (96, N'	Supaul', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (97, N'	Vaishali', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (98, N'	West Champaran', 5)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (99, N'	Chandigarh', 6)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (100, N'	Balod', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (101, N'	Baloda Bazar', 7)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (102, N'	Balrampur', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (103, N'	Bastar', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (104, N'	Bemetara', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (105, N'	Bijapur', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (106, N'	Bilaspur', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (107, N'	Dantewada (South Bastar)', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (108, N'	Dhamtari', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (109, N'	Durg', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (110, N'	Gariaband', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (111, N'	Janjgir-Champa', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (112, N'	Jashpur', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (113, N'	Kabirdham', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (114, N'	Kanker', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (115, N'	Kondagaon', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (116, N'	Korba', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (117, N'	Korea', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (118, N'	Mahasamund', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (119, N'	Mungeli', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (120, N'	Narayanpur', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (121, N'	Raigarh', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (122, N'	Raipur', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (123, N'	Rajnandgaon', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (124, N'	Sukma', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (125, N'	Surajpur', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (126, N'	Surguja', 7)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (127, N'	Dadra & Nagar Haveli', 8)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (128, N'	Daman', 9)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (129, N'	Diu', 9)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (130, N'	Central Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (131, N'	East Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (132, N'	New Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (133, N'	North Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (134, N'	North East Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (135, N'	North West Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (136, N'	South Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (137, N'	South West Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (138, N'	West Delhi', 10)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (139, N'	North Goa', 11)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (140, N'	South Goa', 11)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (141, N'	Ahmedabad', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (142, N'	Amreli', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (143, N'	Anand', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (144, N'	Aravalli', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (145, N'	Banaskantha (Palanpur)', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (146, N'	Bharuch', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (147, N'	Bhavnagar', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (148, N'	Botad', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (149, N'	Chhota Udepur', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (150, N'	Dahod', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (151, N'	Dangs (Ahwa)', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (152, N'	Devbhoomi Dwarka', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (153, N'	Gandhinagar', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (154, N'	Gir Somnath', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (155, N'	Jamnagar', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (156, N'	Junagadh', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (157, N'	Kachchh', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (158, N'	Kheda (Nadiad)', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (159, N'	Mahisagar', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (160, N'	Mehsana', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (161, N'	Morbi', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (162, N'	Narmada (Rajpipla)', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (163, N'	Navsari', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (164, N'	Panchmahal (Godhra)', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (165, N'	Patan', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (166, N'	Porbandar', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (167, N'	Rajkot', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (168, N'	Sabarkantha (Himmatnagar)', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (169, N'	Surat', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (170, N'	Surendranagar', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (171, N'	Tapi (Vyara)', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (172, N'	Vadodara', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (173, N'	Valsad', 12)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (174, N'	Ambala', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (175, N'	Bhiwani', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (176, N'	Faridabad', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (177, N'	Fatehabad', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (178, N'	Gurgaon', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (179, N'	Hisar', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (180, N'	Jhajjar', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (181, N'	Jind', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (182, N'	Kaithal', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (183, N'	Karnal', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (184, N'	Kurukshetra', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (185, N'	Mahendragarh', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (186, N'	Mewat', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (187, N'	Palwal', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (188, N'	Panchkula', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (189, N'	Panipat', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (190, N'	Rewari', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (191, N'	Rohtak', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (192, N'	Sirsa', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (193, N'	Sonipat', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (194, N'	Yamunanagar', 13)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (195, N'	Bilaspur', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (196, N'	Chamba', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (197, N'	Hamirpur', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (198, N'	Kangra', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (199, N'	Kinnaur', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (200, N'	Kullu', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (201, N'	Lahaul & Spiti', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (202, N'	Mandi', 14)
GO
print 'Processed 200 total records'
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (203, N'	Shimla', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (204, N'	Sirmaur (Sirmour)', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (205, N'	Solan', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (206, N'	Una', 14)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (207, N'	Anantnag', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (208, N'	Bandipora', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (209, N'	Baramulla', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (210, N'	Budgam', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (211, N'	Doda', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (212, N'	Ganderbal', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (213, N'	Jammu', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (214, N'	Kargil', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (215, N'	Kathua', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (216, N'	Kishtwar', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (217, N'	Kulgam', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (218, N'	Kupwara', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (219, N'	Leh', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (220, N'	Poonch', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (221, N'	Pulwama', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (222, N'	Rajouri', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (223, N'	Ramban', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (224, N'	Reasi', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (225, N'	Samba', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (226, N'	Shopian', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (227, N'	Srinagar', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (228, N'	Udhampur', 15)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (229, N'	Bokaro', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (230, N'	Chatra', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (231, N'	Deoghar', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (232, N'	Dhanbad', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (233, N'	Dumka', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (234, N'	East Singhbhum', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (235, N'	Garhwa', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (236, N'	Giridih', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (237, N'	Godda', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (238, N'	Gumla', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (239, N'	Hazaribag', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (240, N'	Jamtara', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (241, N'	Khunti', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (242, N'	Koderma', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (243, N'	Latehar', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (244, N'	Lohardaga', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (245, N'	Pakur', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (246, N'	Palamu', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (247, N'	Ramgarh', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (248, N'	Ranchi', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (249, N'	Sahibganj', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (250, N'	Seraikela-Kharsawan', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (251, N'	Simdega', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (252, N'	West Singhbhum', 16)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (253, N'	Bagalkot', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (254, N'	Bangalore Rural', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (255, N'	Bangalore Urban', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (256, N'	Belgaum', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (257, N'	Bellary', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (258, N'	Bidar', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (259, N'	Bijapur', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (260, N'	Chamarajanagar', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (261, N'	Chickmagalur', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (262, N'	Chikballapur', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (263, N'	Chitradurga', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (264, N'	Dakshina Kannada', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (265, N'	Davangere', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (266, N'	Dharwad', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (267, N'	Gadag', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (268, N'	Gulbarga', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (269, N'	Hassan', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (270, N'	Haveri', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (271, N'	Kodagu', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (272, N'	Kolar', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (273, N'	Koppal', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (274, N'	Mandya', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (275, N'	Mysore', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (276, N'	Raichur', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (277, N'	Ramnagara', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (278, N'	Shimoga', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (279, N'	Tumkur', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (280, N'	Udupi', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (281, N'	Uttara Kannada (Karwar)', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (282, N'	Yadgir', 17)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (283, N'	Alappuzha', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (284, N'	Ernakulam', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (285, N'	Idukki', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (286, N'	Kannur', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (287, N'	Kasaragod', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (288, N'	Kollam', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (289, N'	Kottayam', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (290, N'	Kozhikode', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (291, N'	Malappuram', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (292, N'	Palakkad', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (293, N'	Pathanamthitta', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (294, N'	Thiruvananthapuram', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (295, N'	Thrissur', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (296, N'	Wayanad', 18)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (297, N'	Lakshadweep', 19)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (298, N'	Alirajpur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (299, N'	Anuppur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (300, N'	Ashoknagar', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (301, N'	Balaghat', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (302, N'	Barwani', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (303, N'	Betul', 20)
GO
print 'Processed 300 total records'
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (304, N'	Bhind', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (305, N'	Bhopal', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (306, N'	Burhanpur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (307, N'	Chhatarpur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (308, N'	Chhindwara', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (309, N'	Damoh', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (310, N'	Datia', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (311, N'	Dewas', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (312, N'	Dhar', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (313, N'	Dindori', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (314, N'	Guna', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (315, N'	Gwalior', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (316, N'	Harda', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (317, N'	Hoshangabad', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (318, N'	Indore', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (319, N'	Jabalpur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (320, N'	Jhabua', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (321, N'	Katni', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (322, N'	Khandwa', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (323, N'	Khargone', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (324, N'	Mandla', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (325, N'	Mandsaur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (326, N'	Morena', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (327, N'	Narsinghpur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (328, N'	Neemuch', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (329, N'	Panna', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (330, N'	Raisen', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (331, N'	Rajgarh', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (332, N'	Ratlam', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (333, N'	Rewa', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (334, N'	Sagar', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (335, N'	Satna', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (336, N'	Sehore', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (337, N'	Seoni', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (338, N'	Shahdol', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (339, N'	Shajapur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (340, N'	Sheopur', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (341, N'	Shivpuri', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (342, N'	Sidhi', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (343, N'	Singrauli', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (344, N'	Tikamgarh', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (345, N'	Ujjain', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (346, N'	Umaria', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (347, N'	Vidisha', 20)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (348, N'	Ahmednagar', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (349, N'	Akola', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (350, N'	Amravati', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (351, N'	Aurangabad', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (352, N'	Beed', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (353, N'	Bhandara', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (354, N'	Buldhana', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (355, N'	Chandrapur', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (356, N'	Dhule', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (357, N'	Gadchiroli', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (358, N'	Gondia', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (359, N'	Hingoli', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (360, N'	Jalgaon', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (361, N'	Jalna', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (362, N'	Kolhapur', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (363, N'	Latur', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (364, N'	Mumbai City', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (365, N'	Mumbai Suburban', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (366, N'	Nagpur', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (367, N'	Nanded', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (368, N'	Nandurbar', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (369, N'	Nashik', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (370, N'	Osmanabad', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (371, N'	Parbhani', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (372, N'	Pune', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (373, N'	Raigad', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (374, N'	Ratnagiri', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (375, N'	Sangli', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (376, N'	Satara', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (377, N'	Sindhudurg', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (378, N'	Solapur', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (379, N'	Thane', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (380, N'	Wardha', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (381, N'	Washim', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (382, N'	Yavatmal', 21)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (383, N'	Bishnupur', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (384, N'	Chandel', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (385, N'	Churachandpur', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (386, N'	Imphal East', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (387, N'	Imphal West', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (388, N'	Senapati', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (389, N'	Tamenglong', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (390, N'	Thoubal', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (391, N'	Ukhrul', 22)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (392, N'	East Garo Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (393, N'	East Jaintia Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (394, N'	East Khasi Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (395, N'	North Garo Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (396, N'	Ri Bhoi', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (397, N'	South Garo Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (398, N'	South West Garo Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (399, N'	South West Khasi Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (400, N'	West Garo Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (401, N'	West Jaintia Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (402, N'	West Khasi Hills', 23)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (403, N'	Aizawl', 24)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (404, N'	Champhai', 24)
GO
print 'Processed 400 total records'
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (405, N'	Kolasib', 24)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (406, N'	Lawngtlai', 24)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (407, N'	Lunglei', 24)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (408, N'	Mamit', 24)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (409, N'	Saiha', 24)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (410, N'	Serchhip', 24)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (411, N'	Dimapur', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (412, N'	Kiphire', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (413, N'	Kohima', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (414, N'	Longleng', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (415, N'	Mokokchung', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (416, N'	Mon', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (417, N'	Peren', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (418, N'	Phek', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (419, N'	Tuensang', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (420, N'	Wokha', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (421, N'	Zunheboto', 25)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (422, N'	Angul', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (423, N'	Balangir', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (424, N'	Balasore', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (425, N'	Bargarh', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (426, N'	Bhadrak', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (427, N'	Boudh', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (428, N'	Cuttack', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (429, N'	Deogarh', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (430, N'	Dhenkanal', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (431, N'	Gajapati', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (432, N'	Ganjam', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (433, N'	Jagatsinghapur', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (434, N'	Jajpur', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (435, N'	Jharsuguda', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (436, N'	Kalahandi', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (437, N'	Kandhamal', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (438, N'	Kendrapara', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (439, N'	Kendujhar (Keonjhar)', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (440, N'	Khordha', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (441, N'	Koraput', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (442, N'	Malkangiri', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (443, N'	Mayurbhanj', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (444, N'	Nabarangpur', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (445, N'	Nayagarh', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (446, N'	Nuapada', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (447, N'	Puri', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (448, N'	Rayagada', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (449, N'	Sambalpur', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (450, N'	Sonepur', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (451, N'	Sundargarh', 26)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (452, N'	Karaikal', 27)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (453, N'	Mahe', 27)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (454, N'	Pondicherry', 27)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (455, N'	Yanam', 27)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (456, N'	Amritsar', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (457, N'	Barnala', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (458, N'	Bathinda', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (459, N'	Faridkot', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (460, N'	Fatehgarh Sahib', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (461, N'	Fazilka', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (462, N'	Ferozepur', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (463, N'	Gurdaspur', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (464, N'	Hoshiarpur', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (465, N'	Jalandhar', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (466, N'	Kapurthala', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (467, N'	Ludhiana', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (468, N'	Mansa', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (469, N'	Moga', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (470, N'	Muktsar', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (471, N'	Nawanshahr', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (472, N'	Pathankot', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (473, N'	Patiala', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (474, N'	Rupnagar', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (475, N'	Sangrur', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (476, N'	SAS Nagar (Mohali)', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (477, N'	Tarn Taran', 28)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (478, N'	Ajmer', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (479, N'	Alwar', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (480, N'	Banswara', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (481, N'	Baran', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (482, N'	Barmer', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (483, N'	Bharatpur', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (484, N'	Bhilwara', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (485, N'	Bikaner', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (486, N'	Bundi', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (487, N'	Chittorgarh', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (488, N'	Churu', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (489, N'	Dausa', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (490, N'	Dholpur', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (491, N'	Dungarpur', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (492, N'	Hanumangarh', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (493, N'	Jaipur', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (494, N'	Jaisalmer', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (495, N'	Jalore', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (496, N'	Jhalawar', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (497, N'	Jhunjhunu', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (498, N'	Jodhpur', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (499, N'	Karauli', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (500, N'	Kota', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (501, N'	Nagaur', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (502, N'	Pali', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (503, N'	Pratapgarh', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (504, N'	Rajsamand', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (505, N'	Sawai Madhopur', 29)
GO
print 'Processed 500 total records'
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (506, N'	Sikar', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (507, N'	Sirohi', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (508, N'	Sri Ganganagar', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (509, N'	Tonk', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (510, N'	Udaipur', 29)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (511, N'	East Sikkim', 30)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (512, N'	North Sikkim', 30)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (513, N'	South Sikkim', 30)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (514, N'	West Sikkim', 30)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (515, N'	Ariyalur', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (516, N'	Chennai', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (517, N'	Coimbatore', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (518, N'	Cuddalore', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (519, N'	Dharmapuri', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (520, N'	Dindigul', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (521, N'	Erode', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (522, N'	Kanchipuram', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (523, N'	Kanyakumari', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (524, N'	Karur', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (525, N'	Krishnagiri', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (526, N'	Madurai', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (527, N'	Nagapattinam', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (528, N'	Namakkal', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (529, N'	Nilgiris', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (530, N'	Perambalur', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (531, N'	Pudukkottai', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (532, N'	Ramanathapuram', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (533, N'	Salem', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (534, N'	Sivaganga', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (535, N'	Thanjavur', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (536, N'	Theni', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (537, N'	Thoothukudi (Tuticorin)', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (538, N'	Tiruchirappalli', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (539, N'	Tirunelveli', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (540, N'	Tiruppur', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (541, N'	Tiruvallur', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (542, N'	Tiruvannamalai', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (543, N'	Tiruvarur', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (544, N'	Vellore', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (545, N'	Viluppuram', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (546, N'	Virudhunagar', 31)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (547, N'	Adilabad', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (548, N'	Hyderabad', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (549, N'	Karimnagar', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (550, N'	Khammam', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (551, N'	Mahabubnagar', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (552, N'	Medak', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (553, N'	Nalgonda', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (554, N'	Nizamabad', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (555, N'	Rangareddy', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (556, N'	Warangal', 32)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (557, N'	Dhalai', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (558, N'	Gomati', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (559, N'	Khowai', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (560, N'	North Tripura', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (561, N'	Sepahijala', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (562, N'	South Tripura', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (563, N'	Unakoti', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (564, N'	West Tripura', 33)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (565, N'	Agra', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (566, N'	Aligarh', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (567, N'	Allahabad', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (568, N'	Ambedkar Nagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (569, N'	Auraiya', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (570, N'	Azamgarh', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (571, N'	Baghpat', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (572, N'	Bahraich', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (573, N'	Ballia', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (574, N'	Balrampur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (575, N'	Banda', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (576, N'	Barabanki', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (577, N'	Bareilly', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (578, N'	Basti', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (579, N'	Sambhal', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (580, N'	Bijnor', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (581, N'	Budaun', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (582, N'	Bulandshahr', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (583, N'	Chandauli', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (584, N'	Amethi', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (585, N'	Chitrakoot', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (586, N'	Deoria', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (587, N'	Etah', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (588, N'	Etawah', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (589, N'	Faizabad', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (590, N'	Farrukhabad', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (591, N'	Fatehpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (592, N'	Firozabad', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (593, N'	Gautam Buddha Nagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (594, N'	Ghaziabad', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (595, N'	Ghazipur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (596, N'	Gonda', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (597, N'	Gorakhpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (598, N'	Hamirpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (599, N'	Hardoi', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (600, N'	Hathras', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (601, N'	Jalaun', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (602, N'	Jaunpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (603, N'	Jhansi', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (604, N'	Amroha', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (605, N'	Kannauj', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (606, N'	Kanpur Dehat', 34)
GO
print 'Processed 600 total records'
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (607, N'	Kanpur Nagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (608, N'	Kanshiram Nagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (609, N'	Kaushambi', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (610, N'	Kushinagar ', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (611, N'	Lakhimpur - Kheri', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (612, N'	Lalitpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (613, N'	Lucknow', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (614, N'	Maharajganj', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (615, N'	Mahoba', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (616, N'	Mainpuri', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (617, N'	Mathura', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (618, N'	Mau', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (619, N'	Meerut', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (620, N'	Mirzapur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (621, N'	Moradabad', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (622, N'	Muzaffarnagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (623, N'	Hapur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (624, N'	Pilibhit', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (625, N'	Shamali', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (626, N'	Pratapgarh', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (627, N'	RaeBareli', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (628, N'	Rampur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (629, N'	Saharanpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (630, N'	Sant Kabir Nagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (631, N'	Sant Ravidas Nagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (632, N'	Shahjahanpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (633, N'	Shravasti', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (634, N'	Siddharth Nagar', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (635, N'	Sitapur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (636, N'	Sonbhadra', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (637, N'	Sultanpur', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (638, N'	Unnao', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (639, N'	Varanasi', 34)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (640, N'	Almora', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (641, N'	Bageshwar', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (642, N'	Chamoli', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (643, N'	Champawat', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (644, N'	Dehradun', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (645, N'	Haridwar', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (646, N'	Nainital', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (647, N'	Pauri Garhwal', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (648, N'	Pithoragarh', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (649, N'	Rudraprayag', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (650, N'	Tehri Garhwal', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (651, N'	Udham Singh Nagar', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (652, N'	Uttarkashi', 35)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (653, N'	Bankura', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (654, N'	Birbhum', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (655, N'	Burdwan (Bardhaman)', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (656, N'	Cooch Behar', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (657, N'	Dakshin Dinajpur', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (658, N'	Darjeeling', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (659, N'	Hooghly', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (660, N'	Howrah', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (661, N'	Jalpaiguri', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (662, N'	Kolkata', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (663, N'	Malda', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (664, N'	Murshidabad', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (665, N'	Nadia', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (666, N'	North 24 Parganas', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (667, N'	Paschim Medinipur', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (668, N'	Purba Medinipur', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (669, N'	Purulia', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (670, N'	South 24 Parganas', 36)
INSERT [dbo].[tbdistrict] ([DId], [district], [StateId]) VALUES (671, N'	Uttar Dinajpur', 36)
/****** Object:  Table [dbo].[tbdepartment]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbdepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[department] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbdepartment] ON
INSERT [dbo].[tbdepartment] ([Id], [department]) VALUES (1, N'Student')
INSERT [dbo].[tbdepartment] ([Id], [department]) VALUES (2, N'Library Assistant')
INSERT [dbo].[tbdepartment] ([Id], [department]) VALUES (3, N'Assistent Teacher')
INSERT [dbo].[tbdepartment] ([Id], [department]) VALUES (4, N'Assistent Teacher')
INSERT [dbo].[tbdepartment] ([Id], [department]) VALUES (5, N'Proffessor')
INSERT [dbo].[tbdepartment] ([Id], [department]) VALUES (8, N'Security')
SET IDENTITY_INSERT [dbo].[tbdepartment] OFF
/****** Object:  Table [dbo].[tbchangeapi]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbchangeapi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[apiemail] [varchar](max) NULL,
	[statustype] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[mailpass] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbchangeapi] ON
INSERT [dbo].[tbchangeapi] ([Id], [apiemail], [statustype], [username], [mailpass]) VALUES (1, N'troshan23@gmail.com', N'EMAIL', N'troshan23@gmail.com', N'mummypapa@8')
INSERT [dbo].[tbchangeapi] ([Id], [apiemail], [statustype], [username], [mailpass]) VALUES (2, N'http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=anuradha22dolly58@gmail.com:somethingwro&senderID=TEST ', N'API', N'troshan23@gmail.com', N'null')
SET IDENTITY_INSERT [dbo].[tbchangeapi] OFF
/****** Object:  Table [dbo].[tbBoard]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbBoard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[board] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbBoard] ON
INSERT [dbo].[tbBoard] ([Id], [board]) VALUES (1, N'Jaipur Board')
INSERT [dbo].[tbBoard] ([Id], [board]) VALUES (2, N'UP Board')
INSERT [dbo].[tbBoard] ([Id], [board]) VALUES (3, N'CBSE Board')
INSERT [dbo].[tbBoard] ([Id], [board]) VALUES (4, N'Bihar Board')
INSERT [dbo].[tbBoard] ([Id], [board]) VALUES (5, N'Mharastra Board')
SET IDENTITY_INSERT [dbo].[tbBoard] OFF
/****** Object:  Table [dbo].[tbbldgrp]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbbldgrp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bloodgrp] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbbldgrp] ON
INSERT [dbo].[tbbldgrp] ([Id], [bloodgrp]) VALUES (1, N'A-')
INSERT [dbo].[tbbldgrp] ([Id], [bloodgrp]) VALUES (4, N'A+')
INSERT [dbo].[tbbldgrp] ([Id], [bloodgrp]) VALUES (6, N'B+')
INSERT [dbo].[tbbldgrp] ([Id], [bloodgrp]) VALUES (7, N'G+')
INSERT [dbo].[tbbldgrp] ([Id], [bloodgrp]) VALUES (9, N'O+')
INSERT [dbo].[tbbldgrp] ([Id], [bloodgrp]) VALUES (10, N'O-')
INSERT [dbo].[tbbldgrp] ([Id], [bloodgrp]) VALUES (11, N'O-')
SET IDENTITY_INSERT [dbo].[tbbldgrp] OFF
/****** Object:  Table [dbo].[tbBatch]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbBatch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassType] [varchar](50) NULL,
	[Session] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbBatch] ON
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (1, N'MBA', N'2011')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (2, N'BBA', N'2014')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (3, N'BBA', N'2014')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (4, N'BBA', N'2013')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (5, N'M Tech', N'2014')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (6, N'MBA', N'2011')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (7, N'MBA', N'2014')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (9, N'BTech', N'2011')
INSERT [dbo].[tbBatch] ([Id], [ClassType], [Session]) VALUES (10, N'BTech', N'1017')
SET IDENTITY_INSERT [dbo].[tbBatch] OFF
/****** Object:  Table [dbo].[tbAlowncesalary]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbAlowncesalary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[allownctype] [varchar](50) NULL,
	[percentage] [int] NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbAlowncesalary] ON
INSERT [dbo].[tbAlowncesalary] ([Id], [allownctype], [percentage], [status]) VALUES (2, N'House Rent', 20, N'Active')
INSERT [dbo].[tbAlowncesalary] ([Id], [allownctype], [percentage], [status]) VALUES (3, N'Medical', 40, N'Active')
INSERT [dbo].[tbAlowncesalary] ([Id], [allownctype], [percentage], [status]) VALUES (4, N'Convence', 50, N'Unactive')
INSERT [dbo].[tbAlowncesalary] ([Id], [allownctype], [percentage], [status]) VALUES (10, N'Tea', 20, N'Unactive')
INSERT [dbo].[tbAlowncesalary] ([Id], [allownctype], [percentage], [status]) VALUES (14, N'Milk', 6, N'Active')
INSERT [dbo].[tbAlowncesalary] ([Id], [allownctype], [percentage], [status]) VALUES (15, N'Insentive', 20, N'Unactive')
INSERT [dbo].[tbAlowncesalary] ([Id], [allownctype], [percentage], [status]) VALUES (16, N'Hello', 2, N'Unactive')
SET IDENTITY_INSERT [dbo].[tbAlowncesalary] OFF
/****** Object:  Table [dbo].[tbaddsection]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbaddsection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[section] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbaddsection] ON
INSERT [dbo].[tbaddsection] ([Id], [section]) VALUES (1, N'A')
INSERT [dbo].[tbaddsection] ([Id], [section]) VALUES (2, N'B')
INSERT [dbo].[tbaddsection] ([Id], [section]) VALUES (3, N'C')
INSERT [dbo].[tbaddsection] ([Id], [section]) VALUES (4, N'D')
INSERT [dbo].[tbaddsection] ([Id], [section]) VALUES (12, N'E')
SET IDENTITY_INSERT [dbo].[tbaddsection] OFF
/****** Object:  Table [dbo].[tbaddgroup]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbaddgroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[group1] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbaddgroup] ON
INSERT [dbo].[tbaddgroup] ([Id], [group1]) VALUES (1, N'Student')
INSERT [dbo].[tbaddgroup] ([Id], [group1]) VALUES (2, N'A/c')
INSERT [dbo].[tbaddgroup] ([Id], [group1]) VALUES (11, N'Helper')
INSERT [dbo].[tbaddgroup] ([Id], [group1]) VALUES (12, N'Helper')
INSERT [dbo].[tbaddgroup] ([Id], [group1]) VALUES (5, N'HR')
INSERT [dbo].[tbaddgroup] ([Id], [group1]) VALUES (6, N'HMR')
INSERT [dbo].[tbaddgroup] ([Id], [group1]) VALUES (7, N'CO')
SET IDENTITY_INSERT [dbo].[tbaddgroup] OFF
/****** Object:  Table [dbo].[tbaddClasSec]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbaddClasSec](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[cls] [varchar](50) NULL,
	[Grop] [varchar](50) NULL,
	[section] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbaddClasSec] ON
INSERT [dbo].[tbaddClasSec] ([Id], [cls], [Grop], [section]) VALUES (1, N'MBA', N'Student', N'A')
INSERT [dbo].[tbaddClasSec] ([Id], [cls], [Grop], [section]) VALUES (2, N'MBA', N'Student', N'A')
INSERT [dbo].[tbaddClasSec] ([Id], [cls], [Grop], [section]) VALUES (3, N'BTech', N'HR', N'A')
INSERT [dbo].[tbaddClasSec] ([Id], [cls], [Grop], [section]) VALUES (4, N'BTech', N'HR', N'C')
INSERT [dbo].[tbaddClasSec] ([Id], [cls], [Grop], [section]) VALUES (10, N'MCA', N'HR', N'F')
INSERT [dbo].[tbaddClasSec] ([Id], [cls], [Grop], [section]) VALUES (12, N'BSc', N'A/c', N'A')
INSERT [dbo].[tbaddClasSec] ([Id], [cls], [Grop], [section]) VALUES (13, N'MBA', N'Student', N'C')
SET IDENTITY_INSERT [dbo].[tbaddClasSec] OFF
/****** Object:  Table [dbo].[Table]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table](
	[uid] [int] NOT NULL,
	[email] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[dob] [date] NULL,
	[gender] [varchar](50) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[StudentInfoTable]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentInfoTable](
	[FormNo] [int] IDENTITY(10000,1) NOT NULL,
	[StName] [varchar](50) NULL,
	[Batch] [varchar](50) NULL,
	[Date1] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Shift] [varchar](50) NULL,
	[Rollno] [varchar](50) NULL,
	[Dob] [varchar](50) NULL,
	[BloodGrp] [varchar](50) NULL,
	[Group1] [varchar](50) NULL,
	[Section] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[AdmisionYear] [varchar](50) NULL,
	[FatName] [varchar](50) NULL,
	[Foccupation] [varchar](50) NULL,
	[Fincome] [varchar](50) NULL,
	[MothName] [varchar](50) NULL,
	[Moccupation] [varchar](50) NULL,
	[Minome] [varchar](50) NULL,
	[Fmobile] [varchar](50) NULL,
	[Mmobile] [varchar](50) NULL,
	[Hmobile] [varchar](50) NULL,
	[Femail] [varchar](50) NULL,
	[Memail] [varchar](50) NULL,
	[GRelation] [varchar](50) NULL,
	[Gname] [varchar](50) NULL,
	[Gmobile] [varchar](50) NULL,
	[Gaddress] [varchar](50) NULL,
	[PresentAddress] [varchar](50) NULL,
	[PrDistrict] [varchar](50) NULL,
	[PrState] [varchar](50) NULL,
	[ParmanantAddress] [varchar](50) NULL,
	[ParDistrict] [varchar](50) NULL,
	[ParState] [varchar](50) NULL,
	[PreviousSchoolName] [varchar](50) NULL,
	[RollNoPre] [varchar](50) NULL,
	[PassingYear] [varchar](50) NULL,
	[BoardPre] [varchar](50) NULL,
	[RagistrationPre] [varchar](50) NULL,
	[TranferCertificate] [varchar](50) NULL,
	[TakeAdmision] [varchar](50) NULL,
	[img] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[activestatus] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[createddate] [date] NULL,
	[attandancedate] [date] NULL,
	[attandancestatus] [varchar](50) NULL,
	[assignteacherId] [int] NULL,
	[teachermsg] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FormNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[StudentInfoTable] ON
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10000, N'Deepak', N'MBA_2014', N'03/07/2017', N'MBA', N'Morning', N'12333', N'18/08/1992', N'A+', N'B', N'A', N'Female', N'Hindu', N'65617521', N'yhghaghahah', N'aajajagjag', N'abbnbanam', N'akjakakhaah', N'nm,n,m', N'254651', N'9716526132', N'09891260711', N'09891260711', N'troshan23@gmail.com', N'troshan23@gmail.com', N'Mother', N'yytayatya', N'9716526132', N'H. No 1546, Arthala, Ambedkar  nagar', N'aahaha', N'Dhaka', N'aajghjagjg', N'uwjhjsds', N'Dinajpur', N'gaghsa', N'hghgahgjhgdghagda', N'1000000', N'2015', N'Comilla', N'7657652`', N'615615265165', N'Eight', N'/StudentImage/g.jpg', N'123', N'Activated', N'10000Deepak', CAST(0xCD3C0B00 AS Date), CAST(0xA63C0B00 AS Date), N'Absent', 10005, N'Hello Sir I am Here!!!!!!!!!!!!!!!!!!!!!!!!')
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10002, N'Roshan Thakur', N'MBA_2014', N'12/12/2016', N'MBA', N'Morning', N'198765221', N'18/08/1992', N'Unknown', N'A', N'A', N'Male', N'Islam', N'1312211', N'Rajkumr', N'servent', N'60000', N'shobha devi', N'house wife', N'100000', N'9716526132', N'09891260711', N'09891260711', N'anuradha22dolly58@gmail.com', N'anuradha22dolly58@gmail.com', N'Father', N'tbbsbsbssnb', N'9891260744', N'ghgdh', N'aahaha', N'Comilla', N'dmdmdmfdmf', N'uwjhjsds', N'Dhaka', N'gaghsa', N'yyuwtuteuwteu', N'1000001', N'2014', N'Comilla', N'5146514424151', N'615615265165', N'Eight', N'/ProfileImage/014724AM.png', N'456', N'Activated', N'10002Roshan Thakur', CAST(0x9E3C0B00 AS Date), CAST(0xA63C0B00 AS Date), N'Absent', 10004, N'All Students should be attend on 21st May 2017 to 31st May 2017, Other College will be fine Rs. 500 on absents students.')
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10003, N'Anuradha', N'MBA_2014', N'04/12/2016', N'MBA', N'Morning', N'7877', N'18/08/1992', N'A-', N'B', N'A', N'Female', N'Christian', N'65617521', N'', N'kjahkdjhsd', N'abbnbanam', N'akjakakhaah', N'jahdhakhd', N'254651', N'09891260711', N'9716526132', N'9716526132', N'kumar.deepanshu99@gmail.com', N'kumar.deepanshu99@gmail.com', N'Mother', N'yytayatya', N'9997534969', N'', N'kjjddkdfkdfd', N'Feni', N'', N'21212121', N'...Select... ', N'gaghsa', N'hghgahgjhgdghagda', N'1000002', N'2015', N'Mymensing', N'', N'1212132', N'Eight', N'/StudentImage/g.jpg', N'789', N'Deactivated', N'10003Anuradha', CAST(0x9E3C0B00 AS Date), CAST(0xA63C0B00 AS Date), N'Absent', 10004, N'All Students should be attend on 21st May 2017 to 31st May 2017, Other College will be fine Rs. 500 on absents students.')
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10004, N'Anant Tyagi', N'M Tech_2014', N'03/06/2017', N'MCA', N'Morning', N'82871', N'03/22/2017', N'A-', N'HR', N'D', N'Other', N'Sikh', N'03/23/2017', N'Rajkumar', N'Service', N'12411', N'Shobha', N'HouseWife', N'31311', N'9997534969', N'9891260711', N'8126934750', N'anuradha22dolly58@gmail.com', N'anuradha22dolly58@gmail.com', N'--Select--', N'Rahul', N'9599417973', N'Muradnagar', N'Arthala', N'Arunachal Pradesh', N'Arthala', N'Arunachal Pradesh', N'	North and Middle Andaman', N'Arthaka', N'AP Scholl', N'1000003', N'2012', N'CBSE', N'7816381', N'15261652', N'MBA', N'/StudentImage/images.jpg', N'123', N'Activated', N'10004Anant Tyagi', CAST(0xA33C0B00 AS Date), CAST(0xA63C0B00 AS Date), N'Absent', 10004, N'All Students should be attend on 21st May 2017 to 31st May 2017, Other College will be fine Rs. 500 on absents students.')
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10005, N'Anant', N'MBA_2014', N'03/06/2017', N'MBA', N'Morning', N'82871', N'03/22/2017', N'A-', N'HR', N'D', N'Other', N'Sikh', N'03/23/2017', N'Rajkumar', N'Service', N'12411', N'Shobha', N'HouseWife', N'31311', N'9997534969', N'9891260711', N'8126934750', N'troshan23@gmail.com', N'troshan23@gmail.com', N'--Select--', N'Rahul', N'9717687353', N'Muradnagar', N'Arthala', N'Arunachal Pradesh', N'Arthala', N'Arunachal Pradesh', N'	North and Middle Andaman', N'Arthaka', N'AP Scholl', N'1000004', N'2012', N'CBSE', N'7816381', N'15261652', N'MBA', N'/StudentImage/images.jpg', N'456', N'Activated', NULL, NULL, CAST(0xA63C0B00 AS Date), N'Absent', 10001, N'Hello Sir I am Here!!!!!!!!!!!!!!!!!!!!!!!!')
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10008, N'Anant Tyagi', N'BBA_2014', N'03/06/2017', N'BTech', N'Day', N'82871', N'03/22/2017', N'A-', N'HR', N'D', N'Other', N'Cristian', N'03/23/2017', N'Rajkumar', N'', N'12411', N'', N'HouseWife', N'31311', N'9997534969', N'9716526132', N'9716526132', N'troshan23@gmail.com', N'troshan23@gmail.com', N'--Select--', N'Rahul', N'9716526132', N'H. No 1546, Arthala, Ambedkar  nagar', N'Arthala', N'Assam', N'Arthala', N'Andhra Pradesh', N'	North and Middle Andaman', N'Arthaka', N'AP Scholl', N'1000005', N'2012', N'UP Board', N'7816381', N'15261652', N'MBA', N'/StudentImage/images.jpg', NULL, N'Deactivated', NULL, NULL, CAST(0xA63C0B00 AS Date), N'Absent', 10004, N'All Students should be attend on 21st May 2017 to 31st May 2017, Other College will be fine Rs. 500 on absents students.')
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10027, N'Shivraaj Singh', N'BBA_2014', N'17-May-17', N'BBA', N'Morning', N'10027', N'03/22/2017', N'A+', N'', N'A', N'Male', N'Hindu', N'2010', N'Rajkumar', N'', N'', N'Shobha Devi', N'', N'', N'9716526132', N'9716526132', N'9716526132', N'shingshivraaz23@gmail.com', N'troshan23@gmail.com', N'--Select--', N'Rajkumar', N'9716526132', N'H. No 1546, Arthala, Ambedkar  nagar', N'H. No 1546, Arthala, Ambedkar  nagar', N'Mohan Nagar', N'uttarpradesh', N'', N'	North and Middle Andaman', N'Arthaka', N'', N'10005', N'2017', N'', N'', N'', N'18-May-17', N'/StudentImage/coollogo_com-283931991.png', NULL, NULL, NULL, NULL, NULL, NULL, 10004, N'All Students should be attend on 21st May 2017 to 31st May 2017, Other College will be fine Rs. 500 on absents students.')
INSERT [dbo].[StudentInfoTable] ([FormNo], [StName], [Batch], [Date1], [Class], [Shift], [Rollno], [Dob], [BloodGrp], [Group1], [Section], [Gender], [Religion], [AdmisionYear], [FatName], [Foccupation], [Fincome], [MothName], [Moccupation], [Minome], [Fmobile], [Mmobile], [Hmobile], [Femail], [Memail], [GRelation], [Gname], [Gmobile], [Gaddress], [PresentAddress], [PrDistrict], [PrState], [ParmanantAddress], [ParDistrict], [ParState], [PreviousSchoolName], [RollNoPre], [PassingYear], [BoardPre], [RagistrationPre], [TranferCertificate], [TakeAdmision], [img], [password], [activestatus], [username], [createddate], [attandancedate], [attandancestatus], [assignteacherId], [teachermsg]) VALUES (10028, N'Roshan Thakur', N'BBA_2014', N'17-May-17', N'BBA', N'Morning', N'10002', N'18/08/1992', N'Unknown', N'', N'A', N'Male', N'Islam', N'', N'Rajkumr', N'', N'', N'shobha devi', N'', N'', N'9716526132', N'09891260711', N'', N'anuradha22dolly58@gmail.com', N'anuradha22dolly58@gmail.com', N'Father', N'tbbsbsbssnb', N'9891260744', N'ghgdh', N'uwjhjsds', N'', N'', N'', N'Dhaka', N'gaghsa', N'', N'10002', N'2017', N'', N'', N'', N'Permoted', N'/ProfileImage/014724AM.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[StudentInfoTable] OFF
/****** Object:  Table [dbo].[state]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[id] [int] NOT NULL,
	[state] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[state] ([id], [state]) VALUES (1, N'Andhra Pradesh')
INSERT [dbo].[state] ([id], [state]) VALUES (2, N'Andaman and Nicobar Island')
INSERT [dbo].[state] ([id], [state]) VALUES (3, N'Arunachal Pradesh')
INSERT [dbo].[state] ([id], [state]) VALUES (4, N'Assam')
INSERT [dbo].[state] ([id], [state]) VALUES (5, N'Bihar')
INSERT [dbo].[state] ([id], [state]) VALUES (6, N'Chandigarh')
INSERT [dbo].[state] ([id], [state]) VALUES (7, N'Chhattisgarh')
INSERT [dbo].[state] ([id], [state]) VALUES (8, N'Dadra and Nagar Haveli')
INSERT [dbo].[state] ([id], [state]) VALUES (9, N'Daman and Diu')
INSERT [dbo].[state] ([id], [state]) VALUES (10, N'Delhi')
INSERT [dbo].[state] ([id], [state]) VALUES (11, N'Goa')
INSERT [dbo].[state] ([id], [state]) VALUES (12, N'Gujarat')
INSERT [dbo].[state] ([id], [state]) VALUES (13, N'Haryana')
INSERT [dbo].[state] ([id], [state]) VALUES (14, N'Himachal Pradesh')
INSERT [dbo].[state] ([id], [state]) VALUES (15, N'Jammu and Kashmir')
INSERT [dbo].[state] ([id], [state]) VALUES (16, N'Jharkhand')
INSERT [dbo].[state] ([id], [state]) VALUES (17, N'Karnataka')
INSERT [dbo].[state] ([id], [state]) VALUES (18, N'Kerala')
INSERT [dbo].[state] ([id], [state]) VALUES (19, N'Lakshadweep')
INSERT [dbo].[state] ([id], [state]) VALUES (20, N'Madhya Pradesh')
INSERT [dbo].[state] ([id], [state]) VALUES (21, N'Maharashtra')
INSERT [dbo].[state] ([id], [state]) VALUES (22, N'Manipur')
INSERT [dbo].[state] ([id], [state]) VALUES (23, N'Meghalaya')
INSERT [dbo].[state] ([id], [state]) VALUES (24, N'Mizoram')
INSERT [dbo].[state] ([id], [state]) VALUES (25, N'Nagaland')
INSERT [dbo].[state] ([id], [state]) VALUES (26, N'Odisha')
INSERT [dbo].[state] ([id], [state]) VALUES (27, N'Puducherry')
INSERT [dbo].[state] ([id], [state]) VALUES (29, N'Punjab')
INSERT [dbo].[state] ([id], [state]) VALUES (30, N'Rajasthan')
INSERT [dbo].[state] ([id], [state]) VALUES (31, N'Sikkim')
INSERT [dbo].[state] ([id], [state]) VALUES (32, N'Tamil Nadu')
INSERT [dbo].[state] ([id], [state]) VALUES (33, N'Telangana')
INSERT [dbo].[state] ([id], [state]) VALUES (34, N'Tripura')
INSERT [dbo].[state] ([id], [state]) VALUES (35, N'Uttar Pradesh')
INSERT [dbo].[state] ([id], [state]) VALUES (36, N'Uttarakhand')
INSERT [dbo].[state] ([id], [state]) VALUES (37, N'West Bengal')
/****** Object:  Table [dbo].[department]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[code] [int] NOT NULL,
	[session] [varchar](50) NULL,
	[path] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[uploaddate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[book]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book](
	[Id] [int] NULL,
	[Name] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[contact] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[book] ([Id], [Name], [Department], [contact]) VALUES (121, N'Roshan Thaur', N'MCA', N'9716526132')
INSERT [dbo].[book] ([Id], [Name], [Department], [contact]) VALUES (122, N'Annu', N'MCA', N'9891239871')
INSERT [dbo].[book] ([Id], [Name], [Department], [contact]) VALUES (123, N'Deepanshu', N'MCA', N'9891524232')
INSERT [dbo].[book] ([Id], [Name], [Department], [contact]) VALUES (124, N'Deepak', N'MCa', N'9891260744')
/****** Object:  Table [dbo].[AdminProfile]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminProfile](
	[uid] [int] IDENTITY(1000,1) NOT NULL,
	[email] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[dob] [date] NULL,
	[gender] [varchar](50) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[image] [varchar](50) NULL,
	[address] [varchar](max) NULL,
	[school] [varchar](50) NULL,
	[college] [varchar](50) NULL,
	[degree] [varchar](50) NULL,
	[p1] [varchar](max) NULL,
	[p2] [varchar](max) NULL,
	[blood] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[createdby] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[fname] [varchar](50) NULL,
 CONSTRAINT [PK_AdminProfile] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[AdminProfile] ON
INSERT [dbo].[AdminProfile] ([uid], [email], [mobile], [dob], [gender], [firstname], [lastname], [password], [image], [address], [school], [college], [degree], [p1], [p2], [blood], [designation], [Status], [createdby], [username], [fname]) VALUES (1001, N'anuradha22dolly@gmail.com', N'9997534969', CAST(0xC43C0B00 AS Date), N'Female', N'Anuradha', N'Saini', N'123', N'/Imgempstaff/2017-05-27-10-51-51-215.jpg', N'H. No 1546, Arthala, Ambedkar  nagar, Mohan Nagar', N'KRT Internation School, 2006', N'SDR College, 2010', N'RDEC 2015', N'People working collaboratively must establish and maintain awareness of one another''s intentions, actions, and results', N'Teachers are able to use class websites or apps like Class Dojo to keep parents updated about school.', N'A+', N'Admin', N'Active', N'Roshan Thakur', N'Anuraha', N'Dhulichand Saini')
INSERT [dbo].[AdminProfile] ([uid], [email], [mobile], [dob], [gender], [firstname], [lastname], [password], [image], [address], [school], [college], [degree], [p1], [p2], [blood], [designation], [Status], [createdby], [username], [fname]) VALUES (1003, N'troshan23@gmail.com', N'9716526132', CAST(0xC43C0B00 AS Date), N'Male', N'Roshan', N'Thakur', N'12345', N'/Imgempstaff/roshan (2).jpg', N'H. No 1546, Arthala, Ambedkar  nagar', N'KailashWati Inter College', N'SDR College, 2010', N'RDEC 2015', N'A brief personal introduction that includes your career objective or the type of position you want.', N'Three or four specific accomplishments that prove you meet or exceed the requirements for that position.', N'Mohan Nagar', N'SuperAdmin', N'Active', N'Anuradha Saini', N'RoshanThakur', N'Rajkumar Thakur')
SET IDENTITY_INSERT [dbo].[AdminProfile] OFF
/****** Object:  Table [dbo].[Addusers]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Addusers](
	[email] [varchar](50) NOT NULL,
	[first] [varchar](50) NULL,
	[last] [varchar](50) NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[addclass]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addclass](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[ClassType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[addclass] ON
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (1, N'MBA')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (2, N'MCA')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (3, N'BBA')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (4, N'BTech')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (5, N'M Tech')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (6, N'PollyTecnic')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (8, N'BSc')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (9, N'MSc')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (10, N'B Pharma')
INSERT [dbo].[addclass] ([orderid], [ClassType]) VALUES (11, N'MBBS')
SET IDENTITY_INSERT [dbo].[addclass] OFF
/****** Object:  Table [dbo].[website]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[website](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fb] [varchar](max) NULL,
	[Event] [varchar](max) NULL,
	[News] [varchar](max) NULL,
	[twitter] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[website] ON
INSERT [dbo].[website] ([Id], [fb], [Event], [News], [twitter], [Email]) VALUES (1, N'https://www.facebook.com/polyinfosoft/', N'People working collaboratively must establish and maintain awareness of one another''s intentions, actions, and results. Notification systems typically support awareness of the presence, tasks, and actions of collaborators, but they do not adequately support awareness of persistent and complex activities. We analyzed awareness breakdowns in use of our Virtual School system.', N'The Digital Education Centre formally launched on 26th November at a party in the Scottish Storytelling Centre on the High Street, Edinburgh. We had an excellent and well-attended night, and it was great to have so many colleagues, students and friends come and share the celebration. We celebrated the 10-year anniversary of the MSc in Digital Education at the same time, and with graduation happening the following day, were able to welcome many of our graduands too.', N'https://www.justdial.com/Delhi-NCR/Poly-Infosoft-India-Pvt-Ltd-Near-MMX-Mall-Om-Nagar-Mohan-Nagar/011PXX11-XX11-141010153335-M6Z8_BZDET', N'https://www.linkedin.com/company/polyinfosoft-india-pvt-ltd')
SET IDENTITY_INSERT [dbo].[website] OFF
/****** Object:  Table [dbo].[tbsubjectpettern]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbsubjectpettern](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[subject1] [varchar](50) NULL,
	[batch] [varchar](50) NULL,
	[examtype] [varchar](50) NULL,
	[examinfo] [varchar](max) NULL,
	[questionpettern] [varchar](50) NULL,
	[patternmarks] [int] NULL,
	[passmarks] [int] NULL,
	[optionalmandatory] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbsubjectpettern] ON
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (2, N'English', N'MBA_2014', N'Ist Term', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (3, N'Science', N'MBA_2014', N'Ist Term', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (4, N'Math', N'MBA_2014', N'Ist Term', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (5, N'Geography', N'MBA_2014', N'Ist Term', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (6, N'Histroy', N'MBA_2014', N'Ist Term', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (7, N'Hindi', N'MBA_2014', N'Ist Term', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (8, N'Hindi', N'MBA_2011', N'Ist Term', N'BBA_2014_2nd Term_04/29/2017_04/20/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (9, N'Math', N'MBA_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (10, N'English', N'MBA_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (11, N'Science', N'MBA_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (12, N'Geography', N'MBA_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (13, N'Math', N'M Tech_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (14, N'English', N'M Tech_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (15, N'Science', N'M Tech_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (16, N'Geography', N'M Tech_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (17, N'Histroy', N'MBA_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (18, N'Hindi', N'MBA_2014', N'2nd Term', N'BBA_2014_2nd Term_04/13/2017_04/10/2017', N'Written', 100, 33, N'Optional')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (19, N'Math', N'M Tech_2014', N'Ist Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (20, N'English', N'M Tech_2014', N'Ist Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (21, N'Science', N'M Tech_2014', N'Ist Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (22, N'Geography', N'M Tech_2014', N'Ist Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (23, N'Histroy', N'M Tech_2014', N'Ist Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (24, N'Hindi', N'M Tech_2014', N'Ist Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (25, N'Math', N'M Tech_2014', N'2nd Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (26, N'English', N'M Tech_2014', N'2nd Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (27, N'Science', N'M Tech_2014', N'2nd Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (28, N'Geography', N'M Tech_2014', N'2nd Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (29, N'Histroy', N'M Tech_2014', N'2nd Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
INSERT [dbo].[tbsubjectpettern] ([Id], [subject1], [batch], [examtype], [examinfo], [questionpettern], [patternmarks], [passmarks], [optionalmandatory]) VALUES (30, N'Hindi', N'M Tech_2014', N'2nd Term', N'M Tech_2014_4th Term_04/18/2017_04/22/2017', N'Written', 100, 33, N'Mandatory')
SET IDENTITY_INSERT [dbo].[tbsubjectpettern] OFF
/****** Object:  Table [dbo].[tbSubExamination]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbSubExamination](
	[Id] [int] IDENTITY(3000,1) NOT NULL,
	[subject] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbSubExamination] ON
INSERT [dbo].[tbSubExamination] ([Id], [subject]) VALUES (3000, N'Math')
INSERT [dbo].[tbSubExamination] ([Id], [subject]) VALUES (3001, N'English')
INSERT [dbo].[tbSubExamination] ([Id], [subject]) VALUES (3002, N'Science')
INSERT [dbo].[tbSubExamination] ([Id], [subject]) VALUES (3003, N'Geography')
INSERT [dbo].[tbSubExamination] ([Id], [subject]) VALUES (3008, N'Histroy')
INSERT [dbo].[tbSubExamination] ([Id], [subject]) VALUES (3010, N'Hindi')
SET IDENTITY_INSERT [dbo].[tbSubExamination] OFF
/****** Object:  Table [dbo].[tbStuAttandance]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbStuAttandance](
	[STPK] [int] IDENTITY(1,1) NOT NULL,
	[FKSTFormNo] [int] NULL,
	[attandancedate] [date] NULL,
	[attandancestatus] [varchar](50) NULL,
	[subject] [varchar](50) NULL,
	[teacherId] [int] NULL,
	[batch] [varchar](50) NULL,
	[shift] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[STPK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[tbStuAttandance] ON
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (46, 10008, CAST(0x4D3C0B00 AS Date), N'Absent', N'English', 10002, N'MBA_2011', N'Day')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (47, 10000, CAST(0x4D3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2011', N'Day')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (48, 10002, CAST(0x6C3C0B00 AS Date), N'Absent', N'English', 10002, N'MBA_2011', N'Day')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (49, 10003, CAST(0x8E3C0B00 AS Date), N'Absent', N'English', 10002, N'MBA_2011', N'Day')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (50, 10004, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2011', N'Day')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (51, 10005, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2011', N'Day')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (52, 10008, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2011', N'Day')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (53, 10000, CAST(0xAD3C0B00 AS Date), N'Absent', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (54, 10002, CAST(0xAD3C0B00 AS Date), N'Absent', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (55, 10003, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (56, 10005, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (57, 10000, CAST(0xAD3C0B00 AS Date), N'Absent', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (58, 10002, CAST(0xAD3C0B00 AS Date), N'Absent', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (59, 10003, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (60, 10005, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (61, 10000, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (62, 10002, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (63, 10003, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (64, 10005, CAST(0xAD3C0B00 AS Date), N'Present', N'English', 10002, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (65, 10000, CAST(0xAD3C0B00 AS Date), N'Present', N'Math', 10001, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (66, 10002, CAST(0xCB3C0B00 AS Date), N'Absent', N'Math', 10001, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (67, 10003, CAST(0xCB3C0B00 AS Date), N'Present', N'Math', 10001, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (68, 10005, CAST(0xAD3C0B00 AS Date), N'Absent', N'Math', 10001, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (69, 10002, CAST(0xD53C0B00 AS Date), N'Present', N'English', 1000, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (70, 10002, CAST(0xD53C0B00 AS Date), N'Present', N'English', 1000, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (71, 10002, CAST(0xD53C0B00 AS Date), N'Present', N'Math', 1000, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (72, 10002, CAST(0xD53C0B00 AS Date), N'Present', N'Math', 1000, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (73, 10003, CAST(0xD53C0B00 AS Date), N'Present', N'English', 1000, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (74, 10003, CAST(0xD83C0B00 AS Date), N'Present', N'English', 1000, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (75, 10000, CAST(0xD83C0B00 AS Date), N'Present', N'Math', 10004, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (76, 10002, CAST(0xD83C0B00 AS Date), N'Absent', N'Math', 10004, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (77, 10003, CAST(0xD83C0B00 AS Date), N'Absent', N'Math', 10004, N'MBA_2014', N'Morning')
INSERT [dbo].[tbStuAttandance] ([STPK], [FKSTFormNo], [attandancedate], [attandancestatus], [subject], [teacherId], [batch], [shift]) VALUES (78, 10005, CAST(0xD83C0B00 AS Date), N'Present', N'Math', 10004, N'MBA_2014', N'Morning')
SET IDENTITY_INSERT [dbo].[tbStuAttandance] OFF
/****** Object:  Table [dbo].[EmpAttandance]    Script Date: 06/05/2017 00:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpAttandance](
	[PKEID] [int] IDENTITY(1,1) NOT NULL,
	[FKEID] [int] NULL,
	[attandancedate] [date] NULL,
	[attandancestatus] [int] NULL,
	[attandancetime] [time](7) NULL,
	[latitute] [varchar](50) NULL,
	[longitute] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PKEID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[EmpAttandance] ON
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (7, 10001, CAST(0xA63C0B00 AS Date), 0, CAST(0x0700A222D8BC0000 AS Time), N'111', N'2222')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (10, 10003, CAST(0x6B3C0B00 AS Date), 0, CAST(0x07801ABD05C00000 AS Time), N'3333', N'4444')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (11, 10002, CAST(0x6B3C0B00 AS Date), 0, CAST(0x070038E909C00000 AS Time), N'55555', N'6666')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (12, 10004, CAST(0xA63C0B00 AS Date), 0, CAST(0x0780F8F61FC00000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (18, 10002, CAST(0xA73C0B00 AS Date), 1, CAST(0x07001237147F0000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (26, 10003, CAST(0xA73C0B00 AS Date), 1, CAST(0x07001237147F0000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (47, 10001, CAST(0xC43C0B00 AS Date), 1, CAST(0x0780CAA321860000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (48, 10004, CAST(0xA83C0B00 AS Date), 1, CAST(0x0700423228860000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (49, 10002, CAST(0xA83C0B00 AS Date), 1, CAST(0x07008C44F28C0000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (52, 10003, CAST(0xA83C0B00 AS Date), 1, CAST(0x070065C0A8BD0000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (54, 10005, CAST(0xA83C0B00 AS Date), 1, CAST(0x070044331BC20000 AS Time), N'28.6618976', N'77.2273958')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (57, 10001, CAST(0x4F3C0B00 AS Date), 1, CAST(0x0780F0EB56650000 AS Time), N'28.6178024', N'77.3894354')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (58, 10001, CAST(0x8A3C0B00 AS Date), 1, CAST(0x07002448F4670000 AS Time), N'28.6178024', N'77.3894354')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (59, 10001, CAST(0xAC3C0B00 AS Date), 1, CAST(0x07807B49A4C00000 AS Time), N'28.6703628', N'77.38899239999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (60, 10004, CAST(0xAC3C0B00 AS Date), 1, CAST(0x0700590B52C60000 AS Time), N'28.6703628', N'77.38899239999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (61, 10003, CAST(0xAC3C0B00 AS Date), 1, CAST(0x0780763756C60000 AS Time), N'28.6703628', N'77.38899239999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (62, 10002, CAST(0xAC3C0B00 AS Date), 0, CAST(0x070002653BC60000 AS Time), NULL, NULL)
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (63, 10005, CAST(0xAC3C0B00 AS Date), 0, CAST(0x070002653BC60000 AS Time), NULL, NULL)
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (64, 10001, CAST(0xC13C0B00 AS Date), 1, CAST(0x07002C9A057A0000 AS Time), N'', N'')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (65, 10001, CAST(0xC13C0B00 AS Date), 1, CAST(0x0780A06C207A0000 AS Time), N'28.6251693', N'77.37952899999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (66, 10001, CAST(0xCD3C0B00 AS Date), 1, CAST(0x0700933777040000 AS Time), N'28.7040592', N'77.10249019999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (85, 10001, CAST(0xD43C0B00 AS Date), 1, CAST(0x0780175B7CC20000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (86, 10001, CAST(0xD43C0B00 AS Date), 1, CAST(0x070008567FC20000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (87, 10004, CAST(0xD43C0B00 AS Date), 1, CAST(0x0700A5BFB9C20000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (88, 10002, CAST(0xD43C0B00 AS Date), 1, CAST(0x07009F7413C40000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (89, 10005, CAST(0xD43C0B00 AS Date), 1, CAST(0x07809D961DC40000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (91, 10001, CAST(0xD73C0B00 AS Date), 0, CAST(0x07006035EEC60000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (92, 10002, CAST(0xD73C0B00 AS Date), 0, CAST(0x07006035EEC60000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (93, 10003, CAST(0xD73C0B00 AS Date), 0, CAST(0x07006035EEC60000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (94, 10004, CAST(0xD73C0B00 AS Date), 1, CAST(0x07006035EEC60000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (95, 10005, CAST(0xD73C0B00 AS Date), 1, CAST(0x07006035EEC60000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (96, 10001, CAST(0xD83C0B00 AS Date), 0, CAST(0x0700180D8F000000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (97, 10002, CAST(0xD83C0B00 AS Date), 0, CAST(0x0700180D8F000000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (98, 10003, CAST(0xD83C0B00 AS Date), 0, CAST(0x0700180D8F000000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (99, 10004, CAST(0xD83C0B00 AS Date), 1, CAST(0x0700180D8F000000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (100, 10005, CAST(0xD83C0B00 AS Date), 1, CAST(0x0700180D8F000000 AS Time), N'28.670370899999998', N'77.38893999999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (101, 10001, CAST(0xDB3C0B00 AS Date), 1, CAST(0x0700D1505E480000 AS Time), N'28.7040592', N'77.10249019999999')
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (102, 10001, CAST(0xE33C0B00 AS Date), 0, CAST(0x0700A6F811C70000 AS Time), NULL, NULL)
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (103, 10002, CAST(0xE33C0B00 AS Date), 0, CAST(0x0700A6F811C70000 AS Time), NULL, NULL)
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (104, 10003, CAST(0xE33C0B00 AS Date), 0, CAST(0x0700A6F811C70000 AS Time), NULL, NULL)
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (105, 10004, CAST(0xE33C0B00 AS Date), 0, CAST(0x0700A6F811C70000 AS Time), NULL, NULL)
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (106, 10005, CAST(0xE33C0B00 AS Date), 0, CAST(0x0700A6F811C70000 AS Time), NULL, NULL)
INSERT [dbo].[EmpAttandance] ([PKEID], [FKEID], [attandancedate], [attandancestatus], [attandancetime], [latitute], [longitute]) VALUES (107, 10011, CAST(0xE33C0B00 AS Date), 0, CAST(0x0700A6F811C70000 AS Time), NULL, NULL)
SET IDENTITY_INSERT [dbo].[EmpAttandance] OFF
/****** Object:  ForeignKey [FK_tbStuAttandance_ToTable]    Script Date: 06/05/2017 00:05:45 ******/
ALTER TABLE [dbo].[tbStuAttandance]  WITH CHECK ADD  CONSTRAINT [FK_tbStuAttandance_ToTable] FOREIGN KEY([FKSTFormNo])
REFERENCES [dbo].[StudentInfoTable] ([FormNo])
GO
ALTER TABLE [dbo].[tbStuAttandance] CHECK CONSTRAINT [FK_tbStuAttandance_ToTable]
GO
/****** Object:  ForeignKey [FK_EmpAttandance_ToTable]    Script Date: 06/05/2017 00:05:45 ******/
ALTER TABLE [dbo].[EmpAttandance]  WITH CHECK ADD  CONSTRAINT [FK_EmpAttandance_ToTable] FOREIGN KEY([FKEID])
REFERENCES [dbo].[tbemployee] ([EId])
GO
ALTER TABLE [dbo].[EmpAttandance] CHECK CONSTRAINT [FK_EmpAttandance_ToTable]
GO
