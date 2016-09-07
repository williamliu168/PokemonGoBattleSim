-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2016 at 10:59 PM
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
-- Table structure for table `pokemon_stats`
--

CREATE TABLE `pokemon_stats` (
  `id` int(5) NOT NULL,
  `type1` varchar(40) NOT NULL,
  `type2` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `family` varchar(40) NOT NULL,
  `_hp` int(5) NOT NULL,
  `_atk` int(5) NOT NULL,
  `_def` int(5) NOT NULL,
  `_sAtk` int(5) NOT NULL,
  `_sDef` int(5) NOT NULL,
  `_spd` int(5) NOT NULL,
  `_total` int(5) NOT NULL,
  `sta` int(5) NOT NULL,
  `atk` int(5) NOT NULL,
  `def` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon_stats`
--

INSERT INTO `pokemon_stats` (`id`, `type1`, `type2`, `name`, `family`, `_hp`, `_atk`, `_def`, `_sAtk`, `_sDef`, `_spd`, `_total`, `sta`, `atk`, `def`) VALUES
(1, 'GRASS', 'POISON', 'Bulbasaur', 'Bulbasaur', 45, 49, 49, 65, 65, 45, 318, 90, 126, 126),
(2, 'GRASS', 'POISON', 'Ivysaur', 'Bulbasaur', 60, 62, 63, 80, 80, 60, 405, 120, 156, 158),
(3, 'GRASS', 'POISON', 'Venusaur', 'Bulbasaur', 80, 82, 83, 100, 100, 80, 525, 160, 198, 200),
(4, 'FIRE', 'NONE', 'Charmander', 'Charmander', 39, 52, 43, 60, 50, 65, 309, 78, 128, 108),
(5, 'FIRE', 'NONE', 'Charmeleon', 'Charmander', 58, 64, 58, 80, 65, 80, 405, 116, 160, 140),
(6, 'FIRE', 'FLYING', 'Charizard', 'Charmander', 78, 84, 78, 109, 85, 100, 534, 156, 212, 182),
(7, 'WATER', 'NONE', 'Squirtle', 'Squirtle', 44, 48, 65, 50, 64, 43, 314, 88, 112, 142),
(8, 'WATER', 'NONE', 'Wartortle', 'Squirtle', 59, 63, 80, 65, 80, 58, 405, 118, 144, 176),
(9, 'WATER', 'NONE', 'Blastoise', 'Squirtle', 79, 83, 100, 85, 105, 78, 530, 158, 186, 222),
(10, 'BUG', 'NONE', 'Caterpie', 'Caterpie', 45, 30, 35, 20, 20, 45, 195, 90, 62, 66),
(11, 'BUG', 'NONE', 'Metapod', 'Caterpie', 50, 20, 55, 25, 25, 30, 205, 100, 56, 86),
(12, 'BUG', 'FLYING', 'Butterfree', 'Caterpie', 60, 45, 50, 90, 80, 70, 395, 120, 144, 144),
(13, 'BUG', 'POISON', 'Weedle', 'Weedle', 40, 35, 30, 20, 20, 50, 195, 80, 68, 64),
(14, 'BUG', 'POISON', 'Kakuna', 'Weedle', 45, 25, 50, 25, 25, 35, 205, 90, 62, 82),
(15, 'BUG', 'POISON', 'Beedrill', 'Weedle', 65, 90, 40, 45, 80, 75, 395, 130, 144, 130),
(16, 'NORMAL', 'FLYING', 'Pidgey', 'Pidgey', 40, 45, 40, 35, 35, 56, 251, 80, 94, 90),
(17, 'NORMAL', 'FLYING', 'Pidgeotto', 'Pidgey', 63, 60, 55, 50, 50, 71, 349, 126, 126, 122),
(18, 'NORMAL', 'FLYING', 'Pidgeot', 'Pidgey', 83, 80, 75, 70, 70, 101, 479, 166, 170, 166),
(19, 'NORMAL', 'NONE', 'Rattata', 'Rattata', 30, 56, 35, 25, 35, 72, 253, 60, 92, 86),
(20, 'NORMAL', 'NONE', 'Raticate', 'Rattata', 55, 81, 60, 50, 70, 97, 413, 110, 146, 150),
(21, 'NORMAL', 'FLYING', 'Spearow', 'Spearow', 40, 60, 30, 31, 31, 70, 262, 80, 102, 78),
(22, 'NORMAL', 'FLYING', 'Fearow', 'Spearow', 65, 90, 65, 61, 61, 100, 442, 130, 168, 146),
(23, 'POISON', 'NONE', 'Ekans', 'Ekans', 35, 60, 44, 40, 54, 55, 288, 70, 112, 112),
(24, 'POISON', 'NONE', 'Arbok', 'Ekans', 60, 85, 69, 65, 79, 80, 438, 120, 166, 166),
(25, 'ELECTRIC', 'NONE', 'Pikachu', 'Pikachu', 35, 55, 40, 50, 50, 90, 320, 70, 124, 108),
(26, 'ELECTRIC', 'NONE', 'Raichu', 'Pikachu', 60, 90, 55, 90, 80, 110, 485, 120, 200, 154),
(27, 'GROUND', 'NONE', 'Sandshrew', 'Sandshrew', 50, 75, 85, 20, 30, 40, 300, 100, 90, 114),
(28, 'GROUND', 'NONE', 'Sandslash', 'Sandshrew', 75, 100, 110, 45, 55, 65, 450, 150, 150, 172),
(29, 'POISON', 'NONE', 'NidoranF', 'NidoranF', 55, 47, 52, 40, 40, 41, 275, 110, 100, 104),
(30, 'POISON', 'NONE', 'Nidorina', 'NidoranF', 70, 62, 67, 55, 55, 56, 365, 140, 132, 136),
(31, 'POISON', 'GROUND', 'Nidoqueen', 'NidoranF', 90, 92, 87, 75, 85, 76, 505, 180, 184, 190),
(32, 'POISON', 'NONE', 'NidoranM', 'NidoranM', 46, 57, 40, 40, 40, 50, 273, 92, 110, 94),
(33, 'POISON', 'NONE', 'Nidorino', 'NidoranM', 61, 72, 57, 55, 55, 65, 365, 122, 142, 128),
(34, 'POISON', 'GROUND', 'Nidoking', 'NidoranM', 81, 102, 77, 85, 75, 85, 505, 162, 204, 170),
(35, 'FAIRY', 'NONE', 'Clefairy', 'Clefairy', 70, 45, 48, 60, 65, 35, 323, 140, 116, 124),
(36, 'FAIRY', 'NONE', 'Clefable', 'Clefairy', 95, 70, 73, 95, 90, 60, 483, 190, 178, 178),
(37, 'FIRE', 'NONE', 'Vulpix', 'Vulpix', 38, 41, 40, 50, 65, 65, 299, 76, 106, 118),
(38, 'FIRE', 'NONE', 'Ninetales', 'Vulpix', 73, 76, 75, 81, 100, 100, 505, 146, 176, 194),
(39, 'NORMAL', 'FAIRY', 'Jigglypuff', 'Jigglypuff', 115, 45, 20, 45, 25, 20, 270, 230, 98, 54),
(40, 'NORMAL', 'FAIRY', 'Wigglytuff', 'Jigglypuff', 140, 70, 45, 85, 50, 45, 435, 280, 168, 108),
(41, 'POISON', 'FLYING', 'Zubat', 'Zubat', 40, 45, 35, 30, 40, 55, 245, 80, 88, 90),
(42, 'POISON', 'FLYING', 'Golbat', 'Zubat', 75, 80, 70, 65, 75, 90, 455, 150, 164, 164),
(43, 'GRASS', 'POISON', 'Oddish', 'Oddish', 45, 50, 55, 75, 65, 30, 320, 90, 134, 130),
(44, 'GRASS', 'POISON', 'Gloom', 'Oddish', 60, 65, 70, 85, 75, 40, 395, 120, 162, 158),
(45, 'GRASS', 'POISON', 'Vileplume', 'Oddish', 75, 80, 85, 110, 90, 50, 490, 150, 202, 190),
(46, 'BUG', 'GRASS', 'Paras', 'Paras', 35, 70, 55, 45, 55, 25, 285, 70, 122, 120),
(47, 'BUG', 'GRASS', 'Parasect', 'Paras', 60, 95, 80, 60, 80, 30, 405, 120, 162, 170),
(48, 'BUG', 'POISON', 'Venonat', 'Venonat', 60, 55, 50, 40, 55, 45, 305, 120, 108, 118),
(49, 'BUG', 'POISON', 'Venomoth', 'Venonat', 70, 65, 60, 90, 75, 90, 450, 140, 172, 154),
(50, 'GROUND', 'NONE', 'Diglett', 'Diglett', 10, 55, 25, 35, 45, 95, 265, 20, 108, 86),
(51, 'GROUND', 'NONE', 'Dugtrio', 'Diglett', 35, 80, 50, 50, 70, 120, 405, 70, 148, 140),
(52, 'NORMAL', 'NONE', 'Meowth', 'Meowth', 40, 45, 35, 40, 40, 90, 290, 80, 104, 94),
(53, 'NORMAL', 'NONE', 'Persian', 'Meowth', 65, 70, 60, 65, 65, 115, 440, 130, 156, 146),
(54, 'WATER', 'NONE', 'Psyduck', 'Psyduck', 50, 52, 48, 65, 50, 55, 320, 100, 132, 112),
(55, 'WATER', 'NONE', 'Golduck', 'Psyduck', 80, 82, 78, 95, 80, 85, 500, 160, 194, 176),
(56, 'FIGHTING', 'NONE', 'Mankey', 'Mankey', 40, 80, 35, 35, 45, 70, 305, 80, 122, 96),
(57, 'FIGHTING', 'NONE', 'Primeape', 'Mankey', 65, 105, 60, 60, 70, 95, 455, 130, 178, 150),
(58, 'FIRE', 'NONE', 'Growlithe', 'Growlithe', 55, 70, 45, 70, 50, 60, 350, 110, 156, 110),
(59, 'FIRE', 'NONE', 'Arcanine', 'Growlithe', 90, 110, 80, 100, 80, 95, 555, 180, 230, 180),
(60, 'WATER', 'NONE', 'Poliwag', 'Poliwag', 40, 50, 40, 40, 40, 90, 300, 80, 108, 98),
(61, 'WATER', 'NONE', 'Poliwhirl', 'Poliwag', 65, 65, 65, 50, 50, 90, 385, 130, 132, 132),
(62, 'WATER', 'FIGHTING', 'Poliwrath', 'Poliwag', 90, 95, 95, 70, 90, 70, 510, 180, 180, 202),
(63, 'PSYCHIC', 'NONE', 'Abra', 'Abra', 25, 20, 15, 105, 55, 90, 310, 50, 110, 76),
(64, 'PSYCHIC', 'NONE', 'Kadabra', 'Abra', 40, 35, 30, 120, 70, 105, 400, 80, 150, 112),
(65, 'PSYCHIC', 'NONE', 'Alakazam', 'Abra', 55, 50, 45, 135, 95, 120, 500, 110, 186, 152),
(66, 'FIGHTING', 'NONE', 'Machop', 'Machop', 70, 80, 50, 35, 35, 35, 305, 140, 118, 96),
(67, 'FIGHTING', 'NONE', 'Machoke', 'Machop', 80, 100, 70, 50, 60, 45, 405, 160, 154, 144),
(68, 'FIGHTING', 'NONE', 'Machamp', 'Machop', 90, 130, 80, 65, 85, 55, 505, 180, 198, 180),
(69, 'GRASS', 'POISON', 'Bellsprout', 'Bellsprout', 50, 75, 35, 70, 30, 40, 300, 100, 158, 78),
(70, 'GRASS', 'POISON', 'Weepinbell', 'Bellsprout', 65, 90, 50, 85, 45, 55, 390, 130, 190, 110),
(71, 'GRASS', 'POISON', 'Victreebel', 'Bellsprout', 80, 105, 65, 100, 70, 70, 490, 160, 222, 152),
(72, 'WATER', 'POISON', 'Tentacool', 'Tentacool', 40, 40, 35, 50, 100, 70, 335, 80, 106, 136),
(73, 'WATER', 'POISON', 'Tentacruel', 'Tentacool', 80, 70, 65, 80, 120, 100, 515, 160, 170, 196),
(74, 'ROCK', 'GROUND', 'Geodude', 'Geodude', 40, 80, 100, 30, 30, 20, 300, 80, 106, 118),
(75, 'ROCK', 'GROUND', 'Graveler', 'Geodude', 55, 95, 115, 45, 45, 35, 390, 110, 142, 156),
(76, 'ROCK', 'GROUND', 'Golem', 'Geodude', 80, 120, 130, 55, 65, 45, 495, 160, 176, 198),
(77, 'FIRE', 'NONE', 'Ponyta', 'Ponyta', 50, 85, 55, 65, 65, 90, 410, 100, 168, 138),
(78, 'FIRE', 'NONE', 'Rapidash', 'Ponyta', 65, 100, 70, 80, 80, 105, 500, 130, 200, 170),
(79, 'WATER', 'PSYCHIC', 'Slowpoke', 'Slowpoke', 90, 65, 65, 40, 40, 15, 315, 180, 110, 110),
(80, 'WATER', 'PSYCHIC', 'Slowbro', 'Slowpoke', 95, 75, 110, 100, 80, 30, 490, 190, 184, 198),
(81, 'ELECTRIC', 'STEEL', 'Magnemite', 'Magnemite', 25, 35, 70, 95, 55, 45, 325, 50, 128, 138),
(82, 'ELECTRIC', 'STEEL', 'Magneton', 'Magnemite', 50, 60, 95, 120, 70, 70, 465, 100, 186, 180),
(83, 'NORMAL', 'FLYING', 'Farfetch''d', 'Farfetch''d', 52, 65, 55, 58, 62, 60, 352, 104, 138, 132),
(84, 'NORMAL', 'FLYING', 'Doduo', 'Doduo', 35, 85, 45, 35, 35, 75, 310, 70, 126, 96),
(85, 'NORMAL', 'FLYING', 'Dodrio', 'Doduo', 60, 110, 70, 60, 60, 100, 460, 120, 182, 150),
(86, 'WATER', 'NONE', 'Seel', 'Seel', 65, 45, 55, 45, 70, 45, 325, 130, 104, 138),
(87, 'WATER', 'ICE', 'Dewgong', 'Seel', 90, 70, 80, 70, 95, 70, 475, 180, 156, 192),
(88, 'POISON', 'NONE', 'Grimer', 'Grimer', 80, 80, 50, 40, 50, 25, 325, 160, 124, 110),
(89, 'POISON', 'NONE', 'Muk', 'Grimer', 105, 105, 75, 65, 100, 50, 500, 210, 180, 188),
(90, 'WATER', 'NONE', 'Shellder', 'Shellder', 30, 65, 100, 45, 25, 40, 305, 60, 120, 112),
(91, 'WATER', 'ICE', 'Cloyster', 'Shellder', 50, 95, 180, 85, 45, 70, 525, 100, 196, 196),
(92, 'GHOST', 'POISON', 'Gastly', 'Gastly', 30, 35, 30, 100, 35, 80, 310, 60, 136, 82),
(93, 'GHOST', 'POISON', 'Haunter', 'Gastly', 45, 50, 45, 115, 55, 95, 405, 90, 172, 118),
(94, 'GHOST', 'POISON', 'Gengar', 'Gastly', 60, 65, 60, 130, 75, 110, 500, 120, 204, 156),
(95, 'ROCK', 'GROUND', 'Onix', 'Onix', 35, 45, 160, 30, 45, 70, 385, 70, 90, 186),
(96, 'PSYCHIC', 'NONE', 'Drowzee', 'Drowzee', 60, 48, 45, 43, 90, 42, 328, 120, 104, 140),
(97, 'PSYCHIC', 'NONE', 'Hypno', 'Drowzee', 85, 73, 70, 73, 115, 67, 483, 170, 162, 196),
(98, 'WATER', 'NONE', 'Krabby', 'Krabby', 30, 105, 90, 25, 25, 50, 325, 60, 116, 110),
(99, 'WATER', 'NONE', 'Kingler', 'Krabby', 55, 130, 115, 50, 50, 75, 475, 110, 178, 168),
(100, 'ELECTRIC', 'NONE', 'Voltorb', 'Voltorb', 40, 30, 50, 55, 55, 100, 330, 80, 102, 124),
(101, 'ELECTRIC', 'NONE', 'Electrode', 'Voltorb', 60, 50, 70, 80, 80, 140, 480, 120, 150, 174),
(102, 'GRASS', 'PSYCHIC', 'Exeggcute', 'Exeggcute', 60, 40, 80, 60, 45, 40, 325, 120, 110, 132),
(103, 'GRASS', 'PSYCHIC', 'Exeggutor', 'Exeggcute', 95, 95, 85, 125, 65, 55, 520, 190, 232, 164),
(104, 'GROUND', 'NONE', 'Cubone', 'Cubone', 50, 50, 95, 40, 50, 35, 320, 100, 102, 150),
(105, 'GROUND', 'NONE', 'Marowak', 'Cubone', 60, 80, 110, 50, 80, 45, 425, 120, 140, 202),
(106, 'FIGHTING', 'NONE', 'Hitmonlee', 'Hitmonlee', 50, 120, 53, 35, 110, 87, 455, 100, 148, 172),
(107, 'FIGHTING', 'NONE', 'Hitmonchan', 'Hitmonlee', 50, 105, 79, 35, 110, 76, 455, 100, 138, 204),
(108, 'NORMAL', 'NONE', 'Lickitung', 'Lickitung', 90, 55, 75, 60, 75, 30, 385, 180, 126, 160),
(109, 'POISON', 'NONE', 'Koffing', 'Koffing', 40, 65, 95, 60, 45, 35, 340, 80, 136, 142),
(110, 'POISON', 'NONE', 'Weezing', 'Koffing', 65, 90, 120, 85, 70, 60, 490, 130, 190, 198),
(111, 'GROUND', 'ROCK', 'Rhyhorn', 'Rhyhorn', 80, 85, 95, 30, 30, 25, 345, 160, 110, 116),
(112, 'GROUND', 'ROCK', 'Rhydon', 'Rhyhorn', 105, 130, 120, 45, 45, 40, 485, 210, 166, 160),
(113, 'NORMAL', 'NONE', 'Chansey', 'Chansey', 250, 5, 5, 35, 105, 50, 450, 500, 40, 60),
(114, 'GRASS', 'NONE', 'Tangela', 'Tangela', 65, 55, 115, 100, 40, 60, 435, 130, 164, 152),
(115, 'NORMAL', 'NONE', 'Kangaskhan', 'Kangaskhan', 105, 95, 80, 40, 80, 90, 490, 210, 142, 178),
(116, 'WATER', 'NONE', 'Horsea', 'Horsea', 30, 40, 70, 70, 25, 60, 295, 60, 122, 100),
(117, 'WATER', 'NONE', 'Seadra', 'Horsea', 55, 65, 95, 95, 45, 85, 440, 110, 176, 150),
(118, 'WATER', 'NONE', 'Goldeen', 'Goldeen', 45, 67, 60, 35, 50, 63, 320, 90, 112, 126),
(119, 'WATER', 'NONE', 'Seaking', 'Goldeen', 80, 92, 65, 65, 80, 68, 450, 160, 172, 160),
(120, 'WATER', 'NONE', 'Staryu', 'Staryu', 30, 45, 55, 70, 55, 85, 340, 60, 130, 128),
(121, 'WATER', 'PSYCHIC', 'Starmie', 'Staryu', 60, 75, 85, 100, 85, 115, 520, 120, 194, 192),
(122, 'PSYCHIC', 'FAIRY', 'Mr. Mime', 'Mr. Mime', 40, 45, 65, 100, 120, 90, 460, 80, 154, 196),
(123, 'BUG', 'FLYING', 'Scyther', 'Scyther', 70, 110, 80, 55, 80, 105, 500, 140, 176, 180),
(124, 'ICE', 'PSYCHIC', 'Jynx', 'Jynx', 65, 50, 35, 115, 95, 95, 455, 130, 172, 134),
(125, 'ELECTRIC', 'NONE', 'Electabuzz', 'Electabuzz', 65, 83, 57, 95, 85, 105, 490, 130, 198, 160),
(126, 'FIRE', 'NONE', 'Magmar', 'Magmar', 65, 95, 57, 100, 85, 93, 495, 130, 214, 158),
(127, 'BUG', 'NONE', 'Pinsir', 'Pinsir', 65, 125, 100, 55, 70, 85, 500, 130, 184, 186),
(128, 'NORMAL', 'NONE', 'Tauros', 'Tauros', 75, 100, 95, 40, 70, 110, 490, 150, 148, 184),
(129, 'WATER', 'NONE', 'Magikarp', 'Magikarp', 20, 10, 55, 15, 20, 80, 200, 40, 42, 84),
(130, 'WATER', 'FLYING', 'Gyarados', 'Magikarp', 95, 125, 79, 60, 100, 81, 540, 190, 192, 196),
(131, 'WATER', 'ICE', 'Lapras', 'Lapras', 130, 85, 80, 85, 95, 60, 535, 260, 186, 190),
(132, 'NORMAL', 'NONE', 'Ditto', 'Ditto', 48, 48, 48, 48, 48, 48, 288, 96, 110, 110),
(133, 'NORMAL', 'NONE', 'Eevee', 'Eevee', 55, 55, 50, 45, 65, 55, 325, 110, 114, 128),
(134, 'WATER', 'NONE', 'Vaporeon', 'Eevee', 130, 65, 60, 110, 95, 65, 525, 260, 186, 168),
(135, 'ELECTRIC', 'NONE', 'Jolteon', 'Eevee', 65, 65, 60, 110, 95, 130, 525, 130, 192, 174),
(136, 'FIRE', 'NONE', 'Flareon', 'Eevee', 65, 130, 60, 95, 110, 65, 525, 130, 238, 178),
(137, 'NORMAL', 'NONE', 'Porygon', 'Porygon', 65, 60, 70, 85, 75, 40, 395, 130, 156, 158),
(138, 'ROCK', 'WATER', 'Omanyte', 'Omanyte', 35, 40, 100, 90, 55, 35, 355, 70, 132, 160),
(139, 'ROCK', 'WATER', 'Omastar', 'Omanyte', 70, 60, 125, 115, 70, 55, 495, 140, 180, 202),
(140, 'ROCK', 'WATER', 'Kabuto', 'Kabuto', 30, 80, 90, 55, 45, 55, 355, 60, 148, 142),
(141, 'ROCK', 'WATER', 'Kabutops', 'Kabuto', 60, 115, 105, 65, 70, 80, 495, 120, 190, 190),
(142, 'ROCK', 'FLYING', 'Aerodactyl', 'Aerodactyl', 80, 105, 65, 60, 75, 130, 515, 160, 182, 162),
(143, 'NORMAL', 'NONE', 'Snorlax', 'Snorlax', 160, 110, 65, 65, 110, 30, 540, 320, 180, 180),
(144, 'ICE', 'FLYING', 'Articuno', 'Articuno', 90, 85, 100, 95, 125, 85, 580, 180, 198, 242),
(145, 'ELECTRIC', 'FLYING', 'Zapdos', 'Zapdos', 90, 90, 85, 125, 90, 100, 580, 180, 232, 194),
(146, 'FIRE', 'FLYING', 'Moltres', 'Moltres', 90, 100, 90, 125, 85, 90, 580, 180, 242, 194),
(147, 'DRAGON', 'NONE', 'Dratini', 'Dratini', 41, 64, 45, 50, 50, 50, 300, 82, 128, 110),
(148, 'DRAGON', 'NONE', 'Dragonair', 'Dratini', 61, 84, 65, 70, 70, 70, 420, 122, 170, 152),
(149, 'DRAGON', 'FLYING', 'Dragonite', 'Dratini', 91, 134, 95, 100, 100, 80, 600, 182, 250, 212),
(150, 'PSYCHIC', 'NONE', 'Mewtwo', 'Mewtwo', 106, 110, 90, 154, 90, 130, 680, 212, 284, 202),
(151, 'PSYCHIC', 'NONE', 'Mew', 'Mew', 100, 100, 100, 100, 100, 100, 600, 200, 220, 220);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon_stats`
--
ALTER TABLE `pokemon_stats`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
