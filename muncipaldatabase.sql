-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2014 at 10:04 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `munciple`
--
CREATE DATABASE IF NOT EXISTS `munciple` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `munciple`;

-- --------------------------------------------------------

--
-- Table structure for table `birth`
--

CREATE TABLE IF NOT EXISTS `birth` (
  `sino` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `adate` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`sino`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `castincome`
--

CREATE TABLE IF NOT EXISTS `castincome` (
  `sino` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `applicantname` varchar(100) NOT NULL,
  `parentname` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `caste` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `income` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `adate` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`sino`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `death`
--

CREATE TABLE IF NOT EXISTS `death` (
  `sino` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ddate` date NOT NULL,
  `dplace` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `daddr` varchar(200) NOT NULL,
  `paddr` varchar(200) NOT NULL,
  `adate` date NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`sino`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `sino` int(11) NOT NULL,
  `refno` int(11) NOT NULL,
  `subject` text NOT NULL,
  `docname` varchar(100) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `rtime` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

CREATE TABLE IF NOT EXISTS `resident` (
  `sino` varchar(100) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `applicantname` varchar(100) NOT NULL,
  `parentname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `adate` date NOT NULL,
  `duration` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`sino`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `cardno` varchar(20) DEFAULT NULL,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `contno` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vaccount`
--

CREATE TABLE IF NOT EXISTS `vaccount` (
  `vid` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`vid`),
  KEY `vid` (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `cardno` varchar(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `mothername` varchar(100) NOT NULL,
  `addr` varchar(500) NOT NULL,
  `imgname` varchar(100) NOT NULL,
  PRIMARY KEY (`cardno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`cardno`, `fname`, `lname`, `dob`, `gender`, `fathername`, `mothername`, `addr`, `imgname`) VALUES
('CA001', 'karibasavaraj', 'j', '1982-03-05', 'Male', 'jayappa s m', 'thriveni k h', '17th cross\r\nvidyanagar\r\ndavangere', 'DSC_0228.jpg'),
('CA002', 'kiran', 'b', '1984-10-02', 'Male', 'Bhadrachari', 'pushpavathi', '17th cross sathyanaraya nilay,vidyanagar,davangere.', 'po.jpg'),
('CA003', 'Satish', 'b', '1986-06-01', 'Male', 'Bhadrachari', 'pushpavathi', '17th cross,vidyanagar,davnagere,577005', '18032012 (3).JPG'),
('CA004', 'mala', 'a v', '1992-08-01', 'Female', 'veeranna', 'jyothi', '6rh cross,7th main,nijalingappa lyout,davangere', 'IMG1282A_001 (6).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE IF NOT EXISTS `ward` (
  `wardno` varchar(10) NOT NULL,
  `area` varchar(100) NOT NULL,
  `vid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`wardno`),
  KEY `vid` (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
