USE [HzyAdminSpa]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2021/1/19 23:10:15 ******/
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
	[Birthday] [datetime] NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[Introduce] [nvarchar](255) NULL,
	[FilePath] [nvarchar](255) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__FreeSqlT__3214EC0764A3C16E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysFunction]    Script Date: 2021/1/19 23:10:15 ******/
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
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysFunct__3214EC0749F8ECB2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenu]    Script Date: 2021/1/19 23:10:15 ******/
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
	[Show] [int] NOT NULL,
	[Close] [int] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__FreeSqlT__3214EC07A99B1246] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenuFunction]    Script Date: 2021/1/19 23:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[FunctionId] [uniqueidentifier] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysMenuF__3214EC07594C72BD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 2021/1/19 23:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
	[IsDelete] [int] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysRole__3214EC07CF50E1D0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRoleMenuFunction]    Script Date: 2021/1/19 23:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRoleMenuFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[FunctionId] [uniqueidentifier] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysRoleM__3214EC075D76B808] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 2021/1/19 23:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[LoginName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Phone] [varchar](200) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[IsDelete] [int] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__FreeSqlT__3214EC079C566918] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUserRole]    Script Date: 2021/1/19 23:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK__SysUserR__3214EC070ABEE823] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 2021/1/19 23:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'96a1aa3d-a61a-42d0-954a-c71753fb2065', N'123', N'123', N'123', N'女', CAST(N'2018-04-25T23:00:00.000' AS DateTime), NULL, N'<p>123</p>', NULL, N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2020-10-24T00:07:42.470' AS DateTime), CAST(N'2021-01-19T11:21:14.383' AS DateTime))
INSERT [dbo].[Member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreateTime], [UpdateTime]) VALUES (N'9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'1', N'测试会员', N'18510912123', N'男', CAST(N'2019-07-08T11:47:24.000' AS DateTime), N'/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'ac18f496-e93d-42f0-b59e-e321acc85335', CAST(N'2018-04-25T23:00:00.000' AS DateTime), CAST(N'2021-01-19T14:19:47.290' AS DateTime))
GO
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', 80, N'打印', N'Print', N'Print', CAST(N'2016-06-20T13:40:52.360' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'c9518758-b2e1-4f51-b517-5282e273889c', 10, N'显示', N'Display', N'Display', CAST(N'2021-01-10T11:49:16.787' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'f27ecb0a-197d-47b1-b243-59a8c71302bf', 60, N'检索', N'Search', N'Search', CAST(N'2016-06-20T13:40:52.360' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'383e7ee2-7690-46ac-9230-65155c84aa30', 50, N'保存', N'Save', N'Save', CAST(N'2016-06-20T13:40:52.360' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'9c388461-2704-4c5e-a729-72c17e9018e1', 40, N'删除', N'Delete', N'Delete', CAST(N'2016-06-20T13:40:52.360' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', 20, N'添加', N'Insert', N'Insert', CAST(N'2016-06-20T13:40:52.360' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'2401f4d0-60b0-4e2e-903f-84c603373572', 70, N'导出', N'Export', N'Export', CAST(N'2016-06-20T13:40:52.360' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
INSERT [dbo].[SysFunction] ([Id], [Number], [Name], [ByName], [Remark], [UpdateTime], [CreateTime]) VALUES (N'e7ef2a05-8317-41c3-b588-99519fe88bf9', 30, N'修改', N'Update', N'Update', CAST(N'2016-06-20T13:40:52.360' AS DateTime), CAST(N'2016-06-20T13:40:52.360' AS DateTime))
GO
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 50, N'表格管理', NULL, NULL, NULL, N'TableOutlined', NULL, 1, 1, CAST(N'2021-01-16T17:32:06.673' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f55a8858-ede4-4380-85b2-08d8b9f578ef', 10, N'Antd Vue3.0组件库', N'views/antd_vue_components', N'/antd/vue/components', N'antd_vue_components', N'LayoutOutlined', NULL, 1, 1, CAST(N'2021-01-16T16:05:45.767' AS DateTime), CAST(N'2021-01-16T16:05:22.003' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'15455a8d-262d-4266-85b3-08d8b9f578ef', 40, N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', NULL, 1, 1, CAST(N'2021-01-16T16:06:32.607' AS DateTime), CAST(N'2021-01-16T16:06:32.607' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', 10, N'基础图表', N'views/chart/base', N'/chart/base', N'chart_base', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, CAST(N'2021-01-16T16:07:24.477' AS DateTime), CAST(N'2021-01-16T16:07:24.477' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', 20, N'更多示例', N'views/chart/more', N'/chart/more', N'chart_more', NULL, N'15455a8d-262d-4266-85b3-08d8b9f578ef', 1, 1, CAST(N'2021-01-16T16:10:06.310' AS DateTime), CAST(N'2021-01-16T16:10:06.310' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', 60, N'富文本编辑器', N'views/editor', N'/editor', N'editor', N'PicRightOutlined', NULL, 1, 1, CAST(N'2021-01-18T19:34:54.180' AS DateTime), CAST(N'2021-01-18T19:34:27.983' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', 130, N'菜单功能', N'views/system/menu/index', N'/system/menu', N'system_menu', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-01-01T18:39:59.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', 160, N'接口文档', N'views/system/swagger', N'/system/swagger', N'system_swagger', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2018-03-10T12:17:03.000' AS DateTime), CAST(N'2018-03-10T12:17:03.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'5c013900-4032-11eb-a2cb-4cedfb69a3e8', 1, N'首页', N'views/home', NULL, N'home', N'HomeOutlined', NULL, 1, 0, CAST(N'2021-01-19T14:58:16.830' AS DateTime), CAST(N'2020-12-17T14:37:26.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', 100, N'基础表格', N'views/baseList', N'/baseList', N'base_list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, CAST(N'2020-12-17T14:49:10.000' AS DateTime), CAST(N'2020-12-17T14:49:12.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', 110, N'标准表格', N'views/list/index', N'/list', N'list', NULL, N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', 1, 1, CAST(N'2020-12-17T14:51:05.000' AS DateTime), CAST(N'2020-12-17T14:51:07.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', 30, N'按钮', N'views/button', N'/button', N'button', N'AppstoreOutlined', NULL, 1, 1, CAST(N'2021-01-16T16:04:04.707' AS DateTime), CAST(N'2020-12-17T14:58:05.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'd721fc55-2174-40eb-bb37-5c54a158525a', 120, N'功能管理', N'views/system/function/index', N'/system/function', N'system_function', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2018-03-10T12:18:21.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'9591f249-1471-44f7-86b5-6fdae8b93888', 100, N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, 1, 1, CAST(N'2018-03-10T12:16:38.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', 100, N'账户管理', N'views/system/user/index', N'/system/user', N'system_user', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2018-03-10T12:18:03.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'bd024f3a-99a7-4407-861c-a016f243f222', 140, N'角色功能', N'views/system/rolefunction/index', N'/system/role/function', N'system_role_function', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-01-10T12:21:06.057' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'7c34c2fd-98ed-4655-aa04-bb00b915a751', 10, N'会员管理', N'views/base/member', N'/base/member', N'base_member', NULL, N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 1, 1, CAST(N'2018-04-25T21:36:28.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'60ae9382-31ab-4276-a379-d3876e9bb783', 110, N'角色管理', N'views/system/role/index', N'/system/role', N'system_role', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2020-12-28T19:47:52.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', 150, N'修改密码', N'views/system/changePassword/index', N'/system/change/password', N'system_change_password', NULL, N'9591f249-1471-44f7-86b5-6fdae8b93888', 1, 1, CAST(N'2021-01-01T18:57:08.000' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
INSERT [dbo].[SysMenu] ([Id], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [UpdateTime], [CreateTime]) VALUES (N'1ec76c4c-b9b3-4517-9854-f08cd11d653d', 90, N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, 1, 1, CAST(N'2021-01-18T19:33:46.250' AS DateTime), CAST(N'2018-03-10T12:16:38.000' AS DateTime))
GO
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d7baf7d-36b0-4b3b-a5ad-064c8dfc8324', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T18:37:14.633' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'869a2231-5631-4067-b97b-08d88a2ced15', N'4ce21a81-1cae-44d2-b29e-07058ff04b3e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2020-11-16T20:41:23.383' AS DateTime), CAST(N'2020-11-16T20:41:23.383' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e13e5d24-1753-4610-146e-08d8b51eb5f0', N'bd024f3a-99a7-4407-861c-a016f243f222', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-10T12:21:06.067' AS DateTime), CAST(N'2021-01-10T12:21:06.067' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'47c07821-29b3-46c5-31ca-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-16T11:31:56.597' AS DateTime), CAST(N'2021-01-16T11:31:56.597' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'dac7dc22-bc0c-4f3b-31cb-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-01-16T11:31:56.600' AS DateTime), CAST(N'2021-01-16T11:31:56.600' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a41c336f-7f95-4acd-31cc-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-01-16T11:31:56.603' AS DateTime), CAST(N'2021-01-16T11:31:56.603' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5634d926-c90a-43bc-31cd-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-16T11:31:56.603' AS DateTime), CAST(N'2021-01-16T11:31:56.603' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'86393bfe-ecf6-41b0-31ce-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-01-16T11:31:56.607' AS DateTime), CAST(N'2021-01-16T11:31:56.607' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4b321371-7b21-4fad-31cf-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2021-01-16T11:31:56.607' AS DateTime), CAST(N'2021-01-16T11:31:56.607' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'abdef92b-bd68-43a1-31d0-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-01-16T11:31:56.610' AS DateTime), CAST(N'2021-01-16T11:31:56.610' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bfcd0650-de3f-4c39-31d1-08d8b9cf468c', N'e5d4da6b-aab0-4aaa-982f-43673e8152c0', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-01-16T11:31:56.610' AS DateTime), CAST(N'2021-01-16T11:31:56.610' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e28e11cd-27c5-475d-d6b1-08d8b9f5533b', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-16T16:05:45.777' AS DateTime), CAST(N'2021-01-16T16:05:45.777' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bd144568-a24e-4f7e-d6b2-08d8b9f5533b', N'15455a8d-262d-4266-85b3-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-16T16:06:32.617' AS DateTime), CAST(N'2021-01-16T16:06:32.617' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'060d14f9-e066-44b9-d6b3-08d8b9f5533b', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-16T16:07:24.490' AS DateTime), CAST(N'2021-01-16T16:07:24.490' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e136ccda-91ce-4041-d6b4-08d8b9f5533b', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-16T16:10:06.317' AS DateTime), CAST(N'2021-01-16T16:10:06.317' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b010f911-257e-4fa3-5b15-08d8ba019738', N'9674d439-864e-4bf8-9dd8-08d7d70ad6bb', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-16T17:32:06.777' AS DateTime), CAST(N'2021-01-16T17:32:06.777' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'3b4e0aee-5226-410b-71dd-08d8bb7688a7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2021-01-18T14:01:44.620' AS DateTime), CAST(N'2021-01-18T14:01:44.620' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c8c4ef06-ee26-40f9-71de-08d8bb7688a7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-01-18T14:01:44.633' AS DateTime), CAST(N'2021-01-18T14:01:44.633' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'df4f35b6-4e9d-4df1-71df-08d8bb7688a7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-01-18T14:01:44.633' AS DateTime), CAST(N'2021-01-18T14:01:44.633' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'809dfc8c-5d21-42f7-71e0-08d8bb7688a7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-01-18T14:01:44.637' AS DateTime), CAST(N'2021-01-18T14:01:44.637' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'31b4c87f-c0ea-4e21-71e1-08d8bb7688a7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-18T14:01:44.637' AS DateTime), CAST(N'2021-01-18T14:01:44.637' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'83f1f422-fbbf-4c67-71e2-08d8bb7688a7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-01-18T14:01:44.637' AS DateTime), CAST(N'2021-01-18T14:01:44.637' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e36e8637-c4c6-4017-71e3-08d8bb7688a7', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:01:44.640' AS DateTime), CAST(N'2021-01-18T14:01:44.640' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'944f5d6a-19dc-4804-8374-08d8bb7cd668', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:46:52.047' AS DateTime), CAST(N'2021-01-18T14:46:52.047' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d63d074-85e7-48bd-8375-08d8bb7cd668', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:46:55.093' AS DateTime), CAST(N'2021-01-18T14:46:55.093' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'11d28148-61da-4f49-8376-08d8bb7cd668', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:54:30.050' AS DateTime), CAST(N'2021-01-18T14:54:30.050' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'87415a83-bdda-41b4-8377-08d8bb7cd668', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:54:52.073' AS DateTime), CAST(N'2021-01-18T14:54:52.073' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f38d6e67-3f6f-495d-b759-08d8bba503c2', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T19:34:54.190' AS DateTime), CAST(N'2021-01-18T19:34:54.190' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44556847-a63d-430c-895c-08d8bc479908', N'5c013900-4032-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:16.923' AS DateTime), CAST(N'2021-01-19T14:58:16.923' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e2d0c07a-e74f-46f2-8991-113cd58c4785', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:21:32.810' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5b21d63c-6611-4b39-9c26-1510118969b2', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2020-04-04T11:43:26.187' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8aaa6319-d36a-4fcd-8797-19d97a077e1b', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T21:15:57.680' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7f549d57-c5d3-4ad8-bc12-1e7c99ae4de5', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:21:54.010' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'8c0bf314-fa41-40d3-8d8c-20f614dd078a', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-11T10:21:32.807' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a49b958c-f00c-4c0d-b031-21190e5c74fa', N'f35d64ae-ecb7-4d06-acfb-d91595966d9e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2018-04-22T15:47:38.933' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7e466377-1810-4027-ae1b-227f53953b21', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T21:15:57.680' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd32e240a-ab34-41a3-92fc-249dab655c3a', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-11T10:21:54.010' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'73caab90-ac89-4334-ae61-2b55f3d08826', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:21:54.007' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'4a99997e-ef14-414b-94a6-2f480e5b2cd2', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T18:37:14.637' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'92913243-421b-420d-9fbf-42d7db59aec9', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T18:37:14.627' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0cb00876-7247-4d4a-b68d-44f807232b3c', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2020-04-04T11:32:16.203' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'44dd215e-1edf-45aa-b6c6-4910ed14a228', N'b73c82f9-54ea-4f02-b7d9-fc3976becb19', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2020-04-04T11:44:37.933' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6529e142-e4de-44a7-9acb-53df1796480c', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-08T18:37:14.630' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'26cf07df-7c4b-4c59-b091-57479a28a8ac', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2019-07-08T18:37:14.630' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'540d4cfb-1b2f-4736-80ca-5a613642b5b4', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:21:32.807' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ef36a4f2-a70e-4ae3-923b-609910127a33', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:21:32.807' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd72a7e1a-94a2-4d7c-ba13-6727398f8e35', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-11T10:21:54.010' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'5689b539-88db-49d2-8c5b-720e9ebc673e', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'2401f4d0-60b0-4e2e-903f-84c603373572', CAST(N'2019-07-08T21:15:57.680' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'b8aa1a54-9076-4c72-a323-7b3b95ab26f4', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2019-07-08T21:15:57.680' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'842d38fc-29a2-4a9e-8949-84d76fc6a259', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:21:32.803' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'afbd3366-4c4f-46b1-8f96-903cfe6f8a00', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-08T18:37:14.633' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'a3074d55-141e-496e-a55c-93b5fd2dce6c', N'74b837ae-d24f-4f57-b107-e20dbe70f5d3', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-08T21:15:57.680' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e60670d2-4ade-449c-8a4b-9ad7d5179a43', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2019-07-11T10:21:54.003' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'bb14769d-4760-4341-9faf-9fa82eeada65', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2018-06-28T11:30:09.723' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'7861b618-0b12-4a56-abda-a5e8d17ac5d7', N'2ff9bb67-aa42-48cf-80c9-6d1cfb6b1ead', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2018-06-28T11:30:09.723' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0b9170f7-e444-49a2-9f0c-a7e02ea1c33e', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:21:54.010' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'09a29222-8f8d-4ca6-9bd1-aeddbabe7d7b', N'2dc579dc-2325-4063-b051-e92454ee3838', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2020-01-02T22:14:55.447' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd62f6c43-ae93-4d50-a6f0-b64c9cacec7b', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-11T10:21:32.807' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'42fc1519-61c2-4501-bb4e-cd160bea87a5', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2019-07-08T18:37:14.630' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'9d079f5a-c791-4628-b0d6-e3f7c8580a08', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2019-07-11T10:21:54.010' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'fa162511-0213-4da2-9fbf-e5f45af5b7fc', N'7c34c2fd-98ed-4655-aa04-bb00b915a751', N'b6fd5425-504a-46a9-993b-2f8dc9158eb8', CAST(N'2019-07-11T10:21:32.810' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
INSERT [dbo].[SysMenuFunction] ([Id], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ca5601ec-7cd9-4577-a699-fc7c3c4c1308', N'd721fc55-2174-40eb-bb37-5c54a158525a', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2019-07-11T10:21:54.003' AS DateTime), CAST(N'2020-11-16T13:24:03.533' AS DateTime))
GO
INSERT [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', 1, N'超级管理员', N'拥有所有权限', 0, CAST(N'2021-01-10T11:25:12.393' AS DateTime), CAST(N'2016-07-06T17:59:20.000' AS DateTime))
INSERT [dbo].[SysRole] ([Id], [Number], [Name], [Remark], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'40ff1844-c099-4061-98e0-cd6e544fcfd3', 2, N'普通用户', N'普通用户', 1, CAST(N'2016-07-06T17:59:20.000' AS DateTime), CAST(N'2016-07-06T17:59:20.000' AS DateTime))
GO
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'93ce6573-523e-4e3c-3d63-08d88bc25510', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', N'0b7f8e2c-9faa-4496-9068-80b87ba1b64e', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2020-11-18T21:03:35.763' AS DateTime), CAST(N'2020-11-18T21:03:35.763' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'463acea8-60b0-4a59-7de7-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-18T14:45:39.620' AS DateTime), CAST(N'2021-01-18T14:45:39.620' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'f1b431b3-d7ef-44ca-7de8-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-18T14:45:39.620' AS DateTime), CAST(N'2021-01-18T14:45:39.620' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd80e356e-0d71-411f-7de9-08d8bb7c529a', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'60ae9382-31ab-4276-a379-d3876e9bb783', N'e7ef2a05-8317-41c3-b588-99519fe88bf9', CAST(N'2021-01-18T14:45:39.623' AS DateTime), CAST(N'2021-01-18T14:45:39.623' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'cb03537e-b361-4a47-98da-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'5c013900-4032-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:33.270' AS DateTime), CAST(N'2021-01-19T14:58:33.270' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'2f2f0c63-2e13-4137-98db-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'f55a8858-ede4-4380-85b2-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:36.467' AS DateTime), CAST(N'2021-01-19T14:58:36.467' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'0be2633e-046d-40fa-98dc-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38fd48a9-4035-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:38.150' AS DateTime), CAST(N'2021-01-19T14:58:38.150' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1e882fbe-fd88-407e-98dd-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'63a6d076-3e22-4d26-85b4-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:41.640' AS DateTime), CAST(N'2021-01-19T14:58:41.640' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'de19371d-5fbe-4fc3-98de-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9b01f9f3-5621-4bc2-85b5-08d8b9f578ef', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:42.270' AS DateTime), CAST(N'2021-01-19T14:58:42.270' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'12ceef4d-03c0-45cc-98df-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'd788896b-4033-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:43.020' AS DateTime), CAST(N'2021-01-19T14:58:43.020' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'1c082c5a-8383-443f-98e0-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'35dc130e-4034-11eb-a2cb-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:43.800' AS DateTime), CAST(N'2021-01-19T14:58:43.800' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'd5d321ce-28e6-4742-98e1-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'cc99f568-a831-4ea8-4c7a-08d8bba503bf', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:44.733' AS DateTime), CAST(N'2021-01-19T14:58:44.733' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'99e29596-75a0-4736-98e2-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'9a27dfc2-4a66-11eb-87b1-4cedfb69a3e8', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T14:58:51.523' AS DateTime), CAST(N'2021-01-19T14:58:51.523' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'c0c76981-828b-435e-98e3-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'c9518758-b2e1-4f51-b517-5282e273889c', CAST(N'2021-01-19T15:12:04.367' AS DateTime), CAST(N'2021-01-19T15:12:04.367' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'6a3d6ac5-11c7-4592-98e4-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'bffefb1c-8988-4ddf-b4ac-81c2b30e80cd', CAST(N'2021-01-19T15:12:04.377' AS DateTime), CAST(N'2021-01-19T15:12:04.377' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'ed97d135-4408-41cc-98e5-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'9c388461-2704-4c5e-a729-72c17e9018e1', CAST(N'2021-01-19T15:12:04.380' AS DateTime), CAST(N'2021-01-19T15:12:04.380' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'e18a8dad-716d-49cd-98e6-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'383e7ee2-7690-46ac-9230-65155c84aa30', CAST(N'2021-01-19T15:12:04.383' AS DateTime), CAST(N'2021-01-19T15:12:04.383' AS DateTime))
INSERT [dbo].[SysRoleMenuFunction] ([Id], [RoleId], [MenuId], [FunctionId], [UpdateTime], [CreateTime]) VALUES (N'affc5760-c5bd-43fb-98e7-08d8bc47a2c8', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', N'38d864ff-f6e7-43af-8c5c-8bbcf9fa586d', N'f27ecb0a-197d-47b1-b243-59a8c71302bf', CAST(N'2021-01-19T15:12:04.383' AS DateTime), CAST(N'2021-01-19T15:12:04.383' AS DateTime))
GO
INSERT [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'0198459e-2034-4533-b843-5d227ad20740', N'超级管理员', N'admin', N'123456', N'123123123', N'1396510655@qq.com', 2, CAST(N'2021-01-18T15:27:15.880' AS DateTime), CAST(N'2017-04-06T19:55:53.083' AS DateTime))
INSERT [dbo].[SysUser] ([Id], [Name], [LoginName], [Password], [Phone], [Email], [IsDelete], [UpdateTime], [CreateTime]) VALUES (N'ac18f496-e93d-42f0-b59e-e321acc85335', N'用户', N'user', N'123', N'456456456', N'18123456789@live.com', 1, CAST(N'2020-11-25T21:47:22.977' AS DateTime), CAST(N'2017-04-06T19:55:53.083' AS DateTime))
GO
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'a5ef47f2-0d58-4193-af54-7aba7b768b60', N'0198459e-2034-4533-b843-5d227ad20740', N'18fa4771-6f58-46a3-80d2-6f0f5e9972e3', CAST(N'2021-01-17T19:16:41.327' AS DateTime), CAST(N'2021-01-17T19:16:41.327' AS DateTime))
INSERT [dbo].[SysUserRole] ([Id], [UserId], [RoleId], [UpdateTime], [CreateTime]) VALUES (N'4b678497-e71a-4cd8-8fd8-d385c30aa0ca', N'ac18f496-e93d-42f0-b59e-e321acc85335', N'40ff1844-c099-4061-98e0-cd6e544fcfd3', CAST(N'2021-01-17T19:16:38.483' AS DateTime), CAST(N'2021-01-17T19:16:38.483' AS DateTime))
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'member' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysFunction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单与功能绑定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenuFunction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色菜单功能绑定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRoleMenuFunction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户与角色绑定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserRole'
GO
