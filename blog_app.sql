-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 11:47 AM
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
-- Database: `blog_app`
--

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
(5, '2024_03_09_045146_create_sessions_table', 1),
(6, '2024_03_10_141519_create_posts_table', 1);

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
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'c483d042a6cd7f3ff73eaed1aca1e271c132ed191fc2a209757e9ccb6d5eb609', '[\"*\"]', NULL, '2025-03-04 10:36:39', '2025-02-17 07:43:43', '2025-02-17 07:43:43'),
(2, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', '9cc6698d6966b9597bd0f62958cfacb133749bce87f4fae2d5077be83255980b', '[\"*\"]', NULL, '2025-03-04 10:36:39', '2025-02-23 09:03:15', '2025-02-23 09:03:15'),
(3, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', '1f4a08cb30b78f14b9515bf57a326bbbeaa0bd375134079c9467746dea47976d', '[\"*\"]', NULL, '2025-03-04 10:36:39', '2025-02-23 09:09:39', '2025-02-23 09:09:39'),
(4, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', '8e65094a8510389dcbd5e8c4e57d3995c884a7fe7f2dcce6755473ca57c39d61', '[\"*\"]', NULL, '2025-03-04 10:36:39', '2025-02-25 02:20:21', '2025-02-25 02:20:21'),
(5, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'a141f690b9708ca5cef6755985a2207267928d289aea779a676d3880b39a1d1b', '[\"*\"]', '2025-02-25 02:22:47', '2025-03-04 10:36:39', '2025-02-25 02:21:01', '2025-02-25 02:22:47'),
(6, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'ae7ffa1c11b49010c83726b785db0685514ccb7e8cb7a24337201abb084d4b24', '[\"*\"]', '2025-02-25 02:30:51', '2025-03-04 10:36:39', '2025-02-25 02:26:29', '2025-02-25 02:30:51'),
(7, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'd10f19da15a1fdc9534b9c0d45deb75e09ba6adb91fd8a22a2d6e8523a59c48a', '[\"*\"]', NULL, '2025-03-04 10:36:39', '2025-02-25 02:34:23', '2025-02-25 02:34:23'),
(8, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', '92c048d4f4f406311a924266df3ad328a859514de9d0c0950e2b2ce1ff323c6b', '[\"*\"]', '2025-02-25 02:35:36', '2025-03-04 10:36:39', '2025-02-25 02:34:37', '2025-02-25 02:35:36'),
(9, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', '1926ba7363e46d2388c9187f83e97188b655f7aad9a5f9fffb4b24a939838b12', '[\"*\"]', '2025-02-25 02:38:08', '2025-03-04 10:36:39', '2025-02-25 02:38:03', '2025-02-25 02:38:08'),
(10, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', '82357ba4edcfa3a9acd544b072be62e90ce56e0c5dd34bf49ffe734a7a9da44e', '[\"*\"]', '2025-03-01 02:53:51', '2025-03-04 10:36:39', '2025-02-25 02:38:50', '2025-03-01 02:53:51'),
(11, 'App\\Models\\User', 1, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'dd710e6399fcf90b0d1a1459e887e9a04d95c3f3c8c9acad13278b2ce9346de0', '[\"*\"]', '2025-03-02 08:52:42', '2025-03-04 10:36:39', '2025-03-01 12:49:36', '2025-03-02 08:52:42'),
(12, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'b872d32caf586a1f0af2d7a76d8d9a04096a9c52915732b5d002a2d1ef0aa86e', '[\"*\"]', '2025-03-02 11:30:38', '2025-03-04 10:36:39', '2025-03-02 11:30:37', '2025-03-02 11:30:38'),
(13, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'db4c517ea7019e10afeb5619922290a1669883387bce9c9cfe6e4ac74d860ca6', '[\"*\"]', '2025-03-02 11:34:42', '2025-03-04 10:36:39', '2025-03-02 11:34:42', '2025-03-02 11:34:42'),
(14, 'App\\Models\\User', 2, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', 'e1e63ccb640d9e0c128a2388b55064102e4a710f8fc3785109de99d79196b06a', '[\"*\"]', '2025-03-02 11:42:52', '2025-03-04 10:36:39', '2025-03-02 11:42:12', '2025-03-02 11:42:52'),
(15, 'App\\Models\\User', 3, 'qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=qQKPjndxljuYQi/POiXJa8O19nVO/vTf/DpXO541g=', '08384aad8b1fabb8d5333a309d1336b34e40cec013493bcb5b0850bb9dcd38b6', '[\"*\"]', '2025-03-04 08:37:52', '2025-03-04 10:36:51', '2025-03-04 08:36:51', '2025-03-04 08:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post_content`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'What is JavaScript', 'Js is Object ........................', 'http://127.0.0.1:8000/storage/images/1740727487.jpg', 'what-is-javascript-MHUOXQ1740635312', '2025-02-25 03:57:17', '2025-02-28 05:24:49'),
(3, 'What is Pinia', 'Pinia is State management', 'http://127.0.0.1:8000/storage/images/1740727511.jpg', 'what-is-pinia-W7BLH81740463070', '2025-02-25 03:57:50', '2025-02-28 05:25:11'),
(7, 'How AI is Transforming Our Daily Lives', '<h3><strong>🧠 Introduction</strong></h3><p>&nbsp;</p><p>Artificial Intelligence (AI) is no longer just a futuristic concept—it’s already part of our daily lives. From smart assistants to personalized recommendations, AI is shaping the way we interact with technology. But how exactly is AI transforming our world? Let’s dive in!</p><p>&nbsp;</p><p>&nbsp;</p><h3><strong>📱 1. AI in Smartphones</strong></h3><p>&nbsp;</p><p>Your smartphone is packed with AI-powered features:<br>✅ <strong>Voice Assistants</strong> – Siri, Google Assistant, and Alexa use AI to understand and respond to commands.<br>✅ <strong>Camera Enhancements</strong> – AI improves image quality, applies filters, and even suggests the best shot.<br>✅ <strong>Predictive Text &amp; Autocorrect</strong> – Helps you type faster and more accurately.</p><p>&nbsp;</p><h3><strong>🛍️ 2. AI in Shopping &amp; Recommendations</strong></h3><p>&nbsp;</p><p>Ever wondered how Netflix suggests movies or Amazon recommends products? That’s AI at work!<br>✅ <strong>Personalized Shopping</strong> – AI analyzes your preferences and browsing history to suggest products.<br>✅ <strong>Chatbots for Customer Support</strong> – Many websites use AI chatbots to assist customers 24/7.</p><p>&nbsp;</p><h3><strong>🚗 3. AI in Transportation</strong></h3><p>&nbsp;</p><p>✅ <strong>Self-Driving Cars</strong> – Companies like Tesla are using AI for autonomous driving.<br>✅ <strong>Smart Traffic Systems</strong> – AI helps reduce congestion by analyzing traffic patterns.<br>✅ <strong>Ride-Sharing Apps</strong> – Uber &amp; Lyft use AI for efficient route optimization.</p><p>&nbsp;</p><h2><strong>🔬 4. AI in Healthcare</strong></h2><p>&nbsp;</p><p>✅ <strong>Disease Detection</strong> – AI can analyze medical images to detect diseases like cancer early.<br>✅ <strong>Virtual Health Assistants</strong> – AI-powered chatbots provide instant medical advice.<br>✅ <strong>Drug Discovery</strong> – AI accelerates research to find new medicines.</p><p>&nbsp;</p><p>way we live, work, and interact with the world. As technology advances, we can expect even more AI-driven innovations that will make our lives easier and more efficient.</p><p>&nbsp;</p><p>🌟 <strong>What are your thoughts on AI? Let’s discuss in the comments!</strong></p>', 'http://127.0.0.1:8000/storage/images/1740728283.jpg', 'how-ai-is-transforming-our-daily-lives-W9gtxE1740901453', '2025-02-28 05:36:56', '2025-03-02 05:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ben', 'ben@gmail.com', NULL, '$2y$10$n65KE4JaFkl58Rz3aIfeFe7pTc/dS7lOlNJG78je.IEm8QY0SaII.', NULL, '2025-02-17 07:42:33', '2025-02-17 07:42:33'),
(2, 'ben', 'ben12@gmail.com', NULL, '$2y$10$qEYa5vIjLZ6P0oYnPs9.WePXVAbTse/rmZpmp2CLiP9Rdntobh0VO', NULL, '2025-02-23 08:55:44', '2025-02-23 08:55:44'),
(3, 'Bienfait', 'bienfait@gmail.com', NULL, '$2y$12$sLJ4igq9.51yLWlEERJXse8EilVBlKz4pNZnFTr.v4c3sbtZ6h74e', NULL, '2025-03-04 08:28:57', '2025-03-04 08:28:57');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
