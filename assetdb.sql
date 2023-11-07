-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 04:00 PM
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
-- Database: `assetdb`
--

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
(5, '2022_11_02_111430_add_two_factor_columns_to_table', 1),
(6, '2022_11_02_113007_create_permission_tables', 1),
(7, '2022_11_02_124027_create_project_statuses_table', 1),
(8, '2022_11_02_124028_create_projects_table', 1),
(9, '2022_11_02_131753_create_project_users_table', 1),
(10, '2022_11_02_134510_create_media_table', 1),
(11, '2022_11_02_152359_create_project_favorites_table', 1),
(12, '2022_11_02_193241_create_ticket_statuses_table', 1),
(13, '2022_11_02_193242_create_tickets_table', 1),
(14, '2022_11_06_155109_add_tickets_prefix_to_projects', 1),
(15, '2022_11_06_163226_add_code_to_tickets', 1),
(16, '2022_11_06_164004_create_ticket_types_table', 1),
(17, '2022_11_06_165400_add_type_to_ticket', 1),
(18, '2022_11_06_173220_add_order_to_tickets', 1),
(19, '2022_11_06_184448_add_order_to_ticket_statuses', 1),
(20, '2022_11_06_193051_create_ticket_activities_table', 1),
(21, '2022_11_06_194000_create_ticket_priorities_table', 1),
(22, '2022_11_06_194728_add_priority_to_tickets', 1),
(23, '2022_11_06_203702_add_status_type_to_project', 1),
(24, '2022_11_06_204227_add_project_to_ticket_statuses', 1),
(25, '2022_11_07_064347_create_ticket_comments_table', 1),
(26, '2022_11_08_084509_create_ticket_subscribers_table', 1),
(27, '2022_11_08_144611_create_notifications_table', 1),
(28, '2022_11_08_150309_create_jobs_table', 1),
(29, '2022_11_08_163244_create_ticket_relations_table', 1),
(30, '2022_11_08_172846_create_settings_table', 1),
(31, '2022_11_08_173004_general_settings', 1),
(32, '2022_11_08_173852_create_general_settings', 1),
(33, '2022_11_09_085506_create_socialite_users_table', 1),
(34, '2022_11_09_085638_make_user_password_nullable', 1),
(35, '2022_11_09_110740_remove_unique_from_users', 1),
(36, '2022_11_09_110955_add_soft_deletes_to_users', 1),
(37, '2022_11_09_173852_add_social_login_to_general_settings', 1),
(38, '2022_11_10_193214_create_ticket_hours_table', 1),
(39, '2022_11_10_200608_add_estimation_to_tickets', 1),
(40, '2022_11_12_134201_add_creation_token_to_users', 1),
(41, '2022_11_12_142644_create_pending_user_emails_table', 1),
(42, '2022_11_12_173852_add_default_role_to_general_settings', 1),
(43, '2022_11_12_173852_add_login_form_oidc_enabled_flags_to_general_settings', 1),
(44, '2022_11_12_173852_add_site_language_to_general_settings', 1),
(45, '2022_12_15_100852_create_epics_table', 1),
(46, '2022_12_15_101035_add_epic_to_ticket', 1),
(47, '2022_12_16_133836_add_parent_to_epics', 1),
(48, '2022_12_27_082239_add_comment_to_ticket_hours', 1),
(49, '2023_01_05_182946_add_attachments_to_tickets', 1),
(50, '2023_01_09_113159_create_activities_table', 1),
(51, '2023_01_09_113847_add_activity_to_ticket_hours_table', 1),
(52, '2023_01_12_203211_remove_unique_constraint_from_users', 1),
(53, '2023_01_12_204221_drop_attachments', 1),
(54, '2023_01_15_201358_add_type_to_projects', 1),
(55, '2023_01_15_202225_create_sprints_table', 1),
(56, '2023_01_15_204606_add_sprint_to_tickets', 1),
(57, '2023_01_15_214849_add_epic_to_sprints', 1),
(58, '2023_01_16_085329_add_started_ended_at_to_sprints', 1),
(59, '2023_01_24_084637_update_users_for_oidc', 1),
(60, '2023_04_10_123922_add_unique_ticket_prefix_to_projects_table', 1);

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
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pending_user_emails`
--

CREATE TABLE `pending_user_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pending_user_emails`
--

INSERT INTO `pending_user_emails` (`id`, `user_type`, `user_id`, `email`, `token`, `created_at`) VALUES
(1, 'App\\Models\\User', 1, 'anostrofy@gmail.com', 'd1f9597404d6403b3eae78038332b9c6a04316e5a8ba0307f883ccde601d5ec3', '2023-11-06 12:26:39');

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
(1, 'List permissions', 'web', '2023-11-06 11:26:38', '2023-11-06 11:26:38'),
(2, 'View permission', 'web', '2023-11-06 11:26:38', '2023-11-06 11:26:38'),
(3, 'Create permission', 'web', '2023-11-06 11:26:38', '2023-11-06 11:26:38'),
(4, 'Update permission', 'web', '2023-11-06 11:26:38', '2023-11-06 11:26:38'),
(5, 'Delete permission', 'web', '2023-11-06 11:26:38', '2023-11-06 11:26:38'),
(16, 'List roles', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(17, 'View role', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(18, 'Create role', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(19, 'Update role', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(20, 'Delete role', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(41, 'List users', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(42, 'View user', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(43, 'Create user', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(44, 'Update user', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(45, 'Delete user', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39'),
(56, 'Manage general settings', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39');

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
(1, 'Default role', 'web', '2023-11-06 11:26:39', '2023-11-06 11:26:39');

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
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`payload`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `name`, `locked`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'general', 'site_name', 0, '\"Helper\"', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(2, 'general', 'site_logo', 0, 'null', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(3, 'general', 'enable_registration', 0, 'true', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(4, 'general', 'enable_social_login', 0, '\"1\"', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(5, 'general', 'default_role', 0, '\"1\"', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(6, 'general', 'enable_login_form', 0, '\"1\"', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(7, 'general', 'enable_oidc_login', 0, '\"1\"', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(8, 'general', 'site_language', 0, '\"en\"', '2023-11-06 11:26:25', '2023-11-06 11:26:39'),
(9, 'general', 'site_name', 0, '\"Asset Tracking System\"', '2023-11-06 12:38:20', '2023-11-06 12:38:20'),
(10, 'general', 'enable_registration', 0, 'true', '2023-11-06 12:38:20', '2023-11-06 12:38:20'),
(11, 'general', 'site_logo', 0, 'null', '2023-11-06 12:38:20', '2023-11-06 12:38:20'),
(12, 'general', 'enable_social_login', 0, '\"1\"', '2023-11-06 12:38:20', '2023-11-06 12:38:20'),
(13, 'general', 'site_language', 0, '\"en\"', '2023-11-06 12:38:20', '2023-11-06 12:38:20'),
(14, 'general', 'default_role', 0, '\"1\"', '2023-11-06 12:38:20', '2023-11-06 12:38:20'),
(15, 'general', 'enable_login_form', 0, '\"1\"', '2023-11-06 12:38:20', '2023-11-06 12:38:20'),
(16, 'general', 'enable_oidc_login', 0, '\"1\"', '2023-11-06 12:38:20', '2023-11-06 12:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `socialite_users`
--

CREATE TABLE `socialite_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
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
  `password` varchar(255) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `creation_token` char(36) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'db',
  `oidc_username` varchar(255) DEFAULT NULL,
  `oidc_sub` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `creation_token`, `type`, `oidc_username`, `oidc_sub`) VALUES
(1, 'Anopa Maisiri', 'john.doe@helper.app', '2023-11-06 11:26:38', '$2y$10$2rivhD5Ea7ECE5fUEP7qbeePGx.DqFQe6bMK3OAE65U2NsS9UeeCW', NULL, NULL, NULL, NULL, '2023-11-06 11:26:38', '2023-11-06 12:26:39', NULL, NULL, 'db', NULL, NULL),
(2, 'Inmate Graphix', 'r1914245a@students.msu.ac.zw', '2023-11-06 12:29:51', '$2y$10$jlDvA2XsPBzRDRZty/EAeOcgb.ugVwUC34eRLTJcs6KqitHI3DKu.', NULL, NULL, NULL, 'e2GBFWmseXc5bAWOnqfKRskjHW0a0VfE0j2VpeuuPP3AwjEhnKlm6YMGLihd', '2023-11-06 12:29:00', '2023-11-06 12:29:51', NULL, NULL, 'db', NULL, NULL),
(3, 'Talent', 'harrytaruva91@gmail.com', '2023-11-06 12:41:02', '$2y$10$abfypjltD/TQpd8s4p6C4OYEawrAAwvrz/gQgzybe9jSygQRotViy', NULL, NULL, NULL, 'AKykxs6BnAMU4Z1mcDoK9Sh3pm7DEWaInILMaqoqZcDwjh479s9P6FTrH4Gc', '2023-11-06 12:39:24', '2023-11-06 12:41:02', NULL, NULL, 'db', NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pending_user_emails`
--
ALTER TABLE `pending_user_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pending_user_emails_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `pending_user_emails_email_index` (`email`);

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_group_index` (`group`);

--
-- Indexes for table `socialite_users`
--
ALTER TABLE `socialite_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialite_users_provider_provider_id_unique` (`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `pending_user_emails`
--
ALTER TABLE `pending_user_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `socialite_users`
--
ALTER TABLE `socialite_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
