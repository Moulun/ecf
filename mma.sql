-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 20 août 2023 à 20:17
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mma`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(50) NOT NULL,
  `categorie` varchar(100) NOT NULL,
  `affiche_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie`, `affiche_categorie`) VALUES
(1, 'HEAVYWEIGHT\r\n116kg', './image/slim.png'),
(2, 'light heavyweight\r\n93kg', './image/Nasrudin.png'),
(3, 'MIDDLEWEIGHT\r\n84kg', './image/abdoul.png'),
(4, 'WELTERWEIGHT\r\n77kg', './image/abdoul.png'),
(5, 'LIGHTWEIGHT\r\n70kg', './image/Amin.png'),
(6, 'FEATHERWEIGHT\r\n66kg', './image/Damien-Lapilus.png'),
(7, 'BANTAMWEIGHT\r\n61kg', './image/demarte.png'),
(8, 'FLYWEIGHT\r\n57 KG', './image/ivana.png'),
(9, 'STRAWWEIGHT\r\n52kg', './image/asia.png');

-- --------------------------------------------------------

--
-- Structure de la table `combattant`
--

CREATE TABLE `combattant` (
  `id` int(50) NOT NULL,
  `affiche` varchar(300) NOT NULL,
  `nom` varchar(300) NOT NULL,
  `pays` varchar(300) NOT NULL,
  `âge` varchar(50) NOT NULL,
  `score k/d` varchar(50) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `sexe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `combattant`
--

INSERT INTO `combattant` (`id`, `affiche`, `nom`, `pays`, `âge`, `score k/d`, `categorie_id`, `sexe_id`) VALUES
(4, './image/slim.png', 'Slim Trabelsi', 'Tunisie', '30', '5-0-0', 1, 1),
(5, './image/Aboubacar.png', 'Aboubacar Bathily', 'France', '-', '7-4-0', 1, 1),
(6, './image/Alexsandr.png', 'Alexander Soldatkin', 'Allemagne', '30', '14-3-0', 1, 1),
(7, './image/Alpha.png', 'Alpha Cissokho', 'France', '-', '1-1-0', 1, 1),
(8, './image/Azamat.png', 'Azamat Aboukhanov', 'France', '-', '0-1-0', 1, 1),
(9, './image/Azamat.NU.png', 'Azamat Nuftillaev\r\n\"Dragon\"', 'Ouzbékistan\r\n', '29', '13-1-1', 1, 1),
(10, './image/Badr.png', 'Badr Medkouri\r\n\"dastan\"', 'France', '-', '4-2-0', 1, 1),
(11, './image/Ben.png', 'Ben Adwubi', 'Allemagne', '-', '4-3-0', 1, 1),
(12, './image/Benjamin.png', 'Benjamin Šehić\r\n\"Benho\"', 'Bosnie-Herzégovine\r\n', '-', '5-3-0', 1, 1),
(13, './image/Danilo.png', 'Danilo Suzart\r\n\"Dan\"', 'Brésil', '32', '9-1-0', 1, 1),
(14, './image/Nasrudin.png', 'Nasrudin Nasrudinov', 'Russie', '31', '10-1-0', 2, 1),
(15, './image/Igor.png', 'Igor Glazkov\r\n\"Golden Boy\"', 'Russie', '24', '7-0-0', 2, 1),
(16, './image/Oumar.png', 'Oumar Sy', 'France', '-', '6-0-0', 2, 1),
(17, './image/Virgil.png', 'Virgil Augen', 'France', '-', '5-0-0', 2, 1),
(18, './image/Jacky.png', 'Jacky Jeanne', 'France', '-', '3-1-0', 2, 1),
(19, './image/Alejandro.png', 'Alejandro Arcas\r\n\"LE PITBULL CUBAIN', 'Cuba', '37', '3-1-0', 2, 1),
(20, './image/Carlos.png', 'Carlos Cainan', 'Brésil', '28', '4-1-0', 2, 1),
(21, './image/Claudio.png', 'Claudio Conti\r\n\"Le Loup\"', 'Italie', '32', '8-6-2', 2, 1),
(22, './image/Hugo.png', 'Hugo Guillon', 'France', '-', '4-1-0', 2, 1),
(23, './image/Ildemar.png', 'Ildemar Alcantara\r\n\"Marajó\"', 'Brésil', '40', '26-16-0', 2, 1),
(24, './image/abdoul.png', 'Abdoul Abdouraguimov\r\n\"Lazy King\"', 'France', '28', '16-1-0', 3, 1),
(25, './image/akh.png', 'Akhmed Salamov', 'France', '30', '5-1-0', 3, 1),
(26, './image/Donatello.png', 'Ale Donatello', 'France', '29', '1-1-0', 3, 1),
(27, './image/Carlos.png', 'Carlos Graca', 'Portugual', '-', '3-2-0', 3, 1),
(28, './image/Cherif.png', 'Cherif Drame\r\n\"Black Loup\"', 'Bénin', '34', '3-1-0', 3, 1),
(29, './image/Djati.png\r\n', 'Djati Melan', 'Cote d\'Ivoire', '30', '8-1-0', 3, 1),
(30, './image/Aslam.png', 'Eslam Syaha\r\n\"The Ironman\"', 'Égypte', '29', '13-2-0', 3, 1),
(31, './image/Franck-Martin.png', 'Franck Martin', 'France', '-', '0-1-0', 3, 1),
(32, './image/Glen.png', 'Glenn Sparv\r\n\"Teddy Bear\"', 'Finlande\r\n', '35', '22-7-0', 3, 1),
(33, './image/Gregory-Babene.png', 'Gregory Babene\r\n\"Blade\"', 'France', '39', '22-11-0', 3, 1),
(34, './image/abdoul.png', 'Abdoul Abdouraguimov\r\n\"Lazy King\"', 'France', '28', '16-1-0', 4, 1),
(35, './image/Pepi-Champ.png', 'Laureano Staropoli\r\n\"Pepi\"', 'Argentine', '30', '12-5-0', 4, 1),
(36, './image/Mickael.png', 'Mickael Lebout\r\n\"Ragnar\"', 'France', '36', '23-12-3', 4, 1),
(37, './image/Felix.png', 'Felix Klinkhammer', 'Royaume-Uni\r\n', '-', '9-0-0', 4, 1),
(38, './image/Ibrahima.png', 'Ibrahima Mané\r\n\"Ibra Kumite', 'France', '34', '27-11-2', 4, 1),
(39, './image/Karl.png', 'Karl Amoussou\r\n\"Psycho\"', 'France', '37', '27-11-2', 4, 1),
(40, './image/Alaa.png', 'Alaa Mansour\r\n\"Thor\"', 'Ukraine', '32', '10-4-0', 4, 1),
(41, './image/Alexander.png', 'Alexander Mikael\r\n\"Pantera Negra\"', 'Brésil', '26', '9-2-0', 4, 1),
(42, './image/Amin.png', 'Amin Ayoub\r\n\"Fierceness\"', 'France', '27', '18-6-1', 4, 1),
(43, './image/Ammari.png', 'Ammari Diedrick\r\n\r\n', 'Royaume-Uni', '-', '3-1-0', 4, 1),
(44, './image/Amin.png', 'Amin Ayoub\r\n\"Fierceness\"', 'France', '27', '18-6-1', 5, 1),
(45, './image/Axel.png', 'Axel Sola', 'France', '25', '6-0-0', 5, 1),
(46, './image/Baba.png', 'Baba Nadjombe\r\n\"Zeus\"', 'Togo', '33', '7-4-0', 5, 1),
(47, './image/Cesar.png', 'Cesar Arzamendia\r\n\"goku\"', 'Paraguay', '32', '9-6-0', 5, 1),
(48, './image/Dagir.png', 'Dagir Imavov\r\n\"Specnaz\"', 'France', '31', '15-3-1', 5, 1),
(49, './image/Damien-Lapilus.png', 'Damien Lapilus\r\n\"The Walking Dead', 'France', '35', '21-14-3', 5, 1),
(50, './image/Daniele.png', 'Daniele Scagliusi\r\n\"Angel face\"', 'Italie', '21', '4-2-0', 5, 1),
(51, './image/Tona.png', 'David-Tonatiuh Crol\r\n\"Tona\"', 'France', '26', '11-7-0', 5, 1),
(52, './image/Ghiles.png', 'Ghiles Oudelha', 'France', '29', '14-6-0', 5, 1),
(53, './image/Adriao-Guilherme.png', 'Guilherme Gomes\r\n\"Shimaru\"', 'Brésil', '25', '4-3-0', 5, 1),
(54, './image/Damien-Lapilus.png', 'Damien Lapilus\r\n\"The Walking Dead\"', 'France', '35', '21-14-3', 6, 1),
(55, './image/Alioune.png', 'Alioune Nahaye\r\n\"Jaguar\"', 'France\r\n', '32', '12-4-0', 6, 1),
(56, './image/Arthur.png', 'Arthur Demonceaux', 'France', '28', '8-2-0', 6, 1),
(57, './image/Asilder.png', 'Asilder Badouiev\r\n\"No Matter Who\"', 'France', '29', '7-2-0', 6, 1),
(58, './image/Mossab.png', 'Mossab El Marzkioui\r\n\"The Amazigh\"', 'France', '25', '5-1-1', 6, 1),
(59, './image/Mark-Ewen.png', 'Mark Ewen', 'Royaume-Uni\r\n', '-', '4-0-0', 6, 1),
(60, './image/Alexandre.png', 'Alexandre Carole', 'France', '-', '2-2-0', 6, 1),
(61, './image/Dagir.png', 'Dagir Imavov\r\n\"Specnaz', 'France', '31', '15-3-1', 6, 1),
(62, './image/Luna.png', 'Darwin Luna Ortez\r\n\"El Joker\"', 'Honduras\r\n', '25', '7-5-0', 6, 1),
(63, './image/Tona.png', 'David-Tonatiuh Crol\r\n\"Tona\"', 'France', '26', '11-7-0', 6, 1),
(64, './image/Demarte.png', 'Demarte Pena\r\n\"Le Loup\"', 'Angola', '33', '14-1-0', 7, 1),
(65, './image/Moustapha.png\r\n\r\n', 'Moustapha Aida\r\n\r\n', 'France', '-', '10-2-0', 7, 1),
(66, './image/Mehdi-Saadi.png', 'Mehdi Saadi\r\n\r\n', 'France', '-', '5-2-0', 7, 1),
(67, './image/Aboubakar-Younous.png', 'Aboubakar Younousov\r\n\"Dikiy\"', 'France', '-', '3-0-0', 7, 1),
(68, './image/Youssouf-Binate.png', 'Youssouf Binate', 'France', '-', '4-0-0', 7, 1),
(69, './image/Mounem-Mssaate.png', 'Abdelmoumen Mssaate\r\n\"Magie', 'France', '30', '7-4-0', 7, 1),
(70, './image/Anthony-Lauren.png\r\n\r\n', 'Anthony Laurent\r\n\r\n', 'France', '-', '1-1-0', 7, 1),
(71, './image/Elias-Boudegzdame.png', 'Elias Boudegzdame\r\n\"sourire\"', 'Algérie', '29', '18-8-0', 7, 1),
(72, './image/Leopold.png', 'Léopold Goi\r\n\"Leonidas\"', 'France', '-', '5-2-0', 7, 1),
(73, './image/Luke-Niall.png\r\n\r\n', 'Luke Niall\r\n\r\n', 'Royaume-Uni\r\n', '-', '0-1-0', 7, 1),
(74, './image/Ivana.png', 'Ivana Petrovic', 'Norvège', '28', '6-0-0', 8, 2),
(75, './image/Alexandra-Tekenah.png', 'Alexandra Tekenah', 'France', '-', '3-1-0', 8, 2),
(76, './image/asia.png', 'Assia Miri', 'France', '-', '2-1-0', 8, 2),
(77, './image/Dorota-Norek.png', 'Dorota Norek', 'Pologne', '34', '6-3-0', 8, 2),
(78, './image/Ewelina-Wozniak.png', 'Ewelina Woźniak\r\n\"La reine folle\"', 'Pologne', '30', '7-2-0', 8, 2),
(79, './image/Iony-Razafiarizon.png', 'Iony Razafiarison', 'France', '38', '8-4-0', 8, 2),
(80, './image/Iris-Marmouset.png\r\n\r\n', 'Iris Marmouset\r\n\r\n', 'France', '-', '0-1-0', 8, 2),
(81, './image/Levi-Steedman.png', 'Levi Steedman', 'Royaume-Uni\r\n', '-', '1-3-0', 8, 2),
(82, './image/Manuella-Marconetto.png', 'Manuela Marconetto\r\n\"LA FILLE DU BOUCHER\"', 'Italie', '-', '4-3-0', 8, 2),
(83, './image/Marjorie-Le-Moullac.png', 'Marjorie Le Moullac', 'France', '-', '0-1-0', 8, 2),
(84, './image/Anastasia-Feofanova.png', 'Anastasia Feofanova', 'Russie', '33', '8-2-0', 9, 2),
(85, './image/asia.png', 'Assia Miri', 'France', '-', '2-1-0', 9, 2),
(86, './image/Rodriguez.png', 'Elizabeth Rodrigues', 'Venezuela', '-', '5-4-0', 9, 2),
(87, './image/Ewelina-Wozniak.png', 'Ewelina Woźniak\r\n\"La reine folle\"\"', 'Pologne', '30', '7-2-0', 9, 2),
(88, './image/fabiola.png', 'Fabiola Pidroni', 'Italie', '29', '5-0-0', 9, 2),
(89, './image/Maria.png', 'Maria Da Silva\r\n\"Viuva Negra\"', 'Brésil', '27', '8-0-0', 9, 2),
(90, './image/Micol-Di-Segni-.png', 'Micol di Segni', 'Italie', '35', '9-4-0', 9, 2);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id_evenement` int(50) NOT NULL,
  `evenement` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

CREATE TABLE `sexe` (
  `id` int(11) NOT NULL,
  `sexe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sexe`
--

INSERT INTO `sexe` (`id`, `sexe`) VALUES
(1, 'homme'),
(2, 'femme');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is-admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `email`, `nom`, `prenom`, `password`, `is-admin`) VALUES
(7, '', '', '', '', 0),
(8, 'moulun', '', '', 'moulun', 1),
(9, '', '', '', '', 0),
(10, '', '', '', '', 0),
(11, '', '', '', '', 0),
(12, '', '', '', '', 0),
(13, '', '', '', '', 0),
(14, 'a', '', '', 'a', 0),
(15, '', '', '', '', 0),
(16, 'a', '', '', 'a', 0),
(17, 'b', '', '', 'b', 0),
(18, 'a', '', '', 'a', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `combattant`
--
ALTER TABLE `combattant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `combattant_FK` (`sexe_id`),
  ADD KEY `combattant_FK_1` (`categorie_id`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id_evenement`);

--
-- Index pour la table `sexe`
--
ALTER TABLE `sexe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `combattant`
--
ALTER TABLE `combattant`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id_evenement` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sexe`
--
ALTER TABLE `sexe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `combattant`
--
ALTER TABLE `combattant`
  ADD CONSTRAINT `combattant_FK` FOREIGN KEY (`sexe_id`) REFERENCES `sexe` (`id`),
  ADD CONSTRAINT `combattant_FK_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
