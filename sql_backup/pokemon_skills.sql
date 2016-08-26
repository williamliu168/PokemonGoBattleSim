-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2016 at 03:06 AM
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
-- Table structure for table `pokemon_skills`
--

CREATE TABLE `pokemon_skills` (
  `id` int(5) NOT NULL,
  `type1` varchar(40) NOT NULL,
  `type2` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `q1` varchar(40) NOT NULL,
  `q2` varchar(40) NOT NULL,
  `oq1` varchar(40) NOT NULL,
  `s1` varchar(40) NOT NULL,
  `s2` varchar(40) NOT NULL,
  `s3` varchar(40) NOT NULL,
  `s4` varchar(40) NOT NULL,
  `s5` varchar(40) NOT NULL,
  `s6` varchar(40) NOT NULL,
  `s7` varchar(40) NOT NULL,
  `s8` varchar(40) NOT NULL,
  `s9` varchar(40) NOT NULL,
  `os1` varchar(40) NOT NULL,
  `os2` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon_skills`
--

INSERT INTO `pokemon_skills` (`id`, `type1`, `type2`, `name`, `q1`, `q2`, `oq1`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `os1`, `os2`) VALUES
(1, 'GRASS', 'POISON', 'Bulbasaur', 'Vine Whip', 'Tackle', '', 'Sludge Bomb', 'Seed Bomb', 'Power Whip', '', '', '', '', '', '', '', ''),
(2, 'GRASS', 'POISON', 'Ivysaur', 'Razor Leaf', 'Vine Whip', '', 'Sludge Bomb', 'Solar Beam', 'Power Whip', '', '', '', '', '', '', '', ''),
(3, 'GRASS', 'POISON', 'Venusaur', 'Razor Leaf', 'Vine Whip', '', 'Sludge Bomb', 'Petal Blizzard', 'Solar Beam', '', '', '', '', '', '', '', ''),
(4, 'FIRE', 'NONE', 'Charmander', 'Ember', 'Scratch', '', 'Flame Charge', 'Flame Burst', 'Flamethrower', '', '', '', '', '', '', '', ''),
(5, 'FIRE', 'NONE', 'Charmeleon', 'Ember', 'Scratch', '', 'Fire Punch', 'Flame Burst', 'Flamethrower', '', '', '', '', '', '', '', ''),
(6, 'FIRE', 'FLYING', 'Charizard', 'Ember', 'Wing Attack', '', 'Fire Blast', 'Dragon Claw', 'Flamethrower', '', '', '', '', '', '', '', ''),
(7, 'WATER', 'NONE', 'Squirtle', 'Bubble', 'Tackle', '', 'Aqua Jet', 'Aqua Tail', 'Water Pulse', '', '', '', '', '', '', '', ''),
(8, 'WATER', 'NONE', 'Wartortle', 'Water Gun', 'Bite', '', 'Aqua Jet', 'Ice Beam', 'Hydro Pump', '', '', '', '', '', '', '', ''),
(9, 'WATER', 'NONE', 'Blastoise', 'Water Gun', 'Bite', '', 'Flash Cannon', 'Ice Beam', 'Hydro Pump', '', '', '', '', '', '', '', ''),
(10, 'BUG', 'NONE', 'Caterpie', 'Bug Bite', 'Tackle', '', 'Struggle', '', '', '', '', '', '', '', '', '', ''),
(11, 'BUG', 'NONE', 'Metapod', 'Bug Bite', 'Tackle', '', 'Struggle', '', '', '', '', '', '', '', '', '', ''),
(12, 'BUG', 'FLYING', 'Butterfree', 'Bug Bite', 'Confusion', '', 'Bug Buzz', 'Psychic', 'Signal Beam', '', '', '', '', '', '', '', ''),
(13, 'BUG', 'POISON', 'Weedle', 'Bug Bite', 'Poison Sting', '', 'Struggle', '', '', '', '', '', '', '', '', '', ''),
(14, 'BUG', 'POISON', 'Kakuna', 'Bug Bite', 'Poison Sting', '', 'Struggle', '', '', '', '', '', '', '', '', '', ''),
(15, 'BUG', 'POISON', 'Beedrill', 'Bug Bite', 'Poison Jab', '', 'Sludge Bomb', 'Aerial Ace', 'X Scissor', '', '', '', '', '', '', '', ''),
(16, 'NORMAL', 'FLYING', 'Pidgey', 'Quick Attack', 'Tackle', '', 'Twister', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', '', '', ''),
(17, 'NORMAL', 'FLYING', 'Pidgeotto', 'Wing Attack', 'Steel Wing', '', 'Twister', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', '', '', ''),
(18, 'NORMAL', 'FLYING', 'Pidgeot', 'Wing Attack', 'Steel Wing', '', 'Hurricane', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', '', '', ''),
(19, 'NORMAL', 'NONE', 'Rattata', 'Tackle', 'Quick Attack', '', 'Dig', 'Hyper Fang', 'Body Slam', '', '', '', '', '', '', '', ''),
(20, 'NORMAL', 'NONE', 'Raticate', 'Bite', 'Quick Attack', '', 'Dig', 'Hyper Fang', 'Hyper Beam', '', '', '', '', '', '', '', ''),
(21, 'NORMAL', 'FLYING', 'Spearow', 'Peck', 'Quick Attack', '', 'Aerial Ace', 'Drill Peck', 'Twister', '', '', '', '', '', '', '', ''),
(22, 'NORMAL', 'FLYING', 'Fearow', 'Peck', 'Steel Wing', '', 'Aerial Ace', 'Drill Run', 'Twister', '', '', '', '', '', '', '', ''),
(23, 'POISON', 'NONE', 'Ekans', 'Poison Sting', 'Acid', '', 'Wrap', 'Sludge Bomb', 'Gunk Shot', '', '', '', '', '', '', '', ''),
(24, 'POISON', 'NONE', 'Arbok', 'Bite', 'Acid', '', 'Dark Pulse', 'Sludge Wave', 'Gunk Shot', '', '', '', '', '', '', '', ''),
(25, 'ELECTRIC', 'NONE', 'Pikachu', 'Thunder Shock', 'Quick Attack', '', 'Discharge', 'Thunderbolt', 'Thunder', '', '', '', '', '', '', '', ''),
(26, 'ELECTRIC', 'NONE', 'Raichu', 'Thunder Shock', 'Spark', '', 'Brick Break', 'Thunder Punch', 'Thunder', '', '', '', '', '', '', '', ''),
(27, 'GROUND', 'NONE', 'Sandshrew', 'Scratch', 'Mud Shot', '', 'Dig', 'Rock Slide', 'Rock Tomb', '', '', '', '', '', '', '', ''),
(28, 'GROUND', 'NONE', 'Sandslash', 'Metal Claw', 'Mud Shot', '', 'Earthquake', 'Rock Tomb', 'Bulldoze', '', '', '', '', '', '', '', ''),
(29, 'POISON', 'NONE', 'Nidoran?', 'Bite', 'Poison Sting', '', 'Poison Fang', 'Body Slam', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(30, 'POISON', 'NONE', 'Nidorina', 'Bite', 'Poison Sting', '', 'Poison Fang', 'Dig', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(31, 'POISON', 'GROUND', 'Nidoqueen', 'Poison Jab', 'Bite', '', 'Earthquake', 'Sludge Wave', 'Stone Edge', '', '', '', '', '', '', '', ''),
(32, 'POISON', 'NONE', 'Nidoran?', 'Peck', 'Poison Sting', '', 'Horn Attack', 'Body Slam', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(33, 'POISON', 'NONE', 'Nidorino', 'Poison Jab', 'Poison Sting', '', 'Horn Attack', 'Dig', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(34, 'POISON', 'GROUND', 'Nidoking', 'Poison Jab', 'Fury Cutter', '', 'Earthquake', 'Sludge Wave', 'Megahorn', '', '', '', '', '', '', '', ''),
(35, 'FAIRY', 'NONE', 'Clefairy', 'Pound', 'Zen Headbutt', '', 'Disarming Voice', 'Body Slam', 'Moonblast', '', '', '', '', '', '', '', ''),
(36, 'FAIRY', 'NONE', 'Clefable', 'Pound', 'Zen Headbutt', '', 'Dazzling Gleam', 'Psychic', 'Moonblast', '', '', '', '', '', '', '', ''),
(37, 'FIRE', 'NONE', 'Vulpix', 'Quick Attack', 'Ember', '', 'Body Slam', 'Flamethrower', 'Flame Charge', '', '', '', '', '', '', '', ''),
(38, 'FIRE', 'NONE', 'Ninetales', 'Feint Attack', 'Ember', '', 'Heat Wave', 'Flamethrower', 'Fire Blast', '', '', '', '', '', '', '', ''),
(39, 'NORMAL', 'FAIRY', 'Jigglypuff', 'Pound', 'Feint Attack', '', 'Disarming Voice', 'Body Slam', 'Dazzling Gleam', '', '', '', '', '', '', 'Play Rough', ''),
(40, 'NORMAL', 'FAIRY', 'Wigglytuff', 'Pound', 'Feint Attack', '', 'Dazzling Gleam', 'Hyper Beam', 'Play Rough', '', '', '', '', '', '', '', ''),
(41, 'POISON', 'FLYING', 'Zubat', 'Quick Attack', 'Bite', '', 'Poison Fang', 'Air Cutter', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(42, 'POISON', 'FLYING', 'Golbat', 'Wing Attack', 'Bite', '', 'Poison Fang', 'Air Cutter', 'Ominous Wind', '', '', '', '', '', '', '', ''),
(43, 'GRASS', 'POISON', 'Oddish', 'Razor Leaf', 'Acid', '', 'Seed Bomb', 'Sludge Bomb', 'Moonblast', '', '', '', '', '', '', '', ''),
(44, 'GRASS', 'POISON', 'Gloom', 'Razor Leaf', 'Acid', '', 'Petal Blizzard', 'Sludge Bomb', 'Moonblast', '', '', '', '', '', '', '', ''),
(45, 'GRASS', 'POISON', 'Vileplume', 'Razor Leaf', 'Acid', '', 'Petal Blizzard', 'Solar Beam', 'Moonblast', '', '', '', '', '', '', '', ''),
(46, 'BUG', 'GRASS', 'Paras', 'Scratch', 'Bug Bite', '', 'Cross Poison', 'X Scissor', 'Seed Bomb', '', '', '', '', '', '', '', ''),
(47, 'BUG', 'GRASS', 'Parasect', 'Bug Bite', 'Fury Cutter', '', 'Cross Poison', 'X Scissor', 'Solar Beam', '', '', '', '', '', '', '', ''),
(48, 'BUG', 'POISON', 'Venonat', 'Bug Bite', 'Confusion', '', 'Psybeam', 'Dazzling Gleam', 'Shadow Ball', '', '', '', '', '', '', '', ''),
(49, 'BUG', 'POISON', 'Venomoth', 'Bug Bite', 'Confusion', '', 'Poison Fang', 'Psychic', 'Bug Buzz', '', '', '', '', '', '', '', ''),
(50, 'GROUND', 'NONE', 'Diglett', 'Scratch', 'Mud Slap', 'Mud Shot', 'Dig', 'Mud Bomb', 'Rock Tomb', '', '', '', '', '', '', '', ''),
(51, 'GROUND', 'NONE', 'Dugtrio', 'Sucker Punch', 'Mud Slap', 'Mud Shot', 'Earthquake', 'Mud Bomb', 'Stone Edge', '', '', '', '', '', '', '', ''),
(52, 'NORMAL', 'NONE', 'Meowth', 'Scratch', 'Bite', '', 'Night Slash', 'Dark Pulse', 'Body Slam', '', '', '', '', '', '', '', ''),
(53, 'NORMAL', 'NONE', 'Persian', 'Scratch', 'Feint Attack', '', 'Night Slash', 'Power Gem', 'Play Rough', '', '', '', '', '', '', '', ''),
(54, 'WATER', 'NONE', 'Psyduck', 'Water Gun', 'Zen Headbutt', '', 'Psybeam', 'Aqua Tail', 'Cross Chop', '', '', '', '', '', '', '', ''),
(55, 'WATER', 'NONE', 'Golduck', 'Water Gun', 'Confusion', '', 'Psychic', 'Hydro Pump', 'Ice Beam', '', '', '', '', '', '', '', ''),
(56, 'FIGHTING', 'NONE', 'Mankey', 'Karate Chop', 'Scratch', '', 'Cross Chop', 'Low Sweep', 'Brick Break', '', '', '', '', '', '', '', ''),
(57, 'FIGHTING', 'NONE', 'Primeape', 'Low Kick', 'Karate Chop', '', 'Cross Chop', 'Low Sweep', 'Night Slash', '', '', '', '', '', '', '', ''),
(58, 'FIRE', 'NONE', 'Growlithe', 'Ember', 'Bite', '', 'Flame Wheel', 'Body Slam', 'Flamethrower', '', '', '', '', '', '', '', ''),
(59, 'FIRE', 'NONE', 'Arcanine', 'Fire Fang', 'Bite', '', 'Fire Blast', 'Flamethrower', 'Bulldoze', '', '', '', '', '', '', '', ''),
(60, 'WATER', 'NONE', 'Poliwag', 'Bubble', 'Mud Shot', '', 'Bubble Beam', 'Mud Bomb', 'Body Slam', '', '', '', '', '', '', '', ''),
(61, 'WATER', 'NONE', 'Poliwhirl', 'Bubble', 'Mud Shot', '', 'Scald', 'Mud Bomb', 'Bubble Beam', '', '', '', '', '', '', '', ''),
(62, 'WATER', 'FIGHTING', 'Poliwrath', 'Bubble', 'Mud Shot', '', 'Hydro Pump', 'Submission', 'Ice Punch', '', '', '', '', '', '', '', ''),
(63, 'PSYCHIC', 'NONE', 'Abra', 'Zen Headbutt', '', '', 'Psyshock', 'Signal Beam', 'Shadow Ball', '', '', '', '', '', '', '', ''),
(64, 'PSYCHIC', 'NONE', 'Kadabra', 'Psycho Cut', 'Confusion', '', 'Psybeam', 'Dazzling Gleam', 'Shadow Ball', '', '', '', '', '', '', '', ''),
(65, 'PSYCHIC', 'NONE', 'Alakazam', 'Psycho Cut', 'Confusion', '', 'Psychic', 'Dazzling Gleam', 'Shadow Ball', '', '', '', '', '', '', '', ''),
(66, 'FIGHTING', 'NONE', 'Machop', 'Low Kick', 'Karate Chop', '', 'Low Sweep', 'Brick Break', 'Cross Chop', '', '', '', '', '', '', '', ''),
(67, 'FIGHTING', 'NONE', 'Machoke', 'Low Kick', 'Karate Chop', '', 'Submission', 'Brick Break', 'Cross Chop', '', '', '', '', '', '', '', ''),
(68, 'FIGHTING', 'NONE', 'Machamp', 'Bullet Punch', 'Karate Chop', '', 'Stone Edge', 'Submission', 'Cross Chop', '', '', '', '', '', '', '', ''),
(69, 'GRASS', 'POISON', 'Bellsprout', 'Vine Whip', 'Acid', '', 'Power Whip', 'Sludge Bomb', 'Wrap', '', '', '', '', '', '', '', ''),
(70, 'GRASS', 'POISON', 'Weepinbell', 'Razor Leaf', 'Acid', '', 'Power Whip', 'Sludge Bomb', 'Seed Bomb', '', '', '', '', '', '', '', ''),
(71, 'GRASS', 'POISON', 'Victreebel', 'Razor Leaf', 'Acid', '', 'Leaf Blade', 'Sludge Bomb', 'Solar Beam', '', '', '', '', '', '', '', ''),
(72, 'WATER', 'POISON', 'Tentacool', 'Bubble', 'Poison Sting', '', 'Bubble Beam', 'Water Pulse', 'Wrap', '', '', '', '', '', '', '', ''),
(73, 'WATER', 'POISON', 'Tentacruel', 'Acid', 'Poison Jab', '', 'Hydro Pump', 'Sludge Wave', 'Blizzard', '', '', '', '', '', '', '', ''),
(74, 'ROCK', 'GROUND', 'Geodude', 'Rock Throw', 'Tackle', '', 'Rock Slide', 'Rock Tomb', 'Dig', '', '', '', '', '', '', '', ''),
(75, 'ROCK', 'GROUND', 'Graveler', 'Rock Throw', 'Mud Slap', 'Mud Shot', 'Dig', 'Stone Edge', 'Rock Slide', '', '', '', '', '', '', '', ''),
(76, 'ROCK', 'GROUND', 'Golem', 'Rock Throw', 'Mud Slap', 'Mud Shot', 'Stone Edge', 'Ancient Power', 'Earthquake', '', '', '', '', '', '', '', ''),
(77, 'FIRE', 'NONE', 'Ponyta', 'Tackle', 'Ember', '', 'Flame Charge', 'Flame Wheel', 'Fire Blast', '', '', '', '', '', '', '', ''),
(78, 'FIRE', 'NONE', 'Rapidash', 'Low Kick', 'Ember', '', 'Fire Blast', 'Drill Run', 'Heat Wave', '', '', '', '', '', '', '', ''),
(79, 'WATER', 'PSYCHIC', 'Slowpoke', 'Water Gun', 'Confusion', '', 'Water Pulse', 'Psyshock', 'Psychic', '', '', '', '', '', '', '', ''),
(80, 'WATER', 'PSYCHIC', 'Slowbro', 'Water Gun', 'Confusion', '', 'Water Pulse', 'Psychic', 'Ice Beam', '', '', '', '', '', '', '', ''),
(81, 'ELECTRIC', 'STEEL', 'Magnemite', 'Spark', 'Thunder Shock', '', 'Discharge', 'Magnet Bomb', 'Thunderbolt', '', '', '', '', '', '', '', ''),
(82, 'ELECTRIC', 'STEEL', 'Magneton', 'Spark', 'Thunder Shock', '', 'Discharge', 'Magnet Bomb', 'Flash Cannon', '', '', '', '', '', '', '', ''),
(83, 'NORMAL', 'FLYING', 'Farfetch''d', 'Cut', 'Fury Cutter', '', 'Aerial Ace', 'Air Cutter', 'Leaf Blade', '', '', '', '', '', '', '', ''),
(84, 'NORMAL', 'FLYING', 'Doduo', 'Peck', 'Quick Attack', '', 'Drill Peck', 'Aerial Ace', 'Swift', '', '', '', '', '', '', '', ''),
(85, 'NORMAL', 'FLYING', 'Dodrio', 'Feint Attack', 'Steel Wing', '', 'Drill Peck', 'Aerial Ace', 'Air Cutter', '', '', '', '', '', '', '', ''),
(86, 'WATER', 'NONE', 'Seel', 'Ice Shard', 'Lick', 'Water Gun', 'Aqua Jet', 'Icy Wind', 'Aqua Tail', '', '', '', '', '', '', '', ''),
(87, 'WATER', 'ICE', 'Dewgong', 'Frost Breath', 'Ice Shard', '', 'Icy Wind', 'Aqua Jet', 'Blizzard', '', '', '', '', '', '', '', ''),
(88, 'POISON', 'NONE', 'Grimer', 'Mud Slap', 'Poison Jab', 'Acid', 'Sludge', 'Mud Bomb', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(89, 'POISON', 'NONE', 'Muk', 'Poison Jab', 'Lick', 'Lick', 'Dark Pulse', 'Gunk Shot', 'Sludge Wave', '', '', '', '', '', '', '', ''),
(90, 'WATER', 'NONE', 'Shellder', 'Ice Shard', 'Tackle', '', 'Bubble Beam', 'Water Pulse', 'Icy Wind', '', '', '', '', '', '', '', ''),
(91, 'WATER', 'ICE', 'Cloyster', 'Frost Breath', 'Ice Shard', '', 'Icy Wind', 'Hydro Pump', 'Blizzard', '', '', '', '', '', '', '', ''),
(92, 'GHOST', 'POISON', 'Gastly', 'Lick', 'Sucker Punch', '', 'Ominous Wind', 'Dark Pulse', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(93, 'GHOST', 'POISON', 'Haunter', 'Shadow Claw', 'Lick', '', 'Shadow Ball', 'Dark Pulse', 'Sludge Bomb', '', '', '', '', '', '', '', ''),
(94, 'GHOST', 'POISON', 'Gengar', 'Sucker Punch', 'Shadow Claw', '', 'Shadow Ball', 'Dark Pulse', 'Sludge Bomb', '', '', '', '', '', '', 'Sluge Wave', ''),
(95, 'ROCK', 'GROUND', 'Onix', 'Rock Throw', 'Tackle', '', 'Rock Slide', 'Stone Edge', 'Iron Head', '', '', '', '', '', '', '', ''),
(96, 'PSYCHIC', 'NONE', 'Drowzee', 'Pound', 'Confusion', '', 'Psybeam', 'Psyshock', 'Psychic', '', '', '', '', '', '', '', ''),
(97, 'PSYCHIC', 'NONE', 'Hypno', 'Zen Headbutt', 'Confusion', '', 'Psyshock', 'Psychic', 'Shadow Ball', '', '', '', '', '', '', '', ''),
(98, 'WATER', 'NONE', 'Krabby', 'Bubble', 'Mud Shot', '', 'Vice Grip', 'Bubble Beam', 'Water Pulse', '', '', '', '', '', '', '', ''),
(99, 'WATER', 'NONE', 'Kingler', 'Metal Claw', 'Mud Shot', '', 'Vice Grip', 'X Scissor', 'Water Pulse', '', '', '', '', '', '', '', ''),
(100, 'ELECTRIC', 'NONE', 'Voltorb', 'Spark', 'Tackle', '', 'Discharge', 'Thunderbolt', 'Signal Beam', '', '', '', '', '', '', '', ''),
(101, 'ELECTRIC', 'NONE', 'Electrode', 'Spark', 'Tackle', '', 'Discharge', 'Thunderbolt', 'Hyper Beam', '', '', '', '', '', '', '', ''),
(102, 'GRASS', 'PSYCHIC', 'Exeggcute', 'Confusion', '', '', 'Seed Bomb', 'Psychic', 'Ancient Power', '', '', '', '', '', '', '', ''),
(103, 'GRASS', 'PSYCHIC', 'Exeggutor', 'Confusion', 'Zen Headbutt', '', 'Seed Bomb', 'Psychic', 'Solar Beam', '', '', '', '', '', '', '', ''),
(104, 'GROUND', 'NONE', 'Cubone', 'Mud Slap', 'Rock Smash', '', 'Bone Club', 'Dig', 'Bulldoze', '', '', '', '', '', '', '', ''),
(105, 'GROUND', 'NONE', 'Marowak', 'Mud Slap', 'Rock Smash', '', 'Bone Club', 'Dig', 'Earthquake', '', '', '', '', '', '', '', ''),
(106, 'FIGHTING', 'NONE', 'Hitmonlee', 'Low Kick', 'Rock Smash', '', 'Low Sweep', 'Stone Edge', 'Brick Break', '', '', '', '', '', '', 'Stomp', ''),
(107, 'FIGHTING', 'NONE', 'Hitmonchan', 'Bullet Punch', 'Rock Smash', '', 'Fire Punch', 'Ice Punch', 'Thunder Punch', 'Brick Break', '', '', '', '', '', '', ''),
(108, 'NORMAL', 'NONE', 'Lickitung', 'Lick', 'Zen Headbutt', '', 'Hyper Beam', 'Stomp', 'Power Whip', '', '', '', '', '', '', '', ''),
(109, 'POISON', 'NONE', 'Koffing', 'Tackle', '', 'Acid', 'Sludge', 'Sludge Bomb', 'Dark Pulse', '', '', '', '', '', '', '', ''),
(110, 'POISON', 'NONE', 'Weezing', 'Tackle', '', 'Acid', 'Sludge Bomb', 'Shadow Ball', 'Dark Pulse', '', '', '', '', '', '', '', ''),
(111, 'GROUND', 'ROCK', 'Rhyhorn', 'Mud Slap', 'Rock Smash', '', 'Bulldoze', 'Horn Attack', 'Stomp', '', '', '', '', '', '', '', ''),
(112, 'GROUND', 'ROCK', 'Rhydon', 'Mud Slap', 'Rock Smash', '', 'Megahorn', 'Earthquake', 'Stone Edge', '', '', '', '', '', '', '', ''),
(113, 'NORMAL', 'NONE', 'Chansey', 'Pound', 'Zen Headbutt', '', 'Psychic', 'Dazzling Gleam', 'Hyper Beam', '', '', '', '', '', '', 'Psybeam', ''),
(114, 'GRASS', 'NONE', 'Tangela', 'Vine Whip', '', '', 'Power Whip', 'Sludge Bomb', 'Solar Beam', '', '', '', '', '', '', '', ''),
(115, 'NORMAL', 'NONE', 'Kangaskhan', 'Mud Slap', 'Low Kick', '', 'Brick Break', 'Earthquake', 'Stomp', '', '', '', '', '', '', '', ''),
(116, 'WATER', 'NONE', 'Horsea', 'Water Gun', 'Bubble', '', 'Bubble Beam', 'Dragon Pulse', 'Flash Cannon', '', '', '', '', '', '', '', ''),
(117, 'WATER', 'NONE', 'Seadra', 'Water Gun', 'Dragon Breath', '', 'Blizzard', 'Dragon Pulse', 'Hydro Pump', '', '', '', '', '', '', '', ''),
(118, 'WATER', 'NONE', 'Goldeen', 'Peck', 'Mud Shot', '', 'Water Pulse', 'Horn Attack', 'Aqua Tail', '', '', '', '', '', '', '', ''),
(119, 'WATER', 'NONE', 'Seaking', 'Peck', 'Poison Jab', '', 'Icy Wind', 'Drill Run', 'Megahorn', '', '', '', '', '', '', '', ''),
(120, 'WATER', 'NONE', 'Staryu', 'Tackle', 'Water Gun', 'Quick Attack', 'Swift', 'Bubble Beam', 'Power Gem', '', '', '', '', '', '', '', ''),
(121, 'WATER', 'PSYCHIC', 'Starmie', 'Tackle', 'Water Gun', 'Quick Attack', 'Hydro Pump', 'Power Gem', 'Psychic', '', '', '', '', '', '', 'Psybeam', ''),
(122, 'PSYCHIC', 'FAIRY', 'Mr. Mime', 'Confusion', 'Zen Headbutt', '', 'Psybeam', 'Psychic', 'Shadow Ball', '', '', '', '', '', '', '', ''),
(123, 'BUG', 'FLYING', 'Scyther', 'Fury Cutter', 'Steel Wing', '', 'Night Slash', 'X Scissor', 'Bug Buzz', '', '', '', '', '', '', '', ''),
(124, 'ICE', 'PSYCHIC', 'Jynx', 'Frost Breath', 'Pound', '', 'Draining Kiss', 'Ice Punch', 'Psyshock', '', '', '', '', '', '', '', ''),
(125, 'ELECTRIC', 'NONE', 'Electabuzz', 'Thunder Shock', 'Low Kick', '', 'Thunder Punch', 'Thunderbolt', 'Thunder', '', '', '', '', '', '', '', ''),
(126, 'FIRE', 'NONE', 'Magmar', 'Ember', 'Karate Chop', '', 'Fire Blast', 'Fire Punch', 'Flamethrower', '', '', '', '', '', '', '', ''),
(127, 'BUG', 'NONE', 'Pinsir', 'Rock Smash', 'Fury Cutter', '', 'Vice Grip', 'X Scissor', 'Submission', '', '', '', '', '', '', '', ''),
(128, 'NORMAL', 'NONE', 'Tauros', 'Tackle', 'Zen Headbutt', '', 'Horn Attack', 'Iron Head', 'Earthquake', '', '', '', '', '', '', '', ''),
(129, 'WATER', 'NONE', 'Magikarp', 'Splash', '', '', 'Struggle', '', '', '', '', '', '', '', '', '', ''),
(130, 'WATER', 'FLYING', 'Gyarados', 'Bite', '', 'Dragon Breath', 'Hydro Pump', 'Twister', 'Dragon Pulse', '', '', '', '', '', '', '', ''),
(131, 'WATER', 'ICE', 'Lapras', 'Frost Breath', 'Ice Shard', '', 'Dragon Pulse', 'Ice Beam', 'Blizzard', '', '', '', '', '', '', '', ''),
(132, 'NORMAL', 'NONE', 'Ditto', 'Pound', '', '', 'Struggle', '', '', '', '', '', '', '', '', '', ''),
(133, 'NORMAL', 'NONE', 'Eevee', 'Quick Attack', 'Tackle', '', 'Dig', 'Swift', 'Body Slam', '', '', '', '', '', '', '', ''),
(134, 'WATER', 'NONE', 'Vaporeon', 'Water Gun', '', '', 'Water Pulse', 'Hydro Pump', 'Aqua Tail', '', '', '', '', '', '', '', ''),
(135, 'ELECTRIC', 'NONE', 'Jolteon', 'Thunder Shock', '', '', 'Discharge', 'Thunderbolt', 'Thunder', '', '', '', '', '', '', '', ''),
(136, 'FIRE', 'NONE', 'Flareon', 'Ember', '', '', 'Fire Blast', 'Flamethrower', 'Heat Wave', '', '', '', '', '', '', '', ''),
(137, 'NORMAL', 'NONE', 'Porygon', 'Tackle', 'Zen Headbutt', 'Quick Attack', 'Psybeam', 'Signal Beam', 'Discharge', '', '', '', '', '', '', '', ''),
(138, 'ROCK', 'WATER', 'Omanyte', 'Water Gun', 'Mud Shot', '', 'Ancient Power', 'Brine', 'Rock Tomb', '', '', '', '', '', '', '', ''),
(139, 'ROCK', 'WATER', 'Omastar', 'Water Gun', 'Mud Shot', 'Rock Throw', 'Ancient Power', 'Hydro Pump', 'Rock Slide', '', '', '', '', '', '', '', ''),
(140, 'ROCK', 'WATER', 'Kabuto', 'Scratch', 'Mud Shot', '', 'Ancient Power', 'Aqua Jet', 'Rock Tomb', '', '', '', '', '', '', '', ''),
(141, 'ROCK', 'WATER', 'Kabutops', 'Mud Shot', 'Fury Cutter', '', 'Ancient Power', 'Water Pulse', 'Stone Edge', '', '', '', '', '', '', '', ''),
(142, 'ROCK', 'FLYING', 'Aerodactyl', 'Steel Wing', 'Bite', '', 'Ancient Power', 'Iron Head', 'Hyper Beam', '', '', '', '', '', '', '', ''),
(143, 'NORMAL', 'NONE', 'Snorlax', 'Zen Headbutt', 'Lick', '', 'Body Slam', 'Hyper Beam', 'Earthquake', '', '', '', '', '', '', '', ''),
(144, 'ICE', 'FLYING', 'Articuno', 'Frost Breath', '', '', 'Ice Beam', 'Icy Wind', 'Blizzard', '', '', '', '', '', '', '', ''),
(145, 'ELECTRIC', 'FLYING', 'Zapdos', 'Thunder Shock', '', '', 'Discharge', 'Thunderbolt', 'Thunder', '', '', '', '', '', '', '', ''),
(146, 'FIRE', 'FLYING', 'Moltres', 'Ember', '', '', 'Fire Blast', 'Heat Wave', 'Flamethrower', '', '', '', '', '', '', '', ''),
(147, 'DRAGON', 'NONE', 'Dratini', 'Dragon Breath', '', '', 'Wrap', 'Twister', 'Aqua Tail', '', '', '', '', '', '', '', ''),
(148, 'DRAGON', 'NONE', 'Dragonair', 'Dragon Breath', '', '', 'Wrap', 'Aqua Tail', 'Dragon Pulse', '', '', '', '', '', '', '', ''),
(149, 'DRAGON', 'FLYING', 'Dragonite', 'Dragon Breath', 'Steel Wing', '', 'Dragon Pulse', 'Hyper Beam', 'Dragon Claw', '', '', '', '', '', '', '', ''),
(150, 'PSYCHIC', 'NONE', 'Mewtwo', 'Psycho Cut', 'Confusion', '', 'Psychic', 'Shadow Ball', 'Hyper Beam', '', '', '', '', '', '', '', ''),
(151, 'PSYCHIC', 'NONE', 'Mew', 'Pound', '', '', 'Earthquake', 'Psychic', 'Dragon Pulse', 'Thunder', 'Fire Blast', 'Solar Beam', 'Hyper Beam', 'Blizzard', '', 'Moonblast', 'Hurricane');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon_skills`
--
ALTER TABLE `pokemon_skills`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
