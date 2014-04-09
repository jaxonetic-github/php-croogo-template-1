# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.31)
# Database: rockycoast
# Generation Time: 2014-04-09 11:56:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_name` varchar(50) NOT NULL DEFAULT '',
  `delivery_method` varchar(50) NOT NULL DEFAULT '',
  `budget` varchar(50) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `image_name` varchar(50) NOT NULL DEFAULT '',
  `project_categories` int(11) unsigned NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_categories` (`project_categories`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`project_categories`) REFERENCES `project_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;

INSERT INTO `project` (`id`, `client_name`, `delivery_method`, `budget`, `summary`, `image_name`, `project_categories`, `title`)
VALUES
	(1,'San Diego Unified','CM Multi-Prime','$6.4 million, 370k','The new 10,000-square-foot and so  on and so on','2scripps.jpg',1,'Scripps Ranch High School'),
	(2,'UCR','Subcontract','$54 million, $8 million','The 204,000 gsf Arroyo student housing ... CMS','3scripps.jpg',2,'Arroyo Student Housing'),
	(3,'Cajon Valley Unif','Subcontract','$26mil, $3.3.mill','Palermo Apartments, a 225-unit complex on the full block bordered by Front, Beachh,','4scripps.jpg',3,'Front and Beach aka Palermo Condos'),
	(4,'San Diego Unified','CM Multi-Prime','$6.4 million, $370k','The new 10,000-square-foot and so  on and so on','5scripps.jpg',4,'Scripps Ranch High School');

/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table project_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_categories`;

CREATE TABLE `project_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
