-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2021 at 04:33 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

-- Part of Nature and Pet Store
-- Copyright (c) 2021 James Quinlan

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Store`
--

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetails`
--

CREATE TABLE `OrderDetails` (
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `OrderDetails`
--

INSERT INTO `OrderDetails` (`order`, `product`, `qty`) VALUES
(1, 3801, 1),
(1, 7358, 1),
(1, 11734, 2),
(2, 2200, 1),
(2, 2695, 1),
(3, 11581, 2),
(4, 10760, 1),
(5, 4512, 2),
(6, 6293, 1),
(7, 6480, 1),
(8, 6411, 2),
(9, 3017, 1),
(9, 8136, 3),
(9, 9911, 1),
(10, 8144, 1),
(10, 11495, 1),
(11, 5522, 1),
(12, 3764, 1),
(13, 3656, 1),
(14, 2940, 2),
(15, 2591, 1),
(15, 9862, 2),
(16, 6281, 2),
(17, 5841, 1),
(18, 3901, 1),
(18, 11884, 2),
(19, 9079, 2),
(19, 9920, 1),
(20, 2767, 1),
(20, 2942, 2),
(21, 9872, 2),
(22, 2541, 2),
(22, 2591, 1),
(22, 9272, 2),
(23, 5841, 1),
(23, 6261, 2),
(23, 11884, 2),
(24, 3901, 1),
(24, 9079, 2),
(25, 9920, 1),
(26, 2767, 1),
(27, 10165, 1),
(28, 11203, 2),
(29, 7553, 1),
(30, 6435, 1),
(31, 9900, 1),
(32, 7747, 2),
(33, 4685, 1),
(34, 6866, 1),
(35, 8305, 1),
(35, 11671, 1),
(36, 11157, 2),
(37, 11381, 1),
(38, 9597, 1),
(38, 11170, 1),
(39, 2881, 1),
(40, 4500, 1),
(41, 11315, 1),
(42, 3201, 1),
(42, 7596, 1),
(42, 7720, 2),
(43, 3897, 1),
(44, 9991, 1),
(45, 2658, 1),
(46, 1021, 1),
(47, 3875, 1),
(48, 5802, 1),
(49, 1625, 1),
(50, 8586, 1),
(51, 3287, 1),
(52, 9302, 1),
(53, 2799, 1),
(54, 4013, 1),
(54, 4617, 1),
(55, 9290, 2),
(56, 10829, 1),
(57, 8926, 1),
(58, 9966, 1),
(59, 6115, 1),
(60, 11499, 1),
(61, 1986, 1),
(62, 4151, 1),
(63, 5659, 1),
(64, 6939, 1),
(65, 9195, 1),
(66, 3899, 1),
(67, 8582, 1),
(67, 10693, 1),
(68, 7667, 1),
(69, 4561, 2),
(70, 4626, 2),
(71, 7042, 1),
(72, 3533, 1),
(73, 3231, 2),
(74, 2658, 1),
(74, 6270, 1),
(74, 10065, 1),
(74, 10190, 1),
(74, 11352, 1),
(75, 4232, 1),
(76, 3434, 1),
(77, 8426, 1),
(78, 3533, 1),
(79, 3231, 2),
(80, 10190, 1),
(81, 1352, 1),
(81, 2655, 1),
(81, 6273, 1),
(82, 3434, 1),
(82, 4232, 1),
(82, 10065, 1),
(83, 8425, 1),
(84, 10165, 1),
(85, 11203, 2),
(86, 7553, 1),
(87, 6435, 1),
(87, 7747, 2),
(87, 9900, 1),
(88, 4685, 4),
(89, 6866, 3),
(89, 8305, 1),
(90, 11671, 1),
(91, 2940, 1),
(92, 9862, 1),
(93, 2591, 1),
(94, 6281, 1),
(95, 5841, 1),
(95, 11884, 1),
(96, 3901, 1),
(96, 9079, 1),
(96, 9920, 1),
(97, 2767, 1),
(98, 1003, 1),
(99, 1010, 1),
(100, 1005, 1),
(101, 1001, 2),
(102, 1004, 2),
(103, 1009, 1),
(104, 1002, 2),
(105, 1010, 1),
(106, 1001, 1),
(107, 1008, 1),
(108, 1003, 1),
(108, 1953, 1),
(108, 4534, 1),
(108, 6345, 1),
(109, 1004, 2),
(109, 1958, 1),
(110, 1016, 1),
(110, 1955, 1),
(111, 1007, 1),
(111, 1955, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD PRIMARY KEY (`order`,`product`),
  ADD KEY `product` (`product`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD CONSTRAINT `order` FOREIGN KEY (`order`) REFERENCES `Orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product` FOREIGN KEY (`product`) REFERENCES `Products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
