USE [AcademicPerformance]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 19.03.2020 14:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[IdDiscipline] [int] IDENTITY(1,1) NOT NULL,
	[NameDiscipline] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED 
(
	[IdDiscipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 19.03.2020 14:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [int] IDENTITY(1,1) NOT NULL,
	[NameEvaluation] [nvarchar](45) NOT NULL,
	[NumberEvaluation] [int] NOT NULL,
 CONSTRAINT [PK_Evalucition] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journal]    Script Date: 19.03.2020 14:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journal](
	[IdJournal] [int] IDENTITY(1,1) NOT NULL,
	[IdStudent] [int] NOT NULL,
	[IdTeacher] [int] NOT NULL,
	[IdDiscipline] [int] NOT NULL,
	[IdEvaluation] [int] NOT NULL,
 CONSTRAINT [PK_Journal] PRIMARY KEY CLUSTERED 
(
	[IdJournal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.03.2020 14:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[NameRole] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 19.03.2020 14:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[IdStudent] [int] IDENTITY(1,1) NOT NULL,
	[LastNameStudent] [nvarchar](45) NOT NULL,
	[FirstNameStudent] [nvarchar](45) NOT NULL,
	[MiddleNameStudent] [nvarchar](45) NULL,
	[DateOfBirthStudent] [date] NOT NULL,
	[NumberPhoneStudent] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IdStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 19.03.2020 14:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[IdTeacher] [int] IDENTITY(1,1) NOT NULL,
	[LastNameTeacher] [nvarchar](45) NOT NULL,
	[FirstNameTeacher] [nvarchar](45) NOT NULL,
	[MiddleNameTeacher] [nvarchar](45) NULL,
	[DateOfBirthTeacher] [date] NOT NULL,
	[NumberPhoneTeacher] [nvarchar](45) NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[IdTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.03.2020 14:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[LoginUser] [nvarchar](45) NOT NULL,
	[PasswordUser] [nvarchar](45) NOT NULL,
	[RoleUser] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Discipline] ON 

INSERT [dbo].[Discipline] ([IdDiscipline], [NameDiscipline]) VALUES (1, N'Математика')
INSERT [dbo].[Discipline] ([IdDiscipline], [NameDiscipline]) VALUES (2, N'Физика')
INSERT [dbo].[Discipline] ([IdDiscipline], [NameDiscipline]) VALUES (3, N'Информатика')
INSERT [dbo].[Discipline] ([IdDiscipline], [NameDiscipline]) VALUES (4, N'Русский')
SET IDENTITY_INSERT [dbo].[Discipline] OFF
SET IDENTITY_INSERT [dbo].[Evaluation] ON 

INSERT [dbo].[Evaluation] ([IdEvaluation], [NameEvaluation], [NumberEvaluation]) VALUES (1, N'Отлично', 5)
INSERT [dbo].[Evaluation] ([IdEvaluation], [NameEvaluation], [NumberEvaluation]) VALUES (2, N'Хорошо', 4)
INSERT [dbo].[Evaluation] ([IdEvaluation], [NameEvaluation], [NumberEvaluation]) VALUES (3, N'Удовлетворительно', 3)
INSERT [dbo].[Evaluation] ([IdEvaluation], [NameEvaluation], [NumberEvaluation]) VALUES (4, N'Плохо', 2)
INSERT [dbo].[Evaluation] ([IdEvaluation], [NameEvaluation], [NumberEvaluation]) VALUES (5, N'Очень плохо', 1)
SET IDENTITY_INSERT [dbo].[Evaluation] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (1, N'Пользователь')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (2, N'Дисциплина')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (3, N'Оценка')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (4, N'Студент')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (5, N'Преподаватель')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([IdStudent], [LastNameStudent], [FirstNameStudent], [MiddleNameStudent], [DateOfBirthStudent], [NumberPhoneStudent]) VALUES (1, N'Помазков', N'Никита', N'Юрьевич', CAST(N'2003-03-04' AS Date), N'+7(360)6050512')
INSERT [dbo].[Student] ([IdStudent], [LastNameStudent], [FirstNameStudent], [MiddleNameStudent], [DateOfBirthStudent], [NumberPhoneStudent]) VALUES (2, N'Мазуренко', N'Максим', N'Александрович', CAST(N'2002-02-20' AS Date), N'+7(915)4172772')
INSERT [dbo].[Student] ([IdStudent], [LastNameStudent], [FirstNameStudent], [MiddleNameStudent], [DateOfBirthStudent], [NumberPhoneStudent]) VALUES (3, N'Семёнов', N'Дмитрий', N'Александрович', CAST(N'2003-03-26' AS Date), N'+7(543)2435454')
INSERT [dbo].[Student] ([IdStudent], [LastNameStudent], [FirstNameStudent], [MiddleNameStudent], [DateOfBirthStudent], [NumberPhoneStudent]) VALUES (4, N'Иван', N'Иванов', N'Иванович', CAST(N'2000-12-23' AS Date), N'+7(423)4343342')
INSERT [dbo].[Student] ([IdStudent], [LastNameStudent], [FirstNameStudent], [MiddleNameStudent], [DateOfBirthStudent], [NumberPhoneStudent]) VALUES (5, N'Рахат', N'Укум', N'Фруктович', CAST(N'2000-01-01' AS Date), N'+7(453)6576677')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([IdTeacher], [LastNameTeacher], [FirstNameTeacher], [MiddleNameTeacher], [DateOfBirthTeacher], [NumberPhoneTeacher], [IdUser]) VALUES (1, N'Тотмянина', N'Светана', N'Владимировна', CAST(N'1990-01-01' AS Date), N'+7(743)676-76-71', 5)
INSERT [dbo].[Teacher] ([IdTeacher], [LastNameTeacher], [FirstNameTeacher], [MiddleNameTeacher], [DateOfBirthTeacher], [NumberPhoneTeacher], [IdUser]) VALUES (2, N'Добрыйвечер', N'Кристина', N'Анатольевна', CAST(N'1994-05-23' AS Date), N'+7(532)4343275', 5)
INSERT [dbo].[Teacher] ([IdTeacher], [LastNameTeacher], [FirstNameTeacher], [MiddleNameTeacher], [DateOfBirthTeacher], [NumberPhoneTeacher], [IdUser]) VALUES (5, N'Лукум', N'Рахат', N'Овищнов', CAST(N'1943-12-12' AS Date), N'+7(543)432-23-23', 5)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IdUser], [LoginUser], [PasswordUser], [RoleUser]) VALUES (1, N'Batya', N'12345', 1)
INSERT [dbo].[User] ([IdUser], [LoginUser], [PasswordUser], [RoleUser]) VALUES (2, N'Popanya', N'12345', 5)
INSERT [dbo].[User] ([IdUser], [LoginUser], [PasswordUser], [RoleUser]) VALUES (3, N'UchitelGod', N'12345', 5)
INSERT [dbo].[User] ([IdUser], [LoginUser], [PasswordUser], [RoleUser]) VALUES (4, N'LoxStudent', N'12345', 4)
INSERT [dbo].[User] ([IdUser], [LoginUser], [PasswordUser], [RoleUser]) VALUES (5, N'GodStudent', N'12345', 4)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Discipline] FOREIGN KEY([IdDiscipline])
REFERENCES [dbo].[Discipline] ([IdDiscipline])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Discipline]
GO
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Evaluation]
GO
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Student] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[Student] ([IdStudent])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Student]
GO
ALTER TABLE [dbo].[Journal]  WITH CHECK ADD  CONSTRAINT [FK_Journal_Teacher] FOREIGN KEY([IdTeacher])
REFERENCES [dbo].[Teacher] ([IdTeacher])
GO
ALTER TABLE [dbo].[Journal] CHECK CONSTRAINT [FK_Journal_Teacher]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleUser])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
