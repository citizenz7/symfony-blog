-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 25 sep. 2020 à 12:26
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
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
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `images`, `created_at`, `category_id`, `prix`, `status`, `reference`, `adresse_fournisseur`, `date_achat`, `date_reservation`, `date_fingarantie`, `photo_ticket`, `manuel_utilisation`) VALUES
(3, 'Ipad Air Gris - 256 Gb - Wifi', 'Design tout écran doté d’un écran Liquid Retina de 10,9 pouces avec True Tone et large gamme de couleurs P3.\r\nTouch ID intégré au bouton supérieur.\r\nAppareil photo arrière 12 Mpx avec Focus Pixels et caméra FaceTime HD 7 Mpx qui améliore les performances en conditions de faible éclairage.\r\nCompatible avec le Magic Keyboard et le Smart Keyboard Folio.\r\nAvec câble et adaptateur.', 'apple-ipad-air-2-wi-fi-64go-gris-sideral-5f6b3870c39f6.jpeg', '2020-09-20 20:53:10', 5, '979,74', 'vendu', '6f4g56-IP-55', 'Amazon58 19 rue de la Barre 58000 Nevers', '2020-09-21 10:05:00', NULL, '2022-09-20 12:00:00', 'https://via.placeholder.com/160x250?text=TICKET', 'https://fr.wikihow.com/utiliser-un-iPad'),
(5, 'Locomotive de TGV', 'Locomotive de TGV. Rapide, peu spacieux, encombrant et cher !', '61207-5f6b38fd4be93.webp', '2020-09-20 20:57:08', 3, '950 000,00', 'reserve', 'sncf2020-455-HH', 'SNCF 24 avenue des Bretons 45000 Orléans', '2020-09-21 10:07:00', '2020-09-12 11:33:00', '2025-09-20 12:00:00', NULL, NULL),
(6, 'Tondeuse à gazon', 'Tondeuse pour grands parcs et jardins. Gros moteur. Mulshing.\r\nLe moteur de la SÉRIE 675EXi™ combine des performances puissantes avec de nouveaux niveaux d’utilisation facile. Facile à employer, facile à entretenir, facile à démarrer - le moteur de la SÉRIE EXi offre une nouvelle expérience de moteur pour les travaux les plus exigeants. Les moteurs de la SÉRIE EXi ne requiert aucun changement d’huile régulier - juste un plein occasionnel.', '9310317297323_01CF-5f6b3947b1675.webp', '2020-09-20 20:59:30', 4, '388,00', 'vendu', 'fgfdg4-YY', 'Tondeuse58 place de la Gare 58000 Nevers', '2020-09-21 10:08:00', NULL, '2022-09-20 12:00:00', NULL, NULL),
(7, 'Meuble de cuisine', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 'meubecuisine65454-5f6b398d7d5eb.webp', '2020-09-21 11:46:51', 2, '1 454,00', 'vendu', '654B56-f4', 'Cuisinella 22 rue d ela Barre 58000 Nevers', '2020-09-21 11:00:00', NULL, '2022-09-01 00:00:00', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(15, 'Perceuse visseuse à percussion sans fil', 'Présentation produit : TEENO® Perceuse visseuse à percussion sans fil PSR 21V+ 2 batteries lithium + 20 accessoires+ gants professionnels\r\nHaut de page ▲\r\nPerceuse visseuse sans fil Composition du lot : 1*perceuse+2*batteries(1500mah)+1*caisse en plastique+1*gants professionnels+ 20*accessoires+1*chargeur Type d\'alimentation : Batterie(1500mah) Fonction: Impact(La paroi de ciment dure ne peut pas être utilisée)+2 Vitesses Type de mandrin : 10mm automatique Batterie : 2 batteries Lithium Ion 21V\r\nPerceuse visseuse sans fil Composition du lot : 1*perceuse+2*batteries(1500mah)+1*caisse en plastique+1*gants professionnels+ 20*accessoires+1*chargeur Type d\'alimentation : Batterie(1500mah) Fonction: Impact', 'teeno-r-perceuse-visseuse-a-percussion-sans-fil-p-5f6c9d6a7d301.jpeg', '2020-09-24 13:21:46', 1, '69,95', 'vendu', 'DD886-MH', 'Cdiscount 541 avenue de la Marne 92150 Chatenay-Malabry', '2020-09-21 11:11:00', NULL, '2023-01-01 00:00:00', 'https://via.placeholder.com/160x250?text=TICKET', 'https://www.cdiscount.com/bricolage/outillage/teeno-r-perceuse-visseuse-a-percussion-sans-fil-p/f-166010101-tee0756244082981.html?idOffre=271807337#desc'),
(16, 'Gigabyte GeForce RTX 2060 OC', 'Carte graphique PCI-Express overclockée - Refroidissement semi-passif (mode 0 dB) - Avec backplate - Compatible VR + Rainbow Six Siege Gold Edition offert !\r\nLa carte graphique GeForce RTX 2060 est une solution de choix pour tout joueur souhaitant obtenir d\'excellentes performances en jeu. Bénéficiant de la toute nouvelle architecture Turing, elle établit un nouveau standard de performances sur PC en exploitant des technologies de pointe telles que le ray tracing pour des rendus toujours plus saisissants.\r\nDotée de 6 Go de mémoire nouvelle génération GDDR6 ultra-rapide, elle est parfaitement adaptée pour jouer en résolution Quad HD, en réalité virtuelle et en configuration multi-écrans. Elle supporte également les fonctionnalités DirectX™ 12 pour garantir une expérience rapide et fluide en toutes circonstances.\r\n\r\nCette version boostée augmente les performances du processeur graphique Turing grâce à des fréquences de fonctionnement revues à la hausse par rapport au modèle de référence. Profitez de fréquences revues à la hausse, pour toujours plus de fluidité dans les jeux. Épaulé par ses 1 920 coeurs CUDA, sa mémoire à 14 Gb/s et son interface mémoire 192 bit, le gain de performances en jeu est considérable.', 'in2000093302-5f6cb403a96a7.jpeg', '2020-09-24 14:58:11', 8, '359,99', 'vendu', 'CART-nvidia-rtx2060-44HG7', 'Top Achat 2 Rue Des Erables CS21035 69578 Limonest Cedex France', '2020-09-24 16:56:00', NULL, '2022-09-23 00:00:00', 'https://via.placeholder.com/160x250?text=TICKET', 'http://www.nvidia.fr');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Electroménager', 'Frigo, aspirateur, gazinière, plaque de cuisson, ...'),
(2, 'Cuisine', 'Tout pour votre cuisine...'),
(3, 'Véhicules', 'Moto, voiture, camion, avion, fusée, ...'),
(4, 'Jardinage', 'Pelle et râteau, ...'),
(5, 'Multimédia', 'Tv, hi-fi, son, PC... mais aucun Mac parce que les Mac, c\'est le mal absolu !!!!'),
(8, 'Informatique', 'L\'informatique est un domaine d\'activité scientifique, technique, et industriel concernant le traitement automatique de l\'information numérique par l\'exécution de programmes informatiques par des machines : des systèmes embarqués, des ordinateurs, des robots, des automates, etc.\r\n\r\nCes champs d\'application peuvent être séparés en deux branches, l\'une, de nature théorique, qui concerne la définition de concepts et modèles, et l\'autre, de nature pratique, qui s\'intéresse aux techniques concrètes de mise en œuvre. Certains domaines de l\'informatique peuvent être très abstraits, comme la complexité algorithmique, et d\'autres peuvent être plus proches d\'un public profane. Ainsi, la théorie des langages demeure un domaine davantage accessible aux professionnels formés (description des ordinateurs et méthodes de programmation), tandis que les métiers liés aux interfaces homme-machine sont accessibles à un plus large public.');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(2, 3, 'citizenz7', 'Super bien !!!!!!!!!!!!!!!!!!!!!', '2020-09-21 14:03:46'),
(3, 3, 'olivierP', 'Ah non ! Apple c\'est de la m.... \r\nAh, on me dit dans mon oreillette que la NSA vient de me couper ma ligne internet !\r\nPas cool les mecs !', '2020-09-22 14:19:40');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200918203944', '2020-09-18 22:41:35', 17),
('DoctrineMigrations\\Version20200919203051', '2020-09-19 22:34:50', 50),
('DoctrineMigrations\\Version20200919204056', '2020-09-19 22:41:32', 43),
('DoctrineMigrations\\Version20200920063711', '2020-09-20 08:37:49', 17),
('DoctrineMigrations\\Version20200921075842', '2020-09-21 07:59:01', 178);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `roles`) VALUES
(1, 'citizenz7@protonmail.com', 'citizenz7', '$2y$13$uaceZVqzvD5144lIZTDChO2njajggOW9gjptk61I.NWo/nDaXvoiG', '[\"ROLE_ADMIN\"]'),
(2, 'olivierprieur@gmail.com', 'olivier', '$2y$13$v1sifX2QmvbuoZ2s2h/.yOsNeDeBGBZywkRat3VhBw6N0Zna//Llu', '[]'),
(4, 'mumbly_58@yahoo.fr', 'mumbly58', '$2y$13$HmcYXZ9WREh5fJkFD1k6X.Ngf7Cai2evV0LD33a.n6nVEgRiN.29K', '[]');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
