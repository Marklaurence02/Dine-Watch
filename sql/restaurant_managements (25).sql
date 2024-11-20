-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 04:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dine-watch`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `log_id` int(11) NOT NULL,
  `action_by` int(11) DEFAULT NULL,
  `action_type` enum('Login','Logout','Create Reservation','Update Reservation','Cancel Reservation','Order Placed','Order Updated','Order Canceled','Add Product','Update Product','Delete Product') DEFAULT NULL,
  `action_details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`log_id`, `action_by`, `action_type`, `action_details`, `created_at`) VALUES
(3, 1, 'Login', 'Mark Laurence l. caringal jr logged in', '2024-11-07 01:01:05'),
(4, 6, 'Login', 'jcaringal logged in', '2024-11-07 01:04:49'),
(5, 6, 'Add Product', 'Added a new product: Pizzasdf (Category ID: 1)', '2024-11-07 01:06:11'),
(6, 6, 'Add Product', 'Added a new product: pepsi (Category ID: 2)', '2024-11-07 01:06:45'),
(7, 6, 'Logout', 'jcaringal logged out', '2024-11-07 01:11:11'),
(8, 7, 'Login', 'Mark Laurence l. caringal1 wq logged in', '2024-11-07 01:11:50'),
(9, 7, 'Logout', 'mcaringal1 logged out', '2024-11-07 01:21:03'),
(10, 6, 'Login', 'jcaringal logged in', '2024-11-07 01:21:31'),
(11, 6, 'Logout', 'jcaringal logged out', '2024-11-07 01:22:29'),
(12, 6, 'Login', 'jcaringal logged in', '2024-11-07 01:26:29'),
(14, 6, 'Logout', 'jcaringal logged out', '2024-11-07 05:05:07'),
(15, 6, 'Login', 'jcaringal logged in', '2024-11-07 05:05:36'),
(16, 6, 'Logout', 'jcaringal logged out', '2024-11-07 05:15:02'),
(17, 6, 'Login', 'jcaringal logged in', '2024-11-07 05:15:12'),
(18, 7, 'Login', 'Mark Laurence l. caringal1 wq logged in', '2024-11-07 05:19:29'),
(19, 7, 'Login', 'Mark Laurence l. caringal1 wq logged in', '2024-11-07 06:05:17'),
(20, 7, 'Logout', 'mcaringal1 logged out', '2024-11-07 06:07:30'),
(21, 7, 'Logout', 'mcaringal1 logged out', '2024-11-07 06:07:46'),
(22, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:08:24'),
(23, 7, 'Login', 'Mark Laurence l. caringal1 wq logged in', '2024-11-07 06:08:33'),
(24, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:12:47'),
(25, 7, 'Login', 'Mark Laurence l. caringal1 wq logged in', '2024-11-07 06:12:57'),
(26, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:15:28'),
(27, 7, 'Login', 'Mark Laurence l. caringal1 wq logged in', '2024-11-07 06:15:49'),
(28, 7, 'Logout', 'mcaringal1 logged out', '2024-11-07 06:16:50'),
(29, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:17:05'),
(30, 7, 'Logout', 'mcaringal1 logged out', '2024-11-07 06:20:25'),
(31, 6, 'Logout', 'jcaringal logged out', '2024-11-07 06:25:49'),
(32, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:28:38'),
(33, 6, 'Logout', 'jcaringal logged out', '2024-11-07 06:34:11'),
(34, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:34:31'),
(35, 6, 'Logout', 'jcaringal logged out', '2024-11-07 06:43:35'),
(36, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:43:39'),
(37, 6, 'Logout', 'jcaringal logged out', '2024-11-07 06:43:50'),
(38, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:44:32'),
(39, 6, 'Logout', 'jcaringal logged out', '2024-11-07 06:45:49'),
(40, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:45:53'),
(41, 6, 'Logout', 'jcaringal logged out', '2024-11-07 06:46:28'),
(42, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:46:42'),
(43, 6, 'Logout', 'jcaringal logged out', '2024-11-07 06:50:17'),
(44, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:50:22'),
(45, 6, 'Login', 'jcaringal logged in', '2024-11-07 06:54:39'),
(46, 6, 'Login', 'jcaringal logged in', '2024-11-07 07:37:38'),
(47, 6, 'Add Product', 'Added a new product: da (Category ID: 1)', '2024-11-07 09:28:21'),
(48, 6, 'Login', 'jcaringal logged in', '2024-11-08 08:36:02'),
(52, 6, 'Login', 'jcaringal logged in', '2024-11-08 08:51:27'),
(59, 6, 'Login', 'jcaringal logged in', '2024-11-08 09:54:13'),
(60, 6, 'Login', 'jcaringal logged in', '2024-11-08 11:19:54'),
(61, 6, 'Add Product', 'Added a new product: 123 (Category ID: 1)', '2024-11-08 11:27:58'),
(62, 6, 'Login', 'jcaringal logged in', '2024-11-08 11:44:44'),
(63, 6, 'Login', 'jcaringal logged in', '2024-11-09 11:45:37'),
(64, 9, 'Login', '123455 logged in', '2024-11-09 14:15:15'),
(65, 9, 'Login', '123455 logged in', '2024-11-09 14:21:02'),
(66, 9, 'Login', '123455 logged in', '2024-11-09 14:25:23'),
(67, 9, 'Login', '123455 logged in', '2024-11-09 14:26:22'),
(68, 9, 'Login', '123455 logged in', '2024-11-09 14:29:41'),
(69, 6, 'Login', 'jcaringal logged in', '2024-11-09 14:31:17'),
(70, 9, 'Login', '123455 logged in', '2024-11-09 14:31:26'),
(71, 9, 'Login', '123455 logged in', '2024-11-10 23:29:33'),
(72, 9, 'Login', '123455 logged in', '2024-11-10 23:34:25'),
(73, 9, 'Login', '123455 logged in', '2024-11-10 23:36:23'),
(74, 6, 'Login', 'jcaringal logged in', '2024-11-10 23:44:18'),
(75, 6, 'Login', 'jcaringal logged in', '2024-11-11 00:30:14'),
(76, 6, 'Login', 'jcaringal logged in', '2024-11-11 00:30:36'),
(77, 6, 'Login', 'jcaringal logged in', '2024-11-11 00:44:59'),
(78, 6, 'Login', 'jcaringal logged in', '2024-11-11 04:56:20'),
(79, 6, 'Login', 'jcaringal logged in', '2024-11-11 07:58:39'),
(80, 9, 'Login', '123455 logged in', '2024-11-13 01:02:39'),
(81, 9, 'Login', '123455 logged in', '2024-11-13 01:05:51'),
(82, 9, 'Login', '123455 logged in', '2024-11-13 01:10:37'),
(83, 9, 'Login', '123455 logged in', '2024-11-13 01:11:22'),
(84, 9, 'Login', '123455 logged in', '2024-11-13 01:13:27'),
(85, 6, 'Login', 'jcaringal logged in', '2024-11-13 01:14:24'),
(86, 9, 'Login', '123455 logged in', '2024-11-13 01:20:07'),
(87, 9, 'Login', '123455 logged in', '2024-11-13 01:22:30'),
(88, 9, 'Login', '123455 logged in', '2024-11-13 01:25:36'),
(89, 9, 'Login', '123455 logged in', '2024-11-13 01:33:52'),
(90, 9, 'Login', '123455 logged in', '2024-11-13 01:35:53'),
(91, 9, 'Login', '123455 logged in', '2024-11-13 01:36:04'),
(92, 9, 'Login', '123455 logged in', '2024-11-13 01:38:59'),
(93, 9, 'Login', '123455 logged in', '2024-11-13 01:50:27'),
(94, 9, 'Login', '123455 logged in', '2024-11-13 01:51:00'),
(95, 9, 'Login', '123455 logged in', '2024-11-13 01:52:51'),
(96, 6, 'Login', 'jcaringal logged in', '2024-11-13 01:53:58'),
(97, 9, 'Login', '123455 logged in', '2024-11-13 02:06:46'),
(98, 9, 'Login', '123455 logged in', '2024-11-13 23:47:23'),
(99, 9, 'Login', '123455 logged in', '2024-11-13 23:52:04'),
(100, 9, 'Login', '123455 logged in', '2024-11-13 23:52:29'),
(101, 9, 'Login', '123455 logged in', '2024-11-13 23:53:05'),
(102, 6, 'Login', 'jcaringal logged in', '2024-11-14 00:10:43'),
(106, 6, 'Login', 'jcaringal logged in', '2024-11-14 00:30:10'),
(107, 6, 'Login', 'jcaringal logged in', '2024-11-14 00:40:36'),
(113, 6, 'Login', 'jcaringal logged in', '2024-11-14 02:37:59'),
(114, 10, 'Login', 'mcaringal4 logged in', '2024-11-14 02:41:37'),
(115, 9, 'Login', '123455 logged in', '2024-11-14 03:12:28'),
(116, 10, 'Login', 'mcaringal4 logged in', '2024-11-14 03:31:37'),
(117, 9, 'Login', '123455 logged in', '2024-11-14 04:08:30'),
(118, 10, 'Login', 'mcaringal4 logged in', '2024-11-14 13:10:30'),
(119, 10, 'Login', 'mcaringal4 logged in', '2024-11-14 14:21:52'),
(120, 10, 'Login', 'mcaringal4 logged in', '2024-11-15 09:07:41'),
(121, 10, 'Login', 'mcaringal4 logged in', '2024-11-15 10:11:03'),
(122, 10, 'Login', 'mcaringal4 logged in', '2024-11-15 11:16:32'),
(123, 10, 'Login', 'mcaringal4 logged in', '2024-11-15 23:35:54'),
(124, 10, 'Login', 'mcaringal4 logged in', '2024-11-16 23:37:30'),
(125, 10, 'Login', 'mcaringal4 logged in', '2024-11-17 03:05:19'),
(126, 10, 'Login', 'mcaringal4 logged in', '2024-11-17 03:07:43'),
(127, 10, 'Logout', 'mcaringal4 logged out', '2024-11-17 03:08:02'),
(128, 10, 'Login', 'mcaringal4 logged in', '2024-11-17 03:08:13'),
(129, 10, 'Logout', 'mcaringal4 logged out', '2024-11-17 03:08:35'),
(130, 10, 'Login', 'mcaringal4 logged in', '2024-11-17 03:08:46'),
(131, 9, 'Login', '123455 logged in', '2024-11-17 03:09:20'),
(132, 9, 'Logout', '123455 logged out', '2024-11-17 03:09:44'),
(133, 10, 'Login', 'mcaringal4 logged in', '2024-11-17 03:12:00'),
(134, 10, 'Logout', 'mcaringal4 logged out', '2024-11-17 03:24:45'),
(135, NULL, 'Delete Product', 'Deleted product: da', '2024-11-17 10:33:33'),
(136, NULL, 'Update Product', 'Updated product: Pizzasdf (Category ID: 1)', '2024-11-17 13:31:29'),
(137, NULL, 'Update Product', 'Updated product: Pizzasdf (Category ID: 1)', '2024-11-17 13:37:28'),
(138, NULL, 'Update Product', 'Updated product: Pizzasdf (Category ID: 1)', '2024-11-17 14:29:37'),
(139, NULL, 'Update Product', 'Updated product: Pizzasdf (Category ID: 1)', '2024-11-17 14:29:45'),
(140, NULL, 'Update Product', 'Updated product: Pizzasdf (Category ID: 1)', '2024-11-17 15:08:36'),
(141, NULL, 'Update Product', 'Updated product: Pizzasdf (Category ID: 1)', '2024-11-17 15:47:30'),
(142, NULL, 'Update Product', 'Updated product: Pizzasdf (Category ID: 1)', '2024-11-18 01:11:46'),
(143, NULL, 'Update Product', 'Updated product: Pizzasdf2 (Category ID: 1)', '2024-11-18 01:13:12'),
(144, NULL, 'Update Product', 'Updated product: Pizzasdf2 (Category ID: 1)', '2024-11-18 01:29:31'),
(145, NULL, 'Update Product', 'Updated product: Pizzasdf2 (Category ID: 1)', '2024-11-18 01:29:46'),
(146, NULL, 'Update Product', 'Updated product: Pizzasdf2 (Category ID: 1)', '2024-11-18 01:31:11'),
(147, 10, 'Logout', 'mcaringal4 logged out', '2024-11-18 02:56:38'),
(148, 10, 'Logout', 'mcaringal4 logged out', '2024-11-18 09:00:44'),
(149, NULL, 'Update Product', 'Updated product: Pizzasdf2 (Category ID: 1)', '2024-11-18 14:39:04'),
(150, NULL, 'Update Product', 'Updated product: Pizzasdf212 (Category ID: 1)', '2024-11-18 14:39:13'),
(151, NULL, 'Update Product', 'Updated product: Pizzasdf2122112221 (Category ID: 1)', '2024-11-18 14:39:23'),
(152, NULL, 'Update Product', 'Updated product: Pizzasdf2122112221 (Category ID: 1)', '2024-11-18 14:39:40'),
(153, NULL, 'Update Product', 'Updated product: Pizzasdf2122112221 (Category ID: 1)', '2024-11-18 14:41:35'),
(154, NULL, 'Update Product', 'Updated product: Pizzasdf2122112221 (Category ID: 1)', '2024-11-18 14:43:18'),
(155, NULL, 'Update Product', 'Updated product: pepsi (Category ID: 2)', '2024-11-18 14:44:33'),
(156, NULL, 'Update Product', 'Updated product: Pizzasdf21 (Category ID: 1)', '2024-11-18 14:46:04'),
(157, NULL, 'Update Product', 'Updated product: Pizzasdf21 (Category ID: 1)', '2024-11-18 14:49:47'),
(158, NULL, '', 'Deleted table number: 4', '2024-11-18 15:10:45'),
(159, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-18 15:13:10'),
(160, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-18 15:13:29'),
(161, NULL, '', 'Updated table ID: 3 with table number: 0', '2024-11-18 15:45:40'),
(162, NULL, '', 'Updated table ID: 4 with table number: 0', '2024-11-18 15:47:32'),
(163, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:11:21'),
(164, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:11:36'),
(165, NULL, '', 'Updated table ID: 3 with table number: 0', '2024-11-19 00:11:53'),
(166, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:12:31'),
(167, NULL, '', 'Updated table ID: 6 with table number: 0', '2024-11-19 00:15:25'),
(168, NULL, '', 'Updated table ID: 6 with table number: 0', '2024-11-19 00:15:36'),
(169, NULL, '', 'Updated table ID: 6 with table number: 0', '2024-11-19 00:15:45'),
(170, NULL, '', 'Updated table ID: 2 with table number: 0', '2024-11-19 00:15:54'),
(171, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:27:23'),
(172, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:27:31'),
(173, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:34:09'),
(174, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:35:05'),
(175, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:35:13'),
(176, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:35:38'),
(177, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:35:57'),
(178, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:36:18'),
(179, NULL, '', 'Updated table ID: 2 with table number: 0', '2024-11-19 00:38:03'),
(180, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:38:10'),
(181, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:38:34'),
(182, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:38:39'),
(183, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:43:33'),
(184, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:43:41'),
(185, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:44:28'),
(186, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:44:39'),
(187, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:49:54'),
(188, NULL, '', 'Updated table ID: 1 with table number: 0', '2024-11-19 00:51:21'),
(189, NULL, '', 'Updated table ID: 1 with table number: 12', '2024-11-19 00:59:44'),
(190, NULL, '', 'Updated table ID: 1 with table number: 12', '2024-11-19 01:00:15'),
(191, NULL, '', 'Updated table ID: 1 with table number: 12', '2024-11-19 01:00:29'),
(192, 10, 'Logout', 'mcaringal4 logged out', '2024-11-19 05:05:00'),
(193, 10, 'Logout', 'Mark12 logged out', '2024-11-19 14:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_group_message` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender_id`, `receiver_id`, `message`, `timestamp`, `is_group_message`) VALUES
(74, 6, 8, 'aw', '2024-11-13 01:58:11', 0),
(75, 6, 8, 'asd', '2024-11-13 01:58:13', 0),
(76, 6, 8, 'a', '2024-11-13 01:58:52', 0),
(77, 6, 8, 'sa', '2024-11-13 02:00:56', 0),
(78, 6, 8, 'as', '2024-11-13 02:01:05', 0),
(79, 6, 8, 'sa', '2024-11-13 02:02:28', 0),
(80, 6, 8, 'sa', '2024-11-13 02:02:31', 0),
(81, 6, 8, 'ssa', '2024-11-13 02:03:42', 0),
(82, 6, 8, 'sa', '2024-11-13 02:03:43', 0),
(83, 6, 8, 'sada', '2024-11-13 02:05:47', 0),
(84, 6, 8, 'sa', '2024-11-13 02:05:48', 0),
(85, 7, 9, 'sasa', '2024-11-13 02:20:37', 0),
(87, 9, 7, 'h;asb', '2024-11-13 02:42:08', 0),
(88, 7, 9, 'sad', '2024-11-13 02:42:45', 0),
(89, 9, 8, 'wa', '2024-11-13 23:53:43', 0),
(90, 9, 8, 'XZ', '2024-11-14 00:11:10', 0),
(91, 8, 6, 'sad', '2024-11-14 00:27:28', 0),
(92, 11, 9, 'gfdfh', '2024-11-14 03:09:16', 0),
(93, 11, 9, 'putanginamo chester', '2024-11-14 03:09:26', 0),
(94, 9, 11, 'hjgjhg', '2024-11-14 03:13:10', 0),
(95, 11, 9, 'adsfsghj', '2024-11-14 03:15:12', 0),
(96, 10, 8, 'bdg', '2024-11-14 03:59:53', 0),
(97, 11, 9, 'sgv', '2024-11-14 04:07:19', 0),
(98, 9, 7, 'asd', '2024-11-20 01:12:54', 0),
(99, 7, 9, 'df', '2024-11-20 01:18:43', 0),
(100, 7, 9, 'ds', '2024-11-20 01:19:58', 0),
(101, 7, 9, 'sa', '2024-11-20 01:26:57', 0),
(102, 7, 9, 'we', '2024-11-20 01:35:13', 0),
(103, 7, 9, 'we', '2024-11-20 01:35:30', 0),
(104, 7, 9, 'asd', '2024-11-20 01:37:30', 0),
(105, 7, 9, 'No Refund Policy?', '2024-11-20 01:45:22', 0),
(106, 7, 9, 'What time Dine&Watch Open', '2024-11-20 01:45:40', 0),
(107, 7, 9, 'What time Dine&Watch Open', '2024-11-20 01:45:40', 0),
(108, 7, 9, 'What time Dine&Watch Open', '2024-11-20 01:45:41', 0),
(109, 7, 9, 'What time Dine&Watch Open', '2024-11-20 01:45:41', 0),
(110, 7, 9, 'What time Dine&Watch Open', '2024-11-20 01:45:42', 0),
(111, 7, 9, 'What time Dine&Watch Open', '2024-11-20 01:45:43', 0),
(112, 7, 9, 'qwe', '2024-11-20 01:46:15', 0),
(113, 7, 9, 'qwe', '2024-11-20 01:46:15', 0),
(114, 7, 9, 'wqe', '2024-11-20 01:46:23', 0),
(115, 7, 9, 'wqe', '2024-11-20 01:46:23', 0),
(116, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:06', 0),
(117, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:06', 0),
(118, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:07', 0),
(119, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:07', 0),
(120, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:07', 0),
(121, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:07', 0),
(122, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:08', 0),
(123, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:08', 0),
(124, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:08', 0),
(125, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:08', 0),
(126, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:08', 0),
(127, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:09', 0),
(128, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:09', 0),
(129, 7, 9, 'No Refund Policy?', '2024-11-20 01:47:14', 0),
(130, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:10', 0),
(131, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:11', 0),
(132, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:11', 0),
(133, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:11', 0),
(134, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:12', 0),
(135, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:12', 0),
(136, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:13', 0),
(137, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:13', 0),
(138, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:15', 0),
(139, 7, 9, 'No Refund Policy?', '2024-11-20 01:48:31', 0),
(140, 7, 9, 'sd', '2024-11-20 01:49:24', 0),
(141, 7, 9, 'No Refund Policy?', '2024-11-20 01:57:35', 0),
(142, 7, 9, 'No Refund Policy?', '2024-11-20 01:58:04', 0),
(143, 7, 9, 'FAQ', '2024-11-20 01:58:18', 0),
(144, 7, 9, 'as', '2024-11-20 02:09:59', 0),
(145, 7, 9, 'hi', '2024-11-20 02:19:25', 0),
(146, 7, 9, 'asd', '2024-11-20 02:22:20', 0),
(147, 7, 9, 'HI', '2024-11-20 02:36:40', 0),
(148, 7, 9, 'IUGHIGIU', '2024-11-20 02:37:32', 0),
(149, 7, 9, 'adnk;s', '2024-11-20 03:18:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chat_responses`
--

CREATE TABLE `chat_responses` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `response` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_reservations`
--

CREATE TABLE `data_reservations` (
  `reservation_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `status` enum('Pending','Complete','Canceled','Rescheduled','Paid') DEFAULT 'Pending',
  `custom_note` varchar(255) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `error_logs`
--

CREATE TABLE `error_logs` (
  `log_id` int(11) NOT NULL,
  `error_message` text DEFAULT NULL,
  `error_type` varchar(100) DEFAULT NULL,
  `occurred_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `feedback_text` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `order_details` text DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `order_time` datetime DEFAULT current_timestamp(),
  `status` enum('Pending','In-Progress','Completed','Canceled','paid in advance') DEFAULT 'Pending',
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_method` varchar(50) DEFAULT 'Credit Card'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `reservation_id`, `order_details`, `total_amount`, `order_time`, `status`, `feedback`, `created_at`, `updated_at`, `payment_method`) VALUES
(1, 7, 1, 'Product Name: pepsi | Quantity: 1 | Price: 213.00', 213.00, '2024-11-19 20:42:42', 'paid in advance', NULL, '2024-11-19 12:42:42', '2024-11-19 12:42:42', 'Credit Card'),
(2, 7, 2, 'Product Name: 123 | Quantity: 1 | Price: 12.00; Product Name: pepsi | Quantity: 1 | Price: 213.00', 225.00, '2024-11-19 20:43:54', 'paid in advance', NULL, '2024-11-19 12:43:54', '2024-11-19 12:43:54', 'Credit Card'),
(3, 7, 3, 'Product Name: pepsi | Quantity: 2 | Price: 426.00; Product Name: Pizzasdf21 | Quantity: 5 | Price: 10.00', 436.00, '2024-11-20 08:45:00', 'paid in advance', NULL, '2024-11-20 00:45:00', '2024-11-20 00:45:00', 'Credit Card'),
(4, 7, 4, 'Product Name: pepsi | Quantity: 1 | Price: 213.00; Product Name: Pizzasdf21 | Quantity: 1 | Price: 2.00', 2334.00, '2024-11-20 09:00:21', 'paid in advance', NULL, '2024-11-20 01:00:21', '2024-11-20 01:00:21', 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `order_cancellations`
--

CREATE TABLE `order_cancellations` (
  `cancellation_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `cancellation_reason` text DEFAULT NULL,
  `canceled_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`category_id`, `category_name`) VALUES
(1, 'pizza32'),
(2, 'drinks'),
(3, 'pizza 1');

-- --------------------------------------------------------

--
-- Table structure for table `product_items`
--

CREATE TABLE `product_items` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `special_instructions` text DEFAULT NULL,
  `product_image` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quantity` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_items`
--

INSERT INTO `product_items` (`product_id`, `product_name`, `price`, `special_instructions`, `product_image`, `created_at`, `updated_at`, `quantity`, `category_id`) VALUES
(1, 'Pizzasdf21', 2121.00, '12', '../Uploads/673b51ace3901_istockphoto-1371910917-612x612.jpg', '2024-11-07 01:06:11', '2024-11-18 14:49:47', 231, 1),
(2, 'pepsi', 213.00, '234', '../Uploads/672c12a5ee9a4_images.jpg', '2024-11-07 01:06:45', '2024-11-18 14:44:32', 4, 2),
(4, '123', 12.00, '123', '../Uploads/672df5be5a200_images (1).jpg', '2024-11-08 11:27:58', '2024-11-08 11:27:58', 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `receipt_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_method` varchar(50) DEFAULT 'Credit Card'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`receipt_id`, `order_id`, `user_id`, `total_amount`, `receipt_date`, `payment_method`) VALUES
(1, 1, 7, 213.00, '2024-11-19 12:42:42', 'Credit Card'),
(2, 2, 7, 225.00, '2024-11-19 12:43:54', 'Credit Card'),
(3, 3, 7, 436.00, '2024-11-20 00:45:00', 'Credit Card'),
(4, 4, 7, 2334.00, '2024-11-20 01:00:21', 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_items`
--

CREATE TABLE `receipt_items` (
  `receipt_item_id` int(11) NOT NULL,
  `receipt_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt_items`
--

INSERT INTO `receipt_items` (`receipt_item_id`, `receipt_id`, `reservation_id`, `user_id`, `product_id`, `quantity`, `item_total_price`) VALUES
(1, 1, 1, 7, 2, 1, 213.00),
(2, 2, 2, 7, 2, 1, 213.00),
(3, 2, 2, 7, 4, 1, 12.00),
(4, 3, 3, 7, 2, 2, 426.00),
(5, 3, 3, 7, 1, 5, 10.00),
(7, 4, 4, 7, 1, 1, 2.00),
(8, 4, 4, 7, 2, 1, 213.00);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `status` enum('Pending','Complete','Canceled','Rescheduled','Paid') DEFAULT 'Pending',
  `custom_note` varchar(255) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `user_id`, `table_id`, `reservation_date`, `reservation_time`, `status`, `custom_note`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2024-11-19', '07:00:00', 'Paid', 'ert', NULL, '2024-11-19 12:41:59', '2024-11-19 12:42:42'),
(2, 7, 1, '2024-11-19', '08:15:00', 'Paid', 'ssdf', NULL, '2024-11-19 12:43:23', '2024-11-19 12:43:54'),
(3, 7, 1, '2024-11-19', '09:30:00', 'Paid', 'ERR', NULL, '2024-11-19 12:58:07', '2024-11-20 00:45:00'),
(4, 7, 1, '2024-11-20', '07:00:00', 'Paid', '', NULL, '2024-11-20 00:49:38', '2024-11-20 01:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_ids`
--

CREATE TABLE `reservation_ids` (
  `reservation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_reschedule`
--

CREATE TABLE `reservation_reschedule` (
  `reschedule_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `old_reservation_time` datetime DEFAULT NULL,
  `new_reservation_time` datetime DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `user_id`, `session_token`, `created_at`, `expires_at`) VALUES
(11, 10, '87db7e0aa139a360a86061f661f6ecc4c48a1350d41dbdde422ce53871be85b3', '2024-11-17 03:25:56', '2024-11-17 05:25:56'),
(12, 10, '013ca2af4b204274346f902eba5aaecafa4b53e5513df52f56f1f2d884a62e0f', '2024-11-17 03:27:12', '2024-11-17 05:27:12'),
(13, 10, '0191819a19e089e7c686fde4beb191d3b13e28f7bd9d30ee6d2cc5f05920365c', '2024-11-17 03:27:44', '2024-11-17 05:27:44'),
(14, 10, 'd0df5b39455b6e0f938d6af7fc88b3fb34dff920aab7d9cbd480a2e6f5d2ab90', '2024-11-17 03:28:07', '2024-11-17 05:28:07'),
(15, 10, 'fa624a3ec3acd8d8b22db5d90660050b6664e537fa679cf9dd61ca8940cfbb8e', '2024-11-17 03:31:19', '2024-11-17 05:31:19'),
(18, 10, '67fc77bfe383f2744fc4ec5615e91eeaa4d6946a42789851d2e93a16b49f13cb', '2024-11-18 09:15:04', '2024-11-18 11:15:04'),
(19, 10, '07cdd3fe64b1a814076fd4685ac9c02f978fec6b53f9c52b826f471c10ff8fcd', '2024-11-18 14:22:42', '2024-11-18 16:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `table_id` int(11) NOT NULL,
  `table_number` int(11) NOT NULL,
  `seating_capacity` int(11) NOT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `area` enum('Indoor','Outdoor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`table_id`, `table_number`, `seating_capacity`, `is_available`, `area`) VALUES
(1, 12, 12, 1, 'Outdoor'),
(2, 1, 0, 0, 'Indoor'),
(3, 12, 0, 1, 'Indoor'),
(4, 12, 0, 1, 'Indoor'),
(6, 0, 0, 1, 'Indoor');

-- --------------------------------------------------------

--
-- Table structure for table `table_images`
--

CREATE TABLE `table_images` (
  `image_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `position` enum('back view','left view','right view','front view') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_images`
--

INSERT INTO `table_images` (`image_id`, `table_id`, `image_path`, `uploaded_at`, `position`) VALUES
(1, 1, '../uploads/672c12c9aad00_image.jpg', '2024-11-07 01:07:21', 'front view'),
(2, 1, '../uploads/673b599945aa8_1676263252681.jpg', '2024-11-07 01:07:21', 'back view'),
(3, 1, '../uploads/672c12c9ac18d_image.jpg', '2024-11-07 01:07:21', 'left view'),
(4, 2, '../uploads/672c12e59a8f7_marvelous-city-skyline.jpg', '2024-11-07 01:07:49', 'front view'),
(5, 2, '../uploads/672c12e59b9e1_dramatic-river-views.jpg', '2024-11-07 01:07:49', 'back view'),
(6, 3, '../uploads/672c8f8b5f26a_l-intro-1678787918.jpg', '2024-11-07 09:59:39', 'front view'),
(7, 4, '../uploads/672c9049a0252_images (3).jpg', '2024-11-07 10:02:49', 'front view'),
(9, 3, '../uploads/673b612461f97_1684320192420.png', '2024-11-18 15:45:40', 'left view'),
(10, 4, '../uploads/673b61944410d_istockphoto-1371910917-612x612.jpg', '2024-11-18 15:47:32', 'back view'),
(11, 3, '../uploads/673bd7c9456ab_istockphoto-1371910917-612x612.jpg', '2024-11-19 00:11:53', 'back view'),
(12, 1, '../uploads/673be31fa3ebf_1684320192420.png', '2024-11-19 01:00:15', 'right view');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_initial` char(1) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip_code` char(5) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('Owner','Admin','Staff','General User') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('online','offline') NOT NULL DEFAULT 'offline',
  `typing` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_initial`, `last_name`, `suffix`, `contact_number`, `email`, `address`, `zip_code`, `username`, `password_hash`, `role`, `created_at`, `updated_at`, `deleted_at`, `status`, `typing`) VALUES
(1, 'Mark Laurence', 'l', 'caringal', 'jr', '09345678901', 'ha1@gmail.com', 'place', '1234', 'mcaringal', '$2y$10$U5xRKzJxyW0Lgia.SYeMZ.KK/vtWuOuwngG5M1qMsyw8jrxO.eeXy', 'General User', '2024-11-07 00:59:59', '2024-11-07 00:59:59', NULL, 'offline', 0),
(3, 'Mark Laurence', 'l', 'caringal', 'wq', '09234567891', 'ha22@gmail.com', 'place', '1234', 'mcaringal3', '$2y$10$CT/oMDS884MILfbF3/2BwOolbz1R7EIMKzZAnGPcrauQX9X5.R9RO', 'General User', '2024-11-07 01:00:59', '2024-11-07 01:00:59', NULL, 'offline', 0),
(6, 'Jack', 'l', 'caringal', 'wq', '09234567891', 'mk@gmail.com', 'place', '1234', 'jcaringal', '$2y$10$jVll8K2S6EsrZKPsWUo.POe1lv32lSQncJqkT9567wS78ZrAV3tde', 'Owner', '2024-11-07 01:04:04', '2024-11-08 08:36:02', NULL, 'online', 0),
(7, 'Mark Laurence', 'l', 'caringal1', 'wq', '09345678901', 'g@gmail.com', 'place', '1234', 'mcaringal1', '$2y$10$xXj.kj406T.ZM571znX1qeVKsAAEWVh94M0AOBaonnZvbla2nMQ8e', 'General User', '2024-11-07 01:11:42', '2024-11-08 10:59:27', NULL, 'online', 0),
(9, 'jack12', '1', 'jason', '', '09876543462', 'Jack@gmail.com', '1221', '', '123455', '$2y$10$Dk5YSAHL2G02USrQo4KateYe0q4wm9hvq8ywVD7fzWDg4dkJplC.O', 'Staff', '2024-11-09 11:46:29', '2024-11-20 01:11:33', NULL, 'online', 0),
(10, 'Mark Jack12', 'N', 'caringal', '', '09234567891', 'ha23@gmail.com', 'place12', '1231', 'Mark12', '$2y$10$ZT9OElJF0bEAfKn0Do5/gObuP0HPnetJJQs4v.n0y1XDd322G7uhe', 'Owner', '2024-11-14 02:40:10', '2024-11-19 03:35:51', NULL, 'offline', 0),
(11, 'Mark LAsdaas', 's', 'sad', 'sad', '09876543212', 'ha111@gmail.com', 'sad', '1234', 'msad', '$2y$10$vwToazZbZ20Cj5btCf54PuCGE9Cs0SSoGAxJVPgIUiuUX.mpBoZiW', 'General User', '2024-11-14 02:53:34', '2024-11-14 02:53:45', NULL, 'online', 0),
(12, 'jack12', NULL, 'sa', NULL, '09875643221', 'ha223@gmail.com', NULL, NULL, 'Mark', '$2y$10$5xl0RKLYBpYhxwop.ZwGheXANyEzVRCyhvQylAWUIm1R8MLrj7l.S', 'Admin', '2024-11-18 08:13:24', '2024-11-18 08:13:24', NULL, 'offline', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_staff_assignments`
--

CREATE TABLE `user_staff_assignments` (
  `user_id` int(11) NOT NULL,
  `assigned_staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_staff_assignments`
--

INSERT INTO `user_staff_assignments` (`user_id`, `assigned_staff_id`) VALUES
(7, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_by` (`action_by`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_responses`
--
ALTER TABLE `chat_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_reservations`
--
ALTER TABLE `data_reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `error_logs`
--
ALTER TABLE `error_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  ADD PRIMARY KEY (`cancellation_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `receipt_items`
--
ALTER TABLE `receipt_items`
  ADD PRIMARY KEY (`receipt_item_id`),
  ADD KEY `receipt_id` (`receipt_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `reservation_ids`
--
ALTER TABLE `reservation_ids`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `reservation_reschedule`
--
ALTER TABLE `reservation_reschedule`
  ADD PRIMARY KEY (`reschedule_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `session_token` (`session_token`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `table_images`
--
ALTER TABLE `table_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_staff_assignments`
--
ALTER TABLE `user_staff_assignments`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `assigned_staff_id` (`assigned_staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `chat_responses`
--
ALTER TABLE `chat_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_reservations`
--
ALTER TABLE `data_reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `error_logs`
--
ALTER TABLE `error_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  MODIFY `cancellation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_items`
--
ALTER TABLE `product_items`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `receipt_items`
--
ALTER TABLE `receipt_items`
  MODIFY `receipt_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservation_reschedule`
--
ALTER TABLE `reservation_reschedule`
  MODIFY `reschedule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_images`
--
ALTER TABLE `table_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`action_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE SET NULL;

--
-- Constraints for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  ADD CONSTRAINT `order_cancellations_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_items`
--
ALTER TABLE `product_items`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `receipts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `receipt_items`
--
ALTER TABLE `receipt_items`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `receipt_items_ibfk_1` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`receipt_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `receipt_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_items` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_staff_assignments`
--
ALTER TABLE `user_staff_assignments`
  ADD CONSTRAINT `user_staff_assignments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_staff_assignments_ibfk_2` FOREIGN KEY (`assigned_staff_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
