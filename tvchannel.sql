-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2019 at 06:17 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tvchannel`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel_ad`
--

CREATE TABLE `channel_ad` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `valid_year` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channel_ad`
--

INSERT INTO `channel_ad` (`id`, `name`, `valid_year`, `duration`) VALUES
(1, 'Dairy Milk', '2022', '3'),
(2, 'Munch', '2021', '90'),
(3, 'Max', '2022', '900'),
(4, 'Sony', '2028', '90');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(100) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `start_time` varchar(100) NOT NULL,
  `amm` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `hour` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `program_name`, `start_time`, `amm`, `duration`, `category`, `day`, `hour`) VALUES
(2, 'bigBoss', '6:00', 'AM', '60', 'Show', '1', '6.0'),
(3, '3 idiot', '4:00', 'PM', '210', 'Movie', '2', '16.0'),
(4, 'Dance India Dance', '3:00', 'PM', '60', 'Show', '3', '15.0'),
(5, 'Doremon', '3:00', 'PM', '60', 'Show', '1', '15.0'),
(6, 'ABP News', '2:00', 'AM', '60', 'News', '1', '2.0');

-- --------------------------------------------------------

--
-- Table structure for table `program_ad`
--

CREATE TABLE `program_ad` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `priority` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_ad`
--

INSERT INTO `program_ad` (`id`, `name`, `program_name`, `duration`, `priority`) VALUES
(1, 'Nike', 'Doremon', '30', '1'),
(2, 'Nike', 'Doremon', '30', '1'),
(3, 'Puma', 'Doremon', '30', '1'),
(4, 'JBL', 'ABP News', '90', '2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `UserType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `UserName`, `Password`, `UserType`) VALUES
(1, 'ad_manager', '123', 'advertisement manager'),
(2, 'pro_manager', '123', 'program manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel_ad`
--
ALTER TABLE `channel_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_ad`
--
ALTER TABLE `program_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channel_ad`
--
ALTER TABLE `channel_ad`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `program_ad`
--
ALTER TABLE `program_ad`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
