-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 03:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temp za stip,skopje,strumica`
--

-- --------------------------------------------------------

--
-- Table structure for table `stepenizasedumdenavonedelatashtip`
--

CREATE TABLE `stepenizasedumdenavonedelatashtip` (
  `id` int(11) NOT NULL,
  `Понеделинк` varchar(200) NOT NULL,
  `Вторник` varchar(200) NOT NULL,
  `Среда` varchar(200) NOT NULL,
  `Четврток` varchar(200) NOT NULL,
  `Петок` varchar(200) NOT NULL,
  `Сабота` varchar(200) NOT NULL,
  `Недела` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stepenizasedumdenavonedelatashtip`
--

INSERT INTO `stepenizasedumdenavonedelatashtip` (`id`, `Понеделинк`, `Вторник`, `Среда`, `Четврток`, `Петок`, `Сабота`, `Недела`) VALUES
(1, '21', '16', '12', '10', '9', '14', '20');

-- --------------------------------------------------------

--
-- Table structure for table `stepenizasedumdenavonedelataskopje`
--

CREATE TABLE `stepenizasedumdenavonedelataskopje` (
  `id` int(11) NOT NULL,
  `Понеделинк` varchar(200) NOT NULL,
  `Вторник` varchar(200) NOT NULL,
  `Среда` varchar(200) NOT NULL,
  `Четврток` varchar(200) NOT NULL,
  `Петок` varchar(200) NOT NULL,
  `Сабота` varchar(200) NOT NULL,
  `Недела` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stepenizasedumdenavonedelataskopje`
--

INSERT INTO `stepenizasedumdenavonedelataskopje` (`id`, `Понеделинк`, `Вторник`, `Среда`, `Четврток`, `Петок`, `Сабота`, `Недела`) VALUES
(2, '23', '18', '12', '10', '9', '15', '21');

-- --------------------------------------------------------

--
-- Table structure for table `stepenizasedumdenavonedelatastrumica`
--

CREATE TABLE `stepenizasedumdenavonedelatastrumica` (
  `id` int(11) NOT NULL,
  `Понеделинк` varchar(200) NOT NULL,
  `Вторник` varchar(200) NOT NULL,
  `Среда` varchar(200) NOT NULL,
  `Четврток` varchar(200) NOT NULL,
  `Петок` varchar(200) NOT NULL,
  `Сабота` varchar(200) NOT NULL,
  `Недела` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stepenizasedumdenavonedelatastrumica`
--

INSERT INTO `stepenizasedumdenavonedelatastrumica` (`id`, `Понеделинк`, `Вторник`, `Среда`, `Четврток`, `Петок`, `Сабота`, `Недела`) VALUES
(3, '21', '17', '12', '10', '10', '16', '21');

-- --------------------------------------------------------

--
-- Table structure for table `temperatura za 3 grada`
--

CREATE TABLE `temperatura za 3 grada` (
  `idNaGrad` int(11) NOT NULL,
  `ImeNaGrad` varchar(200) NOT NULL,
  `PostenskiBroj` varchar(200) NOT NULL,
  `slikaGrad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temperatura za 3 grada`
--

INSERT INTO `temperatura za 3 grada` (`idNaGrad`, `ImeNaGrad`, `PostenskiBroj`, `slikaGrad`) VALUES
(1, 'Штип', '2000', 'stip.jpg'),
(2, 'Скопје', '1000', 'skopje.jpg'),
(3, 'Струмица', '2400', 'strumica.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stepenizasedumdenavonedelatashtip`
--
ALTER TABLE `stepenizasedumdenavonedelatashtip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stepenizasedumdenavonedelataskopje`
--
ALTER TABLE `stepenizasedumdenavonedelataskopje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stepenizasedumdenavonedelatastrumica`
--
ALTER TABLE `stepenizasedumdenavonedelatastrumica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temperatura za 3 grada`
--
ALTER TABLE `temperatura za 3 grada`
  ADD PRIMARY KEY (`idNaGrad`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stepenizasedumdenavonedelatashtip`
--
ALTER TABLE `stepenizasedumdenavonedelatashtip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stepenizasedumdenavonedelataskopje`
--
ALTER TABLE `stepenizasedumdenavonedelataskopje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stepenizasedumdenavonedelatastrumica`
--
ALTER TABLE `stepenizasedumdenavonedelatastrumica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temperatura za 3 grada`
--
ALTER TABLE `temperatura za 3 grada`
  MODIFY `idNaGrad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
