USE [HzyAdminSpa]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Sex] [nvarchar](255) NULL,
	[Birthday] [datetime2](0) NULL,
	[Photo] [nvarchar](255) NULL,
	[Introduce] [nvarchar](255) NULL,
	[FilePath] [nvarchar](255) NULL,
	[UserId] [uniqueidentifier] NULL,
	[CreateTime] [datetime2](0) NULL,
	[UpdateTime] [datetime2](0) NULL,
 CONSTRAINT [Member_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysFunction]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[ByName] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenu]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenu](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[Router] [nvarchar](255) NULL,
	[ComponentName] [nvarchar](255) NULL,
	[Icon] [nvarchar](255) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Show] [int] NULL,
	[Close] [int] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysMenu_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenuFunction]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NULL,
	[FunctionId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysMenuFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysOrganization]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysOrganization](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[OrderNumber] [int] NULL,
	[Leader] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[State] [int] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysOrganization_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysPost]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysPost](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[State] [int] NULL,
	[Remarks] [nvarchar](255) NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysPost_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[IsDelete] [int] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysRole_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRoleMenuFunction]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[MenuId] [uniqueidentifier] NULL,
	[FunctionId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysRoleMenuFunction_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[LoginName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[IsDelete] [int] NULL,
	[OrganizationId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysUser_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserPost]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserPost](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[PostId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysUserPost_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserRole]    Script Date: 2021/6/6 0:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime2](0) NULL,
	[CreateTime] [datetime2](0) NULL,
 CONSTRAINT [SysUserRole_pkey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'96a1aa3d-a61a-42d0-954a-c71753fb2065', N'123', N'123', N'123', N'女', CAST(N'2018-04-25T23:00:00.0000000' AS DateTime2), NULL, N'<p>123</p>', NULL, N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2020-10-24T00:07:42.0000000' AS DateTime2), CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2))
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', N'18510912123', N'男', CAST(N'2019-07-08T11:47:24.0000000' AS DateTime2), N'/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2018-04-25T23:00:00.0000000' AS DateTime2), CAST(N'2021-01-19T14:19:47.0000000' AS DateTime2))
GO
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, N'打印', N'Print', N'Print', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', 10, N'显示', N'Display', N'Display', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, N'检索', N'Search', N'Search', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', 50, N'保存', N'Save', N'Save', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', 40, N'删除', N'Delete', N'Delete', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, N'添加', N'Insert', N'Insert', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', 70, N'导出', N'Export', N'Export', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, N'修改', N'Update', N'Update', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2016-06-20T13:40:52.0000000' AS DateTime2))
GO
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 50, N'表格管理', NULL, NULL, NULL, N'TableOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, CAST(N'2021-01-16T17:32:07.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f55a8858-ede4-4380-85b2-08d8b9f578ef', 10, N'Antd Vue3.0组件库', N'views/antd_vue_components', N'/antd/vue/components', N'antd_vue_components', N'LayoutOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, CAST(N'2021-01-16T16:05:46.0000000' AS DateTime2), CAST(N'2021-01-16T16:05:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'15455a8d-262d-4266-85b3-08d8b9f578ef', 40, N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, CAST(N'2021-01-16T16:06:33.0000000' AS DateTime2), CAST(N'2021-01-16T16:06:33.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', 10, N'基础图表', N'views/chart/base', N'/chart/base', N'chart_base', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, CAST(N'2021-01-16T16:07:24.0000000' AS DateTime2), CAST(N'2021-01-16T16:07:24.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 20, N'更多示例', N'views/chart/more', N'/chart/more', N'chart_more', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, CAST(N'2021-01-16T16:10:06.0000000' AS DateTime2), CAST(N'2021-01-16T16:10:06.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', 60, N'富文本编辑器', N'views/editor', N'/editor', N'editor', N'PicRightOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, CAST(N'2021-01-18T19:34:54.0000000' AS DateTime2), CAST(N'2021-01-18T19:34:28.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 130, N'菜单功能', N'views/system/menu/index', N'/system/menu', N'system_menu', N'MenuOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 180, N'接口文档', N'views/system/swagger', N'/system/swagger', N'system_swagger', N'FileSearchOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-06-06T00:29:25.0000000' AS DateTime2), CAST(N'2018-03-10T12:17:03.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', 100, N'基础表格', N'views/baseList', N'/baseList', N'base_list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, CAST(N'2020-12-17T14:49:10.0000000' AS DateTime2), CAST(N'2020-12-17T14:49:12.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 110, N'标准表格', N'views/list/index', N'/list', N'list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, CAST(N'2020-12-17T14:51:05.0000000' AS DateTime2), CAST(N'2020-12-17T14:51:07.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 30, N'按钮', N'views/button', N'/button', N'button', N'AppstoreOutlined', N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 1, 1, CAST(N'2021-01-16T16:04:05.0000000' AS DateTime2), CAST(N'2020-12-17T14:58:05.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd29fde94-0d6a-4a64-8446-55ee63df5885', 160, N'岗位管理', N'views/system/post/index', N'/system/post', N'system_post', N'IdcardOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2), CAST(N'2021-05-27T17:29:49.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd721fc55-2174-40eb-bb37-5c54a158525a', 120, N'功能管理', N'views/system/function/index', N'/system/function', N'system_function', N'ControlOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9591f249-1471-44f7-86b5-6fdae8b93888', 100, N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, 1, 1, CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'6f48b583-9c8f-490f-a3e0-81fc5f2e71b4', 10, N'更多示例', NULL, NULL, NULL, N'MoreOutlined', NULL, 1, 1, CAST(N'2021-06-06T00:29:45.0000000' AS DateTime2), CAST(N'2021-05-28T11:49:02.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 100, N'账户管理', N'views/system/user/index', N'/system/user', N'system_user', N'UserOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'bd024f3a-99a7-4407-861c-a016f243f222', 140, N'角色功能', N'views/system/rolefunction/index', N'/system/role/function', N'system_role_function', N'UserSwitchOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-05-28T12:53:04.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'7c34c2fd-98ed-4655-aa04-bb00b915a751', 10, N'会员管理', N'views/base/member', N'/base/member', N'base_member', N'UsergroupAddOutlined', N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, 1, CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'60ae9382-31ab-4276-a379-d3876e9bb783', 110, N'角色管理', N'views/system/role/index', N'/system/role', N'system_role', N'TeamOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', 150, N'个人中心', N'views/system/personal_center/index', N'/system/personal/center', N'system_personal_center', N'FormOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-06-06T00:28:43.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', 170, N'组织机构', N'views/system/organization/index', N'/system/organization', N'system_organization', N'ClusterOutlined', N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2), CAST(N'2021-05-27T20:27:56.0000000' AS DateTime2))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 90, N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, 1, 1, CAST(N'2021-01-18T19:33:46.0000000' AS DateTime2), CAST(N'2018-03-10T12:16:38.0000000' AS DateTime2))
GO
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1f02b56d-d844-45a1-bf68-0500d19f0c95', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'869a2231-5631-4067-b97b-08d88a2ced15', N'4ce21a81-1cae-44d2-b29e-07058ff04b3e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T20:41:23.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e28e11cd-27c5-475d-d6b1-08d8b9f5533b', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-16T16:05:46.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bd144568-a24e-4f7e-d6b2-08d8b9f5533b', N'15455a8d-262d-4266-85b3-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-16T16:06:33.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'060d14f9-e066-44b9-d6b3-08d8b9f5533b', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-16T16:07:24.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e136ccda-91ce-4041-d6b4-08d8b9f5533b', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-16T16:10:06.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b010f911-257e-4fa3-5b15-08d8ba019738', N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-16T17:32:07.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'944f5d6a-19dc-4804-8374-08d8bb7cd668', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-18T14:46:52.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d63d074-85e7-48bd-8375-08d8bb7cd668', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-18T14:46:55.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'11d28148-61da-4f49-8376-08d8bb7cd668', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-18T14:54:30.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f38d6e67-3f6f-495d-b759-08d8bba503c2', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2021-01-18T19:34:54.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5d8d881a-ea26-43e5-cd87-08d9283efc24', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-06-06T00:28:43.0000000' AS DateTime2), CAST(N'2021-06-06T00:28:43.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'339adb40-d10c-4f44-cd89-08d9283efc24', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7d3d75dc-7bfe-482e-cd8a-08d9283efc24', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4a1a49bb-85cd-48e1-cd8b-08d9283efc24', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b3a8b718-f660-4d8c-cd8c-08d9283efc24', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'74c2e47e-cb85-4c0d-cd8d-08d9283efc24', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ca96585b-95d9-4d2f-cd8e-08d9283efc24', N'd29fde94-0d6a-4a64-8446-55ee63df5885', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:11.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c5d9bf24-7e6f-4160-cd8f-08d9283efc24', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a357e5c8-f021-447a-cd90-08d9283efc24', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c7eb87b6-9a99-4c89-cd91-08d9283efc24', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'43a3097e-37ee-476a-cd92-08d9283efc24', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c98c4db7-dfab-4193-cd93-08d9283efc24', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b930b4c3-5136-43c5-cd94-08d9283efc24', N'0abfd53b-6bde-42c6-9f99-e32775bc31dd', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:19.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'15cc0317-a15c-43e3-cd95-08d9283efc24', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-06-06T00:29:25.0000000' AS DateTime2), CAST(N'2021-06-06T00:29:25.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c2207f27-9caa-44f7-a31f-0b757b973e23', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'511ef9d4-d4b6-4053-9b37-121f06b726c7', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'81a43621-60cf-4f04-9279-13480d37e6a4', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5b21d63c-6611-4b39-9c26-1510118969b2', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'774fe6ff-3ecc-40b0-a8a3-159cd2492fe2', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'983ca076-0761-48bf-85e3-18bb24685a09', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8aaa6319-d36a-4fcd-8797-19d97a077e1b', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'179c8b22-efdd-475c-aa78-1b939ff05876', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7e466377-1810-4027-ae1b-227f53953b21', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd455b476-834c-4ef2-91ae-24f60559e029', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0a4acc41-95d6-4cbc-a3ca-269e0a4061eb', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'30b4b575-4881-41ea-ae33-27bfa151e423', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4f40ce17-c29c-4448-9d1d-46aab970789a', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44dd215e-1edf-45aa-b6c6-4910ed14a228', N'b73c82f9-54ea-4f02-b7d9-fc3976becb19', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4c74ee6a-dcba-4192-b976-4e8fcf33a061', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0943b658-9fe1-4c9b-b583-6899cc364605', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c6faf480-7b10-4cd1-abb5-69e0e4ae2b85', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5689b539-88db-49d2-8c5b-720e9ebc673e', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c848edb2-00b3-4f67-9362-72d3a2eea88b', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b8aa1a54-9076-4c72-a323-7b3b95ab26f4', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'3315859e-bad8-42a6-a9fc-7deaeb5f6b79', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'25cfd1d0-04c4-4b2c-b534-7f3c8c0eb06d', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'546cc6af-bfa3-4b61-8fa8-85713e38bc60', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'cf317057-34fb-4a07-91c6-86a3cbc541fa', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'23b4af49-6a18-471d-9f09-88296c234619', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7ec9b0fa-54ee-498e-a69b-8f689d019611', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c4bfe58e-1cb8-49db-a942-919d46f79be9', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a3074d55-141e-496e-a55c-93b5fd2dce6c', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a96cc666-927d-4d27-8174-9c321f41236d', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bb14769d-4760-4341-9faf-9fa82eeada65', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7861b618-0b12-4a56-abda-a5e8d17ac5d7', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8c85e128-83ad-4079-8754-ac5679b04df6', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'09a29222-8f8d-4ca6-9bd1-aeddbabe7d7b', N'2dc579dc-2325-4063-b051-e92454ee3838', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-16T13:24:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c6e873fc-a228-4418-b4ac-afc45a612af7', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5a0ea751-0c50-482a-be15-afedb9faae64', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'101baf28-dbfa-41e8-aca3-b136e02aee8b', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2), CAST(N'2021-05-28T12:49:53.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4f666139-2c4a-400b-bd35-b67b8aa1fe7d', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-28T12:53:04.0000000' AS DateTime2), CAST(N'2021-05-28T12:53:04.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'de9fa7c5-2c58-414f-8186-b68036044ed7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e01f16a4-04c2-41de-9c20-be1747cf31af', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92bd3806-c5b3-41fe-b6f9-c6fd7a9dd77e', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b1b627c4-ac62-4dac-b4cc-c71392040543', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b2dd663b-67f3-478b-b8aa-cbe52480e133', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2), CAST(N'2021-05-28T12:51:15.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0e354fd7-690b-4d22-a9db-e5025e353bfe', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'dbcb960d-c4cd-4d27-b1aa-e5aae91b727d', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2), CAST(N'2021-05-28T12:58:22.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2cf7a5e1-a38e-45d6-949e-e8bb65f60a5c', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ed0eaf25-aaff-4e8b-9a85-f173603510ef', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1b4203a4-9fc4-42f8-9122-f1b3cde687e9', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2), CAST(N'2021-05-28T12:44:36.0000000' AS DateTime2))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1a727d75-867e-4292-9024-f66a292b465f', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2), CAST(N'2021-05-28T12:45:16.0000000' AS DateTime2))
GO
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'e898e8ad-2de7-46e0-b6f3-08f5fb9662ed', N'财务部门', 4, N'财务部门', N'12323452345', N'12312@qq.com', 1, N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', CAST(N'2021-05-27T22:33:13.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:13.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'a5e87436-53d5-4fff-8f2e-0af511db9ba4', N'研发部门', 1, N'研发部门', N'1234323423', N'12312@qq.com', 1, N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', CAST(N'2021-05-27T22:32:29.0000000' AS DateTime2), CAST(N'2021-05-27T22:32:08.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'9cf32211-f255-4c2e-9c53-4258755e43c5', N'测试部门', 3, N'测试部门', N'12313', N'123123@qq.com', 1, N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', CAST(N'2021-05-27T22:32:59.0000000' AS DateTime2), CAST(N'2021-05-27T22:32:59.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'1b001a4d-bce5-4e09-bc96-4e7da7686c48', N'北京分部', 3, N'北京分部', N'132123', N'13131', 1, N'f23777dd-2c03-449f-953b-df91c19dee5b', CAST(N'2021-05-27T22:33:44.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:44.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'05e55b19-261a-4df8-aea0-83a56f1aeb7a', N'市场部门', 2, N'市场部门', N'123213', N'123@qq.com', 1, N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', CAST(N'2021-05-27T22:32:46.0000000' AS DateTime2), CAST(N'2021-05-27T22:32:40.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', N'成都分部', 2, N'成都分部', N'123123123', N'123@qq.com', 1, N'f23777dd-2c03-449f-953b-df91c19dee5b', CAST(N'2021-05-27T22:31:45.0000000' AS DateTime2), CAST(N'2021-05-27T21:01:50.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'6e36f7eb-3d03-417d-8815-c0e0f19ce6e6', N'市场部门', 1, N'市场部门', N'234124234', N'234234@qq.com', 1, N'1b001a4d-bce5-4e09-bc96-4e7da7686c48', CAST(N'2021-05-27T22:33:57.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:57.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'f23777dd-2c03-449f-953b-df91c19dee5b', N'阿里巴巴集团', 1, N'hzy', N'18410912184', N'18410912184@qq.com', 1, NULL, CAST(N'2021-05-27T20:50:31.0000000' AS DateTime2), CAST(N'2021-05-27T20:50:31.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'eb913607-932f-433b-8321-dfe35258bb88', N'运维部门', 5, N'运维部门', N'1232133452', N'12341@qq.com', 1, N'47c547ea-e07a-4475-a4f7-ae09e3d8fafc', CAST(N'2021-05-27T22:33:25.0000000' AS DateTime2), CAST(N'2021-05-27T22:33:25.0000000' AS DateTime2))
INSERT [dbo].[SysOrganization] ([Id], [Name], [OrderNumber], [Leader], [Phone], [Email], [State], [ParentId], [UpdateTime], [CreateTime]) VALUES (N'aea25949-b0a0-49a3-9fbc-e80224b75fc1', N'财务部门', 2, N'财务部门', N'435543535', N'123@qq.com', 1, N'1b001a4d-bce5-4e09-bc96-4e7da7686c48', CAST(N'2021-05-27T22:34:11.0000000' AS DateTime2), CAST(N'2021-05-27T22:34:11.0000000' AS DateTime2))
GO
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'0716b4b0-9a06-43e9-8ae8-82c74875f83e', 2, N'se', N'项目经理', 1, NULL, CAST(N'2021-05-27T20:26:35.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:35.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'96927c30-41d0-4ced-8e29-cbed35c90fb0', 1, N'ceo', N'董事长', 1, NULL, CAST(N'2021-05-27T20:26:22.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:22.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'e46af329-6d08-442c-9837-f22cff954411', 4, N'user', N'普通员工', 1, NULL, CAST(N'2021-05-27T20:26:52.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:52.0000000' AS DateTime2))
INSERT [dbo].[SysPost] ([Id], [Number], [Code], [Name], [State], [Remarks], [UpdateTime], [CreateTime]) VALUES (N'f0c67537-8094-429a-b474-f54ac518609e', 3, N'hr', N'人力资源', 1, NULL, CAST(N'2021-05-27T20:26:44.0000000' AS DateTime2), CAST(N'2021-05-27T20:26:44.0000000' AS DateTime2))
GO
INSERT [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 1, N'超级管理员', N'拥有所有权限', 0, CAST(N'2021-01-10T11:25:12.0000000' AS DateTime2), CAST(N'2016-07-06T17:59:20.0000000' AS DateTime2))
INSERT [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 2, N'普通用户', N'普通用户', 1, CAST(N'2021-01-30T00:51:17.0000000' AS DateTime2), CAST(N'2016-07-06T17:59:20.0000000' AS DateTime2))
GO
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'93ce6573-523e-4e3c-3d63-08d88bc25510', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-04-18T22:08:06.0000000' AS DateTime2), CAST(N'2020-11-18T21:03:36.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'463acea8-60b0-4a59-7de7-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:45:40.0000000' AS DateTime2), CAST(N'2021-01-18T14:45:40.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f1b431b3-d7ef-44ca-7de8-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-18T14:45:40.0000000' AS DateTime2), CAST(N'2021-01-18T14:45:40.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd80e356e-0d71-411f-7de9-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-01-18T14:45:40.0000000' AS DateTime2), CAST(N'2021-01-18T14:45:40.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2f2f0c63-2e13-4137-98db-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:36.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:36.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0be2633e-046d-40fa-98dc-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:38.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1e882fbe-fd88-407e-98dd-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:42.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'de19371d-5fbe-4fc3-98de-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:42.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'12ceef4d-03c0-45cc-98df-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:43.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:43.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1c082c5a-8383-443f-98e0-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:44.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:44.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd5d321ce-28e6-4742-98e1-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:45.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:45.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'99e29596-75a0-4736-98e2-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:52.0000000' AS DateTime2), CAST(N'2021-01-19T14:58:52.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c0c76981-828b-435e-98e3-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2), CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6a3d6ac5-11c7-4592-98e4-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2), CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ed97d135-4408-41cc-98e5-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2), CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e18a8dad-716d-49cd-98e6-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2), CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'affc5760-c5bd-43fb-98e7-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2), CAST(N'2021-01-19T15:12:04.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'eb2ac2a6-36ac-4ee1-f05e-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:24.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:24.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5ee46cd1-b2a3-4bc2-f05f-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:24.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:24.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ec8ed1ba-61c3-4219-f060-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:25.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:25.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d35e600-ee44-479a-f061-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:25.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:25.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fcccd730-d83e-47b1-f062-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:26.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:26.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0946c554-84a7-4adb-f063-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:27.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:27.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'57a97a6c-cc65-4ac6-f064-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:27.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:27.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'eee9d884-a577-40d2-f06a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:32.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:32.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6dfa0985-81fa-4242-f06b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:33.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:33.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'915ac7f5-4e1b-4d92-f06c-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:33.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:33.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'754ad754-bbc4-47bc-f088-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c636d222-58dc-410f-f089-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92cec1e4-cc90-4c20-f08a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c5ad81cc-09ec-4007-f08b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f058d1c8-7633-4781-f08c-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9967c23d-9101-4543-f08d-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2d23022c-df34-4847-f08e-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd92cc026-dfcf-49fe-f08f-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:38.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'cb043048-142d-464d-f0a4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'82eb14da-2b31-45d8-f0a5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8e87c5cb-1c6e-481e-f0a6-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'623eaf4e-5263-4fb9-f0a7-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ff047bdd-04f4-4597-f0a8-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b3ac009f-017b-4512-f0a9-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f2891613-0a65-4c93-f0aa-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:42.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'26250c7d-b504-44cc-f0bf-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e69fe992-e4a5-4ac9-f0c0-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fa279e29-f44f-4424-f0c1-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0920f21b-fbbf-45f4-f0c2-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'541450f0-dbd3-4094-f0c3-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9ac7bdfb-7398-4dc8-f0c4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6c934fa6-eff0-42c7-f0c5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:46.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e02ef258-be98-4a5c-f0e1-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'97c80c3a-d00e-4788-f0e2-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5d470ae4-66a5-4cdf-f0e3-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7e74f26c-f63e-42f0-f0e4-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'68ab8acc-4d11-4e66-f0e5-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8e1ea93c-398c-4fe7-f0e6-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e08a05a7-c494-4e32-f0e7-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4ca56fed-fc32-4456-f0e8-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:50.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c5abda7a-230d-469f-f104-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9f341e22-87c3-498a-f105-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92837e44-e8d2-48a2-f106-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'052dd69b-c809-4f62-f107-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a36d2f2e-56f4-4920-f108-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f65adc84-d2a4-4f91-f109-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'704a78f1-5c00-4169-f10a-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c9d1ed28-5f58-4c7e-f10b-08d915410342', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2), CAST(N'2021-05-12T20:25:54.0000000' AS DateTime2))
GO
INSERT [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'超级管理员', N'admin', N'123456', N'123123123', N'1396510655@qq.com', 2, N'f23777dd-2c03-449f-953b-df91c19dee5b', CAST(N'2021-05-24T10:52:53.0000000' AS DateTime2), CAST(N'2017-04-06T19:55:53.0000000' AS DateTime2))
INSERT [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [OrganizationId], [UpdateTime], [CreateTime]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', N'用户', N'user', N'123', N'456456456', N'18123456789@live.com', 1, N'f23777dd-2c03-449f-953b-df91c19dee5b', CAST(N'2021-04-18T22:08:12.0000000' AS DateTime2), CAST(N'2017-04-06T19:55:53.0000000' AS DateTime2))
GO
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [UpdateTime], [CreateTime]) VALUES (N'5a6ac9ba-2ce7-4505-b5ea-65c6817b13f4', N'0198459e-2034-4533-b843-5d227ad20740', N'96927c30-41d0-4ced-8e29-cbed35c90fb0', CAST(N'2021-05-28T10:00:39.0000000' AS DateTime2), CAST(N'2021-05-28T10:00:39.0000000' AS DateTime2))
INSERT [dbo].[SysUserPost] ([Id], [UserId], [PostId], [UpdateTime], [CreateTime]) VALUES (N'8be16163-ce6b-4abb-908c-f343c6df5ecc', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'0716b4b0-9a06-43e9-8ae8-82c74875f83e', CAST(N'2021-05-28T10:33:35.0000000' AS DateTime2), CAST(N'2021-05-28T10:33:35.0000000' AS DateTime2))
GO
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'9c6e49e7-fcf0-4372-b726-9d9d8b9a55e8', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2021-05-28T10:33:35.0000000' AS DateTime2), CAST(N'2021-05-28T10:33:35.0000000' AS DateTime2))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'4458a14e-a787-4a7a-9d9b-fd3de1ed07e3', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2021-05-28T10:00:39.0000000' AS DateTime2), CAST(N'2021-05-28T10:00:39.0000000' AS DateTime2))
GO
