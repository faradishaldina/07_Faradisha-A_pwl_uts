-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 04:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudlv8`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori_barang` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode_barang`, `nama_barang`, `kategori_barang`, `harga`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'PRD001', 'Indomie', 'Makanan', 3000, 100, '2023-04-09 22:54:34', NULL),
(3, 'PRD002', 'Pocari Sweat', 'minuman', 6000, 50, '2023-04-10 15:46:02', '2023-04-10 15:46:02'),
(4, 'PRD003', 'Silverqueen', 'snack', 12500, 45, '2023-04-10 15:47:14', '2023-04-10 15:47:14'),
(5, 'PRD004', 'Beras', 'sembako', 15000, 10, '2023-04-10 16:06:09', '2023-04-10 16:06:09'),
(6, 'PRD005', 'Bubur Instan', 'makanan', 5000, 20, '2023-04-11 08:31:30', '2023-04-11 08:31:30'),
(7, 'PRD006', 'Minyak Goreng', 'sembako', 20000, 25, '2023-04-12 15:15:12', '2023-04-12 15:15:12'),
(8, 'PRD007', 'Tepung Terigu', 'sembako', 17000, 20, '2023-04-12 15:38:12', '2023-04-12 15:38:12'),
(9, 'PRD008', 'Telur', 'sembako', 3000, 50, '2023-04-12 15:40:39', '2023-04-12 15:59:45'),
(10, 'PRD009', 'Sarden Kaleng', 'makanan', 20000, 20, '2023-04-12 15:41:41', '2023-04-12 15:41:41'),
(11, 'PRD010', 'Ultra Milk', 'minuman', 5000, 30, '2023-04-12 15:42:41', '2023-04-12 15:42:41'),
(12, 'PRD011', 'Air Mineral', 'minuman', 3000, 30, '2023-04-12 15:48:37', '2023-04-12 15:48:37'),
(13, 'PRD012', 'Bengbeng', 'snack', 2500, 20, '2023-04-12 15:49:23', '2023-04-12 15:49:23'),
(14, 'PRD013', 'Roti Aoka', 'makanan', 2500, 30, '2023-04-12 15:51:29', '2023-04-12 15:51:29'),
(15, 'PRD014', 'Sari Roti Tawar', 'makanan', 13000, 10, '2023-04-12 15:52:45', '2023-04-12 15:52:45'),
(16, 'PRD015', 'Milku', 'minuman', 3000, 20, '2023-04-12 15:53:43', '2023-04-12 15:53:43'),
(17, 'PRD016', 'Chocolatos', 'snack', 1000, 50, '2023-04-12 15:54:14', '2023-04-12 15:54:14'),
(18, 'PRD017', 'Oreo', 'snack', 2000, 40, '2023-04-12 15:54:47', '2023-04-12 15:54:47'),
(19, 'PRD018', 'Keripik Sukun', 'snack', 6000, 15, '2023-04-12 15:55:33', '2023-04-12 15:55:33'),
(20, 'PRD019', 'Pop Mie Update', 'makanan', 5000, 25, '2023-04-12 15:57:03', '2023-04-12 15:57:17'),
(21, 'PRD020', 'Kopi ABC', 'minuman', 3000, 20, '2023-04-12 16:01:25', '2023-04-12 16:01:25'),
(22, 'PRD021', 'You C 1000 Update', 'minuman', 30000, 15, '2023-04-12 17:18:15', '2023-04-12 17:19:32');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_10_152904_create_barangs_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
