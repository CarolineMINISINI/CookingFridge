-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2015 at 03:46 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: projet
--

-- --------------------------------------------------------

/* ---------------------------- */
/* CREATION DE LA TABLE CAT_ING */
/* ---------------------------- */

CREATE TABLE `cat_ing` (
  `Id_Cat` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_Cat`),
  UNIQUE KEY `Id_Cat` (`Id_Cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

/* ------------------------------- */
/* REMPLISSAGE DE LA TABLE CAT_ING */
/* ------------------------------- */

INSERT INTO `cat_ing` VALUES(1, 'Légumes');
INSERT INTO `cat_ing` VALUES(2, 'Fruits');
INSERT INTO `cat_ing` VALUES(3, 'Viandes, Oeufs');
INSERT INTO `cat_ing` VALUES(4, 'Poissons, Crustacés');
INSERT INTO `cat_ing` VALUES(5, 'Produits laitiers');
INSERT INTO `cat_ing` VALUES(6, 'Pâtes, Riz, Farines, Céréales, ...');
INSERT INTO `cat_ing` VALUES(7, 'Plantes arômatiques, Epices');
INSERT INTO `cat_ing` VALUES(8, 'Huiles, Vinaigres, Sauces, Condiments, ...');
INSERT INTO `cat_ing` VALUES(9, 'Boissons');
INSERT INTO `cat_ing` VALUES(10, 'Sucré');
INSERT INTO `cat_ing` VALUES(11, 'Divers');

-- --------------------------------------------------------

/* ---------------------------- */
/* CREATION DE LA TABLE CAT_REC */
/* ---------------------------- */

CREATE TABLE `cat_rec` (
  `Num_Cat` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Num_Cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

/* ------------------------------- */
/* REMPLISSAGE DE LA TABLE CAT_REC */
/* ------------------------------- */

INSERT INTO `cat_rec` VALUES(1, 'Entrée');
INSERT INTO `cat_rec` VALUES(2, 'Plat');
INSERT INTO `cat_rec` VALUES(3, 'Dessert');
INSERT INTO `cat_rec` VALUES(4, 'Cocktail');

-- --------------------------------------------------------

/* ----------------------------- */
/* CREATION DE LA TABLE COMPOSER */
/* ----------------------------- */

CREATE TABLE `composer` (
  `Num_Rec` int(11) NOT NULL,
  `Num_Ing` int(11) NOT NULL,
  `Quantite` float NOT NULL,
  `Unite` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Num_Rec`,`Num_Ing`),
  KEY `Num_Ing` (`Num_Ing`),
  KEY `Num_Rec` (`Num_Rec`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/* -------------------------------- */
/* REMPLISSAGE DE LA TABLE COMPOSER */
/* -------------------------------- */

INSERT INTO `composer` VALUES(1, 376, 250, 'g');
INSERT INTO `composer` VALUES(1, 24, 250, 'g');
INSERT INTO `composer` VALUES(1, 48, 1, '');
INSERT INTO `composer` VALUES(2, 2, 30, 'g');
INSERT INTO `composer` VALUES(2, 18, 100, 'g');
INSERT INTO `composer` VALUES(1, 31, 1, '');
INSERT INTO `composer` VALUES(1, 67, 50, 'g');
INSERT INTO `composer` VALUES(5, 195, 4, 'blancs');
INSERT INTO `composer` VALUES(5, 10, 3, 'cuillerées à soupe');
INSERT INTO `composer` VALUES(5, 22, 1, 'pincée');
INSERT INTO `composer` VALUES(5, 19, 1, 'pincée');
INSERT INTO `composer` VALUES(3, 29, 18, '');
INSERT INTO `composer` VALUES(3, 291, 250, 'g');
INSERT INTO `composer` VALUES(3, 182, 250, 'g');
INSERT INTO `composer` VALUES(4, 257, 200, 'g de chutes');
INSERT INTO `composer` VALUES(4, 377, 2, 'cuillerées à soupe');
INSERT INTO `composer` VALUES(4, 14, 4, '');
INSERT INTO `composer` VALUES(4, 5, 4, 'cuillerées à soupe');
INSERT INTO `composer` VALUES(6, 373, 4, 'cuillerées à soupe');
INSERT INTO `composer` VALUES(6, 15, 1, '');
INSERT INTO `composer` VALUES(6, 80, 3, 'de couleurs différentes, épépinés et coupés en anneaux');
INSERT INTO `composer` VALUES(6, 1, 4, 'gousses écrasées');
INSERT INTO `composer` VALUES(6, 278, 200, 'g, coupé en dés');
INSERT INTO `composer` VALUES(6, 378, 1, 'cuillerée à café');
INSERT INTO `composer` VALUES(6, 379, 1, 'pincée, pour décorer');
INSERT INTO `composer` VALUES(7, 380, 3, 'cl');
INSERT INTO `composer` VALUES(7, 381, 10, 'cl');
INSERT INTO `composer` VALUES(7, 346, 20, 'cl');
INSERT INTO `composer` VALUES(8, 112, 1, '');
INSERT INTO `composer` VALUES(8, 382, 5, 'cl');
INSERT INTO `composer` VALUES(8, 12, 10, 'cl');
INSERT INTO `composer` VALUES(8, 13, 1, 'cuillerée à soupe');
INSERT INTO `composer` VALUES(8, 144, 2, 'cuillerées à soupe, râpée');
INSERT INTO `composer` VALUES(9, 123, 0.5, 'Barquette');
INSERT INTO `composer` VALUES(9, 117, 1, 'cuillérée à soupe de jus');
INSERT INTO `composer` VALUES(9, 23, 1, 'cuillerée à soupe');
INSERT INTO `composer` VALUES(9, 383, 1, 'boule');
INSERT INTO `composer` VALUES(10, 384, 5, 'cl');
INSERT INTO `composer` VALUES(10, 385, 5, 'cl');
INSERT INTO `composer` VALUES(10, 27, 5, 'cl');
INSERT INTO `composer` VALUES(11, 386, 3, 'cuillerées à soupe');
INSERT INTO `composer` VALUES(11, 387, 5, 'cl');
INSERT INTO `composer` VALUES(60, 231, 96, 'nascetur');
INSERT INTO `composer` VALUES(55, 218, 133, 'Etiam');
INSERT INTO `composer` VALUES(107, 130, 100, 'facilisis,');
INSERT INTO `composer` VALUES(79, 321, 323, 'lorem');
INSERT INTO `composer` VALUES(80, 94, 216, 'et,');
INSERT INTO `composer` VALUES(36, 207, 330, 'interdum');
INSERT INTO `composer` VALUES(110, 317, 320, 'Nam');
INSERT INTO `composer` VALUES(93, 40, 51, 'eget');
INSERT INTO `composer` VALUES(71, 312, 242, 'nisi');
INSERT INTO `composer` VALUES(45, 268, 178, 'Donec');
INSERT INTO `composer` VALUES(40, 347, 334, 'cursus');
INSERT INTO `composer` VALUES(14, 371, 121, 'nunc');
INSERT INTO `composer` VALUES(85, 226, 37, 'sit');
INSERT INTO `composer` VALUES(81, 303, 32, 'magna.');
INSERT INTO `composer` VALUES(82, 93, 197, 'sit');
INSERT INTO `composer` VALUES(52, 179, 246, 'ac');
INSERT INTO `composer` VALUES(56, 348, 87, 'magnis');
INSERT INTO `composer` VALUES(35, 327, 189, 'Cras');
INSERT INTO `composer` VALUES(75, 118, 82, 'enim');
INSERT INTO `composer` VALUES(24, 281, 388, 'dui,');
INSERT INTO `composer` VALUES(42, 283, 352, 'Duis');
INSERT INTO `composer` VALUES(60, 43, 177, 'cursus');
INSERT INTO `composer` VALUES(98, 62, 101, 'lorem,');
INSERT INTO `composer` VALUES(23, 308, 182, 'Donec');
INSERT INTO `composer` VALUES(20, 188, 226, 'elementum');
INSERT INTO `composer` VALUES(50, 290, 261, 'ac');
INSERT INTO `composer` VALUES(97, 344, 47, 'arcu.');
INSERT INTO `composer` VALUES(87, 372, 16, 'tincidunt');
INSERT INTO `composer` VALUES(89, 169, 278, 'et,');
INSERT INTO `composer` VALUES(50, 216, 139, 'dictum');
INSERT INTO `composer` VALUES(18, 215, 21, 'ut');
INSERT INTO `composer` VALUES(70, 162, 189, 'tellus.');
INSERT INTO `composer` VALUES(82, 343, 384, 'posuere,');
INSERT INTO `composer` VALUES(67, 203, 385, 'Aliquam');
INSERT INTO `composer` VALUES(57, 288, 383, 'lobortis');
INSERT INTO `composer` VALUES(69, 274, 105, 'Lorem');
INSERT INTO `composer` VALUES(25, 147, 150, 'Duis');
INSERT INTO `composer` VALUES(30, 259, 118, 'sit');
INSERT INTO `composer` VALUES(48, 313, 304, 'vestibulum');
INSERT INTO `composer` VALUES(58, 140, 291, 'in');
INSERT INTO `composer` VALUES(88, 167, 343, 'nulla');
INSERT INTO `composer` VALUES(48, 289, 343, 'eu');
INSERT INTO `composer` VALUES(54, 128, 30, 'parturient');
INSERT INTO `composer` VALUES(43, 299, 193, 'Aliquam');
INSERT INTO `composer` VALUES(40, 192, 85, 'euismod');
INSERT INTO `composer` VALUES(74, 103, 226, 'nec');
INSERT INTO `composer` VALUES(98, 175, 180, 'Maecenas');
INSERT INTO `composer` VALUES(90, 160, 369, 'magnis');
INSERT INTO `composer` VALUES(34, 60, 338, 'Proin');
INSERT INTO `composer` VALUES(95, 301, 229, 'Proin');
INSERT INTO `composer` VALUES(31, 358, 359, 'sit');
INSERT INTO `composer` VALUES(48, 224, 214, 'diam');
INSERT INTO `composer` VALUES(83, 127, 242, 'euismod');
INSERT INTO `composer` VALUES(55, 174, 358, 'massa');
INSERT INTO `composer` VALUES(60, 203, 81, 'volutpat');
INSERT INTO `composer` VALUES(80, 329, 393, 'ligula.');
INSERT INTO `composer` VALUES(16, 325, 137, 'Quisque');
INSERT INTO `composer` VALUES(18, 87, 136, 'egestas.');
INSERT INTO `composer` VALUES(93, 296, 364, 'adipiscing');
INSERT INTO `composer` VALUES(93, 277, 139, 'urna.');
INSERT INTO `composer` VALUES(67, 76, 341, 'vitae');
INSERT INTO `composer` VALUES(105, 151, 74, 'augue');
INSERT INTO `composer` VALUES(27, 206, 220, 'lectus.');
INSERT INTO `composer` VALUES(38, 285, 275, 'lacus.');
INSERT INTO `composer` VALUES(97, 270, 219, 'neque');
INSERT INTO `composer` VALUES(72, 171, 201, 'a');
INSERT INTO `composer` VALUES(22, 38, 150, 'eget');
INSERT INTO `composer` VALUES(41, 82, 327, 'mi');
INSERT INTO `composer` VALUES(21, 125, 323, 'dignissim.');
INSERT INTO `composer` VALUES(29, 339, 4, 'sollicitudin');
INSERT INTO `composer` VALUES(26, 209, 170, 'imperdiet,');
INSERT INTO `composer` VALUES(69, 361, 20, 'in,');
INSERT INTO `composer` VALUES(30, 261, 178, 'et');
INSERT INTO `composer` VALUES(44, 196, 80, 'nec');
INSERT INTO `composer` VALUES(104, 295, 395, 'nulla.');
INSERT INTO `composer` VALUES(95, 8, 99, 'sem');
INSERT INTO `composer` VALUES(71, 354, 101, 'blandit');
INSERT INTO `composer` VALUES(67, 141, 174, 'consectetuer');
INSERT INTO `composer` VALUES(83, 217, 174, 'eu');
INSERT INTO `composer` VALUES(43, 286, 351, 'sit');
INSERT INTO `composer` VALUES(45, 181, 36, 'ut,');
INSERT INTO `composer` VALUES(73, 46, 126, 'Ut');

-- --------------------------------------------------------

/* ------------------------------- */
/* CREATION DE LA TABLE INGREDIENT */
/* ------------------------------- */

CREATE TABLE `ingredient` (
  `Num_Ing` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(250) NOT NULL,
  `Categorie` int(11) NOT NULL,
  PRIMARY KEY (`Num_Ing`),
  KEY `Categorie` (`Categorie`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=388 ;

/* ---------------------------------- */
/* REMPLISSAGE DE LA TABLE INGREDIENT */
/* ---------------------------------- */

INSERT INTO `ingredient` VALUES(1, 'Ail', 1);
INSERT INTO `ingredient` VALUES(2, 'Beurre', 8);
INSERT INTO `ingredient` VALUES(3, 'Margarine', 8);
INSERT INTO `ingredient` VALUES(4, 'Chocolat', 10);
INSERT INTO `ingredient` VALUES(5, 'Crème fraîche', 5);
INSERT INTO `ingredient` VALUES(6, 'Eau', 9);
INSERT INTO `ingredient` VALUES(7, 'Farine de blé', 6);
INSERT INTO `ingredient` VALUES(8, 'Gruyère', 5);
INSERT INTO `ingredient` VALUES(9, 'Emmental', 5);
INSERT INTO `ingredient` VALUES(10, 'Huile d''olive', 8);
INSERT INTO `ingredient` VALUES(11, 'Huile de tournesol', 8);
INSERT INTO `ingredient` VALUES(12, 'Lait', 5);
INSERT INTO `ingredient` VALUES(13, 'Miel', 10);
INSERT INTO `ingredient` VALUES(14, 'Oeufs', 3);
INSERT INTO `ingredient` VALUES(15, 'Oignons', 1);
INSERT INTO `ingredient` VALUES(16, 'Pâte brisée', 11);
INSERT INTO `ingredient` VALUES(17, 'Pâte feuilletée', 11);
INSERT INTO `ingredient` VALUES(18, 'Pates', 6);
INSERT INTO `ingredient` VALUES(19, 'Poivre', 7);
INSERT INTO `ingredient` VALUES(20, 'Pommes de terre', 1);
INSERT INTO `ingredient` VALUES(21, 'Riz blanc', 6);
INSERT INTO `ingredient` VALUES(22, 'Sel', 7);
INSERT INTO `ingredient` VALUES(23, 'Sucre', 10);
INSERT INTO `ingredient` VALUES(24, 'Tomates', 1);
INSERT INTO `ingredient` VALUES(25, 'Vinaigre balsamique', 8);
INSERT INTO `ingredient` VALUES(26, 'Vinaigre de vin', 8);
INSERT INTO `ingredient` VALUES(27, 'Yaourt nature', 5);
INSERT INTO `ingredient` VALUES(28, 'Artichaut', 1);
INSERT INTO `ingredient` VALUES(29, 'Asperges', 1);
INSERT INTO `ingredient` VALUES(30, 'Aubergine', 1);
INSERT INTO `ingredient` VALUES(31, 'Avocat', 1);
INSERT INTO `ingredient` VALUES(32, 'Betterave', 1);
INSERT INTO `ingredient` VALUES(33, 'Bettes', 1);
INSERT INTO `ingredient` VALUES(34, 'Blettes', 1);
INSERT INTO `ingredient` VALUES(35, 'Brocolis', 1);
INSERT INTO `ingredient` VALUES(36, 'Carottes', 1);
INSERT INTO `ingredient` VALUES(37, 'Céleri', 1);
INSERT INTO `ingredient` VALUES(38, 'Céleri rave', 1);
INSERT INTO `ingredient` VALUES(39, 'Chou blanc', 1);
INSERT INTO `ingredient` VALUES(40, 'Chou vert', 1);
INSERT INTO `ingredient` VALUES(41, 'Chou chinois', 1);
INSERT INTO `ingredient` VALUES(42, 'Chou fractal (Romanesco)', 1);
INSERT INTO `ingredient` VALUES(43, 'Chou rouge', 1);
INSERT INTO `ingredient` VALUES(44, 'Chou-fleur', 1);
INSERT INTO `ingredient` VALUES(45, 'Choux de Bruxelles', 1);
INSERT INTO `ingredient` VALUES(46, 'Citrouille', 1);
INSERT INTO `ingredient` VALUES(47, 'Cœurs de palmier', 1);
INSERT INTO `ingredient` VALUES(48, 'Concombre', 1);
INSERT INTO `ingredient` VALUES(49, 'Courge', 1);
INSERT INTO `ingredient` VALUES(50, 'Courgette', 1);
INSERT INTO `ingredient` VALUES(51, 'Cresson', 1);
INSERT INTO `ingredient` VALUES(52, 'Endives', 1);
INSERT INTO `ingredient` VALUES(53, 'Epinards', 1);
INSERT INTO `ingredient` VALUES(54, 'Fenouil', 1);
INSERT INTO `ingredient` VALUES(55, 'Fèves', 1);
INSERT INTO `ingredient` VALUES(56, 'Flageolets', 1);
INSERT INTO `ingredient` VALUES(57, 'Germes de soja', 1);
INSERT INTO `ingredient` VALUES(58, 'Haricots beurre', 1);
INSERT INTO `ingredient` VALUES(59, 'Haricots blancs', 1);
INSERT INTO `ingredient` VALUES(60, 'Haricots rouges', 1);
INSERT INTO `ingredient` VALUES(61, 'Haricots verts', 1);
INSERT INTO `ingredient` VALUES(62, 'Lentilles', 1);
INSERT INTO `ingredient` VALUES(63, 'Lentilles corail', 1);
INSERT INTO `ingredient` VALUES(64, 'Mâche', 1);
INSERT INTO `ingredient` VALUES(65, 'Maïs', 1);
INSERT INTO `ingredient` VALUES(66, 'Navets', 1);
INSERT INTO `ingredient` VALUES(67, 'Olives noires', 1);
INSERT INTO `ingredient` VALUES(68, 'Olives vertes', 1);
INSERT INTO `ingredient` VALUES(69, 'Orties', 1);
INSERT INTO `ingredient` VALUES(70, 'Oseille', 1);
INSERT INTO `ingredient` VALUES(71, 'Panais', 1);
INSERT INTO `ingredient` VALUES(72, 'Patates douces', 1);
INSERT INTO `ingredient` VALUES(73, 'Petits pois', 1);
INSERT INTO `ingredient` VALUES(74, 'Piments frais', 1);
INSERT INTO `ingredient` VALUES(75, 'Pissenlits', 1);
INSERT INTO `ingredient` VALUES(76, 'Poireaux', 1);
INSERT INTO `ingredient` VALUES(77, 'Pois cassés', 1);
INSERT INTO `ingredient` VALUES(78, 'Pois chiches', 1);
INSERT INTO `ingredient` VALUES(79, 'Pois gourmands', 1);
INSERT INTO `ingredient` VALUES(80, 'Poivrons', 1);
INSERT INTO `ingredient` VALUES(81, 'Potimarron', 1);
INSERT INTO `ingredient` VALUES(82, 'Potiron', 1);
INSERT INTO `ingredient` VALUES(83, 'Pourpier', 1);
INSERT INTO `ingredient` VALUES(84, 'Radis', 1);
INSERT INTO `ingredient` VALUES(85, 'Radis noir', 1);
INSERT INTO `ingredient` VALUES(86, 'Roquette', 1);
INSERT INTO `ingredient` VALUES(87, 'Rutabaga', 1);
INSERT INTO `ingredient` VALUES(88, 'Salade rouge', 1);
INSERT INTO `ingredient` VALUES(89, 'Salade verte', 1);
INSERT INTO `ingredient` VALUES(90, 'Tomates vertes', 1);
INSERT INTO `ingredient` VALUES(91, 'Topinambour', 1);
INSERT INTO `ingredient` VALUES(92, 'Bolets', 1);
INSERT INTO `ingredient` VALUES(93, 'Cèpes', 1);
INSERT INTO `ingredient` VALUES(94, 'Champignons de Paris', 1);
INSERT INTO `ingredient` VALUES(95, 'Champignons noirs', 1);
INSERT INTO `ingredient` VALUES(96, 'Chanterelles', 1);
INSERT INTO `ingredient` VALUES(97, 'Coulemelles', 1);
INSERT INTO `ingredient` VALUES(98, 'Girolles', 1);
INSERT INTO `ingredient` VALUES(99, 'Lactaires sanguins', 1);
INSERT INTO `ingredient` VALUES(100, 'Morilles', 1);
INSERT INTO `ingredient` VALUES(101, 'Pieds de mouton', 1);
INSERT INTO `ingredient` VALUES(102, 'Pleurottes', 1);
INSERT INTO `ingredient` VALUES(103, 'Shitake', 1);
INSERT INTO `ingredient` VALUES(104, 'Trompettes de la mort', 1);
INSERT INTO `ingredient` VALUES(105, 'Truffes', 1);
INSERT INTO `ingredient` VALUES(106, 'Vesses de loup', 1);
INSERT INTO `ingredient` VALUES(107, 'Abricots', 2);
INSERT INTO `ingredient` VALUES(108, 'Abricots secs', 2);
INSERT INTO `ingredient` VALUES(109, 'Airelles (canneberge)', 2);
INSERT INTO `ingredient` VALUES(110, 'Amandes', 2);
INSERT INTO `ingredient` VALUES(111, 'Ananas', 2);
INSERT INTO `ingredient` VALUES(112, 'Bananes', 2);
INSERT INTO `ingredient` VALUES(113, 'Cacahuètes', 2);
INSERT INTO `ingredient` VALUES(114, 'Cassis', 2);
INSERT INTO `ingredient` VALUES(115, 'Cerises', 2);
INSERT INTO `ingredient` VALUES(116, 'Châtaignes', 2);
INSERT INTO `ingredient` VALUES(117, 'Citron', 2);
INSERT INTO `ingredient` VALUES(118, 'Citron vert', 2);
INSERT INTO `ingredient` VALUES(119, 'Clémentine', 2);
INSERT INTO `ingredient` VALUES(120, 'Coings', 2);
INSERT INTO `ingredient` VALUES(121, 'Dattes', 2);
INSERT INTO `ingredient` VALUES(122, 'Figues', 2);
INSERT INTO `ingredient` VALUES(123, 'Fraises', 2);
INSERT INTO `ingredient` VALUES(124, 'Framboises', 2);
INSERT INTO `ingredient` VALUES(125, 'Fruit de la passion', 2);
INSERT INTO `ingredient` VALUES(126, 'Fruits confits', 2);
INSERT INTO `ingredient` VALUES(127, 'Fruits rouges', 2);
INSERT INTO `ingredient` VALUES(128, 'Goyaves', 2);
INSERT INTO `ingredient` VALUES(129, 'Goyaviers', 2);
INSERT INTO `ingredient` VALUES(130, 'Grenade', 2);
INSERT INTO `ingredient` VALUES(131, 'Groseilles', 2);
INSERT INTO `ingredient` VALUES(132, 'Kiwi', 2);
INSERT INTO `ingredient` VALUES(133, 'Letchi', 2);
INSERT INTO `ingredient` VALUES(134, 'Mangue', 2);
INSERT INTO `ingredient` VALUES(135, 'Marrons', 2);
INSERT INTO `ingredient` VALUES(136, 'Melon', 2);
INSERT INTO `ingredient` VALUES(137, 'Mirabelles', 2);
INSERT INTO `ingredient` VALUES(138, 'Mûres', 2);
INSERT INTO `ingredient` VALUES(139, 'Myrtilles', 2);
INSERT INTO `ingredient` VALUES(140, 'Nèfles', 2);
INSERT INTO `ingredient` VALUES(141, 'Noisettes', 2);
INSERT INTO `ingredient` VALUES(142, 'Noix', 2);
INSERT INTO `ingredient` VALUES(143, 'Noix de cajou', 2);
INSERT INTO `ingredient` VALUES(144, 'Noix de coco', 2);
INSERT INTO `ingredient` VALUES(145, 'Noix de macadamia', 2);
INSERT INTO `ingredient` VALUES(146, 'Noix de pécan', 2);
INSERT INTO `ingredient` VALUES(147, 'Oranges', 2);
INSERT INTO `ingredient` VALUES(148, 'Pamplemousse', 2);
INSERT INTO `ingredient` VALUES(149, 'Papaye', 2);
INSERT INTO `ingredient` VALUES(150, 'Pastèque', 2);
INSERT INTO `ingredient` VALUES(151, 'Pêche', 2);
INSERT INTO `ingredient` VALUES(152, 'Pignons de pin', 2);
INSERT INTO `ingredient` VALUES(153, 'Pistaches', 2);
INSERT INTO `ingredient` VALUES(154, 'Poires', 2);
INSERT INTO `ingredient` VALUES(155, 'Pommes', 2);
INSERT INTO `ingredient` VALUES(156, 'Pruneaux', 2);
INSERT INTO `ingredient` VALUES(157, 'Prunes', 2);
INSERT INTO `ingredient` VALUES(158, 'Raisins blanc', 2);
INSERT INTO `ingredient` VALUES(159, 'Raisins noirs', 2);
INSERT INTO `ingredient` VALUES(160, 'Raisins secs', 2);
INSERT INTO `ingredient` VALUES(161, 'Rhubarbe', 2);
INSERT INTO `ingredient` VALUES(162, 'Agneau', 3);
INSERT INTO `ingredient` VALUES(163, 'Andouille', 3);
INSERT INTO `ingredient` VALUES(164, 'Andouillette', 3);
INSERT INTO `ingredient` VALUES(165, 'Bacon', 3);
INSERT INTO `ingredient` VALUES(166, 'Boeuf', 3);
INSERT INTO `ingredient` VALUES(167, 'Boudin blanc', 3);
INSERT INTO `ingredient` VALUES(168, 'Boudin noir', 3);
INSERT INTO `ingredient` VALUES(169, 'Caille', 3);
INSERT INTO `ingredient` VALUES(170, 'Caillette', 3);
INSERT INTO `ingredient` VALUES(171, 'Canard', 3);
INSERT INTO `ingredient` VALUES(172, 'Chorizo', 3);
INSERT INTO `ingredient` VALUES(173, 'Crêpine', 3);
INSERT INTO `ingredient` VALUES(174, 'Dinde', 3);
INSERT INTO `ingredient` VALUES(175, 'Escargots', 3);
INSERT INTO `ingredient` VALUES(176, 'Foie de génisse', 3);
INSERT INTO `ingredient` VALUES(177, 'Foie de veau', 3);
INSERT INTO `ingredient` VALUES(178, 'Foie gras', 3);
INSERT INTO `ingredient` VALUES(179, 'Foie de volaille', 3);
INSERT INTO `ingredient` VALUES(180, 'Gésiers', 3);
INSERT INTO `ingredient` VALUES(181, 'Jambon blanc', 3);
INSERT INTO `ingredient` VALUES(182, 'Jambon cru', 3);
INSERT INTO `ingredient` VALUES(183, 'Jambon fumé', 3);
INSERT INTO `ingredient` VALUES(184, 'Lapin', 3);
INSERT INTO `ingredient` VALUES(185, 'Lard', 3);
INSERT INTO `ingredient` VALUES(186, 'Lardons', 3);
INSERT INTO `ingredient` VALUES(187, 'Merguez', 3);
INSERT INTO `ingredient` VALUES(188, 'Mouton', 3);
INSERT INTO `ingredient` VALUES(189, 'Oeufs de caille', 3);
INSERT INTO `ingredient` VALUES(190, 'Os à moelle', 3);
INSERT INTO `ingredient` VALUES(191, 'Petit salé', 3);
INSERT INTO `ingredient` VALUES(192, 'Pied de veau', 3);
INSERT INTO `ingredient` VALUES(193, 'Pigeon', 3);
INSERT INTO `ingredient` VALUES(194, 'Porc', 3);
INSERT INTO `ingredient` VALUES(195, 'Poulet', 3);
INSERT INTO `ingredient` VALUES(196, 'Quenelles', 3);
INSERT INTO `ingredient` VALUES(197, 'Rognons', 3);
INSERT INTO `ingredient` VALUES(198, 'Saucisses', 3);
INSERT INTO `ingredient` VALUES(199, 'Saucisson', 3);
INSERT INTO `ingredient` VALUES(200, 'Tripes', 3);
INSERT INTO `ingredient` VALUES(201, 'Veau', 3);
INSERT INTO `ingredient` VALUES(202, 'Aiglefin', 4);
INSERT INTO `ingredient` VALUES(203, 'Amandes de mer', 4);
INSERT INTO `ingredient` VALUES(204, 'Anchois au sel', 4);
INSERT INTO `ingredient` VALUES(205, 'Anchois frais', 4);
INSERT INTO `ingredient` VALUES(206, 'Anguille', 4);
INSERT INTO `ingredient` VALUES(207, 'Araignée de mer', 4);
INSERT INTO `ingredient` VALUES(208, 'Bar', 4);
INSERT INTO `ingredient` VALUES(209, 'Barbu', 4);
INSERT INTO `ingredient` VALUES(210, 'Bonite', 4);
INSERT INTO `ingredient` VALUES(211, 'Brochet', 4);
INSERT INTO `ingredient` VALUES(212, 'Cabillaud', 4);
INSERT INTO `ingredient` VALUES(213, 'Calamars', 4);
INSERT INTO `ingredient` VALUES(214, 'Carpe', 4);
INSERT INTO `ingredient` VALUES(215, 'Colin', 4);
INSERT INTO `ingredient` VALUES(216, 'Congre', 4);
INSERT INTO `ingredient` VALUES(217, 'Coques', 4);
INSERT INTO `ingredient` VALUES(218, 'Crevettes', 4);
INSERT INTO `ingredient` VALUES(219, 'Daurade', 4);
INSERT INTO `ingredient` VALUES(220, 'Écrevisses', 4);
INSERT INTO `ingredient` VALUES(221, 'Encornets', 4);
INSERT INTO `ingredient` VALUES(222, 'Eperlan', 4);
INSERT INTO `ingredient` VALUES(223, 'Espadon', 4);
INSERT INTO `ingredient` VALUES(224, 'Etrilles', 4);
INSERT INTO `ingredient` VALUES(225, 'Flétan', 4);
INSERT INTO `ingredient` VALUES(226, 'Fumet de poisson', 4);
INSERT INTO `ingredient` VALUES(227, 'Gambas', 4);
INSERT INTO `ingredient` VALUES(228, 'Haddock', 4);
INSERT INTO `ingredient` VALUES(229, 'Hareng', 4);
INSERT INTO `ingredient` VALUES(230, 'Homard', 4);
INSERT INTO `ingredient` VALUES(231, 'Huîtres', 4);
INSERT INTO `ingredient` VALUES(232, 'Langoustes', 4);
INSERT INTO `ingredient` VALUES(233, 'Langoustines', 4);
INSERT INTO `ingredient` VALUES(234, 'Lieu', 4);
INSERT INTO `ingredient` VALUES(235, 'Limande', 4);
INSERT INTO `ingredient` VALUES(236, 'Lotte', 4);
INSERT INTO `ingredient` VALUES(237, 'Loup de mer', 4);
INSERT INTO `ingredient` VALUES(238, 'Maquereau', 4);
INSERT INTO `ingredient` VALUES(239, 'Merlan', 4);
INSERT INTO `ingredient` VALUES(240, 'Merlu', 4);
INSERT INTO `ingredient` VALUES(241, 'Mérou', 4);
INSERT INTO `ingredient` VALUES(242, 'Morue', 4);
INSERT INTO `ingredient` VALUES(243, 'Moules', 4);
INSERT INTO `ingredient` VALUES(244, 'Noix de pétoncle', 4);
INSERT INTO `ingredient` VALUES(245, 'Oeufs de lump', 4);
INSERT INTO `ingredient` VALUES(246, 'Palourdes', 4);
INSERT INTO `ingredient` VALUES(247, 'Panga', 4);
INSERT INTO `ingredient` VALUES(248, 'Perche', 4);
INSERT INTO `ingredient` VALUES(249, 'Poulpe', 4);
INSERT INTO `ingredient` VALUES(250, 'Poutargue', 4);
INSERT INTO `ingredient` VALUES(251, 'Rouget', 4);
INSERT INTO `ingredient` VALUES(252, 'Rouille', 4);
INSERT INTO `ingredient` VALUES(253, 'Roussette', 4);
INSERT INTO `ingredient` VALUES(254, 'Saint-Jacques', 4);
INSERT INTO `ingredient` VALUES(255, 'Sandre', 4);
INSERT INTO `ingredient` VALUES(256, 'Sardines', 4);
INSERT INTO `ingredient` VALUES(257, 'Saumon', 4);
INSERT INTO `ingredient` VALUES(258, 'Saumon fumé', 4);
INSERT INTO `ingredient` VALUES(259, 'Seiche', 4);
INSERT INTO `ingredient` VALUES(260, 'Sole', 4);
INSERT INTO `ingredient` VALUES(261, 'Surimi', 4);
INSERT INTO `ingredient` VALUES(262, 'Thon en boîte', 4);
INSERT INTO `ingredient` VALUES(263, 'Thon frais', 4);
INSERT INTO `ingredient` VALUES(264, 'Tourteau', 4);
INSERT INTO `ingredient` VALUES(265, 'Truite', 4);
INSERT INTO `ingredient` VALUES(266, 'Beaufort', 5);
INSERT INTO `ingredient` VALUES(267, 'Bleu d''Auvergne', 5);
INSERT INTO `ingredient` VALUES(268, 'Brie', 5);
INSERT INTO `ingredient` VALUES(269, 'Camembert', 5);
INSERT INTO `ingredient` VALUES(270, 'Cantal', 5);
INSERT INTO `ingredient` VALUES(271, 'Cheddar', 5);
INSERT INTO `ingredient` VALUES(272, 'Fromage de chèvre', 5);
INSERT INTO `ingredient` VALUES(273, 'Fromage de brebis', 5);
INSERT INTO `ingredient` VALUES(274, 'Comté', 5);
INSERT INTO `ingredient` VALUES(275, 'Crème chantilly', 5);
INSERT INTO `ingredient` VALUES(276, 'Crème de soja', 5);
INSERT INTO `ingredient` VALUES(277, 'Faisselle', 5);
INSERT INTO `ingredient` VALUES(278, 'Feta', 5);
INSERT INTO `ingredient` VALUES(279, 'Fromage blanc', 5);
INSERT INTO `ingredient` VALUES(280, 'Fromage frais', 5);
INSERT INTO `ingredient` VALUES(281, 'Gorgonzola', 5);
INSERT INTO `ingredient` VALUES(282, 'Gouda', 5);
INSERT INTO `ingredient` VALUES(283, 'Lait concentré', 5);
INSERT INTO `ingredient` VALUES(284, 'Lait de coco', 5);
INSERT INTO `ingredient` VALUES(285, 'Lait de soja', 5);
INSERT INTO `ingredient` VALUES(286, 'Lait fermenté', 5);
INSERT INTO `ingredient` VALUES(287, 'Mascarpone', 5);
INSERT INTO `ingredient` VALUES(288, 'Mimolette', 5);
INSERT INTO `ingredient` VALUES(289, 'Mont d''Or', 5);
INSERT INTO `ingredient` VALUES(290, 'Morbier', 5);
INSERT INTO `ingredient` VALUES(291, 'Mozzarella', 5);
INSERT INTO `ingredient` VALUES(292, 'Munster', 5);
INSERT INTO `ingredient` VALUES(293, 'Parmesan', 5);
INSERT INTO `ingredient` VALUES(294, 'Petits Suisses', 5);
INSERT INTO `ingredient` VALUES(295, 'Raclette', 5);
INSERT INTO `ingredient` VALUES(296, 'Reblochon', 5);
INSERT INTO `ingredient` VALUES(297, 'Roquefort', 5);
INSERT INTO `ingredient` VALUES(298, 'Saint-Nectaire', 5);
INSERT INTO `ingredient` VALUES(299, 'Saint-Marcellin', 5);
INSERT INTO `ingredient` VALUES(300, 'Blé', 6);
INSERT INTO `ingredient` VALUES(301, 'Boulghour', 6);
INSERT INTO `ingredient` VALUES(302, 'Farine d''orge', 6);
INSERT INTO `ingredient` VALUES(303, 'Farine de châtaignes', 6);
INSERT INTO `ingredient` VALUES(304, 'Farine de froment', 6);
INSERT INTO `ingredient` VALUES(305, 'Farine de maïs', 6);
INSERT INTO `ingredient` VALUES(306, 'Farine de noix de coco', 6);
INSERT INTO `ingredient` VALUES(307, 'Farine de petit épeautre', 6);
INSERT INTO `ingredient` VALUES(308, 'Farine de pois chiches', 6);
INSERT INTO `ingredient` VALUES(309, 'Farine de quinoa', 6);
INSERT INTO `ingredient` VALUES(310, 'Farine de riz', 6);
INSERT INTO `ingredient` VALUES(311, 'Farine de sarrazin', 6);
INSERT INTO `ingredient` VALUES(312, 'Farine de seigle', 6);
INSERT INTO `ingredient` VALUES(313, 'Galettes de riz', 6);
INSERT INTO `ingredient` VALUES(314, 'Graines de courge', 6);
INSERT INTO `ingredient` VALUES(315, 'Graines de tournesol', 6);
INSERT INTO `ingredient` VALUES(316, 'Lasagnes', 6);
INSERT INTO `ingredient` VALUES(317, 'Mil', 6);
INSERT INTO `ingredient` VALUES(318, 'Muesli', 6);
INSERT INTO `ingredient` VALUES(319, 'Nouilles chinoises', 6);
INSERT INTO `ingredient` VALUES(320, 'Pâtes de riz', 6);
INSERT INTO `ingredient` VALUES(321, 'Quinoa', 6);
INSERT INTO `ingredient` VALUES(322, 'Riz complet', 6);
INSERT INTO `ingredient` VALUES(323, 'Sarrazin', 6);
INSERT INTO `ingredient` VALUES(324, 'Semoule de blé', 6);
INSERT INTO `ingredient` VALUES(325, 'Semoule de maïs', 6);
INSERT INTO `ingredient` VALUES(326, 'Vermicelles de riz', 6);
INSERT INTO `ingredient` VALUES(327, 'Cannelle', 7);
INSERT INTO `ingredient` VALUES(328, 'Cardamome', 7);
INSERT INTO `ingredient` VALUES(329, 'Clous de girofle', 7);
INSERT INTO `ingredient` VALUES(330, 'Colombo', 7);
INSERT INTO `ingredient` VALUES(331, 'Cumin', 7);
INSERT INTO `ingredient` VALUES(332, 'Curcuma', 7);
INSERT INTO `ingredient` VALUES(333, 'Curry', 7);
INSERT INTO `ingredient` VALUES(334, 'Eau de fleur d''oranger', 7);
INSERT INTO `ingredient` VALUES(335, 'Eau de rose', 7);
INSERT INTO `ingredient` VALUES(336, 'Essence d''amandes', 7);
INSERT INTO `ingredient` VALUES(337, 'Extrait d''amandes amères', 7);
INSERT INTO `ingredient` VALUES(338, 'Garam massala', 7);
INSERT INTO `ingredient` VALUES(339, 'Kari gosse', 7);
INSERT INTO `ingredient` VALUES(340, 'Noix de muscade', 7);
INSERT INTO `ingredient` VALUES(341, 'Paprika', 7);
INSERT INTO `ingredient` VALUES(342, 'Piment', 7);
INSERT INTO `ingredient` VALUES(343, 'Safran', 7);
INSERT INTO `ingredient` VALUES(344, 'Vanille', 7);
INSERT INTO `ingredient` VALUES(345, 'Armagnac', 9);
INSERT INTO `ingredient` VALUES(346, 'Bière', 9);
INSERT INTO `ingredient` VALUES(347, 'Calvados', 9);
INSERT INTO `ingredient` VALUES(348, 'Champagne', 9);
INSERT INTO `ingredient` VALUES(349, 'Cide', 9);
INSERT INTO `ingredient` VALUES(350, 'Cognac', 9);
INSERT INTO `ingredient` VALUES(351, 'Cointreau', 9);
INSERT INTO `ingredient` VALUES(352, 'Eau de vie', 9);
INSERT INTO `ingredient` VALUES(353, 'Eau gazeuse', 9);
INSERT INTO `ingredient` VALUES(354, 'Grand Marnier', 9);
INSERT INTO `ingredient` VALUES(355, 'Kirsch', 9);
INSERT INTO `ingredient` VALUES(356, 'Madère', 9);
INSERT INTO `ingredient` VALUES(357, 'Martini', 9);
INSERT INTO `ingredient` VALUES(358, 'Muscat', 9);
INSERT INTO `ingredient` VALUES(359, 'Pastis', 9);
INSERT INTO `ingredient` VALUES(360, 'Porto', 9);
INSERT INTO `ingredient` VALUES(361, 'Rhum', 9);
INSERT INTO `ingredient` VALUES(362, 'Saké', 9);
INSERT INTO `ingredient` VALUES(363, 'Vin blanc', 9);
INSERT INTO `ingredient` VALUES(364, 'Vin rouge', 9);
INSERT INTO `ingredient` VALUES(365, 'Vodka', 9);
INSERT INTO `ingredient` VALUES(366, 'Whisky', 9);
INSERT INTO `ingredient` VALUES(367, 'Graisse d''oie', 8);
INSERT INTO `ingredient` VALUES(368, 'Graisse de canard', 8);
INSERT INTO `ingredient` VALUES(369, 'Huile d''arachide', 8);
INSERT INTO `ingredient` VALUES(370, 'Huile de noix', 8);
INSERT INTO `ingredient` VALUES(371, 'Huile de palme', 8);
INSERT INTO `ingredient` VALUES(372, 'Huile de pépins de raisin', 8);
INSERT INTO `ingredient` VALUES(373, 'Huile de sésame', 8);
INSERT INTO `ingredient` VALUES(374, 'Saindoux', 8);
INSERT INTO `ingredient` VALUES(376, 'Mesclun', 1);
INSERT INTO `ingredient` VALUES(377, 'Ciboulette', 7);
INSERT INTO `ingredient` VALUES(378, 'Origan séché', 7);
INSERT INTO `ingredient` VALUES(379, 'Persil plat', 7);
INSERT INTO `ingredient` VALUES(380, 'Sirop de grenadine', 10);
INSERT INTO `ingredient` VALUES(381, 'Limonade', 9);
INSERT INTO `ingredient` VALUES(382, 'Jus d''ananas', 9);
INSERT INTO `ingredient` VALUES(383, 'Glace vanille', 10);
INSERT INTO `ingredient` VALUES(384, 'Jus de groseille', 9);
INSERT INTO `ingredient` VALUES(385, 'Nectar d''abricot', 9);
INSERT INTO `ingredient` VALUES(386, 'Sorbet au limon', 10);
INSERT INTO `ingredient` VALUES(387, 'Jus de pamplemousse amer (tonic)', 9);

-- --------------------------------------------------------

/* ---------------------------- */
/* CREATION DE LA TABLE RECETTE */
/* ---------------------------- */

CREATE TABLE `recette` (
  `Num_Rec` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Categorie` int(11) NOT NULL,
  `Part` int(11) DEFAULT NULL,
  `Temps_Prep` time DEFAULT NULL,
  `Temps_Cuiss` time DEFAULT NULL,
  `Desc` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `Rmq` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  PRIMARY KEY (`Num_Rec`),
  KEY `Categorie` (`Categorie`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

/* ------------------------------- */
/* REMPLISSAGE DE LA TABLE RECETTE */
/* ------------------------------- */

INSERT INTO `recette` VALUES(2, 'Pâtes au beurre', 2, 1, '00:00:00', '00:10:00', 'Porter de l''eau à ébullition. Plongez les pâtes durant le temps indiqué sur le paquet. Quand elles sont cuites, les égoutter.\r\nUne fois égouttées, remettez-les sur le feu avec le beurre.', 'A deguster avec de la charcuterie, par exemple.');
INSERT INTO `recette` VALUES(1, 'Salade du jardin', 1, 4, '00:20:00', '00:00:00', 'Pelez et coupez le concombre en rondelles. Coupez les tomates en deux. Mélangez le mesclun, le concombre et les tomates dans un saladier. Dénoyautez, pelez et coupez l''avocat en dés. Ajoutez les dés d''avocats et les olives noires dans le saladier.', 'Servez accompagné d''une vinaigrette.');
INSERT INTO `recette` VALUES(5, 'Blancs de poulet grillés', 2, 4, '00:05:00', '00:10:00', 'Enlevez la peau du poulet. A l''aide de ciseaux de cuisine, coupez chaque blanc en deux dans le sens de la longueur, sans aller jusqu''au bout.\r\nPosez chaque blanc ainsi découpé bien à plat, badigeonnez d''huile d''olive et saupoudrez de sel et de poivre. Faites chauffer une poêle-gril. Quand elle est bien chaude, faites-y cuire les blancs jusqu''à ce qu''on voie les marques du gril de chaque côté.', 'Servez bien chaud, accompagné d''une salsa tomate-concombre.');
INSERT INTO `recette` VALUES(3, 'Fagots d''asperges au parme', 1, 3, '00:10:00', '00:28:00', 'Faire cuire les asperges pelées dans une grande casserole d''eau bouillante salée, 4 à 8 minutes à feu moyen, jusqu''à ce qu''elles soient tendre. Egouttez-les et passez-les sous l''eau froide. Coupez la mozzarella en 18 tranches égales. Faire 6 tas de jambon de même hauteur. Prenez 3 asperges. Ajoutez 2 tranches de mozzarella. Enroulez le jambon autour avec toutes les tranches d''un tas. Répétez l''opération jusqu''à obtenir 6 fagots. Disposez ces fagots dans un plat. Mettez une dernière tranche de mozzarella sur chaque fagot. Faites cuire 20 minutes en haut du four préchauffé à 200°C.', NULL);
INSERT INTO `recette` VALUES(4, 'Oeufs en cocotte et saumon fumé', 1, 4, '00:10:00', '00:15:00', 'Répartissez les chutes de saumon fumé et la ciboulette dans 4 ramequins beurrés. Formez un petit puit au centre avec le dos d''une cuillère. Cassez un oeuf dans chaque puit et nappez de crème fraîche. Déposez les ramequins dans un plat à gratin et remplissez ce dernier d''eau bouillante jusqu''à mi-hauteur. Faites cuire 10 à 15 minutes dans un four préchauffé à 180°C jusqu''à ce que les oeufs soient pris.', 'Servir avec du pain grillé');
INSERT INTO `recette` VALUES(6, 'Salade grecque', 1, 4, '00:10:00', '00:25:00', 'Faites chauffer 3 cuillerées à soupe d''huile dans une cocotte, puis faites-y revenir l''oignon, les poivrons et l''ail. Quand les légumes sont fondants, ajoutez la fêta et l''origan. Salez et poivrez.\r\nArrosez avec le restant d''huile. Couvrez et faites cuire 15 minutes dans un four préchauffé à 200°C. Parsemez de persil plat ciselé.', 'Servez aussitôt avec du pain chaud bien croustillant.');
INSERT INTO `recette` VALUES(7, 'Monaco', 4, 2, '00:05:00', '00:00:00', 'Verser le sirop de grenadine dans un verre. Remplissez jusqu''au 1/3 de limonade. Terminez avec la bière.', NULL);
INSERT INTO `recette` VALUES(8, 'Tropical banana', 4, 1, '00:05:00', '00:00:00', 'Pelez la banane et coupez-la en rondelles. Mélangez avec le jus d''ananas, le lait, le miel, 1 cuillerée et 1/2 noix de coco rapée. Ajoutez des glaçons et mixez jusqu''à l''obtention d''un liquide mousseux. Versez dans un grand verre, saupoudrez avec le reste de noix de coco rapée et décorez avec des morceaux de banane.', NULL);
INSERT INTO `recette` VALUES(9, 'Milk-shake à la fraise', 4, 1, '00:20:00', '00:00:00', 'Lavez et équeuttez les fraises. Mélangez avec le jus de citron et le sucre dans un robot et réduisez en compote. Incorporez la glace vanille et battez en un mélange mousseux. Versez dans un grand verre.', 'Décorez avec une fraise.');
INSERT INTO `recette` VALUES(10, 'Abricot-berry', 4, 1, '00:10:00', '00:00:00', 'Mélangez les jus avec le yaourt et le sucre.', 'Servez frais.');
INSERT INTO `recette` VALUES(11, 'Lemon slush', 4, 1, '00:05:00', '00:00:00', 'Mettez la glace dans un robot. Battez-la quelques secondes pour la ramollir. Mettez dans un grand verre et ajoutez du pamplemousse amer.', 'Décorez avec une rondelle de limon.');
INSERT INTO `recette` VALUES(12, 'massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc', 2, 2, '21:44:02', '20:12:06', 'Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis,', '');
INSERT INTO `recette` VALUES(13, 'ac ipsum.', 1, 1, '13:16:55', '07:16:16', 'vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed', 'A accompagner avec du vin rouge');
INSERT INTO `recette` VALUES(14, 'massa. Quisque porttitor eros', 1, 3, '21:36:20', '16:37:28', 'nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at', '');
INSERT INTO `recette` VALUES(15, 'velit. Pellentesque ultricies dignissim lacus.', 2, 4, '03:10:46', '16:46:25', 'aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus', '');
INSERT INTO `recette` VALUES(16, 'aliquam', 3, 1, '11:11:40', '12:06:46', 'Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem', '. Sed auctor odio ');
INSERT INTO `recette` VALUES(17, 'diam at pretium aliquet, metus urna convallis erat, eget tincidunt', 3, 2, '14:25:16', '13:06:40', 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur', '');
INSERT INTO `recette` VALUES(18, 'augue malesuada malesuada. Integer id', 2, 4, '09:20:27', '16:55:24', 'sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent', 'lectus');
INSERT INTO `recette` VALUES(19, 'egestas.', 2, 2, '07:54:39', '07:43:23', 'vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac', 'Fais ce que tu veux');
INSERT INTO `recette` VALUES(20, 'magna. Sed eu eros. Nam consequat dolor', 4, 2, '00:59:46', '08:29:49', 'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu.', '');
INSERT INTO `recette` VALUES(21, 'consectetuer euismod', 1, 1, '04:58:31', '15:35:02', 'blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi', '');
INSERT INTO `recette` VALUES(22, 'at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu', 4, 1, '19:28:27', '11:40:41', 'posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit', '');
INSERT INTO `recette` VALUES(23, 'et nunc. Quisque ornare tortor at risus. Nunc', 4, 2, '19:54:03', '15:58:45', 'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.', '');
INSERT INTO `recette` VALUES(24, 'lacus, varius', 4, 2, '00:50:39', '06:29:15', 'ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo.', '');
INSERT INTO `recette` VALUES(25, 'cursus et, magna. Praesent interdum ligula eu enim.', 4, 2, '07:13:50', '22:46:42', 'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi', '');
INSERT INTO `recette` VALUES(26, 'ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 2, 3, '15:37:58', '15:31:15', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae', '');
INSERT INTO `recette` VALUES(27, 'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis', 1, 3, '02:56:54', '20:43:32', 'sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat', '');
INSERT INTO `recette` VALUES(28, 'nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus.', 3, 2, '15:09:54', '09:05:07', 'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam', '');
INSERT INTO `recette` VALUES(29, 'dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing', 4, 4, '18:52:12', '00:48:14', 'Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius', '');
INSERT INTO `recette` VALUES(30, 'Duis risus odio, auctor vitae, aliquet nec, imperdiet', 2, 4, '11:59:01', '01:41:09', 'eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim.', '');
INSERT INTO `recette` VALUES(31, 'id', 1, 1, '18:20:03', '08:18:00', 'Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper', '');
INSERT INTO `recette` VALUES(32, 'Nullam ut nisi', 2, 3, '20:50:55', '04:47:42', 'amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia', '');
INSERT INTO `recette` VALUES(33, 'urna suscipit nonummy. Fusce fermentum fermentum arcu.', 1, 3, '11:16:23', '16:44:47', 'nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,', '');
INSERT INTO `recette` VALUES(34, 'felis ullamcorper viverra. Maecenas iaculis', 2, 1, '22:21:56', '11:26:21', 'arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat', '');
INSERT INTO `recette` VALUES(35, 'eget, ipsum. Donec sollicitudin adipiscing', 3, 1, '01:36:58', '02:12:16', 'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu', '');
INSERT INTO `recette` VALUES(36, 'commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa', 1, 1, '20:54:21', '20:30:52', 'in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu', '');
INSERT INTO `recette` VALUES(37, 'auctor,', 4, 3, '10:18:26', '20:17:51', 'molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', '');
INSERT INTO `recette` VALUES(38, 'elit, pellentesque a, facilisis non, bibendum', 3, 3, '16:28:55', '01:01:25', 'tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis', '');
INSERT INTO `recette` VALUES(39, 'tellus justo sit amet nulla.', 2, 2, '20:50:13', '05:05:37', 'amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean', '');
INSERT INTO `recette` VALUES(40, 'non, bibendum sed, est. Nunc laoreet lectus', 1, 3, '02:04:57', '18:53:44', 'adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc', '');
INSERT INTO `recette` VALUES(41, 'nulla. Cras eu tellus', 3, 2, '02:25:57', '16:29:09', 'Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed', '');
INSERT INTO `recette` VALUES(42, 'Nulla eget metus eu erat semper rutrum.', 1, 3, '00:53:23', '14:53:28', 'sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu', '');
INSERT INTO `recette` VALUES(43, 'est, mollis non, cursus non, egestas a, dui.', 4, 4, '13:54:59', '00:15:36', 'id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent', '');
INSERT INTO `recette` VALUES(44, 'Vivamus euismod', 3, 1, '03:47:20', '12:49:33', 'non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod', '');
INSERT INTO `recette` VALUES(45, 'pede nec ante blandit', 3, 3, '05:11:15', '04:05:26', 'accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis', '');
INSERT INTO `recette` VALUES(46, 'diam. Sed diam lorem,', 2, 2, '18:24:15', '04:32:00', 'diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique', '');
INSERT INTO `recette` VALUES(47, 'nibh sit amet orci.', 2, 4, '20:26:09', '11:44:35', 'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', '');
INSERT INTO `recette` VALUES(48, 'tincidunt,', 3, 3, '14:55:27', '06:50:51', 'Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec', '');
INSERT INTO `recette` VALUES(49, 'ligula. Aenean gravida', 2, 2, '15:50:10', '11:37:29', 'porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', '');
INSERT INTO `recette` VALUES(50, 'amet orci. Ut sagittis lobortis', 1, 4, '06:32:07', '21:58:40', 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac', '');
INSERT INTO `recette` VALUES(51, 'viverra. Maecenas iaculis aliquet diam. Sed diam', 3, 4, '23:18:53', '20:49:36', 'convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a', '');
INSERT INTO `recette` VALUES(52, 'Aenean egestas hendrerit neque. In ornare sagittis', 3, 3, '17:35:56', '14:16:18', 'Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,', '');
INSERT INTO `recette` VALUES(53, 'mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla,', 2, 2, '13:49:12', '11:32:27', 'nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing', '');
INSERT INTO `recette` VALUES(54, 'faucibus orci luctus et ultrices posuere', 1, 4, '09:44:01', '12:54:28', 'Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', '');
INSERT INTO `recette` VALUES(55, 'Nunc sed orci lobortis augue', 1, 2, '14:46:31', '05:45:09', 'eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum', '');
INSERT INTO `recette` VALUES(56, 'nunc, ullamcorper eu, euismod', 4, 1, '03:33:47', '20:11:30', 'ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at', '');
INSERT INTO `recette` VALUES(57, 'magna nec quam. Curabitur vel lectus. Cum sociis natoque', 1, 3, '23:44:25', '22:29:05', 'Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl', '');
INSERT INTO `recette` VALUES(58, 'Nunc lectus pede,', 1, 2, '18:12:33', '11:50:58', 'mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et', '');
INSERT INTO `recette` VALUES(59, 'nisi nibh lacinia orci, consectetuer', 4, 1, '05:37:55', '01:24:44', 'mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere', '');
INSERT INTO `recette` VALUES(60, 'lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,', 4, 3, '03:40:20', '08:13:46', 'consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis', '');
INSERT INTO `recette` VALUES(61, 'erat, eget tincidunt', 2, 3, '12:10:27', '13:26:23', 'nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.', '');
INSERT INTO `recette` VALUES(62, 'magna a neque. Nullam', 1, 2, '14:02:23', '06:13:02', 'tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor', '');
INSERT INTO `recette` VALUES(63, 'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas', 4, 4, '01:56:45', '15:03:22', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula', '');
INSERT INTO `recette` VALUES(64, 'nisi dictum augue', 1, 1, '15:36:30', '11:57:59', 'arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet', '');
INSERT INTO `recette` VALUES(65, 'non, sollicitudin a, malesuada id, erat. Etiam vestibulum', 3, 3, '09:25:45', '11:35:48', 'non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt', '');
INSERT INTO `recette` VALUES(66, 'nisi. Mauris nulla. Integer', 4, 4, '08:43:55', '18:30:55', 'Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est,', '');
INSERT INTO `recette` VALUES(67, 'Vivamus sit amet risus.', 4, 4, '02:56:41', '02:19:30', 'a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer', '');
INSERT INTO `recette` VALUES(68, 'sem ut cursus luctus, ipsum leo elementum', 4, 1, '22:53:57', '00:23:59', 'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur', '');
INSERT INTO `recette` VALUES(69, 'orci, in consequat enim', 1, 4, '11:17:01', '22:43:53', 'sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris', '');
INSERT INTO `recette` VALUES(70, 'fermentum arcu. Vestibulum ante ipsum', 3, 1, '06:51:55', '00:16:54', 'Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In', '');
INSERT INTO `recette` VALUES(71, 'ac, eleifend vitae, erat. Vivamus', 2, 1, '02:14:15', '19:57:58', 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a,', '');
INSERT INTO `recette` VALUES(72, 'dapibus ligula. Aliquam erat volutpat. Nulla', 3, 2, '01:58:13', '04:27:21', 'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem', '');
INSERT INTO `recette` VALUES(73, 'eget nisi', 3, 4, '15:13:22', '17:51:32', 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper', '');
INSERT INTO `recette` VALUES(74, 'gravida mauris ut mi. Duis risus', 4, 1, '17:31:26', '14:13:40', 'viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam', '');
INSERT INTO `recette` VALUES(75, 'orci, consectetuer euismod est arcu ac orci. Ut semper', 2, 1, '00:45:01', '10:47:05', 'ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', '');
INSERT INTO `recette` VALUES(76, 'Nullam nisl. Maecenas malesuada fringilla', 4, 1, '01:02:53', '22:25:10', 'enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed', '');
INSERT INTO `recette` VALUES(77, 'Morbi', 3, 2, '08:27:24', '00:49:15', 'sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut', '');
INSERT INTO `recette` VALUES(78, 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin', 4, 2, '10:12:31', '21:02:48', 'eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at,', '');
INSERT INTO `recette` VALUES(79, 'at, libero. Morbi', 2, 1, '21:25:31', '19:02:50', 'cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', '');
INSERT INTO `recette` VALUES(80, 'nulla magna, malesuada vel, convallis in,', 3, 1, '07:11:24', '17:20:10', 'massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis.', '');
INSERT INTO `recette` VALUES(81, 'massa. Suspendisse eleifend. Cras sed leo. Cras', 1, 2, '21:01:51', '11:05:25', 'dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,', '');
INSERT INTO `recette` VALUES(82, 'non, lacinia at, iaculis quis, pede. Praesent', 1, 4, '02:29:36', '22:23:15', 'eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque', '');
INSERT INTO `recette` VALUES(83, 'et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', 4, 1, '22:25:25', '03:22:45', 'at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate', '');
INSERT INTO `recette` VALUES(84, 'semper erat, in consectetuer ipsum nunc', 3, 4, '17:50:44', '14:41:05', 'tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non', '');
INSERT INTO `recette` VALUES(85, 'facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida', 3, 3, '06:33:50', '22:40:13', 'at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non', '');
INSERT INTO `recette` VALUES(86, 'porttitor vulputate, posuere vulputate, lacus.', 1, 3, '13:51:12', '12:55:35', 'Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed', '');
INSERT INTO `recette` VALUES(87, 'Fusce diam nunc,', 4, 1, '13:23:30', '07:06:00', 'ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut', '');
INSERT INTO `recette` VALUES(88, 'dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing', 2, 2, '03:01:55', '06:02:36', 'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus', '');
INSERT INTO `recette` VALUES(89, 'risus. Donec egestas. Aliquam nec enim. Nunc ut', 3, 4, '02:15:27', '23:55:12', 'Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida', '');
INSERT INTO `recette` VALUES(90, 'ante. Nunc mauris sapien, cursus in, hendrerit consectetuer,', 4, 3, '23:55:16', '23:10:33', 'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.', '');
INSERT INTO `recette` VALUES(91, 'conubia nostra, per inceptos hymenaeos. Mauris ut quam vel', 2, 4, '07:30:20', '04:24:07', 'Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet', '');
INSERT INTO `recette` VALUES(92, 'egestas nunc sed libero. Proin sed turpis nec mauris blandit', 4, 2, '21:28:55', '13:21:21', 'Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.', '');
INSERT INTO `recette` VALUES(93, 'Quisque porttitor eros nec tellus.', 3, 1, '19:52:37', '09:33:16', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,', '');
INSERT INTO `recette` VALUES(94, 'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu', 3, 3, '01:43:30', '06:20:13', 'augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum', '');
INSERT INTO `recette` VALUES(95, 'dictum placerat,', 4, 1, '09:43:28', '12:26:18', 'erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc', '');
INSERT INTO `recette` VALUES(96, 'mauris sit amet lorem semper auctor. Mauris vel', 1, 4, '06:45:37', '05:20:15', 'Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam', '');
INSERT INTO `recette` VALUES(97, 'ut aliquam iaculis, lacus pede sagittis', 4, 3, '22:29:01', '09:22:51', 'cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed', '');
INSERT INTO `recette` VALUES(98, 'sit amet ornare lectus justo eu arcu. Morbi sit', 3, 1, '18:20:48', '00:29:51', 'urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor,', '');
INSERT INTO `recette` VALUES(99, 'molestie. Sed id risus quis diam luctus lobortis. Class', 1, 3, '19:27:22', '11:19:45', 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In', '');
INSERT INTO `recette` VALUES(100, 'ligula. Nullam enim. Sed nulla ante, iaculis nec,', 3, 1, '06:39:16', '13:31:37', 'elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.', '');
INSERT INTO `recette` VALUES(101, 'montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse', 3, 1, '10:55:38', '11:22:55', 'Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat', '');
INSERT INTO `recette` VALUES(102, 'eget massa. Suspendisse', 3, 3, '05:00:51', '12:22:14', 'eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.', '');
INSERT INTO `recette` VALUES(103, 'pharetra', 2, 4, '21:22:45', '14:11:09', 'ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla', '');
INSERT INTO `recette` VALUES(104, 'est ac mattis semper,', 2, 1, '05:39:27', '19:42:52', 'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam', '');
INSERT INTO `recette` VALUES(105, 'eget, volutpat ornare, facilisis', 4, 3, '17:20:28', '11:44:18', 'convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas', '');
INSERT INTO `recette` VALUES(106, 'Vestibulum accumsan neque et nunc.', 2, 3, '07:43:41', '09:36:04', 'dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis,', '');
INSERT INTO `recette` VALUES(107, 'a, arcu. Sed', 3, 2, '23:44:05', '06:42:41', 'elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '');
INSERT INTO `recette` VALUES(108, 'ullamcorper eu, euismod ac, fermentum vel, mauris.', 4, 1, '17:52:30', '06:47:20', 'Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque', '');
INSERT INTO `recette` VALUES(109, 'conubia nostra,', 4, 2, '05:43:25', '20:57:23', 'Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat', '');
INSERT INTO `recette` VALUES(110, 'nunc interdum feugiat. Sed', 2, 1, '19:01:31', '07:33:11', 'non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor', '');
INSERT INTO `recette` VALUES(111, 'velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum', 1, 1, '07:51:52', '18:26:00', 'egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus', '');

-- --------------------------------------------------------

/* --------------------- */
/* CREATION DES TRIGGERS */
/* --------------------- */

DELIMITER /

CREATE TRIGGER delete_ingredient					-- Empêche la suppression d'un ingrédient utilisé dans une recette, sans quoi l'intégrité des recettes n'est plus assurée
BEFORE DELETE ON Ingredient
FOR EACH ROW

DECLARE
	Nombre NUMBER(3);
	Erreur EXCEPTION;

BEGIN
	SELECT COUNT(*) INTO Nombre
	FROM Composer
	WHERE Composer.Num_Ing = :old.Num_Ing;
	
	IF Nombre<>0
	THEN RAISE Erreur;
	END IF;
	
	EXCEPTION
	WHEN Erreur THEN
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Attention - Cet ingrédient est utilisé dans '||Nombre||' recettes ! Supprimez les recettes en premier.');
		RAISE_APPLICATION_ERROR(-20001, 'Suppression impossible');
	END;
END;
/

CREATE TRIGGER delete_composer						-- Empeche la suppression d'une composition de recette, sans quoi l'intégrité de la recette n'est plus assurée
BEFORE DELETE ON Composer
FOR EACH ROW

DECLARE
	Nombre NUMBER(3);
	Erreur EXCEPTION;
	
BEGIN
	SELECT COUNT(*) INTO Nombre
	FROM Recette
	WHERE Recette.Num_Ing = :old.Num_Rec;
	
	IF Nombre<>0
	THEN RAISE Erreur;
	END IF;
	
	EXCEPTION
	WHEN Erreur THEN
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Attention - Cet composition utilise '||Nombre||' recette ! Supprimez les recettes en premier.');
		RAISE_APPLICATION_ERROR(-20001, 'Suppression impossible');
	END;
END;
/

DELIMITER ;
