-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 fév. 2025 à 22:52
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `frienddb`
--

-- --------------------------------------------------------

--
-- Structure de la table `friend`
--

DROP TABLE IF EXISTS `friend`;
CREATE TABLE IF NOT EXISTS `friend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `numeroTelephone` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `friend`
--

INSERT INTO `friend` (`id`, `nom`, `prenom`, `numeroTelephone`) VALUES
(1, 'Ladjadj', 'Sonia', '0667224935'),
(2, 'Bridgerton', 'Anthony', '012341231'),
(3, 'Bridgerton', 'Daphne', '012341232'),
(4, 'Bridgerton', 'Benedict', '012341233'),
(5, 'Waldorf', 'Blair', '0678901111'),
(6, 'Van der Woodsen', 'Serena', '0678902222'),
(7, 'Bass', 'Chuck', '0678903333'),
(8, 'Humphrey', 'Dan', '0678904444'),
(9, 'Archibald', 'Nate', '0678905555'),
(10, 'Humphrey', 'Jenny', '0678906666'),
(11, 'Van der Woodsen', 'Lily', '0678907777');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
