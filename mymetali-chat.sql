-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 02:57 PM
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
-- Database: `mymetali-chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_favorites`
--

INSERT INTO `ch_favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
('3f591555-9ba5-4bba-b5c7-b73fbed5cabf', 1, 3, '2024-01-13 07:21:37', '2024-01-13 07:21:37'),
('65a86e70-ec9e-493d-95fc-cca7fab90fe1', 2, 1, '2024-01-12 07:16:32', '2024-01-12 07:16:32'),
('67dc210a-20de-43c9-9c36-67218519db91', 1, 2, '2024-01-12 07:13:31', '2024-01-12 07:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('040bb5de-022d-4cdc-82e7-f35683c6f9a7', 3, 1, 'hello', NULL, 1, '2024-01-13 00:50:59', '2024-01-13 00:51:00'),
('08c99715-54c6-45ed-9f65-2578ee493d95', 1, 1, 'hi', NULL, 1, '2024-01-12 07:01:58', '2024-01-12 07:02:01'),
('0aff6500-ece2-4999-bb4a-b9d64d9ac54b', 1, 2, 'HELLO', NULL, 0, '2024-01-13 00:31:03', '2024-01-13 00:31:03'),
('0bffab88-1983-4e07-be28-e8480c51854e', 2, 1, 'bose asi', NULL, 1, '2024-01-12 06:41:18', '2024-01-12 06:41:19'),
('0d02763b-3927-44bf-bdb3-d60436bcdeaf', 2, 1, 'hi', NULL, 1, '2024-01-12 08:49:32', '2024-01-12 08:49:33'),
('22358b77-a4f2-408f-b09a-56af7d88bc2f', 2, 1, 'tnq', NULL, 1, '2024-01-12 09:06:58', '2024-01-12 09:06:59'),
('23c0fac4-4a45-46db-bdfa-00751c4a1e4a', 1, 3, '🥰😍🤩', NULL, 1, '2024-01-13 01:00:34', '2024-01-13 01:00:35'),
('2c533433-3ca4-41d2-a757-77b5dea103ec', 3, 1, '', '{\"new_name\":\"8a34940e-b8f9-4e07-b759-7f90c24cb64c.jpg\",\"old_name\":\"photo3.jpg\"}', 1, '2024-01-13 01:00:59', '2024-01-13 01:01:00'),
('3619426d-3295-475f-a91e-61e3ba81d17a', 3, 1, 'wow', NULL, 1, '2024-01-13 00:51:41', '2024-01-13 00:51:43'),
('482e04ff-3ac7-4179-8255-8ffbad9b89b1', 1, 2, 'wow', NULL, 1, '2024-01-12 09:06:53', '2024-01-12 09:06:54'),
('4c3500a7-332c-4f8f-9673-c89f59bbab15', 3, 1, 'hello', NULL, 1, '2024-01-13 01:00:23', '2024-01-13 01:00:24'),
('4ef92047-1cd3-4de2-a3e3-f8ff7d3c45db', 2, 1, 'hello', NULL, 1, '2024-01-12 06:41:06', '2024-01-12 06:41:07'),
('524ab0eb-4279-4fb2-8fad-b14da131f1a2', 1, 2, 'chill', NULL, 1, '2024-01-12 08:49:52', '2024-01-12 08:49:53'),
('57d88052-1bd3-4642-a4f2-51e7de204f41', 1, 3, 'hi', NULL, 1, '2024-01-13 00:50:47', '2024-01-13 00:50:49'),
('59357870-a732-4d18-a184-fa221deaba12', 1, 3, '', '{\"new_name\":\"e49e5404-186d-4bf9-a9c5-47a8eabc472d.jpg\",\"old_name\":\"photo1.jpg\"}', 1, '2024-01-13 00:51:34', '2024-01-13 00:51:36'),
('5b2c392c-5dc3-4faa-b40a-d6f02e18f544', 1, 3, 'hi', NULL, 1, '2024-01-13 07:21:30', '2024-01-13 07:47:04'),
('824be52f-fc85-4e96-88b3-674fb1395a29', 3, 1, 'hello', NULL, 1, '2024-01-13 07:47:09', '2024-01-13 07:47:10'),
('853a67cd-86d1-4ea9-b8e0-2b752e8bb540', 1, 3, 'ki kro', NULL, 1, '2024-01-13 07:47:14', '2024-01-13 07:47:15'),
('8fe563f0-9f53-4fa7-ab76-b71926ae7f62', 2, 1, 'ki kro', NULL, 1, '2024-01-12 08:49:48', '2024-01-12 08:49:49'),
('94f7fd0d-3dae-481d-b7ba-eb78e0dfd1c5', 1, 2, 'go', NULL, 1, '2024-01-12 09:07:06', '2024-01-12 09:07:07'),
('98155946-5c8d-4c06-9683-698953590c23', 2, 1, '', '{\"new_name\":\"0765a28f-4dba-40fd-acda-a501a9e71f0d.png\",\"old_name\":\"img04.png\"}', 1, '2024-01-12 06:43:19', '2024-01-12 06:43:22'),
('a52b9c06-40c7-4310-be00-4c898c645dca', 1, 2, 'hello', NULL, 1, '2024-01-12 08:49:42', '2024-01-12 08:49:43'),
('bc87225b-0a61-4335-8934-99366dc03235', 3, 1, 'chil kori', NULL, 1, '2024-01-13 07:47:23', '2024-01-13 07:47:24'),
('c5edb99b-cd8c-4a8d-9238-c41e3e8e2fac', 2, 1, 'ok', NULL, 1, '2024-01-12 09:07:03', '2024-01-12 09:07:03'),
('e7330dbd-d9bb-4283-96b5-5a470e2d7398', 1, 3, 'hi', NULL, 1, '2024-01-13 01:00:14', '2024-01-13 01:00:15'),
('ece9ace6-11f1-436c-be01-6eec3b1392e9', 1, 2, 'wow', NULL, 1, '2024-01-12 06:43:37', '2024-01-12 06:43:40'),
('f424e404-aa49-4191-8b68-b0cd801a10af', 1, 2, 'ki kro', NULL, 1, '2024-01-12 06:41:13', '2024-01-12 06:41:13'),
('f9e9260e-caed-48c3-9311-4f670a661556', 1, 2, 'hi', NULL, 1, '2024-01-12 06:40:29', '2024-01-12 06:40:45');

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
(5, '2024_01_11_999999_add_active_status_to_users', 1),
(6, '2024_01_11_999999_add_avatar_to_users', 1),
(7, '2024_01_11_999999_add_dark_mode_to_users', 1),
(8, '2024_01_11_999999_add_messenger_color_to_users', 1),
(9, '2024_01_11_999999_create_chatify_favorites_table', 1),
(10, '2024_01_11_999999_create_chatify_messages_table', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'Md Anikul Islam', 'anik@gmail.com', NULL, '$2y$12$N/iZSqxk4.Xfka3k3JrzNOFrZhF5Fu2qlyr2HBWusUBEay/lYX4fS', NULL, NULL, '2024-01-13 07:48:07', 0, '28314cb6-a833-4112-b718-ea733f0f34fe.png', 0, '#00BCD4'),
(2, 'Masuka Nasrin Pinki', 'pinki@gmail.com', NULL, '$2y$12$aM42YlL4cnnMMTJZMwj8JeHF2JYCPhddrSH/TGIc07XSg18rzw/Cm', NULL, NULL, '2024-01-12 09:07:15', 0, 'acd4a3bc-3140-42da-bb2c-3a0b50dc394c.png', 1, NULL),
(3, 'Manna Islam', 'manna@gmail.com', NULL, '$2y$12$OCjcwgGQI5XhqSB4SfsWNOXxjSrfz7REqw3oXmXMkz0WdcDVWANT.', NULL, NULL, '2024-01-13 07:47:58', 0, 'e71a07a4-ec1f-4781-be5f-71842c524cf7.jpg', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
