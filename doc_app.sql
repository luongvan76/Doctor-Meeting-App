-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 10:01 PM
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
-- Database: `doc_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `doc_id` int(10) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `doc_id`, `date`, `day`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '10/24/2023', 'Tuesday', '11:00 AM', 'upcoming', '2023-10-19 14:44:56', '2023-10-19 14:44:56'),
(3, 2, 1, '10/23/2023', 'Monday', '13:00 PM', 'complete', '2023-10-20 00:46:10', '2023-10-20 00:46:10'),
(4, 2, 1, '10/20/2023', 'Friday', '16:00 PM', 'upcoming', '2023-10-20 01:19:15', '2023-10-20 01:19:15'),
(5, 2, 1, '10/31/2023', 'Tuesday', '16:00 PM', 'upcoming', '2023-10-24 23:09:45', '2023-10-24 23:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `doc_id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `patients` int(10) UNSIGNED DEFAULT NULL,
  `experience` int(10) UNSIGNED DEFAULT NULL,
  `bio_data` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `doc_id`, `category`, `patients`, `experience`, `bio_data`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'IT', 102, 1, 'I am a admin.', 'active', '2023-10-16 01:37:05', '2023-10-16 02:19:07'),
(2, 4, 'Doctor', 55, 2, 'I\'m a doctor 2', 'active', '2023-10-19 12:42:53', '2023-10-19 12:43:44');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_15_083835_create_sessions_table', 1),
(7, '2023_10_16_074646_create_doctors_table', 1),
(8, '2023_10_16_074707_create_user_details_table', 1),
(9, '2023_10_19_202116_create_appointments_table', 2),
(10, '2023_10_20_100017_create_reviews_table', 3),
(11, '2023_10_25_063631_add_new_column', 4);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'user@gmail.com', 'c60ce4db9ff29a9d7bc5543aa2fddf5ebca43da0cf2c395bd1de176785fec84d', '[\"*\"]', NULL, NULL, '2023-10-17 12:42:53', '2023-10-17 12:42:53'),
(2, 'App\\Models\\User', 2, 'user@gmail.com', 'fecf158299e92fe6d287e851fba5a37e504e85e4d2cb1ce240b9945bda594df3', '[\"*\"]', NULL, NULL, '2023-10-17 13:07:03', '2023-10-17 13:07:03'),
(3, 'App\\Models\\User', 2, 'user@gmail.com', '8704fedf7a9c3ea56c137be3025c859bf03bb8517cd2d34b9b8aac1b7b18b68f', '[\"*\"]', NULL, NULL, '2023-10-17 13:14:16', '2023-10-17 13:14:16'),
(4, 'App\\Models\\User', 2, 'user@gmail.com', 'd7289b241f15fad2af980d9853534326c5dca14d65f8cdad0883feb7778f7871', '[\"*\"]', NULL, NULL, '2023-10-17 13:15:33', '2023-10-17 13:15:33'),
(5, 'App\\Models\\User', 2, 'user@gmail.com', '907e9c1d57f62dfc36515016ec3e431001c9e96c222f48b0f9672726a8a5765e', '[\"*\"]', NULL, NULL, '2023-10-17 13:16:55', '2023-10-17 13:16:55'),
(6, 'App\\Models\\User', 2, 'user@gmail.com', 'ab8b4e4ed93ceb47d66b83e05c447f4afa0eab990b4baccecc36a37ca9817495', '[\"*\"]', NULL, NULL, '2023-10-17 13:17:56', '2023-10-17 13:17:56'),
(7, 'App\\Models\\User', 2, 'user@gmail.com', '973cc030e2b680f991e22f217c9c7d633a707ceabd5833623abd8d0b97f50b8f', '[\"*\"]', NULL, NULL, '2023-10-17 13:22:50', '2023-10-17 13:22:50'),
(8, 'App\\Models\\User', 2, 'user@gmail.com', '7f0b486bf627e3a12f57648a509a4b6b54d4832acddbdb3925c91f2850b552f8', '[\"*\"]', '2023-10-17 13:26:51', NULL, '2023-10-17 13:25:40', '2023-10-17 13:26:51'),
(9, 'App\\Models\\User', 2, 'user@gmail.com', '8280597c87210629801acae8800d98e251b3b35a9120b88dfea85cfcc81bdf8e', '[\"*\"]', '2023-10-17 13:27:41', NULL, '2023-10-17 13:27:41', '2023-10-17 13:27:41'),
(10, 'App\\Models\\User', 2, 'user@gmail.com', 'f58f95907038fad250df4deb9c894a876a1a4252b85163c72d7f4316d6517957', '[\"*\"]', '2023-10-17 13:28:37', NULL, '2023-10-17 13:28:37', '2023-10-17 13:28:37'),
(11, 'App\\Models\\User', 2, 'user@gmail.com', '8e4abcb2cece139f8a7d3a21604701c4e760a4456cb2cc1f29f21d9f839f192a', '[\"*\"]', NULL, NULL, '2023-10-17 13:45:51', '2023-10-17 13:45:51'),
(12, 'App\\Models\\User', 2, 'user@gmail.com', '4520214d16b7448329084dd8ce7c6f9b511eac32826c07873d168dfb32cd1bab', '[\"*\"]', NULL, NULL, '2023-10-17 13:47:38', '2023-10-17 13:47:38'),
(13, 'App\\Models\\User', 2, 'user@gmail.com', '2ab3a00debaa4eb48c85758c120c7155321cd4bfe9486ce5b51615fa2fdae30d', '[\"*\"]', NULL, NULL, '2023-10-17 13:58:59', '2023-10-17 13:58:59'),
(14, 'App\\Models\\User', 2, 'user@gmail.com', '701bd09a9256fce2e0c722c1518a9d3cd2baafb0be61d9cfe0cfac9f0fa1a6ef', '[\"*\"]', NULL, NULL, '2023-10-17 14:00:05', '2023-10-17 14:00:05'),
(15, 'App\\Models\\User', 2, 'user@gmail.com', '89ec29d0026fde2920602b043b573a26b44666325842c8b6ecfd3708ddb35c77', '[\"*\"]', NULL, NULL, '2023-10-17 14:02:11', '2023-10-17 14:02:11'),
(16, 'App\\Models\\User', 2, 'user@gmail.com', '43980810560d895050576f151ae00f65f08ad6a34eec24f7e651f9336c6eb97f', '[\"*\"]', NULL, NULL, '2023-10-17 14:10:04', '2023-10-17 14:10:04'),
(17, 'App\\Models\\User', 2, 'user@gmail.com', 'dcb72a8fc76f8de36d3efa7bd45b352b70be808ee855c6fea222ea1d6f8d1296', '[\"*\"]', NULL, NULL, '2023-10-17 14:13:00', '2023-10-17 14:13:00'),
(18, 'App\\Models\\User', 2, 'user@gmail.com', 'fd0a4c946f00d63dc4a3750a549e32f36adb2f4c6c0ed121ca7fdf4b439d59f1', '[\"*\"]', NULL, NULL, '2023-10-17 14:13:34', '2023-10-17 14:13:34'),
(19, 'App\\Models\\User', 2, 'user@gmail.com', '6d175c2d75b4991e2e698bd5b13b4d98972c3c2484d368e4b29d53398b827276', '[\"*\"]', NULL, NULL, '2023-10-17 14:13:47', '2023-10-17 14:13:47'),
(20, 'App\\Models\\User', 2, 'user@gmail.com', 'c5827fa4b5a3dda51c4c5610219ea5d4c7eca5f824816eb9caaa4171f2de8178', '[\"*\"]', NULL, NULL, '2023-10-17 14:14:43', '2023-10-17 14:14:43'),
(21, 'App\\Models\\User', 2, 'user@gmail.com', '9cb82b3141571f5ca2935d8e8ed0d9f13b4571adca3ac757a6e257d8bc318e45', '[\"*\"]', NULL, NULL, '2023-10-17 14:17:30', '2023-10-17 14:17:30'),
(22, 'App\\Models\\User', 3, 'user2@gmail.com', '19ab00e08164f2d014224326796070e1eeb3aa76a0c8e8c643aa02ac90a1987c', '[\"*\"]', NULL, NULL, '2023-10-17 14:49:10', '2023-10-17 14:49:10'),
(23, 'App\\Models\\User', 2, 'user@gmail.com', '1f5b844661c5ebaa239e1bb27de213e53e81e86235ce870dccbb44219cb807d9', '[\"*\"]', NULL, NULL, '2023-10-19 12:14:35', '2023-10-19 12:14:35'),
(24, 'App\\Models\\User', 3, 'user2@gmail.com', '842cc6fd4554740508a595a221d450476ffdbf426087538aa6e153ada6598790', '[\"*\"]', NULL, NULL, '2023-10-19 12:15:01', '2023-10-19 12:15:01'),
(25, 'App\\Models\\User', 2, 'user@gmail.com', 'e1ef9a1ca30dba6b27b28410b34f8641cca1b5cbf2b153627bb8e08dc459425e', '[\"*\"]', '2023-10-19 12:27:43', NULL, '2023-10-19 12:27:43', '2023-10-19 12:27:43'),
(26, 'App\\Models\\User', 2, 'user@gmail.com', '56c174f64e759e4de6284f862f624cfcc4693ef2252a543982e7230f6e0dd4a0', '[\"*\"]', '2023-10-19 12:43:58', NULL, '2023-10-19 12:41:23', '2023-10-19 12:43:58'),
(27, 'App\\Models\\User', 2, 'user@gmail.com', 'ad56b7c0c78d430d6f9440e2232acfeb6f0fdf41c54d3d9498c24cfe1f1ecfc1', '[\"*\"]', '2023-10-19 12:58:17', NULL, '2023-10-19 12:58:17', '2023-10-19 12:58:17'),
(28, 'App\\Models\\User', 2, 'user@gmail.com', '4f959e18d76adf430cbebac9d18fc48264ec2c32a898f8911d5f4aa9cc222d51', '[\"*\"]', '2023-10-19 13:10:29', NULL, '2023-10-19 13:10:28', '2023-10-19 13:10:29'),
(29, 'App\\Models\\User', 2, 'user@gmail.com', '30abb0fc514924ec432481e794726a29c6e6dcf99eaf7747577ed39bc8b8b4f4', '[\"*\"]', '2023-10-19 14:45:00', NULL, '2023-10-19 14:44:30', '2023-10-19 14:45:00'),
(30, 'App\\Models\\User', 2, 'user@gmail.com', 'b715846d51da6909a0d3556c7dbbb0815a94353a1ce8af8b0b8179d39d7fa049', '[\"*\"]', '2023-10-20 00:14:17', NULL, '2023-10-20 00:14:16', '2023-10-20 00:14:17'),
(31, 'App\\Models\\User', 2, 'user@gmail.com', '98d03b7767812c4596b481c0bcee296711e6a1b9249e8e5403f6cbdc37566379', '[\"*\"]', '2023-10-20 00:23:23', NULL, '2023-10-20 00:15:11', '2023-10-20 00:23:23'),
(32, 'App\\Models\\User', 2, 'user@gmail.com', '66100f5d74dd4705f98c33ab4171ed67e6eeec8bc36e8f3c3fb68a3e531a6720', '[\"*\"]', '2023-10-20 00:23:54', NULL, '2023-10-20 00:23:53', '2023-10-20 00:23:54'),
(33, 'App\\Models\\User', 2, 'user@gmail.com', '91c227af442a14f1de38274822ecf14fb0d06d9b4a882d2b4eaede406c43926a', '[\"*\"]', '2023-10-20 00:26:56', NULL, '2023-10-20 00:26:55', '2023-10-20 00:26:56'),
(34, 'App\\Models\\User', 2, 'user@gmail.com', 'a2d0d4d91911f611dd1fdd27316b036f03cc1f5ebdd4969cb7e3babd6841240f', '[\"*\"]', '2023-10-20 00:35:28', NULL, '2023-10-20 00:35:27', '2023-10-20 00:35:28'),
(35, 'App\\Models\\User', 2, 'user@gmail.com', '98260b3095bbeb6d3531e0c38cc1da00de2c8a52b804a3a0491f513e9e5ebee5', '[\"*\"]', '2023-10-20 00:43:22', NULL, '2023-10-20 00:43:08', '2023-10-20 00:43:22'),
(36, 'App\\Models\\User', 2, 'user@gmail.com', '3f3f144a2f8fd7f208c827a958ce58afbb33d958eb47ca9ef9df745b1580bc20', '[\"*\"]', '2023-10-20 00:46:58', NULL, '2023-10-20 00:44:57', '2023-10-20 00:46:58'),
(37, 'App\\Models\\User', 2, 'user@gmail.com', '0d37edf9883f16473a63e45c30441e26e2c37d95dbc4a8898bdd1e3aa170b584', '[\"*\"]', '2023-10-20 01:09:41', NULL, '2023-10-20 01:09:41', '2023-10-20 01:09:41'),
(38, 'App\\Models\\User', 2, 'user@gmail.com', '1e25852e018aa1bce5d1d722f66c512a98b5cefcd31eed32c583751760599ac8', '[\"*\"]', '2023-10-20 01:13:07', NULL, '2023-10-20 01:12:52', '2023-10-20 01:13:07'),
(39, 'App\\Models\\User', 2, 'user@gmail.com', '1cd801fd66e0032745eefc38b5a934173f45e4cabb72fd6915b2460e809235dc', '[\"*\"]', '2023-10-20 01:14:05', NULL, '2023-10-20 01:14:04', '2023-10-20 01:14:05'),
(40, 'App\\Models\\User', 2, 'user@gmail.com', '81df7ac99302bb14d022782f7cae82cd49e059bdeb3b52e915f80c4ce17a0583', '[\"*\"]', '2023-10-20 01:15:18', NULL, '2023-10-20 01:15:18', '2023-10-20 01:15:18'),
(41, 'App\\Models\\User', 2, 'user@gmail.com', '1daf6c64b9fb4a576fd38a8eabcb9726cdade0ed44a9f317c4b6214b13b839dc', '[\"*\"]', '2023-10-20 01:15:45', NULL, '2023-10-20 01:15:44', '2023-10-20 01:15:45'),
(42, 'App\\Models\\User', 2, 'user@gmail.com', 'bbb7a792e72078567a960bed6a553e47280a119b7bb69d318f082b2ea4281fde', '[\"*\"]', '2023-10-20 01:17:27', NULL, '2023-10-20 01:17:21', '2023-10-20 01:17:27'),
(43, 'App\\Models\\User', 2, 'user@gmail.com', 'fbab0597fbedc6eb37a78201003db5d34546b6afaa8850332dacaddf1bbc91dd', '[\"*\"]', '2023-10-20 01:19:26', NULL, '2023-10-20 01:18:52', '2023-10-20 01:19:26'),
(44, 'App\\Models\\User', 2, 'user@gmail.com', '68d2049b4256b53f2c9d48bd79620edff7ad5b007ac1df7bb7d21a3fa611e875', '[\"*\"]', '2023-10-20 01:22:00', NULL, '2023-10-20 01:21:59', '2023-10-20 01:22:00'),
(45, 'App\\Models\\User', 2, 'user@gmail.com', 'ed3743f1fa948b57ac1fbaa608e25f51e906b1e233da1bb5eec5e3e7b7f1a5d2', '[\"*\"]', '2023-10-20 01:29:21', NULL, '2023-10-20 01:29:16', '2023-10-20 01:29:21'),
(46, 'App\\Models\\User', 2, 'user@gmail.com', 'f1d7ca8a094f40db8241558318197e4df6d5e31bd3912dcb84c159999ef2eaf2', '[\"*\"]', '2023-10-20 01:40:10', NULL, '2023-10-20 01:40:10', '2023-10-20 01:40:10'),
(47, 'App\\Models\\User', 2, 'user@gmail.com', '091732bb5166b0220d14f18acf5a36ab6b6ba3a228fe5fbebad4bb96f9cc1c7b', '[\"*\"]', '2023-10-20 01:41:37', NULL, '2023-10-20 01:41:33', '2023-10-20 01:41:37'),
(48, 'App\\Models\\User', 2, 'user@gmail.com', '60057b7a28a616874b19787ca3d3a9a41e3f1e8c571346d0db0a9f8e40091089', '[\"*\"]', '2023-10-20 01:42:14', NULL, '2023-10-20 01:42:14', '2023-10-20 01:42:14'),
(49, 'App\\Models\\User', 2, 'user@gmail.com', 'd5c921c52375a56bc14eae6b9bb2cbce7e2db71595f5068c577ffd317ae83d55', '[\"*\"]', '2023-10-20 01:44:53', NULL, '2023-10-20 01:44:53', '2023-10-20 01:44:53'),
(50, 'App\\Models\\User', 2, 'user@gmail.com', '79cf0874f2a81b63ea94ddf4e2cbce898710a5f80b493f71270ca61c03390580', '[\"*\"]', '2023-10-20 01:56:32', NULL, '2023-10-20 01:47:49', '2023-10-20 01:56:32'),
(51, 'App\\Models\\User', 2, 'user@gmail.com', '258fd8d045a1384e8ea3ec59a97dd053c626db06dffe405fb7bcf6ca59efb77a', '[\"*\"]', '2023-10-20 01:58:54', NULL, '2023-10-20 01:58:53', '2023-10-20 01:58:54'),
(52, 'App\\Models\\User', 2, 'user@gmail.com', 'ef86c649b50811e3980892aa3b55f09f723356c5a20e5c4e6fc6d0097e7ca0e7', '[\"*\"]', '2023-10-20 02:01:48', NULL, '2023-10-20 02:01:48', '2023-10-20 02:01:48'),
(53, 'App\\Models\\User', 2, 'user@gmail.com', '8dceefe07eeda8825b5b8276e272f6c45f6243e3a40649217f37c80ff1db94e6', '[\"*\"]', '2023-10-20 02:02:20', NULL, '2023-10-20 02:02:19', '2023-10-20 02:02:20'),
(54, 'App\\Models\\User', 2, 'user@gmail.com', '24c0231e07ab86604561e8f2595b46666eefb47df36e6c184ccd3985b320a4e6', '[\"*\"]', '2023-10-20 12:48:27', NULL, '2023-10-20 12:48:24', '2023-10-20 12:48:27'),
(55, 'App\\Models\\User', 2, 'user@gmail.com', '211f843185a542acc6fefaf48b748bc59f575082f7a4e851bd55e564f6b72f23', '[\"*\"]', '2023-10-20 13:00:55', NULL, '2023-10-20 13:00:54', '2023-10-20 13:00:55'),
(56, 'App\\Models\\User', 2, 'user@gmail.com', 'd99c68c984ae54ec0a0b88588fd6bf57d2d82afb3984276e5a4215b5bce1c450', '[\"*\"]', '2023-10-20 13:01:15', NULL, '2023-10-20 13:01:13', '2023-10-20 13:01:15'),
(57, 'App\\Models\\User', 2, 'user@gmail.com', '877bf7c874b8a3cfbf1f11d5ac8a544b02d5bae3a35f2f619e7fe878584e22c2', '[\"*\"]', '2023-10-20 13:03:21', NULL, '2023-10-20 13:03:05', '2023-10-20 13:03:21'),
(58, 'App\\Models\\User', 2, 'user@gmail.com', '903956a01e0e1110c2b7b48161cc264fcf32a1ff3a089a088107b837039cd8ab', '[\"*\"]', '2023-10-24 22:53:27', NULL, '2023-10-24 22:52:59', '2023-10-24 22:53:27'),
(59, 'App\\Models\\User', 2, 'user@gmail.com', '0dbf3f4b813df4bd4dd151270a156e83e6fa307948f144113d776d93d5078b80', '[\"*\"]', '2023-10-24 22:58:10', NULL, '2023-10-24 22:58:00', '2023-10-24 22:58:10'),
(60, 'App\\Models\\User', 2, 'user@gmail.com', 'ee290321c67b984591abf3d5f324ff76da0760ad4f23a255619bdc06144ff7d7', '[\"*\"]', '2023-10-24 23:16:52', NULL, '2023-10-24 23:07:47', '2023-10-24 23:16:52'),
(61, 'App\\Models\\User', 2, 'user@gmail.com', '0b01b1e1be9b6a98ee11e73acfc7c03d94dc99b268a4bd1acc45954f8defd1ca', '[\"*\"]', '2023-10-25 02:27:33', NULL, '2023-10-25 02:27:32', '2023-10-25 02:27:33'),
(62, 'App\\Models\\User', 2, 'user@gmail.com', 'a850aa0d41be3f2e3d4bba0bc2eb0338e78a1966b1d253a1a0b4705de5d07b0e', '[\"*\"]', '2023-10-25 02:27:53', NULL, '2023-10-25 02:27:52', '2023-10-25 02:27:53'),
(63, 'App\\Models\\User', 2, 'user@gmail.com', 'fe9c14f5f6e494aa6490e73ae8e539f7ddb1137f3e4035300a9cf05e74e3f759', '[\"*\"]', '2023-10-25 02:27:59', NULL, '2023-10-25 02:27:58', '2023-10-25 02:27:59'),
(64, 'App\\Models\\User', 2, 'user@gmail.com', 'c99b2f5444b2a9aa2309f3f7323d282b4786e734b84f01daa8b20b2fe7a05deb', '[\"*\"]', '2023-10-25 02:28:09', NULL, '2023-10-25 02:28:09', '2023-10-25 02:28:09'),
(65, 'App\\Models\\User', 2, 'user@gmail.com', 'e8c8b275f8e212c27f22eaf3d0c3678aca75d5d7583f99ab3781a0282a7099fd', '[\"*\"]', '2023-10-25 02:37:15', NULL, '2023-10-25 02:37:15', '2023-10-25 02:37:15'),
(66, 'App\\Models\\User', 2, 'user@gmail.com', '38cf45dd214ae1a712c68d6ddcab29e5b7e6c55704898228b614165ed4df3d3a', '[\"*\"]', '2023-10-25 12:12:59', NULL, '2023-10-25 12:06:05', '2023-10-25 12:12:59'),
(67, 'App\\Models\\User', 2, 'user@gmail.com', 'f04cda52cbcdbe4adc032596adb12396170b8acceb6ff965597c14959555c739', '[\"*\"]', '2023-10-25 12:22:19', NULL, '2023-10-25 12:15:13', '2023-10-25 12:22:19'),
(68, 'App\\Models\\User', 2, 'user@gmail.com', '3d4d9dc653377a7ee53dc5904edc7cfa8d3e714e620591d3474c15f7dfe4e8cb', '[\"*\"]', '2023-10-25 12:39:10', NULL, '2023-10-25 12:36:23', '2023-10-25 12:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `doc_id` int(10) UNSIGNED NOT NULL,
  `ratings` int(10) UNSIGNED DEFAULT NULL,
  `reviews` longtext DEFAULT NULL,
  `reviewed_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `doc_id`, `ratings`, `reviews`, `reviewed_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 4, 'This Dentist is very friendly!', 'Kise', 'active', '2023-10-20 18:44:08', '2023-10-20 18:44:08'),
(2, 4, 1, 5, 'This Dentist is good and helpful!', 'Admin', 'active', '2023-10-20 18:44:08', '2023-10-20 18:44:08');

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
('6IRg1EijyVemIzmzISurA5TuwOiHcvtKZYpWqWck', NULL, '192.168.56.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMW84cGZJNmo2UmFXbmZ5N0k5WGx2VjdPdW5YQUw4eXo5dXEyS3ZtWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xOTIuMTY4LjU2LjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1698226028),
('bhWcXndpSNZsIJuWJL8njksHt50xf70XrfrotidW', 1, '172.29.36.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicG1xRGtjZG1yTGZnU3VQdTRRSnFKaFVYZGVWNXNuWGI5cWhXNDZ5ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xNzIuMjkuMzYuMTM4OjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRmN3hJSkRySFEuQUJ4dXYyWXFXUy5PRWFIM0xGemYwSllXMjU4ZS95djNRU3J4Z0lXaDlEeSI7fQ==', 1698214158),
('xRX96RRNB5dDJkgSB2R72jcnRHUukNyNxxzbCdYA', 4, '192.168.1.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.57', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYkQ0TGt1SnB4ZFo0VWJFOXpVR1FLUXhhT01iUWZPb01FT2RkeW0ydiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xOTIuMTY4LjEuNTo4MDAwL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkaWVoQmRuOHhDNmw0N2dVaG8vYk5RLjdGVFozZXJBSFAzODgxQWJnbHBWWkFZRWp4STRKRHEiO30=', 1697830972),
('zkhyrrQbtZZIWECnFHfC3d80OPfV0XhSU83UotUl', 1, '192.168.1.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.61', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidzBlSmUxQmZ6UlRJdGU4aHEyTVhQTkd3N2J5OXRFMGpTSVVBNTJIWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xOTIuMTY4LjEuMTQ6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGY3eElKRHJIUS5BQnh1djJZcVdTLk9FYUgzTEZ6ZjBKWVcyNThlL3l2M1FTcnhnSVdoOUR5Ijt9', 1698263515);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doctor', 'admin@gmail.com', NULL, '$2y$10$f7xIJDrHQ.ABxuv2YqWS.OEaH3LFzf0JYW258e/yv3QSrxgIWh9Dy', NULL, NULL, NULL, NULL, NULL, 'profile-photos/Ghc2b77Z8prwNE3blLwuQcZ5lBc6w1lsnDyakW5e.jpg', '2023-10-16 01:37:05', '2023-10-16 02:19:07'),
(2, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$9ynfHT9HzB6R1NlxFHw3f.MdfAOZjIbacJcDL.r6Zxky2zJj5Nhi2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-16 01:39:19', '2023-10-16 01:39:19'),
(3, 'user2', 'user', 'user2@gmail.com', NULL, '$2y$10$oKmGosiPvEROio1nt23xGuvhTt2y0wEPmd9dWm6zocVvWbsyTdmnG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-17 14:49:10', '2023-10-17 14:49:10'),
(4, 'Doctor2', 'doctor', 'doctor2@gmail.com', NULL, '$2y$10$iehBdn8xC6l47gUho/bNQ.7FTZ3erAHP3881AbglpVZAYEjxI4JDq', NULL, NULL, NULL, NULL, NULL, 'profile-photos/KpjG4XyfDOUD3gnPbgyce5cYOR4VG6zBZIbycACX.png', '2023-10-19 12:42:53', '2023-10-19 12:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `bio_data` longtext DEFAULT NULL,
  `fav` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fav`)),
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `bio_data`, `fav`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '[4]', 'active', '2023-10-16 01:39:19', '2023-10-25 12:39:10'),
(2, 3, NULL, NULL, 'active', '2023-10-17 14:49:10', '2023-10-17 14:49:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_doc_id_unique` (`doc_id`);

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

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
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_doc_id_foreign` FOREIGN KEY (`doc_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
