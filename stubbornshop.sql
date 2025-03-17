-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 16 mars 2025 à 11:07
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stubbornshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250306182225', '2025-03-06 18:22:42', 23),
('DoctrineMigrations\\Version20250309080455', '2025-03-09 08:05:06', 70),
('DoctrineMigrations\\Version20250309083212', '2025-03-09 08:32:21', 96),
('DoctrineMigrations\\Version20250310170854', '2025-03-10 17:09:03', 126),
('DoctrineMigrations\\Version20250310181508', '2025-03-10 18:15:16', 80),
('DoctrineMigrations\\Version20250311171248', '2025-03-11 17:12:56', 109),
('DoctrineMigrations\\Version20250311172401', '2025-03-11 17:24:04', 57),
('DoctrineMigrations\\Version20250312194953', '2025-03-12 19:50:04', 72),
('DoctrineMigrations\\Version20250313162335', '2025-03-13 16:23:43', 111),
('DoctrineMigrations\\Version20250313163239', '2025-03-13 16:32:49', 65),
('DoctrineMigrations\\Version20250313165158', '2025-03-13 17:44:39', 92),
('DoctrineMigrations\\Version20250313165205', '2025-03-13 17:47:30', 78),
('DoctrineMigrations\\Version20250313174431', '2025-03-13 17:57:56', 93);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `total` double NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `items` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `total`, `status`, `created_at`, `user_id`, `items`) VALUES
(1, 29.9, 'En cours', '2025-03-13 18:16:16', 1, '[{\"id\": 3, \"name\": \"BlueBelt\", \"size\": \"S\", \"price\": 29.9, \"quantity\": 1}]'),
(2, 29.9, 'En cours', '2025-03-15 07:56:23', 2, '[{\"id\": 3, \"name\": \"BlueBelt\", \"size\": \"S\", \"price\": 29.9, \"quantity\": 1}]'),
(3, 29.9, 'En cours', '2025-03-15 08:22:16', 1, '[{\"id\": 3, \"name\": \"BlueBelt\", \"size\": \"XS\", \"image\": \"2-67cf2566a1e71.jpg\", \"price\": 29.9, \"quantity\": 1}]'),
(4, 29.9, 'En cours', '2025-03-16 07:51:20', 1, '[{\"id\": 3, \"name\": \"BlueBelt\", \"size\": \"XS\", \"image\": \"2-67cf2566a1e71.jpg\", \"price\": 29.9, \"quantity\": 1}]'),
(5, 29.9, 'En cours', '2025-03-16 10:26:41', 1, '[{\"id\": 3, \"name\": \"BlueBelt\", \"size\": \"M\", \"image\": \"2-67cf2566a1e71.jpg\", \"price\": 29.9, \"quantity\": 1}]'),
(6, 29.9, 'En cours', '2025-03-16 10:38:30', 2, '[{\"id\": 3, \"name\": \"BlueBelt\", \"size\": \"M\", \"image\": \"2-67cf2566a1e71.jpg\", \"price\": 29.9, \"quantity\": 1}]');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `stock_xs` int(11) DEFAULT NULL,
  `stock_s` int(11) DEFAULT NULL,
  `stock_m` int(11) DEFAULT NULL,
  `stock_l` int(11) DEFAULT NULL,
  `stock_xl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `created_at`, `image`, `is_featured`, `stock_xs`, `stock_s`, `stock_m`, `stock_l`, `stock_xl`) VALUES
(3, 'BlueBelt', 'Super Sweat', 29.9, '2025-03-10 17:46:14', '2-67cf2566a1e71.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(4, 'Blackbelt', NULL, 29.9, '2025-03-16 10:09:31', '1-67d6a35c217db.jpg', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'Street', NULL, 34.5, '2025-03-16 10:27:33', '3-67d6a795b484f.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(6, 'PokeBall', NULL, 45, '2025-03-16 10:27:57', '4-67d6a7add56d3.jpg', 1, NULL, NULL, NULL, NULL, NULL),
(7, 'PinkLady', NULL, 29.9, '2025-03-16 10:28:21', '5-67d6a7c605164.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(8, 'Snow', NULL, 32, '2025-03-16 10:28:42', '6-67d6a7dace3fa.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(9, 'Greyback', NULL, 28.5, '2025-03-16 10:29:03', '7-67d6a7eff21a4.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(10, 'BlueCloud', NULL, 45, '2025-03-16 10:29:21', '8-67d6a8011fd51.jpg', 0, NULL, NULL, NULL, NULL, NULL),
(11, 'BornInUsa', NULL, 59.9, '2025-03-16 10:29:47', '9-67d6a81bdc414.jpg', 1, NULL, NULL, NULL, NULL, NULL),
(12, 'GreenSchool', NULL, 42.2, '2025-03-16 10:30:10', '10-67d6a832c5351.jpg', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `username`, `full_name`, `street`, `postal_code`, `city`, `phone_number`) VALUES
(1, 'admin@example.com', '[\"ROLE_ADMIN\"]', '$2y$13$/naCPuiH/Gt/Bk9tNo5CtOBBB.iyuabEXQ1sLIM7wuFzDRr2Wqp9G', 1, 'admin', 'DAVID Romain', '50 rue du stade', '72000', 'Le Mans', '0606060606'),
(2, 'user@example.fr', '[]', '$2y$13$Hr1sBIzllS7qr3AYp2G85u9TRqEm9XupffmStCNRZISne2PI3HVHi', 0, 'user', NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398A76ED395` (`user_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
