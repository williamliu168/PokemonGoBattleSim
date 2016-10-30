-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2016 at 03:07 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pogobattlesim`
--

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `atkType` varchar(40) NOT NULL,
  `normal` float NOT NULL,
  `fire` float NOT NULL,
  `water` float NOT NULL,
  `electric` float NOT NULL,
  `grass` float NOT NULL,
  `ice` float NOT NULL,
  `fighting` float NOT NULL,
  `poison` float NOT NULL,
  `ground` float NOT NULL,
  `flying` float NOT NULL,
  `psychic` float NOT NULL,
  `bug` float NOT NULL,
  `rock` float NOT NULL,
  `ghost` float NOT NULL,
  `dragon` float NOT NULL,
  `dark` float NOT NULL,
  `steel` float NOT NULL,
  `fairy` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`atkType`, `normal`, `fire`, `water`, `electric`, `grass`, `ice`, `fighting`, `poison`, `ground`, `flying`, `psychic`, `bug`, `rock`, `ghost`, `dragon`, `dark`, `steel`, `fairy`) VALUES
('bug', 1, 0.8, 1, 1, 1.25, 1, 0.8, 0.8, 1, 0.8, 1.25, 1, 1, 0.8, 1, 1.25, 0.8, 0.8),
('dark', 1, 1, 1, 1, 1, 1, 0.8, 1, 1, 1, 1.25, 1, 1, 1.25, 1, 0.8, 1, 0.8),
('dragon', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1.25, 1, 0.8, 0.8),
('electric', 1, 1, 1.25, 0.8, 0.8, 1, 1, 1, 0.8, 1.25, 1, 1, 1, 1, 0.8, 1, 1, 1),
('fairy', 1, 0.8, 1, 1, 1, 1, 1.25, 0.8, 1, 1, 1, 1, 1, 1, 1.25, 1.25, 0.8, 1),
('fighting', 1.25, 1, 1, 1, 1, 1.25, 1, 0.8, 1, 0.8, 0.8, 0.8, 1.25, 0.8, 1, 1.25, 1.25, 0.8),
('fire', 1, 0.8, 0.8, 1, 1.25, 1.25, 1, 1, 1, 1, 1, 1.25, 0.8, 1, 0.8, 1, 1.25, 1),
('flying', 1, 1, 1, 0.8, 1.25, 1, 1.25, 1, 1, 1, 1, 1.25, 0.8, 1, 1, 1, 0.8, 1),
('ghost', 0.8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1.25, 1, 1, 1.25, 1, 0.8, 1, 1),
('grass', 1, 0.8, 1.25, 1, 0.8, 1, 1, 0.8, 1.25, 0.8, 1, 0.8, 1.25, 1, 0.8, 1, 0.8, 1),
('ground', 1, 1.25, 1, 1.25, 0.8, 1, 1, 1.25, 1, 0.8, 1, 0.8, 1.25, 1, 1, 1, 1.25, 1),
('ice', 1, 0.8, 0.8, 1, 1.25, 0.8, 1, 1, 1.25, 1.25, 1, 1, 1, 1, 1.25, 1, 0.8, 1),
('normal', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.8, 0.8, 1, 1, 0.8, 1),
('poison', 1, 1, 1, 1, 1.25, 1, 1, 0.8, 0.8, 1, 1, 1, 0.8, 0.8, 1, 1, 0.8, 1.25),
('psychic', 1, 1, 1, 1, 1, 1, 1.25, 1.25, 1, 1, 0.8, 1, 1, 1, 1, 0.8, 0.8, 1),
('rock', 1, 1.25, 1, 1, 1, 1.25, 0.8, 1, 0.8, 1.25, 1, 1.25, 1, 1, 1, 1, 0.8, 1),
('steel', 1, 0.8, 0.8, 0.8, 1, 1.25, 1, 1, 1, 1, 1, 1, 1.25, 1, 1, 1, 0.8, 1.25),
('water', 1, 1.25, 0.8, 1, 0.8, 1, 1, 1, 1.25, 1, 1, 1, 1.25, 1, 0.8, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`atkType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
