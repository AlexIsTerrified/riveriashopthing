-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2019 at 03:41 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `ID` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `action` varchar(100) DEFAULT NULL,
  `date_log` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `creditcard`
--

CREATE TABLE `creditcard` (
  `acc_no` int(11) NOT NULL,
  `acc_name` varchar(30) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `zip_code` int(5) DEFAULT NULL,
  `CC_type` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditcard`
--

INSERT INTO `creditcard` (`acc_no`, `acc_name`, `exp_date`, `pin`, `zip_code`, `CC_type`, `username`) VALUES
(1, 'brvwrbw', '2015-04-01', 3414, 134, 'gwrgw', 'grwgrwg'),
(2, 'brvwrbw', '2015-04-01', 3414, 134, 'gwrgw', 'grwgrwg'),
(3, 'brvwrbw', '2015-04-01', 3414, 134, 'gwrgw', 'grwgrwg'),
(4, 'brvwrbw', '2015-04-01', 3414, 134, 'gwrgw', 'grwgrwg'),
(5, 'brvwrbw', '2015-04-01', 3414, 134, 'gwrgw', 'grwgrwg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Title` varchar(40) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `colour` varchar(25) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `img_url` varchar(100) NOT NULL,
  `date_mod` date NOT NULL,
  `categor` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `DOB` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `accounttype` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `First_name`, `last_name`, `password`, `DOB`, `address`, `phone_no`, `email`, `gender`, `accounttype`) VALUES
(3, 'user1', 'alex', 'moon', 'password', '2000-05-04', 'rbebebte', 'betbebeb', 'flkjenlrbn', 'e', 'a'),
(6, 'user2', 'user', 'wut', 'password', '1998-05-04', 'betbe', 'tneb', 'sjvvnejr', 'm', 'c'),
(7, 'thisuser', 'Alex', 'Moon', 'password', '1995-06-09', 'anvwrvnw', 'dlvslv', 'lrvnlnve', 'm', 'c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `creditcard`
--
ALTER TABLE `creditcard`
  ADD PRIMARY KEY (`acc_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `creditcard`
--
ALTER TABLE `creditcard`
  MODIFY `acc_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
