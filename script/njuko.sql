-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 23 oct. 2018 à 17:38
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `njuko`
--

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateEvent` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `name`, `dateEvent`) VALUES
(1, 'Course de 12km', '2017-03-07'),
(2, 'Semi Marathon', '2017-03-08');

-- --------------------------------------------------------

--
-- Structure de la table `participant`
--

DROP TABLE IF EXISTS `participant`;
CREATE TABLE IF NOT EXISTS `participant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `event_id` int(11) NOT NULL,
  `num_dossard` int(11) NOT NULL,
  `duration` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `participant`
--

INSERT INTO `participant` (`id`, `firstname`, `lastname`, `sex`, `event_id`, `num_dossard`, `duration`) VALUES
(1, 'Lilian', 'Moncade', 'male', 2, 1, '05:05:05'),
(2, 'Participant_prenom_2', 'Participant_nom_2', 'male', 1, 2, '00:00:05'),
(4, 'Participant_prenom_4', 'Participant_nom_4', 'male', 1, 3, '05:05:05'),
(5, 'Participant_prenom_5', 'Participant_nom_5', 'male', 1, 4, '05:05:05'),
(7, 'Participant_prenom_7', 'Participant_nom_7', 'male', 1, 5, '05:05:05'),
(8, 'Participant_prenom_8', 'Participant_nom_8', 'male', 1, 6, '05:05:05'),
(9, 'Participant_prenom_9', 'Participant_nom_9', 'male', 1, 7, '00:35:05'),
(10, 'Participant_prenom_10', 'Participant_nom_10', 'male', 1, 8, '05:05:05'),
(11, 'Participant_prenom_11', 'Participant_nom_11', 'male', 2, 9, '05:05:05'),
(12, 'Participant_prenom_12', 'Participant_nom_12', 'male', 1, 10, '05:05:05'),
(13, 'Participant_prenom_13', 'Participant_nom_13', 'female', 1, 11, '05:05:05'),
(14, 'Participant_prenom_14', 'Participant_nom_14', 'male', 1, 12, '05:05:05'),
(15, 'Participant_prenom_15', 'Participant_nom_15', 'male', 1, 13, '05:05:05'),
(16, 'Participant_prenom_16', 'Participant_nom_16', 'male', 1, 14, '05:05:05'),
(17, 'Participant_prenom_17', 'Participant_nom_17', 'male', 1, 15, '05:05:05'),
(18, 'Participant_prenom_18', 'Participant_nom_18', 'male', 1, 16, '05:05:05'),
(19, 'Participant_prenom_19', 'Participant_nom_19', 'male', 1, 17, '05:05:05'),
(20, 'Participant_prenom_20', 'Participant_nom_20', 'male', 1, 18, '05:05:05'),
(21, 'Participant_prenom_21', 'Participant_nom_21', 'male', 1, 19, '12:12:12'),
(22, 'Participant_prenom_22', 'Participant_nom_22', 'male', 1, 20, '05:05:05'),
(23, 'Participant_prenom_23', 'Participant_nom_23', 'male', 1, 21, '05:05:05'),
(24, 'Participant_prenom_24', 'Participant_nom_24', 'male', 1, 22, '05:05:05'),
(25, 'Participant_prenom_25', 'Participant_nom_25', 'male', 1, 23, '05:05:05'),
(26, 'Participant_prenom_26', 'Participant_nom_26', 'male', 1, 24, '05:05:05'),
(27, 'Participant_prenom_27', 'Participant_nom_27', 'male', 1, 25, '05:05:05'),
(28, 'Participant_prenom_28', 'Participant_nom_28', 'male', 1, 26, '05:05:05'),
(29, 'Participant_prenom_29', 'Participant_nom_29', 'male', 1, 27, '05:05:05'),
(30, 'Participant_prenom_30', 'Participant_nom_30', 'male', 1, 28, '05:05:05'),
(31, 'Participant_prenom_31', 'Participant_nom_31', 'male', 1, 29, '05:05:05'),
(32, 'Participant_prenom_32', 'Participant_nom_32', 'female', 1, 30, '05:05:05'),
(33, 'Participant_prenom_33', 'Participant_nom_33', 'male', 1, 31, '05:05:05'),
(34, 'Participant_prenom_34', 'Participant_nom_34', 'male', 1, 32, '05:05:05'),
(35, 'Participant_prenom_35', 'Participant_nom_35', 'male', 1, 33, '05:05:05'),
(36, 'Participant_prenom_36', 'Participant_nom_36', 'male', 1, 34, '05:05:05'),
(37, 'Participant_prenom_37', 'Participant_nom_37', 'male', 1, 35, '05:05:05'),
(38, 'Participant_prenom_38', 'Participant_nom_38', 'male', 1, 36, '05:05:05'),
(39, 'Participant_prenom_39', 'Participant_nom_39', 'male', 1, 37, '05:05:05'),
(40, 'Participant_prenom_40', 'Participant_nom_40', 'male', 1, 38, '05:05:05'),
(41, 'Participant_prenom_41', 'Participant_nom_41', 'male', 1, 39, '05:05:05'),
(42, 'Participant_prenom_42', 'Participant_nom_42', 'male', 1, 40, '05:05:05'),
(43, 'Participant_prenom_43', 'Participant_nom_43', 'male', 1, 41, '05:05:05'),
(44, 'Participant_prenom_44', 'Participant_nom_44', 'male', 1, 42, '05:05:05'),
(45, 'Participant_prenom_45', 'Participant_nom_45', 'female', 1, 43, '05:05:05'),
(46, 'Participant_prenom_46', 'Participant_nom_46', 'male', 1, 44, '05:05:05'),
(47, 'Participant_prenom_47', 'Participant_nom_47', 'male', 1, 45, '05:05:05'),
(48, 'Participant_prenom_48', 'Participant_nom_48', 'male', 1, 46, '05:05:05'),
(49, 'Participant_prenom_49', 'Participant_nom_49', 'male', 1, 47, '05:05:05'),
(50, 'Participant_prenom_50', 'Participant_nom_50', 'male', 1, 48, '05:05:05'),
(51, 'Participant_prenom_51', 'Participant_nom_51', 'male', 1, 49, '05:05:05'),
(52, 'Participant_prenom_52', 'Participant_nom_52', 'male', 1, 50, '05:05:05'),
(53, 'Participant_prenom_53', 'Participant_nom_53', 'male', 1, 51, '05:05:05'),
(54, 'Participant_prenom_54', 'Participant_nom_54', 'male', 1, 52, '05:05:05'),
(55, 'Participant_prenom_55', 'Participant_nom_55', 'male', 1, 53, '05:05:05'),
(56, 'Participant_prenom_56', 'Participant_nom_56', 'male', 1, 54, '05:05:05'),
(57, 'Participant_prenom_57', 'Participant_nom_57', 'female', 1, 55, '05:05:05'),
(58, 'Participant_prenom_58', 'Participant_nom_58', 'male', 1, 56, '05:05:05'),
(59, 'Participant_prenom_59', 'Participant_nom_59', 'male', 1, 57, '05:05:05'),
(60, 'Participant_prenom_60', 'Participant_nom_60', 'male', 1, 58, '05:05:05'),
(61, 'Participant_prenom_61', 'Participant_nom_61', 'male', 1, 59, '05:05:05'),
(62, 'Participant_prenom_62', 'Participant_nom_62', 'male', 1, 60, '05:05:05'),
(63, 'Participant_prenom_63', 'Participant_nom_63', 'male', 1, 61, '05:05:05'),
(64, 'Participant_prenom_64', 'Participant_nom_64', 'female', 1, 62, '05:05:05'),
(65, 'Participant_prenom_65', 'Participant_nom_65', 'female', 1, 63, '05:05:05'),
(66, 'Participant_prenom_66', 'Participant_nom_66', 'male', 1, 64, '05:05:05'),
(67, 'Participant_prenom_67', 'Participant_nom_67', 'male', 1, 65, '05:05:05'),
(68, 'Participant_prenom_68', 'Participant_nom_68', 'male', 1, 66, '05:05:05'),
(69, 'Participant_prenom_69', 'Participant_nom_69', 'male', 1, 67, '05:05:05'),
(70, 'Participant_prenom_70', 'Participant_nom_70', 'male', 1, 68, '05:05:05'),
(71, 'Participant_prenom_71', 'Participant_nom_71', 'female', 1, 69, '05:05:05'),
(72, 'Participant_prenom_72', 'Participant_nom_72', 'male', 1, 70, '05:05:05'),
(73, 'Participant_prenom_73', 'Participant_nom_73', 'male', 1, 71, '05:05:05'),
(74, 'Participant_prenom_74', 'Participant_nom_74', 'male', 1, 72, '05:05:05'),
(75, 'Participant_prenom_75', 'Participant_nom_75', 'male', 1, 73, '05:05:05'),
(76, 'Participant_prenom_76', 'Participant_nom_76', 'male', 1, 74, '05:05:05'),
(77, 'Participant_prenom_77', 'Participant_nom_77', 'male', 1, 75, '05:05:05'),
(78, 'Participant_prenom_78', 'Participant_nom_78', 'male', 1, 76, '05:05:05'),
(79, 'Participant_prenom_79', 'Participant_nom_79', 'male', 1, 77, '05:05:05'),
(80, 'Participant_prenom_80', 'Participant_nom_80', 'male', 1, 78, '05:05:05'),
(81, 'Participant_prenom_81', 'Participant_nom_81', 'male', 1, 79, '05:05:05'),
(82, 'Participant_prenom_82', 'Participant_nom_82', 'male', 1, 80, '05:05:05'),
(83, 'Participant_prenom_83', 'Participant_nom_83', 'male', 1, 81, '05:05:05'),
(84, 'Participant_prenom_84', 'Participant_nom_84', 'female', 1, 82, '05:05:05'),
(85, 'Participant_prenom_85', 'Participant_nom_85', 'male', 1, 83, '05:05:05'),
(86, 'Participant_prenom_86', 'Participant_nom_86', 'male', 1, 84, '05:05:05'),
(87, 'Participant_prenom_87', 'Participant_nom_87', 'female', 1, 85, '05:05:05'),
(88, 'Participant_prenom_88', 'Participant_nom_88', 'male', 1, 86, '05:05:05'),
(89, 'Participant_prenom_89', 'Participant_nom_89', 'male', 1, 87, '05:05:05'),
(90, 'Participant_prenom_90', 'Participant_nom_90', 'male', 1, 88, '05:05:05'),
(91, 'Participant_prenom_91', 'Participant_nom_91', 'male', 1, 89, '05:05:05'),
(92, 'Participant_prenom_92', 'Participant_nom_92', 'female', 1, 90, '05:05:05'),
(93, 'Participant_prenom_93', 'Participant_nom_93', 'male', 1, 91, '05:05:05'),
(94, 'Participant_prenom_94', 'Participant_nom_94', 'male', 1, 92, '05:05:05'),
(95, 'Participant_prenom_95', 'Participant_nom_95', 'female', 1, 93, '05:05:05'),
(96, 'Participant_prenom_96', 'Participant_nom_96', 'female', 1, 94, '05:05:05'),
(97, 'Participant_prenom_97', 'Participant_nom_97', 'male', 1, 95, '05:05:05'),
(98, 'Participant_prenom_98', 'Participant_nom_98', 'male', 1, 96, '05:05:05'),
(99, 'Participant_prenom_99', 'Participant_nom_99', 'male', 1, 97, '05:05:05'),
(100, 'Participant_prenom_100', 'Participant_nom_100', 'male', 1, 98, '05:05:05'),
(101, 'Soazig', 'Pineau', 'female', 1, 99, '05:05:05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
