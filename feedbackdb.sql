-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 04:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedbackdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `UserName`, `Password`) VALUES
(7187, 'Ameshi', 'ameshi123'),
(2153, 'Udaara', 'udara123');

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `LecturerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer1Count` int(11) NOT NULL,
  `Answer2Count` int(11) NOT NULL,
  `Answer3Count` int(11) NOT NULL,
  `Answer4Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`LecturerID`, `QuestionID`, `Answer1Count`, `Answer2Count`, `Answer3Count`, `Answer4Count`) VALUES
(1, 1000, 12, 14, 13, 11),
(1, 1001, 23, 21, 24, 11),
(1, 1002, 13, 21, 24, 19),
(1, 1003, 21, 25, 20, 10),
(1, 1004, 7, 5, 3, 11),
(2, 1000, 13, 16, 17, 21),
(2, 1001, 13, 17, 20, 15),
(2, 1002, 15, 0, 0, 7),
(2, 1003, 12, 13, 15, 15),
(2, 1004, 12, 13, 14, 15),
(3, 1000, 13, 15, 16, 16),
(3, 1001, 22, 23, 23, 24),
(3, 1002, 21, 11, 16, 17),
(3, 1003, 15, 1, 0, 19),
(3, 1004, 21, 11, 16, 18),
(4, 1000, 12, 13, 14, 15),
(4, 1001, 23, 21, 22, 24),
(4, 1002, 12, 12, 13, 14),
(4, 1003, 21, 22, 23, 20),
(4, 1004, 21, 12, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LecturerID` int(11) NOT NULL,
  `LecturerName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LecturerID`, `LecturerName`) VALUES
(1, 'James Smith'),
(2, 'Anna Brown'),
(3, 'Emma Johnson'),
(4, 'Roy Miller');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` int(11) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `Answer1` varchar(20) NOT NULL,
  `Answer2` varchar(20) NOT NULL,
  `Answer3` varchar(20) NOT NULL,
  `Answer4` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `Question`, `Answer1`, `Answer2`, `Answer3`, `Answer4`) VALUES
(1000, 'My lecturer is help full when I ask question ?', 'Extremely Agree', 'Agree', 'Neutral', 'Disagree'),
(1001, 'My lecturer encourages me to do my best?', 'Extremely Agree', 'Agree', 'Neutral', 'Disagree'),
(1002, 'My lecturer takes some times to summarize what we learn each day?', 'Extremely Agree', 'Agree', 'Neutral', 'Disagree'),
(1003, 'My lecturer help us when we don\'t understand something', 'Extremely Agree', 'Agree', 'Neutral', 'Disagree'),
(1004, 'My lecturer\'s teaching methods are very clear ', 'Extremely Agree', 'Agree', 'Neutral', 'Disagree');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `LecturerID` (`LecturerID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LecturerID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytics`
--
ALTER TABLE `analytics`
  ADD CONSTRAINT `analytics_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`),
  ADD CONSTRAINT `analytics_ibfk_2` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LecturerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
