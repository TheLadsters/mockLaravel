-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2023 at 01:22 PM
-- Server version: 8.0.33-0ubuntu0.20.04.2
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mock_translation_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` int NOT NULL,
  `channel_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_conversations`
--

CREATE TABLE `deleted_conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `conversation_id` int NOT NULL,
  `users_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_messages`
--

CREATE TABLE `deleted_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversation_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `message_type` int NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversation_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `message_type` int NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `guid`, `conversation_id`, `sender_id`, `message_type`, `message`, `created_at`, `deleted_at`) VALUES
(1, 'Deserunt a dignissimos dolores quia reprehenderit molestiae. Id sit laudantium earum qui ut ratione facilis. Numquam corrupti deleniti ullam commodi possimus facere. Quo amet sunt sunt beatae deleniti.', 2, 2, 0, 'Non quod quaerat voluptatem itaque in ad. Non cumque blanditiis minus perferendis. Consequuntur atque repudiandae voluptatem eos est quia. Modi quis dolores suscipit quo quisquam dolorum.', '2023-05-19 00:00:00', NULL),
(2, 'Exercitationem soluta ex numquam nulla aut. Eos labore sed magni facere qui deserunt ipsum. Repudiandae necessitatibus assumenda dolores magnam saepe. Molestias ut dolores earum.', 1, 2, 2, 'Similique ducimus explicabo et quia velit. Voluptatem in voluptatem esse sint. Numquam ut a in inventore earum quam.', '2023-05-28 00:00:00', NULL),
(3, 'Facere sit similique vero incidunt rerum cum deleniti. Fuga eaque accusamus iste impedit at minus. Et placeat nihil illo quae. Ut qui delectus tempora et vel assumenda aspernatur.', 1, 1, 2, 'In dicta ducimus officiis repellendus nemo. Laborum voluptatem autem aut autem doloremque. Nam facilis quos id unde fuga est possimus vel. Aut reiciendis et dolores voluptatem minima.', '2023-05-30 00:00:00', NULL),
(4, 'Sit et quas perferendis nisi. Sunt ab sit cumque libero voluptates. Magnam sit quas omnis aut. Facere temporibus tempore modi ut. Cupiditate et sint odit dicta voluptatem voluptatem. Modi eos dolorem vitae impedit. Cum excepturi et tempora ut.', 1, 1, 0, 'Qui repudiandae vitae id magni perferendis labore. Quia porro laborum rerum eum porro vel exercitationem. Voluptas vero voluptatem omnis et aliquam inventore quibusdam.', '2023-05-15 00:00:00', NULL),
(5, 'Esse et qui atque nam adipisci saepe. Soluta velit qui repellendus. Facere quaerat repudiandae rerum eum qui consequatur voluptatum. Exercitationem eius et nam deserunt accusamus ipsum.', 1, 1, 1, 'Minus a est ut eum deleniti. Illum neque quibusdam ut recusandae quisquam. Facilis eaque qui odit eos ab. Sit minima et vitae rerum tenetur.', '2023-05-27 00:00:00', NULL),
(6, 'Id sit et voluptatem. Non enim autem beatae quod deleniti praesentium. Quos rerum voluptas numquam vel soluta.', 2, 2, 0, 'Et dicta qui velit veniam omnis minus earum. Eum error pariatur est saepe. Odio error dolorum nulla sed eveniet ad.', '2023-05-24 00:00:00', NULL),
(7, 'In cupiditate illo est fugiat et. Ut quia corrupti nostrum rem omnis. Nam nemo quam quis vel sint expedita eos. Dolorem dolores sed odio quis magni corrupti.', 2, 1, 2, 'Autem atque reprehenderit accusamus. Suscipit officiis laboriosam aut omnis. Doloremque et provident dignissimos laudantium doloribus.', '2023-06-02 00:00:00', NULL),
(8, 'Fugit dolores aliquid quaerat nulla. Reiciendis beatae exercitationem et suscipit tempore aspernatur et. Aspernatur cupiditate repudiandae et non qui voluptates aut numquam. Esse adipisci quo et in id velit velit consequatur.', 2, 1, 2, 'Vero voluptatem est sunt ipsum soluta magnam saepe. Molestiae nisi et ea at qui tenetur expedita. Culpa voluptatem architecto nihil molestiae. Sint illo cumque corporis velit est perspiciatis sapiente. Quia officia et iste.', '2023-05-17 00:00:00', NULL),
(9, 'Eos dicta harum qui. Dolor voluptas tempore dolor doloremque quo ipsam. Quia et dolorem qui iusto omnis quis. Et animi debitis reiciendis odio veniam.', 1, 2, 2, 'Quaerat eius velit voluptas et consequatur consequatur delectus. Rerum cupiditate et at error. Veniam optio blanditiis ut expedita. Eius voluptatum in illo qui. Laboriosam alias quasi ipsam repellat perferendis et. Eum sapiente quas aut.', '2023-05-16 00:00:00', NULL),
(10, 'Ut enim aliquam rem voluptas iste eum. Qui ipsum animi laudantium. Et aperiam et autem tenetur placeat consequatur omnis. Sed enim sed rerum sit distinctio voluptatem doloribus.', 1, 1, 2, 'Neque est praesentium maxime esse. Et doloremque vel eligendi. Sed id autem alias aspernatur quidem ut.', '2023-06-01 00:00:00', NULL),
(11, 'Saepe corrupti ratione dignissimos eaque est veritatis. Quis et autem nam rerum culpa voluptas. Neque error laboriosam dolor eveniet ipsum.', 1, 1, 0, 'Voluptatum facilis vero voluptatem incidunt temporibus deserunt. Dolores in eos non doloremque ipsa quia atque. Tempora voluptatem qui vel non nisi. Et quod est nostrum ipsam.', '2023-06-12 00:00:00', NULL),
(12, 'Tenetur velit recusandae consequuntur eius occaecati quis. Fugit optio voluptatem ut exercitationem vero nostrum quam est. Quo eligendi corporis excepturi.', 1, 2, 2, 'Mollitia delectus et ab officiis sed at provident. Eveniet et quia velit dolor consectetur. Sed id odit aut unde impedit nostrum recusandae ut. Ullam officiis alias mollitia quasi ut dolore.', '2023-05-29 00:00:00', NULL),
(13, 'Aut molestiae unde laudantium est ut. Aliquid harum numquam dolore aut. Et cumque voluptas voluptates dolorem est non quibusdam. Optio illum molestias et voluptas.', 1, 1, 1, 'Aliquid et at quo aut aut voluptatem. Ea repellat provident voluptas et consectetur aut. Repellendus pariatur nihil itaque soluta. Et earum facilis labore quidem quo cupiditate. Vel blanditiis animi veritatis. Sit sapiente nisi animi.', '2023-05-23 00:00:00', NULL),
(14, 'Cum vitae rerum est velit aut nisi. Cupiditate et adipisci id animi dolores a nihil quia. Sunt repudiandae voluptates tempora quibusdam voluptas sunt veniam. Mollitia et animi aut. Et rerum ad quia eaque velit omnis at. Velit sint iusto quisquam.', 2, 2, 2, 'Architecto facilis quia tempore suscipit. Dolores dolor quia asperiores non qui. Dolor non provident omnis nihil iure ex suscipit.', '2023-05-20 00:00:00', NULL),
(15, 'Fuga eos et doloribus et occaecati qui dignissimos. Dolorem animi blanditiis qui molestias nesciunt ipsum vel. Quos aspernatur laborum libero placeat occaecati deserunt. Reprehenderit enim doloribus nam iusto perspiciatis ab autem.', 2, 1, 1, 'Dolor velit qui ea omnis. Sit odio voluptatum non rerum nisi magni. Consequatur vel aut harum similique.', '2023-05-25 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_06_13_000001_create_conversations_table', 1),
(2, '2023_06_13_000001_create_deleted_conversations_table', 1),
(3, '2023_06_13_000001_create_deleted_messages_table', 1),
(4, '2023_06_13_000001_create_messages_table', 1),
(5, '2023_06_13_000001_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_operator` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `is_active`, `is_operator`, `created_at`, `updated_at`) VALUES
(1, 'abc@xyz.com', '123', 'John', 'Smith', 0, 1, '2010-01-02 20:30:43', '2010-01-02 20:30:43'),
(2, 'def@xyz.com', '123', 'Jane', 'Williams', 0, 0, '2010-01-02 20:30:43', '2010-01-02 20:30:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleted_conversations`
--
ALTER TABLE `deleted_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleted_messages`
--
ALTER TABLE `deleted_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deleted_messages_guid_unique` (`guid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messages_guid_unique` (`guid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deleted_conversations`
--
ALTER TABLE `deleted_conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deleted_messages`
--
ALTER TABLE `deleted_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
