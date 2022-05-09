-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 26 Mar 2013 om 13:24
-- Serverversie: 5.5.8
-- PHP-Versie: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `openbedrijvendag`
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
(17, 'Texet Benelux nv', 0),
(16, 'Plus Home Services', 0),
(15, 'Duracell Batteries bvba', 0),
(14, 'Garage Nijs en zonen bvba', 0),
(13, 'Runtime Services', 0),
(12, 'Uitgeverij Averbode', 0),
(11, 'KBC Bank nv', 0),
(10, 'Gemeentelijke basisschool De hei', 0),
(9, 'Randstad', 0),
(8, 'Vrije Basisschool Ourodenberg', 0),
(7, 'Medisch Centrum Aarschot', 0),
(6, 'Joker Events', 0),
(5, 'Actief Interim', 0),
(4, 'Elektro Baumans bvba', 0),
(3, 'Open School Hageland', 0),
(2, 'Hospital Logistics', 0),
(1, 'ETA nv', 0);
