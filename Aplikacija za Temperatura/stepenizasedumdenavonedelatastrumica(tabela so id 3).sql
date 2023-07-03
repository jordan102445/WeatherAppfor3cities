-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 03:13 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stepenizasedumdenavonedelatastrumica`
--
ALTER TABLE `stepenizasedumdenavonedelatastrumica`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stepenizasedumdenavonedelatastrumica`
--
ALTER TABLE `stepenizasedumdenavonedelatastrumica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
