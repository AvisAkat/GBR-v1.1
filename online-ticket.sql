-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 12:18 PM
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
-- Database: `online-ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reg_number` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `year` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `condition` enum('operational','maintanance','damaged') NOT NULL DEFAULT 'operational',
  `status` enum('available','not-available') NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `reg_number`, `capacity`, `model`, `make`, `year`, `color`, `condition`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AW-2141-22', 48, 'Yutong-landrover', 'Yutong', '2011', 'White', 'operational', 'available', '2024-02-29 10:25:04', '2024-02-29 10:37:30'),
(2, 'GS-2312-20', 28, '207', 'Mercedes Benz', '2010', 'blue', 'operational', 'available', '2024-02-29 10:38:32', '2024-02-29 10:44:57'),
(4, 'GW-1428-09', 18, 'sprinter', 'Mercedes Benz', '2010', 'White', 'operational', 'available', '2024-02-29 10:42:49', '2024-03-11 12:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `bus_hirings`
--

CREATE TABLE `bus_hirings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contacts_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `additional_phone` int(11) DEFAULT NULL,
  `start_location` varchar(255) NOT NULL,
  `end_location` varchar(255) NOT NULL,
  `depart_date` datetime NOT NULL,
  `number_of_busses` int(11) NOT NULL,
  `bus_capacity` int(11) NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `purpose` text NOT NULL,
  `status` enum('approve','decline','pending') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_hirings`
--

INSERT INTO `bus_hirings` (`id`, `company_name`, `contacts_name`, `email`, `phone`, `additional_phone`, `start_location`, `end_location`, `depart_date`, `number_of_busses`, `bus_capacity`, `number_of_days`, `purpose`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Star', 'Abena', 'abenagirl@gmail.com', 389259463, NULL, 'Nungua', 'Ho', '2024-04-11 19:02:00', 2, 28, 2, 'Excursion', 'pending', '2024-04-02 18:03:28', '2024-04-02 18:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `otherName` varchar(255) DEFAULT NULL,
  `licenseNo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `surname`, `firstName`, `otherName`, `licenseNo`, `created_at`, `updated_at`) VALUES
(1, 'Aryee', 'Mathias', 'Nii Ardey', 'MAT-03021990-82393', '2024-03-11 18:20:20', '2024-03-11 18:20:20'),
(3, 'Eduah', 'Patricia', 'Nana Adwoa', 'PAT-17122002-23512', '2024-03-11 18:28:59', '2024-03-11 18:30:56'),
(4, 'Alhassan', 'Malik', NULL, 'MAL-12101968-23564', '2024-03-11 18:36:25', '2024-03-11 18:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_23_132421_create_buses_table', 1),
(6, '2024_02_28_121426_create_terminals_table', 1),
(7, '2024_02_28_133039_create_city_codes_table', 1),
(8, '2024_02_28_134726_create_terminals_table', 2),
(9, '2024_02_29_113503_create_regions_table', 3),
(10, '2024_02_29_130640_create_terminals_table', 4),
(11, '2024_03_04_131029_term', 5),
(12, '2024_03_11_122708_create_routes_table', 6),
(13, '2024_03_11_140557_create_routes_table', 7),
(14, '2024_03_11_165000_create_drivers_table', 8),
(15, '2024_03_11_183908_create_payments_table', 9),
(16, '2024_03_12_065406_create_trips_table', 10),
(17, '2024_03_11_123454_create__bus_hiring_table', 11),
(18, '2024_03_13_162756_create_tickets_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) NOT NULL,
  `mobile_money_provider` enum('mtn','at','telecel') NOT NULL DEFAULT 'mtn',
  `mobile_money_account` varchar(255) NOT NULL,
  `status` enum('Completed','Pending','Failed') NOT NULL DEFAULT 'Pending',
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `mobile_money_provider`, `mobile_money_account`, `status`, `transaction_date`, `created_at`, `updated_at`) VALUES
(22, '1080', 'mtn', '546595605', 'Pending', '2024-04-01 19:38:05', '2024-04-01 18:38:05', '2024-04-01 18:38:05'),
(23, '1080', 'mtn', '546595605', 'Pending', '2024-04-01 19:38:47', '2024-04-01 18:38:47', '2024-04-01 18:38:47'),
(24, '1080', 'mtn', '546595605', 'Pending', '2024-04-01 19:41:04', '2024-04-01 18:41:04', '2024-04-01 18:41:04'),
(25, '661', 'telecel', '545547728', 'Pending', '2024-04-02 14:52:57', '2024-04-02 13:52:57', '2024-04-02 13:52:57'),
(26, '1322', 'telecel', '577294929', 'Pending', '2024-04-02 17:02:19', '2024-04-02 16:02:19', '2024-04-02 16:02:19'),
(27, '330.5', 'at', '389259463', 'Pending', '2024-04-02 23:06:03', '2024-04-02 22:06:03', '2024-04-02 22:06:03'),
(28, '330.5', 'telecel', '592112776', 'Pending', '2024-04-02 23:42:16', '2024-04-02 22:42:16', '2024-04-02 22:42:16'),
(29, '330.5', 'telecel', '592112776', 'Pending', '2024-04-02 23:43:07', '2024-04-02 22:43:07', '2024-04-02 22:43:07'),
(30, '330.5', 'telecel', '592112776', 'Pending', '2024-04-02 23:43:46', '2024-04-02 22:43:46', '2024-04-02 22:43:46'),
(31, '330.5', 'telecel', '389259463', 'Pending', '2024-04-03 00:28:09', '2024-04-02 23:28:09', '2024-04-02 23:28:09'),
(32, '330.5', 'telecel', '389259463', 'Pending', '2024-04-03 00:30:34', '2024-04-02 23:30:34', '2024-04-02 23:30:34'),
(33, '330.5', 'mtn', '546595605', 'Pending', '2024-04-03 00:31:38', '2024-04-02 23:31:38', '2024-04-02 23:31:38'),
(34, '330.5', 'mtn', '592112775', 'Pending', '2024-04-03 00:33:41', '2024-04-02 23:33:41', '2024-04-02 23:33:41'),
(35, '1322', 'mtn', '592112775', 'Pending', '2024-04-03 09:55:29', '2024-04-03 08:55:29', '2024-04-03 08:55:29'),
(36, '330.5', 'mtn', '592112775', 'Pending', '2024-04-03 09:56:15', '2024-04-03 08:56:15', '2024-04-03 08:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `city_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `city`, `city_code`, `created_at`, `updated_at`) VALUES
(6, 'Ashanti Region', 'Kumasi', 'KSI', '2024-03-11 11:41:34', '2024-03-11 11:41:34'),
(7, 'Greater Accra', 'Accra', 'ACC', '2024-03-11 11:41:51', '2024-03-11 11:41:51'),
(8, 'Central Region', 'Cape Coast', 'CAP', '2024-03-11 11:42:41', '2024-03-11 11:42:41'),
(9, 'Eastern Region', 'Koforidua', 'KOF', '2024-03-11 11:43:05', '2024-03-11 11:43:05'),
(10, 'Brong Ahafo', 'Sunyani', 'SUN', '2024-03-11 11:44:03', '2024-03-11 11:44:53'),
(11, 'Northern Region', 'Tamale', 'TAM', '2024-03-11 11:44:25', '2024-03-11 11:44:38'),
(12, 'Upper East Region', 'Bolgatanga', 'BOL', '2024-03-11 11:45:21', '2024-03-11 11:45:21'),
(13, 'Upper West Region', 'Wa', 'WA', '2024-03-11 11:45:58', '2024-03-11 11:45:58'),
(14, 'Volta Region', 'Ho', 'HO', '2024-03-11 11:46:23', '2024-03-11 11:46:23'),
(15, 'Western Region', 'Sekondi - Takoradi', 'SEK', '2024-03-11 11:47:20', '2024-03-11 11:47:20'),
(16, 'Savannah Region', 'Damongo', 'DAM', '2024-03-11 11:47:44', '2024-03-11 11:47:44'),
(17, 'Bono-East Region', 'Techiman', 'TCH', '2024-03-11 11:48:20', '2024-03-11 11:48:20'),
(18, 'Oti Region', 'Dambai', 'DBI', '2024-03-11 11:48:45', '2024-03-11 11:48:45'),
(19, 'Ahafo Region', 'Goaso', 'GOA', '2024-03-11 11:49:09', '2024-03-11 11:49:09'),
(20, 'Western North', 'Sefwi Wiawso', 'SEF', '2024-03-11 11:49:45', '2024-03-11 11:49:45'),
(21, 'North East Region', 'Nalerigu', 'NAL', '2024-03-11 11:50:25', '2024-03-11 11:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `st_tem_id` bigint(20) UNSIGNED NOT NULL,
  `end_terminal` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `name`, `price`, `st_tem_id`, `end_terminal`, `created_at`, `updated_at`) VALUES
(2, 'Accra - Wa', '330.50', 8, 'Wa VIP Station ( Wa )', '2024-03-11 14:34:59', '2024-03-13 20:15:39'),
(3, 'Accra - Techiman', '170.00', 17, 'O. A. Bus Terminal ( Techiman )', '2024-03-12 06:56:33', '2024-03-12 06:56:33'),
(4, 'Accra - Kumasi', '270.00', 17, 'Asafo Station ( Kumasi )', '2024-03-13 20:12:52', '2024-03-13 20:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `terminals`
--

CREATE TABLE `terminals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `reg_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terminals`
--

INSERT INTO `terminals` (`id`, `name`, `reg_id`, `location`, `created_at`, `updated_at`) VALUES
(7, 'Sunyani Station', 6, 'Techiman', '2024-03-11 11:54:04', '2024-03-11 11:54:04'),
(8, '37 Station', 7, 'Lapaz', '2024-03-11 11:55:26', '2024-03-11 11:55:26'),
(9, 'Kotokuraba Taxi Station', 8, 'Cape Cost', '2024-03-11 12:02:58', '2024-03-11 12:02:58'),
(10, 'Transport Yard', 12, 'Bolga', '2024-03-11 12:04:00', '2024-03-11 12:04:00'),
(11, 'Kpone Junction', 7, 'Tema', '2024-03-11 12:05:10', '2024-03-11 12:05:10'),
(12, 'Tech Junction', 6, 'Kumasi', '2024-03-11 12:05:59', '2024-03-11 12:05:59'),
(13, 'Baah Yard', 7, 'Awoshi', '2024-03-11 12:06:39', '2024-03-11 12:06:39'),
(14, 'Wa VIP Station', 13, 'Wa', '2024-03-11 12:08:23', '2024-03-11 12:08:23'),
(15, 'Asafo Station', 6, 'Kumasi', '2024-03-11 12:09:08', '2024-03-11 12:09:08'),
(16, 'Dawhenya Trotro Station', 7, 'Tema', '2024-03-11 12:10:01', '2024-03-11 12:10:01'),
(17, 'O. A. Bus Terminal', 7, 'Kwame Nkrumah Circle', '2024-03-11 12:12:36', '2024-03-11 12:12:36'),
(18, 'Metro Mass Transit', 11, 'Tamale', '2024-03-11 12:15:51', '2024-03-11 12:15:51'),
(19, 'Aflao Station', 7, 'Accra', '2024-03-11 12:18:26', '2024-03-11 12:18:26'),
(20, 'O. A. Bus Terminal', 17, 'Techiman', '2024-03-11 12:20:09', '2024-03-11 12:20:09'),
(21, 'Abetifi Station', 9, 'Mpraeso', '2024-03-11 12:21:56', '2024-03-11 12:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` datetime NOT NULL DEFAULT current_timestamp(),
  `expiry_date` datetime NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `issue_date`, `expiry_date`, `price`, `status`, `user_id`, `trip_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(16, '2024-04-01 20:38:05', '2024-04-02 22:57:00', '270.00', 'active', 1, 3, 22, '2024-04-01 18:38:05', '2024-04-01 18:38:05'),
(17, '2024-04-01 20:38:47', '2024-04-02 22:57:00', '270.00', 'inactive', 1, 3, 23, '2024-04-01 18:38:47', '2024-04-02 21:04:32'),
(18, '2024-04-01 20:38:48', '2024-04-02 22:57:00', '270.00', 'active', 3, 3, 23, '2024-04-01 18:38:48', '2024-04-01 18:38:48'),
(19, '2024-04-01 20:38:48', '2024-04-02 22:57:00', '270.00', 'active', 3, 3, 23, '2024-04-01 18:38:48', '2024-04-01 18:38:48'),
(20, '2024-04-01 20:38:48', '2024-04-02 22:57:00', '270.00', 'inactive', 3, 3, 23, '2024-04-01 18:38:48', '2024-04-01 18:38:48'),
(21, '2024-04-01 20:41:04', '2024-04-02 22:57:00', '270.00', 'inactive', 1, 3, 24, '2024-04-01 18:41:04', '2024-04-02 21:04:37'),
(22, '2024-04-01 20:41:04', '2024-04-02 22:57:00', '270.00', 'active', 1, 3, 24, '2024-04-01 18:41:04', '2024-04-01 18:41:04'),
(23, '2024-04-01 20:41:04', '2024-03-30 22:57:00', '270.00', 'active', 3, 3, 24, '2024-04-01 18:41:04', '2024-04-01 18:41:04'),
(24, '2024-04-01 20:41:04', '2024-03-29 22:57:00', '270.00', 'inactive', 3, 3, 24, '2024-04-01 18:41:04', '2024-04-01 18:41:04'),
(26, '2024-04-02 15:52:57', '2024-03-01 23:52:00', '330.50', 'active', 3, 4, 25, '2024-04-02 13:52:57', '2024-04-02 13:52:57'),
(27, '2024-04-02 18:02:19', '2024-05-08 23:52:00', '330.50', 'active', 1, 4, 26, '2024-04-02 16:02:19', '2024-04-02 16:02:19'),
(28, '2024-04-02 18:02:19', '2024-05-08 23:52:00', '330.50', 'active', 1, 4, 26, '2024-04-02 16:02:19', '2024-04-02 16:02:19'),
(29, '2024-04-02 18:02:19', '2024-05-08 23:52:00', '330.50', 'active', 1, 4, 26, '2024-04-02 16:02:19', '2024-04-02 16:02:19'),
(30, '2024-04-02 18:02:19', '2024-05-08 23:52:00', '330.50', 'active', 1, 4, 26, '2024-04-02 16:02:19', '2024-04-02 16:02:19'),
(31, '2024-04-03 00:06:04', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 27, '2024-04-02 22:06:04', '2024-04-02 22:06:04'),
(33, '2024-04-03 00:43:07', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 29, '2024-04-02 22:43:07', '2024-04-02 22:43:07'),
(35, '2024-04-03 01:28:09', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 31, '2024-04-02 23:28:09', '2024-04-02 23:28:09'),
(36, '2024-04-03 01:30:34', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 32, '2024-04-02 23:30:34', '2024-04-02 23:30:34'),
(37, '2024-04-03 01:31:38', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 33, '2024-04-02 23:31:38', '2024-04-02 23:31:38'),
(38, '2024-04-03 01:33:42', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 34, '2024-04-02 23:33:42', '2024-04-02 23:33:42'),
(39, '2024-04-03 10:55:29', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 35, '2024-04-03 08:55:29', '2024-04-03 08:55:29'),
(40, '2024-04-03 10:55:29', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 35, '2024-04-03 08:55:29', '2024-04-03 08:55:29'),
(41, '2024-04-03 10:55:29', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 35, '2024-04-03 08:55:29', '2024-04-03 08:55:29'),
(42, '2024-04-03 10:55:29', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 35, '2024-04-03 08:55:29', '2024-04-03 08:55:29'),
(43, '2024-04-03 10:56:15', '2024-05-08 23:52:00', '330.50', 'active', 3, 4, 36, '2024-04-03 08:56:15', '2024-04-03 08:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `departure` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` enum('pending','on','cancelled','completed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `route_id`, `driver_id`, `bus_id`, `departure`, `eta`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 4, '2024-04-02 00:04:56', '2024-03-27 15:00:00', 'pending', '2024-03-13 13:37:19', '2024-03-13 13:37:19'),
(3, 4, 1, 2, '2024-04-02 22:57:00', '2024-04-05 22:57:00', 'pending', '2024-03-31 20:57:17', '2024-03-31 20:59:48'),
(4, 2, 4, 1, '2024-05-08 23:52:00', '2024-05-29 23:52:00', 'pending', '2024-03-31 21:53:07', '2024-03-31 21:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$12$yz9UsLDRqCSMTmOGDU.61.aN9B3ZuvPjkZqd2zCDxeZIYIj86Kp7y', '202403131431yamanaka.jpeg', '0241805506', 'La, USA', 'admin', 'active', NULL, NULL, '2024-03-13 14:31:46'),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$12$iWQVrdf8nrWhhyNe1T9JV.MqT3837981nBJ97/Num5MFrejYw1IXK', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(3, 'User', 'User', 'user@gmail.com', NULL, '$2y$12$ly9lyhceJgIMZPSECA1Zo.ptLR5zcNim50Ooay8aUbE5Pbc8QBmw6', '20240402183227b492df8932af73956c28ce6b7dd590.jpg', '592112775', NULL, 'user', 'active', NULL, NULL, '2024-04-02 17:32:19'),
(4, 'Keyon Bashirian', NULL, 'pheller@example.net', '2024-02-28 13:42:53', '$2y$12$DKjRB3TlixM0/HnQcguG4u0wuKs3c9eyZ4xdD5KRHPghj5sdu3XYC', 'https://via.placeholder.com/60x60.png/0055ee?text=sed', '385.242.5226', '421 Lesch Passage\nBoyerburgh, OH 93040-0143', 'admin', 'inactive', 'hje9uLEAtN', '2024-02-28 13:42:53', '2024-02-28 13:42:53'),
(5, 'Mike Kub', NULL, 'treva51@example.com', '2024-02-28 13:42:53', '$2y$12$DKjRB3TlixM0/HnQcguG4u0wuKs3c9eyZ4xdD5KRHPghj5sdu3XYC', 'https://via.placeholder.com/60x60.png/006644?text=ut', '469-793-0063', '706 Tyrel Forest\nJeremiebury, MI 93616', 'user', 'inactive', 'a95pfiNE0l', '2024-02-28 13:42:53', '2024-02-28 13:42:53'),
(6, 'Chesley Cronin', NULL, 'corine.rath@example.org', '2024-02-28 13:42:53', '$2y$12$DKjRB3TlixM0/HnQcguG4u0wuKs3c9eyZ4xdD5KRHPghj5sdu3XYC', 'https://via.placeholder.com/60x60.png/0099aa?text=eligendi', '660.606.5720', '28479 Shirley Roads\nNew Tonyview, KY 31086-9311', 'user', 'inactive', 'sOLY8kA66P', '2024-02-28 13:42:53', '2024-02-28 13:42:53'),
(7, 'Kolby Hyatt', NULL, 'braxton68@example.net', '2024-02-28 13:42:53', '$2y$12$DKjRB3TlixM0/HnQcguG4u0wuKs3c9eyZ4xdD5KRHPghj5sdu3XYC', 'https://via.placeholder.com/60x60.png/0088bb?text=temporibus', '+1.551.770.8377', '684 Eichmann Roads Apt. 383\nHoppefort, PA 34507', 'agent', 'active', 'PdeCmQaL7i', '2024-02-28 13:42:53', '2024-02-28 13:42:53'),
(8, 'Myriam Kilback', NULL, 'ethelyn.white@example.com', '2024-02-28 13:42:53', '$2y$12$DKjRB3TlixM0/HnQcguG4u0wuKs3c9eyZ4xdD5KRHPghj5sdu3XYC', 'https://via.placeholder.com/60x60.png/0022cc?text=natus', '1-870-724-6412', '6092 Jeffery Road Apt. 284\nJaskolskishire, NM 78653-8254', 'agent', 'inactive', 'I7YrIwJ5eX', '2024-02-28 13:42:53', '2024-02-28 13:42:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_hirings`
--
ALTER TABLE `bus_hirings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regions_city_unique` (`city`),
  ADD UNIQUE KEY `regions_city_code_unique` (`city_code`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routes_st_tem_id_foreign` (`st_tem_id`);

--
-- Indexes for table `terminals`
--
ALTER TABLE `terminals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terminals_reg_id_foreign` (`reg_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_trip_id_foreign` (`trip_id`),
  ADD KEY `tickets_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_route_id_foreign` (`route_id`),
  ADD KEY `trips_driver_id_foreign` (`driver_id`),
  ADD KEY `trips_bus_id_foreign` (`bus_id`);

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
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bus_hirings`
--
ALTER TABLE `bus_hirings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terminals`
--
ALTER TABLE `terminals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_st_tem_id_foreign` FOREIGN KEY (`st_tem_id`) REFERENCES `terminals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `terminals`
--
ALTER TABLE `terminals`
  ADD CONSTRAINT `terminals_reg_id_foreign` FOREIGN KEY (`reg_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trips_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trips_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
