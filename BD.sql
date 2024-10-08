USE [JJOO]
GO
/****** Object:  Table [dbo].[Deporte]    Script Date: 23/8/2024 19:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deporte](
	[IdDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Deportes] PRIMARY KEY CLUSTERED 
(
	[IdDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportista]    Script Date: 23/8/2024 19:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportista](
	[IdDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [text] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdDeporte] [int] NOT NULL,
 CONSTRAINT [PK_Deportistas] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 23/8/2024 19:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deporte] ON 

INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (32, N'Fútbol', N'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Football_in_Bloomington%2C_Indiana%2C_1995.jpg/640px-Football_in_Bloomington%2C_Indiana%2C_1995.jpg')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (33, N'Hockey', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/r3ivyidaipxicsw4yrnt')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (34, N'Voley', N'https://images.pagina12.com.ar/styles/focal_3_2_960x640/public/2021-08/182614-e7xr9l8xsaahszr.jpg?itok=f8z1GGN3')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (35, N'Handball', N'https://www.clarin.com/img/2019/12/04/xrLeAeXU_1200x0__1.jpg')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (36, N'Basketball', N'https://www.shutterstock.com/image-photo/junior-level-basketball-player-bouncing-600nw-2195727415.jpg')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (37, N'arco y flecha', N'data:image/jpeg;base64,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')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (38, N'Ping pong', N'https://www.mesasdepingpong.net/wp-content/uploads/2018/01/posicion-adelantada-en-el-golpe-del-ping-pong.jpg')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (39, N'Tenis', N'https://images.contentstack.io/v3/assets/blt6b512cc60b434656/blta79db37c1a0cd50b/65f40fe359c5102e9bdc507d/asics-tennisfashion-lp-hero-05062022-1.jpg?format=webp&quality=80')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (40, N'Ciclismo', N'https://www.sport.es/bicio/wp-content/uploads/2022/05/kilometros-ciclista-profesional-aficionado.jpg')
INSERT [dbo].[Deporte] ([IdDeporte], [Nombre], [Foto]) VALUES (41, N'Natación', N'https://upload.wikimedia.org/wikipedia/commons/d/d7/H%C3%A0bit_Saludable.jpg')
SET IDENTITY_INSERT [dbo].[Deporte] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportista] ON 

INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (160, N'Alcaraz', N'Carlos', CAST(N'2003-05-05' AS Date), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd8pB1hRFqnQFyDdvsxfrdFBmq-vxjH2szgA&s', 2, 32)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (161, N'Torres Gil', N'Jose', CAST(N'1995-05-28' AS Date), N'https://www.ellitoral.com/images/2024/07/31/K224d2Dav_1300x655__2.jpg', 1, 33)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (162, N'Jokic', N'Nikola', CAST(N'1995-02-19' AS Date), N'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQg4HXbOkYcc4baNZpiYN1sCRsX4kW2k5F1GYy9bnAwDW8J96J1qhMtfuEOwEBCZBSXNBPFOSzARfxwIAI', 5, 34)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (163, N'Matsuyama', N'Nami', CAST(N'1998-06-28' AS Date), N'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcT13W2AKlLAAmjWtbvzNVDl6d8NUlaEImGDG4DbJWNlMLRDVPfRcuv0lAstyG7jKWgR6iLRA-QwBddq-q4', 4, 35)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (164, N'Mateta', N'Jean-Philipe', CAST(N'1997-06-28' AS Date), N'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQfHsjAvxlglS6rvl6NCp8y0lfvMTU2Hekr4nkV7TdBqYVigu3L3re0hWB8dWD-kuic62TpYQom722cN3I', 3, 36)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (165, N'Nunnik', N'Laura', CAST(N'1995-01-26' AS Date), N'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcS2-xxPPis9rBEZCC6S18_PdWXgJfM_JZFHpgpAgfsEMpDp7SQ2uNo91uDQX_nWPg3Zk8lpVRp6hgyomgk', 6, 37)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (166, N'Cao', N'Yuan', CAST(N'1995-02-07' AS Date), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrwbzb96EaZDzHHurWXHMbXl-IGt01OndEnA&s', 7, 38)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (167, N'Sylla', N'Miriam', CAST(N'1995-01-08' AS Date), N'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSCwTnjg_HhAk1VjUCw8fD6DVuMdPR0OuqgDmXNn6oflH3uRXdyx8ES0omJl7d4OWO8zCn7OJuet2OXG5s', 8, 39)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (168, N'Assefa', N'Tigst', CAST(N'1996-12-03' AS Date), N'https://static.dw.com/image/66913288_1006.jpg', 9, 40)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (169, N'Miloš', N'Cuk', CAST(N'1990-12-21' AS Date), N'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcTumFohGgMw6tyKtzmXXB667PLpwLZywl2Uy4Yvg5phlh8JD_ElF7bK4_p6J6ri0DZYNM1lZQlZn6mbUTA', 10, 41)
INSERT [dbo].[Deportista] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (171, N'gfytry', N'trtrtrt', CAST(N'2002-04-05' AS Date), N'https://images.pexels.com/photos/3992656/pexels-photo-3992656.png?auto=compress&cs=tinysrgb&dpr=1&w=500', 1, 33)
SET IDENTITY_INSERT [dbo].[Deportista] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'Afghanistan', N'https://flagcdn.com/w320/af.png', CAST(N'1747-10-08' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (2, N'Albania', N'https://flagcdn.com/w320/al.png', CAST(N'1912-11-28' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Algeria', N'https://flagcdn.com/w320/dz.png', CAST(N'1962-07-05' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'Andorra', N'https://flagcdn.com/w320/ad.png', CAST(N'1278-09-08' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'Angola', N'https://flagcdn.com/w320/ao.png', CAST(N'1975-11-11' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (6, N'Antigua and Barbuda', N'https://flagcdn.com/w320/ag.png', CAST(N'1981-11-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (7, N'Argentina', N'https://flagcdn.com/w320/ar.png', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (8, N'Armenia', N'https://flagcdn.com/w320/am.png', CAST(N'1918-05-28' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (9, N'Australia', N'https://flagcdn.com/w320/au.png', CAST(N'1901-01-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (10, N'Austria', N'https://flagcdn.com/w320/at.png', CAST(N'1955-07-27' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (11, N'Azerbaijan', N'https://flagcdn.com/w320/az.png', CAST(N'1991-08-30' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (12, N'Bahamas', N'https://flagcdn.com/w320/bs.png', CAST(N'1973-07-10' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (13, N'Bahrain', N'https://flagcdn.com/w320/bh.png', CAST(N'1971-08-15' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (14, N'Bangladesh', N'https://flagcdn.com/w320/bd.png', CAST(N'1971-12-16' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (15, N'Barbados', N'https://flagcdn.com/w320/bb.png', CAST(N'1966-11-30' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (16, N'Belarus', N'https://flagcdn.com/w320/by.png', CAST(N'1991-08-25' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (17, N'Belgium', N'https://flagcdn.com/w320/be.png', CAST(N'1830-10-04' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (18, N'Belize', N'https://flagcdn.com/w320/bz.png', CAST(N'1981-09-21' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (19, N'Benin', N'https://flagcdn.com/w320/bj.png', CAST(N'1960-08-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (20, N'Bhutan', N'https://flagcdn.com/w320/bt.png', CAST(N'1907-12-17' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (21, N'Bolivia', N'https://flagcdn.com/w320/bo.png', CAST(N'1825-08-06' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (22, N'Bosnia and Herzegovina', N'https://flagcdn.com/w320/ba.png', CAST(N'1992-03-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (23, N'Botswana', N'https://flagcdn.com/w320/bw.png', CAST(N'1966-09-30' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (24, N'Brazil', N'https://flagcdn.com/w320/br.png', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (25, N'Brunei', N'https://flagcdn.com/w320/bn.png', CAST(N'1984-01-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (26, N'Bulgaria', N'https://flagcdn.com/w320/bg.png', CAST(N'1908-09-22' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (27, N'Burkina Faso', N'https://flagcdn.com/w320/bf.png', CAST(N'1960-08-05' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (28, N'Burundi', N'https://flagcdn.com/w320/bi.png', CAST(N'1962-07-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (29, N'Cabo Verde', N'https://flagcdn.com/w320/cv.png', CAST(N'1975-07-05' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (30, N'Cambodia', N'https://flagcdn.com/w320/kh.png', CAST(N'1953-11-09' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (31, N'Cameroon', N'https://flagcdn.com/w320/cm.png', CAST(N'1960-01-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (32, N'Canada', N'https://flagcdn.com/w320/ca.png', CAST(N'1867-07-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (33, N'Central African Republic', N'https://flagcdn.com/w320/cf.png', CAST(N'1960-08-13' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (34, N'Chad', N'https://flagcdn.com/w320/td.png', CAST(N'1960-08-11' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (35, N'Chile', N'https://flagcdn.com/w320/cl.png', CAST(N'1818-02-12' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (36, N'China', N'https://flagcdn.com/w320/cn.png', CAST(N'1949-10-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (37, N'Colombia', N'https://flagcdn.com/w320/co.png', CAST(N'1810-07-20' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (38, N'Comoros', N'https://flagcdn.com/w320/km.png', CAST(N'1975-07-06' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (39, N'Congo', N'https://flagcdn.com/w320/cg.png', CAST(N'1960-08-15' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (40, N'Costa Rica', N'https://flagcdn.com/w320/cr.png', CAST(N'1821-09-15' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (41, N'Croatia', N'https://flagcdn.com/w320/hr.png', CAST(N'1991-06-25' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (42, N'Cuba', N'https://flagcdn.com/w320/cu.png', CAST(N'1902-05-20' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (43, N'Cyprus', N'https://flagcdn.com/w320/cy.png', CAST(N'1960-08-16' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (44, N'Czech Republic', N'https://flagcdn.com/w320/cz.png', CAST(N'1993-01-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (45, N'Democratic Republic of the Congo', N'https://flagcdn.com/w320/cd.png', CAST(N'1960-06-30' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (46, N'Denmark', N'https://flagcdn.com/w320/dk.png', CAST(N'1849-06-05' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (47, N'Djibouti', N'https://flagcdn.com/w320/dj.png', CAST(N'1977-06-27' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (48, N'Dominica', N'https://flagcdn.com/w320/dm.png', CAST(N'1978-11-03' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (49, N'Dominican Republic', N'https://flagcdn.com/w320/do.png', CAST(N'1844-02-27' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (50, N'East Timor', N'https://flagcdn.com/w320/tl.png', CAST(N'2002-05-20' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (51, N'Ecuador', N'https://flagcdn.com/w320/ec.png', CAST(N'1822-05-24' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (52, N'Egypt', N'https://flagcdn.com/w320/eg.png', CAST(N'1952-07-23' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (53, N'El Salvador', N'https://flagcdn.com/w320/sv.png', CAST(N'1821-09-15' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (54, N'Equatorial Guinea', N'https://flagcdn.com/w320/gq.png', CAST(N'1968-10-12' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (55, N'Eritrea', N'https://flagcdn.com/w320/er.png', CAST(N'1993-05-24' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (56, N'Estonia', N'https://flagcdn.com/w320/ee.png', CAST(N'1991-08-20' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (57, N'Eswatini', N'https://flagcdn.com/w320/sz.png', CAST(N'1968-09-06' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (58, N'Ethiopia', N'https://flagcdn.com/w320/et.png', CAST(N'1991-05-28' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (59, N'Fiji', N'https://flagcdn.com/w320/fj.png', CAST(N'1970-10-10' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (60, N'Finland', N'https://flagcdn.com/w320/fi.png', CAST(N'1917-12-06' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (61, N'France', N'https://flagcdn.com/w320/fr.png', CAST(N'1789-07-14' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (62, N'Gabon', N'https://flagcdn.com/w320/ga.png', CAST(N'1960-08-16' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (63, N'Gambia', N'https://flagcdn.com/w320/gm.png', CAST(N'1965-02-18' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (64, N'Georgia', N'https://flagcdn.com/w320/ge.png', CAST(N'1991-04-09' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (65, N'Germany', N'https://flagcdn.com/w320/de.png', CAST(N'1990-10-03' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (66, N'Ghana', N'https://flagcdn.com/w320/gh.png', CAST(N'1957-03-06' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (67, N'Greece', N'https://flagcdn.com/w320/gr.png', CAST(N'1821-03-25' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (68, N'Grenada', N'https://flagcdn.com/w320/gd.png', CAST(N'1974-02-07' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (69, N'Guatemala', N'https://flagcdn.com/w320/gt.png', CAST(N'1821-09-15' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (70, N'Guinea', N'https://flagcdn.com/w320/gn.png', CAST(N'1958-10-02' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (71, N'Guinea-Bissau', N'https://flagcdn.com/w320/gw.png', CAST(N'1973-09-24' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (72, N'Guyana', N'https://flagcdn.com/w320/gy.png', CAST(N'1966-05-26' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (73, N'Haiti', N'https://flagcdn.com/w320/ht.png', CAST(N'1804-01-01' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (74, N'Honduras', N'https://flagcdn.com/w320/hn.png', CAST(N'1821-09-15' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (75, N'Hungary', N'https://flagcdn.com/w320/hu.png', CAST(N'1918-11-16' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (76, N'Iceland', N'https://flagcdn.com/w320/is.png', CAST(N'1944-06-17' AS Date))
INSERT [dbo].[Pais] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (77, N'India', N'https://flagcdn.com/w320/in.png', CAST(N'1947-08-15' AS Date))
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
ALTER TABLE [dbo].[Deportista]  WITH CHECK ADD  CONSTRAINT [FK_Deportista_Deporte] FOREIGN KEY([IdDeporte])
REFERENCES [dbo].[Deporte] ([IdDeporte])
GO
ALTER TABLE [dbo].[Deportista] CHECK CONSTRAINT [FK_Deportista_Deporte]
GO
ALTER TABLE [dbo].[Deportista]  WITH CHECK ADD  CONSTRAINT [FK_Deportistas_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Deportista] CHECK CONSTRAINT [FK_Deportistas_Paises]
GO
/****** Object:  StoredProcedure [dbo].[DeportistasPaisesDeportes]    Script Date: 23/8/2024 19:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeportistasPaisesDeportes]
as
BEGIN
select Deportista.Nombre, p.Nombre, Deporte.Nombre from Deportista 
inner join Pais p on Deportista.IdPais = p.IdPais
inner join Deporte on Deportista.IdDeporte = Deporte.IdDeporte
END
GO
