-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 09:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleet_django`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting_event`
--

CREATE TABLE `accounting_event` (
  `id` int(11) NOT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounting_event`
--

INSERT INTO `accounting_event` (`id`, `event_type_id`, `fee_amount`, `currency_id`, `created_at`, `updated_at`, `payment_date`) VALUES
(1, 2, 187450, 1, '2022-11-21 09:01:00', '2022-11-21 09:01:00', '2022-11-21 09:01:00'),
(2, 1, 120450, 1, '2022-11-21 13:17:47', '2022-11-21 13:17:47', '2022-11-21 13:17:47'),
(3, 2, 850, 2, '2022-11-21 14:21:56', '2022-11-21 14:21:56', '2022-11-21 14:21:56'),
(4, 1, 1400, 2, '2022-11-21 17:24:08', '2022-11-21 17:24:08', '2022-11-21 17:24:08'),
(5, 2, 985, 2, '2022-11-22 09:15:29', '2022-11-22 09:15:29', '2022-11-22 09:15:29'),
(6, 2, 800, 2, '2022-11-26 10:15:21', '2022-11-26 10:15:21', '2022-11-26 10:15:21'),
(7, 2, 740, 3, '2022-11-26 12:15:33', '2022-11-26 12:15:33', '2022-11-26 12:15:33'),
(8, 2, 4500, 3, '2022-11-28 10:35:57', '2022-11-28 10:35:57', '2022-11-28 10:35:57'),
(9, 2, 4500, 3, '2022-11-28 10:36:19', '2022-11-28 10:36:19', '2022-11-28 10:36:19'),
(10, 2, 4500, 3, '2022-11-28 10:36:32', '2022-11-28 10:36:32', '2022-11-28 10:36:32'),
(11, 2, 7800, 1, '2022-11-30 07:33:14', '2022-11-30 07:33:14', '2022-11-30 07:33:14'),
(12, 2, 250, 2, '2022-11-30 07:52:44', '2022-11-30 07:52:44', '2022-11-30 07:52:44'),
(13, 2, 3850, 1, '2022-11-30 08:03:31', '2022-11-30 08:03:31', '2022-11-30 08:03:31'),
(14, 2, 9800, 1, '2022-12-02 12:51:46', '2022-12-02 12:51:46', '2022-12-02 12:51:46'),
(15, 2, 3870, 1, '2022-12-19 17:40:37', '2022-12-19 17:40:37', '2022-12-19 17:40:37'),
(16, 2, 3870, 1, '2022-12-19 17:53:41', '2022-12-19 17:53:41', '2022-12-19 17:53:41'),
(17, 2, 100, NULL, '2022-12-20 14:12:18', '2022-12-20 14:12:18', '2022-12-20 14:12:18'),
(18, 2, 100, NULL, '2022-12-20 14:15:02', '2022-12-20 14:15:02', '2022-12-20 14:15:02'),
(19, 2, 100, NULL, '2022-12-20 14:16:10', '2022-12-20 14:16:10', '2022-12-20 14:16:10'),
(20, 2, 4500, 1, '2022-12-29 12:33:08', '2022-12-29 12:33:08', '2022-12-29 12:33:08'),
(21, 2, 5800, 1, '2022-12-29 12:46:54', '2022-12-29 12:46:54', '2022-12-29 12:46:54'),
(22, 2, 5800, 1, '2022-12-29 12:48:43', '2022-12-29 12:48:43', '2022-12-29 12:48:43'),
(23, 2, 75800, 1, '2022-12-29 12:49:14', '2022-12-29 12:49:14', '2022-12-29 12:49:14'),
(24, 2, 75800, 1, '2022-12-29 12:51:57', '2022-12-29 12:51:57', '2022-12-29 12:51:57'),
(25, 2, 75800, 1, '2022-12-29 12:53:15', '2022-12-29 12:53:15', '2022-12-29 12:53:15'),
(26, 2, 75800, 1, '2022-12-29 12:59:17', '2022-12-29 12:59:17', '2022-12-29 12:59:17'),
(27, 2, 75800, 1, '2022-12-29 12:59:55', '2022-12-29 12:59:55', '2022-12-29 12:59:55'),
(28, 2, 74050, 1, '2022-12-29 13:02:04', '2022-12-29 13:02:04', '2022-12-29 13:02:04'),
(29, 2, 85700, 1, '2022-12-29 13:24:39', '2022-12-29 13:24:39', '2022-12-29 13:24:39'),
(30, 2, 76500, 1, '2022-12-29 13:28:05', '2022-12-29 13:28:05', '2022-12-29 13:28:05'),
(31, 2, 32900, 1, '2022-12-29 13:30:44', '2022-12-29 13:30:44', '2022-12-29 13:30:44'),
(32, 2, 85700, 1, '2022-12-29 13:34:10', '2022-12-29 13:34:10', '2022-12-29 13:34:10'),
(33, 2, 85700, 1, '2022-12-29 13:35:08', '2022-12-29 13:35:08', '2022-12-29 13:35:08'),
(34, 2, 85700, 1, '2022-12-29 13:36:28', '2022-12-29 13:36:28', '2022-12-29 13:36:28'),
(35, 2, 85700, 1, '2022-12-29 13:37:17', '2022-12-29 13:37:17', '2022-12-29 13:37:17'),
(36, 2, 85700, 1, '2022-12-29 13:37:48', '2022-12-29 13:37:48', '2022-12-29 13:37:48'),
(37, 2, 74050, 1, '2022-12-29 13:39:22', '2022-12-29 13:39:22', '2022-12-29 13:39:22'),
(38, 2, 74050, 1, '2022-12-29 13:39:45', '2022-12-29 13:39:45', '2022-12-29 13:39:45'),
(39, 2, 76500, 1, '2022-12-29 13:44:05', '2022-12-29 13:44:05', '2022-12-29 13:44:05'),
(40, 2, 45000, 1, '2022-12-29 16:59:45', '2022-12-29 16:59:45', '2022-12-29 16:59:45'),
(41, 2, 45000, 1, '2022-12-29 17:03:56', '2022-12-29 17:03:56', '2022-12-29 17:03:56'),
(42, 2, 45000, 1, '2022-12-29 17:38:16', '2022-12-29 17:38:16', '2022-12-29 17:38:16'),
(43, 2, 45000, 1, '2022-12-29 17:41:34', '2022-12-29 17:41:34', '2022-12-29 17:41:34'),
(44, 2, 45000, 1, '2022-12-29 17:42:08', '2022-12-29 17:42:08', '2022-12-29 17:42:08'),
(45, 2, 45000, 1, '2022-12-29 17:43:15', '2022-12-29 17:43:15', '2022-12-29 17:43:15'),
(46, 2, 45000, 1, '2022-12-29 17:47:41', '2022-12-29 17:47:41', '2022-12-29 17:47:41'),
(47, 2, 45000, 1, '2022-12-29 17:48:18', '2022-12-29 17:48:18', '2022-12-29 17:48:18'),
(48, 2, 45000, 1, '2022-12-29 17:50:20', '2022-12-29 17:50:20', '2022-12-29 17:50:20'),
(49, 2, 45000, 1, '2022-12-29 17:59:04', '2022-12-29 17:59:04', '2022-12-29 17:59:04'),
(50, 2, 45000, 1, '2022-12-29 18:00:22', '2022-12-29 18:00:22', '2022-12-29 18:00:22'),
(51, 2, 45000, 1, '2022-12-29 18:03:40', '2022-12-29 18:03:40', '2022-12-29 18:03:40'),
(52, 2, 45000, 1, '2022-12-29 18:10:16', '2022-12-29 18:10:16', '2022-12-29 18:10:16'),
(53, 2, 45000, 1, '2022-12-29 18:12:04', '2022-12-29 18:12:04', '2022-12-29 18:12:04'),
(54, 2, 45000, 1, '2022-12-29 18:19:22', '2022-12-29 18:19:22', '2022-12-29 18:19:22'),
(55, 2, 45000, 1, '2022-12-29 18:42:15', '2022-12-29 18:42:15', '2022-12-29 18:42:15'),
(56, 2, 45000, 1, '2022-12-29 18:47:18', '2022-12-29 18:47:18', '2022-12-29 18:47:18'),
(57, 2, 45000, 1, '2022-12-29 18:56:09', '2022-12-29 18:56:09', '2022-12-29 18:56:09'),
(58, 2, 200, NULL, '2023-01-02 13:36:29', '2023-01-02 13:36:29', '2023-01-02 13:36:29'),
(59, 2, 150000, NULL, '2023-01-02 13:45:58', '2023-01-02 13:45:58', '2023-01-02 13:45:58'),
(60, 2, 10500, 1, '2023-01-17 10:40:15', '2023-01-17 10:40:15', '2023-01-17 10:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `accounting_event_type`
--

CREATE TABLE `accounting_event_type` (
  `id` int(11) NOT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounting_event_type`
--

INSERT INTO `accounting_event_type` (`id`, `event_type`, `created_at`, `updated_at`) VALUES
(1, 'expense', '2022-11-20 16:07:21', '2022-11-20 16:07:21'),
(2, 'income', '2022-11-20 16:07:21', '2022-11-20 16:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `accounting_item`
--

CREATE TABLE `accounting_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(25) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounting_item`
--

INSERT INTO `accounting_item` (`id`, `item_name`, `category`, `created_at`, `updated_at`) VALUES
(1, 'CAR RENTAL INCOME', '', '2022-11-03 11:29:02', '2022-11-03 11:29:02'),
(2, 'Fuel expense', 'Liquid fuel', '2022-11-03 11:29:21', '2022-11-03 11:29:21'),
(3, 'Stationary expenses', 'Stationary', '2022-11-03 11:29:37', '2022-11-03 11:29:37'),
(4, 'Office monthly expenses', '', '2022-11-03 11:29:57', '2022-11-03 11:29:57'),
(5, 'Electricity', '', '2022-11-03 11:30:16', '2022-11-03 11:30:16'),
(6, 'Spark plug', 'Parts replacement Expense', '2022-11-03 11:30:40', '2022-11-03 11:30:40'),
(7, 'Insurance expense', '', '2022-11-03 11:30:56', '2022-11-03 11:30:56'),
(8, 'sales transaction', '', '2022-11-03 11:32:07', '2022-11-03 11:32:07'),
(9, 'Kitchen', 'Car rental expenses', '2022-11-03 11:32:18', '2022-11-03 11:32:18'),
(10, 'Transport', 'Car rental expenses', '2022-11-03 11:32:37', '2022-11-03 11:32:37'),
(11, 'Staff salary', 'Product sales', '2022-11-03 11:33:14', '2022-11-03 11:33:14'),
(12, 'Fuel expense', 'Liquid fuel', '2022-11-03 11:33:24', '2022-11-03 11:33:24'),
(13, 'Website', 'Product sales', '2022-11-03 11:34:04', '2022-11-03 11:34:04'),
(14, 'Arvento tracking system', 'Car rental expenses', '2022-11-03 11:34:27', '2022-11-03 11:34:27'),
(15, 'BSD OTO PART LTD', 'Vehicle maintenance Expenses', '2022-11-03 11:34:41', '2022-11-03 11:34:41'),
(16, 'Car rental expenses', '', '2022-11-03 11:36:22', '2022-11-03 11:36:22'),
(17, 'Vehicle maintenance', '', '2022-11-03 11:36:36', '2022-11-03 11:36:36'),
(18, 'TRANSFER FEE', '', '2022-11-09 07:32:51', '2022-11-09 07:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `account_history`
--

CREATE TABLE `account_history` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `account_operation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `notes` varchar(10000) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `accounting_event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_history`
--

INSERT INTO `account_history` (`id`, `account_id`, `amount`, `account_operation_id`, `created_at`, `updated_at`, `notes`, `currency_id`, `registration_date`, `accounting_event`) VALUES
(1, 1, 50, NULL, '2023-01-17 11:04:40', '2023-01-17 11:04:40', 'Payment method: Transfer', 2, '2023-01-17 11:04:40', 2),
(2, 27, 10, NULL, '2023-01-17 11:06:34', '2023-01-17 11:06:34', 'Payment method: Cash payment', 2, '2023-01-17 11:06:34', 2),
(3, 26, 4040, NULL, '2023-01-17 13:43:03', '2023-01-17 13:43:03', 'Payment method: Cash payment', 1, '2023-01-17 13:43:03', 2),
(4, 26, 2850, NULL, '2023-01-17 14:01:29', '2023-01-17 14:01:29', 'Payment method: Cash payment', 1, '2023-01-17 14:01:29', 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_operation`
--

CREATE TABLE `account_operation` (
  `id` int(11) NOT NULL,
  `account_operation` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_statement`
--

CREATE TABLE `account_statement` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `situation` varchar(100) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_statement`
--

INSERT INTO `account_statement` (`id`, `account_id`, `category`, `payment_date`, `situation`, `notes`, `fee_amount`, `registration_date`, `created_at`, `updated_at`) VALUES
(6, 27, 'Rent a Car', '2023-01-02', '', 'Car Rental: OX65 AWD| Benoit Kekwandi| Rental Period: 2022-11-26 18:13:00-2022-11-26 16:17:00', 600, '2023-01-01 21:26:53', '2023-01-01 21:26:53', '2023-01-01 21:26:53'),
(7, 27, 'Rent a Car', '2023-01-02', '', 'Car Rental: OX65 AWD| Benoit Kekwandi| Rental Period: 2022-11-26 18:13:00-2022-11-26 16:17:00', 200, '2023-01-02 12:27:47', '2023-01-02 12:27:47', '2023-01-02 12:27:47'),
(8, 26, 'Rent a Car', '2023-01-02', '', 'Car Rental: POIU18181| Ediz  Ertugrul | Rental Period: 2022-11-30 01:30:00-2022-12-30 01:30:00', 760, '2023-01-02 12:55:59', '2023-01-02 12:55:59', '2023-01-02 12:55:59'),
(9, 3, 'Rent a Car', '2023-01-02', '', 'Car Rental: RE374YH| Benoit Kekwandi| Rental Period: 2022-12-02 15:48:00-2022-12-02 15:48:00', 451.831372100994, '2023-01-02 13:40:12', '2023-01-02 13:40:12', '2023-01-02 13:40:12'),
(10, 4, 'Rent a Car', '2023-01-02', '', 'Car Rental: OX65 AWD| Benoit Kekwandi| Rental Period: 2022-11-26 18:13:00-2022-11-26 16:17:00', 550, '2023-01-02 13:52:43', '2023-01-02 13:52:43', '2023-01-02 13:52:43'),
(13, 1, 'Rent a Car', '2023-01-17', '', 'Car Rental: OX65 AWD| Benoit Kekwandi| Rental Period: 2022-11-26 18:13:00-2022-11-26 16:17:00 Payment Method: Transfer', 750, '2023-01-17 11:04:40', '2023-01-17 11:04:40', '2023-01-17 11:04:40'),
(14, 27, 'Rent a Car', '2023-01-17', '', 'Car Rental: OX65 AWD| Benoit Kekwandi| Rental Period: 2022-11-26 18:13:00-2022-11-26 16:17:00', 760, '2023-01-17 11:06:34', '2023-01-17 11:06:34', '2023-01-17 11:06:34'),
(15, 26, 'Rent a Car', '2023-01-17', '', 'Car Rental: POIU18181| Ediz  Ertugrul | Rental Period: 2022-11-30 01:30:00-2022-12-30 01:30:00', 4800, '2023-01-17 13:43:03', '2023-01-17 13:43:03', '2023-01-17 13:43:03'),
(16, 26, 'Rent a Car', '2023-01-17', '', 'Car Rental: KP14KYJ| Gizem Olurdu| Rental Period: 2022-12-02 14:01:00-2022-11-30 14:01:00 Payment Method: Cash', 2850, '2023-01-17 14:01:29', '2023-01-17 14:01:29', '2023-01-17 14:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `account_type_name` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`id`, `account_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Individual customer', '2022-11-03 11:49:32', '2022-11-03 11:49:32'),
(2, 'Employee', '2022-11-03 11:49:32', '2022-11-03 11:49:32'),
(3, 'Fall', '2022-11-03 11:49:33', '2022-11-03 11:49:33'),
(4, 'Bank transfer credit', '2022-11-03 11:49:33', '2022-11-03 11:49:33'),
(5, 'Bank credit card', '2022-11-03 11:49:33', '2022-11-03 11:49:33'),
(6, 'Bank check', '2022-11-03 11:49:33', '2022-11-03 11:49:33'),
(7, 'Tool', '2022-11-03 11:49:33', '2022-11-03 11:49:33'),
(8, 'Vehicle', '2022-11-03 11:49:33', '2022-11-03 11:49:33'),
(9, 'company', '2022-12-13 13:47:34', '2022-12-13 13:47:34'),
(10, 'CASH', '2022-12-26 12:56:25', '2022-12-26 12:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `additional_service`
--

CREATE TABLE `additional_service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(25) DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `sequence_no` int(11) DEFAULT NULL,
  `pricing_method_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addition_tool_users`
--

CREATE TABLE `addition_tool_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `passport_number` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `contract_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addition_tool_users`
--

INSERT INTO `addition_tool_users` (`id`, `full_name`, `passport_number`, `birth_date`, `nationality`, `telephone`, `created_at`, `updated_at`, `contract_id`) VALUES
(17, 'hgdtrg', NULL, '2022-11-19', 'dghthtgrh', NULL, '2022-11-18 09:32:04', '2022-11-18 09:32:04', NULL),
(19, 'Camille', NULL, '2022-11-08', 'congolese', NULL, '2022-11-26 10:15:21', '2022-11-26 10:15:21', NULL),
(20, '', NULL, '2022-11-26', '', NULL, '2022-11-30 07:33:14', '2022-11-30 07:33:14', NULL),
(21, '', NULL, '2022-11-02', '', NULL, '2022-11-30 07:48:36', '2022-11-30 07:48:36', NULL),
(24, 'Yves', NULL, '1972-08-05', 'British', NULL, '2022-11-30 07:52:44', '2022-11-30 07:52:44', NULL),
(25, 'Novak ', NULL, '1970-12-08', 'Serbian', NULL, '2022-11-30 08:03:31', '2022-11-30 08:03:31', NULL),
(26, 'Alain', NULL, '2000-12-02', 'congolese', NULL, '2022-12-02 12:51:46', '2022-12-02 12:51:46', NULL),
(28, 'John', NULL, '2022-12-24', 'Nigerian', NULL, '2022-12-17 21:01:17', '2022-12-17 21:01:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add captcha store', 7, 'add_captchastore'),
(26, 'Can change captcha store', 7, 'change_captchastore'),
(27, 'Can delete captcha store', 7, 'delete_captchastore'),
(28, 'Can view captcha store', 7, 'view_captchastore'),
(29, 'Can add account history model', 8, 'add_accounthistorymodel'),
(30, 'Can change account history model', 8, 'change_accounthistorymodel'),
(31, 'Can delete account history model', 8, 'delete_accounthistorymodel'),
(32, 'Can view account history model', 8, 'view_accounthistorymodel'),
(33, 'Can add accounting event model', 9, 'add_accountingeventmodel'),
(34, 'Can change accounting event model', 9, 'change_accountingeventmodel'),
(35, 'Can delete accounting event model', 9, 'delete_accountingeventmodel'),
(36, 'Can view accounting event model', 9, 'view_accountingeventmodel'),
(37, 'Can add accounting event type model', 10, 'add_accountingeventtypemodel'),
(38, 'Can change accounting event type model', 10, 'change_accountingeventtypemodel'),
(39, 'Can delete accounting event type model', 10, 'delete_accountingeventtypemodel'),
(40, 'Can view accounting event type model', 10, 'view_accountingeventtypemodel'),
(41, 'Can add accounting item model', 11, 'add_accountingitemmodel'),
(42, 'Can change accounting item model', 11, 'change_accountingitemmodel'),
(43, 'Can delete accounting item model', 11, 'delete_accountingitemmodel'),
(44, 'Can view accounting item model', 11, 'view_accountingitemmodel'),
(45, 'Can add account operation model', 12, 'add_accountoperationmodel'),
(46, 'Can change account operation model', 12, 'change_accountoperationmodel'),
(47, 'Can delete account operation model', 12, 'delete_accountoperationmodel'),
(48, 'Can view account operation model', 12, 'view_accountoperationmodel'),
(49, 'Can add account statement model', 13, 'add_accountstatementmodel'),
(50, 'Can change account statement model', 13, 'change_accountstatementmodel'),
(51, 'Can delete account statement model', 13, 'delete_accountstatementmodel'),
(52, 'Can view account statement model', 13, 'view_accountstatementmodel'),
(53, 'Can add account type model', 14, 'add_accounttypemodel'),
(54, 'Can change account type model', 14, 'change_accounttypemodel'),
(55, 'Can delete account type model', 14, 'delete_accounttypemodel'),
(56, 'Can view account type model', 14, 'view_accounttypemodel'),
(57, 'Can add additional tool user model', 15, 'add_additionaltoolusermodel'),
(58, 'Can change additional tool user model', 15, 'change_additionaltoolusermodel'),
(59, 'Can delete additional tool user model', 15, 'delete_additionaltoolusermodel'),
(60, 'Can view additional tool user model', 15, 'view_additionaltoolusermodel'),
(61, 'Can add category model', 16, 'add_categorymodel'),
(62, 'Can change category model', 16, 'change_categorymodel'),
(63, 'Can delete category model', 16, 'delete_categorymodel'),
(64, 'Can view category model', 16, 'view_categorymodel'),
(65, 'Can add check payment model', 17, 'add_checkpaymentmodel'),
(66, 'Can change check payment model', 17, 'change_checkpaymentmodel'),
(67, 'Can delete check payment model', 17, 'delete_checkpaymentmodel'),
(68, 'Can view check payment model', 17, 'view_checkpaymentmodel'),
(69, 'Can add company model', 18, 'add_companymodel'),
(70, 'Can change company model', 18, 'change_companymodel'),
(71, 'Can delete company model', 18, 'delete_companymodel'),
(72, 'Can view company model', 18, 'view_companymodel'),
(73, 'Can add contract history model', 19, 'add_contracthistorymodel'),
(74, 'Can change contract history model', 19, 'change_contracthistorymodel'),
(75, 'Can delete contract history model', 19, 'delete_contracthistorymodel'),
(76, 'Can view contract history model', 19, 'view_contracthistorymodel'),
(77, 'Can add contract model', 20, 'add_contractmodel'),
(78, 'Can change contract model', 20, 'change_contractmodel'),
(79, 'Can delete contract model', 20, 'delete_contractmodel'),
(80, 'Can view contract model', 20, 'view_contractmodel'),
(81, 'Can add contract payment model', 21, 'add_contractpaymentmodel'),
(82, 'Can change contract payment model', 21, 'change_contractpaymentmodel'),
(83, 'Can delete contract payment model', 21, 'delete_contractpaymentmodel'),
(84, 'Can view contract payment model', 21, 'view_contractpaymentmodel'),
(85, 'Can add contract status model', 22, 'add_contractstatusmodel'),
(86, 'Can change contract status model', 22, 'change_contractstatusmodel'),
(87, 'Can delete contract status model', 22, 'delete_contractstatusmodel'),
(88, 'Can view contract status model', 22, 'view_contractstatusmodel'),
(89, 'Can add credit card payment model', 23, 'add_creditcardpaymentmodel'),
(90, 'Can change credit card payment model', 23, 'change_creditcardpaymentmodel'),
(91, 'Can delete credit card payment model', 23, 'delete_creditcardpaymentmodel'),
(92, 'Can view credit card payment model', 23, 'view_creditcardpaymentmodel'),
(93, 'Can add currency model', 24, 'add_currencymodel'),
(94, 'Can change currency model', 24, 'change_currencymodel'),
(95, 'Can delete currency model', 24, 'delete_currencymodel'),
(96, 'Can view currency model', 24, 'view_currencymodel'),
(97, 'Can add current account model', 25, 'add_currentaccountmodel'),
(98, 'Can change current account model', 25, 'change_currentaccountmodel'),
(99, 'Can delete current account model', 25, 'delete_currentaccountmodel'),
(100, 'Can view current account model', 25, 'view_currentaccountmodel'),
(101, 'Can add customer black list model', 26, 'add_customerblacklistmodel'),
(102, 'Can change customer black list model', 26, 'change_customerblacklistmodel'),
(103, 'Can delete customer black list model', 26, 'delete_customerblacklistmodel'),
(104, 'Can view customer black list model', 26, 'view_customerblacklistmodel'),
(105, 'Can add customer model', 27, 'add_customermodel'),
(106, 'Can change customer model', 27, 'change_customermodel'),
(107, 'Can delete customer model', 27, 'delete_customermodel'),
(108, 'Can view customer model', 27, 'view_customermodel'),
(109, 'Can add customer type model', 28, 'add_customertypemodel'),
(110, 'Can change customer type model', 28, 'change_customertypemodel'),
(111, 'Can delete customer type model', 28, 'delete_customertypemodel'),
(112, 'Can view customer type model', 28, 'view_customertypemodel'),
(113, 'Can add default payment model', 29, 'add_defaultpaymentmodel'),
(114, 'Can change default payment model', 29, 'change_defaultpaymentmodel'),
(115, 'Can delete default payment model', 29, 'delete_defaultpaymentmodel'),
(116, 'Can view default payment model', 29, 'view_defaultpaymentmodel'),
(117, 'Can add expense model', 30, 'add_expensemodel'),
(118, 'Can change expense model', 30, 'change_expensemodel'),
(119, 'Can delete expense model', 30, 'delete_expensemodel'),
(120, 'Can view expense model', 30, 'view_expensemodel'),
(121, 'Can add file type model', 31, 'add_filetypemodel'),
(122, 'Can change file type model', 31, 'change_filetypemodel'),
(123, 'Can delete file type model', 31, 'delete_filetypemodel'),
(124, 'Can view file type model', 31, 'view_filetypemodel'),
(125, 'Can add file upload model', 32, 'add_fileuploadmodel'),
(126, 'Can change file upload model', 32, 'change_fileuploadmodel'),
(127, 'Can delete file upload model', 32, 'delete_fileuploadmodel'),
(128, 'Can view file upload model', 32, 'view_fileuploadmodel'),
(129, 'Can add found payment model', 33, 'add_foundpaymentmodel'),
(130, 'Can change found payment model', 33, 'change_foundpaymentmodel'),
(131, 'Can delete found payment model', 33, 'delete_foundpaymentmodel'),
(132, 'Can view found payment model', 33, 'view_foundpaymentmodel'),
(133, 'Can add income model', 34, 'add_incomemodel'),
(134, 'Can change income model', 34, 'change_incomemodel'),
(135, 'Can delete income model', 34, 'delete_incomemodel'),
(136, 'Can view income model', 34, 'view_incomemodel'),
(137, 'Can add invoice model', 35, 'add_invoicemodel'),
(138, 'Can change invoice model', 35, 'change_invoicemodel'),
(139, 'Can delete invoice model', 35, 'delete_invoicemodel'),
(140, 'Can view invoice model', 35, 'view_invoicemodel'),
(141, 'Can add mail order payment model', 36, 'add_mailorderpaymentmodel'),
(142, 'Can change mail order payment model', 36, 'change_mailorderpaymentmodel'),
(143, 'Can delete mail order payment model', 36, 'delete_mailorderpaymentmodel'),
(144, 'Can view mail order payment model', 36, 'view_mailorderpaymentmodel'),
(145, 'Can add operation status model', 37, 'add_operationstatusmodel'),
(146, 'Can change operation status model', 37, 'change_operationstatusmodel'),
(147, 'Can delete operation status model', 37, 'delete_operationstatusmodel'),
(148, 'Can view operation status model', 37, 'view_operationstatusmodel'),
(149, 'Can add operation type model', 38, 'add_operationtypemodel'),
(150, 'Can change operation type model', 38, 'change_operationtypemodel'),
(151, 'Can delete operation type model', 38, 'delete_operationtypemodel'),
(152, 'Can view operation type model', 38, 'view_operationtypemodel'),
(153, 'Can add payment for model', 39, 'add_paymentformodel'),
(154, 'Can change payment for model', 39, 'change_paymentformodel'),
(155, 'Can delete payment for model', 39, 'delete_paymentformodel'),
(156, 'Can view payment for model', 39, 'view_paymentformodel'),
(157, 'Can add payment method model', 40, 'add_paymentmethodmodel'),
(158, 'Can change payment method model', 40, 'change_paymentmethodmodel'),
(159, 'Can delete payment method model', 40, 'delete_paymentmethodmodel'),
(160, 'Can view payment method model', 40, 'view_paymentmethodmodel'),
(161, 'Can add payment model', 41, 'add_paymentmodel'),
(162, 'Can change payment model', 41, 'change_paymentmodel'),
(163, 'Can delete payment model', 41, 'delete_paymentmodel'),
(164, 'Can view payment model', 41, 'view_paymentmodel'),
(165, 'Can add payment status model', 42, 'add_paymentstatusmodel'),
(166, 'Can change payment status model', 42, 'change_paymentstatusmodel'),
(167, 'Can delete payment status model', 42, 'delete_paymentstatusmodel'),
(168, 'Can view payment status model', 42, 'view_paymentstatusmodel'),
(169, 'Can add place model', 43, 'add_placemodel'),
(170, 'Can change place model', 43, 'change_placemodel'),
(171, 'Can delete place model', 43, 'delete_placemodel'),
(172, 'Can view place model', 43, 'view_placemodel'),
(173, 'Can add pricing method model', 44, 'add_pricingmethodmodel'),
(174, 'Can change pricing method model', 44, 'change_pricingmethodmodel'),
(175, 'Can delete pricing method model', 44, 'delete_pricingmethodmodel'),
(176, 'Can view pricing method model', 44, 'view_pricingmethodmodel'),
(177, 'Can add region model', 45, 'add_regionmodel'),
(178, 'Can change region model', 45, 'change_regionmodel'),
(179, 'Can delete region model', 45, 'delete_regionmodel'),
(180, 'Can view region model', 45, 'view_regionmodel'),
(181, 'Can add reservation model', 46, 'add_reservationmodel'),
(182, 'Can change reservation model', 46, 'change_reservationmodel'),
(183, 'Can delete reservation model', 46, 'delete_reservationmodel'),
(184, 'Can view reservation model', 46, 'view_reservationmodel'),
(185, 'Can add reservation payment model', 47, 'add_reservationpaymentmodel'),
(186, 'Can change reservation payment model', 47, 'change_reservationpaymentmodel'),
(187, 'Can delete reservation payment model', 47, 'delete_reservationpaymentmodel'),
(188, 'Can view reservation payment model', 47, 'view_reservationpaymentmodel'),
(189, 'Can add reservation status model', 48, 'add_reservationstatusmodel'),
(190, 'Can change reservation status model', 48, 'change_reservationstatusmodel'),
(191, 'Can delete reservation status model', 48, 'delete_reservationstatusmodel'),
(192, 'Can view reservation status model', 48, 'view_reservationstatusmodel'),
(193, 'Can add stop model', 49, 'add_stopmodel'),
(194, 'Can change stop model', 49, 'change_stopmodel'),
(195, 'Can delete stop model', 49, 'delete_stopmodel'),
(196, 'Can view stop model', 49, 'view_stopmodel'),
(197, 'Can add student model', 50, 'add_studentmodel'),
(198, 'Can change student model', 50, 'change_studentmodel'),
(199, 'Can delete student model', 50, 'delete_studentmodel'),
(200, 'Can view student model', 50, 'view_studentmodel'),
(201, 'Can add system reminder model', 51, 'add_systemremindermodel'),
(202, 'Can change system reminder model', 51, 'change_systemremindermodel'),
(203, 'Can delete system reminder model', 51, 'delete_systemremindermodel'),
(204, 'Can view system reminder model', 51, 'view_systemremindermodel'),
(205, 'Can add system reminder type model', 52, 'add_systemremindertypemodel'),
(206, 'Can change system reminder type model', 52, 'change_systemremindertypemodel'),
(207, 'Can delete system reminder type model', 52, 'delete_systemremindertypemodel'),
(208, 'Can view system reminder type model', 52, 'view_systemremindertypemodel'),
(209, 'Can add transfer payment model', 53, 'add_transferpaymentmodel'),
(210, 'Can change transfer payment model', 53, 'change_transferpaymentmodel'),
(211, 'Can delete transfer payment model', 53, 'delete_transferpaymentmodel'),
(212, 'Can view transfer payment model', 53, 'view_transferpaymentmodel'),
(213, 'Can add user type model', 54, 'add_usertypemodel'),
(214, 'Can change user type model', 54, 'change_usertypemodel'),
(215, 'Can delete user type model', 54, 'delete_usertypemodel'),
(216, 'Can view user type model', 54, 'view_usertypemodel'),
(217, 'Can add vehicle brand model', 55, 'add_vehiclebrandmodel'),
(218, 'Can change vehicle brand model', 55, 'change_vehiclebrandmodel'),
(219, 'Can delete vehicle brand model', 55, 'delete_vehiclebrandmodel'),
(220, 'Can view vehicle brand model', 55, 'view_vehiclebrandmodel'),
(221, 'Can add vehicle capacity model', 56, 'add_vehiclecapacitymodel'),
(222, 'Can change vehicle capacity model', 56, 'change_vehiclecapacitymodel'),
(223, 'Can delete vehicle capacity model', 56, 'delete_vehiclecapacitymodel'),
(224, 'Can view vehicle capacity model', 56, 'view_vehiclecapacitymodel'),
(225, 'Can add vehicle component model', 57, 'add_vehiclecomponentmodel'),
(226, 'Can change vehicle component model', 57, 'change_vehiclecomponentmodel'),
(227, 'Can delete vehicle component model', 57, 'delete_vehiclecomponentmodel'),
(228, 'Can view vehicle component model', 57, 'view_vehiclecomponentmodel'),
(229, 'Can add vehicle expense model', 58, 'add_vehicleexpensemodel'),
(230, 'Can change vehicle expense model', 58, 'change_vehicleexpensemodel'),
(231, 'Can delete vehicle expense model', 58, 'delete_vehicleexpensemodel'),
(232, 'Can view vehicle expense model', 58, 'view_vehicleexpensemodel'),
(233, 'Can add vehicle history model', 59, 'add_vehiclehistorymodel'),
(234, 'Can change vehicle history model', 59, 'change_vehiclehistorymodel'),
(235, 'Can delete vehicle history model', 59, 'delete_vehiclehistorymodel'),
(236, 'Can view vehicle history model', 59, 'view_vehiclehistorymodel'),
(237, 'Can add vehicle maintenance model', 60, 'add_vehiclemaintenancemodel'),
(238, 'Can change vehicle maintenance model', 60, 'change_vehiclemaintenancemodel'),
(239, 'Can delete vehicle maintenance model', 60, 'delete_vehiclemaintenancemodel'),
(240, 'Can view vehicle maintenance model', 60, 'view_vehiclemaintenancemodel'),
(241, 'Can add vehicle model', 61, 'add_vehiclemodel'),
(242, 'Can change vehicle model', 61, 'change_vehiclemodel'),
(243, 'Can delete vehicle model', 61, 'delete_vehiclemodel'),
(244, 'Can view vehicle model', 61, 'view_vehiclemodel'),
(245, 'Can add vehicle model model', 62, 'add_vehiclemodelmodel'),
(246, 'Can change vehicle model model', 62, 'change_vehiclemodelmodel'),
(247, 'Can delete vehicle model model', 62, 'delete_vehiclemodelmodel'),
(248, 'Can view vehicle model model', 62, 'view_vehiclemodelmodel'),
(249, 'Can add vehicle payment reminder model', 63, 'add_vehiclepaymentremindermodel'),
(250, 'Can change vehicle payment reminder model', 63, 'change_vehiclepaymentremindermodel'),
(251, 'Can delete vehicle payment reminder model', 63, 'delete_vehiclepaymentremindermodel'),
(252, 'Can view vehicle payment reminder model', 63, 'view_vehiclepaymentremindermodel'),
(253, 'Can add vehicle price class model', 64, 'add_vehiclepriceclassmodel'),
(254, 'Can change vehicle price class model', 64, 'change_vehiclepriceclassmodel'),
(255, 'Can delete vehicle price class model', 64, 'delete_vehiclepriceclassmodel'),
(256, 'Can view vehicle price class model', 64, 'view_vehiclepriceclassmodel'),
(257, 'Can add vehicle status model', 65, 'add_vehiclestatusmodel'),
(258, 'Can change vehicle status model', 65, 'change_vehiclestatusmodel'),
(259, 'Can delete vehicle status model', 65, 'delete_vehiclestatusmodel'),
(260, 'Can view vehicle status model', 65, 'view_vehiclestatusmodel'),
(261, 'Can add vehicle type model', 66, 'add_vehicletypemodel'),
(262, 'Can change vehicle type model', 66, 'change_vehicletypemodel'),
(263, 'Can delete vehicle type model', 66, 'delete_vehicletypemodel'),
(264, 'Can view vehicle type model', 66, 'view_vehicletypemodel'),
(265, 'Can add profile', 67, 'add_profile'),
(266, 'Can change profile', 67, 'change_profile'),
(267, 'Can delete profile', 67, 'delete_profile'),
(268, 'Can view profile', 67, 'view_profile'),
(269, 'Can add user profile model', 68, 'add_userprofilemodel'),
(270, 'Can change user profile model', 68, 'change_userprofilemodel'),
(271, 'Can delete user profile model', 68, 'delete_userprofilemodel'),
(272, 'Can view user profile model', 68, 'view_userprofilemodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$390000$KMlLOiMI48obrbGxIyGRUl$zGowS1FNc5aoDfHHkUpTmB0uPWa1eTcWIXAdIUKUTa4=', '2023-01-26 11:38:14.596025', 1, 'Benoit', 'Benoit', 'Kekwandi', 'benoit.kekwandi@final.edu.tr', 1, 1, '2022-12-03 14:10:22.000000'),
(4, 'pbkdf2_sha256$390000$qgwbwk86YEpHE7QeOXkf8x$yTgTZwcDXXGy4jjYMWQ+Igl/0jlMUeA+3OAqPikouX0=', '2023-01-26 11:28:12.882207', 1, 'gizem', 'Gizem', 'Olurdu', 'gizem.olurdu@gmail.com', 1, 1, '2022-12-31 13:32:37.195023');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `captcha_captchastore`
--

CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Liquid fuel', '2022-11-03 14:25:08', '2022-11-03 14:25:08'),
(2, 'Stationary', '2022-11-03 14:25:08', '2022-11-03 14:25:08'),
(3, 'Parts replacement Expense', '2022-11-03 14:25:08', '2022-11-03 14:25:08'),
(4, 'Car rental expenses', '2022-11-03 14:25:08', '2022-11-03 14:25:08'),
(5, 'Product sales', '2022-11-03 14:25:08', '2022-11-03 14:25:08'),
(6, 'Vehicle maintenance Expenses', '2022-11-03 14:25:08', '2022-11-03 14:25:08'),
(7, '', '2022-11-03 14:28:05', '2022-11-03 14:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `check_payment`
--

CREATE TABLE `check_payment` (
  `id` int(11) NOT NULL,
  `check_number` int(11) DEFAULT NULL,
  `checking_account` int(11) DEFAULT NULL,
  `check_holder` varchar(100) DEFAULT NULL,
  `cash_time` date DEFAULT NULL,
  `receipt_time` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `contract_number` varchar(25) NOT NULL,
  `company` tinyint(1) NOT NULL,
  `contract_for` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `issue_date_and_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `rent_days` int(11) DEFAULT NULL,
  `return_date_and_time` datetime DEFAULT NULL,
  `issue_point` varchar(50) DEFAULT NULL,
  `return_point` varchar(50) DEFAULT NULL,
  `early_delivery_date` date DEFAULT NULL,
  `vehicle_issue_address` varchar(50) DEFAULT NULL,
  `vehicle_return_address` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `additional_tool_user` int(11) NOT NULL,
  `payment_total_fee` double DEFAULT NULL,
  `debt` double DEFAULT NULL,
  `payment_currency` int(11) DEFAULT NULL,
  `agent_fee` double DEFAULT NULL,
  `agent_percentage` double DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `additional_tool_user_2` int(11) DEFAULT NULL,
  `contract_file1` varchar(255) DEFAULT NULL,
  `contract_file2` varchar(255) DEFAULT NULL,
  `contract_file3` varchar(255) DEFAULT NULL,
  `contract_file4` varchar(255) DEFAULT NULL,
  `contract_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `contract_number`, `company`, `contract_for`, `vehicle_id`, `issue_date_and_time`, `rent_days`, `return_date_and_time`, `issue_point`, `return_point`, `early_delivery_date`, `vehicle_issue_address`, `vehicle_return_address`, `customer_id`, `additional_tool_user`, `payment_total_fee`, `debt`, `payment_currency`, `agent_fee`, `agent_percentage`, `registration_date`, `created_at`, `updated_at`, `additional_tool_user_2`, `contract_file1`, `contract_file2`, `contract_file3`, `contract_file4`, `contract_status_id`) VALUES
(1, '', 0, 1, 4, '2022-11-18 15:17:00', NULL, '2022-11-18 15:17:00', '', '', '2022-11-18', 'dgtgtrb gbgbtg', 'u776i76i', 2, 17, 56830, NULL, 1, 7585, NULL, '2022-11-18 12:32:04', '2022-11-18 12:32:04', '2022-11-18 12:32:04', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contract_history`
--

CREATE TABLE `contract_history` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `situation` varchar(500) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_payment`
--

CREATE TABLE `contract_payment` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract_payment`
--

INSERT INTO `contract_payment` (`id`, `payment_id`, `contract_id`, `created_at`, `updated_at`) VALUES
(23, 48, 2, '2023-01-02 12:55:59', '2023-01-02 12:55:59'),
(24, 49, 5, '2023-01-02 13:40:12', '2023-01-02 13:40:12'),
(25, 50, 1, '2023-01-02 13:52:43', '2023-01-02 13:52:43'),
(28, 53, 1, '2023-01-17 11:04:40', '2023-01-17 11:04:40'),
(29, 54, 1, '2023-01-17 11:06:34', '2023-01-17 11:06:34'),
(30, 55, 2, '2023-01-17 13:43:02', '2023-01-17 13:43:02'),
(31, 56, 4, '2023-01-17 14:01:29', '2023-01-17 14:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `contract_status`
--

CREATE TABLE `contract_status` (
  `id` int(11) NOT NULL,
  `contract_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract_status`
--

INSERT INTO `contract_status` (`id`, `contract_status`, `created_at`, `updated_at`) VALUES
(1, 'TERMINATED', '2022-11-30 12:01:26', '2022-11-30 12:01:26'),
(2, 'ON-GOING', '2022-11-30 12:01:26', '2022-11-30 12:01:26'),
(3, 'EXTENDED', '2022-12-13 13:26:56', '2022-12-13 13:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card_payment`
--

CREATE TABLE `credit_card_payment` (
  `id` int(11) NOT NULL,
  `bank_pos_account` int(11) DEFAULT NULL,
  `bank_intermediation_fee` double DEFAULT NULL,
  `card_holder` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_card_payment`
--

INSERT INTO `credit_card_payment` (`id`, `bank_pos_account`, `bank_intermediation_fee`, `card_holder`, `created_at`, `updated_at`, `payment_id`) VALUES
(1, 3, 164997898940154, 'Benoit Kekwandi', '2023-01-02 13:40:12', '2023-01-02 13:40:12', 49),
(2, 4, 65605501645464, 'Benoit Kekwandi', '2023-01-02 13:52:43', '2023-01-02 13:52:43', 50);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `currency_code` varchar(5) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'TL', 1, '2022-11-02 12:23:04', '2022-11-02 12:23:04'),
(2, 'USD', 18.65685442022832, '2022-11-02 12:23:04', '2022-12-21 10:14:48'),
(3, 'EUR', 19.7744, '2022-11-02 12:23:04', '2022-12-21 10:14:48'),
(4, 'GBP', 22.591568605049698, '2022-11-02 12:23:04', '2022-12-21 10:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `current_account`
--

CREATE TABLE `current_account` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_currency_id` int(11) DEFAULT NULL,
  `explanation` varchar(100) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `balance` double DEFAULT 0,
  `contract_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `current_account`
--

INSERT INTO `current_account` (`id`, `customer_id`, `account_type_id`, `account_name`, `account_currency_id`, `explanation`, `registration_date`, `created_at`, `updated_at`, `balance`, `contract_id`) VALUES
(1, 1, 4, 'Benoit Kekwandi LLNZ', 1, 'benoit\'s account', '2022-11-03 10:11:40', '2022-11-03 13:11:40', '2022-11-03 13:11:40', 14950, NULL),
(2, 1, 6, 'Benoit Luzolo lwa Nzambi', 1, 'Benoit\'s second account', '2022-11-03 10:13:11', '2022-11-03 13:13:11', '2022-11-03 13:13:11', 0, NULL),
(3, 1, 5, 'BKLL', 4, 'Benoit Pound\'s account', '2022-11-03 10:14:08', '2022-11-03 13:14:08', '2022-11-03 13:14:08', -251.83137210099397, NULL),
(4, 1, 5, 'Ben Kekwandi LNzambi', 3, 'B.Kekwandi\'s temporary  euro account', '2022-11-09 06:41:54', '2022-11-09 06:41:54', '2022-11-09 06:41:54', -150, NULL),
(5, 1, 4, 'B. Kekwandi L. euro', 3, 'B.Kekwandi\'s temporary euro account', '2022-11-09 06:42:44', '2022-11-09 06:42:44', '2022-11-09 06:42:44', -45000, NULL),
(18, 18, 1, 'StevenJohnson-TL', 1, '', '2022-12-17 19:30:53', '2022-12-17 19:30:53', '2022-12-17 19:30:53', -3770, NULL),
(19, 18, 1, 'StevenJohnson-USD', 2, '', '2022-12-17 19:30:53', '2022-12-17 19:30:53', '2022-12-17 19:30:53', 0, NULL),
(20, 18, 1, 'StevenJohnson-EUR', 3, '', '2022-12-17 19:30:53', '2022-12-17 19:30:53', '2022-12-17 19:30:53', 0, NULL),
(21, 18, 1, 'StevenJohnson-GBP', 4, '', '2022-12-17 19:30:53', '2022-12-17 19:30:53', '2022-12-17 19:30:53', 0, NULL),
(26, 19, 10, 'CASH - TL', 1, 'KASA HESAPI TL', '2022-12-26 13:43:35', '2022-12-26 13:43:35', '2022-12-26 13:43:35', 7650, NULL),
(27, 19, 10, 'CASH - USD', 2, 'KASA HESAPI DOLAR', '2022-12-26 13:43:35', '2022-12-26 13:43:35', '2022-12-26 13:43:35', 1285, NULL),
(28, 19, 10, 'CASH - GBP', 4, 'KASA HESAPI STERLING', '2022-12-26 13:46:27', '2022-12-26 13:46:27', '2022-12-26 13:46:27', 0, NULL),
(29, 19, 10, 'CASH - EUR', 3, 'KASA HESAPI EURO', '2022-12-26 13:46:27', '2022-12-26 13:46:27', '2022-12-26 13:46:27', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `cell_phone_1` varchar(25) DEFAULT NULL,
  `cell_phone_2` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `office_phone` varchar(25) DEFAULT NULL,
  `company_name` varchar(25) DEFAULT NULL,
  `home_address` varchar(50) DEFAULT NULL,
  `local_address` varchar(50) DEFAULT NULL,
  `business_address` varchar(50) DEFAULT NULL,
  `nationality` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `passport_no` varchar(20) DEFAULT NULL,
  `driver_license_number` varchar(25) DEFAULT NULL,
  `license_number` varchar(25) DEFAULT NULL,
  `license_issue_date` date DEFAULT NULL,
  `license_issue_place` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `black_list` int(11) DEFAULT NULL,
  `customer_title` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `system_note` varchar(200) DEFAULT NULL,
  `email_2` varchar(50) DEFAULT NULL,
  `account_tl` int(11) DEFAULT NULL,
  `account_dollar` int(11) DEFAULT NULL,
  `account_euro` int(11) DEFAULT NULL,
  `account_pound` int(11) DEFAULT NULL,
  `place_of_birth` varchar(50) DEFAULT NULL,
  `customer_picture` varchar(255) DEFAULT NULL,
  `customer_file1` varchar(255) DEFAULT NULL,
  `customer_file2` varchar(255) DEFAULT NULL,
  `customer_file3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `type_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `date_of_birth`, `phone_number`, `cell_phone_1`, `cell_phone_2`, `home_phone`, `business_phone`, `office_phone`, `company_name`, `home_address`, `local_address`, `business_address`, `nationality`, `email`, `passport_no`, `driver_license_number`, `license_number`, `license_issue_date`, `license_issue_place`, `created_at`, `updated_at`, `black_list`, `customer_title`, `job`, `student`, `student_id`, `country`, `blood_group`, `system_note`, `email_2`, `account_tl`, `account_dollar`, `account_euro`, `account_pound`, `place_of_birth`, `customer_picture`, `customer_file1`, `customer_file2`, `customer_file3`) VALUES
(1, 1, 'Benoit', 'Kekwandi', '', '', '2022-11-03', '', '', '', '', '', NULL, NULL, 'girne tepebasi avenue', '', '', '', 'benoitkekwandi@gmail.com', 'jghfdghjk', NULL, '665566262', '2022-11-26', ';kluyjghfhj', '2022-11-03 09:04:37', '2022-11-03 09:04:37', 0, 'mr', '', NULL, NULL, 'Cyprus', 'AB', '', 'benoitkekwandi@gmail.com', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(2, 1, 'Gizem', 'Olurdu', 'UKIYLIOUL', 'HYJUJ7U5K', '2022-11-14', 'LOLOUILL', 'LIULIUL', '', 'LIULIUL', 'OOUOUL', NULL, NULL, 'wdasfrw', 'frfregfregr', 'rgrgfrfgrf', 'HTHTRHRYH', 'gizemolurdu@gmail.com', 'UK98904885', NULL, 'fgrg4gfrg4', '2022-11-25', 'grgr3gr3g', '2022-11-14 08:49:10', '2022-11-14 08:49:10', 1, 'ms', 'ILILIL', NULL, NULL, 'RFRGTEGTRH', 'AB', '', 'O;PI\';PI\'', NULL, NULL, NULL, NULL, 'JKHDEDGEJHC', NULL, NULL, NULL, NULL),
(3, 1, 'Ediz ', 'Ertugrul ', 'UKIYLIOUL', 'HYJUJ7U5K', '2022-11-14', 'LOLOUILL', 'LIULIUL', '', 'LIULIUL', 'OOUOUL', NULL, NULL, 'kujty', 'jytjytjrthre', 'htrherhwr', 'HTHTRHRYH', 'zeusholdem@gmail.com', 'UK98904885', NULL, 'gerhg5thh45', '2022-04-06', 'u6u65u65u', '2022-11-14 08:56:47', '2022-11-14 08:56:47', 1, '3re2r', 'ILILIL', NULL, NULL, 'RFRGTEGTRH', 'AB', 'ewretrytrh', 'O;PI\';PI\'', NULL, NULL, NULL, NULL, 'JKHDEDGEJHC', NULL, NULL, NULL, NULL),
(18, 1, 'Steven', 'Johnson', 'Boris Johnson', 'Elisabeth Courtney', '1993-05-05', '+163258903210', '+163258903210', '', '+163258903210', '+163258903210', NULL, NULL, 'Maddison sq.', 'Maddison sq.', 'Maddison sq.', 'british', 'stevenjohnson@gmail.com', 'UK4715002', NULL, '0971079-Uk-958520', '2004-12-10', 'London', '2022-12-17 19:30:53', '2022-12-17 19:30:53', 2, 'mr', 'Hardware repaired', NULL, NULL, 'United Kingdom', 'A', '', 'stevenjohnson@gmail.com', NULL, NULL, NULL, NULL, 'London', NULL, NULL, NULL, NULL),
(19, 2, 'OWNER', 'OWNER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-26 13:41:16', '2022-12-26 13:41:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 'ronald', 'Reagan', '', '', '1989-10-10', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', '2008-10-12', '', '2022-12-29 11:05:47', '2022-12-29 11:05:47', NULL, 'mr', '', NULL, NULL, '', 'AB', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(21, 1, 'Alice', 'Burntley', '', '', '1992-06-06', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', '2017-12-06', '', '2022-12-29 11:09:27', '2022-12-29 11:09:27', NULL, 'ms', '', NULL, NULL, '', 'AB', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_black_list`
--

CREATE TABLE `customer_black_list` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_black_list`
--

INSERT INTO `customer_black_list` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'blacklisted', '2022-11-16 09:16:02', '2022-11-16 09:16:02'),
(2, 'whitelisted', '2022-11-16 09:16:02', '2022-11-16 09:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `id` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'individual customer', '2022-11-02 12:24:26', '2022-11-02 12:24:26'),
(2, 'company', '2022-11-02 12:24:26', '2022-11-02 12:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `default_payment`
--

CREATE TABLE `default_payment` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-12-03 15:18:29.007140', '1', 'Benoit', 3, '', 4, 3),
(2, '2022-12-03 15:18:29.012140', '2', 'Benoit_Kekwandi', 3, '', 4, 3),
(3, '2022-12-03 15:22:01.179993', '3', 'plamedi', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 3),
(4, '2023-01-26 10:28:01.660657', '1', 'user_profile', 1, '[{\"added\": {}}]', 67, 4),
(5, '2023-01-26 10:28:13.001640', '2', 'user_profile', 1, '[{\"added\": {}}]', 67, 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'captcha', 'captchastore'),
(5, 'contenttypes', 'contenttype'),
(8, 'fleet', 'accounthistorymodel'),
(9, 'fleet', 'accountingeventmodel'),
(10, 'fleet', 'accountingeventtypemodel'),
(11, 'fleet', 'accountingitemmodel'),
(12, 'fleet', 'accountoperationmodel'),
(13, 'fleet', 'accountstatementmodel'),
(14, 'fleet', 'accounttypemodel'),
(15, 'fleet', 'additionaltoolusermodel'),
(16, 'fleet', 'categorymodel'),
(17, 'fleet', 'checkpaymentmodel'),
(18, 'fleet', 'companymodel'),
(19, 'fleet', 'contracthistorymodel'),
(20, 'fleet', 'contractmodel'),
(21, 'fleet', 'contractpaymentmodel'),
(22, 'fleet', 'contractstatusmodel'),
(23, 'fleet', 'creditcardpaymentmodel'),
(24, 'fleet', 'currencymodel'),
(25, 'fleet', 'currentaccountmodel'),
(26, 'fleet', 'customerblacklistmodel'),
(27, 'fleet', 'customermodel'),
(28, 'fleet', 'customertypemodel'),
(29, 'fleet', 'defaultpaymentmodel'),
(30, 'fleet', 'expensemodel'),
(31, 'fleet', 'filetypemodel'),
(32, 'fleet', 'fileuploadmodel'),
(33, 'fleet', 'foundpaymentmodel'),
(34, 'fleet', 'incomemodel'),
(35, 'fleet', 'invoicemodel'),
(36, 'fleet', 'mailorderpaymentmodel'),
(37, 'fleet', 'operationstatusmodel'),
(38, 'fleet', 'operationtypemodel'),
(39, 'fleet', 'paymentformodel'),
(40, 'fleet', 'paymentmethodmodel'),
(41, 'fleet', 'paymentmodel'),
(42, 'fleet', 'paymentstatusmodel'),
(43, 'fleet', 'placemodel'),
(44, 'fleet', 'pricingmethodmodel'),
(67, 'fleet', 'profile'),
(45, 'fleet', 'regionmodel'),
(46, 'fleet', 'reservationmodel'),
(47, 'fleet', 'reservationpaymentmodel'),
(48, 'fleet', 'reservationstatusmodel'),
(49, 'fleet', 'stopmodel'),
(50, 'fleet', 'studentmodel'),
(51, 'fleet', 'systemremindermodel'),
(52, 'fleet', 'systemremindertypemodel'),
(53, 'fleet', 'transferpaymentmodel'),
(68, 'fleet', 'userprofilemodel'),
(54, 'fleet', 'usertypemodel'),
(55, 'fleet', 'vehiclebrandmodel'),
(56, 'fleet', 'vehiclecapacitymodel'),
(57, 'fleet', 'vehiclecomponentmodel'),
(58, 'fleet', 'vehicleexpensemodel'),
(59, 'fleet', 'vehiclehistorymodel'),
(60, 'fleet', 'vehiclemaintenancemodel'),
(61, 'fleet', 'vehiclemodel'),
(62, 'fleet', 'vehiclemodelmodel'),
(63, 'fleet', 'vehiclepaymentremindermodel'),
(64, 'fleet', 'vehiclepriceclassmodel'),
(65, 'fleet', 'vehiclestatusmodel'),
(66, 'fleet', 'vehicletypemodel'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-09 07:43:35.283317'),
(2, 'auth', '0001_initial', '2022-11-09 07:43:36.188020'),
(3, 'admin', '0001_initial', '2022-11-09 07:43:36.443734'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-09 07:43:36.484277'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-09 07:43:36.528279'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-09 07:43:36.684992'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-09 07:43:36.802615'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-09 07:43:36.921342'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-09 07:43:36.992340'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-09 07:43:37.118340'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-09 07:43:37.160283'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-09 07:43:37.199356'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-09 07:43:37.253359'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-09 07:43:37.363353'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-09 07:43:37.445353'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-09 07:43:37.491353'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-09 07:43:37.569353'),
(18, 'sessions', '0001_initial', '2022-11-09 07:43:37.679354'),
(19, 'captcha', '0001_initial', '2022-12-30 11:40:10.949904'),
(20, 'captcha', '0002_alter_captchastore_id', '2022-12-30 11:40:11.025900'),
(21, 'fleet', '0001_initial', '2023-01-26 08:59:00.173048'),
(22, 'fleet', '0002_delete_profile', '2023-01-26 08:59:00.180050'),
(23, 'fleet', '0003_profile', '2023-01-26 08:59:00.186049'),
(24, 'fleet', '0004_userprofilemodel_delete_usermodel_and_more', '2023-01-26 08:59:00.192048'),
(25, 'fleet', '0005_rename_image_profile_profile_picture', '2023-01-26 09:28:05.308033'),
(26, 'fleet', '0006_remove_profile_user_delete_userprofilemodel_and_more', '2023-01-26 09:28:05.334034'),
(27, 'fleet', '0007_profile', '2023-01-26 09:47:03.996414');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1lp881n7zscsw2tfny5p2snrzflrdg7w', '.eJxVjEEOwiAQRe_C2hCwUMCl-56BMMOMVA0kpV0Z765NutDtf-_9l4hpW0vcOi1xzuIiBnH63SDhg-oO8j3VW5PY6rrMIHdFHrTLqWV6Xg_376CkXr61P6NlsGRVwgEHQ8wjOWdUUJxJZWsNO3DGhxC89iYBZSTNmvSoFKB4fwD4sjhw:1pAU7A:LvhmTUCTJn0kT-Hueh_YzHobe8BGCt6UqWPo5j3sXTo', '2023-01-11 13:56:52.850604'),
('1rivu405f733ckgnjb6mn85stzwy838e', '.eJxVjDsOwjAQBe_iGlkx_q0p6XMGa-1d4QCypTipEHcHSymgeM2b0bxExH0rce-8xoXERWhx-v0S5gfXAeiO9dZkbnVblySHIg_a5dyIn9fD_QsU7GVkKVifnWNjMNBZB4uOldYTsgoAARG8NUSZPDgPhMpmo4CdTtN3Rrw_0dM3Ww:1p1QQp:bd1VYOSVXBcb_7TSugfeTnnFrJMo1WPB6JX3p2KRegI', '2022-12-17 14:11:43.437970'),
('fktkii9zc68m42qey1kgnakce8aagsaf', '.eJxVjDsOwjAQBe_iGln-xD9K-pzBWnvXOIAcKU4qxN1JpBTQvpl5bxZhW2vcOi1xQnZlA7v8bgnyk9oB8AHtPvM8t3WZEj8UftLOxxnpdTvdv4MKve61AgRttVcJjHVogIiKFs6GoRgiDJSF1zv0wXipfNJKFmcVWBswScE-X_TrN98:1pGIWz:-Fx6zJDi5Th3ZY87kYsd0T4_JMLtFq1F3UNsTjkHLpI', '2023-01-27 03:47:33.693763'),
('gywemwsmf8c6fnk6qblajm49y6zohvjx', '.eJxVjEEOwiAQRe_C2hCwUMCl-56BMMOMVA0kpV0Z765NutDtf-_9l4hpW0vcOi1xzuIiBnH63SDhg-oO8j3VW5PY6rrMIHdFHrTLqWV6Xg_376CkXr61P6NlsGRVwgEHQ8wjOWdUUJxJZWsNO3DGhxC89iYBZSTNmvSoFKB4fwD4sjhw:1p97xH:hTuNbd5uDbCwtSKkWyP_vwY3Ols07bJrHbdD9uPkShU', '2023-01-07 20:05:03.499444'),
('k6y0o9zb1050fmexxat81yuag3t4emvx', '.eJxVjDsOwjAQBe_iGln-xD9K-pzBWnvXOIAcKU4qxN1JpBTQvpl5bxZhW2vcOi1xQnZlA7v8bgnyk9oB8AHtPvM8t3WZEj8UftLOxxnpdTvdv4MKve61AgRttVcJjHVogIiKFs6GoRgiDJSF1zv0wXipfNJKFmcVWBswScE-X_TrN98:1pBZB6:1IsQG8cfDjOma1FiNKe3e1_rj2e4g8GWtZ4sYhmGjww', '2023-01-14 13:33:24.209686'),
('kc21mrrp1unclig5zuygbn3asaq67i57', '.eJxVjEEOwiAQRe_C2hCwUMCl-56BMMOMVA0kpV0Z765NutDtf-_9l4hpW0vcOi1xzuIiBnH63SDhg-oO8j3VW5PY6rrMIHdFHrTLqWV6Xg_376CkXr61P6NlsGRVwgEHQ8wjOWdUUJxJZWsNO3DGhxC89iYBZSTNmvSoFKB4fwD4sjhw:1pAXiJ:kUmdaNALhsArMYt6aIxnklniD-TD_fvLOkMc66D3wmE', '2023-01-11 17:47:27.461941'),
('lw2cqu6o48hxrq6nkgp7ec5xjoirk0cr', '.eJxVjEEOwiAQRe_C2hCwUMCl-56BMMOMVA0kpV0Z765NutDtf-_9l4hpW0vcOi1xzuIiBnH63SDhg-oO8j3VW5PY6rrMIHdFHrTLqWV6Xg_376CkXr61P6NlsGRVwgEHQ8wjOWdUUJxJZWsNO3DGhxC89iYBZSTNmvSoFKB4fwD4sjhw:1pL84c:bc9KcmGsH4jvy1EEgo8qAC0ZoKDmshrxD6JKr54t5BQ', '2023-02-09 11:38:14.600027'),
('og2h696h91kx5fzsz8tjn4vnmr9n0e6z', '.eJxVjEEOwiAQRe_C2hCwUMCl-56BMMOMVA0kpV0Z765NutDtf-_9l4hpW0vcOi1xzuIiBnH63SDhg-oO8j3VW5PY6rrMIHdFHrTLqWV6Xg_376CkXr61P6NlsGRVwgEHQ8wjOWdUUJxJZWsNO3DGhxC89iYBZSTNmvSoFKB4fwD4sjhw:1pAqJV:RKGDp9KE8-faDqOTL-U7RwUcG6XxGQfWo0fYkMnlcaw', '2023-01-12 13:39:05.884959'),
('smmnlgtcv05fnrnxxlmu1f6j756bb3hi', '.eJxVjDsOwjAQBe_iGln-xD9K-pzBWnvXOIAcKU4qxN1JpBTQvpl5bxZhW2vcOi1xQnZlA7v8bgnyk9oB8AHtPvM8t3WZEj8UftLOxxnpdTvdv4MKve61AgRttVcJjHVogIiKFs6GoRgiDJSF1zv0wXipfNJKFmcVWBswScE-X_TrN98:1pD0pP:Oz9N2OQ0Z1Y01QLBRBbjCLGaLQyDKwD73LrdxA2MYKU', '2023-01-18 13:16:59.424003'),
('th7o14nxn99vckiq3q93o8swivu866z4', '.eJxVjDsOwjAQBe_iGln-xD9K-pzBWnvXOIAcKU4qxN1JpBTQvpl5bxZhW2vcOi1xQnZlA7v8bgnyk9oB8AHtPvM8t3WZEj8UftLOxxnpdTvdv4MKve61AgRttVcJjHVogIiKFs6GoRgiDJSF1zv0wXipfNJKFmcVWBswScE-X_TrN98:1pD3en:BhfNAFs8ELlPJfTHHbDp7kZ_iqvLT7Rtwl78ofeu-A4', '2023-01-18 16:18:13.994988'),
('wj5vttrui2q8qz9tnmyscxq01aifc8nq', '.eJxVjEEOwiAQRe_C2hCwUMCl-56BMMOMVA0kpV0Z765NutDtf-_9l4hpW0vcOi1xzuIiBnH63SDhg-oO8j3VW5PY6rrMIHdFHrTLqWV6Xg_376CkXr61P6NlsGRVwgEHQ8wjOWdUUJxJZWsNO3DGhxC89iYBZSTNmvSoFKB4fwD4sjhw:1pBdPO:Dt7ZfM3akZrvPebamI-tJASSqQ8x7sVrBsM2kGoHwWM', '2023-01-14 18:04:26.025719');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `provider_account_id` int(11) DEFAULT NULL,
  `accounting_item_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `exchange_rate` double DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_status_id` int(11) DEFAULT NULL,
  `expense_category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `file_path` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_name`, `file_path`, `created_at`, `updated_at`, `file_type_id`) VALUES
(1, '0001.jpg', 'uploads/0001.jpg', '2022-11-29 11:41:39', '2022-11-29 11:41:39', NULL),
(2, 'fleet_django.sql', 'uploads/fleet_django.sql', '2022-11-29 11:44:03', '2022-11-29 11:44:03', NULL),
(3, 'fleet_django.sql', 'uploads/fleet_django.sql', '2022-11-29 11:56:54', '2022-11-29 11:56:54', NULL),
(4, 'fleet_django.sql', 'uploads/fleet_django.sql', '2022-11-29 11:57:17', '2022-11-29 11:57:17', NULL),
(5, 'fleet_django.sql', 'uploads/fleet_django.sql', '2022-11-29 11:58:29', '2022-11-29 11:58:29', NULL),
(6, 'fleet_django.sql', 'uploads/fleet_django.sql', '2022-11-29 11:59:36', '2022-11-29 11:59:36', NULL),
(7, 'download.png', 'uploads/download.png', '2022-11-29 12:03:00', '2022-11-29 12:03:00', NULL),
(8, 'files-file_data.jpg', 'uploads/files-file_data.jpg', '2022-11-29 12:33:36', '2022-11-29 12:33:36', NULL),
(9, 'files-file_data.jpg', 'uploads/files-file_data.jpg', '2022-11-29 12:34:11', '2022-11-29 12:34:11', NULL),
(10, 'files-file_data.jpg', 'uploads/files-file_data.jpg', '2022-11-29 12:34:46', '2022-11-29 12:34:46', NULL),
(11, 'files-file_data.jpg', 'uploads/files-file_data.jpg', '2022-11-29 12:35:19', '2022-11-29 12:35:19', NULL),
(12, 'files-file_data.jpg', 'uploads/files-file_data.jpg', '2022-11-29 12:35:38', '2022-11-29 12:35:38', NULL),
(13, 'font_helvetica.php', 'uploads/font_helvetica.php', '2022-11-29 12:36:54', '2022-11-29 12:36:54', NULL),
(14, 'mazda.jpg', 'uploads/mazda.jpg', '2022-11-29 12:42:37', '2022-11-29 12:42:37', NULL),
(15, 'mazda.jpg', 'uploads/mazda.jpg', '2022-11-29 12:43:39', '2022-11-29 12:43:39', NULL),
(16, 'mazda.jpg', 'uploads/mazda.jpg', '2022-11-29 12:43:53', '2022-11-29 12:43:53', NULL),
(17, 'Screenshot_20221126_040334.png', 'uploads/vehicle_brands/Screenshot_20221126_040334.png', '2022-11-30 07:18:05', '2022-11-30 07:18:05', NULL),
(18, 'Screenshot_20221126_040334.png', 'uploads/vehicle_brands/Screenshot_20221126_040334.png', '2022-11-30 07:18:12', '2022-11-30 07:18:12', NULL),
(19, '16698036032603416924924221860370.jpg', 'uploads/customers/16698036032603416924924221860370.jpg', '2022-11-30 07:20:30', '2022-11-30 07:20:30', NULL),
(20, '16698239900137125001284901811355.jpg', 'uploads/customers/16698239900137125001284901811355.jpg', '2022-11-30 17:00:04', '2022-11-30 17:00:04', NULL),
(21, '16698240726794829913650217465688.jpg', 'uploads/customers/16698240726794829913650217465688.jpg', '2022-11-30 17:01:52', '2022-11-30 17:01:52', NULL),
(22, 'None', 'uploads/vehicle_brands/None', '2022-12-01 13:05:42', '2022-12-01 13:05:42', NULL),
(23, 'None', 'uploads/vehicle_brands/None', '2022-12-01 13:06:13', '2022-12-01 13:06:13', NULL),
(24, 'None', 'uploads/vehicle_brands/None', '2022-12-01 13:06:47', '2022-12-01 13:06:47', NULL),
(25, 'mitsubishi.png', 'uploads/vehicle_brands/mitsubishi.png', '2022-12-01 13:54:37', '2022-12-01 13:54:37', NULL),
(26, 'bugati.jpg', 'uploads/vehicle_brands/bugati.jpg', '2022-12-01 13:55:06', '2022-12-01 13:55:06', NULL),
(27, 'Ford-Philippines.jpg', 'uploads/vehicle_brands/Ford-Philippines.jpg', '2022-12-01 13:59:47', '2022-12-01 13:59:47', NULL),
(28, 'chrysler limousine.jpg', 'uploads/vehicle_types/chrysler limousine.jpg', '2022-12-01 14:15:26', '2022-12-01 14:15:26', NULL),
(29, 'suzuki swift SZ20NHP.jpg', 'uploads/vehicles/suzuki swift SZ20NHP.jpg', '2022-12-02 08:21:11', '2022-12-02 08:21:11', NULL),
(30, 'suzuki swift SZ20NHP.jpg', 'uploads/vehicles/suzuki swift SZ20NHP.jpg', '2022-12-02 08:28:13', '2022-12-02 08:28:13', NULL),
(31, '2022_alfa_romeo_stelvio_angularfront.jpg', 'uploads/vehicle_models/2022_alfa_romeo_stelvio_angularfront.jpg', '2022-12-02 11:43:39', '2022-12-02 11:43:39', NULL),
(32, 'Alfa-Romeo-Stelvio-Quadrifoglio.jpg', 'uploads/vehicle_models/Alfa-Romeo-Stelvio-Quadrifoglio.jpg', '2022-12-02 11:43:39', '2022-12-02 11:43:39', NULL),
(33, 'iXewvWXbQjie97v9lQ3Z.jpg', 'uploads/vehicle_models/iXewvWXbQjie97v9lQ3Z.jpg', '2022-12-02 11:43:39', '2022-12-02 11:43:39', NULL),
(34, 'Ri5hkl.jpg', 'uploads/vehicle_models/Ri5hkl.jpg', '2022-12-02 11:43:39', '2022-12-02 11:43:39', NULL),
(35, 'Bajaj-RE60.jpg', 'uploads/vehicles/Bajaj-RE60.jpg', '2022-12-02 12:34:31', '2022-12-02 12:34:31', NULL),
(36, 'technical_report_structure_template_17102022 (1).docx', 'uploads/contracts/technical_report_structure_template_17102022 (1).docx', '2022-12-02 12:51:46', '2022-12-02 12:51:46', NULL),
(37, 'proposal (1).doc', 'uploads/contracts/proposal (1).doc', '2022-12-02 12:51:46', '2022-12-02 12:51:46', NULL),
(38, 'research Titles for research design students (1).docx', 'uploads/contracts/research Titles for research design students (1).docx', '2022-12-02 12:51:46', '2022-12-02 12:51:46', NULL),
(39, 'fleet_django.sql', 'uploads/contracts/fleet_django.sql', '2022-12-02 12:51:46', '2022-12-02 12:51:46', NULL),
(40, 'nael.jpg', 'uploads/customers/nael.jpg', '2022-12-02 13:32:53', '2022-12-02 13:32:53', NULL),
(41, 'nael.jpg', 'uploads/customers/nael.jpg', '2022-12-02 13:32:53', '2022-12-02 13:32:53', NULL),
(42, 'nael.jpg', 'uploads/customers/nael.jpg', '2022-12-02 13:32:53', '2022-12-02 13:32:53', NULL),
(43, 'nael.jpg', 'uploads/customers/nael.jpg', '2022-12-02 13:33:43', '2022-12-02 13:33:43', NULL),
(44, 'nael.jpg', 'uploads/customers/nael.jpg', '2022-12-02 13:33:43', '2022-12-02 13:33:43', NULL),
(45, 'nael.jpg', 'uploads/customers/nael.jpg', '2022-12-02 13:33:43', '2022-12-02 13:33:43', NULL),
(46, 'turbo_reactor.jpg', 'uploads/vehicle_brands/turbo_reactor.jpg', '2022-12-14 11:35:44', '2022-12-14 11:35:44', NULL),
(47, 'turbo_reactor.jpg', 'uploads/vehicle_brands/turbo_reactor.jpg', '2022-12-14 11:40:36', '2022-12-14 11:40:36', NULL),
(48, 'turbo_reactor.jpg', 'uploads/vehicle_types/turbo_reactor.jpg', '2022-12-14 11:57:54', '2022-12-14 11:57:54', NULL),
(49, 'turbo_reactor.jpg', 'uploads/vehicle_types/turbo_reactor.jpg', '2022-12-14 12:02:05', '2022-12-14 12:02:05', NULL),
(50, '2022_alfa_romeo_stelvio_angularfront.jpg', 'uploads/customers/2022_alfa_romeo_stelvio_angularfront.jpg', '2022-12-17 19:30:53', '2022-12-17 19:30:53', NULL),
(51, 'Bajaj-RE60.jpg', 'uploads/customers/Bajaj-RE60.jpg', '2022-12-17 19:30:53', '2022-12-17 19:30:53', NULL),
(52, 'suzuki swift SZ20NHP.jpg', 'uploads/customers/suzuki swift SZ20NHP.jpg', '2022-12-17 19:30:53', '2022-12-17 19:30:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_type`
--

CREATE TABLE `file_type` (
  `id` int(11) NOT NULL,
  `file_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_type`
--

INSERT INTO `file_type` (`id`, `file_type`, `created_at`, `updated_at`) VALUES
(1, 'customer_photo', '2022-11-29 13:56:43', '2022-11-29 13:56:43'),
(2, 'customer_documents', '2022-11-29 13:56:43', '2022-11-29 13:56:43'),
(3, 'vehicle_brand_photo', '2022-11-29 13:57:23', '2022-11-29 13:57:23'),
(4, 'vehicle_model_photo', '2022-11-29 13:57:55', '2022-11-29 13:57:55'),
(5, 'vehicle_type_photo', '2022-11-29 13:58:12', '2022-11-29 13:58:12'),
(6, 'admin_picture', '2022-11-29 13:58:27', '2022-11-29 13:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_profile`
--

CREATE TABLE `fleet_profile` (
  `id` bigint(20) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fleet_profile`
--

INSERT INTO `fleet_profile` (`id`, `profile_picture`, `user_id`) VALUES
(1, 'atoll.jpg', 4),
(2, 'benoit.jfif', 3);

-- --------------------------------------------------------

--
-- Table structure for table `found_payment`
--

CREATE TABLE `found_payment` (
  `id` int(11) NOT NULL,
  `cash_account` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `found_payment`
--

INSERT INTO `found_payment` (`id`, `cash_account`, `created_at`, `updated_at`, `payment_id`) VALUES
(7, 26, '2023-01-02 12:55:59', '2023-01-02 12:55:59', 48),
(10, 27, '2023-01-17 11:06:34', '2023-01-17 11:06:34', 54),
(11, 26, '2023-01-17 13:43:02', '2023-01-17 13:43:02', 55),
(12, 26, '2023-01-17 14:01:29', '2023-01-17 14:01:29', 56);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `paying_account_id` int(11) DEFAULT NULL,
  `accounting_item_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `collection_category` varchar(25) DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `paying_account_id`, `accounting_item_id`, `invoice_id`, `payment_method_id`, `fee_amount`, `currency_id`, `exchange_rate`, `payment_date`, `collection_category`, `explanation`, `created_at`, `updated_at`) VALUES
(1, 18, 1, NULL, 2, 100, 1, 1, '2022-12-20 14:16:10', 'Car rental expenses', '', '2022-12-20 14:16:10', '2022-12-20 14:16:10'),
(2, 3, 18, NULL, 5, 200, 4, 1, '2023-01-02 13:36:29', 'Stationary', 'Money received in BKLL Pound Account', '2023-01-02 13:36:29', '2023-01-02 13:36:29'),
(3, 1, 3, NULL, 5, 150000, 1, 1, '2023-01-02 13:45:58', 'Stationary', 'shit', '2023-01-02 13:45:58', '2023-01-02 13:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `accounting_item_id` int(11) DEFAULT NULL,
  `collection_date` date DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `current_account_id` int(11) DEFAULT NULL,
  `invoice_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_date`, `accounting_item_id`, `collection_date`, `currency_id`, `fee_amount`, `explanation`, `created_at`, `updated_at`, `current_account_id`, `invoice_number`) VALUES
(1, '2022-11-03 12:16:07', 1, NULL, 1, 0, 'first Benoit\'s invoice', '2022-11-03 12:16:07', '2022-11-03 12:16:07', 1, NULL),
(2, '2022-11-03 12:21:15', 1, NULL, 1, 0, 'first Benoit\'s invoice', '2022-11-03 12:21:15', '2022-11-03 12:21:15', 1, NULL),
(3, '2022-11-03 12:26:52', 5, '2022-11-03', 1, 0, 'Electricity payment invoice', '2022-11-03 12:26:52', '2022-11-03 12:26:52', 1, NULL),
(4, '2022-11-03 12:29:12', 11, '2022-06-17', 1, 52000, 'staff salary invoice', '2022-11-03 12:29:12', '2022-11-03 12:29:12', 3, NULL),
(5, '2022-11-03 12:41:16', 11, '2022-06-17', 1, 52000, 'staff salary invoice', '2022-11-03 12:41:16', '2022-11-03 12:41:16', 3, '89575562'),
(6, '2022-11-03 12:42:09', 17, '2022-11-03', 1, 78000, 'Vehicle maintenance invoice', '2022-11-03 12:42:09', '2022-11-03 12:42:09', 2, NULL),
(7, '2022-11-04 12:14:31', 17, '2022-11-03', 1, 78000, 'Vehicle maintenance invoice', '2022-11-04 12:14:31', '2022-11-04 12:14:31', 2, NULL),
(8, '2022-11-04 12:14:36', 17, '2022-11-03', 1, 78000, 'Vehicle maintenance invoice', '2022-11-04 12:14:36', '2022-11-04 12:14:36', 2, NULL),
(9, '2022-11-04 12:14:49', 17, '2022-11-03', 1, 78000, 'Vehicle maintenance invoice', '2022-11-04 12:14:49', '2022-11-04 12:14:49', 2, NULL),
(10, '2022-11-09 07:36:06', 11, '2022-11-09', NULL, 985000, 'salary payment of staff personels', '2022-11-09 07:36:06', '2022-11-09 07:36:06', NULL, NULL),
(11, '2022-11-09 07:43:03', 11, '2022-11-09', NULL, 985000, 'salary payment of staff personels', '2022-11-09 07:43:03', '2022-11-09 07:43:03', 1, NULL),
(12, '2022-11-09 07:43:46', 7, '2022-11-09', NULL, 6800, 'Insurance expense paid !!!', '2022-11-09 07:43:46', '2022-11-09 07:43:46', 2, NULL),
(13, '2022-11-09 07:47:16', 7, '2022-11-09', 1, 6800, 'Insurance expense paid !!!', '2022-11-09 07:47:16', '2022-11-09 07:47:16', 2, NULL),
(14, '2022-11-09 07:48:00', 16, '2022-11-09', 1, 748285, 'Normal car rental income', '2022-11-09 07:48:00', '2022-11-09 07:48:00', 4, NULL),
(15, '2022-11-09 08:53:18', 16, '2022-11-09', 1, 748285, 'Normal car rental income', '2022-11-09 08:53:18', '2022-11-09 08:53:18', 4, '156479');

-- --------------------------------------------------------

--
-- Table structure for table `mail_order_payment`
--

CREATE TABLE `mail_order_payment` (
  `id` int(11) NOT NULL,
  `pos_account` int(11) DEFAULT NULL,
  `card_type_provider` varchar(100) DEFAULT NULL,
  `card_number` varchar(100) DEFAULT NULL,
  `card_holder` varchar(100) DEFAULT NULL,
  `cvc_code` varchar(20) DEFAULT NULL,
  `expiry_year` int(11) DEFAULT NULL,
  `expiry_month` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_contract`
--

CREATE TABLE `new_contract` (
  `id` int(11) NOT NULL,
  `contract_number` varchar(50) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `contract_for` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `issue_date_and_time` datetime DEFAULT NULL,
  `rent_days` int(11) DEFAULT NULL,
  `return_date_and_time` datetime DEFAULT NULL,
  `issue_point` varchar(100) DEFAULT NULL,
  `return_point` varchar(100) DEFAULT NULL,
  `early_delivery_date` datetime DEFAULT NULL,
  `vehicle_issue_address` varchar(100) DEFAULT NULL,
  `vehicle_return_address` varchar(100) DEFAULT NULL,
  `customer_id` varchar(100) DEFAULT NULL,
  `payment_total_fee` double DEFAULT NULL,
  `debt` double DEFAULT NULL,
  `payment_currency` int(11) DEFAULT NULL,
  `agent_fee` double DEFAULT NULL,
  `agent_percentage` double DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `contract_status_id` int(11) DEFAULT NULL,
  `payment_completion` tinyint(1) DEFAULT NULL,
  `amount_paid` double DEFAULT NULL,
  `intermediary_company_account` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_contract`
--

INSERT INTO `new_contract` (`id`, `contract_number`, `company`, `contract_for`, `vehicle_id`, `issue_date_and_time`, `rent_days`, `return_date_and_time`, `issue_point`, `return_point`, `early_delivery_date`, `vehicle_issue_address`, `vehicle_return_address`, `customer_id`, `payment_total_fee`, `debt`, `payment_currency`, `agent_fee`, `agent_percentage`, `registration_date`, `created_at`, `updated_at`, `contract_status_id`, `payment_completion`, `amount_paid`, `intermediary_company_account`) VALUES
(1, '', 0, 1, 3, '2022-11-26 18:13:00', 1, '2022-11-26 16:17:00', '', '', '2022-12-03 00:00:00', '34t43t34t3', '3a4t43ta3ta3', '1', 800, 40, 2, 7585, NULL, '2022-11-26 13:15:21', '2022-11-26 10:15:21', '2022-11-26 13:15:21', 1, 0, 760, NULL),
(2, '', 0, 1, 6, '2022-11-30 01:30:00', NULL, '2022-12-30 01:30:00', '', '', '2022-11-19 00:00:00', 'Basakcehir Armitakoy Cd. st 87', 'Basakcehir Armitakoy Cd. st 87', '3', 7800, 3000, 1, 7585, NULL, '2022-11-30 10:33:14', '2022-11-30 07:33:14', '2022-11-30 10:33:14', 1, 0, 4800, NULL),
(3, '', 0, 1, 5, '2022-11-05 13:45:00', NULL, '2023-01-06 15:51:00', '', '', '2022-11-02 00:00:00', 'ewccedc', 'crcecrcvrdcv', '2', 250, 125.00000000000001, 2, 7585, NULL, '2022-11-30 10:52:44', '2022-11-30 07:52:44', '2022-11-30 10:52:44', 1, 0, 124.99999999999999, NULL),
(4, '', 0, 1, 5, '2022-12-02 14:01:00', NULL, '2022-11-30 14:01:00', '', '', '2022-12-01 00:00:00', 'Girne Baris Park', 'Lefkosa Lemar', '2', 3850, 1000, 1, 7585, NULL, '2022-11-30 11:03:31', '2022-11-30 08:03:31', '2022-11-30 11:03:31', 1, 0, 2850, NULL),
(5, '', 0, 1, 10, '2022-12-02 15:48:00', NULL, '2022-12-02 15:48:00', '', '', '2022-12-02 00:00:00', 'fleet', 'fleet', '1', 9800, 9348.168627899006, 1, 775, NULL, '2022-12-02 15:51:46', '2022-12-02 12:51:46', '2022-12-02 15:51:46', 1, 0, 451.831372100994, NULL),
(6, '', 0, 1, 1, '2022-12-19 20:38:00', 18, '2023-01-06 20:38:00', '', '', '2022-12-19 00:00:00', 'dfbgb ttgt trbtgbt', 'hy6hy5hb bytb ybytb ', '18', 3870, 3870, 1, 258, NULL, '2022-12-19 20:40:37', '2022-12-19 17:40:37', '2022-12-19 20:40:37', 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `new_reservation`
--

CREATE TABLE `new_reservation` (
  `id` int(11) NOT NULL,
  `reservation_status_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `reservation_maker_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `pick_up_time` time DEFAULT NULL,
  `pick_up_place` varchar(100) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `flight_number` varchar(100) DEFAULT NULL,
  `total_fee` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `vehicle_full_address` varchar(100) DEFAULT NULL,
  `vehicle_delivery_address` varchar(100) DEFAULT NULL,
  `vehicle_delivery_date` date DEFAULT NULL,
  `vehicle_delivery_time` time DEFAULT NULL,
  `vehicle_return_place` varchar(100) DEFAULT NULL,
  `return_flight_number` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_reservation`
--

INSERT INTO `new_reservation` (`id`, `reservation_status_id`, `customer_id`, `reservation_maker_id`, `vehicle_id`, `purchase_date`, `pick_up_time`, `pick_up_place`, `registration_date`, `flight_number`, `total_fee`, `currency_id`, `vehicle_full_address`, `vehicle_delivery_address`, `vehicle_delivery_date`, `vehicle_delivery_time`, `vehicle_return_place`, `return_flight_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 2, '2022-12-10', NULL, 'LEFKOSA_MERKEZ', '2022-11-26 15:15:33', NULL, 740, 3, NULL, 'hhythtr regerg trhrt', '2023-01-12', '18:15:00', 'GIRNE_MERKEZ', '187950', '2022-11-26 12:15:33', '2022-11-26 12:15:33'),
(2, 1, 1, NULL, 1, '2022-11-17', NULL, 'ERCAN_HAVANLIMALI', '2022-11-28 13:36:32', NULL, 4500, 3, NULL, 'yti7tukut', '2022-11-07', '16:34:00', 'GIRNE_MERKEZ', '755369055', '2022-11-28 10:36:32', '2022-11-28 10:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `operation_status`
--

CREATE TABLE `operation_status` (
  `id` int(11) NOT NULL,
  `op_status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operation_status`
--

INSERT INTO `operation_status` (`id`, `op_status`, `created_at`, `updated_at`) VALUES
(1, 'opened', '2022-12-30 09:29:09', '2022-12-30 09:29:09'),
(2, 'closed', '2022-12-30 09:29:09', '2022-12-30 09:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL,
  `amount_fee` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_for` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_method_id`, `payment_status_id`, `amount_fee`, `created_at`, `updated_at`, `payment_for`) VALUES
(48, 5, 2, 480, '2023-01-02 12:55:59', '2023-01-02 12:55:59', 1),
(49, 4, 2, 451.831372100994, '2023-01-02 13:40:12', '2023-01-02 13:40:12', 1),
(50, 4, 2, 150, '2023-01-02 13:52:43', '2023-01-02 13:52:43', 1),
(53, 3, 2, 50, '2023-01-17 11:04:40', '2023-01-17 11:04:40', 1),
(54, 5, 2, 10, '2023-01-17 11:06:34', '2023-01-17 11:06:34', 1),
(55, 5, 2, 4040, '2023-01-17 13:43:02', '2023-01-17 13:43:02', 1),
(56, 5, 2, 2850, '2023-01-17 14:01:29', '2023-01-17 14:01:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_for`
--

CREATE TABLE `payment_for` (
  `id` int(11) NOT NULL,
  `reason` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_for`
--

INSERT INTO `payment_for` (`id`, `reason`, `created_at`, `updated_at`) VALUES
(1, 'contract', '2022-12-27 15:03:30', '2022-12-27 15:03:30'),
(2, 'reservation', '2022-12-27 15:03:30', '2022-12-27 15:03:30'),
(3, 'income', '2023-01-02 18:11:15', '2023-01-02 18:11:15'),
(4, 'expense', '2023-01-02 18:11:15', '2023-01-02 18:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `method` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `method`, `created_at`, `updated_at`) VALUES
(1, 'Mail order', '2022-11-03 13:27:01', '2022-11-03 13:27:01'),
(2, 'Check', '2022-11-03 13:27:01', '2022-11-03 13:27:01'),
(3, 'Transfer', '2022-11-03 13:27:01', '2022-11-03 13:27:01'),
(4, 'Credit card', '2022-11-03 13:27:01', '2022-11-03 13:27:01'),
(5, 'found', '2022-12-22 17:43:58', '2022-12-22 17:43:58'),
(6, 'look for', '2022-12-22 17:44:11', '2022-12-22 17:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'completed', '2022-12-26 12:19:54', '2022-12-26 12:19:54'),
(2, 'pending', '2022-12-26 12:19:54', '2022-12-26 12:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `place_name`, `created_at`, `updated_at`) VALUES
(1, 'ERCAN_HAVANLIMALI', '2022-11-15 16:48:12', '2022-11-15 16:48:12'),
(2, 'GIRNE_MERKEZ', '2022-11-15 16:48:35', '2022-11-15 16:48:35'),
(3, 'LEFKOSA_MERKEZ', '2022-11-15 16:48:57', '2022-11-15 16:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_method`
--

CREATE TABLE `pricing_method` (
  `id` int(11) NOT NULL,
  `pricing` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region_name` varchar(200) DEFAULT NULL,
  `zone_type` varchar(200) DEFAULT NULL,
  `upper_region` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `reservation_status_id` int(11) DEFAULT NULL,
  `reservation_maker_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `pick_up_time` time DEFAULT NULL,
  `pick_up_place` varchar(50) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `flight_number` varchar(20) DEFAULT NULL,
  `total_fee` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) DEFAULT NULL,
  `vehicle_full_address` varchar(250) DEFAULT NULL,
  `vehicle_delivery_address` varchar(250) DEFAULT NULL,
  `vehicle_delivery_date` varchar(250) DEFAULT NULL,
  `vehicle_delivery_time` time DEFAULT NULL,
  `vehicle_return_place` varchar(250) DEFAULT NULL,
  `return_flight_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `reservation_status_id`, `reservation_maker_id`, `vehicle_id`, `purchase_date`, `pick_up_time`, `pick_up_place`, `registration_date`, `flight_number`, `total_fee`, `currency_id`, `created_at`, `updated_at`, `customer_id`, `vehicle_full_address`, `vehicle_delivery_address`, `vehicle_delivery_date`, `vehicle_delivery_time`, `vehicle_return_place`, `return_flight_number`) VALUES
(1, 1, NULL, 1, '2022-11-19', NULL, 'ERCAN HAVANLIMALI', '2022-11-15', NULL, 455603886, 1, '2022-11-15 13:59:28', '2022-11-15 13:59:28', 1, NULL, 'hry6h6yu65yjm jtyj', '2022-11-15', '07:52:00', 'ERCAN HAVANLIMALI', 'btrhrth'),
(2, 2, NULL, 3, '2022-12-03', NULL, 'GIRNE_MERKEZ', '2022-11-18', NULL, 54560, 3, '2022-11-18 08:08:25', '2022-11-18 08:08:25', 1, NULL, 'dfrg gnyjy', '2022-11-12', '02:05:00', 'LEFKOSA_MERKEZ', '755369'),
(3, 1, NULL, 2, '2022-11-21', NULL, 'ERCAN_HAVANLIMALI', '2022-11-21', NULL, 187450, 1, '2022-11-21 09:01:00', '2022-11-21 09:01:00', 3, NULL, 'Srt 04 yokilampaq 47 REcumoglu sk.', '2022-11-21', '15:00:00', 'LEFKOSA_MERKEZ', '187950'),
(4, 2, NULL, 2, '2022-12-10', NULL, 'GIRNE_MERKEZ', '2022-11-21', NULL, 850, 2, '2022-11-21 14:21:56', '2022-11-21 14:21:56', 3, NULL, 'Yermadel 123. Montreal  st 45', '2022-11-24', '08:21:00', 'GIRNE_MERKEZ', '87945062'),
(5, 1, NULL, 3, '2022-11-04', NULL, 'LEFKOSA_MERKEZ', '2022-11-22', NULL, 985, 2, '2022-11-22 09:15:29', '2022-11-22 09:15:29', 3, NULL, 'dfghjkl;jdf vcxdsfghjklhgfdgh bncfgffhgb2yu4t567yfv gfh', '2022-11-05', '03:14:00', 'LEFKOSA_MERKEZ', '46547376');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_maker`
--

CREATE TABLE `reservation_maker` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `secondary_phone_number` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_payment`
--

CREATE TABLE `reservation_payment` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_status`
--

CREATE TABLE `reservation_status` (
  `id` int(11) NOT NULL,
  `status` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservation_status`
--

INSERT INTO `reservation_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'approved', '2022-11-15 16:50:54', '2022-11-15 16:50:54'),
(2, 'under review', '2022-11-15 16:51:13', '2022-11-15 16:51:13'),
(3, 'refused', '2022-11-15 16:51:25', '2022-11-15 16:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `services_fees`
--

CREATE TABLE `services_fees` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `free_cancellation_fee` double DEFAULT NULL,
  `gps_fee` double DEFAULT NULL,
  `child_seat_fee` double DEFAULT NULL,
  `additional_driver_fee` double DEFAULT NULL,
  `deluxe_damage_insurance_fee` double DEFAULT NULL,
  `lux_damage_insurance_fee` double DEFAULT NULL,
  `discretionary_liability_fee` double DEFAULT NULL,
  `tire_glass_headlight_insurance_fee` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `sequence_no` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_number` varchar(25) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL,
  `section` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_reminder`
--

CREATE TABLE `system_reminder` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `reminder_type_id` int(11) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reminder_opened` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_reminder`
--

INSERT INTO `system_reminder` (`id`, `title`, `content`, `reminder_type_id`, `registration_date`, `created_at`, `updated_at`, `reminder_opened`) VALUES
(43, 'Rental fee non-paid yet', 'Rental fees for OX65 AWD have not been paid yet ', 1, '2022-12-13 17:57:14', '2022-12-13 17:57:14', '2022-12-13 17:57:14', NULL),
(44, 'Rental fee non-paid yet', 'Rental fees for POIU18181 have not been paid yet ', 1, '2022-12-13 17:57:14', '2022-12-13 17:57:14', '2022-12-13 17:57:14', NULL),
(45, 'Rental fee non-paid yet', 'Rental fees for KP14KYJ have not been paid yet ', 1, '2022-12-13 17:57:14', '2022-12-13 17:57:14', '2022-12-13 17:57:14', NULL),
(46, 'Rental fee non-paid yet', 'Rental fees for KP14KYJ have not been paid yet ', 1, '2022-12-13 17:57:14', '2022-12-13 17:57:14', '2022-12-13 17:57:14', NULL),
(47, 'Rental fee non-paid yet', 'Rental fees for RE374YH have not been paid yet ', 1, '2022-12-13 17:57:14', '2022-12-13 17:57:14', '2022-12-13 17:57:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_reminder_type`
--

CREATE TABLE `system_reminder_type` (
  `id` int(11) NOT NULL,
  `reminder_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_reminder_type`
--

INSERT INTO `system_reminder_type` (`id`, `reminder_type`, `created_at`, `updated_at`) VALUES
(1, 'VEHICLE RENT PAYMENT', '2022-12-13 15:36:58', '2022-12-13 15:36:58'),
(2, 'VEHICLE RETURN SOON', '2023-01-01 11:52:04', '2023-01-01 11:52:04'),
(3, 'ACCOUNT WITH DEBTS', '2023-01-01 11:55:25', '2023-01-01 11:55:25'),
(4, 'MANUAL REMINDERS', '2023-01-01 11:55:48', '2023-01-01 11:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_payment`
--

CREATE TABLE `transfer_payment` (
  `id` int(11) NOT NULL,
  `transfer_account` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer_payment`
--

INSERT INTO `transfer_payment` (`id`, `transfer_account`, `created_at`, `updated_at`, `payment_id`) VALUES
(9, 1, '2023-01-17 11:04:40', '2023-01-17 11:04:40', 53);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(250) NOT NULL,
  `auth_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_picture`, `auth_user_id`, `created_at`, `updated_at`) VALUES
(1, '/img/App/users/4.jpg', 4, '2023-01-16 20:16:16', '2023-01-16 20:16:16'),
(2, '', 3, '2023-01-16 20:16:16', '2023-01-16 20:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_owner` varchar(100) DEFAULT NULL,
  `vehicle_model_id` int(11) DEFAULT NULL,
  `vehicle_plate_number` varchar(10) NOT NULL,
  `traffic_release_year` int(10) UNSIGNED DEFAULT NULL,
  `region_location` varchar(50) DEFAULT NULL,
  `vehicle_status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `vehicle_status` varchar(100) DEFAULT NULL,
  `rent_start` datetime DEFAULT NULL,
  `rent_end` datetime DEFAULT NULL,
  `vehicle_picture` varchar(255) DEFAULT NULL,
  `input_km` double DEFAULT NULL,
  `vehicle_brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_owner`, `vehicle_model_id`, `vehicle_plate_number`, `traffic_release_year`, `region_location`, `vehicle_status_id`, `created_at`, `updated_at`, `vehicle_status`, `rent_start`, `rent_end`, `vehicle_picture`, `input_km`, `vehicle_brand_id`) VALUES
(1, NULL, 1, 'LC60 DKF', 2018, 'Fleet', 1, '2022-11-09 10:21:39', '2022-11-09 10:21:39', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(2, NULL, 1, 'BD68 XJX', 2009, 'Kyrenia Center garage', 1, '2022-11-09 10:22:53', '2022-11-09 10:22:53', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(3, NULL, 2, 'OX65 AWD', 2006, 'Fleet', 1, '2022-11-09 10:23:29', '2022-11-09 10:23:29', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(4, NULL, 1, 'NU72 REG', 2013, 'Fleet', 1, '2022-11-09 10:24:35', '2022-11-09 10:24:35', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(5, NULL, 3, 'KP14KYJ', 2007, 'Fleet', 1, '2022-11-09 10:25:06', '2022-11-09 10:25:06', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(6, NULL, 1, 'POIU18181', 2016, 'jhhjf yfgyuh', 1, '2022-11-14 11:26:22', '2022-11-14 11:26:22', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(7, NULL, 2, 'ARX 405', 2007, 'Kyrenia Center garage', 1, '2022-11-19 09:43:09', '2022-11-19 09:43:09', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(8, NULL, 1, 'SZ20 NHP', 2018, 'Fleet', 1, '2022-12-02 08:21:11', '2022-12-02 08:21:11', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL),
(10, NULL, 1, 'RE374YH', 2009, 'Magusa Center garage', 1, '2022-12-02 12:34:31', '2022-12-02 12:34:31', 'available', '2000-01-01 00:00:00', '2000-01-01 00:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_brand`
--

CREATE TABLE `vehicle_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `vehicle_brand_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_brand`
--

INSERT INTO `vehicle_brand` (`id`, `brand_name`, `created_at`, `updated_at`, `vehicle_brand_picture`) VALUES
(5, 'Bentley', '2022-11-02 10:57:09', '2022-11-02 10:57:09', NULL),
(6, 'BMV', '2022-11-02 10:57:15', '2022-11-02 10:57:15', NULL),
(7, 'Audi', '2022-11-02 10:57:22', '2022-11-02 10:57:22', NULL),
(8, 'Acura', '2022-11-02 10:57:32', '2022-11-02 10:57:32', NULL),
(9, 'Alpha Romeo', '2022-11-02 10:57:41', '2022-11-02 10:57:41', NULL),
(10, 'Mercedes', '2022-11-02 10:57:49', '2022-11-02 10:57:49', NULL),
(11, 'Volvo', '2022-11-02 10:58:48', '2022-11-02 10:58:48', NULL),
(12, 'Volkswagen', '2022-11-02 10:59:01', '2022-11-02 10:59:01', NULL),
(13, 'Tesla', '2022-11-02 10:59:13', '2022-11-02 10:59:13', NULL),
(14, 'Scion', '2022-11-02 10:59:21', '2022-11-02 10:59:21', NULL),
(15, 'Saturn', '2022-11-02 10:59:25', '2022-11-02 10:59:25', NULL),
(16, 'Saab', '2022-11-02 10:59:33', '2022-11-02 10:59:33', NULL),
(17, 'Rolls-Royce', '2022-11-02 10:59:49', '2022-11-02 10:59:49', NULL),
(18, 'Rivian', '2022-11-02 10:59:58', '2022-11-02 10:59:58', NULL),
(19, 'Ram', '2022-11-02 11:00:04', '2022-11-02 11:00:04', NULL),
(20, 'Porsche', '2022-11-02 11:00:25', '2022-11-02 11:00:25', NULL),
(21, 'Pontiac', '2022-11-02 11:00:33', '2022-11-02 11:00:33', NULL),
(22, 'Polestar', '2022-11-02 11:00:45', '2022-11-02 11:00:45', NULL),
(23, 'Nissan', '2022-11-02 11:00:55', '2022-11-02 11:00:55', NULL),
(24, 'Mitsubishi', '2022-11-02 11:01:16', '2022-11-02 11:01:16', NULL),
(25, 'Mini', '2022-11-02 11:01:24', '2022-11-02 11:01:24', NULL),
(26, 'Mercury', '2022-11-02 11:01:28', '2022-11-02 11:01:28', NULL),
(27, 'Mercedes-Benz', '2022-11-02 11:01:41', '2022-11-02 11:01:41', NULL),
(28, 'Mazda', '2022-11-02 11:01:49', '2022-11-02 11:01:49', NULL),
(29, 'Maserati', '2022-11-02 11:01:55', '2022-11-02 11:01:55', NULL),
(30, 'Lucid', '2022-11-02 11:04:58', '2022-11-02 11:04:58', NULL),
(31, 'Lotus', '2022-11-02 11:05:15', '2022-11-02 11:05:15', NULL),
(32, 'Lincoln', '2022-11-02 11:05:22', '2022-11-02 11:05:22', NULL),
(33, 'Lexus', '2022-11-02 11:05:31', '2022-11-02 11:05:31', NULL),
(34, 'Land Rover', '2022-11-02 11:05:37', '2022-11-02 11:05:37', NULL),
(35, 'Kia', '2022-11-02 11:05:43', '2022-11-02 11:05:43', NULL),
(36, 'Jeep', '2022-11-02 11:05:49', '2022-11-02 11:05:49', NULL),
(37, 'Jaguar', '2022-11-02 11:06:04', '2022-11-02 11:06:04', NULL),
(38, 'Infiniti', '2022-11-02 11:06:13', '2022-11-02 11:06:13', NULL),
(39, 'Hyundai', '2022-11-02 11:06:24', '2022-11-02 11:06:24', NULL),
(40, 'Honda', '2022-11-02 11:06:27', '2022-11-02 11:06:27', NULL),
(41, 'Genesis', '2022-11-02 11:06:34', '2022-11-02 11:06:34', NULL),
(42, 'GMC', '2022-11-02 11:06:45', '2022-11-02 11:06:45', NULL),
(43, 'Ford', '2022-11-02 11:06:51', '2022-11-02 11:06:51', NULL),
(44, 'Fiat', '2022-11-02 11:06:54', '2022-11-02 11:06:54', NULL),
(45, 'Ford', '2022-11-02 11:15:21', '2022-11-02 11:15:21', NULL),
(46, 'Fiat', '2022-11-02 11:15:25', '2022-11-02 11:15:25', NULL),
(47, 'Dodge', '2022-11-02 11:15:35', '2022-11-02 11:15:35', NULL),
(48, 'Chrysler', '2022-11-02 11:15:43', '2022-11-02 11:15:43', NULL),
(49, 'Chevrolet', '2022-11-02 11:15:54', '2022-11-02 11:15:54', NULL),
(50, 'Cadillac', '2022-11-02 11:16:04', '2022-11-02 11:16:04', NULL),
(51, 'Buick', '2022-11-02 11:16:12', '2022-11-02 11:16:12', NULL),
(63, 'Mitsubishi', '2022-12-01 13:54:37', '2022-12-01 13:54:37', NULL),
(64, 'Bugatti', '2022-12-01 13:55:06', '2022-12-01 13:55:06', NULL),
(65, 'Ford Philippines', '2022-12-01 13:59:47', '2022-12-01 13:59:47', NULL),
(68, 'turbo reactor', '2022-12-14 11:40:36', '2022-12-14 11:40:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_components`
--

CREATE TABLE `vehicle_components` (
  `id` int(11) NOT NULL,
  `component_name` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vehicle_components`
--

INSERT INTO `vehicle_components` (`id`, `component_name`, `created_at`, `updated_at`) VALUES
(1, 'GPS', '2022-11-02 14:33:26', '2022-11-02 14:33:26'),
(2, 'Front sensor', '2022-11-02 14:33:26', '2022-11-02 14:33:26'),
(3, 'Rear sensor', '2022-11-02 14:33:26', '2022-11-02 14:33:26'),
(4, 'Radio', '2022-11-02 14:33:26', '2022-11-02 14:33:26'),
(5, 'Climate', '2022-11-02 14:33:26', '2022-11-02 14:33:26'),
(6, 'CD player', '2022-11-02 14:33:26', '2022-11-02 14:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_current_status`
--

CREATE TABLE `vehicle_current_status` (
  `id` int(11) NOT NULL,
  `current_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_current_status`
--

INSERT INTO `vehicle_current_status` (`id`, `current_status`, `created_at`, `updated_at`) VALUES
(1, 'available', '2022-11-02 12:16:45', '2022-11-02 12:16:45'),
(2, 'out_of_use', '2022-11-02 12:16:45', '2022-11-02 12:16:45'),
(3, 'out_of_fleet', '2022-11-02 12:16:45', '2022-11-02 12:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_expense`
--

CREATE TABLE `vehicle_expense` (
  `id` int(11) NOT NULL,
  `service_company_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `exchange_rate` double DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expense_category` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_history`
--

CREATE TABLE `vehicle_history` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `operation_type` varchar(25) DEFAULT NULL,
  `explanation` varchar(50) DEFAULT NULL,
  `title` varchar(25) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `operation_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_history`
--

INSERT INTO `vehicle_history` (`id`, `vehicle_id`, `operation_type`, `explanation`, `title`, `registration_date`, `user`, `created_at`, `updated_at`, `operation_status_id`) VALUES
(3, 7, 'vehicle', 'Added Contract #24', 'CarRental - New Contract', '2023-01-17 10:40:15', '', '2023-01-17 10:40:15', '2023-01-17 10:40:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_maintenance`
--

CREATE TABLE `vehicle_maintenance` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `date_entry` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `release_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `explanation` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `care_place` varchar(25) DEFAULT NULL,
  `input_km` double DEFAULT NULL,
  `registration_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id` int(11) NOT NULL,
  `vehicle_type_id` int(11) NOT NULL,
  `vehicle_model` varchar(50) DEFAULT NULL,
  `number_of_doors` int(11) DEFAULT NULL,
  `number_of_passengers` int(11) DEFAULT NULL,
  `large_suitcase` int(11) DEFAULT NULL,
  `small_suitcase` int(11) DEFAULT NULL,
  `vehicle_price_class_id` int(11) NOT NULL,
  `model_year` int(11) DEFAULT NULL,
  `gear` varchar(25) DEFAULT NULL,
  `fuel_type` varchar(25) DEFAULT NULL,
  `components` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `vehicle_model_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `vehicle_type_id`, `vehicle_model`, `number_of_doors`, `number_of_passengers`, `large_suitcase`, `small_suitcase`, `vehicle_price_class_id`, `model_year`, `gear`, `fuel_type`, `components`, `created_at`, `updated_at`, `vehicle_model_picture`) VALUES
(1, 2, 'EQS SUV', 4, 5, 4, 9, 1, 2020, 'Manual Gear', 'Petrol', 'GPS,Radio,Climate,', '2022-11-09 10:07:17', '2022-11-09 10:07:17', NULL),
(2, 1, 'Volvo XC60', 4, 5, 5, 9, 1, 2018, 'Automatic Transaction', 'Diesel', 'GPS,Radio,Climate,', '2022-11-09 10:09:05', '2022-11-09 10:09:05', NULL),
(3, 1, 'Mulliner', 4, 5, 3, 10, 1, 2019, 'Triptonik', 'Diesel', 'GPS,Radio,Climate,', '2022-11-09 10:10:16', '2022-11-09 10:10:16', NULL),
(4, 1, 'A3 SportBack', 4, 5, 3, 9, 1, 2014, 'Manual Gear', 'LPG', 'GPS,Radio,Climate,', '2022-11-09 10:11:40', '2022-11-09 10:11:40', NULL),
(5, 3, 'A3 SportBack', 5, 15, 5, 8, 1, 2015, 'Manual Gear', 'Petrol', 'GPS,', '2022-12-02 11:43:39', '2022-12-02 11:43:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_operation`
--

CREATE TABLE `vehicle_operation` (
  `id` int(11) NOT NULL,
  `operation_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_operation`
--

INSERT INTO `vehicle_operation` (`id`, `operation_type`, `created_at`, `updated_at`) VALUES
(1, 'Car Rental - Car Buyback', '2022-12-25 17:28:17', '2022-12-25 17:28:17'),
(2, 'Car Rental - New Contract', '2022-12-25 17:28:17', '2022-12-25 17:28:17'),
(3, 'Car Rental - Car Exchange New Car', '2022-12-25 17:29:05', '2022-12-25 17:29:05'),
(4, 'Car Rental - Car Exchange Old Car', '2022-12-25 17:29:05', '2022-12-25 17:29:05'),
(5, 'Car Care - New Care', '2022-12-25 18:12:14', '2022-12-25 18:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_payment_reminder`
--

CREATE TABLE `vehicle_payment_reminder` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reminder_opened` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_payment_reminder`
--

INSERT INTO `vehicle_payment_reminder` (`id`, `vehicle_id`, `payment_date`, `fee_amount`, `explanation`, `currency_id`, `registration_date`, `created_at`, `updated_at`, `reminder_opened`) VALUES
(1, 4, '2022-11-23', 600, 'just a reminder', 2, '2022-11-23 09:14:21', '2022-11-23 09:14:21', '2022-11-23 09:14:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_price_class`
--

CREATE TABLE `vehicle_price_class` (
  `id` int(11) NOT NULL,
  `price_class` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_price_class`
--

INSERT INTO `vehicle_price_class` (`id`, `price_class`, `created_at`, `updated_at`) VALUES
(1, 'Economics', '2022-11-02 14:36:40', '2022-11-02 14:36:40'),
(2, 'Average', '2022-11-02 14:36:40', '2022-11-02 14:36:40'),
(3, 'Top', '2022-11-02 14:36:40', '2022-11-02 14:36:40'),
(4, 'VIP', '2022-11-02 14:36:41', '2022-11-02 14:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_status`
--

CREATE TABLE `vehicle_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_status`
--

INSERT INTO `vehicle_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'available', '2022-11-09 13:16:07', '2022-11-09 13:16:07'),
(2, 'unavailable', '2022-11-09 13:16:07', '2022-11-09 13:16:07'),
(3, 'in_maintainance', '2022-11-17 15:23:18', '2022-11-17 15:23:18'),
(4, 'rented', '2022-11-18 14:47:37', '2022-11-18 14:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(25) DEFAULT NULL,
  `max_num_of_person` int(11) DEFAULT NULL,
  `max_small_suitcase` int(11) DEFAULT NULL,
  `max_large_suitcase` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `vehicle_type_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `type_name`, `max_num_of_person`, `max_small_suitcase`, `max_large_suitcase`, `created_at`, `updated_at`, `vehicle_type_picture`) VALUES
(1, 'car', 5, 2, 3, '2022-11-02 14:46:42', '2022-11-02 14:46:42', NULL),
(2, 'SUV', 5, 1, 2, '2022-11-02 14:47:02', '2022-11-02 14:47:02', NULL),
(3, 'Hyundai', 5, 4, 6, '2022-11-02 14:47:02', '2022-11-02 14:47:02', NULL),
(4, 'Ford Focus', 6, 3, 5, '2022-11-02 14:47:02', '2022-11-02 14:47:02', NULL),
(12, 'Lamborghini', 5, 8, 2, '2022-11-08 12:45:40', '2022-11-08 12:45:40', NULL),
(13, 'Limousine', 13, 12, 6, '2022-11-08 12:46:10', '2022-11-08 12:46:10', NULL),
(14, 'Chrysler Limousine', 20, 5, 3, '2022-12-01 14:15:26', '2022-12-01 14:15:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_users`
--

CREATE TABLE `vehicle_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `identification_number` varchar(25) DEFAULT NULL,
  `driver_license_number` varchar(25) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(25) DEFAULT NULL,
  `phone_number` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting_event`
--
ALTER TABLE `accounting_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_type_id` (`event_type_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `accounting_event_type`
--
ALTER TABLE `accounting_event_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounting_item`
--
ALTER TABLE `accounting_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_history`
--
ALTER TABLE `account_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `account_operation_id` (`account_operation_id`),
  ADD KEY `acc_hist_fk_currency` (`currency_id`),
  ADD KEY `acc_ev_fk` (`accounting_event`);

--
-- Indexes for table `account_operation`
--
ALTER TABLE `account_operation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_statement`
--
ALTER TABLE `account_statement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_statement_ibfk_1` (`account_id`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additional_service`
--
ALTER TABLE `additional_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricing_method_id` (`pricing_method_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `addition_tool_users`
--
ALTER TABLE `addition_tool_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_fk_1` (`contract_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashkey` (`hashkey`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_payment`
--
ALTER TABLE `check_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_check` (`payment_id`),
  ADD KEY `fk_check_account` (`checking_account`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_currency` (`payment_currency`),
  ADD KEY `contract_for` (`contract_for`),
  ADD KEY `fk_adtcons` (`additional_tool_user`),
  ADD KEY `fk_adconst2` (`additional_tool_user_2`),
  ADD KEY `fk_contr` (`contract_status_id`);

--
-- Indexes for table `contract_history`
--
ALTER TABLE `contract_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_payment`
--
ALTER TABLE `contract_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_payment_ibfk_1` (`payment_id`),
  ADD KEY `contract_payment_ibfk_2` (`contract_id`);

--
-- Indexes for table `contract_status`
--
ALTER TABLE `contract_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_card_payment`
--
ALTER TABLE `credit_card_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cc` (`payment_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_account`
--
ALTER TABLE `current_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `account_type_id` (`account_type_id`),
  ADD KEY `account_currency_id` (`account_currency_id`),
  ADD KEY `contr_account` (`contract_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `fk_student` (`student_id`);

--
-- Indexes for table `customer_black_list`
--
ALTER TABLE `customer_black_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_payment`
--
ALTER TABLE `default_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounting_item_id` (`accounting_item_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `provider_account_id` (`provider_account_id`),
  ADD KEY `fk_exp` (`payment_status_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_file` (`file_type_id`);

--
-- Indexes for table `file_type`
--
ALTER TABLE `file_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleet_profile`
--
ALTER TABLE `fleet_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `found_payment`
--
ALTER TABLE `found_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fpay` (`payment_id`),
  ADD KEY `fk_cash` (`cash_account`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paying_account_id` (`paying_account_id`),
  ADD KEY `accounting_item_id` (`accounting_item_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_account` (`current_account_id`),
  ADD KEY `fk_item` (`accounting_item_id`);

--
-- Indexes for table `mail_order_payment`
--
ALTER TABLE `mail_order_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mopay` (`payment_id`);

--
-- Indexes for table `new_contract`
--
ALTER TABLE `new_contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cnst` (`contract_status_id`),
  ADD KEY `fk_intermediary` (`intermediary_company_account`);

--
-- Indexes for table `new_reservation`
--
ALTER TABLE `new_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_status`
--
ALTER TABLE `operation_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `payment_status_id` (`payment_status_id`),
  ADD KEY `fk_payfor` (`payment_for`);

--
-- Indexes for table `payment_for`
--
ALTER TABLE `payment_for`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing_method`
--
ALTER TABLE `pricing_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_status_id` (`reservation_status_id`),
  ADD KEY `fk_cust` (`customer_id`),
  ADD KEY `reservation_ibfk_1` (`reservation_maker_id`);

--
-- Indexes for table `reservation_maker`
--
ALTER TABLE `reservation_maker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_payment`
--
ALTER TABLE `reservation_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `reservation_status`
--
ALTER TABLE `reservation_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_fees`
--
ALTER TABLE `services_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_reminder`
--
ALTER TABLE `system_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminder_type_id` (`reminder_type_id`);

--
-- Indexes for table `system_reminder_type`
--
ALTER TABLE `system_reminder_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_payment`
--
ALTER TABLE `transfer_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tpay` (`payment_id`),
  ADD KEY `fk_transfer_account` (`transfer_account`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_user_id` (`auth_user_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_model_id` (`vehicle_model_id`),
  ADD KEY `vehicle_status_id` (`vehicle_status_id`),
  ADD KEY `fk_brand` (`vehicle_brand_id`);

--
-- Indexes for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_components`
--
ALTER TABLE `vehicle_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_current_status`
--
ALTER TABLE `vehicle_current_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_expense`
--
ALTER TABLE `vehicle_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `service_company_id` (`service_company_id`),
  ADD KEY `fk_expense` (`payment_status_id`);

--
-- Indexes for table `vehicle_history`
--
ALTER TABLE `vehicle_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `fk_op_status` (`operation_status_id`);

--
-- Indexes for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_type_id` (`vehicle_type_id`),
  ADD KEY `vehicle_price_class_id` (`vehicle_price_class_id`);

--
-- Indexes for table `vehicle_operation`
--
ALTER TABLE `vehicle_operation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_payment_reminder`
--
ALTER TABLE `vehicle_payment_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rpc` (`currency_id`),
  ADD KEY `fk_vhclid` (`vehicle_id`);

--
-- Indexes for table `vehicle_price_class`
--
ALTER TABLE `vehicle_price_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_status`
--
ALTER TABLE `vehicle_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_users`
--
ALTER TABLE `vehicle_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting_event`
--
ALTER TABLE `accounting_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `accounting_event_type`
--
ALTER TABLE `accounting_event_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounting_item`
--
ALTER TABLE `accounting_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `account_history`
--
ALTER TABLE `account_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_operation`
--
ALTER TABLE `account_operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_statement`
--
ALTER TABLE `account_statement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `additional_service`
--
ALTER TABLE `additional_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addition_tool_users`
--
ALTER TABLE `addition_tool_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `check_payment`
--
ALTER TABLE `check_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contract_history`
--
ALTER TABLE `contract_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_payment`
--
ALTER TABLE `contract_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `contract_status`
--
ALTER TABLE `contract_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credit_card_payment`
--
ALTER TABLE `credit_card_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `current_account`
--
ALTER TABLE `current_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer_black_list`
--
ALTER TABLE `customer_black_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `default_payment`
--
ALTER TABLE `default_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `file_type`
--
ALTER TABLE `file_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fleet_profile`
--
ALTER TABLE `fleet_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `found_payment`
--
ALTER TABLE `found_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mail_order_payment`
--
ALTER TABLE `mail_order_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_contract`
--
ALTER TABLE `new_contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `new_reservation`
--
ALTER TABLE `new_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `operation_status`
--
ALTER TABLE `operation_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `payment_for`
--
ALTER TABLE `payment_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pricing_method`
--
ALTER TABLE `pricing_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservation_maker`
--
ALTER TABLE `reservation_maker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_payment`
--
ALTER TABLE `reservation_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_status`
--
ALTER TABLE `reservation_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services_fees`
--
ALTER TABLE `services_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stops`
--
ALTER TABLE `stops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_reminder`
--
ALTER TABLE `system_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `system_reminder_type`
--
ALTER TABLE `system_reminder_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfer_payment`
--
ALTER TABLE `transfer_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `vehicle_components`
--
ALTER TABLE `vehicle_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_current_status`
--
ALTER TABLE `vehicle_current_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_expense`
--
ALTER TABLE `vehicle_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_history`
--
ALTER TABLE `vehicle_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_operation`
--
ALTER TABLE `vehicle_operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_payment_reminder`
--
ALTER TABLE `vehicle_payment_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_price_class`
--
ALTER TABLE `vehicle_price_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_status`
--
ALTER TABLE `vehicle_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vehicle_users`
--
ALTER TABLE `vehicle_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounting_event`
--
ALTER TABLE `accounting_event`
  ADD CONSTRAINT `accounting_event_ibfk_1` FOREIGN KEY (`event_type_id`) REFERENCES `accounting_event_type` (`id`),
  ADD CONSTRAINT `accounting_event_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `account_history`
--
ALTER TABLE `account_history`
  ADD CONSTRAINT `acc_ev_fk` FOREIGN KEY (`accounting_event`) REFERENCES `accounting_event_type` (`id`),
  ADD CONSTRAINT `acc_hist_fk_currency` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `account_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `current_account` (`id`),
  ADD CONSTRAINT `account_history_ibfk_2` FOREIGN KEY (`account_operation_id`) REFERENCES `account_operation` (`id`);

--
-- Constraints for table `account_statement`
--
ALTER TABLE `account_statement`
  ADD CONSTRAINT `dgher` FOREIGN KEY (`account_id`) REFERENCES `current_account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `additional_service`
--
ALTER TABLE `additional_service`
  ADD CONSTRAINT `additional_service_ibfk_1` FOREIGN KEY (`pricing_method_id`) REFERENCES `payment_method` (`id`),
  ADD CONSTRAINT `additional_service_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `addition_tool_users`
--
ALTER TABLE `addition_tool_users`
  ADD CONSTRAINT `c_fk` FOREIGN KEY (`contract_id`) REFERENCES `new_contract` (`id`),
  ADD CONSTRAINT `c_fk_1` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `check_payment`
--
ALTER TABLE `check_payment`
  ADD CONSTRAINT `fk_check` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `fk_check_account` FOREIGN KEY (`checking_account`) REFERENCES `current_account` (`id`);

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`payment_currency`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `contract_ibfk_3` FOREIGN KEY (`contract_for`) REFERENCES `customer_type` (`id`),
  ADD CONSTRAINT `fk_adconst2` FOREIGN KEY (`additional_tool_user_2`) REFERENCES `addition_tool_users` (`id`),
  ADD CONSTRAINT `fk_adtcons` FOREIGN KEY (`additional_tool_user`) REFERENCES `addition_tool_users` (`id`),
  ADD CONSTRAINT `fk_contr` FOREIGN KEY (`contract_status_id`) REFERENCES `contract_status` (`id`);

--
-- Constraints for table `contract_payment`
--
ALTER TABLE `contract_payment`
  ADD CONSTRAINT `contract_payment_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_payment_ibfk_2` FOREIGN KEY (`contract_id`) REFERENCES `new_contract` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `credit_card_payment`
--
ALTER TABLE `credit_card_payment`
  ADD CONSTRAINT `fk_cc` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`);

--
-- Constraints for table `current_account`
--
ALTER TABLE `current_account`
  ADD CONSTRAINT `contr_account` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `contr_account_new` FOREIGN KEY (`contract_id`) REFERENCES `new_contract` (`id`),
  ADD CONSTRAINT `current_account_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `current_account_ibfk_2` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`id`),
  ADD CONSTRAINT `current_account_ibfk_3` FOREIGN KEY (`account_currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `customer_type` (`id`),
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `default_payment`
--
ALTER TABLE `default_payment`
  ADD CONSTRAINT `default_payment_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `default_payment_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `current_account` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`accounting_item_id`) REFERENCES `accounting_item` (`id`),
  ADD CONSTRAINT `expense_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `expense_ibfk_3` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `expense_ibfk_4` FOREIGN KEY (`provider_account_id`) REFERENCES `current_account` (`id`),
  ADD CONSTRAINT `fk_exp` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `fk_file` FOREIGN KEY (`file_type_id`) REFERENCES `file_type` (`id`);

--
-- Constraints for table `fleet_profile`
--
ALTER TABLE `fleet_profile`
  ADD CONSTRAINT `fleet_profile_user_id_aa4f8d1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `found_payment`
--
ALTER TABLE `found_payment`
  ADD CONSTRAINT `fk_cash` FOREIGN KEY (`cash_account`) REFERENCES `current_account` (`id`),
  ADD CONSTRAINT `fk_fpay` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`);

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`paying_account_id`) REFERENCES `current_account` (`id`),
  ADD CONSTRAINT `income_ibfk_2` FOREIGN KEY (`accounting_item_id`) REFERENCES `accounting_item` (`id`),
  ADD CONSTRAINT `income_ibfk_3` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `income_ibfk_4` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  ADD CONSTRAINT `income_ibfk_5` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `fk_account` FOREIGN KEY (`current_account_id`) REFERENCES `current_account` (`id`),
  ADD CONSTRAINT `fk_item` FOREIGN KEY (`accounting_item_id`) REFERENCES `accounting_item` (`id`);

--
-- Constraints for table `mail_order_payment`
--
ALTER TABLE `mail_order_payment`
  ADD CONSTRAINT `fk_mopay` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`);

--
-- Constraints for table `new_contract`
--
ALTER TABLE `new_contract`
  ADD CONSTRAINT `fk_cnst` FOREIGN KEY (`contract_status_id`) REFERENCES `new_contract` (`id`),
  ADD CONSTRAINT `fk_intermediary` FOREIGN KEY (`intermediary_company_account`) REFERENCES `current_account` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payfor` FOREIGN KEY (`payment_for`) REFERENCES `payment_for` (`id`),
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_cust` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`reservation_maker_id`) REFERENCES `reservation_maker` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`reservation_status_id`) REFERENCES `reservation_status` (`id`);

--
-- Constraints for table `reservation_payment`
--
ALTER TABLE `reservation_payment`
  ADD CONSTRAINT `reservation_payment_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `reservation_payment_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`);

--
-- Constraints for table `services_fees`
--
ALTER TABLE `services_fees`
  ADD CONSTRAINT `services_fees_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`),
  ADD CONSTRAINT `services_fees_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `system_reminder`
--
ALTER TABLE `system_reminder`
  ADD CONSTRAINT `system_reminder_ibfk_1` FOREIGN KEY (`reminder_type_id`) REFERENCES `system_reminder_type` (`id`);

--
-- Constraints for table `transfer_payment`
--
ALTER TABLE `transfer_payment`
  ADD CONSTRAINT `fk_tpay` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `fk_transfer_account` FOREIGN KEY (`transfer_account`) REFERENCES `current_account` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`auth_user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `fk_brand` FOREIGN KEY (`vehicle_brand_id`) REFERENCES `vehicle_brand` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_model` (`id`),
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`vehicle_status_id`) REFERENCES `vehicle_status` (`id`);

--
-- Constraints for table `vehicle_expense`
--
ALTER TABLE `vehicle_expense`
  ADD CONSTRAINT `fk_expense` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`),
  ADD CONSTRAINT `vehicle_expense_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`),
  ADD CONSTRAINT `vehicle_expense_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `vehicle_expense_ibfk_3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  ADD CONSTRAINT `vehicle_expense_ibfk_4` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `vehicle_expense_ibfk_5` FOREIGN KEY (`service_company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `vehicle_history`
--
ALTER TABLE `vehicle_history`
  ADD CONSTRAINT `fk_op_status` FOREIGN KEY (`operation_status_id`) REFERENCES `operation_status` (`id`),
  ADD CONSTRAINT `vehicle_history_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  ADD CONSTRAINT `vehicle_maintenance_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD CONSTRAINT `vehicle_model_ibfk_1` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type` (`id`),
  ADD CONSTRAINT `vehicle_model_ibfk_2` FOREIGN KEY (`vehicle_price_class_id`) REFERENCES `vehicle_price_class` (`id`);

--
-- Constraints for table `vehicle_payment_reminder`
--
ALTER TABLE `vehicle_payment_reminder`
  ADD CONSTRAINT `fk_rpc` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `fk_vhclid` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
