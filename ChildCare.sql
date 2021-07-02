-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 21, 2018 at 01:38 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS CHILDCARE;

use CHILDCARE;

DROP TABLE IF EXISTS tblRoom;
DROP TABLE IF EXISTS tblChild;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `childcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblchild`
--

CREATE TABLE `tblchild` (
  `fldFirst_Name` varchar(20) NOT NULL,
  `fldLast_Name` varchar(20) NOT NULL,
  `fldRoom_Name` varchar(10) DEFAULT NULL,
  `fldBOD` date NOT NULL,
  `fldBase_Fee` decimal(7,2) DEFAULT NULL,
  `fldDays` smallint(6) DEFAULT NULL,
  `fldSpecialCare` tinyint(1) DEFAULT NULL,
  `fldFood` tinyint(1) DEFAULT NULL,
  `fldPgm_Gymnastics` tinyint(1) DEFAULT NULL,
  `fldPgm_Swim` tinyint(1) DEFAULT NULL,
  `fldPgm_Cooking` tinyint(1) DEFAULT NULL,
  `fldPgm_Music` tinyint(1) DEFAULT NULL,
  `fldPgm_Painting` tinyint(1) DEFAULT NULL,
  `fldGuard1_First_Name` varchar(20) NOT NULL,
  `fldGuard1_Last_Name` varchar(20) NOT NULL,
  `fldGuard1_Email` varchar(25) DEFAULT NULL,
  `fldGuard1_Phone` varchar(25) DEFAULT NULL,
  `fldGuard1_Relationship` varchar(25) DEFAULT NULL,
  `fldGuard2_First_Name` varchar(20) NOT NULL,
  `fldGuard2_Last_Name` varchar(20) NOT NULL,
  `fldGuard2_Email` varchar(25) DEFAULT NULL,
  `fldGuard2_Phone` varchar(25) DEFAULT NULL,
  `fldGuard2_Relationship` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblchild`
--

INSERT INTO `tblchild` (`fldFirst_Name`, `fldLast_Name`, `fldRoom_Name`, `fldBOD`, `fldBase_Fee`, `fldDays`, `fldSpecialCare`, `fldFood`, `fldPgm_Gymnastics`, `fldPgm_Swim`, `fldPgm_Cooking`, `fldPgm_Music`, `fldPgm_Painting`, `fldGuard1_First_Name`, `fldGuard1_Last_Name`, `fldGuard1_Email`, `fldGuard1_Phone`, `fldGuard1_Relationship`, `fldGuard2_First_Name`, `fldGuard2_Last_Name`, `fldGuard2_Email`, `fldGuard2_Phone`, `fldGuard2_Relationship`) VALUES
('Boris', 'Boris', 'Room 1', '2016-01-01', '100.00', 4, 1, 1, NULL, NULL, NULL, NULL, NULL, 'B', 'B', 'b@b.com', '123', 'Mother', 'F', 'F', 'c@c.com', '123', 'Father'),
('Huiyoung', 'Chung', 'Room 3', '2014-08-27', '100.00', 2, 0, 1, NULL, NULL, NULL, NULL, NULL, 'Youngju', 'Ahn', 'ahnyoungju@gmail.com', '0451165969', 'Mother', 'Jongbo', 'Chung', 'jongbo.chung@gmail.com', '0451111', 'Father'),
('Jongbo', 'Chung', 'Room 4', '2014-09-12', '30.00', NULL, NULL, NULL, 1, 1, 0, 0, 0, 'Jongbo', 'Chung', 'jong@gmail.com', '0123456789', 'Mother', '', '', '', '', 'Father'),
('Mary', 'Smith', 'Room 1', '2017-02-10', '30.00', NULL, NULL, NULL, 1, 1, 1, 1, 1, 'Mom', 'Smith', 'mom@com', '0451111111', 'Mother', 'Dad', 'Smith', 'dad@com', '0451111111', 'Father'),
('Tom', 'Jimmy', 'Room 3', '2015-06-19', '30.00', NULL, NULL, NULL, 1, 0, 0, 1, 1, 'Tom', 'Jim', 'abc@abc.com', '1234567890', 'Mother', '', '', '', '', 'Father'),
('Tommy', 'Smith', 'Room 0', '2014-01-01', '100.00', 2, 0, 1, NULL, NULL, NULL, NULL, NULL, 'Suzanna', 'Smith', 'abc@test.com', '0123', 'Mother', 'Tom', 'Smith', 'abc@test.com', '1234', 'Father'),
('Toshiki', 'Moris', 'Room 1', '2015-08-27', '30.00', NULL, NULL, NULL, 1, 1, 1, 1, 1, 'To', 'M', 'a@b.com', '112', 'Mother', 'To', 'M', 'a@b.com', '123', 'Father'),
('Young', 'Young', 'Room 3', '2014-07-27', '30.00', NULL, NULL, NULL, 1, 0, 1, 0, 0, 'Youngju', 'Youngju', '', '', 'Mother', 'Jong', 'Jong', '', '', 'Father');

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `fldName` varchar(10) NOT NULL,
  `fldManager` varchar(30) NOT NULL,
  `fldDescription` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`fldName`, `fldManager`, `fldDescription`) VALUES
('Room 0', 'Jennifer', 'For Under 12 Months'),
('Room 1', 'Youngju', '12 Month ~ Under 2 Year'),
('Room 2', 'Agnes', 'For 2 Years'),
('Room 3', 'Toshiki', 'Under 3 Years'),
('Room 4', 'Hillary', 'Under 4 years'),
('Room 5', 'Kristine', 'This room is for children after school');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblchild`
--
ALTER TABLE `tblchild`
  ADD PRIMARY KEY (`fldFirst_Name`,`fldLast_Name`,`fldBOD`),
  ADD KEY `tblChild_Class_Fk` (`fldRoom_Name`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`fldName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblchild`
--
ALTER TABLE `tblchild`
  ADD CONSTRAINT `tblChild_Class_Fk` FOREIGN KEY (`fldRoom_Name`) REFERENCES `tblroom` (`fldName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
