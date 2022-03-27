-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 08:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `ACC_ID` int(5) NOT NULL,
  `ACC_NAME` varchar(20) DEFAULT NULL,
  `ACC_INWARD` int(5) DEFAULT NULL,
  `ACC_BUY_RATE` int(5) DEFAULT NULL,
  `ACC_OUTWARD` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`ACC_ID`, `ACC_NAME`, `ACC_INWARD`, `ACC_BUY_RATE`, `ACC_OUTWARD`) VALUES
(1, 'Touch Screen', 100, 28, 6),
(2, 'Board', 256, 98, 121),
(3, 'Speaker', 157, 37, 18),
(4, 'Microphone', 118, 75, 17),
(5, 'Bluetooth', 342, 156, 234);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `B_ID` int(5) NOT NULL,
  `B_NAME` varchar(20) DEFAULT NULL,
  `B_SERVICES` varchar(20) DEFAULT NULL,
  `B_ACCESSORIES` varchar(20) DEFAULT NULL,
  `B_PRICE` int(5) DEFAULT NULL,
  `B_UNITS` int(5) DEFAULT NULL,
  `B_AMOUNT` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`B_ID`, `B_NAME`, `B_SERVICES`, `B_ACCESSORIES`, `B_PRICE`, `B_UNITS`, `B_AMOUNT`) VALUES
(1, 'Jonty', 'Maintenance', 'Bluetooth', 210, 1, 210),
(2, 'Carlson', 'Maintenance', 'Touch Screen', 100, 1, 100),
(3, 'Hudson', 'Maintenance', 'Micro Phone', 150, 1, 150),
(4, 'Candela', 'Maintenance', 'Speaker', 120, 1, 120),
(5, 'Dave', 'Maintenance', 'Board', 150, 1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CUST_ID` int(5) NOT NULL,
  `CUST_NAME` varchar(20) DEFAULT NULL,
  `CUST_PHONE` int(5) DEFAULT NULL,
  `CUST_DEVICE` varchar(20) DEFAULT NULL,
  `CUST_UNITS` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CUST_ID`, `CUST_NAME`, `CUST_PHONE`, `CUST_DEVICE`, `CUST_UNITS`) VALUES
(1, 'Daniel', 123456, 'Samsung G3', 1),
(2, 'Ruban', 345678, 'Iphone', 2),
(3, 'Lourd Raj', 567844, 'Motorola V6', 1),
(4, 'Stella', 764533, 'Ericsson', 1),
(5, 'Phillips', 967956, 'Nokia', 2);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `DEV_ID` int(5) NOT NULL,
  `DEV_MAKE` varchar(20) DEFAULT NULL,
  `DEV_MODEL` varchar(20) DEFAULT NULL,
  `DEV_VERSION` varchar(20) DEFAULT NULL,
  `DEV_ACCSSORIES` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`DEV_ID`, `DEV_MAKE`, `DEV_MODEL`, `DEV_VERSION`, `DEV_ACCSSORIES`) VALUES
(1, 'Apple', 'I6', '2', 'Speaker'),
(2, 'Samsung', 'g3', '9.1', 'Display'),
(3, 'Ericson', 'e7', '3.2', 'Bluetooth'),
(4, 'Samsung', 'g3', '9.1', 'Micro Phone'),
(5, 'Oppo', 'o4', '3.2', 'Camera');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `STR_TECH_NAME` varchar(20) NOT NULL,
  `STR_TECH_ID` int(5) DEFAULT NULL,
  `STR_TECH_ROLE` varchar(20) DEFAULT NULL,
  `STR_TECH_EXP` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`STR_TECH_NAME`, `STR_TECH_ID`, `STR_TECH_ROLE`, `STR_TECH_EXP`) VALUES
('Alice', 1, 'Technician', 'Mobiles'),
('Charlie', 4, 'Assembler', 'Mobiles'),
('Donald', 2, 'Supervisor', 'Tablets'),
('Johnson', 3, 'Technician', 'Tablets'),
('Phantom', 5, 'Grader', 'Mobiles');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`ACC_ID`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`DEV_ID`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`STR_TECH_NAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `ACC_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `B_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CUST_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `DEV_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
