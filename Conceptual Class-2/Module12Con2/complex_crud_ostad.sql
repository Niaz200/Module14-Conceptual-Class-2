-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 01:34 PM
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
-- Database: `complex_crud_ostad`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_30_172757_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `status` varchar(255) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `category`, `tags`, `status`, `featured_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'Vitae tempore dicta facere blanditiis vitae et cum.', 'Veniam quos placeat dolores mollitia minus provident quia molestiae. Ea perferendis assumenda totam voluptas autem beatae consequatur. Omnis ea magni eum non.', 'Fashion', '[\"PHP\",\"Laravel\",\"HTML\"]', 'Published', 'https://via.placeholder.com/640x480.png/0099bb?text=placeat', NULL, '2024-10-16 09:11:04', '2024-10-16 11:12:37'),
(5, 'Eius laudantium quasi quia ducimus nesciunt.', 'Nam in nisi laborum recusandae fuga. Rerum quibusdam odio nulla rem. Vel quis vero inventore minima nesciunt ea voluptatem aut.', 'Programming', '[\"PHP\",\"Laravel\",\"HTML\"]', 'Published', 'https://via.placeholder.com/640x480.png/009955?text=dolor', NULL, '2024-10-16 09:11:04', '2024-10-16 09:11:04'),
(6, 'Quia praesentium laudantium est accusamus quo placeat quibusdam illo.', 'Officiis repellat dolores quos enim. Beatae autem aut nulla eum.', 'technology', NULL, 'published', 'https://via.placeholder.com/640x480.png/007711?text=et', NULL, '2024-10-16 09:11:04', '2024-10-18 07:15:48'),
(7, 'Nemo qui impedit laborum sapiente distinctio voluptatem quia.', 'Omnis sapiente ipsum et aut numquam ipsa eos. Nulla rerum maiores sit non iure delectus dolor. Aspernatur qui quas sit et natus aliquid iure blanditiis.', 'Fashion', '[\"PHP\",\"Laravel\",\"HTML\"]', 'Published', 'https://via.placeholder.com/640x480.png/00ddaa?text=quaerat', NULL, '2024-10-16 09:11:04', '2024-10-16 09:11:04'),
(8, 'Officia nulla ut qui magni accusamus.', 'Ut autem voluptas doloribus voluptatem magni. Voluptas ipsa ut animi nulla iure ut aspernatur. Et illum maxime omnis voluptatem.', 'Fashion', '[\"PHP\",\"Laravel\",\"HTML\"]', 'Published', 'https://via.placeholder.com/640x480.png/0011aa?text=reprehenderit', NULL, '2024-10-16 09:11:04', '2024-10-16 09:11:04'),
(9, 'Voluptas quo consectetur iste reiciendis.', 'Molestiae accusamus quia esse omnis et nihil voluptatem. Suscipit illum reiciendis adipisci placeat qui. Blanditiis sit ducimus tenetur id aut mollitia neque. Harum deleniti esse totam aliquam et.', 'Programming', '[\"PHP\",\"Laravel\",\"HTML\"]', 'Published', 'https://via.placeholder.com/640x480.png/009966?text=enim', NULL, '2024-10-16 09:11:04', '2024-10-16 09:11:04'),
(10, 'Facilis eligendi est praesentium.', 'Est quas eos pariatur aspernatur debitis. Ratione quo et reiciendis. Deleniti id ut dolores vitae corrupti modi ut iure.', 'Programming', '[\"PHP\",\"Laravel\",\"HTML\"]', 'Published', 'https://via.placeholder.com/640x480.png/0077cc?text=laudantium', NULL, '2024-10-16 09:11:04', '2024-10-16 09:11:04');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
