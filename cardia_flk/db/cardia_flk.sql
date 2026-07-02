-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cardia_flk`
--

-- --------------------------------------------------------

--
-- Table structure for table `predictions`
--

CREATE TABLE `predictions` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `cp` float NOT NULL,
  `trestbps` float NOT NULL,
  `chol` float NOT NULL,
  `fbs` float NOT NULL,
  `restecg` float NOT NULL,
  `thalach` float NOT NULL,
  `exang` float NOT NULL,
  `oldpeak` float NOT NULL,
  `slope` float NOT NULL,
  `ca` float NOT NULL,
  `thal` float NOT NULL,
  `prediction_result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `predictions`
--

INSERT INTO `predictions` (`id`, `name`, `age`, `gender`, `cp`, `trestbps`, `chol`, `fbs`, `restecg`, `thalach`, `exang`, `oldpeak`, `slope`, `ca`, `thal`, `prediction_result`) VALUES
(1, 'sai', 63, '1', 3, 145, 233, 1, 0, 150, 0, 2.3, 0, 0, 1, 'Positive (Heart Disease)'),
(2, 'karthick', 37, '1', 2, 130, 250, 0, 1, 187, 0, 3.5, 0, 0, 2, 'Positive (Heart Disease)'),
(3, 'sridhar', 44, '1', 1, 120, 263, 0, 1, 173, 0, 0, 2, 0, 3, 'Positive (Heart Disease)'),
(4, 'Kumar', 67, '1', 0, 160, 286, 0, 0, 108, 1, 1.5, 1, 3, 2, 'Negative (No Heart Disease)'),
(5, 'deva', 48, '1', 1, 110, 229, 0, 1, 168, 0, 1, 0, 0, 3, 'Negative (No Heart Disease)');

-- --------------------------------------------------------

--
-- Table structure for table `registertable`
--

CREATE TABLE `registertable` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `mob` varchar(12) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registertable`
--

INSERT INTO `registertable` (`id`, `name`, `age`, `gender`, `mob`, `mail`, `username`, `password`) VALUES
(1, 'sai', 34, 'male', '9854715632', 'sai123@gmail.com', 'sai', 'sai'),
(2, 'karthick', 25, 'male', '9856587561', 'karthi123@gmail.com', 'karthi', 'karthi'),
(3, 'sridhar', 44, 'male', '7475758985', 'sri123@gmail.com', 'sri', 'sri'),
(4, 'Kumar', 67, 'male', '9856587568', 'kumar123@gmail.com', 'kumar', 'kumar'),
(5, 'deva', 48, 'male', '9856587511', 'deva123@gmail.com', 'deva', 'deva');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registertable`
--
ALTER TABLE `registertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registertable`
--
ALTER TABLE `registertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
