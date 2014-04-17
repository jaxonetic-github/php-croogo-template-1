

# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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



INSERT INTO `vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `created`)
VALUES
	
	(3,'Projects','projects','',0,0,0,NULL,3,'2014-04-15 15:27:16','2014-04-15 15:27:16');

/*!40000 ALTER TABLE `vocabularies` ENABLE KEYS */;
UNLOCK TABLES;

