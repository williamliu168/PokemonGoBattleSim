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
-- Table structure for table `skills_ss`
--

CREATE TABLE `skills_ss` (
  `id` int(5) NOT NULL,
  `name` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL,
  `power` int(5) NOT NULL,
  `accuracy` float NOT NULL,
  `crit_chance` float NOT NULL,
  `stam_loss` float NOT NULL,
  `heal` float NOT NULL,
  `duration` int(5) NOT NULL,
  `start` int(5) NOT NULL,
  `end` int(5) NOT NULL,
  `dmg_window` int(5) NOT NULL,
  `fury_cost` int(5) NOT NULL,
  `pps` float NOT NULL,
  `stab_pps` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills_ss`
--

INSERT INTO `skills_ss` (`id`, `name`, `type`, `power`, `accuracy`, `crit_chance`, `stam_loss`, `heal`, `duration`, `start`, `end`, `dmg_window`, `fury_cost`, `pps`, `stab_pps`) VALUES
(1, 'STRUGGLE', 'NORMAL', 15, 1, 0, 0.1, 0, 1695, 800, 1500, 700, -20, 8.85, 11.1),
(2, 'VICE GRIP', 'NORMAL', 25, 1, 0.05, 0.055, 0, 2100, 1850, 2100, 250, -20, 11.9, 14.9),
(3, 'PARABOLIC CHARGE', 'ELECTRIC', 25, 1, 0.05, 0.05, 0.5, 2100, 1300, 1700, 400, -20, 11.9, 14.9),
(4, 'AQUA JET', 'WATER', 25, 1, 0.05, 0.04, 0, 2350, 1700, 2100, 400, -20, 10.64, 13.3),
(5, 'POISON FANG', 'POISON', 25, 1, 0.05, 0.05, 0, 2400, 1650, 1850, 200, -20, 10.42, 13),
(6, 'TWISTER', 'DRAGON', 25, 1, 0.05, 0.04, 0, 2700, 850, 2600, 1750, -20, 9.26, 11.6),
(7, 'DRAINING KISS', 'FAIRY', 25, 1, 0.05, 0.05, 1, 2800, 1000, 1100, 100, -20, 8.93, 11.2),
(8, 'SHADOW SNEAK', 'GHOST', 25, 1, 0.05, 0.04, 0, 3100, 2300, 2900, 600, -20, 8.06, 10.1),
(9, 'MEGA DRAIN', 'GRASS', 25, 1, 0.05, 0.04, 0.5, 3200, 1400, 2600, 1200, -20, 7.81, 9.8),
(10, 'WRAP GREEN', 'NORMAL', 25, 1, 0.05, 0.06, 0, 3700, 2200, 3200, 1000, -20, 6.76, 8.4),
(11, 'WRAP PINK', 'NORMAL', 25, 1, 0.05, 0.06, 0, 3700, 2200, 3200, 1000, -20, 6.76, 8.4),
(12, 'ICY WIND', 'ICE', 25, 1, 0.05, 0.055, 0, 3800, 2000, 2700, 700, -20, 6.58, 8.2),
(13, 'WRAP', 'NORMAL', 25, 1, 0.05, 0.06, 0, 4000, 2800, 3400, 600, -20, 6.25, 7.8),
(14, 'CROSS POISON', 'POISON', 25, 1, 0.25, 0.07, 0, 1500, 1200, 1500, 300, -25, 16.67, 20.8),
(15, 'BONE CLUB', 'GROUND', 25, 1, 0.05, 0.065, 0, 1600, 1250, 1500, 250, -25, 15.63, 19.5),
(16, 'SHADOW PUNCH', 'GHOST', 25, 1, 0.05, 0.06, 0, 2100, 1400, 1700, 300, -25, 11.9, 14.9),
(17, 'HORN ATTACK', 'NORMAL', 25, 1, 0.05, 0.065, 0, 2200, 1600, 1900, 300, -25, 11.36, 14.2),
(18, 'BRINE', 'WATER', 25, 1, 0.05, 0.065, 0, 2400, 1650, 2000, 350, -25, 10.42, 13),
(19, 'HEART STAMP', 'PSYCHIC', 25, 1, 0.05, 0.06, 0, 2550, 1950, 2250, 300, -25, 9.8, 12.3),
(20, 'FLAME CHARGE', 'FIRE', 25, 1, 0.05, 0.05, 0, 3100, 2700, 2900, 200, -20, 8.06, 10.1),
(21, 'DISARMING VOICE', 'FAIRY', 25, 1, 0.05, 0.04, 0, 3900, 1800, 3600, 1800, -20, 6.41, 8),
(22, 'FLAME BURST', 'FIRE', 30, 1, 0.05, 0.07, 0, 2100, 1200, 1600, 400, -25, 14.29, 17.9),
(23, 'STOMP', 'NORMAL', 30, 1, 0.05, 0.065, 0, 2100, 1200, 1900, 700, -25, 14.29, 17.9),
(24, 'LOW SWEEP', 'FIGHTING', 30, 1, 0.05, 0.065, 0, 2250, 2000, 2150, 150, -25, 13.33, 16.7),
(25, 'SLUDGE', 'POISON', 30, 1, 0.05, 0.065, 0, 2600, 1850, 2350, 500, -25, 11.54, 14.4),
(26, 'MUD BOMB', 'GROUND', 30, 1, 0.05, 0.065, 0, 2600, 2050, 2500, 450, -25, 11.54, 14.4),
(27, 'NIGHT SLASH', 'DARK', 30, 1, 0.25, 0.07, 0, 2700, 2400, 2600, 200, -25, 11.11, 13.9),
(28, 'MAGNET BOMB', 'STEEL', 30, 1, 0.05, 0.06, 0, 2800, 1750, 2300, 550, -25, 10.71, 13.4),
(29, 'AERIAL ACE', 'FLYING', 30, 1, 0.05, 0.06, 0, 2900, 2000, 2600, 600, -25, 10.34, 12.9),
(30, 'BUBBLE BEAM', 'WATER', 30, 1, 0.05, 0.065, 0, 2900, 2600, 2800, 200, -25, 10.34, 12.9),
(31, 'SWIFT', 'NORMAL', 30, 1, 0.05, 0.06, 0, 3000, 2300, 2800, 500, -25, 10, 12.5),
(32, 'OMINOUS WIND', 'GHOST', 30, 1, 0.05, 0.06, 0, 3100, 1850, 2100, 250, -25, 9.68, 12.1),
(33, 'AIR CUTTER', 'FLYING', 30, 1, 0.25, 0.06, 0, 3300, 2200, 3100, 900, -25, 9.09, 11.4),
(34, 'ROCK TOMB', 'ROCK', 30, 1, 0.25, 0.06, 0, 3400, 2300, 3200, 900, -25, 8.82, 11),
(35, 'BRICK BREAK', 'FIGHTING', 30, 1, 0.25, 0.075, 0, 1600, 1100, 1500, 400, -33, 18.75, 23.4),
(36, 'SUBMISSION', 'FIGHTING', 30, 1, 0.05, 0.08, 0, 2100, 1850, 2000, 150, -33, 14.29, 17.9),
(37, 'X SCISSOR', 'BUG', 35, 1, 0.05, 0.08, 0, 2100, 1350, 1600, 250, -33, 16.67, 20.8),
(38, 'SEED BOMB', 'GRASS', 40, 1, 0.05, 0.08, 0, 2400, 1300, 1800, 500, -33, 16.67, 20.8),
(39, 'DRILL PECK', 'FLYING', 40, 1, 0.05, 0.08, 0, 2700, 1600, 2500, 900, -33, 14.81, 18.5),
(40, 'WATER PULSE', 'WATER', 35, 1, 0.05, 0.06, 0, 3300, 1900, 2900, 1000, -25, 10.61, 13.3),
(41, 'BULLDOZE', 'GROUND', 35, 1, 0.05, 0.06, 0, 3400, 1900, 3000, 1100, -25, 10.29, 12.9),
(42, 'ANCIENT POWER', 'ROCK', 35, 1, 0.05, 0.06, 0, 3600, 2900, 3250, 350, -25, 9.72, 12.2),
(43, 'HYPER FANG', 'NORMAL', 35, 1, 0.05, 0.08, 0, 2100, 1700, 2000, 300, -33, 16.67, 20.8),
(44, 'FIRE PUNCH', 'FIRE', 40, 1, 0.05, 0.075, 0, 2800, 1690, 2200, 510, -33, 14.29, 17.9),
(45, 'SIGNAL BEAM', 'BUG', 45, 1, 0.05, 0.075, 0, 3100, 2000, 3000, 1000, -33, 14.52, 18.1),
(46, 'REST', 'NORMAL', 50, 1, 0, 0, 1, 3100, 1395, 2691, 1296, -33, 16.13, 20.2),
(47, 'GIGA DRAIN', 'GRASS', 50, 1, 0.05, 0.075, 0.5, 3600, 350, 1500, 1150, -33, 13.89, 17.4),
(48, 'PSYBEAM', 'PSYCHIC', 40, 1, 0.05, 0.065, 0, 3800, 2300, 3600, 1300, -25, 10.53, 13.2),
(49, 'SCALD', 'WATER', 55, 1, 0.05, 0.08, 0, 4000, 1800, 3900, 2100, -33, 13.75, 17.2),
(50, 'SCALD BLASTOISE', 'WATER', 50, 1, 0.05, 0.08, 0, 4000, 1800, 3900, 2100, -33, 12.5, 15.6),
(51, 'FLAME WHEEL', 'FIRE', 40, 1, 0.05, 0.06, 0, 4600, 2700, 3200, 500, -25, 8.7, 10.9),
(52, 'DRAGON CLAW', 'DRAGON', 35, 1, 0.25, 0.08, 0, 1500, 1200, 1400, 200, -50, 23.33, 29.2),
(53, 'IRON HEAD', 'STEEL', 30, 1, 0.05, 0.08, 0, 2000, 1550, 1800, 250, -33, 15, 18.8),
(54, 'THUNDER PUNCH', 'ELECTRIC', 40, 1, 0.05, 0.075, 0, 2400, 1950, 2200, 250, -33, 16.67, 20.8),
(55, 'DISCHARGE', 'ELECTRIC', 35, 1, 0.05, 0.08, 0, 2500, 1600, 2300, 700, -33, 14, 17.5),
(56, 'PSYSHOCK', 'PSYCHIC', 40, 1, 0.05, 0.08, 0, 2700, 2200, 2700, 500, -33, 14.81, 18.5),
(57, 'POWER GEM', 'ROCK', 40, 1, 0.05, 0.08, 0, 2900, 2000, 2800, 800, -33, 13.79, 17.2),
(58, 'SHADOW BALL', 'GHOST', 45, 1, 0.05, 0.08, 0, 3080, 2300, 2600, 300, -33, 14.61, 18.3),
(59, 'ROCK SLIDE', 'ROCK', 50, 1, 0.05, 0.075, 0, 3200, 1500, 2900, 1400, -33, 15.63, 19.5),
(60, 'DRILL RUN', 'GROUND', 50, 1, 0.25, 0.08, 0, 3400, 2100, 2800, 700, -33, 14.71, 18.4),
(61, 'LEAF BLADE', 'GRASS', 55, 1, 0.25, 0.09, 0, 2800, 1200, 2200, 1000, -50, 19.64, 24.6),
(62, 'DARK PULSE', 'DARK', 45, 1, 0.05, 0.08, 0, 3500, 2300, 3400, 1100, -33, 12.86, 16.1),
(63, 'ICE PUNCH', 'ICE', 45, 1, 0.05, 0.075, 0, 3500, 2100, 3200, 1100, -33, 12.86, 16.1),
(64, 'DAZZLING GLEAM', 'FAIRY', 55, 1, 0.05, 0.08, 0, 4200, 3300, 4100, 800, -33, 13.1, 16.4),
(65, 'DIG', 'GROUND', 70, 1, 0.05, 0.08, 0, 5800, 4600, 5000, 400, -33, 12.07, 15.1),
(66, 'BODY SLAM', 'NORMAL', 40, 1, 0.05, 0.085, 0, 1560, 1100, 1300, 200, -50, 25.64, 32.1),
(67, 'AQUA TAIL', 'WATER', 45, 1, 0.05, 0.09, 0, 2350, 2050, 2250, 200, -50, 19.15, 23.9),
(68, 'SLUDGE BOMB', 'POISON', 55, 1, 0.05, 0.09, 0, 2600, 1950, 2450, 500, -50, 21.15, 26.4),
(69, 'THUNDERBOLT', 'ELECTRIC', 55, 1, 0.05, 0.09, 0, 2700, 1900, 2700, 800, -50, 20.37, 25.5),
(70, 'PSYCHIC', 'PSYCHIC', 55, 1, 0.05, 0.09, 0, 2800, 1600, 2800, 1200, -50, 19.64, 24.6),
(71, 'FLAMETHROWER', 'FIRE', 55, 1, 0.05, 0.09, 0, 2900, 1700, 2600, 900, -50, 18.97, 23.7),
(72, 'PLAY ROUGH', 'FAIRY', 55, 1, 0.05, 0.1, 0, 2900, 1400, 2700, 1300, -50, 18.97, 23.7),
(73, 'PETAL BLIZZARD', 'GRASS', 65, 1, 0.05, 0.09, 0, 3200, 2100, 3100, 1000, -50, 20.31, 25.4),
(74, 'DRAGON PULSE', 'DRAGON', 65, 1, 0.05, 0.085, 0, 3600, 2100, 3300, 1200, -50, 18.06, 22.6),
(75, 'ICE BEAM', 'ICE', 65, 1, 0.05, 0.09, 0, 3650, 2150, 3500, 1350, -50, 17.81, 22.3),
(76, 'BUG BUZZ', 'BUG', 75, 1, 0.05, 0.09, 0, 4250, 2600, 4100, 1500, -50, 17.65, 22.1),
(77, 'CROSS CHOP', 'FIGHTING', 60, 1, 0.25, 0.1, 0, 2000, 1500, 1800, 300, -100, 30, 37.5),
(78, 'STONE EDGE', 'ROCK', 80, 1, 0.5, 0.1, 0, 3100, 1400, 1800, 400, -100, 25.81, 32.3),
(79, 'MEGAHORN', 'BUG', 80, 1, 0.05, 0.12, 0, 3200, 2400, 2700, 300, -100, 25, 31.3),
(80, 'FLASH CANNON', 'STEEL', 60, 1, 0.05, 0.08, 0, 3900, 2400, 3500, 1100, -33, 15.38, 19.2),
(81, 'POWER WHIP', 'GRASS', 70, 1, 0, 0.12, 0, 2800, 1500, 2800, 1300, -100, 25, 31.3),
(82, 'GUNK SHOT', 'POISON', 65, 1, 0.05, 0.12, 0, 3000, 2000, 2400, 400, -100, 21.67, 27.1),
(83, 'HURRICANE', 'FLYING', 80, 1, 0.05, 0.11, 0, 3200, 1030, 2800, 1770, -100, 25, 31.3),
(84, 'SLUDGE WAVE', 'POISON', 70, 1, 0.05, 0.095, 0, 3400, 2400, 3300, 900, -100, 20.59, 25.7),
(85, 'HEAT WAVE', 'FIRE', 80, 1, 0.05, 0.095, 0, 3800, 3000, 3400, 400, -100, 21.05, 26.3),
(86, 'HYDRO PUMP', 'WATER', 90, 1, 0.05, 0.11, 0, 3800, 1500, 3600, 2100, -100, 23.68, 29.6),
(87, 'HYDRO PUMP BLASTOISE', 'WATER', 90, 1, 0.05, 0.11, 0, 3800, 1500, 3600, 2100, -100, 23.68, 29.6),
(88, 'BLIZZARD', 'ICE', 100, 1, 0.05, 0.11, 0, 3900, 3600, 3600, 0, -100, 25.64, 32.1),
(89, 'MOONBLAST', 'FAIRY', 85, 1, 0.05, 0.095, 0, 4100, 3500, 4100, 600, -100, 20.73, 25.9),
(90, 'FIRE BLAST', 'FIRE', 100, 1, 0.05, 0.11, 0, 4100, 3600, 4000, 400, -100, 24.39, 30.5),
(91, 'EARTHQUAKE', 'GROUND', 100, 1, 0.05, 0.1, 0, 4200, 2000, 3950, 1950, -100, 23.81, 29.8),
(92, 'THUNDER', 'ELECTRIC', 100, 1, 0.05, 0.11, 0, 4300, 2550, 4100, 1550, -100, 23.26, 29.1),
(93, 'SOLAR BEAM', 'GRASS', 120, 1, 0.05, 0.12, 0, 4900, 3100, 4800, 1700, -100, 24.49, 30.6),
(94, 'HYPER BEAM', 'NORMAL', 120, 1, 0.05, 0.15, 0, 5000, 4000, 4800, 800, -100, 24, 30),
(95, 'PSYSTRIKE', 'PSYCHIC', 100, 1, 0.05, 0.1, 0, 5100, 4400, 5300, 900, -100, 19.61, 24.5),
(999, 'none', 'normal', 1, 1, 0, 0, 0, 999, 999, 999, 999, -999, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skills_ss`
--
ALTER TABLE `skills_ss`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;