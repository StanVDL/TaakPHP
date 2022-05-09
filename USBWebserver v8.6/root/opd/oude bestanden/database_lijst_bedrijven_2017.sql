-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 20 apr 2017 om 11:10
-- Serverversie: 5.6.12-log
-- PHP-versie: 5.4.12

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
(60, 'Zeeman', 0),
(59, 'Vrije Basisschool Pastoor Dergent', 0),
(58, 'VBO', 0),
(57, 'Uitgeverij Averbode', 0),
(56, 't Sjibke', 0),
(55, 'SMA', 0),
(54, 'Runtime Services 2', 0),
(53, 'Runtime Services 1', 0),
(52, 'Puuur', 0),
(51, 'PP Benelux nv', 0),
(50, 'Plus Home Services', 0),
(49, 'OCMW - Orleanshof 2', 0),
(48, 'OCMW - Orleanshof 1', 0),
(47, 'Morgenster', 0),
(46, 'Merckx Ijzerwaren', 0),
(45, 'Medisch trainingscentrum Langdorp', 0),
(44, 'Mare Tours', 0),
(43, 'Joker Shop', 0),
(42, 'Intratuin 5', 0),
(41, 'Intratuin 4', 0),
(40, 'Intratuin 3', 0),
(39, 'Intratuin 2', 0),
(38, 'Intratuin 1', 0),
(37, 'Inca Networks', 0),
(36, 'Immotheker bvba', 0),
(35, 'Hypnosecentrum', 0),
(34, 'Hubo', 0),
(33, 'Hospital Logistics', 0),
(32, 'Hema 4', 0),
(31, 'Hema 3', 0),
(30, 'Hema 2', 0),
(29, 'Hema 1', 0),
(28, 'Gysemans nv', 0),
(27, 'Gemeentelijke Basisschool De hei', 0),
(26, 'Garage Smedts nv', 0),
(25, 'Garage Nissan Peeters', 0),
(24, 'FunnyB Occhiali', 0),
(23, 'Fobelets nv', 0),
(22, 'Fnac ', 0),
(21, 'Duracell 3', 0),
(20, 'Duracell 2', 0),
(19, 'Duracell 1', 0),
(18, 'Domo Meubelen', 0),
(17, 'Delhaize 4', 0),
(16, 'Delhaize 3', 0),
(15, 'Delhaize 2', 0),
(14, 'Delhaize 1', 0),
(13, 'De Tumkens sportdienst', 0),
(12, 'CVO De Oranjerie', 0),
(11, 'CMT ', 0),
(10, 'Clixxs', 0),
(9, 'CLIP vzw', 0),
(8, 'Casa', 0),
(7, 'Carrefour 3', 0),
(6, 'Carrefour 2', 0),
(5, 'Carrefour 1', 0),
(4, 'Brantano 2', 0),
(3, 'Brantano 1', 0),
(2, 'Actief Interim', 0),
(1, 'Accent Jobs', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
