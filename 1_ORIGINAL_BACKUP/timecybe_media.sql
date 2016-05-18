-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2016 at 10:43 PM
-- Server version: 5.6.29
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timecybe_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `page` varchar(50) NOT NULL,
  `heading` text NOT NULL,
  `about` text NOT NULL COMMENT 'About the page content',
  `eligible` text NOT NULL,
  `category` text NOT NULL,
  `benifits` text NOT NULL,
  `services` text NOT NULL,
  `termCondition` text NOT NULL,
  `jury` text NOT NULL,
  `awd_cat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page` (`page`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `page`, `heading`, `about`, `eligible`, `category`, `benifits`, `services`, `termCondition`, `jury`, `awd_cat`) VALUES
(1, 'home', '<li role="presentation"><a href="#aboutPt" aria-controls="home" role="tab" data-toggle="tab"><b>About Time Cybermedia</b></a></li>\n    <li role="presentation"><a href="#whyPt" aria-controls="profile" role="tab" data-toggle="tab"><b>Why Time Cybermedia?</b></a></li>\n    <li role="presentation"><a href="#mission" aria-controls="messages" role="tab" data-toggle="tab"><b>Mission &amp; Vision</b></a></li>\n    <li role="presentation"><a href="#ourValues" aria-controls="settings" role="tab" data-toggle="tab"><b>Our Values</b></a></li>', 'about us for education award', '', '', '0', '', '0', '', 0),
(2, 'business', ' <li role="presentation"><a href="#abtBizAwd" aria-controls="settings" role="tab" data-toggle="tab"><b>About Business &amp; Service Awards</b></a></li>', 'about us for business award', '', '', '0', '', '0', '', 1),
(3, 'education', '<li role="presentation"><a href="#abtEduAwd" aria-controls="settings" role="tab" data-toggle="tab"><b>About Education Awards</b></a></li>', 'about us for educaiton', '', '', '0', '', '0', '', 2),
(4, 'dental', '<li role="presentation"><a href="#abtEduAwd" aria-controls="settings" role="tab" data-toggle="tab"><b>About Education Awards</b></a></li>', 'about us for dental', '', '', '', '', '', '', 4),
(5, 'lifestyle', '<li role="presentation"><a href="#abtEduAwd" aria-controls="settings" role="tab" data-toggle="tab"><b>About Education Awards</b></a></li>', 'about us for lifestyle', '', '', '', '', '', '', 3),
(6, 'healthcare', '<li role="presentation"><a href="#abtEduAwd" aria-controls="settings" role="tab" data-toggle="tab"><b>About Education Awards</b></a></li>', 'about us for healthcare', '', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `agent_info`
--

CREATE TABLE IF NOT EXISTS `agent_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `fname` (`fname`),
  KEY `email_2` (`email`),
  KEY `phone` (`phone`),
  KEY `gemail` (`gmail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `agent_info`
--

INSERT INTO `agent_info` (`id`, `fname`, `lname`, `email`, `phone`, `gmail`, `pass`) VALUES
(1, 'Ashish', 'kumar', 'nominationdesk6@timemedia.in', '011-40553448', 'nominationdesk6@gmail.com', 'ashish>1234'),
(32, 'Pooja', '', 'nominationdesk7@timemedia.in', '011-40553448', 'nominationdesk7@gmail.com', 'pooja>1234'),
(33, 'Archana', '', 'nominationdesk11@timemedia.in', '011-40553448', 'nominationdesk11@gmail.com', 'left'),
(34, 'Nuzhat', 'Bano', 'nominationdesk5@timemedia.in', '011-40553448', 'nominationdesk5@gmail.com', 'nuzhat>1234'),
(35, 'Sarita', '', 'nominationdesk10@timemedia.in', '011-40553448', 'nominationdesk10@gmail.com', 'sarita>1234'),
(36, 'Reha', '', 'nominationdesk4@timemedia.in', '011-40553448', 'nominationdesk4@gmail.com', 'reha>1234'),
(37, 'Anuj', '', 'nominationdesk12@timemedia.in', '011-40553448', 'nominationdesk12@gmail.com', 'left'),
(38, 'Deepak', '', 'nominationdesk8@timemedia.in', '011-40553448', 'nominationdesk8@gmail.com', 'deepak>1234'),
(55, 'Pushkar', '', 'nominationdesk9@timemedia.in', '011-40553448', 'nominationdesk9@gmail.com', 'pushkar>1234'),
(56, 'Sangita', '', 'nominationdesk2@timemedia.in', '011-40553448', 'nominationdesk2@gmail.com', 'sangita>1234'),
(57, 'Nishant', '', 'nominationdesk1@timemedia.in', '011-40553448', 'nominationdesk8@gmail.com', 'nishant>1234'),
(60, 'Mandeep', 'Kaur', 'nomination@timecybermedia.com', '011-40553448', 'nominationdesk3@gmail.com', 'mandeep>1234'),
(61, 'Nikita', '', 'nominationdesk13@timemedia.in', '011-40553448', 'nominationdesk13@gmail.com', 'nikita>1234'),
(62, 'Soloman', '', 'nominationdesk14@timemedia.in', '011-40553448', 'nominaitondesk14@gmail.com', 'left'),
(63, 'Chandan', '', 'nominationdesk15@timemedia.in', '011-40553448', 'nominationdesk15@gmail.com', 'left');

-- --------------------------------------------------------

--
-- Table structure for table `agnt_his`
--

CREATE TABLE IF NOT EXISTS `agnt_his` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agnt_id` int(11) unsigned NOT NULL,
  `email` varchar(70) NOT NULL,
  `award` varchar(100) NOT NULL,
  `time` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agnt_id` (`agnt_id`),
  KEY `award` (`award`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='agent mailing history' AUTO_INCREMENT=380 ;

--
-- Dumping data for table `agnt_his`
--

INSERT INTO `agnt_his` (`id`, `agnt_id`, `email`, `award`, `time`) VALUES
(1, 1, 'asf@1.com', 'National excellence awards', '2015-05-04 12:11:20'),
(2, 1, '22@22.com', 'National excellence awards', '2015-05-05 09:10:29'),
(3, 1, '333@333.com', '', '2015-05-04 07:21:00'),
(4, 1, '444@444.com', '', '2015-04-06 00:20:10'),
(23, 1, 'ashsam786@gmail.com', 'nationalExcellence', '1899-11-30 00:00:00'),
(24, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '0000-00-00 00:00:00'),
(25, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '0000-00-00 00:00:00'),
(26, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '0000-00-00 00:00:00'),
(27, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '0000-00-00 00:00:00'),
(28, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 02:10:06'),
(36, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 02:48:29'),
(37, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 12:20:54'),
(38, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 12:21:23'),
(39, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 12:25:31'),
(40, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 12:26:25'),
(41, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 12:26:42'),
(42, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 12:27:41'),
(51, 1, 'amirprimetime@gmail.com,shoaibprimetime@gmail.com,digithakur8008@gmail', 'nationalExcellence', '2015-05-15 04:05:00'),
(52, 1, 'digithakur8008@gmail.com', 'nationalExcellence', '2015-05-15 04:05:00'),
(53, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 04:05:00'),
(54, 1, 'ashsam786@gmail.com', 'nationalExcellence', '2015-05-15 04:05:00'),
(55, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 04:23:00'),
(56, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 04:37:00'),
(57, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 04:38:pm'),
(58, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 04:47:pm'),
(59, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 04:57:pm'),
(60, 1, 'ashsam786@gmail.com', 'nationalExcellence', '2015-05-15 05:00:pm'),
(61, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 05:48:pm'),
(62, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 07:16:pm'),
(63, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 08:15:pm'),
(64, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-15 08:17:pm'),
(65, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-18 11:22:am'),
(66, 1, 'amirprimetime@gmail.com', 'nationalExcellence', '2015-05-18 11:38:am'),
(67, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:17:pm'),
(68, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:20:pm'),
(69, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:23:pm'),
(70, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:33:pm'),
(71, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:34:pm'),
(72, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:34:pm'),
(73, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:46:pm'),
(74, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:48:pm'),
(75, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:48:pm'),
(76, 1, 'shoaibprimetime@gmail.com,amirprimetime@gmail.com,hanga.amir@gmail.com', 'national', '2015-05-26 04:49:pm'),
(77, 1, 'amirprimetime@gmail.com', 'national', '2015-05-26 04:53:pm'),
(78, 1, 'amirprimetime@gmail.com', 'Lifestyle', '2015-05-26 05:09:pm'),
(79, 1, 'amirprimetime@gmail.com', 'Lifestyle', '2015-05-26 05:10:pm'),
(80, 37, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-05-26 05:38:pm'),
(81, 37, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-05-27 12:42:pm'),
(82, 37, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-05-27 12:44:pm'),
(83, 37, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-05-27 02:22:pm'),
(84, 37, 'primetimelifestyleawards@gmail.com', 'Lifestyle', '2015-05-27 02:23:pm'),
(85, 35, 'nominationdesk4@gmail.com', 'Lifestyle', '2015-05-27 02:27:pm'),
(86, 32, 'nominationdesk1@gmail.com', 'Lifestyle', '2015-05-27 02:27:pm'),
(87, 36, 'nominationdesk5@gmail.com', 'Lifestyle', '2015-05-27 02:32:pm'),
(88, 33, 'nominationdesk2@gmail.com', 'Lifestyle', '2015-05-27 02:39:pm'),
(89, 39, 'nominationdesk8@gmail.com', 'Lifestyle', '2015-05-27 02:40:pm'),
(90, 36, 'amirprimetime@gmail.com', 'Lifestyle', '2015-05-30 10:42:am'),
(91, 36, 'nominationdesk2@gmail.com', 'Lifestyle', '2015-05-30 10:51:am'),
(92, 38, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-06-06 03:18:pm'),
(93, 34, 'nominationdesk3@prime-time.co.in', 'Lifestyle', '2015-06-09 05:10:pm'),
(94, 34, 'nominationdesk3@gmail.com', 'Lifestyle', '2015-06-09 05:11:pm'),
(95, 55, 'arun.prime12@gmail.com', 'Lifestyle', '2015-06-09 05:21:pm'),
(96, 55, 'nominationdesk9@gmail.com', 'Lifestyle', '2015-06-11 04:29:pm'),
(97, 34, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-06-12 09:56:am'),
(98, 34, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-06-12 09:56:am'),
(99, 34, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-06-12 10:34:am'),
(100, 34, 'nominationdesk3@prime-time.co.in', 'Lifestyle', '2015-06-12 10:38:am'),
(101, 34, 'nominationdesk3@gmail.com', 'Lifestyle', '2015-06-12 10:39:am'),
(102, 33, 'nominationdesk2@gmail.com', 'Lifestyle', '2015-06-12 10:41:am'),
(103, 39, 'nominationdesk8@gmail.com', 'Lifestyle', '2015-06-12 10:43:am'),
(104, 35, 'nominationdesk@gmail.com', 'Lifestyle', '2015-06-12 10:44:am'),
(105, 32, 'nominationdesk1@gmail.com', 'Lifestyle', '2015-06-12 10:44:am'),
(106, 35, 'nominationdesk4@gmail.com', 'Lifestyle', '2015-06-12 10:44:am'),
(107, 37, 'nominationdesk6@gmail.com', 'Lifestyle', '2015-06-12 10:46:am'),
(108, 32, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-06-18 11:16:am'),
(109, 32, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-06-18 11:16:am'),
(110, 34, 'nominationdesk3@prime-time.co.in', 'Lifestyle', '2015-06-18 11:19:am'),
(111, 34, 'nominationdesk3@gmail.com', 'Lifestyle', '2015-06-18 11:20:am'),
(112, 34, 'nominationdesk5@gmail.com', 'Lifestyle', '2015-06-18 11:20:am'),
(113, 34, 'nominationdesk2@gmail.com', 'Lifestyle', '2015-06-18 11:20:am'),
(114, 34, 'nominationdesk8@gmail.com', 'Lifestyle', '2015-06-18 11:21:am'),
(115, 34, 'nominationdesk9@gmail.com', 'Lifestyle', '2015-06-18 11:21:am'),
(116, 33, 'nominationdesk2@gmail.com', 'Lifestyle', '2015-06-18 11:23:am'),
(117, 36, 'nominationdesk5@gmail.com', 'Lifestyle', '2015-06-18 11:24:am'),
(118, 39, 'nominationdesk8@gmail.com', 'Lifestyle', '2015-06-18 11:24:am'),
(119, 38, 'nominationdesk7@prime-time.co.in', 'Lifestyle', '2015-06-18 12:20:pm'),
(120, 38, 'nominationdesk7@gmail.com', 'Lifestyle', '2015-06-18 12:42:pm'),
(121, 35, 'nominationdesk4@gmail.com', 'Lifestyle', '2015-06-18 12:48:pm'),
(122, 38, 'nominationdesk7@gmail.com', 'Lifestyle', '2015-06-18 12:53:pm'),
(123, 36, 'nominationdesk5@gmail.com', 'Lifestyle', '2015-06-18 12:54:pm'),
(124, 38, 'nominationdesk7@gmail.com', 'Lifestyle', '2015-06-18 12:54:pm'),
(125, 38, 'nominationdesk7@gmail.com', 'Lifestyle', '2015-06-18 12:59:pm'),
(126, 38, 'nominationdesk7@gmail.com', 'Lifestyle', '2015-06-18 01:00:pm'),
(127, 36, 'nominationdesk5@gmail.com', 'Lifestyle', '2015-06-26 10:44:am'),
(128, 33, 'amirprimetime@gmail.com', 'Lifestyle', '2015-06-27 02:52:pm'),
(129, 36, 'nominationdesk5@gmail.com', 'Lifestyle', '2015-07-21 10:00:am'),
(130, 1, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-07-25 09:44:am'),
(131, 1, 'nominationdesk6@gmail.com', 'Lifestyle', '2015-07-25 10:14:am'),
(132, 1, 'nominationdesk6@gmail.com', 'Lifestyle', '2015-07-25 10:25:am'),
(133, 1, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-07-25 12:32:pm'),
(134, 36, 'nominationdesk4@gmail.com', 'Lifestyle', '2015-07-25 01:05:pm'),
(135, 37, 'nominationdesk12@gmail.com', 'Lifestyle', '2015-07-25 05:17:pm'),
(136, 1, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-08-04 11:28:am'),
(137, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-04 01:08:pm'),
(138, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-04 01:17:pm'),
(139, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-04 02:43:pm'),
(140, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 09:43:am'),
(141, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 09:47:am'),
(142, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 09:51:am'),
(143, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 10:07:am'),
(144, 55, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 12:16:pm'),
(145, 55, 'nominationdesk9@gmail.com', 'Healthcare', '2015-08-05 12:17:pm'),
(146, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 02:11:pm'),
(147, 1, 'harshjha005@gmail.com', 'Healthcare', '2015-08-05 02:12:pm'),
(148, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 03:51:pm'),
(149, 1, 'harshjha005@gmail.com', 'Healthcare', '2015-08-05 03:53:pm'),
(150, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-05 04:05:pm'),
(151, 1, 'harshjha005@gmail.com', 'Healthcare', '2015-08-05 04:11:pm'),
(152, 34, 'nominationdesk5@gmail.com', 'Lifestyle', '2015-08-05 04:35:pm'),
(153, 55, 'nominationdesk9@gmail.com', 'Lifestyle', '2015-08-05 04:37:pm'),
(154, 34, 'nominationdesk5@gmail.com', 'Healthcare', '2015-08-05 04:38:pm'),
(155, 32, 'nominationdesk7@gmail.com', 'Healthcare', '2015-08-05 04:42:pm'),
(156, 56, 'nominationdesk2@gmail.com', 'Healthcare', '2015-08-05 04:43:pm'),
(157, 55, 'nominationdesk9@gmail.com', 'Healthcare', '2015-08-05 04:44:pm'),
(158, 36, 'nominationdesk4@gmail.com', 'Healthcare', '2015-08-05 04:46:pm'),
(159, 38, 'nominationdesk11@gmail.com', 'Healthcare', '2015-08-05 04:46:pm'),
(160, 37, 'nominationdesk12@gmail.com', 'Healthcare', '2015-08-05 04:48:pm'),
(161, 33, 'nominationdesk11@gmail.com', 'Healthcare', '2015-08-05 04:48:pm'),
(162, 55, 'nominationdesk9@gmail.com', 'Healthcare', '2015-08-05 04:52:pm'),
(163, 55, 'nominationdesk9@gmail.com', 'Healthcare', '2015-08-05 04:58:pm'),
(164, 55, 'nominationdesk9@gmail.com', 'Healthcare', '2015-08-05 05:19:pm'),
(165, 35, 'nominationdesk10@gmail.com', 'Healthcare', '2015-08-06 10:25:am'),
(166, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-08 09:34:am'),
(167, 38, 'nominationdesk8@gmail.com', 'Healthcare', '2015-08-12 12:08:pm'),
(168, 38, 'nomination8@gmail.com', 'Healthcare', '2015-08-12 02:39:pm'),
(169, 38, 'nominationdesk8@gmail.com', 'Healthcare', '2015-08-12 02:42:pm'),
(170, 38, 'nominationdesk8@gmail.com', 'Healthcare', '2015-08-12 02:43:pm'),
(171, 38, 'nominationdesk8@gmail.com', 'Healthcare', '2015-08-18 03:50:pm'),
(172, 57, 'nominationdesk1@gmail.com', 'Healthcare', '2015-08-18 04:13:pm'),
(173, 57, 'nominationdest1@gmail.com', 'Healthcare', '2015-08-18 04:32:pm'),
(174, 1, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-08-19 03:42:pm'),
(175, 1, 'hasmj1486@gmail.com', 'Lifestyle', '2015-08-19 03:43:pm'),
(176, 1, 'mandeepptime@gmail.com', 'Healthcare', '2015-08-20 10:54:am'),
(177, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-08-24 02:49:pm'),
(178, 1, 'jiyaprimetime123@gmail.com', 'Healthcare', '2015-08-24 02:49:pm'),
(179, 1, 'crcprimetime@gmail.com', 'Healthcare', '2015-08-24 02:59:pm'),
(180, 60, 'nominationdesk3@gmail.com', 'Healthcare', '2015-09-02 11:33:am'),
(181, 36, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-09-04 10:50:am'),
(182, 36, 'nominationdesk4@gmail.com', 'Healthcare', '2015-09-04 10:52:am'),
(183, 56, 'nominationdesk2@gmail.com', 'Healthcare', '2015-09-09 11:53:am'),
(184, 1, 'nominationdesk6@gmail.com', 'Lifestyle', '2015-09-09 11:58:am'),
(185, 1, 'nominationdesk6@gmail.com', 'Healthcare', '2015-09-09 12:00:pm'),
(186, 37, 'nominationdesk12@gmail.com', 'Healthcare', '2015-09-09 03:25:pm'),
(187, 37, 'nominationdesk12@gmail.com', 'Healthcare', '2015-09-10 12:58:pm'),
(188, 1, 'shoaibprimetime@gmail.com', 'Healthcare', '2015-09-16 05:50:pm'),
(189, 61, 'nominationdesk13@gmail.com', 'Healthcare', '2015-09-16 06:02:pm'),
(190, 38, 'nominationdesk8@gmail.com', 'Healthcare', '2015-09-23 03:49:pm'),
(191, 38, 'nominationdesk8@gmail.com', 'Healthcare', '2015-09-23 03:49:pm'),
(192, 37, 'nominationdesk12@gmail.com', 'Healthcare', '2015-09-24 04:27:pm'),
(193, 35, 'nominationdesk10@gmail.com', 'Healthcare', '2015-09-28 01:29:pm'),
(194, 61, 'nominationdesk13@gmail.com', 'Lifestyle', '2015-09-29 03:36:pm'),
(195, 61, 'nominationdesk13@gmail.com', 'Healthcare', '2015-09-29 03:41:pm'),
(196, 1, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-10-07 12:02:pm'),
(197, 1, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-10-07 12:15:pm'),
(198, 1, 'mandeepptime@gmail.com', 'Lifestyle', '2015-10-07 12:16:pm'),
(199, 60, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-10-07 12:28:pm'),
(200, 60, 'shoaibprimetime@gmail.com', 'Lifestyle', '2015-10-07 12:43:pm'),
(201, 1, 'shoaibprimetime@gmail.com', 'Business', '2015-10-07 01:26:pm'),
(202, 1, 'mandeepptime@gmail.com', 'Business', '2015-10-07 01:27:pm'),
(203, 1, 'shoaibprimetime@gmail.com', 'Business', '2015-10-07 02:46:pm'),
(204, 1, 'shoaibprimetime@gmail.com', 'Business', '2015-10-07 02:47:pm'),
(205, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-07 03:22:pm'),
(206, 60, 'mandeepprimetime@gmail.com', 'Business', '2015-10-07 03:23:pm'),
(207, 60, 'mandeepptime@gmail.com', 'Business', '2015-10-07 03:24:pm'),
(208, 1, 'shoaibprimetime@gmail.com', 'Business', '2015-10-07 03:38:pm'),
(209, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-08 11:24:am'),
(210, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-08 11:25:am'),
(211, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-08 11:26:am'),
(212, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-08 11:34:am'),
(213, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-08 11:41:am'),
(214, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-09 10:33:am'),
(215, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-09 10:36:am'),
(216, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-09 10:38:am'),
(217, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-12 11:32:am'),
(218, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-12 12:55:pm'),
(219, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-14 12:08:pm'),
(220, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-14 12:11:pm'),
(221, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-14 12:14:pm'),
(222, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-14 12:17:pm'),
(223, 60, 'mandeepptime@gmail.com', 'Business', '2015-10-14 12:19:pm'),
(224, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-14 12:21:pm'),
(225, 60, 'mandeepptime@gmail.com', 'Business', '2015-10-14 12:45:pm'),
(226, 36, 'nominationdesk4@gmail.com', 'Business', '2015-10-14 03:01:pm'),
(227, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-14 03:01:pm'),
(228, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-14 03:01:pm'),
(229, 34, 'nominationdesk5@gmail.com', 'Business', '2015-10-14 03:02:pm'),
(230, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-14 03:02:pm'),
(231, 35, 'nominationdesk10@gmail.com', 'Business', '2015-10-14 03:06:pm'),
(232, 1, 'nominationdesk6@gmail.com', 'Business', '2015-10-14 03:09:pm'),
(233, 61, 'nominationdesk13@gmail.com', 'Business', '2015-10-14 03:09:pm'),
(234, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-14 03:12:pm'),
(235, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-14 03:14:pm'),
(236, 38, 'nominationdesk8@gmail.com', 'Business', '2015-10-14 03:22:pm'),
(237, 57, 'nominationdesk1@gmail.com', 'Business', '2015-10-14 03:22:pm'),
(238, 60, 'mandeepptime@gmail.com', 'Business', '2015-10-14 04:28:pm'),
(239, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-15 09:34:am'),
(240, 34, 'nominationdesk5@gmail.com', 'Business', '2015-10-15 09:35:am'),
(241, 60, 'mandeepptime@gmail.com', 'Business', '2015-10-15 09:43:am'),
(242, 55, 'nominationdesk9@gmail.com', 'Business', '2015-10-15 11:31:am'),
(243, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-10-20 12:23:pm'),
(244, 57, 'nominationdesk1@timemedia.in', 'Business', '2015-10-20 12:29:pm'),
(245, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-20 12:29:pm'),
(246, 55, 'nominationdesk9@timemedia.in', 'Business', '2015-10-20 12:29:pm'),
(247, 57, 'nomination1@gmail.com', 'Business', '2015-10-20 12:29:pm'),
(248, 61, 'nominationdesk13@gmail.com', 'Business', '2015-10-20 12:30:pm'),
(249, 57, 'nominationdesk1@gmail.com', 'Business', '2015-10-20 12:30:pm'),
(250, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-20 12:30:pm'),
(251, 38, 'nominationdesk8@gmail.com', 'Business', '2015-10-20 12:32:pm'),
(252, 34, 'nominationdesk5@gmail.com', 'Business', '2015-10-20 12:32:pm'),
(253, 35, 'nominationdesk10@gmail.com', 'Business', '2015-10-20 12:32:pm'),
(254, 55, 'nominationdesk9@timemedia.in', 'Business', '2015-10-20 12:33:pm'),
(255, 38, 'nominationdesk8@gmail.com', 'Business', '2015-10-20 12:33:pm'),
(256, 32, 'nominationdesk7@gmail.com', 'Business', '2015-10-20 12:35:pm'),
(257, 56, 'nominationdesk2@gmail.com', 'Business', '2015-10-27 02:34:pm'),
(258, 56, 'nominationdesk2@gmail.com', 'Business', '2015-10-27 02:35:pm'),
(259, 60, 'nominationdesk3@gmail.com', 'Business', '2015-10-28 11:14:am'),
(260, 36, 'nominationdesk4@gmail.com', 'Business', '2015-11-03 12:21:pm'),
(261, 34, 'nominationdesk5@gmail.com', 'Business', '2015-11-05 09:33:am'),
(262, 60, 'nominationdesk3@gmail.com', 'Business', '2015-11-05 09:33:am'),
(263, 36, 'nominationdesk4@gmail.com', 'Business', '2015-11-05 11:09:am'),
(264, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-11-09 09:46:am'),
(265, 38, 'nominationdesk8@gmail.com', 'Business', '2015-11-18 11:30:am'),
(266, 57, 'nominationdesk1@gmail.com', 'Business', '2015-11-18 11:30:am'),
(267, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-11-18 01:06:pm'),
(268, 36, 'nominationdesk4@gmail.com', 'Business', '2015-11-18 01:08:pm'),
(269, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-11-20 12:38:pm'),
(270, 36, 'nominationdesk4@gmail.com', 'Business', '2015-11-20 12:43:pm'),
(271, 60, 'nominationdesk3@gmail.com', 'Business', '2015-11-20 12:43:pm'),
(272, 61, 'nominationdesk13@gmail.com', 'Business', '2015-11-20 12:43:pm'),
(273, 60, 'nominationdesk3@gmail.com', 'Business', '2015-11-20 12:44:pm'),
(274, 34, 'nominationdesk5@gmail.com', 'Business', '2015-11-20 12:44:pm'),
(275, 60, 'nominationdesk3@gmail.com', 'Business', '2015-11-20 12:45:pm'),
(276, 38, 'nominationdesk8@gmail.com', 'Business', '2015-11-20 12:45:pm'),
(277, 57, 'nominationdesk1@gmail.com', 'Business', '2015-11-20 12:48:pm'),
(278, 38, 'nominationdesk8@gmail.com', 'Business', '2015-11-21 03:27:pm'),
(279, 61, 'nominationdesk13@gmail.com', 'Business', '2015-11-21 03:27:pm'),
(280, 55, 'nominationdesk9@gmail.com', 'Business', '2015-11-21 03:27:pm'),
(281, 60, 'nominationdesk3@gmail.com', 'Business', '2015-11-21 03:30:pm'),
(282, 38, 'nominationdesk8@gmail.com', 'Business', '2015-11-21 03:34:pm'),
(283, 36, 'nominationdesk4@gmail.com', 'Business', '2015-11-21 03:39:pm'),
(284, 34, 'nominationdesk5@gmail.com', 'Business', '2015-11-21 03:39:pm'),
(285, 56, 'nominationdesk2@gmail.com', 'Business', '2015-11-21 03:39:pm'),
(286, 36, 'nominationdesk4@gmail.com', 'Business', '2015-11-21 04:12:pm'),
(287, 55, 'nominationdesk9@gmail.com', 'Business', '2015-11-23 02:27:pm'),
(288, 57, 'nominationdesk1@gmail.com', 'Business', '2015-11-23 02:31:pm'),
(289, 61, 'nominationdesk13@gmail.com', 'Business', '2015-11-23 03:07:pm'),
(290, 38, 'nominationdesk8@gmail.com', 'Business', '2015-11-23 05:05:pm'),
(291, 1, 'nominationdesk6@timemedia.in', 'Business', '2015-11-25 10:30:am'),
(292, 1, 'nominationdesk6@gmail.com', 'Business', '2015-11-25 10:31:am'),
(293, 56, 'nominationdesk2@gmail.com', 'Business', '2015-11-25 02:22:pm'),
(294, 60, 'nominationdesk3@gmail.com', 'Lifestyle', '2015-11-26 04:13:pm'),
(295, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-11-27 11:13:am'),
(296, 36, 'nominationdesk4@gmail.com', 'Business', '2015-11-27 11:14:am'),
(297, 32, 'nominationdesk7@gmail.com', 'Business', '2015-12-01 11:02:am'),
(298, 32, 'nominationdesk7@gmail.com', 'Business', '2015-12-01 11:03:am'),
(299, 32, 'nominationdesk7@gmail.com', 'Business', '2015-12-01 11:04:am'),
(300, 32, 'nominationdesk7@gmail.com', 'Business', '2015-12-01 11:06:am'),
(301, 32, 'nominationdesk7@gmal.com', 'Business', '2015-12-01 11:07:am'),
(302, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-12-01 03:03:pm'),
(303, 60, 'nominationdesk3@gmail.com', 'Business', '2015-12-01 03:49:pm'),
(304, 32, 'nominationdesk7@gmail.com', 'Business', '2015-12-01 03:51:pm'),
(305, 35, 'nominationdesk10@gmail.com', 'Business', '2015-12-01 03:51:pm'),
(306, 38, 'nominationdesk8@gmail.com', 'Business', '2015-12-01 03:51:pm'),
(307, 61, 'nominationdesk13@gmail.com', 'Business', '2015-12-01 03:51:pm'),
(308, 55, 'nominationdesk9@gmail.com', 'Business', '2015-12-01 03:52:pm'),
(309, 56, 'nominationdesk2@gmail.com', 'Business', '2015-12-01 03:52:pm'),
(310, 55, 'nominationdesk9@timemedia.in', 'Business', '2015-12-01 03:52:pm'),
(311, 60, 'nominationdesk3@gmail.com', 'Business', '2015-12-01 03:52:pm'),
(312, 57, 'nominationdesk1@gmail.com', 'Business', '2015-12-01 03:53:pm'),
(313, 56, 'nominationdesk2@gmail.com', 'Lifestyle', '2015-12-01 03:54:pm'),
(314, 38, 'nominationdesk8@gmail.com', 'Business', '2015-12-01 03:54:pm'),
(315, 57, 'nominationdesk1@gmail.com', 'Business', '2015-12-01 03:55:pm'),
(316, 36, 'nominationdesk4@gmail.com', 'Business', '2015-12-01 03:56:pm'),
(317, 56, 'nominationdesk2@gmail.com', 'Business', '2015-12-01 03:56:pm'),
(318, 35, 'nominationdesk10@gmail.com', 'Business', '2015-12-01 03:57:pm'),
(319, 55, 'nominationdesk9@gmail.com', 'Business', '2015-12-01 03:57:pm'),
(320, 55, 'nominationdesk9@gmail.com', 'Business', '2015-12-01 03:58:pm'),
(321, 55, 'nominationdesk9@gmail.com', 'Lifestyle', '2015-12-01 03:59:pm'),
(322, 55, 'nominationdesk9@gmail.com', 'Business', '2015-12-01 04:00:pm'),
(323, 61, 'nominationdesk13@gmail.com', 'Business', '2015-12-01 04:01:pm'),
(324, 33, 'shoaibprimetime@gmail.com', 'Business', '2015-12-05 10:19:am'),
(325, 33, 'nominationdesk11@gmail.com', 'Business', '2015-12-05 10:35:am'),
(326, 61, 'nominationdesk13@gmail.com', 'Business', '2015-12-05 11:01:am'),
(327, 60, 'ajayprimetime@gmail.com', 'Business', '2015-12-05 11:11:am'),
(328, 36, 'nominationdesk4@gmail.com', 'Business', '2015-12-10 12:33:pm'),
(329, 62, 'nominationdesk14@gmail.com', 'Business', '2015-12-14 12:46:pm'),
(330, 37, 'nominationdesk12@gmail.com', 'Business', '2015-12-14 12:50:pm'),
(331, 33, 'nominationdesk11@gmail.com', 'Business', '2015-12-14 12:52:pm'),
(332, 33, 'nominationdesk11@gmail.com', 'Business', '2015-12-14 12:55:pm'),
(333, 63, 'nominationdesk15@gmail.com', 'Business', '2015-12-14 12:55:pm'),
(334, 60, 'shoaibprimetime@gmail.com', 'Education', '2015-12-14 03:35:pm'),
(335, 60, 'shoaibprimetime@gmail.com', 'Education', '2015-12-14 03:46:pm'),
(336, 61, 'shoaibprimetime@gmail.com', 'Business', '2015-12-14 04:03:pm'),
(337, 60, 'shoaibprimetime@gmail.com', 'Education', '2015-12-14 04:08:pm'),
(338, 60, 'shoaibprimetime@gmail.com', 'Education', '2015-12-14 04:30:pm'),
(339, 60, 'shoaibprimetime@gmail.com', 'Business', '2015-12-15 10:03:am'),
(340, 60, 'shoaibprimetime@gmail.com', 'Education', '2015-12-15 10:04:am'),
(341, 60, 'shoaibprimetime@gmail.com', 'Education', '2015-12-15 10:04:am'),
(342, 60, 'shoaibprimetime@gmail.com', 'Education', '2016-01-04 09:32:am'),
(343, 60, 'shoaibprimetime@gmail.com', 'Education', '2016-01-04 10:36:am'),
(344, 60, 'harshjha005@gmail.com ', 'Education', '2016-01-04 10:38:am'),
(345, 60, 'shoaibprimetime@gmail.com', 'Education', '2016-01-04 03:26:pm'),
(346, 60, 'nominationdesk3@gmail.com', 'Education', '2016-01-05 09:38:am'),
(347, 61, 'nominationdesk13@gmail.com', 'Education', '2016-01-05 09:39:am'),
(348, 34, 'nominationdesk5@gmail.com', 'Education', '2016-01-05 09:42:am'),
(349, 57, 'nominationdesk1@gmail.com', 'Education', '2016-01-05 09:43:am'),
(350, 38, 'nominationdesk8@gmail.com', 'Education', '2016-01-05 09:45:am'),
(351, 35, 'nominationdesk10@gmail.com', 'Education', '2016-01-05 09:47:am'),
(352, 60, 'shoaibprimetime@gmail.com', 'Education', '2016-01-05 09:53:am'),
(353, 57, 'nominationdesk1@gmail.com', 'Education', '2016-01-05 09:56:am'),
(354, 34, 'nominationdesk5@gmail.com', 'Education', '2016-01-05 09:57:am'),
(355, 32, 'nomunationdesk7@gmail.com', 'Education', '2016-01-05 10:00:am'),
(356, 32, 'nominationdesk7@gmail.com', 'Education', '2016-01-05 10:01:am'),
(357, 55, 'nominationdesk9@gmail.com', 'Education', '2016-01-05 10:07:am'),
(358, 35, 'nominationdesk10@gmail.com', 'Education', '2016-01-05 10:07:am'),
(359, 60, 'nominationdesk3@gmail.com', 'Education', '2016-01-05 10:12:am'),
(360, 38, 'nominationdesk8@gmail.com', 'Education', '2016-01-05 10:14:am'),
(361, 38, 'nominationdesk8@gmail.com', 'Education', '2016-01-05 10:19:am'),
(362, 60, 'shoaibprimetime@gmail.com', 'Education', '2016-01-08 10:44:am'),
(363, 60, 'shoaibprimetime@gmail.com', 'Education', '2016-01-08 10:45:am'),
(364, 55, 'nominationdesk9@gmail.com', 'Education', '2016-01-08 10:45:am'),
(365, 35, 'nominationdesk10@gmail.com', 'Education', '2016-01-08 10:47:am'),
(366, 32, 'nominationdesk7@gmail.com', 'Education', '2016-01-08 10:47:am'),
(367, 61, 'nominationdesk13@gmail.com', 'Business', '2016-01-08 10:48:am'),
(368, 34, 'nominationdesk5@gmail.com', 'Education', '2016-01-08 10:48:am'),
(369, 60, 'nominationdesk3@gmail.com', 'Education', '2016-01-08 10:48:am'),
(370, 61, 'nominationdesk13@gmail.com', 'Education', '2016-01-08 10:50:am'),
(371, 57, 'nominationdesk1@gmail.com', 'Education', '2016-01-08 10:54:am'),
(372, 38, 'nominationdesk8@gmail.com', 'Education', '2016-01-08 10:55:am'),
(373, 1, 'nominationdesk6@gmail.com', 'Education', '2016-01-08 10:58:am'),
(374, 56, 'nominationdesk2@gmail.com', 'Education', '2016-01-11 10:57:am'),
(375, 56, 'manojgoel@kiet.edu,manojgoel@kiet.edu ', 'Education', '2016-01-11 12:26:pm'),
(376, 56, 'director_sdec@sunderdeep.ac.in', 'Education', '2016-01-11 01:01:pm'),
(377, 56, 'kec@krishnacollege.ac.in', 'Education', '2016-01-11 01:20:pm'),
(378, 55, 'nominationdesk9@gmail.com', 'Education', '2016-01-20 12:30:pm'),
(379, 60, 'shoaibprimetime@gmail.com', 'Business', '2016-05-06 01:13:pm');

-- --------------------------------------------------------

--
-- Table structure for table `awd_catgry`
--

CREATE TABLE IF NOT EXISTS `awd_catgry` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(100) NOT NULL,
  `fb_page` varchar(255) NOT NULL COMMENT 'facebook page id',
  `logo` varchar(50) NOT NULL COMMENT 'award logo image',
  `head_vid` varchar(100) NOT NULL COMMENT 'link to headert video',
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_title` (`cat_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `awd_catgry`
--

INSERT INTO `awd_catgry` (`cat_id`, `cat_title`, `fb_page`, `logo`, `head_vid`, `priority`) VALUES
(1, 'business', '385067734987496', 'business.jpg', 'business.mp4', 2),
(2, 'education', '385067734987496', 'education.jpg', 'education.mp4', 1),
(3, 'lifestyle', '385067734987496', 'education.png', '', 5),
(4, 'dental', '385067734987496', 'education.png', '', 4),
(5, 'healthcare', '456226484534157', 'education.png', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `awd_list`
--

CREATE TABLE IF NOT EXISTS `awd_list` (
  `awd_id` int(11) NOT NULL AUTO_INCREMENT,
  `awd_title` varchar(255) NOT NULL,
  `awd_category` int(11) NOT NULL,
  `awd_date` datetime NOT NULL,
  `awdf_venu` varchar(255) NOT NULL COMMENT 'hotel name and address',
  `awd_code` varchar(30) NOT NULL,
  PRIMARY KEY (`awd_id`),
  KEY `awd_title` (`awd_title`),
  KEY `awd_category` (`awd_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `awd_list`
--

INSERT INTO `awd_list` (`awd_id`, `awd_title`, `awd_category`, `awd_date`, `awdf_venu`, `awd_code`) VALUES
(1, 'Global Healthcare Excellence Awards, 2016', 1, '2016-06-08 00:00:00', 'New Delhi', 'healthcare');

-- --------------------------------------------------------

--
-- Table structure for table `clnt_feedback`
--

CREATE TABLE IF NOT EXISTS `clnt_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clt_nme` varchar(100) NOT NULL,
  `awd_nme` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL,
  `feedback` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `awd_nme` (`awd_nme`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `clnt_feedback`
--

INSERT INTO `clnt_feedback` (`id`, `clt_nme`, `awd_nme`, `img`, `feedback`, `status`) VALUES
(1, 'Vidyalankar School Of Information Technology', 'Global Education Excellence Awards 2015', '412345502259719', '', 1),
(2, 'Wonder Kidz (The Concept School)', 'Global Education Excellence Awards 2015', '412348452259424', '\n', 1),
(3, 'Tulsi Ram Abhilashi Memorial Institute of Engineering & Technolog', 'Global Education Excellence Awards 2015', '412340918926844', '', 1),
(4, 'Ryan International Group of Institutions', 'Global Education Excellence Awards 2015', '412337402260529', '', 1),
(5, 'National IAS Academy', 'Global Education Excellence Awards 2015', '412331532261116', '', 1),
(6, 'Red Rose School Lambakheda', 'Global Education Excellence Awards 2015', '412337265593876', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
  `pge_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `pge_nme` varchar(50) NOT NULL,
  `pge_title` text NOT NULL,
  `pge_metatitle` text NOT NULL,
  `pge_keywords` text NOT NULL,
  `pge_desc` text NOT NULL,
  PRIMARY KEY (`pge_id`),
  UNIQUE KEY `pge_nme` (`pge_nme`),
  KEY `pge_nme_2` (`pge_nme`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`pge_id`, `pge_nme`, `pge_title`, `pge_metatitle`, `pge_keywords`, `pge_desc`) VALUES
(1, 'home', 'Time Cybermedia Pvt Ltd', 'Prime time research is a leading provider of retail market performance ... of robust research design for retail measurement and extensive domain knowledge. The firm is privately held, with headquarters in Delhi, India and field offices across 20 towns.', 'market research Comapny in india\nmarket research. delhi market research , research media, market research media\nmedia organisation market reserach organisation', 'Prime time research media is a leading market research and brand management company in india'),
(2, 'aboutus', 'Time Cybermedia Pvt Ltd', 'Prime time research is a leading provider of retail market performance ... of robust research design for retail measurement and extensive domain knowledge. The firm is privately held, with headquarters in Delhi, India and field offices across 20 towns.', 'best, leading,delhi ,india , organisation,business promotion,delhi,india,market research,media,public relation,best,leading  top 10 marketing research companies in India; these are the best companies offering market insights and analysis services', 'India''s best market research and business services providers like media promotion,seo,advertisement,market research\n'),
(3, 'services', 'Services provided by Time Cybermedia Pvt Ltd', 'Prime time research media provides best business promotion and branding management compapny In delhi\n Prime time research is a leading provider of retail market performance ... of robust research design for retail measurement and extensive domain knowledge. The firm is privately held, with headquarters in Delhi, India and field offices across 20 towns.', 'Market Research,Ratings & Accreditations,Digital Marketing Services,Brand & Reputation Management,Business Consultancy Services,Public Relation Management', 'Prime Time Research Media is a world leader in market research, global market information, media management,business surveys and business analysis. Prime Time Research Media provides market research insight across all industry and business sectors'),
(5, 'media', 'Prime Time Research Media local and national media coverage', 'leading market research company In india \nleading market research compnay in delhi\n This is a list of marketing research firms. In the case of research groups\nmarket research organisation                 ', 'times of india,tribune,the hindu,ndtv,bbc,aljazeera,cnn ibn,pratham parvaktha,greater kashmir,dainik bhaskar, dainik jagran,pratham parivaktha', 'Prime Time awards have been covered by esteemed media houses such as The Times of India, Hindustan Times, The Hindu, The Indian Express, The Tribune, The Statesmen, Punjab Kesari, Nav Bharat Times, Hindustan, Lok Mat,Amar Ujala, AajSamaj, Rahat Times, DainikJagaran, DainikBhaskar, PrabhatKhabar, DainikNavajyoti, DainikJagruk Times, Daily Post, Daily News, MahaMedha, Veer Arjun, Nav Bihar, Andhra Jyothi, Samyuktha Karnataka, Veer Pratap, Mumbai Saamna, Navshakti, Suvarna Times, Punyanagri, Sanmarg and many other regional newspapers. Our awards have also been covered by revered magazines like The Pharma Times, Business & Management Chronicle, PrathamPravakta etc.along with over 1,00,000 online press releases and other websites.'),
(6, 'contact', 'contact us | prime time research media pvt ltd', 'contact indias leading and best market research company Prime time research is a leading provider of retail market performance ... of robust research design for retail measurement and extensive domain knowledge. The firm is privately held, with headquarters in Delhi, India and field offices across 20 towns. This is a list of marketing research firms. In the case of research groups or conglomerates the location of the headquarters of the parent entity is given', 'best, leading,delhi ,india , organisation, brand management, market survey,market research,seo,awards,education,business,dental,healthcare  top 10 marketing research companies in India; these are the best companies offering market insights and analysis services', 'Contact us for wide range of business solutions like brand managemaent,awards,market survey,gis,surveys'),
(7, 'album', 'Prime Time award winners Photos', 'top market research and brand management company in india top market research and brand management company in india top market research and brand management company in india', 'award ,photos,bnusiness,dental,lifestyle,hotel radisson blue,holyday inn,the park,prime time images,global education  excellence awards,global business & service excellence awards,National dental Excellence Awards,Global Lifestyle awards,', 'album for brand management and business solution and winner'),
(8, 'agent', 'agent of prime time research media private limited ', 'market research organisation in delhi and india prime time research a leading marketing research company focused to deliver the insight of market research services – New Delhi', 'best, leading,delhi ,india , organisation, prime time agents,\nmarket research \nmarket research organisation, market research company in delhi best market research comapny in india media research organisation the management research organisation\n', 'prime time research media agents '),
(9, 'career', 'career oppurtunities at prime time research media and brand management company ', 'Career oppurtunities in maret reprime time research a leading marketing research company focused to deliver the insight of market research services – New Delhi search and brand management company', 'best, leading,delhi ,india , organisation, career,marketing,brand management,markewt research jobs,customer care jobs in delhi,fresher jobs', 'Carrer at Prime Time Research Media Pvt. Ltd. - Prime Time Research Media - Prime Time Research excellence - service excellence award - education excellence award - market research company - market research company in Delhi - market research company in India - market research company - asia - Time Research'),
(10, 'nomination', 'nomination form prime time research media ', 'Best Market Research Media Comapny In India Prime time research is a leading provider of retail market performance ... of robust research design for retail measurement and extensive domain knowledge. The firm is privately held, with headquarters in Delhi, India and field offices across 20 towns.', 'Top Market research and brand Management In India best, leading,delhi ,india , organisation,', 'nominate for different Categories '),
(11, 'photos', 'Prime time client photos', 'prime time awards and market research companies in india This is a list of marketing research firms. In the case of research groups or conglomerates the location of the headquarters of the parent entity is given', 'awards,photos,clients,chief guest,education,business,heaalthcaree,excellence,media management,market research', 'market reseach prime time photos of winner'),
(12, 'privacy', 'privacy policy of  prime time researhc media private limited', 'best leading market research companies in delhi and india This is a list of marketing research firms. In the case of research groups or conglomerates the location of the headquarters of the parent entity is given', 'privacy policy of prime time research media pvt ltd  top 10 marketing research companies in India; these are the best companies offering market insights and analysis services  top 10 marketing research companies in India; these are the best companies offering market insights and analysis services', 'Privacy Page for best market researhc comapny in delhi and india'),
(13, 'sponsorship', 'sponsorship for prime time research media private limited', 'best market research company in india prime time research a leading marketing research company focused to deliver the insight of market research services – New Delhi', 'best, leading,delhi ,india , organisation, sponsership for market research media comapny and form  top 10 marketing research companies in India; these are the best companies offering market insights and analysis services market research firm in delhi research orgnationsation. firm for research your carrier and verifyt the market stratigity\n\n\n', 'prime time top sponsorhsip comapny in india'),
(14, 'verify', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cur_opng`
--

CREATE TABLE IF NOT EXISTS `cur_opng` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) NOT NULL,
  `job_req` text NOT NULL COMMENT 'requirements for this job',
  `job_desc` text NOT NULL,
  `job_sal` varchar(20) NOT NULL,
  `job_pstd_dte` date NOT NULL,
  `job_status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cur_opng`
--

INSERT INTO `cur_opng` (`job_id`, `job_title`, `job_req`, `job_desc`, `job_sal`, `job_pstd_dte`, `job_status`) VALUES
(1, 'Data Entry Operator', 'Good typing speed,communication skills,basic computer knowledge', 'Require data entry operators for day shift', '8000 - 15000', '2015-05-06', '1'),
(2, 'Tellecaller', 'Good communication skills,fresher,experienced any graduate or 12th pass. Candidate with experience in customer service will be gfiven preference ', 'We require fresher, experenced, male ,female telecallers. Any graduate or 12th pass with good communication skills', '5000 - 15000', '2015-05-03', '1');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `prt_name` varchar(50) NOT NULL,
  `prt_logo` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `prt_name`, `prt_logo`, `status`) VALUES
(1, 'PHY Market Research Pvt. Ltd.', 'phy.png', 1),
(2, 'ewebhub.com', 'ewebhub.png', 1),
(3, 'businessfunda.in', 'businessfunda.png', 1),
(4, 'indiatopdoctor.com', 'topdoctor.png', 1),
(5, 'Business &amp; Managaement', 'businessmgmt.png', 1),
(6, 'pratham parvaktha', 'pratham.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patron_lst`
--

CREATE TABLE IF NOT EXISTS `patron_lst` (
  `pat_id` int(11) NOT NULL AUTO_INCREMENT,
  `pat_name` varchar(50) NOT NULL,
  `pat_desig` varchar(100) NOT NULL,
  `awd_name` varchar(100) NOT NULL COMMENT 'links to particular award function the chief guest attended',
  `awd_cat` int(11) NOT NULL,
  `pat_img` varchar(100) NOT NULL,
  `pat_desc` text NOT NULL,
  `priority` int(4) NOT NULL DEFAULT '999',
  PRIMARY KEY (`pat_id`),
  KEY `pat_name` (`pat_name`,`awd_cat`),
  KEY `awd_cat` (`awd_cat`),
  KEY `awd_name` (`awd_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `patron_lst`
--

INSERT INTO `patron_lst` (`pat_id`, `pat_name`, `pat_desig`, `awd_name`, `awd_cat`, `pat_img`, `pat_desc`, `priority`) VALUES
(1, 'Dr. Najma A. Heptulla', 'Hon’ble Minister of Minority Affairs, Government of India', 'geea2014', 2, 'DrNajmaAHeptulla.jpg', '', 1),
(3, 'Shri. Vasant Kumar', 'Advisor MSME', 'gbsea2014', 1, 'vasantkumar.png', '', 7),
(4, 'Shri Vijay Satti', '', 'gbsea2014', 1, 'vijaysatti.png', '', 8),
(7, 'Prof. D. K. Vaid', 'Professor, Dean(C) and Head NCERT', 'geea2014', 2, 'DKVaid.jpg', '', 9),
(8, 'Shri Anand Kumar', 'Founder and Director, Super30', 'geea2014', 2, 'AnandKumar_Super30.jpg', '', 5),
(10, 'Dr. Bhalchandra Mungekar', 'Hon’ble Member of Parliament, Rajya Sabha', 'geea2014', 2, 'drBalchandraMungekar.jpg', '', 10),
(27, 'Dr. Bhalchandra Mungekar', 'Hon’ble Member of Parliament, Rajya Sabha', 'healthcare', 5, 'drBalchandraMungekar.jpg', '', 10),
(28, 'Dr. Girdhar J. Gyani', 'Director General, Association of Healthcare Providers (India)', 'healthcare', 5, 'girdharjgyani.jpg', '', 11),
(29, 'Dr. Ajay Kumar', 'Council Member, World Medical Association', 'healthcare', 5, 'ajaykumar.jpg', '', 12),
(31, 'Dr. Rakesh Gupta', 'Hony. Joint Secretary, Indian Medical Association', 'healthcare', 5, 'rakeshkumar.jpg', '', 13),
(37, 'Dr. Girdhar J. Gyani', 'Director General, Association of Healthcare Providers (India) ', 'ghea2014', 5, 'drgirdhargyani.jpg', '', 14),
(38, 'Ms. Arti Mehra ', 'Former Mayor of Municipal Corporation of Delhi', 'ghea2014', 5, 'msartimehra.jpg', '', 15),
(39, 'Dr. Anil Kohli ', 'Senior Consultant Endodontist & Implantologist', 'ghea2014', 5, 'dranilkohli.jpg', '', 16),
(40, 'Dr. Akhil K. Sangal ', 'Chief Executive Officer and Ex-officio         Director Indian Confederation for Healthcare Accredit', 'ghea2014', 5, 'drakhilksangal.jpg', '', 17),
(41, 'Dr. K.K Aggarwal ', 'Trustee and President of Heart Care Foundation of India', 'ghea2014', 5, 'drkkaggarwal.jpg', '', 18),
(42, 'Mr. S.K Naik ', 'Secretary,Department of HealthMinistry of Health Government of India', 'ghea2014', 5, 'mrsknaik.jpg', '', 19),
(43, 'Dr. O.P. Kharbanda ', 'Head, Center for Dental Education and Research, AIIMS ', 'ndea2014', 4, 'drOpKharbanda.jpg', '', 20),
(44, 'Dr. R.K. Bali ', 'Padma Shri Winner & Former President, Dental Council of India', 'ndea2014', 4, 'drRkBali.jpg', '', 21),
(45, 'Dr. Anil Jain ', 'National Secretary, BJP ', 'ndea2014', 4, 'DrAnilJain.jpg', '', 22),
(46, 'Smt. Sudha Yadav ', 'Former Member of Parliament ', 'gla2014', 3, 'SmtSudhaYadav.jpg', '', 23),
(48, 'Shri Anil K. Shastri ', 'Former Minister of Finance, Government of India ', 'gla2014', 3, 'ShriAnilKShastri.jpg', '', 24),
(49, 'Justice J.D. Kapoor ', 'Hon’ble (Retd.) Justice, High Court of Delhi ', 'gbsea2013', 1, 'JusticeJDKapoor.jpg', '', 5),
(50, 'Shri Amar Singh ', 'Former Member of Parliament', 'gbsea2013', 1, 'amarsingh.jpg', '', 2),
(51, 'Shri Kirti Jha Azad ', 'Hon’ble Member of Parliament', 'gbsea2013', 1, 'kirtiazad.jpg', '', 3),
(52, 'Shri Sukhadeo Thorat ', 'Chairman  ICSSR, Ex-Chairman – UGC ', 'geea2013', 2, 'sukhadeothorat.jpg', '', 4),
(53, 'Smt. Chandresh Kumari Katoch ', 'Hon’ble Union Minister of Culture, Government of India ', 'geea2013', 2, 'chandreshkumarikatoch.jpg', '', 25),
(54, 'Dr. Raj Aggarwal   ', 'Director of AIMA-CME', 'asdf', 2, 'drrajaggarwal.jpg', '', 26),
(56, 'Shri Anand Kumar ', 'Founder & Director, Super 30 ', 'asdf', 2, 'ananadkumar.jpg', '', 6),
(57, 'Dr. Abhishek Singhvi ', 'MP, Eminient Jurist, National Spokesperson, INC  Former Additional Solicitor General of India', 'gla2015', 3, 'absingvi.jpg', '', 999),
(59, 'Shri. Amar Singh', 'Former Member of Parliament', 'gla2015', 3, 'amarsingh.jpg', '', 999);

-- --------------------------------------------------------

--
-- Table structure for table `print_media`
--

CREATE TABLE IF NOT EXISTS `print_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `award_cat` varchar(100) NOT NULL,
  `mimage` varchar(500) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `print_media`
--

INSERT INTO `print_media` (`id`, `award_cat`, `mimage`, `category`) VALUES
(1, 'Dr B.R Ambedkar Seva Ratan Awards', '1.JPG,2.jpg,3.bmp', 'business'),
(2, 'Global Healthcare Excellence Awards 2013', '1.jpg,2.png,3.jpg,4.jpg,5.PNG,6.JPG,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.JPG,18.JPG,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,', 'healthcare'),
(3, 'Global Education Excellence Awards 2013', '29.JPG,30.jpeg,30.bmp,31.jpeg,35.bmp,38.PNG,44.bmp,46.bmp,53.PNG,69.jpg,75.JPG,77.jpg,78.jpg,79.jpg,80.jpg', 'education'),
(4, 'Global Education Excellence Awards 2015', '1.png', 'education'),
(5, 'Global Business Service Excellence Awards 2013', '1.JPG,2.jpeg,3.bmp,4.jpg,5.JPG,6.jpg,7.PNG,8.jpg,9.jpg', 'business'),
(6, 'Global Healthcare Excellence Awards 2014', '1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.JPG,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg', 'healthcare'),
(7, 'Global Education Excellence Awards 2014', '30.bmp', 'education'),
(8, 'National Dental Excellence Awards 2014', '1.png,3.png,19.png,4.png,20.PNG,9.JPG,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg,30.jpg,31.jpg,32.jpg,33.jpg,34.jpg,35.jpg,36.jpg', 'dental'),
(9, 'Global Lifestyle Awards 2014', '1.jpg,2.jpg,3.jpg,4.jpg,5.JPG,6.jpg', 'lifestyle'),
(10, 'National Dental Excellence Awards 2015', '1.png', 'dental'),
(11, 'Global Healthcare Excellence Awards, 2015', 'https://www.youtube.com/watch?v=jwndMAOKjxU', 'elecmedia'),
(12, 'Global Healthcare Excellence Awards, 2015', 'https://www.youtube.com/watch?v=WUGZcYaqhWU ', 'elecmedia');

-- --------------------------------------------------------

--
-- Table structure for table `ptrm_services`
--

CREATE TABLE IF NOT EXISTS `ptrm_services` (
  `ser_id` int(6) NOT NULL AUTO_INCREMENT,
  `ser_head` varchar(50) NOT NULL,
  `ser_img` varchar(100) NOT NULL,
  `ser_cntnt` text NOT NULL COMMENT 'content body including all html and content',
  PRIMARY KEY (`ser_id`),
  KEY `ser_head` (`ser_head`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='our services' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ptrm_services`
--

INSERT INTO `ptrm_services` (`ser_id`, `ser_head`, `ser_img`, `ser_cntnt`) VALUES
(1, 'Market Research', 'marketResearch.jpg', '			<div class="row padAndJustfyTxt">\n				<div class="heading"><h1 class="text-center">Market Research</h1></div>\n			</div>			\n			<div class="row padAndJustfyTxt">\n			<div class="serviceBody">\n			<p>\n				Market research is "the function that links the consumers, customers, and public to the marketer through information — information used to identify and define marketing opportunities and problems; generate, refine, and evaluate marketing actions; monitor marketing performance; and improve understanding of marketing as a process. Prime Time Group is a full service Marketing Research and Analysis with extensive experience in providing all types of research. We conduct in–depth business research studies of the value chain to understand the market characteristics (supply and demand, size and growth of the business, industry trends, technology assessment, competitor positioning, consumer preferences, regulatory/legal requirements, etc.). We offer our fieldwork and market research services and advice to make recommendations on how best to meet your research needs using the most appropriate technique and methodology. Our service is of integrated nature which is tailored to meet the specific objectives of our clients.</p>\n				<div class="col-md-6">		\n					<ul class="list-group">\n						<li class="list-group-item"><strong>Services</strong></li>\n						<li class="list-group-item">Quantitative Research</li>\n						<li class="list-group-item">Qualitative Research</li>\n						<li class="list-group-item">Mystery Shopping</li>\n						<li class="list-group-item">Statistical Analysis</li>\n						<li class="list-group-item">Data Analysis &amp; Processing</li>\n						<li class="list-group-item">Brand Research</li>\n						<li class="list-group-item">Survey Analysis</li>\n						<li class="list-group-item">Online Research</li>\n						<li class="list-group-item">Multivariate &amp; Bivariate Analysis</li>\n						<li class="list-group-item">Business Market Research</li>\n						<li class="list-group-item">International Market Research</li>\n						<li class="list-group-item">Market Research Surveys</li>\n						<li class="list-group-item">Primary Market Research</li>\n						<li class="list-group-item">Research Technique &amp; Analysis</li>\n						<li class="list-group-item">Data Analysis and Processing Services</li>\n					</ul>			\n				</div>	\n				<div class="col-md-6">		\n					<ul class="list-group">\n						<li class="list-group-item"><strong>Sectors</strong></li>\n						<li class="list-group-item">FMCG</li>\n						<li class="list-group-item">Education</li>\n						<li class="list-group-item">Insurance</li>\n						<li class="list-group-item">Travel &amp; Tourism</li>\n						<li class="list-group-item">Banking &amp; Finance</li>\n						<li class="list-group-item">Employment &amp; HR</li>\n						<li class="list-group-item">Security Markets</li>\n						<li class="list-group-item">Fashion &amp; Apparel</li>\n						<li class="list-group-item">Energy &amp; Power</li>\n						<li class="list-group-item">Infrastructure</li>\n						<li class="list-group-item">Consumer Durables</li>\n						<li class="list-group-item">Retail &amp; Wholesale</li>\n						<li class="list-group-item">Agriculture &amp; Farming</li>\n						<li class="list-group-item">Information Technology &amp; Telecom</li>\n						<li class="list-group-item">Healthcare &amp; Pharmaceuticals</li>\n					</ul>			\n				</div>				\n			</div>\n			</div>'),
(2, 'Ratings & Accreditations', 'ratingandacc.jpg', '			<div class="row padAndJustfyTxt">\n				<div class="heading"><h1 class="text-center">Ratings &amp; Accreditations</h1></div>\n			</div>			\n			<div class="row padAndJustfyTxt">\n			<div class="serviceBody">\n			<p>Prime Time is devoted to quality advancement in the healthcare, education, business, and service sector by fostering global competencies and ushering in a new revolution in the areas of Accreditation, Ratings, Ranking, Research and Advisory services. We are a credible and impartial source of research and analysis by being committed to the key values of rigorous integrity, undeniable value and accessible presentation.Accreditation is a voluntary process that includes an external review of to provide quality. It is a type of quality assurance process/ hall-mark under which services and operations of a particular brand, institution or program are evaluated and assessed against internationally recognized standards and operate to the highest levels of quality and service. Accredited status is granted only if the prescribed standards are met. Accreditation is the certification of standards while rating is like the mark-sheet, which includes performance on selected criteria. Rating is therefore an important first step and hence a precursor towards Accreditation.</p>\n			<p>The accreditation process reduces the risk to you and your business partners and gives you complete confidence that the products and services have been independently evaluated for their competence and performance capability.</p>\n			</div>\n			</div>'),
(3, 'Digital Marketing Services', 'digitalmarketing.jpg', '			<div class="row padAndJustfyTxt">\n				<div class="heading"><h1 class="text-center">Digital Marketing Services</h1></div>\n			</div>			\n			<div class="row padAndJustfyTxt">\n			<div class="serviceBody">\n			<p>Today internet is not restricted only for sending emails or chatting. With the advent of new-age technologies and the ever-increasing dependence on internet, the importance of digital marketing and online marketing cannot be negated. If you are looking to get an unmistakable, wide and professional online presence — you are at the right place. Our team will help you build a friendly online identity. Depending upon your need and requirements we will develop a solution-oriented digital marketing strategy for your business that will enable you reach the targeted audience quickly.Our Digital Marketing Services include but are not limited to.</p>\n				<div class="col-md-4">		\n					<ul class="list-group">\n						<li class="list-group-item"><strong>Inbound Marketing</strong></li>\n						<li class="list-group-item">Marketing Automation</li>\n						<li class="list-group-item">Content Marketing</li>\n						<li class="list-group-item">User experience &amp; lead generation</li>\n						<li class="list-group-item">Search Engine Marketing</li>\n						<li class="list-group-item">Phone, E-mail &amp; SMS Marketing</li>\n						<li class="list-group-item">Pay-per Click Marketing</li>\n						<li class="list-group-item">Internet Marketing &amp; Research</li>\n					</ul>			\n				</div>	\n				<div class="col-md-4">		\n					<ul class="list-group">\n						<li class="list-group-item"><strong>Web Development</strong></li>\n						<li class="list-group-item">Content Creation</li>\n						<li class="list-group-item">Website Designing</li>\n						<li class="list-group-item">Website  Maintenance</li>\n						<li class="list-group-item">Search Engine Optimization</li>\n						<li class="list-group-item">E-Commerce Development</li>\n						<li class="list-group-item">Web Application Development</li>\n						<li class="list-group-item">Mobile Application Development</li>\n					</ul>			\n				</div>\n				<div class="col-md-4">		\n					<ul class="list-group">\n						<li class="list-group-item"><strong>Media Services</strong></li>\n						<li class="list-group-item">Web Analytics</li>\n						<li class="list-group-item">Online Advertising</li>\n						<li class="list-group-item">Internet Campaign</li>\n						<li class="list-group-item">Retargeting/Remarketing</li>\n						<li class="list-group-item">Blog Creation &amp; Blogging</li>\n						<li class="list-group-item">Print, Web, Electronic media </li>\n						<li class="list-group-item">Social Media: Twitter, Facebook, LinkedIn, etc.</li>\n					</ul>			\n				</div>				\n			</div>\n			</div>	'),
(4, 'Brand & Reputation Management', 'brandManagement.jpg', '			<div class="row padAndJustfyTxt">\n				<div class="heading"><h1 class="text-center">Brand &amp Reputation Management</h1></div>\n			</div>			\n			<div class="row padAndJustfyTxt">\n			<div class="serviceBody">\n			<p>Brand reputation is simply a customer''s perception of the particular brand. A brand''s reputation can make or break the company, product and/or service. Knowing and acknowledging to what people (especially a dissatisfied consumer) are saying about your company, its products or services is the basis to managing your brand''s reputation. Online world is now the real world and Internet is the greatest ''reputation engine''. Online image of a brand, a company or an individual has far reaching outcomes today and could mean the difference between success and failure.</p>\n			<p>In a hyper-connected social world, a few negative comments about your business and brand here and there on the Internet can do unimaginable damage to your brand''s reputation. These comments and reviews being freely available in the public domain create instant impressions about brands, products, organisations or individuals. There are tons of cases of brands getting destroyed or permanently scarred by either not handling to their online reputation appropriately.</p>\n			<p>Creating a successful company online and off requires trust in your brand''s internet reputation. Having a secure reputation establishes trust and confidence protecting your customers from internet fraud and corporate revenue losses. A poor reputation can lead to reduced confidence and mistrust, and result in reduced sales and business opportunities.\n			<p>We at Prime Time, monitor the online sentiments, manages the content available in internet and eventually promotes the brand. The idea is to neutralize the negative impressions and maximize and highlight the positive experiences which will eventually promote positive brand recall. From real time online reports on your brand, competition and industry, to content management on blogs, wikis and several other relevant social media platforms, managing the SEO rankings and online profiles, we offer holistic brand and reputation management services. We have an in-house mix of the best of techies, creative junkies, social media experts and marketing minds to manage your brand value and reputation.</p>\n			</div>\n			</div>	'),
(5, 'Business Consultancy Services', 'businessconsultancy.jpg', '			<div class="row padAndJustfyTxt">\n				<div class="heading"><h1 class="text-center">Business Consultancy Services</h1></div>\n			</div>			\n			<div class="row padAndJustfyTxt">\n			<div class="serviceBody">\n			<p>Prime Time, along with its subsidiaries is a leading provider of advisory, representation and services for business focused on entering the market. We offer a comprehensive range of services for penetrating the market to seize opportunities. These include advisory services, product potential, entry strategy, partner evaluation, legal & regulatory compliance and due diligence.</p>\n			<p>We provide strategic corporate solutions for better growth and prosperity of the business. Our consulting services are always carrying the latest industrial practice and current corporate ethics. We provide the most suitable, advantageous and cost effective tool for your business and service. Our profound industry and domain knowledge enable us to develop a blueprint and roadmap that will align your technology and business strategies, making you more competitive, more agile, and more profitable.</p>\n			</div>\n			</div>	'),
(6, 'Public Relation Management', 'publicRelation.jpg', '			<div class="row padAndJustfyTxt">\n				<div class="heading"><h1 class="text-center">Public Relation Management</h1></div>\n			</div>			\n			<div class="row padAndJustfyTxt">\n			<div class="serviceBody">\n			<p>In today’s contemporary market scenario there is cut-throat competition and therefore it is essential to have an edge over your competitors. You need to assess the factors affecting the viability and survival of your business in the contemporary market scenario. And the most important factor in the viability and survival of a business is having a good reputation and relation with your end customer or the public in general.</p>\n			<p>We at Prime Time believe that image building and branding is directly proportional to the success of your business. In simple words the better your image is in the public the better are your chances of sustenance and success in today’s contemporary market scenario.\n			A good public relation specialist adds to your advantage and helps your create a better image of yourself in the public. No business model can work without the public. We, on behalf of you, will interact and communicate with the public highlighting the quality of your services and products. We provide you cost-effective, innovative and flexible public relation services. From short term to permanent public relation services, from internal to external public relation services – we use result oriented approach that suffices your business needs and deliver it all with utmost professionalism. We have an extended network of partners and strategic alliances with leading national and local media houses, pan India, who help us meet deadlines and come up with strategies that secure the right solutions for our clients.</p>\n			<p>At Prime Time, amongst others, we offer you the various public relations services, viz. Digital Public Relations: Services, Social Media Public Relations, Press Releases / News Releases/ Media Bytes, Employee Communications, Product Launches / Promotional Events:, Crisis Communication and Issues Management, etc.</p>\n			</div>\n			</div>	');

-- --------------------------------------------------------

--
-- Table structure for table `sub_data`
--

CREATE TABLE IF NOT EXISTS `sub_data` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(100) NOT NULL,
  `sub_email` varchar(50) NOT NULL,
  `sub_phone` varchar(30) NOT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `sub_email` (`sub_email`),
  KEY `sub_name` (`sub_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_user`
--

CREATE TABLE IF NOT EXISTS `sub_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `url_hash` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `url_hash` (`url_hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='subscribed users' AUTO_INCREMENT=43 ;

--
-- Dumping data for table `sub_user`
--

INSERT INTO `sub_user` (`id`, `email`, `url_hash`, `status`) VALUES
(24, 'shoaibprimetime@gmail.com', 'e529d0178dc0348324573a4367a40b17', '1'),
(25, 'amirprimetime@gmail.com', '8dffce9b5a2b604a1a09bb5f5059c20a', '0'),
(26, 'ashsam786@gmail.com', '0cd6e5ab9790cbb60f6af25216e00776', '1'),
(27, 'asd@wes.lok', 'aaacd844123f5758970c25510defa855', '0'),
(28, 'shadabrabbani@gmail.com', '15119086021130d168f344786171fa04', '0'),
(29, 'chatursingh69@gmail.com', 'c2a1e5b2cf9a09067b33428383c46be3', '0'),
(30, 'shoaibprimetime1@gmail.com', 'b9c8d12b6c0e1effc86f5ac9443c4095', '0'),
(32, 'www.mikemamang@123', '131d391c56c112debad1c61ea1544b65', '0'),
(33, 'dentoscopedentalhospital@yahoo.com', '9f71d26455b133dc7301f1a145105f4b', '0'),
(34, 'dentoscope@yahoo.com', '157552685c66bf577748c7f56b341916', '1'),
(35, 'rajkumarsms@rediffmail.com', 'a18674ae59a2b446d35a47f8628f409f', '1'),
(36, 'nishutyagi08@gmail.com', 'bae2255523ffb99a105bc34a61102752', '1'),
(37, 'drpoonammalik82@yahoo.co.in', '93ca1e33b12773a4036fd8f7f13411a7', '1'),
(38, 'sunil.attree308@gmail.com', 'd3c89dceef76d9590e71ff42de6c8a6c', '0'),
(39, 'moon2321@rediffmail.com', '1e524db2f7d2ce4248ad13bb106c4bd6', '1'),
(40, 'pururajgupta@gmail.com', 'c0a0d3c2350d50318eae659888769e78', '1'),
(41, 'ravindrachavan003@gmail.com', 'd52f6396ff71fe31c74b7c3a245a3f29', '0'),
(42, 'sandeep@24x7pms.com', 'bff80c56833fdc7924ca139042ccd775', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
