-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2024 at 06:25 AM
-- Server version: 5.7.14
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `department_name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_name`, `id`) VALUES
('development', 1),
('design', 2),
('testing', 3),
('mobile', 4),
('sdsds', 5),
('sasas', 6),
('dsdsd', 7);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('male','female','other','') NOT NULL,
  `hobbies` varchar(255) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `firstName`, `lastName`, `email`, `password`, `gender`, `hobbies`, `departmentId`, `deleted_at`) VALUES
(2, 'gssfgf', 'wewrrr', 'oaushqwn66@mail.com', '$2b$10$iFiDyJe1D9GOtj2NML8/buXHS6f1ZzoDDhaITRL7vO42buLB4THi2', 'male', 'wqqwqw,jsdidha,ljsiasiq', 2, '2024-03-28 09:53:22'),
(3, 'niknj', 'k', 'nikunj@mail.com', '$2b$10$lWAPXJ1u0apSMcLFR.yzquaY3UEacGn/S0St5QM9DIUlBOO5T2xj2', 'male', 'play, sing', 4, '2024-03-28 09:57:33'),
(4, 'dhrual', 'k', 'dhruval@mail.com', '$2b$10$uZdLydDE99KDZN0FqCKO4.EDTaSUoibUEsBNfjkToMWTDtduOD1vi', 'male', 'play, sing', 3, NULL),
(5, 'ffgf', 'dsdsd', 'hadhah44@mail.com', '$2b$10$MxhK.XZq8TGBKBNEcsPwpeFxlRK0wpyabQ25eCOJmo1fh8WhiI/zG', 'male', 'wqqwqw,jsdidha,dsds', 5, '2024-03-28 10:09:37'),
(6, 'ffgf', 'dsdsd', 'fggfwqw11g@mail.com', '$2b$10$ebADMxH2MXMheMiLIjgHx.f1r1SookBxhuZ494HQjejIFREgPd4hC', 'male', 'wqqwqw,jsdidha,dsds', 6, NULL),
(7, 'ffgf', 'dsdsd', 'wqdsdfggfwqw11g@mail.com', '$2b$10$oCRMGMCFtcE.Ovf1mrngb.s.ZkSj4Mr1QAfBwP88HWdJMgcELuLOy', 'male', 'wqqwqw,jsdidha,dsds', 7, NULL),
(8, 'ffgf', 'dsdsd', 'wqfggfwqw11g@mail.com', '$2b$10$9qfkFPX3FxDaMjgVFJa3tON1zJxT.VAvIXhsuWvHl10KchPU6f4oG', 'male', 'wqqwqw,jsdidha,dsds', 8, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
