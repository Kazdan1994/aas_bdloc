-- phpMyAdmin SQL Dump
-- version 4.4.5
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 02 Juin 2015 à 19:11
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bdloc`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE IF NOT EXISTS `adresse` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compAdresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `adresse`
--

INSERT INTO `adresse` (`id`, `nom`, `compAdresse`, `cp`, `ville`, `user_id`) VALUES
(1, 'Jacquemin', '11 allée des Pétunia', '78000', 'Versailles', 10),
(2, 'Jacquemin', '12 rue de Viennes', '91000', 'Evry', 10);

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `death` datetime DEFAULT NULL,
  `pays` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `author`
--

INSERT INTO `author` (`id`, `nom`, `prenom`, `birth`, `death`, `pays`, `pseudo`, `slug`) VALUES
(2, 'Jodorowsky', 'Alexandro', '1929-02-07 00:00:00', NULL, 'Chili', NULL, 'jodorowsky-alexandro'),
(3, 'Giraud', 'Jean', '1938-05-08 00:00:00', NULL, 'France', 'Moebius', 'moebius-giraud-jean'),
(4, 'Beaumenay-Joannet', 'Isabelle', '1957-01-01 00:00:00', NULL, 'France', NULL, 'beaumenay-joannet-isabelle'),
(5, 'Janjetov', 'Zoran', NULL, NULL, 'Yougoslavie', NULL, 'janjetov-zoran'),
(6, 'Chaland', 'Yves', '1957-04-03 00:00:00', '1990-07-18 00:00:00', 'France', NULL, 'chaland-yves'),
(7, 'Studio Beltran', NULL, NULL, NULL, 'France', NULL, 'studio-beltran'),
(8, 'Beltran', 'Valérie', NULL, NULL, '', NULL, 'beltran-valerie'),
(9, 'Bess', 'Georges', '1947-01-01 00:00:00', NULL, 'France', NULL, 'bess-georges'),
(10, 'Bess', 'Guillaume', NULL, NULL, '', NULL, 'bess-guillaume'),
(11, 'Nolent', 'Alexis', '1967-01-01 00:00:00', NULL, 'France', 'Matz', 'matz-nolent-alexis'),
(12, 'Jacamon', 'Luc', NULL, NULL, '', NULL, 'jacamon-luc'),
(13, 'Brunschwig', 'Luc', '1967-09-03 00:00:00', NULL, 'France', NULL, 'brunschwig-luc'),
(14, 'Hirn', 'Laurent', '1963-04-05 00:00:00', NULL, 'France', NULL, 'hirn-laurent'),
(15, 'Guth', 'Claude', '1962-03-02 00:00:00', NULL, '', NULL, 'guth-claude'),
(16, 'Benacquista', 'Tonino', '1961-09-01 00:00:00', NULL, '', NULL, 'benacquista-tonino'),
(17, 'Ferrandez', 'Jacques', '1955-12-12 00:00:00', NULL, '', NULL, 'ferrandez-jacques'),
(18, 'Paringaux', 'Philippe', NULL, NULL, '', NULL, 'paringaux-philippe'),
(19, ' De Loustal', 'Jacques', '1956-04-10 00:00:00', NULL, 'France', 'Loustal', 'loustal-de-loustal-jacques'),
(20, '<Collectif>', NULL, NULL, NULL, '', NULL, 'collectif'),
(21, 'Kris', NULL, '1972-09-04 00:00:00', NULL, '', NULL, 'kris'),
(22, 'Davodeau', 'Etienne', '1965-10-19 00:00:00', NULL, 'France', NULL, 'davodeau-etienne'),
(23, 'Manara', 'Maurilio', '1945-09-12 00:00:00', NULL, 'Italie', 'Manara, Milo', 'manara-milo-manara-maurilio'),
(24, '<N&B>', NULL, NULL, NULL, '', NULL, 'n-b'),
(25, 'Rabaté', 'Pascal', '1961-08-13 00:00:00', NULL, 'France', NULL, 'rabate-pascal'),
(26, 'Diaz Canales', 'Juan', '1972-01-01 00:00:00', NULL, 'Espagne', NULL, 'diaz-canales-juan'),
(27, 'Guarnido', 'Juanjo', '1967-01-01 00:00:00', NULL, 'Espagne', NULL, 'guarnido-juanjo'),
(28, 'Abouet', 'Marguerite', '1971-01-01 00:00:00', NULL, 'Côte d''ivoire', NULL, 'abouet-marguerite'),
(29, 'Oubrerie', 'Clément', NULL, NULL, '', NULL, 'oubrerie-clement'),
(30, 'Mandryka', 'Nikita', '1940-10-20 00:00:00', NULL, '', NULL, 'mandryka-nikita'),
(31, 'Frezzato', 'Massimiliano', '1967-03-12 00:00:00', NULL, 'Italie', NULL, 'frezzato-massimiliano'),
(32, 'Gratien', 'Eric', NULL, NULL, '', NULL, 'gratien-eric'),
(33, 'David', 'Didier', '1959-09-09 00:00:00', NULL, 'France', 'Cromwell', 'cromwell-david-didier'),
(34, 'Abolin', 'Georges', '1969-05-09 00:00:00', NULL, '', NULL, 'abolin-georges'),
(35, 'Pont', 'Olivier', '1969-06-01 00:00:00', NULL, 'France', NULL, 'pont-olivier'),
(36, 'Chagnaud', 'Jean-Jacques', NULL, NULL, '', NULL, 'chagnaud-jean-jacques'),
(37, 'Szalewa', 'Igor', '1966-01-01 00:00:00', NULL, 'France', NULL, 'szalewa-igor'),
(38, 'Ryser', 'Nicolas', NULL, NULL, '', NULL, 'ryser-nicolas'),
(39, 'Polonsky', 'Stephan', NULL, NULL, '', NULL, 'polonsky-stephan'),
(40, ' Phoussera', 'Ing', '1961-06-24 00:00:00', NULL, 'Cambodge', 'Séra', 'sera-phoussera-ing'),
(41, 'Siefer', 'Laurent', NULL, NULL, '', NULL, 'siefer-laurent'),
(42, 'Pontarolo', 'Frédéric', '1970-02-10 00:00:00', NULL, 'France', NULL, 'pontarolo-frederic'),
(43, 'Omond', 'Eric', '1968-05-16 00:00:00', NULL, 'France', NULL, 'omond-eric'),
(44, 'Beuzelin', 'Boris', '1971-06-30 00:00:00', NULL, 'France', NULL, 'beuzelin-boris'),
(45, 'Gallié', 'Mathieu', NULL, NULL, 'France', NULL, 'gallie-mathieu'),
(46, 'Andréae', 'Jean-Baptiste', '1964-01-10 00:00:00', NULL, 'France', NULL, 'andreae-jean-baptiste'),
(47, 'Moore', 'Alan', '1953-11-18 00:00:00', NULL, 'Angleterre', NULL, 'moore-alan'),
(48, 'Gibbons', 'Dave', '1949-04-14 00:00:00', NULL, 'Angleterre', NULL, 'gibbons-dave'),
(49, 'Higgins', 'John', NULL, NULL, '', NULL, 'higgins-john'),
(50, 'Burns', 'Charles', '1955-09-27 00:00:00', NULL, 'Usa', NULL, 'burns-charles'),
(51, 'Eisner', 'William Erwin', '1917-03-06 00:00:00', '2005-01-03 00:00:00', 'Usa', 'Eisner, Will', 'eisner-will-eisner-william-erwin'),
(52, 'Miller', 'Frank', NULL, NULL, 'Usa', NULL, 'miller-frank'),
(53, 'Mizuki', 'Shigeru', '1922-03-08 00:00:00', NULL, 'Japon', NULL, 'mizuki-shigeru'),
(54, 'Kusumi', 'Masayuki', NULL, NULL, 'Japon', NULL, 'kusumi-masayuki'),
(55, 'Taniguchi', 'Jirô', '1947-08-12 00:00:00', NULL, 'Japon', NULL, 'taniguchi-jiro'),
(56, 'Rabagliati', 'Michel', NULL, NULL, 'Canada', NULL, 'rabagliati-michel'),
(57, 'Lapierre', 'François', '1970-03-21 00:00:00', NULL, 'Québec', NULL, 'lapierre-francois'),
(58, 'Beaulieu', 'Jimmy', '1974-01-01 00:00:00', NULL, 'Canada', NULL, 'beaulieu-jimmy'),
(59, 'Larcenet', 'Manu', '1969-05-06 00:00:00', NULL, 'France', NULL, 'larcenet-manu'),
(60, 'Larcenet', 'Patrice', '1971-06-05 00:00:00', NULL, 'France', NULL, 'larcenet-patrice'),
(61, 'Chabosy', 'Laurent', '1964-01-01 00:00:00', NULL, 'France', 'Trondheim, Lewis', 'trondheim-lewis-chabosy-laurent'),
(62, 'Findakly', 'Brigitte', NULL, NULL, 'France', NULL, 'findakly-brigitte'),
(63, 'Ferri', 'Jean-Yves', NULL, NULL, '', NULL, 'ferri-jean-yves'),
(64, 'Sfar', 'Joann', '1971-08-28 00:00:00', NULL, 'France', NULL, 'sfar-joann'),
(65, 'Guibert', 'Emmanuel', '1964-01-01 00:00:00', NULL, 'France', NULL, 'guibert-emmanuel'),
(66, 'Lindingre', 'Yan', NULL, NULL, '', NULL, 'lindingre-yan'),
(67, 'Dupuy', 'Philippe', '1960-12-15 00:00:00', NULL, 'France', NULL, 'dupuy-philippe'),
(68, 'Legris', 'Claude', NULL, NULL, '', NULL, 'legris-claude'),
(69, 'Berberian', 'Charles', '1959-05-28 00:00:00', NULL, 'France', NULL, 'berberian-charles'),
(70, 'Sapin', 'Mathieu', NULL, NULL, '', NULL, 'sapin-mathieu'),
(71, 'Chedru', 'Delphine', NULL, NULL, '', NULL, 'chedru-delphine'),
(72, 'Le Gall', 'Frank', '1959-09-23 00:00:00', NULL, 'France', NULL, 'le-gall-frank'),
(73, 'Boulard', 'Hubert', '1971-01-01 00:00:00', NULL, '', 'Hubert', 'hubert-boulard-hubert'),
(74, ' Kerascoët', NULL, NULL, NULL, 'France', 'Kerascoët', 'kerascoet-kerascoet'),
(75, 'Blain', 'Christophe', '1970-08-10 00:00:00', NULL, 'France', NULL, 'blain-christophe'),
(76, ' Pezzali', 'Walter', NULL, NULL, '', 'Walter', 'walter-pezzali-walter'),
(77, 'Loisel', 'Régis', '1951-12-04 00:00:00', NULL, 'France', NULL, 'loisel-regis'),
(78, 'Cosandey', 'Bernard', '1950-06-14 00:00:00', NULL, 'Suisse', 'Cosey', 'cosey-cosandey-bernard'),
(79, ' Hislaire', 'Bernard', '1957-01-11 00:00:00', NULL, 'Belgique', 'Yslaire', 'yslaire-hislaire-bernard'),
(80, 'Le Pennetier', 'Yann', NULL, NULL, 'France', 'Balac', 'balac-le-pennetier-yann'),
(81, 'Bastide', 'Jean', '1982-01-01 00:00:00', NULL, '', NULL, 'bastide-jean'),
(82, 'Mezil', 'Vincent', '1983-01-01 00:00:00', NULL, 'France', NULL, 'mezil-vincent'),
(83, 'Le Tendre', 'Serge', '1946-12-01 00:00:00', NULL, 'France', NULL, 'le-tendre-serge'),
(84, ' Legeard', 'Dominique', '1960-05-12 00:00:00', NULL, 'France', 'Lidwine', 'lidwine-legeard-dominique'),
(85, 'Aouamri', 'Mohamed', '1957-03-24 00:00:00', NULL, 'Algerie', NULL, 'aouamri-mohamed'),
(86, 'Lencot', 'Yves', '1959-04-29 00:00:00', NULL, 'France', NULL, 'lencot-yves'),
(87, 'Quilici', 'Laurence', NULL, NULL, '', NULL, 'quilici-laurence'),
(88, ' Wasem', 'Pierre', '1970-07-16 00:00:00', NULL, 'Suisse', 'Wazem, Pierre', 'wazem-pierre-wasem-pierre'),
(89, 'Peeters', 'Frederik', '1974-08-14 00:00:00', NULL, 'Suisse', NULL, 'peeters-frederik'),
(90, 'Ralenti', 'Albertine', NULL, NULL, '', NULL, 'ralenti-albertine'),
(91, 'Ayroles', 'Alain', '1968-01-26 00:00:00', NULL, 'France', NULL, 'ayroles-alain'),
(92, 'Masbou', 'Jean-Luc', '1963-03-14 00:00:00', NULL, 'France', NULL, 'masbou-jean-luc'),
(93, 'Mayer', 'Jean-marc', NULL, NULL, '', NULL, 'mayer-jean-marc'),
(94, 'Moynot', 'Emmanuel', '1960-04-15 00:00:00', NULL, 'France', NULL, 'moynot-emmanuel'),
(95, 'Bravo', 'Emile', '1964-09-18 00:00:00', NULL, 'France', NULL, 'bravo-emile'),
(96, 'Tripp', 'Jean-Louis', '1958-02-04 00:00:00', NULL, 'France', NULL, 'tripp-jean-louis'),
(97, ' Girard', 'Philippe', NULL, NULL, 'Québec', 'Phlppgrrd', 'phlppgrrd-girard-philippe'),
(98, 'Girard', 'Pascal', NULL, NULL, 'Québec', NULL, 'girard-pascal'),
(99, 'Duberger', 'Jean-sébastien', NULL, NULL, '', 'Dub', 'dub-duberger-jean-sebastien'),
(100, 'Tan', 'Shaun', NULL, NULL, 'Australie', NULL, 'tan-shaun'),
(101, 'Bonifay', 'Philippe', '1959-08-13 00:00:00', NULL, 'France', NULL, 'bonifay-philippe'),
(102, 'Pé', 'Frank', '1956-07-15 00:00:00', NULL, 'Belgique', 'Frank(Pé)', 'frank-pe-pe-frank'),
(103, 'Lloyd', 'David', NULL, NULL, 'Angleterre', NULL, 'lloyd-david'),
(104, 'Roussel', 'Gilles', '1975-02-01 00:00:00', NULL, 'France', 'Boulet', 'boulet-roussel-gilles'),
(105, 'Albon', 'Lucie', '1977-01-01 00:00:00', NULL, 'France', NULL, 'albon-lucie'),
(106, 'Lefèvre', 'Didier', NULL, '2007-01-29 00:00:00', '', NULL, 'lefevre-didier'),
(107, 'Pacinotti', 'Gianni', '1963-01-01 00:00:00', NULL, 'Italie', 'Gipi', 'gipi-pacinotti-gianni'),
(108, 'Dragon', 'Pierre', '1965-01-01 00:00:00', NULL, 'France', NULL, 'dragon-pierre'),
(109, 'Debeurme', 'Ludovic', NULL, NULL, 'France', NULL, 'debeurme-ludovic'),
(110, 'Hincker', 'Christian', '1967-12-27 00:00:00', NULL, 'France', 'Blutch', 'blutch-hincker-christian'),
(111, 'Van Hamme', 'Jean', '1939-01-16 00:00:00', NULL, 'Belgique', NULL, 'van-hamme-jean'),
(112, 'Rosinski', 'Grzegorz', '1941-08-03 00:00:00', NULL, 'Pologne', NULL, 'rosinski-grzegorz'),
(113, 'Kasprzak', 'Graza', NULL, NULL, '', 'Graza', 'graza-kasprzak-graza'),
(114, 'Sente', 'Yves', '1964-01-17 00:00:00', NULL, 'Belgique', NULL, 'sente-yves'),
(115, 'Pelinq', 'Christophe', '1963-08-14 00:00:00', NULL, 'France', 'Arleston Scotch', 'arleston-scotch-pelinq-christophe'),
(116, 'Tarquin', 'Didier', '1967-01-20 00:00:00', NULL, 'France', NULL, 'tarquin-didier'),
(117, 'Hislaire', 'Bernard', '1957-01-11 00:00:00', NULL, 'Belgique', NULL, 'hislaire-bernard'),
(118, ' Herman', 'Jean', '1933-05-17 00:00:00', NULL, 'France', 'Vautrin, Jean', 'vautrin-jean-herman-jean'),
(119, 'Tardi', 'Jacques', '1946-08-30 00:00:00', NULL, 'France', NULL, 'tardi-jacques'),
(120, 'Haldeman', 'Joe', '1943-06-09 00:00:00', NULL, 'Usa', NULL, 'haldeman-joe'),
(121, 'Van Oppen', 'Mark', '1953-04-29 00:00:00', NULL, 'Belgique', 'Marvano', 'marvano-van-oppen-mark'),
(122, 'Marchand', 'Bruno', '1963-01-01 00:00:00', NULL, 'France', NULL, 'marchand-bruno'),
(123, 'Juillard', 'André', '1948-06-09 00:00:00', NULL, 'France', NULL, 'juillard-andre'),
(124, 'Convard', 'Didier', '1950-01-16 00:00:00', NULL, 'France', NULL, 'convard-didier'),
(125, '<Quadrichromie>', NULL, NULL, NULL, '', NULL, 'quadrichromie'),
(126, 'Gibrat', 'Jean-Pierre', '1954-04-17 00:00:00', NULL, 'France', NULL, 'gibrat-jean-pierre'),
(127, 'Kraehn', 'Jean-Charles', '1955-06-27 00:00:00', NULL, 'France', NULL, 'kraehn-jean-charles'),
(128, 'Vallée', 'Sylvain', '1972-06-28 00:00:00', NULL, 'France', NULL, 'vallee-sylvain'),
(129, 'Jambers', 'Patricia', NULL, NULL, '', NULL, 'jambers-patricia'),
(130, 'Lapière', 'Denis', '1958-08-08 00:00:00', NULL, 'Belgique', NULL, 'lapiere-denis'),
(131, 'Pellejero', 'Ruben', '1952-12-20 00:00:00', NULL, 'Espagne', NULL, 'pellejero-ruben'),
(132, 'Christin', 'Pierre', '1938-07-27 00:00:00', NULL, 'France', NULL, 'christin-pierre'),
(133, 'Satrapi', 'Marjane', NULL, NULL, 'Iran', NULL, 'satrapi-marjane'),
(134, 'De Crécy', 'Nicolas', '1966-09-29 00:00:00', NULL, 'France', NULL, 'de-crecy-nicolas'),
(135, 'Tjoyas', 'Alexios', NULL, NULL, '', NULL, 'tjoyas-alexios'),
(136, 'Ruby', NULL, NULL, NULL, '', NULL, 'ruby'),
(137, 'Chomet', 'Sylvain', '1963-01-01 00:00:00', NULL, 'France', NULL, 'chomet-sylvain'),
(138, 'Chevillard', 'Hubert', NULL, NULL, '', NULL, 'chevillard-hubert'),
(139, 'Zaza et Zik', NULL, NULL, NULL, '', NULL, 'zaza-et-zik'),
(140, 'Gale', 'Janet', NULL, NULL, 'Nouvelle-zélande', NULL, 'gale-janet'),
(141, 'Langlois', 'Monica', NULL, NULL, '', NULL, 'langlois-monica'),
(142, 'Karali', 'Olivier', '1967-12-29 00:00:00', NULL, '', 'Ka, Olivier', 'ka-olivier-karali-olivier'),
(143, 'Papagalli', 'Lionel', '1976-05-19 00:00:00', NULL, 'France', 'Alfred', 'alfred-papagalli-lionel'),
(144, 'Meunier', 'Henri', '1972-01-01 00:00:00', NULL, 'France', NULL, 'meunier-henri'),
(145, 'Chevalier', 'Bruno', NULL, NULL, 'France', NULL, 'chevalier-bruno'),
(146, 'Ségur', 'Thierry', '1964-02-11 00:00:00', NULL, 'France', NULL, 'segur-thierry'),
(147, 'De Oliveira', 'Luiz Eduardo', '1944-01-01 00:00:00', NULL, 'Bresil', 'Léo', 'leo-de-oliveira-luiz-eduardo'),
(148, ' Smulkowski', 'Scarlett', NULL, NULL, '', 'Scarlett', 'scarlett-smulkowski-scarlett'),
(149, 'Jacquette', 'Rodolphe Daniel', '1948-05-18 00:00:00', NULL, 'France', 'Rodolphe', 'rodolphe-jacquette-rodolphe-daniel'),
(150, 'Smulkowski', 'Scarlett', NULL, NULL, '', NULL, 'smulkowski-scarlett'),
(151, 'Boudjellal', 'Farid', '1953-03-12 00:00:00', NULL, 'France', NULL, 'boudjellal-farid'),
(152, 'Stassen', 'Jean-Philippe', '1966-03-14 00:00:00', NULL, '', NULL, 'stassen-jean-philippe'),
(153, 'Herman', 'Dieter', '1942-02-11 00:00:00', NULL, 'Belgique', 'Comès, Didier', 'comes-didier-herman-dieter'),
(154, 'Breccia', 'Alberto', '1919-04-15 00:00:00', '1993-11-10 00:00:00', 'Uruguay', NULL, 'breccia-alberto'),
(155, 'Oger', 'Tiburce', '1967-01-01 00:00:00', NULL, 'France', NULL, 'oger-tiburce'),
(156, 'Prugne', 'Patrick', NULL, NULL, 'France', NULL, 'prugne-patrick'),
(157, 'Leroy', 'Emmanuel', NULL, NULL, '', NULL, 'leroy-emmanuel'),
(158, 'Bilal', 'Enes', '1951-10-07 00:00:00', NULL, 'Yougoslavie', 'Bilal, Enki', 'bilal-enki-bilal-enes'),
(159, 'David', 'Fabrice', NULL, NULL, '', NULL, 'david-fabrice'),
(160, 'Bourgier', 'Eric', '1975-01-01 00:00:00', NULL, 'France', NULL, 'bourgier-eric'),
(161, 'Nury', 'Fabien', '1976-05-31 00:00:00', NULL, 'France', NULL, 'nury-fabien'),
(162, 'Delf', NULL, NULL, NULL, '', NULL, 'delf'),
(163, 'Lupano', 'Wilfrid', '1971-09-26 00:00:00', NULL, 'France', NULL, 'lupano-wilfrid'),
(164, 'Augustin', 'Virginie', '1973-01-01 00:00:00', NULL, 'France', NULL, 'augustin-virginie'),
(165, 'Penloup', 'Geneviève', NULL, NULL, '', NULL, 'penloup-genevieve'),
(166, 'Itoïz', 'Mayana', NULL, NULL, '', NULL, 'itoiz-mayana'),
(167, 'Prudhomme', 'David', '1969-01-01 00:00:00', NULL, 'France', NULL, 'prudhomme-david'),
(168, 'Merlet', 'Isabelle', '1967-10-07 00:00:00', NULL, 'France', NULL, 'merlet-isabelle'),
(169, 'Rouger', 'Jean-Jacques', NULL, NULL, 'France', NULL, 'rouger-jean-jacques'),
(170, 'Clémence', NULL, NULL, NULL, '', NULL, 'clemence'),
(171, 'Ravon', 'Philippe', NULL, NULL, '', NULL, 'ravon-philippe'),
(172, 'Chailleux', 'Maximilien', NULL, NULL, '', NULL, 'chailleux-maximilien'),
(173, ' Pelinq', 'Christophe', '1963-08-14 00:00:00', NULL, 'France', 'Arleston, Scotch', 'arleston-scotch-pelinq-christophe'),
(174, 'Lamirand', 'Sébastien', NULL, NULL, '', NULL, 'lamirand-sebastien'),
(175, 'Mathias', 'Guy', NULL, NULL, '', NULL, 'mathias-guy'),
(176, ' De Oliveira', 'Luiz Eduardo', '1944-01-01 00:00:00', NULL, 'Bresil', 'Leo', 'leo-de-oliveira-luiz-eduardo'),
(177, ' Pé', 'Frank', '1956-07-15 00:00:00', NULL, 'Belgique', 'Frank (Pé)', 'frank-pe-pe-frank'),
(178, ' Giraud', 'Jean', '1938-05-08 00:00:00', NULL, 'France', 'Moebius', 'moebius-giraud-jean'),
(179, 'Glogowski', 'Philippe', '1960-06-16 00:00:00', NULL, 'Belgique', NULL, 'glogowski-philippe'),
(180, 'Le Guirec', 'Rose', NULL, NULL, '', NULL, 'le-guirec-rose'),
(181, 'Peeters', 'Benoît', '1956-08-28 00:00:00', NULL, 'France', NULL, 'peeters-benoit'),
(182, 'Schuiten', 'François', '1956-04-26 00:00:00', NULL, 'Belgique', NULL, 'schuiten-francois'),
(183, 'Willingham', 'Bill', NULL, NULL, '', NULL, 'willingham-bill'),
(184, 'Medina', 'Lan', NULL, NULL, '', NULL, 'medina-lan'),
(185, 'Van Valkenburgh', 'Sherilyn', NULL, NULL, '', NULL, 'van-valkenburgh-sherilyn'),
(186, 'Buckingham', 'Mark', NULL, NULL, '', NULL, 'buckingham-mark'),
(187, 'Vozzo', 'Daniel', NULL, NULL, 'Usa', NULL, 'vozzo-daniel'),
(188, 'Akins', 'Tony', NULL, NULL, '', NULL, 'akins-tony'),
(189, 'Bertho', 'Pascal', '1964-10-07 00:00:00', NULL, 'France', NULL, 'bertho-pascal'),
(190, 'Duval', 'Stéphane', '1970-12-25 00:00:00', NULL, 'France', NULL, 'duval-stephane'),
(191, 'Cochet', 'Isabelle', NULL, NULL, '', NULL, 'cochet-isabelle'),
(192, 'Aifelle', NULL, NULL, NULL, '', NULL, 'aifelle'),
(193, 'Bajram', 'Denis', '1970-02-01 00:00:00', NULL, 'France', NULL, 'bajram-denis'),
(194, 'Plessix', 'Michel', '1959-11-10 00:00:00', NULL, 'France', NULL, 'plessix-michel'),
(195, 'Jouannigot', 'Loïc', NULL, NULL, '', NULL, 'jouannigot-loic'),
(196, 'Corbeyran', 'Eric', '1964-12-14 00:00:00', NULL, 'France', NULL, 'corbeyran-eric'),
(197, ' Coronas', 'Christophe', '1966-05-18 00:00:00', NULL, 'France', 'Cécil', 'cecil-coronas-christophe'),
(198, 'Mallié', 'Vincent', '1973-04-24 00:00:00', NULL, 'France', NULL, 'mallie-vincent'),
(199, '  Hislaire', 'Bernard', '1957-01-11 00:00:00', NULL, 'Belgique', 'Yslaire', 'yslaire-hislaire-bernard'),
(200, 'Mézil', 'Vincent', '1983-01-01 00:00:00', NULL, 'France', NULL, 'mezil-vincent'),
(201, 'Charest', 'Travis', NULL, NULL, '', NULL, 'charest-travis'),
(202, 'Mettout', 'Éric', NULL, NULL, '', NULL, 'mettout-eric'),
(203, 'Ghielmetti', 'Philippe', NULL, NULL, '', 'Dugenou', 'dugenou-ghielmetti-philippe'),
(204, 'Richard', 'Marc', NULL, NULL, 'Québec', NULL, 'richard-marc'),
(205, 'Houde', 'Jocelyn', NULL, NULL, 'Québec', NULL, 'houde-jocelyn'),
(206, 'Dufaux', 'Jean', '1949-06-07 00:00:00', NULL, 'Belgique', NULL, 'dufaux-jean'),
(207, 'Tillier', 'Béatrice', '1972-09-18 00:00:00', NULL, 'France', NULL, 'tillier-beatrice'),
(208, 'Montésinos', 'Éric', NULL, NULL, '', NULL, 'montesinos-eric'),
(209, 'Davodeau', 'Étienne', '1965-10-19 00:00:00', NULL, 'France', NULL, 'davodeau-etienne'),
(210, 'Bravo', 'Émile', '1964-09-18 00:00:00', NULL, 'France', NULL, 'bravo-emile'),
(211, 'Kerascoët', NULL, NULL, NULL, 'France', NULL, 'kerascoet'),
(212, 'Jacobs', 'Edgar Pierre', '2004-03-30 00:00:00', '1987-02-20 00:00:00', 'Belgique', NULL, 'jacobs-edgar-pierre'),
(213, 'Marssignac', 'Paul-Serge', '1937-12-24 00:00:00', '2007-02-08 00:00:00', '', NULL, 'marssignac-paul-serge'),
(214, 'Corbeyran', 'Éric', '1964-12-14 00:00:00', NULL, 'France', NULL, 'corbeyran-eric'),
(215, ' Lucas', 'Erwan', '1977-02-08 00:00:00', NULL, 'France', 'Obion', 'obion-lucas-erwan'),
(216, 'Delobel', 'Anne', '1949-01-01 00:00:00', NULL, '', NULL, 'delobel-anne'),
(217, 'Pedrosa', 'Cyril', '1972-11-22 00:00:00', NULL, 'France', NULL, 'pedrosa-cyril'),
(218, 'Leialoha', 'Steve', '1952-01-27 00:00:00', NULL, 'Usa', NULL, 'leialoha-steve'),
(219, 'Klein', 'Todd', NULL, NULL, 'états-unis', NULL, 'klein-todd'),
(220, 'Maleev', 'Alex', '1971-01-01 00:00:00', NULL, 'Bulgarie', NULL, 'maleev-alex'),
(221, 'Jean', 'James', NULL, NULL, '', NULL, 'jean-james'),
(222, 'Hamilton', 'Craig', NULL, NULL, '', NULL, 'hamilton-craig'),
(223, 'Wiesenfeld', 'Aron', NULL, NULL, '', NULL, 'wiesenfeld-aron'),
(224, 'Talbot', 'Bryan', '1952-02-24 00:00:00', NULL, 'Angleterre', NULL, 'talbot-bryan'),
(225, 'Medley', 'Linda', NULL, NULL, '', NULL, 'medley-linda'),
(226, 'Russell', 'Paul Craig', NULL, NULL, 'états-unis', NULL, 'russell-paul-craig'),
(227, 'Kindzierski', 'Lovern', NULL, NULL, 'Usa', NULL, 'kindzierski-lovern'),
(228, 'Palmiotti', 'James', '1961-08-16 00:00:00', NULL, 'états-unis', 'Palmiotti, Jimmy', 'palmiotti-jimmy-palmiotti-james'),
(229, 'Hahn', 'David', NULL, NULL, '', NULL, 'hahn-david'),
(230, 'Green', 'Dan', NULL, NULL, '', NULL, 'green-dan'),
(231, 'Pepoy', 'Andrew', NULL, NULL, '', NULL, 'pepoy-andrew'),
(232, 'Fern', 'Jim', NULL, NULL, '', NULL, 'fern-jim'),
(233, 'Loughridge', 'Lee', NULL, NULL, 'Usa', NULL, 'loughridge-lee'),
(234, 'McManus', 'Shawn', NULL, NULL, 'états-unis', NULL, 'mcmanus-shawn'),
(235, 'Allred', 'Laura', NULL, NULL, '', NULL, 'allred-laura'),
(236, 'De La Cruz', 'Eva', NULL, NULL, '', NULL, 'de-la-cruz-eva'),
(237, 'Alexovich', 'Aaron', '1977-01-01 00:00:00', NULL, 'U.s.a.', NULL, 'alexovich-aaron'),
(238, 'Mineo', 'Yoneyama', '1951-01-01 00:00:00', NULL, 'Japon', 'Yumemakura, Baku', 'yumemakura-baku-mineo-yoneyama'),
(239, 'Niffle', 'Frédéric', NULL, NULL, '', NULL, 'niffle-frederic'),
(240, 'Chollet', 'Sylvain', NULL, NULL, '', NULL, 'chollet-sylvain'),
(241, ' Cosandey', 'Bernard', '1950-06-14 00:00:00', NULL, 'Suisse', 'Cosey', 'cosey-cosandey-bernard'),
(242, 'Denis', 'Jean-Claude', '1951-01-01 00:00:00', NULL, 'France', NULL, 'denis-jean-claude'),
(243, 'Sattouf', 'Riad', '1978-05-05 00:00:00', NULL, 'France', NULL, 'sattouf-riad'),
(244, ' Vasseur', 'Didier', '1958-09-29 00:00:00', NULL, 'France', 'Tronchet', 'tronchet-vasseur-didier'),
(245, 'Giroud', 'Frank', '1956-05-03 00:00:00', NULL, 'France', NULL, 'giroud-frank'),
(246, 'Meyer', 'Ralph', '1971-08-11 00:00:00', NULL, 'France', NULL, 'meyer-ralph'),
(247, 'Delabie', 'Caroline', NULL, NULL, '', NULL, 'delabie-caroline'),
(248, 'Fogolin', 'Dimitri', NULL, NULL, '', NULL, 'fogolin-dimitri'),
(249, 'Ferté', 'Ségolène', NULL, NULL, '', NULL, 'ferte-segolene'),
(250, 'Ruiz', 'Anne-Marie', NULL, NULL, '', NULL, 'ruiz-anne-marie'),
(251, 'Minguez', 'Jean-Marie', '1977-01-01 00:00:00', NULL, 'France', NULL, 'minguez-jean-marie'),
(252, 'Cuveele', NULL, NULL, NULL, '', NULL, 'cuveele'),
(253, 'Caballero', 'Tatto', NULL, NULL, 'Mexique', NULL, 'caballero-tatto'),
(254, 'Turf', NULL, '1966-08-22 00:00:00', NULL, 'France', NULL, 'turf'),
(255, 'Gaudin', 'Nadège', NULL, NULL, '', NULL, 'gaudin-nadege'),
(256, 'Raule', NULL, '1971-11-10 00:00:00', NULL, '', NULL, 'raule'),
(257, 'Ibañez Ugena', 'Roger', '1977-07-06 00:00:00', NULL, 'Espagne', 'Roger', 'roger-ibanez-ugena-roger'),
(258, 'D''Haene', 'Charles', NULL, NULL, '', NULL, 'd-haene-charles'),
(259, 'Le Roux', 'Étienne', '1966-12-14 00:00:00', NULL, 'Madagascar', NULL, 'le-roux-etienne'),
(260, 'Brizard', 'Jérôme', NULL, NULL, '', NULL, 'brizard-jerome'),
(261, 'Desberg', 'Stephen', '1954-09-10 00:00:00', NULL, 'Belgique', NULL, 'desberg-stephen'),
(262, 'Marini', 'Enrico', '1969-08-13 00:00:00', NULL, 'Suisse', NULL, 'marini-enrico'),
(263, 'Felicetti', 'Stella', NULL, NULL, '', NULL, 'felicetti-stella'),
(264, 'Bourgeon', 'François', '1945-07-05 00:00:00', NULL, 'France', NULL, 'bourgeon-francois'),
(265, 'Vasseur', 'Didier', '1958-09-29 00:00:00', NULL, 'France', 'Tronchet', 'tronchet-vasseur-didier'),
(266, 'De Oliveira', 'Luiz Eduardo', '1944-12-13 00:00:00', NULL, 'Brésil', 'Leo', 'leo-de-oliveira-luiz-eduardo'),
(267, 'Marchal', 'Bertrand', '1974-05-01 00:00:00', NULL, 'Belgique', NULL, 'marchal-bertrand'),
(268, 'Bouët', 'Sébastien', NULL, NULL, '', NULL, 'bouet-sebastien'),
(269, 'Díaz Canales', 'Juan', '1972-01-01 00:00:00', NULL, 'Espagne', NULL, 'diaz-canales-juan'),
(270, 'Munuera', 'José-Luis', '1972-04-21 00:00:00', NULL, 'Espagne', NULL, 'munuera-jose-luis'),
(271, 'Sédyas', NULL, NULL, NULL, '', NULL, 'sedyas'),
(272, 'Moscow Eye', NULL, NULL, NULL, '', NULL, 'moscow-eye'),
(273, 'Gaudin', 'Jean-Charles', '1963-01-01 00:00:00', NULL, 'France', NULL, 'gaudin-jean-charles'),
(274, 'Picaud', 'Christophe', '1969-01-01 00:00:00', NULL, 'France', NULL, 'picaud-christophe'),
(275, 'Alquier', 'Fabien', NULL, NULL, '', NULL, 'alquier-fabien'),
(276, 'Hobb', 'Robin', NULL, NULL, 'Usa', NULL, 'hobb-robin'),
(277, 'Sieurac', 'Laurent', '1974-03-06 00:00:00', NULL, 'France', NULL, 'sieurac-laurent'),
(278, 'Graffet', 'Didier', '1970-01-01 00:00:00', NULL, 'France', NULL, 'graffet-didier'),
(279, 'Herik', 'Hanna', NULL, NULL, '', NULL, 'herik-hanna'),
(280, 'Hairsine', 'Trevor', NULL, NULL, '', NULL, 'hairsine-trevor'),
(281, 'Blengino', 'Luca', '1978-01-01 00:00:00', NULL, 'Italie', NULL, 'blengino-luca'),
(282, 'Sarchione', 'Antonio', '1969-06-01 00:00:00', NULL, 'Italie', NULL, 'sarchione-antonio'),
(283, 'Pieri', 'Lorenzo', NULL, NULL, '', NULL, 'pieri-lorenzo'),
(284, 'Sibran', 'Anne', '1963-02-03 00:00:00', NULL, 'France', NULL, 'sibran-anne'),
(285, ' Petiqueux', 'Jérémy', '1984-10-26 00:00:00', NULL, 'Belgique', 'Jérémy', 'jeremy-petiqueux-jeremy'),
(286, 'Fructus', 'Nicolas', '1970-06-24 00:00:00', NULL, 'France', NULL, 'fructus-nicolas'),
(287, 'Lemire', 'Jeff', '1976-01-01 00:00:00', NULL, '', NULL, 'lemire-jeff'),
(288, 'Blanchet', 'Pascal', '1980-01-01 00:00:00', NULL, 'Québec', NULL, 'blanchet-pascal'),
(289, '<Bichromie>', NULL, NULL, NULL, '', NULL, 'bichromie'),
(290, 'Shaw', 'Dash', '1983-04-06 00:00:00', NULL, 'états-unis', NULL, 'shaw-dash'),
(291, 'Vidberg', 'Martin', '1980-03-20 00:00:00', NULL, 'France', NULL, 'vidberg-martin'),
(292, 'Wild', 'Nicolas', '1977-01-01 00:00:00', NULL, 'France', NULL, 'wild-nicolas'),
(293, 'Delisle', 'Guy', '1966-01-19 00:00:00', NULL, 'Québec', NULL, 'delisle-guy'),
(294, 'Doxiadis', 'Apostolos', NULL, NULL, 'Grèce', NULL, 'doxiadis-apostolos'),
(295, 'Papadatos', 'Alecos', NULL, NULL, 'Grèce', NULL, 'papadatos-alecos'),
(296, 'Di Donna', 'Annie', NULL, NULL, 'France', NULL, 'di-donna-annie'),
(297, 'Papadimitriou', 'Christos', NULL, NULL, 'Grèce', NULL, 'papadimitriou-christos'),
(298, 'Dauzat', 'Pierre-Emmanuel', NULL, NULL, '', NULL, 'dauzat-pierre-emmanuel'),
(299, 'Doxat', 'Eric', NULL, NULL, '', NULL, 'doxat-eric'),
(300, ' Ladrönn', 'José Omar', '1967-01-01 00:00:00', NULL, 'Mexique', 'Ladrönn, José', 'ladroenn-jose-ladroenn-jose-omar'),
(301, 'Costa', 'Marianne', NULL, NULL, 'France', NULL, 'costa-marianne'),
(302, 'Facio', 'Sebastian', NULL, NULL, '', NULL, 'facio-sebastian'),
(303, 'Bourgier', 'Éric', '1975-12-11 00:00:00', NULL, 'France', NULL, 'bourgier-eric'),
(304, ' Mitildjian', 'Jean-Blaise', '1953-01-01 00:00:00', NULL, 'France', 'Djian', 'djian-mitildjian-jean-blaise'),
(305, 'Nouhaud', 'David', '1976-01-22 00:00:00', NULL, 'France', NULL, 'nouhaud-david'),
(306, 'Salomone', 'Paul', '1981-01-01 00:00:00', NULL, 'France', NULL, 'salomone-paul'),
(307, 'Lanzac', 'Abel', NULL, NULL, 'France', NULL, 'lanzac-abel'),
(308, 'Sapin', 'Clémence', NULL, NULL, '', NULL, 'sapin-clemence'),
(309, 'Ricci', 'Roberto', '1976-09-21 00:00:00', NULL, 'Italie', NULL, 'ricci-roberto'),
(310, 'Gonord', 'Didier', NULL, NULL, '', NULL, 'gonord-didier');

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL,
  `numVolume` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editeur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `couverture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbPage` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serie_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=563 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `book`
--

INSERT INTO `book` (`id`, `numVolume`, `titre`, `editeur`, `reference`, `couverture`, `nbPage`, `stock`, `slug`, `serie_id`, `author_id`) VALUES
(2, 3, 'Ce qui est en bas', 'Les Humanoïdes Associés', '2-7316-0241-4', 'johndifoolt3cequiestenbas1983.jpg', 60, 3, 'ce-qui-est-en-bas', 1, 3),
(3, 5, '5ème essence : galaxie qui songe', 'Les Humanoïdes Associés', '2-7316-0531-6', 'johndifoolt5la5essence1galaxiequisonge1988.jpg', 45, 3, '5eme-essence-galaxie-qui-songe', 1, 3),
(4, 6, '5ème essence : La planète Difool', 'Les Humanoïdes Associés', '2-7316-0532-4', 'johndifoolt6la5essence2laplanetedifool1988.jpg', 46, 7, '5eme-essence-la-planete-difool', 1, 3),
(5, 1, 'L''Incal Noir', 'Les Humanoïdes Associés', '2-7316-0084-5', 'johndifoolt1lincalnoir1981.jpg', 50, 5, 'l-incal-noir', 1, 3),
(6, 2, 'L''Incal lumière', 'Les Humanoïdes Associés', '2-7316-0135-3', 'johndifoolt2lincallumiere1982.jpg', 52, 4, 'l-incal-lumiere', 1, 3),
(7, 4, 'Ce qui est en haut', 'Les Humanoïdes Associés', '2-7316-0361-5', 'johndifoolt4cequiestenhaut1985.jpg', 57, 2, 'ce-qui-est-en-haut', 1, 3),
(8, 1, 'Adieu le père', 'Les Humanoïdes Associés', '2-73161-197-9', 'incalavant1.jpg', 47, 5, 'adieu-le-pere', 2, 5),
(9, 2, 'Détective privé de classe ''R''', 'Les Humanoïdes Associés', '2-7316-1198-7', 'Avantlincal02_01062002.jpg', 48, 1, 'detective-prive-de-classe-r', 2, 5),
(10, 3, 'Croot', 'Les Humanoïdes Associés', '2-7316-1438-2', 'Avantlincal03_27062002.jpg', 50, 1, 'croot', 2, 5),
(11, 4, 'Anarcopsychotiques', 'Les Humanoïdes Associés', '2-73161-439-0', 'incalavant4.jpg', 46, 4, 'anarcopsychotiques', 2, 5),
(12, 5, 'Ouisky, SPV & homéoputes', 'Les Humanoïdes Associés', '2-7316-1440-4', 'incalavant5.jpg', 48, 2, 'ouisky-spv-homeoputes', 2, 5),
(13, 6, 'Suicide allée', 'Les Humanoïdes Associés', '2-7316-1441-2', 'incalavantcouv06a.jpg', 46, 3, 'suicide-allee', 2, 5),
(14, 1, 'Fils de Flingue', 'Les Humanoïdes Associés', '2-73161-083-2', 'JuanSolo01.jpg', 58, 4, 'fils-de-flingue', 3, 9),
(15, 2, 'Les Chiens du pouvoir', 'Les Humanoïdes Associés', '2-73161-134-0', 'JuanSolo02.jpg', 52, 6, 'les-chiens-du-pouvoir', 3, 9),
(16, 3, 'La Chair et la gale', 'Les Humanoïdes Associés', '2-7316-1253-3', 'JuanSolo03.jpg', 52, 7, 'la-chair-et-la-gale', 3, 9),
(18, 4, 'Saint Salaud', 'Les Humanoïdes Associés', '2-7316-1390-4', 'JuanSolo04.jpg', 52, 8, 'saint-salaud', 3, 9),
(19, 1, 'Long feu', 'Casterman', '2-203-38916-8', 'tueur01aS040104_04012004.jpg', 62, 3, 'long-feu', 4, 12),
(20, 2, 'L''engrenage', 'Casterman', '2-203-38941-9', 'TueurLe02.jpg', 62, 1, 'l-engrenage', 4, 12),
(21, 3, 'La dette', 'Casterman', '2-203-38966-4', 'tueur03.jpg', 54, 2, 'la-dette', 4, 12),
(22, 4, 'Les liens du sang', 'Casterman', '2-203-389982', 'tueur04.jpg', 54, 4, 'les-liens-du-sang', 4, 12),
(23, 5, 'La mort dans l''âme', 'Casterman', '2-203-38600-2', 'tueur05couv.jpg', 54, 5, 'la-mort-dans-l-ame', 4, 12),
(24, 6, 'Modus Vivendi', 'Casterman', '978-2-203-00181-7', 'tueur06.jpg', 54, 2, 'modus-vivendi', 4, 12),
(25, 1, 'Joshua', 'Delcourt', '2-906187-87-9', 'pouvoirinnocents01acouv.jpg', 64, 2, 'joshua', 5, 14),
(26, 3, 'Providence', 'Delcourt', '2-84055-077-6', 'pouvoirdesinnocents03couv.jpg', 56, 3, 'providence', 5, 14),
(27, 4, 'Jessica', 'Delcourt', '2-84055-183-7', 'pouvoirinnocents04couv.jpg', 56, 2, 'jessica', 5, 14),
(28, NULL, 'L''outremangeur', 'Casterman', '2-203-38913-3', 'outremangeur.jpg', 56, 3, 'l-outremangeur', 6, 17),
(29, NULL, 'Sang des voyous (Le)', 'Casterman', '2-203-36606-0', 'SangDesVoyousLe_08092006.jpg', 64, 4, 'sang-des-voyous-le', 7, 19),
(30, NULL, 'Lettres et Carnets du front 1914-1918', 'Soleil Productions / France Inter', '2-84946-597-6', 'parolesdepoilus.jpg', 79, 5, 'lettres-et-carnets-du-front-1914-1918', 8, 20),
(31, NULL, 'Un homme est mort', 'Futuropolis', '2-75480-010-7', 'unhommeestmort01.jpg', 62, 6, 'un-homme-est-mort', 9, 22),
(32, 2, 'Jour de colère', 'Casterman', '2-203-33415-0', 'giuseppebergman02.jpg', 166, 7, 'jour-de-colere', 10, 23),
(33, NULL, 'L''intégrale', 'Vents d''Ouest', '2-7493-0181-5', 'ibicusint.jpg', 530, 2, 'l-integrale', 11, 25),
(34, 1, 'Quelque part entre les ombres', 'Dargaud', '2-205-04965-8', 'Blacksad_01_15161.jpg', 46, 4, 'quelque-part-entre-les-ombres', 12, 27),
(35, 2, 'Arctic-Nation', 'Dargaud', '2-205-05199-7', 'Blacksad_02_24600.jpg', 54, 5, 'arctic-nation', 12, 27),
(36, 3, 'Âme Rouge', 'Dargaud', '2-205-05564-X', 'blacksadtome03.jpg', 54, 6, 'ame-rouge', 12, 27),
(37, 1, 'Volume 1', 'Gallimard', '2-07-057311-7', 'aya1couvrc9_51991.jpg', 96, 2, 'volume-1', 13, 29),
(39, 1, 'Aussi loin que je me rappelle...', 'Casterman', '2-203-36501-3', 'anitabombacou01.JPG', 44, 4, 'aussi-loin-que-je-me-rappelle', 15, 33),
(40, 2, 'C''est pas parceque je suis pauvre...', 'Casterman', '2-203-36502-1', 'anitabombacou02.JPG', 44, 3, 'c-est-pas-parceque-je-suis-pauvre', 15, 33),
(41, 3, 'Un jour, j''ai arrêté de bosser...', 'Casterman', '2-203-36503-X', 'anitabombacouv03.jpg', 44, 2, 'un-jour-j-ai-arrete-de-bosser', 15, 33),
(42, 4, 'La vie est trop courte ...', 'Casterman', '2-203-36504-8', 'anitabombacouv04.jpg', 44, 2, 'la-vie-est-trop-courte', 15, 33),
(43, 1, 'Princesse Salma', 'Vents d''Ouest', '2-86967-751-0', 'kucek01a.jpg', 46, 5, 'princesse-salma', 16, 35),
(44, 2, 'Kanchack le fourbe', 'Vents d''Ouest', '2-86967-752-9', 'kucek02a.jpg', 46, 6, 'kanchack-le-fourbe', 16, 35),
(45, 3, 'L''élu', 'Vents d''Ouest', '2-86967-753-7', 'kucek03a.jpg', 46, 7, 'l-elu', 16, 35),
(46, 1, 'Où le regard ne porte pas...', 'Dargaud', '2-205-05092-3', 'ouleregardneportepascouv01.jpg', 94, 1, 'ou-le-regard-ne-porte-pas', 17, 35),
(47, 2, 'Où le regard ne porte pas...', 'Dargaud', '2-205-05098-2', 'OuLeRegardNePortePas02.jpg', 96, 2, 'ou-le-regard-ne-porte-pas', 17, 35),
(48, 1, 'Un ventre aride', 'Glénat', '2-7234-3256-4', 'hariticouv01.jpg', 46, 3, 'un-ventre-aride', 18, 38),
(49, 2, 'Le fruit de nos entrailles', 'Glénat', '2-7234-3538-5', 'hariticouv02.JPG', 46, 2, 'le-fruit-de-nos-entrailles', 18, 38),
(50, 3, 'Toutes les sèves de l''aurore', 'Glénat', '2-7234-4327-2', 'hariti03_39329.jpg', 46, 1, 'toutes-les-seves-de-l-aurore', 18, 38),
(51, NULL, 'Secteur 7', 'Glénat', '2-7234-4863-0', 'Secteur7_09122005.jpg', 56, 5, 'secteur-7', 19, 40),
(52, NULL, 'Mystère Ovale', 'Glénat', '2-7234-3963-1', 'MystereOvale_09042004.jpg', 54, 3, 'mystere-ovale', 20, 41),
(53, 1, 'Rien ou presque', 'Glénat', '2-7234-3672-1', 'akarus01.jpg', 52, 4, 'rien-ou-presque', 21, 42),
(54, 2, 'Dors, Petite Sœur', 'Glénat', '2-7234-4087-7', 'akarus02_30102003.jpg', 54, 5, 'dors-petite-soeur', 21, 42),
(55, 1, 'L''épouvantail pointeur', 'Glénat', '2-7234-3740-X', 'epouvpoint.jpg', 54, 6, 'l-epouvantail-pointeur', 22, 44),
(56, 1, 'La chrysalide diaprée', 'Vents d''Ouest', '2-86967-551-8', 'mangecoeur01a.JPG', 48, 7, 'la-chrysalide-diapree', 23, 46),
(57, 2, 'Dans le jeu des miroirs', 'Vents d''Ouest', '2-86967-552-6', 'mangecoeur02a.JPG', 48, 4, 'dans-le-jeu-des-miroirs', 23, 46),
(58, 3, 'Le Rêve d''Argemme', 'Vents d''Ouest', '2-86967-532-1', 'mangecoeur03a.JPG', 48, 3, 'le-reve-d-argemme', 23, 46),
(60, NULL, 'Black Hole', 'Delcourt', '2-7560-0379-4', 'BlackHolein_11112006.jpg', 361, 7, 'black-hole', 26, 50),
(61, 5, 'Spirit', 'Les Humanoïdes Associés', '2-7316-0045-4', 'spiritle05.jpg', 60, 5, 'spirit', 27, 51),
(62, 1, 'The hard goodbye', 'Dark horse books', '1-593-07293-7', 'SinCity1_16032008_163359.jpg', 200, 4, 'the-hard-goodbye', 28, 52),
(63, 4, 'That yellow bastard', 'Dark horse books', '1-593-07296-1', 'SinCity4_16032008_163353.jpg', 223, 2, 'that-yellow-bastard', 28, 52),
(64, 5, 'Family values', 'Dark horse books', '1-593-07297-X', 'SinCity5_16032008_163347.jpg', 126, 5, 'family-values', 28, 52),
(65, 2, 'A dame to kill for', 'Dark horse books', '1-593-07293-7', 'SinCity1_16032008_163359.jpg', 200, 1, 'a-dame-to-kill-for', 28, 52),
(66, 3, 'The big fat kill', 'Dark horse books', '1-593-07293-7', 'SinCity1_16032008_163359.jpg', 200, 1, 'the-big-fat-kill', 28, 52),
(67, 6, 'Booze, broads and bullets', 'Dark horse books', NULL, 'SinCity1_16032008_163359.jpg', 200, 4, 'booze-broads-and-bullets', 28, 52),
(68, 7, 'Hell and back', 'Dark horse books', NULL, 'SinCity1_16032008_163359.jpg', 200, 2, 'hell-and-back', 28, 52),
(69, NULL, 'NonNonBâ', 'Cornélius', '2-915492-25-5', 'Nonnonba_09102006.jpg', 420, 3, 'nonnonba', 29, 53),
(70, NULL, 'Le Gourmet Solitaire', 'Casterman', '2-203-37334-2', 'GourmetSolitaireLe.jpg', 198, 4, 'le-gourmet-solitaire', 30, 55),
(71, 2, 'Paul a un travail d''été', 'Les éditions de la Pastèque', '2-922585-08-5', 'paul02.jpg', 152, 6, 'paul-a-un-travail-d-ete', 31, 56),
(72, 3, 'Paul en appartement', 'Les éditions de la Pastèque', '2-922585-22-0', 'Paul3_23062004.jpg', 104, 7, 'paul-en-appartement', 31, 56),
(73, 4, 'Paul dans le métro', 'Les éditions de la Pastèque', '2-922585-27-1', 'Paul4_24042005_46320.jpg', 91, 8, 'paul-dans-le-metro', 31, 56),
(74, 1, 'Paul à la campagne', 'Les éditions de la pastèque', '978-2-922585-01-8', 'Paul1a_24022008_153143.jpg', 48, 3, 'paul-a-la-campagne', 31, 56),
(75, 1, 'Celui qui parle aux fantômes', 'Soleil Productions', '2-84565-412-X', 'SagahNah01_17122002.jpg', 44, 1, 'celui-qui-parle-aux-fantomes', 32, 57),
(76, 2, 'La confrérie des Tueurs de Monstres', 'Soleil Productions', '2-84565-783-8', 'sagahnah02couv.jpg', 46, 2, 'la-confrerie-des-tueurs-de-monstres', 32, 57),
(77, NULL, 'Le moral des troupes', 'Mécanique Générale', '2-922827-14-3', 'MoralDesTroupesLe_24042005.jpg', 158, 4, 'le-moral-des-troupes', 33, 58),
(78, NULL, 'Réédition très très augmentée', 'Les 400 Coups', '2-922827-27-5', 'QuelquesPeluresb_24122006.jpg', 126, 5, 'reedition-tres-tres-augmentee', 34, 58),
(79, NULL, 'Résine de synthèse', 'Mécanique Générale', '2-922827-03-8', 'ResineDeSynthese_24042005.jpg', 90, 2, 'resine-de-synthese', 35, 58),
(81, NULL, 'Guide de la survie en Entreprise', 'Audie', '2-85815-434-1', 'GuideDeLaSurvieEnEntreprise_13052005.jpg', 45, 2, 'guide-de-la-survie-en-entreprise', 36, 59),
(82, 1, 'Sigmund Freud - Le temps de chien', 'Dargaud', '2-205-05291-8', 'UneAventureRocambolesqueDe01.jpg', 46, 3, 'sigmund-freud-le-temps-de-chien', 37, 59),
(83, 1, 'Les cosmonautes du futur', 'Dargaud', '2-205-04913-5', 'cosmonautesdufutur1.jpg', 46, 2, 'les-cosmonautes-du-futur', 38, 59),
(84, 2, 'Le retour', 'Dargaud', '2-205-05078-8', 'cosmonautesdufutur2.jpg', 46, 3, 'le-retour', 38, 59),
(85, 3, 'Résurrection', 'Dargaud', '2-205-05293-4', 'cosmonautesdufutur03_08012004.jpg', 46, 4, 'resurrection', 38, 59),
(88, 1, 'Total souk pour Nic Oumouk', 'Dargaud', '2-205-05686-7', 'nicoumouk01_45629.jpg', 46, 5, 'total-souk-pour-nic-oumouk', 39, 59),
(89, 1, 'La vraie vie', 'Dargaud', '2-205-05819-3', 'RetourALaTerreLe1b_13082005.jpg', 46, 6, 'la-vraie-vie', 40, 59),
(90, 4, 'Le déluge', 'Dargaud', '2-205-05814-2', 'RetourALaTerreLe4_31082006.jpg', 46, 7, 'le-deluge', 40, 59),
(91, 1, 'Le combat ordinaire', 'Dargaud', '2-205-05425-2', 'combatordinaire01.jpg', 50, 2, 'le-combat-ordinaire', 41, 59),
(92, 2, 'Les quantités négligeables', 'Dargaud', '2-205-05589-5', 'combatordinaire02.jpg', 60, 4, 'les-quantites-negligeables', 41, 59),
(93, 3, 'Ce qui est précieux', 'Dargaud', '2-205-05791-X', 'CombatOrdinaireLe03.jpg', 60, 5, 'ce-qui-est-precieux', 41, 59),
(94, 4, 'Planter des clous', 'Dargaud', '978-2-205-06140-6', 'combatordinaire04_72375.jpg', 60, 6, 'planter-des-clous', 41, 59),
(95, 7, 'La java bleue', 'L''Association', '2-84414-180-3', 'Pascinhs_29112005.jpg', 74, 2, 'la-java-bleue', 42, 64),
(96, NULL, 'La fille du professeur', 'Dupuis', '2-8001-3454-2', 'filleduprofesseura_15102003.jpg', 60, 4, 'la-fille-du-professeur', 43, 65),
(97, 1, 'La Bar-Mitsva', 'Dargaud', '2-205-05820-7', 'chatdurabin01libe.jpg', 46, 3, 'la-bar-mitsva', 44, 64),
(98, 2, 'Le Malka des Lions', 'Dargaud', '2-205-05369-8', 'chatdurabin02_07112002.jpg', 46, 2, 'le-malka-des-lions', 44, 64),
(99, 3, 'L''exode', 'Dargaud', '2-205-05497-X', 'chatdurabbin03.JPG', 46, 2, 'l-exode', 44, 64),
(100, 4, 'Le Paradis Terrestre', 'Dargaud', '2-205-05725-1', 'chatdurabbin04couv.JPG', 48, 5, 'le-paradis-terrestre', 44, 64),
(101, 5, 'Jérusalem d''Afrique', 'Dargaud', '2-205-05868-1', 'ChatDuRabbinLe05.jpg', 80, 6, 'jerusalem-d-afrique', 44, 64),
(102, 1, 'Chez Francisque', 'Audie', '2-85815-497-X', 'chezfrancisque01_58611.jpg', 48, 7, 'chez-francisque', 45, 59),
(103, 2, 'Les nuits les plus blanches', 'Les Humanoïdes Associés', '2-7316-0986-9', 'monsieurjean02.jpg', 45, 1, 'les-nuits-les-plus-blanches', 46, 69),
(104, 3, 'La fuite des cerveaux', 'Dargaud', '2-205-05867-3', 'Supermurgeman3_07102006.jpg', 48, 2, 'la-fuite-des-cerveaux', 47, 70),
(105, 12, 'La vie comme elle vient', 'Dargaud', '2-205-05385-X', 'FormidablesAventuresDeLapinotLes8_03072004.jpg', 44, 3, 'la-vie-comme-elle-vient', 48, 61),
(106, 9, 'Vacances de printemps', 'Dargaud', '2-205-04669-1', 'lapinot05.jpg', 46, 2, 'vacances-de-printemps', 48, 61),
(107, 5, 'Pichenettes', 'Dargaud', '978-2-205-06000-3', 'LapinotLesFormidablesAventuresDe2a_22012007.jpg', 46, 1, 'pichenettes', 48, 61),
(108, 1, 'La Vierge du bordel', 'Dargaud', '2-205-05811-8', 'misspastouche01couv.JPG', 46, 5, 'la-vierge-du-bordel', 49, 74),
(109, 2, 'Du sang sur les mains', 'Dargaud', '978-2205-05902-1', 'misspastouche02.JPG', 46, 3, 'du-sang-sur-les-mains', 49, 74),
(110, 1, 'Nathalie', 'Dargaud', '978-2-205-05798-0', 'Gus01_60211.jpg', 78, 4, 'nathalie', 50, 75),
(111, 1, 'Londres', 'Vents d''Ouest', '2-86967-115-5', 'PeterPan01.jpg', 48, 5, 'londres', 51, 77),
(112, 2, 'Opikanoba', 'Vents d''Ouest', '2-86967-191-1', 'PeterPan02.jpg', 58, 6, 'opikanoba', 51, 77),
(113, 4, 'Mains rouges', 'Vents d''Ouest', '2-86967-520-8', 'PeterPan04.jpg', 56, 7, 'mains-rouges', 51, 77),
(114, 5, 'Crochet', 'Vents d''Ouest', '2-86967-849-5', 'PeterPan05.jpg', 50, 4, 'crochet', 51, 77),
(115, 6, 'Destins', 'Vents d''Ouest', '2-7493-0127-0', 'PeterPan06.jpg', 46, 3, 'destins', 51, 77),
(116, 3, 'Tempête', 'Vents d''Ouest', '2-86967-292-6', 'PeterPan03.jpg', 57, 7, 'tempete', 51, 77),
(117, 1, 'A la recherche de peter pan', 'Le lombard', '2-8036-590-8', 'ALaRechercheDePeterPan1c_11022008_172842.jpg', 52, 5, 'a-la-recherche-de-peter-pan', 52, 78),
(118, 2, 'A la recherche de peter pan', 'Le Lombard', '2-8036-591-9', 'ALaRechercheDePeterPan2c_11022008_172617.jpg', 67, 4, 'a-la-recherche-de-peter-pan', 52, 78),
(119, 3, 'Révolution, révolution...', 'Glénat', '2-7234-1516-3', 'sambrecouv03.JPG', 50, 2, 'revolution-revolution', 53, 79),
(120, 5, 'Maudit soit le fruit de ses entrailles...', 'Glénat', '2-7234-3548-2', 'sambre05.jpg', 44, 5, 'maudit-soit-le-fruit-de-ses-entrailles', 53, 79),
(121, 1, 'Plus ne m''est rien...', 'Glénat', '2-7234-0641-5', 'sambrecouv01.JPG', 47, 1, 'plus-ne-m-est-rien', 53, 79),
(122, 2, 'Je sais que tu viendras...', 'Glénat', '2-7234-1139-7', 'sambrecouv02.JPG', 46, 1, 'je-sais-que-tu-viendras', 53, 79),
(123, 4, 'Faut-il que nous mourions ensemble...', 'Glénat', '2-7234-2000-0', 'sambrecouv04.JPG', 53, 4, 'faut-il-que-nous-mourions-ensemble', 53, 79),
(124, 1, 'Hugo & Iris, Chapitre 1 - Printemps 1830', 'Futuropolis', '978-2-7548-0057-0', 'guerredessambre01.jpg', 54, 2, 'hugo-iris-chapitre-1-printemps-1830', 54, 81),
(125, 4, 'L''oeuf des ténébres', 'Dargaud', '2-205-03460-X', 'QuetedelOiseauduTempsLa04.jpg', 62, 3, 'l-oeuf-des-tenebres', 55, 77),
(126, 5, 'L''ami Javin', 'Dargaud', '2-205-04394-3', 'QuetedelOiseauduTempsLa05.jpg', 62, 4, 'l-ami-javin', 55, 84),
(127, 6, 'Le grimoire des dieux', 'Dargaud', '978-2-205-05633-4', 'quetedeloiseaudutemps06.jpg', 64, 6, 'le-grimoire-des-dieux', 55, 85),
(129, 1, 'La conque de Ramor', 'Dargaud', '2-205-02406-X', 'QuetedelOiseauduTempsLa01.jpg', 46, 7, 'la-conque-de-ramor', 55, 77),
(130, 2, 'Le temple de l''oubli', 'Dargaud', '2-205-02576-7', 'QuetedelOiseauduTempsLa02.jpg', 47, 8, 'le-temple-de-l-oubli', 55, 77),
(131, 3, 'Le Rige', 'Dargaud', '2-205-02952-5', 'QuetedelOiseauduTempsLa03.jpg', 58, 3, 'le-rige', 55, 77),
(132, 2, 'Le grand trou', 'Les Humanoïdes Associés', '2-7316-6340-5', 'koma02.jpg', 46, 1, 'le-grand-trou', 56, 89),
(133, 3, 'Comme dans les westerns', 'Les Humanoïdes Associés', '2-7316-1648-2', 'Koma3_08032005.jpg', 46, 2, 'comme-dans-les-westerns', 56, 89),
(134, 1, 'La voix des cheminées', 'Les Humanoïdes Associés', '2-7316-6318-9', 'koma01_07102003.jpg', 46, 4, 'la-voix-des-cheminees', 56, 89),
(135, 4, 'L''Hôtel', 'Les Humanoïdes Associés', '2-7316-1792-6', 'Koma4_23052006.jpg', 46, 5, 'l-hotel', 56, 89),
(136, 5, 'Le duel', 'Les Humanoïdes Associés', '978-2-7316-1944-7', 'koma05.jpg', 46, 2, 'le-duel', 56, 89),
(137, 1, 'Volume 1', 'Atrabile', '2-940329-03-6', 'Lupuscouv01.jpg', 92, 2, 'volume-1', 57, 89),
(138, 2, 'Volume 2', 'Atrabile', '2-940329-10-9', 'lupus02_21012004.jpg', 92, 3, 'volume-2', 57, 89),
(139, 3, 'Volume 3', 'Atrabile', '2-940329-18-4', 'lupus03couv.jpg', 92, 2, 'volume-3', 57, 89),
(140, 4, 'Volume 4', 'Atrabile', '2-940329-23-0', 'lupus04.jpg', 108, 3, 'volume-4', 57, 89),
(144, 4, 'Le mystère de l''île étrange', 'Delcourt', '2-84055-335-X', 'DeCapeEtDeCrocs4a_13032006.jpg', 46, 4, 'le-mystere-de-l-ile-etrange', 58, 92),
(145, 5, 'Jean sans lune', 'Delcourt', '2-84055-578-6', 'DeCapeEtDeCrocs5a_13032006.jpg', 46, 5, 'jean-sans-lune', 58, 92),
(148, 8, 'Le maître d''armes', 'Delcourt', '978-2-7560-0318-4', 'decapeetdecrocs08_68195.jpg', 46, 6, 'le-maitre-d-armes', 58, 92),
(151, NULL, 'Les petits ruisseaux', 'Futuropolis', '2-7548-0016-6', 'PetitsRuisseauxLes_06052006.jpg', 92, 7, 'les-petits-ruisseaux', 61, 25),
(155, NULL, 'Intégrale', 'Delcourt', '2-84055-263-9', 'VPourVendettacintegrale.jpg', 272, 2, 'integrale', 63, 103),
(160, 2, 'Tome 2', 'Dupuis', '2-8001-3540-9', 'photographele02_38982.jpg', 76, 4, 'tome-2', 65, 65),
(161, 3, 'Tome 3', 'Dupuis', '2-8001-3544-1', 'photographele03_53163.jpg', 96, 5, 'tome-3', 65, 65),
(162, NULL, 'Notes pour une histoire de guerre', 'Actes Sud', '2-7427-5352-4', 'notespourunehistoiredeguerre.JPG', 96, 6, 'notes-pour-une-histoire-de-guerre', 66, 107),
(163, 1, 'Riyad-sur-Seine', 'Gallimard', '978-2-07-057907-5', 'RG01.jpg', 104, 2, 'riyad-sur-seine', 67, 89),
(164, 2, 'Bangkok-Belleville', 'Gallimard', '978-2-07-061527-8', 'Rg2_18032008_201939.jpg', 104, 4, 'bangkok-belleville', 67, 89),
(165, NULL, 'Lucille', 'Futuropolis', '2-7548-0051-4', 'Lucille_31012006.jpg', 544, 3, 'lucille', 68, 109),
(166, NULL, 'Le réducteur de vitesse', 'Dupuis', '2-8001-2801-1', 'ReducteurDeVitesseLeb_14082007_174306.jpg', 76, 2, 'le-reducteur-de-vitesse', 69, 75),
(167, 1, 'Le roi de Paris', 'Audie', '2-85815-263-2', 'blotch01.jpg', 45, 2, 'le-roi-de-paris', 70, 110),
(168, 2, 'Face à son destin', 'Audie', '2-85815-286-1', 'blotch02couv.jpg', 51, 5, 'face-a-son-destin', 70, 110),
(169, NULL, 'Péplum', 'Cornélius', '2-909990-33-8', 'Pepluma_13062004.jpg', 112, 6, 'peplum', 71, 110),
(170, 26, 'Le Royaume sous le Sable', 'Le Lombard', '2-8036-1665-3', 'thorgal26.jpg', 46, 7, 'le-royaume-sous-le-sable', 72, 112),
(171, 27, 'Le barbare', 'Le Lombard', '2-80361-775-7', 'thorgal27.jpg', 46, 1, 'le-barbare', 72, 112),
(172, 28, 'Kriss de Valnor', 'Le Lombard', '2-80362-003-0', 'thorgal28.jpg', 46, 2, 'kriss-de-valnor', 72, 112),
(173, 29, 'Le sacrifice', 'Le Lombard', '2803621983', 'Thorgal29_24112006.jpg', 46, 3, 'le-sacrifice', 72, 112),
(174, 30, 'Moi, Jolan', 'Le Lombard', '978-2-80362-265-8', 'thorgal30.jpg', 46, 2, 'moi-jolan', 72, 112),
(175, 1, 'La magicienne trahie', 'Lombard', '2-8036-0358-6', 'thorgal01a.jpg', 46, 1, 'la-magicienne-trahie', 72, 112),
(176, 2, 'L''île des mers gelées', 'Lombard', '2-8036-0359-4', 'Thorgal2b_30012005.jpg', 46, 5, 'l-ile-des-mers-gelees', 72, 112),
(177, 3, 'Les trois vieillards du pays d''Aran', 'Le Lombard', '2-8036-0001-3', 'Thorgal3a_10022005.jpg', 46, 3, 'les-trois-vieillards-du-pays-d-aran', 72, 112),
(178, 4, 'La galère noire', 'Le Lombard', '2-8036-0026-9', 'Thorgal4b_24082005.jpg', 46, 4, 'la-galere-noire', 72, 112),
(179, 5, 'Au-delà des ombres', 'Le Lombard', '2-8036-0407-8', 'Thorgal5a_12062004.jpg', 46, 5, 'au-dela-des-ombres', 72, 112),
(180, 6, 'La chute de Brek Zarith', 'Le Lombard', '2-8036-0451-5', 'Thorgal06a.jpg', 46, 6, 'la-chute-de-brek-zarith', 72, 112),
(181, 7, 'L''enfant des étoiles', 'Le Lombard', '2-8036-0460-4', 'Thorgal07a.jpg', 46, 7, 'l-enfant-des-etoiles', 72, 112),
(182, 8, 'Alinoë', 'Le Lombard', '2-8036-0482-5', 'Thorgal8b_24082005.jpg', 46, 4, 'alinoe', 72, 112),
(183, 9, 'Les archers', 'Le Lombard', '2-80361-423-5', 'Thorgal09a.jpg', 46, 3, 'les-archers', 72, 112),
(184, 10, 'Le pays Qâ', 'Le Lombard', '2-8036-0549-X', 'Thorgal10a_10022005.jpg', 46, 7, 'le-pays-qa', 72, 112),
(185, 11, 'Les yeux de tanatloc', 'Le Lombard', '2-8036-0576-7', 'Thorgal11a_23022008_094737.jpg', 46, 5, 'les-yeux-de-tanatloc', 72, 112),
(186, 12, 'La cité du dieu perdu', 'Lombard', '2-8036-0639-9', 'Thorgal12a.jpg', 46, 4, 'la-cite-du-dieu-perdu', 72, 112),
(188, 14, 'Aaricia', 'Le Lombard', '2-8036-0745-X', 'Thorgal14a_10022005.jpg', 46, 2, 'aaricia', 72, 112),
(189, 15, 'Le maître des montagnes', 'Le Lombard', '2-8036-0754-9', 'Thorgal15a_10022005.jpg', 46, 5, 'le-maitre-des-montagnes', 72, 112),
(190, 16, 'Louve', 'Le Lombard', '2-8036-0845-6', 'Thorgal16a_10022005.jpg', 46, 1, 'louve', 72, 112),
(191, 17, 'La gardienne des clés', 'Le Lombard', '2-8036-0932-0', 'Thorgal17a_10022005.jpg', 46, 1, 'la-gardienne-des-cles', 72, 112),
(192, 18, 'L''épée-Soleil', 'Le Lombard', '2-8036-0988-6', 'Thorgal18a_10022005.jpg', 46, 4, 'l-epee-soleil', 72, 112),
(193, 19, 'La forteresse invisible', 'Le Lombard', '2-8036-1052-3', 'Thorgal19a_23022008_103421.jpg', 46, 2, 'la-forteresse-invisible', 72, 112),
(194, 21, 'La couronne d''ogotaï', 'Le Lombard', '2-8036-1161-9', 'Thorgal21a_23022008_104414.jpg', 46, 3, 'la-couronne-d-ogotai', 72, 112),
(195, 22, 'Géants', 'Le Lombard', '2-8036-1220-8', 'Thorgal22a_23022008_104922.jpg', 46, 4, 'geants', 72, 112),
(196, 23, 'La cage', 'Le Lombard', '2-8036-1275-5', 'thorgal23.jpg', 46, 6, 'la-cage', 72, 112),
(197, 24, 'Arachnéa', 'Le Lombard', '2-8036-1362-X', 'thorgal24.jpg', 46, 7, 'arachnea', 72, 112),
(198, 25, 'Le Mal bleu', 'Le Lombard', '2-8036-1414-6', 'thorgal25.jpg', 46, 8, 'le-mal-bleu', 72, 112),
(199, 13, 'Entre terre et lumière', 'Le Lombard', '2-8036-0713-1', 'Thorgal13a_10022005.jpg', 46, 3, 'entre-terre-et-lumiere', 72, 112),
(200, 1, 'L''ivoire du Magohamoth', 'Soleil Productions', '2-87764-257-7', 'lanfeustdetroy01fc_35653.jpg', 44, 1, 'l-ivoire-du-magohamoth', 73, 116),
(201, 2, 'Thanos l''incongru', 'Soleil Productions', '2-87764-306-9', 'lanfeustdetroy02ac_29435.jpg', 46, 2, 'thanos-l-incongru', 73, 116),
(202, 3, 'Castel Or-Azur', 'Soleil Productions', '2-87764-394-8', 'lanfeustdetroy03ac_29436.jpg', 52, 4, 'castel-or-azur', 73, 116),
(203, 4, 'Le paladin d''Eckmül', 'Soleil Productions', '2-87764-566-5', 'lanfeustdetroy04ac_29437.jpg', 45, 5, 'le-paladin-d-eckmuel', 73, 116),
(204, 5, 'Le frisson de l''haruspice', 'Soleil Productions', '2-87764-646-7', 'lanfeustdetroy05cof.jpg', 52, 2, 'le-frisson-de-l-haruspice', 73, 116),
(205, 6, 'Cixi impératrice', 'Soleil Productions', '2-87764-795-1', 'lanfeustdetroy06cof.jpg', 46, 2, 'cixi-imperatrice', 73, 116),
(206, 7, 'Les pétaures se cachent pour mourir', 'Soleil Productions', '2-87764-923-7', 'lanfeustdetroy07cof.jpg', 52, 3, 'les-petaures-se-cachent-pour-mourir', 73, 116),
(207, 8, 'La bête fabuleuse', 'Soleil Productions', '2-84565-110-4', 'lanfeustdetroy08cof.jpg', 58, 2, 'la-bete-fabuleuse', 73, 116),
(208, 1, 'Un, deux... Troy', 'Soleil Productions', '2-84946-125-3', 'LanfeustDesEtoiles01solo.jpg', 46, 3, 'un-deux-troy', 74, 116),
(209, 2, 'Les tours de Meirrion', 'Soleil Productions', '2-84565-405-7', 'LanfeustDesEtoiles02.jpg', 46, 4, 'les-tours-de-meirrion', 74, 116),
(210, 3, 'Les sables d''Abraxar', 'Soleil Productions', '2-84565-683-1', 'lanfeustdesetoilescouv03.jpg', 47, 5, 'les-sables-d-abraxar', 74, 116),
(211, 4, 'Les buveurs de mondes', 'Soleil Productions', '2-84565-900-8', 'lanfeustdestoilesco04.jpg', 46, 6, 'les-buveurs-de-mondes', 74, 116),
(212, 5, 'La chevauchée des bactéries', 'Soleil Productions', '2-84946-318-3', 'lanfeustdesetoiles05.jpg', 48, 7, 'la-chevauchee-des-bacteries', 74, 116),
(213, 6, 'Le râle du flibustier', 'Soleil Productions', '2-84946-641-7', 'LanfeustDesEtoiles06.jpg', 51, 2, 'le-rale-du-flibustier', 74, 116),
(214, 7, 'Le secret des Dolphantes', 'Soleil Productions', '978-2-302-00031-5', 'lanfeustdesetoiles07.jpg', 47, 4, 'le-secret-des-dolphantes', 74, 116),
(215, 2, 'Les projets', 'Dargaud', '2-205-05732-4', 'RetourALaTerreLe2a_21012005.jpg', 45, 5, 'les-projets', 40, 59),
(216, 3, 'Le vaste monde', 'Dargaud', '2-205-05625-5', 'RetourALaTerreLe3_11012005.jpg', 46, 6, 'le-vaste-monde', 40, 59),
(217, 1, 'Les premiers mots', 'Dupuis', '2-8001-0781-2', 'bidouilleetviolette01.jpg', 41, 2, 'les-premiers-mots', 75, 117),
(218, 2, 'Les jours sombres', 'Dupuis', '2-8001-0879-7', 'bidouilletviolette02.jpg', 47, 4, 'les-jours-sombres', 75, 117),
(219, 3, 'La Reine des glaces', 'Dupuis', '2-8001-1011-2', 'bidouilleetviolette03.jpg', 48, 3, 'la-reine-des-glaces', 75, 117),
(220, 4, 'La ville de tous les jours', 'Dupuis', '2-8001-1247-6', 'bidouille04.jpg', 44, 2, 'la-ville-de-tous-les-jours', 75, 117),
(221, 1, 'Les Canons du 18 mars', 'Casterman', '2-203-39927-9', 'cridupeuplecouv01_6697.jpg', 76, 2, 'les-canons-du-18-mars', 76, 119),
(222, 3, 'Les heures sanglantes', 'Casterman', '2-203-39930-9', 'cridupeuplecouv03_28933.jpg', 74, 5, 'les-heures-sanglantes', 76, 119),
(223, 2, 'L''espoir assassiné', 'Casterman', '2-203-39929-5', 'cridupeuplecouv02_22778.jpg', 84, 6, 'l-espoir-assassine', 76, 119),
(224, 4, 'Le testament des ruines', 'Casterman', '2-203-39931-7', 'cridupeuplecouv04_39428.jpg', 74, 7, 'le-testament-des-ruines', 76, 119),
(225, NULL, 'Guerre éternelle', 'Dupuis', '2-8001-2640-X', 'guerreeternelle_int.jpg', 165, 1, 'guerre-eternelle', 77, 121),
(226, 14, 'La machination Voronov', 'Blake et Mortimer', '2-87097-052-8', 'blakeetmortimereditionbmcouv14.JPG', 62, 2, 'la-machination-voronov', 78, 123),
(227, NULL, 'Le voyage en Italie', 'Dupuis', '2-8001-3166-7', 'voyageenitalieint.jpg', 96, 3, 'le-voyage-en-italie', 79, 78),
(228, NULL, 'Zélie Nord - Sud', 'Le Lombard', '978-2-8036-2400-3', 'ZelieNordSuda_03062008_200452.jpg', 44, 2, 'zelie-nord-sud', 80, 78),
(229, 1, 'Tome 1', 'Dupuis', '2-8001-2870-4', 'sursiscouv01b_30562.jpg', 52, 1, 'tome-1', 81, 126),
(230, 2, 'Tome 2', 'Dupuis', '2-8001-2598-5', 'sursiscouv02a_30561.jpg', 54, 5, 'tome-2', 81, 126),
(231, NULL, 'Intégrale', 'Glénat', '2-7234-4042-7', 'gilsaintandreint_bel.jpg', 135, 3, 'integrale', 82, 128),
(232, NULL, 'Le cahier bleu', 'Casterman', '2-203-39103-0', 'cahierbleu01a.jpg', 68, 4, 'le-cahier-bleu', 83, 123),
(233, NULL, 'Un peu de fumée bleue', 'Dupuis', '2-8001-2973-5', 'unpeudefumeebleucouv.jpg', 76, 5, 'un-peu-de-fumee-bleue', 84, 131),
(234, NULL, 'Le long voyage de Léna', 'Dargaud', '2-205-05743-X', 'LongVoyageDeLenaLe_04092006.jpg', 54, 6, 'le-long-voyage-de-lena', 85, 123),
(235, NULL, 'Après la pluie', 'Casterman', '2-203-38906-0', 'apreslapluie.jpg', 52, 7, 'apres-la-pluie', 86, 123),
(236, 1, 'Le vol du corbeau - 1', 'Dupuis', '2-8001-3141-1', 'volducorbeau01.JPG', 54, 4, 'le-vol-du-corbeau-1', 87, 126),
(237, 2, 'Le vol du corbeau - 2', 'Dupuis', '2-8001-3376-7', 'VolDuCorbeauLe02.jpg', 54, 3, 'le-vol-du-corbeau-2', 87, 126),
(238, NULL, 'Pilules Bleues', 'Atrabile', '2-9700165-6-7', 'pilulesbleuesco.jpg', 190, 7, 'pilules-bleues', 88, 89),
(239, 1, 'Persepolis 1', 'L''Association', '2-84414-058-0', 'persepolis01.jpg', 69, 5, 'persepolis-1', 89, 133),
(240, 2, 'Persepolis 2', 'L''Association', '2-84414-079-3', 'persepolis02.jpg', 100, 4, 'persepolis-2', 89, 133),
(241, 3, 'Persepolis 3', 'L''Association', '2-84414-104-8', 'Persepolis03_08092002.jpg', 92, 2, 'persepolis-3', 89, 133),
(242, 4, 'Persepolis 4', 'L''Association', '2-84414-137-4', 'persepolis04_19092003.jpg', 100, 5, 'persepolis-4', 89, 133),
(243, NULL, 'Poulet aux prunes', 'L''Association', '2-84414-159-5', 'PouletAuxPrunes_13102004.jpg', NULL, 1, 'poulet-aux-prunes', 90, 133),
(244, 1, 'Premier Tome', 'Les Humanoïdes Associés', '2-7316-1312-2', 'bibendumceleste01a.jpg', 60, 1, 'premier-tome', 91, 134),
(245, 2, 'Deuxième tome', 'Les Humanoïdes Associés', '2-7316-1367-X', 'BibendumCelesteLe02EO.jpg', 60, 4, 'deuxieme-tome', 91, 134),
(246, 3, 'Troisième tome', 'Les Humanoïdes Associés', '2-7316-1451-X', 'BibendumCelesteLe03EO.jpg', 67, 2, 'troisieme-tome', 91, 134),
(247, NULL, 'Foligatto', 'Les Humanoïdes Associés', '2-7316-1334-3', 'Foligatto1998.jpg', 60, 3, 'foligatto', 92, 134),
(248, 1, 'Transports amoureux', 'Dupuis', '2-8001-3625-1', 'Salvatore01.jpg', 46, 4, 'transports-amoureux', 93, 134),
(249, 2, 'Le grand départ', 'Dupuis', '2-8001-3834-3', 'salvatore02.jpg', 52, 6, 'le-grand-depart', 93, 134),
(250, 1, 'Léon la came', 'Casterman', '2-203-33609-9', 'Leonlacame01a_06112003.jpg', 120, 7, 'leon-la-came', 94, 134),
(251, 2, 'Laid pauvre et malade', 'Casterman', '2-203-35914-5', 'leonlacame02.jpg', 115, 8, 'laid-pauvre-et-malade', 94, 134),
(252, 3, 'Priez pour nous', 'Casterman', '2-203-35916-1', 'leonlacame03.jpg', 72, 3, 'priez-pour-nous', 94, 134),
(253, 1, 'L''Anguille', 'Glénat', '2-7234-1392-6', 'pontdanslavase01.jpg', 46, 1, 'l-anguille', 95, 138),
(254, 2, 'Orlandus', 'Glénat', '2-7234-1732-8', 'pontdanslavase02.jpg', 46, 2, 'orlandus', 95, 138),
(255, 3, 'Malocchio', 'Glénat', '2-7234-2326-3', 'pontdanslavase03.jpg', 46, 4, 'malocchio', 95, 138),
(256, 4, 'Barthelemy', 'Glénat', '2-7234-3174-6', 'pontdanslavase04.jpg', 46, 5, 'barthelemy', 95, 138),
(257, NULL, 'Pourquoi j''ai tué Pierre', 'Delcourt', '2-7560-0380-8', 'PourquoiJaiTuePierre_14092006.jpg', 112, 2, 'pourquoi-j-ai-tue-pierre', 96, 143),
(258, NULL, 'Intégrale', 'Delcourt', '2-84055-044-X', 'legendescontreesoublieesint.jpg', NULL, 2, 'integrale', 97, 146),
(259, 1, 'La planète', 'Dargaud', '2-205-04902-X', 'betelgeuse01.jpg', 46, 3, 'la-planete', 98, 147),
(261, 3, 'L''expédition', 'Dargaud', '2-205-05231-4', 'betelgeuse03.jpg', 46, 2, 'l-expedition', 98, 147),
(262, 4, 'Les cavernes', 'Dargaud', '2-205-05475-9', 'betelgeusecou04.jpg', 46, 3, 'les-cavernes', 98, 147),
(263, 5, 'L''autre', 'Dargaud', '2-205-05636-0', 'betelgeuse05.jpg', 46, 4, 'l-autre', 98, 147),
(264, 1, 'Episode 1', 'Dargaud', '978-2205-05889-5', 'Antares01.jpg', 55, 5, 'episode-1', 99, 147),
(265, 1, 'Apparitions', 'Dargaud', '2-205-05197-0', 'kenya01.jpg', 46, 6, 'apparitions', 100, 147),
(266, 2, 'Rencontres', 'Dargaud', '2-205-05335-3', 'kenyaco02.jpg', 46, 12, 'rencontres', 100, 147),
(267, 3, 'Aberrations', 'Dargaud', '2-205-05499-6', 'kenya03.jpg', 46, 2, 'aberrations', 100, 147),
(268, 4, 'Interventions', 'Dargaud', '2-205-05712-X', 'Kenya04.jpg', 46, 4, 'interventions', 100, 147),
(269, 5, 'Illusions', 'Dargaud', '978-2-205-06054-6', 'kenya05_74803.jpg', 46, 5, 'illusions', 100, 147),
(271, 1, 'tome 1', 'Soleil Productions', '2-87764-764-1', 'petitpolio1_26112002.JPG', 50, 6, 'tome-1', 102, 151),
(272, 2, 'tome 2', 'Soleil Productions', '2-87764-916-4', 'petitpolio2_26112002.JPG', 52, 2, 'tome-2', 102, 151),
(273, 3, 'Mémé d''Arménie', 'Soleil Productions', '2-84565-204-6', 'petitpolio3_19122002.JPG', 49, 4, 'meme-d-armenie', 102, 151),
(274, 4, 'Les années ventoline', 'Futuropolis', '978-2-7548-0026-6', 'PetitPolio3_11112007_125910.jpg', 59, 3, 'les-annees-ventoline', 102, 151),
(275, 1, 'Le bar du vieux français 1', 'Dupuis', '2-8001-1910-1', 'barduvieuxfrancaiscouv01.jpg', 54, 2, 'le-bar-du-vieux-francais-1', 103, 152),
(277, NULL, 'La belette', 'Casterman', '2-203-33417-7', 'Comes_Belette_01.jpg', 140, 2, 'la-belette', 104, 153),
(278, NULL, 'L''arbre-coeur', 'Casterman', '2-203-33442-8', 'arbrecoeur_19012003.jpg', 84, 5, 'l-arbre-coeur', 105, 153),
(279, 2, 'Le Maître des Ténèbres', 'Casterman', '2-203-33502-5', 'ergunlerrant02a.jpg', 44, 6, 'le-maitre-des-tenebres', 106, 153),
(280, NULL, 'Dracula, Dracul, Vlad?, bah...', 'Les Humanoïdes Associés', '2-73161-105-7', 'dracula_30082002.jpg', 80, 4, 'dracula-dracul-vlad-bah', 107, 154),
(281, NULL, 'L''arrière boutique du magasin général II', 'Casterman', '2-203-34809-7', 'MagasinGeneral2hs_04112006.jpg', 151, 3, 'l-arriere-boutique-du-magasin-general-ii', 108, 96),
(282, 1, 'Marie', 'Casterman', '2-203-37011-4', 'magasingeneral01.jpg', 76, 7, 'marie', 108, 96),
(283, 2, 'Serge', 'Casterman', '2-203-37013-0', 'magasingeneral02couv.jpg', 68, 5, 'serge', 108, 96),
(284, 3, 'Les hommes', 'Casterman', '978-2-203-34810-3', 'magasingeneral03.jpg', 76, 4, 'les-hommes', 108, 96),
(285, 1, 'http://www.xxeciel.com/mémoires98', 'Les Humanoïdes Associés', '2-7316-1406-4', 'xxcielcouv01a.jpg', 59, 2, 'http-www-xxeciel-com-memoires98', 109, 79),
(286, 2, 'http://www.xxeciel.com/mémoires99', 'Les Humanoïdes Associés', '2-7316-1416-1', 'xxcielcouv02.JPG', 62, 5, 'http-www-xxeciel-com-memoires99', 109, 79),
(287, 3, 'http://www.xxeciel.com/mémoires<19>00', 'Les Humanoïdes Associés', '2-7316-1554-0', 'xxemeciel031900.jpg', 72, 1, 'http-www-xxeciel-com-memoires-19-00', 109, 79),
(288, 1, '[avant]...', 'Futuropolis', '2-7548-0005-0', 'cielaudessusdebruxelles01.jpg', 68, 1, 'avant', 110, 79),
(289, 2, '...[après]', 'Futuropolis', '978-2-75480-084-6', 'cielaudessusdebruxelles02.jpg', 94, 4, 'apres', 110, 79),
(290, 1, 'Le secret du Janissaire', 'Delcourt', '2-84055-059-8', 'DeCapeEtDeCrocs1a_13032006.jpg', 46, 2, 'le-secret-du-janissaire', 58, 92),
(291, 2, 'Pavillon noir !', 'Delcourt', '2-84055-143-8', 'DeCapeEtDeCrocs2a_13032006.jpg', 46, 3, 'pavillon-noir', 58, 92),
(292, 3, 'L''archipel du danger', 'Delcourt', '2-84055-236-1', 'DeCapeEtDeCrocs3a_13032006.jpg', 47, 4, 'l-archipel-du-danger', 58, 92),
(293, 6, 'Luna Incognita', 'Delcourt', '2-84789-112-9', 'DeCapeEtDeCrocs5a_13032006.jpg', 46, 6, 'luna-incognita', 58, 92),
(294, 7, 'Chasseurs de Chimères', 'Delcourt', '2-84789-925-1', 'decapeetdecrocs_07.jpg', 49, 7, 'chasseurs-de-chimeres', 58, 92),
(303, 1, 'Le secret des eaux', 'Delcourt', '2-84789-103-X', 'AlimleTanneur01.jpg', 46, 8, 'le-secret-des-eaux', 115, 164),
(304, 2, 'Le vent de l''exil', 'Delcourt', '2-84789-946-4', 'alimletanneur_02.jpg', 46, 3, 'le-vent-de-l-exil', 115, 164),
(305, 3, 'La terre du prophète pâle', 'Delcourt', '978-2-7560-0369-6', 'AlimLeTanneur3_27112007_232724.jpg', 54, 1, 'la-terre-du-prophete-pale', 115, 164),
(314, NULL, 'Canoë Bay', 'Daniel Maghen', '978-2-356-74009-0', 'CanoeBay_21032009_074933.jpg', 76, 2, 'canoe-bay', 111, 156),
(316, 5, 'Les révolutions', 'Dargaud', '978-2-205-06235-9', 'RetourALaTerreLe5_29112008_200007.jpg', 45, 4, 'les-revolutions', 40, 59),
(317, 1, 'Livre I : Le Chant d''Anoroer', 'Soleil Productions', '2-84946-422-8', 'Servitude1.jpg', 52, 5, 'livre-i-le-chant-d-anoroer', 113, 160),
(318, 2, 'Livre II : Drekkars', 'Soleil Productions', '978-2-302-00214-2', 'Servitude2_18122008_214301.jpg', 46, 2, 'livre-ii-drekkars', 113, 160),
(319, 5, 'Poussière d''ange', 'Albin Michel', '2-226-17542-3', 'AnitaBomba5_21112006.jpg', 48, 2, 'poussiere-d-ange', 15, 33),
(320, 2, 'Beau bandit', 'Dargaud', '978-2205-05953-3', 'Gus02_71318.jpg', 84, 3, 'beau-bandit', 50, 75),
(321, 3, 'Ernest', 'Dargaud', '978-2-205-06086-7', 'Gus3_01122008_184848.jpg', 88, 2, 'ernest', 50, 75),
(322, 6, 'Au commencement', 'Les Humanoïdes Associés', '978-2-7316-2188-4', 'koma06_79842.jpg', 46, 3, 'au-commencement', 56, 89),
(323, 8, 'Le sang des comètes', 'Soleil Productions', '978-2-30200-382-8', 'lanfeustdesetoiles08_80608.jpg', 54, 4, 'le-sang-des-cometes', 117, 116),
(324, 2, 'Episode 2', 'Dargaud', '978-2-205-06185-7', 'Antares_02_84321.jpg', 46, 5, 'episode-2', 99, 176),
(328, 2, 'Hugo & Iris, Chapitre 2 - Automne 1830', 'Futuropolis/Glénat', '978-2-7548-0108-9', 'sambrelaguerredessambre02_78011.jpg', 46, 6, 'hugo-iris-chapitre-2-automne-1830', 54, 81),
(329, 31, 'Le bouclier de Thor', 'Le Lombard', '978-2-8036-2486-7', 'thorgal31couv_80551.jpg', 46, 7, 'le-bouclier-de-thor', 72, 112),
(330, 2, 'Vincent Van Gogh - La ligne de front', 'Dargaud', '2-205-05466-X', 'UneAventureRocambolesqueDe02_34422.jpg', 46, 2, 'vincent-van-gogh-la-ligne-de-front', 37, 59),
(334, 1, 'Zoo 1', 'Dupuis', '2-8001-2132-7', 'Zoo01.jpg', 70, 4, 'zoo-1', 62, 177),
(335, 2, 'Zoo 2', 'Dupuis', '2-8001-2324-9', 'Zoo02.jpg', 62, 5, 'zoo-2', 62, 177),
(336, 3, 'Zoo 3', 'Dupuis', '978-2-8001-4004-9', 'zoo03.jpg', 72, 6, 'zoo-3', 62, 177),
(337, 1, 'Le nouveau rêve', 'Les Humanoïdes Associés', '2-7316-1425-0', 'apreslincalcouv01.jpg', 56, 2, 'le-nouveau-reve', 118, 178),
(338, 1, 'Monsieur Fruit - T1', 'Seuil', '2-0202-3701-6', 'monsieurfruit01couv.jpg', 153, 4, 'monsieur-fruit-t1', 119, 134),
(341, 2, 'Monsieur Fruit - T2', 'Seuil', '2-02-029670-5', 'MonsieurFruit02a.jpg', 149, 3, 'monsieur-fruit-t2', 119, 134),
(342, 4, 'Confessions', 'Casterman', '978-2-203-01691-0', 'magasingeneral04_79885.jpg', 66, 11, 'confessions', 108, 96),
(343, 3, 'Le prince charmant', 'Dargaud', '978-2205-06083-6', 'misspastouche03_77426.jpg', 46, 2, 'le-prince-charmant', 49, 74),
(344, 2, 'Les survivants', 'Dargaud', '2-205-04987-9', 'betelgeuse02.jpg', 46, 5, 'les-survivants', 98, 176),
(345, 1, 'La catastrophe', 'Dargaud', '2-205-04186-X', 'aldebaran01a.jpg', 48, 6, 'la-catastrophe', 120, 176),
(346, 2, 'La blonde', 'Dargaud', '2-205-04968-2', 'aldebaran02a.jpg', 46, 7, 'la-blonde', 120, 176),
(347, 3, 'La photo', 'Dargaud', '2-205-04969-0', 'MondesDaldebaranLes3b_07102007_170606.jpg', 46, 1, 'la-photo', 120, 176),
(348, 4, 'Le groupe', 'Dargaud', '2-205-04970-4', 'aldebaran04a.jpg', 46, 2, 'le-groupe', 120, 176),
(349, 5, 'La créature', 'Dargaud', '2-205-04968-2', 'MondesDaldebaranLes5c_20022008_101535.jpg', 46, 3, 'la-creature', 120, 176),
(350, 2, 'Amy', 'Delcourt', '2-84055-035-0', 'pouvoirinnocents02couv.jpg', 64, 2, 'amy', 5, 14),
(351, 5, 'Sergent Logan', 'Delcourt', '2-84055-440-2', 'pouvoirdesinnocents05couv.jpg', 62, 1, 'sergent-logan', 5, 14),
(352, 1, 'Pourquoi cette nuit est-elle différente des autres nuits ?', 'Dupuis', '2-8001-3149-7', 'olivesnoires01.jpg', 48, 5, 'pourquoi-cette-nuit-est-elle-differente-des-autres-nuits', 121, 65),
(353, 2, 'Adam Harishon', 'Dupuis', '2-8001-3220-5', 'olivesnoires02.jpg', 48, 3, 'adam-harishon', 121, 65),
(354, 3, 'Tu ne mangeras pas le chevreau dans le lait de sa mère', 'Dupuis', '2-8001-3378-3', 'olivesnoires03.jpg', 48, 4, 'tu-ne-mangeras-pas-le-chevreau-dans-le-lait-de-sa-mere', 121, 65),
(355, 1, 'Première époque (1914-1915)', 'Futuropolis', '978-2-7548-0113-3', 'matteo01_78761.jpg', 62, 5, 'premiere-epoque-1914-1915', 122, 126),
(356, NULL, 'Troubles fêtes', 'Les Humanoïdes Associés', '2-7316-0652-5', 'loiseltroublesreed.jpg', 70, 6, 'troubles-fetes', 123, 77),
(358, NULL, 'Les portes du possible', 'Casterman', '2-203-34322-2', 'portesdupossible.jpg', 46, 7, 'les-portes-du-possible', 124, 182),
(367, 1, 'La chanson', 'Delcourt', '2-84055-686-3', 'ChevalierMalheur01couv_20081023_8860.jpg', 48, 4, 'la-chanson', 126, 190),
(368, 2, 'Citadelle', 'Delcourt', '2-84055-903-X', 'ChevalierMalheur02couv_20081023_23695.jpg', 48, 3, 'citadelle', 126, 190),
(369, 3, 'Tel père tel fils', 'Delcourt', '2-84789-405-5', 'ChevalierMalheur03couv_20081023_42412.jpg', 46, 7, 'tel-pere-tel-fils', 126, 190),
(373, 4, 'Le déluge', 'Soleil Productions', '2-84565-234-8', 'universalwarone4.jpg', 48, 5, 'le-deluge', 127, 193),
(374, 5, 'Babel', 'Soleil Productions', '2-84565-406-5', 'universalwar05.jpg', 46, 4, 'babel', 127, 193),
(375, 6, 'Le patriarche', 'Soleil Productions', '2-84946-095-8', 'UniversalWarOne6_21062006.jpg', 46, 2, 'le-patriarche', 127, 193),
(376, 1, 'Le bois sauvage', 'Delcourt', '2-84055-107-1', 'VentDanslesSaulesLe01.JPG', 31, 5, 'le-bois-sauvage', 128, 194),
(377, 2, 'Auto, crapaud, blaireau', 'Delcourt', '2-84055-168-3', 'ventdanslessaulescouv02.JPG', 32, 1, 'auto-crapaud-blaireau', 128, 194),
(378, 3, 'L''échappée belle', 'Delcourt', '2-84055-252-3', 'VentDanslesSaulesLe03.JPG', 32, 1, 'l-echappee-belle', 128, 194),
(379, 4, 'Foutoir au manoir', 'Delcourt', '2-84055-580-8', 'VentDanslesSaulesLe04.JPG', 31, 4, 'foutoir-au-manoir', 128, 194),
(381, NULL, 'Animal''z', 'Casterman', '978-2-203-01966-9', 'Animalz_10032009_223059.jpg', 96, 2, 'animal-z', 112, 158),
(382, 1, 'L''empire de Monsieur Joseph', 'Glénat', '978-2-7234-5580-8', 'IlEtaitUneFoisEnFrance1_04102007_192650.jpg', 54, 3, 'l-empire-de-monsieur-joseph', 114, 128),
(383, 2, 'Le vol noir des corbeaux', 'Glénat', '978-2-7234-6183-2', 'IlEtaitUneFoisEnFrance2_02102008_110958.jpg', 56, 4, 'le-vol-noir-des-corbeaux', 114, 128),
(384, 1, 'Papillons de nuit', 'Les Humanoïdes Associés', '2-7316-1294-0', 'reseaubombyce01.jpg', 46, 6, 'papillons-de-nuit', 129, 197),
(385, 2, 'Monsieur lune', 'Les Humanoïdes Associés', '2-7316-1460-9', 'reseaubombyce02.jpg', 46, 7, 'monsieur-lune', 129, 197),
(386, 1, 'L''invitation au voyage', 'Delcourt', '2-84789-674-0', 'ventdanssables01_44911.jpg', 32, 8, 'l-invitation-au-voyage', 130, 194),
(387, 2, 'Etranges étrangers', 'Delcourt', '978-2-7560-0564-5', 'VentDansLesSablesLe2_17042007.jpg', 32, 3, 'etranges-etrangers', 130, 194),
(388, 3, 'La Tentation du Désert', 'Delcourt', '978-2-7560-1269-8', 'ventdanslessables03_84663.jpg', 32, 1, 'la-tentation-du-desert', 130, 194),
(389, 9, 'Revers de fortune', 'Delcourt', '978-2-7560-0835-6', 'Couv_96637.jpg', 47, 2, 'revers-de-fortune', 58, 92),
(390, 5, 'Montréal', 'Casterman', '978-2-203-02463-2', 'Couv_97432.jpg', 70, 4, 'montreal', 108, 96),
(391, 3, 'Episode 3', 'Dargaud', '978-2-205-06371-4', 'antaresmondesaldebaran03_103248.jpg', 46, 5, 'episode-3', 99, 176),
(392, 7, 'La voie du Rige', 'Dargaud', '978-2-205-06009-6', 'Couv_105589.jpg', 66, 2, 'la-voie-du-rige', 55, 198),
(393, 3, 'Hugo & Iris, Chapitre 3 - Hiver 1831', 'Futuropolis/Glénat', '978-2-7548-0109-6', 'Couv_98900.jpg', 56, 2, 'hugo-iris-chapitre-3-hiver-1831', 54, 81),
(394, 7, 'Le commun des mortels', 'Casterman', '978-2-203-01438-1', 'tueur07_91979.jpg', 54, 3, 'le-commun-des-mortels', 4, 12),
(395, 8, 'L''ordre naturel des choses', 'Casterman', '978-2-203-03167-8', 'Tueur8-couv_110520.jpg', 54, 2, 'l-ordre-naturel-des-choses', 4, 12),
(396, NULL, 'Les armes du Meta-Baron', 'Les humanoïdes associés', '978-2-7316-1447-3', 'ArmesDuMetabaronLes1_21092008_182642.jpg', 56, 3, 'les-armes-du-meta-baron', 131, 5),
(397, NULL, 'Les derniers corsaires', 'Les éditions de la Pastèque', '2-922585-37-9', 'DerniersCorsairesLes_04082006.jpg', 62, 4, 'les-derniers-corsaires', 132, 205),
(398, 1, 'Tome 1', 'Robert Laffont', '978-2-221-10727-0', 'BoisDesViergesLe1_12022008_230258.jpg', 54, 5, 'tome-1', 133, 207),
(399, 1, 'La Genèse', 'Soleil Productions', '2-87764-807-9', 'UniversalWarOneQuadrantSolaire.jpg', 46, 6, 'la-genese', 127, 193),
(400, NULL, 'Québec. un détroit dans le fleuve', 'Casterman', '978-2-203-01448-0', 'Quebec_19032008_144825.jpg', 64, 7, 'quebec-un-detroit-dans-le-fleuve', 59, 20),
(401, NULL, 'Le petit Prince', 'Gallimard', '978-2-07-060339-8', 'petitprincesfar_78379.jpg', 110, 2, 'le-petit-prince', 134, 64),
(402, 1, 'Grasse Carcasse', 'Dargaud', '978-2-205-06397-4', 'Couv_97655.jpg', 200, 4, 'grasse-carcasse', 135, 59),
(404, NULL, 'Pachyderme', 'Gallimard', '978-2-07-062704-2', 'pachyderme_93213.jpg', 80, 5, 'pachyderme', 136, 89),
(405, 4, 'Jusqu''à ce que la mort nous sépare', 'Dargaud', '978-2-205-06292-2', 'misspastouche04_91861.jpg', 46, 6, 'jusqu-a-ce-que-la-mort-nous-separe', 49, 211),
(406, 9, 'Le piège diabolique', 'Blake et Mortimer', '2-87097-020-X', 'BlakeEtMortimerEditionsBlakeEtMortimer9a_08072007_211054.jpg', 62, 2, 'le-piege-diabolique', 137, 212),
(408, 2, 'Second livre', 'Futuropolis', '978-2-7548-0103-4', 'Couv_106299.jpg', 76, 4, 'second-livre', 138, 209),
(409, 1, 'Le roi n''embrasse pas', 'Gallimard', '978-2-07-061819-4', 'Couv_99015.jpg', 138, 3, 'le-roi-n-embrasse-pas', 139, 64),
(414, 106, 'Révolutions', 'Delcourt', '978-2-7560-0608-6', 'donjoncrepuscule106_88442.jpg', 48, 2, 'revolutions', 140, 215),
(415, 1, 'Cœur de canard', 'Delcourt', '2-84055-197-7', 'DonjonZenith1.jpg', 46, 2, 'coeur-de-canard', 64, 61),
(416, 2, 'Le roi de la bagarre', 'Delcourt', '2-84055-249-3', 'donjonzenith02_8935.jpg', 46, 5, 'le-roi-de-la-bagarre', 64, 61),
(417, 1, 'Adèle et la bête', 'Casterman', '2-203-30501-0', 'AdeleBlancsec1e_12022008_153356.jpg', 46, 6, 'adele-et-la-bete', 141, 119),
(418, 2, 'Le démon de la tour eiffel', 'Casterman', '2-203-30502-9', 'AdeleBlancsec2c_12022008_153133.jpg', 46, 7, 'le-demon-de-la-tour-eiffel', 141, 119),
(419, 6, 'Le noyé à deux têtes', 'Casterman', '2-203-30507-X', 'Adele_BlancSec_06.jpg', 46, 1, 'le-noye-a-deux-tetes', 141, 119),
(420, 1, 'Trois ombres', 'Delcourt', '978-2-7560-0470-9', 'TroisOmbres_14092007_204959.jpg', 268, 2, 'trois-ombres', 142, 217),
(424, 4, 'March of the wooden soldiers', 'DC Comics', '1-401-20222-5', 'Fables4_07092007_214716.jpg', 223, 3, 'march-of-the-wooden-soldiers', 143, 186),
(425, 5, 'The mean seasons', 'DC Comics', '1-401-20486-4', 'Fables5_07092007_214710.jpg', 159, 2, 'the-mean-seasons', 143, 186),
(426, 6, 'Homelands', 'DC Comics', '1-401-20500-3', 'Fables6_07092007_214704.jpg', 184, 1, 'homelands', 143, 186),
(427, 7, 'Arabian nights (and days)', 'DC Comics', '1-401-21000-7', 'Fables7_07092007_214658.jpg', 137, 5, 'arabian-nights-and-days', 143, 186),
(428, 8, 'Wolves', 'DC Comics', '1-401-21001-5', 'Fables8_07092007_214652.jpg', 117, 3, 'wolves', 143, 186),
(429, 9, 'Sons of empire', 'DC Comics', '978-1-401-21316-9', 'Fables9_07092007_214647.jpg', 193, 4, 'sons-of-empire', 143, 20),
(430, 10, 'The good prince', 'DC Comics', '978-1-401-21686-3', 'FablesV010_26062008_200217.jpg', 220, 5, 'the-good-prince', 143, 186),
(431, 11, 'War and pieces', 'DC Comics', '978-1-401-21913-0', 'Couv_100441.jpg', 192, 6, 'war-and-pieces', 143, 186),
(432, 1, 'Volume 1', 'Kana', '2-87129-578-6', 'Lesommetdesdieux_07032004.jpg', 318, 7, 'volume-1', 144, 55),
(433, 2, 'Volume 2', 'Kana', '2-87129-579-4', 'sommetdesdieux02couv.jpg', 333, 4, 'volume-2', 144, 55),
(434, 3, 'Volume 3', 'Kana', '2-87129-580-8', 'SommetDesDieuxLe3_15102004.jpg', 333, 3, 'volume-3', 144, 55),
(435, 4, 'Volume 4', 'Kana', '2-87129-721-5', 'sommetdesdieux04.jpg', 306, 7, 'volume-4', 144, 55),
(436, 5, 'Volume 5', 'Kana', '2-87129-780-0', 'SommetDesDieuxLe5_17052005.jpg', 300, 5, 'volume-5', 144, 55),
(438, 2, 'Le bar du vieux français 2', 'Dupuis', '2-8001-1996-9', 'barduvieuxfrancaiscouv02.jpg', 54, 4, 'le-bar-du-vieux-francais-2', 103, 152),
(439, 1, 'Première partie', 'Futuropolis', '2-7548-0033-6', 'marieenplastique01.jpg', 54, 2, 'premiere-partie', 116, 167),
(440, 2, 'Seconde partie', 'Futuropolis', '978-2-7548-0060-0', 'MarieEnPlastiqueLa2_02062007.jpg', 62, 5, 'seconde-partie', 116, 167),
(443, 1, 'Tome 1', 'Dupuis', '2-8001-3724-X', 'BouddhaDazurLe1_04102005.jpg', 59, 1, 'tome-1', 145, 241),
(444, 2, 'Tome 2', 'Dupuis', '2-8001-3839-4', 'bouddhadazurle_02.JPG', 75, 1, 'tome-2', 145, 241),
(446, NULL, 'Un peu avant la fortune', 'Dupuis', '978-2-8001-3854-1', 'UnPeuAvantLaFortune_27012008_111203.jpg', 78, 4, 'un-peu-avant-la-fortune', 146, 67),
(447, NULL, 'Retour au collège', 'Hachette', '2-01-235861-6', 'retouraucollegecouv.jpg', 90, 2, 'retour-au-college', 147, 243),
(448, 1, '(Livre premier)', 'Futuropolis', '978-2-7548-0239-0', 'Canarrive-couv_109573.jpg', 60, 3, 'livre-premier', 148, 244),
(449, NULL, 'Page Noire', 'Futuropolis', '978-2-7548-0147-8', 'Couv_113972.jpg', 98, 4, 'page-noire', 149, 246),
(450, 4, 'Là où brûlent les regards', 'Delcourt', '978-2-7560-1264-3', 'Alim4-couv_98261.jpg', 64, 6, 'la-ou-brulent-les-regards', 115, 164),
(451, 4, 'L''Enfer, le silence', 'Dargaud', '978-2-205-06313-4', 'Couv_113281.jpg', 54, 7, 'l-enfer-le-silence', 12, 27),
(452, 2, 'Loup', 'Delcourt', '978-2-7560-1903-1', 'Couv_115974.jpg', 54, 8, 'loup', 133, 207),
(453, 6, 'Ernest Latulippe', 'Casterman', '978-2-203-02616-2', 'Couv_117401.jpg', 68, 3, 'ernest-latulippe', 108, 96),
(454, 3, 'Stigmates', 'Les Humanoïdes Associés', '978-2-7316-1723-8', 'Couv_116124.jpg', 46, 1, 'stigmates', 129, 197),
(455, 1, 'Eauxfolles', 'Delcourt', '2-84055-005-9', 'nefdesfous01_589.jpg', 46, 2, 'eauxfolles', 150, 254),
(456, 2, 'Pluvior 627', 'Delcourt', '2-84055-025-3', 'nefdesfous02_590.jpg', 46, 4, 'pluvior-627', 150, 254),
(457, 3, 'Turbulences', 'Delcourt', '2-84055-129-2', 'nefdesfous03_950.jpg', 54, 5, 'turbulences', 150, 254),
(458, 4, 'Au turf', 'Delcourt', '2-84055-456-9', 'nefdesfous04.jpg', 46, 2, 'au-turf', 150, 254),
(459, 5, 'Puzzle', 'Delcourt', '2-84055-838-6', 'NefDesFousLa05.jpg', 46, 2, 'puzzle', 150, 254),
(460, 6, 'Les Chemins énigmatiques', 'Delcourt', '978-2-7560-0187-6', 'nefdesfous06.jpg', 46, 3, 'les-chemins-enigmatiques', 150, 254),
(461, 7, 'Terminus', 'Delcourt', '978-2-7560-1069-4', 'nefdesfous07_82677.jpg', 46, 2, 'terminus', 150, 254),
(464, 3, 'Honneur et Police', 'Glénat', '978-2-7234-6873-2', 'Couv_94966.jpg', 54, 3, 'honneur-et-police', 114, 128),
(465, 4, 'Aux armes, citoyens !', 'Glénat', '978-2-7234-7716-1', 'Couv_115654.jpg', 62, 4, 'aux-armes-citoyens', 114, 128),
(466, 1, 'Home Sweet Home', 'Dargaud', '978-2-87129-959-2', 'jazzmaynard01.jpg', 46, 5, 'home-sweet-home', 151, 257),
(467, 2, 'Mélodie d''El Raval', 'Dargaud', '978-2-505-00347-2', 'JazzMaynard2_18042008_174047.jpg', 46, 6, 'melodie-d-el-raval', 151, 257),
(468, 3, 'Envers et contre tout', 'Dargaud', '978-2-505-00509-4', 'JazzMaynard3_10012009_155254.jpg', 46, 7, 'envers-et-contre-tout', 151, 257),
(469, 4, 'Sans espoir', 'Dargaud', '978-2-505-00805-7', 'Couv_106462.jpg', 46, 2, 'sans-espoir', 151, 257),
(470, 1, 'Première partie', 'Futuropolis', '2-7548-0003-4', 'MemoireDansLesPochesLa1_07062006.jpg', 86, 4, 'premiere-partie', 152, 259),
(471, 2, 'Deuxième partie', 'Futuropolis', '978-2-7548-0099-0', 'memoireanslespoches02_87937.jpg', 69, 5, 'deuxieme-partie', 152, 259),
(472, 1, 'La Géométrie du hasard', 'Quadrants', '978-2-302-00093-3', 'QuelquesPasVersLaLumiere01_71184.jpg', 46, 6, 'la-geometrie-du-hasard', 153, 122),
(473, 2, 'Le Voyage improbable', 'Quadrants', '978-2-30200-543-3', 'quelquecouv_87030.jpg', 46, 2, 'le-voyage-improbable', 153, 122),
(474, 3, 'Les Voyageurs de l''autre monde', 'Quadrants', '978-2-302-01242-4', 'Couv_114228.jpg', 46, 4, 'les-voyageurs-de-l-autre-monde', 153, 122),
(475, 1, 'La marque du diable', 'Dargaud', '2-87129-301-5', 'scorpion01.jpg', 46, 3, 'la-marque-du-diable', 154, 262),
(476, 2, 'Le secret du Pape', 'Dargaud', '2-87129-352-X', 'scorpion02.jpg', 46, 2, 'le-secret-du-pape', 154, 262),
(477, 3, 'La croix de Pierre', 'Dargaud', '2-87129-463-1', 'scorpion03couv.JPG', 46, 2, 'la-croix-de-pierre', 154, 262);
INSERT INTO `book` (`id`, `numVolume`, `titre`, `editeur`, `reference`, `couverture`, `nbPage`, `stock`, `slug`, `serie_id`, `author_id`) VALUES
(478, 4, 'Le Démon au Vatican', 'Dargaud', '2-87129-570-0', 'scorpion04.JPG', 46, 5, 'le-demon-au-vatican', 154, 262),
(479, 5, 'La vallée sacrée', 'Dargaud', '2-87129-677-4', 'scorpion05.JPG', 46, 6, 'la-vallee-sacree', 154, 262),
(480, 6, 'Le trésor du Temple', 'Dargaud', '2-87129-760-6', 'scorpion06.JPG', 46, 7, 'le-tresor-du-temple', 154, 262),
(481, 7, 'Au Nom du Père', 'Dargaud', '2-505-00018-2', 'scorpion07.jpg', 46, 1, 'au-nom-du-pere', 154, 262),
(482, 8, 'L''ombre de l''Ange', 'Dargaud', '978-2-505-00474-5', 'scorpion08_79729.jpg', 46, 2, 'l-ombre-de-l-ange', 154, 262),
(483, 9, 'Masque de la Vérité', 'Dargaud', '978-2-505-00914-6', 'Couv_113222.jpg', 46, 3, 'masque-de-la-verite', 154, 262),
(484, 1, 'La fille sous la dunette', 'Glénat', '2-7234-0132-4', 'passagersduvent01_302.jpg', 46, 2, 'la-fille-sous-la-dunette', 155, 264),
(485, 2, 'Le ponton', 'Glénat', '2-7234-0164-2', 'passagerduventcouv02eo.jpg', 46, 1, 'le-ponton', 155, 264),
(486, 3, 'Le comptoir de Juda', 'Glénat', '2-7234-0215-0', 'passagerduventcouv03eo.jpg', 46, 5, 'le-comptoir-de-juda', 155, 264),
(487, 4, 'L''heure du serpent', 'Glénat', '2-7234-0290-8', 'passagersduvent04.jpg', 46, 3, 'l-heure-du-serpent', 155, 264),
(488, 5, 'Le bois d''ébène', 'Glénat', '2-7234-0440-4', 'passagersduvent05_306.jpg', 46, 4, 'le-bois-d-ebene', 155, 264),
(489, 6, 'La Petite Fille Bois-Caïman - Livre 1', '12bis', '978-2-356-48066-8', 'PassagersDuVent_06_93413.jpg', 78, 5, 'la-petite-fille-bois-caiman-livre-1', 155, 264),
(490, 7, 'La Petite Fille Bois-Caïman - Livre 2', '12bis', '978-2-356-48112-2', 'Couv_99109.jpg', 64, 6, 'la-petite-fille-bois-caiman-livre-2', 155, 264),
(491, 2, 'Volume 2', 'Gallimard', '2-07-057588-8', 'AyaDeYopougon2_29092006.jpg', 106, 7, 'volume-2', 13, 29),
(492, 3, 'Volume 3', 'Gallimard', '978-2-07-061543-8', 'AyaDeYopougon3_09102007_180143.jpg', 126, 4, 'volume-3', 13, 29),
(493, 4, 'Volume 4', 'Gallimard', '978-2-07-061995-5', 'AyaDeYopougon_04_80396.jpg', 106, 3, 'volume-4', 13, 29),
(494, 5, 'Volume 5', 'Gallimard', '978-2-07-062803-2', 'Couv_98840.jpg', 107, 7, 'volume-5', 13, 29),
(495, 6, 'Volume 6', 'Gallimard', '978-2-07-069512-6', 'Couv_118426.jpg', 104, 5, 'volume-6', 13, 29),
(496, 2, 'L''apocalypse selon Saint Jacky', 'Dargaud', '978-2-205-06759-0', 'Couv_123954.jpg', 208, 4, 'l-apocalypse-selon-saint-jacky', 135, 59),
(497, 2, '(Livre second)', 'Futuropolis', '978-2-7548-0393-9', 'Couv_116325.jpg', 60, 2, 'livre-second', 148, 265),
(498, 7, 'Charleston', 'Casterman', '978-2-203-03219-4', 'Couv_138758.jpg', 78, 5, 'charleston', 108, 96),
(499, 2, 'Deuxième époque (1917-1918)', 'Futuropolis', '978-2-7548-0114-0', 'Matteo2-couv_115131.jpg', 71, 1, 'deuxieme-epoque-1917-1918', 122, 126),
(500, 5, 'Paul à la pêche', 'Les éditions de la Pastèque', '2-922585-39-5', 'paul5_59923.jpg', 200, 1, 'paul-a-la-peche', 31, 56),
(501, 6, 'Paul à Québec', 'Les éditions de la Pastèque', '978-2-922585-70-4', 'Couv_87049.jpg', 188, 4, 'paul-a-quebec', 31, 56),
(502, 7, 'Paul au parc', 'Les éditions de la Pastèque', '978-2-923841-05-2', 'Couv_145258.jpg', 144, 2, 'paul-au-parc', 31, 56),
(503, 3, 'Une traversée mouvementée', 'Dupuis', '978-2-8001-4085-8', 'Salvatore3_03102009_170132.jpg', 52, 3, 'une-traversee-mouvementee', 93, 134),
(504, 4, 'Retour à Brest', 'Dupuis', '978-2-8001-4849-6', 'Couv_115181.jpg', 54, 4, 'retour-a-brest', 93, 134),
(505, 6, 'La mer vue du Purgatoire...', 'Glénat', '978-2-7234-4429-3', 'Couv_126674.jpg', 64, 6, 'la-mer-vue-du-purgatoire', 53, 199),
(506, 2, 'Animal farm', 'DC Comics', '978-1-401-20077-0', 'Couv_99737.jpg', 115, 7, 'animal-farm', 143, 186),
(507, 3, 'Storybook love', 'DC Comics', '978-1-401-20256-9', 'Couv_99738.jpg', 184, 8, 'storybook-love', 143, 186),
(508, 1, 'Legends in exile', 'DC Comics', '978-1-563-89942-3', 'FablesV01_18102009_101424.jpg', 112, 3, 'legends-in-exile', 143, 184),
(512, 4, 'Épisode 4', 'Dargaud', '978-2-205-06765-1', 'Couv_138040.jpg', 46, 1, 'episode-4', 156, 266),
(513, 1, 'Anomalies quantiques - Épisode 1', 'Dargaud', '978-2-205-06524-4', 'Couv_120743.jpg', 48, 2, 'anomalies-quantiques-episode-1', 157, 266),
(514, 1, 'Episode 1', 'Dargaud', '978-2-205-06085-0', 'Couv_105592.jpg', 46, 4, 'episode-1', 158, 267),
(515, 2, 'Épisode 2', 'Dargaud', '978-2-205-06529-9', 'Couv_117129.jpg', 46, 5, 'episode-2', 158, 267),
(516, 1, 'Livre 1/2', 'Dargaud', '978-2-205-06740-8', 'Couv_126734.jpg', 54, 2, 'livre-1-2', 159, 270),
(518, 2, 'Livre 2/2', 'Dargaud', '978-2-205-06764-4', 'Couv_138242.jpg', 54, 2, 'livre-2-2', 159, 270),
(520, NULL, 'Là où vont nos pères', 'Dargaud', '978-2-205-05970-0', 'Couv_143518.jpg', 116, 3, 'la-ou-vont-nos-peres', 60, 100),
(521, 3, 'Kettricken', 'Soleil Productions', '978-2-302-00888-5', 'Couv_100036.jpg', 46, 2, 'kettricken', 160, 274),
(522, 4, 'Molly', 'Soleil Productions', '978-2-302-01235-6', 'Couv_115483.jpg', 47, 3, 'molly', 160, 274),
(523, 1, 'Le bâtard', 'France Loisirs', '978-2-298-03773-9', 'Couv_134606.jpg', 46, 4, 'le-batard', 160, 277),
(524, 2, 'L''art', 'France Loisirs', '978-2-298-04403-4', 'Couv_134608.jpg', 46, 5, 'l-art', 160, 277),
(525, 6, 'L''Héritage du Kaiser - Château de Stolditz, Allemagne. 1936...', 'Delcourt', '978-2-7560-1739-6', '118033_c.jpg', 54, 6, 'l-heritage-du-kaiser-chateau-de-stolditz-allemagne-1936', 161, 280),
(526, 5, 'Gold Rush - Yukon, 1899...', 'Delcourt', '978-2-7560-1738-9', '115618_c.jpg', 62, 7, 'gold-rush-yukon-1899', 161, 282),
(527, 1, 'Premier livre', 'Futuropolis', '978-2-7548-0102-7', 'LuluFemmeNue1_28102008_232856.jpg', 76, 2, 'premier-livre', 138, 209),
(529, NULL, 'Là-bas', 'Dupuis', '2-8001-3457-7', 'Labas_05092003.jpg', 64, 4, 'la-bas', 162, 265),
(530, 2, 'Le fruit de la connaissance', 'Soleil Productions', '2-87764-937-7', 'Couv_136848.jpg', 46, 5, 'le-fruit-de-la-connaissance', 127, 193),
(532, 3, 'Caïn et Abel', 'Soleil Productions', '2-84565-037-X', 'Couv_136847.jpg', 48, 6, 'cain-et-abel', 127, 193),
(533, 1, 'Esclaves', 'Dargaud', '978-2-505-00971-9', 'Couv_115029.jpg', 52, 2, 'esclaves', 163, 285),
(534, 1, 'Un héros sans cœur', 'Delcourt', '978-2-7560-1942-0', '115972_c.jpg', 46, 4, 'un-heros-sans-coeur', 164, 286),
(535, 1, 'Le discours', 'Futuropolis', '978-2-7548-0353-3', 'Couv_125488.jpg', 34, 3, 'le-discours', 165, 14),
(536, NULL, 'Julia & Roem', 'Casterman', '978-2-203-03308-5', 'Couv_125622.jpg', 84, 2, 'julia-roem', 166, 158),
(537, NULL, 'Essex County', 'Futuropolis', '978-2-7548-0235-2', 'Couv_108626.jpg', 496, 2, 'essex-county', 167, 287),
(538, NULL, 'La Fugue', 'Éditions de la Pastèque', '2-922585-30-1', 'FugueLaBlanchet_05082006.jpg', 136, 5, 'la-fugue', 168, 288),
(539, NULL, 'Body World', 'Dargaud', '978-2-205-06316-5', 'Couv_118236.jpg', 384, 6, 'body-world', 169, 290),
(540, NULL, 'Le journal d''un remplaçant', 'Delcourt', '978-2-7560-0641-3', 'JournalDunRemplacantLe_30122006.jpg', 124, 7, 'le-journal-d-un-remplacant', 170, 291),
(541, NULL, 'Broderies', 'L''Association', '2-84414-095-5', 'Broderies_09022003.jpg', 130, 1, 'broderies', 171, 133),
(542, 1, 'Comment je ne me suis pas fait kidnapper en Afghanistan', 'La boîte à bulles', '978-2-84953-053-5', 'kaboul_1_67647.jpg', 145, 2, 'comment-je-ne-me-suis-pas-fait-kidnapper-en-afghanistan', 172, 292),
(543, NULL, 'Shenzhen', 'L''Association', '2-84414-035-1', 'shenzen01_11278.jpg', 150, 3, 'shenzhen', 173, 293),
(544, NULL, 'Logicomix', 'Vuibert', '978-2-7117-4351-3', 'Couv_112031.jpg', 304, 2, 'logicomix', 174, 295),
(545, NULL, 'Watchmen', 'DC Comics', '0-930289-23-4', 'Watchmenint2_12072009_001753.jpg', 416, 1, 'watchmen', 25, 48),
(546, 2, 'Final incal', 'Les Humanoïdes Associés', '978-2-7316-1444-2', 'Couv_133712.jpg', 62, 5, 'final-incal', 118, 300),
(547, 2, 'Renée', 'Futuropolis', '2-7548-0085-9', 'Couv_120701.jpg', 464, 3, 'renee', 68, 109),
(548, 3, 'Livre III - L''Adieu aux Rois', 'Soleil Productions', '978-2-302-01893-8', 'Couv_142820.jpg', 51, 4, 'livre-iii-l-adieu-aux-rois', 113, 303),
(549, 32, 'La Bataille d''Asgard ', 'Le Lombard', '978-2-8036-2754-7', 'Couv_117408.jpg', 46, 5, 'la-bataille-d-asgard', 72, 112),
(550, 33, 'Le Bateau-Sabre', 'Le Lombard', '978-2-8036-2995-4', 'Couv_140423.jpg', 46, 6, 'le-bateau-sabre', 72, 112),
(551, 9, 'Concurrence déloyale', 'Casterman', '978-2-203-03178-4', 'Couv_126818.jpg', 54, 7, 'concurrence-deloyale', 4, 12),
(552, 4, 'Le Chant des dunes', 'Delcourt', '978-2-7560-1989-5', 'Couv_118876.jpg', 32, 4, 'le-chant-des-dunes', 130, 194),
(553, 1, 'Larmes d''abeille', 'Vents d''Ouest', '978-2-7493-0268-3', 'GrandMortLe1_14112007_210502.jpg', 56, 3, 'larmes-d-abeille', 175, 198),
(554, 2, 'Pauline...', 'Vents d''Ouest', '978-2-7493-0394-9', 'GrandMort_02_79711.jpg', 58, 7, 'pauline', 175, 198),
(555, 3, 'Blanche', 'Vents d''Ouest', '978-2-7493-0595-0', 'Couv_135013.jpg', 54, 5, 'blanche', 175, 198),
(556, 1, '508 statues souriantes', 'Futuropolis', '978-2-7548-0356-4', 'Couv_134093.jpg', 48, 4, '508-statues-souriantes', 176, 305),
(557, 1, 'Chili con Carnage', 'Delcourt', '978-2-7560-1807-2', 'Couv_124457.jpg', 46, 2, 'chili-con-carnage', 177, 306),
(558, 1, 'Chroniques diplomatiques', 'Dargaud', '978-2-205-06132-1', 'Couv_108242.jpg', 94, 5, 'chroniques-diplomatiques', 178, 75),
(559, 2, 'Chroniques diplomatiques', 'Dargaud', '978-2-205-06679-1', 'Couv_141851.jpg', 96, 1, 'chroniques-diplomatiques', 178, 75),
(560, NULL, 'Frenchman', 'Daniel Maghen', '978-2-356-74023-6', 'Couv_136258.jpg', 74, 1, 'frenchman', 179, 156),
(561, 1, 'Les règles du jeu', 'Futuropolis', '978-2-7548-0318-2', 'Couv_135303.jpg', 48, 4, 'les-regles-du-jeu', 180, 309),
(562, 1, 'Quinquennat nerveux', 'Delcourt', '978-2-7560-2824-8', '141736_c.jpg', NULL, 2, 'quinquennat-nerveux', 181, 291);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL,
  `nomCat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nomCat`, `slug`) VALUES
(1, 'Science-fiction', 'science-fiction'),
(2, 'Divers', 'divers'),
(3, 'Polar/Thriller', 'polar-thriller'),
(4, 'Historique', 'historique'),
(5, 'Biographie', 'biographie'),
(6, 'Aventure', 'aventure'),
(7, 'Jeunesse', 'jeunesse'),
(8, 'Comics', 'comics'),
(9, 'Humour', 'humour'),
(10, 'Manga', 'manga'),
(11, 'Indépendant', 'independant'),
(12, 'Érotique', 'erotique');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_book`
--

CREATE TABLE IF NOT EXISTS `categorie_book` (
  `categorie_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL,
  `dateCommande` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pickUpSpot_id` int(11) DEFAULT NULL,
  `statut` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id`, `dateCommande`, `user_id`, `pickUpSpot_id`, `statut`) VALUES
(1, NULL, NULL, NULL, 'en_cours'),
(2, '2015-05-23 12:19:08', 10, 1, 'Validée');

-- --------------------------------------------------------

--
-- Structure de la table `commande_book`
--

CREATE TABLE IF NOT EXISTS `commande_book` (
  `commande_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `commande_book`
--

INSERT INTO `commande_book` (`commande_id`, `book_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine`
--

CREATE TABLE IF NOT EXISTS `fine` (
  `id` int(11) NOT NULL,
  `montant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pickupspot`
--

CREATE TABLE IF NOT EXISTS `pickupspot` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pickupspot`
--

INSERT INTO `pickupspot` (`id`, `nom`, `adresse`, `cp`, `ville`) VALUES
(1, 'Libria', '82 Passage Choiseul', '75002', 'Paris'),
(2, 'Telecom Star', '15 Bd de Bonne Nouvelle', '75002', 'Paris'),
(3, 'Hypso Reprographie', '53 rue de Montmorency', '75003', 'Paris'),
(4, 'BM Pressing', '4 Bis Bd Morland', '75004', 'Paris'),
(5, 'Game Cash / CG Paris 5', '21 rue Monge', '75005', 'Paris'),
(6, 'Chez Florence', '11 rue Dauphine', '75006', 'Paris'),
(7, 'Aux Fleurs du Bac', '69 rue du Bac', '75007', 'Paris'),
(8, 'Cordonnerie Serrurerie Grenell', '165 rue de Grenelle', '75007', 'Paris'),
(9, 'Clean Pressing', '15 rue Manuel', '75009', 'Paris'),
(10, 'Luffy', '35 rue de Clichy', '75009', 'Paris'),
(11, 'Les Coteaux de Saumur', '10 rue Bichat', '75010', 'Paris'),
(12, 'Magenta Art Deco', '34 Ter rue du Dunkerque', '75010', 'Paris'),
(13, 'Baticlean 75', '191 rue de Charonne', '75011', 'Paris'),
(14, 'Cala Thé A', '133 rue de Montreuil', '75011', 'Paris'),
(15, 'A Livr'' Ouvert', '171 Bis Bd Voltaire', '75011', 'Paris'),
(16, 'Pressing Boulle', '13 rue Boulle', '75011', 'Paris'),
(17, 'B.C.B.G / SARL Fleuve Bleu', '18 rue Jules Valles', '75011', 'Paris'),
(18, 'L''Atelier du Trèfles Cadeaux', '13 Bis Avenue Philippe Auguste', '75011', 'Paris'),
(19, 'Lio Optic', '44 Bd Diderot', '75012', 'Paris'),
(20, 'A.M Presse Bizot', '116 Av Général Michel Bizot', '75012', 'Paris'),
(21, 'Alanpark', '105 rue de Charenton', '75013', 'Paris'),
(22, 'Okbi Presse', '91 rue de Barrault', '75013', 'Paris'),
(23, 'Encherexpert', '51 rue de Clisson', '75013', 'Paris'),
(24, 'Maison de la Presse', '137 Bd Auguste Blanqui', '75013', 'Paris'),
(25, 'Ideal Optic', '101 Av de France', '75013', 'Paris'),
(26, 'Chryzalys', '206 Bd Raspail', '75014', 'Paris'),
(27, 'Agip Papeterie Côté Sud', '133 Av du Maine', '75014', 'Paris'),
(28, 'Animalerie Little Zoo', '40 Bd Brune', '75014', 'Paris'),
(29, 'Cordonnerie B.V.F', '22 rue des Volontaires', '75015', 'Paris'),
(30, 'Moveux', '14 rue Dupleix', '75015', 'Paris'),
(31, 'Saveurs du Sud', '14 Av Félix Faure', '75015', 'Paris'),
(32, 'Anwa', '105 Bis rue des Entrepreneurs', '75015', 'Paris'),
(33, 'Mercerie Poncet', '15 rue Daumier', '75016', 'Paris'),
(34, 'Vu du XII', '96 Av de Mozart', '75016', 'Paris'),
(35, 'Centre Literie', '2 Bd Bessières', '75017', 'Paris'),
(36, 'Salon Marylène', '45 rue Brochant', '75017', 'Paris'),
(37, 'Allo Micro', '117 rue Legendre', '75017', 'Paris'),
(38, 'Encherexpert', '61 rue Guy Moquet', '75017', 'Paris'),
(39, 'Au Rocher de Joie', '12 rue Lamarck', '75018', 'Paris'),
(40, 'Consoplus Informatique', '8 Bd Ney', '75018', 'Paris'),
(41, 'Unity Génération', '17 rue Simart', '75018', 'Paris'),
(42, 'Isabelle Cherchevsky Atelier', '15 rue Lagouat', '75018', 'Paris'),
(43, 'Labelencre', '10 Av de La porte Brunet', '75019', 'Paris'),
(44, 'Prim Plus', '9 rue du Cher', '75020', 'Paris'),
(45, 'Cadeaux Chics', '27 rue Saint Fargeau', '75020', 'Paris'),
(46, 'Optic 62', '62 rue de Belleville', '75020', 'Paris'),
(47, 'Pressing 113', '113 Bd Davout', '75020', 'Paris'),
(48, 'Copy Conforme', '25 rue Gatinée', '75020', 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE IF NOT EXISTS `serie` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `serie`
--

INSERT INTO `serie` (`id`, `titre`) VALUES
(1, 'Incal (L'')'),
(2, 'Incal (Avant l'')'),
(3, 'Juan Solo'),
(4, 'Tueur (Le)'),
(5, 'Pouvoir des innocents (Le)'),
(6, 'Outremangeur (L'')'),
(7, 'Sang des voyous (Le)'),
(8, 'Paroles de Poilus'),
(9, 'Un homme est mort'),
(10, 'Giuseppe Bergman'),
(11, 'Ibicus'),
(12, 'Blacksad'),
(13, 'Aya de Yopougon'),
(14, 'Gardiens du Maser (Les)'),
(15, 'Anita Bomba'),
(16, 'Kucek'),
(17, 'Où le regard ne porte pas...'),
(18, 'Hariti'),
(19, 'Secteur 7'),
(20, 'Mystère ovale'),
(21, 'Akarus'),
(22, 'Epouvantail pointeur (L'')'),
(23, 'Mangecoeur'),
(24, 'Gardiens (Les) (Watchmen)'),
(25, 'Watchmen'),
(26, 'Black hole'),
(27, 'Spirit (Le)'),
(28, 'Sin City'),
(29, 'NonNonBâ'),
(30, 'Gourmet solitaire (Le)'),
(31, 'Paul'),
(32, 'Sagah-Nah'),
(33, 'Moral des troupes (Le)'),
(34, 'Quelques pelures'),
(35, 'Résine de synthèse'),
(36, 'Guide de la survie en entreprise'),
(37, 'Une aventure rocambolesque de ...'),
(38, 'Cosmonautes du futur (Les)'),
(39, 'Nic Oumouk'),
(40, 'Retour à la terre (Le)'),
(41, 'Combat ordinaire (Le)'),
(42, 'Pascin'),
(43, 'Fille du professeur (La)'),
(44, 'Chat du Rabbin (Le)'),
(45, 'Chez Francisque'),
(46, 'Monsieur Jean'),
(47, 'Supermurgeman'),
(48, 'Lapinot (Les formidables aventures de)'),
(49, 'Miss pas touche'),
(50, 'Gus'),
(51, 'Peter Pan'),
(52, 'A la recherche de Peter Pan'),
(53, 'Sambre'),
(54, 'Sambre - La guerre des Sambre'),
(55, 'Quête de l''oiseau du temps (La)'),
(56, 'Koma'),
(57, 'Lupus'),
(58, 'De cape et de crocs'),
(59, 'Québec'),
(60, 'Là où vont nos pères'),
(61, 'Petits ruisseaux (Les)'),
(62, 'Zoo'),
(63, 'V pour Vendetta'),
(64, 'Donjon Zénith'),
(65, 'Photographe (Le)'),
(66, 'Notes pour une histoire de guerre'),
(67, 'RG'),
(68, 'Lucille'),
(69, 'Réducteur de vitesse (Le)'),
(70, 'Blotch'),
(71, 'Péplum'),
(72, 'Thorgal'),
(73, 'Lanfeust de Troy'),
(74, 'Lanfeust des Etoiles'),
(75, 'Bidouille et Violette'),
(76, 'Cri du peuple (Le)'),
(77, 'Guerre éternelle (La)'),
(78, 'Blake et Mortimer (Editions Blake et Mortimer)'),
(79, 'Voyage en Italie (Le)'),
(80, 'Zélie Nord - Sud'),
(81, 'Sursis (Le)'),
(82, 'Gil St André'),
(83, 'Cahier bleu (Le)'),
(84, 'Un peu de fumée bleue'),
(85, 'Long voyage de Léna (Le)'),
(86, 'Après la pluie'),
(87, 'Vol du corbeau (Le)'),
(88, 'Pilules Bleues'),
(89, 'Persepolis'),
(90, 'Poulet aux prunes'),
(91, 'Bibendum céleste (Le)'),
(92, 'Foligatto'),
(93, 'Salvatore'),
(94, 'Léon la Came'),
(95, 'Pont dans la vase (Le)'),
(96, 'Pourquoi j''ai tué Pierre'),
(97, 'Légendes des contrées oubliées'),
(98, 'Mondes d''Aldébaran (Les) - Bételgeuse'),
(99, 'Mondes d''Aldébaran (Les) - Antarès'),
(100, 'Kenya'),
(101, 'Carnets d''Orient'),
(102, 'Petit Polio'),
(103, 'Bar du vieux Français (Le)'),
(104, 'Belette (La)'),
(105, 'Arbre-coeur (L'')'),
(106, 'Ergün l''errant'),
(107, 'Dracula, dracul, vlad?, bah...'),
(108, 'Magasin général'),
(109, 'XXe ciel.com'),
(110, 'Ciel au-dessus de Bruxelles (Le)'),
(111, 'Canoë Bay'),
(112, 'Animal''z'),
(113, 'Servitude'),
(114, 'Il était une fois en France'),
(115, 'Alim le tanneur'),
(116, 'Marie en plastique (La)'),
(117, 'Lanfeust des Étoiles'),
(118, 'Incal (Après l'')'),
(119, 'Monsieur Fruit'),
(120, 'Mondes d''Aldébaran (Les)'),
(121, 'Olives noires (Les)'),
(122, 'Mattéo'),
(123, 'Troubles fêtes'),
(124, 'Portes du possible (Les)'),
(125, 'Fables'),
(126, 'Chevalier Malheur'),
(127, 'Universal War One'),
(128, 'Vent dans les saules (Le)'),
(129, 'Réseau Bombyce (Le)'),
(130, 'Vent dans les sables (Le)'),
(131, 'Armes du Meta-Baron (Les)'),
(132, 'Derniers corsaires (Les)'),
(133, 'Bois des vierges (Le)'),
(134, 'Petit Prince (Le)'),
(135, 'Blast'),
(136, 'Pachyderme'),
(137, 'Blake et Mortimer (Éditions Blake et Mortimer)'),
(138, 'Lulu Femme Nue'),
(139, 'Ancien temps (L'')'),
(140, 'Donjon Crépuscule'),
(141, 'Adèle Blanc-Sec'),
(142, 'Trois ombres'),
(143, 'Fables (VO - TPB)'),
(144, 'Sommet des dieux (Le)'),
(145, 'Bouddha d''Azur (Le)'),
(146, 'Un peu avant la fortune'),
(147, 'Retour au collège'),
(148, 'Ça n''arrive qu''à moi !'),
(149, 'Page Noire'),
(150, 'Nef des fous (La)'),
(151, 'Jazz Maynard'),
(152, 'Mémoire dans les poches (La)'),
(153, 'Quelques pas vers la lumière'),
(154, 'Scorpion (Le)'),
(155, 'Passagers du vent (Les)'),
(156, 'Antarès'),
(157, 'Survivants'),
(158, 'Namibia (Kenya - Saison 2)'),
(159, 'Fraternity'),
(160, 'Assassin royal (L'')'),
(161, 'Casse (Le)'),
(162, 'Là-bas'),
(163, 'Barracuda (Jérémy)'),
(164, 'Showman Killer'),
(165, 'Enfants de Jessica (Les)'),
(166, 'Julia & Roem'),
(167, 'Essex County'),
(168, 'Fugue (La) (Blanchet)'),
(169, 'Body World'),
(170, 'Journal d''un remplaçant (Le)'),
(171, 'Broderies'),
(172, 'Kaboul Disco'),
(173, 'Shenzhen'),
(174, 'Logicomix'),
(175, 'Grand Mort (Le)'),
(176, 'Car l''enfer est ici'),
(177, 'Homme qui n''aimait pas les armes à feu (L'')'),
(178, 'Quai d''Orsay'),
(179, 'Frenchman'),
(180, 'Urban'),
(181, 'Actu en patates (L'')');

-- --------------------------------------------------------

--
-- Structure de la table `serie_categorie`
--

CREATE TABLE IF NOT EXISTS `serie_categorie` (
  `serie_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `serie_categorie`
--

INSERT INTO `serie_categorie` (`serie_id`, `categorie_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 2),
(7, 3),
(8, 4),
(9, 5),
(10, 6),
(11, 2),
(12, 3),
(13, 7),
(14, 1),
(15, 1),
(16, 6),
(17, 5),
(18, 6),
(19, 2),
(20, 2),
(21, 6),
(22, 1),
(23, 1),
(24, 8),
(25, 8),
(26, 1),
(27, 9),
(28, 3),
(29, 2),
(30, 10),
(31, 5),
(32, 9),
(33, 2),
(34, 2),
(35, 2),
(36, 9),
(37, 9),
(38, 9),
(39, 9),
(40, 9),
(41, 5),
(42, 5),
(43, 2),
(44, 6),
(45, 9),
(46, 5),
(47, 9),
(48, 9),
(49, 3),
(50, 9),
(51, 6),
(52, 2),
(53, 4),
(54, 4),
(55, 1),
(56, 1),
(57, 1),
(58, 9),
(59, 4),
(60, 2),
(61, 2),
(62, 2),
(63, 1),
(64, 9),
(65, 5),
(66, 2),
(67, 3),
(68, 5),
(69, 2),
(70, 9),
(71, 2),
(72, 6),
(73, 1),
(74, 1),
(75, 2),
(76, 4),
(77, 1),
(78, 6),
(79, 2),
(80, 2),
(81, 2),
(82, 3),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 5),
(89, 5),
(90, 5),
(91, 2),
(92, 2),
(93, 2),
(94, 9),
(95, 9),
(96, 5),
(97, 1),
(98, 1),
(99, 1),
(100, 6),
(101, 4),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 1),
(107, 2),
(108, 5),
(109, 2),
(110, 2),
(111, 4),
(112, 1),
(113, 1),
(114, 4),
(115, 6),
(116, 2),
(117, 1),
(118, 1),
(119, 11),
(120, 1),
(121, 4),
(122, 2),
(123, 12),
(124, 1),
(125, 8),
(126, 1),
(127, 1),
(128, 7),
(129, 1),
(130, 2),
(131, 1),
(132, 2),
(133, 2),
(134, 2),
(135, 6),
(136, 2),
(137, 6),
(138, 2),
(139, 1),
(140, 9),
(141, 1),
(142, 2),
(143, 8),
(144, 10),
(145, 6),
(146, 2),
(147, 9),
(148, 2),
(149, 3),
(150, 9),
(151, 2),
(152, 2),
(153, 2),
(154, 6),
(155, 4),
(156, 1),
(157, 1),
(158, 2),
(159, 2),
(160, 2),
(161, 3),
(162, 2),
(163, 6),
(164, 1),
(165, 3),
(166, 1),
(167, 2),
(168, 2),
(169, 1),
(170, 5),
(171, 2),
(172, 5),
(173, 5),
(174, 2),
(175, 1),
(176, 3),
(177, 9),
(178, 3),
(179, 4),
(180, 1),
(181, 9);

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL,
  `transactioncol` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `_user`
--

CREATE TABLE IF NOT EXISTS `_user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateInscription` datetime NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `_user`
--

INSERT INTO `_user` (`id`, `nom`, `prenom`, `email`, `password`, `telephone`, `salt`, `token`, `dateInscription`, `roles`) VALUES
(10, 'Jacquemin', 'Arthur', 'arthur.jacquemin@mail.com', 'WiE2jGfve7D9BaGpP8AyE8XXgrWhqw6rTAxlzLQ9QE4vnpe2KsEDUsJU7cuFMughFDLnNBY95NDvSB1BSZwh9w==', '01.20.30.40.07', 'cd2eefb48b522e60d3ace858dcc672f671433141828b679a86c9dd20fc09', '767e319eace5a728db1d17072928c3d1d19023f3eab8a671556f621b43cf', '2015-05-20 12:20:38', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(11, 'Marthe', 'Yacin', 'yacin.marthe@mail.com', 'btdAiVjiMgtgR8vSfiMossTFt3666ejramnZ4LK+I+Pio6Cehv0eIsFAMPYLQ/OfCP4lWX4tGysBLBxIwVJ1+g==', '04-07-05-05-06', '97a9c2dca4043cdd173b37ad9f29ee8c90d3b92c4e0618b7e4ac920d43bf', '2ebf332f419780f04cd18aea01ec3730a0d4a937b2cd60f51f6259c8f963', '2015-05-22 09:46:59', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(12, 'jfezfmlje', 'lkfejofekkg', 'aaaaaaaaaa@mail.com', 'mW8s8QOvrZJEWsPh9SJYfFnkRkxjW5Ib0zNfsQYm9w7K8KLkyHP/2p7Om2q/gkpVXvd/zl1+KqEfD8nl5Y+tuQ==', '02 26 65 65 55', 'b86af1d8326c74ff4473dd03ece085cc410e221575da0b29ed05bde6a2b7', 'e66a5801a1c7dadf3f175c5fc3e95ff56010f551e06a07380d255fb5d8ac', '2015-05-22 10:20:33', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(13, 'Arthur', 'Martin', 'arthur.martin@mail.com', '+NAT1mVLIBLvJs8sXvVfIg4EneoujuOrO52BrO8CO0RIOYoiqlmaA1FL0Dufh2Y2fqCK0agdMNr9lP0rUK2nRw==', '05-05-06-06-07', '08368687382ff595e6442ff6c6b7d5320b5cdbe4e2a0b0b8d8ac49bf0f70', 'b443ee11c2ce81a00c99a9fd5fb297e247a2bb33a472ca10858e8bf4d3e1', '2015-05-22 10:26:57', 'a:1:{i:0;s:9:"ROLE_USER";}'),
(14, 'Arthur', 'Yacin', 'arthur.yacin@mail.com', 'Sirepd9oIZsFrdRqcN+5sXlgmj9ktmMZdYoZFL4eYSePjHtmuSzfbKo5IxpgtqZYb9kdVnyEsBJFBoSyaT5OCQ==', '05-06-05-07-05', 'a5885c97e41862822911f3a031937580de0cee82b44753af98f6889292c1', 'a07b56ec53a901ee2b38816754eb5f6c7bedfabf1ada05f8e488d4273c91', '2015-05-22 10:27:48', 'a:1:{i:0;s:9:"ROLE_USER";}');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CE2318AA76ED395` (`user_id`);

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6BD70C0FD94388BD` (`serie_id`),
  ADD KEY `IDX_6BD70C0FF675F31B` (`author_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie_book`
--
ALTER TABLE `categorie_book`
  ADD PRIMARY KEY (`categorie_id`,`book_id`),
  ADD KEY `IDX_BCCC2466BCF5E72D` (`categorie_id`),
  ADD KEY `IDX_BCCC246616A2B381` (`book_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_979CC42BA76ED395` (`user_id`),
  ADD KEY `IDX_979CC42BBFFC316` (`pickUpSpot_id`);

--
-- Index pour la table `commande_book`
--
ALTER TABLE `commande_book`
  ADD PRIMARY KEY (`commande_id`,`book_id`),
  ADD KEY `IDX_A089A2D282EA2E54` (`commande_id`),
  ADD KEY `IDX_A089A2D216A2B381` (`book_id`);

--
-- Index pour la table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E9BFBACA76ED395` (`user_id`);

--
-- Index pour la table `pickupspot`
--
ALTER TABLE `pickupspot`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `serie_categorie`
--
ALTER TABLE `serie_categorie`
  ADD PRIMARY KEY (`serie_id`,`categorie_id`),
  ADD KEY `IDX_6137E805D94388BD` (`serie_id`),
  ADD KEY `IDX_6137E805BCF5E72D` (`categorie_id`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `_user`
--
ALTER TABLE `_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT pour la table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=563;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `fine`
--
ALTER TABLE `fine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pickupspot`
--
ALTER TABLE `pickupspot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `_user`
--
ALTER TABLE `_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `FK_CE2318AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `_user` (`id`);

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_6BD70C0FD94388BD` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`),
  ADD CONSTRAINT `FK_6BD70C0FF675F31B` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`);

--
-- Contraintes pour la table `categorie_book`
--
ALTER TABLE `categorie_book`
  ADD CONSTRAINT `FK_BCCC246616A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BCCC2466BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_979CC42BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `_user` (`id`),
  ADD CONSTRAINT `FK_979CC42BBFFC316` FOREIGN KEY (`pickUpSpot_id`) REFERENCES `pickupspot` (`id`);

--
-- Contraintes pour la table `commande_book`
--
ALTER TABLE `commande_book`
  ADD CONSTRAINT `FK_A089A2D216A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A089A2D282EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `fine`
--
ALTER TABLE `fine`
  ADD CONSTRAINT `FK_1E9BFBACA76ED395` FOREIGN KEY (`user_id`) REFERENCES `_user` (`id`);

--
-- Contraintes pour la table `serie_categorie`
--
ALTER TABLE `serie_categorie`
  ADD CONSTRAINT `FK_6137E805BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6137E805D94388BD` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
