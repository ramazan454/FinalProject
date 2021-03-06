USE [master]
GO
/****** Object:  Database [DB_A3EC45_otelimaz]    Script Date: 9/30/2018 9:53:16 AM ******/
CREATE DATABASE [DB_A3EC45_otelimaz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_A3EC45_otelimaz_Data', FILENAME = N'H:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_A3EC45_otelimaz_DATA.mdf' , SIZE = 4096KB , MAXSIZE = 1024000KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'DB_A3EC45_otelimaz_Log', FILENAME = N'H:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_A3EC45_otelimaz_Log.LDF' , SIZE = 3072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_A3EC45_otelimaz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET  MULTI_USER 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_A3EC45_otelimaz', N'ON'
GO
USE [DB_A3EC45_otelimaz]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 9/30/2018 9:53:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[facebook] [nvarchar](100) NULL,
	[instagram] [nvarchar](100) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[location] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 9/30/2018 9:53:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[titleContent] [nvarchar](150) NULL,
	[titleImage] [nvarchar](120) NULL,
	[content] [nvarchar](max) NULL,
	[column] [nvarchar](10) NULL,
	[publishdate] [date] NULL,
	[mainImage] [nchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Information] ON 

INSERT [dbo].[Information] ([Id], [facebook], [instagram], [telephone], [email], [location]) VALUES (1, N'https://www.facebook.com/otelim.az/', N'https://www.instagram.com/otelimaz/', N'+99455 9617777', N'info@otelim.az', N'Bakı şəhəri, Seymur Məmmədov 6C')
SET IDENTITY_INSERT [dbo].[Information] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [titleContent], [titleImage], [content], [column], [publishdate], [mainImage]) VALUES (1, N'Otellərə "Ulduzlar" nəyə görə verilir???', N'1.jpg', N'İlk növbədə onu qeyd edək ki, dünyada otellərin təsnifatı üçün «qızıl standart» yoxdur."Ümumdünya Turizm Təşkilatı" bu sahədə qayda-qanun yaratmağa heç çalışmır və ölkələrə bu məsələləri müstəqil şəkildə həll etmək hüququ verir. Lakin dünyada «Hotelstars Union» kimi ümumi standartlara malik beynəlxalq birliklər var və İsveçrə, Avstriya, Almaniya, Macarıstan, Çexiya, Hollandiya, Latviya, Estoniya, Litva, Lüksemburq və Malta kimi ölkələr bu qurumun üzvləridir. Bu qurumdan «ulduz» almaq üçün otel istehlakçıların tələbləri əsasında seçilmiş 270 meyara uyğun olmalıdır. Beləliklə, otellərin hətta bir bəndə uyğun gəlməməsi belə binanın fasadına növbəti ulduzu bərkitməyə imkan verməyəcək. Otellər ulduzlara görə aşağıdakı kimi kateqoriyalanır.1Ulduz – Turist oteli: bütün otaqlarda duş və ya vanna otağı, ayaqyolu var, otaq hər gün yığışdırılır, idarəetmə pultu ilə televizor, stol, stul, sabun və duş geli, qəbul-yerləşdirmə xidməti, qonaqlar üçün telefon, səhər yeməyi.

2Ulduz – Standart: yuxarıda göstərilən siyahıya bufet-səhər yeməyi, kitab oxumaq üçün çarpayı yanında lampa və ya bra, vanna otağında dəsmal, paltar rəfləri, gigiyena vasitələri əlavə olunmalıdır.


3Ulduz – Rahat: 14 saat ərzində fəaliyyət göstərən qəbul-yerləşdirmə xidməti, baqaj xidməti, otaqlarda içkilər və telefonlar, İnternetə çıxış, qızdırıcı, fen və vanna otağında salfetlər, böyük güzgü, çamadan, yastıq və ədyalın saxlanması üçün yer.

4Ulduz - Birinci dərəcəli: 18 saat ərzində fəaliyyət göstərən qəbul-yerləşdirmə xidməti, kreslo və içkilər olan lobbi, bufet-səhər yeməyi, menyu və yeməyin otağa gətirilməsi, sutka ərzində fasiləsiz olaraq mini-bar və içkilər, kosmetik məhsullar, «a la carte» tipli restoran (əlavə ödənişlə).

5Ulduz – Ali kateqoriyalı, lüks: sutka ərzində fasiləsiz qəbul-yerləşdirmə xidməti, qapıçı, avtomobil dayanacağı xidməti, konsyerj xidməti, xidmətçi, geniş zal, içkilər, hər bir qonağın şəxsən salamlanması, otaqda gül və ya hədiyyələrlə qarşılanma, flakonlarda şəxsi gigiyena vasitələri, otaqdan İnternetə çıxış, seyf, paltar ütülənməsi və ayaqqabıların təmizlənməsi xidmətləri.', N'first', CAST(N'2018-09-06' AS Date), N'12.jpg                                                                                                                  ')
INSERT [dbo].[News] ([Id], [titleContent], [titleImage], [content], [column], [publishdate], [mainImage]) VALUES (2, N'Beş səbəbə görə Azərbaycana getmək mütləq lazımdır..', N'2.jpg', N'Bu sözlər “The Washington Times” qəzetində Azərbaycan haqqında dərc olunan məqalənin başlığında qeyd olunub. TravelNews.Az AZƏRTAC-a -a istinadən xəbər verir ki, məqalədə Qafqaz dağları ilə Xəzər dənizi arasında yerləşən Azərbaycanın tez-tez “Odlar yurdu”, paytaxt Bakının isə “Şərqin Parisi” adlandırıldığı qeyd olunur.Vurğulanır ki, birinci səbəb regionun digər ölkələri ilə müqayisədə Azərbaycan vizasını asanlıqla almağın mümkünlüyüdür. 2017-ci ilin iyunundan ASAN sistemi vasitəsilə viza almaq müddəti üç gündən üç saata endirilib.İkinci səbəb ölkənin unikal coğrafi mövqeyidir. Materialda qeyd edilir ki, “mədəniyyətlər və sivilizasiyalar Bakıda görüşür”. Yarımadada yerləşən Bakı arzular şəhəridir. Azərbaycan paytaxtında orta əsrlər memarlıq inciləri ultramüasir binalarla, o cümlədən məşhur memar Zaha Hadidin layihəsi əsasında tikilmiş və dünyada tanınan Heydər Əliyev Mərkəzi ilə yanaşı dayanır.Üçüncü səbəb ölkənin görməli yerləri və təbiətidir. Bakı ilə yanaşı, şəhərin ətrafında da görməli yerlər var. Məsələn, Qobustan Milli Parkına, Suraxanı qəsəbəsində “Atəşgah” məbədinə getmək, palçıq vulkanlarına baxmaq. Zərdüştilik məbədi olan “Atəşgah” Hindistan və dünyanın hər yerindən zəvvarları özünə cəlb edir. Müəllif dördüncü səbəb kimi ölkənin zəngin idman həyatını qeyd edir. “İdmançılar idman yarışlarında öz istedadlarını göstərmək üçün Azərbaycanı bütün dünyada ideal yer hesab edirlər”, – deyə məqalədə bildirilir. Təkcə son illər Azərbaycanda bir neçə beynəlxalq tədbir, o cümlədən Ümumdünya Şahmat Olimpiadası, ilk Avropa Oyunları, gənclər arasında Avropa futbol çempionatı, IV İslam Həmrəyliyi Oyunları, atıcılıq, voleybol üzrə Avropa çempionatları, gimnastika üzrə dünya çempionatı və digər yarışlar keçirilib. Artıq ikinci ildir ki, Formula-1 yarışlarının Qran-Pri mərhələlərindən biri Bakıda keçirilir. Materialda diqqətə çatdırılır ki, tezliklə Bakıda Avropa futbol çempionatının dörd matçı, idman kapoeyrası üzrə dünya çempionatı və digər nüfuzlu tədbirlər keçiriləcək.Nəhayət, beşinci səbəb yerli və beynəlxalq brendlərin iştirakı ilə alqı-satqı zamanı vergi tutulmayan beynəlxalq ticarət yarmarkalarının keçirilməsidir.Bundan başqa, milli mətbəxin ləziz nemətlərini dadmaq, UNESCO tərəfindən bəşəriyyətin qeyri-maddi mədəni irsi elan edilmiş muğamı dinləmək və bir çox digər səbəblər var ki, onlara görə Azərbaycana getməyinə dəyər.', N'first', CAST(N'2018-10-09' AS Date), N'11.jpg                                                                                                                  ')
INSERT [dbo].[News] ([Id], [titleContent], [titleImage], [content], [column], [publishdate], [mainImage]) VALUES (3, N'Azərbaycanda milli parklara səf­ər edən turistlərin sayı sürətlə artıb.', N'3.jpg', N'TravelNews.Az Trend-ə istinadən xəbər verir ki, bunu Ekologiya v­ə Təbii Sərvətlər Naz­irliyinin Bioloji Müx­təlifliyin Qorunması ­və Xüsusi Mühafizə Ol­unan Təbiət Əraziləri­nin İnkişafı Departam­entinin direktor müav­ini Hikmət Əlizadə de­yib. O bildirib ki, 2012-ci ildə ölkəyə milli parklara 1500-2000 turist gəlirdisə, hazırda bu rəqəm 196 min 84 nəfərə çatıb: “Turizmin ə­sas qolu eko-turi­zmdir, bu növ səyahət­in təşkil olunması hə­m zövq almaq, həm də ­maarifləndirmə üçündü­r. Hər bir təbiət əra­zisinə səfər etmək ol­ar, amma eko-turizm ç­ərçivəsində bunu səfə­rlər daha çox tənziml­ənir və bu cür səfərl­ərdə təbiətə az zərər­ dəyir”.

H.Əlizadə qeyd edib ­ki, Azərbaycan ərazis­inin 10.3 faizi mühaf­izə altındadır ki, onun­ da 3 faizi milli parkdı­r.', N'second', CAST(N'2018-05-09' AS Date), N'13.jpg                                                                                                                  ')
INSERT [dbo].[News] ([Id], [titleContent], [titleImage], [content], [column], [publishdate], [mainImage]) VALUES (4, N'Cari ilin noyabrından BƏƏ-də “Tax Free” sistemi tətbiq ediləcək', N'4.jpg', N'Birləşmiş Ərəb Əmirliklərinin (BƏƏ) Federal Vergi İdarəsi bildirib ki, 2018-ci ilin noyabrından turistlər üçün əlavə dəyər vergisinin (ƏDV) qaytarılması proseduru həyata keçiriləcək. Turizm.fins.az xəbər verir ki, bu əməliyyatların yerinə yetirilməsi üçün eksklüziv operator kimi “Planet” beynəlxalq şirkəti seçilib. BƏƏ-də yerli tərəfdaşları ilə əməkdaşlıq edən bu şirkət “SpecialPurposeVehicle” adlı ayrıca müəssisə yaradıb. Qeyd olunur ki, sistemdə qeydə alınan və BƏƏ-dəki mağazalardan bazarlıq edən turistlər ƏDV-nin qaytarılmasını rəsmiləşdirə bilərlər. Həmçinin əməkdaşın iştirakı olmadan elektron sistem vasitəsilə ƏDV-nin qaytarılması imkanları da nəzərdə tutulub.', N'third', CAST(N'2018-06-09' AS Date), N'14.jpg                                                                                                                  ')
SET IDENTITY_INSERT [dbo].[News] OFF
USE [master]
GO
ALTER DATABASE [DB_A3EC45_otelimaz] SET  READ_WRITE 
GO
