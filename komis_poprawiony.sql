-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Wrz 2021, 14:04
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
-- Baza danych: `komis`
--
CREATE DATABASE IF NOT EXISTS `komis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `komis`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `handlowcy`
--

CREATE TABLE `handlowcy` (
  `login` varchar(10) DEFAULT NULL,
  `imie` varchar(15) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `adres` varchar(50) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `modele`
--

CREATE TABLE `modele` (
  `id` int(11) NOT NULL,
  `producent` int(11) DEFAULT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `rocznik_pocz` int(11) DEFAULT NULL,
  `rocznik_konc` int(11) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `operacje`
--

CREATE TABLE `operacje` (
  `id` int(11) NOT NULL,
  `rodzaj` varchar(20) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestry`
--

CREATE TABLE `rejestry` (
  `id` int(11) NOT NULL,
  `operacja` int(11) DEFAULT NULL,
  `klient` int(11) DEFAULT NULL,
  `samochod` int(11) DEFAULT NULL,
  `kwota` decimal(10,0) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id` int(11) DEFAULT NULL,
  `klient` int(11) DEFAULT NULL,
  `samochod` int(11) DEFAULT NULL,
  `data_rez` date DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id` int(11) NOT NULL,
  `model` int(11) DEFAULT NULL,
  `rocznik` int(11) DEFAULT NULL,
  `wartosc` decimal(10,0) DEFAULT NULL,
  `tablica` varchar(8) DEFAULT NULL,
  `przebieg` int(11) DEFAULT NULL,
  `silnik` varchar(2) DEFAULT NULL CHECK (`silnik` in ('B','D','BG')),
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `modele`
--
ALTER TABLE `modele`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `operacje`
--
ALTER TABLE `operacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rejestry`
--
ALTER TABLE `rejestry`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
