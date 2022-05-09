-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 13 dec 2012 om 10:01
-- Serverversie: 5.5.24-log
-- PHP-versie: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `examen`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE IF NOT EXISTS `gebruikers` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `gebruikersnaam` varchar(10) NOT NULL,
  `wachtwoord` varchar(10) NOT NULL,
  `pogingen` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`userid`, `gebruikersnaam`, `wachtwoord`, `pogingen`) VALUES
(2, 'examen', 'kerst', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `series`
--

CREATE TABLE IF NOT EXISTS `series` (
  `serieid` int(11) NOT NULL AUTO_INCREMENT,
  `serienaam` varchar(50) NOT NULL,
  `stemmen` int(11) NOT NULL,
  `omschrijving` varchar(250) NOT NULL,
  PRIMARY KEY (`serieid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `series`
--

INSERT INTO `series` (`serieid`, `serienaam`, `stemmen`, `omschrijving`) VALUES
(1, 'The Big Bang Theorie', 12, 'Een vrouw die verhuist naar een appartement naast twee briljante, maar sociaal onhandige fysici toont hen hoe weinig ze weten over het leven buiten het laboratorium.'),
(2, 'Firefly', 6, 'Vijfhonderd jaar in de toekomst tracht een afvallige bemanning aan boord van een klein ruimtevaartuig te overleven.'),
(3, 'The Wire', 3, 'De drugsscene van Baltimore, gezien door de ogen van drugsdealers en de wet.'),
(4, 'The Gates', 9, 'Een politieagent wordt hoofdcommissaris in een beveiligde woonwijk waar niets is wat het lijkt.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
