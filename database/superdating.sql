-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 17. 11 2017 kl. 08:24:44
-- Serverversion: 5.7.14
-- PHP-version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superdating`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `gifts`
--

CREATE TABLE `gifts` (
  `ID` int(3) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `gifts`
--

INSERT INTO `gifts` (`ID`, `Name`) VALUES
(1, 'Chocolate'),
(2, 'Flowers'),
(3, 'Power stone'),
(4, 'Cloths');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `profile_(user)`
--

CREATE TABLE `profile_(user)` (
  `ID` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Age` int(3) NOT NULL,
  `Superpower` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Likes` int(255) NOT NULL,
  `Private_messages` varchar(300) CHARACTER SET utf8 NOT NULL,
  `Comments` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `profile_(user)`
--

INSERT INTO `profile_(user)` (`ID`, `Name`, `Age`, `Superpower`, `Likes`, `Private_messages`, `Comments`) VALUES
('Master', 'Air Hawk', 22, 'Air elemental controlle', 999999999, 'What should I say in this?', 'AWESOME AIR MAGIC');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `ID` int(3) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Age` int(3) NOT NULL,
  `Superpower` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Likes` int(255) NOT NULL,
  `Private_messages` varchar(300) CHARACTER SET utf8 NOT NULL,
  `Comments` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`ID`, `Name`, `Age`, `Superpower`, `Likes`, `Private_messages`, `Comments`) VALUES
(1, 'All Might', 35, 'All Might (Super speed, strength and reaction)', 1859223, 'Protector of peace', 'There is nothing to fear, justice is here'),
(2, 'Eraserhead', 30, 'Erasure (Avalible to erase any kind of super power when he looks at his opponents)', 1038472, 'I have nothing to say in this channel', 'You just do the work, while I just take a short nap'),
(3, 'Midnight', 31, 'Somnambulist (Availible to make sleep just by her own skin comes pink dust)', 1747384, 'My what should I say here?', 'Anyone want to chat with me?'),
(4, 'Kamui Woods', 29, 'Arbor (Able to make his own body who looks like wood to be manipulated at his own will)', 283723, '...', 'I will save every people I can'),
(5, 'Mt. Lady', 23, 'Gigantification (She is able to make her own size really big like a giant or more)', 1571382, 'What any good would a private message do?', 'Hello everyone, Mt. Lady is here for everyones protection.'),
(6, 'Best Jeanist', 35, 'Fiber Master (He is able to stop and controlle ppl who have cloths on, as long they have it that is)', 1284758, 'Have good style.', 'I\'m a person who knows what good style is.'),
(7, 'Sirius', 23, 'Good Ear (She is able to hear everything in her suroundings)', 1338472, 'I can hear everything', 'I wonder if something interesting things will be heard'),
(8, 'Mandalay', 31, 'Telepath (She is able to communicate and send messages to everyone by the minds)', 1703324, 'Hello, I talk to you through my mind', 'I hope you don\'t mind I can talk to you in my mind.'),
(9, 'Pixie-bob', 31, 'Earth Flow (She can manipulate the earth around her, and create anything with it)', 1713324, 'Hmm a private message? What would I use that for?', 'Think it is here where we say hello.');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users_has_gifts`
--

CREATE TABLE `users_has_gifts` (
  `User_ID` int(3) NOT NULL,
  `User_Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Gift_ID` int(3) NOT NULL,
  `Gift_Name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users_has_gifts`
--

INSERT INTO `users_has_gifts` (`User_ID`, `User_Name`, `Gift_ID`, `Gift_Name`) VALUES
(1, 'All Might', 3, 'Power stone'),
(2, 'Eraserhead', 3, 'Power stone'),
(3, 'Midnight', 1, 'Chocolate'),
(4, 'Kamui Woods', 4, 'Cloths'),
(5, 'Mt. Lady', 2, 'Flowers'),
(6, 'Best Jeanist', 4, 'Cloths'),
(7, 'Sirius', 2, 'Flowers'),
(8, 'Mandalay', 1, 'Chocolate'),
(9, 'Pixie-bob', 1, 'Chocolate');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks for tabel `profile_(user)`
--
ALTER TABLE `profile_(user)`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `gifts`
--
ALTER TABLE `gifts`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
