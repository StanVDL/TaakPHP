-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 14 apr 2018 om 08:04
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
(20, 'Zeeman', 0),
(19, 'Vrije Basisschool Den Hulst', 0),
(18, 'Streetscoccer', 0),
(17, 'Runtime Services', 0),
(16, 'Metaalwaren Merckx nv', 0),
(15, 'Kruidvat Aarschot', 0),
(14, 'Joker Events', 0),
(13, 'Hubo Aarschot', 0),
(12, 'Hospital Logistics', 0),
(11, 'Het Aksent / De Morgenster', 0),
(10, 'Hema Leuven', 0),
(9, 'Hema Diest', 0),
(8, 'Hema Aarschot', 0),
(7, 'FunnyB occhiali', 0),
(6, 'Fobelets nv', 0),
(5, 'Fnac Leuven', 0),
(4, 'Duracell Batteries bvba 2', 0),
(3, 'Duracell Batteries bvba 1', 0),
(2, 'Brantano', 0),
(1, 'Accent jobs', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
