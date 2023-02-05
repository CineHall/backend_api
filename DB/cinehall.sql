-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 05 fév. 2023 à 15:06
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinehall`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `place_price` float NOT NULL,
  `hall_name` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `name`, `time`, `place_price`, `hall_name`, `image`) VALUES
(1, 'john_Wike', '2 hours', 60, 'salle_1', 'http://localhost/backend_frontend_api/backend/img/john_Wike.jpg'),
(2, 'elCamino', '1h30min', 40, 'salle_2', 'http://localhost/backend_frontend_api/backend/img/elcamino.jpg'),
(3, 'Squed Game', '3h', 100, 'salle_3', 'http://localhost/backend_frontend_api/backend/img/squid_game.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `salle_name` varchar(250) NOT NULL,
  `place_numero` int(11) NOT NULL,
  `reservation_date` date NOT NULL DEFAULT current_timestamp(),
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salle_1`
--

CREATE TABLE `salle_1` (
  `id_place` int(11) NOT NULL,
  `place_numero` int(11) NOT NULL,
  `reserve` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 empty | 1 full'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle_1`
--

INSERT INTO `salle_1` (`id_place`, `place_numero`, `reserve`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0),
(21, 21, 0),
(22, 22, 0),
(23, 23, 0),
(24, 24, 0),
(25, 25, 0),
(26, 26, 0),
(27, 27, 0),
(28, 28, 0),
(29, 29, 0),
(30, 30, 0),
(31, 31, 0),
(32, 32, 0),
(33, 33, 0),
(34, 34, 0),
(35, 35, 0),
(36, 36, 0),
(37, 37, 0),
(38, 38, 0),
(39, 39, 0),
(40, 40, 0),
(41, 41, 0),
(42, 42, 0),
(43, 43, 0),
(44, 44, 0),
(45, 45, 0),
(46, 46, 0),
(47, 47, 0),
(48, 48, 0),
(49, 49, 0),
(50, 50, 0);

-- --------------------------------------------------------

--
-- Structure de la table `salle_2`
--

CREATE TABLE `salle_2` (
  `id_place` int(11) NOT NULL,
  `place_numero` int(11) NOT NULL,
  `reserve` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 empty | 1 full'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle_2`
--

INSERT INTO `salle_2` (`id_place`, `place_numero`, `reserve`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0),
(21, 21, 0),
(22, 22, 0),
(23, 23, 0),
(24, 24, 0),
(25, 25, 0),
(26, 26, 0),
(27, 27, 0),
(28, 28, 0),
(29, 29, 0),
(30, 30, 0),
(31, 31, 0),
(32, 32, 0),
(33, 33, 0),
(34, 34, 0),
(35, 35, 0),
(36, 36, 0),
(37, 37, 0),
(38, 38, 0),
(39, 39, 0),
(40, 40, 0),
(41, 41, 0),
(42, 42, 0),
(43, 43, 0),
(44, 44, 0),
(45, 45, 0),
(46, 46, 0),
(47, 47, 0),
(48, 48, 0),
(49, 49, 0),
(50, 50, 0);

-- --------------------------------------------------------

--
-- Structure de la table `salle_3`
--

CREATE TABLE `salle_3` (
  `id_place` int(11) NOT NULL,
  `place_numero` int(11) NOT NULL,
  `reserve` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 empty | 1 full'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle_3`
--

INSERT INTO `salle_3` (`id_place`, `place_numero`, `reserve`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0),
(21, 21, 0),
(22, 22, 0),
(23, 23, 0),
(24, 24, 0),
(25, 25, 0),
(26, 26, 0),
(27, 27, 0),
(28, 28, 0),
(29, 29, 0),
(30, 30, 0),
(31, 31, 0),
(32, 32, 0),
(33, 33, 0),
(34, 34, 0),
(35, 35, 0),
(36, 36, 0),
(37, 37, 0),
(38, 38, 0),
(39, 39, 0),
(40, 40, 0),
(41, 41, 0),
(42, 42, 0),
(43, 43, 0),
(44, 44, 0),
(45, 45, 0),
(46, 46, 0),
(47, 47, 0),
(48, 48, 0),
(49, 49, 0),
(50, 50, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `token`) VALUES
(32, 'marohtfyghgujuane', 'emaifdhgjkhgjfjkgl@email.email', '$2y$10$ukOrH58v1jZ4xohRfe8S6.K0gc6ojvoJ9jaRSSTElgCBvJek93jUK', '3d4ff3a3f74b208f2d21d43c4d96f73e'),
(33, 'trf', 'UANEMARO216@GMAIL.COM', '$2y$10$xLIlQ8VCrNlGsaW2o0LUJug5AP3fvkDXaGpQmxQQpK5zDZ7jAksyW', 'cbe1317b40e1fc83b2fed7c2bd1e91fc'),
(34, 'gfdd', 'UAxffNEMARO216@GMAIL.COM', '$2y$10$593T2xhvrC6v7s1s.Pm6Zed.iv26rxvUe6Mz7oZ6P8..N9YjyvA7u', '04b83f7bbe48299d24736cea104ad29b'),
(35, 'tydht', 'dhd@hgcgh.jf', '$2y$10$cypnJd5pCxybWFjFIh78ieQ8wq0.W6OF0OWRtnvN3bzB6UGxRcm5S', 'dc2fdfa33beaf3cd5e3bbafb244efbef');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_price` (`place_price`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`id_user`),
  ADD KEY `movies` (`price`);

--
-- Index pour la table `salle_1`
--
ALTER TABLE `salle_1`
  ADD PRIMARY KEY (`id_place`);

--
-- Index pour la table `salle_2`
--
ALTER TABLE `salle_2`
  ADD PRIMARY KEY (`id_place`);

--
-- Index pour la table `salle_3`
--
ALTER TABLE `salle_3`
  ADD PRIMARY KEY (`id_place`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `salle_1`
--
ALTER TABLE `salle_1`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `salle_2`
--
ALTER TABLE `salle_2`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `salle_3`
--
ALTER TABLE `salle_3`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `movies` FOREIGN KEY (`price`) REFERENCES `films` (`place_price`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
