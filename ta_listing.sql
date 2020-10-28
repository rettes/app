-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 18, 2020 at 01:57 PM
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
CREATE DATABASE IF NOT EXISTS `ta_listing` DEFAULT CHARACTER SET utf8_general_ci COLLATE utf8mb4_0900_ai_ci;
USE `ta_listing`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `USER_ID` varchar(15) NOT NULL,
  `HASHED_PASSWORD` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMAIL` varchar(32) NOT NULL,
  `USER_TYPE` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`USER_ID`, `HASHED_PASSWORD`, `EMAIL`, `USER_TYPE`) VALUES
('admin', '6195c50590ea85adc6a1735508e173ecbf410a4765ea303addeafd33d6b7fe5d95d0916dd6efb652f3aab2da04595c9478896e82ec5b7f330e5f268ec7b19038df3eca9d40cdcc0a8436adf4928b06fcb6b82612ec60a9b516205e397c8c43e1', 'admin@smu.edu.sg', 'admin'),
('cposkitt', '81863954779856f60c6252a1858f8e6b12aa7c69cf7f581e3611d28ebe62b87b90b0d8ef8846025022e092525bea4b1232c072c301077baaf8e2ab9fc056aa3752914022f5f772b3886a8ecf9a0bdf56cfbc4ed1a778b0bc478c01b39abf385f', 'cposkitt@smu.edu.sg', 'professor'),
('davidlo', '3a776eabfa2973b0cc6603fa1e37c80556da0d5dfb8e78cc0a83b2ffe962db121efc736b91bbcd0d4a1f267e12a6357ed794c5e813b95b30e0b0e33493be1aa4428cc6e96bceef8b24f4a9ce48b30081d4ebb1c3797615d860cba1e74eeb4878', 'davidlo@smu.edu.sg', 'professor'),
('elouh', 'd938dfa6b07a7b470cef62a0bdadfc6da6071cad9f1228e283cf9c25b4ae3dbd11ca717445f61c8970d99f194982251f57198e484671b47e3c430065227b0af7ccc92da82e754b1da1587779ea216b11f341d01d22495ad20692b2000a27dcb6', 'elouh@smu.edu.sg', 'professor'),
('john.2017', '6032d61f9bceb2f4870b1b97aca9e639bc2f85323aeb4539ceab38c7066a7ba6c25540014b2ba0417fb936719a71da8afa09cd10e9c46b5268c3c16a74461c0633f11d6267e99b80ee135c273750a45dfde536e13a5e9d2891a5bc2166c1b082', 'john.2017@sis.smu.edu.sg', 'student'),
('junsun', 'b7147cd5a8d2eb1331fc44c7b0f3fd895bd0ae776ac87222ec53e76ce826edabf547221b4ebce30a655aa322c4e06554886923f4150b659225d1d9d3e8ff816bce6020c104b0695f88df9286f29669c7daec012490da6f345870492640c569fc', 'junsun@smu.edu.sg', 'professor'),
('kjshim', 'a04995817b2706e0988472580ddacea3a8b7a5d98b4d50656d3c6dc9d62ff529e6ee417f3705cbf27ef0368442540afdb6ac57e87ae5bc31359461406350f969661224fe75e4db4b059bf92df244af7883aee79934df0419ed474ae4afca1810', 'kjshim@smu.edu.sg', 'professor'),
('lkshar', '523d30080dd5507d8ab184a1450b0d8f22fae7765428db4fd486c0496a76eecbf8013ca9fb19f2f1fde23d63cc8c55ef8e1dbd2b5e607a486c293e39e2c9ada4557f5cc1abf47e61b95fda4d28ad098400b3933c3f562b49012fdb050bd36d6f', 'lkshar@smu.edu.sg', 'professor'),
('lxjiang', '876a912c9cfe1fe4f07dacb7b5f9f7d5437aad27d2619e1b374c1f95aae590bb4c590c90d5dc9ab168798bf62e3e39d85c72e3e52d1b9e3396d9a6d22e091ff8e2f8de84d316fc9e11825b9e14c80350598957788c892c999beb1c6f9d2eed92', 'lxjiang@smu.edu.sg', 'professor'),
('mary.2018', 'de10d109b13dc22c0b7f82bc30c003bba8731ceadb35f87d8dbe044217c98ec6a7c31c764497f923630f7f61309f742e41a2fc9352b76edbe8113a8d9da02d501842958e8bd66a1922902206ecbf3429395bb510dcfbb7f37d9feb257c1e0233', 'mary.2018@sis.smu.edu.sg', 'student'),
('rafaelbarros', 'd3965b4703cb1535aa0d639f93d8b7903b03e9f70ea06f2730edbf18fcf437a5dd687c97010c9c653dfb017ed34e1bf3ac90cd2e79f26325d633599a513720caa54e571e17df95f58f8fde5cafc53022594232e2e0d4e1adb2510a0f0d52cc40', 'rafaelbarros@smu.edu.sg', 'professor'),
('rajesh', 'd70186a357feb175bf40a0777e3d8e26208e8087a562555d6e2179a0bff697a766f1c6c559ea879fe4e1b1269ab9dd3f55ca160b4e20ff947b01c4697d1eda4e7d1a27a986ac5172762e890ac405d288aeb2d07d9778a1ba4158f0507510c374', 'rajesh@smu.edu.sg', 'professor'),
('subhajitd', '769b3f501ba0757888a4e796fa563a2c21b6c4b5587e7e27fcdb29d57b2d482c9bb42101e9193456b30f9621abefbd17ffb9a937f1505b325dd4ef678f30d7f7', 'subhajitd@smu.edu.sg', 'professor'),
('swapnag', 'bc790da13442713b1e30edfbe1d82f36ddb819472588a6d789672d0e2b78401b24639bfdb2581aae76d9d9a244981229a07ecd9475d90e69b47380e3f1f82f13a20703110cc9347c98389552845f3ea7ae1e287671a71e778342e7a987d3727d', 'swapnag@smu.edu.sg', 'professor'),
('tom.2017', '16d89caa318c2b9b028cf81366d227a4fb77c02f3ec20bc27f24c64ebfc3a7b230be6a2e6e37c4b171df115ccc6a01294dae073c2c586f4057c319b4af371b003d8d27e69f37547f90e4f68c07718a422f9af24ab00ca086a594e19a169ea51d', 'tom.2017@sis.smu.edu.sg', 'student'),
('xiaohua.2017', '0132459b8c839ec5acdb534f70d4969dff5bcf791770eb87c4907e8c7ee96e7db2942087f19f9f341e48a0e47cddc9ce8b4c0da7b2f2835b52a15a3438fb24f9cc30950521a385dc98c6881375ffe2f87646d02bd6d0e7e8e8be8431aac89340', 'xiaohua.2017@soe.smu.edu.sg', 'student'),
('xiaoli.2018', '5749ace379ba5565d6f46de5f78f2e3b3578b9846cb54668275c79e67d60a98c1ca2b7af5dc2e1b46d1e0fd728638b3ff34d60b19d227129cb12f3266270084562730453115330b1b800c20fd68cce4076d80ec8ae344f2b914bd7f0abad3c77', 'xiaoli.2018@soe.smu.edu.sg', 'student'),
('yllee', '59df546881c02be09c1f5b495c0ce5c1eeb276534d04c8ebca287d54aa8a504e9976c44f5cdbc2d56c2d511de0f1ebc93982829e2d8495e5b357fd50307df817b6f20549c6d2a7007abbdc1f362ceb8b4da4acb510e9fe5c05fd7b5d4d7450f7', 'yllee@smu.edu.sg', 'professor');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `STUDENT_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STUDENT_ID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `APPLICATION_NO` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` tinyint(3) NOT NULL,
  `MOD_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PROFESSOR_NAME` varchar(20) NOT NULL,
  `PROFESSOR_ID` varchar(12) NOT NULL,
  PRIMARY KEY (`APPLICATION_NO`),
  KEY `APPLICANT_NAME` (`STUDENT_NAME`),
  KEY `MOD_ID` (`MOD_ID`),
  KEY `APPLICANT_ID` (`STUDENT_ID`),
  KEY `PROFESSOR_NAME` (`PROFESSOR_NAME`),
  KEY `PROFESSOR_ID` (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`STUDENT_NAME`, `STUDENT_ID`, `APPLICATION_NO`, `STATUS`, `MOD_ID`, `PROFESSOR_NAME`, `PROFESSOR_ID`) VALUES
('Mary Lim', 'mary.2018', 1, 2, 'IS442_2019_2_G1', 'Rajesh Krishna BALAN', 'rajesh'),
('Xiao Li', 'xiaoli.2018', 2, 2, 'IS212_2019_2_G1', 'LEE Yeow Leong', 'yllee'),
('Tom Lee', 'tom.2017', 3, 1, 'IS216_2020_1_G3', 'SUN Jun', 'junsun'),
('Xiao Hua', 'xiaohua.2017', 4, 3, 'IS216_2020_1_G3', 'SUN Jun', 'junsun'),
('Mary Lim', 'mary.2018', 5, 2, 'IS216_2020_1_G1', 'Chris POSKITT', 'cposkitt'),
('John Tan', 'john.2017', 6, 1, 'IS216_2020_1_G1', 'Chris POSKITT', 'cposkitt'),
('Tom Lee', 'tom.2017', 7, 2, 'IS211_2020_1_G1', 'OUH Eng Lieh', 'elouh'),
('Xiao Hua', 'xiaohua.2017', 8, 3, 'IS113_2020_1_G1', 'David LO', 'davidlo');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `MOD_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MOD_NAME` varchar(30) NOT NULL,
  `POSITIONS_AVAILABLE` int(2) NOT NULL,
  `JOB_SCOPE` varchar(99) NOT NULL,
  `PROFESSOR_NAME` varchar(30) NOT NULL,
  `PROFESSOR_ID` varchar(12) NOT NULL,
  PRIMARY KEY (`MOD_ID`),
  KEY `PROFESSOR_ID` (`PROFESSOR_ID`),
  KEY `PROFESSOR_NAME` (`PROFESSOR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`MOD_ID`, `MOD_NAME`, `POSITIONS_AVAILABLE`, `JOB_SCOPE`, `PROFESSOR_NAME`, `PROFESSOR_ID`) VALUES
('CS301_2020_1_G1', 'IT Solution Architecture', 1, 'TA', 'OUH Eng Lieh', 'elouh'),
('IS105_2020_1_G1', 'Business Data Management', 4, 'TA', 'Subhajit DATTA', 'subhajitd'),
('IS113_2020_1_G1', 'Web Application Development I', 3, 'TA', 'David LO', 'davidlo'),
('IS210_2020_1_G1', 'Business Process Analysis and ', 2, 'TA', 'Rafael J. BARROS', 'rafaelbarros'),
('IS210_2020_1_G2', 'Business Process Analysis and ', 3, 'TA', 'Swapna GOTTIPATI', 'swapnag'),
('IS211_2020_1_G1', 'Interaction Design & Prototypi', 2, 'TA', 'OUH Eng Lieh', 'elouh'),
('IS212_2019_2_G1', 'Software Project Management', 1, 'TA', 'Rajesh Krishna BALAN', 'rajesh'),
('IS213_2020_1_G1', 'Enterprise Solution Developmen', 3, 'TA', 'JIANG Lingxiao', 'lxjiang'),
('IS216_2020_1_G1', 'Web Application Development 2', 2, 'TA', 'Chris POSKITT', 'cposkitt'),
('IS216_2020_1_G2', 'Web Application Development 2', 2, 'TA', 'Kyong Jin SHIM', 'kjshim'),
('IS216_2020_1_G3', 'Web Application Development 2', 2, 'TA', 'SUN Jun', 'junsun'),
('IS216_2020_1_G4', 'Web Application Development 2', 2, 'TA', 'SHAR Lwin Khin', 'lkshar'),
('IS442_2019_2_G1', 'Object Oriented Programming', 1, 'TA', 'LEE Yeow Leong', 'yllee');

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
  `MOD_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STUDENT_ID` varchar(15) NOT NULL,
  `PROFESSOR_ID` varchar(15) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`,`MOD_ID`,`STUDENT_ID`,`PROFESSOR_ID`),
  KEY `payments_ibfk_1` (`PROFESSOR_ID`),
  KEY `STUDENT_ID` (`STUDENT_ID`),
  KEY `MOD_ID` (`MOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PAYMENT_ID`, `PAYMENT_AMT`, `PAYMENT_DETAILS`, `PAYMENT_DATE`, `MOD_ID`, `STUDENT_ID`, `PROFESSOR_ID`) VALUES
(1, 500, 'transferred to account number xxxx', '2021-01-04 00:00:00', 'IS442_2019_2_G1', 'mary.2018', 'rajesh'),
(2, 500, 'transferred to account number xxxx', '2021-01-05 00:00:00', 'IS212_2019_2_G1', 'xiaoli.2018', 'yllee');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
CREATE TABLE IF NOT EXISTS `professors` (
  `PROFESSORS_NAME` varchar(30) NOT NULL,
  `PROFESSOR_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`PROFESSORS_NAME`,`PROFESSOR_ID`),
  KEY `USER_ID` (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`PROFESSORS_NAME`, `PROFESSOR_ID`) VALUES
('Chris POSKITT', 'cposkitt'),
('David LO', 'davidlo'),
('OUH Eng Lieh', 'elouh'),
('SUN Jun', 'junsun'),
('Kyong Jin SHIM', 'kjshim'),
('SHAR Lwin Khin', 'lkshar'),
('JIANG Lingxiao', 'lxjiang'),
('Rafael J. BARROS', 'rafaelbarros'),
('Rajesh Krishna BALAN', 'rajesh'),
('Subhajit DATTA', 'subhajitd'),
('Swapna GOTTIPATI', 'swapnag'),
('LEE Yeow Leong', 'yllee');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `STUDENT_NAME` varchar(30) NOT NULL,
  `STUDENT_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RESUME` varchar(99) NOT NULL,
  `RATING` float NOT NULL,
  `CURRENT_YEAR` int(11) NOT NULL,
  `FACULTY` varchar(4) NOT NULL,
  PRIMARY KEY (`STUDENT_NAME`,`STUDENT_ID`),
  KEY `USER_ID` (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`STUDENT_NAME`, `STUDENT_ID`, `RESUME`, `RATING`, `CURRENT_YEAR`, `FACULTY`) VALUES
('John Tan', 'john.2017', '', 3.6, 4, 'SIS'),
('Mary Lim', 'mary.2018', '', 4.6, 3, 'SIS'),
('Tom Lee', 'tom.2017', '', 4.5, 4, 'SIS'),
('Xiao Hua', 'xiaohua.2017', '', 4.1, 4, 'SOE'),
('Xiao Li', 'xiaoli.2018', '', 3.8, 3, 'SOE');

-- --------------------------------------------------------

--
-- Table structure for table `student_experience`
--

DROP TABLE IF EXISTS `student_experience`;
CREATE TABLE IF NOT EXISTS `student_experience` (
  `STUDENT_ID` varchar(15) NOT NULL,
  `STUDENT_NAME` varchar(30) NOT NULL,
  `EXPERIENCE` text NOT NULL,
  PRIMARY KEY (`STUDENT_ID`,`STUDENT_NAME`),
  KEY `student_experience_ibfk_2` (`STUDENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_experience`
--

INSERT INTO `student_experience` (`STUDENT_ID`, `STUDENT_NAME`, `EXPERIENCE`) VALUES
('john.2017', 'John Tan', 'Experience of John Tan'),
('mary.2018', 'Mary Lim', 'Experience of Mary Lim'),
('tom.2017', 'Tom Lee', 'Experience of Tom Lee'),
('xiaohua.2017', 'Xiao Hua', 'Experience of Xiao Hua'),
('xiaoli.2018', 'Xiao Li', 'Experience of Xiao li');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`STUDENT_NAME`) REFERENCES `students` (`STUDENT_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_3` FOREIGN KEY (`MOD_ID`) REFERENCES `modules` (`MOD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_4` FOREIGN KEY (`STUDENT_ID`) REFERENCES `students` (`STUDENT_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_5` FOREIGN KEY (`PROFESSOR_NAME`) REFERENCES `modules` (`PROFESSOR_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `applications_ibfk_6` FOREIGN KEY (`PROFESSOR_ID`) REFERENCES `modules` (`PROFESSOR_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`PROFESSOR_NAME`) REFERENCES `professors` (`PROFESSORS_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `modules_ibfk_2` FOREIGN KEY (`PROFESSOR_ID`) REFERENCES `professors` (`PROFESSOR_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`PROFESSOR_ID`) REFERENCES `applications` (`PROFESSOR_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`STUDENT_ID`) REFERENCES `applications` (`STUDENT_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`MOD_ID`) REFERENCES `applications` (`MOD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`PROFESSOR_ID`) REFERENCES `account` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `account` (`USER_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `student_experience`
--
ALTER TABLE `student_experience`
  ADD CONSTRAINT `student_experience_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `students` (`STUDENT_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `student_experience_ibfk_2` FOREIGN KEY (`STUDENT_NAME`) REFERENCES `students` (`STUDENT_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
