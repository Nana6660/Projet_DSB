-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 30 avr. 2022 à 18:28
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinemas`
--

-- --------------------------------------------------------

--
-- Structure de la table `cinema`
--

CREATE TABLE `cinema` (
  `idcinema` int(11) NOT NULL,
  `nom` varchar(42) DEFAULT NULL,
  `adresse` varchar(42) DEFAULT NULL,
  `image` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cinema`
--

INSERT INTO `cinema` (`idcinema`, `nom`, `adresse`, `image`) VALUES
(1, 'Pathé Quai d\'Ivry', '5 rue François Mitterrand - 94200 Ivry sur', 'pathe-quai-ivry-9.jpg'),
(2, 'Gaumont Aquaboulevard', '8 rue du Colonel Pierre Avia - 75015 Paris', 'gaumont-aquaboulevard.jpg'),
(3, 'Gaumont Convention', '29 rue Alain Chartier - 75015 Paris ', 'cinema-gaumont-convention_01.jpg'),
(4, 'Gaumont Les Fauvettes', '58 avenue des Gobelins - 75013 Paris', '001404164_520x330_c.jpg'),
(5, 'Gaumont Champs-Élysées', '31 Avenue des Champs-Elysees - 75008 Paris', 'gaumont-champs-elysees-marignan.jpg'),
(6, 'Pathé Beaugrenelle', '7 Rue Linois - Centre commercial Beaugrene', 'pate.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `idfilm` int(11) NOT NULL,
  `titre` varchar(42) DEFAULT NULL,
  `datedesortie` date DEFAULT NULL,
  `duree` varchar(42) DEFAULT NULL,
  `realisateur` varchar(42) DEFAULT NULL,
  `lienImage` varchar(42) DEFAULT NULL,
  `resume` longtext DEFAULT NULL,
  `idgenre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`idfilm`, `titre`, `datedesortie`, `duree`, `realisateur`, `lienImage`, `resume`, `idgenre`) VALUES
(1, 'Les Animaux Fantastiques 3 : Les secrets d', '2022-04-08', '2h23', 'David Yates', 'film_925892.jpg', 'Le professeur Albus Dumbledore sait que le puissant mage noir Gellert Grindelwald cherche à prendre le contrôle du monde des sorciers. Incapable de l\'empêcher d\'agir seul, il sollicite le magizoologiste Norbert Dragonneau pour qu\'il réunisse des sorciers, des sorcières et un boulanger moldu au sein d\'une équipe intrépide. Leur...', 1),
(2, 'Le secret de la cité perdue', '2022-04-21', '1h26', 'de Aaron Nee, Adam Nee', 'le-secret-de-la-cite-perdue-affiche-bd.jpg', 'Loretta Sage, romancière brillante mais solitaire, est connue pour ses livres mêlant romance et aventures dans des décors exotiques. Alan, mannequin, a pour sa part passé la plus grande partie de sa carrière à incarner Dash, le héros à la plastique avantageuse figurant sur les couvertures des livres de Loretta. Alors qu\'elle est en...', 4),
(3, 'En corps', '2022-01-11', '1h58', 'Cédric Klapisch', '1200x680_en-corps.jpg', 'Elise, 26 ans est une grande danseuse classique. Elle se blesse pendant un spectacle et apprend qu\'elle ne pourra plus danser. Dès lors sa vie va être bouleversée, Elise va devoir apprendre à se réparer. Entre Paris et la Bretagne, au gré des rencontres et des expériences, des déceptions et des espoirs, Elise va se rapprocher d\'une compagnie de danse contemporaine. Cette nouvelle façon de danser va lui permettre de...', 4),
(4, 'Downton Abbey 2 : Une nouvelle ère', '2022-04-10', '2h06', 'Simon Curtis', 'phpnn7wPd.jpg', 'Le réalisateur primé Julian Fellowes présente le film événement DOWNTON ABBEY II : UNE NOUVELLE ÈRE. Le retour très attendu du phénomène mondial réunit les acteurs favoris de la série pour un grand voyage dans le sud de la France afin de découvrir le mystère de la villa dont vient d\'hériter la comtesse douairière...', 3),
(5, 'Sonic 2 Le film', '2022-04-25', '2h02', 'Jeff Fowler', 'Sonic-2.jpg', 'Bien installé dans la petite ville de Green Hills, Sonic veut maintenant prouver qu\'il a l\'étoffe d\' un véritable héros. Un défi de taille se présente à lui quand le Dr Robotnik refait son apparition. Accompagné de son nouveau complice Knuckles, ils sont en quête d\'une émeraude dont le pouvoir permettrait de détruire l\'humanité toute...', 5),
(6, 'Qu\'est ce qu\'on a tous fait au bon dieu?', '2022-04-13', '1h39', 'Philippe de Chauveron', 'eosl3j39tmnfvtgncxshd2e3mmd-776.jpg', 'Ce sont bientôt les 40 ans de mariage de Claude et Marie Verneuil. Pour cette occasion, leurs quatre filles décident d\'organiser une grande fête surprise dans la maison familiale de Chinon et d\'y inviter les parents de chacun des gendres, pour quelques jours. Claude et Marie vont devoir accueillir sous leur toit les parents de...', 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idgenre` int(11) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`idgenre`, `libelle`) VALUES
(1, 'Fantastique'),
(2, 'Romance'),
(3, 'Drame'),
(4, 'Comédie'),
(5, 'Famille');

-- --------------------------------------------------------

--
-- Structure de la table `projette`
--

CREATE TABLE `projette` (
  `idsalle` int(11) NOT NULL,
  `idfilm` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `idsalle` int(11) NOT NULL,
  `capacité` int(11) DEFAULT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `idcinema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

CREATE TABLE `tarif` (
  `idtarif` int(11) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `idcinema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
  `idticket` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `dateachat` date DEFAULT NULL,
  `idtarif` int(11) DEFAULT NULL,
  `idfilm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`idcinema`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idfilm`),
  ADD KEY `idgenre` (`idgenre`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idgenre`);

--
-- Index pour la table `projette`
--
ALTER TABLE `projette`
  ADD PRIMARY KEY (`idsalle`,`idfilm`),
  ADD KEY `idfilm` (`idfilm`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`idsalle`),
  ADD KEY `idcinema` (`idcinema`);

--
-- Index pour la table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`idtarif`),
  ADD KEY `idcinema` (`idcinema`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`idticket`),
  ADD KEY `idfilm` (`idfilm`),
  ADD KEY `idtarif` (`idtarif`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cinema`
--
ALTER TABLE `cinema`
  MODIFY `idcinema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `idfilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `idgenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `idsalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tarif`
--
ALTER TABLE `tarif`
  MODIFY `idtarif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `idticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`idgenre`) REFERENCES `genre` (`idgenre`);

--
-- Contraintes pour la table `projette`
--
ALTER TABLE `projette`
  ADD CONSTRAINT `projette_ibfk_1` FOREIGN KEY (`idfilm`) REFERENCES `film` (`idfilm`),
  ADD CONSTRAINT `projette_ibfk_2` FOREIGN KEY (`idsalle`) REFERENCES `salle` (`idsalle`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`idcinema`) REFERENCES `cinema` (`idcinema`);

--
-- Contraintes pour la table `tarif`
--
ALTER TABLE `tarif`
  ADD CONSTRAINT `tarif_ibfk_1` FOREIGN KEY (`idcinema`) REFERENCES `cinema` (`idcinema`);

--
-- Contraintes pour la table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`idfilm`) REFERENCES `film` (`idfilm`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`idtarif`) REFERENCES `tarif` (`idtarif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
