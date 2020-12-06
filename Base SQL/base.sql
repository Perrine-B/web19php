-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 06 déc. 2020 à 15:30
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cesiblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `Id` bigint(20) UNSIGNED NOT NULL,
  `Titre` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Description` text COLLATE utf8_bin DEFAULT NULL,
  `DateAjout` date DEFAULT NULL,
  `Auteur` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ImageRepository` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ImageFilename` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CategorieId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`Id`, `Titre`, `Description`, `DateAjout`, `Auteur`, `ImageRepository`, `ImageFilename`, `CategorieId`) VALUES
(5, 'PHP en force', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.\r\n\r\nAliquam at cursus justo. Aenean lobortis est felis, vel posuere sem convallis at. Ut quis quam viverra libero ornare dapibus sit amet sit amet leo. Nullam vel massa eget sapien sodales vehicula ac a ligula. Nulla tristique facilisis sapien vel laoreet. Praesent semper interdum sapien id placerat. Nam fermentum faucibus sem, vel facilisis metus commodo quis.\r\n\r\nDonec sit amet felis tincidunt, placerat massa placerat, ullamcorper quam. Quisque lacinia nisi sit amet facilisis ullamcorper. Maecenas tincidunt, nisi id sagittis eleifend, leo nisi blandit libero, sed tincidunt turpis sem sit amet lacus. Sed sagittis quam risus, quis tempor leo vehicula non. Integer accumsan nibh enim, at luctus purus bibendum vitae. Vivamus vel ligula interdum, fringilla augue ac, finibus sem. Morbi consectetur metus lorem. Donec volutpat suscipit ullamcorper. Aliquam a diam magna. Sed accumsan libero sed ipsum tincidunt, in imperdiet nisl fermentum. Sed vestibulum nulla quis nulla molestie, et dictum mauris luctus. Aenean nisi sem, fringilla in blandit quis, facilisis at purus.\r\n\r\nSed non feugiat felis. Sed dictum massa leo, in pellentesque erat eleifend ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id metus vitae nulla luctus viverra in in lorem. Quisque enim lectus, congue id luctus non, commodo at erat. Fusce dictum libero metus, nec condimentum mi egestas non. Nullam volutpat felis at lorem tempus, sed tincidunt nisi condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean quis sem et dui interdum facilisis.\r\n\r\nPhasellus tincidunt auctor risus, eu tincidunt lacus fermentum id. Fusce placerat tristique elit, a mattis arcu dignissim id. Sed bibendum auctor tortor ac efficitur. Morbi velit justo, auctor in ultrices in, condimentum in ligula. Fusce convallis lacus condimentum neque ultrices malesuada. Aliquam scelerisque ipsum eget augue luctus fringilla. Ut suscipit, enim sit amet dignissim tincidunt, arcu dui viverra arcu, consequat consectetur tortor risus a velit. ', '2020-10-12', 'Alexandre', NULL, NULL, 3),
(6, 'Un titre au hasard', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.\r\n\r\nAliquam at cursus justo. Aenean lobortis est felis, vel posuere sem convallis at. Ut quis quam viverra libero ornare dapibus sit amet sit amet leo. Nullam vel massa eget sapien sodales vehicula ac a ligula. Nulla tristique facilisis sapien vel laoreet. Praesent semper interdum sapien id placerat. Nam fermentum faucibus sem, vel facilisis metus commodo quis.\r\n\r\nDonec sit amet felis tincidunt, placerat massa placerat, ullamcorper quam. Quisque lacinia nisi sit amet facilisis ullamcorper. Maecenas tincidunt, nisi id sagittis eleifend, leo nisi blandit libero, sed tincidunt turpis sem sit amet lacus. Sed sagittis quam risus, quis tempor leo vehicula non. Integer accumsan nibh enim, at luctus purus bibendum vitae. Vivamus vel ligula interdum, fringilla augue ac, finibus sem. Morbi consectetur metus lorem. Donec volutpat suscipit ullamcorper. Aliquam a diam magna. Sed accumsan libero sed ipsum tincidunt, in imperdiet nisl fermentum. Sed vestibulum nulla quis nulla molestie, et dictum mauris luctus. Aenean nisi sem, fringilla in blandit quis, facilisis at purus.\r\n\r\nSed non feugiat felis. Sed dictum massa leo, in pellentesque erat eleifend ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id metus vitae nulla luctus viverra in in lorem. Quisque enim lectus, congue id luctus non, commodo at erat. Fusce dictum libero metus, nec condimentum mi egestas non. Nullam volutpat felis at lorem tempus, sed tincidunt nisi condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean quis sem et dui interdum facilisis.\r\n\r\nPhasellus tincidunt auctor risus, eu tincidunt lacus fermentum id. Fusce placerat tristique elit, a mattis arcu dignissim id. Sed bibendum auctor tortor ac efficitur. Morbi velit justo, auctor in ultrices in, condimentum in ligula. Fusce convallis lacus condimentum neque ultrices malesuada. Aliquam scelerisque ipsum eget augue luctus fringilla. Ut suscipit, enim sit amet dignissim tincidunt, arcu dui viverra arcu, consequat consectetur tortor risus a velit. ', '2020-10-05', 'Rebecca', NULL, NULL, 3),
(7, 'Vive le JS', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.\r\n\r\nAliquam at cursus justo. Aenean lobortis est felis, vel posuere sem convallis at. Ut quis quam viverra libero ornare dapibus sit amet sit amet leo. Nullam vel massa eget sapien sodales vehicula ac a ligula. Nulla tristique facilisis sapien vel laoreet. Praesent semper interdum sapien id placerat. Nam fermentum faucibus sem, vel facilisis metus commodo quis.\r\n\r\nDonec sit amet felis tincidunt, placerat massa placerat, ullamcorper quam. Quisque lacinia nisi sit amet facilisis ullamcorper. Maecenas tincidunt, nisi id sagittis eleifend, leo nisi blandit libero, sed tincidunt turpis sem sit amet lacus. Sed sagittis quam risus, quis tempor leo vehicula non. Integer accumsan nibh enim, at luctus purus bibendum vitae. Vivamus vel ligula interdum, fringilla augue ac, finibus sem. Morbi consectetur metus lorem. Donec volutpat suscipit ullamcorper. Aliquam a diam magna. Sed accumsan libero sed ipsum tincidunt, in imperdiet nisl fermentum. Sed vestibulum nulla quis nulla molestie, et dictum mauris luctus. Aenean nisi sem, fringilla in blandit quis, facilisis at purus.\r\n\r\nSed non feugiat felis. Sed dictum massa leo, in pellentesque erat eleifend ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id metus vitae nulla luctus viverra in in lorem. Quisque enim lectus, congue id luctus non, commodo at erat. Fusce dictum libero metus, nec condimentum mi egestas non. Nullam volutpat felis at lorem tempus, sed tincidunt nisi condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean quis sem et dui interdum facilisis.\r\n\r\nPhasellus tincidunt auctor risus, eu tincidunt lacus fermentum id. Fusce placerat tristique elit, a mattis arcu dignissim id. Sed bibendum auctor tortor ac efficitur. Morbi velit justo, auctor in ultrices in, condimentum in ligula. Fusce convallis lacus condimentum neque ultrices malesuada. Aliquam scelerisque ipsum eget augue luctus fringilla. Ut suscipit, enim sit amet dignissim tincidunt, arcu dui viverra arcu, consequat consectetur tortor risus a velit. ', '2020-10-07', 'Alexandre', NULL, NULL, 2),
(14, 'Lorem ipsum', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.\r\n\r\nAliquam at cursus justo. Aenean lobortis est felis, vel posuere sem convallis at. Ut quis quam viverra libero ornare dapibus sit amet sit amet leo. Nullam vel massa eget sapien sodales vehicula ac a ligula. Nulla tristique facilisis sapien vel laoreet. Praesent semper interdum sapien id placerat. Nam fermentum faucibus sem, vel facilisis metus commodo quis.\r\n\r\nDonec sit amet felis tincidunt, placerat massa placerat, ullamcorper quam. Quisque lacinia nisi sit amet facilisis ullamcorper. Maecenas tincidunt, nisi id sagittis eleifend, leo nisi blandit libero, sed tincidunt turpis sem sit amet lacus. Sed sagittis quam risus, quis tempor leo vehicula non. Integer accumsan nibh enim, at luctus purus bibendum vitae. Vivamus vel ligula interdum, fringilla augue ac, finibus sem. Morbi consectetur metus lorem. Donec volutpat suscipit ullamcorper. Aliquam a diam magna. Sed accumsan libero sed ipsum tincidunt, in imperdiet nisl fermentum. Sed vestibulum nulla quis nulla molestie, et dictum mauris luctus. Aenean nisi sem, fringilla in blandit quis, facilisis at purus.\r\n\r\nSed non feugiat felis. Sed dictum massa leo, in pellentesque erat eleifend ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id metus vitae nulla luctus viverra in in lorem. Quisque enim lectus, congue id luctus non, commodo at erat. Fusce dictum libero metus, nec condimentum mi egestas non. Nullam volutpat felis at lorem tempus, sed tincidunt nisi condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean quis sem et dui interdum facilisis.\r\n\r\nPhasellus tincidunt auctor risus, eu tincidunt lacus fermentum id. Fusce placerat tristique elit, a mattis arcu dignissim id. Sed bibendum auctor tortor ac efficitur. Morbi velit justo, auctor in ultrices in, condimentum in ligula. Fusce convallis lacus condimentum neque ultrices malesuada. Aliquam scelerisque ipsum eget augue luctus fringilla. Ut suscipit, enim sit amet dignissim tincidunt, arcu dui viverra arcu, consequat consectetur tortor risus a velit. ', '2020-11-04', 'Rebecca', NULL, NULL, 4),
(15, 'Un article random', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.\r\n\r\nAliquam at cursus justo. Aenean lobortis est felis, vel posuere sem convallis at. Ut quis quam viverra libero ornare dapibus sit amet sit amet leo. Nullam vel massa eget sapien sodales vehicula ac a ligula. Nulla tristique facilisis sapien vel laoreet. Praesent semper interdum sapien id placerat. Nam fermentum faucibus sem, vel facilisis metus commodo quis.\r\n\r\nDonec sit amet felis tincidunt, placerat massa placerat, ullamcorper quam. Quisque lacinia nisi sit amet facilisis ullamcorper. Maecenas tincidunt, nisi id sagittis eleifend, leo nisi blandit libero, sed tincidunt turpis sem sit amet lacus. Sed sagittis quam risus, quis tempor leo vehicula non. Integer accumsan nibh enim, at luctus purus bibendum vitae. Vivamus vel ligula interdum, fringilla augue ac, finibus sem. Morbi consectetur metus lorem. Donec volutpat suscipit ullamcorper. Aliquam a diam magna. Sed accumsan libero sed ipsum tincidunt, in imperdiet nisl fermentum. Sed vestibulum nulla quis nulla molestie, et dictum mauris luctus. Aenean nisi sem, fringilla in blandit quis, facilisis at purus.\r\n\r\nSed non feugiat felis. Sed dictum massa leo, in pellentesque erat eleifend ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id metus vitae nulla luctus viverra in in lorem. Quisque enim lectus, congue id luctus non, commodo at erat. Fusce dictum libero metus, nec condimentum mi egestas non. Nullam volutpat felis at lorem tempus, sed tincidunt nisi condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean quis sem et dui interdum facilisis.\r\n\r\nPhasellus tincidunt auctor risus, eu tincidunt lacus fermentum id. Fusce placerat tristique elit, a mattis arcu dignissim id. Sed bibendum auctor tortor ac efficitur. Morbi velit justo, auctor in ultrices in, condimentum in ligula. Fusce convallis lacus condimentum neque ultrices malesuada. Aliquam scelerisque ipsum eget augue luctus fringilla. Ut suscipit, enim sit amet dignissim tincidunt, arcu dui viverra arcu, consequat consectetur tortor risus a velit. ', '2020-11-15', 'Emilie', NULL, NULL, 2),
(16, 'Lorem ipsum dolor', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.\r\n\r\nAliquam at cursus justo. Aenean lobortis est felis, vel posuere sem convallis at. Ut quis quam viverra libero ornare dapibus sit amet sit amet leo. Nullam vel massa eget sapien sodales vehicula ac a ligula. Nulla tristique facilisis sapien vel laoreet. Praesent semper interdum sapien id placerat. Nam fermentum faucibus sem, vel facilisis metus commodo quis.\r\n\r\nDonec sit amet felis tincidunt, placerat massa placerat, ullamcorper quam. Quisque lacinia nisi sit amet facilisis ullamcorper. Maecenas tincidunt, nisi id sagittis eleifend, leo nisi blandit libero, sed tincidunt turpis sem sit amet lacus. Sed sagittis quam risus, quis tempor leo vehicula non. Integer accumsan nibh enim, at luctus purus bibendum vitae. Vivamus vel ligula interdum, fringilla augue ac, finibus sem. Morbi consectetur metus lorem. Donec volutpat suscipit ullamcorper. Aliquam a diam magna. Sed accumsan libero sed ipsum tincidunt, in imperdiet nisl fermentum. Sed vestibulum nulla quis nulla molestie, et dictum mauris luctus. Aenean nisi sem, fringilla in blandit quis, facilisis at purus.\r\n\r\nSed non feugiat felis. Sed dictum massa leo, in pellentesque erat eleifend ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id metus vitae nulla luctus viverra in in lorem. Quisque enim lectus, congue id luctus non, commodo at erat. Fusce dictum libero metus, nec condimentum mi egestas non. Nullam volutpat felis at lorem tempus, sed tincidunt nisi condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean quis sem et dui interdum facilisis.\r\n\r\nPhasellus tincidunt auctor risus, eu tincidunt lacus fermentum id. Fusce placerat tristique elit, a mattis arcu dignissim id. Sed bibendum auctor tortor ac efficitur. Morbi velit justo, auctor in ultrices in, condimentum in ligula. Fusce convallis lacus condimentum neque ultrices malesuada. Aliquam scelerisque ipsum eget augue luctus fringilla. Ut suscipit, enim sit amet dignissim tincidunt, arcu dui viverra arcu, consequat consectetur tortor risus a velit. ', '2020-11-15', 'Alexandre', NULL, NULL, 3),
(17, 'Lorem', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.\r\n\r\nAliquam at cursus justo. Aenean lobortis est felis, vel posuere sem convallis at. Ut quis quam viverra libero ornare dapibus sit amet sit amet leo. Nullam vel massa eget sapien sodales vehicula ac a ligula. Nulla tristique facilisis sapien vel laoreet. Praesent semper interdum sapien id placerat. Nam fermentum faucibus sem, vel facilisis metus commodo quis.\r\n\r\nDonec sit amet felis tincidunt, placerat massa placerat, ullamcorper quam. Quisque lacinia nisi sit amet facilisis ullamcorper. Maecenas tincidunt, nisi id sagittis eleifend, leo nisi blandit libero, sed tincidunt turpis sem sit amet lacus. Sed sagittis quam risus, quis tempor leo vehicula non. Integer accumsan nibh enim, at luctus purus bibendum vitae. Vivamus vel ligula interdum, fringilla augue ac, finibus sem. Morbi consectetur metus lorem. Donec volutpat suscipit ullamcorper. Aliquam a diam magna. Sed accumsan libero sed ipsum tincidunt, in imperdiet nisl fermentum. Sed vestibulum nulla quis nulla molestie, et dictum mauris luctus. Aenean nisi sem, fringilla in blandit quis, facilisis at purus.\r\n\r\nSed non feugiat felis. Sed dictum massa leo, in pellentesque erat eleifend ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id metus vitae nulla luctus viverra in in lorem. Quisque enim lectus, congue id luctus non, commodo at erat. Fusce dictum libero metus, nec condimentum mi egestas non. Nullam volutpat felis at lorem tempus, sed tincidunt nisi condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean quis sem et dui interdum facilisis.\r\n\r\nPhasellus tincidunt auctor risus, eu tincidunt lacus fermentum id. Fusce placerat tristique elit, a mattis arcu dignissim id. Sed bibendum auctor tortor ac efficitur. Morbi velit justo, auctor in ultrices in, condimentum in ligula. Fusce convallis lacus condimentum neque ultrices malesuada. Aliquam scelerisque ipsum eget augue luctus fringilla. Ut suscipit, enim sit amet dignissim tincidunt, arcu dui viverra arcu, consequat consectetur tortor risus a velit. ', '2020-11-15', 'Léo', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `Id` bigint(20) UNSIGNED NOT NULL,
  `Libelle` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Icone` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`Id`, `Libelle`, `Icone`) VALUES
(2, 'Cuisine', 'fas fa-cookie-bite'),
(3, 'Code', 'fas fa-code'),
(4, 'Jeux', 'fas fa-dice-two'),
(7, 'Météo', 'far fa-sun');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `Id` bigint(20) UNSIGNED NOT NULL,
  `Texte` text COLLATE utf8_bin DEFAULT NULL,
  `DateAjout` timestamp NOT NULL DEFAULT current_timestamp(),
  `Auteur` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `EmailAuteur` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ArticleId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`Id`, `Texte`, `DateAjout`, `Auteur`, `EmailAuteur`, `ArticleId`) VALUES
(16, 'Super article', '2020-10-31 14:25:41', 'Rebecca', 'rebecca@fakemail.com', 0),
(19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices. Aliquam tellus orci, bibendum et ante quis, feugiat ultrices quam. Mauris eu mollis nunc. Curabitur aliquet, augue a pulvinar venenatis, lectus dolor pharetra mi, molestie bibendum turpis risus sit amet turpis. Nunc fringilla nibh in ornare fringilla. Vestibulum eget nisl nisl. Duis odio magna, imperdiet eget eleifend nec, dignissim eu mauris. Mauris eleifend fringilla lacinia. Cras elementum nibh non arcu tincidunt sollicitudin.', '2020-11-15 11:27:50', 'Alex', 'alex@gmail.com', 15),
(22, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis.', '2020-11-15 16:01:06', 'Lorem', 'lorem@gmail.fr', 6),
(23, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices.', '2020-11-15 16:13:53', 'Lorem', 'lorem@gmail.fr', 6),
(26, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mollis dictum faucibus. Aenean lobortis tellus sed tellus ultrices, quis vulputate enim accumsan. Donec volutpat eget nulla quis mollis. Quisque mollis viverra dui ut feugiat. Pellentesque pharetra eros id ex scelerisque ultrices.', '2020-11-15 16:40:44', 'Lorem', 'lorem@gmail.fr', 17),
(27, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2020-11-15 16:41:02', 'Lorem', 'lorem@gmail.fr', 17),
(29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', '2020-11-15 17:11:20', 'Lorem', 'lorem@gmail.fr', 16);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `Id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `Id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
