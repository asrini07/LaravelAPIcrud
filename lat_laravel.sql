-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 29, 2018 at 06:02 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lat_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '$2y$10$7fzl0/z.K7Ym/E24mv4gfum3OlcDvMoR5qi3XXNrTe9H09CdX3suC', NULL, '2018-08-09 20:35:06', '2018-08-09 20:35:06'),
(2, 'Administrator1', 'administrator@gmail.com', '$2y$10$g1pyfcQX5o3SfDTs1l82meTJojhZfYSn2oW20qYW0wTVeOsPgYigy', NULL, '2018-08-09 20:36:23', '2018-08-09 20:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `artikels`
--

CREATE TABLE `artikels` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikels`
--

INSERT INTO `artikels` (`id`, `user_id`, `judul`, `kontent`, `created_at`, `updated_at`) VALUES
(1, 1, 'judul 1', 'content 1', NULL, NULL),
(3, 2, 'judulll 2', 'kontentttt 2', '2018-08-27 00:36:50', '2018-08-27 00:36:50'),
(4, 1, 'judul title', 'kontent content', '2018-08-27 03:29:13', '2018-08-27 03:29:13'),
(5, 1, 'judul title 1', 'kontent content 1', '2018-08-27 03:29:27', '2018-08-27 03:29:27'),
(6, 3, 'coba', 'coba', '2018-08-27 20:30:48', '2018-08-27 20:30:48'),
(7, 1, 'coba 1', 'coba 1', '2018-08-27 20:39:21', '2018-08-27 20:39:21'),
(8, 1, 'New Title', 'New Body Content', '2018-08-27 23:59:40', '2018-08-27 23:59:40'),
(9, 1, 'New Title', 'New Body Content', '2018-08-28 02:09:35', '2018-08-28 02:09:35'),
(10, 7, 'New Title', 'New Body Content', '2018-08-28 02:28:01', '2018-08-28 02:28:01'),
(11, 1, 'coba lagi', 'coba lagi', '2018-08-28 03:12:01', '2018-08-28 03:12:01'),
(12, 1, 'coba lagi', 'coba lagi', '2018-08-28 03:23:22', '2018-08-28 03:23:22'),
(13, 1, 'coba lagi', 'coba lagi', '2018-08-28 03:24:02', '2018-08-28 03:24:02'),
(14, 1, 'coba lagi', 'coba lagi', '2018-08-28 19:31:04', '2018-08-28 19:31:04'),
(15, 1, 'coba lagi', 'coba lagi', '2018-08-28 20:05:08', '2018-08-28 20:05:08'),
(16, 1, 'coba lagi', 'coba lagi', '2018-08-28 20:05:10', '2018-08-28 20:05:10'),
(17, 1, 'coba lagi', 'coba lagi', '2018-08-28 20:05:12', '2018-08-28 20:05:12'),
(18, 1, 'coba lagi', 'coba lagi', '2018-08-28 20:16:43', '2018-08-28 20:16:43'),
(19, 1, 'coba lagi', 'coba lagi', '2018-08-28 20:24:17', '2018-08-28 20:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `artikel_kategori`
--

CREATE TABLE `artikel_kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `artikel_id` int(10) UNSIGNED NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel_kategori`
--

INSERT INTO `artikel_kategori` (`id`, `artikel_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(3, 10, 5, NULL, NULL),
(4, 11, 6, NULL, NULL),
(5, 12, 7, NULL, NULL),
(6, 13, 8, NULL, NULL),
(7, 14, 9, NULL, NULL),
(8, 15, 10, NULL, NULL),
(9, 16, 11, NULL, NULL),
(10, 17, 12, NULL, NULL),
(11, 18, 12, NULL, NULL),
(12, 17, 11, NULL, NULL),
(13, 19, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `slug`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'php', 'PHP', '2018-08-27 02:14:15', '2018-08-27 02:14:15'),
(2, 'js', 'JavaScript', '2018-08-27 02:14:37', '2018-08-27 02:14:37'),
(3, 'new-category', 'New Category', '2018-08-27 23:59:40', '2018-08-27 23:59:40'),
(5, 'new-category', 'New Category', '2018-08-28 02:28:01', '2018-08-28 02:28:01'),
(6, 'belajar-bersama', 'belajar', '2018-08-28 03:12:01', '2018-08-28 03:12:01'),
(7, 'belajar-bersama', 'belajar', '2018-08-28 03:23:22', '2018-08-28 03:23:22'),
(8, 'belajar-bersama', 'belajar', '2018-08-28 03:24:02', '2018-08-28 03:24:02'),
(9, 'belajar-bersama', 'belajar', '2018-08-28 19:31:04', '2018-08-28 19:31:04'),
(10, 'belajar-bersama', 'belajar', '2018-08-28 20:05:08', '2018-08-28 20:05:08'),
(11, 'belajar-bersama', 'belajar', '2018-08-28 20:05:10', '2018-08-28 20:05:10'),
(12, 'belajar-bersama', 'belajar', '2018-08-28 20:05:12', '2018-08-28 20:05:12'),
(13, 'belajar-bersama', 'belajar', '2018-08-28 20:16:43', '2018-08-28 20:16:43'),
(14, 'belajar-bersama', 'belajar', '2018-08-28 20:24:17', '2018-08-28 20:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `kotas`
--

CREATE TABLE `kotas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kota_asal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2018_08_01_045321_create_mmahasiswas_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(9, '2018_08_09_074845_create_admins_table', 3),
(10, '2018_08_13_064517_create_roles_table', 4),
(11, '2018_08_13_064700_create_user_roles_table', 4),
(12, '2018_08_16_062355_add_actiovation_columns_tousers', 5),
(13, '2018_08_16_082654_add_column_activate_inuser', 6),
(14, '2018_08_20_063834_create_jobs_table', 7),
(15, '2018_08_20_064110_create_failed_jobs_table', 8),
(16, '2018_08_21_072312_create_artikels_table', 9),
(17, '2018_08_21_072447_create_kategoris_table', 9),
(18, '2018_08_21_101532_create_kotas_table', 9),
(19, '2018_08_27_043518_create_category_post_table', 9),
(21, '2018_08_28_044410_create_artikel_kategori_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `mmahasiswas`
--

CREATE TABLE `mmahasiswas` (
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mmahasiswas`
--

INSERT INTO `mmahasiswas` (`nim`, `nama`, `jk`, `alamat`, `email`, `nohp`, `created_at`, `updated_at`) VALUES
('0987', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2018-08-02 01:55:10', '2018-08-02 01:55:10'),
('1111', 'Asrini', 'P', 'Cirebon', 'asrinirpl07@gmail.com', '085294901108', '2018-08-05 21:57:23', '2018-08-05 21:57:23'),
('11223', 'asrin', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-07 23:17:22', '2018-08-07 23:17:22'),
('11224', 'asrin', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-07 23:22:33', '2018-08-07 23:22:33'),
('12121', 'asriniii', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', NULL, '2018-08-07 02:50:59'),
('1605110422', 'Asrinii', 'pl', 'cirebone', 'asrinirpl07@gmail.coms', '085294901108', '2018-08-01 21:32:11', '2018-08-01 21:32:40'),
('160777', 'Asrini', 'pp', 'cirebon', 'asrinirpl07@gmail.com', '085294901108', '2018-08-05 19:55:23', '2018-08-05 19:55:23'),
('22', 'A aja', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-14 02:58:06', '2018-08-14 02:58:06'),
('2212', 'A aja', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-15 00:17:23', '2018-08-15 00:17:23'),
('22126', 'A aja', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-15 20:49:50', '2018-08-15 20:49:50'),
('221260', 'A aja', 'L', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-20 23:02:54', '2018-08-20 23:02:54'),
('2212600', 'A aja', 'L', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-14 01:38:57', '2018-08-20 23:16:05'),
('222', 'Aaaaaaaa', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-08 02:01:55', '2018-08-08 02:01:55'),
('2234', 'asrin', 'Aas', 'asrini', 'asrinirpl07@gmail.comm', '0852949011089', '2018-08-07 23:44:51', '2018-08-07 23:44:51'),
('234', 'Asrini', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', NULL, '2018-08-08 00:40:39'),
('345', 'Aaaaaaaa', 'P', 'Cirebon', 'asrinirpl07@gmail.comm', '0852949011089', NULL, '2018-08-08 00:52:33'),
('456', 'Cleve Klein Sr.', 'Facilis in asperiores quas ex non nisi. Mollitia aliquid quo odit eos tempore.', '77511 Sydney Lock\nLake Daija, AL 12666-5914', 'tomasa55@keeling.com', '(636) 731-6571 x75584', NULL, NULL),
('99999', 'Iyo', 'P', 'Cirebon', 'asrinirpl07@gmail.com', '085294901108', '2018-08-05 22:02:07', '2018-08-05 22:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0005075707c4fc47d8e273ce58e3fddd428f73d54fe1a66203e349c032305513c1ea15f943ebfc49', 2, 1, 'nApp', '[]', 0, '2018-08-20 19:44:38', '2018-08-20 19:44:38', '2019-08-21 02:44:38'),
('027d4c145d10b962e57b998423005cdbb0852105fccbe5c7f3496587ff5efea6563412036b816226', 8, 1, 'nApp', '[]', 0, '2018-08-16 00:00:04', '2018-08-16 00:00:04', '2019-08-16 07:00:04'),
('02a8fed16419566f9d1f465fa80e9168b49f348983165478b63f03f072b85b04cdf117f39fa778d8', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 00:13:57', '2018-08-15 00:13:57', '2019-08-15 07:13:57'),
('031452aedb6a9ffc0a5e991fe7437f8bb2855743af03870566d28b7efef8bea73f57e11bf79f5f11', 11, 1, 'nApp', '[]', 0, '2018-08-20 00:14:23', '2018-08-20 00:14:23', '2019-08-20 07:14:23'),
('03779c1c7565cdc8ca18850391f627f6dd9c10843cc7e8bc263f839a4c938cacace12ffc3a2cad03', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 00:54:57', '2018-08-15 00:54:57', '2019-08-15 07:54:57'),
('07cb77d36e85c5c0401a42f59767cbc98ac77ae2432190559fdf1e5df6a2cdc31ca4c92bc4e0e7ac', 6, 1, 'nApp', '[]', 0, '2018-08-19 20:57:49', '2018-08-19 20:57:49', '2019-08-20 03:57:49'),
('0a78d27b1c989987bb2b83996de4f958ff90f274d2cacd51697ee00c4982bced1244c829803ad783', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 20:49:09', '2018-08-15 20:49:09', '2019-08-16 03:49:09'),
('0ccad6da1eb350e94c1d714613a664a52578bfac190cdc1ed4a091d932f909d9436ae8cecc41e3f5', 3, 1, 'nApp', '[]', 0, '2018-08-16 01:09:42', '2018-08-16 01:09:42', '2019-08-16 08:09:42'),
('0fec0a5ee088d582f9e61c5bf76f2b0ff4871753a489fe36b1bc6db3187857b4e59620b627446f24', 12, 1, 'nApp', '[]', 0, '2018-08-16 01:05:30', '2018-08-16 01:05:30', '2019-08-16 08:05:30'),
('136d0cc90d02ac11f54425a913d8c644b7e6a791d60a9e5e04489b9d2d29eade3f403b93e1857b93', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-20 23:02:16', '2018-08-20 23:02:16', '2019-08-21 06:02:16'),
('144806e9a0ddaf06ee4d26ee7f6f0c8e865afddd102da16806ac3894660281e52967a5a1c777d8a6', 12, 1, 'nApp', '[]', 0, '2018-08-20 00:23:12', '2018-08-20 00:23:12', '2019-08-20 07:23:12'),
('16b13f602a80276bdbae9946caf9dc7dc5cfd88f177668b25c5da4b5bd886ffed000c47abf352a38', 1, 2, NULL, '[\"user\"]', 0, '2018-08-20 20:04:53', '2018-08-20 20:04:53', '2019-08-21 03:04:53'),
('18cf871f004c8bcd047dd42e50750e5e0482d9666670eb8e2b9fca245c3bddb39dd88d3a7371e07b', 2, 1, 'nApp', '[]', 0, '2018-08-20 19:51:37', '2018-08-20 19:51:37', '2019-08-21 02:51:37'),
('19e954b5d282c76acf84dd169046bb8afd2fb5200556f85c3668cb309c03fabb2adac4a21b0a8f03', 1, 1, 'nApp', '[]', 0, '2018-08-20 19:44:05', '2018-08-20 19:44:05', '2019-08-21 02:44:05'),
('1ae25b16050b0acc7096f7a45b70331edb701fe59926eca3328157648df7feb0051574d9d8999d19', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 01:12:04', '2018-08-15 01:12:04', '2019-08-15 08:12:04'),
('1d987ceba0c7e1098d06a7dcba981f9cdac42045c687dc880fbbb1bf8f30c23376853ba2c7aef915', 31, 1, 'nApp', '[]', 0, '2018-08-20 01:38:36', '2018-08-20 01:38:36', '2019-08-20 08:38:36'),
('1f0b3e92bcd13026535f75a897d7f7494c79a6daf09c455bb574e575c4dedc8ad504532e09791f72', 1, 2, NULL, '[\"user\"]', 0, '2018-08-15 00:12:56', '2018-08-15 00:12:56', '2019-08-15 07:12:56'),
('23c4e3254dd893aeb76e90a651987425ef7f0587bf046594e8f4136ac0166dfcebc6ac6a9aeb65a6', 1, 1, 'nApp', '[]', 0, '2018-08-19 20:39:13', '2018-08-19 20:39:13', '2019-08-20 03:39:13'),
('23f692a650679867b5ef85a7a27070e25f410f5af405fac4fb051367d1f1b4afda32fd1f3f3f15fc', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 01:11:50', '2018-08-15 01:11:50', '2019-08-15 08:11:50'),
('244e04319d7423fc3509522756861977f93142c73104eae936ec5bc86bddf275ea6dfdd6aa525c58', 43, 1, 'nApp', '[]', 0, '2018-08-20 02:08:30', '2018-08-20 02:08:30', '2019-08-20 09:08:30'),
('25e65d65bac6798e836d8ef9655725285b9559bb552b25beb2b79d3c8faf3b06e77b1250c0bd73d6', 20, 1, 'nApp', '[]', 0, '2018-08-20 00:49:24', '2018-08-20 00:49:24', '2019-08-20 07:49:24'),
('2a5445569c13b8a551b6e3079bf358e8d2936902131503c1a4b2319f9f57a9a3fa92d772111a9eed', 34, 1, 'nApp', '[]', 0, '2018-08-20 01:43:13', '2018-08-20 01:43:13', '2019-08-20 08:43:13'),
('2b2674739be5e2e1a05727394853aea5098703e64a28bcf11a1952ac5500a221b44a3bb3e0c73e68', 35, 1, 'nApp', '[]', 0, '2018-08-20 01:46:17', '2018-08-20 01:46:17', '2019-08-20 08:46:17'),
('2ef2d69fb7fe0631772ecb7e57a638d52e95370deb10dc481db5874bc19d317bbb82f7e1131bd88f', 21, 1, 'nApp', '[]', 0, '2018-08-20 00:49:38', '2018-08-20 00:49:38', '2019-08-20 07:49:38'),
('308d40b1afbd1adb1244df4e6b626071c2c5f94d48d94217bb9df1756f2a2b8b2e62ec9f36b61b78', 14, 1, 'nApp', '[]', 0, '2018-08-20 00:26:28', '2018-08-20 00:26:28', '2019-08-20 07:26:28'),
('31a10e7f18dd16709f2da923e4b67ce5b24f9216f8a9a91bb5f0cd0684928f9804b3cbd706ca2287', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-14 19:39:20', '2018-08-14 19:39:20', '2019-08-15 02:39:20'),
('32024dde6249472dfadddd66b1b3b3a48c94259e1c2b72f00e66359c4e6c49fbdd05586768c46a95', 29, 1, 'nApp', '[]', 0, '2018-08-20 01:35:59', '2018-08-20 01:35:59', '2019-08-20 08:35:59'),
('32f2458304663266bbca83f84d669e63e539b42fec0bb763295bf27718347a671780735318f6a360', 1, 1, 'nApp', '[]', 0, '2018-08-16 01:34:51', '2018-08-16 01:34:51', '2019-08-16 08:34:51'),
('344587f7c015cf6141dea613c1230bacd7e9ae646867846a6b4a82407fbbd82bf6c54ba1f5578f28', 1, 2, NULL, '[\"*\"]', 0, '2018-08-15 00:27:49', '2018-08-15 00:27:49', '2019-08-15 07:27:49'),
('347296354f72309dc05899916781e91c31520414867e367fe49a91def2958974768ed842173cf928', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 00:51:22', '2018-08-15 00:51:22', '2019-08-15 07:51:22'),
('347fc5208489936c79c10c60d28153fb6befc8b285ef039317c6e8059c998b900ce2c5491ef4da1d', 23, 1, 'nApp', '[]', 0, '2018-08-20 00:51:09', '2018-08-20 00:51:09', '2019-08-20 07:51:09'),
('3973aa4a960b21bc19a3e40d918d74ab792f2badd3ad8429233ebe0dd11b3e19efa9c037468fe979', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-14 01:21:31', '2018-08-14 01:21:31', '2019-08-14 08:21:31'),
('3b33cb9d7ba2201020b6fbd73ee916ca3c8810664ede954f1017328fe6bfb94c14b350fcbe8ed217', 26, 1, 'nApp', '[]', 0, '2018-08-20 00:54:02', '2018-08-20 00:54:02', '2019-08-20 07:54:02'),
('3cb7dec6edc7ebef5910c4afc323d3d472e3432d40ffcfa641f7f3d90cda02b883311bb65c2d769d', 28, 1, 'nApp', '[]', 0, '2018-08-20 01:12:19', '2018-08-20 01:12:19', '2019-08-20 08:12:19'),
('3cc91ac20f0b622fefea08807ffcda9598d4fb0ff8eb04b366bf2c9ef3b29da5f3a27dbbc74bb1c7', 1, 1, 'nApp', '[]', 0, '2018-08-20 19:34:37', '2018-08-20 19:34:37', '2019-08-21 02:34:37'),
('3de183b6fd4cdb24b6541384d0ac188d1d1ac83a0a35f228e47d135ed8fc542bbccf58f420fba41a', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-14 01:28:38', '2018-08-14 01:28:38', '2019-08-14 08:28:38'),
('3e9b2a6feaac4752f3bdb00b869480b3fafa8ae6b72c888a860a0c80a3e2819d1579f82ef6bf9d38', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 02:23:17', '2018-08-15 02:23:17', '2019-08-15 09:23:17'),
('3ea6b9eda83debdf5a04df95e971cf2eb294e271656ce9f7a4cc49b49d67f12f6d981012224d05e4', 32, 1, 'nApp', '[]', 0, '2018-08-20 01:40:25', '2018-08-20 01:40:25', '2019-08-20 08:40:25'),
('40e849940fd5b174cd64d71c848b0174b27f9ac5595d530dfb095cb402d727378c5b9240f5f5c00a', 3, 1, 'nApp', '[]', 0, '2018-08-20 02:36:16', '2018-08-20 02:36:16', '2019-08-20 09:36:16'),
('413aa7f359aa663d22255ea93a0ba546037b9fb7dc6b4046bf5bdec0603a196b05eb0885ab257a75', 8, 1, 'nApp', '[]', 0, '2018-08-16 00:51:35', '2018-08-16 00:51:35', '2019-08-16 07:51:35'),
('41c070c307dea6b231795bfb59586a41ce138ccb51894ee6c07922b11152ea521e4f3408881d0464', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 19:48:20', '2018-08-15 19:48:20', '2019-08-16 02:48:20'),
('423cc17ff40a709d89ba68cb5396c767bfcdedf5bb0715de2e01cbc5c5543b6b067cecb014f540c4', 2, 2, NULL, '[\"user\"]', 0, '2018-08-14 20:53:46', '2018-08-14 20:53:46', '2019-08-15 03:53:46'),
('4276ecb882073186639512173e56a86656f1355e8633ec9cf5a17d9d44497d58c0e264dd23c1c1fc', 24, 1, 'nApp', '[]', 0, '2018-08-20 00:52:05', '2018-08-20 00:52:05', '2019-08-20 07:52:05'),
('4728037e987aee2da2b3d5b5112d62b852ea541d2be7283d4443196c325ee7c9d2bbfdf159497b40', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 00:22:44', '2018-08-15 00:22:44', '2019-08-15 07:22:44'),
('49c4b8146a706f46ea2f8aa9ddd798fca2b0efa6aee15c9fe4a418fc6b7c76e164ae5b047001110a', 36, 1, 'nApp', '[]', 0, '2018-08-20 01:47:27', '2018-08-20 01:47:27', '2019-08-20 08:47:27'),
('51fb16946c568c25eef171128f99e42e76a001f804f2aa57222fac9163c100605d3c5a5541546843', 42, 1, 'nApp', '[]', 0, '2018-08-20 02:05:49', '2018-08-20 02:05:49', '2019-08-20 09:05:49'),
('5280a70493b0a3ab79583c2d1037d715145a57316222a3faf9fad41cd8efe67921fdbf6e9c9962b9', 16, 1, 'nApp', '[]', 0, '2018-08-20 00:36:05', '2018-08-20 00:36:05', '2019-08-20 07:36:05'),
('52b79c883f9b9e82fe92f1466d46932fcdd7fcc82d5ccbc3c2d5f0f9c49e6a1b117fc8e05428e0c1', 14, 1, 'nApp', '[]', 0, '2018-08-16 00:11:28', '2018-08-16 00:11:28', '2019-08-16 07:11:28'),
('52da5814e47b17e495105ac6dd66d4c0b773920de2c5bc8c11cdacac58b6dc12d0f19348388179ed', 1, 2, NULL, '[\"user\"]', 0, '2018-08-20 23:01:17', '2018-08-20 23:01:17', '2019-08-21 06:01:17'),
('5550e235cb004b8c716e192455bf0ca21f8ddc79346c946387961cb0a70f3424a49fdf653ec51d07', 3, 1, 'nApp', '[]', 0, '2018-08-16 01:56:21', '2018-08-16 01:56:21', '2019-08-16 08:56:21'),
('57c8176ccc37b97c1d109df961d6dcaa3d3880889606c0846d34cbb333318cc58f0f48d434141ac2', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 21:33:08', '2018-08-15 21:33:08', '2019-08-16 04:33:08'),
('5cd5a1499b0596eaad7609be50c343067fc0d187c465daa67843bc12507a47b162735f4aea87f179', 9, 1, 'nApp', '[]', 0, '2018-08-19 21:07:55', '2018-08-19 21:07:55', '2019-08-20 04:07:55'),
('5f6250330c61ff54dce241e2d2ad1b097e0b4fdebbb3e213b7cb1f13047a7461e146244a76e51475', 2, 2, NULL, '[\"user\"]', 0, '2018-08-20 21:17:41', '2018-08-20 21:17:41', '2019-08-21 04:17:41'),
('5ff5e1b840c0b448d46749cb6df06167552e81678311fa4193f433d104422f045e626cca0c89f978', 7, 1, 'nApp', '[]', 0, '2018-08-15 22:03:32', '2018-08-15 22:03:32', '2019-08-16 05:03:32'),
('60218795c49a7f107ca0f77862ed5b8a65a879991e92dd7fd97d0ea20432ccb1359405edcf4a406b', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 00:45:20', '2018-08-15 00:45:20', '2019-08-15 07:45:20'),
('60e06ab9dd4d25c31b50d0d3126735979f8706f1f760ebdff6f837f1f69a0d789b66518b51f64df3', 4, 1, 'nApp', '[]', 0, '2018-08-16 03:03:07', '2018-08-16 03:03:07', '2019-08-16 10:03:07'),
('6503ec95afe7c23094c8d3cbe87fa4f730b3c5f684cd1f9405c069565b30fff1f7c8433406a08440', 1, 1, 'nApp', '[]', 0, '2018-08-16 01:44:58', '2018-08-16 01:44:58', '2019-08-16 08:44:58'),
('65e7be8de6f3fc695b3681722f56a1d29897d51322f1dd4cd60bd7866d4dd8cd75848e0f06b8c3a3', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 19:25:44', '2018-08-15 19:25:44', '2019-08-16 02:25:44'),
('680ee0cb6f725998dcc1f097c52b189035edcc81a014ca2bc0b1146ac39278fc7b0a4298bf827370', 1, 1, 'nApp', '[]', 0, '2018-08-16 01:06:04', '2018-08-16 01:06:04', '2019-08-16 08:06:04'),
('6a41a697befea963c03ee482de4ef4dbd352fea91b10d24638836d9adac055cb19eac1bc33814568', 1, 1, 'nApp', '[]', 0, '2018-08-20 19:30:09', '2018-08-20 19:30:09', '2019-08-21 02:30:09'),
('6b6d0a1c2089a347660ef96e78b2611a24014c2ea561a53e17648c32d24c7baa5d57a9de762deab9', 1, 2, NULL, '[\"user\"]', 0, '2018-08-20 20:04:44', '2018-08-20 20:04:44', '2019-08-21 03:04:44'),
('711b529b8339031c6ff076bcf7ef76b258f9f36782550afe90b44bea61b1c4b1b5fbfe7159c19bd3', 1, 2, NULL, '[\"user\"]', 0, '2018-08-15 20:50:03', '2018-08-15 20:50:03', '2019-08-16 03:50:03'),
('787a05517a478bead2b33f80c48c4b624c43a8e13322b6030a33528e2abb72e81f1b7c38bc32fc6a', 1, 1, 'nApp', '[]', 0, '2018-08-20 19:16:39', '2018-08-20 19:16:39', '2019-08-21 02:16:39'),
('7ae88323c31f5c32d83bf73bce3327bdc749701670ef4e184732744abd4ddf16fd3f78a4068c05b2', 39, 1, 'nApp', '[]', 0, '2018-08-20 01:50:28', '2018-08-20 01:50:28', '2019-08-20 08:50:28'),
('7c50ecc7a40de51adc22584aef7194d553b391732782690ea1ff80db6b2efac10409a2adf1d2ae59', 3, 1, 'nApp', '[]', 0, '2018-08-19 20:48:55', '2018-08-19 20:48:55', '2019-08-20 03:48:55'),
('7d9bc2a4ed5503f9e1441074352baeee2bc7ef364661e49a399fdebac065c4b0dd5432812c92457b', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-27 19:38:04', '2018-08-27 19:38:04', '2019-08-28 02:38:04'),
('8028d5eff24c8740dd9f69bba77e1791f2b33129625144023b0390d80f4e001e299e330a3d83cfc6', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-14 01:15:31', '2018-08-14 01:15:31', '2019-08-14 08:15:31'),
('8062fe694e73bd50346cf43bd812c18e970752411e90d41cecb44acd0a48d9295c6b10a9b0911205', 9, 1, 'nApp', '[]', 0, '2018-08-16 00:05:46', '2018-08-16 00:05:46', '2019-08-16 07:05:46'),
('815c8e929d67d6bb94bec6e085dfb8682947ce5d0f131191424ebf2c96e9acc9660d22c3aabd38d0', 6, 1, 'nApp', '[]', 0, '2018-08-19 19:20:15', '2018-08-19 19:20:15', '2019-08-20 02:20:15'),
('835f0a423c38ecba1107ffd022b25b534b60d5f69baecd01ec721bf285472f453660d8fb8b266c4e', 5, 1, 'nApp', '[]', 0, '2018-08-19 19:19:04', '2018-08-19 19:19:04', '2019-08-20 02:19:04'),
('83967ae1ec4794781f90beb58c46d25b4b795f4b8bcc2b492ce1d70c4f95dc1cfd13f91eb93e9d9a', 4, 1, 'nApp', '[]', 0, '2018-08-20 02:38:58', '2018-08-20 02:38:58', '2019-08-20 09:38:58'),
('8874c4163f7ce318c93c879f7d4b51799bfc0a2375fffc084c9567027c8ee023e1284d84d94beb6b', 46, 1, 'nApp', '[]', 0, '2018-08-20 02:12:53', '2018-08-20 02:12:53', '2019-08-20 09:12:53'),
('890812225db467e2c93e612a81b8ad52371b3fd060eac2a8df175dcc4ee4496a625534b79eb57462', 6, 1, 'nApp', '[]', 0, '2018-08-16 00:41:28', '2018-08-16 00:41:28', '2019-08-16 07:41:28'),
('894744a121d97b9f4a4a2bfabcb205222ec8059d55610250c0cf2d2bfabb44f9494213c813d19be3', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-20 23:53:13', '2018-08-20 23:53:13', '2019-08-21 06:53:13'),
('89b65095083fcc92026d1545ed2542223c733a8ace45036a677d6711f2776cff3800732c9afd2d84', 16, 1, 'nApp', '[]', 0, '2018-08-16 00:13:52', '2018-08-16 00:13:52', '2019-08-16 07:13:52'),
('8b423f52ecc4cbe84bc51c7db2fbcc00534b9b7267116cebdd9705eaa0622634b9e7d25aebf93685', 2, 2, NULL, '[\"*\"]', 0, '2018-08-14 02:57:19', '2018-08-14 02:57:19', '2019-08-14 09:57:19'),
('8ea4d74fd563a15715671d8bc397d4b29ea751d74bd7bc1b5f795c46bccea98a7b72b39f04100fed', 2, 2, NULL, '[\"user\"]', 0, '2018-08-15 00:17:41', '2018-08-15 00:17:41', '2019-08-15 07:17:41'),
('8f120f97a53250453eeebb7d40dcd3272e2020199fdf58bdf6396451934544b58d6e0bb2b374885a', 1, 1, 'nApp', '[]', 0, '2018-08-20 19:49:08', '2018-08-20 19:49:08', '2019-08-21 02:49:08'),
('8f47668c88453515224105d0a463961fd4da3dedc0367c490467258809e804cfc57303def52b273b', 10, 1, 'nApp', '[]', 0, '2018-08-19 19:32:26', '2018-08-19 19:32:26', '2019-08-20 02:32:26'),
('90d56f40bc7350a6dbe1fc788a8c0db282a9f42e9ba510eff90fca2e5fcb8bdf6a3ab23e4377902b', 3, 1, 'nApp', '[]', 0, '2018-08-16 00:35:47', '2018-08-16 00:35:47', '2019-08-16 07:35:47'),
('952fa837ab623527b8e1fbf2672ae56472647df03f0dbabc036f0603656b9da337a5f9887cb062c8', 3, 1, 'nApp', '[]', 0, '2018-08-16 01:44:23', '2018-08-16 01:44:23', '2019-08-16 08:44:23'),
('96bbdfdd8a579a96d27e88b748cd1c4e72e1eadab4a751990f14279b1b533e0e12671cefe570a44d', 12, 1, 'nApp', '[]', 0, '2018-08-16 00:06:01', '2018-08-16 00:06:01', '2019-08-16 07:06:01'),
('9c27486840ce554132b2395f971dfa8bb72bd1e8a633c9630e4fea1b083a39fd6a0b123b611b3408', 4, 1, 'nApp', '[]', 0, '2018-08-19 20:52:53', '2018-08-19 20:52:53', '2019-08-20 03:52:53'),
('9c55c970f0257df2cdce1f64441bbaa98da7fc48c5bf5244c83a368a5551777e4eef37abab7fe0f0', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 01:34:53', '2018-08-15 01:34:53', '2019-08-15 08:34:53'),
('9c907bf22549549288223b2ed5c35a65f004076005a3a4d98403e131c8a1bce7bcf04407660adedb', 1, 1, 'nApp', '[]', 0, '2018-08-20 02:27:24', '2018-08-20 02:27:24', '2019-08-20 09:27:24'),
('9d9201f27d06afa1f342ec94f39e497f116f2362a4b2d7d67e75baba1bba735da84686e6314defa2', 10, 2, NULL, '[\"user\"]', 0, '2018-08-19 21:16:34', '2018-08-19 21:16:34', '2019-08-20 04:16:34'),
('9fac4a452190a2e0296f6bdcbe0058101f78343848a692d422cc4c7e2ec8197386aad54f1aeb9abe', 13, 1, 'nApp', '[]', 0, '2018-08-16 00:10:15', '2018-08-16 00:10:15', '2019-08-16 07:10:15'),
('a0e2014ccbcb0d5634ff37b396bff2b497573cf027b22e4c91a3a46e4e296ba734cafec3b0eb847c', 1, 2, NULL, '[\"*\"]', 0, '2018-08-20 23:00:39', '2018-08-20 23:00:39', '2019-08-21 06:00:39'),
('a1081ac614b2ac491de24c26686202cc7c49e085f57142d334a053cc7bc90cdbdf499fcf0b1d9c33', 18, 1, 'nApp', '[]', 0, '2018-08-20 00:39:08', '2018-08-20 00:39:08', '2019-08-20 07:39:08'),
('a428532317856c889d5ad71d9a38b380515c9d901c948ef6739c8b245eaacbe35a78ff4c27b023e5', 1, 2, NULL, '[\"user\"]', 0, '2018-08-20 23:01:38', '2018-08-20 23:01:38', '2019-08-21 06:01:38'),
('a4527c36da6e15f697c43a9041b3d6a69917cad90ab5bd3e79354dce89b3dbce8c3d597fdec62d38', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 00:47:48', '2018-08-15 00:47:48', '2019-08-15 07:47:48'),
('a6bf3daddab897589db339de1fd60241f6b196cd56e73bd9546a8e987fe59bd217f449b646f17ca0', 40, 1, 'nApp', '[]', 0, '2018-08-20 01:53:46', '2018-08-20 01:53:46', '2019-08-20 08:53:46'),
('a9f7aed343ce3a8eda54ea945a906559022a1db7e0975e95819e28410d04bd2036acd317395bf929', 11, 1, 'nApp', '[]', 0, '2018-08-16 01:03:34', '2018-08-16 01:03:34', '2019-08-16 08:03:34'),
('aa0c850742dfa9eee5da9f4b53b26122931f53ae81809aa4e47d9c776eeb960149181711c392ca51', 7, 1, 'nApp', '[]', 0, '2018-08-19 21:00:13', '2018-08-19 21:00:13', '2019-08-20 04:00:13'),
('aa9fa443462b31f361b76b07db810d05fdd25cfbd5e5bd28c0b52a26a178f1e8bf518fe4e36e3c54', 10, 1, 'nApp', '[]', 0, '2018-08-19 21:10:22', '2018-08-19 21:10:22', '2019-08-20 04:10:22'),
('adea016be9d7bc440248bb1c8913936dd7b196d0c74f6cbd16bcec5ee94131716c6a38e35b1e8851', 19, 1, 'nApp', '[]', 0, '2018-08-20 00:39:56', '2018-08-20 00:39:56', '2019-08-20 07:39:56'),
('af5132bbc5e88121791fa5deb727947c0703436cc247e0be889d531038a375d60c75bd5937f99166', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 00:51:14', '2018-08-15 00:51:14', '2019-08-15 07:51:14'),
('b189b170ad4661106ba72710366daa56ecd1089effb6e2c42f7be81f1fb8959e876df1a3c9215a4e', 1, 1, 'nApp', '[]', 0, '2018-08-20 23:26:46', '2018-08-20 23:26:46', '2019-08-21 06:26:46'),
('b1d18f33e8a6f8e2bdbf21f3e2dea09968329b563ba3197435e7b7ece46e5436c906fb6e9aff152d', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 19:49:48', '2018-08-15 19:49:48', '2019-08-16 02:49:48'),
('b368198049ef249270580dd2374c2b86c1039031ae88e2e04846e6828060407572a859274a3078a5', 9, 1, 'nApp', '[]', 0, '2018-08-16 01:02:16', '2018-08-16 01:02:16', '2019-08-16 08:02:16'),
('b482ea4dff41d67bbe9b20a4789e0ce4250d9e0b861d5c8bca7a451047bba2d02ab63f10e4c95245', 2, 1, 'nApp', '[]', 0, '2018-08-16 01:45:51', '2018-08-16 01:45:51', '2019-08-16 08:45:51'),
('b5c58b18f0834a62d4dcbb2969abe1011a96e969ff62287534cf27f0258ecd059f42283a9d4430b4', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 00:55:07', '2018-08-15 00:55:07', '2019-08-15 07:55:07'),
('b624009a059bf469dd0625d7d3eaaa7c0c76b7c7d51710bbe1a8d90a68c79cf84e8cc6eef30adaee', 37, 1, 'nApp', '[]', 0, '2018-08-20 01:49:15', '2018-08-20 01:49:15', '2019-08-20 08:49:15'),
('b7908a20483535c08c183010f2bbdc2eb45b709cd83952b23f4c59d9bb724ecb921d4f5e84d9bdf9', 13, 1, 'nApp', '[]', 0, '2018-08-20 00:25:31', '2018-08-20 00:25:31', '2019-08-20 07:25:31'),
('b8f4dd900d4d1c376d2f3553652e90c5c9ae68c8d52c67074d6ef9a16a872e9c20c9042a048c437a', 1, 2, NULL, '[\"user\"]', 0, '2018-08-15 21:47:40', '2018-08-15 21:47:40', '2019-08-16 04:47:40'),
('ba9725812686f328a561a4b038577c5f42d438248846989443e7eff7f6d72f96b6bf6f14a2a7392d', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-14 01:36:42', '2018-08-14 01:36:42', '2019-08-14 08:36:42'),
('bb50bd1d7cdf5c74a0a5284c7d86996a21547087a6fbb2a03e329f03ffc7130ac6c4e5181dae4d94', 2, 2, NULL, '[\"user\"]', 0, '2018-08-14 01:23:16', '2018-08-14 01:23:16', '2019-08-14 08:23:16'),
('bd11e0c33081686b3f14c8a5a4953baa61dbdb5a94d81301208f38b311a7b8fc6da50729c0cd52dc', 1, 1, 'nApp', '[]', 0, '2018-08-16 00:17:28', '2018-08-16 00:17:28', '2019-08-16 07:17:28'),
('bfc71d414208ebccf1477ce329430be00c813f77089d15abde36d9446bf4923647d57bb29d79b303', 15, 1, 'nApp', '[]', 0, '2018-08-20 00:31:30', '2018-08-20 00:31:30', '2019-08-20 07:31:30'),
('c4f660f0ee0f3a5ae04a88f3fb6051b2f98257b9da27556554a67b7a995fed548dad9f27c744fbc9', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 02:31:00', '2018-08-15 02:31:00', '2019-08-15 09:31:00'),
('c50f6f7f6e4c839c921ad1ff00a5969a8b75cebc8d9c03e8234b23202c514a3c5a79fb04ecdbd077', 2, 1, 'nApp', '[]', 0, '2018-08-19 20:43:10', '2018-08-19 20:43:10', '2019-08-20 03:43:10'),
('c6610bc9e8455a34de59739d32c16f218267e08545065082dfafe66f8be7bafbb8bb855cc7118e2a', 17, 1, 'nApp', '[]', 0, '2018-08-20 00:37:46', '2018-08-20 00:37:46', '2019-08-20 07:37:46'),
('c72658930f69f08c9b74096bf2ea93cffc57355235492e1fc070413d83df1e18b1b489587d240f6e', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 21:45:05', '2018-08-15 21:45:05', '2019-08-16 04:45:05'),
('c9890f00b84656354343c8cefbf06538b7a1c434d05ce6cbad9d295c539e4dbdf83ef68cafcd6109', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-15 00:48:53', '2018-08-15 00:48:53', '2019-08-15 07:48:53'),
('c9e0ced6ce31a7c20139bf4130fac7348987fc8c9d4787a10cd6d64db43b1abf7dc5b6260b0c0b41', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-26 23:35:50', '2018-08-26 23:35:50', '2019-08-27 06:35:50'),
('cc18d222f50328636a0502547955408419c69192b9c569a065faed0d1e3cfc949d19bf248858bd35', 1, 2, NULL, '[\"user\"]', 0, '2018-08-15 21:33:30', '2018-08-15 21:33:30', '2019-08-16 04:33:30'),
('cf3980da48d86126d799e885c88268865fcf560189923e9d2d400aa27811d79bec93895ef99d71f7', 2, 1, 'nApp', '[]', 0, '2018-08-20 02:30:39', '2018-08-20 02:30:39', '2019-08-20 09:30:39'),
('cf7dd8fd9e00722a500cd777ed219ecddf1676be833392535b78c2a6b22242f0a77d179d6fc23843', 9, 1, 'nApp', '[]', 0, '2018-08-19 19:31:52', '2018-08-19 19:31:52', '2019-08-20 02:31:52'),
('d19de358d3538d9b8369e04337328dfed7f3ea57f5923ed3d491f45053d2366158bc5ae76dd63a38', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-15 00:20:53', '2018-08-15 00:20:53', '2019-08-15 07:20:53'),
('d29861ee7b07e14021b4128866a8db4a6ea8683f698b9ecd79a0fff5f303956f09147572923fefbb', 47, 1, 'nApp', '[]', 0, '2018-08-20 02:18:08', '2018-08-20 02:18:08', '2019-08-20 09:18:08'),
('d3470e62fb9700c260980c00fd5b43b250d6e808bb741d81495dad26e9375e5840696d0b467ac2b3', 45, 1, 'nApp', '[]', 0, '2018-08-20 02:10:24', '2018-08-20 02:10:24', '2019-08-20 09:10:24'),
('d5b8a47c26a044c730ba4e0cc716ed94ec297ee2d74ded3cd7c0477165429cd4cb635d3674f84c25', 1, 2, NULL, '[\"admin\"]', 0, '2018-08-20 23:52:23', '2018-08-20 23:52:23', '2019-08-21 06:52:23'),
('e3da08481effab58507525c2defabd687ffbd6319d8ed099f7ba4a2f866e5b0f23b823f8c7e8c69d', 5, 1, 'nApp', '[]', 0, '2018-08-19 20:54:27', '2018-08-19 20:54:27', '2019-08-20 03:54:27'),
('e4a363a9a4de89232de2b452c89c6c861ca490c97dad84104f231daf3eb22708d644f5297bda7deb', 33, 1, 'nApp', '[]', 0, '2018-08-20 01:41:22', '2018-08-20 01:41:22', '2019-08-20 08:41:22'),
('e6afd92970b08f20edc372f1308bfdfb28e367416b23591268dc4214dd09537e288642bc5ad31ef4', 17, 1, 'nApp', '[]', 0, '2018-08-16 00:15:52', '2018-08-16 00:15:52', '2019-08-16 07:15:52'),
('e782a7e4c23dd86a9439453a42e301fb892fc818f8ca489161f35a567654d7fe410138ff33a1f499', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 03:11:38', '2018-08-15 03:11:38', '2019-08-15 10:11:38'),
('e8aa86a0756b981b3175886fc080107849e7d073947717d523d0d478a2ffb5adea8abc8fd5ae7a7b', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 01:39:19', '2018-08-15 01:39:19', '2019-08-15 08:39:19'),
('ead89b50cde3844720036400b01ace2ae79bc014485c4dec9ef15ae2488484339f0589a6525e77be', 1, 1, 'nApp', '[]', 0, '2018-08-20 19:25:48', '2018-08-20 19:25:48', '2019-08-21 02:25:48'),
('ecc19717bfdc031003265bb3664f2fa55d1ba49f4b76cd96c67f08623ba3e5612f96c68edc164b32', 30, 1, 'nApp', '[]', 0, '2018-08-20 01:37:32', '2018-08-20 01:37:32', '2019-08-20 08:37:32'),
('ef0ac0f5fabd815abad66b8b1c66bade834ecf58f8d699d9ea462f245f37a134b5f95833ac5509f0', 27, 1, 'nApp', '[]', 0, '2018-08-20 00:57:47', '2018-08-20 00:57:47', '2019-08-20 07:57:47'),
('f1d4a6c6df8b72e24b58a89e8f856290ac516c0d771f5da9f38286339ab767dc9ca0c6a8b71c2474', 8, 1, 'nApp', '[]', 0, '2018-08-19 21:04:48', '2018-08-19 21:04:48', '2019-08-20 04:04:48'),
('f49bc3937ee295c90e95eef2641fdf2cd079d157a6a71e7fc5ead1464da063ebfaa89134325f5950', 25, 1, 'nApp', '[]', 0, '2018-08-20 00:53:08', '2018-08-20 00:53:08', '2019-08-20 07:53:08'),
('f4cdf5125e21df895d3f61a65f53a3c3917e5a6718a37b5ad9a2636637cab0ac2280f62cf99918f4', 2, 2, NULL, '[\"user\"]', 0, '2018-08-14 01:30:27', '2018-08-14 01:30:27', '2019-08-14 08:30:27'),
('f9243f23fd2687c2e3673665813ce4ce450be04f10f6c6f0609d5ccf27a5f0fb7040473086bd5fe1', 15, 1, 'nApp', '[]', 0, '2018-08-16 00:11:36', '2018-08-16 00:11:36', '2019-08-16 07:11:36'),
('f9f79656dbbe9c917dc82328272c362b1eae3640bb87b493d85386b0ce1c41a3bf2c6b80bf9a680f', 1, 2, NULL, '[\"mahasiswa\"]', 0, '2018-08-15 03:10:43', '2018-08-15 03:10:43', '2019-08-15 10:10:43'),
('ff82b974657138f39fad6854f44932492958e2cc0a878d0c9280a880596cca732f6cf96c7861a569', 2, 2, NULL, '[\"admin\"]', 0, '2018-08-15 00:16:24', '2018-08-15 00:16:24', '2019-08-15 07:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 't91Tk4ht1uufU0xtOUELZFFU4FkUVo9fnk1vyygg', 'http://localhost', 1, 0, 0, '2018-08-06 03:15:52', '2018-08-06 03:15:52'),
(2, NULL, 'Laravel Password Grant Client', 'lQKSxHR9HV7dfAgrH7uiZE51C3VesUZa6SsBNiE6', 'http://localhost', 0, 1, 0, '2018-08-06 03:15:52', '2018-08-06 03:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-08-06 03:15:52', '2018-08-06 03:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('024edc6024fc3e372449007e92d16c2169bb02958c17b33c5123436ef4dc837dbfa67f48a2ff7d59', '22577ba22e047af4b60c9cb7dd068c4af58a75390986d8fea520e60e39c6682565c458e4f62ff2a3', 0, '2019-08-14 07:58:55'),
('04740ae87ba7270ead35c7226437c326b83bb2cdbac38ea176500a87be2c79506384a3d2ae20c13c', '711b529b8339031c6ff076bcf7ef76b258f9f36782550afe90b44bea61b1c4b1b5fbfe7159c19bd3', 0, '2019-08-16 03:50:03'),
('04f3d492f810945c2893ecaa49d9bebab4432e6bb2a1f4739d35977376b8af4964ff125c9daae26a', '9257d98c39f38f5c47738aaf0d9fe9d9aa7c3b73505a3aa3c5cd32bd6305977a1139f8c35d1a5a32', 0, '2019-08-14 08:03:37'),
('04fcfb45c24d71a864fcaf3cffbc4a4188547c81ae75178145809f76b916a6434c7e8fbc5a631a30', '956b3e7055ccddf380a6b8d90cc2523e8fcea660f652c3de4f65c71287664183fcc8de90cab9af8c', 0, '2019-08-14 04:47:29'),
('059cac7b7525de569a1d91604529d0e2e9ef317a6efba72c8dd36909c21edb94505dda14fa229692', '02a8fed16419566f9d1f465fa80e9168b49f348983165478b63f03f072b85b04cdf117f39fa778d8', 0, '2019-08-15 07:13:57'),
('09945ffca03b8e969493425774a2e79404ad67fb16e357f9cc649f1dacb5483a35d087ee4ee96f95', '136d0cc90d02ac11f54425a913d8c644b7e6a791d60a9e5e04489b9d2d29eade3f403b93e1857b93', 0, '2019-08-21 06:02:16'),
('099db096a1c251a25c52e981da71c489c10b0f6efada4881f917876c609ed85eed4413f50d9e69e8', 'a0e2014ccbcb0d5634ff37b396bff2b497573cf027b22e4c91a3a46e4e296ba734cafec3b0eb847c', 0, '2019-08-21 06:00:39'),
('0c395ecfdd7ed95dd74b165c5fc7366b405df6e5ef057028ef29696f5c3bd9e6f6f174546c4e9a74', 'b1d18f33e8a6f8e2bdbf21f3e2dea09968329b563ba3197435e7b7ece46e5436c906fb6e9aff152d', 0, '2019-08-16 02:49:48'),
('101d1a24f16ee7b865bf4d8f1baafd1d6ecbc41358616986b279ef8779cba2584b8c489b9a2a2ee8', 'b8f4dd900d4d1c376d2f3553652e90c5c9ae68c8d52c67074d6ef9a16a872e9c20c9042a048c437a', 0, '2019-08-16 04:47:40'),
('127c55c077f6aef4bec727bd16e4a3b0995621a20a99851823458f1b2cbec64b953774f365662bfc', '52da5814e47b17e495105ac6dd66d4c0b773920de2c5bc8c11cdacac58b6dc12d0f19348388179ed', 0, '2019-08-21 06:01:17'),
('13381e9a95b74a3ff99a1199fec31ec2d3e0d451858e7365178182b05f93abd4ac344674afcf82ae', '344587f7c015cf6141dea613c1230bacd7e9ae646867846a6b4a82407fbbd82bf6c54ba1f5578f28', 0, '2019-08-15 07:27:49'),
('14f32829c330e5b15c3cf7dbe3796ce2699d245ec844a4c2e623518d8bec51f4693c3b342e218cd8', 'e8aa86a0756b981b3175886fc080107849e7d073947717d523d0d478a2ffb5adea8abc8fd5ae7a7b', 0, '2019-08-15 08:39:19'),
('15030808a5a09aa5e5c6fcbde07ee7769b87af47cebeddca3f9179ea16624c58d3f98a76975a5262', 'cc18d222f50328636a0502547955408419c69192b9c569a065faed0d1e3cfc949d19bf248858bd35', 0, '2019-08-16 04:33:30'),
('1fadf9c5a6623d26fab105bcfb186cb8d1e603bfd1db2bfa0fb81d22390f6ade05a356c8d2df3f1e', 'e782a7e4c23dd86a9439453a42e301fb892fc818f8ca489161f35a567654d7fe410138ff33a1f499', 0, '2019-08-15 10:11:38'),
('2b1d5ae26bc38b40a7e42cb97600f18ae62d7cc60892909f8a4b45488d789fa1e9f37009ed1c6e20', '0afbd12a3aae1c9a39d1f6c5172fc1506114a70ad4075407821013a54e5c06c54c597b8b36a0a349', 0, '2019-08-14 08:08:08'),
('2e43953e89157f55479656aab8e9a326829c1d4049be1c1e8f1596f56f0d9a7def4caa5c47cf02e9', '85d16d49b3b3690dceb013eaceaad44e8c60c125384d662fb94576396d464bf62548e7a4e5c62335', 0, '2019-08-14 06:40:54'),
('4831ba0b2e6f94dd806a073586cdd3b1b2963f6c58a4696eb652c6cee6c61dd7b46249a497e04230', '1622c98dd3ac0ab86f276eb1e9585a455a768e32722503c7296420c04911bdd045409d34f5bced6a', 0, '2019-08-14 06:41:14'),
('492e7378f8e3edbc5e58d7661e6e699d8675572aa31bde94a495b94e5495fd1fca92b33e4526fd6d', 'ba9725812686f328a561a4b038577c5f42d438248846989443e7eff7f6d72f96b6bf6f14a2a7392d', 0, '2019-08-14 08:36:42'),
('51c81534f0ca587cfc9332a92c42633cf8dc93fc11d4a02e8c03d9cbac037a22fb7b612b56e9dcff', 'f9f79656dbbe9c917dc82328272c362b1eae3640bb87b493d85386b0ce1c41a3bf2c6b80bf9a680f', 0, '2019-08-15 10:10:43'),
('5298f16f9564dbd2666666691c6e4cdae519c2bbf273bd3124ef36e6f604b910244f65eb7657c890', '0a78d27b1c989987bb2b83996de4f958ff90f274d2cacd51697ee00c4982bced1244c829803ad783', 0, '2019-08-16 03:49:09'),
('56591d16acaf8fb45fab4198bcc6406ffa3b10deb03f9f9383a6e403e6d6c10afd3ba4fff1796fdf', '16b13f602a80276bdbae9946caf9dc7dc5cfd88f177668b25c5da4b5bd886ffed000c47abf352a38', 0, '2019-08-21 03:04:53'),
('58032c3ac43cfe00323b7a47e8d9ed27a370cdf2475e62e54a7fe3d3ffe4646066d8b6fa94adf130', '91ab4aaeb3c4895b4c9ea58af8f08c7b6a7210ebe2c67cbf81ff25badac7ff31780d485109fb1b88', 0, '2019-08-14 08:04:27'),
('593054246660f6a86f5e66602bdca1b74e5dcefd6b22e2e13b12c79e5fa370ae377e44bd3466b66d', 'ff82b974657138f39fad6854f44932492958e2cc0a878d0c9280a880596cca732f6cf96c7861a569', 0, '2019-08-15 07:16:24'),
('5abf6fb87ecd6aed6138117e2a6ffc39bac6f980b321a7b0b444aa0ce6d1a7bd0b831129239e5f26', '23f692a650679867b5ef85a7a27070e25f410f5af405fac4fb051367d1f1b4afda32fd1f3f3f15fc', 0, '2019-08-15 08:11:50'),
('648e2b431e8f6bafcb67d1301c585fcbd402616ef042d6c7ef431f914feff370085f97431095552a', 'd5b8a47c26a044c730ba4e0cc716ed94ec297ee2d74ded3cd7c0477165429cd4cb635d3674f84c25', 0, '2019-08-21 06:52:23'),
('68171a975388f448a5b8cc5534215a4409be3e550d202cdb6dca8a2f579d3fc649c4c94f4b63359a', 'bb50bd1d7cdf5c74a0a5284c7d86996a21547087a6fbb2a03e329f03ffc7130ac6c4e5181dae4d94', 0, '2019-08-14 08:23:16'),
('694f46d6486bc1de91306b2671aab1416d8ff36693de500d8a559b03edfeb2b1da0e4b150cb56e29', 'b5c58b18f0834a62d4dcbb2969abe1011a96e969ff62287534cf27f0258ecd059f42283a9d4430b4', 0, '2019-08-15 07:55:07'),
('6b3947bdd5c57b5bc83b7f352b61ff68459b0a5eaefca9942b459314e4003128ba2f6c400debc5d2', 'c9890f00b84656354343c8cefbf06538b7a1c434d05ce6cbad9d295c539e4dbdf83ef68cafcd6109', 0, '2019-08-15 07:48:53'),
('723fb09e9d8edd9d78b88ad76ba35a1d40db6e9a0f785adf4e4f17b6c2165ec1af7490b9a77058ec', 'c1dda3ac9a9d2886699168f3c4da65b2d91d26d2573f4cc2008f2afb1d5e55f02739f527d29dc056', 0, '2019-08-14 06:41:21'),
('75dee338c10dd3b44b737b1c7184e998db8bb873c170a1f23ed56a8ed2ee3420b57ee2a557263a16', 'a9f97d69d15f449d694c1648d1a3484270f67c9ada873fcfa5c87ce4d8a63377599b7eaa11a5071c', 0, '2019-08-14 07:54:13'),
('7610f01e50265b15fb97e3580db70a8635e311d95c8f9ac2794969cd0a8eb3e3b95aabfe76a3ec18', 'c3d533c1a1d0091994097245046d70cb7056736b3f67a86fe600af8d8bfe32fbf1b9155ea1a916a2', 0, '2019-08-14 08:06:42'),
('77bbd9d677b1ba669c58852f01fe98628aace6afcbd11c6601087fd52f1386a3e88561c36bcaeb60', '71c2d5fd639e3b28bf24eea791841f61c38804db34b29ac4be5bc65e4070edc70eff924ae41610e2', 0, '2019-08-14 04:27:14'),
('7ce932bb1d17c7edd24d09777137645b2aa2de1a9f0dcf04720bc94cbdc48c74fbf25effa5fd2797', '65e7be8de6f3fc695b3681722f56a1d29897d51322f1dd4cd60bd7866d4dd8cd75848e0f06b8c3a3', 0, '2019-08-16 02:25:44'),
('8cc6009094878885b737851f05d340ce41e5259e92a59b1f12936c9ba0ac3eec6d227bf645b5c399', '3e9b2a6feaac4752f3bdb00b869480b3fafa8ae6b72c888a860a0c80a3e2819d1579f82ef6bf9d38', 0, '2019-08-15 09:23:17'),
('8ee57b33129d349910c1183b7d4a598288e77685b0e716da3d9b13217bd92dd31e3ac0aa7f0413f2', 'bcd8948be37be92249f422a522dd1903d456642678e03702d9f736cd708db5e1a867c5742cadcae1', 0, '2019-08-14 06:36:22'),
('8f46899e75636635fffea610dfc5c7d613f055fb19db56738313c93e2e4496774a9bef8bc925c62f', 'c4f660f0ee0f3a5ae04a88f3fb6051b2f98257b9da27556554a67b7a995fed548dad9f27c744fbc9', 0, '2019-08-15 09:31:00'),
('919f6006013c04b7665879e2938b5617556cc4f965835c4470f069c77a95f6032b8d4a663a9e835e', '692c39f8ddef5e11e0b2253dbda6970a97ae475ae819b5877f839e638f6e612906362f6f02f6edcb', 0, '2019-08-14 07:13:55'),
('92e6389f3c7d5e3b1483deee6f5a77622d655aba6d7c3f8c2167fc07a63076e4ba094b7840c79356', '347296354f72309dc05899916781e91c31520414867e367fe49a91def2958974768ed842173cf928', 0, '2019-08-15 07:51:22'),
('93b5d35d000b866baead7827391f8e6742c7a12ee139abe53e94d7d34b04ff756d0d8234958f1196', '31a10e7f18dd16709f2da923e4b67ce5b24f9216f8a9a91bb5f0cd0684928f9804b3cbd706ca2287', 0, '2019-08-15 02:39:20'),
('93d455aba203a89f954a6d3c1999910d0e391ae81fda092b6d3601d1c24f7398113fd5cc58c86dbf', 'd3b9b3f0621c1742c84400cbf6e3bc05ec82c5eefc38e90032823e99be33625950a8d59a02c51019', 0, '2019-08-14 07:59:41'),
('94ab9da5063e1184c77ee112774e98d96920566da9302049cdeb7bd9444e76e9652c607453e81bb4', '9d9201f27d06afa1f342ec94f39e497f116f2362a4b2d7d67e75baba1bba735da84686e6314defa2', 0, '2019-08-20 04:16:34'),
('97e6a51b3f20d21dabe952d3d85b1d1d6de48a991a0c52d2256775421e42f89170b25665cff707b0', '7d9bc2a4ed5503f9e1441074352baeee2bc7ef364661e49a399fdebac065c4b0dd5432812c92457b', 0, '2019-08-28 02:38:04'),
('9ecac08689134db19f4b8135f5322ae68f85622f236ade5f06f94e3f45e96aed73701e3213efc8cd', '9c55c970f0257df2cdce1f64441bbaa98da7fc48c5bf5244c83a368a5551777e4eef37abab7fe0f0', 0, '2019-08-15 08:34:53'),
('9fd11c5d2882d48f534419887b65cd857cd961c9a61bec46677c307b8adcc3f878b45dc57c0a9f81', '423cc17ff40a709d89ba68cb5396c767bfcdedf5bb0715de2e01cbc5c5543b6b067cecb014f540c4', 0, '2019-08-15 03:53:46'),
('a0757f360046f5977f003d02f5f0914796565c5011a93499fd0d58581d5466d67cac2051e1874095', '8028d5eff24c8740dd9f69bba77e1791f2b33129625144023b0390d80f4e001e299e330a3d83cfc6', 0, '2019-08-14 08:15:31'),
('a63e3f9816ccbfaa91c32eafe3954a9a7cda375188b854d50a3b3a82988cb4fe53fd309134dfa6bc', 'ce512dc922f1e617953afd3af93767871c84b619d5d28bf562d6e7c0ddd11449b9e279ce2ced46f9', 0, '2019-08-14 08:09:38'),
('a732096894403b05085e967430951403dc35a1ec7bc3b1d9de2fabab747ccd8ec383409c84440c88', '1f0b3e92bcd13026535f75a897d7f7494c79a6daf09c455bb574e575c4dedc8ad504532e09791f72', 0, '2019-08-15 07:12:56'),
('a8255d17ff95f23e5c9a2c91ffc02993e0b5a749395fa997480300e589fdc3cf544b747d1bb5037a', 'b3465fd26c112214c243552e28bd76e6f78f0339ff1fc30cb749f8a2368e4f8d99170d692ebd91b9', 0, '2019-08-14 07:41:19'),
('a8ed288aadaa8da18ffa0fda4192ff2f9dd85af69975928c54c9d3209780f9a16dde06de24d0422e', '2ba94ba908aacbd40005ee763c57a37e440638905d774499fca39303e2bca50a961c02e720e063ad', 0, '2019-08-14 03:31:00'),
('ac01b5eb2828e72e1601d8a85cda5076b031893498996240e69c930a76211692510b680ade71f871', '03779c1c7565cdc8ca18850391f627f6dd9c10843cc7e8bc263f839a4c938cacace12ffc3a2cad03', 0, '2019-08-15 07:54:57'),
('ad726f05cd266dd20b43d1fec303830e65af93d7b9ca09f4ccf14c20a2b422b4e19c8d6ab98a76e3', 'af5132bbc5e88121791fa5deb727947c0703436cc247e0be889d531038a375d60c75bd5937f99166', 0, '2019-08-15 07:51:14'),
('b37602103ecfbaaf8e37f835f308971138ae0f06fe54ebe1c9fec1ec29872274190d5f58bc5ac72a', 'a428532317856c889d5ad71d9a38b380515c9d901c948ef6739c8b245eaacbe35a78ff4c27b023e5', 0, '2019-08-21 06:01:38'),
('b9b2922485523812ea658b7a5ec407473bf166fa854205f85e28afd7b5816ddf3adda50c992f5e66', 'c72658930f69f08c9b74096bf2ea93cffc57355235492e1fc070413d83df1e18b1b489587d240f6e', 0, '2019-08-16 04:45:05'),
('c9da946faae8a9e020d9c5564dc827af459171588c64634d2506555592292241e5b0c81704036b76', '1ae25b16050b0acc7096f7a45b70331edb701fe59926eca3328157648df7feb0051574d9d8999d19', 0, '2019-08-15 08:12:04'),
('d1a1786ea3839c7eb067cb60c58f9f33f411fee4482daf2291942df66d9a9e15899729414a1c5310', '876025c1be89838d8bd3a99b59608b71bf1bdf41f2f627f9d8b64c692b726a86ff3ebfb8b0d92775', 0, '2019-08-14 07:56:47'),
('d276572327e38d85b9c8533d5d2e5fa069ce9970783a40bab38830c44e1bf40eae6930d888f0808e', '08ad9072043adc743ba30cf62e255e1916579ed4e03a213a3667717f08d062d81492f4fd401cfcaf', 0, '2019-08-14 07:36:05'),
('d4b2af687b0eb4deed591ec049eaf57f66944613e6b02b4b052056465bbd3831c1c544371b395df0', 'e0bdd52e0ae374b22ca29c7d985bd8bd6fd7866310fea76f37343224b2db0cb8f7eb6d95fac237ff', 0, '2019-08-14 06:33:31'),
('d74ef98407d5f66cb510cd6a99401eea5df1f870c1a151e862c532ad8bbb4da6f4c1008aca6c802a', '8b423f52ecc4cbe84bc51c7db2fbcc00534b9b7267116cebdd9705eaa0622634b9e7d25aebf93685', 0, '2019-08-14 09:57:19'),
('d7fc4508fc9433e4ac5862347c5d91d16beae747e7198d11ab03f2491aee1178d6cdfcea1c9a22fc', '881be88b4bac7fe3cecd32a0e5132b4fe4a6a8c932594f30dcf96d3ee4e5068b885fa32257cab971', 0, '2019-08-14 07:57:59'),
('da0322648d422cc42a936b7ffefecaa8c8810c0f83bcbf8ed513e27d1508dd5ab04a6bbbaa4b033d', '4728037e987aee2da2b3d5b5112d62b852ea541d2be7283d4443196c325ee7c9d2bbfdf159497b40', 0, '2019-08-15 07:22:44'),
('daa83fc85ae04a0d361743d381732f8e5902cbe710d6c6fbfd9574cc3e1ad60abf85da0500991c52', '41c070c307dea6b231795bfb59586a41ce138ccb51894ee6c07922b11152ea521e4f3408881d0464', 0, '2019-08-16 02:48:20'),
('df99180d3524343b6557ca35a1025bc9b7c7f480f998b29af2ba7eacce312b4e1ee7f221c9c5b63c', 'c9e0ced6ce31a7c20139bf4130fac7348987fc8c9d4787a10cd6d64db43b1abf7dc5b6260b0c0b41', 0, '2019-08-27 06:35:50'),
('e0283c49680126c547389871012af1a730d41dd492b1597de62820ea063842039faccb89927dc977', 'f4cdf5125e21df895d3f61a65f53a3c3917e5a6718a37b5ad9a2636637cab0ac2280f62cf99918f4', 0, '2019-08-14 08:30:27'),
('e0e093d6874e1ce4f7e1c2b55236f938833ece78b46983f7186ff8a4e7234f431fd853e72c9b5599', '8ea4d74fd563a15715671d8bc397d4b29ea751d74bd7bc1b5f795c46bccea98a7b72b39f04100fed', 0, '2019-08-15 07:17:41'),
('e50d5b56f39746e9ab149ef98c965c6a8a86331da7e7d15e457a4ddc5d880d7f72cfaa318107df3d', 'd19de358d3538d9b8369e04337328dfed7f3ea57f5923ed3d491f45053d2366158bc5ae76dd63a38', 0, '2019-08-15 07:20:53'),
('e56e6d10a753f8b377dbb0fa783819fe7de443b266338eff87588a83c73844b364e7ff3b6b8c53f5', '3973aa4a960b21bc19a3e40d918d74ab792f2badd3ad8429233ebe0dd11b3e19efa9c037468fe979', 0, '2019-08-14 08:21:31'),
('e6a8261f4a561a4ccc80887668bd0785436f2dd0a2a93e83bbe7410e5729de1cfc4c3a709d96a384', '60218795c49a7f107ca0f77862ed5b8a65a879991e92dd7fd97d0ea20432ccb1359405edcf4a406b', 0, '2019-08-15 07:45:20'),
('e7efac20012e0486ff7c06eaceb06111292e5c51f82ef3fd50b66c6d2917a0eaa5bdd642157cf184', 'a4527c36da6e15f697c43a9041b3d6a69917cad90ab5bd3e79354dce89b3dbce8c3d597fdec62d38', 0, '2019-08-15 07:47:48'),
('eb4f1a79b4247ade536ad112e7283ce568c94ce89c3473cc9044b4d5f98437457e4ecac0a5cc15de', '59718988879c3a9142b50ea2c363516fd46356784c8933e6a918491e7e64d55c937d889ae17699bd', 0, '2019-08-14 06:41:11'),
('ec0daea817e24e416d2f5775a195875a13a88e10a4e925372d8d4c5ee35a031c7b2e2cd1a33e1eb5', '3de183b6fd4cdb24b6541384d0ac188d1d1ac83a0a35f228e47d135ed8fc542bbccf58f420fba41a', 0, '2019-08-14 08:28:38'),
('ec4bff51dd877ac31aecda8367ea4cfd40e441fde68c5e226834c872e6c77b15e248bf58f2f919c6', 'd8dc1fe17424cc9481bb0cab0effd7e964d8ce2c2c984c351788b2b112551e801b18e892c338adef', 0, '2019-08-14 08:05:47'),
('efa8200aa9da6ba2f2a5bea76d0af844fbe63256d6af11dcf61c8f2ee1a813d9f36f7d5a021ac493', '5f6250330c61ff54dce241e2d2ad1b097e0b4fdebbb3e213b7cb1f13047a7461e146244a76e51475', 0, '2019-08-21 04:17:41'),
('f54e836beec009af32f7df1861606f2f24bdf7d0fb1518395ddc297bc3a29b376f28efcb055aa3a2', '3675312d94c8e7427e3d81c337b70129c7a18e3da7c5bf4ea98fd9834c8dc83180a17ce3e52997ae', 0, '2019-08-09 04:26:02'),
('f59f5f289a4de1c45306d6dfabce288abacbed2f35a623c08e106a95d07035d47233782dcd61968e', '894744a121d97b9f4a4a2bfabcb205222ec8059d55610250c0cf2d2bfabb44f9494213c813d19be3', 0, '2019-08-21 06:53:13'),
('f5e4e77076027e2f157c5afca7f33c71518e15cbf17e6bee0e597a39ab34d1bd716210afd2bc3b21', '6b6d0a1c2089a347660ef96e78b2611a24014c2ea561a53e17648c32d24c7baa5d57a9de762deab9', 0, '2019-08-21 03:04:44'),
('f9851907043cdf0ffcfae062c57e8e79f1dd782b5abe082584c1815b146f0ba88961f39740a85fc2', '95139f725843cb1dad1ddf4cdec23045e5da5e04ed9c5ef991a56dd3c5861a582d3995a4da6fc324', 0, '2019-08-14 04:47:45'),
('fa96bcd913b27df976522979b9287e22b8cff943df583d234176e3dfdc6a36583fa55290538395ee', '57c8176ccc37b97c1d109df961d6dcaa3d3880889606c0846d34cbb333318cc58f0f48d434141ac2', 0, '2019-08-16 04:33:08');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `remember_token`, `activation_token`, `created_at`, `updated_at`) VALUES
(1, 'Asrini', 'asrini07rpl@gmail.com', '$2y$10$u2RKBc786HZJ/Zu3g.gZuOypXHGp.Ik6IffQ05F6fjdxFsAXsEwZW', 1, NULL, NULL, '2018-08-20 23:49:55', '2018-08-20 23:51:14'),
(2, 'Asrini', 'iyoandaeni@gmail.com', '$2y$10$FJ.zAcXj58zQlZWjdmE.ReU9RCzAC4pLDSLp5nM6g9ehXcC3l74fS', 0, NULL, 'NG6vxEexNwAkcg8Ta1HvQvHIjARFrfdO6Q6oL2tYiLBjRzCyDvcx9BZv9gID', '2018-08-20 23:50:18', '2018-08-20 23:50:18'),
(3, 'Aas', 'asrini@gmail.com', '$2y$10$FRKdiY1r8JtDZbL5PbLxiOo0Ch3VmOgui2/gJw65wOSTeiPwMq4g2', 0, NULL, NULL, '2018-08-27 20:30:48', '2018-08-27 20:30:48'),
(4, 'Aas As', 'asrini07@gmail.com', '$2y$10$a31rgakYfn6WGqGtjMBvlug1Q/RXIGBzgR0X9ZyXLPVy5dfxp9fB2', 0, NULL, NULL, '2018-08-27 23:58:18', '2018-08-27 23:58:18'),
(5, 'Aas As', 'asrini071@gmail.com', '$2y$10$DLrGwMC0oiCtrNxBdjJnWO/hSbg6VL7AhrK1I5Bm3MK8HOmFT9vW2', 0, NULL, NULL, '2018-08-27 23:59:40', '2018-08-27 23:59:40'),
(6, 'Aas As', 'asrini071a@gmail.com', '$2y$10$PkV1CuUMkj3Za9klQlj8t.ZEE2qpONwuzFV.1Eai7DSKHTOQQunkW', 0, NULL, NULL, '2018-08-28 02:09:35', '2018-08-28 02:09:35'),
(7, 'Aas As', 'asrini071aaa@gmail.com', '$2y$10$WDcV082zG.zESslhu1BBdOhxhjZmXxXd2Rci4LuOiBLDWxDbk.8g6', 0, NULL, NULL, '2018-08-28 02:28:01', '2018-08-28 02:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikels_user_id_foreign` (`user_id`);

--
-- Indexes for table `artikel_kategori`
--
ALTER TABLE `artikel_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kotas`
--
ALTER TABLE `kotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kotas_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mmahasiswas`
--
ALTER TABLE `mmahasiswas`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `artikel_kategori`
--
ALTER TABLE `artikel_kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kotas`
--
ALTER TABLE `kotas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikels`
--
ALTER TABLE `artikels`
  ADD CONSTRAINT `artikels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kotas`
--
ALTER TABLE `kotas`
  ADD CONSTRAINT `kotas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
