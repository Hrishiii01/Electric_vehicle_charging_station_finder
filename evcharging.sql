-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 07:32 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `evcharging`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'hrishisarode2001@gmail.com', 'Pass@1234');

-- --------------------------------------------------------

--
-- Table structure for table `chargingstation`
--

CREATE TABLE IF NOT EXISTS `chargingstation` (
`id` int(12) NOT NULL,
  `stationname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `taluka` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `opentime` int(15) NOT NULL,
  `closetime` int(15) NOT NULL,
  `mobile` int(12) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `power` varchar(15) NOT NULL,
  `latitude` int(30) NOT NULL,
  `longitude` int(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `chargingstation`
--

INSERT INTO `chargingstation` (`id`, `stationname`, `address`, `city`, `taluka`, `district`, `opentime`, `closetime`, `mobile`, `pass`, `power`, `latitude`, `longitude`, `status`) VALUES
(4, 'hihindustan', 'at motala', 'motala', 'motala', 'buldana', 2, 4, 123654, 'pass@1234', '5000 Mkv', 0, 0, 'Approved'),
(5, 'etron', 'at shirpur', 'shirpur', 'shirpur', 'buldana', 2, 12, 123456, 'p1234', '20000mah', 0, 0, 'Approved'),
(6, 'hihindustan', 'at motala', 'motala', 'shirpur', 'dhule', 4, 12, 705711, 'p123', '200mah', 0, 0, 'pending'),
(7, 'Hp', 'at shirpur', 'motala', 'motala', 'buldana', 4, 9, 705711, 'Hs@123', '20000mah', 0, 0, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` int(15) NOT NULL,
  `pass` int(12) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `pass`, `city`) VALUES
(1, 'Digvijay Patil', 'dj15@gmail.com', 85522156, 85522156, 'shirpur'),
(2, 'Gopal Patil', 'abc@gmail.com', 123654, 123654, 'buldana'),
(3, 'Digvijay Patil', 'hrishi@gmail.com', 123654, 123654, 'shirpur'),
(4, 'Gopal Patil', 'abc@gmail.com', 705711, 705711, 'buldana'),
(6, 'Gopal Patil', 'gop1371@gmail.com', 705711, 123456, 'buldana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chargingstation`
--
ALTER TABLE `chargingstation`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `chargingstation`
--
ALTER TABLE `chargingstation`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

