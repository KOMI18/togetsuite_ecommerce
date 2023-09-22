-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 sep. 2023 à 12:57
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `password`, `created`) VALUES
(1, 'komi2.0', '$2a$10$kS4x5vjNeHF4q3JUsmvH.ebiw46mtZFBkjzLcVU5anFzlmUDsZ0FG', '2023-08-31 11:23:08'),
(2, 'parfait', '$2a$10$PGeoywXUBDGXZT2M0ExfF.cvwwkixLCilTbLh1jcTc/pIKIDrzc.W', '2023-08-31 11:23:08');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `vendeurId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `picture`, `created`, `vendeurId`) VALUES
(1, 'rkgnrsg', 'eneklfenflskF', '1695283999825-32050207.png', '2023-09-21 10:13:19', 1),
(2, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 08:32:08', NULL),
(3, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 08:32:11', NULL),
(4, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 08:32:23', NULL),
(5, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 08:55:19', NULL),
(6, 'giowege', 'fwfenfle', '1695287021354-365794598.png', '2023-09-21 11:03:41', 2),
(7, 'gfgfgf', 'gbgfbfggfngfn', '1695287373526-21960268.png', '2023-09-21 11:09:33', 2),
(8, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:15:37', NULL),
(9, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:15:46', NULL),
(10, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:15:50', NULL),
(11, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:16:22', NULL),
(12, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:16:31', NULL),
(13, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:16:35', NULL),
(14, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:16:51', NULL),
(15, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:17:06', NULL),
(16, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:17:09', NULL),
(17, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:17:14', NULL),
(18, 'm;lm;l', 'ml;m;lm., .,', '1695288056558-511757288.png', '2023-09-21 11:20:56', 2),
(19, 'nlk,n ,m', 'nkkkknk', '1695288137249-476512596.png', '2023-09-21 11:22:17', 2),
(20, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:25:21', NULL),
(21, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:25:45', NULL),
(22, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:25:48', NULL),
(23, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:26:28', NULL),
(24, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:26:39', NULL),
(25, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:27:16', NULL),
(26, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:27:29', NULL),
(27, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:27:34', NULL),
(28, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:27:40', NULL),
(29, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:27:48', NULL),
(30, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:27:57', NULL),
(31, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:29:06', NULL),
(32, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:29:09', NULL),
(33, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:29:11', NULL),
(34, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:32:36', NULL),
(35, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 09:54:50', NULL),
(36, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 10:50:44', NULL),
(37, 'comment faire pour avoir un bon d\'achet ?', ' ceci est un article de blog interessant', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/004.png', '2023-09-21 10:50:44', NULL),
(38, 'coment optimier ses achat', 'mon premier article de blog', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', '2023-09-21 10:51:22', NULL),
(39, 'comment faire pour avoir un bon d\'achet ?', ' ceci est un article de blog interessant', 'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/004.png', '2023-09-21 10:51:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cartitems`
--

CREATE TABLE `cartitems` (
  `id_prod` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `CommandeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL,
  `description_categorie` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom_categorie`, `description_categorie`, `createdAt`, `updatedAt`) VALUES
(1, 'epices', 'bonne epices', '2023-09-18 18:24:49', '2023-09-18 18:24:49'),
(2, 'fruit', 'des bon fruit', '2023-09-20 02:19:52', '2023-09-20 02:19:52');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clientsofpromotion`
--

CREATE TABLE `clientsofpromotion` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PromotionIdPromotion` int(11) NOT NULL,
  `clientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Non Livre',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `addresse` varchar(255) NOT NULL,
  `reference_payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demandes`
--

CREATE TABLE `demandes` (
  `id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `produitId` int(11) DEFAULT NULL,
  `PanierId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historiques`
--

CREATE TABLE `historiques` (
  `id` int(11) NOT NULL,
  `montant_total` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `qte_cmd` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `clientIdClient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paniers`
--

CREATE TABLE `paniers` (
  `id` int(11) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `clientId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `productsofpromotion`
--

CREATE TABLE `productsofpromotion` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PromotionIdPromotion` int(11) NOT NULL,
  `produitId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `description_produit` varchar(255) NOT NULL,
  `prix_produit` int(11) NOT NULL,
  `image_produit` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `vendeurId` int(11) DEFAULT NULL,
  `categorieId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_produit`, `description_produit`, `prix_produit`, `image_produit`, `created`, `vendeurId`, `categorieId`) VALUES
(1, 'bannane', 'dwjqdwq', 20, 'rewrw', '2023-09-20 02:36:00', 1, 1),
(4, 'test2', 'un tesst', 57, '1695183024633-137187681.png', '2023-09-20 06:10:24', 1, 1),
(6, 'bjjjjjjjjjjjjjjjjjjjjjj', 'h jkn kkkkkkkkkkkkkkk', 50, '1695191916757-852814775.png', '2023-09-20 08:38:36', 1, 1),
(13, 'hithottm', 'gj5ijioyym5y', 498, '1695192019498-704196460.png', '2023-09-20 08:40:19', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `pourcentage_reduction` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id`, `pourcentage_reduction`, `createdAt`, `updatedAt`) VALUES
(1, 23, '2023-09-18 21:15:39', '2023-09-18 21:15:39');

-- --------------------------------------------------------

--
-- Structure de la table `promotionsofclient`
--

CREATE TABLE `promotionsofclient` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `clientId` int(11) NOT NULL,
  `PromotionIdPromotion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `promotionsofproduct`
--

CREATE TABLE `promotionsofproduct` (
  `created` datetime NOT NULL,
  `produitId` int(11) NOT NULL,
  `PromotionIdPromotion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vendeurs`
--

CREATE TABLE `vendeurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `information_vendeur` varchar(255) NOT NULL,
  `cathegorie_produit` varchar(255) NOT NULL,
  `profil` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vendeurs`
--

INSERT INTO `vendeurs` (`id`, `nom`, `information_vendeur`, `cathegorie_produit`, `profil`, `password`, `created`) VALUES
(1, 'parfait22', '<p>komi</p>', 'vetement', '', '$2a$10$w7J4oeJr3BGSYkpJ/FHXTe9sooVdIi9VjZYMsCELw3dKpxldPj6v.', '2023-09-19 23:58:57'),
(2, 'Parfait kom', '<p>wfklenf</p>', 'vetement', 'C:\\fakepath\\adidas-removebg-preview.png', '$2a$10$sGaJgRZkf7aN1PH8Hk4m4uKZH7ssdqpDYDUUmZSagv6Iv2KHEVpk6', '2023-09-21 08:14:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendeurId` (`vendeurId`);

--
-- Index pour la table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `CommandeId` (`CommandeId`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `clientsofpromotion`
--
ALTER TABLE `clientsofpromotion`
  ADD PRIMARY KEY (`PromotionIdPromotion`,`clientId`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demandes`
--
ALTER TABLE `demandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historiques`
--
ALTER TABLE `historiques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientIdClient` (`clientIdClient`);

--
-- Index pour la table `paniers`
--
ALTER TABLE `paniers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `productsofpromotion`
--
ALTER TABLE `productsofpromotion`
  ADD PRIMARY KEY (`PromotionIdPromotion`,`produitId`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `vendeurId` (`vendeurId`),
  ADD KEY `categorieId` (`categorieId`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promotionsofclient`
--
ALTER TABLE `promotionsofclient`
  ADD PRIMARY KEY (`clientId`,`PromotionIdPromotion`);

--
-- Index pour la table `promotionsofproduct`
--
ALTER TABLE `promotionsofproduct`
  ADD PRIMARY KEY (`produitId`,`PromotionIdPromotion`);

--
-- Index pour la table `vendeurs`
--
ALTER TABLE `vendeurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demandes`
--
ALTER TABLE `demandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historiques`
--
ALTER TABLE `historiques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paniers`
--
ALTER TABLE `paniers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `vendeurs`
--
ALTER TABLE `vendeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`vendeurId`) REFERENCES `vendeurs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `cartitems`
--
ALTER TABLE `cartitems`
  ADD CONSTRAINT `cartitems_ibfk_1` FOREIGN KEY (`CommandeId`) REFERENCES `commandes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `historiques`
--
ALTER TABLE `historiques`
  ADD CONSTRAINT `historiques_ibfk_1` FOREIGN KEY (`clientIdClient`) REFERENCES `clients` (`id_client`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`vendeurId`) REFERENCES `vendeurs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `produits_ibfk_2` FOREIGN KEY (`categorieId`) REFERENCES `categorie` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
