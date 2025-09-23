-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 21, 2025 at 03:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classcheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `adviser` int(11) NOT NULL DEFAULT 0,
  `section` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `adviser`, `section`, `level`, `course`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', '11', '(ABM) Accountancy, Business and Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(2, 1, 'B', '11', '(ABM) Accountancy, Business and Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(3, 1, 'A', '11', '(GAS) General Academic Strand', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(4, 1, 'B', '11', '(GAS) General Academic Strand', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(5, 1, 'A', '11', '(HUMSS) Humanities and Social Sciences', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(6, 1, 'B', '11', '(HUMSS) Humanities and Social Sciences', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(7, 1, 'A', '11', '(STEM) Science, Technology, Engineering, and Mathematics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(8, 1, 'B', '11', '(STEM) Science, Technology, Engineering, and Mathematics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(9, 1, 'A', '11', '(ICT) Information and Communication Technology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(10, 1, 'B', '11', '(ICT) Information and Communication Technology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(11, 1, 'A', '11', '(HE) Home Economics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(12, 1, 'B', '11', '(HE) Home Economics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(13, 1, 'A', '11', '(SMAW) Shielded Metal Arc Welding', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(14, 1, 'B', '11', '(SMAW) Shielded Metal Arc Welding', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(15, 1, 'A', '11', '(AUTO) Automotive Servicing', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(16, 1, 'B', '11', '(AUTO) Automotive Servicing', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(17, 1, 'A', '12', '(ABM) Accountancy, Business and Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(18, 1, 'B', '12', '(ABM) Accountancy, Business and Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(19, 1, 'A', '12', '(GAS) General Academic Strand', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(20, 1, 'B', '12', '(GAS) General Academic Strand', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(21, 1, 'A', '12', '(HUMSS) Humanities and Social Sciences', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(22, 1, 'B', '12', '(HUMSS) Humanities and Social Sciences', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(23, 1, 'A', '12', '(STEM) Science, Technology, Engineering, and Mathematics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(24, 1, 'B', '12', '(STEM) Science, Technology, Engineering, and Mathematics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(25, 1, 'A', '12', '(ICT) Information and Communication Technology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(26, 1, 'B', '12', '(ICT) Information and Communication Technology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(27, 1, 'A', '12', '(HE) Home Economics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(28, 1, 'B', '12', '(HE) Home Economics', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(29, 1, 'A', '12', '(SMAW) Shielded Metal Arc Welding', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(30, 1, 'B', '12', '(SMAW) Shielded Metal Arc Welding', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(31, 1, 'A', '12', '(AUTO) Automotive Servicing', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(32, 1, 'B', '12', '(AUTO) Automotive Servicing', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(33, 1, 'A', '1', '(BSIT) Bachelor of Science in Information Technology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(34, 1, 'B', '1', '(BSIT) Bachelor of Science in Information Technology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(35, 1, 'A', '1', '(BSHM) Bachelor of Science in Hospitality Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(36, 1, 'B', '1', '(BSHM) Bachelor of Science in Hospitality Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(37, 1, 'A', '1', '(BSAIS) Bachelor of Science in Accounting Information Systems', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(38, 1, 'B', '1', '(BSAIS) Bachelor of Science in Accounting Information Systems', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(39, 1, 'A', '1', '(BSTM) Bachelor of Science in Tourism Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(40, 1, 'B', '1', '(BSTM) Bachelor of Science in Tourism Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(41, 1, 'A', '1', '(BSOA) Bachelor of Science in Office Administration', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(42, 1, 'B', '1', '(BSOA) Bachelor of Science in Office Administration', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(43, 1, 'A', '1', '(BSENTREP) Bachelor of Science in Entrepreneurship', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(44, 1, 'B', '1', '(BSENTREP) Bachelor of Science in Entrepreneurship', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(45, 1, 'A', '1', '(BSBA-HRM) Bachelor of Science in Business Administration Major in HRM', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(46, 1, 'B', '1', '(BSBA-HRM) Bachelor of Science in Business Administration Major in HRM', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(47, 1, 'A', '1', '(BSBA-MM) Bachelor of Science in Business Administration Major in Marketing Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(48, 1, 'B', '1', '(BSBA-MM) Bachelor of Science in Business Administration Major in Marketing Management', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(49, 1, 'A', '1', '(BLIS) Bachelor of Library Information Science', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(50, 1, 'B', '1', '(BLIS) Bachelor of Library Information Science', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(51, 1, 'A', '1', '(BSCpE) Bachelor of Science in Computer Engineering', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(52, 1, 'B', '1', '(BSCpE) Bachelor of Science in Computer Engineering', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(53, 1, 'A', '1', '(BSP) Bachelor of Science in Psychology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(54, 1, 'B', '1', '(BSP) Bachelor of Science in Psychology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(55, 1, 'A', '1', '(BSCRIM) Bachelor of Science in Criminology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(56, 1, 'B', '1', '(BSCRIM) Bachelor of Science in Criminology', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(57, 1, 'A', '1', '(BPED) Bachelor of Physical Education', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(58, 1, 'B', '1', '(BPED) Bachelor of Physical Education', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(59, 1, 'A', '1', '(BTLED) Bachelor of Technology and Livelihood Education', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(60, 1, 'B', '1', '(BTLED) Bachelor of Technology and Livelihood Education', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(61, 1, 'A', '1', '(BEED) Bachelor of Elementary Education', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(62, 1, 'B', '1', '(BEED) Bachelor of Elementary Education', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(63, 1, 'A', '1', '(BSED) Bachelor of Secondary Education', '2025-08-24 17:23:53', '2025-09-07 04:38:26'),
(65, 0, 'wo', '1', 'bsit', '2025-09-20 14:04:45', '2025-09-20 14:04:45'),
(66, 0, 'lklnsdlfegnsjfgnhgsjdgnjd', '2032043040', 'ejfdfi', '2025-09-20 14:05:06', '2025-09-20 14:05:06'),
(67, 0, 'asmadka', '12', '3434bbb', '2025-09-20 15:03:48', '2025-09-20 15:03:48'),
(68, 0, 'aburaman', '12', 'bsit', '2025-09-21 12:35:31', '2025-09-21 12:35:39'),
(69, 0, 'hahahaahaha', '12', 'biitt', '2025-09-21 13:17:57', '2025-09-21 13:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `record_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `action`, `table_name`, `record_id`, `message`, `created_at`) VALUES
(1, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-08 20:38:04'),
(2, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-09 04:38:05'),
(3, NULL, 'insert', 'logs', 2, 'Inserted new record into logs', '2025-09-08 20:38:05'),
(4, NULL, 'update', 'users', 1, 'Updated 1 record(s) in users', '2025-09-08 20:42:40'),
(5, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-08 21:06:45'),
(6, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-09 05:06:45'),
(7, NULL, 'insert', 'logs', 6, 'Inserted new record into logs', '2025-09-08 21:06:45'),
(8, NULL, 'update', 'users', 1, 'Updated 1 record(s) in users', '2025-09-08 21:11:06'),
(9, 1, 'update', 'users', 1, 'Updated 1 record(s) in users', '2025-09-08 21:14:04'),
(10, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 05:58:10'),
(11, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 13:58:10'),
(12, 2, 'insert', 'logs', 11, 'Inserted new record into logs', '2025-09-20 05:58:10'),
(13, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 06:00:42'),
(14, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 14:00:43'),
(15, 2, 'insert', 'logs', 14, 'Inserted new record into logs', '2025-09-20 06:00:43'),
(16, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 06:02:01'),
(17, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 14:02:01'),
(18, 2, 'insert', 'logs', 17, 'Inserted new record into logs', '2025-09-20 06:02:01'),
(19, 2, 'update', 'users', 1, 'Updated 1 record(s) in users', '2025-09-20 06:03:31'),
(20, 2, 'update', 'users', 2, 'Updated 1 record(s) in users', '2025-09-20 06:03:46'),
(21, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 06:04:07'),
(22, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 14:04:07'),
(23, 2, 'insert', 'logs', 22, 'Inserted new record into logs', '2025-09-20 06:04:07'),
(24, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 06:04:16'),
(25, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 14:04:16'),
(26, 1, 'insert', 'logs', 25, 'Inserted new record into logs', '2025-09-20 06:04:16'),
(27, 1, 'insert', 'class', 65, 'Inserted new record into class', '2025-09-20 06:04:45'),
(28, 1, 'delete', 'class', NULL, 'Deleted 1 record(s) from class', '2025-09-20 06:04:55'),
(29, 1, 'insert', 'class', 66, 'Inserted new record into class', '2025-09-20 06:05:06'),
(30, 1, 'insert', 'subjects', 20, 'Inserted new record into subjects', '2025-09-20 06:05:22'),
(31, 1, 'update', 'subjects', 20, 'Updated 1 record(s) in subjects', '2025-09-20 06:05:35'),
(32, 1, 'delete', 'subjects', NULL, 'Deleted 1 record(s) from subjects', '2025-09-20 06:05:40'),
(33, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 06:09:27'),
(34, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 14:09:27'),
(35, 1, 'insert', 'logs', 34, 'Inserted new record into logs', '2025-09-20 06:09:27'),
(36, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 06:18:15'),
(37, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 14:18:15'),
(38, 1, 'insert', 'logs', 37, 'Inserted new record into logs', '2025-09-20 06:18:15'),
(39, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 06:21:46'),
(40, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 14:21:48'),
(41, 1, 'insert', 'logs', 40, 'Inserted new record into logs', '2025-09-20 06:21:48'),
(42, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 06:35:55'),
(43, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 14:35:55'),
(44, 1, 'insert', 'logs', 43, 'Inserted new record into logs', '2025-09-20 06:35:55'),
(45, 1, 'insert', 'schedules', 7, 'Inserted new record into schedules', '2025-09-20 06:36:47'),
(46, 1, 'insert', 'schedules', 8, 'Inserted new record into schedules', '2025-09-20 06:37:16'),
(47, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 07:00:10'),
(48, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 15:00:10'),
(49, 1, 'insert', 'logs', 48, 'Inserted new record into logs', '2025-09-20 07:00:10'),
(50, 1, 'update', 'schedules', 8, 'Updated 1 record(s) in schedules', '2025-09-20 07:00:48'),
(51, 1, 'insert', 'schedules', 9, 'Inserted new record into schedules', '2025-09-20 07:01:41'),
(52, 1, 'insert', 'schedules', 10, 'Inserted new record into schedules', '2025-09-20 07:02:31'),
(53, 1, 'insert', 'class', 67, 'Inserted new record into class', '2025-09-20 07:03:48'),
(54, 1, 'insert', 'subjects', 21, 'Inserted new record into subjects', '2025-09-20 07:04:09'),
(55, 1, 'update', 'subjects', 21, 'Updated 1 record(s) in subjects', '2025-09-20 07:04:26'),
(56, 1, 'update', 'subjects', 21, 'Updated 1 record(s) in subjects', '2025-09-20 07:04:56'),
(57, 1, 'insert', 'rooms', 5, 'Inserted new record into rooms', '2025-09-20 07:05:23'),
(58, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 07:08:41'),
(59, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-20 15:08:42'),
(60, 2, 'insert', 'logs', 59, 'Inserted new record into logs', '2025-09-20 07:08:42'),
(61, 2, 'insert', 'schedules', 11, 'Inserted new record into schedules', '2025-09-20 07:09:42'),
(62, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 07:10:13'),
(63, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 15:10:13'),
(64, 1, 'insert', 'logs', 63, 'Inserted new record into logs', '2025-09-20 07:10:13'),
(65, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 08:42:23'),
(66, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 08:42:23'),
(67, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 16:42:24'),
(68, 1, 'insert', 'logs', 67, 'Inserted new record into logs', '2025-09-20 08:42:24'),
(69, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-20 16:42:25'),
(70, 1, 'insert', 'logs', 69, 'Inserted new record into logs', '2025-09-20 08:42:25'),
(71, 1, 'insert', 'schedules', 12, 'Inserted new record into schedules', '2025-09-20 08:43:00'),
(72, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 02:51:04'),
(73, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 10:51:08'),
(74, 1, 'insert', 'logs', 73, 'Inserted new record into logs', '2025-09-21 02:51:08'),
(75, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-21 02:51:28'),
(76, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-21 10:51:30'),
(77, 2, 'insert', 'logs', 76, 'Inserted new record into logs', '2025-09-21 02:51:30'),
(78, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 02:52:14'),
(79, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 10:52:15'),
(80, 1, 'insert', 'logs', 79, 'Inserted new record into logs', '2025-09-21 02:52:15'),
(81, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-21 02:52:28'),
(82, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-21 10:52:29'),
(83, 2, 'insert', 'logs', 82, 'Inserted new record into logs', '2025-09-21 02:52:29'),
(84, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 04:34:51'),
(85, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 12:34:52'),
(86, 1, 'insert', 'logs', 85, 'Inserted new record into logs', '2025-09-21 04:34:52'),
(87, 1, 'insert', 'class', 68, 'Inserted new record into class', '2025-09-21 04:35:31'),
(88, 1, 'update', 'class', 68, 'Updated 1 record(s) in class', '2025-09-21 04:35:39'),
(89, 1, 'insert', 'subjects', 22, 'Inserted new record into subjects', '2025-09-21 04:36:06'),
(90, 1, 'update', 'subjects', 22, 'Updated 1 record(s) in subjects', '2025-09-21 04:36:19'),
(91, 1, 'update', 'subjects', 22, 'Updated 1 record(s) in subjects', '2025-09-21 04:36:59'),
(92, 1, 'insert', 'rooms', 6, 'Inserted new record into rooms', '2025-09-21 04:37:24'),
(93, 1, 'insert', 'schedules', 13, 'Inserted new record into schedules', '2025-09-21 04:38:01'),
(94, 1, 'insert', 'schedules', 14, 'Inserted new record into schedules', '2025-09-21 04:39:04'),
(95, 1, 'insert', 'schedules', 15, 'Inserted new record into schedules', '2025-09-21 04:40:23'),
(96, 1, 'delete', 'schedules', NULL, 'Deleted 1 record(s) from schedules', '2025-09-21 04:40:58'),
(97, 1, 'delete', 'schedules', NULL, 'Deleted 1 record(s) from schedules', '2025-09-21 04:41:07'),
(98, 1, 'delete', 'schedules', NULL, 'Deleted 1 record(s) from schedules', '2025-09-21 04:41:14'),
(99, 1, 'insert', 'schedules', 16, 'Inserted new record into schedules', '2025-09-21 04:41:54'),
(100, 1, 'insert', 'schedules', 17, 'Inserted new record into schedules', '2025-09-21 04:42:19'),
(101, 1, 'update', 'schedules', 11, 'Updated 1 record(s) in schedules', '2025-09-21 04:42:41'),
(102, 1, 'update', 'schedules', 17, 'Updated 1 record(s) in schedules', '2025-09-21 04:43:49'),
(103, 1, 'update', 'users', 1, 'Updated 1 record(s) in users', '2025-09-21 04:44:45'),
(104, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 05:17:27'),
(105, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 13:17:28'),
(106, 1, 'insert', 'logs', 105, 'Inserted new record into logs', '2025-09-21 05:17:28'),
(107, 1, 'insert', 'class', 69, 'Inserted new record into class', '2025-09-21 05:17:57'),
(108, 1, 'update', 'class', 69, 'Updated 1 record(s) in class', '2025-09-21 05:18:14'),
(109, 1, 'insert', 'subjects', 23, 'Inserted new record into subjects', '2025-09-21 05:18:32'),
(110, 1, 'update', 'subjects', 23, 'Updated 1 record(s) in subjects', '2025-09-21 05:18:47'),
(111, 1, 'update', 'subjects', 23, 'Updated 1 record(s) in subjects', '2025-09-21 05:19:30'),
(112, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-21 05:20:03'),
(113, 2, 'login', 'users', 2, 'User admin@gmail.com logged in successfully', '2025-09-21 13:20:05'),
(114, 2, 'insert', 'logs', 113, 'Inserted new record into logs', '2025-09-21 05:20:05'),
(115, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 05:20:26'),
(116, 1, 'login', 'users', 1, 'User superadmin@gmail.com logged in successfully', '2025-09-21 13:20:28'),
(117, 1, 'insert', 'logs', 116, 'Inserted new record into logs', '2025-09-21 05:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = active, 1 = inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `status`, `created_at`, `updated_at`) VALUES
(1, '101', 0, '2025-08-24 18:01:13', '2025-09-02 14:34:58'),
(2, '102', 1, '2025-08-24 18:01:13', '2025-08-24 18:01:13'),
(3, '103', 0, '2025-08-24 18:01:13', '2025-08-24 18:01:13'),
(4, '104', 1, '2025-08-24 18:01:13', '2025-08-24 18:01:13'),
(5, '105', 1, '2025-09-20 15:05:23', '2025-09-20 15:05:23'),
(6, '106', 0, '2025-09-21 12:37:24', '2025-09-21 12:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '0=Regular, 1=Special, 2=Exam, 3=Assignment',
  `description` varchar(255) DEFAULT NULL,
  `datetime_start` datetime NOT NULL,
  `datetime_end` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `room_id`, `class_id`, `type`, `description`, `datetime_start`, `datetime_end`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 1, 'Special session - Science Lab', '2025-09-02 14:00:00', '2025-09-02 16:00:00', '2025-08-25 07:19:20', '2025-08-25 07:19:20'),
(3, 3, 3, 2, 'Midterm Exam - English', '2025-08-30 18:00:00', '2025-08-30 20:00:00', '2025-08-25 07:19:20', '2025-08-25 09:30:58'),
(4, 1, 2, 3, 'Assignment submission - History', '2025-09-15 17:00:00', '2025-09-15 19:00:00', '2025-08-25 07:19:20', '2025-08-25 09:28:58'),
(6, 1, 7, 2, 'Class (A - 11 - (STEM) Science, Technology, Engineering, and Mathematics) will use room (101) for (Exam)', '2025-09-15 00:20:00', '2025-09-15 15:20:00', '2025-09-07 11:20:12', '2025-09-07 11:21:42'),
(7, 1, 66, 0, 'Class (lklnsdlfegnsjfgnhgsjdgnjd - 2032043040 - ejfdfi) will use room (101) for (Regular Class)', '2025-09-20 22:36:00', '2025-09-20 23:36:00', '2025-09-20 14:36:47', '2025-09-20 14:36:47'),
(8, 1, 66, 0, 'Class (lklnsdlfegnsjfgnhgsjdgnjd - 2032043040 - ejfdfi) will use room (101) for (Regular Class)', '2025-09-20 17:37:00', '2025-09-20 15:37:00', '2025-09-20 14:37:16', '2025-09-20 15:00:48'),
(9, 1, 65, 3, 'Class (wo - 1 - bsit) will use room (101) for (Assignment)', '2025-09-20 14:01:00', '2025-09-20 14:03:00', '2025-09-20 15:01:41', '2025-09-20 15:01:41'),
(10, 3, 1, 3, 'Class (A - 11 - (ABM) Accountancy, Business and Management) will use room (103) for (Assignment)', '2025-09-20 23:03:00', '2025-09-20 15:02:00', '2025-09-20 15:02:31', '2025-09-20 15:02:31'),
(11, 1, 2, 2, 'Class (B - 11 - (ABM) Accountancy, Business and Management) will use room (101) for (Exam)', '2025-09-21 15:09:00', '2025-09-22 15:09:00', '2025-09-20 15:09:42', '2025-09-21 12:42:41'),
(12, 1, 1, 0, 'Class (A - 11 - (ABM) Accountancy, Business and Management) will use room (101) for (Regular Class)', '2025-09-21 04:42:00', '2025-09-21 05:46:00', '2025-09-20 16:43:00', '2025-09-20 16:43:00'),
(16, 6, 1, 0, 'Class (A - 11 - (ABM) Accountancy, Business and Management) will use room (106) for (Regular Class)', '2025-09-21 20:45:00', '2025-09-21 20:50:00', '2025-09-21 12:41:54', '2025-09-21 12:41:54'),
(17, 6, 6, 0, 'Class (B - 11 - (HUMSS) Humanities and Social Sciences) will use room (106) for (Regular Class)', '2025-09-21 12:46:00', '2025-09-21 12:51:00', '2025-09-21 12:42:19', '2025-09-21 12:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `semester` tinyint(1) NOT NULL COMMENT '1 = First Sem, 2 = Second Sem',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `class_id`, `subject_name`, `semester`, `created_at`, `updated_at`) VALUES
(1, 46, 'CC101 - Purposive Communication', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(2, 46, 'CC102 - Mathematics in the Modern World', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(3, 46, 'CC103 - Understanding the Self', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(4, 46, 'CC104 - Philippine History', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(5, 46, 'CC105 - The Contemporary World', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(6, 46, 'CC106 - Physical Education 1', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(7, 46, 'CC107 - National Service Training Program 1 (NSTP 1)', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(8, 46, 'CC108 - Introduction to Computing', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(9, 46, 'CC109 - Living in the IT Era', 1, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(10, 46, 'CC201 - Readings in Philippine History', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(11, 46, 'CC202 - Ethics', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(12, 46, 'CC203 - Science, Technology, and Society', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(13, 46, 'CC204 - Art Appreciation', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(14, 46, 'CC205 - Physical Education 2', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(15, 46, 'CC206 - National Service Training Program 2 (NSTP 2)', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(16, 46, 'CC207 - Programming 1 (Java Fundamentals)', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(17, 46, 'CC208 - The Life and Works of Rizal', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(18, 46, 'CC209 - Writing in the Discipline', 2, '2025-08-24 17:27:22', '2025-08-24 17:27:22'),
(19, 1, 'Filipino', 1, '2025-09-07 11:23:23', '2025-09-07 11:23:23'),
(21, 67, 'awuergghdghdfhdfh', 1, '2025-09-20 15:04:09', '2025-09-20 15:04:56'),
(22, 68, 'hotdogs', 2, '2025-09-21 12:36:06', '2025-09-21 12:36:59'),
(23, 69, 'wew', 1, '2025-09-21 13:18:32', '2025-09-21 13:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `role` enum('Student','Instructor','Admin','SuperAdmin') DEFAULT 'Student',
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `password`, `profile`, `role`, `email`, `created_at`) VALUES
(1, 'Super', 'm', 'Admin', 'b74f1008b95efcf69615860e9c2fe19b', '/storage/uploads/OzxcoFXwjGOPqEKkwB2W91mdfyyAU6rIHUZZ0bra.png', 'SuperAdmin', 'superadmin@gmail.com', '2025-08-23 08:03:31'),
(2, 'Admin', 'null', 'Admins', 'b74f1008b95efcf69615860e9c2fe19b', '/storage/uploads/dedMfYz6bX7y8qmj7deYn77p29xyvG1JVWwwDREN.png', 'Admin', 'admin@gmail.com', '2025-08-23 08:03:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_number` (`room_number`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
