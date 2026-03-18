-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2026 at 02:48 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u507785193_fonico`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_admin@fonicomobile.com|2401:4900:ac0a:d383:602d:bb:fa2:6fd4', 'i:1;', 1767095703),
('laravel_cache_admin@fonicomobile.com|2401:4900:ac0a:d383:602d:bb:fa2:6fd4:timer', 'i:1767095703;', 1767095703),
('laravel_cache_admin@fonicomobile.com|27.56.149.87', 'i:1;', 1767027858),
('laravel_cache_admin@fonicomobile.com|27.56.149.87:timer', 'i:1767027858;', 1767027858),
('laravel_cache_fonico@admin.com|27.59.86.189', 'i:1;', 1769185057),
('laravel_cache_fonico@admin.com|27.59.86.189:timer', 'i:1769185057;', 1769185057),
('laravel_cache_fonico@gmail.com|2409:4080:9d38:7d5e::bacb:7100', 'i:1;', 1772773860),
('laravel_cache_fonico@gmail.com|2409:4080:9d38:7d5e::bacb:7100:timer', 'i:1772773860;', 1772773860),
('laravel_cache_fonico77@gmail.com|2405:201:2023:b9f1:54c0:387d:f762:5892', 'i:1;', 1769165773),
('laravel_cache_fonico77@gmail.com|2405:201:2023:b9f1:54c0:387d:f762:5892:timer', 'i:1769165773;', 1769165773),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:51:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:14:\"dashboard.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"profile.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:14:\"profile.update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:23:\"profile.password.change\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"purchases.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"purchases.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"purchases.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:16:\"purchases.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:3:{s:1:\"a\";i:9;s:1:\"b\";s:16:\"purchases.import\";s:1:\"c\";s:3:\"web\";}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:24:\"purchases.download.stock\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:10:\"sales.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:12:\"sales.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:10:\"sales.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:12:\"sales.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:17:\"sales.fetch.stock\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:13:\"invoices.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"invoices.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:13:\"invoices.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:14:\"invoices.print\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:15:\"invoices.detail\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:18:\"reports.sales.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:20:\"reports.sales.export\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:22:\"reports.purchases.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:24:\"reports.purchases.export\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:22:\"reports.customers.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:24:\"reports.customers.export\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:19:\"reports.charts.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:13:\"expenses.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:15:\"expenses.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:13:\"expenses.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"expenses.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:17:\"transactions.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:19:\"transactions.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:17:\"transactions.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:19:\"transactions.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:19:\"transactions.resync\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:11:\"google.sync\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:10:\"roles.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:12:\"roles.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:10:\"roles.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:12:\"roles.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:10:\"users.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:12:\"users.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:10:\"users.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:12:\"users.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:12:\"parties.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:14:\"parties.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:12:\"parties.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:13:\"parties.store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:14:\"parties.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:18:\"parties.viewdetail\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super-admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"general\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"office pc\";s:1:\"c\";s:3:\"web\";}}}', 1773824388);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `day_opening_balances`
--

CREATE TABLE `day_opening_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `balance` decimal(15,2) NOT NULL,
  `cash_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `bank_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `day_opening_balances`
--

INSERT INTO `day_opening_balances` (`id`, `date`, `balance`, `cash_balance`, `bank_balance`, `created_at`, `updated_at`) VALUES
(1, '2025-12-31', 50000.00, 50000.00, 0.00, '2025-12-31 13:21:28', '2026-01-01 13:52:19'),
(2, '2026-01-01', 37000.00, 5000.00, 32000.00, '2026-01-01 04:55:12', '2026-01-07 13:28:09'),
(3, '2026-01-02', 15000.00, 15000.00, 0.00, '2026-01-02 08:50:14', '2026-01-02 09:33:14'),
(4, '2026-01-06', 40000.00, 40000.00, 0.00, '2026-01-07 07:46:20', '2026-01-07 07:46:20'),
(5, '2026-01-07', 32000.00, 0.00, 32000.00, '2026-01-07 07:46:20', '2026-01-07 13:33:57'),
(6, '2025-12-30', 32000.00, 0.00, 32000.00, '2026-01-07 13:28:09', '2026-01-07 13:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `dummyinvoice`
--

CREATE TABLE `dummyinvoice` (
  `id` int(20) NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(50) DEFAULT NULL,
  `oldamount` double(10,2) DEFAULT NULL,
  `new_amount` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category` enum('General','Petrol','Food','Entertainment','Other') NOT NULL,
  `amount` double(10,2) NOT NULL,
  `entrydate` date NOT NULL,
  `description` text DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_category`, `amount`, `entrydate`, `description`, `added_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'General', 2740.00, '2026-01-02', 'kashmir shopping', 5, 1, '2026-01-12 01:48:48', '2026-01-12 01:49:13'),
(2, 'General', 380.00, '2026-02-11', 'ads', 5, 0, '2026-02-11 16:51:10', '2026-02-11 16:51:10'),
(3, 'General', 150.00, '2026-02-11', 'parcel amd to indore', 5, 0, '2026-02-12 13:07:16', '2026-02-12 13:07:16'),
(4, 'General', 700.00, '2026-02-15', 'cold coffee', 5, 0, '2026-02-15 19:18:14', '2026-02-15 19:18:14'),
(5, 'General', 1500.00, '2026-02-17', 'jay bhawani', 5, 0, '2026-02-19 18:27:47', '2026-02-19 18:27:47'),
(6, 'General', 15000.00, '2026-02-14', 'pg rent', 5, 1, '2026-02-19 18:33:33', '2026-03-01 14:06:38'),
(7, 'General', 28000.00, '2026-02-15', 'interest', 5, 1, '2026-02-21 17:12:50', '2026-02-21 17:13:49'),
(8, 'General', 3500.00, '2026-02-24', 'marketing', 5, 0, '2026-02-25 19:20:17', '2026-02-25 19:20:17'),
(9, 'General', 1000.00, '2026-02-28', 'ads', 5, 0, '2026-02-28 13:45:24', '2026-02-28 13:45:24');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_no` varchar(255) DEFAULT NULL,
  `total_amount` double(10,2) DEFAULT NULL,
  `cgst_rate` double(10,2) DEFAULT NULL,
  `sgst_rate` double(10,2) DEFAULT NULL,
  `igst_rate` double(10,2) DEFAULT NULL,
  `cgst_amount` double(10,2) DEFAULT NULL,
  `sgst_amount` double(10,2) DEFAULT NULL,
  `igst_amount` double(10,2) DEFAULT NULL,
  `discount_rate` double(10,2) DEFAULT NULL,
  `tax_amount` double(10,2) DEFAULT NULL,
  `net_amount` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT 0.00,
  `declaration` text DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_paid` tinyint(4) NOT NULL DEFAULT 0,
  `invoice_by` int(11) DEFAULT NULL,
  `customer_address` text DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sync_contact` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_date`, `invoice_no`, `customer_name`, `customer_no`, `total_amount`, `cgst_rate`, `sgst_rate`, `igst_rate`, `cgst_amount`, `sgst_amount`, `igst_amount`, `discount_rate`, `tax_amount`, `net_amount`, `discount`, `declaration`, `deleted`, `is_paid`, `invoice_by`, `customer_address`, `payment_type`, `created_at`, `updated_at`, `sync_contact`) VALUES
(1, '2025-12-25', 'INVOICE20250001', 'Sajjal Mordia', '7000543562', 148000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 148000.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 13:46:01', '2025-12-27 15:21:08', 0),
(2, '2025-12-27', 'INVOICE20250002', 'Sajjal Mordia', '7000543562', 56000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 56000.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 13:48:19', '2025-12-27 15:54:53', 0),
(3, '2025-12-25', 'INVOICE20250003', 'Nikhil Patidar', '8827086144', 37000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 37000.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 15:16:23', '2025-12-27 15:16:23', 0),
(4, '2025-12-25', 'INVOICE20250004', 'Kamal', '8770020942', 131300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 131300.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 15:20:15', '2025-12-27 15:20:15', 0),
(5, '2025-12-25', 'INVOICE20250005', 'Choudhary Mobile', '7828899998', 100800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100800.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 15:27:51', '2025-12-27 15:27:51', 0),
(6, '2025-12-25', 'INVOICE20250006', 'Monu Bhai Murtiman', '7405817545', 10500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10500.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 16:01:28', '2025-12-27 16:01:28', 0),
(7, '2025-12-27', 'INVOICE20250007', 'Monu Bhai Murtiman', '7405817545', 22000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22000.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 16:08:39', '2025-12-27 16:09:28', 0),
(8, '2025-12-27', 'INVOICE20250008', 'Monu Bhai Murtiman', '7405817545', 70500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 70500.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-27 16:11:13', '2025-12-27 16:13:26', 0),
(9, '2025-12-27', 'INVOICE20250009', 'Monu Bhai Murtiman', '7405817545', 12000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12000.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-28 06:29:22', '2025-12-28 06:29:22', 0),
(10, '2025-12-27', 'INVOICE20250010', 'Monu Bhai Murtiman', '7405817545', 17500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17500.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2025-12-28 13:20:33', '2025-12-28 13:20:33', 0),
(11, '2025-12-31', 'INVOICE20250011', 'Kamal', '8770020942', 15500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15500.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2025-12-31 20:46:07', '2025-12-31 20:46:07', 0),
(12, '2025-12-31', 'INVOICE20250012', 'Kamal', '8770020942', 38000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 38000.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2025-12-31 20:47:07', '2025-12-31 20:47:07', 0),
(13, '2025-12-31', 'INVOICE20250013', 'Kamal', '8770020942', 35500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 35500.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2025-12-31 20:49:32', '2025-12-31 20:49:32', 0),
(14, '2025-12-31', 'INVOICE20250014', 'Kamal', '8770020942', 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6000.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2025-12-31 20:50:29', '2025-12-31 20:50:29', 0),
(15, '2025-12-31', 'INVOICE20250015', 'Kamal', '8770020942', 4500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4500.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2025-12-31 20:51:05', '2025-12-31 20:51:05', 0),
(16, '2026-01-09', 'INVOICE20260001', 'Kamal', '8770020942', 98700.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 98700.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-01-10 23:28:25', '2026-01-10 23:28:25', 0),
(17, '2026-01-11', 'INVOICE20260002', 'sandesh', '8770969528', 67000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 67000.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-01-11 00:09:45', '2026-01-11 00:09:45', 0),
(18, '2026-01-11', 'INVOICE20260003', 'Monu Bhai Murtiman', '7405817545', 71000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 71000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-01-12 00:56:57', '2026-01-12 00:56:57', 0),
(19, '2026-01-11', 'INVOICE20260004', 'Sajjal Mordia', '7000543562', 118000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 118000.00, 0.00, NULL, 0, 1, 5, 'satna', 'Online', '2026-01-12 11:00:39', '2026-01-12 11:00:39', 0),
(20, '2026-01-23', 'INVOICE20260005', 'Monu Bhai Murtiman', '7405817545', 34500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 34500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-01-23 21:19:50', '2026-01-23 21:19:50', 0),
(21, '2026-01-23', 'INVOICE20260006', 'mitesh goswami', '9099456789', 81000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 81000.00, 0.00, 'exchange with 14 pro max', 0, 1, 5, 'prahlad nagar', 'Online', '2026-01-23 21:47:46', '2026-01-23 21:47:46', 0),
(22, '2026-01-24', 'INVOICE20260007', 'Utsav jasani maheshbhai', '9904065658', 15500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15500.00, 0.00, 'Exchange with xs max', 0, 1, 5, 'Shivant heights, uttran, surat, gujarat 394105', 'Online', '2026-01-24 15:28:41', '2026-01-24 18:58:23', 0),
(23, '2026-01-24', 'INVOICE20260008', 'Nikhil Patidar', '8827086144', 50000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 50000.00, 0.00, NULL, 0, 1, 5, 'indore dollar market', 'Online', '2026-01-24 19:03:31', '2026-01-24 19:03:31', 0),
(24, '2026-01-25', 'INVOICE20260009', 'bhavyash oswal', '8600046000', 62000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 62000.00, 0.00, NULL, 0, 1, 5, 'pune', 'Online', '2026-01-26 13:24:04', '2026-01-26 13:24:04', 0),
(25, '2026-01-26', 'INVOICE20260010', 'Monu Bhai Murtiman', '7405817545', 3800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3800.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-01-26 20:56:42', '2026-01-26 20:56:42', 0),
(26, '2021-02-13', 'INVOICE20260011', 'Monu Bhai Murtiman', '7405817545', 49999.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 49999.00, 0.00, NULL, 1, 1, 5, 'ahmedabad', 'Online', '2026-01-26 21:08:39', '2026-01-27 18:07:59', 0),
(27, '2026-01-26', 'INVOICE20260012', 'yash chandekar', '7693949937', 48500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 48500.00, 0.00, 'exchange with 12 pro max', 0, 1, 5, 'durdarshan metro ahmedabad', 'Online', '2026-01-26 22:25:38', '2026-01-26 22:25:38', 0),
(28, '2026-01-27', 'INVOICE20260013', 'taksh', '6354897203', 9450.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9450.00, 0.00, NULL, 0, 1, 5, 'bunglow no 4 shriram nana khiloda ahmedabad', 'Online', '2026-01-27 11:41:41', '2026-01-27 11:41:41', 0),
(29, '2026-01-27', 'INVOICE20260014', 'bhavyash oswal', '8600046000', 73000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 73000.00, 0.00, 'exchange with 15 pro', 0, 1, 5, 'pune', 'Online', '2026-01-27 19:26:13', '2026-01-27 19:26:13', 0),
(30, '2026-01-27', 'INVOICE20260015', 'parth rathod', '9723070488', 29000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 29000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-01-27 19:27:57', '2026-01-27 19:27:57', 0),
(31, '2026-01-29', 'INVOICE20260016', 'Monu Bhai Murtiman', '7405817545', 353800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 353800.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-01-29 01:03:19', '2026-01-29 01:03:19', 0),
(32, '2026-01-29', 'INVOICE20260017', 'Choudhary Mobile', '7828899998', 65000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 65000.00, 0.00, NULL, 0, 1, 5, 'jabalpur', 'Online', '2026-01-29 01:06:24', '2026-01-29 01:06:24', 0),
(33, '2026-01-29', 'INVOICE20260018', 'Sajjal Mordia', '7000543562', 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100000.00, 0.00, NULL, 0, 1, 5, 'satna', 'Online', '2026-01-29 01:08:07', '2026-01-29 01:08:07', 0),
(34, '2026-01-29', 'INVOICE20260019', 'parth rajput', '9537181195', 7700.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7700.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-01-29 11:36:06', '2026-01-29 11:36:06', 0),
(35, '2026-01-29', 'INVOICE20260020', 'Monu Bhai Murtiman', '7405817545', 47000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 47000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-01-29 21:06:32', '2026-01-29 21:06:32', 0),
(36, '2026-01-28', 'INVOICE20260021', 'sajal soni', '7610200650', 18000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 18000.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-01-30 12:41:53', '2026-01-30 12:41:53', 0),
(37, '2026-01-31', 'INVOICE20260022', 'jitendra kumar', '9814429756', 15000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15000.00, 0.00, NULL, 0, 1, 5, 'ratanpur', 'Online', '2026-01-31 18:48:54', '2026-01-31 18:48:54', 0),
(38, '2026-02-04', 'INVOICE20260023', 'Kamal', '8770020942', 221300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 221300.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-02-04 18:06:59', '2026-02-04 18:06:59', 0),
(39, '2026-02-04', 'INVOICE20260024', 'deenu bhaiya dollar market indore', '9826428299', 36500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 36500.00, 0.00, NULL, 0, 1, 5, 'indore', 'Online', '2026-02-04 18:08:54', '2026-02-05 12:03:40', 0),
(40, '2026-02-04', 'INVOICE20260025', 'mehul dan gadhvi', '9712999999', 116000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 116000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-05 12:05:47', '2026-02-05 12:05:47', 0),
(41, '2026-02-04', 'INVOICE20260026', 'ravi patel', '9099905520', 88000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 88000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-05 12:08:28', '2026-02-05 12:08:28', 0),
(42, '2026-02-05', 'INVOICE20260027', 'sajal soni', '7610200650', 136000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 136000.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-02-05 20:28:48', '2026-02-11 16:54:35', 0),
(43, '2026-02-05', 'INVOICE20260028', 'Monu Bhai Murtiman', '7405817545', 20300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20300.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-05 20:39:44', '2026-02-05 20:39:44', 0),
(44, '2026-02-06', 'INVOICE20260029', 'Sajjal Mordia', '7000543562', 117000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 117000.00, 0.00, NULL, 0, 1, 5, 'satna', 'Online', '2026-02-06 17:59:28', '2026-02-06 17:59:28', 0),
(45, '2026-02-06', 'INVOICE20260030', 'Sajjal Mordia', '7000543562', 136000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 136000.00, 0.00, NULL, 0, 1, 5, 'satna', 'Online', '2026-02-07 11:21:52', '2026-02-07 11:21:52', 0),
(46, '2026-02-06', 'INVOICE20260031', 'deenu bhaiya dollar market indore', '9826428299', 17500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17500.00, 0.00, NULL, 0, 1, 5, 'indore', 'Online', '2026-02-07 11:25:30', '2026-02-07 11:25:30', 0),
(47, '2026-02-07', 'INVOICE20260032', 'aditya kumar', '6205555012', 44000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 44000.00, 0.00, NULL, 0, 1, 5, 'chandgodar', 'Online', '2026-02-07 22:00:05', '2026-02-07 22:00:05', 0),
(48, '2026-02-08', 'INVOICE20260033', 'sunny rajput', '9737449167', 49500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 49500.00, 0.00, NULL, 0, 1, 5, 'jivraj park', 'Online', '2026-02-08 17:58:19', '2026-02-08 17:58:19', 0),
(49, '2026-02-08', 'INVOICE20260034', 'z md fayaz', '8943754158', 8000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8000.00, 0.00, NULL, 0, 1, 5, 'Ittikkunnath House, PO Chazhur, Thrissur, Kerala- 680571', 'Online', '2026-02-08 21:36:33', '2026-02-08 21:36:33', 0),
(50, '2026-02-10', 'INVOICE20260035', 'brahman suresh bhai kevala bhai', '6351978476', 27500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 27500.00, 0.00, NULL, 0, 1, 5, 'vastrapur ahmedabad', 'Online', '2026-02-10 14:10:26', '2026-02-10 14:10:26', 0),
(51, '2026-02-10', 'INVOICE20260036', 'pankaj tamta', '7500087459', 6300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6300.00, 0.00, NULL, 0, 1, 5, 'vastrapur', 'Online', '2026-02-10 17:45:48', '2026-02-10 17:45:48', 0),
(52, '2026-02-10', 'INVOICE20260037', 'Kamal', '8770020942', 100000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100000.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-02-10 21:10:56', '2026-02-10 21:10:56', 0),
(53, '2026-02-10', 'INVOICE20260038', 'tarun bodhani', '9737723078', 50500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 50500.00, 0.00, NULL, 0, 1, 5, 'galaxy naroda ahmedabad', 'Online', '2026-02-10 21:24:07', '2026-02-11 20:18:21', 0),
(54, '2026-02-11', 'INVOICE20260039', 'ifirst mobile', '9979796967', 13000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 13000.00, 0.00, NULL, 0, 1, 5, 'cg road', 'Online', '2026-02-11 16:47:43', '2026-02-11 16:47:43', 0),
(55, '2026-02-17', 'INVOICE20260040', 'kismat rabari', '7778823020', 46500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 46500.00, 0.00, NULL, 0, 1, 5, 'thaltej ahmedabad', 'Cash', '2026-02-17 13:16:59', '2026-02-17 13:16:59', 0),
(56, '2026-02-17', 'INVOICE20260041', 'utsav bobra', '7046061113', 18000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 18000.00, 0.00, NULL, 0, 1, 5, 'bopal ahmedabad', 'Online', '2026-02-17 20:21:43', '2026-02-17 20:21:43', 0),
(57, '2026-02-17', 'INVOICE20260042', 'utsav bobra', '7046061113', 37500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 37500.00, 0.00, NULL, 0, 1, 5, 'bopal ahmedabad', 'Online', '2026-02-17 21:00:09', '2026-02-17 21:00:09', 0),
(58, '2026-02-17', 'INVOICE20260043', 'Kamal', '8770020942', 204400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 204400.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-02-20 10:10:34', '2026-02-20 10:10:34', 0),
(59, '2026-02-20', 'INVOICE20260044', 'Monu Bhai Murtiman', '7405817545', 35000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 35000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-21 17:09:48', '2026-02-21 17:09:48', 0),
(60, '2026-02-21', 'INVOICE20260045', 'Kamal', '8770020942', 185900.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 185900.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-02-21 19:13:59', '2026-02-21 19:13:59', 0),
(61, '2026-02-22', 'INVOICE20260046', 'nilesh k bhatt', '9408547854', 59000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 59000.00, 0.00, NULL, 0, 1, 5, 'vaishno devi circle', 'Online', '2026-02-22 13:32:00', '2026-02-22 13:32:00', 0),
(62, '2026-02-23', 'INVOICE20260047', 'yash dhorajiya', '9824790281', 17000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17000.00, 0.00, NULL, 0, 1, 5, 'morbi road, rajkot', 'Online', '2026-02-23 19:40:48', '2026-02-23 19:40:48', 0),
(63, '2026-02-24', 'INVOICE20260048', 'pratik bhiya', '8153984444', 74000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 74000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-24 14:35:26', '2026-02-24 14:35:26', 0),
(64, '2026-02-24', 'INVOICE20260049', 'pratik sinh', '8320771846', 115000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 115000.00, 0.00, 'exchange with 16 pro max', 0, 1, 5, 'gandhinagar', 'Cash', '2026-02-24 18:13:28', '2026-02-24 18:13:28', 0),
(65, '2026-02-24', 'INVOICE20260050', 'yash dhorajiya', '9824790281', 20500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20500.00, 0.00, NULL, 0, 1, 5, 'morbi road, rajkot', 'Online', '2026-02-24 20:36:06', '2026-02-24 20:36:06', 0),
(66, '2026-02-24', 'INVOICE20260051', 'Monu Bhai Murtiman', '7405817545', 59500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 59500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-25 09:55:16', '2026-02-25 09:55:16', 0),
(67, '2026-02-26', 'INVOICE20260052', 'vaghela hiteshsin bhurbha', '7490904510', 38000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 38000.00, 0.00, NULL, 0, 1, 5, 'godhavi ahmedabad', 'Online', '2026-02-26 14:56:51', '2026-02-26 14:56:51', 0),
(68, '2026-02-26', 'INVOICE20260053', 'nilesh parmar mahavir mobile', '9924475886', 37500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 37500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-26 22:14:41', '2026-02-26 22:14:41', 0),
(69, '2026-02-26', 'INVOICE20260054', 'Monu Bhai Murtiman', '7405817545', 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-02-26 22:17:51', '2026-02-26 22:17:51', 0),
(70, '2026-03-01', 'INVOICE20260055', 'surhid trivedi ji', '9904528883', 37500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 37500.00, 0.00, NULL, 0, 1, 5, 'rajkot', 'Online', '2026-03-01 18:18:42', '2026-03-01 18:18:42', 0),
(71, '2026-03-01', 'INVOICE20260056', 'Monu Bhai Murtiman', '7405817545', 9500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-03-01 21:12:20', '2026-03-01 21:12:20', 0),
(72, '2026-03-01', 'INVOICE20260057', 'Monu Bhai Murtiman', '7405817545', 79000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 79000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-03-01 21:21:59', '2026-03-01 21:21:59', 0),
(73, '2026-03-02', 'INVOICE20260058', 'ifirst mobile', '9979796967', 66700.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 66700.00, 0.00, NULL, 0, 1, 5, 'cg road', 'Online', '2026-03-02 19:50:24', '2026-03-02 19:50:24', 0),
(74, '2026-03-07', 'INVOICE20260059', 'shinu chauhan', '9157168360', 15500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15500.00, 0.00, NULL, 0, 1, 5, 'ambavadi ahmedabad', 'Online', '2026-03-07 22:01:29', '2026-03-07 22:01:29', 0),
(75, '2026-03-05', 'INVOICE20260060', 'Kamal', '8770020942', 9600.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9600.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-03-08 14:17:09', '2026-03-08 14:17:09', 0),
(76, '2026-03-09', 'INVOICE20260061', 'Sajjal Mordia', '7000543562', 156000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 156000.00, 0.00, NULL, 0, 1, 5, 'satna', 'Online', '2026-03-09 18:06:31', '2026-03-09 18:06:31', 0),
(77, '2026-03-09', 'INVOICE20260062', 'nilesh parmar mahavir mobile', '9924475886', 66500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 66500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-03-09 18:11:05', '2026-03-09 18:11:05', 0),
(78, '2026-03-09', 'INVOICE20260063', 'nilesh parmar mahavir mobile', '9924475886', 22500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-03-09 18:13:57', '2026-03-09 18:13:57', 0),
(79, '2026-03-09', 'INVOICE20260064', 'yash shah mobile exchange', '8866648948', 104500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 104500.00, 0.00, NULL, 0, 1, 5, 'vastrapur', 'Online', '2026-03-09 18:48:35', '2026-03-09 18:48:35', 0),
(80, '2026-03-10', 'INVOICE20260065', 'deenu bhaiya dollar market indore', NULL, 18300.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 18300.00, 0.00, NULL, 0, 1, 5, NULL, 'Online', '2026-03-10 13:45:38', '2026-03-10 13:45:38', 0),
(81, '2026-03-10', 'INVOICE20260066', 'prem singh solanki', '7227092559', 17000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17000.00, 0.00, NULL, 0, 1, 5, 'dungarpur rajasthan', 'Online', '2026-03-10 16:15:47', '2026-03-10 16:15:47', 0),
(82, '2026-03-10', 'INVOICE20260067', 'mukesh desai', '990996999', 32500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 32500.00, 0.00, NULL, 0, 1, 5, 'vastrapur', 'Online', '2026-03-10 18:21:49', '2026-03-10 18:21:49', 0),
(83, '2026-03-10', 'INVOICE20260068', 'generation m satna', '9650380999', 61000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 61000.00, 0.00, NULL, 0, 1, 5, 'satna', 'Online', '2026-03-10 19:22:04', '2026-03-10 19:22:04', 0),
(84, '2026-03-11', 'INVOICE20260069', 'nilesh parmar mahavir mobile', '9924475886', 51500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 51500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-03-11 18:15:37', '2026-03-11 18:15:37', 0),
(85, '2026-03-11', 'INVOICE20260070', 'mahavir mobile janpath', '9157133333', 52500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 52500.00, 0.00, NULL, 0, 1, 5, 'janpath ahmedabad', 'Cash', '2026-03-11 18:19:00', '2026-03-11 18:19:00', 0),
(86, '2026-03-11', 'INVOICE20260071', 'rajendra prasad', '9310678976', 37500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 37500.00, 0.00, NULL, 0, 1, 5, 'haldwani uttarkhand', 'Online', '2026-03-11 22:24:33', '2026-03-11 22:24:33', 0),
(87, '2026-03-12', 'INVOICE20260072', 'amit bhaiya indore dollar market', '9981239000', 51250.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 51250.00, 0.00, NULL, 0, 1, 5, 'indore', 'Online', '2026-03-12 14:35:12', '2026-03-12 14:35:12', 0),
(88, '2026-03-12', 'INVOICE20260073', 'ramesh soheliya', '9925835573', 17500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17500.00, 0.00, NULL, 0, 1, 5, 'behrampura dist ahmedabad 380022', 'Online', '2026-03-12 15:24:55', '2026-03-12 15:24:55', 0),
(89, '2026-03-12', 'INVOICE20260074', 'tirth desai', '9624895269', 8500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8500.00, 0.00, NULL, 0, 1, 5, 'palli mehsana gujarat', 'Cash', '2026-03-12 16:30:07', '2026-03-12 16:30:07', 0),
(90, '2026-03-13', 'INVOICE20260075', 'Kamal', '8770020942', 127750.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 127750.00, 0.00, NULL, 0, 1, 5, 'sidhi', 'Online', '2026-03-13 17:35:16', '2026-03-13 17:35:16', 0),
(91, '2026-03-14', 'INVOICE20260076', 'sai mobile cg road', '7377728777', 104000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 104000.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-03-15 01:59:23', '2026-03-15 01:59:23', 0),
(92, '2026-03-15', 'INVOICE20260077', 'nilesh parmar mahavir mobile', '9924475886', 40500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 40500.00, 0.00, NULL, 0, 1, 5, 'ahmedabad', 'Online', '2026-03-15 03:00:44', '2026-03-15 03:00:44', 0),
(93, '2026-03-15', 'INVOICE20260078', 'yash chandekar', '7693949937', 27000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 27000.00, 0.00, NULL, 0, 1, 5, 'durdarshan metro ahmedabad', 'Online', '2026-03-15 21:03:58', '2026-03-15 21:03:58', 0),
(94, '2026-03-17', 'INVOICE20260079', 'parikshit chouhan', '9166377246', 11000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11000.00, 0.00, NULL, 0, 1, 5, 'sujaji ka gara matwala banswara rajasthan 327022', 'Cash', '2026-03-17 20:28:41', '2026-03-17 20:28:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL COMMENT 'Foreign key to purchases table',
  `item_description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `warranty_expiry_date` date DEFAULT NULL,
  `profit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item_id`, `item_description`, `quantity`, `unit_price`, `total_amount`, `warranty_expiry_date`, `profit`, `deleted`, `created_at`, `updated_at`) VALUES
(4, 3, 4, 'Model: one plus 13s\r\nColor: Green silk\r\nStorage: 12/256\r\nIMEI: 860677070862754', 1, 37000.00, 37000.00, '2026-01-27', 1500.00, 0, '2025-12-27 15:16:23', '2025-12-27 15:16:23'),
(5, 4, 8, 'Model: samsung s24 ultra\r\nColor: natural titanium\r\nStorage: 12/512\r\nIMEI: 353578851963486', 1, 61500.00, 61500.00, '2025-12-25', 1500.00, 0, '2025-12-27 15:20:15', '2025-12-27 15:20:15'),
(6, 4, 9, 'Model: iphone 15 pro max\r\nColor: natural titanium\r\nStorage: 256\r\nIMEI: 351914988975501', 1, 63000.00, 63000.00, '2025-12-25', 2000.00, 0, '2025-12-27 15:20:15', '2025-12-27 15:20:15'),
(7, 4, 22, 'Model: realme 9 pro +\r\nColor: black\r\nStorage: 6/128\r\nIMEI: 861091053830912', 1, 6800.00, 6800.00, '2025-12-25', 0.00, 0, '2025-12-27 15:20:15', '2025-12-27 15:20:15'),
(8, 1, 29, 'Model: samsung s25 ultra\r\nColor: titanium gray\r\nStorage: 12/256\r\nIMEI: 351270681496984', 1, 69000.00, 69000.00, '2025-12-26', 1000.00, 0, '2025-12-27 15:21:08', '2025-12-27 15:21:08'),
(9, 1, 16, 'Model: iphone 16 pro\r\nColor: black titanium\r\nStorage: 128\r\nIMEI: 350578809222400', 1, 79000.00, 79000.00, '2025-12-25', 2000.00, 0, '2025-12-27 15:21:08', '2025-12-27 15:21:08'),
(10, 5, 17, 'Model: samsung m32\r\nColor: light blue\r\nStorage: 4/64\r\nIMEI: 350961872092340', 1, 3500.00, 3500.00, '2025-12-25', 300.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(11, 5, 13, 'Model: one plus 7\nColor: gray\nStorage: 6/128\nIMEI: 869430042863919', 1, 5500.00, 5500.00, '2025-12-25', 1000.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(12, 5, 19, 'Model: realme gt master edition\r\nColor: gray\r\nStorage: 6/128\r\nIMEI: 868349055050738', 1, 7000.00, 7000.00, '2025-12-25', 0.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(13, 5, 6, 'Model: iphone 13 pro max\r\nColor: aipine green\r\nStorage: 128\r\nIMEI: 359577629155023', 1, 37500.00, 37500.00, '2025-12-25', 500.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(14, 5, 18, 'Model: redmi note 9\r\nColor: green\r\nStorage: 6/128\r\nIMEI: 869770046445738', 1, 4500.00, 4500.00, '2025-12-25', 500.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(15, 5, 5, 'Model: samsung m33 5g\r\nColor: emerald brown\r\nStorage: 6/128\r\nIMEI: 354595802919267', 1, 6300.00, 6300.00, '2025-12-25', 500.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(16, 5, 23, 'Model: nothing 3a\r\nColor: White\r\nStorage: 8/256\r\nIMEI: 351707358575509', 1, 16500.00, 16500.00, '2025-12-25', 900.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(17, 5, 21, 'Model: one plus 12 r\r\nColor: blue\r\nStorage: 8/128\r\nIMEI: 860957062251277', 1, 20000.00, 20000.00, '2025-12-25', 2000.00, 0, '2025-12-27 15:27:51', '2025-12-27 15:27:51'),
(18, 2, 28, 'Model: samsung z fold 6\r\nColor: gray\r\nStorage: 256\r\nIMEI: 350591860356777', 1, 56000.00, 56000.00, '2025-12-25', 5000.00, 0, '2025-12-27 15:54:53', '2025-12-27 15:54:53'),
(19, 6, 25, 'Model: moto edge 50 fusion\r\nColor: blue\r\nStorage: 8/128\r\nIMEI: 350122424803417', 1, 10500.00, 10500.00, '2025-12-25', 1000.00, 0, '2025-12-27 16:01:28', '2025-12-27 16:01:28'),
(21, 7, 35, 'Model: iphone 13\r\nColor: White\r\nStorage: 128\r\nIMEI: 355870370429851', 1, 22000.00, 22000.00, '2025-12-27', 500.00, 0, '2025-12-27 16:09:28', '2025-12-27 16:09:28'),
(23, 8, 33, 'Model: samsung s24 ultra\r\nColor: black titanium\r\nStorage: 12/256\r\nIMEI: 352722660635072', 1, 58500.00, 58500.00, '2025-12-27', 3500.00, 0, '2025-12-27 16:13:26', '2025-12-27 16:13:26'),
(24, 8, 32, 'Model: iphone 11\r\nColor: White\r\nStorage: 128\r\nIMEI: 35350545436843', 1, 12000.00, 12000.00, '2025-12-27', 0.00, 0, '2025-12-27 16:13:26', '2025-12-27 16:13:26'),
(25, 9, 37, 'Model: iphone 11\r\nColor: White\r\nStorage: 128\r\nIMEI: 355608704408658', 1, 12000.00, 12000.00, '2025-12-27', 500.00, 0, '2025-12-28 06:29:22', '2025-12-28 06:29:22'),
(26, 10, 3, 'Model: ipad 9th generation\r\nColor: gray\r\nStorage: 64 GB\r\nIMEI: CJJH0X9137', 1, 17500.00, 17500.00, '2025-12-27', -1000.00, 0, '2025-12-28 13:20:33', '2025-12-28 13:20:33'),
(27, 11, 34, 'Model: oppo f31 pro\r\nColor: desert gold\r\nStorage: 8/128\r\nIMEI: 861027078622090', 1, 15500.00, 15500.00, '2026-01-31', 500.00, 0, '2025-12-31 20:46:07', '2025-12-31 20:46:07'),
(28, 12, 42, 'Model: iphone 13 pro max\r\nColor: sierrra blue\r\nStorage: 256\r\nIMEI: 359272537962732', 1, 38000.00, 38000.00, '2026-01-31', 0.00, 0, '2025-12-31 20:47:07', '2025-12-31 20:47:07'),
(29, 13, 20, 'Model: iphone 13 pro max\r\nColor: sierra blue\r\nStorage: 128\r\nIMEI: 359481986032224', 1, 35500.00, 35500.00, '2026-01-31', 500.00, 0, '2025-12-31 20:49:32', '2025-12-31 20:49:32'),
(30, 14, 1, 'Model: Samsung tab s6 lite\r\nColor: Gray\r\nStorage: 4/64\r\nIMEI: R52T9060DKW', 1, 6000.00, 6000.00, '2026-01-31', 0.00, 0, '2025-12-31 20:50:29', '2025-12-31 20:50:29'),
(31, 15, 2, 'Model: ipad 6th generation\r\nColor: gray\r\nStorage: 32 GB\r\nIMEI: F9FWP0V3JF8J', 1, 4500.00, 4500.00, '2026-01-31', 0.00, 0, '2025-12-31 20:51:05', '2025-12-31 20:51:05'),
(32, 16, 10, 'Model: one plus 12\r\nColor: Black\r\nStorage: 12/256\r\nIMEI: 867142060270917', 1, 26000.00, 26000.00, '2026-02-10', 0.00, 0, '2026-01-10 23:28:25', '2026-01-10 23:28:25'),
(33, 16, 30, 'Model: iphone 11 pro\r\nColor: gray\r\nStorage: 64\r\nIMEI: 352828113090953', 1, 13500.00, 13500.00, '2026-02-10', 0.00, 0, '2026-01-10 23:28:25', '2026-01-10 23:28:25'),
(34, 16, 7, 'Model: iphone 14 pro max\r\nColor: deep purple\r\nStorage: 256\r\nIMEI: 352459257865073', 1, 49000.00, 49000.00, '2026-02-10', 0.00, 0, '2026-01-10 23:28:25', '2026-01-10 23:28:25'),
(35, 16, 12, 'Model: iphone xs max\r\nColor: gold\r\nStorage: 64\r\nIMEI: 357273096927225', 1, 10200.00, 10200.00, '2026-02-10', 0.00, 0, '2026-01-10 23:28:25', '2026-01-10 23:28:25'),
(36, 17, 43, 'Model: samsung fold 6\r\nColor: space gray\r\nStorage: 12/256\r\nIMEI: 355566790503651', 1, 67000.00, 67000.00, '2026-02-10', 3000.00, 0, '2026-01-11 00:09:45', '2026-01-11 00:09:45'),
(37, 18, 44, 'Model: iphone 13 pro\r\nColor: gold\r\nStorage: 128\r\nIMEI: 353851668700478', 1, 33500.00, 33500.00, '2026-01-12', 1000.00, 0, '2026-01-12 00:56:57', '2026-01-12 00:56:57'),
(38, 18, 45, 'Model: iphone 11\r\nColor: black\r\nStorage: 64\r\nIMEI: 352990112058033', 1, 11500.00, 11500.00, '2026-02-11', 500.00, 0, '2026-01-12 00:56:57', '2026-01-12 00:56:57'),
(39, 18, 46, 'Model: iphone 11\r\nColor: black\r\nStorage: 64\r\nIMEI: 354396707666297', 1, 11500.00, 11500.00, '2026-02-11', 500.00, 0, '2026-01-12 00:56:57', '2026-01-12 00:56:57'),
(40, 18, 47, 'Model: iphone 11 pro\r\nColor: green\r\nStorage: 64\r\nIMEI: 353837108982123', 1, 14500.00, 14500.00, '2026-02-11', 1000.00, 0, '2026-01-12 00:56:57', '2026-01-12 00:56:57'),
(41, 19, 38, 'Model: iphone 17 pro\r\nColor: cosmic orange\r\nStorage: 512\r\nIMEI: 358816652638740', 1, 118000.00, 118000.00, '2026-02-12', 5000.00, 0, '2026-01-12 11:00:39', '2026-01-12 11:00:39'),
(42, 20, 80, 'Model: nothing 3a\r\nColor: blue\r\nStorage: 8/128\r\nIMEI: 351707358177561', 1, 17500.00, 17500.00, '2026-02-23', 3000.00, 0, '2026-01-23 21:19:50', '2026-01-23 21:19:50'),
(43, 20, 78, 'Model: google pixel 7\r\nColor: black\r\nStorage: 8/128\r\nIMEI: 358724894405722', 1, 17000.00, 17000.00, '2026-02-23', 3700.00, 0, '2026-01-23 21:19:50', '2026-01-23 21:19:50'),
(44, 21, 50, 'Model: iphone 16 pro max\r\nColor: desrt titanium\r\nStorage: 256\r\nIMEI: 357121282521841', 1, 81000.00, 81000.00, '2026-02-23', 1000.00, 0, '2026-01-23 21:47:46', '2026-01-23 21:47:46'),
(46, 22, 72, 'Model: iphone 11\r\nColor: white\r\nStorage: 128\r\nIMEI: 352224774906192', 1, 15500.00, 15500.00, '2026-04-24', 4000.00, 0, '2026-01-24 18:58:23', '2026-01-24 18:58:23'),
(47, 23, 74, 'Model: samsung s25\r\nColor: silver shadow\r\nStorage: 12/256\r\nIMEI: 358410183040939', 1, 50000.00, 50000.00, '2026-02-24', 500.00, 0, '2026-01-24 19:03:31', '2026-01-24 19:03:31'),
(48, 24, 15, 'Model: iphone 15 pro\r\nColor: natural titanium\r\nStorage: 256\r\nIMEI: 359370795506397', 1, 62000.00, 62000.00, '2026-02-26', 4000.00, 0, '2026-01-26 13:24:04', '2026-01-26 13:24:04'),
(49, 25, 82, 'Model: redmi 9 power\r\nColor: blazing blue\r\nStorage: 6/128\r\nIMEI: 8699380522', 1, 1900.00, 1900.00, '2026-02-26', 700.00, 0, '2026-01-26 20:56:42', '2026-01-26 20:56:42'),
(50, 25, 83, 'Model: vivo v15 pro\r\nColor: blue\r\nStorage: 6/128\r\nIMEI: 862824048813059', 1, 1900.00, 1900.00, '2026-02-26', 900.00, 0, '2026-01-26 20:56:42', '2026-01-26 20:56:42'),
(53, 27, 91, 'Model: iphone 14 pro max\r\nColor: deep purple\r\nStorage: 256\r\nIMEI: 350270054929752', 1, 48500.00, 48500.00, '2026-02-26', 3500.00, 0, '2026-01-26 22:25:38', '2026-01-26 22:25:38'),
(54, 28, 93, 'Model: apple watch se 2\r\nColor: black\r\nStorage: HM\r\nIMEI: HM2J51X0Q07Y', 1, 9450.00, 9450.00, '2026-02-27', 750.00, 0, '2026-01-27 11:41:41', '2026-01-27 11:41:41'),
(55, 26, 88, 'Model: iphone 11\r\nColor: white\r\nStorage: 128\r\nIMEI: 355608704408658', 1, 49999.00, 49999.00, '2026-02-26', 37999.00, 0, '2026-01-27 17:56:03', '2026-01-27 17:56:03'),
(56, 29, 94, 'Model: iphone 15 pro max\r\nColor: natural titanium\r\nStorage: 512 gb\r\nIMEI: 357164761605065', 1, 73000.00, 73000.00, '2026-02-27', 5000.00, 0, '2026-01-27 19:26:13', '2026-01-27 19:26:13'),
(57, 30, 73, 'Model: iphone 12 pro max\r\nColor: pacific blue\r\nStorage: 128\r\nIMEI: 356725116473234', 1, 29000.00, 29000.00, '2026-04-27', 3000.00, 0, '2026-01-27 19:27:57', '2026-01-27 19:27:57'),
(58, 31, 100, 'Model: iphone 13\r\nColor: red\r\nStorage: 128\r\nIMEI: 356682973969806', 1, 22000.00, 22000.00, '2026-02-28', 1500.00, 0, '2026-01-29 01:03:19', '2026-01-29 01:03:19'),
(59, 31, 102, 'Model: one plus nord\r\nColor: blue marble\r\nStorage: 12/256\r\nIMEI: 866801056953056', 1, 8000.00, 8000.00, '2026-02-28', 1000.00, 0, '2026-01-29 01:03:20', '2026-01-29 01:03:20'),
(60, 31, 103, 'Model: vivo y21\r\nColor: midnight blue\r\nStorage: 4/64\r\nIMEI: 864302063660455', 1, 3800.00, 3800.00, '2026-02-28', 400.00, 0, '2026-01-29 01:03:20', '2026-01-29 01:03:20'),
(61, 31, 104, 'Model: iphone 17\r\nColor: white\r\nStorage: 256\r\nIMEI: 355154912160351', 1, 80000.00, 80000.00, '2026-02-28', 3000.00, 0, '2026-01-29 01:03:20', '2026-01-29 01:03:20'),
(62, 31, 105, 'Model: iphone 17\r\nColor: white\r\nStorage: 256\r\nIMEI: 350453402804865', 1, 80000.00, 80000.00, '2026-02-28', 3000.00, 0, '2026-01-29 01:03:20', '2026-01-29 01:03:20'),
(63, 31, 106, 'Model: iphone 17\r\nColor: white\r\nStorage: 256\r\nIMEI: 350453402888249', 1, 80000.00, 80000.00, '2026-02-28', 3000.00, 0, '2026-01-29 01:03:20', '2026-01-29 01:03:20'),
(64, 31, 107, 'Model: iphone 17\r\nColor: mist blue\r\nStorage: 256\r\nIMEI: 352501900463424', 1, 80000.00, 80000.00, '2026-02-28', 3000.00, 0, '2026-01-29 01:03:20', '2026-01-29 01:03:20'),
(65, 32, 89, 'Model: samsung fold 6\r\nColor: blue\r\nStorage: 12/256\r\nIMEI: 355566790757687', 1, 30000.00, 30000.00, '2026-02-28', 1000.00, 0, '2026-01-29 01:06:24', '2026-01-29 01:06:24'),
(66, 32, 90, 'Model: samsung s23 ultra\r\nColor: green\r\nStorage: 12/256\r\nIMEI: 353835881314316', 1, 35000.00, 35000.00, '2026-02-28', 4500.00, 0, '2026-01-29 01:06:24', '2026-01-29 01:06:24'),
(67, 33, 97, 'Model: iphone 16 pro\r\nColor: desrt titanium\r\nStorage: 128\r\nIMEI: 351817720444589', 1, 100000.00, 100000.00, '2026-02-28', 7000.00, 0, '2026-01-29 01:08:07', '2026-01-29 01:08:07'),
(68, 34, 54, 'Model: oppo a3\r\nColor: nebula red\r\nStorage: 6/128\r\nIMEI: 864921075239212', 1, 7700.00, 7700.00, '2026-03-01', 700.00, 0, '2026-01-29 11:36:06', '2026-01-29 11:36:06'),
(69, 35, 108, 'Model: iphone 16\r\nColor: teal\r\nStorage: 128\r\nIMEI: 356822956150608', 1, 47000.00, 47000.00, '2026-03-01', 1000.00, 0, '2026-01-29 21:06:32', '2026-01-29 21:06:32'),
(70, 36, 81, 'Model: apple home pod\r\nColor: blue\r\nStorage: 32 gb\r\nIMEI: HPVK33JVX8', 1, 18000.00, 18000.00, '2026-03-02', 5000.00, 0, '2026-01-30 12:41:53', '2026-01-30 12:41:53'),
(71, 37, 58, 'Model: iphone 12 mini\r\nColor: blue\r\nStorage: 64\r\nIMEI: 356450250698815', 1, 15000.00, 15000.00, '2026-03-03', 2000.00, 0, '2026-01-31 18:48:54', '2026-01-31 18:48:54'),
(72, 38, 68, 'Model: ipad 8th generation\r\nColor: grey\r\nStorage: 32\r\nIMEI: 356754113405742', 1, 9500.00, 9500.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(73, 38, 48, 'Model: redmi pad\r\nColor: green\r\nStorage: 6/128\r\nIMEI: 22081283G', 1, 6000.00, 6000.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(74, 38, 99, 'Model: iphone 15\r\nColor: blue\r\nStorage: 128\r\nIMEI: 357200609080192', 1, 42500.00, 42500.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(75, 38, 59, 'Model: iphone 13\r\nColor: blue\r\nStorage: 128\r\nIMEI: 358239123121537', 1, 23500.00, 23500.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(76, 38, 51, 'Model: vivo y100 a\r\nColor: gold\r\nStorage: 8/128\r\nIMEI: 868386062993898', 1, 7800.00, 7800.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(77, 38, 110, 'Model: one plus nord ce5\r\nColor: black\r\nStorage: 8/256\r\nIMEI: 865275071053658', 1, 15500.00, 15500.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(78, 38, 98, 'Model: iphone 16 pro\r\nColor: desrt titanium\r\nStorage: 256\r\nIMEI: 356373411880579', 1, 70500.00, 70500.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(79, 38, 85, 'Model: one plus 9r\r\nColor: black\r\nStorage: 8/128\r\nIMEI: 866978051994119', 1, 7500.00, 7500.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(80, 38, 65, 'Model: vivo y29\r\nColor: sky blue\r\nStorage: 4/128\r\nIMEI: 863574073386559', 1, 6500.00, 6500.00, '2026-03-04', 0.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(81, 38, 109, 'Model: iphone 13 pro\r\nColor: sierra blue\r\nStorage: 128\r\nIMEI: 359339139155328', 1, 32000.00, 32000.00, '2026-03-04', 500.00, 0, '2026-02-04 18:06:59', '2026-02-04 18:06:59'),
(84, 39, 115, 'Model: samsung s24\r\nColor: gray\r\nStorage: 8/256\r\nIMEI: 356016371385838', 1, 36500.00, 36500.00, '2026-03-04', 750.00, 0, '2026-02-05 12:03:40', '2026-02-05 12:03:40'),
(85, 40, 117, 'Model: iphone 17 pro\r\nColor: cosmic orange\r\nStorage: 256\r\nIMEI: 350346896736108', 1, 116000.00, 116000.00, '2026-03-05', 0.00, 0, '2026-02-05 12:05:47', '2026-02-05 12:05:47'),
(86, 41, 116, 'Model: iphone 16 pro max\r\nColor: desert titanium\r\nStorage: 256\r\nIMEI: 357192898272707', 1, 88000.00, 88000.00, '2026-03-05', 1000.00, 0, '2026-02-05 12:08:28', '2026-02-05 12:08:28'),
(89, 43, 121, 'Model: one plus nord ce5\r\nColor: nexus blue\r\nStorage: 8/256\r\nIMEI: 865597083602754', 1, 20300.00, 20300.00, '2026-03-05', 1300.00, 0, '2026-02-05 20:39:44', '2026-02-05 20:39:44'),
(90, 44, 122, 'Model: iphone 17 pro max\r\nColor: cosmic orange\r\nStorage: 256\r\nIMEI: 357610214088689', 1, 117000.00, 117000.00, '2026-03-06', 1200.00, 0, '2026-02-06 17:59:28', '2026-02-06 17:59:28'),
(91, 45, 127, 'Model: samsung s25 ultra\r\nColor: titanium black\r\nStorage: 12/256\r\nIMEI: 351270685875241', 1, 75000.00, 75000.00, '2026-03-07', 0.00, 0, '2026-02-07 11:21:52', '2026-02-07 11:21:52'),
(92, 45, 118, 'Model: samsung z fold 6\r\nColor: crafted black\r\nStorage: 12/256\r\nIMEI: 355566790331756', 1, 61000.00, 61000.00, '2026-03-07', 0.00, 0, '2026-02-07 11:21:52', '2026-02-07 11:21:52'),
(93, 46, 128, 'Model: vivo y400 pro\r\nColor: nebula purple\r\nStorage: 8/128\r\nIMEI: 863397074557378', 1, 17500.00, 17500.00, '2026-03-07', 500.00, 0, '2026-02-07 11:25:30', '2026-02-07 11:25:30'),
(94, 47, 129, 'Model: iphone 16\r\nColor: teal\r\nStorage: 128\r\nIMEI: 356657554493228', 1, 44000.00, 44000.00, '2026-03-07', 300.00, 0, '2026-02-07 22:00:06', '2026-02-07 22:00:06'),
(95, 48, 120, 'Model: iphone 16\r\nColor: black\r\nStorage: 256\r\nIMEI: 358722572932900', 1, 49500.00, 49500.00, '2026-03-08', 2500.00, 0, '2026-02-08 17:58:19', '2026-02-08 17:58:19'),
(96, 49, 79, 'Model: iphone se 2020\r\nColor: black\r\nStorage: 64\r\nIMEI: 356485106241378', 1, 8000.00, 8000.00, '2026-03-08', 2500.00, 0, '2026-02-08 21:36:33', '2026-02-08 21:36:33'),
(97, 50, 75, 'Model: iphone 13\r\nColor: white\r\nStorage: 128\r\nIMEI: 358439165374552', 1, 27500.00, 27500.00, '2026-03-10', 3000.00, 0, '2026-02-10 14:10:26', '2026-02-10 14:10:26'),
(98, 51, 119, 'Model: one plus 6t\r\nColor: black\r\nStorage: 10/256\r\nIMEI: 869671044407672', 1, 6300.00, 6300.00, '2026-03-10', 2300.00, 0, '2026-02-10 17:45:48', '2026-02-10 17:45:48'),
(99, 52, 134, 'Model: iphone 15 pro max\r\nColor: natural titanium\r\nStorage: 512\r\nIMEI: 355523978906024', 1, 69000.00, 69000.00, '2026-03-10', 0.00, 0, '2026-02-10 21:10:56', '2026-02-10 21:10:56'),
(100, 52, 133, 'Model: iphone 15\r\nColor: blue\r\nStorage: 256\r\nIMEI: 3593336001266299', 1, 31000.00, 31000.00, '2026-03-10', 0.00, 0, '2026-02-10 21:10:56', '2026-02-10 21:10:56'),
(103, 54, 131, 'Model: iphone 12 mini\r\nColor: blue\r\nStorage: 64\r\nIMEI: 350135024435489', 1, 13000.00, 13000.00, '2026-03-11', 1000.00, 0, '2026-02-11 16:47:43', '2026-02-11 16:47:43'),
(105, 42, 124, 'Model: iphone 17 pro max\r\nColor: deep blue\r\nStorage: 256\r\nIMEI: 356973391750963', 1, 136000.00, 136000.00, '2026-03-05', 1750.00, 0, '2026-02-11 16:54:35', '2026-02-11 16:54:35'),
(107, 53, 92, 'Model: samsung s25\r\nColor: iceblue\r\nStorage: 12/256\r\nIMEI: 358410183010734', 1, 50500.00, 50500.00, '2026-11-17', 5500.00, 0, '2026-02-11 20:18:21', '2026-02-11 20:18:21'),
(108, 55, 146, 'Model: iphone 14 pro\r\nColor: black\r\nStorage: 256\r\nIMEI: 350056593165127', 1, 46500.00, 46500.00, '2026-05-16', 3000.00, 0, '2026-02-17 13:16:59', '2026-02-17 13:16:59'),
(109, 56, 53, 'Model: iphone 12\r\nColor: blue\r\nStorage: 128\r\nIMEI: 354112727724028', 1, 18000.00, 18000.00, '2026-05-17', 3000.00, 0, '2026-02-17 20:21:43', '2026-02-17 20:21:43'),
(110, 57, 64, 'Model: iphone 15\r\nColor: black\r\nStorage: 128\r\nIMEI: 358705405608870', 1, 37500.00, 37500.00, NULL, 3000.00, 0, '2026-02-17 21:00:09', '2026-02-17 21:00:09'),
(111, 58, 126, 'Model: iphone 12 pro max\r\nColor: gold\r\nStorage: 256\r\nIMEI: 351732274944977', 1, 25500.00, 25500.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(112, 58, 132, 'Model: one plus 11r\r\nColor: blue\r\nStorage: 8/128\r\nIMEI: 865780063224571', 1, 15000.00, 15000.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(113, 58, 86, 'Model: xiaomi 11 t pro\r\nColor: black\r\nStorage: 8/256\r\nIMEI: 863290050175432', 1, 7700.00, 7700.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(114, 58, 125, 'Model: iphone 15 pro\r\nColor: natural titanium\r\nStorage: 128\r\nIMEI: 354496317389486', 1, 55000.00, 55000.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(115, 58, 141, 'Model: iphone 13\r\nColor: pink\r\nStorage: 128\r\nIMEI: 351075960974266', 1, 22500.00, 22500.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(116, 58, 76, 'Model: vivo v29\r\nColor: blue\r\nStorage: 8/128\r\nIMEI: 862965064260350', 1, 13500.00, 13500.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(117, 58, 149, 'Model: vivo t1 pro\r\nColor: turbo black\r\nStorage: 6/128\r\nIMEI: 868526069786155', 1, 7000.00, 7000.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(118, 58, 130, 'Model: one plus nord ce2 lite\r\nColor: blue\r\nStorage: 6/128\r\nIMEI: 863382063716011', 1, 5700.00, 5700.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(119, 58, 148, 'Model: one plus ce3 lite\r\nColor: pastle lime\r\nStorage: 8/128\r\nIMEI: 865952063160614', 1, 8000.00, 8000.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(120, 58, 49, 'Model: vivo v50e\r\nColor: sapphire blue\r\nStorage: 8/256\r\nIMEI: 865186078201838', 1, 15000.00, 15000.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(121, 58, 150, 'Model: samsung a22\r\nColor: black\r\nStorage: 6/128\r\nIMEI: 356890801191259', 1, 4000.00, 4000.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(122, 58, 11, 'Model: ipad 11th gen\r\nColor: Silver\r\nStorage: 128\r\nIMEI: MP9FD9L7FG', 1, 25500.00, 25500.00, NULL, 0.00, 0, '2026-02-20 10:10:34', '2026-02-20 10:10:34'),
(123, 59, 142, 'Model: samsung s24\r\nColor: black\r\nStorage: 8/256\r\nIMEI: 356016371277092', 1, 35000.00, 35000.00, NULL, 3000.00, 0, '2026-02-21 17:09:48', '2026-02-21 17:09:48'),
(124, 60, 114, 'Model: iphone 14\r\nColor: blue\r\nStorage: 128\r\nIMEI: 355794428441470', 1, 24500.00, 24500.00, NULL, 1000.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(125, 60, 158, 'Model: redmi note 9 pro max\r\nColor: aurora blue\r\nStorage: 6/64\r\nIMEI: 865528055713212', 1, 4200.00, 4200.00, NULL, 0.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(126, 60, 160, 'Model: iphone 14 pro\r\nColor: deep purple\r\nStorage: 256\r\nIMEI: 351083734809768', 1, 44500.00, 44500.00, NULL, 500.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(127, 60, 159, 'Model: iphone 13 pro\r\nColor: sierra blue\r\nStorage: 128\r\nIMEI: 353501490911823', 1, 31500.00, 31500.00, NULL, 0.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(128, 60, 154, 'Model: moto g54 5g\r\nColor: midnight blue\r\nStorage: 8/128\r\nIMEI: 350806093803639', 1, 7000.00, 7000.00, NULL, 0.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(129, 60, 101, 'Model: one plus 12r\r\nColor: coolblue\r\nStorage: 16/256\r\nIMEI: 860957064185572', 1, 24500.00, 24500.00, NULL, 0.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(130, 60, 112, 'Model: oppo a3\r\nColor: nebula red\r\nStorage: 6/128\r\nIMEI: 864921075239212', 1, 7200.00, 7200.00, NULL, 500.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(131, 60, 123, 'Model: iphone 14 pro\r\nColor: deep purple\r\nStorage: 256\r\nIMEI: 355960225650197', 1, 42500.00, 42500.00, NULL, 0.00, 0, '2026-02-21 19:13:59', '2026-02-21 19:13:59'),
(132, 61, 70, 'Model: samsung s24 ultra\r\nColor: black titanium\r\nStorage: 12/256\r\nIMEI: 352722661448889', 1, 59000.00, 59000.00, NULL, 3000.00, 0, '2026-02-22 13:32:00', '2026-02-22 13:32:00'),
(133, 62, 163, 'Model: one plus nord 3\r\nColor: gray\r\nStorage: 16/256\r\nIMEI: 862027064607591', 1, 17000.00, 17000.00, NULL, 4500.00, 0, '2026-02-23 19:40:48', '2026-02-23 19:40:48'),
(134, 63, 40, 'Model: macbook m4\r\nColor: Midnight\r\nStorage: 16/512\r\nIMEI: HPQQ22CD20', 1, 74000.00, 74000.00, NULL, 1500.00, 0, '2026-02-24 14:35:26', '2026-02-24 14:35:26'),
(135, 64, 173, 'Model: iphone 17 pro max\r\nColor: cosmic orange\r\nStorage: 256\r\nIMEI: 355190206810657', 1, 115000.00, 115000.00, '2026-10-11', 2000.00, 0, '2026-02-24 18:13:28', '2026-02-24 18:13:28'),
(136, 65, 152, 'Model: samsung a36\r\nColor: awesome white\r\nStorage: 8/256\r\nIMEI: 3562581950444668', 1, 20500.00, 20500.00, '2026-09-20', 4000.00, 0, '2026-02-24 20:36:06', '2026-02-24 20:36:06'),
(137, 66, 166, 'Model: iphone 14\r\nColor: black\r\nStorage: 128\r\nIMEI: 357589737102864', 1, 27000.00, 27000.00, NULL, 500.00, 0, '2026-02-25 09:55:16', '2026-02-25 09:55:16'),
(138, 66, 165, 'Model: iphone 14 plus\r\nColor: black\r\nStorage: 128\r\nIMEI: 353377533902479', 1, 32500.00, 32500.00, NULL, 1500.00, 0, '2026-02-25 09:55:16', '2026-02-25 09:55:16'),
(139, 67, 178, 'Model: samsung z flip 6\r\nColor: mint\r\nStorage: 12/256\r\nIMEI: 355951710293692', 1, 38000.00, 38000.00, '2026-05-26', 2000.00, 0, '2026-02-26 14:56:51', '2026-02-26 14:56:51'),
(140, 68, 171, 'Model: one plus 15r\r\nColor: mint breeze\r\nStorage: 12/256\r\nIMEI: 862329081767113', 1, 37500.00, 37500.00, NULL, 3000.00, 0, '2026-02-26 22:14:41', '2026-02-26 22:14:41'),
(141, 69, 87, 'Model: iphone xs max\r\nColor: white\r\nStorage: 64\r\nIMEI: 357276097633858', 1, 6000.00, 6000.00, NULL, 4100.00, 0, '2026-02-26 22:17:51', '2026-02-26 22:17:51'),
(142, 70, 69, 'Model: samsung s24\r\nColor: black\r\nStorage: 8/256\r\nIMEI: 356016371339587', 1, 37500.00, 37500.00, NULL, 5000.00, 0, '2026-03-01 18:18:42', '2026-03-01 18:18:42'),
(143, 71, 184, 'Model: apple watch  se2nd gen\r\nColor: cream\r\nStorage: 32\r\nIMEI: HDFCCCC', 1, 9500.00, 9500.00, '2026-02-27', 4000.00, 0, '2026-03-01 21:12:20', '2026-03-01 21:12:20'),
(144, 72, 168, 'Model: iphone 16 pro\r\nColor: desert titanium\r\nStorage: 512\r\nIMEI: 352113446775301', 1, 79000.00, 79000.00, NULL, 3500.00, 0, '2026-03-01 21:21:59', '2026-03-01 21:21:59'),
(145, 73, 182, 'Model: iphone 13\r\nColor: blue\r\nStorage: 128\r\nIMEI: 352094672208847', 1, 23700.00, 23700.00, NULL, 1200.00, 0, '2026-03-02 19:50:24', '2026-03-02 19:50:24'),
(146, 73, 36, 'Model: samsung s25\r\nColor: icyblue\r\nStorage: 12/256\r\nIMEI: 358410180627605', 1, 43000.00, 43000.00, NULL, -500.00, 0, '2026-03-02 19:50:24', '2026-03-02 19:50:24'),
(147, 74, 135, 'Model: iphone 12 mini\r\nColor: blue\r\nStorage: 64\r\nIMEI: 356450250698815', 1, 15500.00, 15500.00, '2026-06-07', 3000.00, 0, '2026-03-07 22:01:29', '2026-03-07 22:01:29'),
(148, 75, 164, 'Model: realme xt\r\nColor: white\r\nStorage: 8/128\r\nIMEI: 866121043111530', 1, 4800.00, 4800.00, NULL, 0.00, 0, '2026-03-08 14:17:09', '2026-03-08 14:17:09'),
(149, 75, 177, 'Model: vivo y31\r\nColor: blue\r\nStorage: 6/128\r\nIMEI: 866052058524954', 1, 4800.00, 4800.00, NULL, 0.00, 0, '2026-03-08 14:17:09', '2026-03-08 14:17:09'),
(150, 76, 189, 'Model: samsung z flip 6\r\nColor: gray\r\nStorage: 12/256\r\nIMEI: 355951710397584', 1, 35500.00, 35500.00, NULL, 3000.00, 0, '2026-03-09 18:06:31', '2026-03-09 18:06:31'),
(151, 76, 145, 'Model: iphone 17 pro max\r\nColor: silver\r\nStorage: 256\r\nIMEI: 357218971799926', 1, 120500.00, 120500.00, NULL, 1500.00, 0, '2026-03-09 18:06:31', '2026-03-09 18:06:31'),
(152, 77, 188, 'Model: samsung a25\r\nColor: yellow\r\nStorage: 8/128\r\nIMEI: 351137770646169', 1, 10000.00, 10000.00, '2026-03-10', 500.00, 0, '2026-03-09 18:11:05', '2026-03-09 18:11:05'),
(153, 77, 66, 'Model: google pixel 9a\r\nColor: iris blue\r\nStorage: 8/256\r\nIMEI: 354131435705608', 1, 24000.00, 24000.00, '2026-03-09', -1000.00, 0, '2026-03-09 18:11:05', '2026-03-09 18:11:05'),
(154, 77, 192, 'Model: iphone 11 pro\r\nColor: gray\r\nStorage: 64\r\nIMEI: 353236103865419', 1, 10500.00, 10500.00, '2026-03-10', 1000.00, 0, '2026-03-09 18:11:05', '2026-03-09 18:11:05'),
(155, 77, 186, 'Model: iphone 13\r\nColor: blue\r\nStorage: 128\r\nIMEI: 350024069907638', 1, 22000.00, 22000.00, '2026-03-10', 500.00, 0, '2026-03-09 18:11:05', '2026-03-09 18:11:05'),
(156, 78, 161, 'Model: iphone 13\r\nColor: green\r\nStorage: 128\r\nIMEI: 356557847798872', 1, 22500.00, 22500.00, '2026-03-09', 0.00, 0, '2026-03-09 18:13:58', '2026-03-09 18:13:58'),
(157, 79, 194, 'Model: vivo x200\r\nColor: black\r\nStorage: 16/512\r\nIMEI: 866961078277833', 1, 34500.00, 34500.00, '2026-03-10', 1500.00, 0, '2026-03-09 18:48:35', '2026-03-09 18:48:35'),
(158, 79, 195, 'Model: samsung s25 ultra\r\nColor: black\r\nStorage: 12/512\r\nIMEI: 356284535053433', 1, 70000.00, 70000.00, '2026-03-10', 2000.00, 0, '2026-03-09 18:48:35', '2026-03-09 18:48:35'),
(159, 80, 197, 'Model: one plus nord ce5\r\nColor: white\r\nStorage: 8/128\r\nIMEI: 865597085612678', 1, 18300.00, 18300.00, '2027-01-30', 1800.00, 0, '2026-03-10 13:45:38', '2026-03-10 13:45:38'),
(160, 81, 172, 'Model: one plus 9 pro\r\nColor: silver\r\nStorage: 12/256\r\nIMEI: 868768054382851', 1, 17000.00, 17000.00, NULL, 3000.00, 0, '2026-03-10 16:15:47', '2026-03-10 16:15:47'),
(161, 82, 157, 'Model: iphone 14\r\nColor: purple\r\nStorage: 128\r\nIMEI: 356891467399541', 1, 32500.00, 32500.00, '2026-06-10', 4500.00, 0, '2026-03-10 18:21:49', '2026-03-10 18:21:49'),
(162, 83, 193, 'Model: iphone 15 pro max\r\nColor: natural titanium\r\nStorage: 256\r\nIMEI: 356840671951670', 1, 61000.00, 61000.00, '2026-03-11', 3000.00, 0, '2026-03-10 19:22:04', '2026-03-10 19:22:04'),
(163, 84, 207, 'Model: vivo y300\r\nColor: red\r\nStorage: 8/128\r\nIMEI: 866171077024877', 1, 10500.00, 10500.00, NULL, 1750.00, 0, '2026-03-11 18:15:37', '2026-03-11 18:15:37'),
(164, 84, 206, 'Model: oppo f19 pro plus\r\nColor: gold\r\nStorage: 8/128\r\nIMEI: 866899055961690', 1, 6000.00, 6000.00, NULL, 2500.00, 0, '2026-03-11 18:15:37', '2026-03-11 18:15:37'),
(165, 84, 205, 'Model: iphone 11 pro\r\nColor: green\r\nStorage: 256\r\nIMEI: 353846109095769', 1, 13000.00, 13000.00, NULL, 2000.00, 0, '2026-03-11 18:15:37', '2026-03-11 18:15:37'),
(166, 84, 31, 'Model: samsung s23\r\nColor: cream\r\nStorage: 8/128\r\nIMEI: 351824512458835', 1, 22000.00, 22000.00, NULL, 0.00, 0, '2026-03-11 18:15:37', '2026-03-11 18:15:37'),
(167, 85, 191, 'Model: apple watch ultra 3\r\nColor: natural titanium\r\nStorage: 32\r\nIMEI: MF6N4VX0GY', 1, 52500.00, 52500.00, NULL, 5500.00, 0, '2026-03-11 18:19:00', '2026-03-11 18:19:00'),
(168, 86, 210, 'Model: iphoone 15\r\nColor: blue\r\nStorage: 128\r\nIMEI: 358388754584354', 1, 37500.00, 37500.00, '2026-06-11', 1500.00, 0, '2026-03-11 22:24:33', '2026-03-11 22:24:33'),
(169, 87, 183, 'Model: iphone 16\r\nColor: black\r\nStorage: 128\r\nIMEI: 351267386857684', 1, 51250.00, 51250.00, NULL, 1250.00, 0, '2026-03-12 14:35:12', '2026-03-12 14:35:12'),
(170, 88, 55, 'Model: moto edge 60 fusion\r\nColor: pantone amazonite\r\nStorage: 8/256\r\nIMEI: 357719197077799', 1, 17500.00, 17500.00, '2027-11-30', 2500.00, 0, '2026-03-12 15:24:55', '2026-03-12 15:24:55'),
(171, 89, 196, 'Model: iphone se 2020\r\nColor: red\r\nStorage: 64\r\nIMEI: 35649010658200', 1, 8500.00, 8500.00, '2026-06-12', 2700.00, 0, '2026-03-12 16:30:07', '2026-03-12 16:30:07'),
(172, 90, 111, 'Model: google pixel 6a\r\nColor: charcoal\r\nStorage: 6/128\r\nIMEI: 350162891511846', 1, 9000.00, 9000.00, NULL, 500.00, 0, '2026-03-13 17:35:16', '2026-03-13 17:35:16'),
(173, 90, 204, 'Model: vivo y28s\r\nColor: vintage red\r\nStorage: 4/128\r\nIMEI: 862747077206590', 1, 6750.00, 6750.00, NULL, 250.00, 0, '2026-03-13 17:35:16', '2026-03-13 17:35:16'),
(174, 90, 162, 'Model: vivo v25\r\nColor: surfing blue\r\nStorage: 8/128\r\nIMEI: 864931068972919', 1, 8000.00, 8000.00, NULL, 500.00, 0, '2026-03-13 17:35:16', '2026-03-13 17:35:16'),
(175, 90, 180, 'Model: one plus 12r\r\nColor: blue\r\nStorage: 8/128\r\nIMEI: 860957060158557', 1, 19000.00, 19000.00, NULL, 0.00, 0, '2026-03-13 17:35:16', '2026-03-13 17:35:16'),
(176, 90, 201, 'Model: vivo x90\r\nColor: breeze blue\r\nStorage: 8/256\r\nIMEI: 862814069125418', 1, 21000.00, 21000.00, NULL, 500.00, 0, '2026-03-13 17:35:16', '2026-03-13 17:35:16'),
(177, 90, 198, 'Model: samsung s24 ultra\r\nColor: violet\r\nStorage: 12/512\r\nIMEI: 353578850721406', 1, 64000.00, 64000.00, NULL, 1000.00, 0, '2026-03-13 17:35:16', '2026-03-13 17:35:16'),
(178, 91, 209, 'Model: samsung flip 7\r\nColor: black\r\nStorage: 12/512\r\nIMEI: 350879750050950', 1, 53000.00, 53000.00, NULL, 3000.00, 0, '2026-03-15 01:59:23', '2026-03-15 01:59:23'),
(179, 91, 216, 'Model: samsung z flip 7\r\nColor: bue shadow\r\nStorage: 12/256\r\nIMEI: 353072160102044', 1, 51000.00, 51000.00, NULL, 1000.00, 0, '2026-03-15 01:59:23', '2026-03-15 01:59:23'),
(180, 92, 217, 'Model: iphone 16\r\nColor: white\r\nStorage: 128\r\nIMEI: 359164499584788', 1, 40500.00, 40500.00, NULL, 0.00, 0, '2026-03-15 03:00:44', '2026-03-15 03:00:44'),
(181, 93, 225, 'Model: iphone 12 pro max\r\nColor: gold\r\nStorage: 256\r\nIMEI: 351732274944977', 1, 27000.00, 27000.00, NULL, 1500.00, 0, '2026-03-15 21:03:58', '2026-03-15 21:03:58'),
(182, 94, 231, 'Model: vivo v25 pro\r\nColor: blue\r\nStorage: 8/128\r\nIMEI: 868519061795639', 1, 11000.00, 11000.00, '2026-06-17', 2000.00, 0, '2026-03-17 20:28:41', '2026-03-17 20:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_09_06_105555_create_purchases_table', 1),
(7, '2024_09_06_111151_create_sales_table', 1),
(8, '2024_09_20_133113_create_invoices_table', 1),
(9, '2025_03_24_063352_create_expenses_table', 1),
(10, '2025_04_10_175707_add_sync_contact_column_invoice_tbl', 1),
(11, '2024_03_21_create_day_opening_balances_table', 2),
(12, '2025_06_07_123612_create_payment_methods_table', 2),
(13, '2025_06_07_123613_create_transactions_table', 2),
(14, '2025_06_24_053235_add_cash_bank_balance_to_day_opening_balances', 3),
(15, '2025_07_06_070015_create_permission_tables', 4),
(16, '2025_10_09_070815_change_entry_date_column_type_in_expense_table', 5),
(17, '2025_10_09_070845_make_warrenty_date_null_purchases_table', 5),
(18, '2025_12_01_111933_create_invoice_items_table', 6),
(19, '2025_12_01_112012_migrate_existing_invoice_data_to_invoice_items', 6),
(20, '2025_12_01_112115_remove_item_columns_from_invoices_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `opening_balance` double(10,2) NOT NULL DEFAULT 0.00,
  `credit_limit` double(10,2) NOT NULL DEFAULT 0.00,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `party_type` enum('Customer','Supplier') NOT NULL DEFAULT 'Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `party_name`, `phone`, `email`, `opening_balance`, `credit_limit`, `address`, `status`, `deleted`, `party_type`, `created_at`, `updated_at`) VALUES
(12, 'sajjal mordia', '7000543562', NULL, 0.00, 0.00, NULL, 1, 0, 'Supplier', '2026-01-07 13:25:23', '2026-01-07 13:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'cash', '2025-06-22 20:04:07', '2025-06-22 20:04:07'),
(2, 'Credit Card', 'CC', '2025-06-22 20:04:07', '2025-06-22 20:04:07'),
(3, 'UPI', 'UPI', '2025-06-22 20:04:07', '2025-06-22 20:04:07'),
(4, 'Other', 'other', '2025-06-22 20:04:07', '2025-06-22 20:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(2, 'profile.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(3, 'profile.update', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(4, 'profile.password.change', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(5, 'purchases.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(6, 'purchases.create', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(7, 'purchases.edit', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(8, 'purchases.delete', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(9, 'purchases.import', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(10, 'purchases.download.stock', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(11, 'sales.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(12, 'sales.create', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(13, 'sales.edit', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(14, 'sales.delete', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(15, 'sales.fetch.stock', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(16, 'invoices.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(17, 'invoices.create', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(18, 'invoices.edit', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(19, 'invoices.print', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(20, 'invoices.detail', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(21, 'reports.sales.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(22, 'reports.sales.export', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(23, 'reports.purchases.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(24, 'reports.purchases.export', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(25, 'reports.customers.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(26, 'reports.customers.export', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(27, 'reports.charts.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(28, 'expenses.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(29, 'expenses.create', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(30, 'expenses.edit', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(31, 'expenses.delete', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(32, 'transactions.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(33, 'transactions.create', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(34, 'transactions.edit', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(35, 'transactions.delete', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(36, 'transactions.resync', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(37, 'google.sync', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(38, 'roles.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(39, 'roles.create', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(40, 'roles.edit', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(41, 'roles.delete', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(42, 'users.view', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(43, 'users.create', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(44, 'users.edit', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(45, 'users.delete', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(46, 'parties.view', 'web', '2025-12-31 21:48:28', '2025-12-31 21:48:28'),
(47, 'parties.create', 'web', '2025-12-31 21:48:39', '2025-12-31 21:48:39'),
(48, 'parties.edit', 'web', '2025-12-31 21:48:45', '2025-12-31 21:48:45'),
(49, 'parties.store', 'web', '2025-12-31 21:48:51', '2025-12-31 21:48:51'),
(50, 'parties.delete', 'web', '2025-12-31 21:48:51', '2025-12-31 21:48:51'),
(52, 'parties.viewdetail', 'web', '2025-12-31 21:48:51', '2025-12-31 21:48:51');

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
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_type` enum('Phone','Tablet','Laptop','Smartwatch','Accessories') DEFAULT NULL,
  `storelocation` varchar(50) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `imei` varchar(255) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `warrentydate` date DEFAULT NULL,
  `os` enum('Android','iOS','Windows') DEFAULT NULL,
  `purchase_from` varchar(255) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL,
  `purchase_cost` double(10,2) DEFAULT NULL,
  `repairing_charge` double(10,2) DEFAULT 0.00,
  `purchase_price` double(10,2) DEFAULT NULL,
  `msp` double(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Min Selling price',
  `sell_date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `device_photo` varchar(255) DEFAULT NULL,
  `document` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_sold` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `device_type`, `storelocation`, `model`, `brand`, `imei`, `purchase_date`, `color`, `storage`, `warrentydate`, `os`, `purchase_from`, `contactno`, `purchase_cost`, `repairing_charge`, `purchase_price`, `msp`, `sell_date`, `remark`, `condition`, `device_photo`, `document`, `user_id`, `is_sold`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Tablet', 'ahmedabad', 'Samsung tab s6 lite', NULL, 'R52T9060DKW', '2025-12-21', 'Gray', '4/64', NULL, NULL, 'Ahmedabad telecom', '9978433359', 6000.00, 0.00, 6000.00, 6000.00, '2025-12-31', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 09:57:09', '2025-12-31 20:50:29'),
(2, 'Tablet', 'ahmedabad', 'ipad 6th generation', NULL, 'F9FWP0V3JF8J', '2025-12-22', 'gray', '32 GB', NULL, NULL, 'ahmedabad telecom', '9978433359', 4500.00, 0.00, 4500.00, 5500.00, '2025-12-31', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 11:51:42', '2025-12-31 20:51:05'),
(3, 'Tablet', 'ahmedabad', 'ipad 9th generation', NULL, 'CJJH0X9137', '2024-08-20', 'gray', '64 GB', NULL, NULL, 'nikhil patidar', '8827086144', 18500.00, 0.00, 18500.00, 18500.00, '2025-12-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:40:33', '2025-12-28 13:20:33'),
(4, 'Phone', 'ahmedabad', 'one plus 13s', NULL, '860677070862754', '2025-12-27', 'Green silk', '12/256', NULL, NULL, 'Ajay chauhan fonebook', '8347521500', 35500.00, 0.00, 35500.00, 36500.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:42:39', '2025-12-27 15:16:23'),
(5, 'Phone', 'ahmedabad', 'samsung m33 5g', NULL, '354595802919267', '2025-12-12', 'emerald brown', '6/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 5800.00, 0.00, 5800.00, 6300.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:46:51', '2025-12-27 15:27:51'),
(6, 'Phone', 'ahmedabad', 'iphone 13 pro max', NULL, '359577629155023', '2025-12-05', 'aipine green', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 37000.00, 0.00, 37000.00, 37500.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:48:07', '2025-12-27 15:27:51'),
(7, 'Phone', 'ahmedabad', 'iphone 14 pro max', NULL, '352459257865073', '2025-12-23', 'deep purple', '256', NULL, NULL, 'ajay chauhan fonebook', '8347521500', 49000.00, 0.00, 49000.00, 49000.00, '2026-01-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:49:14', '2026-01-10 23:28:25'),
(8, 'Phone', 'ahmedabad', 'samsung s24 ultra', NULL, '353578851963486', '2025-12-12', 'natural titanium', '12/512', NULL, NULL, 'ahmedabad telecom', '9978433359', 60000.00, 0.00, 60000.00, 61000.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:50:05', '2025-12-27 15:20:15'),
(9, 'Phone', 'ahmedabad', 'iphone 15 pro max', NULL, '351914988975501', '2025-12-15', 'natural titanium', '256', NULL, NULL, 'ahmedabad telecom', '9978433359', 61000.00, 0.00, 61000.00, 62000.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:50:53', '2025-12-27 15:20:15'),
(10, 'Phone', 'ahmedabad', 'one plus 12', NULL, '867142060270917', '2025-12-21', 'Black', '12/256', NULL, NULL, 'ahmedabad telecom', '9978433359', 26000.00, 0.00, 26000.00, 26000.00, '2026-01-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:52:12', '2026-01-10 23:28:25'),
(11, 'Tablet', 'ahmedabad', 'ipad 11th gen', NULL, 'MP9FD9L7FG', '2025-11-24', 'Silver', '128', '2026-10-21', NULL, 'ahmedabad telecom', '9978433359', 25500.00, 0.00, 25500.00, 25500.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:54:32', '2026-02-20 10:10:34'),
(12, 'Phone', 'ahmedabad', 'iphone xs max', NULL, '357273096927225', '2025-12-15', 'gold', '64', NULL, NULL, 'ahmedabad telecom', '9978433359', 10200.00, 0.00, 10200.00, 10200.00, '2026-01-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 12:55:47', '2026-01-10 23:28:25'),
(13, 'Phone', 'ahmedabad', 'one plus 7', NULL, '869430042863919', '2025-12-21', 'gray', '6/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 4500.00, 0.00, 4500.00, 5000.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:02:39', '2025-12-27 15:27:51'),
(14, 'Phone', 'ahmedabad', 'iphone 14 pro', NULL, '353664573870660', '2025-12-22', 'black', '256', NULL, NULL, 'ahmedabad telecom', '9978433359', 43000.00, 0.00, 43000.00, 43500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2025-12-27 13:05:26', '2025-12-27 13:41:59'),
(15, 'Phone', 'ahmedabad', 'iphone 15 pro', NULL, '359370795506397', '2025-12-10', 'natural titanium', '256', NULL, NULL, 'ahmedabad telecom', '9978433359', 58000.00, 0.00, 58000.00, 58500.00, '2026-01-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:08:58', '2026-01-26 13:24:04'),
(16, 'Phone', 'ahmedabad', 'iphone 16 pro', NULL, '350578809222400', '2025-12-19', 'black titanium', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 77000.00, 0.00, 77000.00, 78000.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:09:58', '2025-12-27 15:21:08'),
(17, 'Phone', 'ahmedabad', 'samsung m32', NULL, '350961872092340', '2025-12-21', 'light blue', '4/64', NULL, NULL, 'ahmedabad telecom', '9978433359', 3200.00, 0.00, 3200.00, 3500.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:11:24', '2025-12-27 15:27:51'),
(18, 'Phone', 'ahmedabad', 'redmi note 9', NULL, '869770046445738', '2025-12-21', 'green', '6/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 4000.00, 0.00, 4000.00, 4300.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:12:11', '2025-12-27 15:27:51'),
(19, 'Phone', 'ahmedabad', 'realme gt master edition', NULL, '868349055050738', '2025-12-12', 'gray', '6/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 7000.00, 0.00, 7000.00, 7000.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:13:29', '2025-12-27 15:27:51'),
(20, 'Phone', 'ahmedabad', 'iphone 13 pro max', NULL, '359481986032224', '2025-12-21', 'sierra blue', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 35000.00, 0.00, 35000.00, 35500.00, '2025-12-31', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:14:24', '2025-12-31 20:49:32'),
(21, 'Phone', 'ahmedabad', 'one plus 12 r', NULL, '860957062251277', '2025-12-24', 'blue', '8/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 18000.00, 0.00, 18000.00, 18500.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:15:15', '2025-12-27 15:27:51'),
(22, 'Phone', 'ahmedabad', 'realme 9 pro +', NULL, '861091053830912', '2025-12-24', 'black', '6/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 6800.00, 0.00, 6800.00, 6800.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:20:57', '2025-12-27 15:20:15'),
(23, 'Phone', 'ahmedabad', 'nothing 3a', NULL, '351707358575509', '2025-12-24', 'White', '8/256', '2026-06-03', NULL, 'ahmedabad telecom', '9978433359', 15600.00, 0.00, 15600.00, 16100.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:24:00', '2025-12-27 15:27:51'),
(24, 'Phone', 'ahmedabad', 'iphone 16 pro', NULL, '350578800041502', '2025-12-24', 'natural titanium', '256', '2026-07-01', NULL, 'ahmedabad telecom', '9978433359', 78500.00, 0.00, 78500.00, 79500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2025-12-27 13:25:39', '2025-12-27 13:41:24'),
(25, 'Phone', 'ahmedabad', 'moto edge 50 fusion', NULL, '350122424803417', '2025-12-24', 'blue', '8/128', '2025-12-27', NULL, 'ahmedabad telecom', '9978433359', 9500.00, 0.00, 9500.00, 10000.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 0, 1, '2025-12-27 13:27:52', '2025-12-27 16:24:16'),
(26, 'Smartwatch', 'ahmedabad', 'apple watch series 8', NULL, 'DV2Y264WWF', '2025-07-25', 'Black', '32', NULL, NULL, 'unknown', '8347521500', 12500.00, 0.00, 12500.00, 12500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2025-12-27 13:29:15', '2026-01-10 23:29:06'),
(27, 'Phone', 'ahmedabad', 'iphone 14 plus', NULL, '356571601402738', '2025-10-24', 'Blue', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 34500.00, 0.00, 34500.00, 34500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2025-12-27 13:30:22', '2026-01-14 14:10:14'),
(28, 'Phone', 'ahmedabad', 'samsung z fold 6', NULL, '350591860356777', '2025-12-25', 'gray', '256', NULL, NULL, 'fonebook', '9727707091', 51000.00, 0.00, 51000.00, 56000.00, '2025-12-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:31:14', '2025-12-27 15:54:53'),
(29, 'Phone', 'ahmedabad', 'samsung s25 ultra', NULL, '351270681496984', '2025-12-19', 'titanium gray', '12/256', NULL, NULL, 'ahmedabad telecom', '9978433359', 68000.00, 0.00, 68000.00, 69000.00, '2025-12-25', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:33:56', '2025-12-27 15:21:08'),
(30, 'Phone', 'ahmedabad', 'iphone 11 pro', NULL, '352828113090953', '2025-12-24', 'gray', '64', NULL, NULL, 'ahmedabad telecom', '9978433359', 13500.00, 0.00, 13500.00, 13500.00, '2026-01-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:34:58', '2026-01-10 23:28:25'),
(31, 'Phone', 'ahmedabad', 'samsung s23', NULL, '351824512458835', '2025-06-01', 'cream', '8/128', NULL, NULL, 'sahil madhwani', NULL, 22000.00, 0.00, 22000.00, 22500.00, '2026-03-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:35:48', '2026-03-11 18:15:37'),
(32, 'Phone', 'ahmedabad', 'iphone 11', NULL, '35350545436843', '2025-12-01', 'White', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 12000.00, 0.00, 12000.00, 12000.00, '2025-12-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:38:48', '2025-12-27 16:13:26'),
(33, 'Phone', 'ahmedabad', 'samsung s24 ultra', NULL, '352722660635072', '2025-12-26', 'black titanium', '12/256', NULL, NULL, 'ahmedabad telecom', '9978433359', 55000.00, 0.00, 55000.00, 56000.00, '2025-12-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:39:32', '2025-12-27 16:13:26'),
(34, 'Phone', 'ahmedabad', 'oppo f31 pro', NULL, '861027078622090', '2025-12-26', 'desert gold', '8/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 15000.00, 0.00, 15000.00, 15500.00, '2025-12-31', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:40:09', '2025-12-31 20:46:07'),
(35, 'Phone', 'ahmedabad', 'iphone 13', NULL, '355870370429851', '2025-12-26', 'White', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 21500.00, 0.00, 21500.00, 22000.00, '2025-12-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 13:40:48', '2025-12-27 16:09:28'),
(36, 'Phone', 'ahmedabad', 'samsung s25', NULL, '358410180627605', '2025-12-27', 'icyblue', '12/256', '2026-03-05', NULL, 'Monubhai murtiman', '7405817545', 43500.00, 0.00, 43500.00, 44000.00, '2026-03-02', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-27 16:15:55', '2026-03-02 19:50:24'),
(37, 'Phone', 'ahmedabad', 'iphone 11', NULL, '355608704408658', '2025-12-27', 'White', '128', NULL, NULL, 'Pinak vithlani', '8866038025', 11500.00, 0.00, 11500.00, 12000.00, '2025-12-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-28 06:26:10', '2025-12-28 06:29:22'),
(38, 'Phone', 'ahmedabad', 'iphone 17 pro', NULL, '358816652638740', '2025-12-29', 'cosmic orange', '512', '2026-02-10', NULL, 'ahmedabad telecom', '9978433359', 113000.00, 0.00, 113000.00, 118000.00, '2026-01-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-29 17:07:36', '2026-01-12 11:00:39'),
(39, 'Tablet', 'ahmedabad', 'ipad a16', NULL, 'MVYGW4WQXX', '2025-12-29', 'blue', '128', '2026-11-10', NULL, 'ahmedabad telecom', '9978433359', 17000.00, 0.00, 17000.00, 21000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2025-12-29 17:09:55', '2025-12-29 17:09:55'),
(40, 'Laptop', 'ahmedabad', 'macbook m4', NULL, 'HPQQ22CD20', '2026-12-29', 'Midnight', '16/512', '2026-09-26', NULL, 'ahmedabad telecom', '9978433359', 72500.00, 0.00, 72500.00, 75000.00, '2026-02-24', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-29 17:14:33', '2026-02-24 14:35:26'),
(41, 'Smartwatch', 'ahmedabad', 'apple watch se 3 44 mm gps+celullar', NULL, 'H30CXVFHK3', '2025-12-29', 'midnight', '32', '2026-11-02', NULL, 'ahmedabad telecom', '9978433359', 13500.00, 0.00, 13500.00, 14500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2025-12-29 17:19:37', '2025-12-29 17:19:37'),
(42, 'Phone', 'ahmedabad', 'iphone 13 pro max', NULL, '359272537962732', '2025-12-30', 'sierrra blue', '256', NULL, NULL, 'ajay chauhan', '8347521500', 38000.00, 0.00, 38000.00, 38000.00, '2025-12-31', NULL, NULL, NULL, NULL, 5, 1, 0, '2025-12-30 18:38:48', '2025-12-31 20:47:07'),
(43, 'Phone', 'ahmedabad', 'samsung fold 6', NULL, '355566790503651', '2026-01-10', 'space gray', '12/256', NULL, NULL, 'sai mobile cg road', '7377728777', 64000.00, 0.00, 64000.00, 67000.00, '2026-01-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-11 00:08:39', '2026-01-11 00:09:45'),
(44, 'Phone', 'ahmedabad', 'iphone 13 pro', NULL, '353851668700478', '2026-01-10', 'gold', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 32500.00, 0.00, 32500.00, 33500.00, '2026-01-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 00:50:39', '2026-01-12 00:56:57'),
(45, 'Phone', 'ahmedabad', 'iphone 11', NULL, '352990112058033', '2026-01-10', 'black', '64', NULL, NULL, 'ahmedabad telecom', '9978433359', 11000.00, 0.00, 11000.00, 11500.00, '2026-01-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 00:51:52', '2026-01-12 00:56:57'),
(46, 'Phone', 'ahmedabad', 'iphone 11', NULL, '354396707666297', '2026-01-10', 'black', '64', NULL, NULL, 'ahmedabad telecom', '9978433359', 11000.00, 0.00, 11000.00, 11500.00, '2026-01-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 00:53:11', '2026-01-12 00:56:57'),
(47, 'Phone', 'ahmedabad', 'iphone 11 pro', NULL, '353837108982123', '2026-01-10', 'green', '64', NULL, NULL, 'ahmedabad telecom', '9978433359', 13500.00, 0.00, 13500.00, 14500.00, '2026-01-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 00:54:14', '2026-01-12 00:56:57'),
(48, 'Tablet', 'ahmedabad', 'redmi pad', NULL, '22081283G', '2026-01-12', 'green', '6/128', NULL, NULL, 'ajay chauhan fonebook', '8347521500', 6000.00, 0.00, 6000.00, 6500.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 23:11:49', '2026-02-04 18:06:59'),
(49, 'Phone', 'ahmedabad', 'vivo v50e', NULL, '865186078201838', '2026-01-12', 'sapphire blue', '8/256', '2026-05-04', NULL, 'ajay chauhan fonebook', '8347521500', 15000.00, 0.00, 15000.00, 15500.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 23:14:07', '2026-02-20 10:10:34'),
(50, 'Phone', 'ahmedabad', 'iphone 16 pro max', NULL, '357121282521841', '2026-01-12', 'desrt titanium', '256', NULL, NULL, 'ajay chauhan fonebook', '8347521500', 80000.00, 0.00, 80000.00, 81000.00, '2026-01-23', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 23:15:42', '2026-01-23 21:47:46'),
(51, 'Phone', 'ahmedabad', 'vivo y100 a', NULL, '868386062993898', '2026-01-12', 'gold', '8/128', NULL, NULL, 'ahmedabad telecom', '9978433359', 7800.00, 0.00, 7800.00, 8300.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 23:17:00', '2026-02-04 18:06:59'),
(52, 'Phone', 'ahmedabad', 'iphone 14 plus', NULL, '353377531352024', '2026-01-12', 'white', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 32000.00, 0.00, 32000.00, 32500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-12 23:18:14', '2026-01-12 23:18:14'),
(53, 'Phone', 'ahmedabad', 'iphone 12', NULL, '354112727724028', '2026-01-12', 'blue', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 15000.00, 0.00, 15000.00, 15500.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 23:19:18', '2026-02-17 20:21:43'),
(54, 'Phone', 'ahmedabad', 'oppo a3', NULL, '864921075239212', '2026-01-12', 'nebula red', '6/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 7000.00, 0.00, 7000.00, 7500.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 23:20:29', '2026-01-29 11:36:06'),
(55, 'Phone', 'ahmedabad', 'moto edge 60 fusion', NULL, '357719197077799', '2026-01-12', 'pantone amazonite', '8/256', '2026-11-30', NULL, 'Ahmedabad telecom', '9978433359', 15000.00, 0.00, 15000.00, 15500.00, '2026-03-12', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-12 23:22:56', '2026-03-12 15:24:55'),
(56, 'Phone', 'ahmedabad', 'iphone 13 pro', NULL, '356310707291491', '2026-01-12', 'white', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 32000.00, 0.00, 32000.00, 32500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-12 23:24:23', '2026-01-12 23:24:23'),
(57, 'Phone', 'ahmedabad', 'iphone 13', NULL, '358293808554058', '2026-01-13', 'black', '128', '2026-01-14', NULL, 'Ahmedabad telecom', '9978433359', 22500.00, 0.00, 22500.00, 23000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-14 14:09:44', '2026-01-14 14:09:44'),
(58, 'Phone', 'ahmedabad', 'iphone 12 mini', NULL, '356450250698815', '2026-01-13', 'blue', '64', '2026-01-14', NULL, 'Ahmedabad telecom', '9978433359', 13000.00, 0.00, 13000.00, 13500.00, '2026-01-31', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-14 14:09:44', '2026-01-31 18:48:54'),
(59, 'Phone', 'ahmedabad', 'iphone 13', NULL, '358239123121537', '2026-01-13', 'blue', '128', '2026-01-14', NULL, 'Ahmedabad telecom', '9978433359', 23500.00, 0.00, 23500.00, 24500.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-14 14:09:44', '2026-02-04 18:06:59'),
(60, 'Phone', 'ahmedabad', 'moto edge 50 fusion', NULL, '350122424774832', '2026-01-13', 'marshmallow blue', '8/128', '2026-01-14', NULL, 'Ahmedabad telecom', '9978433359', 10200.00, 0.00, 10200.00, 10700.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2026-01-14 14:09:44', '2026-02-20 18:44:35'),
(61, 'Phone', 'ahmedabad', 'infinix hot 40 pro', NULL, '351554840732144', '2026-01-13', 'vintage green', '12/256', '2026-01-14', NULL, 'Ahmedabad telecom', '9978433359', 7000.00, 0.00, 7000.00, 7500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2026-01-14 14:09:44', '2026-01-21 17:52:26'),
(62, 'Phone', 'ahmedabad', 'samsung s23', NULL, '352471222542919', '2026-01-13', 'black', '8/128', '2026-01-14', NULL, 'Ahmedabad telecom', '9978433359', 23000.00, 0.00, 23000.00, 23500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-14 14:09:44', '2026-01-14 14:09:44'),
(63, 'Phone', 'ahmedabad', 'samsung s23', NULL, '352772521283729', '2026-01-12', 'cream', '8/256', '2026-01-13', NULL, 'radha krishna mobile', '9300304686', 25000.00, 0.00, 25000.00, 25500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-16 23:02:37', '2026-01-16 23:02:37'),
(64, 'Phone', 'ahmedabad', 'iphone 15', NULL, '358705405608870', '2026-01-12', 'black', '128', '2026-01-13', NULL, 'radha krishna mobile', '9300304686', 34500.00, 0.00, 34500.00, 35000.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-16 23:02:37', '2026-02-17 21:00:09'),
(65, 'Phone', 'ahmedabad', 'vivo y29', NULL, '863574073386559', '2026-01-12', 'sky blue', '4/128', '2026-01-13', NULL, 'radha krishna mobile', '9300304686', 6500.00, 0.00, 6500.00, 7000.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-16 23:02:37', '2026-02-04 18:06:59'),
(66, 'Phone', 'ahmedabad', 'google pixel 9a', NULL, '354131435705608', '2026-01-16', 'iris blue', '8/256', '2026-01-17', NULL, 'fonebook', '9727707091', 25000.00, 0.00, 25000.00, 25500.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-16 23:09:41', '2026-03-09 18:11:05'),
(67, 'Phone', 'ahmedabad', 'iphone 16 pro `', NULL, '350166640072745', '2026-01-17', 'desert titanium', '128', '2026-01-18', NULL, 'fonebook', '9727707091', 68500.00, 0.00, 68500.00, 69000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-16 23:09:41', '2026-01-16 23:09:41'),
(68, 'Phone', 'ahmedabad', 'ipad 8th generation', NULL, '356754113405742', '2026-01-08', 'grey', '32', NULL, NULL, 'Ahmedabad telecom', '9978433359', 9500.00, 0.00, 9500.00, 10000.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-16 23:13:40', '2026-02-04 18:06:59'),
(69, 'Phone', 'ahmedabad', 'samsung s24', NULL, '356016371339587', '2026-01-18', 'black', '8/256', '2026-10-01', NULL, 'kamal', '8770020942', 32500.00, 0.00, 32500.00, 33000.00, '2026-03-01', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-21 19:14:33', '2026-03-01 18:18:42'),
(70, 'Phone', 'ahmedabad', 'samsung s24 ultra', NULL, '352722661448889', '2026-01-20', 'black titanium', '12/256', '2026-01-30', NULL, 'Ahmedabad telecom', '9978433359', 56000.00, 0.00, 56000.00, 56500.00, '2026-02-22', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-21 19:24:57', '2026-02-22 13:32:00'),
(71, 'Phone', 'ahmedabad', 'iphone 11', NULL, '355807147807233', '2026-01-20', 'red', '64', '2026-01-30', NULL, 'Ahmedabad telecom', '9978433359', 11500.00, 0.00, 11500.00, 12000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-21 19:24:57', '2026-01-21 19:24:57'),
(72, 'Phone', 'ahmedabad', 'iphone 11', NULL, '352224774906192', '2026-01-20', 'white', '128', '2026-01-30', NULL, 'Ahmedabad telecom', '9978433359', 11500.00, 0.00, 11500.00, 12000.00, '2026-01-24', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-21 19:24:57', '2026-01-24 18:58:23'),
(73, 'Phone', 'ahmedabad', 'iphone 12 pro max', NULL, '356725116473234', '2026-01-20', 'pacific blue', '128', '2026-01-30', NULL, 'Ahmedabad telecom', '9978433359', 26000.00, 0.00, 26000.00, 26500.00, '2026-01-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-21 19:24:57', '2026-01-27 19:27:57'),
(74, 'Phone', 'ahmedabad', 'samsung s25', NULL, '358410183040939', '2026-01-20', 'silver shadow', '12/256', '2026-10-01', NULL, 'Monubhai murtiman', '7405817545', 49500.00, 0.00, 49500.00, 50000.00, '2026-01-24', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-23 20:53:23', '2026-01-24 19:03:31'),
(75, 'Phone', 'ahmedabad', 'iphone 13', NULL, '358439165374552', '2026-01-20', 'white', '128', '2026-01-30', NULL, 'Monubhai murtiman', '7405817545', 24500.00, 0.00, 24500.00, 25000.00, '2026-02-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-23 20:53:23', '2026-02-10 14:10:26'),
(76, 'Phone', 'ahmedabad', 'vivo v29', NULL, '862965064260350', '2026-01-20', 'blue', '8/128', '2026-01-30', NULL, 'Monubhai murtiman', '7405817545', 13500.00, 0.00, 13500.00, 14000.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-23 20:53:23', '2026-02-20 10:10:34'),
(77, 'Phone', 'ahmedabad', 'iphone 11', NULL, '352990112058033', '2026-01-20', 'black', '64', '2026-01-30', NULL, 'Monubhai murtiman', '7405817545', 11500.00, 0.00, 11500.00, 12000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-23 20:53:23', '2026-01-23 20:53:23'),
(78, 'Phone', 'ahmedabad', 'google pixel 7', NULL, '358724894405722', '2026-01-22', 'black', '8/128', '2026-01-27', NULL, 'ahmedabad telecom', '9978433359', 13300.00, 0.00, 13300.00, 17000.00, '2026-01-23', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-23 21:02:08', '2026-01-23 21:19:50'),
(79, 'Phone', 'ahmedabad', 'iphone se 2020', NULL, '356485106241378', '2026-01-22', 'black', '64', '2026-02-02', NULL, 'ahmedabad telecom', '9978433359', 5500.00, 0.00, 5500.00, 6000.00, '2026-02-08', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-23 21:02:08', '2026-02-08 21:36:33'),
(80, 'Phone', 'ahmedabad', 'nothing 3a', NULL, '351707358177561', '2026-01-23', 'blue', '8/128', NULL, NULL, 'desai sahil', '9265314910', 14500.00, 0.00, 14500.00, 17500.00, '2026-01-23', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-23 21:15:35', '2026-01-23 21:19:50'),
(81, 'Phone', 'ahmedabad', 'apple home pod', NULL, 'HPVK33JVX8', '2026-12-25', 'blue', '32 gb', NULL, NULL, 'ahmedabad telecom', '9978433359', 13000.00, 0.00, 13000.00, 18000.00, '2026-01-28', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-25 00:23:22', '2026-01-30 12:41:53'),
(82, 'Phone', 'ahmedabad', 'redmi 9 power', NULL, '8699380522', '2026-01-25', 'blazing blue', '6/128', '2026-01-25', NULL, 'dhairya pandya', '7405007887', 1200.00, 0.00, 1200.00, 1500.00, '2026-01-26', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-25 16:39:01', '2026-01-26 20:56:42'),
(83, 'Phone', 'ahmedabad', 'vivo v15 pro', NULL, '862824048813059', '2026-01-25', 'blue', '6/128', '2026-01-25', NULL, 'dhairya pandya', '7405007887', 1000.00, 0.00, 1000.00, 1300.00, '2026-01-26', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-25 16:39:01', '2026-01-26 20:56:42'),
(84, 'Phone', 'ahmedabad', 'iphone 14 pro max', NULL, '354350150450600', '2026-01-22', 'black', '512', NULL, NULL, 'mitesh goswami', '9099456789', 46700.00, 0.00, 46700.00, 48000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-25 16:45:52', '2026-03-15 13:05:53'),
(85, 'Phone', 'ahmedabad', 'one plus 9r', NULL, '866978051994119', '2026-01-25', 'black', '8/128', NULL, NULL, 'rohan lalchandani', '9687056682', 7500.00, 0.00, 7500.00, 8000.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-25 16:59:50', '2026-02-04 18:06:59'),
(86, 'Phone', 'ahmedabad', 'xiaomi 11 t pro', NULL, '863290050175432', '2026-01-25', 'black', '8/256', NULL, NULL, 'adhithyan', '9726394049', 7700.00, 0.00, 7700.00, 9000.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-25 18:01:57', '2026-02-20 10:10:34'),
(87, 'Phone', 'ahmedabad', 'iphone xs max', NULL, '357276097633858', '2026-01-24', 'white', '64', NULL, NULL, 'aditya thakker', '6354795030', 1900.00, 0.00, 1900.00, 2500.00, '2026-02-26', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-25 20:16:33', '2026-02-26 22:17:51'),
(88, 'Phone', 'ahmedabad', 'iphone 11', NULL, '355608704408658', '2026-01-20', 'white', '128', NULL, NULL, 'ahmedabad telecom', '9978433359', 12000.00, 0.00, 12000.00, 12500.00, '2021-02-13', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-26 21:07:34', '2026-01-27 17:56:03'),
(89, 'Phone', 'ahmedabad', 'samsung fold 6', NULL, '355566790757687', '2026-01-26', 'blue', '12/256', NULL, NULL, 'Monubhai murtiman', '7405817545', 29000.00, 0.00, 29000.00, 30000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-26 21:17:08', '2026-01-29 01:06:24'),
(90, 'Phone', 'ahmedabad', 'samsung s23 ultra', NULL, '353835881314316', '2026-01-26', 'green', '12/256', NULL, NULL, 'karan bhaiya mobile accessries', '9537883914', 30500.00, 0.00, 30500.00, 31500.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-26 21:20:12', '2026-01-29 01:06:24'),
(91, 'Phone', 'ahmedabad', 'iphone 14 pro max', NULL, '350270054929752', '2026-01-26', 'deep purple', '256', NULL, NULL, 'prateek bhai', '8153984444', 45000.00, 0.00, 45000.00, 48500.00, '2026-01-26', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-26 21:26:10', '2026-01-26 22:25:38'),
(92, 'Phone', 'ahmedabad', 'samsung s25', NULL, '358410183010734', '2026-01-26', 'iceblue', '12/256', '2026-10-01', NULL, 'hemal bhai', '8511118182', 45000.00, 0.00, 45000.00, 48000.00, '2026-02-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-26 21:45:12', '2026-02-11 20:18:21'),
(93, 'Smartwatch', 'ahmedabad', 'apple watch se 2', NULL, 'HM2J51X0Q07Y', '2026-01-27', 'black', 'HM', NULL, NULL, 'Monubhai murtiman', '7405817545', 8700.00, 0.00, 8700.00, 9450.00, '2026-01-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-27 11:40:28', '2026-01-27 11:41:41'),
(94, 'Phone', 'ahmedabad', 'iphone 15 pro max', NULL, '357164761605065', '2026-01-26', 'natural titanium', '512 gb', NULL, NULL, 'pratik bhaiya', '8513984444', 68000.00, 0.00, 68000.00, 73000.00, '2026-01-27', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-27 12:16:53', '2026-01-27 19:26:13'),
(95, 'Smartwatch', 'ahmedabad', 'apple watch ultra 2', NULL, '356245747794924', '2026-01-26', 'mislenese edition', '64', NULL, NULL, 'hemal bhai', '8511118182', 27000.00, 0.00, 27000.00, 30000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-27 14:11:20', '2026-02-11 16:54:35'),
(96, 'Phone', 'ahmedabad', 'iphone 15 plus', NULL, '358577781293548', '2026-01-26', 'black', '256', NULL, NULL, 'ifirst mobile', '9979796967', 44000.00, 0.00, 44000.00, 45000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-01-27 19:05:17', '2026-01-27 19:05:17'),
(97, 'Phone', 'ahmedabad', 'iphone 16 pro', NULL, '351817720444589', '2026-01-28', 'desrt titanium', '128', NULL, NULL, 'bhavyash oswal', '8600046000', 93000.00, 0.00, 93000.00, 99000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:37:00', '2026-01-29 01:08:07'),
(98, 'Phone', 'ahmedabad', 'iphone 16 pro', NULL, '356373411880579', '2026-01-25', 'desrt titanium', '256', '2026-03-01', NULL, 'jeetu bhai phone wale', '9173640259', 70500.00, 0.00, 70500.00, 71500.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:39:35', '2026-02-04 18:06:59'),
(99, 'Phone', 'ahmedabad', 'iphone 15', NULL, '357200609080192', '2026-01-20', 'blue', '128', '2026-11-29', NULL, 'Monubhai murtiman', '7405817545', 42500.00, 0.00, 42500.00, 43500.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:41:30', '2026-02-04 18:06:59'),
(100, 'Phone', 'ahmedabad', 'iphone 13', NULL, '356682973969806', '2026-01-28', 'red', '128', '2026-01-28', NULL, 'ahmedabad telecom', '9978433359', 20500.00, 0.00, 20500.00, 22000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:48:34', '2026-01-29 01:03:20'),
(101, 'Phone', 'ahmedabad', 'one plus 12r', NULL, '860957064185572', '2026-01-28', 'coolblue', '16/256', '2026-01-28', NULL, 'ahmedabad telecom', '9978433359', 24500.00, 0.00, 24500.00, 25000.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:48:34', '2026-02-21 19:13:59'),
(102, 'Phone', 'ahmedabad', 'one plus nord', NULL, '866801056953056', '2026-01-28', 'blue marble', '12/256', NULL, NULL, 'gautam lalwani', '9993476489', 7000.00, 0.00, 7000.00, 8000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:50:32', '2026-01-29 01:03:20'),
(103, 'Phone', 'ahmedabad', 'vivo y21', NULL, '864302063660455', '2026-01-28', 'midnight blue', '4/64', NULL, NULL, 'gautam lalwani', '9993476489', 3400.00, 0.00, 3400.00, 3800.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:51:43', '2026-01-29 01:03:20'),
(104, 'Phone', 'ahmedabad', 'iphone 17', NULL, '355154912160351', '2026-01-28', 'white', '256', '2027-01-28', NULL, 'bhavyash oswal', '8600046000', 77000.00, 0.00, 77000.00, 80000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:56:59', '2026-01-29 01:03:20'),
(105, 'Phone', 'ahmedabad', 'iphone 17', NULL, '350453402804865', '2026-01-28', 'white', '256', '2027-01-28', NULL, 'bhavyash oswal', '8600046000', 77000.00, 0.00, 77000.00, 80000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:56:59', '2026-01-29 01:03:20'),
(106, 'Phone', 'ahmedabad', 'iphone 17', NULL, '350453402888249', '2026-01-28', 'white', '256', '2027-01-28', NULL, 'bhavyash oswal', '8600046000', 77000.00, 0.00, 77000.00, 80000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:56:59', '2026-01-29 01:03:20'),
(107, 'Phone', 'ahmedabad', 'iphone 17', NULL, '352501900463424', '2026-01-28', 'mist blue', '256', '2027-01-28', NULL, 'bhavyash oswal', '8600046000', 77000.00, 0.00, 77000.00, 80000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 00:56:59', '2026-01-29 01:03:20'),
(108, 'Phone', 'ahmedabad', 'iphone 16', NULL, '356822956150608', '2026-01-29', 'teal', '128', '2026-07-10', NULL, 'kunal bhai phone wale', '8000866660', 46000.00, 0.00, 46000.00, 47000.00, '2026-01-29', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-29 21:05:55', '2026-01-29 21:06:32'),
(109, 'Phone', 'ahmedabad', 'iphone 13 pro', NULL, '359339139155328', '2026-01-30', 'sierra blue', '128', NULL, NULL, 'haku bha bhaiya', '9909077077', 31500.00, 0.00, 31500.00, 32500.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-30 19:19:54', '2026-02-04 18:06:59'),
(110, 'Phone', 'ahmedabad', 'one plus nord ce5', NULL, '865275071053658', '2026-01-30', 'black', '8/256', NULL, NULL, 'ketan bhai phone wale', '9737845004', 15500.00, 0.00, 15500.00, 16500.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-30 23:21:13', '2026-02-04 18:06:59'),
(111, 'Phone', 'ahmedabad', 'google pixel 6a', NULL, '350162891511846', '2026-01-31', 'charcoal', '6/128', NULL, NULL, 'samip purohit', '9427147107', 8500.00, 0.00, 8500.00, 9000.00, '2026-03-13', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-31 13:02:01', '2026-03-13 17:35:16'),
(112, 'Phone', 'ahmedabad', 'oppo a3', NULL, '864921075239212', '2026-01-30', 'nebula red', '6/128', NULL, NULL, 'parth rameshbhai rajput', '7043361509', 6700.00, 0.00, 6700.00, 7200.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-01-31 13:05:03', '2026-02-21 19:13:59'),
(113, 'Phone', 'ahmedabad', 'iphone 15 pro max', NULL, '357926951810659', '2026-02-01', 'blue titanium', '256', NULL, NULL, 'jeetu bhai phone wale', '9173640259', 54500.00, 0.00, 54500.00, 55500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2026-02-01 18:13:19', '2026-02-03 13:08:26'),
(114, 'Phone', 'ahmedabad', 'iphone 14', NULL, '355794428441470', '2026-02-01', 'blue', '128', NULL, NULL, 'ketan bhai phone wale', '9737845004', 23500.00, 0.00, 23500.00, 24500.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-01 18:16:17', '2026-02-21 19:13:59'),
(115, 'Phone', 'ahmedabad', 'samsung s24', NULL, '356016371385838', '2026-02-03', 'gray', '8/256', NULL, NULL, 'Monubhai murtiman', '7405817545', 35750.00, 0.00, 35750.00, 36500.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-04 17:31:08', '2026-02-05 12:03:40'),
(116, 'Phone', 'ahmedabad', 'iphone 16 pro max', NULL, '357192898272707', '2026-02-03', 'desert titanium', '256', NULL, NULL, 'us mobile murtiman', '9825698723', 87000.00, 0.00, 87000.00, 88000.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-04 17:33:31', '2026-02-05 12:08:28'),
(117, 'Phone', 'ahmedabad', 'iphone 17 pro', NULL, '350346896736108', '2026-02-04', 'cosmic orange', '256', NULL, NULL, 'Monubhai murtiman', '7405817545', 116000.00, 0.00, 116000.00, 116000.00, '2026-02-04', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 11:22:23', '2026-02-05 12:05:47'),
(118, 'Phone', 'ahmedabad', 'samsung z fold 6', NULL, '355566790331756', '2026-02-04', 'crafted black', '12/256', '2026-05-04', NULL, 'mehul dan gadhvi ji', '9712999999', 61000.00, 0.00, 61000.00, 61000.00, '2026-02-06', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 11:26:39', '2026-02-07 11:21:52'),
(119, 'Phone', 'ahmedabad', 'one plus 6t', NULL, '869671044407672', '2026-02-04', 'black', '10/256', NULL, NULL, 'mehul dan gadhvi ji', '9712999999', 4000.00, 0.00, 4000.00, 4500.00, '2026-02-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 11:26:39', '2026-02-10 17:45:48'),
(120, 'Phone', 'ahmedabad', 'iphone 16', NULL, '358722572932900', '2026-02-04', 'black', '256', NULL, NULL, 'ravi patel', '9099905520', 47000.00, 0.00, 47000.00, 47000.00, '2026-02-08', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 11:31:46', '2026-02-08 17:58:19'),
(121, 'Phone', 'ahmedabad', 'one plus nord ce5', NULL, '865597083602754', '2026-02-04', 'nexus blue', '8/256', '2026-12-15', NULL, 'ravi patel', '9099905520', 19000.00, 0.00, 19000.00, 19000.00, '2026-02-05', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 11:31:46', '2026-02-05 20:39:44'),
(122, 'Phone', 'ahmedabad', 'iphone 17 pro max', NULL, '357610214088689', '2026-02-05', 'cosmic orange', '256', NULL, NULL, 'Monubhai murtiman', '7405817545', 115800.00, 0.00, 115800.00, 117000.00, '2026-02-06', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 15:53:14', '2026-02-06 17:59:28'),
(123, 'Phone', 'ahmedabad', 'iphone 14 pro', NULL, '355960225650197', '2026-02-05', 'deep purple', '256', NULL, NULL, 'mehul dan gadhvi ji', '9712999999', 42500.00, 0.00, 42500.00, 43500.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 20:10:54', '2026-02-21 19:13:59'),
(124, 'Phone', 'ahmedabad', 'iphone 17 pro max', NULL, '356973391750963', '2026-02-05', 'deep blue', '256', NULL, NULL, 'Monubhai murtiman', '7405817545', 134250.00, 0.00, 134250.00, 136000.00, '2026-02-05', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 20:12:45', '2026-02-11 16:54:35'),
(125, 'Phone', 'ahmedabad', 'iphone 15 pro', NULL, '354496317389486', '2026-02-05', 'natural titanium', '128', NULL, NULL, 'pratik bhaiya', '8513984444', 55000.00, 0.00, 55000.00, 56000.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 20:14:00', '2026-02-20 10:10:34'),
(126, 'Phone', 'ahmedabad', 'iphone 12 pro max', NULL, '351732274944977', '2026-01-25', 'gold', '256', NULL, NULL, 'yash bhai', '7693949937', 25500.00, 0.00, 25500.00, 26500.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-05 20:36:21', '2026-02-20 10:10:34'),
(127, 'Phone', 'ahmedabad', 'samsung s25 ultra', NULL, '351270685875241', '2026-02-06', 'titanium black', '12/256', NULL, NULL, 'pratik bhaiya', '8513984444', 75000.00, 0.00, 75000.00, 75000.00, '2026-02-06', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-06 17:56:13', '2026-02-07 11:21:52'),
(128, 'Phone', 'ahmedabad', 'vivo y400 pro', NULL, '863397074557378', '2026-02-06', 'nebula purple', '8/128', NULL, NULL, 'Monubhai murtiman', '7405817545', 17000.00, 0.00, 17000.00, 17500.00, '2026-02-06', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-07 11:24:41', '2026-02-07 11:25:30'),
(129, 'Phone', 'ahmedabad', 'iphone 16', NULL, '356657554493228', '2026-02-07', 'teal', '128', NULL, NULL, 'ifirst mobile', '9979796967', 43700.00, 0.00, 43700.00, 44000.00, '2026-02-07', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-07 21:58:53', '2026-02-07 22:00:06'),
(130, 'Phone', 'ahmedabad', 'one plus nord ce2 lite', NULL, '863382063716011', '2026-02-07', 'blue', '6/128', NULL, NULL, 'jheel shah', '9724887529', 5700.00, 0.00, 5700.00, 6200.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-08 12:32:53', '2026-02-20 10:10:34'),
(131, 'Phone', 'ahmedabad', 'iphone 12 mini', NULL, '350135024435489', '2026-02-04', 'blue', '64', NULL, NULL, 'fonebook mayank bhaiya', '9727707091', 12000.00, 0.00, 12000.00, 13000.00, '2026-02-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-08 12:34:29', '2026-02-11 16:47:43'),
(132, 'Phone', 'ahmedabad', 'one plus 11r', NULL, '865780063224571', '2026-02-08', 'blue', '8/128', NULL, NULL, 'gautam ganesh', '9687689674', 15000.00, 0.00, 15000.00, 15500.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-08 17:21:23', '2026-02-20 10:10:34'),
(133, 'Phone', 'ahmedabad', 'iphone 15', NULL, '3593336001266299', '2026-02-08', 'blue', '256', NULL, NULL, 'z md fayaz', '8943754158', 31000.00, 0.00, 31000.00, 32000.00, '2026-02-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-08 21:43:29', '2026-02-10 21:10:56'),
(134, 'Phone', 'ahmedabad', 'iphone 15 pro max', NULL, '355523978906024', '2026-02-09', 'natural titanium', '512', NULL, NULL, 'Monubhai murtiman', '7405817545', 69000.00, 0.00, 69000.00, 69000.00, '2026-02-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-09 12:28:59', '2026-02-10 21:10:56'),
(135, 'Phone', 'ahmedabad', 'iphone 12 mini', NULL, '356450250698815', '2026-02-10', 'blue', '64', NULL, NULL, 'jitendra bhai', '9814429756', 12500.00, 0.00, 12500.00, 13500.00, '2026-03-07', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-10 21:15:21', '2026-03-07 22:01:29'),
(136, 'Phone', 'ahmedabad', 'iphone x', NULL, '357204093926159', '2026-02-09', 'white', '512', NULL, NULL, 'jaresh parmar', '8460431714', 6500.00, 0.00, 6500.00, 7000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-14 14:58:47', '2026-02-14 14:58:47'),
(137, 'Phone', 'ahmedabad', 'one plus 6', NULL, '868263034816111', '2026-02-14', 'black', '6/64', NULL, NULL, 'ganesh gautam', '9687689674', 3300.00, 0.00, 3300.00, 5500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-14 19:44:31', '2026-02-14 19:44:31'),
(138, 'Phone', 'ahmedabad', 'samsung alpha', NULL, '355427061011660', '2026-02-14', 'silver', '16', NULL, NULL, 'ganesh gautam', '9687689674', 700.00, 0.00, 700.00, 700.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-14 19:44:31', '2026-02-14 19:44:31'),
(139, 'Phone', 'ahmedabad', 'iphone 15', NULL, '357261911426820', '2026-02-14', 'pink', '128', NULL, NULL, 'ronny collection', '6355124938', 35000.00, 0.00, 35000.00, 36000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-14 20:21:22', '2026-02-14 20:21:22'),
(140, 'Phone', 'ahmedabad', 'samsung a35', NULL, '350722248404845', '2026-02-16', 'dark blue', '8/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 12000.00, 0.00, 12000.00, 12500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-17 09:44:54', '2026-02-17 09:44:54'),
(141, 'Phone', 'ahmedabad', 'iphone 13', NULL, '351075960974266', '2026-02-16', 'pink', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 22500.00, 0.00, 22500.00, 23000.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-17 09:44:54', '2026-02-20 10:10:34'),
(142, 'Phone', 'ahmedabad', 'samsung s24', NULL, '356016371277092', '2026-02-16', 'black', '8/256', '2026-10-01', NULL, 'Ahmedabad telecom', '9978433359', 32000.00, 0.00, 32000.00, 33000.00, '2026-02-20', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-17 09:44:54', '2026-02-21 17:09:48'),
(143, 'Phone', 'ahmedabad', 'iphone 15 pro', NULL, '351253396255747', '2026-02-16', 'natural titanium', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 54500.00, 0.00, 54500.00, 55500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-17 09:44:54', '2026-02-17 09:44:54'),
(144, 'Phone', 'ahmedabad', 'samsung z fold 3', NULL, '350843354375197', '2026-02-16', 'silver', '12/256', NULL, NULL, 'bhargav mondaliya', '9724297173', 21000.00, 0.00, 21000.00, 22000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-17 09:46:41', '2026-02-17 09:46:41'),
(145, 'Phone', 'ahmedabad', 'iphone 17 pro max', NULL, '357218971799926', '2026-02-16', 'silver', '256', '2026-11-03', NULL, 'pratik bhaiya', '8513984444', 119000.00, 0.00, 119000.00, 119000.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-17 12:35:50', '2026-03-09 18:06:31'),
(146, 'Phone', 'ahmedabad', 'iphone 14 pro', NULL, '350056593165127', '2026-02-15', 'black', '256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 43500.00, 0.00, 43500.00, 46500.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-17 13:13:02', '2026-02-17 13:16:59'),
(147, 'Phone', 'ahmedabad', 'samsung s25', NULL, '358410180533118', '2026-02-15', 'icyblue', '12/256', '2026-04-04', NULL, 'Ahmedabad telecom', '9978433359', 43000.00, 0.00, 43000.00, 43500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-17 13:13:02', '2026-02-17 13:13:02'),
(148, 'Phone', 'ahmedabad', 'one plus ce3 lite', NULL, '865952063160614', '2026-02-15', 'pastle lime', '8/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 8000.00, 0.00, 8000.00, 8500.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-17 13:13:02', '2026-02-20 10:10:34'),
(149, 'Phone', 'ahmedabad', 'vivo t1 pro', NULL, '868526069786155', '2026-02-15', 'turbo black', '6/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 7000.00, 0.00, 7000.00, 7000.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-17 13:13:02', '2026-02-20 10:10:34'),
(150, 'Phone', 'ahmedabad', 'samsung a22', NULL, '356890801191259', '2026-02-15', 'black', '6/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 4000.00, 0.00, 4000.00, 4000.00, '2026-02-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-17 13:13:02', '2026-02-20 10:10:34'),
(151, 'Phone', 'ahmedabad', 'samsung s22', NULL, '355066969249574', '2026-02-15', 'black', '8/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 16000.00, 0.00, 16000.00, 16000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-17 13:13:02', '2026-02-17 13:13:02'),
(152, 'Phone', 'ahmedabad', 'samsung a36', NULL, '3562581950444668', '2026-02-17', 'awesome white', '8/256', '2026-09-20', NULL, 'Ahmedabad telecom', '9978433359', 16500.00, 0.00, 16500.00, 17000.00, '2026-02-24', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-18 13:03:07', '2026-02-24 20:36:06'),
(153, 'Phone', 'ahmedabad', 'iphone 13 mini', NULL, '358082906953134', '2026-02-17', 'black', '128', NULL, NULL, 'utsav bobra', '7046061113', 22500.00, 0.00, 22500.00, 23000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-18 13:11:09', '2026-02-18 13:11:09'),
(154, 'Phone', 'ahmedabad', 'moto g54 5g', NULL, '350806093803639', '2026-02-18', 'midnight blue', '8/128', NULL, NULL, 'manan sanghai', '9727166601', 7000.00, 0.00, 7000.00, 7000.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-19 13:46:07', '2026-02-21 19:13:59'),
(155, 'Phone', 'ahmedabad', 'iphone 14 pro max', NULL, '354132412611561', '2026-02-18', 'gold', '256', NULL, NULL, 'kunal bhai phone wale', '8000866660', 45000.00, 0.00, 45000.00, 45500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-19 13:47:56', '2026-02-19 13:47:56'),
(156, 'Phone', 'ahmedabad', 'iphone 12 pro max', NULL, '356724115098365', '2026-02-19', 'gold', '256', NULL, NULL, 'pratik bhaiya', '8513984444', 31000.00, 0.00, 31000.00, 31500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-20 18:47:08', '2026-02-20 18:47:08'),
(157, 'Phone', 'ahmedabad', 'iphone 14', NULL, '356891467399541', '2026-02-20', 'purple', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 28000.00, 0.00, 28000.00, 28500.00, '2026-03-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-21 17:58:12', '2026-03-10 18:21:49'),
(158, 'Phone', 'ahmedabad', 'redmi note 9 pro max', NULL, '865528055713212', '2026-01-21', 'aurora blue', '6/64', NULL, NULL, 'abhilasha ghumeliya', '9327409597', 4200.00, 0.00, 4200.00, 4200.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-21 18:53:22', '2026-02-21 19:13:59'),
(159, 'Phone', 'ahmedabad', 'iphone 13 pro', NULL, '353501490911823', '2026-02-20', 'sierra blue', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 31500.00, 0.00, 31500.00, 31500.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-21 18:54:46', '2026-02-21 19:13:59'),
(160, 'Phone', 'ahmedabad', 'iphone 14 pro', NULL, '351083734809768', '2026-02-19', 'deep purple', '256', NULL, NULL, 'Monubhai murtiman', '7405817545', 44000.00, 0.00, 44000.00, 44000.00, '2026-02-21', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-21 18:55:45', '2026-02-21 19:13:59'),
(161, 'Phone', 'ahmedabad', 'iphone 13', NULL, '356557847798872', '2026-02-20', 'green', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 22500.00, 0.00, 22500.00, 22500.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-21 18:57:05', '2026-03-09 18:13:58'),
(162, 'Phone', 'ahmedabad', 'vivo v25', NULL, '864931068972919', '2026-02-22', 'surfing blue', '8/128', NULL, NULL, 'jayshree bharat singh', '9714066937', 7500.00, 0.00, 7500.00, 7500.00, '2026-03-13', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-22 18:15:46', '2026-03-13 17:35:16'),
(163, 'Phone', 'ahmedabad', 'one plus nord 3', NULL, '862027064607591', '2026-02-22', 'gray', '16/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 12500.00, 0.00, 12500.00, 16500.00, '2026-02-23', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-23 19:39:41', '2026-02-23 19:40:48'),
(164, 'Phone', 'ahmedabad', 'realme xt', NULL, '866121043111530', '2026-02-22', 'white', '8/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 4800.00, 0.00, 4800.00, 4800.00, '2026-03-05', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-23 20:01:30', '2026-03-08 14:17:09'),
(165, 'Phone', 'ahmedabad', 'iphone 14 plus', NULL, '353377533902479', '2026-02-22', 'black', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 31000.00, 0.00, 31000.00, 31500.00, '2026-02-24', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-23 20:01:30', '2026-02-25 09:55:16'),
(166, 'Phone', 'ahmedabad', 'iphone 14', NULL, '357589737102864', '2026-02-22', 'black', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 26500.00, 0.00, 26500.00, 27000.00, '2026-02-24', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-23 20:01:30', '2026-02-25 09:55:16'),
(167, 'Phone', 'ahmedabad', 'one plus 7t', NULL, '868539045167895', '2026-02-22', 'blue', '8/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 6300.00, 0.00, 6300.00, 6500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-23 20:01:30', '2026-02-23 20:01:30'),
(168, 'Phone', 'ahmedabad', 'iphone 16 pro', NULL, '352113446775301', '2026-02-22', 'desert titanium', '512', NULL, NULL, 'Ahmedabad telecom', '9978433359', 75500.00, 0.00, 75500.00, 77000.00, '2026-03-01', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-23 20:01:30', '2026-03-01 21:21:59'),
(169, 'Phone', 'ahmedabad', 'samsung f23 5g', NULL, '357917276797432', '2026-02-23', 'brownze', '6/128', NULL, NULL, 'yash dhorajiya', '98247 90281', 4500.00, 0.00, 4500.00, 4500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-23 20:03:29', '2026-02-23 20:03:29'),
(170, 'Phone', 'ahmedabad', 'oppo reno 14', NULL, '860968073580398', '2026-02-23', 'pearl white', '8/256', '2026-08-15', NULL, 'Ahmedabad telecom', '9978433359', 24500.00, 0.00, 24500.00, 25500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-24 14:05:50', '2026-02-24 14:05:50'),
(171, 'Phone', 'ahmedabad', 'one plus 15r', NULL, '862329081767113', '2026-02-23', 'mint breeze', '12/256', '2027-01-01', NULL, 'Ahmedabad telecom', '9978433359', 34500.00, 0.00, 34500.00, 35500.00, '2026-02-26', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-24 14:05:50', '2026-02-26 22:14:41'),
(172, 'Phone', 'ahmedabad', 'one plus 9 pro', NULL, '868768054382851', '2026-02-21', 'silver', '12/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 14000.00, 0.00, 14000.00, 14500.00, '2026-03-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-24 17:38:47', '2026-03-10 16:15:47'),
(173, 'Phone', 'ahmedabad', 'iphone 17 pro max', NULL, '355190206810657', '2026-02-22', 'cosmic orange', '256', NULL, NULL, 'mitesh goswami', '9099456789', 113000.00, 0.00, 113000.00, 115000.00, '2026-02-24', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-24 18:11:42', '2026-02-24 18:13:28'),
(174, 'Phone', 'ahmedabad', 'iphone 16 pro max', NULL, '354276350184584', '2026-02-24', 'desert titanium', '256', NULL, NULL, 'gohil pratik rameshbhai', '8320771846', 77500.00, 0.00, 77500.00, 78000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-24 18:26:41', '2026-02-24 18:26:41'),
(175, 'Phone', 'ahmedabad', 'one plus nord 3', NULL, '862027064607591', '2026-02-24', 'tempest gray', '16/256', NULL, NULL, 'yash dhorajiya', '98247 90281', 17000.00, 0.00, 17000.00, 17000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-25 09:57:58', '2026-02-25 09:57:58'),
(176, 'Phone', 'ahmedabad', 'iphone 13', NULL, '354548720189232', '2026-02-24', 'blue', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 23500.00, 0.00, 23500.00, 23500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-25 20:51:23', '2026-02-25 20:51:23'),
(177, 'Phone', 'ahmedabad', 'vivo y31', NULL, '866052058524954', '2026-02-24', 'blue', '6/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 4800.00, 0.00, 4800.00, 5000.00, '2026-03-05', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-25 20:51:23', '2026-03-08 14:17:09'),
(178, 'Phone', 'ahmedabad', 'samsung z flip 6', NULL, '355951710293692', '2026-02-26', 'mint', '12/256', NULL, NULL, 'nilesh parmar mahavir mobile', '9924475886', 36000.00, 0.00, 36000.00, 38000.00, '2026-02-26', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-26 14:52:26', '2026-02-26 14:56:51');
INSERT INTO `purchases` (`id`, `device_type`, `storelocation`, `model`, `brand`, `imei`, `purchase_date`, `color`, `storage`, `warrentydate`, `os`, `purchase_from`, `contactno`, `purchase_cost`, `repairing_charge`, `purchase_price`, `msp`, `sell_date`, `remark`, `condition`, `device_photo`, `document`, `user_id`, `is_sold`, `deleted`, `created_at`, `updated_at`) VALUES
(179, 'Phone', 'ahmedabad', 'samsung s23 fe', NULL, '350411874966281', '2026-02-26', 'purple', '8/256', NULL, NULL, 'vaghela hiteshsin bhurbha', '7490904510', 18000.00, 0.00, 18000.00, 18500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-02-26 14:53:54', '2026-02-26 14:53:54'),
(180, 'Phone', 'ahmedabad', 'one plus 12r', NULL, '860957060158557', '2026-02-28', 'blue', '8/128', NULL, NULL, 'vandit maradiya', '8128528043', 19000.00, 0.00, 19000.00, 19500.00, '2026-03-13', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-02-28 22:10:10', '2026-03-13 17:35:16'),
(181, 'Phone', 'ahmedabad', 'iphone 11', NULL, '357771779546170', '2026-03-01', 'black', '64', NULL, NULL, 'tejas bhai bopal', '9898031474', 11000.00, 0.00, 11000.00, 11500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-01 20:18:10', '2026-03-01 20:18:10'),
(182, 'Phone', 'ahmedabad', 'iphone 13', NULL, '352094672208847', '2026-03-01', 'blue', '128', NULL, NULL, 'haku bha bhaiya', '9909077077', 22500.00, 0.00, 22500.00, 23000.00, '2026-03-02', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-01 20:25:16', '2026-03-02 19:50:24'),
(183, 'Phone', 'ahmedabad', 'iphone 16', NULL, '351267386857684', '2026-03-01', 'black', '128', '2027-01-01', NULL, 'kunal bhai phone wale', '8000866660', 50000.00, 0.00, 50000.00, 51000.00, '2026-03-12', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-01 20:27:22', '2026-03-12 14:35:12'),
(184, 'Smartwatch', 'ahmedabad', 'apple watch  se2nd gen', NULL, 'HDFCCCC', '2026-02-26', 'cream', '32', NULL, NULL, 'satyam singhal', '6266467593', 5500.00, 0.00, 5500.00, 9500.00, '2026-03-01', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-01 21:08:10', '2026-03-01 21:12:20'),
(185, 'Smartwatch', 'ahmedabad', 'apple watch series 3', NULL, 'HDFBBB', '2026-02-26', 'black', '32', NULL, NULL, 'satyam singhal', '6266467593', 2000.00, 0.00, 2000.00, 3000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-01 21:08:10', '2026-03-01 21:08:10'),
(186, 'Phone', 'ahmedabad', 'iphone 13', NULL, '350024069907638', '2026-03-07', 'blue', '128', NULL, NULL, 'hiren raichura', '9739567002', 21500.00, 0.00, 21500.00, 22000.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-07 13:14:15', '2026-03-09 18:11:05'),
(187, 'Tablet', 'ahmedabad', 'ipad 10th generation', NULL, 'CPXOWWRMHK', '2026-03-03', 'silver', '64', NULL, NULL, 'yash bhai', '7693949937', 10000.00, 0.00, 10000.00, 11000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-07 13:24:58', '2026-03-07 13:24:58'),
(188, 'Phone', 'ahmedabad', 'samsung a25', NULL, '351137770646169', '2026-03-02', 'yellow', '8/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 9500.00, 0.00, 9500.00, 10000.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 17:48:05', '2026-03-09 18:11:05'),
(189, 'Phone', 'ahmedabad', 'samsung z flip 6', NULL, '355951710397584', '2026-03-05', 'gray', '12/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 32500.00, 0.00, 32500.00, 35500.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 17:48:05', '2026-03-09 18:06:31'),
(190, 'Phone', 'ahmedabad', 'oppo f31 pro', NULL, '861027071515119', '2026-03-05', 'space gray', '12/256', '2027-02-01', NULL, 'Ahmedabad telecom', '9978433359', 21000.00, 0.00, 21000.00, 22000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-09 17:48:05', '2026-03-09 17:48:05'),
(191, 'Smartwatch', 'ahmedabad', 'apple watch ultra 3', NULL, 'MF6N4VX0GY', '2026-03-09', 'natural titanium', '32', '2027-11-04', NULL, 'ANKIT h patel', '7874724076', 47000.00, 0.00, 47000.00, 48000.00, '2026-03-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 17:54:15', '2026-03-11 18:19:00'),
(192, 'Phone', 'ahmedabad', 'iphone 11 pro', NULL, '353236103865419', '2026-03-08', 'gray', '64', NULL, NULL, 'shinu chauhan', '9157168360', 9500.00, 0.00, 9500.00, 10500.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 18:04:20', '2026-03-09 18:11:05'),
(193, 'Phone', 'ahmedabad', 'iphone 15 pro max', NULL, '356840671951670', '2026-03-09', 'natural titanium', '256', NULL, NULL, 'kunal bhai phone wale', '8000866660', 58000.00, 0.00, 58000.00, 59000.00, '2026-03-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 18:28:07', '2026-03-10 19:22:04'),
(194, 'Phone', 'ahmedabad', 'vivo x200', NULL, '866961078277833', '2026-03-08', 'black', '16/512', '2026-03-09', NULL, 'Ajay chauhan fonebook', '8347521500', 33000.00, 0.00, 33000.00, 34500.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 18:46:42', '2026-03-09 18:48:35'),
(195, 'Phone', 'ahmedabad', 'samsung s25 ultra', NULL, '356284535053433', '2026-03-08', 'black', '12/512', '2026-03-08', NULL, 'Ajay chauhan fonebook', '8347521500', 68000.00, 0.00, 68000.00, 70000.00, '2026-03-09', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 18:46:42', '2026-03-09 18:48:35'),
(196, 'Phone', 'ahmedabad', 'iphone se 2020', NULL, '35649010658200', '2026-03-09', 'red', '64', NULL, NULL, 'jaykishan panchal', '9909915906', 5800.00, 0.00, 5800.00, 6300.00, '2026-03-12', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-09 21:06:55', '2026-03-12 16:30:07'),
(197, 'Phone', 'ahmedabad', 'one plus nord ce5', NULL, '865597085612678', '2026-03-09', 'white', '8/128', NULL, NULL, 'aaryan indore', '9399075313', 16500.00, 0.00, 16500.00, 18300.00, '2026-03-10', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-10 13:44:49', '2026-03-10 13:45:38'),
(198, 'Phone', 'ahmedabad', 'samsung s24 ultra', NULL, '353578850721406', '2026-03-08', 'violet', '12/512', '2026-03-12', NULL, 'Ahmedabad telecom', '9978433359', 63000.00, 0.00, 63000.00, 63500.00, '2026-03-13', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 17:55:23', '2026-03-13 17:35:16'),
(199, 'Phone', 'ahmedabad', 'oppo f31 pro', NULL, '861027071515119', '2026-03-08', 'space gray', '12/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 21000.00, 0.00, 21000.00, 22000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, '2026-03-11 17:55:23', '2026-03-11 17:57:58'),
(200, 'Phone', 'ahmedabad', 'iphone 12 mini', NULL, '353526374238217', '2026-03-08', 'blue', '64', NULL, NULL, 'Ahmedabad telecom', '9978433359', 11800.00, 0.00, 11800.00, 12000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-11 17:55:23', '2026-03-11 17:55:23'),
(201, 'Phone', 'ahmedabad', 'vivo x90', NULL, '862814069125418', '2026-03-10', 'breeze blue', '8/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 20500.00, 0.00, 20500.00, 21500.00, '2026-03-13', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 17:55:23', '2026-03-13 17:35:16'),
(202, 'Phone', 'ahmedabad', 'iphone 12 pro', NULL, '350905822440919', '2026-03-09', 'blue', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 23000.00, 0.00, 23000.00, 23500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-11 17:55:23', '2026-03-11 17:55:23'),
(203, 'Phone', 'ahmedabad', 'iphone 13', NULL, '351467533208399', '2026-03-10', 'black', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 22000.00, 0.00, 22000.00, 22500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-11 17:55:23', '2026-03-11 17:55:23'),
(204, 'Phone', 'ahmedabad', 'vivo y28s', NULL, '862747077206590', '2026-03-10', 'vintage red', '4/128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 6500.00, 0.00, 6500.00, 7000.00, '2026-03-13', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 17:55:23', '2026-03-13 17:35:16'),
(205, 'Phone', 'ahmedabad', 'iphone 11 pro', NULL, '353846109095769', '2026-03-09', 'green', '256', NULL, NULL, 'uttam bhai', '9537883914', 11000.00, 0.00, 11000.00, 13000.00, '2026-03-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 17:57:22', '2026-03-11 18:15:37'),
(206, 'Phone', 'ahmedabad', 'oppo f19 pro plus', NULL, '866899055961690', '2026-03-10', 'gold', '8/128', NULL, NULL, 'prem singh', '7227092559', 3500.00, 0.00, 3500.00, 6000.00, '2026-03-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 18:00:56', '2026-03-11 18:15:37'),
(207, 'Phone', 'ahmedabad', 'vivo y300', NULL, '866171077024877', '2026-03-10', 'red', '8/128', NULL, NULL, 'mukesh desai', '990996999', 8750.00, 0.00, 8750.00, 10500.00, '2026-03-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 18:07:41', '2026-03-11 18:15:37'),
(208, 'Phone', 'ahmedabad', 'samsung s21 fe', NULL, '356350642855778', '2026-03-10', 'graphite', '8/128', NULL, NULL, 'mukesh desai', '990996999', 8750.00, 0.00, 8750.00, 9500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-11 18:07:41', '2026-03-11 18:07:41'),
(209, 'Phone', 'ahmedabad', 'samsung flip 7', NULL, '350879750050950', '2026-03-10', 'black', '12/512', '2026-09-07', NULL, 'vivek ravani', '6353005577', 50000.00, 0.00, 50000.00, 53000.00, '2026-03-14', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 18:09:52', '2026-03-15 01:59:23'),
(210, 'Phone', 'ahmedabad', 'iphoone 15', NULL, '358388754584354', '2026-03-11', 'blue', '128', NULL, NULL, 'nilesh parmar mahavir mobile', '9924475886', 36000.00, 0.00, 36000.00, 37500.00, '2026-03-11', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-11 22:12:44', '2026-03-11 22:24:33'),
(211, 'Phone', 'ahmedabad', 'iphhone 12 `', NULL, '352113536130359', '2026-03-13', 'black', '64', NULL, NULL, 'kunal bhai phone wale', '8000866660', 14500.00, 0.00, 14500.00, 15500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-13 16:39:55', '2026-03-13 16:39:55'),
(212, 'Phone', 'ahmedabad', 'iphone 15 pro', NULL, '355361723571607', '2026-03-13', 'black titanium', '256', NULL, NULL, 'ifirst mobile', '9979796967', 55000.00, 0.00, 55000.00, 56000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-13 16:43:17', '2026-03-15 13:05:18'),
(213, 'Phone', 'ahmedabad', 'iphone se 2020', NULL, '356785111024820', '2026-03-12', 'red', '64', NULL, NULL, 'Ahmedabad telecom', '9978433359', 6500.00, 0.00, 6500.00, 7000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-13 17:12:26', '2026-03-13 17:12:26'),
(214, 'Phone', 'ahmedabad', 'iphone 17 pro', NULL, '351763582573562', '2026-03-12', 'cosmic orange', '256', NULL, NULL, 'Ajay chauhan fonebook', '8347521500', 108500.00, 0.00, 108500.00, 109500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-13 19:10:27', '2026-03-13 19:10:27'),
(215, 'Phone', 'ahmedabad', 'samsung s25 ultra', NULL, '352901549121351', '2026-03-12', 'jetblack', '12/256', NULL, NULL, 'Ajay chauhan fonebook', '8347521500', 82000.00, 0.00, 82000.00, 83000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-13 19:10:27', '2026-03-13 19:10:27'),
(216, 'Phone', 'ahmedabad', 'samsung z flip 7', NULL, '353072160102044', '2026-03-14', 'bue shadow', '12/256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 50000.00, 0.00, 50000.00, 51000.00, '2026-03-14', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-15 01:57:39', '2026-03-15 01:59:23'),
(217, 'Phone', 'ahmedabad', 'iphone 16', NULL, '359164499584788', '2026-03-13', 'white', '128', NULL, NULL, 'kamal', '8770020942', 40500.00, 0.00, 40500.00, 40500.00, '2026-03-15', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-15 02:52:16', '2026-03-15 03:00:44'),
(218, 'Phone', 'ahmedabad', 'iphone 13', NULL, '350852692057524', '2026-03-14', 'blue', '128', '2026-03-15', NULL, 'sheetal jigar barot', '7984214662', 19000.00, 0.00, 19000.00, 21000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-15 13:43:55', '2026-03-15 13:43:55'),
(219, 'Phone', 'ahmedabad', 'samsung a06', NULL, '350284943528089', '2026-03-14', 'black', '4/64', '2026-03-15', NULL, 'sheetal jigar barot', '7984214662', 6000.00, 0.00, 6000.00, 6500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-15 13:43:55', '2026-03-15 13:43:55'),
(220, 'Phone', 'ahmedabad', 'iphone 6', NULL, '356988067108791', '2026-03-14', 'gold', '16', NULL, NULL, 'Monubhai murtiman', '7405817545', 1800.00, 0.00, 1800.00, 2000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-15 14:29:17', '2026-03-15 14:29:17'),
(221, 'Phone', 'ahmedabad', 'samssung s23', NULL, '352772521100550', '2026-03-14', 'black', '8/256', '2026-03-15', NULL, 'Ahmedabad telecom', '9978433359', 24000.00, 0.00, 24000.00, 24500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-15 14:38:03', '2026-03-15 14:38:03'),
(222, 'Phone', 'ahmedabad', 'iphone 16e', NULL, '352638936673269', '2026-03-13', 'black', '128', '2026-08-20', NULL, 'Ahmedabad telecom', '9978433359', 33000.00, 0.00, 33000.00, 33500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-15 14:38:03', '2026-03-15 14:38:03'),
(223, 'Phone', 'ahmedabad', 'iphone 13', NULL, '354228678126805', '2026-03-13', 'blue', '256', NULL, NULL, 'Ahmedabad telecom', '9978433359', 24500.00, 0.00, 24500.00, 25000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-15 14:38:03', '2026-03-15 14:38:03'),
(224, 'Phone', 'ahmedabad', 'iphone 14', NULL, '355313405942226', '2026-03-13', 'white', '128', NULL, NULL, 'Ahmedabad telecom', '9978433359', 25500.00, 0.00, 25500.00, 26000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-15 14:38:03', '2026-03-15 14:38:03'),
(225, 'Phone', 'ahmedabad', 'iphone 12 pro max', NULL, '351732274944977', '2026-03-14', 'gold', '256', NULL, NULL, 'kamal', '8770020942', 25500.00, 0.00, 25500.00, 27000.00, '2026-03-15', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-15 20:29:41', '2026-03-15 21:03:58'),
(226, 'Phone', 'ahmedabad', 'iphone 14 pro max', NULL, '350270054929752', '2026-03-15', 'deep purple', '256', NULL, NULL, 'yash bhai', '7693949937', 43500.00, 0.00, 43500.00, 45500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-16 01:02:45', '2026-03-16 01:02:45'),
(227, 'Phone', 'ahmedabad', 'iphone 15', NULL, '354665964234365', '2026-03-15', 'blue', '128', NULL, NULL, 'yash bhai', '7693949937', 31500.00, 0.00, 31500.00, 33500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-16 01:04:31', '2026-03-16 01:04:31'),
(228, 'Phone', 'ahmedabad', 'samsung z fold 5', NULL, '355142630617380', '2026-03-15', 'icy blue', '12/256', NULL, NULL, 'mohit lalwani', '9409040194', 37000.00, 0.00, 37000.00, 38000.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-16 01:06:12', '2026-03-16 01:06:12'),
(229, 'Phone', 'ahmedabad', 'iphone 14 pro', NULL, '350056593165127', '2026-03-16', 'black', '256', NULL, NULL, 'kismat rabari', NULL, 42500.00, 0.00, 42500.00, 43500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-16 19:55:13', '2026-03-16 19:55:13'),
(230, 'Phone', 'ahmedabad', 'samsung m32', NULL, '350961873167398', '2026-03-16', 'dark blue', '4/64', NULL, NULL, 'brijesh anand', '8401482305', 3000.00, 0.00, 3000.00, 3500.00, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, '2026-03-16 19:58:54', '2026-03-16 19:58:54'),
(231, 'Phone', 'ahmedabad', 'vivo v25 pro', NULL, '868519061795639', '2026-03-17', 'blue', '8/128', NULL, NULL, 'manoj rameshbhai', '9662956777', 9000.00, 0.00, 9000.00, 9500.00, '2026-03-17', NULL, NULL, NULL, NULL, 5, 1, 0, '2026-03-17 14:33:16', '2026-03-17 20:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2025-07-29 10:16:37', '2025-07-29 10:16:37'),
(2, 'general', 'web', '2025-07-29 11:05:23', '2025-07-29 11:05:23'),
(3, 'office pc', 'web', '2025-07-30 09:25:59', '2025-07-30 09:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(52, 1),
(1, 2),
(2, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(11, 2),
(14, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(1, 3),
(5, 3),
(6, 3),
(7, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(37, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `contactno` varchar(12) DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `saleprice` double(10,2) DEFAULT NULL,
  `purchaseprice` double(10,2) DEFAULT NULL,
  `profit` double(10,2) DEFAULT NULL,
  `payment_mode` enum('Cash','Online','Credit Card') DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `document` text DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `stock_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_id` bigint(10) UNSIGNED DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_method` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `transaction_type` enum('credit','debit') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `opening_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `party_id`, `payment_date`, `payment_method`, `note`, `transaction_type`, `amount`, `opening_balance`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 12, '2025-12-30', 3, 'kismatwala fruits', 'credit', 32000.00, 0.00, 5, '2026-01-07 13:28:09', '2026-01-07 13:28:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `profile_image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Fonico', 'Fonico', '5-1766811821-fonico_mobiles.jpg', 'admin@fonico.com', NULL, '$2y$12$QWyVzOsGw5XXZEImAHmPv.aDCTbkHjRYWOupmCTuQK1WySrLVdabS', 'ZveHg5z5Bop1n7sSzfZsk24gBoqc0AmAr7ZZ0Ao5Rt899dethohHDYkjC0Ek', '2025-07-29 10:16:37', '2025-12-27 05:03:41'),
(7, 'Fonico', 'Fonico mobile', '/tmp/php4VRtgJ', 'admin@gmail.com', NULL, '$2y$12$m6twYiwhyX8FOBm01mpNs.vUhPE8VwM88QPgx8DYxRcufBu7LrDWG', 'eVZfHsvWjym8iCIxL38oPvgUc0HDvYkLvc8hH6WY68E0RnVbMpyCdlMHPG7m', '2025-07-30 09:27:02', '2025-12-27 09:45:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `day_opening_balances`
--
ALTER TABLE `day_opening_balances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `day_opening_balances_date_unique` (`date`);

--
-- Indexes for table `dummyinvoice`
--
ALTER TABLE `dummyinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_no_unique` (`invoice_no`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_payment_method_foreign` (`payment_method`),
  ADD KEY `transactions_party_id_foreign` (`party_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `day_opening_balances`
--
ALTER TABLE `day_opening_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dummyinvoice`
--
ALTER TABLE `dummyinvoice`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_payment_method_foreign` FOREIGN KEY (`payment_method`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
