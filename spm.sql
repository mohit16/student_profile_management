-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 27, 2014 at 02:55 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spm`
--
CREATE DATABASE IF NOT EXISTS `spm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spm`;

-- --------------------------------------------------------

--
-- Table structure for table `2011abc`
--

CREATE TABLE IF NOT EXISTS `2011abc` (
  `regno` varchar(255) DEFAULT NULL,
  `pg` varchar(255) DEFAULT NULL,
  `eg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2011abc`
--

INSERT INTO `2011abc` (`regno`, `pg`, `eg`) VALUES
('18614803112', 'I-1', 'I-1'),
('18714803112', 'I-1', 'I-1'),
('18814803112', 'EE-1', 'EE-1'),
('18914803112', 'EE-1', 'EE-1'),
('19014803112', 'M-1', 'M-1');

-- --------------------------------------------------------

--
-- Table structure for table `2012abc`
--

CREATE TABLE IF NOT EXISTS `2012abc` (
  `regno` varchar(255) DEFAULT NULL,
  `pg` varchar(255) DEFAULT NULL,
  `eg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2012abc`
--

INSERT INTO `2012abc` (`regno`, `pg`, `eg`) VALUES
('13014803112', 'C-1', 'C-1'),
('13114803112', 'C-1', 'C-1'),
('13214803112', 'C-1', 'C-1'),
('13314803112', 'C-2', 'C-2'),
('13414803112', 'C-2', 'C-2'),
('13514803112', 'C-2', 'C-2'),
('13614803112', 'C-3', 'C-3'),
('13714803112', 'E-1', 'E-1');

-- --------------------------------------------------------

--
-- Table structure for table `reg1`
--

CREATE TABLE IF NOT EXISTS `reg1` (
  `regno` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `mno` text NOT NULL,
  `email` text,
  `branch` text NOT NULL,
  `yoa` text NOT NULL,
  `rank` text NOT NULL,
  `categ` text NOT NULL,
  `status` text NOT NULL,
  `fname` text NOT NULL,
  `foccu` text,
  `fdesignation` text,
  `fmno` text NOT NULL,
  `femail` text,
  `mname` text NOT NULL,
  `moccu` text,
  `mdesignation` text,
  `mmno` text NOT NULL,
  `memail` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg1`
--

INSERT INTO `reg1` (`regno`, `name`, `mno`, `email`, `branch`, `yoa`, `rank`, `categ`, `status`, `fname`, `foccu`, `fdesignation`, `fmno`, `femail`, `mname`, `moccu`, `mdesignation`, `mmno`, `memail`) VALUES
('13014803112', 'anuj', '982318678', 'anuj@gmail.com', 'C', '2012', '2144', 'DGEN', 'Regular', 'sanjeev', 'sjdgfklk', 'jhsdfsjkd', '559652323702', 'sanjeev@hjg.com', 'richa', 'jehgj', 'jhdfbjdfgj', '12', 'richa@gmail.com'),
('13114803112', 'swapnil', '982312678', 'swapnil.94@live.com', 'C', '2012', '2132', 'ODGEN', 'Migration', 'manoj', 'sjdgfklk', 'jhsdfsjkd', '5123323702', 'maonuv@hjg.com', 'kiran', 'jehgj', 'jhdfbjdfgj', '359837568', 'kir@gmail.com'),
('13214803112', 'abhishek', '123312678', 'abhi4@live.com', 'C', '2012', '212', 'ODGEN', 'Regular', 'amit', 'sjdgfklk', 'jhsdfsjkd', '9823323702', 'amitv@hjg.com', 'pragya', 'jehgj', 'jhdfbjdfgj', '4654568', 'pra@gmail.com'),
('13314803112', 'ram', '13423312678', 'ram124@live.com', 'C', '2012', '9800', 'DST', 'Regular', 'prakash', 'sjdgfklk', 'jhsdfsjkd', '98221223702', 'dd@sdsfs.com', 'usha', 'jehgj', 'jhdfbjdfgj', '465412568', 'aa@ss.com'),
('13414803112', 'rani', '1376512678', 'rani4@gmail.com', 'C', '2012', '2300', 'DGEN', 'Regular', 'mohit', 'sjdgfklk', 'jhsdfsjkd', '98765432', '', 'suman', 'jehgj', 'jhdfbjdfgj', '734583', ''),
('13514803112', 'gaurav', '67238812678', 'gauran567@gmail.com', 'C', '2012', '1200', 'DOBC', 'Regular', 'ankit', 'sjdgfklk', 'jhsdfsjkd', '9876512432', '', 'unnati', 'jehgj', 'jhdfbjdfgj', '34579856', ''),
('13614803112', 'raj', '67238812678', 'raj67@gmail.com', 'C', '2012', '1299', 'DOBC', 'Regular', 'ankit', 'sjdgfklk', 'jhsdfsjkd', '9876512432', '', 'unnati', 'teacher', 'jhdfbjdfgj', '34579856', ''),
('18614803112', 'priya', '9837652678', 'priya67@gmail.com', 'I', '2011', '1400', 'DGEN', 'Regular', 'ankit', 'sjdgfklk', 'jhsdfsjkd', '9876512432', '', 'unnati', 'jehgj', 'jhdfbjdfgj', '34579856', ''),
('18714803112', 'ramesh', '9837652678', 'ramesh1267@gmail.com', 'I', '2011', '5400', 'DGEN', 'Regular', 'ankit', 'sjdgfklk', 'jhsdfsjkd', '9876512432', '', 'unnati', 'jehgj', 'jhdfbjdfgj', '34579856', ''),
('18814803112', 'raunak', '9837652678', 'raunak7@gmail.com', 'EE', '2011', '7660', 'DGEN', 'Regular', 'ankit', 'sjdgfklk', 'jhsdfsjkd', '9876512432', '', 'unnati', 'jehgj', 'jhdfbjdfgj', '34579856', ''),
('18914803112', 'shubham', '92457652678', 'raunak7@gmail.com', 'EE', '2011', '17000', 'DST', 'Regular', 'ankit', 'sjdgfklk', 'jhsdfsjkd', '9876512432', '', 'unnati', 'jehgj', 'jhdfbjdfgj', '34579856', ''),
('19014803112', 'priyam', '9245127652678', 'priyam7@gmail.com', 'M', '2011', '300', 'ODGEN', 'Migration', 'ankit', 'sjdgfklk', 'jhsdfsjkd', '9876512432', '', 'unnati', 'jehgj', 'jhdfbjdfgj', '34579856', ''),
('13714803112', 'mohit', '873568734', 'mohit@gmail.com', 'E', '2012', '3400', 'DGEN', 'Regular', 'pratap', 'dsfsdf', 'dsf', '43535', '', 'mamta', 'ijoij', 'sdfdghg', '56456', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
