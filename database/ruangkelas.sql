-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2021 at 06:05 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruangkelas`
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('07adc282877e31fa04260d33e4e3de186affee3803b1ccb4bbf32b9b9c10fc2e063a7c9f1d04b6bd', 4, 1, 'nApp', '[]', 0, '2020-12-18 21:45:46', '2020-12-18 21:45:46', '2021-12-19 04:45:46'),
('0b6ebb300c8cf1afa9f4ca4721b674ec3b5d4cd0a509722c0f5aaa3bb58419c24bd47f22bc367068', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:31:35', '2020-12-18 23:31:35', '2021-12-19 06:31:35'),
('170f33a057e55a2ae7360b2e5cd1a4ac977b1e25d5d02f1a344ed49d663a1b24ff575e062a92c285', 2, 1, 'nApp', '[]', 0, '2020-12-26 02:53:07', '2020-12-26 02:53:07', '2021-12-26 09:53:07'),
('1c276788c7266e6704b01e1c3790862d42bf7283773169eccdfc355b159442d96f009fcd427bbe3a', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:49:01', '2020-12-19 00:49:01', '2021-12-19 07:49:01'),
('1d4dd7c23e4977de7095c528b8ddf97b11684e935612a2f5e5387dc7aa0d2f337b8f557b69e0ffe5', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:55:18', '2020-12-19 00:55:18', '2021-12-19 07:55:18'),
('2df0ee41cac3ccf76fbc7ffaae1fee1be01ffea9f5e64bccaa2cb6ee00f277990823065412efffe4', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:55:05', '2020-12-19 00:55:05', '2021-12-19 07:55:05'),
('34cd04121803bafa383ee17dff6e918e5ef28c76a0d5345705dbf995b0705d365b826ff970616916', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:25:19', '2020-12-18 23:25:19', '2021-12-19 06:25:19'),
('3962ca0ed1959c487f9cd7a5a07d0ab8006aadbdd49617d83f609a1a399e94ce4c851d414e312ab4', 2, 1, 'nApp', '[]', 0, '2021-01-06 21:25:09', '2021-01-06 21:25:09', '2022-01-07 04:25:09'),
('41fce2ae741a3c5502304791014cdb30799672cc9bec8fa7d7e8ddc10badfb7c68f8434c49f2873c', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:47:49', '2020-12-19 00:47:49', '2021-12-19 07:47:49'),
('42cc49519d8c0c0a4d01d42dcba4f208708a4941ad12bbb07a7713283264d65e7e925db614d8793b', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:20:11', '2020-12-18 23:20:11', '2021-12-19 06:20:11'),
('46c4e0a2a512427ef953747a1c05e250f5555bb9cff15def09a380bef4b14e5fe42122cfb3fb961d', 2, 1, 'nApp', '[]', 0, '2020-12-19 01:15:15', '2020-12-19 01:15:15', '2021-12-19 08:15:15'),
('56109d115b8a7c2121aaba02ed182f4464eafbc0acb122a84a74af3d939dcc95e9c83fa34d6f3589', 4, 1, 'nApp', '[]', 0, '2020-12-18 21:39:37', '2020-12-18 21:39:37', '2021-12-19 04:39:37'),
('5b24d21859987e79072971d401d803fcb4f111023513feb86141f2364660f726a9a6af3ff164d989', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:25:42', '2020-12-18 23:25:42', '2021-12-19 06:25:42'),
('642f34e70da2bb62adf96fb28c9237267f70d1e9b9984a9b17e2b9a7e2847cd3682927898b21352f', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:13:34', '2020-12-18 23:13:34', '2021-12-19 06:13:34'),
('64b973a84983490018914fda566a0716e7a1ef7a189d93c281ce33c82d8bc8910b9d9f1b7b7accde', 4, 1, 'nApp', '[]', 0, '2020-12-18 21:48:04', '2020-12-18 21:48:04', '2021-12-19 04:48:04'),
('66f47a0311a49751aaf52d444a07444023f5e74eaeede62c6988189d264c3609a711868f7913797a', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:08:59', '2020-12-18 23:08:59', '2021-12-19 06:08:59'),
('6fd08ef528a2267e86e71eee9802883ceff47e077897c025db92f84817782161aeeef0095d666ef9', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:56:15', '2020-12-19 00:56:15', '2021-12-19 07:56:15'),
('71f65213e34e165298b646c0729674f0f6373870014088a19310074b6ea6abfefa243d2c5b024e5b', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:24:53', '2020-12-18 23:24:53', '2021-12-19 06:24:53'),
('73279a0d97176b1606dfe8a8f1239c708c873956519c2d96c036134b11a270ebd0990b156bf4ec8f', 4, 1, 'nApp', '[]', 0, '2020-12-19 00:33:21', '2020-12-19 00:33:21', '2021-12-19 07:33:21'),
('7873e6db6b135f73a666fafd67618395a029c8a9f867e4456e6a2bb77487da6a061e751bbd1847e1', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:14:40', '2020-12-18 23:14:40', '2021-12-19 06:14:40'),
('7a8e08c86e6c1a142e33aa6ba8fdf02f61cf2df7ce3803468c7d4b71eeca32e36281ab7a2565838d', 4, 1, 'nApp', '[]', 0, '2020-12-18 21:48:35', '2020-12-18 21:48:35', '2021-12-19 04:48:35'),
('7d55e6a0af3ecda5f665d15ce9512cf782b5adbaa15c2ebe81d1a414111ffbfdbbd6a967b6ce16bc', 4, 1, 'nApp', '[]', 0, '2020-12-16 16:06:12', '2020-12-16 16:06:12', '2021-12-16 23:06:12'),
('8380f4401bc34dfbb3908833a98d752cdaa7e6c48ef45840a8b1d2d4556aeb4a4c6a9a44553cd5c6', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:17:02', '2020-12-18 23:17:02', '2021-12-19 06:17:02'),
('8406302d5968710b1c4d6f74fd041d16ded2d287bb5e844b8bf20860167b340f417eb6ba11dbf011', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:32:25', '2020-12-18 23:32:25', '2021-12-19 06:32:25'),
('905f56d61e48be02f237dcb84f59c44f7cae755ec57ab9c6c238598b9bd51646bf8f70d24d2c15de', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:37:44', '2020-12-19 00:37:44', '2021-12-19 07:37:44'),
('94dc7bdcdd481cdee3f7e703aabb7247ddd478a0623eed61b6f3c4e60f1a1566fcf1761e9fe8f889', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:03:18', '2020-12-18 23:03:18', '2021-12-19 06:03:18'),
('970fa57ca8e9082a77b24689f59072ce39cc0b2e98c739d19dac8f3c4bf0c93ff6b6a340a5027ded', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:13:21', '2020-12-18 23:13:21', '2021-12-19 06:13:21'),
('987acf9f63acbe01cc810b3c637269951fdac416072d7001f6ee0aa678c8459fb870bb5b513ef607', 4, 1, 'nApp', '[]', 0, '2020-12-19 00:46:26', '2020-12-19 00:46:26', '2021-12-19 07:46:26'),
('993b44d9f023aa38739f6432a58967849e37c4a501ac5705e6410e7465c77f8f67e975067b048555', 2, 1, 'nApp', '[]', 0, '2020-12-19 01:06:47', '2020-12-19 01:06:47', '2021-12-19 08:06:47'),
('9eb4b7ecab546dcf2e2ab6f9b7060a04224550400a6610e6221fde23888f2fd7bec28c42359e2d1c', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:55:31', '2020-12-19 00:55:31', '2021-12-19 07:55:31'),
('a31b1bde0498457c77cd29fca75c62ae21bbfec0b491bb683cf951978f560a40b7a6096d5ba67790', 4, 1, 'nApp', '[]', 0, '2020-12-18 21:50:55', '2020-12-18 21:50:55', '2021-12-19 04:50:55'),
('ab74336db2a79bfddc845399f2f9c12a78fb64b9f1c3585f9c975bb474020c7b9441680d7393cfea', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:09:56', '2020-12-18 23:09:56', '2021-12-19 06:09:56'),
('b09369f9841ce94bc5d5dee364035765a3551380c170874a5150d3f1ec306eee781d680b859764f1', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:53:12', '2020-12-19 00:53:12', '2021-12-19 07:53:12'),
('b187642ea63446116cc7ca89c52aa51df3548b63b8f1252d9ebfdc71ef805f200d12e0b5e4c66df6', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:11:45', '2020-12-18 23:11:45', '2021-12-19 06:11:45'),
('b1c23e1fb9bf950cc538d2895cc3c376c77f518bc353e45c4169358074b1c9e0389e5be2c169d497', 4, 1, 'nApp', '[]', 0, '2020-12-19 00:34:28', '2020-12-19 00:34:28', '2021-12-19 07:34:28'),
('b6a7b944677d848c0e3c20f07fa13cbb002ed14acddb96a472f24147e14f5c8da48a115435ea749a', 4, 1, 'nApp', '[]', 0, '2020-12-16 04:31:47', '2020-12-16 04:31:47', '2021-12-16 11:31:47'),
('b71fe4ec03118a12010cfb8c8f78951ad6cc8ad04ce584b99b7da6dd200a5e3be6a0d8b58635bf0c', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:46:59', '2020-12-19 00:46:59', '2021-12-19 07:46:59'),
('bd54eadf6bc87cff64ec526b810d469730901fb3bd9a9745ce07735e09fbd15e3f29549a904d1132', 4, 1, 'nApp', '[]', 0, '2020-12-19 01:44:08', '2020-12-19 01:44:08', '2021-12-19 08:44:08'),
('cc3b57b4004b6e4bef0f0698dc3a4fa6904c2b2bfba68dc69dcdc54e31e972c48724207694d2a2d2', 4, 1, 'nApp', '[]', 0, '2020-12-19 00:42:52', '2020-12-19 00:42:52', '2021-12-19 07:42:52'),
('ce06fd6b8cf8720fc4c2181fa9c7dbaa022ce2efad63ae6a01de52100815a5852f03898f64520c3d', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:08:19', '2020-12-18 23:08:19', '2021-12-19 06:08:19'),
('d21bbd7bd5e164648422eb3d1d078bb043e5d07f5e4188020f68d45f0ca4a84c030db07151968406', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:25:07', '2020-12-18 23:25:07', '2021-12-19 06:25:07'),
('d2ef82503c7f7456b3e6919133cefd9011dd8bbfcd00f032a8e625d51d4790f2fcdb264cfdf2d960', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:11:54', '2020-12-18 23:11:54', '2021-12-19 06:11:54'),
('d882079726fd650a616a3fec483c4178e483d98ae32766e8fbba697297bc9acf45393b590637a5b1', 4, 1, 'nApp', '[]', 0, '2020-12-18 23:19:10', '2020-12-18 23:19:10', '2021-12-19 06:19:10'),
('e5fbefccd6715efb45ba107f56089131a7c31c195f8d1088c6ca96a5fd3974b92fc1e44937441719', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:49:50', '2020-12-19 00:49:50', '2021-12-19 07:49:50'),
('e9c245cbde6c17eba67ee826d43d4f57e22bc12c80e3b41cfe3e1c8abeb3a1276777d511151e5ab8', 4, 1, 'nApp', '[]', 0, '2020-12-19 00:33:56', '2020-12-19 00:33:56', '2021-12-19 07:33:56'),
('eac5292ba7100fe23a7aab05e55c3ec95aa446353c919f30a388d1bc00ec9e1fdab9c7e4eb6d888a', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:50:43', '2020-12-19 00:50:43', '2021-12-19 07:50:43'),
('f15fe3920d4fd1403cf5d9b37d74506f9c233b575effd6713f7949681f9789ffc57869d254864dda', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:48:20', '2020-12-19 00:48:20', '2021-12-19 07:48:20'),
('f6e2eb954e48ed83d56c9b332b7b9e9dff61a5785ab2e3df75ba5f561cf75ef4c17474fbfb2f0a4e', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:55:41', '2020-12-19 00:55:41', '2021-12-19 07:55:41'),
('f7ef539bc94dd4765269b59bbf3ccc96eb9e661c80da394aa83e742f3a250606588656b6fa62fbf2', 2, 1, 'nApp', '[]', 0, '2020-12-30 21:22:18', '2020-12-30 21:22:18', '2021-12-31 04:22:18'),
('f9535e409cbd1d2230d5960aec7c52dc1245bd56d9dc13bbac25f563c0b57d2ba597780fce7ee090', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:51:56', '2020-12-19 00:51:56', '2021-12-19 07:51:56'),
('fbb4a9efddf4c27de696379b3d2dff92212821c9cb4ea278e8a407e1ac78e8ce3aa50e76bcb1d200', 2, 1, 'nApp', '[]', 0, '2020-12-19 00:56:45', '2020-12-19 00:56:45', '2021-12-19 07:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'PFfqN0P5ImQEGGFp0jABavOvTXczIMINADMy7W60', NULL, 'http://localhost', 1, 0, 0, '2020-12-16 04:10:10', '2020-12-16 04:10:10'),
(2, NULL, 'Laravel Password Grant Client', '1vD236sIyUj1xWckysqnriO6wmHUeyzSEFN6ZpRj', 'users', 'http://localhost', 0, 1, 0, '2020-12-16 04:10:10', '2020-12-16 04:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-12-16 04:10:10', '2020-12-16 04:10:10');

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
-- Table structure for table `tblattch`
--

CREATE TABLE `tblattch` (
  `id` int(11) NOT NULL,
  `userID_a` varchar(255) NOT NULL,
  `disID` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `attachmentExt` varchar(255) NOT NULL,
  `attacmenOriginalName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `id` int(11) NOT NULL,
  `classID` varchar(255) DEFAULT NULL,
  `className` varchar(255) NOT NULL,
  `userID_C` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`id`, `classID`, `className`, `userID_C`, `description`, `created_at`) VALUES
(1, 'y22vKx', 'Kelas Biologi', 'mDJtDHoxo0om', 'Using col ing color to add meaning only providclass. cobakj  jk kjcoba', '2020-11-23 06:52:19'),
(2, 'VwnGH4', 'Kelas Multimedia', 'mDJtDHoxo0om', 'Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by me b', '2020-11-23 06:53:51'),
(3, '3FWLvV', 'Kelas Internasional', 'mDJtDHoxo0om', 'Place one add-on echo Session::get(\'userName\');', '2020-11-23 07:19:03'),
(4, 'dCyANR', 'Kelas Internasional', 'mDJtDHoxo0om', 'fojjalnlkndlnlknalnlnlkasnlnzmvxn sakjbk x osfajqp oiocz Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by the color is eithevious', '2020-11-24 01:25:53'),
(5, '1nxm1a', 'kelas 1', 'mDJtDHoxo0om', 'coba', '2020-11-24 05:33:11'),
(6, 'bTRioq', 'Kelas Multimedia', 'lSnE9Qb1cBrh', '<span class=\"badge badge-success\" style=\"float: right;\">Your Class</span>', '2020-11-24 06:03:16'),
(7, '8hTRLJ', 'Kelas Multimedia', 'mDJtDHoxo0om', 'kelas kus', '2020-11-25 01:32:08'),
(8, 'tLO8tA', 'kelasku', 'mDJtDHoxo0om', 'sdabj ASCKJBCAS', '2020-12-15 13:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassuser`
--

CREATE TABLE `tblclassuser` (
  `id` int(11) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `classID` varchar(255) NOT NULL,
  `join_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblclassuser`
--

INSERT INTO `tblclassuser` (`id`, `userID`, `classID`, `join_at`) VALUES
(1, 'lSnE9Qb1cBrh', 'y22vKx', '2020-11-24 05:53:50'),
(2, 'lSnE9Qb1cBrh', '3FWLvV', '2020-11-24 06:34:43'),
(3, 'mDJtDHoxo0om', 'bTRioq', '2020-11-24 06:38:10'),
(4, 'mDJtDHoxo0om', '1', '2020-11-25 01:40:14'),
(5, 'mDJtDHoxo0om', '1', '2020-11-25 01:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblmateri`
--

CREATE TABLE `tblmateri` (
  `id` int(11) NOT NULL,
  `classID` varchar(255) NOT NULL,
  `userID_M` varchar(255) NOT NULL,
  `materiKonten` longtext NOT NULL,
  `materiStatus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbltugas`
--

CREATE TABLE `tbltugas` (
  `id` int(11) NOT NULL,
  `userID_T` varchar(255) NOT NULL,
  `tugasKonten` longtext NOT NULL,
  `tugasStatus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userToken` varchar(255) NOT NULL,
  `userUniv` varchar(255) DEFAULT NULL,
  `userGender` int(11) NOT NULL,
  `userAvatar` varchar(255) DEFAULT NULL,
  `userType` int(11) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `userStatus` int(11) NOT NULL DEFAULT 0,
  `userOTP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `userID`, `userName`, `userEmail`, `userPassword`, `userToken`, `userUniv`, `userGender`, `userAvatar`, `userType`, `verified`, `userStatus`, `userOTP`) VALUES
(1, 'mDJtDHoxo0om', 'Zega Febriantoro', 'randombox38@gmail.com', '$2y$10$JkKJOwu35I8JUjTsTXW1zuqVxVlZXjG6BL0L1sNYOThnvzo317THq', '$2y$10$JkKJOwu35I8JUjTsTXW1zuqVxVlZXjG6BL0L1sNYOThnvzo317THq', 'Universitas Islam Balitar', 0, 'mDJtDHoxo0om89414533_1042217532829237_5826624853947925947_n.jpg', 99, 1, 0, 'mDJtDH'),
(7, 'lSnE9Qb1cBrh', 'parmi', 'xegalol@gmail.com', '$2y$10$D/DF7RKzHlQuV3fiugjM1OrObDoaFyEDoMH8APNTdbJuHwz8B2vWm', '', 'Universitas Islam Balitar', 1, 'lSnE9Qb1cBrh_3.JPG', 1, 1, 0, 'lSnE9Q'),
(8, 'UM0PFkqsz7vk', 'zega', 'zega@gmail.com', '$2y$10$0/Shf6SG.V9S9yLHhy.tgesOZMYL8olgpBZqRsi2ekqbu0wTEvsVS', '$2y$10$JkKJOwu35I8JUjTsTXW1zuqVxVlZXjG6BL0L1sNYOThnvzo317THq', 'Universitas Islam Balitar', 0, 'UM0PFkqsz7vk_87351499_2235017420141135_301583089015023636_n.jpg', 0, 1, 0, 'UM0PFk');

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
(1, 'doni', 'doni@gmail.com', NULL, '$2y$10$ChvoastG3Sx1M.iRV42Yle5pgAPR0jD3aEGYMSHxzc1FnWZ6wuqqq', NULL, NULL, NULL),
(2, 'zega', 'randombox38@gmail.com', NULL, '$2y$10$gQYiKzsCTJYcU65p78kvJOr43CwnieSn6W11og1YQcZuauOn.Juu6', NULL, '2020-12-16 02:13:49', '2020-12-16 02:13:49'),
(3, 'randi', 'randi@gmail.com', NULL, '$2y$10$qu82bQJA6MAsB8yHqETXYe3GvdkyxAvNKAfGMdUib8q9VTp9/k3Ty', NULL, '2020-12-16 02:15:18', '2020-12-16 02:15:18'),
(4, 'zega', 'zega@gmail.com', NULL, '$2y$10$9MXR6x7ULFc7h6Yv/XRsvuVprk6sHNaeUQoj8kyVPXTBr8kWPYITa', NULL, '2020-12-16 04:31:46', '2020-12-16 04:31:46');

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclassuser`
--
ALTER TABLE `tblclassuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblclassuser`
--
ALTER TABLE `tblclassuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
