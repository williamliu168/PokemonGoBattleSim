-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2016 at 05:09 AM
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
-- Table structure for table `cpm`
--

CREATE TABLE `cpm` (
  `mon_level` int(11) NOT NULL,
  `cpm` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpm`
--

INSERT INTO `cpm` (`mon_level`, `cpm`) VALUES
(1, 0.094),
(2, 0.1351374),
(3, 0.1663979),
(4, 0.1926509),
(5, 0.2157325),
(6, 0.2365727),
(7, 0.2557201),
(8, 0.2735304),
(9, 0.2902499),
(10, 0.3060574),
(11, 0.3210876),
(12, 0.335445),
(13, 0.3492127),
(14, 0.3624578),
(15, 0.3752356),
(16, 0.3875924),
(17, 0.3995673),
(18, 0.4111936),
(19, 0.4225),
(20, 0.4335117),
(21, 0.4431076),
(22, 0.45306),
(23, 0.4627984),
(24, 0.4723361),
(25, 0.481685),
(26, 0.4908558),
(27, 0.4998584),
(28, 0.5087018),
(29, 0.517394),
(30, 0.5259425),
(31, 0.5343543),
(32, 0.5426358),
(33, 0.5507927),
(34, 0.5588306),
(35, 0.5667545),
(36, 0.5745692),
(37, 0.5822789),
(38, 0.5898879),
(39, 0.5974),
(40, 0.6048188),
(41, 0.6121573),
(42, 0.6194041),
(43, 0.6265671),
(44, 0.6336492),
(45, 0.640653),
(46, 0.647581),
(47, 0.6544356),
(48, 0.6612193),
(49, 0.667934),
(50, 0.6745819),
(51, 0.6811649),
(52, 0.6876849),
(53, 0.6941437),
(54, 0.7005429),
(55, 0.7068842),
(56, 0.7131691),
(57, 0.7193991),
(58, 0.7255756),
(59, 0.7317),
(60, 0.7377735),
(61, 0.7377695),
(62, 0.7407856),
(63, 0.7437894),
(64, 0.7467812),
(65, 0.749761),
(66, 0.7527291),
(67, 0.7556855),
(68, 0.7586304),
(69, 0.7615638),
(70, 0.7644861),
(71, 0.7673972),
(72, 0.7702973),
(73, 0.7731865),
(74, 0.776065),
(75, 0.7789328),
(76, 0.7817901),
(77, 0.784637),
(78, 0.7874736),
(79, 0.7903),
(80, 0.7931164);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_skills`
--

CREATE TABLE `pokemon_skills` (
  `id` int(5) NOT NULL,
  `type1` varchar(40) NOT NULL,
  `type2` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `q1` varchar(40) NOT NULL,
  `q2` varchar(40) NOT NULL,
  `s1` varchar(40) NOT NULL,
  `s2` varchar(40) NOT NULL,
  `s3` varchar(40) NOT NULL,
  `s4` varchar(40) NOT NULL,
  `s5` varchar(40) NOT NULL,
  `s6` varchar(40) NOT NULL,
  `s7` varchar(40) NOT NULL,
  `s8` varchar(40) NOT NULL,
  `s9` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon_skills`
--

INSERT INTO `pokemon_skills` (`id`, `type1`, `type2`, `name`, `q1`, `q2`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`) VALUES
(1, 'GRASS', 'POISON', 'Bulbasaur', 'Vine Whip', 'Tackle', 'Sludge Bomb', 'Seed Bomb', 'Power Whip', '', '', '', '', '', ''),
(2, 'GRASS', 'POISON', 'Ivysaur', 'Razor Leaf', 'Vine Whip', 'Sludge Bomb', 'Solar Beam', 'Power Whip', '', '', '', '', '', ''),
(3, 'GRASS', 'POISON', 'Venusaur', 'Razor Leaf', 'Vine Whip', 'Sludge Bomb', 'Petal Blizzard', 'Solar Beam', '', '', '', '', '', ''),
(4, 'FIRE', 'NONE', 'Charmander', 'Ember', 'Scratch', 'Flame Charge', 'Flame Burst', 'Flamethrower', '', '', '', '', '', ''),
(5, 'FIRE', 'NONE', 'Charmeleon', 'Ember', 'Scratch', 'Fire Punch', 'Flame Burst', 'Flamethrower', '', '', '', '', '', ''),
(6, 'FIRE', 'FLYING', 'Charizard', 'Ember', 'Wing Attack', 'Fire Blast', 'Dragon Claw', 'Flamethrower', '', '', '', '', '', ''),
(7, 'WATER', 'NONE', 'Squirtle', 'Bubble', 'Tackle', 'Aqua Jet', 'Aqua Tail', 'Water Pulse', '', '', '', '', '', ''),
(8, 'WATER', 'NONE', 'Wartortle', 'Water Gun', 'Bite', 'Aqua Jet', 'Ice Beam', 'Hydro Pump', '', '', '', '', '', ''),
(9, 'WATER', 'NONE', 'Blastoise', 'Water Gun', 'Bite', 'Flash Cannon', 'Ice Beam', 'Hydro Pump', '', '', '', '', '', ''),
(10, 'BUG', 'NONE', 'Caterpie', 'Bug Bite', 'Tackle', 'Struggle', '', '', '', '', '', '', '', ''),
(11, 'BUG', 'NONE', 'Metapod', 'Bug Bite', 'Tackle', 'Struggle', '', '', '', '', '', '', '', ''),
(12, 'BUG', 'FLYING', 'Butterfree', 'Bug Bite', 'Confusion', 'Bug Buzz', 'Psychic', 'Signal Beam', '', '', '', '', '', ''),
(13, 'BUG', 'POISON', 'Weedle', 'Bug Bite', 'Poison Sting', 'Struggle', '', '', '', '', '', '', '', ''),
(14, 'BUG', 'POISON', 'Kakuna', 'Bug Bite', 'Poison Sting', 'Struggle', '', '', '', '', '', '', '', ''),
(15, 'BUG', 'POISON', 'Beedrill', 'Bug Bite', 'Poison Jab', 'Sludge Bomb', 'Aerial Ace', 'X Scissor', '', '', '', '', '', ''),
(16, 'NORMAL', 'FLYING', 'Pidgey', 'Quick Attack', 'Tackle', 'Twister', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', ''),
(17, 'NORMAL', 'FLYING', 'Pidgeotto', 'Wing Attack', 'Steel Wing', 'Twister', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', ''),
(18, 'NORMAL', 'FLYING', 'Pidgeot', 'Wing Attack', 'Steel Wing', 'Hurricane', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', ''),
(19, 'NORMAL', 'NONE', 'Rattata', 'Tackle', 'Quick Attack', 'Dig', 'Hyper Fang', 'Body Slam', '', '', '', '', '', ''),
(20, 'NORMAL', 'NONE', 'Raticate', 'Bite', 'Quick Attack', 'Dig', 'Hyper Fang', 'Hyper Beam', '', '', '', '', '', ''),
(21, 'NORMAL', 'FLYING', 'Spearow', 'Peck', 'Quick Attack', 'Aerial Ace', 'Drill Peck', 'Twister', '', '', '', '', '', ''),
(22, 'NORMAL', 'FLYING', 'Fearow', 'Peck', 'Steel Wing', 'Aerial Ace', 'Drill Run', 'Twister', '', '', '', '', '', ''),
(23, 'POISON', 'NONE', 'Ekans', 'Poison Sting', 'Acid', 'Wrap', 'Sludge Bomb', 'Gunk Shot', '', '', '', '', '', ''),
(24, 'POISON', 'NONE', 'Arbok', 'Bite', 'Acid', 'Dark Pulse', 'Sludge Wave', 'Gunk Shot', '', '', '', '', '', ''),
(25, 'ELECTRIC', 'NONE', 'Pikachu', 'Thunder Shock', 'Quick Attack', 'Discharge', 'Thunderbolt', 'Thunder', '', '', '', '', '', ''),
(26, 'ELECTRIC', 'NONE', 'Raichu', 'Thunder Shock', 'Spark', 'Brick Break', 'Thunder Punch', 'Thunder', '', '', '', '', '', ''),
(27, 'GROUND', 'NONE', 'Sandshrew', 'Scratch', 'Mud Shot', 'Dig', 'Rock Slide', 'Rock Tomb', '', '', '', '', '', ''),
(28, 'GROUND', 'NONE', 'Sandslash', 'Metal Claw', 'Mud Shot', 'Earthquake', 'Rock Tomb', 'Bulldoze', '', '', '', '', '', ''),
(29, 'POISON', 'NONE', 'NidoranF', 'Bite', 'Poison Sting', 'Poison Fang', 'Body Slam', 'Sludge Bomb', '', '', '', '', '', ''),
(30, 'POISON', 'NONE', 'Nidorina', 'Bite', 'Poison Sting', 'Poison Fang', 'Dig', 'Sludge Bomb', '', '', '', '', '', ''),
(31, 'POISON', 'GROUND', 'Nidoqueen', 'Poison Jab', 'Bite', 'Earthquake', 'Sludge Wave', 'Stone Edge', '', '', '', '', '', ''),
(32, 'POISON', 'NONE', 'NidoranM', 'Peck', 'Poison Sting', 'Horn Attack', 'Body Slam', 'Sludge Bomb', '', '', '', '', '', ''),
(33, 'POISON', 'NONE', 'Nidorino', 'Poison Jab', 'Poison Sting', 'Horn Attack', 'Dig', 'Sludge Bomb', '', '', '', '', '', ''),
(34, 'POISON', 'GROUND', 'Nidoking', 'Poison Jab', 'Fury Cutter', 'Earthquake', 'Sludge Wave', 'Megahorn', '', '', '', '', '', ''),
(35, 'FAIRY', 'NONE', 'Clefairy', 'Pound', 'Zen Headbutt', 'Disarming Voice', 'Body Slam', 'Moonblast', '', '', '', '', '', ''),
(36, 'FAIRY', 'NONE', 'Clefable', 'Pound', 'Zen Headbutt', 'Dazzling Gleam', 'Psychic', 'Moonblast', '', '', '', '', '', ''),
(37, 'FIRE', 'NONE', 'Vulpix', 'Quick Attack', 'Ember', 'Body Slam', 'Flamethrower', 'Flame Charge', '', '', '', '', '', ''),
(38, 'FIRE', 'NONE', 'Ninetales', 'Feint Attack', 'Ember', 'Heat Wave', 'Flamethrower', 'Fire Blast', '', '', '', '', '', ''),
(39, 'NORMAL', 'FAIRY', 'Jigglypuff', 'Pound', 'Feint Attack', 'Disarming Voice', 'Body Slam', 'Play Rough', '', '', '', '', '', ''),
(40, 'NORMAL', 'FAIRY', 'Wigglytuff', 'Pound', 'Feint Attack', 'Dazzling Gleam', 'Hyper Beam', 'Play Rough', '', '', '', '', '', ''),
(41, 'POISON', 'FLYING', 'Zubat', 'Quick Attack', 'Bite', 'Poison Fang', 'Air Cutter', 'Sludge Bomb', '', '', '', '', '', ''),
(42, 'POISON', 'FLYING', 'Golbat', 'Wing Attack', 'Bite', 'Poison Fang', 'Air Cutter', 'Ominous Wind', '', '', '', '', '', ''),
(43, 'GRASS', 'POISON', 'Oddish', 'Razor Leaf', 'Acid', 'Seed Bomb', 'Sludge Bomb', 'Moonblast', '', '', '', '', '', ''),
(44, 'GRASS', 'POISON', 'Gloom', 'Razor Leaf', 'Acid', 'Petal Blizzard', 'Sludge Bomb', 'Moonblast', '', '', '', '', '', ''),
(45, 'GRASS', 'POISON', 'Vileplume', 'Razor Leaf', 'Acid', 'Petal Blizzard', 'Solar Beam', 'Moonblast', '', '', '', '', '', ''),
(46, 'BUG', 'GRASS', 'Paras', 'Scratch', 'Bug Bite', 'Cross Poison', 'X Scissor', 'Seed Bomb', '', '', '', '', '', ''),
(47, 'BUG', 'GRASS', 'Parasect', 'Bug Bite', 'Fury Cutter', 'Cross Poison', 'X Scissor', 'Solar Beam', '', '', '', '', '', ''),
(48, 'BUG', 'POISON', 'Venonat', 'Bug Bite', 'Confusion', 'Psybeam', 'Dazzling Gleam', 'Shadow Ball', '', '', '', '', '', ''),
(49, 'BUG', 'POISON', 'Venomoth', 'Bug Bite', 'Confusion', 'Poison Fang', 'Psychic', 'Bug Buzz', '', '', '', '', '', ''),
(50, 'GROUND', 'NONE', 'Diglett', 'Mud Shot', 'Scratch', 'Dig', 'Mud Bomb', 'Rock Tomb', '', '', '', '', '', ''),
(51, 'GROUND', 'NONE', 'Dugtrio', 'Sucker Punch', 'Mud Shot', 'Earthquake', 'Mud Bomb', 'Stone Edge', '', '', '', '', '', ''),
(52, 'NORMAL', 'NONE', 'Meowth', 'Scratch', 'Bite', 'Night Slash', 'Dark Pulse', 'Body Slam', '', '', '', '', '', ''),
(53, 'NORMAL', 'NONE', 'Persian', 'Scratch', 'Feint Attack', 'Night Slash', 'Power Gem', 'Play Rough', '', '', '', '', '', ''),
(54, 'WATER', 'NONE', 'Psyduck', 'Water Gun', 'Zen Headbutt', 'Psybeam', 'Aqua Tail', 'Cross Chop', '', '', '', '', '', ''),
(55, 'WATER', 'NONE', 'Golduck', 'Water Gun', 'Confusion', 'Psychic', 'Hydro Pump', 'Ice Beam', '', '', '', '', '', ''),
(56, 'FIGHTING', 'NONE', 'Mankey', 'Karate Chop', 'Scratch', 'Cross Chop', 'Low Sweep', 'Brick Break', '', '', '', '', '', ''),
(57, 'FIGHTING', 'NONE', 'Primeape', 'Low Kick', 'Karate Chop', 'Cross Chop', 'Low Sweep', 'Night Slash', '', '', '', '', '', ''),
(58, 'FIRE', 'NONE', 'Growlithe', 'Ember', 'Bite', 'Flame Wheel', 'Body Slam', 'Flamethrower', '', '', '', '', '', ''),
(59, 'FIRE', 'NONE', 'Arcanine', 'Fire Fang', 'Bite', 'Fire Blast', 'Flamethrower', 'Bulldoze', '', '', '', '', '', ''),
(60, 'WATER', 'NONE', 'Poliwag', 'Bubble', 'Mud Shot', 'Bubble Beam', 'Mud Bomb', 'Body Slam', '', '', '', '', '', ''),
(61, 'WATER', 'NONE', 'Poliwhirl', 'Bubble', 'Mud Shot', 'Scald', 'Mud Bomb', 'Bubble Beam', '', '', '', '', '', ''),
(62, 'WATER', 'FIGHTING', 'Poliwrath', 'Bubble', 'Mud Shot', 'Hydro Pump', 'Submission', 'Ice Punch', '', '', '', '', '', ''),
(63, 'PSYCHIC', 'NONE', 'Abra', 'Zen Headbutt', '', 'Psyshock', 'Signal Beam', 'Shadow Ball', '', '', '', '', '', ''),
(64, 'PSYCHIC', 'NONE', 'Kadabra', 'Psycho Cut', 'Confusion', 'Psybeam', 'Dazzling Gleam', 'Shadow Ball', '', '', '', '', '', ''),
(65, 'PSYCHIC', 'NONE', 'Alakazam', 'Psycho Cut', 'Confusion', 'Psychic', 'Dazzling Gleam', 'Shadow Ball', '', '', '', '', '', ''),
(66, 'FIGHTING', 'NONE', 'Machop', 'Low Kick', 'Karate Chop', 'Low Sweep', 'Brick Break', 'Cross Chop', '', '', '', '', '', ''),
(67, 'FIGHTING', 'NONE', 'Machoke', 'Low Kick', 'Karate Chop', 'Submission', 'Brick Break', 'Cross Chop', '', '', '', '', '', ''),
(68, 'FIGHTING', 'NONE', 'Machamp', 'Bullet Punch', 'Karate Chop', 'Stone Edge', 'Submission', 'Cross Chop', '', '', '', '', '', ''),
(69, 'GRASS', 'POISON', 'Bellsprout', 'Vine Whip', 'Acid', 'Power Whip', 'Sludge Bomb', 'Wrap', '', '', '', '', '', ''),
(70, 'GRASS', 'POISON', 'Weepinbell', 'Razor Leaf', 'Acid', 'Power Whip', 'Sludge Bomb', 'Seed Bomb', '', '', '', '', '', ''),
(71, 'GRASS', 'POISON', 'Victreebel', 'Razor Leaf', 'Acid', 'Leaf Blade', 'Sludge Bomb', 'Solar Beam', '', '', '', '', '', ''),
(72, 'WATER', 'POISON', 'Tentacool', 'Bubble', 'Poison Sting', 'Bubble Beam', 'Water Pulse', 'Wrap', '', '', '', '', '', ''),
(73, 'WATER', 'POISON', 'Tentacruel', 'Acid', 'Poison Jab', 'Hydro Pump', 'Sludge Wave', 'Blizzard', '', '', '', '', '', ''),
(74, 'ROCK', 'GROUND', 'Geodude', 'Rock Throw', 'Tackle', 'Rock Slide', 'Rock Tomb', 'Dig', '', '', '', '', '', ''),
(75, 'ROCK', 'GROUND', 'Graveler', 'Rock Throw', 'Mud Shot', 'Dig', 'Stone Edge', 'Rock Slide', '', '', '', '', '', ''),
(76, 'ROCK', 'GROUND', 'Golem', 'Rock Throw', 'Mud Shot', 'Stone Edge', 'Ancient Power', 'Earthquake', '', '', '', '', '', ''),
(77, 'FIRE', 'NONE', 'Ponyta', 'Tackle', 'Ember', 'Flame Charge', 'Flame Wheel', 'Fire Blast', '', '', '', '', '', ''),
(78, 'FIRE', 'NONE', 'Rapidash', 'Low Kick', 'Ember', 'Fire Blast', 'Drill Run', 'Heat Wave', '', '', '', '', '', ''),
(79, 'WATER', 'PSYCHIC', 'Slowpoke', 'Water Gun', 'Confusion', 'Water Pulse', 'Psyshock', 'Psychic', '', '', '', '', '', ''),
(80, 'WATER', 'PSYCHIC', 'Slowbro', 'Water Gun', 'Confusion', 'Water Pulse', 'Psychic', 'Ice Beam', '', '', '', '', '', ''),
(81, 'ELECTRIC', 'STEEL', 'Magnemite', 'Spark', 'Thunder Shock', 'Discharge', 'Magnet Bomb', 'Thunderbolt', '', '', '', '', '', ''),
(82, 'ELECTRIC', 'STEEL', 'Magneton', 'Spark', 'Thunder Shock', 'Discharge', 'Magnet Bomb', 'Flash Cannon', '', '', '', '', '', ''),
(83, 'NORMAL', 'FLYING', 'Farfetch''d', 'Cut', 'Fury Cutter', 'Aerial Ace', 'Air Cutter', 'Leaf Blade', '', '', '', '', '', ''),
(84, 'NORMAL', 'FLYING', 'Doduo', 'Peck', 'Quick Attack', 'Drill Peck', 'Aerial Ace', 'Swift', '', '', '', '', '', ''),
(85, 'NORMAL', 'FLYING', 'Dodrio', 'Feint Attack', 'Steel Wing', 'Drill Peck', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', ''),
(86, 'WATER', 'NONE', 'Seel', 'Ice Shard', 'Water Gun', 'Aqua Jet', 'Icy Wind', 'Aqua Tail', '', '', '', '', '', ''),
(87, 'WATER', 'ICE', 'Dewgong', 'Frost Breath', 'Ice Shard', 'Icy Wind', 'Aqua Jet', 'Blizzard', '', '', '', '', '', ''),
(88, 'POISON', 'NONE', 'Grimer', 'Acid', 'Mud Slap', 'Sludge', 'Mud Bomb', 'Sludge Bomb', '', '', '', '', '', ''),
(89, 'POISON', 'NONE', 'Muk', 'Acid', 'Poison Jab', 'Dark Pulse', 'Gunk Shot', 'Sludge Wave', '', '', '', '', '', ''),
(90, 'WATER', 'NONE', 'Shellder', 'Ice Shard', 'Tackle', 'Bubble Beam', 'Water Pulse', 'Icy Wind', '', '', '', '', '', ''),
(91, 'WATER', 'ICE', 'Cloyster', 'Frost Breath', 'Ice Shard', 'Icy Wind', 'Hydro Pump', 'Blizzard', '', '', '', '', '', ''),
(92, 'GHOST', 'POISON', 'Gastly', 'Lick', 'Sucker Punch', 'Ominous Wind', 'Dark Pulse', 'Sludge Bomb', '', '', '', '', '', ''),
(93, 'GHOST', 'POISON', 'Haunter', 'Shadow Claw', 'Lick', 'Shadow Ball', 'Dark Pulse', 'Sludge Bomb', '', '', '', '', '', ''),
(94, 'GHOST', 'POISON', 'Gengar', 'Sucker Punch', 'Shadow Claw', 'Shadow Ball', 'Dark Pulse', 'Sludge Wave', '', '', '', '', '', ''),
(95, 'ROCK', 'GROUND', 'Onix', 'Rock Throw', 'Tackle', 'Rock Slide', 'Stone Edge', 'Iron Head', '', '', '', '', '', ''),
(96, 'PSYCHIC', 'NONE', 'Drowzee', 'Pound', 'Confusion', 'Psybeam', 'Psyshock', 'Psychic', '', '', '', '', '', ''),
(97, 'PSYCHIC', 'NONE', 'Hypno', 'Zen Headbutt', 'Confusion', 'Psyshock', 'Psychic', 'Shadow Ball', '', '', '', '', '', ''),
(98, 'WATER', 'NONE', 'Krabby', 'Bubble', 'Mud Shot', 'Vice Grip', 'Bubble Beam', 'Water Pulse', '', '', '', '', '', ''),
(99, 'WATER', 'NONE', 'Kingler', 'Metal Claw', 'Mud Shot', 'Vice Grip', 'X Scissor', 'Water Pulse', '', '', '', '', '', ''),
(100, 'ELECTRIC', 'NONE', 'Voltorb', 'Spark', 'Tackle', 'Discharge', 'Thunderbolt', 'Signal Beam', '', '', '', '', '', ''),
(101, 'ELECTRIC', 'NONE', 'Electrode', 'Spark', 'Tackle', 'Discharge', 'Thunderbolt', 'Hyper Beam', '', '', '', '', '', ''),
(102, 'GRASS', 'PSYCHIC', 'Exeggcute', 'Confusion', '', 'Seed Bomb', 'Psychic', 'Ancient Power', '', '', '', '', '', ''),
(103, 'GRASS', 'PSYCHIC', 'Exeggutor', 'Confusion', 'Zen Headbutt', 'Seed Bomb', 'Psychic', 'Solar Beam', '', '', '', '', '', ''),
(104, 'GROUND', 'NONE', 'Cubone', 'Mud Slap', 'Rock Smash', 'Bone Club', 'Dig', 'Bulldoze', '', '', '', '', '', ''),
(105, 'GROUND', 'NONE', 'Marowak', 'Mud Slap', 'Rock Smash', 'Bone Club', 'Dig', 'Earthquake', '', '', '', '', '', ''),
(106, 'FIGHTING', 'NONE', 'Hitmonlee', 'Low Kick', 'Rock Smash', 'Stomp', 'Low Sweep', 'Stone Edge', '', '', '', '', '', ''),
(107, 'FIGHTING', 'NONE', 'Hitmonchan', 'Bullet Punch', 'Rock Smash', 'Fire Punch', 'Ice Punch', 'Thunder Punch', 'Brick Break', '', '', '', '', ''),
(108, 'NORMAL', 'NONE', 'Lickitung', 'Lick', 'Zen Headbutt', 'Hyper Beam', 'Stomp', 'Power Whip', '', '', '', '', '', ''),
(109, 'POISON', 'NONE', 'Koffing', 'Acid', 'Tackle', 'Sludge', 'Sludge Bomb', 'Dark Pulse', '', '', '', '', '', ''),
(110, 'POISON', 'NONE', 'Weezing', 'Acid', 'Tackle', 'Sludge Bomb', 'Shadow Ball', 'Dark Pulse', '', '', '', '', '', ''),
(111, 'GROUND', 'ROCK', 'Rhyhorn', 'Mud Slap', 'Rock Smash', 'Bulldoze', 'Horn Attack', 'Stomp', '', '', '', '', '', ''),
(112, 'GROUND', 'ROCK', 'Rhydon', 'Mud Slap', 'Rock Smash', 'Megahorn', 'Earthquake', 'Stone Edge', '', '', '', '', '', ''),
(113, 'NORMAL', 'NONE', 'Chansey', 'Pound', 'Zen Headbutt', 'Psychic', 'Psybeam', 'Dazzling Gleam', '', '', '', '', '', ''),
(114, 'GRASS', 'NONE', 'Tangela', 'Vine Whip', '', 'Power Whip', 'Sludge Bomb', 'Solar Beam', '', '', '', '', '', ''),
(115, 'NORMAL', 'NONE', 'Kangaskhan', 'Mud Slap', 'Low Kick', 'Brick Break', 'Earthquake', 'Stomp', '', '', '', '', '', ''),
(116, 'WATER', 'NONE', 'Horsea', 'Water Gun', 'Bubble', 'Bubble Beam', 'Dragon Pulse', 'Flash Cannon', '', '', '', '', '', ''),
(117, 'WATER', 'NONE', 'Seadra', 'Water Gun', 'Dragon Breath', 'Blizzard', 'Dragon Pulse', 'Hydro Pump', '', '', '', '', '', ''),
(118, 'WATER', 'NONE', 'Goldeen', 'Peck', 'Mud Shot', 'Water Pulse', 'Horn Attack', 'Aqua Tail', '', '', '', '', '', ''),
(119, 'WATER', 'NONE', 'Seaking', 'Peck', 'Poison Jab', 'Icy Wind', 'Drill Run', 'Megahorn', '', '', '', '', '', ''),
(120, 'WATER', 'NONE', 'Staryu', 'Quick Attack', 'Water Gun', 'Swift', 'Bubble Beam', 'Power Gem', '', '', '', '', '', ''),
(121, 'WATER', 'PSYCHIC', 'Starmie', 'Quick Attack', 'Water Gun', 'Hydro Pump', 'Power Gem', 'Psybeam', '', '', '', '', '', ''),
(122, 'PSYCHIC', 'FAIRY', 'Mr. Mime', 'Confusion', 'Zen Headbutt', 'Psybeam', 'Psychic', 'Shadow Ball', '', '', '', '', '', ''),
(123, 'BUG', 'FLYING', 'Scyther', 'Fury Cutter', 'Steel Wing', 'Night Slash', 'X Scissor', 'Bug Buzz', '', '', '', '', '', ''),
(124, 'ICE', 'PSYCHIC', 'Jynx', 'Frost Breath', 'Pound', 'Draining Kiss', 'Ice Punch', 'Psyshock', '', '', '', '', '', ''),
(125, 'ELECTRIC', 'NONE', 'Electabuzz', 'Thunder Shock', 'Low Kick', 'Thunder Punch', 'Thunderbolt', 'Thunder', '', '', '', '', '', ''),
(126, 'FIRE', 'NONE', 'Magmar', 'Ember', 'Karate Chop', 'Fire Blast', 'Fire Punch', 'Flamethrower', '', '', '', '', '', ''),
(127, 'BUG', 'NONE', 'Pinsir', 'Rock Smash', 'Fury Cutter', 'Vice Grip', 'X Scissor', 'Submission', '', '', '', '', '', ''),
(128, 'NORMAL', 'NONE', 'Tauros', 'Tackle', 'Zen Headbutt', 'Horn Attack', 'Iron Head', 'Earthquake', '', '', '', '', '', ''),
(129, 'WATER', 'NONE', 'Magikarp', 'Splash', '', 'Struggle', '', '', '', '', '', '', '', ''),
(130, 'WATER', 'FLYING', 'Gyarados', 'Dragon Breath', 'Bite', 'Hydro Pump', 'Twister', 'Dragon Pulse', '', '', '', '', '', ''),
(131, 'WATER', 'ICE', 'Lapras', 'Frost Breath', 'Ice Shard', 'Dragon Pulse', 'Ice Beam', 'Blizzard', '', '', '', '', '', ''),
(132, 'NORMAL', 'NONE', 'Ditto', 'Pound', '', 'Struggle', '', '', '', '', '', '', '', ''),
(133, 'NORMAL', 'NONE', 'Eevee', 'Quick Attack', 'Tackle', 'Dig', 'Swift', 'Body Slam', '', '', '', '', '', ''),
(134, 'WATER', 'NONE', 'Vaporeon', 'Water Gun', '', 'Water Pulse', 'Hydro Pump', 'Aqua Tail', '', '', '', '', '', ''),
(135, 'ELECTRIC', 'NONE', 'Jolteon', 'Thunder Shock', '', 'Discharge', 'Thunderbolt', 'Thunder', '', '', '', '', '', ''),
(136, 'FIRE', 'NONE', 'Flareon', 'Ember', '', 'Fire Blast', 'Flamethrower', 'Heat Wave', '', '', '', '', '', ''),
(137, 'NORMAL', 'NONE', 'Porygon', 'Quick Attack', 'Tackle', 'Psybeam', 'Signal Beam', 'Discharge', '', '', '', '', '', ''),
(138, 'ROCK', 'WATER', 'Omanyte', 'Water Gun', 'Mud Shot', 'Ancient Power', 'Brine', 'Rock Tomb', '', '', '', '', '', ''),
(139, 'ROCK', 'WATER', 'Omastar', 'Rock Throw', 'Water Gun', 'Ancient Power', 'Hydro Pump', 'Rock Slide', '', '', '', '', '', ''),
(140, 'ROCK', 'WATER', 'Kabuto', 'Scratch', 'Mud Shot', 'Ancient Power', 'Aqua Jet', 'Rock Tomb', '', '', '', '', '', ''),
(141, 'ROCK', 'WATER', 'Kabutops', 'Mud Shot', 'Fury Cutter', 'Ancient Power', 'Water Pulse', 'Stone Edge', '', '', '', '', '', ''),
(142, 'ROCK', 'FLYING', 'Aerodactyl', 'Steel Wing', 'Bite', 'Ancient Power', 'Iron Head', 'Hyper Beam', '', '', '', '', '', ''),
(143, 'NORMAL', 'NONE', 'Snorlax', 'Zen Headbutt', 'Lick', 'Body Slam', 'Hyper Beam', 'Earthquake', '', '', '', '', '', ''),
(144, 'ICE', 'FLYING', 'Articuno', 'Frost Breath', '', 'Ice Beam', 'Icy Wind', 'Blizzard', '', '', '', '', '', ''),
(145, 'ELECTRIC', 'FLYING', 'Zapdos', 'Thunder Shock', '', 'Discharge', 'Thunderbolt', 'Thunder', '', '', '', '', '', ''),
(146, 'FIRE', 'FLYING', 'Moltres', 'Ember', '', 'Fire Blast', 'Heat Wave', 'Flamethrower', '', '', '', '', '', ''),
(147, 'DRAGON', 'NONE', 'Dratini', 'Dragon Breath', '', 'Wrap', 'Twister', 'Aqua Tail', '', '', '', '', '', ''),
(148, 'DRAGON', 'NONE', 'Dragonair', 'Dragon Breath', '', 'Wrap', 'Aqua Tail', 'Dragon Pulse', '', '', '', '', '', ''),
(149, 'DRAGON', 'FLYING', 'Dragonite', 'Dragon Breath', 'Steel Wing', 'Dragon Pulse', 'Hyper Beam', 'Dragon Claw', '', '', '', '', '', ''),
(150, 'PSYCHIC', 'NONE', 'Mewtwo', 'Psycho Cut', 'Confusion', 'Psychic', 'Shadow Ball', 'Hyper Beam', '', '', '', '', '', ''),
(151, 'PSYCHIC', 'NONE', 'Mew', 'Pound', '', 'Hurricane', 'Earthquake', 'Psychic', 'Dragon Pulse', 'Thunder', 'Moonblast', 'Fire Blast', 'Solar Beam', 'Hyper Beam');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_stats`
--

CREATE TABLE `pokemon_stats` (
  `id` int(5) NOT NULL,
  `type1` varchar(40) NOT NULL,
  `type2` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
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

INSERT INTO `pokemon_stats` (`id`, `type1`, `type2`, `name`, `_hp`, `_atk`, `_def`, `_sAtk`, `_sDef`, `_spd`, `_total`, `sta`, `atk`, `def`) VALUES
(1, 'GRASS', 'POISON', 'Bulbasaur', 45, 49, 49, 65, 65, 45, 318, 90, 126, 126),
(2, 'GRASS', 'POISON', 'Ivysaur', 60, 62, 63, 80, 80, 60, 405, 120, 156, 158),
(3, 'GRASS', 'POISON', 'Venusaur', 80, 82, 83, 100, 100, 80, 525, 160, 198, 200),
(4, 'FIRE', 'NONE', 'Charmander', 39, 52, 43, 60, 50, 65, 309, 78, 128, 108),
(5, 'FIRE', 'NONE', 'Charmeleon', 58, 64, 58, 80, 65, 80, 405, 116, 160, 140),
(6, 'FIRE', 'FLYING', 'Charizard', 78, 84, 78, 109, 85, 100, 534, 156, 212, 182),
(7, 'WATER', 'NONE', 'Squirtle', 44, 48, 65, 50, 64, 43, 314, 88, 112, 142),
(8, 'WATER', 'NONE', 'Wartortle', 59, 63, 80, 65, 80, 58, 405, 118, 144, 176),
(9, 'WATER', 'NONE', 'Blastoise', 79, 83, 100, 85, 105, 78, 530, 158, 186, 222),
(10, 'BUG', 'NONE', 'Caterpie', 45, 30, 35, 20, 20, 45, 195, 90, 62, 66),
(11, 'BUG', 'NONE', 'Metapod', 50, 20, 55, 25, 25, 30, 205, 100, 56, 86),
(12, 'BUG', 'FLYING', 'Butterfree', 60, 45, 50, 90, 80, 70, 395, 120, 144, 144),
(13, 'BUG', 'POISON', 'Weedle', 40, 35, 30, 20, 20, 50, 195, 80, 68, 64),
(14, 'BUG', 'POISON', 'Kakuna', 45, 25, 50, 25, 25, 35, 205, 90, 62, 82),
(15, 'BUG', 'POISON', 'Beedrill', 65, 90, 40, 45, 80, 75, 395, 130, 144, 130),
(16, 'NORMAL', 'FLYING', 'Pidgey', 40, 45, 40, 35, 35, 56, 251, 80, 94, 90),
(17, 'NORMAL', 'FLYING', 'Pidgeotto', 63, 60, 55, 50, 50, 71, 349, 126, 126, 122),
(18, 'NORMAL', 'FLYING', 'Pidgeot', 83, 80, 75, 70, 70, 101, 479, 166, 170, 166),
(19, 'NORMAL', 'NONE', 'Rattata', 30, 56, 35, 25, 35, 72, 253, 60, 92, 86),
(20, 'NORMAL', 'NONE', 'Raticate', 55, 81, 60, 50, 70, 97, 413, 110, 146, 150),
(21, 'NORMAL', 'FLYING', 'Spearow', 40, 60, 30, 31, 31, 70, 262, 80, 102, 78),
(22, 'NORMAL', 'FLYING', 'Fearow', 65, 90, 65, 61, 61, 100, 442, 130, 168, 146),
(23, 'POISON', 'NONE', 'Ekans', 35, 60, 44, 40, 54, 55, 288, 70, 112, 112),
(24, 'POISON', 'NONE', 'Arbok', 60, 85, 69, 65, 79, 80, 438, 120, 166, 166),
(25, 'ELECTRIC', 'NONE', 'Pikachu', 35, 55, 40, 50, 50, 90, 320, 70, 124, 108),
(26, 'ELECTRIC', 'NONE', 'Raichu', 60, 90, 55, 90, 80, 110, 485, 120, 200, 154),
(27, 'GROUND', 'NONE', 'Sandshrew', 50, 75, 85, 20, 30, 40, 300, 100, 90, 114),
(28, 'GROUND', 'NONE', 'Sandslash', 75, 100, 110, 45, 55, 65, 450, 150, 150, 172),
(29, 'POISON', 'NONE', 'NidoranF', 55, 47, 52, 40, 40, 41, 275, 110, 100, 104),
(30, 'POISON', 'NONE', 'Nidorina', 70, 62, 67, 55, 55, 56, 365, 140, 132, 136),
(31, 'POISON', 'GROUND', 'Nidoqueen', 90, 92, 87, 75, 85, 76, 505, 180, 184, 190),
(32, 'POISON', 'NONE', 'NidoranM', 46, 57, 40, 40, 40, 50, 273, 92, 110, 94),
(33, 'POISON', 'NONE', 'Nidorino', 61, 72, 57, 55, 55, 65, 365, 122, 142, 128),
(34, 'POISON', 'GROUND', 'Nidoking', 81, 102, 77, 85, 75, 85, 505, 162, 204, 170),
(35, 'FAIRY', 'NONE', 'Clefairy', 70, 45, 48, 60, 65, 35, 323, 140, 116, 124),
(36, 'FAIRY', 'NONE', 'Clefable', 95, 70, 73, 95, 90, 60, 483, 190, 178, 178),
(37, 'FIRE', 'NONE', 'Vulpix', 38, 41, 40, 50, 65, 65, 299, 76, 106, 118),
(38, 'FIRE', 'NONE', 'Ninetales', 73, 76, 75, 81, 100, 100, 505, 146, 176, 194),
(39, 'NORMAL', 'FAIRY', 'Jigglypuff', 115, 45, 20, 45, 25, 20, 270, 230, 98, 54),
(40, 'NORMAL', 'FAIRY', 'Wigglytuff', 140, 70, 45, 85, 50, 45, 435, 280, 168, 108),
(41, 'POISON', 'FLYING', 'Zubat', 40, 45, 35, 30, 40, 55, 245, 80, 88, 90),
(42, 'POISON', 'FLYING', 'Golbat', 75, 80, 70, 65, 75, 90, 455, 150, 164, 164),
(43, 'GRASS', 'POISON', 'Oddish', 45, 50, 55, 75, 65, 30, 320, 90, 134, 130),
(44, 'GRASS', 'POISON', 'Gloom', 60, 65, 70, 85, 75, 40, 395, 120, 162, 158),
(45, 'GRASS', 'POISON', 'Vileplume', 75, 80, 85, 110, 90, 50, 490, 150, 202, 190),
(46, 'BUG', 'GRASS', 'Paras', 35, 70, 55, 45, 55, 25, 285, 70, 122, 120),
(47, 'BUG', 'GRASS', 'Parasect', 60, 95, 80, 60, 80, 30, 405, 120, 162, 170),
(48, 'BUG', 'POISON', 'Venonat', 60, 55, 50, 40, 55, 45, 305, 120, 108, 118),
(49, 'BUG', 'POISON', 'Venomoth', 70, 65, 60, 90, 75, 90, 450, 140, 172, 154),
(50, 'GROUND', 'NONE', 'Diglett', 10, 55, 25, 35, 45, 95, 265, 20, 108, 86),
(51, 'GROUND', 'NONE', 'Dugtrio', 35, 80, 50, 50, 70, 120, 405, 70, 148, 140),
(52, 'NORMAL', 'NONE', 'Meowth', 40, 45, 35, 40, 40, 90, 290, 80, 104, 94),
(53, 'NORMAL', 'NONE', 'Persian', 65, 70, 60, 65, 65, 115, 440, 130, 156, 146),
(54, 'WATER', 'NONE', 'Psyduck', 50, 52, 48, 65, 50, 55, 320, 100, 132, 112),
(55, 'WATER', 'NONE', 'Golduck', 80, 82, 78, 95, 80, 85, 500, 160, 194, 176),
(56, 'FIGHTING', 'NONE', 'Mankey', 40, 80, 35, 35, 45, 70, 305, 80, 122, 96),
(57, 'FIGHTING', 'NONE', 'Primeape', 65, 105, 60, 60, 70, 95, 455, 130, 178, 150),
(58, 'FIRE', 'NONE', 'Growlithe', 55, 70, 45, 70, 50, 60, 350, 110, 156, 110),
(59, 'FIRE', 'NONE', 'Arcanine', 90, 110, 80, 100, 80, 95, 555, 180, 230, 180),
(60, 'WATER', 'NONE', 'Poliwag', 40, 50, 40, 40, 40, 90, 300, 80, 108, 98),
(61, 'WATER', 'NONE', 'Poliwhirl', 65, 65, 65, 50, 50, 90, 385, 130, 132, 132),
(62, 'WATER', 'FIGHTING', 'Poliwrath', 90, 95, 95, 70, 90, 70, 510, 180, 180, 202),
(63, 'PSYCHIC', 'NONE', 'Abra', 25, 20, 15, 105, 55, 90, 310, 50, 110, 76),
(64, 'PSYCHIC', 'NONE', 'Kadabra', 40, 35, 30, 120, 70, 105, 400, 80, 150, 112),
(65, 'PSYCHIC', 'NONE', 'Alakazam', 55, 50, 45, 135, 95, 120, 500, 110, 186, 152),
(66, 'FIGHTING', 'NONE', 'Machop', 70, 80, 50, 35, 35, 35, 305, 140, 118, 96),
(67, 'FIGHTING', 'NONE', 'Machoke', 80, 100, 70, 50, 60, 45, 405, 160, 154, 144),
(68, 'FIGHTING', 'NONE', 'Machamp', 90, 130, 80, 65, 85, 55, 505, 180, 198, 180),
(69, 'GRASS', 'POISON', 'Bellsprout', 50, 75, 35, 70, 30, 40, 300, 100, 158, 78),
(70, 'GRASS', 'POISON', 'Weepinbell', 65, 90, 50, 85, 45, 55, 390, 130, 190, 110),
(71, 'GRASS', 'POISON', 'Victreebel', 80, 105, 65, 100, 70, 70, 490, 160, 222, 152),
(72, 'WATER', 'POISON', 'Tentacool', 40, 40, 35, 50, 100, 70, 335, 80, 106, 136),
(73, 'WATER', 'POISON', 'Tentacruel', 80, 70, 65, 80, 120, 100, 515, 160, 170, 196),
(74, 'ROCK', 'GROUND', 'Geodude', 40, 80, 100, 30, 30, 20, 300, 80, 106, 118),
(75, 'ROCK', 'GROUND', 'Graveler', 55, 95, 115, 45, 45, 35, 390, 110, 142, 156),
(76, 'ROCK', 'GROUND', 'Golem', 80, 120, 130, 55, 65, 45, 495, 160, 176, 198),
(77, 'FIRE', 'NONE', 'Ponyta', 50, 85, 55, 65, 65, 90, 410, 100, 168, 138),
(78, 'FIRE', 'NONE', 'Rapidash', 65, 100, 70, 80, 80, 105, 500, 130, 200, 170),
(79, 'WATER', 'PSYCHIC', 'Slowpoke', 90, 65, 65, 40, 40, 15, 315, 180, 110, 110),
(80, 'WATER', 'PSYCHIC', 'Slowbro', 95, 75, 110, 100, 80, 30, 490, 190, 184, 198),
(81, 'ELECTRIC', 'STEEL', 'Magnemite', 25, 35, 70, 95, 55, 45, 325, 50, 128, 138),
(82, 'ELECTRIC', 'STEEL', 'Magneton', 50, 60, 95, 120, 70, 70, 465, 100, 186, 180),
(83, 'NORMAL', 'FLYING', 'Farfetch''d', 52, 65, 55, 58, 62, 60, 352, 104, 138, 132),
(84, 'NORMAL', 'FLYING', 'Doduo', 35, 85, 45, 35, 35, 75, 310, 70, 126, 96),
(85, 'NORMAL', 'FLYING', 'Dodrio', 60, 110, 70, 60, 60, 100, 460, 120, 182, 150),
(86, 'WATER', 'NONE', 'Seel', 65, 45, 55, 45, 70, 45, 325, 130, 104, 138),
(87, 'WATER', 'ICE', 'Dewgong', 90, 70, 80, 70, 95, 70, 475, 180, 156, 192),
(88, 'POISON', 'NONE', 'Grimer', 80, 80, 50, 40, 50, 25, 325, 160, 124, 110),
(89, 'POISON', 'NONE', 'Muk', 105, 105, 75, 65, 100, 50, 500, 210, 180, 188),
(90, 'WATER', 'NONE', 'Shellder', 30, 65, 100, 45, 25, 40, 305, 60, 120, 112),
(91, 'WATER', 'ICE', 'Cloyster', 50, 95, 180, 85, 45, 70, 525, 100, 196, 196),
(92, 'GHOST', 'POISON', 'Gastly', 30, 35, 30, 100, 35, 80, 310, 60, 136, 82),
(93, 'GHOST', 'POISON', 'Haunter', 45, 50, 45, 115, 55, 95, 405, 90, 172, 118),
(94, 'GHOST', 'POISON', 'Gengar', 60, 65, 60, 130, 75, 110, 500, 120, 204, 156),
(95, 'ROCK', 'GROUND', 'Onix', 35, 45, 160, 30, 45, 70, 385, 70, 90, 186),
(96, 'PSYCHIC', 'NONE', 'Drowzee', 60, 48, 45, 43, 90, 42, 328, 120, 104, 140),
(97, 'PSYCHIC', 'NONE', 'Hypno', 85, 73, 70, 73, 115, 67, 483, 170, 162, 196),
(98, 'WATER', 'NONE', 'Krabby', 30, 105, 90, 25, 25, 50, 325, 60, 116, 110),
(99, 'WATER', 'NONE', 'Kingler', 55, 130, 115, 50, 50, 75, 475, 110, 178, 168),
(100, 'ELECTRIC', 'NONE', 'Voltorb', 40, 30, 50, 55, 55, 100, 330, 80, 102, 124),
(101, 'ELECTRIC', 'NONE', 'Electrode', 60, 50, 70, 80, 80, 140, 480, 120, 150, 174),
(102, 'GRASS', 'PSYCHIC', 'Exeggcute', 60, 40, 80, 60, 45, 40, 325, 120, 110, 132),
(103, 'GRASS', 'PSYCHIC', 'Exeggutor', 95, 95, 85, 125, 65, 55, 520, 190, 232, 164),
(104, 'GROUND', 'NONE', 'Cubone', 50, 50, 95, 40, 50, 35, 320, 100, 102, 150),
(105, 'GROUND', 'NONE', 'Marowak', 60, 80, 110, 50, 80, 45, 425, 120, 140, 202),
(106, 'FIGHTING', 'NONE', 'Hitmonlee', 50, 120, 53, 35, 110, 87, 455, 100, 148, 172),
(107, 'FIGHTING', 'NONE', 'Hitmonchan', 50, 105, 79, 35, 110, 76, 455, 100, 138, 204),
(108, 'NORMAL', 'NONE', 'Lickitung', 90, 55, 75, 60, 75, 30, 385, 180, 126, 160),
(109, 'POISON', 'NONE', 'Koffing', 40, 65, 95, 60, 45, 35, 340, 80, 136, 142),
(110, 'POISON', 'NONE', 'Weezing', 65, 90, 120, 85, 70, 60, 490, 130, 190, 198),
(111, 'GROUND', 'ROCK', 'Rhyhorn', 80, 85, 95, 30, 30, 25, 345, 160, 110, 116),
(112, 'GROUND', 'ROCK', 'Rhydon', 105, 130, 120, 45, 45, 40, 485, 210, 166, 160),
(113, 'NORMAL', 'NONE', 'Chansey', 250, 5, 5, 35, 105, 50, 450, 500, 40, 60),
(114, 'GRASS', 'NONE', 'Tangela', 65, 55, 115, 100, 40, 60, 435, 130, 164, 152),
(115, 'NORMAL', 'NONE', 'Kangaskhan', 105, 95, 80, 40, 80, 90, 490, 210, 142, 178),
(116, 'WATER', 'NONE', 'Horsea', 30, 40, 70, 70, 25, 60, 295, 60, 122, 100),
(117, 'WATER', 'NONE', 'Seadra', 55, 65, 95, 95, 45, 85, 440, 110, 176, 150),
(118, 'WATER', 'NONE', 'Goldeen', 45, 67, 60, 35, 50, 63, 320, 90, 112, 126),
(119, 'WATER', 'NONE', 'Seaking', 80, 92, 65, 65, 80, 68, 450, 160, 172, 160),
(120, 'WATER', 'NONE', 'Staryu', 30, 45, 55, 70, 55, 85, 340, 60, 130, 128),
(121, 'WATER', 'PSYCHIC', 'Starmie', 60, 75, 85, 100, 85, 115, 520, 120, 194, 192),
(122, 'PSYCHIC', 'FAIRY', 'Mr. Mime', 40, 45, 65, 100, 120, 90, 460, 80, 154, 196),
(123, 'BUG', 'FLYING', 'Scyther', 70, 110, 80, 55, 80, 105, 500, 140, 176, 180),
(124, 'ICE', 'PSYCHIC', 'Jynx', 65, 50, 35, 115, 95, 95, 455, 130, 172, 134),
(125, 'ELECTRIC', 'NONE', 'Electabuzz', 65, 83, 57, 95, 85, 105, 490, 130, 198, 160),
(126, 'FIRE', 'NONE', 'Magmar', 65, 95, 57, 100, 85, 93, 495, 130, 214, 158),
(127, 'BUG', 'NONE', 'Pinsir', 65, 125, 100, 55, 70, 85, 500, 130, 184, 186),
(128, 'NORMAL', 'NONE', 'Tauros', 75, 100, 95, 40, 70, 110, 490, 150, 148, 184),
(129, 'WATER', 'NONE', 'Magikarp', 20, 10, 55, 15, 20, 80, 200, 40, 42, 84),
(130, 'WATER', 'FLYING', 'Gyarados', 95, 125, 79, 60, 100, 81, 540, 190, 192, 196),
(131, 'WATER', 'ICE', 'Lapras', 130, 85, 80, 85, 95, 60, 535, 260, 186, 190),
(132, 'NORMAL', 'NONE', 'Ditto', 48, 48, 48, 48, 48, 48, 288, 96, 110, 110),
(133, 'NORMAL', 'NONE', 'Eevee', 55, 55, 50, 45, 65, 55, 325, 110, 114, 128),
(134, 'WATER', 'NONE', 'Vaporeon', 130, 65, 60, 110, 95, 65, 525, 260, 186, 168),
(135, 'ELECTRIC', 'NONE', 'Jolteon', 65, 65, 60, 110, 95, 130, 525, 130, 192, 174),
(136, 'FIRE', 'NONE', 'Flareon', 65, 130, 60, 95, 110, 65, 525, 130, 238, 178),
(137, 'NORMAL', 'NONE', 'Porygon', 65, 60, 70, 85, 75, 40, 395, 130, 156, 158),
(138, 'ROCK', 'WATER', 'Omanyte', 35, 40, 100, 90, 55, 35, 355, 70, 132, 160),
(139, 'ROCK', 'WATER', 'Omastar', 70, 60, 125, 115, 70, 55, 495, 140, 180, 202),
(140, 'ROCK', 'WATER', 'Kabuto', 30, 80, 90, 55, 45, 55, 355, 60, 148, 142),
(141, 'ROCK', 'WATER', 'Kabutops', 60, 115, 105, 65, 70, 80, 495, 120, 190, 190),
(142, 'ROCK', 'FLYING', 'Aerodactyl', 80, 105, 65, 60, 75, 130, 515, 160, 182, 162),
(143, 'NORMAL', 'NONE', 'Snorlax', 160, 110, 65, 65, 110, 30, 540, 320, 180, 180),
(144, 'ICE', 'FLYING', 'Articuno', 90, 85, 100, 95, 125, 85, 580, 180, 198, 242),
(145, 'ELECTRIC', 'FLYING', 'Zapdos', 90, 90, 85, 125, 90, 100, 580, 180, 232, 194),
(146, 'FIRE', 'FLYING', 'Moltres', 90, 100, 90, 125, 85, 90, 580, 180, 242, 194),
(147, 'DRAGON', 'NONE', 'Dratini', 41, 64, 45, 50, 50, 50, 300, 82, 128, 110),
(148, 'DRAGON', 'NONE', 'Dragonair', 61, 84, 65, 70, 70, 70, 420, 122, 170, 152),
(149, 'DRAGON', 'FLYING', 'Dragonite', 91, 134, 95, 100, 100, 80, 600, 182, 250, 212),
(150, 'PSYCHIC', 'NONE', 'Mewtwo', 106, 110, 90, 154, 90, 130, 680, 212, 284, 202),
(151, 'PSYCHIC', 'NONE', 'Mew', 100, 100, 100, 100, 100, 100, 600, 200, 220, 220);

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
-- Indexes for table `cpm`
--
ALTER TABLE `cpm`
  ADD PRIMARY KEY (`mon_level`);

--
-- Indexes for table `pokemon_skills`
--
ALTER TABLE `pokemon_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemon_stats`
--
ALTER TABLE `pokemon_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills_qm`
--
ALTER TABLE `skills_qm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills_ss`
--
ALTER TABLE `skills_ss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`atkType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
