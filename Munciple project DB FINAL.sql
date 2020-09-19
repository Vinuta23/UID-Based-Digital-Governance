-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2014 at 08:38 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `munciple`
--

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

--
-- Dumping data for table `birth`
--


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

--
-- Dumping data for table `castincome`
--

INSERT INTO `castincome` (`sino`, `uname`, `applicantname`, `parentname`, `language`, `caste`, `occupation`, `income`, `address`, `adate`, `status`) VALUES
(1, 'basavaraj', 'basavaraj', 'bakkesh A M', 'Kannada', 'Lingayath', 'Finance', '17000', '3rd main 4th cross vinobanagar,dvg', '2014-05-04', 'PROCESSING');

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

--
-- Dumping data for table `death`
--


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

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`sino`, `refno`, `subject`, `docname`, `uname`, `rdate`, `rtime`) VALUES
(1, 1, 'your request for caste certificate is under process..', 'img248.pdf', 'basavaraj', '2014-05-04', '13:24:43'),
(2, 1, 'download your document..', 'NILL', 'basavaraj', '2014-05-04', '13:27:03');

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

--
-- Dumping data for table `resident`
--


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

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`cardno`, `uname`, `pwd`, `contno`) VALUES
('CA004', 'basavaraj', 'basavaraj', '9343001818');

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

--
-- Dumping data for table `vaccount`
--

INSERT INTO `vaccount` (`vid`, `name`, `phno`, `address`) VALUES
('V-1', 'Kuberappa', '9844556777', '7th cross\r\nKtj nagar\r\nDavangere'),
('V-2', 'Sureshkumar', '9164536257', '4th block gandhinagar,dvg'),
('V-3', 'Veeresh B N', '9844292334', 'vinobhanagar'),
('V-4', 'Shankar Roa', '7795144285', 'Vaddinahalli, Davangere'),
('V-5', 'Shivappa N', '9964182244', 'Anjeneya Extn,Dvg');

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
('CA001', 'Abhishek ', 'A C', '1992-12-02', 'Male', 'chandramouli', 'sarasvati', '#334, uchhangidurga,Davangere', 'img253.jpg'),
('CA002', 'Abhishek ', 'K M', '1993-04-18', 'Male', 'chandrashekarayya', 'laxmi', 'Devaraj urs layout DVG', 'img254.jpg'),
('CA003', 'arun Kumar', 'A S', '1992-02-15', 'Male', 'anil kumar', 'gouri', 'neelanalli dvg', 'img252.jpg'),
('CA004', 'basavaraj', 'a m', '1991-06-15', 'Male', 'bakkesh a m', 'Sunitha', '#1692/4 3rd main 4th cross vinobanagar dvg', 'img251.jpg'),
('CA005', 'Nithin', 'm', '1991-06-17', 'Male', 'mukunda b s', 'yashodha', '#204 1st main,6th cross EWS colony Devaraj urs layout dvg 577006', 'img250.jpg');

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

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`wardno`, `area`, `vid`) VALUES
('W-1', 'Nittuvalli,Mouneshwara Etention,Lenin nagar', 'V-1'),
('W-2', 'Vaddinahalli,Avarigere,Bada cross,DCM Layout', 'V-4'),
('W-3', 'Gandhinagara,Halepete,Ajadnagar,Bashanagar,Honda Circle', 'V-2'),
('W-4', 'Vinobhanagar,yallamanagara,Shanti nagar,Devaraj urs layout', 'V-3'),
('W-5', 'Anjeneya Badavani,Vidyanagara,Kuvempu layout,Vivekananda badavani,Saraswati nagara', 'V-5');
