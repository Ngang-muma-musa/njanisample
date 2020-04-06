-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 09:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `njangi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `location` varchar(222) NOT NULL,
  `phonenumber` varchar(222) NOT NULL,
  `role` varchar(222) NOT NULL,
  `pwd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `location`, `phonenumber`, `role`, `pwd`) VALUES
(1, 'Admin', 'alicendeh16@gmail.com', 'buea', '+237-679-165-995', 'Admin', '$2y$10$aAenGzYUq9C6TBoFluJhZeW7Kh8RH5tVIcYwsKp5V9CI9YohKq0XS');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `role` varchar(222) NOT NULL,
  `name` tinytext NOT NULL,
  `location` longtext NOT NULL,
  `phonenumber` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `pwd` longtext NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `role`, `name`, `location`, `phonenumber`, `email`, `pwd`, `image`) VALUES
(1, 'Admin', 'Muma', 'buea', '+237-679-165-995', 'ngangmuma00@gmail.com', '$2y$10$jTp.931AK76l12592ZMIq.xUZ1hgVDAYOAUVgvGvRdhm6RXNMgftm', ''),
(5, 'member', 'Admin', 'kumba', '+237-679-165-995', 'ngangmuma00@gmail.com', '$2y$10$GJ1xKR3.bynMmGQ7U3Ea9.GfHrufmOY8gEVZCG42ReZ/Qycrmi3y6', ''),
(6, 'member', 'Salmarine', 'buea', '+237-679-165-995', 'ngangmuma00@gmail.com', '$2y$10$odYFXZZG0TC7vaenxOH.4ONX6Qz15QsV4OKNEAelg8pYp1FUnyx46', ''),
(7, 'member', 'FEDEX', 'limbe', '+237-679-165-995', 'ngangmuma00@gmail.com', '$2y$10$AD1DdAN9OCD0jkzqAGRcUeshyrOwCprMGiPCk8d8ib6HKekQ8zYW.', ''),
(8, 'member', 'paul', 'buea', '+237-679-165-995', 'paul@gmial.com', '$2y$10$npJdPOw1VpqfwWr7Sd1EheglrFDh7lz8Hsdt4qOvbPfJGelNc7trq', ''),
(9, 'member', 'mary', 'yaounde', '674889334', 'mary@gmial.com', '1234', ''),
(10, 'member', 'mary', 'yaounde', '674889334', 'mary@gmial.com', '1234', ''),
(11, 'member', 'mary', 'yaounde', '674889334', 'mary@gmial.com', '1234', ''),
(12, 'member', 'mary', 'yaounde', '674889334', 'mary@gmial.com', '1234', ''),
(13, 'member', 'joseph', 'kumba', '+237-679-165-995', 'paul@gmial.com', '$2y$10$FO6DSfYHEAyPoihmrwM1lO9nYl3q3M8Pb9mZArx3.koIuedRp1GiS', 'Salmarine.jpg'),
(14, 'member', 'johnson', 'limbe', '654386234', 'johnson@gmail.com', '1234', ''),
(15, 'member', 'russel', 'limbe', '+237-679-165-995', 'ngombapascal@gmail.com', '$2y$10$G/okLOrlJjVnta9RPnXQ6eNNNGuA7.gs2EskJJsq56mdDDe7FgJwG', ''),
(17, 'member', 'mama', 'buea', '+237-679-165-995', 'ngangmuma00@gmail.com', '$2y$10$nZWIwmjZb2p7a7fbVMyp/.b18pYd.vsxarXkIcNVxMU6svEj00y3S', 'Fedex.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `week_id` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `week_id`) VALUES
(2, 1586175681);

-- --------------------------------------------------------

--
-- Table structure for table `total`
--

CREATE TABLE `total` (
  `id` int(11) NOT NULL,
  `ammount` int(22) NOT NULL,
  `week_id` int(22) NOT NULL,
  `benefiter` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total`
--

INSERT INTO `total` (`id`, `ammount`, `week_id`, `benefiter`) VALUES
(12, 2300, 1584743303, ''),
(13, 0, 1584745810, ''),
(14, 0, 1584745810, ''),
(15, 1500, 1584745847, ''),
(16, 100, 1584798220, ''),
(17, 500, 1584799414, ''),
(18, 16500, 1584799899, ''),
(19, 3000, 1584813109, ''),
(20, 1800, 1584880784, ''),
(21, 2500, 1584880972, ''),
(22, 0, 1584993816, 'muma'),
(23, 1800, 1584996520, 'muma'),
(24, 0, 1585000204, ''),
(25, 0, 1585000299, ''),
(26, 0, 1585000432, ''),
(27, 0, 1585000648, ''),
(28, 0, 1585000850, ''),
(29, 0, 1585001140, ''),
(30, 0, 1585001202, ''),
(31, 0, 1585001361, ''),
(32, 0, 1585002145, ''),
(33, 0, 1585002194, ''),
(34, 0, 1585002387, ''),
(35, 0, 1585002397, ''),
(36, 0, 1585002486, ''),
(37, 0, 1585002628, ''),
(38, 1900, 1585002705, 'frank'),
(39, 1500, 1585084142, 'puis'),
(40, 0, 1585948147, ''),
(41, 0, 1585948237, ''),
(42, 0, 1585948250, ''),
(43, 0, 1585948332, 'frank'),
(44, 2600, 1585951661, 'frank'),
(45, 700, 1586128204, ''),
(46, 500, 1586129033, ''),
(47, 2600, 1586175681, '');

-- --------------------------------------------------------

--
-- Table structure for table `waiting_list`
--

CREATE TABLE `waiting_list` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` tinytext NOT NULL,
  `phonenumber` varchar(222) NOT NULL,
  `location` tinytext NOT NULL,
  `role` tinytext NOT NULL,
  `pwd` text NOT NULL,
  `image` varchar(325) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waiting_list`
--

INSERT INTO `waiting_list` (`id`, `name`, `email`, `phonenumber`, `location`, `role`, `pwd`, `image`) VALUES
(5, 'peter', 'ngangmuma00@gmail.com', '+237-679-165-995', 'buea', 'member', '$2y$10$XE7rfFqbx5SGYPjQwfyNg.GY3s4ANpktwn.0dwu9sR8ddCeLRJznC', '');

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `id` int(11) NOT NULL,
  `week_id` int(111) NOT NULL,
  `name` varchar(222) NOT NULL,
  `status` varchar(222) NOT NULL,
  `ammount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`id`, `week_id`, `name`, `status`, `ammount`) VALUES
(34, 1584387599, 'Muma', 'NotPaid', 0),
(35, 1584387599, 'Admin', 'NotPaid', 0),
(36, 1584387599, 'Salmarine', 'NotPaid', 0),
(37, 1584387599, 'FEDEX', 'NotPaid', 0),
(38, 1584387599, 'paul', 'NotPaid', 0),
(39, 1584388020, 'Muma', 'NotPaid', 0),
(40, 1584388020, 'Admin', 'NotPaid', 0),
(41, 1584388020, 'Salmarine', 'NotPaid', 0),
(42, 1584388020, 'FEDEX', 'NotPaid', 0),
(43, 1584388020, 'paul', 'Paid', 1500),
(44, 1584560537, 'Muma', 'NotPaid', 0),
(45, 1584560537, 'Admin', 'NotPaid', 0),
(46, 1584560537, 'Salmarine', 'NotPaid', 0),
(47, 1584560537, 'FEDEX', 'NotPaid', 0),
(48, 1584560537, 'paul', 'NotPaid', 0),
(49, 1584560545, 'Muma', 'NotPaid', 0),
(50, 1584560545, 'Admin', 'NotPaid', 0),
(51, 1584560545, 'Salmarine', 'NotPaid', 0),
(52, 1584560545, 'FEDEX', 'NotPaid', 0),
(53, 1584560545, 'paul', 'NotPaid', 0),
(54, 1584564786, 'Muma', 'NotPaid', 0),
(55, 1584564786, 'Admin', 'NotPaid', 0),
(56, 1584564786, 'Salmarine', 'NotPaid', 0),
(57, 1584564786, 'FEDEX', 'NotPaid', 0),
(58, 1584564786, 'paul', 'NotPaid', 0),
(59, 1584564786, 'mary', 'NotPaid', 0),
(60, 1584564786, 'mary', 'NotPaid', 0),
(61, 1584564786, 'mary', 'NotPaid', 0),
(62, 1584564786, 'mary', 'NotPaid', 0),
(63, 1584564786, 'joseph', 'NotPaid', 0),
(64, 1584564950, 'Muma', 'NotPaid', 0),
(65, 1584564950, 'Admin', 'NotPaid', 0),
(66, 1584564950, 'Salmarine', 'NotPaid', 0),
(67, 1584564950, 'FEDEX', 'NotPaid', 0),
(68, 1584564950, 'paul', 'NotPaid', 0),
(69, 1584564950, 'mary', 'NotPaid', 0),
(70, 1584564950, 'mary', 'NotPaid', 0),
(71, 1584564950, 'mary', 'NotPaid', 0),
(72, 1584564950, 'mary', 'NotPaid', 0),
(73, 1584564950, 'joseph', 'NotPaid', 0),
(74, 1584734815, 'Muma', 'NotPaid', 0),
(75, 1584734815, 'Admin', 'NotPaid', 0),
(76, 1584734815, 'Salmarine', 'NotPaid', 0),
(77, 1584734815, 'FEDEX', 'NotPaid', 0),
(78, 1584734815, 'paul', 'NotPaid', 0),
(79, 1584734815, 'mary', 'NotPaid', 0),
(80, 1584734815, 'mary', 'NotPaid', 0),
(81, 1584734815, 'mary', 'NotPaid', 0),
(82, 1584734815, 'mary', 'NotPaid', 0),
(83, 1584734815, 'joseph', 'NotPaid', 0),
(84, 1584734815, 'johnson', 'NotPaid', 0),
(85, 1584735188, 'Muma', 'PAID', 1500),
(86, 1584735188, 'Admin', 'PAID', 300),
(87, 1584735188, 'Salmarine', 'PAID', 1500),
(88, 1584735188, 'FEDEX', 'PAID', 200),
(89, 1584735188, 'paul', 'PAID', 1500),
(90, 1584735188, 'mary', 'NotPaid', 0),
(91, 1584735188, 'mary', 'NotPaid', 0),
(92, 1584735188, 'mary', 'NotPaid', 0),
(93, 1584735188, 'mary', 'NotPaid', 0),
(94, 1584735188, 'joseph', 'NOTCOMPLETE', 500),
(95, 1584735188, 'johnson', 'NotPaid', 0),
(96, 1584735188, 'Muma', 'NotPaid', 0),
(97, 1584735188, 'Admin', 'NotPaid', 0),
(98, 1584735188, 'Salmarine', 'NotPaid', 0),
(99, 1584735188, 'FEDEX', 'NotPaid', 0),
(100, 1584735188, 'paul', 'NotPaid', 0),
(101, 1584735188, 'mary', 'NotPaid', 0),
(102, 1584735188, 'mary', 'NotPaid', 0),
(103, 1584735188, 'mary', 'NotPaid', 0),
(104, 1584735188, 'mary', 'NotPaid', 0),
(105, 1584735188, 'joseph', 'NotPaid', 0),
(106, 1584735188, 'johnson', 'NotPaid', 0),
(107, 1584743051, 'Muma', 'NotPaid', 0),
(108, 1584743051, 'Admin', 'NotPaid', 0),
(109, 1584743051, 'Salmarine', 'NotPaid', 0),
(110, 1584743051, 'FEDEX', 'NotPaid', 0),
(111, 1584743051, 'paul', 'NotPaid', 0),
(112, 1584743051, 'mary', 'NotPaid', 0),
(113, 1584743051, 'mary', 'NotPaid', 0),
(114, 1584743051, 'mary', 'NotPaid', 0),
(115, 1584743051, 'mary', 'NotPaid', 0),
(116, 1584743051, 'joseph', 'NotPaid', 0),
(117, 1584743051, 'johnson', 'NotPaid', 0),
(118, 1584743220, 'Muma', 'NotPaid', 0),
(119, 1584743220, 'Admin', 'NotPaid', 0),
(120, 1584743220, 'Salmarine', 'NotPaid', 0),
(121, 1584743220, 'FEDEX', 'NotPaid', 0),
(122, 1584743220, 'paul', 'NotPaid', 0),
(123, 1584743220, 'mary', 'NotPaid', 0),
(124, 1584743220, 'mary', 'NotPaid', 0),
(125, 1584743220, 'mary', 'NotPaid', 0),
(126, 1584743220, 'mary', 'NotPaid', 0),
(127, 1584743220, 'joseph', 'NotPaid', 0),
(128, 1584743220, 'johnson', 'NotPaid', 0),
(129, 1584743303, 'Muma', 'PAID', 100),
(130, 1584743303, 'Admin', 'PAID', 200),
(131, 1584743303, 'Salmarine', 'NotPaid', 0),
(132, 1584743303, 'FEDEX', 'NotPaid', 0),
(133, 1584743303, 'paul', 'NotPaid', 0),
(134, 1584743303, 'mary', 'NotPaid', 0),
(135, 1584743303, 'mary', 'NotPaid', 0),
(136, 1584743303, 'mary', 'NotPaid', 0),
(137, 1584743303, 'mary', 'NotPaid', 0),
(138, 1584743303, 'joseph', 'NotPaid', 0),
(139, 1584743303, 'johnson', 'NotPaid', 0),
(140, 1584745810, 'Muma', 'NotPaid', 0),
(141, 1584745810, 'Admin', 'NotPaid', 0),
(142, 1584745810, 'Salmarine', 'NotPaid', 0),
(143, 1584745810, 'FEDEX', 'NotPaid', 0),
(144, 1584745810, 'paul', 'NotPaid', 0),
(145, 1584745810, 'mary', 'NotPaid', 0),
(146, 1584745810, 'mary', 'NotPaid', 0),
(147, 1584745810, 'mary', 'NotPaid', 0),
(148, 1584745810, 'mary', 'NotPaid', 0),
(149, 1584745810, 'joseph', 'NotPaid', 0),
(150, 1584745810, 'johnson', 'NotPaid', 0),
(151, 1584745810, 'Muma', 'NotPaid', 0),
(152, 1584745810, 'Admin', 'NotPaid', 0),
(153, 1584745810, 'Salmarine', 'NotPaid', 0),
(154, 1584745810, 'FEDEX', 'NotPaid', 0),
(155, 1584745810, 'paul', 'NotPaid', 0),
(156, 1584745810, 'mary', 'NotPaid', 0),
(157, 1584745810, 'mary', 'NotPaid', 0),
(158, 1584745810, 'mary', 'NotPaid', 0),
(159, 1584745810, 'mary', 'NotPaid', 0),
(160, 1584745810, 'joseph', 'NotPaid', 0),
(161, 1584745810, 'johnson', 'NotPaid', 0),
(162, 1584745847, 'Muma', 'PAID', 1400),
(163, 1584745847, 'Admin', 'PAID', 100),
(164, 1584745847, 'Salmarine', 'NotPaid', 0),
(165, 1584745847, 'FEDEX', 'NotPaid', 0),
(166, 1584745847, 'paul', 'NotPaid', 0),
(167, 1584745847, 'mary', 'NotPaid', 0),
(168, 1584745847, 'mary', 'NotPaid', 0),
(169, 1584745847, 'mary', 'NotPaid', 0),
(170, 1584745847, 'mary', 'NotPaid', 0),
(171, 1584745847, 'joseph', 'NotPaid', 0),
(172, 1584745847, 'johnson', 'NotPaid', 0),
(173, 1584798220, 'Muma', 'PAID', 100),
(174, 1584798220, 'Admin', 'NotPaid', 0),
(175, 1584798220, 'Salmarine', 'NotPaid', 0),
(176, 1584798220, 'FEDEX', 'NotPaid', 0),
(177, 1584798220, 'paul', 'NotPaid', 0),
(178, 1584798220, 'mary', 'NotPaid', 0),
(179, 1584798220, 'mary', 'NotPaid', 0),
(180, 1584798220, 'mary', 'NotPaid', 0),
(181, 1584798220, 'mary', 'NotPaid', 0),
(182, 1584798220, 'joseph', 'NotPaid', 0),
(183, 1584798220, 'johnson', 'NotPaid', 0),
(184, 1584799414, 'Muma', 'NotPaid', 0),
(185, 1584799414, 'Admin', 'PAID', 500),
(186, 1584799414, 'Salmarine', 'NotPaid', 0),
(187, 1584799414, 'FEDEX', 'NotPaid', 0),
(188, 1584799414, 'paul', 'NotPaid', 0),
(189, 1584799414, 'mary', 'NotPaid', 0),
(190, 1584799414, 'mary', 'NotPaid', 0),
(191, 1584799414, 'mary', 'NotPaid', 0),
(192, 1584799414, 'mary', 'NotPaid', 0),
(193, 1584799414, 'joseph', 'NotPaid', 0),
(194, 1584799414, 'johnson', 'NotPaid', 0),
(195, 1584799899, 'Muma', 'PAID', 1500),
(196, 1584799899, 'Admin', 'PAID', 1500),
(197, 1584799899, 'Salmarine', 'PAID', 1500),
(198, 1584799899, 'FEDEX', 'PAID', 1500),
(199, 1584799899, 'paul', 'PAID', 1500),
(200, 1584799899, 'mary', 'PAID', 1500),
(201, 1584799899, 'mary', 'PAID', 1500),
(202, 1584799899, 'mary', 'PAID', 1500),
(203, 1584799899, 'mary', 'PAID', 1500),
(204, 1584799899, 'joseph', 'PAID', 1500),
(205, 1584799899, 'johnson', 'PAID', 1500),
(206, 1584813109, 'Muma', 'PAID', 1500),
(207, 1584813109, 'Admin', 'PAID', 1500),
(208, 1584813109, 'Salmarine', 'NotPaid', 0),
(209, 1584813109, 'FEDEX', 'NotPaid', 0),
(210, 1584813109, 'paul', 'NotPaid', 0),
(211, 1584813109, 'mary', 'NotPaid', 0),
(212, 1584813109, 'mary', 'NotPaid', 0),
(213, 1584813109, 'mary', 'NotPaid', 0),
(214, 1584813109, 'mary', 'NotPaid', 0),
(215, 1584813109, 'joseph', 'NotPaid', 0),
(216, 1584813109, 'johnson', 'NotPaid', 0),
(217, 1584880784, 'Muma', 'PAID', 1500),
(218, 1584880784, 'Admin', 'PAID', 300),
(219, 1584880784, 'Salmarine', 'NotPaid', 0),
(220, 1584880784, 'FEDEX', 'NotPaid', 0),
(221, 1584880784, 'paul', 'NotPaid', 0),
(222, 1584880784, 'mary', 'NotPaid', 0),
(223, 1584880784, 'mary', 'NotPaid', 0),
(224, 1584880784, 'mary', 'NotPaid', 0),
(225, 1584880784, 'mary', 'NotPaid', 0),
(226, 1584880784, 'joseph', 'NotPaid', 0),
(227, 1584880784, 'johnson', 'NotPaid', 0),
(228, 1584880972, 'Muma', 'PAID', 500),
(229, 1584880972, 'Admin', 'NotPaid', 0),
(230, 1584880972, 'Salmarine', 'NotPaid', 0),
(231, 1584880972, 'FEDEX', 'PAID', 2000),
(232, 1584880972, 'paul', 'NotPaid', 0),
(233, 1584880972, 'mary', 'NotPaid', 0),
(234, 1584880972, 'mary', 'NotPaid', 0),
(235, 1584880972, 'mary', 'NotPaid', 0),
(236, 1584880972, 'mary', 'NotPaid', 0),
(237, 1584880972, 'joseph', 'NotPaid', 0),
(238, 1584880972, 'johnson', 'NotPaid', 0),
(239, 1584880972, 'russel', 'NotPaid', 0),
(240, 1584993816, 'Muma', 'NotPaid', 0),
(241, 1584993816, 'Admin', 'NotPaid', 0),
(242, 1584993816, 'Salmarine', 'NotPaid', 0),
(243, 1584993816, 'FEDEX', 'NotPaid', 0),
(244, 1584993816, 'paul', 'NotPaid', 0),
(245, 1584993816, 'mary', 'NotPaid', 0),
(246, 1584993816, 'mary', 'NotPaid', 0),
(247, 1584993816, 'mary', 'NotPaid', 0),
(248, 1584993816, 'mary', 'NotPaid', 0),
(249, 1584993816, 'joseph', 'NotPaid', 0),
(250, 1584993816, 'johnson', 'NotPaid', 0),
(251, 1584993816, 'russel', 'NotPaid', 0),
(252, 1584996520, 'Muma', 'PAID', 1300),
(253, 1584996520, 'Admin', 'NOTCOMPLETE', 500),
(254, 1584996520, 'Salmarine', 'NotPaid', 0),
(255, 1584996520, 'FEDEX', 'NotPaid', 0),
(256, 1584996520, 'paul', 'NotPaid', 0),
(257, 1584996520, 'mary', 'NotPaid', 0),
(258, 1584996520, 'mary', 'NotPaid', 0),
(259, 1584996520, 'mary', 'NotPaid', 0),
(260, 1584996520, 'mary', 'NotPaid', 0),
(261, 1584996520, 'joseph', 'NotPaid', 0),
(262, 1584996520, 'johnson', 'NotPaid', 0),
(263, 1584996520, 'russel', 'NotPaid', 0),
(264, 1585000204, 'Muma', 'NotPaid', 0),
(265, 1585000204, 'Admin', 'NotPaid', 0),
(266, 1585000204, 'Salmarine', 'NotPaid', 0),
(267, 1585000204, 'FEDEX', 'NotPaid', 0),
(268, 1585000204, 'paul', 'NotPaid', 0),
(269, 1585000204, 'mary', 'NotPaid', 0),
(270, 1585000204, 'mary', 'NotPaid', 0),
(271, 1585000204, 'mary', 'NotPaid', 0),
(272, 1585000204, 'mary', 'NotPaid', 0),
(273, 1585000204, 'joseph', 'NotPaid', 0),
(274, 1585000204, 'johnson', 'NotPaid', 0),
(275, 1585000204, 'russel', 'NotPaid', 0),
(276, 1585000299, 'Muma', 'NotPaid', 0),
(277, 1585000299, 'Admin', 'NotPaid', 0),
(278, 1585000299, 'Salmarine', 'NotPaid', 0),
(279, 1585000299, 'FEDEX', 'NotPaid', 0),
(280, 1585000299, 'paul', 'NotPaid', 0),
(281, 1585000299, 'mary', 'NotPaid', 0),
(282, 1585000299, 'mary', 'NotPaid', 0),
(283, 1585000299, 'mary', 'NotPaid', 0),
(284, 1585000299, 'mary', 'NotPaid', 0),
(285, 1585000299, 'joseph', 'NotPaid', 0),
(286, 1585000299, 'johnson', 'NotPaid', 0),
(287, 1585000299, 'russel', 'NotPaid', 0),
(288, 1585000432, 'Muma', 'NotPaid', 0),
(289, 1585000432, 'Admin', 'NotPaid', 0),
(290, 1585000432, 'Salmarine', 'NotPaid', 0),
(291, 1585000432, 'FEDEX', 'NotPaid', 0),
(292, 1585000432, 'paul', 'NotPaid', 0),
(293, 1585000432, 'mary', 'NotPaid', 0),
(294, 1585000432, 'mary', 'NotPaid', 0),
(295, 1585000432, 'mary', 'NotPaid', 0),
(296, 1585000432, 'mary', 'NotPaid', 0),
(297, 1585000432, 'joseph', 'NotPaid', 0),
(298, 1585000432, 'johnson', 'NotPaid', 0),
(299, 1585000432, 'russel', 'NotPaid', 0),
(300, 1585000648, 'Muma', 'NotPaid', 0),
(301, 1585000648, 'Admin', 'NotPaid', 0),
(302, 1585000648, 'Salmarine', 'NotPaid', 0),
(303, 1585000648, 'FEDEX', 'NotPaid', 0),
(304, 1585000648, 'paul', 'NotPaid', 0),
(305, 1585000648, 'mary', 'NotPaid', 0),
(306, 1585000648, 'mary', 'NotPaid', 0),
(307, 1585000648, 'mary', 'NotPaid', 0),
(308, 1585000648, 'mary', 'NotPaid', 0),
(309, 1585000648, 'joseph', 'NotPaid', 0),
(310, 1585000648, 'johnson', 'NotPaid', 0),
(311, 1585000648, 'russel', 'NotPaid', 0),
(312, 1585000850, 'Muma', 'NotPaid', 0),
(313, 1585000850, 'Admin', 'NotPaid', 0),
(314, 1585000850, 'Salmarine', 'NotPaid', 0),
(315, 1585000850, 'FEDEX', 'NotPaid', 0),
(316, 1585000850, 'paul', 'NotPaid', 0),
(317, 1585000850, 'mary', 'NotPaid', 0),
(318, 1585000850, 'mary', 'NotPaid', 0),
(319, 1585000850, 'mary', 'NotPaid', 0),
(320, 1585000850, 'mary', 'NotPaid', 0),
(321, 1585000850, 'joseph', 'NotPaid', 0),
(322, 1585000850, 'johnson', 'NotPaid', 0),
(323, 1585000850, 'russel', 'NotPaid', 0),
(324, 1585001140, 'Muma', 'NotPaid', 0),
(325, 1585001140, 'Admin', 'NotPaid', 0),
(326, 1585001140, 'Salmarine', 'NotPaid', 0),
(327, 1585001140, 'FEDEX', 'NotPaid', 0),
(328, 1585001140, 'paul', 'NotPaid', 0),
(329, 1585001140, 'mary', 'NotPaid', 0),
(330, 1585001140, 'mary', 'NotPaid', 0),
(331, 1585001140, 'mary', 'NotPaid', 0),
(332, 1585001140, 'mary', 'NotPaid', 0),
(333, 1585001140, 'joseph', 'NotPaid', 0),
(334, 1585001140, 'johnson', 'NotPaid', 0),
(335, 1585001140, 'russel', 'NotPaid', 0),
(336, 1585001202, 'Muma', 'NotPaid', 0),
(337, 1585001202, 'Admin', 'NotPaid', 0),
(338, 1585001202, 'Salmarine', 'NotPaid', 0),
(339, 1585001202, 'FEDEX', 'NotPaid', 0),
(340, 1585001202, 'paul', 'NotPaid', 0),
(341, 1585001202, 'mary', 'NotPaid', 0),
(342, 1585001202, 'mary', 'NotPaid', 0),
(343, 1585001202, 'mary', 'NotPaid', 0),
(344, 1585001202, 'mary', 'NotPaid', 0),
(345, 1585001202, 'joseph', 'NotPaid', 0),
(346, 1585001202, 'johnson', 'NotPaid', 0),
(347, 1585001202, 'russel', 'NotPaid', 0),
(348, 1585001361, 'Muma', 'NotPaid', 0),
(349, 1585001361, 'Admin', 'NotPaid', 0),
(350, 1585001361, 'Salmarine', 'NotPaid', 0),
(351, 1585001361, 'FEDEX', 'NotPaid', 0),
(352, 1585001361, 'paul', 'NotPaid', 0),
(353, 1585001361, 'mary', 'NotPaid', 0),
(354, 1585001361, 'mary', 'NotPaid', 0),
(355, 1585001361, 'mary', 'NotPaid', 0),
(356, 1585001361, 'mary', 'NotPaid', 0),
(357, 1585001361, 'joseph', 'NotPaid', 0),
(358, 1585001361, 'johnson', 'NotPaid', 0),
(359, 1585001361, 'russel', 'NotPaid', 0),
(360, 1585002145, 'Muma', 'NotPaid', 0),
(361, 1585002145, 'Admin', 'NotPaid', 0),
(362, 1585002145, 'Salmarine', 'NotPaid', 0),
(363, 1585002145, 'FEDEX', 'NotPaid', 0),
(364, 1585002145, 'paul', 'NotPaid', 0),
(365, 1585002145, 'mary', 'NotPaid', 0),
(366, 1585002145, 'mary', 'NotPaid', 0),
(367, 1585002145, 'mary', 'NotPaid', 0),
(368, 1585002145, 'mary', 'NotPaid', 0),
(369, 1585002145, 'joseph', 'NotPaid', 0),
(370, 1585002145, 'johnson', 'NotPaid', 0),
(371, 1585002145, 'russel', 'NotPaid', 0),
(372, 1585002194, 'Muma', 'NotPaid', 0),
(373, 1585002194, 'Admin', 'NotPaid', 0),
(374, 1585002194, 'Salmarine', 'NotPaid', 0),
(375, 1585002194, 'FEDEX', 'NotPaid', 0),
(376, 1585002194, 'paul', 'NotPaid', 0),
(377, 1585002194, 'mary', 'NotPaid', 0),
(378, 1585002194, 'mary', 'NotPaid', 0),
(379, 1585002194, 'mary', 'NotPaid', 0),
(380, 1585002194, 'mary', 'NotPaid', 0),
(381, 1585002194, 'joseph', 'NotPaid', 0),
(382, 1585002194, 'johnson', 'NotPaid', 0),
(383, 1585002194, 'russel', 'NotPaid', 0),
(384, 1585002387, 'Muma', 'NotPaid', 0),
(385, 1585002387, 'Admin', 'NotPaid', 0),
(386, 1585002387, 'Salmarine', 'NotPaid', 0),
(387, 1585002387, 'FEDEX', 'NotPaid', 0),
(388, 1585002387, 'paul', 'NotPaid', 0),
(389, 1585002387, 'mary', 'NotPaid', 0),
(390, 1585002387, 'mary', 'NotPaid', 0),
(391, 1585002387, 'mary', 'NotPaid', 0),
(392, 1585002387, 'mary', 'NotPaid', 0),
(393, 1585002387, 'joseph', 'NotPaid', 0),
(394, 1585002387, 'johnson', 'NotPaid', 0),
(395, 1585002387, 'russel', 'NotPaid', 0),
(396, 1585002397, 'Muma', 'NotPaid', 0),
(397, 1585002397, 'Admin', 'NotPaid', 0),
(398, 1585002397, 'Salmarine', 'NotPaid', 0),
(399, 1585002397, 'FEDEX', 'NotPaid', 0),
(400, 1585002397, 'paul', 'NotPaid', 0),
(401, 1585002397, 'mary', 'NotPaid', 0),
(402, 1585002397, 'mary', 'NotPaid', 0),
(403, 1585002397, 'mary', 'NotPaid', 0),
(404, 1585002397, 'mary', 'NotPaid', 0),
(405, 1585002397, 'joseph', 'NotPaid', 0),
(406, 1585002397, 'johnson', 'NotPaid', 0),
(407, 1585002397, 'russel', 'NotPaid', 0),
(408, 1585002486, 'Muma', 'NotPaid', 0),
(409, 1585002486, 'Admin', 'NotPaid', 0),
(410, 1585002486, 'Salmarine', 'NotPaid', 0),
(411, 1585002486, 'FEDEX', 'NotPaid', 0),
(412, 1585002486, 'paul', 'NotPaid', 0),
(413, 1585002486, 'mary', 'NotPaid', 0),
(414, 1585002486, 'mary', 'NotPaid', 0),
(415, 1585002486, 'mary', 'NotPaid', 0),
(416, 1585002486, 'mary', 'NotPaid', 0),
(417, 1585002486, 'joseph', 'NotPaid', 0),
(418, 1585002486, 'johnson', 'NotPaid', 0),
(419, 1585002486, 'russel', 'NotPaid', 0),
(420, 1585002628, 'Muma', 'NotPaid', 0),
(421, 1585002628, 'Admin', 'NotPaid', 0),
(422, 1585002628, 'Salmarine', 'NotPaid', 0),
(423, 1585002628, 'FEDEX', 'NotPaid', 0),
(424, 1585002628, 'paul', 'NotPaid', 0),
(425, 1585002628, 'mary', 'NotPaid', 0),
(426, 1585002628, 'mary', 'NotPaid', 0),
(427, 1585002628, 'mary', 'NotPaid', 0),
(428, 1585002628, 'mary', 'NotPaid', 0),
(429, 1585002628, 'joseph', 'NotPaid', 0),
(430, 1585002628, 'johnson', 'NotPaid', 0),
(431, 1585002628, 'russel', 'NotPaid', 0),
(432, 1585002705, 'Muma', 'PAID', 1500),
(433, 1585002705, 'Admin', 'PAID', 200),
(434, 1585002705, 'Salmarine', 'NotPaid', 0),
(435, 1585002705, 'FEDEX', 'NotPaid', 0),
(436, 1585002705, 'paul', 'NotPaid', 0),
(437, 1585002705, 'mary', 'NotPaid', 0),
(438, 1585002705, 'mary', 'NotPaid', 0),
(439, 1585002705, 'mary', 'PAID', 200),
(440, 1585002705, 'mary', 'NotPaid', 0),
(441, 1585002705, 'joseph', 'NotPaid', 0),
(442, 1585002705, 'johnson', 'NotPaid', 0),
(443, 1585002705, 'russel', 'NotPaid', 0),
(444, 1585084142, 'Muma', 'PAID', 1500),
(445, 1585084142, 'Admin', 'NotPaid', 0),
(446, 1585084142, 'Salmarine', 'NotPaid', 0),
(447, 1585084142, 'FEDEX', 'NotPaid', 0),
(448, 1585084142, 'paul', 'NotPaid', 0),
(449, 1585084142, 'mary', 'NotPaid', 0),
(450, 1585084142, 'mary', 'NotPaid', 0),
(451, 1585084142, 'mary', 'NotPaid', 0),
(452, 1585084142, 'mary', 'NotPaid', 0),
(453, 1585084142, 'joseph', 'NotPaid', 0),
(454, 1585084142, 'johnson', 'NotPaid', 0),
(455, 1585084142, 'russel', 'NotPaid', 0),
(456, 1585948147, 'Muma', 'NotPaid', 0),
(457, 1585948147, 'Admin', 'NotPaid', 0),
(458, 1585948147, 'Salmarine', 'NotPaid', 0),
(459, 1585948147, 'FEDEX', 'NotPaid', 0),
(460, 1585948147, 'paul', 'NotPaid', 0),
(461, 1585948147, 'mary', 'NotPaid', 0),
(462, 1585948147, 'mary', 'NotPaid', 0),
(463, 1585948147, 'mary', 'NotPaid', 0),
(464, 1585948147, 'mary', 'NotPaid', 0),
(465, 1585948147, 'joseph', 'NotPaid', 0),
(466, 1585948147, 'johnson', 'NotPaid', 0),
(467, 1585948147, 'russel', 'NotPaid', 0),
(468, 1585948147, 'mama', 'NotPaid', 0),
(469, 1585948237, 'Muma', 'NotPaid', 0),
(470, 1585948237, 'Admin', 'NotPaid', 0),
(471, 1585948237, 'Salmarine', 'NotPaid', 0),
(472, 1585948237, 'FEDEX', 'NotPaid', 0),
(473, 1585948237, 'paul', 'NotPaid', 0),
(474, 1585948237, 'mary', 'NotPaid', 0),
(475, 1585948237, 'mary', 'NotPaid', 0),
(476, 1585948237, 'mary', 'NotPaid', 0),
(477, 1585948237, 'mary', 'NotPaid', 0),
(478, 1585948237, 'joseph', 'NotPaid', 0),
(479, 1585948237, 'johnson', 'NotPaid', 0),
(480, 1585948237, 'russel', 'NotPaid', 0),
(481, 1585948237, 'mama', 'NotPaid', 0),
(482, 1585948250, 'Muma', 'NotPaid', 0),
(483, 1585948250, 'Admin', 'NotPaid', 0),
(484, 1585948250, 'Salmarine', 'NotPaid', 0),
(485, 1585948250, 'FEDEX', 'NotPaid', 0),
(486, 1585948250, 'paul', 'NotPaid', 0),
(487, 1585948250, 'mary', 'NotPaid', 0),
(488, 1585948250, 'mary', 'NotPaid', 0),
(489, 1585948250, 'mary', 'NotPaid', 0),
(490, 1585948250, 'mary', 'NotPaid', 0),
(491, 1585948250, 'joseph', 'NotPaid', 0),
(492, 1585948250, 'johnson', 'NotPaid', 0),
(493, 1585948250, 'russel', 'NotPaid', 0),
(494, 1585948250, 'mama', 'NotPaid', 0),
(495, 1585948332, 'Muma', 'NotPaid', 0),
(496, 1585948332, 'Admin', 'NotPaid', 0),
(497, 1585948332, 'Salmarine', 'NotPaid', 0),
(498, 1585948332, 'FEDEX', 'NotPaid', 0),
(499, 1585948332, 'paul', 'NotPaid', 0),
(500, 1585948332, 'mary', 'NotPaid', 0),
(501, 1585948332, 'mary', 'NotPaid', 0),
(502, 1585948332, 'mary', 'NotPaid', 0),
(503, 1585948332, 'mary', 'NotPaid', 0),
(504, 1585948332, 'joseph', 'NotPaid', 0),
(505, 1585948332, 'johnson', 'NotPaid', 0),
(506, 1585948332, 'russel', 'NotPaid', 0),
(507, 1585948332, 'mama', 'NotPaid', 0),
(508, 1585951661, 'Muma', 'PAID', 500),
(509, 1585951661, 'Admin', 'NotPaid', 0),
(510, 1585951661, 'Salmarine', 'NotPaid', 0),
(511, 1585951661, 'FEDEX', 'NotPaid', 0),
(512, 1585951661, 'paul', 'NotPaid', 0),
(513, 1585951661, 'mary', 'NotPaid', 0),
(514, 1585951661, 'mary', 'NOTCOMPLETE', 600),
(515, 1585951661, 'mary', 'NotPaid', 0),
(516, 1585951661, 'mary', 'NotPaid', 0),
(517, 1585951661, 'joseph', 'NotPaid', 0),
(518, 1585951661, 'johnson', 'NotPaid', 0),
(519, 1585951661, 'russel', 'NotPaid', 0),
(520, 1585951661, 'mama', 'PAID', 1500),
(521, 1586128204, 'Muma', 'PAID', 700),
(522, 1586128204, 'Admin', 'NOTPAID', 0),
(523, 1586128204, 'Salmarine', 'NOTPAID', 0),
(524, 1586128204, 'FEDEX', 'NOTPAID', 0),
(525, 1586128204, 'paul', 'NOTPAID', 0),
(526, 1586128204, 'mary', 'NOTPAID', 0),
(527, 1586128204, 'mary', 'NOTPAID', 0),
(528, 1586128204, 'mary', 'NOTPAID', 0),
(529, 1586128204, 'mary', 'NOTPAID', 0),
(530, 1586128204, 'joseph', 'NOTPAID', 0),
(531, 1586128204, 'johnson', 'NOTPAID', 0),
(532, 1586128204, 'russel', 'NOTPAID', 0),
(533, 1586128204, 'mama', 'NOTPAID', 0),
(534, 1586129033, 'Muma', 'NOTPAID', 0),
(535, 1586129033, 'Admin', 'NOTPAID', 0),
(536, 1586129033, 'Salmarine', 'NOTPAID', 0),
(537, 1586129033, 'FEDEX', 'NOTPAID', 0),
(538, 1586129033, 'paul', 'NOTPAID', 0),
(539, 1586129033, 'mary', 'NOTPAID', 0),
(540, 1586129033, 'mary', 'NOTPAID', 0),
(541, 1586129033, 'mary', 'NOTPAID', 0),
(542, 1586129033, 'mary', 'NOTPAID', 0),
(543, 1586129033, 'joseph', 'NOTPAID', 0),
(544, 1586129033, 'johnson', 'NOTPAID', 0),
(545, 1586129033, 'russel', 'NOTPAID', 0),
(546, 1586129033, 'mama', 'PAID', 500),
(547, 1586175681, 'Muma', 'PAID', 500),
(548, 1586175681, 'Admin', 'NOTPAID', 0),
(549, 1586175681, 'Salmarine', 'NOTPAID', 0),
(550, 1586175681, 'FEDEX', 'NOTPAID', 0),
(551, 1586175681, 'paul', 'NOTPAID', 0),
(552, 1586175681, 'mary', 'NOTPAID', 0),
(553, 1586175681, 'mary', 'NOTPAID', 0),
(554, 1586175681, 'mary', 'NOTPAID', 0),
(555, 1586175681, 'mary', 'NOTPAID', 0),
(556, 1586175681, 'joseph', 'NOTCOMPLETE', 1500),
(557, 1586175681, 'johnson', 'NOTPAID', 0),
(558, 1586175681, 'russel', 'NOTPAID', 0),
(559, 1586175681, 'mama', 'PAID', 600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waiting_list`
--
ALTER TABLE `waiting_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week`
--
ALTER TABLE `week`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `total`
--
ALTER TABLE `total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `waiting_list`
--
ALTER TABLE `waiting_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `week`
--
ALTER TABLE `week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
