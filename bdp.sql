-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 07 Juillet 2019 à 19:45
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `finance_gl`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `cni` varchar(100) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `cni`, `nom`, `prenom`, `adresse`, `tel`) VALUES
(10, '00121', 'DIOP', 'MOr', 'ZAC', '7886'),
(45, '12345', 'DIAGNE', 'Serigne Mor', 'Tivaouane', '784333140'),
(46, '233', 'NDIAYE', 'Thier', 'rufisque', '77654202'),
(47, '6475461', 'DIAGNE', 'BARA MBACKE', 'TIV', '775475461'),
(49, '44444', 'DIOP', 'Fallou', 'Pikine', '786542722'),
(62, '2774264882', 'SAMB', 'Oumou', 'ZAC', '338888888'),
(64, '4295879011', 'KKKKKKK', 'MMMMMMMM', 'NNNNN', '900009999'),
(65, '675437890', 'diop', 'TTTTTT', 'ZAC', '99987654'),
(66, '93876835924', 'TTTTTTT', 'EEEEEEE', 'GGGGGG', '78478247874'),
(67, 'sqdfgh', 'gdhj', 'gdhfjn', 'gdhyfjg', 'dghjf'),
(68, '12345978675645', 'FALL', 'MORY', 'ZAC', '55555555555'),
(73, '986756432', 'Mbow', 'Abdou', 'Tivaouane', '6666666666666'),
(77, '00222', 'DIOL', 'Cheikh', 'Tivaouane', '773008969'),
(78, '129388773', 'DIAGNE', 'MOUSSA', 'ZAC', '776454255');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `numero` varchar(25) NOT NULL,
  `dateCreation` varchar(10) NOT NULL,
  `solde` int(11) NOT NULL DEFAULT '0',
  `idClient` int(11) NOT NULL,
  `idGestCompte` int(11) NOT NULL,
  `soldeEmprunt` int(20) NOT NULL DEFAULT '0',
  `etat` varchar(100) NOT NULL DEFAULT 'actif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`id`, `numero`, `dateCreation`, `solde`, `idClient`, `idGestCompte`, `soldeEmprunt`, `etat`) VALUES
(12, 'FSN2019_2', '30-03-2019', 0, 10, 1, 0, 'bloquer'),
(47, 'FSN_24042019_C13', '24-04-2019', 29746879, 45, 1, 0, 'actif'),
(48, 'FSN_24042019_C48', '24-04-2019', 5010500, 46, 1, 200000, 'actif'),
(49, 'FSN_28042019_C49', '28-04-2019', 50070000, 47, 1, 0, 'actif'),
(51, 'FSN_01052019_C50', '01-05-2019', 11500822, 49, 1, 0, 'bloquer'),
(52, 'FSN_28062019_C52', '28-06-2019', 12665678, 47, 1, 0, 'actif'),
(54, 'FSN_28062019_C53', '28-06-2019', 25222222, 47, 1, 3000000, 'actif'),
(55, 'FSN_28062019_C55', '28-06-2019', 4040000, 73, 1, 0, 'bloquer'),
(56, 'FSN_28062019_C56', '28-06-2019', 30000000, 73, 1, 0, 'actif'),
(57, 'FSN_29062019_C57', '29-06-2019', 9001675, 68, 1, 0, 'actif'),
(58, 'FSN_30062019_C58', '30-06-2019', 5423433, 46, 1, 0, 'actif'),
(62, 'FSN_03072019_C62', '03-07-2019', 157000000, 77, 1, 0, 'bloquer'),
(63, 'FSN_04072019_C63', '04-07-2019', 666666, 45, 1, 0, 'bloquer'),
(64, 'FSN_04072019_C64', '04-07-2019', 40000, 78, 1, 0, 'actif'),
(65, 'FSN_04072019_C65', '04-07-2019', 510000, 78, 1, 0, 'actif');

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `dateOperation` varchar(10) NOT NULL,
  `montant` int(11) NOT NULL,
  `idCompte` int(11) NOT NULL,
  `idTypeOpe` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `operation`
--

INSERT INTO `operation` (`id`, `numero`, `dateOperation`, `montant`, `idCompte`, `idTypeOpe`, `idUser`) VALUES
(1, 'OP2', '30-03-2019', 4, 12, 1, 1),
(37, 'FSN_24042019_OP2', '24-04-2019', 10000, 47, 1, 1),
(38, 'FSN_24042019_OP38', '24-04-2019', 10000000, 47, 1, 1),
(45, 'FSN_24042019_OP45', '24-04-2019', 14500, 47, 1, 1),
(46, 'FSN_24042019_OP46', '24-04-2019', 2000, 48, 1, 1),
(47, 'FSN_24042019_OP47', '24-04-2019', 10000, 47, 1, 1),
(62, 'FSN_24042019_OP49', '24-04-2019', 10000, 47, 1, 1),
(64, 'FSN_24042019_OP63', '24-04-2019', 5000, 47, 2, 1),
(66, 'FSN_25042019_OP66', '25-04-2019', 30000, 47, 2, 1),
(69, 'FSN_28042019_OP69', '28-04-2019', 5000, 47, 2, 1),
(70, 'FSN_28042019_OP70', '28-04-2019', 100000, 49, 1, 1),
(71, 'FSN_28042019_OP71', '28-04-2019', 100000, 49, 1, 1),
(72, 'FSN_28042019_OP72', '28-04-2019', 30000, 49, 2, 1),
(73, 'FSN_01052019_OP73', '01-05-2019', 0, 51, 1, 1),
(74, 'FSN_27052019_OP74', '27-05-2019', 2000, 47, 1, 1),
(75, 'FSN_23062019_OP75', '23-06-2019', 2000, 47, 1, 1),
(77, 'FSN_24062019_OP77', '24-06-2019', 4000, 47, 1, 1),
(78, 'FSN_24062019_OP78', '24-06-2019', 10000, 48, 1, 1),
(79, 'FSN_26062019_OP79', '26-06-2019', 1000, 47, 1, 1),
(80, 'FSN_26062019_OP80', '26-06-2019', 10000, 47, 1, 1),
(82, 'FSN_28062019_OP82', '28-06-2019', 12345678, 52, 1, 1),
(83, 'FSN_28062019_OP83', '28-06-2019', 222222222, 54, 1, 1),
(84, 'FSN_28062019_OP84', '28-06-2019', 40000, 55, 1, 1),
(86, 'FSN_28062019_OP86', '28-06-2019', 1000000, 47, 1, 1),
(88, 'FSN_29062019_OP88', '29-06-2019', 1675, 57, 1, 1),
(89, 'FSN_30062019_OP89', '30-06-2019', 423433, 58, 1, 1),
(90, 'FSN_30062019_OP155', '30-06-2019', 100000, 47, 1, 1),
(91, 'FSN_30062019_OP91', '30-06-2019', 10000, 47, 1, 1),
(92, 'FSN_30062019_OP92', '30-06-2019', 1234, 47, 2, 1),
(93, 'FSN_30062019_OP93', '30-06-2019', 200000, 47, 1, 1),
(94, 'FSN_30062019_OP94', '30-06-2019', 22000, 47, 2, 1),
(95, 'FSN_30062019_OP95', '30-06-2019', 100000, 47, 1, 1),
(96, 'FSN_30062019_OP96', '30-06-2019', 444444, 47, 1, 1),
(97, 'FSN_30062019_OP97', '30-06-2019', 20000, 47, 1, 1),
(98, 'FSN_30062019_OP98', '30-06-2019', 20000, 47, 1, 3),
(99, 'FSN_30062019_OP99', '30-06-2019', 800000, 47, 2, 3),
(100, 'FSN_30062019_OP100', '30-06-2019', 2000000, 47, 3, 3),
(102, 'FSN_30062019_OP101', '30-06-2019', 200000, 48, 3, 3),
(104, 'FSN_30062019_OP103', '30-06-2019', 3000000, 54, 3, 3),
(105, 'FSN_30062019_OP105', '30-06-2019', 1000000, 47, 4, 3),
(106, 'FSN_30062019_OP106', '30-06-2019', 1000000, 47, 4, 3),
(107, 'FSN_30062019_OP107', '30-06-2019', 9000, 47, 2, 1),
(108, 'FSN_30062019_OP108', '30-06-2019', 1000000, 47, 1, 1),
(109, 'FSN_30062019_OP109', '30-06-2019', 500000, 49, 1, 1),
(110, 'FSN_01072019_OP110', '01-07-2019', 1123456, 47, 1, 1),
(111, 'FSN_01072019_OP111', '01-07-2019', 400000, 47, 2, 1),
(112, 'FSN_01072019_OP112', '01-07-2019', 813388, 47, 2, 1),
(113, 'FSN_01072019_OP113', '01-07-2019', 1000000, 47, 3, 1),
(114, 'FSN_01072019_OP114', '01-07-2019', 1000000, 47, 4, 1),
(115, 'FSN_01072019_OP115', '01-07-2019', 10000000, 47, 3, 1),
(116, 'FSN_01072019_OP116', '01-07-2019', 10000000, 47, 4, 1),
(117, 'FSN_01072019_OP117', '01-07-2019', 2000000, 55, 1, 1),
(120, 'FSN_01072019_OP120', '01-07-2019', 2000000, 55, 1, 1),
(124, 'FSN_01072019_OP123', '01-07-2019', 2000000, 47, 2, 1),
(125, 'FSN_01072019_OP125', '01-07-2019', 5000000, 57, 1, 1),
(127, 'FSN_01072019_OP126', '01-07-2019', 4000000, 57, 1, 1),
(129, 'FSN_01072019_OP128', '01-07-2019', 5000000, 47, 1, 1),
(131, 'FSN_01072019_OP130', '01-07-2019', 5000000, 48, 1, 1),
(133, 'FSN_01072019_OP132', '01-07-2019', 10000000, 49, 1, 1),
(135, 'FSN_02072019_OP134', '02-07-2019', 5000000, 58, 1, 1),
(137, 'FSN_02072019_OP136', '02-07-2019', 5000000, 47, 2, 1),
(138, 'FSN_02072019_OP138', '02-07-2019', 2000000, 47, 1, 1),
(139, 'FSN_02072019_OP139', '02-07-2019', 999500, 51, 2, 1),
(140, 'FSN_02072019_OP140', '02-07-2019', 10000000, 51, 1, 1),
(142, 'FSN_02072019_OP141', '02-07-2019', 10000000, 51, 1, 1),
(144, 'FSN_02072019_OP143', '02-07-2019', 20000000, 51, 2, 1),
(145, 'FSN_02072019_OP145', '02-07-2019', 10000000, 51, 5, 1),
(147, 'FSN_02072019_OP146', '02-07-2019', 10000000, 51, 5, 1),
(149, 'FSN_02072019_OP148', '02-07-2019', 10000000, 49, 5, 1),
(151, 'FSN_02072019_OP150', '02-07-2019', 600000, 49, 5, 1),
(160, 'FSN_02072019_OP160', '02-07-2019', 1000000, 51, 5, 1),
(171, 'FSN_02072019_OP161', '02-07-2019', 500000, 47, 1, 1),
(174, 'FSN_02072019_OP172', '02-07-2019', 2000000, 47, 2, 1),
(175, 'FSN_02072019_OP175', '02-07-2019', 10000000, 47, 1, 1),
(179, 'FSN_02072019_OP179', '02-07-2019', 10000000, 49, 5, 1),
(180, 'FSN_02072019_OP180', '02-07-2019', 200000000, 54, 5, 1),
(183, 'FSN_02072019_OP183', '02-07-2019', 100, 51, 5, 1),
(185, 'FSN_02072019_OP185', '02-07-2019', 222, 51, 5, 1),
(187, 'FSN_03072019_OP187', '03-07-2019', 5000000, 51, 5, 1),
(189, 'FSN_03072019_OP189', '03-07-2019', 4000000, 51, 5, 1),
(190, 'FSN_03072019_OP190', '03-07-2019', 1500000, 47, 7, 1),
(191, 'FSN_03072019_OP191', '03-07-2019', 1500000, 51, 5, 1),
(192, 'FSN_03072019_OP192', '03-07-2019', 7000000, 62, 1, 1),
(193, 'FSN_03072019_OP193', '03-07-2019', 10000000, 62, 1, 1),
(194, 'FSN_03072019_OP194', '03-07-2019', 10000000, 62, 2, 1),
(195, 'FSN_03072019_OP195', '03-07-2019', 50000000, 47, 7, 1),
(196, 'FSN_03072019_OP196', '03-07-2019', 50000000, 62, 5, 1),
(197, 'FSN_03072019_OP197', '03-07-2019', 100000000, 62, 3, 1),
(198, 'FSN_03072019_OP198', '03-07-2019', 100000000, 62, 4, 1),
(199, 'FSN_04072019_OP199', '04-07-2019', 20000000, 49, 1, 1),
(200, 'FSN_04072019_OP200', '04-07-2019', 20000000, 49, 1, 1),
(201, 'FSN_04072019_OP201', '04-07-2019', 200000, 47, 1, 1),
(202, 'FSN_04072019_OP202', '04-07-2019', 300000, 47, 1, 1),
(203, 'FSN_04072019_OP203', '04-07-2019', 1500, 47, 1, 1),
(204, 'FSN_04072019_OP204', '04-07-2019', 2000, 47, 1, 1),
(205, 'FSN_04072019_OP205', '04-07-2019', 4000, 47, 2, 1),
(207, 'FSN_04072019_OP206', '04-07-2019', 20000, 52, 1, 1),
(208, 'FSN_04072019_OP208', '04-07-2019', 234567, 47, 1, 1),
(209, 'FSN_04072019_OP209', '04-07-2019', 23456757, 47, 1, 1),
(210, 'FSN_04072019_OP210', '04-07-2019', 5555555, 47, 1, 1),
(211, 'FSN_04072019_OP211', '04-07-2019', 666666, 63, 1, 1),
(212, 'FSN_04072019_OP212', '04-07-2019', -12000, 64, 1, 1),
(213, 'FSN_04072019_OP213', '04-07-2019', 112000, 64, 1, 1),
(215, 'FSN_04072019_OP215', '04-07-2019', 500000, 65, 1, 1),
(217, 'FSN_04072019_OP217', '04-07-2019', 10000, 65, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `typeoperation`
--

CREATE TABLE `typeoperation` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `typeoperation`
--

INSERT INTO `typeoperation` (`id`, `nom`) VALUES
(1, 'depot'),
(3, 'emprunt'),
(4, 'remboursement'),
(2, 'retrait'),
(7, 'Transfert Envoyer'),
(5, 'Transfert Reçu');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `login`, `password`, `profil`) VALUES
(1, 'DIAGNE', 'Serigne Mor', 'admin', 'passer2019', 'admin'),
(2, 'NDIAYE', 'Thierno', 'thierno', 'passer2019', 'caissier'),
(3, 'NDIAYE', 'Serigne', 'ibou', 'passer', 'admin'),
(5, 'Sall', 'abdou', 'mor', 'passer', 'caissier'),
(6, 'NDIAYE', 'khalil', 'aaaa', 'passer', 'gestionnaire'),
(7, 'Sall', 'Moussa', 'passe', 'passe', 'admin'),
(11, 'Diop', 'Omar', 'coder', 'code', 'admin'),
(12, 'Diop', ' Ibou', 'dou', 'passer', 'admin'),
(16, '', '', '', '', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CNI` (`cni`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idGestCompte` (`idGestCompte`);

--
-- Index pour la table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `idCompte` (`idCompte`),
  ADD KEY `idTypeOpe` (`idTypeOpe`),
  ADD KEY `idUser` (`idUser`);

--
-- Index pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT pour la table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT pour la table `typeoperation`
--
ALTER TABLE `typeoperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `compte_ibfk_2` FOREIGN KEY (`idGestCompte`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`id`),
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`idTypeOpe`) REFERENCES `typeoperation` (`id`),
  ADD CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
