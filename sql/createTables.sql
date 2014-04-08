drop table project;

CREATE TABLE `project_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


CREATE TABLE `project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_name` int(11) NOT NULL,
  `delivery_method` varchar(11) NOT NULL DEFAULT '',
  `budget` varchar(11) NOT NULL DEFAULT '',
  `summary` varchar(11) NOT NULL DEFAULT '',
  `img` varchar(50) NOT NULL DEFAULT '',
  `project_categories` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  
    FOREIGN KEY (project_categories)
      REFERENCES project_categories(`id`) on delete cascade
) ENGINE=InnoDB;


