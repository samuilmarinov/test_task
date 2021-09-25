# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.32)
# Database: testdb
# Generation Time: 2021-09-23 21:44:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table applications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `applications`;

CREATE TABLE `applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `charity_id` bigint(20) unsigned NOT NULL,
  `stage_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applications_user_id_foreign` (`user_id`),
  KEY `applications_charity_id_foreign` (`charity_id`),
  KEY `applications_stage_id_foreign` (`stage_id`),
  CONSTRAINT `applications_charity_id_foreign` FOREIGN KEY (`charity_id`) REFERENCES `charities` (`id`),
  CONSTRAINT `applications_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`),
  CONSTRAINT `applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;

INSERT INTO `applications` (`id`, `user_id`, `charity_id`, `stage_id`, `created_at`, `updated_at`)
VALUES
	(1,2,1,3,'2021-09-23 20:37:57','2021-09-23 21:36:49'),
	(2,1,4,1,'2021-09-23 20:38:17','2021-09-23 20:38:17'),
	(3,3,9,1,'2021-09-23 20:39:22','2021-09-23 20:39:22'),
	(4,1,1,1,'2021-09-23 20:42:51','2021-09-23 21:27:27'),
	(5,2,2,1,'2021-09-23 20:45:23','2021-09-23 20:45:23'),
	(10,3,3,1,'2021-09-23 21:28:35','2021-09-23 21:28:35'),
	(11,2,8,1,'2021-09-23 21:36:05','2021-09-23 21:36:05');

/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table charities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `charities`;

CREATE TABLE `charities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `charity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int(11) NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `charities_country_id_foreign` (`country_id`),
  CONSTRAINT `charities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `charities` WRITE;
/*!40000 ALTER TABLE `charities` DISABLE KEYS */;

INSERT INTO `charities` (`id`, `charity_name`, `is_approved`, `country_id`, `created_at`, `updated_at`)
VALUES
	(1,'My Giving Account',1,223,NULL,NULL),
	(2,'Oxford Kidney Unit Trust Fund',1,223,NULL,NULL),
	(3,'Human Values Foundation',0,221,NULL,NULL),
	(4,'Mudlarks Community Garden',0,150,NULL,NULL),
	(5,'Belfast Bible College',0,223,NULL,NULL),
	(6,'CILIP Career Development Group',0,223,NULL,NULL),
	(7,'The Inga Foundation',0,223,NULL,NULL),
	(8,'GMGA1',0,100,NULL,NULL),
	(9,'GMGA2',0,223,NULL,NULL),
	(10,'Amigos Worldwide',0,211,NULL,NULL),
	(11,'CAF charity account',0,223,NULL,NULL);

/*!40000 ALTER TABLE `charities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `created_at`, `updated_at`)
VALUES
	(1,'AFGHANISTAN','AFG',NULL,NULL),
	(2,'ALBANIA','ALB',NULL,NULL),
	(3,'ALGERIA','DZA',NULL,NULL),
	(4,'AMERICAN SAMOA','ASM',NULL,NULL),
	(5,'ANDORRA','AND',NULL,NULL),
	(6,'ANGOLA','AGO',NULL,NULL),
	(7,'ANGUILLA','AIA',NULL,NULL),
	(8,'ANTARCTICA','ATA',NULL,NULL),
	(9,'ANTIGUA AND BARBUDA','ATG',NULL,NULL),
	(10,'ARGENTINA','ARG',NULL,NULL),
	(11,'ARMENIA','ARM',NULL,NULL),
	(12,'ARUBA','ABW',NULL,NULL),
	(13,'AUSTRALIA','AUS',NULL,NULL),
	(14,'AUSTRIA','AUT',NULL,NULL),
	(15,'AZERBAIJAN','AZE',NULL,NULL),
	(16,'BAHAMAS','BHS',NULL,NULL),
	(17,'BAHRAIN','BHR',NULL,NULL),
	(18,'BANGLADESH','BGD',NULL,NULL),
	(19,'BARBADOS','BRB',NULL,NULL),
	(20,'BELARUS','BLR',NULL,NULL),
	(21,'BELGIUM','BEL',NULL,NULL),
	(22,'BELIZE','BLZ',NULL,NULL),
	(23,'BENIN','BEN',NULL,NULL),
	(24,'BERMUDA','BMU',NULL,NULL),
	(25,'BHUTAN','BTN',NULL,NULL),
	(26,'BOLIVIA','BOL',NULL,NULL),
	(27,'BOSNIA AND HERZEGOVINA','BIH',NULL,NULL),
	(28,'BOTSWANA','BWA',NULL,NULL),
	(29,'BOUVET ISLAND','BVT',NULL,NULL),
	(30,'BRAZIL','BRA',NULL,NULL),
	(31,'BRITISH INDIAN OCEAN TERRITORY','IOT',NULL,NULL),
	(32,'BRUNEI DARUSSALAM','BRN',NULL,NULL),
	(33,'BULGARIA','BGR',NULL,NULL),
	(34,'BURKINA FASO','BFA',NULL,NULL),
	(35,'BURUNDI','BDI',NULL,NULL),
	(36,'CAMBODIA','KHM',NULL,NULL),
	(37,'CAMEROON','CMR',NULL,NULL),
	(38,'CANADA','CAN',NULL,NULL),
	(39,'CAPE VERDE','CPV',NULL,NULL),
	(40,'CAYMAN ISLANDS','CYM',NULL,NULL),
	(41,'CENTRAL AFRICAN REPUBLIC','CAF',NULL,NULL),
	(42,'CHAD','TCD',NULL,NULL),
	(43,'CHILE','CHL',NULL,NULL),
	(44,'CHINA','CHN',NULL,NULL),
	(45,'CHRISTMAS ISLAND','CXR',NULL,NULL),
	(46,'COCOS (KEELING) ISLANDS','CCK',NULL,NULL),
	(47,'COLOMBIA','COL',NULL,NULL),
	(48,'COMOROS','COM',NULL,NULL),
	(49,'CONGO','COG',NULL,NULL),
	(50,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','COD',NULL,NULL),
	(51,'COOK ISLANDS','COK',NULL,NULL),
	(52,'COSTA RICA','CRI',NULL,NULL),
	(53,'COTE D\'IVOIRE','CIV',NULL,NULL),
	(54,'CROATIA','HRV',NULL,NULL),
	(55,'CUBA','CUB',NULL,NULL),
	(56,'CYPRUS','CYP',NULL,NULL),
	(57,'CZECH REPUBLIC','CZE',NULL,NULL),
	(58,'DENMARK','DNK',NULL,NULL),
	(59,'DJIBOUTI','DJI',NULL,NULL),
	(60,'DOMINICA','DMA',NULL,NULL),
	(61,'DOMINICAN REPUBLIC','DOM',NULL,NULL),
	(62,'ECUADOR','ECU',NULL,NULL),
	(63,'EGYPT','EGY',NULL,NULL),
	(64,'EL SALVADOR','SLV',NULL,NULL),
	(65,'EQUATORIAL GUINEA','GNQ',NULL,NULL),
	(66,'ERITREA','ERI',NULL,NULL),
	(67,'ESTONIA','EST',NULL,NULL),
	(68,'ETHIOPIA','ETH',NULL,NULL),
	(69,'FALKLAND ISLANDS (MALVINAS)','FLK',NULL,NULL),
	(70,'FAROE ISLANDS','FRO',NULL,NULL),
	(71,'FIJI','FJI',NULL,NULL),
	(72,'FINLAND','FIN',NULL,NULL),
	(73,'FRANCE','FRA',NULL,NULL),
	(74,'FRENCH GUIANA','GUF',NULL,NULL),
	(75,'FRENCH POLYNESIA','PYF',NULL,NULL),
	(76,'FRENCH SOUTHERN TERRITORIES','ATF',NULL,NULL),
	(77,'GABON','GAB',NULL,NULL),
	(78,'GAMBIA','GMB',NULL,NULL),
	(79,'GEORGIA','GEO',NULL,NULL),
	(80,'GERMANY','DEU',NULL,NULL),
	(81,'GHANA','GHA',NULL,NULL),
	(82,'GIBRALTAR','GIB',NULL,NULL),
	(83,'GREECE','GRC',NULL,NULL),
	(84,'GREENLAND','GRL',NULL,NULL),
	(85,'GRENADA','GRD',NULL,NULL),
	(86,'GUADELOUPE','GLP',NULL,NULL),
	(87,'GUAM','GUM',NULL,NULL),
	(88,'GUATEMALA','GTM',NULL,NULL),
	(89,'GUINEA','GIN',NULL,NULL),
	(90,'GUINEA-BISSAU','GNB',NULL,NULL),
	(91,'GUYANA','GUY',NULL,NULL),
	(92,'HAITI','HTI',NULL,NULL),
	(93,'HEARD ISLAND AND MCDONALD ISLANDS','HMD',NULL,NULL),
	(94,'HOLY SEE (VATICAN CITY STATE)','VAT',NULL,NULL),
	(95,'HONDURAS','HND',NULL,NULL),
	(96,'HONG KONG','HKG',NULL,NULL),
	(97,'HUNGARY','HUN',NULL,NULL),
	(98,'ICELAND','ISL',NULL,NULL),
	(99,'INDIA','IND',NULL,NULL),
	(100,'INDONESIA','IDN',NULL,NULL),
	(101,'IRAN, ISLAMIC REPUBLIC OF','IRN',NULL,NULL),
	(102,'IRAQ','IRQ',NULL,NULL),
	(103,'IRELAND','IRL',NULL,NULL),
	(104,'ISRAEL','ISR',NULL,NULL),
	(105,'ITALY','ITA',NULL,NULL),
	(106,'JAMAICA','JAM',NULL,NULL),
	(107,'JAPAN','JPN',NULL,NULL),
	(108,'JORDAN','JOR',NULL,NULL),
	(109,'KAZAKHSTAN','KAZ',NULL,NULL),
	(110,'KENYA','KEN',NULL,NULL),
	(111,'KIRIBATI','KIR',NULL,NULL),
	(112,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','PRK',NULL,NULL),
	(113,'KOREA, REPUBLIC OF','KOR',NULL,NULL),
	(114,'KUWAIT','KWT',NULL,NULL),
	(115,'KYRGYZSTAN','KGZ',NULL,NULL),
	(116,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LAO',NULL,NULL),
	(117,'LATVIA','LVA',NULL,NULL),
	(118,'LEBANON','LBN',NULL,NULL),
	(119,'LESOTHO','LSO',NULL,NULL),
	(120,'LIBERIA','LBR',NULL,NULL),
	(121,'LIBYAN ARAB JAMAHIRIYA','LBY',NULL,NULL),
	(122,'LIECHTENSTEIN','LIE',NULL,NULL),
	(123,'LITHUANIA','LTU',NULL,NULL),
	(124,'LUXEMBOURG','LUX',NULL,NULL),
	(125,'MACAO','MAC',NULL,NULL),
	(126,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MKD',NULL,NULL),
	(127,'MADAGASCAR','MDG',NULL,NULL),
	(128,'MALAWI','MWI',NULL,NULL),
	(129,'MALAYSIA','MYS',NULL,NULL),
	(130,'MALDIVES','MDV',NULL,NULL),
	(131,'MALI','MLI',NULL,NULL),
	(132,'MALTA','MLT',NULL,NULL),
	(133,'MARSHALL ISLANDS','MHL',NULL,NULL),
	(134,'MARTINIQUE','MTQ',NULL,NULL),
	(135,'MAURITANIA','MRT',NULL,NULL),
	(136,'MAURITIUS','MUS',NULL,NULL),
	(137,'MAYOTTE','MYT',NULL,NULL),
	(138,'MEXICO','MEX',NULL,NULL),
	(139,'MICRONESIA, FEDERATED STATES OF','FSM',NULL,NULL),
	(140,'MOLDOVA, REPUBLIC OF','MDA',NULL,NULL),
	(141,'MONACO','MCO',NULL,NULL),
	(142,'MONGOLIA','MNG',NULL,NULL),
	(143,'MONTSERRAT','MSR',NULL,NULL),
	(144,'MOROCCO','MAR',NULL,NULL),
	(145,'MOZAMBIQUE','MOZ',NULL,NULL),
	(146,'MYANMAR','MMR',NULL,NULL),
	(147,'NAMIBIA','NAM',NULL,NULL),
	(148,'NAURU','NRU',NULL,NULL),
	(149,'NEPAL','NPL',NULL,NULL),
	(150,'NETHERLANDS','NLD',NULL,NULL),
	(151,'NETHERLANDS ANTILLES','ANT',NULL,NULL),
	(152,'NEW CALEDONIA','NCL',NULL,NULL),
	(153,'NEW ZEALAND','NZL',NULL,NULL),
	(154,'NICARAGUA','NIC',NULL,NULL),
	(155,'NIGER','NER',NULL,NULL),
	(156,'NIGERIA','NGA',NULL,NULL),
	(157,'NIUE','NIU',NULL,NULL),
	(158,'NORFOLK ISLAND','NFK',NULL,NULL),
	(159,'NORTHERN MARIANA ISLANDS','MNP',NULL,NULL),
	(160,'NORWAY','NOR',NULL,NULL),
	(161,'OMAN','OMN',NULL,NULL),
	(162,'PAKISTAN','PAK',NULL,NULL),
	(163,'PALAU','PLW',NULL,NULL),
	(164,'PANAMA','PAN',NULL,NULL),
	(165,'PAPUA NEW GUINEA','PNG',NULL,NULL),
	(166,'PARAGUAY','PRY',NULL,NULL),
	(167,'PERU','PER',NULL,NULL),
	(168,'PHILIPPINES','PHL',NULL,NULL),
	(169,'PITCAIRN','PCN',NULL,NULL),
	(170,'POLAND','POL',NULL,NULL),
	(171,'PORTUGAL','PRT',NULL,NULL),
	(172,'PUERTO RICO','PRI',NULL,NULL),
	(173,'QATAR','QAT',NULL,NULL),
	(174,'REUNION','REU',NULL,NULL),
	(175,'ROMANIA','ROU',NULL,NULL),
	(176,'RUSSIAN FEDERATION','RUS',NULL,NULL),
	(177,'RWANDA','RWA',NULL,NULL),
	(178,'SAINT HELENA','SHN',NULL,NULL),
	(179,'SAINT KITTS AND NEVIS','KNA',NULL,NULL),
	(180,'SAINT LUCIA','LCA',NULL,NULL),
	(181,'SAINT PIERRE AND MIQUELON','SPM',NULL,NULL),
	(182,'SAINT VINCENT AND THE GRENADINES','VCT',NULL,NULL),
	(183,'SAMOA','WSM',NULL,NULL),
	(184,'SAN MARINO','SMR',NULL,NULL),
	(185,'SAO TOME AND PRINCIPE','STP',NULL,NULL),
	(186,'SAUDI ARABIA','SAU',NULL,NULL),
	(187,'SENEGAL','SEN',NULL,NULL),
	(188,'SEYCHELLES','SYC',NULL,NULL),
	(189,'SIERRA LEONE','SLE',NULL,NULL),
	(190,'SINGAPORE','SGP',NULL,NULL),
	(191,'SLOVAKIA','SVK',NULL,NULL),
	(192,'SLOVENIA','SVN',NULL,NULL),
	(193,'SOLOMON ISLANDS','SLB',NULL,NULL),
	(194,'SOMALIA','SOM',NULL,NULL),
	(195,'SOUTH AFRICA','ZAF',NULL,NULL),
	(196,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','SGS',NULL,NULL),
	(197,'SPAIN','ESP',NULL,NULL),
	(198,'SRI LANKA','LKA',NULL,NULL),
	(199,'SUDAN','SDN',NULL,NULL),
	(200,'SURINAME','SUR',NULL,NULL),
	(201,'SVALBARD AND JAN MAYEN','SJM',NULL,NULL),
	(202,'SWAZILAND','SWZ',NULL,NULL),
	(203,'SWEDEN','SWE',NULL,NULL),
	(204,'SWITZERLAND','CHE',NULL,NULL),
	(205,'SYRIAN ARAB REPUBLIC','SYR',NULL,NULL),
	(206,'TAIWAN, PROVINCE OF CHINA','TWN',NULL,NULL),
	(207,'TAJIKISTAN','TJK',NULL,NULL),
	(208,'TANZANIA, UNITED REPUBLIC OF','TZA',NULL,NULL),
	(209,'THAILAND','THA',NULL,NULL),
	(210,'TIMOR-LESTE','TLS',NULL,NULL),
	(211,'TOGO','TGO',NULL,NULL),
	(212,'TOKELAU','TKL',NULL,NULL),
	(213,'TONGA','TON',NULL,NULL),
	(214,'TRINIDAD AND TOBAGO','TTO',NULL,NULL),
	(215,'TUNISIA','TUN',NULL,NULL),
	(216,'TURKEY','TUR',NULL,NULL),
	(217,'TURKMENISTAN','TKM',NULL,NULL),
	(218,'TURKS AND CAICOS ISLANDS','TCA',NULL,NULL),
	(219,'TUVALU','TUV',NULL,NULL),
	(220,'UGANDA','UGA',NULL,NULL),
	(221,'UKRAINE','UKR',NULL,NULL),
	(222,'UNITED ARAB EMIRATES','ARE',NULL,NULL),
	(223,'UNITED KINGDOM','GBR',NULL,NULL),
	(224,'UNITED STATES','USA',NULL,NULL),
	(225,'URUGUAY','URY',NULL,NULL),
	(226,'UZBEKISTAN','UZB',NULL,NULL),
	(227,'VANUATU','VUT',NULL,NULL),
	(228,'VENEZUELA','VEN',NULL,NULL),
	(229,'VIET NAM','VNM',NULL,NULL),
	(230,'VIRGIN ISLANDS, BRITISH','VGB',NULL,NULL),
	(231,'VIRGIN ISLANDS, U.S.','VIR',NULL,NULL),
	(232,'WALLIS AND FUTUNA','WLF',NULL,NULL),
	(233,'WESTERN SAHARA','ESH',NULL,NULL),
	(234,'YEMEN','YEM',NULL,NULL),
	(235,'ZAMBIA','ZMB',NULL,NULL),
	(236,'ZIMBABWE','ZWE',NULL,NULL),
	(237,'JERSEY','JEY',NULL,NULL),
	(238,'GUERNSEY','GGY',NULL,NULL),
	(239,'UNKNOWN','UNK',NULL,NULL),
	(240,'ISLE OF MAN','IMN',NULL,NULL);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(2,'2021_09_23_083157_create_users_table',1),
	(3,'2021_09_23_083746_create_user_roles_table',1),
	(4,'2021_09_23_083804_create_countries_table',1),
	(5,'2021_09_23_091043_create_stages_table',1),
	(6,'2021_09_23_092233_create_charities_table',1),
	(7,'2021_09_23_092514_create_applications_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table stages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stages`;

CREATE TABLE `stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stage_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `stages` WRITE;
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;

INSERT INTO `stages` (`id`, `stage_name`, `created_at`, `updated_at`)
VALUES
	(1,'approval',NULL,NULL),
	(2,'allow',NULL,NULL),
	(3,'paid',NULL,NULL);

/*!40000 ALTER TABLE `stages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `role` enum('employee','admin','admin_applications','admin_reports') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_user_id_foreign` (`user_id`),
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;

INSERT INTO `user_roles` (`id`, `user_id`, `role`, `created_at`, `updated_at`)
VALUES
	(1,1,'employee',NULL,NULL),
	(2,2,'employee',NULL,NULL),
	(3,3,'admin',NULL,NULL),
	(4,5,'admin_applications',NULL,NULL),
	(5,5,'admin_reports',NULL,NULL),
	(6,4,'admin',NULL,NULL),
	(7,3,'admin',NULL,NULL),
	(8,4,'admin_applications',NULL,NULL);

/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `created_at`, `updated_at`)
VALUES
	(1,'Employee 1','employee1@givingforce.com',NULL,NULL),
	(2,'Employee 2','employee2@givingforce.com',NULL,NULL),
	(3,'Admin 1','admin1@givingforce.com',NULL,NULL),
	(4,'Admin 2','admin2@givingforce.com',NULL,NULL),
	(5,'Admin 3','admin3@givingforce.com',NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
