-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 04:19 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larajobprac`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_08_041853_create_profiles_table', 2),
(4, '2019_12_08_044010_create_posts_table', 3),
(5, '2019_12_08_044438_add_user_id_to_posts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'updated title', 'updated body', '2019-12-07 23:07:26', '2019-12-07 23:22:04'),
(2, 2, 'update title', 'updated body', '2019-12-07 23:10:18', '2019-12-07 23:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 2, '63695 Renner Shoals\nGilesfurt, GA 69553', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(2, 14, '29090 Rachael Via\nSchadenstad, ME 44008-6167', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(3, 20, '13687 Shakira Oval\nLake Joshhaven, CA 21118', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(4, 5, '7762 Jessika Freeway\nDickensborough, MA 53564-6735', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(5, 24, '7439 Koepp Fields\nNorth Ceasar, OH 45270-8003', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(6, 18, '73635 Cassin Summit\nWest Briana, CT 56264-3622', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(7, 14, '2955 Anissa Village Apt. 493\nKeelingborough, NY 09086', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(8, 9, '77830 Spinka Loaf Apt. 037\nMalikamouth, CT 02696', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(9, 7, '230 Ritchie Shores Apt. 803\nAlbertamouth, AL 83429-6794', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(10, 22, '893 Joanny Brooks Suite 283\nPort Novella, MI 27750', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(11, 6, '17790 Dejon Center Apt. 370\nSouth Julian, UT 81967', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(12, 17, '73928 Lang Loaf\nWest Diamondland, MD 95602-8432', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(13, 3, '8662 Ratke Wall\nNienowville, KY 16649-6756', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(14, 3, '6260 Franecki Expressway\nSouth Sebastianbury, KS 39566-7992', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(15, 11, '621 Beahan Trail\nNew Tonitown, CO 12086-2966', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(16, 3, '99302 Nadia Club Suite 114\nGiannitown, NH 84027-0211', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(17, 12, '78002 Krajcik Orchard\nNew Gudrun, VT 34361-0571', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(18, 18, '916 Hansen Extension Apt. 643\nEast Justen, NC 22296-7450', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(19, 25, '6650 Spinka Isle Apt. 818\nWest Cristopherborough, ID 14255-0839', '2019-12-07 20:31:58', '2019-12-07 20:31:58'),
(20, 3, '89527 DuBuque Station Apt. 051\nLake Alvahshire, WI 24403-8964', '2019-12-07 20:31:58', '2019-12-07 20:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ryan Michael', 'ryan@email.com', NULL, '$2y$10$LOwdIa4mxURlYxOMud5DI.wdaEsspRlmjd76b0YlsFKPwB2mGW8xy', NULL, '2019-12-07 18:26:42', '2019-12-07 18:26:42'),
(2, 'one', 'one@email.com', NULL, '$2y$10$qfzxqx.C68vJX2o1SGMPEe5l6NNMBsQ6iBcenitQFYly8pLlzC2nS', NULL, '2019-12-07 20:07:19', '2019-12-07 20:07:19'),
(3, 'two', 'two@email.com', NULL, '$2y$10$yyLFwiGFl66a84zLzSpqeu8G9QHqHux7H34Zftp6qr321GtfTOJ/2', NULL, '2019-12-07 20:07:54', '2019-12-07 20:07:54'),
(4, 'three', 'three@email.com', NULL, '$2y$10$PQfDgV3C/eVoY8euKLqboueriJQlMeSjosLR2C6PHmlFOoygMR3n2', NULL, '2019-12-07 20:08:14', '2019-12-07 20:08:14'),
(5, 'four', 'four@email.com', NULL, '$2y$10$1g9FHTzV1BbX.zOy4aBfCefHaxEjbLS1aMsA..yJgErFI4M.c8eCq', NULL, '2019-12-07 20:08:28', '2019-12-07 20:08:28'),
(6, 'five', 'five@email.com', NULL, '$2y$10$ByexxpmMgpRlA0B6jzr8s.gPl8a7Rz6U1HXcA51cl6AE/udJ9dRE.', NULL, '2019-12-07 20:08:51', '2019-12-07 20:08:51'),
(7, 'six', 'six@email.com', NULL, '$2y$10$pfbrQV6YXYfuvHUlcCQqlexIPtRPoPbywK0m8Soni1IeNhupD44yq', NULL, '2019-12-07 20:09:10', '2019-12-07 20:09:10'),
(8, 'seven', 'seven@email.com', NULL, '$2y$10$NO4uRFGAUpMdY5FUBQi7QeUQRP2mRv9eRzSUbZ9lHp0UNUzMeh3fS', NULL, '2019-12-07 20:09:35', '2019-12-07 20:09:35'),
(9, 'Parker Trantow', 'shields.emilio@example.com', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S06fpBnRSC', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(10, 'Sadie Davis V', 'zthiel@example.com', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3KPxazBVn8', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(11, 'Verlie Shields', 'osporer@example.com', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3Wo2W9TkpE', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(12, 'Arely McCullough', 'gene27@example.com', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YnD45x9PF8', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(13, 'Ms. Ofelia Beatty Sr.', 'pacocha.emily@example.com', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZZMhvJpUBb', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(14, 'Yoshiko Steuber DDS', 'luettgen.yoshiko@example.net', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PsX6GIJjJr', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(15, 'Dr. Connor Kautzer', 'kristy48@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sEF16lKTSC', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(16, 'Mr. Jordan Osinski', 'heaney.eusebio@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BOVPOuPOoL', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(17, 'Helga Rosenbaum', 'maureen.windler@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3nWzxdTzBC', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(18, 'Dr. Jeromy Effertz DVM', 'natalia.feeney@example.net', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u2c6Jqw2mO', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(19, 'Jude Goldner', 'mertz.lindsey@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4oxNthMBVw', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(20, 'Sigurd Batz PhD', 'lenora71@example.net', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ukcxw6ycpv', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(21, 'Ms. Tia Glover Sr.', 'lvon@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mKaPGxMjDl', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(22, 'Ezekiel Hauck', 'jacobi.sheridan@example.com', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k269zj5dnN', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(23, 'Dr. Betsy Fadel MD', 'makayla.lebsack@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W8u6eNa2Fq', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(24, 'Velma Hegmann II', 'sauer.antonetta@example.net', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nhSVfyfNhr', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(25, 'Daphney Koss', 'misty.kerluke@example.net', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zKrmIBRntH', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(26, 'Dr. Justina Mitchell', 'elissa37@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ENYFMajnJX', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(27, 'Chelsie Vandervort I', 'oconnell.adolphus@example.org', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z2kkKHmAvr', '2019-12-07 20:31:57', '2019-12-07 20:31:57'),
(28, 'Lorna Johnston', 'annabell55@example.com', '2019-12-07 20:31:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kcq7XDqn5f', '2019-12-07 20:31:57', '2019-12-07 20:31:57');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
