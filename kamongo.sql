-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 17 jan. 2020 à 09:49
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `kamongo`
--

-- --------------------------------------------------------

--
-- Structure de la table `conduire`
--

CREATE TABLE `conduire` (
  `id_cdr` int(11) NOT NULL,
  `date_cdt` datetime NOT NULL,
  `plc_libre_cdt` int(11) NOT NULL,
  `date_dprt_cdt` datetime NOT NULL,
  `cout_cdt` decimal(10,0) NOT NULL,
  `id_chauffeur` int(11) NOT NULL,
  `id_vhc` int(11) NOT NULL,
  `id_dest` int(11) NOT NULL,
  `id_agent` int(11) NOT NULL,
  `lat` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_conduite` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conduire`
--

INSERT INTO `conduire` (`id_cdr`, `date_cdt`, `plc_libre_cdt`, `date_dprt_cdt`, `cout_cdt`, `id_chauffeur`, `id_vhc`, `id_dest`, `id_agent`, `lat`, `lon`, `type_conduite`) VALUES
(1, '2020-01-15 00:00:00', 30, '2020-01-15 00:00:00', '12500', 1, 1, 5, 1, '12.65465', '12.65465', 'simple'),
(2, '2020-01-17 09:32:37', 20, '2020-01-23 10:40:44', '7500', 1, 1, 5, 1, '16.26596', '15.15545', 'simple'),
(3, '2020-01-14 07:36:52', 15, '2020-01-14 17:56:00', '15500', 1, 1, 5, 1, '8.14526', '9.15462', 'VIP');

-- --------------------------------------------------------

--
-- Structure de la table `destination`
--

CREATE TABLE `destination` (
  `id_dest` int(11) NOT NULL,
  `nom_dest` varchar(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_dest` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable` int(11) NOT NULL,
  `color` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_commune` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_agence` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_enregistreur` int(11) NOT NULL,
  `logitude` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_station` varchar(103) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(202) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_interne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `destination`
--

INSERT INTO `destination` (`id_dest`, `nom_dest`, `type_dest`, `responsable`, `color`, `code_commune`, `code_agence`, `id_enregistreur`, `logitude`, `latitude`, `image_station`, `description`, `id_interne`) VALUES
(1, 'Place des Fêtes', 'station', 1, 'bleu', '11-AZ09', 'null', 1, '12.1234', '13.4321', 'place_fetes.jpg', 'En face du Lycée Classique et Moderne de Ngoundéré : à coté de ECOBANK.', 0),
(2, 'Stade NDOUMBE OUMAR', 'station', 1, 'vert', '22-19AB', 'null', 1, '11.2345', '15.4562', 'a_trouver', 'Aux allentourx d\'ENOE - Petit Marché', 0),
(3, 'Station Taxi Grand Marché', 'station', 1, 'bleu', '42-4Q2P', 'null', 1, '45.1235', '23.1245', 'aChercher', 'Avant l\'entrée de la mosquée du LAMIDAT de Ngoundéré. Après la grande station de LAVAGE de voiture.', 0),
(4, 'BINI - Dang', 'arret', 1, 'null', 'null', 'null', 1, '12.123561', '72.125861', 'achercher', 'Davant l\'Hotel PACKEM', 0),
(5, 'TOURISTIQUE - NGAOUNDERE', 'agence', 1, 'null', 'null', '4AB19W2020', 1, '7.12345', '13.1256', 'tour.jpg', 'A la descente d\'avant le rond point de la Gare Voyageur.', 0),
(6, 'TOURISTIQUE - YAOUNDE', 'arretH', 0, 'null', 'null', '18-SD32', 1, '7.1253', '13.4556', 'tour.jpg', 'Le arretH pour signifier une destination interurbaine dont Yaoundé.', 5),
(7, 'TOURISTIQUE - MAROUA', 'arretH', 0, 'vert', 'null', '12-JK21', 1, '7.12623', '12.5566', 'tour.jpg', 'Région de l\'Extrème Nord', 5),
(8, 'DANAY', 'agence', 1, 'Orange', 'null', '15-AS23', 1, '7.12332', '12.3525', 'danay.jpg', 'Face gare voyageur', 0);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_msg` int(11) NOT NULL,
  `contenu` int(242) NOT NULL,
  `type_msg` varchar(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_msg` datetime NOT NULL,
  `id_utl` int(11) NOT NULL,
  `etat_msg` int(11) NOT NULL,
  `fichier_ass` varchar(242) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_rsv` int(11) NOT NULL,
  `date_rsv` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_annulation` datetime NOT NULL,
  `etat_rsv` int(11) NOT NULL,
  `date_limite_rsv` datetime NOT NULL,
  `cout_rsv` decimal(10,0) NOT NULL,
  `id_clt` int(11) NOT NULL,
  `id_dest` int(11) NOT NULL,
  `id_agent` int(11) NOT NULL,
  `code_ref_svr` varchar(89) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_rl` int(11) NOT NULL,
  `nom_rl` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau_rl` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role_utl`
--

CREATE TABLE `role_utl` (
  `id_rl_utl` int(11) NOT NULL,
  `etat_compte` int(1) NOT NULL,
  `id_utl` int(11) NOT NULL,
  `id_rl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utl` int(11) NOT NULL,
  `nom_utl` varchar(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(242) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mot_de_passe` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_enregistrement` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse` varchar(89) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `derniere_conn` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(89) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_cni` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_permi` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_chauffeur` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_guichet` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_agence` int(11) NOT NULL,
  `id_station` int(11) NOT NULL,
  `quartier` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utl`, `nom_utl`, `prenom`, `email`, `telephone`, `mot_de_passe`, `date_enregistrement`, `reponse`, `sexe`, `derniere_conn`, `question`, `num_cni`, `num_permi`, `type_chauffeur`, `profession`, `num_guichet`, `adresse_ip`, `id_agence`, `id_station`, `quartier`, `profile`) VALUES
(1, 'Administrateur', 'inator', 'inator@gmail.com', '698204289', 'inator', '0000-00-00 00', 'disnep', '1', '0000-00-00 00', 'Quel est en minuscule le premier mot de la chaine disnep chanel', '2016351435', '1224424423', 'TOUT', 'Webmaster', 'TOUT', '192.168.0.1', 1, 1, '', '/avatar/admin.jpg'),
(2, 'MBOUCHE BOMDA', 'ULRICH', 'mbouchebomdaulriche@gmail.com', '698204289', 'king', '2020-01-13 08', 'les deux questions', '1', '2020-01-13 08', 'Il y a deux questions ! Lesquelles ?', '543216565', '533323532', 'taxis', 'Chauffeur', 'null', '175.125.250.25', 0, 1, 'Malang', ''),
(3, 'KOTVA', 'Samuel', 'kotvogousamuel@gmail.com', '612345678', 'Night', '2020-01-13 08', 'les deux questions', '1', '2020-01-13 08', 'Il y a deux questions ! Lesquelles ?', '543216565', '533323532', 'taxis', 'Enseignant', '01B12', '175.125.250.25', 1, 1, 'Malang', ''),
(4, 'Tchoukouegno', 'Evrard', 'evrardtchoukouegno@gmail.com', '656758966', '123456', '2020-01-12 08', 'OUI', '1', '2020-01-12 08', 'comment allez vous?', '5477890987654321', 'null', '', 'commerçant', '', '', 1, 0, 'bourkina', 'A chercher'),
(5, 'john', 'wick', 'wickjohn@gmail.com', '695020562', '654321', '2020-01-17 08', 'NON', '0', '20-01-17 08:3', 'quel est votre nom?', '0988976753241345', '', '', 'médecin', '', '', 0, 0, '', ' a chercher');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `id_vhc` int(11) NOT NULL,
  `matricule` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` int(11) NOT NULL,
  `type_vhc` int(11) NOT NULL,
  `id_stn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `conduire`
--
ALTER TABLE `conduire`
  ADD PRIMARY KEY (`id_cdr`),
  ADD KEY `utilisateur` (`id_agent`),
  ADD KEY `destination` (`id_dest`),
  ADD KEY `vehicule` (`id_vhc`),
  ADD KEY `utilisateur1` (`id_chauffeur`);

--
-- Index pour la table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id_dest`),
  ADD KEY `utilisateur` (`responsable`),
  ADD KEY `utilsateur1` (`id_enregistreur`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_msg`),
  ADD KEY `utilisateur` (`id_utl`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_rsv`),
  ADD KEY `utilisateur1` (`id_agent`),
  ADD KEY `destination` (`id_dest`),
  ADD KEY `utilisateur` (`id_clt`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_rl`);

--
-- Index pour la table `role_utl`
--
ALTER TABLE `role_utl`
  ADD PRIMARY KEY (`id_rl_utl`),
  ADD KEY `utilisateur` (`id_utl`),
  ADD KEY `role` (`id_rl`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utl`),
  ADD KEY `destination1` (`id_station`),
  ADD KEY `destination` (`id_agence`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`id_vhc`),
  ADD KEY `destination` (`id_stn`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `conduire`
--
ALTER TABLE `conduire`
  MODIFY `id_cdr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `destination`
--
ALTER TABLE `destination`
  MODIFY `id_dest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_rsv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_rl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role_utl`
--
ALTER TABLE `role_utl`
  MODIFY `id_rl_utl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `vehicule`
--
ALTER TABLE `vehicule`
  MODIFY `id_vhc` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
