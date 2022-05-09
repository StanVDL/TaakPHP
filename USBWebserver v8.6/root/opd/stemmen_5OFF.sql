-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 14 apr 2018 om 08:01
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
(18, 'Vrije Basisschool Pastoor Dergent', 0),
(17, 'Vrije Basisschool Ourodenberg', 0),
(16, 'Vrije Basisschool Houwaart', 0),
(15, 'PP Benelux nv', 0),
(14, 'OCMW Aarschot - LDC Orleanshof', 0),
(13, 'Naam_bedrijf', 0),
(12, 'Kruidvat', 0),
(11, 'Joker Events', 0),
(10, 'Intratuin Aarschot 3', 0),
(9, 'Intratuin Aarschot 2', 0),
(8, 'Intratuin Aarschot 1', 0),
(7, 'Duracell Batteries bvba', 0),
(6, 'Domo Meubelen & Deco', 0),
(5, 'Delhaize Groep NV', 0),
(4, 'Carrefour Belgium', 0),
(3, 'Brantano', 0),
(2, 'Basisschool Sancta Maria Aarschot', 0),
(1, 'Actief Interim', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
