-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 04:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(7, 2, 740, 3, '2022-11-26 12:15:33', '2022-11-26 12:15:33', '2022-11-26 12:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `accounting_event_type`
--

CREATE TABLE `accounting_event_type` (
  `id` int(11) NOT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounting_item`
--

INSERT INTO `accounting_item` (`id`, `item_name`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Transfer fee', '', '2022-11-03 11:29:02', '2022-11-03 11:29:02'),
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
(18, 'some_item', '', '2022-11-09 07:32:51', '2022-11-09 07:32:51'),
(19, '<script>alert</script>', 'Car rental expenses', '2022-11-14 11:39:13', '2022-11-14 11:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `account_type_name` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(8, 'Vehicle', '2022-11-03 11:49:33', '2022-11-03 11:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `additional_service`
--

CREATE TABLE `additional_service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explanation` text COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addition_tool_users`
--

INSERT INTO `addition_tool_users` (`id`, `full_name`, `passport_number`, `birth_date`, `nationality`, `telephone`, `created_at`, `updated_at`) VALUES
(17, 'hgdtrg', NULL, '2022-11-19', 'dghthtgrh', NULL, '2022-11-18 09:32:04', '2022-11-18 09:32:04'),
(19, 'Camille', NULL, '2022-11-08', 'congolese', NULL, '2022-11-26 10:15:21', '2022-11-26 10:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(24, 'Can view session', 6, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `contract_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `company` tinyint(1) NOT NULL,
  `contract_for` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `issue_date_and_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `rent_days` int(11) DEFAULT NULL,
  `return_date_and_time` datetime DEFAULT NULL,
  `issue_point` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_point` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `early_delivery_date` date DEFAULT NULL,
  `vehicle_issue_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_return_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `additional_tool_user_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `contract_number`, `company`, `contract_for`, `vehicle_id`, `issue_date_and_time`, `rent_days`, `return_date_and_time`, `issue_point`, `return_point`, `early_delivery_date`, `vehicle_issue_address`, `vehicle_return_address`, `customer_id`, `additional_tool_user`, `payment_total_fee`, `debt`, `payment_currency`, `agent_fee`, `agent_percentage`, `registration_date`, `created_at`, `updated_at`, `additional_tool_user_2`) VALUES
(1, '', 0, 1, 4, '2022-11-18 15:17:00', NULL, '2022-11-18 15:17:00', '', '', '2022-11-18', 'dgtgtrb gbgbtg', 'u776i76i', 2, 17, 56830, NULL, 1, 7585, NULL, '2022-11-18 12:32:04', '2022-11-18 12:32:04', '2022-11-18 12:32:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'TL', 1, '2022-11-02 12:23:04', '2022-11-02 12:23:04'),
(2, 'USD', 18.65, '2022-11-02 12:23:04', '2022-11-02 12:23:04'),
(3, 'EUR', 18.15, '2022-11-02 12:23:04', '2022-11-02 12:23:04'),
(4, 'GBP', 20.73, '2022-11-02 12:23:04', '2022-11-02 12:23:04');

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
  `debt` double DEFAULT 0,
  `paid` double DEFAULT 0,
  `balance` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `current_account`
--

INSERT INTO `current_account` (`id`, `customer_id`, `account_type_id`, `account_name`, `account_currency_id`, `explanation`, `registration_date`, `created_at`, `updated_at`, `debt`, `paid`, `balance`) VALUES
(1, 1, 4, 'Benoit Kekwandi LLNZ', 1, 'benoit\'s account', '2022-11-03 10:11:40', '2022-11-03 13:11:40', '2022-11-03 13:11:40', NULL, NULL, NULL),
(2, 1, 6, 'Benoit Luzolo lwa Nzambi', 1, 'Benoit\'s second account', '2022-11-03 10:13:11', '2022-11-03 13:13:11', '2022-11-03 13:13:11', NULL, NULL, NULL),
(3, 1, 5, 'BKLL', 4, 'Benoit Pound\'s account', '2022-11-03 10:14:08', '2022-11-03 13:14:08', '2022-11-03 13:14:08', NULL, NULL, NULL),
(4, 1, 5, 'Ben Kekwandi LNzambi', 3, 'B.Kekwandi\'s temporary  euro account', '2022-11-09 06:41:54', '2022-11-09 06:41:54', '2022-11-09 06:41:54', NULL, NULL, NULL),
(5, 1, 4, 'B. Kekwandi L. euro', 3, 'B.Kekwandi\'s temporary euro account', '2022-11-09 06:42:44', '2022-11-09 06:42:44', '2022-11-09 06:42:44', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_phone_1` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cell_phone_2` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `local_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_license_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_issue_date` date DEFAULT NULL,
  `license_issue_place` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `black_list` int(11) DEFAULT NULL,
  `customer_title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_1` int(11) DEFAULT NULL,
  `account_2` int(11) DEFAULT NULL,
  `account_3` int(11) DEFAULT NULL,
  `account_4` int(11) DEFAULT NULL,
  `place_of_birth` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `type_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `date_of_birth`, `phone_number`, `cell_phone_1`, `cell_phone_2`, `home_phone`, `business_phone`, `office_phone`, `company_name`, `home_address`, `local_address`, `business_address`, `nationality`, `email`, `passport_no`, `driver_license_number`, `license_number`, `license_issue_date`, `license_issue_place`, `created_at`, `updated_at`, `black_list`, `customer_title`, `job`, `student`, `student_id`, `country`, `blood_group`, `system_note`, `email_2`, `account_1`, `account_2`, `account_3`, `account_4`, `place_of_birth`) VALUES
(1, 1, 'Benoit', 'Kekwandi', '', '', '2022-11-03', '', '', '', '', '', NULL, NULL, 'girne tepebasi avenue', '', '', '', 'benoitkekwandi@gmail.com', 'jghfdghjk', NULL, '665566262', '2022-11-26', ';kluyjghfhj', '2022-11-03 09:04:37', '2022-11-03 09:04:37', 0, 'mr', '', NULL, NULL, 'Cyprus', 'AB', '', 'benoitkekwandi@gmail.com', NULL, NULL, NULL, NULL, ''),
(2, 1, 'Gizem', 'Olurdu', 'UKIYLIOUL', 'HYJUJ7U5K', '2022-11-14', 'LOLOUILL', 'LIULIUL', '', 'LIULIUL', 'OOUOUL', NULL, NULL, 'wdasfrw', 'frfregfregr', 'rgrgfrfgrf', 'HTHTRHRYH', '05338638797', 'UK98904885', NULL, 'fgrg4gfrg4', '2022-11-25', 'grgr3gr3g', '2022-11-14 08:49:10', '2022-11-14 08:49:10', 1, 'ms', 'ILILIL', NULL, NULL, 'RFRGTEGTRH', 'AB', '', 'O;PI\';PI\'', NULL, NULL, NULL, NULL, 'JKHDEDGEJHC'),
(3, 1, 'Ediz ', 'Ertugrul ', 'UKIYLIOUL', 'HYJUJ7U5K', '2022-11-14', 'LOLOUILL', 'LIULIUL', '', 'LIULIUL', 'OOUOUL', NULL, NULL, 'kujty', 'jytjytjrthre', 'htrherhwr', 'HTHTRHRYH', 'zeusholdem@gmail.com', 'UK98904885', NULL, 'gerhg5thh45', '2022-04-06', 'u6u65u65u', '2022-11-14 08:56:47', '2022-11-14 08:56:47', 1, '3re2r', 'ILILIL', NULL, NULL, 'RFRGTEGTRH', 'AB', 'ewretrytrh', 'O;PI\';PI\'', NULL, NULL, NULL, NULL, 'JKHDEDGEJHC');

-- --------------------------------------------------------

--
-- Table structure for table `customer_black_list`
--

CREATE TABLE `customer_black_list` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'individual', '2022-11-02 12:24:26', '2022-11-02 12:24:26'),
(2, 'company', '2022-11-02 12:24:26', '2022-11-02 12:24:26');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(18, 'sessions', '0001_initial', '2022-11-09 07:43:37.679354');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `additional_tool_user` int(11) DEFAULT NULL,
  `additional_tool_user_2` int(11) DEFAULT NULL,
  `payment_total_fee` double DEFAULT NULL,
  `debt` double DEFAULT NULL,
  `payment_currency` int(11) DEFAULT NULL,
  `agent_fee` double DEFAULT NULL,
  `agent_percentage` double DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_contract`
--

INSERT INTO `new_contract` (`id`, `contract_number`, `company`, `contract_for`, `vehicle_id`, `issue_date_and_time`, `rent_days`, `return_date_and_time`, `issue_point`, `return_point`, `early_delivery_date`, `vehicle_issue_address`, `vehicle_return_address`, `customer_id`, `additional_tool_user`, `additional_tool_user_2`, `payment_total_fee`, `debt`, `payment_currency`, `agent_fee`, `agent_percentage`, `registration_date`, `created_at`, `updated_at`) VALUES
(1, '', 0, 1, 3, '2022-11-26 18:13:00', NULL, '2022-11-26 16:17:00', '', '', '2022-12-03 00:00:00', '34t43t34t3', '3a4t43ta3ta3', '1', 19, NULL, 800, NULL, 2, 7585, NULL, '2022-11-26 13:15:21', '2022-11-26 10:15:21', '2022-11-26 13:15:21');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_reservation`
--

INSERT INTO `new_reservation` (`id`, `reservation_status_id`, `customer_id`, `reservation_maker_id`, `vehicle_id`, `purchase_date`, `pick_up_time`, `pick_up_place`, `registration_date`, `flight_number`, `total_fee`, `currency_id`, `vehicle_full_address`, `vehicle_delivery_address`, `vehicle_delivery_date`, `vehicle_delivery_time`, `vehicle_return_place`, `return_flight_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 2, '2022-12-10', NULL, 'LEFKOSA_MERKEZ', '2022-11-26 15:15:33', NULL, 740, 3, NULL, 'hhythtr regerg trhrt', '2023-01-12', '18:15:00', 'GIRNE_MERKEZ', '187950', '2022-11-26 12:15:33', '2022-11-26 12:15:33');

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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `method` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `method`, `created_at`, `updated_at`) VALUES
(1, 'Mail oder', '2022-11-03 13:27:01', '2022-11-03 13:27:01'),
(2, 'Check', '2022-11-03 13:27:01', '2022-11-03 13:27:01'),
(3, 'Transfer', '2022-11-03 13:27:01', '2022-11-03 13:27:01'),
(4, 'Credit card', '2022-11-03 13:27:01', '2022-11-03 13:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `pick_up_place` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `flight_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_fee` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) DEFAULT NULL,
  `vehicle_full_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_delivery_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_delivery_date` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_delivery_time` time DEFAULT NULL,
  `vehicle_return_place` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_flight_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
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
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_phone_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_status`
--

CREATE TABLE `reservation_status` (
  `id` int(11) NOT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
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
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_number` varchar(25) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL,
  `section` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Benoit Kekwandi', 'benoitkekwandi@gmail.com', '101010', '2022-11-17 12:34:13', '2022-11-17 12:34:13'),
(2, NULL, 'Radian Foundation', 'radianfoundation.cp@gmail.com', '303030', '2022-11-17 12:38:43', '2022-11-17 12:38:43'),
(5, NULL, 'Jonathan Gerard', 'jonathangerard@gmail.com', '909090', '2022-11-17 12:43:23', '2022-11-17 12:43:23'),
(6, NULL, 'booba izzy', 'boobaizzy@gmail.com', '203020', '2022-11-17 13:08:03', '2022-11-17 13:08:03'),
(7, NULL, 'Gizem Olasanjo', 'gizemolasanjo@gmail.com', '106030', '2022-11-17 13:16:22', '2022-11-17 13:16:22'),
(8, NULL, 'Ozan Alsancak', 'ozanalsancak@gmail.com', '890756', '2022-11-17 13:34:00', '2022-11-17 13:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'USER', '2022-11-17 15:17:56', '2022-11-17 15:17:56'),
(2, 'ADMIN', '2022-11-17 15:17:56', '2022-11-17 15:17:56'),
(3, 'EMPLOYEE', '2022-11-17 15:18:12', '2022-11-17 15:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_owner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_model_id` int(11) DEFAULT NULL,
  `vehicle_plate_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `traffic_release_year` int(10) UNSIGNED DEFAULT NULL,
  `region_location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `vehicle_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rent_start` datetime DEFAULT NULL,
  `rent_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_owner`, `vehicle_model_id`, `vehicle_plate_number`, `traffic_release_year`, `region_location`, `vehicle_status_id`, `created_at`, `updated_at`, `vehicle_status`, `rent_start`, `rent_end`) VALUES
(1, NULL, 1, 'LC60 DKF', 2018, 'Fleet', 4, '2022-11-09 10:21:39', '2022-11-09 10:21:39', 'rented', '2022-11-22 18:37:40', '2022-11-24 18:37:40'),
(2, NULL, 1, 'BD68 XJX', 2009, 'Kyrenia Center garage', 1, '2022-11-09 10:22:53', '2022-11-09 10:22:53', 'available', NULL, NULL),
(3, NULL, 2, 'OX65 AWD', 2006, 'Fleet', 1, '2022-11-09 10:23:29', '2022-11-09 10:23:29', 'available', NULL, NULL),
(4, NULL, 1, 'NU72 REG', 2013, 'Fleet', 1, '2022-11-09 10:24:35', '2022-11-09 10:24:35', 'available', NULL, NULL),
(5, NULL, 3, 'KP14KYJ', 2007, 'Fleet', 1, '2022-11-09 10:25:06', '2022-11-09 10:25:06', 'available', NULL, NULL),
(6, NULL, 1, 'POIU18181', 2016, 'jhhjf yfgyuh', 1, '2022-11-14 11:26:22', '2022-11-14 11:26:22', 'available', NULL, NULL),
(7, NULL, 2, 'ARX 405', 2007, 'Kyrenia Center garage', 1, '2022-11-19 09:43:09', '2022-11-19 09:43:09', 'available', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_brand`
--

CREATE TABLE `vehicle_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_brand`
--

INSERT INTO `vehicle_brand` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(5, 'Bentley', '2022-11-02 10:57:09', '2022-11-02 10:57:09'),
(6, 'BMV', '2022-11-02 10:57:15', '2022-11-02 10:57:15'),
(7, 'Audi', '2022-11-02 10:57:22', '2022-11-02 10:57:22'),
(8, 'Acura', '2022-11-02 10:57:32', '2022-11-02 10:57:32'),
(9, 'Alpha Romeo', '2022-11-02 10:57:41', '2022-11-02 10:57:41'),
(10, 'Mercedes', '2022-11-02 10:57:49', '2022-11-02 10:57:49'),
(11, 'Volvo', '2022-11-02 10:58:48', '2022-11-02 10:58:48'),
(12, 'Volkswagen', '2022-11-02 10:59:01', '2022-11-02 10:59:01'),
(13, 'Tesla', '2022-11-02 10:59:13', '2022-11-02 10:59:13'),
(14, 'Scion', '2022-11-02 10:59:21', '2022-11-02 10:59:21'),
(15, 'Saturn', '2022-11-02 10:59:25', '2022-11-02 10:59:25'),
(16, 'Saab', '2022-11-02 10:59:33', '2022-11-02 10:59:33'),
(17, 'Rolls-Royce', '2022-11-02 10:59:49', '2022-11-02 10:59:49'),
(18, 'Rivian', '2022-11-02 10:59:58', '2022-11-02 10:59:58'),
(19, 'Ram', '2022-11-02 11:00:04', '2022-11-02 11:00:04'),
(20, 'Porsche', '2022-11-02 11:00:25', '2022-11-02 11:00:25'),
(21, 'Pontiac', '2022-11-02 11:00:33', '2022-11-02 11:00:33'),
(22, 'Polestar', '2022-11-02 11:00:45', '2022-11-02 11:00:45'),
(23, 'Nissan', '2022-11-02 11:00:55', '2022-11-02 11:00:55'),
(24, 'Mitsubishi', '2022-11-02 11:01:16', '2022-11-02 11:01:16'),
(25, 'Mini', '2022-11-02 11:01:24', '2022-11-02 11:01:24'),
(26, 'Mercury', '2022-11-02 11:01:28', '2022-11-02 11:01:28'),
(27, 'Mercedes-Benz', '2022-11-02 11:01:41', '2022-11-02 11:01:41'),
(28, 'Mazda', '2022-11-02 11:01:49', '2022-11-02 11:01:49'),
(29, 'Maserati', '2022-11-02 11:01:55', '2022-11-02 11:01:55'),
(30, 'Lucid', '2022-11-02 11:04:58', '2022-11-02 11:04:58'),
(31, 'Lotus', '2022-11-02 11:05:15', '2022-11-02 11:05:15'),
(32, 'Lincoln', '2022-11-02 11:05:22', '2022-11-02 11:05:22'),
(33, 'Lexus', '2022-11-02 11:05:31', '2022-11-02 11:05:31'),
(34, 'Land Rover', '2022-11-02 11:05:37', '2022-11-02 11:05:37'),
(35, 'Kia', '2022-11-02 11:05:43', '2022-11-02 11:05:43'),
(36, 'Jeep', '2022-11-02 11:05:49', '2022-11-02 11:05:49'),
(37, 'Jaguar', '2022-11-02 11:06:04', '2022-11-02 11:06:04'),
(38, 'Infiniti', '2022-11-02 11:06:13', '2022-11-02 11:06:13'),
(39, 'Hyundai', '2022-11-02 11:06:24', '2022-11-02 11:06:24'),
(40, 'Honda', '2022-11-02 11:06:27', '2022-11-02 11:06:27'),
(41, 'Genesis', '2022-11-02 11:06:34', '2022-11-02 11:06:34'),
(42, 'GMC', '2022-11-02 11:06:45', '2022-11-02 11:06:45'),
(43, 'Ford', '2022-11-02 11:06:51', '2022-11-02 11:06:51'),
(44, 'Fiat', '2022-11-02 11:06:54', '2022-11-02 11:06:54'),
(45, 'Ford', '2022-11-02 11:15:21', '2022-11-02 11:15:21'),
(46, 'Fiat', '2022-11-02 11:15:25', '2022-11-02 11:15:25'),
(47, 'Dodge', '2022-11-02 11:15:35', '2022-11-02 11:15:35'),
(48, 'Chrysler', '2022-11-02 11:15:43', '2022-11-02 11:15:43'),
(49, 'Chevrolet', '2022-11-02 11:15:54', '2022-11-02 11:15:54'),
(50, 'Cadillac', '2022-11-02 11:16:04', '2022-11-02 11:16:04'),
(51, 'Buick', '2022-11-02 11:16:12', '2022-11-02 11:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_components`
--

CREATE TABLE `vehicle_components` (
  `id` int(11) NOT NULL,
  `component_name` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `current_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_history`
--

CREATE TABLE `vehicle_history` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `operation_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explanation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_maintenance`
--

CREATE TABLE `vehicle_maintenance` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `date_entry` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `release_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `explanation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `care_place` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `vehicle_model` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_doors` int(11) DEFAULT NULL,
  `number_of_passengers` int(11) DEFAULT NULL,
  `large_suitcase` int(11) DEFAULT NULL,
  `small_suitcase` int(11) DEFAULT NULL,
  `vehicle_price_class_id` int(11) NOT NULL,
  `model_year` int(11) DEFAULT NULL,
  `gear` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fuel_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `components` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `vehicle_type_id`, `vehicle_model`, `number_of_doors`, `number_of_passengers`, `large_suitcase`, `small_suitcase`, `vehicle_price_class_id`, `model_year`, `gear`, `fuel_type`, `components`, `created_at`, `updated_at`) VALUES
(1, 2, 'EQS SUV', 4, 5, 4, 9, 1, 2020, 'Manual Gear', 'Petrol', 'GPS,Radio,Climate,', '2022-11-09 10:07:17', '2022-11-09 10:07:17'),
(2, 1, 'Volvo XC60', 4, 5, 5, 9, 1, 2018, 'Automatic Transaction', 'Diesel', 'GPS,Radio,Climate,', '2022-11-09 10:09:05', '2022-11-09 10:09:05'),
(3, 1, 'Mulliner', 4, 5, 3, 10, 1, 2019, 'Triptonik', 'Diesel', 'GPS,Radio,Climate,', '2022-11-09 10:10:16', '2022-11-09 10:10:16'),
(4, 1, 'A3 SportBack', 4, 5, 3, 9, 1, 2014, 'Manual Gear', 'LPG', 'GPS,Radio,Climate,', '2022-11-09 10:11:40', '2022-11-09 10:11:40');

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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_payment_reminder`
--

INSERT INTO `vehicle_payment_reminder` (`id`, `vehicle_id`, `payment_date`, `fee_amount`, `explanation`, `currency_id`, `registration_date`, `created_at`, `updated_at`) VALUES
(1, 4, '2022-11-23', 600, 'just a reminder', 2, '2022-11-23 09:14:21', '2022-11-23 09:14:21', '2022-11-23 09:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_price_class`
--

CREATE TABLE `vehicle_price_class` (
  `id` int(11) NOT NULL,
  `price_class` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `type_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_num_of_person` int(11) DEFAULT NULL,
  `max_small_suitcase` int(11) DEFAULT NULL,
  `max_large_suitcase` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `type_name`, `max_num_of_person`, `max_small_suitcase`, `max_large_suitcase`, `created_at`, `updated_at`) VALUES
(1, 'car', 5, 2, 3, '2022-11-02 14:46:42', '2022-11-02 14:46:42'),
(2, 'SUV', 5, 1, 2, '2022-11-02 14:47:02', '2022-11-02 14:47:02'),
(3, 'Hyundai', 5, 4, 6, '2022-11-02 14:47:02', '2022-11-02 14:47:02'),
(4, 'Ford Focus', 6, 3, 5, '2022-11-02 14:47:02', '2022-11-02 14:47:02'),
(12, 'Lamborghini', 5, 8, 2, '2022-11-08 12:45:40', '2022-11-08 12:45:40'),
(13, 'Limousine', 13, 12, 6, '2022-11-08 12:46:10', '2022-11-08 12:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_users`
--

CREATE TABLE `vehicle_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identification_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_license_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `fk_adconst2` (`additional_tool_user_2`);

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
  ADD KEY `account_currency_id` (`account_currency_id`);

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
-- Indexes for table `new_contract`
--
ALTER TABLE `new_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_reservation`
--
ALTER TABLE `new_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `payment_status_id` (`payment_status_id`);

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
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_status_id` (`reservation_status_id`),
  ADD KEY `fk_cust` (`customer_id`);

--
-- Indexes for table `reservation_maker`
--
ALTER TABLE `reservation_maker`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_model_id` (`vehicle_model_id`),
  ADD KEY `vehicle_status_id` (`vehicle_status_id`);

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
  ADD KEY `vehicle_id` (`vehicle_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `additional_service`
--
ALTER TABLE `additional_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addition_tool_users`
--
ALTER TABLE `addition_tool_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `current_account`
--
ALTER TABLE `current_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `new_contract`
--
ALTER TABLE `new_contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `new_reservation`
--
ALTER TABLE `new_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Constraints for table `additional_service`
--
ALTER TABLE `additional_service`
  ADD CONSTRAINT `additional_service_ibfk_1` FOREIGN KEY (`pricing_method_id`) REFERENCES `payment_method` (`id`),
  ADD CONSTRAINT `additional_service_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

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
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`payment_currency`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `contract_ibfk_3` FOREIGN KEY (`contract_for`) REFERENCES `customer_type` (`id`),
  ADD CONSTRAINT `fk_adconst2` FOREIGN KEY (`additional_tool_user_2`) REFERENCES `addition_tool_users` (`id`),
  ADD CONSTRAINT `fk_adtcons` FOREIGN KEY (`additional_tool_user`) REFERENCES `addition_tool_users` (`id`);

--
-- Constraints for table `current_account`
--
ALTER TABLE `current_account`
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
-- Constraints for table `payment`
--
ALTER TABLE `payment`
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
-- Constraints for table `services_fees`
--
ALTER TABLE `services_fees`
  ADD CONSTRAINT `services_fees_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`),
  ADD CONSTRAINT `services_fees_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
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
