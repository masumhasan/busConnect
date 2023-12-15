-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 03:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhakabusroutes`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `BusID` int(11) NOT NULL,
  `BusName` varchar(255) DEFAULT NULL,
  `Schedule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`BusID`, `BusName`, `Schedule`) VALUES
(1, 'Midline Bus', 'Every Hour'),
(2, 'Nogor Poribohon', 'Every 15 minutes'),
(3, 'Alif Poribohon', 'Every 15 minutes'),
(4, 'BRTC', 'No Schedule'),
(5, 'Dhakar Chaka', 'Every 30 minutes'),
(6, 'Bikash Poribohon', 'Every 15 minutes'),
(7, 'Dhaka Transport', 'Every 15 minutes'),
(8, 'ATCL', 'Hourly'),
(9, 'Boshumoti', 'Every 15 minutes'),
(10, 'Ramjan Paribahan', 'Every 30 minutes'),
(11, 'TURAAG Poribahan', 'Every 15 minutes'),
(12, 'Transilva', 'Hourly'),
(13, 'Sunbeam Bus', 'No Schedule'),
(14, 'Silver Star', 'Every 30 minutes'),
(15, 'Rajacity Bus', 'Every 30 minutes'),
(16, 'Malancha', 'Every 15 minutes'),
(17, 'Rainbow Bus', 'Hourly'),
(18, 'Dreamliner', 'Every 30 minutes'),
(19, 'Happy Travel', 'Every 15 minutes'),
(20, 'Royal Travel', 'Every 30 minutes'),
(21, 'City Rider', 'Every 30 minutes'),
(22, 'Sunset Express', 'Every 15 minutes'),
(23, 'Greenway Bus', 'Hourly'),
(24, 'Golden Express', 'Every 30 minutes'),
(25, 'Silver Arrow', 'Every 30 minutes'),
(26, 'Star Express', 'Every 15 minutes'),
(27, 'Dynamic Bus', 'Every 30 minutes'),
(28, 'Commuter Bus', 'Every 30 minutes'),
(29, 'Metro Rider', 'Hourly'),
(30, 'Dream Bus', 'Every 15 minutes');

-- --------------------------------------------------------

--
-- Table structure for table `busstops`
--

CREATE TABLE `busstops` (
  `StopID` int(11) NOT NULL,
  `StopName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busstops`
--

INSERT INTO `busstops` (`StopID`, `StopName`) VALUES
(1, 'Mohammadpur'),
(2, 'Shankar'),
(3, 'Star Kabab'),
(4, 'Dhanmondi 15'),
(5, 'Jigatola'),
(6, 'City College'),
(7, 'Science Lab'),
(8, 'Bata Signal'),
(9, 'Shahbag'),
(10, 'Matsya Bhaban'),
(11, 'High Court'),
(12, 'Press Club'),
(13, 'Paltan'),
(14, 'Gulistan'),
(15, 'Motijheel'),
(16, 'Arambagh'),
(17, 'Kamalapur'),
(18, 'Bashabo'),
(19, 'Khilgaon'),
(20, 'Agargaon'),
(22, 'Badda'),
(23, 'Malibagh'),
(24, 'Lalbagh'),
(25, 'Moghbazar'),
(26, 'New Market'),
(27, 'Shyamoli'),
(28, 'Kallyanpur'),
(29, 'Kuril Bishwa Road'),
(30, 'Basundhara'),
(31, 'Khilgaon'),
(32, 'Shyampur'),
(33, 'Demra'),
(34, 'Mirhajaribagh'),
(35, 'Gandaria'),
(36, 'Siddikbazar'),
(37, 'Shantinagar'),
(38, 'Wari'),
(39, 'Hatirjheel'),
(40, 'Panthapath'),
(41, 'AsadGate'),
(42, 'Khamarbari'),
(43, 'Jahangir Gate'),
(44, 'Wireless'),
(45, 'Gulshan 1'),
(46, 'Badda Link Road'),
(47, 'Uttor Badda'),
(48, 'Shahjadpur'),
(49, 'Bashtola'),
(50, 'Notun Bajar'),
(52, 'Jamuna Future Park'),
(53, 'Kuril Biswa Road'),
(54, 'Gabtoli'),
(55, 'Mirpur 1'),
(56, 'Mirpur 10'),
(57, 'Kalshi'),
(58, 'Bisshoroad'),
(59, 'Airport'),
(60, 'Uttara'),
(61, 'Abdullahpur'),
(62, 'Tongi'),
(63, 'Gazipur'),
(64, 'Mirpur Sony Cinema Hall'),
(65, 'Kazipara'),
(66, 'Shewrapara'),
(67, 'Mohakhali'),
(68, 'Rampura'),
(69, 'Bonoshri'),
(70, 'Shukrabad'),
(71, 'Kolabagan'),
(72, 'GPO');

-- --------------------------------------------------------

--
-- Table structure for table `busstopsmapping`
--

CREATE TABLE `busstopsmapping` (
  `BusID` int(11) NOT NULL,
  `StopID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busstopsmapping`
--

INSERT INTO `busstopsmapping` (`BusID`, `StopID`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 41),
(1, 70),
(1, 71),
(1, 72),
(3, 22),
(3, 45),
(3, 56),
(3, 65),
(3, 66),
(3, 67),
(3, 68),
(3, 69),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 16),
(8, 41),
(8, 70),
(8, 71),
(8, 72),
(9, 55),
(9, 56),
(9, 57),
(9, 58),
(9, 59),
(9, 60),
(9, 61),
(9, 62),
(9, 63);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faretable`
--

CREATE TABLE `faretable` (
  `FareID` int(11) NOT NULL,
  `BusID` int(11) DEFAULT NULL,
  `SourceStopID` int(11) DEFAULT NULL,
  `DestinationStopID` int(11) DEFAULT NULL,
  `Fare` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faretable`
--

INSERT INTO `faretable` (`FareID`, `BusID`, `SourceStopID`, `DestinationStopID`, `Fare`) VALUES
(1, 1, 1, 2, 5),
(2, 1, 1, 3, 10),
(3, 1, 1, 4, 15),
(4, 1, 1, 5, 20),
(5, 1, 1, 6, 22),
(6, 1, 1, 7, 25),
(7, 1, 1, 8, 32),
(8, 1, 1, 9, 35),
(9, 1, 1, 10, 38),
(10, 1, 1, 11, 40),
(11, 1, 1, 12, 42),
(12, 1, 1, 13, 45),
(13, 1, 1, 14, 47),
(14, 1, 1, 15, 50),
(15, 1, 1, 16, 52),
(16, 1, 1, 17, 55),
(17, 1, 1, 18, 58),
(18, 1, 1, 19, 60),
(19, 1, 2, 3, 5),
(20, 1, 2, 4, 10),
(21, 1, 2, 5, 12),
(22, 1, 2, 6, 15),
(23, 1, 2, 7, 18),
(24, 1, 2, 8, 20),
(25, 1, 2, 9, 22),
(26, 1, 2, 10, 25),
(27, 1, 2, 11, 28),
(28, 1, 2, 12, 30),
(29, 1, 2, 13, 32),
(30, 1, 2, 14, 35),
(31, 1, 2, 15, 38),
(32, 1, 2, 16, 40),
(33, 1, 2, 17, 42),
(34, 1, 2, 18, 45),
(35, 1, 2, 19, 50),
(36, 1, 3, 4, 5),
(37, 1, 3, 5, 10),
(38, 1, 3, 6, 15),
(39, 1, 3, 7, 18),
(40, 1, 3, 8, 20),
(41, 1, 3, 9, 22),
(42, 1, 3, 10, 25),
(43, 1, 3, 11, 28),
(44, 1, 3, 12, 30),
(45, 1, 3, 14, 32),
(46, 1, 3, 15, 35),
(48, 1, 3, 16, 38),
(49, 1, 3, 17, 40),
(50, 1, 3, 18, 42),
(51, 1, 3, 19, 45),
(52, 1, 4, 5, 5),
(53, 1, 4, 6, 10),
(54, 1, 4, 7, 12),
(55, 1, 4, 8, 15),
(56, 1, 4, 9, 18),
(57, 1, 4, 10, 20),
(58, 1, 4, 11, 22),
(59, 1, 4, 12, 25),
(60, 1, 4, 14, 28),
(61, 1, 4, 15, 30),
(62, 1, 4, 16, 32),
(63, 1, 4, 17, 35),
(64, 1, 4, 18, 38),
(65, 1, 4, 19, 40),
(66, 1, 5, 6, 5),
(67, 1, 5, 7, 10),
(68, 1, 5, 8, 15),
(69, 1, 5, 9, 18),
(70, 1, 5, 10, 20),
(71, 1, 5, 11, 22),
(72, 1, 5, 12, 25),
(73, 1, 5, 13, 28),
(74, 1, 5, 14, 30),
(75, 1, 5, 15, 32),
(76, 1, 5, 16, 35),
(77, 1, 5, 17, 38),
(78, 1, 5, 18, 40),
(79, 1, 5, 19, 42),
(80, 1, 6, 7, 5),
(81, 1, 6, 8, 10),
(82, 1, 6, 9, 15),
(83, 1, 6, 10, 18),
(84, 1, 6, 11, 20),
(85, 1, 6, 12, 22),
(86, 1, 6, 13, 25),
(87, 1, 6, 14, 28),
(88, 1, 6, 15, 30),
(89, 1, 6, 16, 32),
(90, 1, 6, 16, 35),
(91, 1, 6, 17, 38),
(92, 1, 6, 18, 40),
(93, 1, 6, 18, 42),
(94, 1, 6, 19, 45),
(95, 1, 7, 8, 5),
(96, 1, 7, 9, 10),
(97, 1, 7, 10, 12),
(98, 1, 8, 11, 15),
(99, 1, 8, 12, 18),
(100, 1, 8, 13, 20),
(101, 1, 8, 14, 22),
(102, 1, 8, 15, 25),
(103, 1, 8, 16, 28),
(104, 1, 8, 17, 30),
(105, 1, 8, 18, 32),
(106, 1, 8, 19, 35),
(107, 1, 9, 10, 5),
(108, 1, 9, 11, 10),
(109, 1, 9, 12, 12),
(110, 1, 9, 13, 15),
(111, 1, 9, 14, 18),
(112, 1, 9, 15, 20),
(113, 1, 9, 16, 22),
(114, 1, 9, 17, 25),
(115, 1, 9, 18, 28),
(116, 1, 10, 11, 5),
(117, 1, 10, 12, 10),
(118, 1, 10, 13, 15),
(119, 1, 10, 14, 18),
(120, 1, 10, 15, 20),
(121, 1, 10, 16, 22),
(122, 1, 10, 17, 25),
(123, 1, 10, 18, 28),
(124, 1, 10, 19, 30),
(125, 1, 11, 12, 5),
(126, 1, 11, 13, 10),
(127, 1, 11, 14, 15),
(128, 1, 11, 15, 18),
(129, 1, 11, 16, 20),
(130, 1, 11, 17, 22),
(131, 1, 11, 18, 25),
(132, 1, 11, 19, 28),
(133, 1, 12, 13, 5),
(134, 1, 12, 14, 10),
(135, 1, 12, 15, 15),
(136, 1, 12, 16, 18),
(137, 1, 12, 17, 20),
(138, 1, 12, 18, 22),
(139, 1, 12, 19, 25),
(140, 1, 13, 14, 5),
(141, 1, 13, 15, 10),
(142, 1, 13, 16, 15),
(143, 1, 13, 17, 18),
(144, 1, 13, 18, 20),
(145, 1, 13, 19, 22),
(146, 1, 14, 15, 5),
(147, 1, 14, 16, 10),
(148, 1, 14, 17, 15),
(149, 1, 14, 18, 18),
(150, 1, 14, 19, 20),
(151, 1, 15, 16, 5),
(152, 1, 15, 17, 10),
(153, 1, 15, 18, 15),
(154, 1, 15, 19, 18),
(155, 1, 16, 17, 5),
(156, 1, 16, 18, 10),
(157, 1, 16, 19, 15),
(158, 1, 17, 18, 5),
(159, 1, 17, 19, 10),
(160, 1, 18, 19, 5),
(250, 9, 54, 55, 5),
(251, 9, 54, 56, 10),
(252, 9, 54, 57, 12),
(253, 9, 54, 58, 15),
(254, 9, 54, 59, 20),
(255, 9, 54, 60, 25),
(256, 9, 54, 61, 30),
(257, 9, 54, 62, 35),
(258, 9, 54, 63, 40),
(259, 9, 55, 56, 5),
(260, 9, 55, 57, 7),
(261, 9, 55, 58, 10),
(262, 9, 55, 59, 15),
(263, 9, 55, 60, 20),
(264, 9, 55, 61, 25),
(265, 9, 55, 62, 30),
(266, 9, 55, 63, 35),
(267, 9, 56, 57, 2),
(268, 9, 56, 58, 5),
(269, 9, 56, 59, 10),
(270, 9, 56, 60, 15),
(271, 9, 56, 61, 20),
(272, 9, 56, 62, 25),
(273, 9, 56, 63, 30),
(274, 9, 57, 58, 3),
(275, 9, 57, 59, 8),
(276, 9, 57, 60, 13),
(277, 9, 57, 61, 20),
(278, 9, 57, 62, 23),
(279, 9, 57, 63, 28),
(280, 9, 58, 59, 5),
(281, 9, 58, 60, 10),
(282, 9, 58, 61, 15),
(283, 9, 58, 62, 20),
(284, 9, 58, 63, 25),
(285, 9, 59, 60, 5),
(286, 9, 59, 61, 10),
(287, 9, 59, 62, 15),
(288, 9, 59, 63, 20),
(289, 9, 60, 61, 5),
(290, 9, 60, 62, 10),
(291, 9, 60, 63, 15),
(292, 9, 61, 62, 5),
(293, 9, 61, 63, 10),
(294, 9, 62, 63, 5),
(515, 1, 9, 19, 30);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `ScheduleID` int(11) NOT NULL,
  `ScheduleType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`BusID`);

--
-- Indexes for table `busstops`
--
ALTER TABLE `busstops`
  ADD PRIMARY KEY (`StopID`);

--
-- Indexes for table `busstopsmapping`
--
ALTER TABLE `busstopsmapping`
  ADD PRIMARY KEY (`BusID`,`StopID`),
  ADD KEY `StopID` (`StopID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faretable`
--
ALTER TABLE `faretable`
  ADD PRIMARY KEY (`FareID`),
  ADD KEY `BusID` (`BusID`),
  ADD KEY `SourceStopID` (`SourceStopID`),
  ADD KEY `DestinationStopID` (`DestinationStopID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`ScheduleID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `busstopsmapping`
--
ALTER TABLE `busstopsmapping`
  ADD CONSTRAINT `busstopsmapping_ibfk_1` FOREIGN KEY (`BusID`) REFERENCES `buses` (`BusID`),
  ADD CONSTRAINT `busstopsmapping_ibfk_2` FOREIGN KEY (`StopID`) REFERENCES `busstops` (`StopID`);

--
-- Constraints for table `faretable`
--
ALTER TABLE `faretable`
  ADD CONSTRAINT `faretable_ibfk_1` FOREIGN KEY (`BusID`) REFERENCES `buses` (`BusID`),
  ADD CONSTRAINT `faretable_ibfk_2` FOREIGN KEY (`SourceStopID`) REFERENCES `busstops` (`StopID`),
  ADD CONSTRAINT `faretable_ibfk_3` FOREIGN KEY (`DestinationStopID`) REFERENCES `busstops` (`StopID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
