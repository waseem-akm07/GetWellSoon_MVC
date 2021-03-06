USE [getwellsoon]
GO
/****** Object:  StoredProcedure [dbo].[delappreq]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delappreq]
	@appreqcod int

AS
	delete from tbappreq where appreqcod=@appreqcod

GO
/****** Object:  StoredProcedure [dbo].[delare]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delare]
	@arecod int

AS
	delete from tbare where arecod=@arecod

GO
/****** Object:  StoredProcedure [dbo].[delcty]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delcty]
	@ctycod int

AS
	delete from tbcty where ctycod=@ctycod

GO
/****** Object:  StoredProcedure [dbo].[deldoc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deldoc]
	@doccod int

AS
	delete from tbdoc where doccod=@doccod

GO
/****** Object:  StoredProcedure [dbo].[delrev]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delrev]
	@revcod int

AS
	delete from tbrev where revcod=@revcod

GO
/****** Object:  StoredProcedure [dbo].[delspc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delspc]
	@spccod int

AS
	delete from tbspc where spccod=@spccod

GO
/****** Object:  StoredProcedure [dbo].[delusr]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delusr]
	@usrcod int

AS
	delete from tbusr where usrcod=@usrcod

GO
/****** Object:  StoredProcedure [dbo].[dspappreq]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspappreq]
	@doccod int
AS
select appreqcod,appreqdat,appreqtim,usreml,usrphn,
appreqdsc,appreqsts from tbappreq,tbusr where
apprequsrcod=usrcod and appreqdoccod=@doccod order
by appreqdat desc
GO
/****** Object:  StoredProcedure [dbo].[dspare]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspare]
(
	@ctycod int
)
AS
select * from tbare where arectycod=@ctycod

GO
/****** Object:  StoredProcedure [dbo].[dspcty]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspcty]
AS
	select * from tbcty

GO
/****** Object:  StoredProcedure [dbo].[dspdoc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspdoc]
AS
	select * from tbdoc

GO
/****** Object:  StoredProcedure [dbo].[dsprev]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dsprev]
(
	@doccod int
)
AS
select revdat,revdsc,revscr,usreml from tbrev,
tbappreq,tbusr where revappreqcod=appreqcod and
apprequsrcod=usrcod and appreqdoccod=@doccod
order by revdat desc
GO
/****** Object:  StoredProcedure [dbo].[dspspc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspspc]
AS
	select * from tbspc

GO
/****** Object:  StoredProcedure [dbo].[dspusr]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspusr]
AS
	select * from tbusr

GO
/****** Object:  StoredProcedure [dbo].[dspusrapp]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspusrapp]
	@usrcod int
AS
select docnam,appreqdat,appreqtim,
appreqcod from tbappreq,tbdoc where appreqdoccod=
doccod and apprequsrcod=@usrcod and appreqsts='A'
order by appreqdat desc;
GO
/****** Object:  StoredProcedure [dbo].[fndappreq]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndappreq]
	@appreqcod int

AS
	select * from tbappreq where appreqcod=@appreqcod

GO
/****** Object:  StoredProcedure [dbo].[fndare]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndare]
	@arecod int

AS
	select * from tbare where arecod=@arecod

GO
/****** Object:  StoredProcedure [dbo].[fndcty]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndcty]
	@ctycod int

AS
	select * from tbcty where ctycod=@ctycod

GO
/****** Object:  StoredProcedure [dbo].[fnddoc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fnddoc]
	@doccod int

AS
	select * from tbdoc where doccod=@doccod

GO
/****** Object:  StoredProcedure [dbo].[fndrev]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndrev]
	@revcod int

AS
	select * from tbrev where revcod=@revcod

GO
/****** Object:  StoredProcedure [dbo].[fndspc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndspc]
	@spccod int

AS
	select * from tbspc where spccod=@spccod

GO
/****** Object:  StoredProcedure [dbo].[fndusr]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndusr]
	@usrcod int

AS
	select * from tbusr where usrcod=@usrcod

GO
/****** Object:  StoredProcedure [dbo].[insappreq]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insappreq]
	@appreqdat datetime,@appreqtim varchar(100),@apprequsrcod int,@appreqdsc varchar(2000),@appreqsts char(1),@appreqdoccod int

AS
	insert tbappreq values(@appreqdat,@appreqtim,@apprequsrcod,@appreqdsc,@appreqsts,@appreqdoccod)

GO
/****** Object:  StoredProcedure [dbo].[insare]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insare]
	@arenam varchar(100),@arectycod int,@arelatlng varchar(200)

AS
	insert tbare values(@arenam,@arectycod,@arelatlng)

GO
/****** Object:  StoredProcedure [dbo].[inscty]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inscty]
	@ctynam varchar(100)

AS
	insert tbcty values(@ctynam)

GO
/****** Object:  StoredProcedure [dbo].[insdoc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insdoc]
	@docnam varchar(100),
	@docarecod int,
	@docspccod int,
	@docusrcod int
AS
insert into tbdoc(docnam,docarecod,docspccod,docusrcod) values
(@docnam,@docarecod,@docspccod,@docusrcod)

GO
/****** Object:  StoredProcedure [dbo].[insrev]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insrev]
	@revappreqcod int,@revdat datetime,@revdsc varchar(2000),@revscr float

AS
	insert tbrev values(@revappreqcod,@revdat,@revdsc,@revscr)

GO
/****** Object:  StoredProcedure [dbo].[insspc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insspc]
	@spcnam varchar(200),@spcdsc varchar(1000)

AS
	insert tbspc values(@spcnam,@spcdsc)

GO
/****** Object:  StoredProcedure [dbo].[insusr]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insusr]
	@usreml varchar(100),@usrpwd varchar(100),@usrregdat datetime,@usrphn varchar(50),@usrrol char(1)
AS
declare @r int
insert tbusr values(@usreml,@usrpwd,@usrregdat,@usrphn,@usrrol)
select @r=@@IDENTITY
return @r

GO
/****** Object:  StoredProcedure [dbo].[logincheck]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[logincheck]
	@eml varchar(100),
	@pwd varchar(100),
	@cod int output,
	@rol char(1) output
AS
declare @actpwd varchar(100)
select @actpwd=usrpwd from tbusr where usreml=@eml
if @actpwd=@pwd
begin
select @rol=usrrol from tbusr where usreml=@eml
if @rol='D'
select @cod=doccod from tbdoc,tbusr where docusrcod=usrcod and usreml=@eml
else
select @cod=usrcod from tbusr where usreml=@eml
end
else
begin
set @cod=-1
set @rol='N'
end

GO
/****** Object:  StoredProcedure [dbo].[srcdoc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[srcdoc]
	@arecod int,
	@spccod int
AS
select doccod,docnam,docqal,docpic,docadd,docaddcrd,
(select isnull(avg(revscr),4) from tbrev,tbappreq
where revappreqcod=appreqcod and appreqdoccod=
a.doccod) revrat from tbdoc a where docarecod=
@arecod and docspccod=@spccod order by revrat desc
GO
/****** Object:  StoredProcedure [dbo].[updappreq]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updappreq]
	@appreqcod int,
	@appreqsts char(1)
AS
update tbappreq set appreqsts=@appreqsts where appreqcod=@appreqcod
GO
/****** Object:  StoredProcedure [dbo].[updare]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updare]
	@arecod int,@arenam varchar(100),@arectycod int,@arelatlng varchar(200)

AS
	update tbare set arenam=@arenam,arectycod=@arectycod,arelatlng=@arelatlng where arecod=@arecod

GO
/****** Object:  StoredProcedure [dbo].[updcty]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updcty]
	@ctycod int,@ctynam varchar(100)

AS
	update tbcty set ctynam=@ctynam where ctycod=@ctycod

GO
/****** Object:  StoredProcedure [dbo].[upddoc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[upddoc]
	@doccod int,
	@docprf nvarchar(2000),@docqal varchar(200),
	@docpic varchar(100),@docadd varchar(200),
	@docavltim varchar(100),@docappphn varchar(100),
	@docaddcrd varchar(500)

AS
	update tbdoc set docprf=@docprf,docqal=@docqal,
	docpic=@docpic,docadd=@docadd,docavltim=@docavltim,
	docappphn=@docappphn,docaddcrd=@docaddcrd where 
	doccod=@doccod
GO
/****** Object:  StoredProcedure [dbo].[updrev]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updrev]
	@revcod int,@revappreqcod int,@revdat datetime,@revdsc varchar(2000),@revscr float

AS
	update tbrev set revappreqcod=@revappreqcod,revdat=@revdat,revdsc=@revdsc,revscr=@revscr 
	where revcod=@revcod

GO
/****** Object:  StoredProcedure [dbo].[updspc]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updspc]
	@spccod int,@spcnam varchar(200),@spcdsc varchar(1000)

AS
	update tbspc set spcnam=@spcnam,spcdsc=@spcdsc where spccod=@spccod

GO
/****** Object:  StoredProcedure [dbo].[updusr]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updusr]
	@usrcod int,@usreml varchar(100),@usrpwd varchar(100),@usrregdat datetime,@usrphn varchar(50),@usrrol char(1)

AS
	update tbusr set usreml=@usreml,usrpwd=@usrpwd,usrregdat=@usrregdat,usrphn=@usrphn,usrrol=@usrrol where usrcod=@usrcod

GO
/****** Object:  Table [dbo].[tbappreq]    Script Date: 11/19/2019 11:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbappreq](
	[appreqcod] [int] IDENTITY(1,1) NOT NULL,
	[appreqdat] [datetime] NULL,
	[appreqtim] [varchar](100) NULL,
	[apprequsrcod] [int] NULL,
	[appreqdsc] [varchar](2000) NULL,
	[appreqsts] [char](1) NULL,
	[appreqdoccod] [int] NULL,
 CONSTRAINT [PK_tbappreq] PRIMARY KEY CLUSTERED 
(
	[appreqcod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbare]    Script Date: 11/19/2019 11:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbare](
	[arecod] [int] IDENTITY(1,1) NOT NULL,
	[arenam] [varchar](100) NULL,
	[arectycod] [int] NULL,
	[arelatlng] [varchar](200) NULL,
 CONSTRAINT [PK_tbare] PRIMARY KEY CLUSTERED 
(
	[arecod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbcty]    Script Date: 11/19/2019 11:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbcty](
	[ctycod] [int] IDENTITY(1,1) NOT NULL,
	[ctynam] [varchar](100) NULL,
 CONSTRAINT [PK_tbcty] PRIMARY KEY CLUSTERED 
(
	[ctycod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbdoc]    Script Date: 11/19/2019 11:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbdoc](
	[doccod] [int] IDENTITY(1,1) NOT NULL,
	[docnam] [varchar](100) NULL,
	[docarecod] [int] NULL,
	[docspccod] [int] NULL,
	[docprf] [nvarchar](2000) NULL,
	[docqal] [varchar](200) NULL,
	[docpic] [varchar](100) NULL,
	[docadd] [varchar](200) NULL,
	[docavltim] [varchar](100) NULL,
	[docappphn] [varchar](100) NULL,
	[docusrcod] [int] NULL,
	[docaddcrd] [varchar](500) NULL,
 CONSTRAINT [PK_tbdoc] PRIMARY KEY CLUSTERED 
(
	[doccod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbrev]    Script Date: 11/19/2019 11:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbrev](
	[revcod] [int] IDENTITY(1,1) NOT NULL,
	[revappreqcod] [int] NULL,
	[revdat] [datetime] NULL,
	[revdsc] [varchar](2000) NULL,
	[revscr] [float] NULL,
 CONSTRAINT [PK_tbrev] PRIMARY KEY CLUSTERED 
(
	[revcod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbspc]    Script Date: 11/19/2019 11:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbspc](
	[spccod] [int] IDENTITY(1,1) NOT NULL,
	[spcnam] [varchar](200) NULL,
	[spcdsc] [varchar](1000) NULL,
 CONSTRAINT [PK_tbspc] PRIMARY KEY CLUSTERED 
(
	[spccod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbusr]    Script Date: 11/19/2019 11:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbusr](
	[usrcod] [int] IDENTITY(1,1) NOT NULL,
	[usreml] [varchar](100) NULL,
	[usrpwd] [varchar](100) NULL,
	[usrregdat] [datetime] NULL,
	[usrphn] [varchar](50) NULL,
	[usrrol] [char](1) NULL,
 CONSTRAINT [PK_tbusr] PRIMARY KEY CLUSTERED 
(
	[usrcod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbappreq] ON 

INSERT [dbo].[tbappreq] ([appreqcod], [appreqdat], [appreqtim], [apprequsrcod], [appreqdsc], [appreqsts], [appreqdoccod]) VALUES (1, CAST(0x0000AAFB00000000 AS DateTime), N'10:30', 3, N'gghh hkhkjj  ghjffhjjfjnm  jkgoiyyiooiyopi fuydduu   iioofdytryryuryut', N'A', 1)
SET IDENTITY_INSERT [dbo].[tbappreq] OFF
SET IDENTITY_INSERT [dbo].[tbare] ON 

INSERT [dbo].[tbare] ([arecod], [arenam], [arectycod], [arelatlng]) VALUES (1, N'Sector 17E', 1, N'(30.738063345947452, 76.77887039184725)')
SET IDENTITY_INSERT [dbo].[tbare] OFF
SET IDENTITY_INSERT [dbo].[tbcty] ON 

INSERT [dbo].[tbcty] ([ctycod], [ctynam]) VALUES (1, N'Chandigarh')
INSERT [dbo].[tbcty] ([ctycod], [ctynam]) VALUES (2, N'Mohali')
INSERT [dbo].[tbcty] ([ctycod], [ctynam]) VALUES (3, N'Ambala')
INSERT [dbo].[tbcty] ([ctycod], [ctynam]) VALUES (4, N'Zirakpur')
INSERT [dbo].[tbcty] ([ctycod], [ctynam]) VALUES (6, N'Panchkula')
SET IDENTITY_INSERT [dbo].[tbcty] OFF
SET IDENTITY_INSERT [dbo].[tbdoc] ON 

INSERT [dbo].[tbdoc] ([doccod], [docnam], [docarecod], [docspccod], [docprf], [docqal], [docpic], [docadd], [docavltim], [docappphn], [docusrcod], [docaddcrd]) VALUES (1, N'Dr. Satish Bansal', 1, 1, N'<ul>
<li>sdf sadf zdg sd gfd fhg dfgh dj jfg hjf ghjstd</li>
<li>dfy</li>
<li>drt</li>
<li><span style="color: #ff0000;">yt</span></li>
<li><span style="color: #ff0000;">yutr</span></li>
<li><span style="color: #ff0000;">yif</span></li>
<li><span style="font-weight: bold;">yuigy</span></li>
<li><span style="font-weight: bold;">ssdtsdrtz</span></li></ul>', N'M.B.B.S M.D', N'.jpg', N'sco 2451 sector 22c', N'9 A.M to 5 P.M', N'0172 4007164', 1, N'(30.71257978552601, 76.78938964843746)')
SET IDENTITY_INSERT [dbo].[tbdoc] OFF
SET IDENTITY_INSERT [dbo].[tbrev] ON 

INSERT [dbo].[tbrev] ([revcod], [revappreqcod], [revdat], [revdsc], [revscr]) VALUES (1, 1, CAST(0x0000AB0500A1CB6F AS DateTime), N'best appointment session.Doctor was extremely well behaved and knowledgeable.', 5)
SET IDENTITY_INSERT [dbo].[tbrev] OFF
SET IDENTITY_INSERT [dbo].[tbspc] ON 

INSERT [dbo].[tbspc] ([spccod], [spcnam], [spcdsc]) VALUES (1, N'Endocrinologist', N'Endocrinology is the field of hormone-related diseases. An endocrinologist can diagnose and treat hormone problems and the complications that arise from them.')
INSERT [dbo].[tbspc] ([spccod], [spcnam], [spcdsc]) VALUES (2, N'Plumanologist', N'Pulmonology is an area of medicine that focuses on the health of the respiratory system. Pulmonologists treat everything from asthma to tuberculosis.')
INSERT [dbo].[tbspc] ([spccod], [spcnam], [spcdsc]) VALUES (3, N'Neurologist', N'A neurologist is a medical doctor who specializes in treating diseases of the nervous system. The nervous system is made of two parts: the central and peripheral nervous system. It includes the brain and spinal cord.')
SET IDENTITY_INSERT [dbo].[tbspc] OFF
SET IDENTITY_INSERT [dbo].[tbusr] ON 

INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpwd], [usrregdat], [usrphn], [usrrol]) VALUES (1, N'cs@cssoftsolutions.com', N'48b1cb7b-b', CAST(0x0000AAC600ABC6A7 AS DateTime), N'9779261111', N'D')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpwd], [usrregdat], [usrphn], [usrrol]) VALUES (2, N'admin@getwellsoon.com', N'admin123#', CAST(0x0000A9B400000000 AS DateTime), N'1232144', N'A')
INSERT [dbo].[tbusr] ([usrcod], [usreml], [usrpwd], [usrregdat], [usrphn], [usrrol]) VALUES (3, N'abc@gmail.com', N'qwerty', CAST(0x0000AAEE00A79869 AS DateTime), N'9779261111', N'U')
SET IDENTITY_INSERT [dbo].[tbusr] OFF
