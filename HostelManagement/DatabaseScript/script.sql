USE [master]
GO
/****** Object:  Database [HostelManagement]    Script Date: 11/11/2016 10:01:42 ******/
CREATE DATABASE [HostelManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HostelManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\HostelManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HostelManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\HostelManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HostelManagement] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HostelManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HostelManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HostelManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HostelManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HostelManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HostelManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [HostelManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HostelManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HostelManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HostelManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HostelManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HostelManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HostelManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HostelManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HostelManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HostelManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HostelManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HostelManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HostelManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HostelManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HostelManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HostelManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HostelManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HostelManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HostelManagement] SET  MULTI_USER 
GO
ALTER DATABASE [HostelManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HostelManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HostelManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HostelManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HostelManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HostelManagement] SET QUERY_STORE = OFF
GO
USE [HostelManagement]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [HostelManagement]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 11/11/2016 10:01:42 ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/11/2016 10:01:43 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AcHead]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcHead](
	[id] [int] NOT NULL,
	[val] [nvarchar](25) NULL,
	[recurr] [int] NULL,
	[custom] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Allotment]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allotment](
	[bid] [nvarchar](25) NOT NULL,
	[year] [int] NOT NULL,
	[dateOfJoin] [date] NOT NULL,
	[dateOfLeave] [date] NULL,
	[hostelBlock] [int] NOT NULL,
	[roomNum] [int] NOT NULL,
	[slNum] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_AllotmentID] PRIMARY KEY CLUSTERED 
(
	[bid] ASC,
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] NOT NULL,
	[val] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] NOT NULL,
	[val] [nvarchar](255) NULL,
	[code] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gender]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[id] [int] NOT NULL,
	[val] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelBill]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelBill](
	[bid] [nvarchar](25) NULL,
	[amount] [numeric](10, 2) NULL,
	[year] [int] NULL,
	[descr] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelCharges]    Script Date: 11/11/2016 10:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelCharges](
	[id] [int] NOT NULL,
	[val] [numeric](10, 2) NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [pk_hostelCharges] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hostels]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hostels](
	[blockNumber] [int] NOT NULL,
	[type] [nvarchar](255) NULL,
	[occupantType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[blockNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelTransactions]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelTransactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bid] [nvarchar](25) NOT NULL,
	[dateOfPay] [datetime] NOT NULL,
	[paymentTypeId] [int] NOT NULL,
	[head] [int] NOT NULL,
	[receipt] [nvarchar](25) NOT NULL,
	[bankName] [nvarchar](25) NOT NULL,
	[year] [int] NULL,
	[amount] [numeric](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MessBill]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessBill](
	[billNum] [bigint] IDENTITY(1,1) NOT NULL,
	[dateOfDeclaration] [date] NOT NULL,
	[numDays] [int] NOT NULL,
	[month] [int] NOT NULL,
	[bid] [nvarchar](25) NULL,
	[year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[billNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MessTransactions]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessTransactions](
	[bid] [nvarchar](25) NOT NULL,
	[billNum] [bigint] NOT NULL,
	[receipt] [nvarchar](25) NOT NULL,
	[bankName] [nvarchar](25) NOT NULL,
	[dateOfPay] [date] NOT NULL,
	[paymentTypeId] [int] NOT NULL,
	[year] [int] NOT NULL,
	[id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[amount] [numeric](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[id] [int] NOT NULL,
	[val] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[hostelBlockNumber] [int] NOT NULL,
	[roomNumber] [int] NOT NULL,
	[roomType] [int] NULL,
	[maxOccupancy] [int] NOT NULL,
	[currentOccupancy] [int] NOT NULL,
 CONSTRAINT [pk_RoomID] PRIMARY KEY CLUSTERED 
(
	[hostelBlockNumber] ASC,
	[roomNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[id] [int] NOT NULL,
	[val] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/11/2016 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[bid] [nvarchar](25) NOT NULL,
	[name] [nvarchar](25) NOT NULL,
	[usn] [nvarchar](25) NULL,
	[semester] [int] NOT NULL,
	[gender] [int] NOT NULL,
	[course] [int] NOT NULL,
	[branch] [int] NOT NULL,
	[dob] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607141128110_InitialCreate', N'HostelManagement.AppDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E2FB0FF41D0D36E915AB9EC0CA681DD2275924EB0930BC699A26F035AA21D61244A95A83441D15FD687FEA4FD0B7B285117DE64C9962FB3186010F3F29DC3C343F2F0F0B3FFFBD7DFE31F5FC2C07AC649EA4764629F8C8E6D0B1337F27CB29CD8195D7CF7CEFEF1877F7C33BEF2C217EB97B2DD196B073D493AB19F288DCF1D27759F7088D251E8BB4994460B3A72A3D0415EE49C1E1F7FEF9C9C3818206CC0B2ACF1C78C503FC4F907F8388D888B639AA1E036F27090F272A899E5A8D61D0A711A23174FECF7514A71708B085AE210136A5B17818F408F190E16B685088928A2A0E5F9A714CF681291E52C8602143CBEC618DA2D509062AEFD79DDBCEB408E4FD9409CBA6309E566298DC29E802767DC328EDC7D2DFBDA95E5C076576063FACA469DDB6F62DF78382FFA1805600059E0F9344858E3897D5B89B848E33B4C4765C75101799D00DCEF51F265D4443CB23AF73BAA3CE97474CCFE1D59D32CA059822704673441C191F590CD03DFFD0F7E7D8CBE6032393B992FCEDEBD798BBCB3B7FFC6676F9A2385B1423BA1008A1E9228C609E88617D5F86DCB11FB3972C7AA5BA34F6115F0255814B6758B5E3E60B2A44FB05C4EDFD9D6B5FF82BDB2843BD727E2C31A824E34C9E0E35D1604681EE0AADE6995C9FE6F917AFAE6ED2052EFD0B3BFCCA75E920F0B27496DEB230EF2DAF4C98F8BE525CCF767DEEC3A8942F659F4AFA2F6F32CCA12970D2632367944C9125351BBB1533B6F27976650C3BB75897AF8AECD3455DD5BDB940D689D95508AD8F56A28F5DDAEDCCE1E7711C7CC126D8E261F5123DEE7C8926B6A6F39E9EA2D0446F1FFBCF95D85C80F06D8FD3A4881B063E12721AE46F95304BE86486F9D1F509AC2E2F7DEA3F4A94575F87300D567D8CD12F0C9194561BC75690F4F11C1775938672EBF3B59834DCDE3EFD1357269945C11D66B63BC0F91FB25CAE815F12E11C59FA85B02B28F8F7ED81D6010752E5C17A7E9353833F6A651C6C2E102F086D0B3D3DE706C97DA77F4310D901FEAC30FBE8F7E2E9BD4A18758A3841D52B52EE46853E943B4F449BB4A651355A5A2C6A812AFEEAB120369D788B75015CA2B8CFA14B5830565B9C5878FCA72D8C30FCB363B744D6BB861C619EC6CF8674C7002DB8FF78028C509A967A0CB7ADFC7219F4F1F13BAF5332597F40B0AB2A145ADB51AF2C53EFC6AC8610F7F35E46A42F1B3EFB168A2C35DA56C0CF09DDAEBAF41ABD79CA4D9AE978330CC5D0BDFCD1E605A2E17691AB97EBE0A34592A9E6310F587D8CB5A9D70284623272D6060E0E87E0CAE0D2530365B76AA7B7289034CB175E11659BC294A5DE4A9668401793D142B4F548D6275F24254EE5B4526783A4E5827C42E2F29AC549F507559F8C4F56314ACB492D4B3E311C6C65EC9906B2E718C0913B8D2125D84EB73154C814A8E3429AB2C34761A1ED7EE8852B4699A6B53E859CF739532D889EF19625D83DFF1F86C2B8EA7B7CC0E9C4E6F822E828D79B45D3A1CBF4BAC9A60F962B16F87936E320687E321D0561D4EB4CC0E1D4E34C157E370C55571D5FC4AF7C67DBB9B7851DDFDB1AA35CB0E7D4D18FF81B95A11EB411F0A3D7052BBDBE59C15E217AAB904817EFC1E94F290527601063AC3544C81D471A536DE73DA4164676903AC1D6A05287F195380AA85D243A932D7D5AA153FC57BC096F9AA5658BE574BB08D3957B19B2F838D86E6F743D9193B45F7D5C82A2F509CBA5330DEC0D13882BC298903EF6014395FA91AA42DC6EC12653606C08DDE62084364683042A9F46056285DCE6C055DE0D325F459CB0A52B862B042A9F46056E0BE653682E630EE701CAF6502F1081D68319437FD6AF7AFEAC64E41E7E10563C7C0FB19DFA238F6C9B2C103E225D6AC20014DBF9BF5E7C7840586E3A61A9A4CA56D258946095A62A9164483A6D77E92D24B44D11CB13CC7D40B9566C25967D8964B51CDE34C9DB4727F2E5BB3BF8B1ECA3BB370F2A9210147B88671B1E6F910B166D6F5DD2DC6C642014A34F9EA69146421318737E6DEC56B53B37F51A2228C1D497F258C516CA50495A2E13B4D8BBA140699A22A96587F9ACC102663971160D3DCA6A8D08C5226659A28A644CDDEA6CD145CF498AA325AEB3F43C69EDB59439C32D104E0453D311AAFEE0A58A3AE3BAA488C68628A35DD1125F6431352AAEAA16593E32028D9AC580BCF60517D8BEE12545643135DADED8EACE13734A135D56B606B7496EBBAA36A28104D604D7577EC9A0F216F99077C4A19EF126B1E53C5E572B373CA80B19DFD709863AEF146DD046A14F7C4E2AFD00A182F3F485F32DEC8D6F4A522A3B0992F1930CCBB8EF0B62B6E3AAD0FD2664CE1C156D8D8DB1EACCD78FD3C76AB7EA15CDFE42695F4EA1A275DD7C6FCEAB4FABB1CCA5DAA68625BA519E1507F056F0A47ACC168F65B300D7CCCB6F0B201B899BFC0292D480AF6E9F1C9A9F48590C3F9728693A65EA0B97A9ABEA121CED90EF846E41925EE134AD4D7FF0DBEC050832A09DF1BE2E19789FD47DEEB3CCF4DB0BFF2E223EB26FD44FCDF32A8784C326CFDA9B210872174B75FA70E947EDFDDAA37BF7E2EBA1E59F709AC9873EB58B2E53A332C92F27B695374DD409BDE54FDAF77210964782DAAB410D6E7BECF7D3A08EFBDD4F29F217AF9575FD5B4DCF68D1035FCF5A1F00631A1899FBE0E96919BEEC1479A73D3FB0D56CF555F4735234FDD27FDC164967AF7EDA7ECB9C723467313DAC59694DB79255B7823EAE0BECF248554BCD1425789C33DE0362007AFE1195F19AF76B0D351439B1D0C7B9FAEBD75AEECA1D0636B42C57E59B1BB24C2B63CFC7CD5FCD73D32C2344C98FDB15D77ED4BA6ECEC81520DBB715B0FC49938FF697F4CD65D3B93293D7BA0CED489B77A20BEB4AF736E4F9ED4F988DB3B2B5525F4185E497439DA55ECD322A10D37F07904935F447CC597F3F4B42A93B0DA498C02EB2666A1663E972CB85A288ABCAAA65D4CBFB1F183B97570BC4DBB58036BB14D36DFC75B65F336EDB20D5CC17DF065B56C3E1D7779C57ED5463B3A447EACA0B1816EBD2A766C7DC23E443AEC468316BCDFF0D67A78ECD78D863CA46BF760BBAACFA27096357E080FCED3D45FD610EC67F108768553AC6A7343165179984A1A954DA48CC62DA6C88323EE22A1FE02B914AA594E36FFB66F9EE7622F0373ECDD90FB8CC6198521E3701E0809227628B7C9CF29BDA2CEE3FB38FF818A2186006AFA2C977D4F7ECAFCC0ABF4BED6E4500C10ECB4E71950369794654297AF15D25D443A0271F35541CA230EE300C0D27B3243CF781DDDC0FD3EE025725FEB8C990964F54488661F5FFA6899A030E518757FF8083EEC852F3FFC0F02E4E26A0F520000, N'6.1.0-30225')
INSERT [dbo].[AcHead] ([id], [val], [recurr], [custom]) VALUES (1, N'Rent', 0, 0)
INSERT [dbo].[AcHead] ([id], [val], [recurr], [custom]) VALUES (2, N'Fixed Charges', 0, 0)
INSERT [dbo].[AcHead] ([id], [val], [recurr], [custom]) VALUES (3, N'Deposit', 1, 0)
INSERT [dbo].[AcHead] ([id], [val], [recurr], [custom]) VALUES (4, N'Misc', 0, 1)
INSERT [dbo].[AcHead] ([id], [val], [recurr], [custom]) VALUES (5, N'Refund', 0, 0)
INSERT [dbo].[Course] ([id], [val]) VALUES (1, N'Undergraduate')
INSERT [dbo].[Course] ([id], [val]) VALUES (2, N'Postgraduate')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (1, N'Computer Science And Engineering', N'CS')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (2, N'Electronics And Communication Engineering', N'EC')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (3, N'Information Science Engineering', N'IS')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (4, N'Electrical and Electronics Engineering', N'EE')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (5, N'Electronics and Instrumentation Engineering', N'EI')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (6, N'Masters in Business Administration', N'MBA')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (7, N'Masters in Computer Application', N'MCA')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (8, N'Mechanical Engineering', N'ME')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (9, N'Civil Engineering', N'CV')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (10, N'Chemistry', N'CH')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (11, N'Electronic Stream', N'ES')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (12, N'Mathematics', N'MAT')
INSERT [dbo].[Department] ([id], [val], [code]) VALUES (13, N'Physics', N'PH')
INSERT [dbo].[Gender] ([id], [val]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([id], [val]) VALUES (2, N'Female')
INSERT [dbo].[PaymentType] ([id], [val]) VALUES (1, N'Bank Challan')
INSERT [dbo].[PaymentType] ([id], [val]) VALUES (2, N'NEFT')
INSERT [dbo].[PaymentType] ([id], [val]) VALUES (3, N'Cheque')
INSERT [dbo].[PaymentType] ([id], [val]) VALUES (4, N'Discount')
INSERT [dbo].[PaymentType] ([id], [val]) VALUES (5, N'Refund')
INSERT [dbo].[PaymentType] ([id], [val]) VALUES (6, N'Demand Draft')
INSERT [dbo].[RoomTypes] ([id], [val]) VALUES (1, N'Attached')
INSERT [dbo].[RoomTypes] ([id], [val]) VALUES (2, N'Non Attached')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/11/2016 10:01:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/11/2016 10:01:44 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/11/2016 10:01:44 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/11/2016 10:01:44 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/11/2016 10:01:44 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/11/2016 10:01:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD  DEFAULT ('1') FOR [bid]
GO
ALTER TABLE [dbo].[Allotment]  WITH CHECK ADD  CONSTRAINT [fk_StudentAllotment] FOREIGN KEY([bid])
REFERENCES [dbo].[Student] ([bid])
GO
ALTER TABLE [dbo].[Allotment] CHECK CONSTRAINT [fk_StudentAllotment]
GO
ALTER TABLE [dbo].[Allotment]  WITH CHECK ADD  CONSTRAINT [fk_StudentBlock] FOREIGN KEY([hostelBlock], [roomNum])
REFERENCES [dbo].[Rooms] ([hostelBlockNumber], [roomNumber])
GO
ALTER TABLE [dbo].[Allotment] CHECK CONSTRAINT [fk_StudentBlock]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[HostelBill]  WITH CHECK ADD  CONSTRAINT [fk_StudentBill] FOREIGN KEY([bid])
REFERENCES [dbo].[Student] ([bid])
GO
ALTER TABLE [dbo].[HostelBill] CHECK CONSTRAINT [fk_StudentBill]
GO
ALTER TABLE [dbo].[Hostels]  WITH CHECK ADD  CONSTRAINT [fk_Hostels_Gender] FOREIGN KEY([occupantType])
REFERENCES [dbo].[Gender] ([id])
GO
ALTER TABLE [dbo].[Hostels] CHECK CONSTRAINT [fk_Hostels_Gender]
GO
ALTER TABLE [dbo].[HostelTransactions]  WITH CHECK ADD  CONSTRAINT [fk_PaymentHostel] FOREIGN KEY([paymentTypeId])
REFERENCES [dbo].[PaymentType] ([id])
GO
ALTER TABLE [dbo].[HostelTransactions] CHECK CONSTRAINT [fk_PaymentHostel]
GO
ALTER TABLE [dbo].[HostelTransactions]  WITH CHECK ADD  CONSTRAINT [fk_StudentHostel] FOREIGN KEY([bid])
REFERENCES [dbo].[Student] ([bid])
GO
ALTER TABLE [dbo].[HostelTransactions] CHECK CONSTRAINT [fk_StudentHostel]
GO
ALTER TABLE [dbo].[HostelTransactions]  WITH CHECK ADD  CONSTRAINT [hk_HeadTransaction] FOREIGN KEY([head])
REFERENCES [dbo].[AcHead] ([id])
GO
ALTER TABLE [dbo].[HostelTransactions] CHECK CONSTRAINT [hk_HeadTransaction]
GO
ALTER TABLE [dbo].[MessBill]  WITH CHECK ADD  CONSTRAINT [fk_StudentMessBill] FOREIGN KEY([bid])
REFERENCES [dbo].[Student] ([bid])
GO
ALTER TABLE [dbo].[MessBill] CHECK CONSTRAINT [fk_StudentMessBill]
GO
ALTER TABLE [dbo].[MessTransactions]  WITH CHECK ADD  CONSTRAINT [fk_BillPayment] FOREIGN KEY([billNum])
REFERENCES [dbo].[MessBill] ([billNum])
GO
ALTER TABLE [dbo].[MessTransactions] CHECK CONSTRAINT [fk_BillPayment]
GO
ALTER TABLE [dbo].[MessTransactions]  WITH CHECK ADD  CONSTRAINT [fk_PaymentMess] FOREIGN KEY([paymentTypeId])
REFERENCES [dbo].[PaymentType] ([id])
GO
ALTER TABLE [dbo].[MessTransactions] CHECK CONSTRAINT [fk_PaymentMess]
GO
ALTER TABLE [dbo].[MessTransactions]  WITH CHECK ADD  CONSTRAINT [fk_StudentMess] FOREIGN KEY([bid])
REFERENCES [dbo].[Student] ([bid])
GO
ALTER TABLE [dbo].[MessTransactions] CHECK CONSTRAINT [fk_StudentMess]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [fk_HostelRooms] FOREIGN KEY([hostelBlockNumber])
REFERENCES [dbo].[Hostels] ([blockNumber])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [fk_HostelRooms]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [fk_RoomType_Room] FOREIGN KEY([roomType])
REFERENCES [dbo].[RoomTypes] ([id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [fk_RoomType_Room]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_BranchStudent] FOREIGN KEY([branch])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_BranchStudent]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_CourseStudent] FOREIGN KEY([course])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_CourseStudent]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_GenderStudent] FOREIGN KEY([gender])
REFERENCES [dbo].[Gender] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_GenderStudent]
GO
USE [master]
GO
ALTER DATABASE [HostelManagement] SET  READ_WRITE 
GO
