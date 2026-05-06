-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2026 at 01:18 PM
-- Server version: 11.8.6-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u648814226_ivote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `token_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_id`, `name`, `password`, `email`, `reset_token`, `token_expiry`) VALUES
(1, 'admin1', 'Administrator', '$2y$10$bcvIcDjazFjeYShALyGYLOXLnaeozw1yN4jrz6/L/rMZk3EN2AGAW', 'manicadalexanicole@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `grade_section` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `partylist_id` int(11) DEFAULT NULL,
  `election_id` int(11) NOT NULL,
  `biography` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `requirements` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `is_archived` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `student_id`, `grade_section`, `firstname`, `lastname`, `position_id`, `partylist_id`, `election_id`, `biography`, `photo`, `requirements`, `status`, `is_archived`) VALUES
(59, '2025-001', '12 – STEM – A', 'Juan', 'Dela Cruz', 158, 8, 19, 'asasasa', '1774332493_84c91ce8-8b4e-48bd-970c-c479f34cd4b8.jpg', NULL, '', 1),
(60, '2025-002', '12 – HUMSS – B', 'Alexa', 'Manicad', 159, 8, 19, 'sasa', '1774332638_eb18c305-aa0f-48e6-995c-8d2a75ca62af.jpg', NULL, '', 1),
(61, '2025-005', '9 – B', 'Juan', 'Dela Cruz', 166, 8, 19, 'dasasadacafac', NULL, NULL, '', 1),
(65, '2025-007', '8 – A', 'Lily', 'Paraiso', 165, 8, 19, 'Ss', '1774334369_84c91ce8-8b4e-48bd-970c-c479f34cd4b8.jpg', NULL, '', 1),
(66, '2025-011', '9 – A', 'Kevin', 'Ramos', 164, 8, 19, 'sasa', '1774335269_01c1060e-5345-4dc9-94c4-4668fc8caccf.jpg', NULL, '', 1),
(67, '2025-012', '10 – B', 'Sofia', 'Mendoza', 161, 8, 19, 'dfd', '1774343541_eb18c305-aa0f-48e6-995c-8d2a75ca62af.jpg', NULL, '', 1),
(68, '2025-017', '11 – GAS – D', 'Carlo', 'Bautista', 160, 8, 19, 'sasa', '1774346360_d8ffc7b8-4a5d-46e3-8f88-5e4a20c8eb3c.jpg', NULL, '', 1),
(69, '', NULL, 'Abstain', 'Vote', 158, NULL, 19, NULL, NULL, NULL, '', 1),
(70, '', NULL, 'Abstain', 'Vote', 159, NULL, 19, NULL, NULL, NULL, '', 1),
(71, '', NULL, 'Abstain', 'Vote', 160, NULL, 19, NULL, NULL, NULL, '', 1),
(72, '', NULL, 'Abstain', 'Vote', 161, NULL, 19, NULL, NULL, NULL, '', 1),
(73, '', NULL, 'Abstain', 'Vote', 162, NULL, 19, NULL, NULL, NULL, '', 1),
(74, '', NULL, 'Abstain', 'Vote', 163, NULL, 19, NULL, NULL, NULL, '', 1),
(75, '', NULL, 'Abstain', 'Vote', 164, NULL, 19, NULL, NULL, NULL, '', 1),
(76, '', NULL, 'Abstain', 'Vote', 165, NULL, 19, NULL, NULL, NULL, '', 1),
(77, '', NULL, 'Abstain', 'Vote', 166, NULL, 19, NULL, NULL, NULL, '', 1),
(78, '', NULL, 'Abstain', 'Vote', 167, NULL, 19, NULL, NULL, NULL, '', 1),
(79, '', NULL, 'Abstain', 'Vote', 168, NULL, 19, NULL, NULL, NULL, '', 1),
(80, '', NULL, 'Abstain', 'Vote', 169, NULL, 19, NULL, NULL, NULL, '', 1),
(81, 'N/A', 'N/A', 'Abstain', 'Vote', 206, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(82, 'N/A', 'N/A', 'Abstain', 'Vote', 207, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(83, 'N/A', 'N/A', 'Abstain', 'Vote', 208, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(84, 'N/A', 'N/A', 'Abstain', 'Vote', 209, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(85, 'N/A', 'N/A', 'Abstain', 'Vote', 210, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(86, 'N/A', 'N/A', 'Abstain', 'Vote', 211, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(87, 'N/A', 'N/A', 'Abstain', 'Vote', 212, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(88, 'N/A', 'N/A', 'Abstain', 'Vote', 213, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(89, 'N/A', 'N/A', 'Abstain', 'Vote', 214, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(90, 'N/A', 'N/A', 'Abstain', 'Vote', 215, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(91, 'N/A', 'N/A', 'Abstain', 'Vote', 216, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(92, 'N/A', 'N/A', 'Abstain', 'Vote', 217, NULL, 22, 'Virtual candidate.', NULL, NULL, '', 1),
(93, '2025-001', '12 – STEM – A', 'Juan', 'Dela Cruz', 206, 12, 22, 'asas', '1774488774_1769614712_1761021147_images__1_.png', NULL, '', 1),
(103, '2025-037', '11', 'Miguel Don', 'Gatchalian', 218, 15, 24, '', '1774506598_429.jpg', NULL, '', 1),
(104, '2025-001', '12 – STEM – A', 'Juan', 'Dela Cruz', 230, 16, 24, 'aaa', NULL, NULL, '', 1),
(105, '2025-037', '11', 'Miguel Don', 'Gatchalian', 230, 18, 24, '', '1774507368_318.jpg', NULL, '', 1),
(106, 'N/A', 'N/A', 'Abstain', 'Vote', 230, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(107, 'N/A', 'N/A', 'Abstain', 'Vote', 231, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(108, 'N/A', 'N/A', 'Abstain', 'Vote', 232, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(109, 'N/A', 'N/A', 'Abstain', 'Vote', 233, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(110, 'N/A', 'N/A', 'Abstain', 'Vote', 234, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(111, 'N/A', 'N/A', 'Abstain', 'Vote', 235, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(112, 'N/A', 'N/A', 'Abstain', 'Vote', 236, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(113, 'N/A', 'N/A', 'Abstain', 'Vote', 237, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(114, 'N/A', 'N/A', 'Abstain', 'Vote', 238, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(115, 'N/A', 'N/A', 'Abstain', 'Vote', 239, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(116, 'N/A', 'N/A', 'Abstain', 'Vote', 240, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(117, 'N/A', 'N/A', 'Abstain', 'Vote', 241, NULL, 24, 'Virtual candidate.', NULL, NULL, '', 1),
(118, '2025-002', 'Grade 12 - HUMSS - B', 'Alexa', 'Manicad', 232, 18, 24, 'assa', NULL, NULL, '', 1),
(119, '2025-003', 'Grade 11 - STEM - A', 'Maria', 'Cruz', 240, 16, 24, 'uuy', NULL, NULL, '', 1),
(120, '2025-015', 'Grade 12 - ABM - C', 'Bryan', 'Santos', 234, 18, 24, 'asasas', NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `school_year` varchar(20) NOT NULL,
  `filing_start` datetime DEFAULT NULL,
  `filing_end` datetime DEFAULT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `status` varchar(20) DEFAULT 'upcoming',
  `filing_status` tinyint(1) DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_archived` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `title`, `school_year`, `filing_start`, `filing_end`, `start_datetime`, `end_datetime`, `status`, `filing_status`, `created_by`, `created_at`, `is_archived`) VALUES
(19, 'HALALAN 2026-2027', '2025-2026', '2026-03-25 23:19:57', '2026-03-26 14:25:44', '2026-03-26 14:24:18', '2026-03-26 14:25:47', 'ended', 2, 1, '2026-03-24 05:48:37', 1),
(22, 'election', '2025-2026', '2026-03-26 08:30:00', '2026-03-26 12:43:33', '2026-03-26 09:54:20', '2026-03-26 09:54:42', 'ended', 2, 1, '2026-03-26 00:31:35', 1),
(23, 'ELECTION 2026', '2025-2026', '2026-03-27 13:10:00', '2026-03-26 14:22:26', '2026-03-26 14:11:48', '2026-03-26 14:15:44', 'ended', 2, 1, '2026-03-26 06:09:46', 1),
(24, 'ELEKSYON', '2025-2026', '2026-03-26 14:29:00', '2026-04-16 10:45:34', '2026-04-16 11:27:49', '2026-04-16 17:56:17', 'ended', 2, 1, '2026-03-26 06:29:40', 1),
(25, 'ELECTION 2027', '2025-2026', '2026-04-17 05:00:00', '2026-04-16 18:05:50', '2026-04-16 19:09:45', '2026-04-16 19:09:53', 'ended', 2, 1, '2026-04-16 09:57:32', 1),
(26, 'try', '2025-2026', '2026-04-16 18:05:00', '2026-04-16 18:08:00', '2026-04-16 18:12:15', '2026-04-16 18:13:09', 'ended', 0, 1, '2026-04-16 10:09:27', 1),
(27, 'try', '2025-2026', '2026-04-16 18:13:00', '2026-04-17 19:11:05', '2026-04-20 20:30:32', '2026-04-21 20:30:32', 'active', 1, 1, '2026-04-16 10:13:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `moderators`
--

CREATE TABLE `moderators` (
  `id` int(11) NOT NULL,
  `school_year` varchar(20) DEFAULT NULL,
  `faculty_id` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `grades_handled` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moderators`
--

INSERT INTO `moderators` (`id`, `school_year`, `faculty_id`, `level`, `first_name`, `last_name`, `email`, `password`, `grades_handled`, `status`, `created_at`) VALUES
(1, '2024-2025', '2025-101', 'Moderator 1', 'James', 'Cruz', 'cruz@gmail.com', '$2y$10$2/Fm28UuIoMNwXacTuAnM.ES1zAjXpHR.Yn4Lsxw3f45dBWMFLEJW', 'Grade 7, Grade 8', 'active', '2025-10-22 10:46:27'),
(2, '2024-2025', '2025-102', 'Moderator 2', 'Juan', 'Santos', 'santos@gmail.com', '$2y$10$b67/h0cRkpUmtlwFqAXepuyWoSZGowhvURyRzpW5oOWSqQmBB9kcm', 'Grade 9, Grade 10', 'active', '2025-10-22 11:09:34'),
(3, '2024-2025', '2025-103', 'Moderator 3', 'Anna', 'Dela Cruz', 'delacruz@srnhs.edu.ph', '$2y$10$TI70UVe4dqRprHLy7xwAHOXgq/SQ8PQLGB5kyXzZ/q5Ba/sM58VeG', 'Grade 11', 'active', '2025-10-24 18:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `partylist`
--

CREATE TABLE `partylist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_independent` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_archived` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partylist`
--

INSERT INTO `partylist` (`id`, `name`, `is_independent`, `created_at`, `is_archived`) VALUES
(5, 'Independent', 1, '2026-01-28 14:48:24', 1),
(8, 'ONEROQUENIANS', 0, '2026-02-13 13:31:03', 1),
(9, 'SANROQUENIANS', 0, '2026-03-26 00:05:59', 1),
(10, 'ONEROQUENIANS', 0, '2026-03-26 01:25:56', 1),
(11, 'SANROQUENIANS', 0, '2026-03-26 01:26:01', 1),
(12, 'INDEPENDENT', 1, '2026-03-26 01:26:07', 1),
(13, 'ONEROQUENIANS', 0, '2026-03-26 06:13:43', 1),
(14, 'SANROQUENIAN', 0, '2026-03-26 06:13:53', 1),
(15, 'INDEPENDENT', 1, '2026-03-26 06:14:03', 1),
(16, 'ONEROQUENIANS', 0, '2026-03-26 06:35:23', 1),
(17, 'SANROQUENIAN', 0, '2026-03-26 06:35:30', 1),
(18, 'INDEPENDENT', 1, '2026-03-26 06:35:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `partylist_id` int(11) DEFAULT NULL,
  `position_order` int(11) DEFAULT 0,
  `is_archived` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `election_id`, `name`, `partylist_id`, `position_order`, `is_archived`) VALUES
(158, 19, 'PRESIDENT', NULL, 1, 1),
(159, 19, 'VICE PRESIDENT', NULL, 2, 1),
(160, 19, 'SECRETARY', NULL, 3, 1),
(161, 19, 'TREASURER', NULL, 4, 1),
(162, 19, 'AUDITOR', NULL, 5, 1),
(163, 19, 'PUBLIC INFORMATION OFFICER', NULL, 6, 1),
(164, 19, 'PROTOCOL OFFICER', NULL, 7, 1),
(165, 19, 'GRADE 8 REPRESENTATIVE ', NULL, 8, 1),
(166, 19, 'GRADE 9 REPRESENTATIVE ', NULL, 9, 1),
(167, 19, 'GRADE 10 REPRESENTATIVE ', NULL, 10, 1),
(168, 19, 'GRADE 11 REPRESENTATIVE ', NULL, 11, 1),
(169, 19, 'GRADE 12 REPRESENTATIVE ', NULL, 12, 1),
(206, 22, 'PRESIDENT', NULL, 1, 1),
(207, 22, 'VICE PRESIDENT', NULL, 2, 1),
(208, 22, 'SECRETARY', NULL, 3, 1),
(209, 22, 'TREASURER', NULL, 4, 1),
(210, 22, 'AUDITOR', NULL, 5, 1),
(211, 22, 'PUBLIC INFORMATION OFFICER', NULL, 6, 1),
(212, 22, 'PROTOCOL OFFICER', NULL, 7, 1),
(213, 22, 'GRADE 8 REPRESENTATIVE ', NULL, 8, 1),
(214, 22, 'GRADE 9 REPRESENTATIVE ', NULL, 9, 1),
(215, 22, 'GRADE 10 REPRESENTATIVE ', NULL, 10, 1),
(216, 22, 'GRADE 11 REPRESENTATIVE ', NULL, 11, 1),
(217, 22, 'GRADE 12 REPRESENTATIVE ', NULL, 12, 1),
(218, 23, 'PRESIDENT', NULL, 1, 1),
(219, 23, 'VICE PRESIDENT', NULL, 2, 1),
(220, 23, 'SECRETARY', NULL, 3, 1),
(221, 23, 'TREASURER', NULL, 4, 1),
(222, 23, 'AUDITOR', NULL, 5, 1),
(223, 23, 'PUBLIC INFORMATION OFFICER', NULL, 6, 1),
(224, 23, 'PROTOCOL OFFICER', NULL, 7, 1),
(225, 23, 'GRADE 8 REPRESENTATIVE ', NULL, 8, 1),
(226, 23, 'GRADE 9 REPRESENTATIVE ', NULL, 9, 1),
(227, 23, 'GRADE 10 REPRESENTATIVE ', NULL, 10, 1),
(228, 23, 'GRADE 11 REPRESENTATIVE ', NULL, 11, 1),
(229, 23, 'GRADE 12 REPRESENTATIVE ', NULL, 12, 1),
(230, 24, 'PRESIDENT', NULL, 1, 1),
(231, 24, 'VICE PRESIDENT', NULL, 2, 1),
(232, 24, 'SECRETARY', NULL, 3, 1),
(233, 24, 'TREASURER', NULL, 4, 1),
(234, 24, 'AUDITOR', NULL, 5, 1),
(235, 24, 'PUBLIC INFORMATION OFFICER', NULL, 6, 1),
(236, 24, 'PROTOCOL OFFICER', NULL, 7, 1),
(237, 24, 'GRADE 8 REPRESENTATIVE ', NULL, 8, 1),
(238, 24, 'GRADE 9 REPRESENTATIVE ', NULL, 9, 1),
(239, 24, 'GRADE 10 REPRESENTATIVE ', NULL, 10, 1),
(240, 24, 'GRADE 11 REPRESENTATIVE ', NULL, 11, 1),
(241, 24, 'GRADE 12 REPRESENTATIVE ', NULL, 12, 1),
(242, 25, 'PRESIDENT', NULL, 1, 1),
(243, 25, 'VICE PRESIDENT', NULL, 2, 1),
(244, 25, 'SECRETARY', NULL, 3, 1),
(245, 25, 'TREASURER', NULL, 4, 1),
(246, 25, 'AUDITOR', NULL, 5, 1),
(247, 25, 'PUBLIC INFORMATION OFFICER', NULL, 6, 1),
(248, 25, 'PROTOCOL OFFICER', NULL, 7, 1),
(249, 25, 'GRADE 8 REPRESENTATIVE ', NULL, 8, 1),
(250, 25, 'GRADE 9 REPRESENTATIVE ', NULL, 9, 1),
(251, 25, 'GRADE 10 REPRESENTATIVE ', NULL, 10, 1),
(252, 25, 'GRADE 11 REPRESENTATIVE ', NULL, 11, 1),
(253, 25, 'GRADE 12 REPRESENTATIVE ', NULL, 12, 1),
(254, 26, 'PRESIDENT', NULL, 1, 1),
(255, 26, 'VICE PRESIDENT', NULL, 2, 1),
(256, 26, 'SECRETARY', NULL, 3, 1),
(257, 26, 'TREASURER', NULL, 4, 1),
(258, 26, 'AUDITOR', NULL, 5, 1),
(259, 26, 'PUBLIC INFORMATION OFFICER', NULL, 6, 1),
(260, 26, 'PROTOCOL OFFICER', NULL, 7, 1),
(261, 26, 'GRADE 8 REPRESENTATIVE ', NULL, 8, 1),
(262, 26, 'GRADE 9 REPRESENTATIVE ', NULL, 9, 1),
(263, 26, 'GRADE 10 REPRESENTATIVE ', NULL, 10, 1),
(264, 26, 'GRADE 11 REPRESENTATIVE ', NULL, 11, 1),
(265, 26, 'GRADE 12 REPRESENTATIVE ', NULL, 12, 1),
(266, 27, 'PRESIDENT', NULL, 1, 0),
(267, 27, 'VICE PRESIDENT', NULL, 2, 0),
(268, 27, 'SECRETARY', NULL, 3, 0),
(269, 27, 'TREASURER', NULL, 4, 0),
(270, 27, 'AUDITOR', NULL, 5, 0),
(271, 27, 'PUBLIC INFORMATION OFFICER', NULL, 6, 0),
(272, 27, 'PROTOCOL OFFICER', NULL, 7, 0),
(273, 27, 'GRADE 8 REPRESENTATIVE ', NULL, 8, 0),
(274, 27, 'GRADE 9 REPRESENTATIVE ', NULL, 9, 0),
(275, 27, 'GRADE 10 REPRESENTATIVE ', NULL, 10, 0),
(276, 27, 'GRADE 11 REPRESENTATIVE ', NULL, 11, 0),
(277, 27, 'GRADE 12 REPRESENTATIVE ', NULL, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','mod','voter') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `strand` varchar(50) DEFAULT NULL,
  `grade_level` varchar(20) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `password_changed` tinyint(1) DEFAULT 0,
  `is_candidate` tinyint(1) DEFAULT 0,
  `reset_token` varchar(255) DEFAULT NULL,
  `token_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `student_id`, `lastname`, `firstname`, `middlename`, `strand`, `grade_level`, `section`, `email`, `password`, `status`, `password_changed`, `is_candidate`, `reset_token`, `token_expiry`) VALUES
(1, '2025-001', 'Dela Cruz', 'Juan', 'Santos', 'STEM', '12', 'A', 'juan.delacruz@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, 'c570720e4149e6a57f37864bbc01f89b', '2026-03-24 20:33:56'),
(2, '2025-002', 'Manicad', 'Alexa', 'Reyes', 'HUMSS', '12', 'B', 'alexa.manicad@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(3, '2025-003', 'Cruz', 'Maria', 'Santos', 'STEM', '11', 'A', 'maria@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(4, '2025-004', 'Santos', 'Anna', 'Castro', '', '10', 'A', 'anna@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(5, '2025-005', 'Dela Cruz', 'Juan', 'Cruz', '', '9', 'B', 'juan@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(6, '2025-006', 'Castro', 'Anne', 'Paraiso', 'ABM', '11', 'B', 'anne@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(7, '2025-007', 'Paraiso', 'Lily', 'Reyes', '', '8', 'A', 'lily@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(8, '2025-008', 'Natividad', 'Girlie', 'Francisco', '', '7', 'C', 'girlie@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(9, '2025-009', 'Reyes', 'Chris', 'Natividad', '', '10', 'B', 'chris@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(10, '2025-010', 'Francisco', 'Dianne', 'Dela Cruz', '', '10', 'C', 'dianne@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(36, '2025-011', 'Ramos', 'Kevin', 'Bautista', '', '9', 'A', 'kevin.ramos@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(37, '2025-012', 'Mendoza', 'Sofia', 'Cruz', '', '10', 'B', 'sofia.mendoza@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(38, '2025-013', 'Villanueva', 'Marco', 'Dizon', 'STEM', '12', 'A', 'marco.villanueva@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(39, '2025-014', 'Garcia', 'Angelica', 'Reyes', 'HUMSS', '11', 'B', 'angelica.garcia@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(40, '2025-015', 'Santos', 'Bryan', 'Lopez', 'ABM', '12', 'C', 'bryan.santos@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(41, '2025-016', 'Dela Cruz', 'Hannah', 'Ramos', '', '8', 'A', 'hannah.delacruz@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(42, '2025-017', 'Bautista', 'Carlo', 'Natividad', 'GAS', '11', 'D', 'carlo.bautista@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(43, '2025-018', 'Reyes', 'Patricia', 'Gomez', '', '7', 'C', 'patricia.reyes@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(44, '2025-019', 'Cruz', 'Adrian', 'Santos', 'TVL', '11', 'B', 'adrian.cruz@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(45, '2025-020', 'Lopez', 'Bea', 'Francisco', '', '10', 'D', 'bea.lopez@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(46, '2025-021', 'Leo', 'Nicole', 'Hello', NULL, '10', 'A', 'nicole.lee@srnhs.edu.ph', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(47, '2025-022', 'Ken', 'Ken', 'Ken', 'HUMSS', '11', 'B', 'kendannielv@gmail.com', '$2y$10$YOrDNbV6juzMoYu57LRuaeRQA1glvEMVLLrSQm73YNLVRKSp49ydC', 'active', 0, 0, '91fee5c6d20d5489693883fee0e93b63', '2026-03-25 18:25:02'),
(48, '2025-023', 'alexa', 'alexa', 'alexa', 'HUMSS', '11', 'B', 'alexa@gmail.com', '$2y$10$xSbAgC19M6tUZ6EitkhwvuHmJGqKEnGYqpzy5ZnDa3pfhP74JAPtC', 'active', 0, 0, NULL, NULL),
(49, '2025-026', 'Victoria', 'Paulo', 'Agustin', 'STEM', '11', 'A', 'paulo.victoria@bpc.edu.ph', '$2y$10$gi6JHWF9LAXX.Yu.qzKYIOIHA0romj7Ql69RnvTsR4mQnzLhdVCRK', 'active', 0, 0, NULL, NULL),
(50, '2025-027', 'Fulgencio', 'Aivee', '', 'GAS', '12', 'B', 'aivee.fulgencio@bpc.edu.ph', '$2y$10$w5JwOEMXA5.i2BXibjvQWucj8W.6pEamefTZ3vN3Esu2GthASq6uW', 'active', 0, 0, NULL, NULL),
(51, '2025-028', 'Gatchalian', 'Miguel Don', 'G', 'ABM', '11', 'C', 'miguel.gatchalian@bpc.edu.ph', '$2y$10$74fdE.zAzLNW7lZTNKL2se2dpCtLhbNIuQGHf85rjmq8xBRh5iUfy', 'active', 0, 0, NULL, NULL),
(52, '2025-024', 'Garcia', 'Maria', 'Reyes', 'HUMSS', '12', 'B', 'maria@example.com', '$2y$10$v0ahxJJTpQdUmlUStIOKd.lOd5PZ1FvrcqP01aGAMj4RtRl.w.zvq', 'active', 0, 0, NULL, NULL),
(53, '2025-025', 'Lim', 'David', 'Go', 'ABM', '11', 'C', 'david@example.com', '$2y$10$8xwH66/vQwRYTqnu67ge6.U/PSTuS7KlZozG4.Ezpp6tp1d9z3MM.', 'active', 0, 0, NULL, NULL),
(54, '2025-029', 'Sy', 'Chelsea', 'Tan', 'GAS', '12', 'A', 'chelsea@example.com', '$2y$10$onEwta.k0imZIhHdSlU4W.5WQMTpNJkLbO.1uBio.vWzlvao/cZJm', 'active', 0, 0, NULL, NULL),
(58, '2025-033', 'Dalisay', 'Tanggol', '', 'STEM', '12', 'A', 'anmanicad@gmail.com', '$2y$10$QAteCpEAyYSQ7Wg7lI.UtuXC3ifL7i1G8xWbaUHZVHIvOilAMoRvK', 'active', 0, 0, NULL, NULL),
(59, '2025-030', 'De Leo', 'Kyle', '', 'HUMSS', '11', 'B', 'manicadalexanicole@gmail.com', '$2y$10$qRwIZJ1YyF1VrjBvycQ/a.7lDVoQ4YnQI/GFL5qHT63HvUtvOku4O', 'active', 0, 0, NULL, NULL),
(61, '2025-032', 'Accad', 'Alyna', '', 'ABM', '11', 'A', 'kylecheska2@gmail.com', '$2y$10$.cMXlLhktazR4k6HB1nqTOnIno98I2lO4T.VUqT9VTh6pPWUWm1Vm', 'active', 0, 0, NULL, NULL),
(62, '2025-031', 'Dela Cruz', 'Kyle', '', 'STEM', '12', 'A', 'accadalynachesca@gmail.com', '$2y$10$eBs3jhgBvjN9GQAPtr5pTuQQeLjx3Vs/Cg.mUM/PlT3OQphro0J5K', 'active', 0, 0, NULL, NULL),
(63, '2025-034', 'Cruz', 'Alfredo', '', 'ABM', '11', 'A', 'alfredvcruz27@gmail.com', NULL, 'inactive', 0, 0, '66986e9f4eb147e42ab99a94d2809754', NULL),
(64, '2025-035', 'Calara', 'Aly', '', 'STEM', '11', 'A', 'accadalynachescac@gmail.com', '$2y$10$vB0kHs5gFSzFDRXAxLJY0ucXtf.W.N89ebHFALybnQpKuSdBKS.p.', 'active', 0, 0, NULL, NULL),
(65, '2025-036', 'Angeles', 'Cheska', '', 'STEM', '11', 'A', 'kylecheska2@gmail.com', NULL, 'inactive', 0, 0, 'bfa448b7c94e2a2b0d8833afefa23242', NULL),
(66, '2025-037', 'Gatchalian', 'Miguel Don', '', 'STEM', '11', 'A', 'miguel.gatchalian@bpc.edu.ph', '$2y$10$/tdiDZgYr2sEnNvikgprTOwmFzo2YTpYNkqwRKWTXqs85tEVqJBKO', 'active', 0, 0, NULL, NULL),
(67, '2025-038', 'Rascano', 'Albert', '', NULL, '10', 'A', 'rascano85@gmail.com', NULL, 'inactive', 0, 0, '4d0d311c0ee4fdd5e79676a55978b290', NULL),
(68, '2025-039', 'ras', 'bert', '', NULL, '10', 'A', 'rascano85@gmail.com', '$2y$10$tqcuwWi.JZsf18MrEZSHWOYpc6gyxVMGnNJPGxffGhYaEMxZglMWe', 'active', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_archived` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voter_id`, `candidate_id`, `position_id`, `election_id`, `created_at`, `is_archived`) VALUES
(80, 1, 59, 158, 19, '2026-03-24 16:40:44', 1),
(81, 1, 60, 159, 19, '2026-03-24 16:40:44', 1),
(82, 1, 68, 160, 19, '2026-03-24 16:40:44', 1),
(83, 1, 67, 161, 19, '2026-03-24 16:40:44', 1),
(84, 1, 66, 164, 19, '2026-03-24 16:40:44', 1),
(85, 1, 65, 165, 19, '2026-03-24 16:40:44', 1),
(86, 1, 61, 166, 19, '2026-03-24 16:40:44', 1),
(87, 7, 59, 158, 19, '2026-03-24 17:27:36', 1),
(88, 7, 60, 159, 19, '2026-03-24 17:27:36', 1),
(89, 7, 68, 160, 19, '2026-03-24 17:27:36', 1),
(90, 7, 67, 161, 19, '2026-03-24 17:27:36', 1),
(91, 7, 66, 164, 19, '2026-03-24 17:27:36', 1),
(92, 7, 65, 165, 19, '2026-03-24 17:27:36', 1),
(93, 7, 61, 166, 19, '2026-03-24 17:27:36', 1),
(94, 39, 59, 158, 19, '2026-03-24 19:28:53', 1),
(95, 39, 60, 159, 19, '2026-03-24 19:28:53', 1),
(96, 39, 68, 160, 19, '2026-03-24 19:28:53', 1),
(97, 39, 67, 161, 19, '2026-03-24 19:28:53', 1),
(98, 39, 66, 164, 19, '2026-03-24 19:28:53', 1),
(99, 39, 65, 165, 19, '2026-03-24 19:28:53', 1),
(100, 39, 61, 166, 19, '2026-03-24 19:28:53', 1),
(101, 3, 69, 158, 19, '2026-03-24 19:32:45', 1),
(102, 3, 70, 159, 19, '2026-03-24 19:32:45', 1),
(103, 3, 71, 160, 19, '2026-03-24 19:32:45', 1),
(104, 3, 72, 161, 19, '2026-03-24 19:32:45', 1),
(105, 3, 73, 162, 19, '2026-03-24 19:32:45', 1),
(106, 3, 74, 163, 19, '2026-03-24 19:32:45', 1),
(107, 3, 75, 164, 19, '2026-03-24 19:32:45', 1),
(108, 3, 76, 165, 19, '2026-03-24 19:32:45', 1),
(109, 3, 77, 166, 19, '2026-03-24 19:32:45', 1),
(110, 3, 78, 167, 19, '2026-03-24 19:32:45', 1),
(111, 3, 79, 168, 19, '2026-03-24 19:32:45', 1),
(112, 3, 80, 169, 19, '2026-03-24 19:32:45', 1),
(113, 2, 69, 158, 19, '2026-03-24 19:46:57', 1),
(114, 2, 70, 159, 19, '2026-03-24 19:46:57', 1),
(115, 2, 71, 160, 19, '2026-03-24 19:46:57', 1),
(116, 2, 72, 161, 19, '2026-03-24 19:46:57', 1),
(117, 2, 73, 162, 19, '2026-03-24 19:46:57', 1),
(118, 2, 74, 163, 19, '2026-03-24 19:46:57', 1),
(119, 2, 75, 164, 19, '2026-03-24 19:46:57', 1),
(120, 2, 65, 165, 19, '2026-03-24 19:46:57', 1),
(121, 2, 61, 166, 19, '2026-03-24 19:46:57', 1),
(122, 2, 78, 167, 19, '2026-03-24 19:46:57', 1),
(123, 2, 79, 168, 19, '2026-03-24 19:46:57', 1),
(124, 2, 80, 169, 19, '2026-03-24 19:46:57', 1),
(125, 48, 59, 158, 19, '2026-03-25 03:58:05', 1),
(126, 48, 60, 159, 19, '2026-03-25 03:58:05', 1),
(127, 48, 68, 160, 19, '2026-03-25 03:58:05', 1),
(128, 48, 67, 161, 19, '2026-03-25 03:58:05', 1),
(129, 48, 73, 162, 19, '2026-03-25 03:58:05', 1),
(130, 48, 74, 163, 19, '2026-03-25 03:58:05', 1),
(131, 48, 66, 164, 19, '2026-03-25 03:58:05', 1),
(132, 48, 65, 165, 19, '2026-03-25 03:58:05', 1),
(133, 48, 61, 166, 19, '2026-03-25 03:58:05', 1),
(134, 48, 78, 167, 19, '2026-03-25 03:58:05', 1),
(135, 48, 79, 168, 19, '2026-03-25 03:58:05', 1),
(136, 48, 80, 169, 19, '2026-03-25 03:58:05', 1),
(137, 43, 69, 158, 19, '2026-03-25 05:05:44', 1),
(138, 43, 60, 159, 19, '2026-03-25 05:05:44', 1),
(139, 43, 68, 160, 19, '2026-03-25 05:05:44', 1),
(140, 43, 67, 161, 19, '2026-03-25 05:05:44', 1),
(141, 43, 73, 162, 19, '2026-03-25 05:05:44', 1),
(142, 43, 74, 163, 19, '2026-03-25 05:05:44', 1),
(143, 43, 75, 164, 19, '2026-03-25 05:05:44', 1),
(144, 43, 76, 165, 19, '2026-03-25 05:05:44', 1),
(145, 43, 77, 166, 19, '2026-03-25 05:05:44', 1),
(146, 43, 78, 167, 19, '2026-03-25 05:05:44', 1),
(147, 43, 79, 168, 19, '2026-03-25 05:05:44', 1),
(148, 43, 80, 169, 19, '2026-03-25 05:05:44', 1),
(149, 66, 105, 230, 24, '2026-03-26 06:57:01', 1),
(150, 66, 107, 231, 24, '2026-03-26 06:57:01', 1),
(151, 66, 108, 232, 24, '2026-03-26 06:57:01', 1),
(152, 66, 109, 233, 24, '2026-03-26 06:57:01', 1),
(153, 66, 110, 234, 24, '2026-03-26 06:57:01', 1),
(154, 66, 111, 235, 24, '2026-03-26 06:57:01', 1),
(155, 66, 112, 236, 24, '2026-03-26 06:57:01', 1),
(156, 66, 113, 237, 24, '2026-03-26 06:57:01', 1),
(157, 66, 114, 238, 24, '2026-03-26 06:57:01', 1),
(158, 66, 115, 239, 24, '2026-03-26 06:57:01', 1),
(159, 66, 116, 240, 24, '2026-03-26 06:57:01', 1),
(160, 66, 117, 241, 24, '2026-03-26 06:57:01', 1),
(161, 1, 104, 230, 24, '2026-03-26 06:58:34', 1),
(162, 1, 107, 231, 24, '2026-03-26 06:58:34', 1),
(163, 1, 108, 232, 24, '2026-03-26 06:58:34', 1),
(164, 1, 109, 233, 24, '2026-03-26 06:58:34', 1),
(165, 1, 110, 234, 24, '2026-03-26 06:58:34', 1),
(166, 1, 111, 235, 24, '2026-03-26 06:58:34', 1),
(167, 1, 112, 236, 24, '2026-03-26 06:58:34', 1),
(168, 1, 113, 237, 24, '2026-03-26 06:58:34', 1),
(169, 1, 114, 238, 24, '2026-03-26 06:58:34', 1),
(170, 1, 115, 239, 24, '2026-03-26 06:58:34', 1),
(171, 1, 116, 240, 24, '2026-03-26 06:58:34', 1),
(172, 1, 117, 241, 24, '2026-03-26 06:58:34', 1),
(173, 68, 104, 230, 24, '2026-04-16 03:28:04', 1),
(174, 68, 107, 231, 24, '2026-04-16 03:28:04', 1),
(175, 68, 108, 232, 24, '2026-04-16 03:28:04', 1),
(176, 68, 109, 233, 24, '2026-04-16 03:28:04', 1),
(177, 68, 110, 234, 24, '2026-04-16 03:28:04', 1),
(178, 68, 111, 235, 24, '2026-04-16 03:28:04', 1),
(179, 68, 112, 236, 24, '2026-04-16 03:28:04', 1),
(180, 68, 115, 239, 24, '2026-04-16 03:28:04', 1),
(181, 47, 104, 230, 24, '2026-04-16 05:10:19', 1),
(182, 47, 107, 231, 24, '2026-04-16 05:10:19', 1),
(183, 47, 108, 232, 24, '2026-04-16 05:10:19', 1),
(184, 47, 109, 233, 24, '2026-04-16 05:10:19', 1),
(185, 47, 110, 234, 24, '2026-04-16 05:10:19', 1),
(186, 47, 111, 235, 24, '2026-04-16 05:10:19', 1),
(187, 47, 112, 236, 24, '2026-04-16 05:10:19', 1),
(188, 47, 116, 240, 24, '2026-04-16 05:10:19', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `partylist_id` (`partylist_id`),
  ADD KEY `election_id` (`election_id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moderators`
--
ALTER TABLE `moderators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partylist`
--
ALTER TABLE `partylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `election_id` (`election_id`),
  ADD KEY `partylist_id` (`partylist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voter_id` (`voter_id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `position_id` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `moderators`
--
ALTER TABLE `moderators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `partylist`
--
ALTER TABLE `partylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  ADD CONSTRAINT `candidates_ibfk_2` FOREIGN KEY (`partylist_id`) REFERENCES `partylist` (`id`);

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_ibfk_1` FOREIGN KEY (`election_id`) REFERENCES `elections` (`id`),
  ADD CONSTRAINT `positions_ibfk_2` FOREIGN KEY (`partylist_id`) REFERENCES `partylist` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `voters` (`id`),
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`),
  ADD CONSTRAINT `votes_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
