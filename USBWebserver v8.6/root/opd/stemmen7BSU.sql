-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 14 apr 2018 om 07:55
-- Serverversie: 5.6.13
-- PHP-versie: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(17, 'Uitgeverij Averbode', 0),
(16, 'SBWG', 0),
(15, 'Puuur', 0),
(14, 'PP Benelux nv', 0),
(13, 'Plus Home Services', 0),
(12, 'OCMW Aarschot - LDC Orleanshof 2', 0),
(11, 'OCMW Aarschot - LDC Orleanshof 1', 0),
(10, 'Medisch Trainingscentrum Langdorp', 0),
(9, 'Mare Tours', 0),
(8, 'Gysemans NV', 0),
(7, 'Gemeentebestuur Begijnendijk', 0),
(6, 'Garage J. Peeters nv', 0),
(5, 'De Immotheker bvba', 0),
(4, 'CVO De oranjerie', 0),
(3, 'CMT Aarschot', 0),
(2, 'Clip vzw', 0),
(1, 'Argenta', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
