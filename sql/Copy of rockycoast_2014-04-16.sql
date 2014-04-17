# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.31)
# Database: rockycoast
# Generation Time: 2014-04-16 10:08:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table acos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acos`;

CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`)
VALUES
	(1,NULL,'',NULL,'controllers',1,432),
	(2,1,'',NULL,'Acl',2,25),
	(3,2,'',NULL,'AclActions',3,16),
	(4,3,'',NULL,'admin_index',4,5),
	(5,3,'',NULL,'admin_add',6,7),
	(6,3,'',NULL,'admin_edit',8,9),
	(7,3,'',NULL,'admin_delete',10,11),
	(8,3,'',NULL,'admin_move',12,13),
	(9,3,'',NULL,'admin_generate',14,15),
	(10,2,'',NULL,'AclPermissions',17,24),
	(11,10,'',NULL,'admin_index',18,19),
	(12,10,'',NULL,'admin_toggle',20,21),
	(13,10,'',NULL,'admin_upgrade',22,23),
	(14,1,'',NULL,'Blocks',26,55),
	(15,14,'',NULL,'Blocks',27,44),
	(16,15,'',NULL,'admin_toggle',28,29),
	(17,15,'',NULL,'admin_index',30,31),
	(18,15,'',NULL,'admin_add',32,33),
	(19,15,'',NULL,'admin_edit',34,35),
	(20,15,'',NULL,'admin_delete',36,37),
	(21,15,'',NULL,'admin_moveup',38,39),
	(22,15,'',NULL,'admin_movedown',40,41),
	(23,15,'',NULL,'admin_process',42,43),
	(24,14,'',NULL,'Regions',45,54),
	(25,24,'',NULL,'admin_index',46,47),
	(26,24,'',NULL,'admin_add',48,49),
	(27,24,'',NULL,'admin_edit',50,51),
	(28,24,'',NULL,'admin_delete',52,53),
	(29,1,'',NULL,'Comments',56,73),
	(30,29,'',NULL,'Comments',57,72),
	(31,30,'',NULL,'admin_index',58,59),
	(32,30,'',NULL,'admin_edit',60,61),
	(33,30,'',NULL,'admin_delete',62,63),
	(34,30,'',NULL,'admin_process',64,65),
	(35,30,'',NULL,'index',66,67),
	(36,30,'',NULL,'add',68,69),
	(37,30,'',NULL,'delete',70,71),
	(38,1,'',NULL,'Contacts',74,97),
	(39,38,'',NULL,'Contacts',75,86),
	(40,39,'',NULL,'admin_index',76,77),
	(41,39,'',NULL,'admin_add',78,79),
	(42,39,'',NULL,'admin_edit',80,81),
	(43,39,'',NULL,'admin_delete',82,83),
	(44,39,'',NULL,'view',84,85),
	(45,38,'',NULL,'Messages',87,96),
	(46,45,'',NULL,'admin_index',88,89),
	(47,45,'',NULL,'admin_edit',90,91),
	(48,45,'',NULL,'admin_delete',92,93),
	(49,45,'',NULL,'admin_process',94,95),
	(50,1,'',NULL,'Croogo',98,99),
	(51,1,'',NULL,'Extensions',100,143),
	(52,51,'',NULL,'ExtensionsLocales',101,112),
	(53,52,'',NULL,'admin_index',102,103),
	(54,52,'',NULL,'admin_activate',104,105),
	(55,52,'',NULL,'admin_add',106,107),
	(56,52,'',NULL,'admin_edit',108,109),
	(57,52,'',NULL,'admin_delete',110,111),
	(58,51,'',NULL,'ExtensionsPlugins',113,128),
	(59,58,'',NULL,'admin_index',114,115),
	(60,58,'',NULL,'admin_add',116,117),
	(61,58,'',NULL,'admin_delete',118,119),
	(62,58,'',NULL,'admin_toggle',120,121),
	(63,58,'',NULL,'admin_migrate',122,123),
	(64,51,'',NULL,'ExtensionsThemes',129,142),
	(65,64,'',NULL,'admin_index',130,131),
	(66,64,'',NULL,'admin_activate',132,133),
	(67,64,'',NULL,'admin_add',134,135),
	(68,64,'',NULL,'admin_editor',136,137),
	(69,64,'',NULL,'admin_save',138,139),
	(70,64,'',NULL,'admin_delete',140,141),
	(71,1,'',NULL,'FileManager',144,179),
	(72,71,'',NULL,'Attachments',145,156),
	(73,72,'',NULL,'admin_index',146,147),
	(74,72,'',NULL,'admin_add',148,149),
	(75,72,'',NULL,'admin_edit',150,151),
	(76,72,'',NULL,'admin_delete',152,153),
	(77,72,'',NULL,'admin_browse',154,155),
	(78,71,'',NULL,'FileManager',157,178),
	(79,78,'',NULL,'admin_index',158,159),
	(80,78,'',NULL,'admin_browse',160,161),
	(81,78,'',NULL,'admin_editfile',162,163),
	(82,78,'',NULL,'admin_upload',164,165),
	(83,78,'',NULL,'admin_delete_file',166,167),
	(84,78,'',NULL,'admin_delete_directory',168,169),
	(85,78,'',NULL,'admin_rename',170,171),
	(86,78,'',NULL,'admin_create_directory',172,173),
	(87,78,'',NULL,'admin_create_file',174,175),
	(88,78,'',NULL,'admin_chmod',176,177),
	(89,1,'',NULL,'Install',180,193),
	(90,89,'',NULL,'Install',181,192),
	(91,90,'',NULL,'index',182,183),
	(92,90,'',NULL,'database',184,185),
	(93,90,'',NULL,'data',186,187),
	(94,90,'',NULL,'adminuser',188,189),
	(95,90,'',NULL,'finish',190,191),
	(96,1,'',NULL,'Menus',194,223),
	(97,96,'',NULL,'Links',195,212),
	(98,97,'',NULL,'admin_toggle',196,197),
	(99,97,'',NULL,'admin_index',198,199),
	(100,97,'',NULL,'admin_add',200,201),
	(101,97,'',NULL,'admin_edit',202,203),
	(102,97,'',NULL,'admin_delete',204,205),
	(103,97,'',NULL,'admin_moveup',206,207),
	(104,97,'',NULL,'admin_movedown',208,209),
	(105,97,'',NULL,'admin_process',210,211),
	(106,96,'',NULL,'Menus',213,222),
	(107,106,'',NULL,'admin_index',214,215),
	(108,106,'',NULL,'admin_add',216,217),
	(109,106,'',NULL,'admin_edit',218,219),
	(110,106,'',NULL,'admin_delete',220,221),
	(111,1,'',NULL,'Meta',224,225),
	(112,1,'',NULL,'Migrations',226,227),
	(113,1,'',NULL,'Nodes',228,261),
	(114,113,'',NULL,'Nodes',229,260),
	(115,114,'',NULL,'admin_toggle',230,231),
	(116,114,'',NULL,'admin_index',232,233),
	(117,114,'',NULL,'admin_create',234,235),
	(118,114,'',NULL,'admin_add',236,237),
	(119,114,'',NULL,'admin_edit',238,239),
	(120,114,'',NULL,'admin_update_paths',240,241),
	(121,114,'',NULL,'admin_delete',242,243),
	(122,114,'',NULL,'admin_delete_meta',244,245),
	(123,114,'',NULL,'admin_add_meta',246,247),
	(124,114,'',NULL,'admin_process',248,249),
	(125,114,'',NULL,'index',250,251),
	(126,114,'',NULL,'term',252,253),
	(127,114,'',NULL,'promoted',254,255),
	(128,114,'',NULL,'search',256,257),
	(129,114,'',NULL,'view',258,259),
	(130,1,'',NULL,'Search',262,263),
	(131,1,'',NULL,'Settings',264,301),
	(132,131,'',NULL,'Languages',265,280),
	(133,132,'',NULL,'admin_index',266,267),
	(134,132,'',NULL,'admin_add',268,269),
	(135,132,'',NULL,'admin_edit',270,271),
	(136,132,'',NULL,'admin_delete',272,273),
	(137,132,'',NULL,'admin_moveup',274,275),
	(138,132,'',NULL,'admin_movedown',276,277),
	(139,132,'',NULL,'admin_select',278,279),
	(140,131,'',NULL,'Settings',281,300),
	(141,140,'',NULL,'admin_dashboard',282,283),
	(142,140,'',NULL,'admin_index',284,285),
	(143,140,'',NULL,'admin_view',286,287),
	(144,140,'',NULL,'admin_add',288,289),
	(145,140,'',NULL,'admin_edit',290,291),
	(146,140,'',NULL,'admin_delete',292,293),
	(147,140,'',NULL,'admin_prefix',294,295),
	(148,140,'',NULL,'admin_moveup',296,297),
	(149,140,'',NULL,'admin_movedown',298,299),
	(150,1,'',NULL,'Taxonomy',302,341),
	(151,150,'',NULL,'Terms',303,316),
	(152,151,'',NULL,'admin_index',304,305),
	(153,151,'',NULL,'admin_add',306,307),
	(154,151,'',NULL,'admin_edit',308,309),
	(155,151,'',NULL,'admin_delete',310,311),
	(156,151,'',NULL,'admin_moveup',312,313),
	(157,151,'',NULL,'admin_movedown',314,315),
	(158,150,'',NULL,'Types',317,326),
	(159,158,'',NULL,'admin_index',318,319),
	(160,158,'',NULL,'admin_add',320,321),
	(161,158,'',NULL,'admin_edit',322,323),
	(162,158,'',NULL,'admin_delete',324,325),
	(163,150,'',NULL,'Vocabularies',327,340),
	(164,163,'',NULL,'admin_index',328,329),
	(165,163,'',NULL,'admin_add',330,331),
	(166,163,'',NULL,'admin_edit',332,333),
	(167,163,'',NULL,'admin_delete',334,335),
	(168,163,'',NULL,'admin_moveup',336,337),
	(169,163,'',NULL,'admin_movedown',338,339),
	(170,1,'',NULL,'Ckeditor',342,343),
	(171,1,'',NULL,'Users',344,389),
	(172,171,'',NULL,'Roles',345,354),
	(173,172,'',NULL,'admin_index',346,347),
	(174,172,'',NULL,'admin_add',348,349),
	(175,172,'',NULL,'admin_edit',350,351),
	(176,172,'',NULL,'admin_delete',352,353),
	(177,171,'',NULL,'Users',355,388),
	(178,177,'',NULL,'admin_index',356,357),
	(179,177,'',NULL,'admin_add',358,359),
	(180,177,'',NULL,'admin_edit',360,361),
	(181,177,'',NULL,'admin_reset_password',362,363),
	(182,177,'',NULL,'admin_delete',364,365),
	(183,177,'',NULL,'admin_login',366,367),
	(184,177,'',NULL,'admin_logout',368,369),
	(185,177,'',NULL,'index',370,371),
	(186,177,'',NULL,'add',372,373),
	(187,177,'',NULL,'activate',374,375),
	(188,177,'',NULL,'edit',376,377),
	(189,177,'',NULL,'forgot',378,379),
	(190,177,'',NULL,'reset',380,381),
	(191,177,'',NULL,'login',382,383),
	(192,177,'',NULL,'logout',384,385),
	(193,177,'',NULL,'view',386,387),
	(196,1,NULL,NULL,'Pages',390,393),
	(197,196,NULL,NULL,'display',391,392),
	(198,1,NULL,NULL,'Projects',394,397),
	(199,198,NULL,NULL,'index',395,396),
	(201,1,NULL,NULL,'Rocky',398,401),
	(202,201,NULL,NULL,'index',399,400),
	(206,1,NULL,NULL,'DebugKit',402,409),
	(207,206,NULL,NULL,'ToolbarAccess',403,408),
	(208,207,NULL,NULL,'history_state',404,405),
	(209,207,NULL,NULL,'sql_explain',406,407),
	(210,58,NULL,NULL,'admin_moveup',124,125),
	(211,58,NULL,NULL,'admin_movedown',126,127),
	(212,1,NULL,NULL,'Wysiwyg',410,411),
	(217,1,NULL,NULL,'ContactPage',412,417),
	(218,217,NULL,NULL,'index',413,414),
	(219,217,NULL,NULL,'save',415,416),
	(220,1,NULL,NULL,'ProjectAdmin',418,431),
	(221,220,NULL,NULL,'index',419,420),
	(222,220,NULL,NULL,'listProjects',421,422),
	(223,220,NULL,NULL,'viewProject',423,424),
	(224,220,NULL,NULL,'add',425,426),
	(225,220,NULL,NULL,'editProject',427,428),
	(226,220,NULL,NULL,'deleteProject',429,430);

/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table aros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aros`;

CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`)
VALUES
	(1,2,'Role',1,'Role-admin',3,6),
	(2,3,'Role',2,'Role-registered',2,7),
	(3,NULL,'Role',3,'Role-public',1,10),
	(4,1,'User',1,'rockyadmin',4,5),
	(5,3,'User',2,'rockypublicuser',8,9);

/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table aros_acos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aros_acos`;

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`)
VALUES
	(1,3,35,'1','1','1','1'),
	(2,3,36,'1','1','1','1'),
	(3,2,37,'1','1','1','1'),
	(4,3,44,'1','1','1','1'),
	(5,3,125,'1','1','1','1'),
	(6,3,126,'1','1','1','1'),
	(7,3,127,'1','1','1','1'),
	(8,3,128,'1','1','1','1'),
	(9,3,129,'1','1','1','1'),
	(10,2,185,'1','1','1','1'),
	(11,3,186,'1','1','1','1'),
	(12,3,187,'1','1','1','1'),
	(13,2,188,'1','1','1','1'),
	(14,3,189,'1','1','1','1'),
	(15,3,190,'1','1','1','1'),
	(16,3,191,'1','1','1','1'),
	(17,2,192,'1','1','1','1'),
	(18,2,193,'1','1','1','1'),
	(19,3,183,'1','1','1','1'),
	(20,3,199,'1','1','1','1'),
	(21,3,202,'1','1','1','1'),
	(28,3,218,'1','1','1','1'),
	(29,3,219,'1','1','1','1'),
	(30,2,218,'1','1','1','1'),
	(31,2,219,'1','1','1','1'),
	(32,3,221,'-1','-1','-1','-1'),
	(33,3,222,'-1','-1','-1','-1'),
	(34,3,223,'-1','-1','-1','-1'),
	(35,2,221,'1','1','1','1'),
	(36,2,222,'1','1','1','1'),
	(37,2,223,'1','1','1','1'),
	(38,2,224,'1','1','1','1'),
	(39,2,225,'1','1','1','1'),
	(40,2,226,'1','1','1','1');

/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blocks`;

CREATE TABLE `blocks` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;

INSERT INTO `blocks` (`id`, `region_id`, `title`, `alias`, `body`, `show_title`, `class`, `status`, `weight`, `element`, `visibility_roles`, `visibility_paths`, `visibility_php`, `params`, `updated`, `created`)
VALUES
	(3,4,'About','about','This is the content of your block. Can be modified in admin panel.',1,'',1,2,'','','','','','2009-12-20 03:07:39','2009-07-26 17:13:14'),
	(5,4,'Meta','meta','[menu:meta]',1,'',0,6,'','','','','','2014-04-15 16:41:13','2009-09-12 06:36:22'),
	(6,4,'Blogroll','blogroll','[menu:blogroll]',1,'',0,4,'','','','','','2014-04-15 16:40:33','2009-09-12 23:33:27'),
	(7,4,'Categories','categories','[vocabulary:categories type=\"blog\"]',1,'',0,3,'','','','','','2014-04-15 16:40:31','2009-10-03 16:52:50'),
	(8,4,'Search','search','',0,'',1,1,'Nodes.search','','','','','2009-12-20 03:07:39','2009-12-20 03:07:27'),
	(9,4,'Recent Posts','recent_posts','[node:recent_posts conditions=\"Node.type:blog\" order=\"Node.id DESC\" limit=\"5\"]',1,'',1,5,'','','','','','2010-04-08 21:09:31','2009-12-22 05:17:32');

/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `node_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`id`, `parent_id`, `node_id`, `user_id`, `name`, `email`, `website`, `ip`, `title`, `body`, `rating`, `status`, `notify`, `type`, `comment_type`, `lft`, `rght`, `updated`, `created`)
VALUES
	(1,NULL,1,0,'Mr Croogo','email@example.com','http://www.croogo.org','127.0.0.1','','Hi, this is the first comment.',NULL,1,0,'blog','comment',1,2,'2009-12-25 12:00:00','2009-12-25 12:00:00');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `title`, `alias`, `body`, `name`, `position`, `address`, `address2`, `state`, `country`, `postcode`, `phone`, `fax`, `email`, `message_status`, `message_archive`, `message_count`, `message_spam_protection`, `message_captcha`, `message_notify`, `status`, `updated`, `created`)
VALUES
	(1,'Webmaster','contact','Contact Point','','','','','','','','','','jaxonetic@gmail.com',1,0,0,0,0,1,1,'2014-04-16 02:36:14','2009-09-16 01:45:17');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;

INSERT INTO `languages` (`id`, `title`, `native`, `alias`, `status`, `weight`, `updated`, `created`)
VALUES
	(1,'English','English','eng',1,1,'2009-11-02 21:37:38','2009-11-02 20:52:00');

/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;

INSERT INTO `links` (`id`, `parent_id`, `menu_id`, `title`, `class`, `description`, `link`, `target`, `rel`, `status`, `lft`, `rght`, `visibility_roles`, `params`, `updated`, `created`)
VALUES
	(5,NULL,4,'About','about','','plugin:nodes/controller:nodes/action:view/type:page/slug:about','','',1,3,4,'','','2009-10-06 23:14:21','2009-08-19 12:23:33'),
	(6,NULL,4,'Contact','contact','','plugin:contacts/controller:contacts/action:view/contact','','',1,5,6,'','','2009-10-06 23:14:45','2009-08-19 12:34:56'),
	(7,NULL,3,'Home','home','','plugin:nodes/controller:nodes/action:promoted','','',1,5,6,'','','2009-10-06 21:17:06','2009-09-06 21:32:54'),
	(8,NULL,3,'About','about','','plugin:nodes/controller:nodes/action:view/type:page/slug:about','','',1,7,10,'','','2009-09-12 03:45:53','2009-09-06 21:34:57'),
	(9,8,3,'Child link','child-link','','#','','',0,8,9,'','','2009-10-06 23:13:06','2009-09-12 03:52:23'),
	(10,NULL,5,'Site Admin','site-admin','','/admin','','',1,1,2,'','','2009-09-12 06:34:09','2009-09-12 06:34:09'),
	(11,NULL,5,'Log out','log-out','','/plugin:users/controller:users/action:logout','','',1,7,8,'[\"1\",\"2\"]','','2009-09-12 06:35:22','2009-09-12 06:34:41'),
	(12,NULL,6,'Croogo','croogo','','http://www.croogo.org','','',1,3,4,'','','2009-09-12 23:31:59','2009-09-12 23:31:59'),
	(14,NULL,6,'CakePHP','cakephp','','http://www.cakephp.org','','',1,1,2,'','','2009-10-07 03:25:25','2009-09-12 23:38:43'),
	(15,NULL,3,'Contact','contact','','/plugin:contacts/controller:contacts/action:view/contact','','',1,11,12,'','','2009-09-16 07:54:13','2009-09-16 07:53:33'),
	(16,NULL,5,'Entries (RSS)','entries-rss','','/promoted.rss','','',1,3,4,'','','2009-10-27 17:46:22','2009-10-27 17:46:22'),
	(17,NULL,5,'Comments (RSS)','comments-rss','','/comments.rss','','',1,5,6,'','','2009-10-27 17:46:54','2009-10-27 17:46:54');

/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `title`, `alias`, `class`, `description`, `status`, `weight`, `link_count`, `params`, `updated`, `created`)
VALUES
	(3,'Main Menu','main','','',1,NULL,4,'','2009-08-19 12:21:06','2009-07-22 01:49:53'),
	(4,'Footer','footer','','',1,NULL,2,'','2009-08-19 12:22:42','2009-08-19 12:22:42'),
	(5,'Meta','meta','','',1,NULL,4,'','2009-09-12 06:33:29','2009-09-12 06:33:29'),
	(6,'Blogroll','blogroll','','',1,NULL,2,'','2009-09-12 23:30:24','2009-09-12 23:30:24');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `contact_id`, `name`, `email`, `title`, `body`, `website`, `phone`, `address`, `message_type`, `status`, `updated`, `created`)
VALUES
	(2,0,'hjkl','a@b.com','huioh','iuhlujl',NULL,'324-143-2314','',NULL,0,'2014-04-15 23:35:15','2014-04-15 23:35:15'),
	(3,0,'Alonzo','jaxonetic@gmail.com','akkkaaaavg','vhjlbhjlkbjklnjkl;.',NULL,'324-143-2314','',NULL,0,'2014-04-16 00:22:02','2014-04-16 00:22:02'),
	(4,0,'Alonzo','jaxonetic@gmail.com','akkkaaaa','babbababa',NULL,'324-143-2314','',NULL,0,'2014-04-16 00:37:02','2014-04-16 00:37:02'),
	(5,0,'Alonzo','jaxonetic@gmail.com','akkkaaaa','dfadfafdsa',NULL,'324-143-2314','',NULL,0,'2014-04-16 00:39:13','2014-04-16 00:39:13'),
	(6,0,'Alonzo','jaxonetic@gmail.com','uil','gf',NULL,'324-143-2314','',NULL,0,'2014-04-16 00:57:17','2014-04-16 00:57:17'),
	(7,0,'Alonzo','jaxonetic@gmail.com','dsfad','dsfadsf',NULL,'sdafd','dsfad',NULL,0,'2014-04-16 01:05:58','2014-04-16 01:05:58'),
	(8,0,'Alonzo','jaxonetic@gmail.com','hjlhj','lhj',NULL,'324-143-2314','dafaf',NULL,0,'2014-04-16 01:18:33','2014-04-16 01:18:33'),
	(9,0,'Alonzo','jaxonetic@gmail.com','dsafdsaf','dsffadsf',NULL,'324-143-2314','afdsaf',NULL,0,'2014-04-16 01:35:32','2014-04-16 01:35:32'),
	(10,0,'Alonzo','jaxonetic@gmail.com','akkkaaaa','dfag',NULL,'324-143-2314','',NULL,0,'2014-04-16 01:41:04','2014-04-16 01:41:04'),
	(11,0,'bhjkbhjgh','jaxonetic@gmail.com',' mkln',' njkbnjklbjnk',NULL,'324-143-2314','',NULL,0,'2014-04-16 01:53:31','2014-04-16 01:53:31'),
	(12,0,'Alonzo','jaxonetic@gmail.com','akkkaaaa','m,',NULL,'324-143-2314','',NULL,0,'2014-04-16 01:56:35','2014-04-16 01:56:35'),
	(13,0,'Alonzo Jackson','jaxonetic@gmail.com','About this and that','Things and things',NULL,'324-143-2314','',NULL,0,'2014-04-16 02:24:43','2014-04-16 02:24:43'),
	(14,0,'Alonzo Jackson','jaxonetic@gmail.com','My subj','hmmmmmmm',NULL,'324-143-2314','ftjfghjkvghjkbhjkbhjkljk',NULL,0,'2014-04-16 02:32:05','2014-04-16 02:32:05'),
	(15,0,'Last Email Test','a@b.com','About this and that','xfghghjb hjb jk ln kl; mkl;mkl ;nmk l;mk ;mk l;mkl ;ml ;ml ;mk lnjkbhj',NULL,'324-143-2314','bjk hjl jh lj kl',NULL,0,'2014-04-16 02:39:23','2014-04-16 02:39:23'),
	(16,0,'Alonzo Jackson','fdgdfsg@fdgdf.com',' about this','My message',NULL,'324-143-2314','here street',NULL,0,'2014-04-16 02:51:25','2014-04-16 02:51:25'),
	(17,0,'kjdfjkfdj','jkladfa@adfdsf.com','dsafd','sdafdsafdaf fa f dsa fdsafdsa fd af a a',NULL,'3','afdfa',NULL,0,'2014-04-16 02:55:38','2014-04-16 02:55:38'),
	(18,0,'Alonzo','a@b.com','dsafdsaf','dsaff fds afndsla nfjdk lsafjdksla fjdklsa fd\r\nAlonzo',NULL,'sdafds','fadfs',NULL,0,'2014-04-16 02:57:53','2014-04-16 02:57:53'),
	(19,0,'Alonzo Jackson','jaxonetic@gmail.com','about this subject','what a message',NULL,'3','saf ds af sda ',NULL,0,'2014-04-16 02:59:22','2014-04-16 02:59:22');

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `meta`;

CREATE TABLE `meta` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `meta` WRITE;
/*!40000 ALTER TABLE `meta` DISABLE KEYS */;

INSERT INTO `meta` (`id`, `model`, `foreign_key`, `key`, `value`, `weight`)
VALUES
	(1,'Node',1,'meta_keywords','key1, key2',NULL),
	(2,'Node',4,'testkey','estvalue',NULL);

/*!40000 ALTER TABLE `meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nodes`;

CREATE TABLE `nodes` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  `image_path` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'rocky additional image path column',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;

INSERT INTO `nodes` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `excerpt`, `status`, `mime_type`, `comment_status`, `comment_count`, `promote`, `path`, `terms`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `updated`, `created`, `image_path`)
VALUES
	(1,NULL,1,'Hello World','hello-world','<p>Welcome to Croogo. This is your first post. You can edit or delete it from the admin panel.</p>','',1,'',2,1,1,'/blog/hello-world','{\"1\":\"uncategorized\"}',0,1,4,'','blog','2014-04-15 22:07:51','2009-12-25 11:00:00','uploads/blog_awards/mahatma_gandhi_fiti.jpg'),
	(2,NULL,1,'About','about','<p>This is an example of a Croogo page, you could edit this to put information about yourself or your site.</p>','',1,'',0,0,0,'/about','',0,1,4,'','page','2009-12-25 22:00:00','2009-12-25 22:00:00',''),
	(3,NULL,2,'Projects','projects','Test Projects','',1,NULL,1,0,1,'/page/projects',NULL,0,5,6,'[\"3\"]','page','2014-04-13 13:08:44','2014-04-13 13:08:21',''),
	(4,1,1,'Test Blog Title','test-blog-title',' <ul id=\"home-news-banneritems\" class=\"list-inline\">\r\n 		 <li class=\"img-cell\"><div class=\"thumbnail\"><img src=\"img/home/news.png\" alt = \'news\' /></div></li>\r\n 		 <li class=\"text-cell\"> <p class=\"news-banner-title\">Rocky Coast awarded zillion dollar contract</p>\r\n 		 	  <p class=\"news-banner-text\">New 22 Story Cast in Place Concrete Structure set to Ground Break in 2016</p>\r\n 		 	 \r\n 		 </li>\r\n 		 <li class=\"nav-date-cell\"> <ul class=\"list-unstyled\"><li><div><span class=\"glyphicon glyphicon-chevron-left\"></span><span class=\"glyphicon glyphicon-chevron-right\"></span></div></li>\r\n 		 	      <li class=\"bottomdate\"><p class=\"news-banner-date-text pull-right\">Wed, Nov 13, 2013</p></li>\r\n 		     </ul>\r\n 		 </li>\r\n	   </ul>','Excerpt Test',1,NULL,2,0,1,'/blog/test-blog-title','',0,2,3,'','blog','2014-04-15 11:45:32','2014-04-15 11:29:36',''),
	(5,NULL,1,'Rocky Coast Awarded  gaziliion dollar contract','rocky-coast-awarded-gaziliion-dollar-contract','Congratulations','',1,NULL,2,0,1,'/node/rocky-coast-awarded-gaziliion-dollar-contract','',0,7,8,'','node','2014-04-15 15:01:05','2014-04-15 15:00:29',''),
	(6,NULL,0,'curriculo_2013_mod','curriculo_2013_mod.pdf','','fbsfdsbfsbfsbgfbs',0,'application/pdf',1,0,0,'/uploads/curriculo_2013_mod.pdf',NULL,0,1,2,NULL,'attachment','2014-04-15 15:17:14','2014-04-15 15:16:20',''),
	(11,NULL,1,'Test With Image 0','test-with-image-0','fwv w grwgr gr gr grg w gtregwer','cccccc',1,NULL,2,0,1,'/blog/test-with-image-0','',0,13,14,'','blog','2014-04-15 16:13:56','2014-04-15 16:08:50','uploads/blog_awards/unitysnap.png');

/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nodes_taxonomies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nodes_taxonomies`;

CREATE TABLE `nodes_taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `node_id` int(20) NOT NULL DEFAULT '0',
  `taxonomy_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `nodes_taxonomies` WRITE;
/*!40000 ALTER TABLE `nodes_taxonomies` DISABLE KEYS */;

INSERT INTO `nodes_taxonomies` (`id`, `node_id`, `taxonomy_id`)
VALUES
	(2,1,1);

/*!40000 ALTER TABLE `nodes_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_name` varchar(50) NOT NULL DEFAULT '',
  `delivery_method` varchar(50) NOT NULL DEFAULT '',
  `budget` varchar(50) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `image_name` varchar(100) NOT NULL DEFAULT '',
  `project_categories` int(11) unsigned NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `location` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `project_categories` (`project_categories`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`project_categories`) REFERENCES `project_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;

INSERT INTO `project` (`id`, `client_name`, `delivery_method`, `budget`, `summary`, `image_name`, `project_categories`, `title`, `location`)
VALUES
	(4,'San Diego Unified','Unknown','$1.4 million, $30k','Brazilian Pousada and so  on and so on','uploads/projects/cementitioussiding/Captura_de_Tel',2,'Real test title','scripps'),
	(27,'Jupiter','hihui','ohu','uiohuio','uploads/projects/siteconcrete/Captura_de_Tela_2014',2,'oihu','iohu'),
	(28,'Hera','fdsgsdgf','hj','gdfsg\r\nfgsfd\r\ngfdsggfdsg\r\ngsdgfdsgfds','uploads/projects/structuralconcrete/Captura_de_Tel',1,'lhj','klh'),
	(49,'Mini Me','jk;nkjl;','nkl;nkl','dsafdsf','uploads/projects/siteconcrete/tela1.png',2,';nkl;n','kl;nkl;'),
	(50,'Big Me','jk;nkjl;','nkl;nkl','dsafdsf','',4,';nkl;n','kl;nkl;'),
	(52,'Chiron','lnjkln','jklnjkl','nk;lnkl;','uploads/projects/framing/Captura_de_Tela_2013_09_1',3,'njkln','jklnjkln'),
	(53,'Neptune','jk;n','jk;n','njklnjkl','uploads/projects/structuralconcrete/Captura_de_Tel',4,'jk;n','jkl;njk'),
	(54,'United','Freight','34k','A range of things to describe this and that and any many other possible bits of useful or interesting info about this and no other project.','uploads/projects/cementitioussiding/unitysnap.png',3,'Made Up','Here'),
	(57,'Buffalo Bill','Train','1k','Yee haa','uploads/projects/framing/unitysnap.png',2,'Wild West','Here'),
	(58,'asaaa','bbbbb','ccccccc','dasfda jbklhbj hjkl hjkl hjk','uploads/projects/',2,'ddddddd','Here'),
	(59,'bbbb','ddd','bbbb','fegegsrfegstrg','uploads/projects/framing',2,'tttttt','Here'),
	(60,'Pac Man','Power Pellet','23k','','uploads/projects/framing/tela1.png',1,'The Chomper','Here');

/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_categories`;

CREATE TABLE `project_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `project_categories` WRITE;
/*!40000 ALTER TABLE `project_categories` DISABLE KEYS */;

INSERT INTO `project_categories` (`id`, `category`)
VALUES
	(1,'Framing'),
	(2,'Cementitious Siding'),
	(3,'Structural Concrete'),
	(4,'Site Concrete');

/*!40000 ALTER TABLE `project_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table regions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `regions`;

CREATE TABLE `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;

INSERT INTO `regions` (`id`, `title`, `alias`, `description`, `block_count`)
VALUES
	(3,'none','none','',0),
	(4,'right','right','',3),
	(6,'left','left','',0),
	(7,'header','header','',0),
	(8,'footer','footer','',0),
	(9,'region1','region1','',0),
	(10,'region2','region2','',0),
	(11,'region3','region3','',0),
	(12,'region4','region4','',0),
	(13,'region5','region5','',0),
	(14,'region6','region6','',0),
	(15,'region7','region7','',0),
	(16,'region8','region8','',0),
	(17,'region9','region9','',0);

/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `title`, `alias`, `created`, `updated`)
VALUES
	(1,'Admin','admin','2009-04-05 00:10:34','2009-04-05 00:10:34'),
	(2,'Registered','registered','2009-04-05 00:10:50','2009-04-06 05:20:38'),
	(3,'Public','public','2009-04-05 00:12:38','2009-04-07 01:41:45');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles_users`;

CREATE TABLE `roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_role_users` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`id`, `class`, `type`, `created`)
VALUES
	(1,'InitMigrations','Migrations','2014-04-07 21:54:01'),
	(2,'ConvertVersionToClassNames','Migrations','2014-04-07 21:54:01'),
	(3,'IncreaseClassNameLength','Migrations','2014-04-07 21:54:02'),
	(4,'FirstMigrationSettings','Settings','2014-04-07 21:54:02'),
	(5,'FirstMigrationAcl','Acl','2014-04-07 21:54:03'),
	(6,'FirstMigrationBlocks','Blocks','2014-04-07 21:54:04'),
	(7,'FirstMigrationComments','Comments','2014-04-07 21:54:04'),
	(8,'FirstMigrationContacts','Contacts','2014-04-07 21:54:04'),
	(9,'FirstMigrationMenus','Menus','2014-04-07 21:54:05'),
	(10,'FirstMigrationMeta','Meta','2014-04-07 21:54:05'),
	(11,'FirstMigrationNodes','Nodes','2014-04-07 21:54:06'),
	(12,'FirstMigrationTaxonomy','Taxonomy','2014-04-07 21:54:07'),
	(13,'FirstMigrationUsers','Users','2014-04-07 21:54:07');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`)
VALUES
	(6,'Site.title','Rocky Coast Builders, Inc','','','',1,1,''),
	(7,'Site.tagline','RCB Content Management System.','','','textarea',1,2,''),
	(8,'Site.email','jaxonetic@gmail.com','','','',1,3,''),
	(9,'Site.status','1','','','checkbox',1,6,''),
	(12,'Meta.robots','index, follow','','','',1,6,''),
	(13,'Meta.keywords','croogo, Croogo','','','textarea',1,7,''),
	(14,'Meta.description','Croogo - A CakePHP powered Content Management System','','','textarea',1,8,''),
	(15,'Meta.generator','Croogo - Content Management System','','','',0,9,''),
	(16,'Service.akismet_key','your-key','','','',1,11,''),
	(17,'Service.recaptcha_public_key','your-public-key','','','',1,12,''),
	(18,'Service.recaptcha_private_key','your-private-key','','','',1,13,''),
	(19,'Service.akismet_url','http://your-blog.com','','','',1,10,''),
	(20,'Site.theme','Rocky','','','',0,14,''),
	(21,'Site.feed_url','','','','',0,15,''),
	(22,'Reading.nodes_per_page','5','','','',1,16,''),
	(23,'Writing.wysiwyg','1','Enable WYSIWYG editor','','checkbox',1,17,''),
	(24,'Comment.level','1','','levels deep (threaded comments)','',1,18,''),
	(25,'Comment.feed_limit','10','','number of comments to show in feed','',1,19,''),
	(26,'Site.locale','eng','','','text',1,20,''),
	(27,'Reading.date_time_format','D, M d Y H:i:s','','','',1,21,''),
	(28,'Comment.date_time_format','M d, Y','','','',1,22,''),
	(29,'Site.timezone','0','','zero (0) for GMT','',1,4,''),
	(32,'Hook.bootstraps','Settings,Comments,Contacts,Nodes,Meta,Menus,Users,Blocks,Taxonomy,FileManager,Ckeditor','','','',0,23,''),
	(33,'Comment.email_notification','1','Enable email notification','','checkbox',1,24,''),
	(34,'Access Control.multiRole','0','Enable Multiple Roles','','checkbox',1,25,''),
	(35,'Access Control.rowLevel','0','Row Level Access Control','','checkbox',1,26,''),
	(36,'Access Control.autoLoginDuration','+1 week','\"Remember Me\" Duration','Eg: +1 day, +1 week. Leave empty to disable.','text',1,27,''),
	(37,'Access Control.models','','Models with Row Level Acl','Select models to activate Row Level Access Control on','multiple',1,26,'multiple=checkbox\noptions={\"Nodes.Node\": \"Node\", \"Blocks.Block\": \"Block\", \"Menus.Menu\": \"Menu\", \"Menus.Link\": \"Link\"}'),
	(38,'Croogo.installed','1','','','',0,28,''),
	(39,'Croogo.version','1.5.7','','','',0,29,'');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomies`;

CREATE TABLE `taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `taxonomies` WRITE;
/*!40000 ALTER TABLE `taxonomies` DISABLE KEYS */;

INSERT INTO `taxonomies` (`id`, `parent_id`, `term_id`, `vocabulary_id`, `lft`, `rght`)
VALUES
	(1,NULL,1,1,1,2),
	(2,NULL,2,1,3,4),
	(3,NULL,3,2,1,2),
	(4,NULL,4,2,3,4),
	(5,NULL,5,3,1,2);

/*!40000 ALTER TABLE `taxonomies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `terms`;

CREATE TABLE `terms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;

INSERT INTO `terms` (`id`, `title`, `slug`, `description`, `updated`, `created`)
VALUES
	(1,'Uncategorized','uncategorized','','2009-07-22 03:38:43','2009-07-22 03:34:56'),
	(2,'Announcements','announcements','','2010-05-16 23:57:06','2009-07-22 03:45:37'),
	(3,'mytag','mytag','','2009-08-26 14:42:43','2009-08-26 14:42:43'),
	(4,'Award Tag','award-tag','','2014-04-15 15:28:10','2014-04-15 15:28:10'),
	(5,'Awards','awards','','2014-04-15 15:29:03','2014-04-15 15:29:03');

/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;

INSERT INTO `types` (`id`, `title`, `alias`, `description`, `format_show_author`, `format_show_date`, `comment_status`, `comment_approve`, `comment_spam_protection`, `comment_captcha`, `params`, `plugin`, `updated`, `created`)
VALUES
	(1,'Page','page','A page is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a page entry does not allow visitor comments.',0,0,0,1,0,0,'','','2009-09-09 00:23:24','2009-09-02 18:06:27'),
	(2,'Blog','blog','A blog entry is a single post to an online journal, or blog.',1,1,2,1,0,0,'','','2009-09-15 12:15:43','2009-09-02 18:20:44'),
	(4,'Node','node','Default content type.',1,1,2,1,0,0,'','','2009-10-06 21:53:15','2009-09-05 23:51:56');

/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table types_vocabularies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `types_vocabularies`;

CREATE TABLE `types_vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `types_vocabularies` WRITE;
/*!40000 ALTER TABLE `types_vocabularies` DISABLE KEYS */;

INSERT INTO `types_vocabularies` (`id`, `type_id`, `vocabulary_id`, `weight`)
VALUES
	(24,4,1,NULL),
	(25,4,2,NULL),
	(30,2,1,NULL),
	(31,2,2,NULL);

/*!40000 ALTER TABLE `types_vocabularies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `timezone`, `status`, `updated`, `created`)
VALUES
	(1,1,'rockyadmin','7944f711511e07617ad54e72e1bc31ca7baf11a7','rockyadmin','',NULL,'31a8c66a8c68b2c39f49ef4ef3d16d4c',NULL,NULL,'0',1,'2014-04-08 14:55:12','2014-04-08 14:55:12'),
	(2,3,'rockypublicuser','7944f711511e07617ad54e72e1bc31ca7baf11a7','Rocky Public User','rockypublicuser@gmail.com','www.rockypublicuser.com','66405458246870e0a7f0ba641602fcff',NULL,NULL,'0',1,'2014-04-08 17:00:06','2014-04-08 17:00:06');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table vocabularies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vocabularies`;

CREATE TABLE `vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vocabulary_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `vocabularies` WRITE;
/*!40000 ALTER TABLE `vocabularies` DISABLE KEYS */;

INSERT INTO `vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `created`)
VALUES
	(1,'Categories','categories','',0,1,0,'',1,'2010-05-17 20:03:11','2009-07-22 02:16:21'),
	(2,'Tags','tags','',0,1,0,'',2,'2010-05-17 20:03:11','2009-07-22 02:16:34'),
	(3,'Projects','projects','',0,0,0,NULL,3,'2014-04-15 15:27:16','2014-04-15 15:27:16');

/*!40000 ALTER TABLE `vocabularies` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
