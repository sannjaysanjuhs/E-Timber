-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 08:03 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etimb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auctiondata`
--

CREATE TABLE `auctiondata` (
  `circle` varchar(30) DEFAULT NULL,
  `division` varchar(30) DEFAULT NULL,
  `depot` varchar(30) DEFAULT NULL,
  `adate` varchar(30) DEFAULT NULL,
  `lots` varchar(30) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auctiondata`
--

INSERT INTO `auctiondata` (`circle`, `division`, `depot`, `adate`, `lots`, `amount`, `aid`) VALUES
('Banglore', 'Rural', 'Hubli', '12/02/2020', '100', 3200, 1),
('Banglore', 'Rural', 'Hubli', 'null', '100', 3200, 2),
('shimoga', 'hosanagar', 'shimoga road', '15/06/2020', '150', 500000, 3),
('shimoga', 'hosanagara', 'zz road', '15/06/2020', '100', 200000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `circle` varchar(30) DEFAULT NULL,
  `division` varchar(30) DEFAULT NULL,
  `depot` varchar(30) DEFAULT NULL,
  `lots` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `bstatus` varchar(30) DEFAULT NULL,
  `bidid` int(11) NOT NULL,
  `bname` varchar(30) DEFAULT NULL,
  `biderid` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`circle`, `division`, `depot`, `lots`, `amount`, `bstatus`, `bidid`, `bname`, `biderid`) VALUES
('Banglore', 'Rural', 'Hubli', 100, 1000, 'Accepted', 3, 'Naveen HP', '5'),
('shimoga', 'hosanagar', 'shimoga road', 150, 500000, 'Rejected', 4, 'Pooja', '6'),
('shimoga', 'hosanagara', 'zz road', 100, 300000, 'Accepted', 5, 'Sanjay', '7');

-- --------------------------------------------------------

--
-- Table structure for table `bidderreg`
--

CREATE TABLE `bidderreg` (
  `bname` varchar(30) DEFAULT NULL,
  `bemail` varchar(30) DEFAULT NULL,
  `bphone` varchar(30) DEFAULT NULL,
  `bpwd` varchar(30) DEFAULT NULL,
  `bcpwd` varchar(30) DEFAULT NULL,
  `regfee` int(11) DEFAULT NULL,
  `bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidderreg`
--

INSERT INTO `bidderreg` (`bname`, `bemail`, `bphone`, `bpwd`, `bcpwd`, `regfee`, `bid`) VALUES
('Naveen HP', 'naveenhp158@gmail.com', '+919632299470', 'null', 'null', 2500, 1),
('Naveen HP', 'naveenhp158@gmail.com', '+919632299470', 'null', 'null', 2500, 2),
('Naveen HP', 'naveenhp158@gmail.com', 'sdrtyu', 'null', 'null', 25000, 3),
('Naveen HP', 'naveenhp158@gmail.com', '+919632299470', 'fgdgrehhhhhhhht', 'esgregter', 2500, 4),
('Naveen HP', 'naveenhp158@gmail.com', '+919632299470', 'w3ewwr', 'qwrqwrq', 2500, 5),
('Pooja', 'pooja@gmail.com', '8523697412', '123456', '123456', 1000, 6),
('Sanjay', 'sanjay123@gmail.com', '+919632299470', 'sa123', 'sa123', 1000, 7),
('sdsds', 'sdasd', '23234234234', 'sdasd', 'adsasd', 23, 8);

-- --------------------------------------------------------

--
-- Table structure for table `hauler`
--

CREATE TABLE `hauler` (
  `hid` int(11) NOT NULL,
  `hname` varchar(30) DEFAULT NULL,
  `hemail` varchar(30) DEFAULT NULL,
  `hphone` varchar(30) DEFAULT NULL,
  `hcity` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `cpwd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hauler`
--

INSERT INTO `hauler` (`hid`, `hname`, `hemail`, `hphone`, `hcity`, `pwd`, `cpwd`) VALUES
(1, 'Naveen HP', 'naveenhp158@gmail.com', '+919632299470', 'shivamogga', '123456', '123456'),
(2, 'Afridi', 'afridi@gmail.com', '+919632299470', 'shivamogga', 'af123', 'af123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auctiondata`
--
ALTER TABLE `auctiondata`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`bidid`);

--
-- Indexes for table `bidderreg`
--
ALTER TABLE `bidderreg`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `hauler`
--
ALTER TABLE `hauler`
  ADD PRIMARY KEY (`hid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auctiondata`
--
ALTER TABLE `auctiondata`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `bidid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bidderreg`
--
ALTER TABLE `bidderreg`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hauler`
--
ALTER TABLE `hauler`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
