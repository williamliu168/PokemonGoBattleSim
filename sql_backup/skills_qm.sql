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
-- Table structure for table `skills_qm`
--

CREATE TABLE `skills_qm` (
  `id` int(5) NOT NULL,
  `type` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `power` int(5) NOT NULL,
  `duration` int(5) NOT NULL,
  `fury_gain` int(5) NOT NULL,
  `pps` float NOT NULL,
  `stab_pps` float NOT NULL,
  `fury_ps` float NOT NULL,
  `dmg_window` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills_qm`
--

INSERT INTO `skills_qm` (`id`, `type`, `name`, `power`, `duration`, `fury_gain`, `pps`, `stab_pps`, `fury_ps`, `dmg_window`) VALUES
(200, 'bug', 'fury cutter', 3, 400, 12, 7.5, 9.38, 30, 200),
(201, 'bug', 'bug bite', 5, 450, 7, 11.11, 13.89, 15.6, 200),
(202, 'dark', 'bite', 6, 500, 7, 12, 15, 14, 200),
(203, 'dark', 'sucker punch', 7, 700, 4, 10, 12.5, 5.7, 200),
(204, 'dragon', 'dragon breath', 6, 500, 7, 12, 15, 14, 200),
(205, 'electric', 'thunder shock', 5, 600, 7, 8.33, 10.42, 11.7, 200),
(206, 'electric', 'spark', 7, 700, 4, 10, 12.5, 5.7, 200),
(207, 'fighting', 'low kick', 5, 600, 7, 8.33, 10.42, 11.7, 200),
(208, 'fighting', 'karate chop', 6, 800, 7, 7.5, 9.38, 8.8, 200),
(209, 'fire', 'ember', 10, 1050, 7, 9.52, 11.9, 6.7, 200),
(210, 'flying', 'wing attack', 9, 750, 7, 12, 15, 9.3, 200),
(211, 'flying', 'peck', 10, 1150, 10, 8.7, 10.87, 8.7, 200),
(212, 'ghost', 'lick', 5, 500, 7, 10, 12.5, 14, 200),
(213, 'ghost', 'shadow claw', 11, 950, 7, 11.58, 14.47, 7.4, 200),
(214, 'grass', 'vine whip', 7, 650, 7, 10.77, 13.46, 10.8, 200),
(215, 'grass', 'razor leaf', 15, 1450, 7, 10.34, 12.93, 4.8, 200),
(216, 'ground', 'mud shot', 6, 550, 7, 10.91, 13.64, 12.7, 200),
(217, 'ice', 'ice shard', 15, 1400, 7, 10.71, 13.39, 5, 200),
(218, 'ice', 'frost breath', 9, 810, 7, 11.11, 13.89, 8.6, 200),
(219, 'normal', 'quick attack', 10, 1330, 7, 7.52, 9.4, 5.3, 200),
(220, 'normal', 'scratch', 6, 500, 7, 12, 15, 14, 200),
(221, 'normal', 'tackle', 12, 1100, 7, 10.91, 13.64, 6.4, 200),
(222, 'normal', 'pound', 7, 540, 7, 12.96, 16.2, 13, 200),
(223, 'normal', 'cut', 12, 1130, 7, 10.62, 13.27, 6.2, 200),
(224, 'poison', 'poison jab', 12, 1050, 7, 11.43, 14.29, 6.7, 200),
(225, 'poison', 'acid', 10, 1050, 7, 9.52, 11.9, 6.7, 200),
(226, 'psychic', 'psycho cut', 7, 570, 7, 12.28, 15.35, 12.3, 200),
(227, 'rock', 'rock throw', 12, 1360, 7, 8.82, 11.03, 5.1, 200),
(228, 'steel', 'metal claw', 8, 630, 7, 12.7, 15.87, 11.1, 200),
(229, 'steel', 'bullet punch', 10, 1200, 7, 8.33, 10.42, 5.8, 200),
(230, 'water', 'water gun', 6, 500, 7, 12, 15, 14, 200),
(231, 'water', 'splash', 0, 1230, 7, 0, 0, 5.7, 200),
(233, 'ground', 'mud slap', 15, 1350, 9, 11.11, 13.89, 6.7, 200),
(234, 'psychic', 'zen headbutt', 12, 1050, 4, 11.43, 14.29, 3.8, 200),
(235, 'psychic', 'confusion', 15, 1510, 7, 9.93, 12.42, 4.6, 200),
(236, 'poison', 'poison sting', 6, 575, 4, 10.43, 13.04, 7, 200),
(237, 'water', 'bubble', 25, 2300, 15, 10.87, 13.59, 6.5, 200),
(238, 'dark', 'feint attack', 12, 1040, 7, 11.54, 14.42, 6.7, 200),
(239, 'steel', 'steel wing', 15, 1330, 4, 11.28, 14.1, 3, 200),
(240, 'fire', 'fire fang', 10, 840, 4, 11.9, 14.88, 4.8, 200),
(241, 'fighting', 'rock smash', 15, 1410, 7, 10.64, 13.3, 5, 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skills_qm`
--
ALTER TABLE `skills_qm`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
