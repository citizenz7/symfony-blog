-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 02 oct. 2020 à 11:29
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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_fournisseur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_achat` datetime DEFAULT NULL,
  `date_reservation` datetime DEFAULT NULL,
  `date_fingarantie` datetime DEFAULT NULL,
  `photo_ticket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manuel_utilisation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `images`, `created_at`, `category_id`, `prix`, `status`, `reference`, `adresse_fournisseur`, `date_achat`, `date_reservation`, `date_fingarantie`, `photo_ticket`, `manuel_utilisation`) VALUES
(3, 'Ipad Air Gris - 256 Gb - Wifi', '<p>Design tout &eacute;cran dot&eacute; d&rsquo;un &eacute;cran Liquid Retina de 10,9 pouces avec True Tone et large gamme de couleurs P3. Touch ID int&eacute;gr&eacute; au bouton sup&eacute;rieur. Appareil photo arri&egrave;re 12 Mpx avec Focus Pixels et cam&eacute;ra FaceTime HD 7 Mpx qui am&eacute;liore les performances en conditions de faible &eacute;clairage. Compatible avec le Magic Keyboard et le Smart Keyboard Folio. Avec c&acirc;ble et adaptateur.</p>\r\n\r\n<p>Pour sa huiti&egrave;me g&eacute;n&eacute;ration de tablette, Apple ne cherche plus la r&eacute;volution. Il ne faudrait toutefois pas conclure trop rapidement que le design propos&eacute; est en jach&egrave;re. Il est dat&eacute;, certes, offre un ratio encombrement/surface d&rsquo;affichage qui pourrait &ecirc;tre meilleur, p&egrave;se un peu &agrave; l&rsquo;&oelig;il, mais il est &eacute;galement &eacute;prouv&eacute;. Mieux, il a su &eacute;voluer par petites touches au fil du temps, notamment avec l&rsquo;arriv&eacute;e sur le mod&egrave;le pr&eacute;c&eacute;dent, agrandi, des Smart Connectors qui permettent de brancher un clavier, qui l&rsquo;alimentera alors en plus de le synchroniser. On peut certes regretter que seul l&rsquo;<a href=\"https://www.01net.com/actualites/ipad-air-2020-que-reste-t-il-a-l-ipad-pro-11-pouces-1977151.html\" target=\"_blank\">iPad Air</a> ait droit cette ann&eacute;e &agrave; une refonte de son design, avec un bouton Touch ID d&eacute;plac&eacute; sur le bouton On/Off, mais les gammes ont des raisons que la raison ignore, h&eacute;las. De m&ecirc;me qu&#39;il conserve le Lightning, et se refuse &agrave; passer &agrave; l&rsquo;USB-C,&nbsp;l&rsquo;iPad conserve donc de larges bordures tout autour de son &eacute;cran de 10,2 pouces.&nbsp;</p>', 'apple-ipad-air-2-wi-fi-64go-gris-sideral-5f6b3870c39f6.jpeg', '2020-09-20 20:53:10', 5, '979,74', 'vendu', '6f4g56-IP-55', 'Amazon58 19 rue de la Barre 58000 Nevers', '2020-09-21 10:05:00', NULL, '2022-09-20 12:00:00', 'https://via.placeholder.com/160x250?text=TICKET', '<p>https://fr.wikihow.com/utiliser-un-iPad</p>'),
(5, 'Locomotive de TGV', '<p>Locomotive de TGV. Rapide, peu spacieux, encombrant et cher !</p>\r\n\r\n<p>Une <strong>locomotive</strong> est un v&eacute;hicule ferroviaire qui fournit l&#39;&eacute;nergie motrice d&#39;un train.</p>\r\n\r\n<p>L&#39;adjectif substantiv&eacute; est originaire du latin <em>loco</em> - &laquo;&nbsp;venant d&#39;un lieu&nbsp;&raquo;, ablatif de &laquo;&nbsp;locus&nbsp;&raquo;, lieu - et du latin m&eacute;di&eacute;val <em>motivus</em>, &laquo;&nbsp;qui provoque le mouvement&nbsp;&raquo;. Les machines &agrave; vapeur loco-motrices ont remplac&eacute; les machines &agrave; vapeur stationnaires charg&eacute;es de faire remonter les trains de wagons de marchandises ou de voitures de voyageurs sur les plans inclin&eacute;s des premi&egrave;res voies ferr&eacute;es. Celles-ci compl&eacute;taient la traction hippomobile sur les parties des voies sans d&eacute;clivit&eacute;, d&#39;abord dans puis hors des mines, tandis que certains trains avan&ccedil;aient par gravit&eacute; par exemple pour descendre le charbon des sorties des mines vers les canaux.</p>\r\n\r\n<p>&nbsp;</p>', '61207-5f6b38fd4be93.webp', '2020-09-20 20:57:08', 3, '950 000,00', 'reserve', 'sncf2020-455-HH', 'SNCF 24 avenue des Bretons 45000 Orléans', NULL, '2020-09-12 11:33:00', NULL, '', '<p>Il y a de nombreuses raisons qui expliquent que la fonction de traction des trains ait &eacute;t&eacute;, traditionnellement, isol&eacute;e dans la locomotive, plut&ocirc;t que r&eacute;partie dans un v&eacute;hicule autopropuls&eacute;. Ces raisons comprennent&nbsp;:</p>\r\n\r\n<ul>\r\n	<li>l&#39;<em>aspect pratique</em>&nbsp;: si la locomotive tombe en panne, on peut facilement la remplacer par une autre. Une panne de la partie traction ne met donc pas l&#39;ensemble du train hors service&nbsp;;</li>\r\n	<li>l&#39;<em>utilisation maximale de la capacit&eacute; de traction</em>&nbsp;: la partie traction est plus co&ucirc;teuse que le reste, et donc multiplie le co&ucirc;t global lorsqu&#39;elle est immobilis&eacute;e. S&eacute;parer les locomotives permet d&#39;utiliser la capacit&eacute; de traction de mani&egrave;re optimale&nbsp;;</li>\r\n	<li>la <em>flexibilit&eacute;</em>&nbsp;: des locomotives plus puissantes peuvent &ecirc;tre substitu&eacute;es &agrave; de plus petites lorsque le besoin s&#39;en fait sentir, par exemple lors d&#39;un passage de plaine en montagne, n&eacute;cessitant plus de puissance&nbsp;; Les premi&egrave;res locomotives &agrave; vapeur se relayaient sur les grands parcours pour &ecirc;tre r&eacute;approvisionn&eacute;es en charbon &agrave; la mani&egrave;re des chevaux de poste.</li>\r\n	<li>le <em>cycle d&#39;obsolescence</em>&nbsp;: s&eacute;parer la partie traction de la charge remorqu&eacute;e permet de remplacer l&#39;un sans affecter l&#39;autre. Par exemple, la technique de traction d&#39;un engin peut &ecirc;tre d&eacute;pass&eacute;e alors que son confort reste satisfaisant, ou le contraire.</li>\r\n</ul>'),
(6, 'Tondeuse à gazon', 'Tondeuse pour grands parcs et jardins. Gros moteur. Mulshing.\r\nLe moteur de la SÉRIE 675EXi™ combine des performances puissantes avec de nouveaux niveaux d’utilisation facile. Facile à employer, facile à entretenir, facile à démarrer - le moteur de la SÉRIE EXi offre une nouvelle expérience de moteur pour les travaux les plus exigeants. Les moteurs de la SÉRIE EXi ne requiert aucun changement d’huile régulier - juste un plein occasionnel.', '9310317297323_01CF-5f6b3947b1675.webp', '2020-09-20 20:59:30', 4, '388,00', 'vendu', 'fgfdg4-YY', 'Tondeuse58 place de la Gare 58000 Nevers', '2020-09-21 10:08:00', NULL, '2022-09-20 12:00:00', NULL, NULL),
(7, 'Meuble de cuisine', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>', 'meubecuisine65454-5f6b398d7d5eb.webp', '2020-09-21 11:46:51', 2, '1 454,00', 'vendu', '654B56-f4', 'Cuisinella 22 rue d ela Barre 58000 Nevers', '2020-09-21 11:00:00', NULL, '2022-09-01 00:00:00', 'https://via.placeholder.com/160x250?text=TICKET', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(15, 'Perceuse visseuse à percussion sans fil', 'Présentation produit : TEENO® Perceuse visseuse à percussion sans fil PSR 21V+ 2 batteries lithium + 20 accessoires+ gants professionnels\r\nHaut de page ▲\r\nPerceuse visseuse sans fil Composition du lot : 1*perceuse+2*batteries(1500mah)+1*caisse en plastique+1*gants professionnels+ 20*accessoires+1*chargeur Type d\'alimentation : Batterie(1500mah) Fonction: Impact(La paroi de ciment dure ne peut pas être utilisée)+2 Vitesses Type de mandrin : 10mm automatique Batterie : 2 batteries Lithium Ion 21V\r\nPerceuse visseuse sans fil Composition du lot : 1*perceuse+2*batteries(1500mah)+1*caisse en plastique+1*gants professionnels+ 20*accessoires+1*chargeur Type d\'alimentation : Batterie(1500mah) Fonction: Impact', 'teeno-r-perceuse-visseuse-a-percussion-sans-fil-p-5f6c9d6a7d301.jpeg', '2020-09-24 13:21:46', 1, '69,95', 'vendu', 'DD886-MH', 'Cdiscount 541 avenue de la Marne 92150 Chatenay-Malabry', '2020-09-21 11:11:00', NULL, '2023-01-01 00:00:00', 'https://via.placeholder.com/160x250?text=TICKET', 'https://www.cdiscount.com/bricolage/outillage/teeno-r-perceuse-visseuse-a-percussion-sans-fil-p/f-166010101-tee0756244082981.html?idOffre=271807337#desc'),
(16, 'Gigabyte GeForce RTX 2060 OC', '<p>Carte graphique PCI-Express overclock&eacute;e - Refroidissement semi-passif (mode 0 dB) - Avec backplate - Compatible VR + Rainbow Six Siege Gold Edition offert ! La carte graphique GeForce RTX 2060 est une solution de choix pour tout joueur souhaitant obtenir d&#39;excellentes performances en jeu. B&eacute;n&eacute;ficiant de la toute nouvelle architecture Turing, elle &eacute;tablit un nouveau standard de performances sur PC en exploitant des technologies de pointe telles que le ray tracing pour des rendus toujours plus saisissants. Dot&eacute;e de 6 Go de m&eacute;moire nouvelle g&eacute;n&eacute;ration GDDR6 ultra-rapide, elle est parfaitement adapt&eacute;e pour jouer en r&eacute;solution Quad HD, en r&eacute;alit&eacute; virtuelle et en configuration multi-&eacute;crans. Elle supporte &eacute;galement les fonctionnalit&eacute;s DirectX&trade; 12 pour garantir une exp&eacute;rience rapide et fluide en toutes circonstances. Cette version boost&eacute;e augmente les performances du processeur graphique Turing gr&acirc;ce &agrave; des fr&eacute;quences de fonctionnement revues &agrave; la hausse par rapport au mod&egrave;le de r&eacute;f&eacute;rence. Profitez de fr&eacute;quences revues &agrave; la hausse, pour toujours plus de fluidit&eacute; dans les jeux. &Eacute;paul&eacute; par ses 1 920 coeurs CUDA, sa m&eacute;moire &agrave; 14 Gb/s et son interface m&eacute;moire 192 bit, le gain de performances en jeu est consid&eacute;rable.</p>', 'in2000093302-5f6cb403a96a7.jpeg', '2020-09-24 14:58:11', 8, '359,99', 'vendu', 'CART2060-44HG7', 'Top Achat 2 Rue Des Erables CS21035 69578 Limonest Cedex France', '2020-09-24 16:56:00', NULL, '2022-09-23 00:00:00', 'https://via.placeholder.com/160x250?text=TICKET', '<p>Optimis&eacute;es par Ampere, l&rsquo;architecture NVIDIA RTX de seconde g&eacute;n&eacute;ration, les cartes graphiques GeForce RTX&trade; s&eacute;rie 30 offrent des performances ultimes aux joueurs du monde entier gr&acirc;ce &agrave; la puissance ph&eacute;nom&eacute;nale du ray tracing en temps r&eacute;el et aux performances incomparables du DLSS optimis&eacute; par l&rsquo;IA.</p>\r\n\r\n<p>Bas&eacute;s sur l&rsquo;architecture NVIDIA Turing&trade;, les cartes graphiques et les PC portables GeForce RTX&trade; s&eacute;rie 20 proposent des capacit&eacute;s avanc&eacute;es d&#39;intelligence artificielle et de ray tracing en temps r&eacute;el.</p>\r\n\r\n<p>Les cartes graphiques et les PC portables GeForce&reg; GTX s&eacute;rie 16 ont &eacute;t&eacute; &eacute;quip&eacute;s de l&rsquo;architecture NVIDIA Turing&trade; pour offrir aux joueurs de performances exceptionnelles dans les jeux les plus populaires.</p>');

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
(1, 'Electroménager', '<p>Frigo, <strong>aspirateur</strong>, gazini&egrave;re, plaque de cuisson, ...</p>'),
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(2, 3, 'citizenz7', 'Super bien !!!!!!!!!!!!!!!!!!!!!', '2020-09-21 14:03:46'),
(3, 3, 'olivierP', 'Ah non ! Apple c\'est de la m.... \r\nAh, on me dit dans mon oreillette que la NSA vient de me couper ma ligne internet !\r\nPas cool les mecs !', '2020-09-22 14:19:40'),
(4, 3, 'Ali', 'it\'s a cool website', '2020-09-28 07:50:41');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `roles`) VALUES
(1, 'citizenz7@protonmail.com', 'citizenz7', '$2y$13$uaceZVqzvD5144lIZTDChO2njajggOW9gjptk61I.NWo/nDaXvoiG', '[\"ROLE_ADMIN\"]'),
(2, 'olivierprieur@gmail.com', 'olivier', '$2y$13$v1sifX2QmvbuoZ2s2h/.yOsNeDeBGBZywkRat3VhBw6N0Zna//Llu', '[]'),
(4, 'mumbly_58@yahoo.fr', 'mumbly58', '$2y$13$HmcYXZ9WREh5fJkFD1k6X.Ngf7Cai2evV0LD33a.n6nVEgRiN.29K', '[]'),
(5, 'a.syed@codeur.online', 'Ali', '$2y$13$jh/yuoajUl2S19O3HoMZ..PJ4ZLQM2XhPOuYcimKXjkdTW5qHQ9si', '[]');

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
