-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 31, 2024 at 01:00 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cwiczeniee`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `imie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`id_autora`, `nazwisko`, `imie`) VALUES
(1, 'Mickiewicz', 'Adam'),
(2, 'Słowacki', 'Juliusz '),
(4, 'Sienkiewicz ', 'Henryk'),
(5, 'Kochanowski', 'Jan'),
(100, 'Norwid', 'Cyprian Kamil');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

CREATE TABLE `faktura` (
  `id_faktury` int(11) NOT NULL,
  `nr_faktury` varchar(50) DEFAULT NULL,
  `sposob_platnosci` varchar(50) DEFAULT NULL,
  `data_wystawienia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `faktura`
--

INSERT INTO `faktura` (`id_faktury`, `nr_faktury`, `sposob_platnosci`, `data_wystawienia`) VALUES
(1, '213744', 'karta', '2024-10-16 11:57:56'),
(2, '690420', 'gotówka', '2024-10-06 11:57:56'),
(3, '497544', 'blik', '2024-10-03 11:57:56'),
(4, '987123', 'karta', '2024-10-27 11:57:56');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `miejscowosc` varchar(50) DEFAULT NULL,
  `kod_pocztowy` varchar(6) DEFAULT NULL,
  `ulica` varchar(50) DEFAULT NULL,
  `nr_domu` varchar(7) DEFAULT NULL,
  `telefon` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` (`id_klienta`, `imie`, `nazwisko`, `miejscowosc`, `kod_pocztowy`, `ulica`, `nr_domu`, `telefon`, `email`) VALUES
(1, 'Jan', 'Kowalski', 'Gliwice', '44-100', 'Chorzowska 5', '5', '+48987678098', 'email@dupa.pl'),
(2, 'Michał', 'Niewiadomski', 'Kraków', NULL, NULL, NULL, '+48888999777', NULL),
(3, 'a', 'b', 'c', 'd', 'e', 'f', 'h', 'j');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` varchar(100) DEFAULT NULL,
  `id_autora` int(11) NOT NULL,
  `cena` decimal(8,2) DEFAULT NULL,
  `id_wydawnictwa` int(11) DEFAULT NULL,
  `rok_wydania` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `id_autora`, `cena`, `id_wydawnictwa`, `rok_wydania`) VALUES
(1, 'Pan Tadeusz', 1, 14.00, 1, 2024),
(3, 'Treny', 5, 20.00, NULL, 1999),
(4, 'Syzyfowe Prace', 4, 15.00, 1, 2005),
(5, 'Fortepian Szopena', 100, 10.00, 3, 2000),
(6, 'Balladyna', 2, 14.00, NULL, 2015),
(7, 'Testament mój', 2, 8.00, NULL, 1980),
(8, 'Oda do młodości', 1, 17.00, 3, 1998),
(9, 'Quo Vadis', 4, 29.00, NULL, 2020),
(10, 'Trylogia', 4, 40.00, NULL, 2018),
(11, 'powstanie warszawskie ', 2, 123.00, 6, 1999),
(12, 'ksionszka o ksiazce', 100, 4321.00, 7, 1234);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szczegoly_zamowienia`
--

CREATE TABLE `szczegoly_zamowienia` (
  `id_zamowien` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `ilosc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `szczegoly_zamowienia`
--

INSERT INTO `szczegoly_zamowienia` (`id_zamowien`, `id_ksiazki`, `ilosc`) VALUES
(1, 6, 2),
(1, 8, 2),
(2, 10, 1),
(2, 9, 1),
(3, 1, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydawnictwo`
--

CREATE TABLE `wydawnictwo` (
  `id_wydawnictwa` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wydawnictwo`
--

INSERT INTO `wydawnictwo` (`id_wydawnictwa`, `nazwa`) VALUES
(1, 'Świat Książki'),
(3, 'Neriton'),
(4, 'Gdynskie wydwanictwo'),
(5, 'Polskie Wielke wydawnictwo'),
(6, 'Gdynskie wydwanictwo'),
(7, 'Polskie Wielke wydawnictwo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `data_zamowienia` datetime DEFAULT NULL,
  `data_wyslania` datetime DEFAULT NULL,
  `koszt_wysylki` decimal(8,2) DEFAULT NULL,
  `id_faktury` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_klienta`, `data_zamowienia`, `data_wyslania`, `koszt_wysylki`, `id_faktury`) VALUES
(1, 1, '2024-10-02 12:02:52', '2024-10-10 12:02:52', 9.00, 1),
(2, 2, '2024-10-22 12:03:40', '2024-10-30 12:03:40', 16.00, 3),
(3, 2, '2024-10-05 12:03:40', '2024-10-06 12:03:40', 14.00, 2),
(4, 2, '2024-10-11 12:03:40', '2024-10-18 12:03:40', 5.00, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indeksy dla tabeli `faktura`
--
ALTER TABLE `faktura`
  ADD PRIMARY KEY (`id_faktury`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `fk_autor` (`id_autora`),
  ADD KEY `fk_wydawnictwo` (`id_wydawnictwa`);

--
-- Indeksy dla tabeli `szczegoly_zamowienia`
--
ALTER TABLE `szczegoly_zamowienia`
  ADD KEY `fk_zamowienia` (`id_zamowien`),
  ADD KEY `fk_ksiazki` (`id_ksiazki`);

--
-- Indeksy dla tabeli `wydawnictwo`
--
ALTER TABLE `wydawnictwo`
  ADD PRIMARY KEY (`id_wydawnictwa`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `fk_klient` (`id_klienta`),
  ADD KEY `fk_faktura` (`id_faktury`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `faktura`
--
ALTER TABLE `faktura`
  MODIFY `id_faktury` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wydawnictwo`
--
ALTER TABLE `wydawnictwo`
  MODIFY `id_wydawnictwa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `fk_autor` FOREIGN KEY (`id_autora`) REFERENCES `autor` (`id_autora`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_wydawnictwo` FOREIGN KEY (`id_wydawnictwa`) REFERENCES `wydawnictwo` (`id_wydawnictwa`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `szczegoly_zamowienia`
--
ALTER TABLE `szczegoly_zamowienia`
  ADD CONSTRAINT `fk_ksiazki` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazki` (`id_ksiazki`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_zamowienia` FOREIGN KEY (`id_zamowien`) REFERENCES `zamowienia` (`id_zamowienia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `fk_faktura` FOREIGN KEY (`id_faktury`) REFERENCES `faktura` (`id_faktury`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_klient` FOREIGN KEY (`id_klienta`) REFERENCES `klient` (`id_klienta`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
