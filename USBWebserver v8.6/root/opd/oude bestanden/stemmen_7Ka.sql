-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 31 mrt 2013 om 15:30
-- Serverversie: 5.5.24-log
-- PHP-versie: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `openbedrijvendag`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `stemmen`
--

CREATE TABLE IF NOT EXISTS `stemmen` (
  `Bedrijfje` int(11) NOT NULL,
  `Naam` varchar(40) NOT NULL,
  `Aantal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `stemmen`
--

INSERT INTO `stemmen` (`Bedrijfje`, `Naam`, `Aantal`) VALUES
(1, 'Argenta Bank Langdorp', 0),
(2, 'Belgium Welding bvba', 0),
(3, 'CVO De oranjerie Diest', 0),
(11, 'Pro Alliance', 0),
(10, 'OCMW Aarschot LDC ''Het Anker'' - 2', 0),
(9, 'OCMW Aarschot LDC ''Het Anker'' - 1', 0),
(8, 'Java bvba', 0),
(7, 'Inca Networks nv', 0),
(6, 'Immo D & T', 0),
(5, 'Duracell Batteries bvba', 0),
(4, 'De Morgenster vzw', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
