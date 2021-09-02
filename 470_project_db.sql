-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 08:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `470_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_time`
--

CREATE TABLE `bus_time` (
  `serial` int(100) NOT NULL,
  `start_point` text NOT NULL,
  `destination` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `seats` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_time`
--

INSERT INTO `bus_time` (`serial`, `start_point`, `destination`, `date`, `time`, `seats`) VALUES
(1, 'Dhaka', 'Khulna', '2021-10-01', '08:00:00', 40),
(2, 'Dhaka', 'Khulna', '2021-10-01', '10:00:00', 40),
(3, 'Dhaka', 'Khulna', '2021-10-01', '13:00:00', 40),
(4, 'Dhaka', 'Khulna', '2021-10-01', '18:00:00', 40),
(5, 'Dhaka', 'Khulna', '2021-10-01', '23:00:00', 40),
(6, 'Khulna', 'Dhaka', '2021-10-01', '08:00:00', 40),
(7, 'Khulna', 'Dhaka', '2021-10-01', '10:00:00', 40),
(8, 'Khulna', 'Dhaka', '2021-10-01', '13:00:00', 40),
(9, 'Khulna', 'Dhaka', '2021-10-01', '18:00:00', 40),
(10, 'Khulna', 'Dhaka', '2021-10-01', '23:00:00', 40),
(11, 'Dhaka', 'Sylhet', '2021-10-01', '08:00:00', 40),
(12, 'Dhaka', 'Sylhet', '2021-10-01', '10:00:00', 40),
(13, 'Dhaka', 'Sylhet', '2021-10-01', '13:00:00', 40),
(14, 'Dhaka', 'Sylhet', '2021-10-01', '18:00:00', 40),
(15, 'Dhaka', 'Sylhet', '2021-10-01', '23:00:00', 40),
(16, 'Sylhet', 'Dhaka', '2021-10-01', '08:00:00', 40),
(17, 'Sylhet', 'Dhaka', '2021-10-01', '10:00:00', 40),
(18, 'Sylhet', 'Dhaka', '2021-10-01', '13:00:00', 40),
(19, 'Sylhet', 'Dhaka', '2021-10-01', '18:00:00', 40),
(20, 'Sylhet', 'Dhaka', '2021-10-01', '23:00:00', 40),
(21, 'Dhaka', 'Cox`s Bazar', '2021-10-01', '08:00:00', 40),
(22, 'Dhaka', 'Cox`s Bazar', '2021-10-01', '13:00:00', 40),
(23, 'Dhaka', 'Cox`s Bazar', '2021-10-01', '23:00:00', 40),
(24, 'Cox`s Bazar', 'Dhaka', '2021-10-01', '08:00:00', 40),
(25, 'Cox`s Bazar', 'Dhaka', '2021-10-01', '13:00:00', 40),
(26, 'Cox`s Bazar', 'Dhaka', '2021-10-01', '23:00:00', 40);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `sno` int(255) NOT NULL,
  `name` varchar(90) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `ticket_info` int(100) DEFAULT NULL,
  `seat_quantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`sno`, `name`, `email`, `phone`, `address`, `password`, `ticket_info`, `seat_quantity`) VALUES
(1, 'Arpan', 'arpandas21@gmail.com', 1976699963, 'dhaka', 'abir', 11, 2),
(2, 'Tanvir', 'tanvir@gmail.com', 1598647219, 'Mymensingh', 'mota', 2, 3),
(3, 'James', 'unknown007@gmail.com', 1007007007, 'Unknown', 'bond', NULL, 0),
(4, 'John', 'babayega@yahoo.com', 1942182554, 'Sylhet', 'puppy', NULL, 0),
(5, 'Ananta', 'possible@gmail.com', 1812481972, 'Khulna', 'possible', NULL, 0),
(6, 'Kal', 'krypton@gmail.com', 1976699962, 'Dhaka', 'lois', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_time`
--
ALTER TABLE `bus_time`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `ticket_info` (`ticket_info`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_time`
--
ALTER TABLE `bus_time`
  MODIFY `serial` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`ticket_info`) REFERENCES `bus_time` (`Serial`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
