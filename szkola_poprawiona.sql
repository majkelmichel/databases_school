-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Wrz 2021, 14:05
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `szkola`
--
CREATE DATABASE IF NOT EXISTS `szkola` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `szkola`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

CREATE TABLE `klasy` (
  `nazwa` char(2) COLLATE utf8_polish_ci NOT NULL,
  `wychowawca` int(11) NOT NULL,
  `uwagi` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klasy`
--

INSERT INTO `klasy` (`nazwa`, `wychowawca`, `uwagi`) VALUES
('1a', 3, NULL),
('2a', 2, NULL),
('3b', 8, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `rok_ur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nauczyciele`
--

INSERT INTO `nauczyciele` (`id`, `imie`, `nazwisko`, `rok_ur`) VALUES
(1, 'Jan', 'Nowak', 1976),
(2, 'Anna', 'Kowalska', 1980),
(3, 'Beata', 'Kozioł', 1980),
(4, 'Czesława', 'Lis', 1981),
(5, 'Danuta', 'Rogan', 1982),
(6, 'Piotr', 'Koryncki', 1985),
(7, 'Paweł', 'Stonka', 1970),
(8, 'Marcel', 'Miklaszewski', 1982),
(9, 'Agnieszka', 'Jankowska', 1976),
(10, 'Aleksandra', 'Nowak', 1975);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `ocena` decimal(2,1) DEFAULT NULL,
  `kogo` int(11) DEFAULT NULL,
  `przedmiot` int(11) DEFAULT NULL,
  `kto_wystawil` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `typ` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `uwagi` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `przedmioty`
--

INSERT INTO `przedmioty` (`id`, `nazwa`) VALUES
(1, 'Matematyka'),
(2, 'Informatyka'),
(3, 'Język polski'),
(4, 'Język angielski'),
(5, 'Wychowanie Fizyczne'),
(6, 'Biologia'),
(7, 'Geografia'),
(8, 'Fizyka'),
(9, 'Historia'),
(10, 'Chemia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `data_ur` date DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `osoba_kont` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `uwagi` text COLLATE utf8_polish_ci DEFAULT NULL,
  `klasa` char(2) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`id`, `imie`, `nazwisko`, `data_ur`, `tel`, `osoba_kont`, `uwagi`, `klasa`) VALUES
(1, 'Zofia', 'Jankowska', '2005-01-13', '56 543 543 543', 'Jan Jankowski', NULL, '2a'),
(2, 'Sebastian', 'Jankowski', '2005-01-13', '56 543 543 543', 'Jan Jankowski', NULL, '2a'),
(3, 'Alicja', 'Kowalska', '2006-04-10', '782 782 782', 'Anna Kowalska', NULL, '1a'),
(4, 'Ewa', 'Kowal', '2006-01-03', '56 123 133 143', 'Emil Kowal', NULL, '1a'),
(5, 'Daniela', 'Mroczek', '2005-10-09', '87 874 874 77', 'Maja Mroczek', NULL, '2a'),
(6, 'Iryda', 'Lasocka', '2006-08-10', '87 223 112 76', 'Ewa Lasocka-Maj', NULL, '1a'),
(7, 'Mateusz', 'Rychlik', '2005-10-30', '801 765 432', 'Zygmunt Rychlik', NULL, '2a'),
(8, 'Sylwester', 'Kozunik', '2005-05-03', '369 780 582', 'Szymon Kozunik', NULL, '2a'),
(9, 'Bartosz', 'Hedko', '2005-09-29', '576 270 930', 'Elżbieta Kaj', NULL, '2a'),
(10, 'Bartłomiej', 'Fijakowski', '2006-04-03', '727 231 834', 'Jolanta Fijakowska', NULL, '1a'),
(11, 'Oktawian', 'Kremietz', '2005-12-14', '717 538 322', 'Jan Kremietz', NULL, '2a'),
(12, 'Anna', 'Tonder', '2005-07-05', '841 546 823', 'Anita Tonder', NULL, '2a'),
(13, 'Jacek', 'Pit', '2006-10-24', '533 504 345', 'Balcer Pit', NULL, '1a'),
(14, 'Marta', 'Roszko', '2005-03-18', '630 321 433', 'Maria Roszko-Borys', NULL, '2a'),
(15, 'Magda', 'Witalska', '2005-09-09', '56 534 230 543', 'Przemysław Witalski', NULL, '2a');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczy`
--

CREATE TABLE `uczy` (
  `id` int(11) NOT NULL,
  `przedmiot` int(11) NOT NULL,
  `nauczyciel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczy`
--

INSERT INTO `uczy` (`id`, `przedmiot`, `nauczyciel`) VALUES
(1, 10, 10),
(2, 1, 4),
(3, 1, 10),
(4, 2, 1),
(5, 3, 9),
(6, 3, 6),
(7, 3, 2),
(8, 4, 3),
(9, 5, 7),
(10, 6, 5),
(11, 7, 5),
(12, 8, 4),
(13, 9, 8),
(14, 10, 9),
(15, 4, 8),
(16, 9, 10),
(17, 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`nazwa`);

--
-- Indeksy dla tabeli `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczy`
--
ALTER TABLE `uczy`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
