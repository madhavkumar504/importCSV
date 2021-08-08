-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 08, 2021 at 08:28 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_import_export`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zita McDermott Jr.', 'kreiger.sandy@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nsHCXolwtK', '2021-08-07 09:33:09', '2021-08-07 09:33:09'),
(2, 'Mr. Rollin Nienow I', 'jakayla09@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rbjz8QMnZQ', '2021-08-07 09:33:09', '2021-08-07 09:33:09'),
(3, 'Emilie Metz', 'gustave.watsica@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tdpIwlLok2', '2021-08-07 09:33:09', '2021-08-07 09:33:09'),
(4, 'Roxane Oberbrunner', 'karson16@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'msKx213Z5K', '2021-08-07 09:33:09', '2021-08-07 09:33:09'),
(5, 'Kimberly Barton', 'koch.josiane@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G1RISIqqtc', '2021-08-07 09:33:09', '2021-08-07 09:33:09'),
(6, 'Dee Klein', 'oren.kutch@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OqgDSNUuiF', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(7, 'Yvette Kozey', 'lisa69@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yv48TVoXtz', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(8, 'Helene Kiehn', 'adella.schmeler@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zYzL6mcDw3', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(9, 'Raheem Leuschke', 'klein.cynthia@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qv8qxqRSPG', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(10, 'Prof. Einar Collins', 'block.otis@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nl5EeiwpYu', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(11, 'Kaia Tillman', 'zachariah.hamill@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'utBEPmg21f', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(12, 'Heath Stiedemann', 'matilda20@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A9PHMkAEgx', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(13, 'Dr. Effie Jacobson DVM', 'ruecker.shaina@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lKHgVKFg5i', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(14, 'Easter Boyer', 'xmccullough@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kDJY4Ko5p3', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(15, 'Mrs. Aracely Cummerata Jr.', 'sanford.maxwell@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '56T31kEUdo', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(16, 'Fredy Cartwright', 'magali03@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0Nq0bPHYfd', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(17, 'Dock Cummerata', 'maritza.schaden@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'miAWFyV7Oa', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(18, 'Ms. Dahlia Aufderhar I', 'maxine.bashirian@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RraEAY6Txz', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(19, 'Zachariah Dach', 'equitzon@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0jiyfflPEf', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(20, 'Dr. Kitty Reichert DVM', 'teagan48@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KsvT5dL0vm', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(21, 'Wyatt Littel', 'spencer.nelle@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JusaOgNFwU', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(22, 'Seamus Connelly', 'amari89@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iFx0Sb4Xue', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(23, 'Prof. Noel Raynor', 'dave.steuber@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nGDfRKSXP4', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(24, 'Kaden Vandervort DDS', 'ned.gorczany@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aEKx6fAT3K', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(25, 'Darrick Cremin MD', 'perry10@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AXSxhPVQaD', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(26, 'Mrs. Mona Crooks Sr.', 'tamia81@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1gc46oLNGV', '2021-08-07 09:33:10', '2021-08-07 09:33:10'),
(27, 'Creola Satterfield I', 'olaf54@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5pCdIackhd', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(28, 'Billie Konopelski', 'terrill70@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QGCtfZuj75', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(29, 'Lelah Treutel', 'powlowski.quentin@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tJdSHxss8O', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(30, 'Dorris Becker', 'sigurd.nikolaus@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XAypaXLxxw', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(31, 'Lonzo Spinka', 'veum.mertie@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kLQmhQsT6Q', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(32, 'Tremaine Hackett', 'tom96@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iICGbyKL9T', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(33, 'Yazmin Rodriguez', 'jon67@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kQLtjBNxTp', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(34, 'Mr. Nolan Satterfield', 'jessyca.ward@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1CPdhGVS0v', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(35, 'Stuart Cremin', 'ziemann.hillard@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7b0iGUpQ2K', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(36, 'Rozella Murphy', 'nyasia.simonis@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LBuTD7tNPK', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(37, 'Mrs. Tatyana Ruecker', 'sophia.jacobson@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IJJeSu622G', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(38, 'Angelica Price', 'oberbrunner.giovanna@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e65IQALDw6', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(39, 'Danial Rippin', 'franecki.idella@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MxWxfI45le', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(40, 'Hardy Gorczany II', 'kolby.rath@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OZfMZJv5El', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(41, 'Dr. Keshaun Leuschke I', 'cdouglas@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uKd0i7Vel8', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(42, 'Koby Swift', 'nnolan@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DUlewBo1BH', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(43, 'Emerson Breitenberg DDS', 'kuhlman.calista@example.org', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EWTb0Jg0zG', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(44, 'Prof. Rahsaan Beer', 'olson.novella@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UyQJPo0APU', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(45, 'Keira McLaughlin', 'gaylord.elvie@example.com', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wMeCtah8ji', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(46, 'Keegan Daugherty DVM', 'ruecker.rigoberto@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wj7Kg7mboL', '2021-08-07 09:33:11', '2021-08-07 09:33:11'),
(47, 'Eulalia Zieme', 'cole46@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zrGNEIwE54', '2021-08-07 09:33:12', '2021-08-07 09:33:12'),
(48, 'Marjolaine Mayer', 'hauck.werner@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uHGiw4l0mj', '2021-08-07 09:33:12', '2021-08-07 09:33:12'),
(49, 'Alanis Mertz', 'jace01@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YPMQPqQsnf', '2021-08-07 09:33:12', '2021-08-07 09:33:12'),
(50, 'Mary Stark', 'colten62@example.net', '2021-08-07 09:33:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rn0LDHlYs9', '2021-08-07 09:33:12', '2021-08-07 09:33:12');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
