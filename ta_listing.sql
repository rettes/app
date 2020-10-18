-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 07, 2020 at 10:18 AM
-- Server version: 8.0.18
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_listing`
--
DROP DATABASE IF EXISTS `ta_listing`;
CREATE DATABASE IF NOT EXISTS `ta_listing`;
USE ta_listing;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `USER_ID` varchar(15) NOT NULL,
  `PASSWORD` varchar(18) NOT NULL,
  `EMAIL` varchar(32) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `APPLICANT_NAME` varchar(30) NOT NULL,
  `APPLICANT_ID` varchar(15) NOT NULL,
  `APPLICATION_NO` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` tinyint(3) NOT NULL,
  `MOD_ID` varchar(5) NOT NULL,
  `PROFESSOR_NAME` varchar(20) NOT NULL,
  `PROFESSOR_ID` varchar(12) NOT NULL,
  PRIMARY KEY (`APPLICATION_NO`),
  KEY `APPLICANT_NAME` (`APPLICANT_NAME`),
  KEY `MOD_ID` (`MOD_ID`),
  KEY `APPLICANT_ID` (`APPLICANT_ID`),
  KEY `PROFESSOR_NAME` (`PROFESSOR_NAME`),
  KEY `PROFESSOR_ID` (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `MOD_ID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MOD_NAME` varchar(30) NOT NULL,
  `POSITIONS_AVAILABLE` int(2) NOT NULL,
  `JOB_SCOPE` varchar(99) NOT NULL,
  `PROFESSOR_ID` varchar(12) NOT NULL,
  PRIMARY KEY (`MOD_ID`),
  KEY `PROFESSOR_ID` (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `PAYMENT_ID` int(4) NOT NULL AUTO_INCREMENT,
  `PAYMENT_AMT` int(3) NOT NULL,
  `PAYMENT_DETAILS` varchar(99) NOT NULL,
  `PAYMENT_DATE` datetime NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
CREATE TABLE IF NOT EXISTS `professors` (
  `PROFESSORS_NAME` varchar(30) NOT NULL,
  `USER_ID` varchar(12) NOT NULL,
  PRIMARY KEY (`PROFESSORS_NAME`,`USER_ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `STUDENT_NAME` varchar(30) NOT NULL,
  `USER_ID` varchar(12) NOT NULL,
  `RESUME` varchar(99) NOT NULL,
  `RATING` float NOT NULL,
  `CURRENT_YEAR` int(11) NOT NULL,
  PRIMARY KEY (`STUDENT_NAME`,`USER_ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_experience`
--

DROP TABLE IF EXISTS `student_experience`;
CREATE TABLE IF NOT EXISTS `student_experience` (
  `STUDENT_ID` varchar(15) NOT NULL,
  `STUDENT_NAME` varchar(30) NOT NULL,
  `EXPERIENCE` text NOT NULL,
  PRIMARY KEY (`STUDENT_ID`,`STUDENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`APPLICANT_NAME`) REFERENCES `students` (`STUDENT_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_3` FOREIGN KEY (`MOD_ID`) REFERENCES `modules` (`MOD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_4` FOREIGN KEY (`APPLICANT_ID`) REFERENCES `students` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_5` FOREIGN KEY (`PROFESSOR_NAME`) REFERENCES `professors` (`PROFESSORS_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_6` FOREIGN KEY (`PROFESSOR_ID`) REFERENCES `professors` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`PROFESSOR_ID`) REFERENCES `professors` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `account` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `account` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `student_experience`
--
ALTER TABLE `student_experience`
  ADD CONSTRAINT `student_experience_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `students` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `student_experience_ibfk_2` FOREIGN KEY (`STUDENT_ID`) REFERENCES `students` (`STUDENT_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
