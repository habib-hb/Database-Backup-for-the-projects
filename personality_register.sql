-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 11:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personality_register`
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
('22d200f8670dbdb3e253a90eee5098477c95c23d', 'i:2;', 1720266528),
('22d200f8670dbdb3e253a90eee5098477c95c23d:timer', 'i:1720266528;', 1720266528),
('4d134bc072212ace2df385dae143139da74ec0ef', 'i:1;', 1720258820),
('4d134bc072212ace2df385dae143139da74ec0ef:timer', 'i:1720258820;', 1720258820),
('632667547e7cd3e0466547863e1207a8c0c0c549', 'i:1;', 1720266802),
('632667547e7cd3e0466547863e1207a8c0c0c549:timer', 'i:1720266802;', 1720266802),
('887309d048beef83ad3eabf2a79a64a389ab1c9f', 'i:1;', 1720259259),
('887309d048beef83ad3eabf2a79a64a389ab1c9f:timer', 'i:1720259259;', 1720259259),
('b6692ea5df920cad691c20319a6fffd7a4a766b8', 'i:1;', 1720269492),
('b6692ea5df920cad691c20319a6fffd7a4a766b8:timer', 'i:1720269492;', 1720269492),
('cb4e5208b4cd87268b208e49452ed6e89a68e0b8', 'i:1;', 1720266894),
('cb4e5208b4cd87268b208e49452ed6e89a68e0b8:timer', 'i:1720266894;', 1720266894),
('d435a6cdd786300dff204ee7c2ef942d3e9034e2', 'i:1;', 1720253945),
('d435a6cdd786300dff204ee7c2ef942d3e9034e2:timer', 'i:1720253945;', 1720253945),
('developerhabib1230@gmail.com|127.0.0.1', 'i:1;', 1721130730),
('developerhabib1230@gmail.com|127.0.0.1:timer', 'i:1721130730;', 1721130730),
('f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59', 'i:1;', 1720269675),
('f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59:timer', 'i:1720269675;', 1720269675),
('f6e1126cedebf23e1463aee73f9df08783640400', 'i:2;', 1720259017),
('f6e1126cedebf23e1463aee73f9df08783640400:timer', 'i:1720259017;', 1720259017);

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
-- Table structure for table `feedback_message`
--

CREATE TABLE `feedback_message` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feedback` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_message`
--

INSERT INTO `feedback_message` (`id`, `user_id`, `feedback`, `created_at`) VALUES
(1, NULL, 'Hello, It\'s my first feedback', '2024-07-15'),
(2, NULL, 'This is my first feedback', '2024-07-15'),
(3, NULL, 'Hello', '2024-07-15'),
(5, NULL, 'user input without id', '2024-07-15'),
(6, NULL, 'user without id', '2024-07-15'),
(7, 43, 'ididididdiid', '2024-07-15'),
(8, NULL, 'no ididididiid', '2024-07-15'),
(9, 43, 'Wow nice', '2024-07-16'),
(10, 43, 'fsdfdsfdsf', '2024-07-16'),
(11, 43, 'fddsf', '2024-07-17'),
(12, 43, 'fdsfdsf', '2024-07-17'),
(13, 43, 'fsdfdsf', '2024-07-17'),
(14, 43, 'feedback with green', '2024-07-17'),
(15, 47, 'Nice', '2024-07-17');

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
(4, '2024_06_24_105241_add_github_id_to_users_table', 2),
(5, '2024_06_25_073851_add_github_avatar_column_to_user', 3);

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
-- Table structure for table `personality_type`
--

CREATE TABLE `personality_type` (
  `identifier_int` int(11) NOT NULL,
  `personality_string` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personality_type`
--

INSERT INTO `personality_type` (`identifier_int`, `personality_string`) VALUES
(1, 'Extroversion'),
(2, 'Agreeableness'),
(3, 'Openness'),
(4, 'Conscientiousness'),
(5, 'Neuroticism');

-- --------------------------------------------------------

--
-- Table structure for table `personality_type_based_quotes`
--

CREATE TABLE `personality_type_based_quotes` (
  `id` int(11) NOT NULL,
  `personality_type_identifier_int` int(11) NOT NULL,
  `quote` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personality_type_based_quotes`
--

INSERT INTO `personality_type_based_quotes` (`id`, `personality_type_identifier_int`, `quote`) VALUES
(1, 1, 'Your energy is contagious; spread it generously.'),
(2, 1, 'In a world of whispers, be the voice that roars.'),
(3, 1, 'Embrace the spotlight and let your light shine brightly.'),
(4, 1, 'Your presence is a gift; share it with the world.'),
(5, 1, 'Be the spark that ignites connections and fuels enthusiasm.'),
(6, 1, 'Your outgoing nature is your superpower; use it to inspire.'),
(7, 1, 'Step into every room with confidence and leave a mark.'),
(8, 1, 'Life is a party, and you\'re the life of it.'),
(9, 1, 'Your charisma can turn ordinary moments into extraordinary memories.'),
(10, 1, 'Celebrate your extroversion; it\'s the key to unlocking endless possibilities.'),
(11, 2, 'Kindness is your strength; use it to make the world a better place.'),
(12, 2, 'Your compassion can heal hearts and build bridges.'),
(13, 2, 'In a world of chaos, your calmness is a beacon of hope.'),
(14, 2, 'Your empathy empowers others to be their best selves.'),
(15, 2, 'Gentleness is not weakness; it is the essence of true strength.'),
(16, 2, 'Your understanding heart can turn conflict into harmony.'),
(17, 2, 'In every interaction, you bring warmth and sincerity.'),
(18, 2, 'Your willingness to listen is a gift that keeps on giving.'),
(19, 2, 'With every act of kindness, you make the world a little brighter.'),
(20, 2, 'Your agreeableness is a reminder that peace begins with you.'),
(21, 3, 'Your curiosity is the gateway to endless discoveries.'),
(22, 3, 'Embrace the unknown; it is where you will find the magic.'),
(23, 3, 'Your open mind can turn ordinary moments into extraordinary adventures.'),
(24, 3, 'In a world of conformity, your creativity shines brightly.'),
(25, 3, 'Your willingness to explore new ideas is your greatest asset.'),
(26, 3, 'Innovation starts with an open mind like yours.'),
(27, 3, 'Your acceptance of different perspectives fosters growth and understanding.'),
(28, 3, 'With every new experience, you expand the horizons of your mind.'),
(29, 3, 'Your open-heartedness invites new possibilities into your life.'),
(30, 3, 'Celebrate your openness; it is the key to a vibrant and enriched life.'),
(31, 4, 'Your dedication to detail is what sets you apart.'),
(32, 4, 'In a world of shortcuts, your thoroughness is invaluable.'),
(33, 4, 'Your commitment to excellence inspires those around you.'),
(34, 4, 'Discipline is your superpower; use it to achieve greatness.'),
(35, 4, 'Your reliability makes you a cornerstone of any team.'),
(36, 4, 'With every task, you set the standard for quality.'),
(37, 4, 'Your persistence in the face of challenges is admirable.'),
(38, 4, 'Your careful planning paves the way for success.'),
(39, 4, 'Your conscientious nature ensures nothing is left to chance.'),
(40, 4, 'Celebrate your conscientiousness; it is the foundation of your achievements.'),
(41, 5, 'Your sensitivity is a strength; it allows you to feel deeply and understand others.'),
(42, 5, 'Embrace your emotions; they are a testament to your passion for life.'),
(43, 5, 'Your self-awareness is a powerful tool for personal growth.'),
(44, 5, 'In the face of adversity, your resilience shines through.'),
(45, 5, 'Your introspection leads to profound insights and understanding.'),
(46, 5, 'Emotions are the colors of your soul; let them paint a beautiful picture.'),
(47, 5, 'Your vulnerability is not a weakness, but a source of authentic strength.'),
(48, 5, 'In times of uncertainty, trust in your inner strength and courage.'),
(49, 5, 'Your empathy makes you a beacon of comfort and support to others.'),
(50, 5, 'Celebrate your sensitivity; it connects you deeply with the world around you.'),
(51, 1, 'The world for extroverts is an endless canvas on which they paint with their bright colors.'),
(52, 1, 'Enthusiasm is the most contagious form of energy.'),
(53, 3, 'Openness is the key that unlocks the doors to the most impressive adventures and extraordinary discoveries.'),
(54, 3, 'Openness allows us not only to see the world but also to experience it with all its beauty and complexity.'),
(55, 3, 'The world belongs to those who have the courage to dream and the risk to turn their dreams into reality.'),
(56, 4, 'Conscientiousness is the bridge that connects dreams to reality, turning desires into achievements.'),
(57, 4, 'Only those who risk going too far can find out how far they can go.'),
(58, 5, 'Those who experience more know the true value of peace and happiness.'),
(59, 5, 'Neuroticism can be like a storm that tests our endurance or like rain that cleanses the soul.'),
(60, 5, 'We are all a little weird. And life is a little weird. And when we find someone whose weirdness is compatible with ours, we join up with them and fall into mutual weirdness and call it love.'),
(61, 5, 'The greatest happiness is to know why you are unhappy.'),
(62, 1, 'new quote'),
(64, 4, 'Nananananana'),
(65, 5, 'hohohoh'),
(66, 4, 'fdsfdsf'),
(67, 2, 'new livewire'),
(68, 4, 'another livewire'),
(69, 3, 'new quote22'),
(70, 2, 'new quote 55'),
(71, 3, 'new quote 99'),
(72, 3, 'fdsfds'),
(94, 3, 'fdsfsdf'),
(95, 5, 'just checking pt'),
(96, 3, 'fdsfad fsdf fsdfdsf'),
(104, 3, 'fdsfd'),
(105, 2, 'fdsf'),
(113, 1, 'fdsfds'),
(114, 1, 'fdsf edited aga'),
(115, 1, 'trrtet'),
(161, 1, 'again another'),
(164, 4, 'Nicely done'),
(165, 5, 'nueru'),
(166, 4, 'new one'),
(167, 4, 'another'),
(168, 4, 'keeps there'),
(176, 1, 'new'),
(185, 3, 'fdsf new'),
(186, 3, 'fdsfdsf'),
(187, 4, 'new quote to'),
(188, 3, 'fdsfsdf '),
(189, 3, 'again'),
(190, 1, 'Another quote 2');

-- --------------------------------------------------------

--
-- Table structure for table `personality_type_store`
--

CREATE TABLE `personality_type_store` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `personality_type_identifier_int` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personality_type_store`
--

INSERT INTO `personality_type_store` (`id`, `user_id`, `personality_type_identifier_int`) VALUES
(1, 12, 4),
(2, 13, 5),
(3, 14, 2),
(11, 18, 1),
(12, 19, 2),
(13, 20, 4),
(14, 21, 3),
(15, 22, 5),
(21, 28, 1),
(36, 43, 2),
(37, 44, 1),
(38, 45, 1),
(39, 46, 1),
(40, 47, 5),
(41, 48, 2),
(42, 49, 3),
(43, 50, 3);

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CMWF5Oobd2BtmrKVR3AvBt2YFFE43qOU2FgtLWTZ', 50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWDlGeXRuZHEyUWJyN3N5aVl0NTQ4R3BmTVlWUlV6U2JGcWRpMUtwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnB1dF9xdW90ZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjEwOiJ0aGVtZV9tb2RlIjtzOjU6ImxpZ2h0IjtzOjU6InN0YXRlIjtzOjQwOiI3TjBLZlZSaTNXcEZzZGtZWEk2ZndOZXJ1RURFQ3BnRG1vaU5KZ09jIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1MDt9', 1722146325),
('gyBY0GIUjxFY4kK7F88EVvSGhqgZs5Lnm5HVCfXt', 43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidmdwT21KSkc1ZzZDQ2wyR3VDZkFwSExZOERXU2pPU2Y2Q3JEQ0VKTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6MTA6InRoZW1lX21vZGUiO3M6NDoiZGFyayI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDM7fQ==', 1721296540),
('l1eX7qxuqV9dD0Rmzr5Lfib5BUJNaxCv8jTV1hwP', 43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2ZidWduM0hQYzZjeW0yclc5QW9tZU1JeUs0NWtYWHVkVDdQcEY4MiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDM7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnB1dF9xdW90ZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722150534),
('quClGNUTUWVleiveDv4mxXKh6z4RQDxZQQ2n0Adt', 43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicUNwaE5FSHhnOWY3NUU1MUFnTGtIVW1Ya0puT0tDbDBRMThmMFZWSiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDM7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTA6InRoZW1lX21vZGUiO3M6NDoiZGFyayI7fQ==', 1721885362),
('VXDFe5KNKuLMgSSPWpYxdseOTQ3kXp8q1YJllP9d', 43, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR0lMbDVubWYxZ29TMU83QU9LbzlDeE1vbXc2V0ZXOWdXUTVUN3p3aSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDM7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTA6InRoZW1lX21vZGUiO3M6NToibGlnaHQiO30=', 1722170329);

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
  `github_id` varchar(255) DEFAULT NULL,
  `github_avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `github_id`, `github_avatar`) VALUES
(1, 'Habibur Rahman', 'developerhabib123045@gmail.com', NULL, '$2y$12$KbsbZ3KzstCY3muh.sVqqeS/6K/QBOwwr3LcnAksOAc/syy1lVWtG', NULL, '2024-06-22 22:49:01', '2024-06-22 22:49:01', NULL, NULL),
(2, 'New User', 'developerhabib12301@gmail.com', NULL, '$2y$12$l/PRoK1cBm3zYOZEq/UFTuYqnKKRTmZazohynMe6J5/O2rOXy1oDq', NULL, '2024-06-23 06:08:49', '2024-06-23 06:08:49', NULL, NULL),
(3, 'Habibur Rahman', 'developerhabib12302@gmail.com', NULL, '$2y$12$TZyMtjhklWpYXGfyRBnitedR89UB61oCvvoEjwacI4ZMP.JYf5mM.', NULL, '2024-06-23 06:19:09', '2024-06-23 06:19:09', NULL, NULL),
(4, 'Habibur Rahman New', 'developerhabib12303@gmail.com', NULL, '$2y$12$MlKayl7JxxrRyHbZu3bV7u6yCitFmvt5D9nMjQQ5H7347W.0ibhze', NULL, '2024-06-23 06:20:28', '2024-06-23 06:20:28', NULL, NULL),
(12, 'css', 'developerhabib123ff0@gmail.com', NULL, '$2y$12$jEb/o82LQmUQ3p381BqGyeQxj35g9tpGvIySXWbY3bEXltx3ejVnq', NULL, '2024-06-26 05:13:04', '2024-06-26 05:13:04', NULL, NULL),
(13, 'Habibur Rahman', 'developerhabib1230neur@gmail.com', NULL, '$2y$12$GSowOfObYCwRw4C9sx4jrO4HpWJR2d94b/5Ok/IzQEx86uPyh0..q', NULL, '2024-06-29 04:22:32', '2024-06-29 04:22:32', NULL, NULL),
(14, 'Habib Agree', 'developerhabib1230agre@gmail.com', NULL, '$2y$12$CLCWLawvv4CKOZYpw25W9ekPAXmoSbRdwDDsPv9.HygpfFB393f1C', NULL, '2024-06-29 04:40:38', '2024-06-29 04:40:38', NULL, NULL),
(18, 'Habibur Rahman', 'developerhabibf1230@gmail.com', NULL, '$2y$12$2eBpCQ9zl5zq7gPdrCawZOqyouKWVc7qyCVNCH6Zdf3ti6n6.6Wf2', NULL, '2024-07-01 06:21:27', '2024-07-01 06:21:27', NULL, NULL),
(19, 'Habibur Rahman', 'developwwerhabibf1230@gmail.com', NULL, '$2y$12$LuEKrUjSLqhHkGgqEyjaveuCe5ufJiE9bX4bw89K3d7PFWoI6Njq6', NULL, '2024-07-01 22:35:48', '2024-07-01 22:35:48', NULL, NULL),
(20, 'Habibur Rahman', 'developwwefdsrhabibf1230@gmail.com', NULL, '$2y$12$o/O3kkN14trzq7xnIdyqzOaMKOUsm7QnNkePiUSX2YRbzSgQtf4ae', NULL, '2024-07-01 22:51:18', '2024-07-01 22:51:18', NULL, NULL),
(21, 'Habibur Rahman', 'developerhabib123erer0agre@gmail.com', NULL, '$2y$12$OEne7mN2x9E7yVXTBRr2deYg.PU66159d0zi8KfdrCUNUE.zYX04a', NULL, '2024-07-06 02:00:12', '2024-07-06 02:00:12', NULL, NULL),
(22, 'Habibur Rahman', 'developerhabib1ff23erer0agre@gmail.com', NULL, '$2y$12$RsDw2C1Q58uRnsEPuJdfg.Zjbu.M.q7zMvQ.Q9N5z6LHpgWS.M6Em', NULL, '2024-07-06 02:02:10', '2024-07-06 02:02:10', NULL, NULL),
(28, 'Abid', 'hellodeveloperhabib1230@gmail.com', NULL, '$2y$12$o1bnxadsqo/7/ZKUhUrm.Oxi7ShwY9B.84ruT2Qr52ka3P3vPQW6G', NULL, '2024-07-06 05:04:24', '2024-07-06 05:04:24', NULL, NULL),
(43, 'Md. Habibur Rahman Habib', 'developerhabib1230@gmail.com', NULL, '$2y$12$obTjdJwUETyTpan5NZPbjO9lU7anxyuptD3/mquNLjN6QyzjSTKye', 'DSc0Ss0Ch3VmSS4VLAYGiHGXPPcV2pu5cRS2eeyugw7fAOWxXWkLIZWQcl4M', '2024-07-15 01:57:31', '2024-07-18 03:30:03', '56242721', 'https://avatars.githubusercontent.com/u/56242721?v=4'),
(44, 'css', 'developerhffabib1230@gmail.com', NULL, '$2y$12$ckERVqUg.xXWdDFxMTuLvOFiIMUSPDH55w9o88d28AZuBGG1wT2lK', NULL, '2024-07-15 02:05:21', '2024-07-15 02:05:21', NULL, NULL),
(45, 'ffdfdf', 'developerhabib12fffffsa3ff0@gmail.com', NULL, '$2y$12$kpfFhs2Z828tfg8ngWgDUuyIImXth2ZvLKWX9X512QtptJaDE3mBO', NULL, '2024-07-15 02:17:28', '2024-07-15 02:17:28', NULL, NULL),
(46, 'Habibur Rahman', 'develoffffssaafgperhabib1230@gmail.com', NULL, '$2y$12$19G1/mM27lgW1CHRgbeyH.I6cnf9CBGSdkK1/7XuT/0qaBRqo8kO6', NULL, '2024-07-15 02:37:00', '2024-07-15 02:37:00', NULL, NULL),
(47, 'Habibur Rahman', 'testingnew@gmail.com', NULL, '$2y$12$u/x9ngokRl7PxLDcSc5bOuvLjep0uJGvmnkxBX8d.k6gkt8ex2DXG', NULL, '2024-07-17 05:31:18', '2024-07-17 05:31:18', NULL, NULL),
(48, 'habib', 'ashifurrahmanffff0123@gmail.com', NULL, '$2y$12$nm03YihQRiSMttrcvVWYvOubHu1KPv7LBjsGDfpDHxVXJLbmBJH62', NULL, '2024-07-27 23:28:43', '2024-07-27 23:28:43', NULL, NULL),
(49, 'habib', 'ashifurrahmafdsn0123@gmail.com', NULL, '$2y$12$JYzTSokv/atnDEZgD3cXBu3/NblunbqOEkXOHxII/IqT.jClXa47i', NULL, '2024-07-27 23:33:30', '2024-07-27 23:33:30', NULL, NULL),
(50, 'habib', 'ashifurrahmafdsddn0123@gmail.com', NULL, '$2y$12$OmK/Gqv4E.CC5x0/gU8CquaCCiwXSpzFLXYNgC/dIodnpBXXZ5ig6', NULL, '2024-07-27 23:37:39', '2024-07-27 23:37:39', NULL, NULL);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback_message`
--
ALTER TABLE `feedback_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_message_to_users` (`user_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personality_type`
--
ALTER TABLE `personality_type`
  ADD PRIMARY KEY (`identifier_int`);

--
-- Indexes for table `personality_type_based_quotes`
--
ALTER TABLE `personality_type_based_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_type_store`
--
ALTER TABLE `personality_type_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_personality_type_store_to_personality_type` (`personality_type_identifier_int`),
  ADD KEY `fk_personality_type_store_to_users` (`user_id`);

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
-- AUTO_INCREMENT for table `feedback_message`
--
ALTER TABLE `feedback_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personality_type`
--
ALTER TABLE `personality_type`
  MODIFY `identifier_int` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personality_type_based_quotes`
--
ALTER TABLE `personality_type_based_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `personality_type_store`
--
ALTER TABLE `personality_type_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback_message`
--
ALTER TABLE `feedback_message`
  ADD CONSTRAINT `fk_feedback_message_to_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `personality_type_store`
--
ALTER TABLE `personality_type_store`
  ADD CONSTRAINT `fk_personality_type_store_to_personality_type` FOREIGN KEY (`personality_type_identifier_int`) REFERENCES `personality_type` (`identifier_int`),
  ADD CONSTRAINT `fk_personality_type_store_to_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_id_unique_in_the_personality_type_store` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
