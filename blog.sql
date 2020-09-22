-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vendu',
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_fournisseur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_achat` datetime DEFAULT NULL,
  `date_reservation` datetime DEFAULT NULL,
  `date_fingarantie` datetime DEFAULT NULL,
  `photo_ticket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manuel_utilisation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`),
  CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `article` (`id`, `title`, `content`, `images`, `created_at`, `category_id`, `prix`, `status`, `reference`, `adresse_fournisseur`, `date_achat`, `date_reservation`, `date_fingarantie`, `photo_ticket`, `manuel_utilisation`) VALUES
(3,	'Ipad',	'L\'iPad est une tablette tactile conçue et développée par la société américaine Apple.\r\nCelle-ci est particulièrement orientée vers les médias tels que les livres, journaux, magazines, films, musiques, jeux, mais aussi vers Internet, l\'accès à ses courriers électroniques et la bureautique simple avec des logiciels tels que Word...',	'https://lorempixel.com/output/technics-q-c-50-50-1.jpg',	'2020-09-20 20:53:10',	5,	'555,00',	'vendu',	'6f4g56-IP-55',	'Amazon58 19 rue de la Barre 58000 Nevers',	'2020-09-21 10:05:00',	NULL,	'2022-09-20 12:00:00',	NULL,	NULL),
(5,	'Locomotive de TGV',	'Locomotive de TGV. Rapide, peu spacieux, encombrant et cher !',	'https://lorempixel.com/output/transport-q-c-50-50-6.jpg',	'2020-09-20 20:57:08',	3,	'1 231 587',	'reserve',	'sncf2020-455-HH',	'SNCF 24 avenue des Bretons 45000 Orléans',	'2020-09-21 10:07:00',	'2020-09-12 11:33:00',	'2025-09-20 12:00:00',	NULL,	NULL),
(6,	'Tondeuse à gazon',	'Tondeuse pour grands parcs et jardins. Gros moteur. Mulshing.',	'https://lorempixel.com/output/city-q-c-50-50-8.jpg',	'2020-09-20 20:59:30',	4,	'388',	'vendu',	'fgfdg4-YY',	'Tondeuse58 place de la Gare 58000 Nevers',	'2020-09-21 10:08:17',	NULL,	'2022-09-20 12:00:00',	NULL,	NULL),
(7,	'Meuble de cuisine',	'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',	'http://lorempixel.com/output/food-q-c-640-480-1.jpg',	'2020-09-21 11:46:51',	2,	'1 454,00',	'vendu',	'654B56-f4',	'Cuisinella 22 rue d ela Barre 58000 Nevers',	'2020-09-21 11:00:00',	NULL,	'2022-09-01 00:00:00',	NULL,	'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1,	'Electroménager',	'Frigo, aspirateur, gazinière, plaque de cuisson, ...'),
(2,	'Cuisine',	'Tout pour votre cuisine...'),
(3,	'Véhicules',	'Moto, voiture, camion, avion, fusée, ...'),
(4,	'Jardinage',	'Pelle et râteau, ...'),
(5,	'Multimédia',	'Tv, hi-fi, son, PC... mais aucun Mac parce que les Mac, c\'est le mal absolu !!!!');

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`),
  CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(2,	3,	'citizenz7',	'Super bien !!!!!!!!!!!!!!!!!!!!!',	'2020-09-21 14:03:46');

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200918203944',	'2020-09-18 22:41:35',	17),
('DoctrineMigrations\\Version20200919203051',	'2020-09-19 22:34:50',	50),
('DoctrineMigrations\\Version20200919204056',	'2020-09-19 22:41:32',	43),
('DoctrineMigrations\\Version20200920063711',	'2020-09-20 08:37:49',	17),
('DoctrineMigrations\\Version20200921075842',	'2020-09-21 07:59:01',	178);

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`id`, `email`, `username`, `password`) VALUES
(1,	'citizenz7@protonmail.com',	'citizenz7',	'$2y$13$uaceZVqzvD5144lIZTDChO2njajggOW9gjptk61I.NWo/nDaXvoiG'),
(2,	'dudule64@gmail.com',	'dudule',	'$2y$13$nYIlEVbIHE9EuILiovEhHuI2kT33i81gJ95zdk1fX3zCaUh6sh/aK'),
(3,	'toto@symfony.com',	'toto',	'$2y$13$wWRCQzTiJo34lp7OmFJJO.xed0J4pbaxmYw9ykXkKlx/h5OG7u2i6'),
(4,	'oprieur@protonmail.com',	'olivier',	'$2y$13$UzgLNKQgSprkCdU9BrsQF.Jm89WOokqlrpJRBN/KYB6P7VOyxue36');

-- 2020-09-21 15:01:25
