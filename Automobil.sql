-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2023 at 02:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Automobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `Prodaja`
--

CREATE TABLE `Prodaja` (
  `id` int(5) NOT NULL,
  `datum` date NOT NULL,
  `cena` double NOT NULL,
  `kolicina` int(11) NOT NULL,
  `prodavac_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prodaja`
--

INSERT INTO `Prodaja` (`id`, `datum`, `cena`, `kolicina`, `prodavac_id`) VALUES
(1, '2023-01-01', 1000, 1, 1),
(2, '2022-01-01', 3500, 1, 1),
(3, '2006-01-01', 3500, 1, 3),
(4, '2022-01-01', 10500, 2, 1),
(5, '2023-04-10', 22500, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Prodavac`
--

CREATE TABLE `Prodavac` (
  `id` int(5) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `auto` varchar(20) NOT NULL,
  `boja` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prodavac`
--

INSERT INTO `Prodavac` (`id`, `ime`, `prezime`, `auto`, `boja`) VALUES
(1, 'Marko', 'Pavlovic', 'Bmw', 'crvena'),
(2, 'Stefan', 'Ilic', 'Golf', 'zuta'),
(3, 'Jovan', 'Ilic', 'Golf', 'zelena'),
(4, 'Ana', 'Ilic', 'Skoda', 'bela'),
(5, 'Jelen', 'Ilic', 'Golf', 'zuta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodavac_id` (`prodavac_id`);

--
-- Indexes for table `Prodavac`
--
ALTER TABLE `Prodavac`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Prodaja`
--
ALTER TABLE `Prodaja`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Prodavac`
--
ALTER TABLE `Prodavac`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD CONSTRAINT `prodaja_ibfk_1` FOREIGN KEY (`prodavac_id`) REFERENCES `Prodavac` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
