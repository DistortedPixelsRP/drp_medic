CREATE DATABASE IF NOT EXISTS `drp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `drp`;

CREATE TABLE IF NOT EXISTS `medic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medic_fk1` (`char_id`),
  CONSTRAINT `medic_fk1` FOREIGN KEY (`char_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;