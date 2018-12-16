-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2018 at 06:31 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garmentspvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_depot_size`
--

CREATE TABLE `order_depot_size` (
  `order_depot_size_ID` int(11) NOT NULL,
  `size_name` text NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `unit_100` text NOT NULL,
  `unit_200` text NOT NULL,
  `unit_300` text NOT NULL,
  `unit_400` text NOT NULL,
  `unit_500` text NOT NULL,
  `unit_1000` text NOT NULL,
  `unit_2000` text NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` text NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_depot_size`
--

INSERT INTO `order_depot_size` (`order_depot_size_ID`, `size_name`, `CategoryID`, `unit_100`, `unit_200`, `unit_300`, `unit_400`, `unit_500`, `unit_1000`, `unit_2000`, `is_deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '2', 20, '1', '2', '3', '4', '5', '6', '7', 0, '1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, '2.5', 22, '3', '4', '5', '6', '7', '8', '9', 0, '1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, '3', 20, '1', '2', '3', '4', '5', '5', '7', 0, '1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, '2.5', 22, '2', '2', '2', '2', '2', '2', '2', 0, '1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, '3.5', 21, '9', '9', '9', '9', '9', '9', '9', 0, '1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, '4', 22, '1', '1', '1', '1', '1', '1', '1', 0, '1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 66, 'admin', 'm.bilal294@outlook.com', '', '::1', '2018-09-15 09:11:46', '2018-09-15 09:11:46', 'Hello this is men jeans comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 1),
(3, 66, 'admin', 'm.bilal294@outlook.com', '', '::1', '2018-09-15 09:17:23', '2018-09-15 09:17:23', '2ND Comment to check html', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 1),
(4, 66, 'Bilal', 'm.bilal294@outlook.com', 'http://sdmvbjwe', '::1', '2018-09-22 07:01:32', '2018-09-22 07:01:32', 'sdfwertf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 0),
(5, 66, 'admin', 'm.bilal294@outlook.com', '', '::1', '2018-09-23 08:10:10', '2018-09-23 08:10:10', 'aswq3e', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 1),
(6, 66, 'admin', 'm.bilal294@outlook.com', '', '::1', '2018-09-23 08:18:36', '2018-09-23 08:18:36', 'aedasfsd', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 1),
(7, 66, 'admin', 'm.bilal294@outlook.com', '', '::1', '2018-09-23 08:20:20', '2018-09-23 08:20:20', 'aedasfsdwsae', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 1),
(8, 66, 'bil', 'asa@gf.com', 'http://dsas', '::1', '2018-09-23 08:24:57', '2018-09-23 08:24:57', 'sar', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 0),
(9, 66, 'wall', 'sheikh.sohail@gmail.com', '', '::1', '2018-09-23 08:27:29', '2018-09-23 08:27:29', 'oakha', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 0),
(10, 66, 'admin', 'm.bilal294@outlook.com', '', '::1', '2018-09-23 09:12:02', '2018-09-23 09:12:02', 'approve ke baghair submit', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/garmentspvc', 'yes'),
(2, 'home', 'http://localhost/garmentspvc', 'yes'),
(3, 'blogname', 'GarmentsPVC', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'm.bilal294@outlook.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%.html/', 'yes'),
(29, 'rewrite_rules', 'a:185:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"MenGarments/?$\";s:31:\"index.php?post_type=mengarments\";s:44:\"MenGarments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=mengarments&feed=$matches[1]\";s:39:\"MenGarments/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=mengarments&feed=$matches[1]\";s:31:\"MenGarments/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=mengarments&paged=$matches[1]\";s:16:\"WomenGarments/?$\";s:33:\"index.php?post_type=womengarments\";s:46:\"WomenGarments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=womengarments&feed=$matches[1]\";s:41:\"WomenGarments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=womengarments&feed=$matches[1]\";s:33:\"WomenGarments/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=womengarments&paged=$matches[1]\";s:10:\"Patches/?$\";s:27:\"index.php?post_type=patches\";s:40:\"Patches/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=patches&feed=$matches[1]\";s:35:\"Patches/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=patches&feed=$matches[1]\";s:27:\"Patches/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=patches&paged=$matches[1]\";s:13:\"Patch-Size/?$\";s:30:\"index.php?post_type=patch-size\";s:43:\"Patch-Size/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=patch-size&feed=$matches[1]\";s:38:\"Patch-Size/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=patch-size&feed=$matches[1]\";s:30:\"Patch-Size/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=patch-size&paged=$matches[1]\";s:40:\"./(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"./(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:16:\"./(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:28:\"./(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"./(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"MenGarments/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"MenGarments/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"MenGarments/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"MenGarments/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"MenGarments/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"MenGarments/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"MenGarments/([^/]+)/embed/?$\";s:44:\"index.php?mengarments=$matches[1]&embed=true\";s:32:\"MenGarments/([^/]+)/trackback/?$\";s:38:\"index.php?mengarments=$matches[1]&tb=1\";s:52:\"MenGarments/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?mengarments=$matches[1]&feed=$matches[2]\";s:47:\"MenGarments/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?mengarments=$matches[1]&feed=$matches[2]\";s:40:\"MenGarments/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?mengarments=$matches[1]&paged=$matches[2]\";s:47:\"MenGarments/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?mengarments=$matches[1]&cpage=$matches[2]\";s:36:\"MenGarments/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?mengarments=$matches[1]&page=$matches[2]\";s:28:\"MenGarments/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"MenGarments/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"MenGarments/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"MenGarments/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"MenGarments/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"MenGarments/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"WomenGarments/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"WomenGarments/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"WomenGarments/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"WomenGarments/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"WomenGarments/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"WomenGarments/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"WomenGarments/([^/]+)/embed/?$\";s:46:\"index.php?womengarments=$matches[1]&embed=true\";s:34:\"WomenGarments/([^/]+)/trackback/?$\";s:40:\"index.php?womengarments=$matches[1]&tb=1\";s:54:\"WomenGarments/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?womengarments=$matches[1]&feed=$matches[2]\";s:49:\"WomenGarments/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?womengarments=$matches[1]&feed=$matches[2]\";s:42:\"WomenGarments/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?womengarments=$matches[1]&paged=$matches[2]\";s:49:\"WomenGarments/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?womengarments=$matches[1]&cpage=$matches[2]\";s:38:\"WomenGarments/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?womengarments=$matches[1]&page=$matches[2]\";s:30:\"WomenGarments/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"WomenGarments/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"WomenGarments/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"WomenGarments/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"WomenGarments/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"WomenGarments/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"Patches/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"Patches/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"Patches/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Patches/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"Patches/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"Patches/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"Patches/([^/]+)/embed/?$\";s:40:\"index.php?patches=$matches[1]&embed=true\";s:28:\"Patches/([^/]+)/trackback/?$\";s:34:\"index.php?patches=$matches[1]&tb=1\";s:48:\"Patches/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?patches=$matches[1]&feed=$matches[2]\";s:43:\"Patches/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?patches=$matches[1]&feed=$matches[2]\";s:36:\"Patches/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?patches=$matches[1]&paged=$matches[2]\";s:43:\"Patches/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?patches=$matches[1]&cpage=$matches[2]\";s:32:\"Patches/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?patches=$matches[1]&page=$matches[2]\";s:24:\"Patches/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"Patches/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"Patches/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Patches/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"Patches/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"Patches/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"Patch-Size/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"Patch-Size/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"Patch-Size/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"Patch-Size/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"Patch-Size/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"Patch-Size/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"Patch-Size/([^/]+)/embed/?$\";s:43:\"index.php?patch-size=$matches[1]&embed=true\";s:31:\"Patch-Size/([^/]+)/trackback/?$\";s:37:\"index.php?patch-size=$matches[1]&tb=1\";s:51:\"Patch-Size/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?patch-size=$matches[1]&feed=$matches[2]\";s:46:\"Patch-Size/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?patch-size=$matches[1]&feed=$matches[2]\";s:39:\"Patch-Size/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?patch-size=$matches[1]&paged=$matches[2]\";s:46:\"Patch-Size/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?patch-size=$matches[1]&cpage=$matches[2]\";s:35:\"Patch-Size/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?patch-size=$matches[1]&page=$matches[2]\";s:27:\"Patch-Size/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"Patch-Size/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"Patch-Size/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"Patch-Size/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"Patch-Size/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"Patch-Size/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:36:\".+?/[^/]+.html/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\".+?/[^/]+.html/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\".+?/[^/]+.html/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\".+?/[^/]+.html/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\".+?/[^/]+.html/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\".+?/[^/]+.html/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"(.+?)/([^/]+).html/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:31:\"(.+?)/([^/]+).html/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:51:\"(.+?)/([^/]+).html/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:46:\"(.+?)/([^/]+).html/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:39:\"(.+?)/([^/]+).html/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:46:\"(.+?)/([^/]+).html/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:35:\"(.+?)/([^/]+).html(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:25:\".+?/[^/]+.html/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\".+?/[^/]+.html/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\".+?/[^/]+.html/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\".+?/[^/]+.html/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\".+?/[^/]+.html/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\".+?/[^/]+.html/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:39:\"categories-images/categories-images.php\";i:1;s:79:\"contact-form-7-dynamic-text-extension/contact-form-7-dynamic-text-extension.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:21:\"order_depot/index.php\";}', 'yes'),
(34, 'category_base', '/.', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'GarmentsPVC', 'yes'),
(41, 'stylesheet', 'GarmentsPVC', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'gravatar_default', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:8:{i:1544982316;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1545004800;a:1:{s:21:\"ywraq_time_validation\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545021916;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545021917;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545021931;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545031397;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545035851;a:1:{s:16:\"ywraq_clean_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535085996;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.9-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.9-partial-8.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.9-rollback-8.zip\";}s:7:\"current\";s:5:\"4.9.9\";s:7:\"version\";s:5:\"4.9.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.8\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1544978926;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'Garments PVC', 'yes'),
(140, 'theme_mods_twentysixteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535086704;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(143, 'theme_mods_GarmentsPVC', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537000856;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(271, 'yit_recently_activated', 'a:1:{i:0;s:69:\"yith-woocommerce-request-a-quote/yith-woocommerce-request-a-quote.php\";}', 'yes'),
(272, 'recently_activated', 'a:0:{}', 'yes'),
(281, 'woocommerce_store_address', 'Lahore , Pakistan', 'yes'),
(282, 'woocommerce_store_address_2', '', 'yes'),
(283, 'woocommerce_store_city', 'Lahore', 'yes'),
(284, 'woocommerce_default_country', 'GB:*', 'yes'),
(285, 'woocommerce_store_postcode', '54000', 'yes'),
(286, 'woocommerce_allowed_countries', 'all', 'yes'),
(287, 'woocommerce_all_except_countries', '', 'yes'),
(288, 'woocommerce_specific_allowed_countries', '', 'yes'),
(289, 'woocommerce_ship_to_countries', '', 'yes'),
(290, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(291, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(292, 'woocommerce_calc_taxes', 'yes', 'yes'),
(293, 'woocommerce_enable_coupons', 'yes', 'yes'),
(294, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(295, 'woocommerce_currency', 'USD', 'yes'),
(296, 'woocommerce_currency_pos', 'left', 'yes'),
(297, 'woocommerce_price_thousand_sep', ',', 'yes'),
(298, 'woocommerce_price_decimal_sep', '.', 'yes'),
(299, 'woocommerce_price_num_decimals', '2', 'yes'),
(300, 'woocommerce_shop_page_id', '81', 'yes'),
(301, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(302, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(303, 'woocommerce_weight_unit', 'kg', 'yes'),
(304, 'woocommerce_dimension_unit', 'cm', 'yes'),
(305, 'woocommerce_enable_reviews', 'yes', 'yes'),
(306, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(307, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(308, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(309, 'woocommerce_review_rating_required', 'yes', 'no'),
(310, 'woocommerce_manage_stock', 'yes', 'yes'),
(311, 'woocommerce_hold_stock_minutes', '60', 'no'),
(312, 'woocommerce_notify_low_stock', 'yes', 'no'),
(313, 'woocommerce_notify_no_stock', 'yes', 'no'),
(314, 'woocommerce_stock_email_recipient', 'm.bilal294@outlook.com', 'no'),
(315, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(316, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(317, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(318, 'woocommerce_stock_format', '', 'yes'),
(319, 'woocommerce_file_download_method', 'force', 'no'),
(320, 'woocommerce_downloads_require_login', 'no', 'no'),
(321, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(322, 'woocommerce_prices_include_tax', 'no', 'yes'),
(323, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(324, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(325, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(326, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(327, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(328, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(329, 'woocommerce_price_display_suffix', '', 'yes'),
(330, 'woocommerce_tax_total_display', 'itemized', 'no'),
(331, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(332, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(333, 'woocommerce_ship_to_destination', 'billing', 'no'),
(334, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(335, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(336, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(337, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(338, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(339, 'woocommerce_registration_generate_username', 'yes', 'no'),
(340, 'woocommerce_registration_generate_password', 'yes', 'no'),
(341, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(342, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(343, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(344, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(345, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(346, 'woocommerce_trash_pending_orders', '', 'no'),
(347, 'woocommerce_trash_failed_orders', '', 'no'),
(348, 'woocommerce_trash_cancelled_orders', '', 'no'),
(349, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(350, 'woocommerce_email_from_name', 'GarmentsPVC', 'no'),
(351, 'woocommerce_email_from_address', 'm.bilal294@outlook.com', 'no'),
(352, 'woocommerce_email_header_image', '', 'no'),
(353, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(354, 'woocommerce_email_base_color', '#96588a', 'no'),
(355, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(356, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(357, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(358, 'woocommerce_cart_page_id', '82', 'yes'),
(359, 'woocommerce_checkout_page_id', '83', 'yes'),
(360, 'woocommerce_myaccount_page_id', '84', 'yes'),
(361, 'woocommerce_terms_page_id', '', 'no'),
(362, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(363, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(364, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(365, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(366, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(367, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(368, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(369, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(370, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(371, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(372, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(373, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(374, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(375, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(376, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(377, 'woocommerce_api_enabled', 'no', 'yes'),
(378, 'woocommerce_single_image_width', '600', 'yes'),
(379, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(380, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(381, 'woocommerce_demo_store', 'no', 'no'),
(382, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(383, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(384, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(385, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(386, 'product_cat_children', 'a:0:{}', 'yes'),
(387, 'default_product_cat', '19', 'yes'),
(390, 'woocommerce_version', '3.4.5', 'yes'),
(391, 'woocommerce_db_version', '3.4.5', 'yes'),
(392, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:\"no_secure_connection\";i:1;s:19:\"no_shipping_methods\";}', 'yes'),
(393, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(394, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(395, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(396, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(397, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(398, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(399, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(400, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(401, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(402, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(403, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(404, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(405, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(407, 'ywraq_page_id', '80', 'yes'),
(408, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(409, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(413, '_yith_ywraq_session_9dce176816a6396480f23dcf5dde43d5', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(414, '_yith_ywraq_session_expires_9dce176816a6396480f23dcf5dde43d5', '1537173451', 'no'),
(415, '_yith_ywraq_session_1', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(416, '_yith_ywraq_session_expires_1', '1537173450', 'no'),
(419, '_yith_ywraq_session_7326c81884d8ca3bcde2766061de6ebc', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(420, '_yith_ywraq_session_expires_7326c81884d8ca3bcde2766061de6ebc', '1537173455', 'no'),
(424, 'woocommerce_product_type', 'both', 'yes'),
(425, 'woocommerce_allow_tracking', 'yes', 'yes'),
(426, '_yith_ywraq_session_3eedc5ccaff6c8ea3d88f4f972b1c452', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(427, '_yith_ywraq_session_expires_3eedc5ccaff6c8ea3d88f4f972b1c452', '1537173532', 'no'),
(429, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";b:0;s:5:\"email\";s:22:\"m.bilal294@outlook.com\";}', 'yes'),
(431, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:22:\"m.bilal294@outlook.com\";}', 'yes'),
(432, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(433, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(434, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(440, 'wc_ppec_version', '1.6.3', 'yes'),
(441, 'wc_stripe_version', '4.1.9', 'yes'),
(443, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(446, '_yith_ywraq_session_51514f28a1daf9a1ebb2966584686785', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(447, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(448, '_yith_ywraq_session_expires_51514f28a1daf9a1ebb2966584686785', '1537173608', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(451, 'yith_wraq_general_videobox', 'a:7:{s:11:\"plugin_name\";s:32:\"YITH Woocommerce Request A Quote\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:96:\"Upgrade to the PREMIUM VERSION of YITH Woocommerce Request A Quote to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"123722478\";s:15:\"video_image_url\";s:114:\"http://localhost/garmentspvc/wp-content/plugins/yith-woocommerce-request-a-quote/assets/images/request-a-quote.jpg\";s:17:\"video_description\";s:32:\"YITH WooCommerce Request A Quote\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:199:\"By purchasing the premium version of the plugin, you will benefit from the advanced features of the product and you will get one year of free update and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:86:\"https://yithemes.com/themes/plugins/yith-woocommerce-request-a-quote/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(452, 'ywraq_show_btn_link', 'button', 'yes'),
(453, 'ywraq_show_btn_link_text', 'Add to quote', 'yes'),
(454, 'ywraq_hide_add_to_cart', 'yes', 'yes'),
(455, 'ywraq_add_privacy_checkbox', 'yes', 'yes'),
(456, 'ywraq_privacy_label', 'I have read and agree to the website terms and conditions.', 'yes'),
(457, 'ywraq_privacy_description', 'Your personal data will be used to process your request, support your experience throughout this website, and for other purposes described in our  [privacy_policy].', 'yes'),
(458, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:32:\"yith_woocommerce_request_a_quote\";b:1;}', 'yes'),
(459, '_transient_shipping-transient-version', '1537000856', 'yes'),
(463, 'theme_mods_storefront', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537001816;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(464, '_transient_product_query-transient-version', '1537000857', 'yes'),
(465, 'storefront_nux_fresh_site', '0', 'yes'),
(466, 'woocommerce_catalog_rows', '4', 'yes'),
(467, 'woocommerce_catalog_columns', '3', 'yes'),
(468, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(470, 'woocommerce_tracker_last_send', '1537000910', 'yes'),
(473, '_yith_ywraq_session_3b2b7bc698599b3c5622b5203cb6bf83', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(474, '_yith_ywraq_session_expires_3b2b7bc698599b3c5622b5203cb6bf83', '1537173709', 'no'),
(480, '_yith_ywraq_session_386a987dc9b032e982e4ddc660321107', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(481, '_yith_ywraq_session_expires_386a987dc9b032e982e4ddc660321107', '1537173724', 'no'),
(507, '_yith_ywraq_session_953bc7ba1d3cfc3195af3b10adaed8b4', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(508, '_yith_ywraq_session_expires_953bc7ba1d3cfc3195af3b10adaed8b4', '1537173797', 'no'),
(520, 'mailchimp_woocommerce_version', '2.1.9', 'no'),
(526, 'do_activate', '0', 'yes'),
(527, '_yith_ywraq_session_26bccebc8cd45178adef51b37304c43b', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(528, '_yith_ywraq_session_expires_26bccebc8cd45178adef51b37304c43b', '1537173918', 'no'),
(533, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(534, '_yith_ywraq_session_2b5721ace7bc48f7ebb082fa3f03cc46', 'a:1:{s:3:\"raq\";s:6:\"a:0:{}\";}', 'no'),
(535, '_yith_ywraq_session_expires_2b5721ace7bc48f7ebb082fa3f03cc46', '1537174084', 'no'),
(592, 'jetpack_constants_sync_checksum', 'a:31:{s:16:\"EMPTY_TRASH_DAYS\";i:-1821685917;s:17:\"WP_POST_REVISIONS\";i:-33796979;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:-1290197902;s:14:\"WP_CONTENT_DIR\";i:-35082441;s:9:\"FS_METHOD\";i:634125391;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:634125391;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:-303971140;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:-300109018;s:11:\"PHP_VERSION\";i:1527508228;s:15:\"WP_MEMORY_LIMIT\";i:-1229557325;s:19:\"WP_MAX_MEMORY_LIMIT\";i:1474498405;s:14:\"WC_PLUGIN_FILE\";i:1068127894;s:10:\"WC_ABSPATH\";i:1039368844;s:18:\"WC_PLUGIN_BASENAME\";i:1149093810;s:10:\"WC_VERSION\";i:60462307;s:19:\"WOOCOMMERCE_VERSION\";i:60462307;s:21:\"WC_ROUNDING_PRECISION\";i:498629140;s:25:\"WC_DISCOUNT_ROUNDING_MODE\";i:450215437;s:20:\"WC_TAX_ROUNDING_MODE\";i:-2082672713;s:12:\"WC_DELIMITER\";i:-1839055742;s:10:\"WC_LOG_DIR\";i:699188243;s:22:\"WC_SESSION_CACHE_GROUP\";i:-15988308;s:22:\"WC_TEMPLATE_DEBUG_MODE\";i:734881840;}', 'yes'),
(595, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:4:\"http\";}', 'yes'),
(596, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(597, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(630, 'jetpack_callables_sync_checksum', 'a:30:{s:18:\"wp_max_upload_size\";i:-144542450;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:-1094415045;s:8:\"site_url\";i:-1094415045;s:8:\"home_url\";i:-1094415045;s:16:\"single_user_site\";i:-33796979;s:7:\"updates\";i:-869524094;s:28:\"has_file_system_write_access\";i:-33796979;s:21:\"is_version_controlled\";i:734881840;s:10:\"taxonomies\";i:319033480;s:10:\"post_types\";i:-745049502;s:18:\"post_type_features\";i:-1173768567;s:10:\"shortcodes\";i:-843112052;s:27:\"rest_api_allowed_post_types\";i:-13528774;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:-33796979;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;s:10:\"wp_version\";i:1499136715;s:11:\"get_plugins\";i:427294673;s:24:\"get_plugins_action_links\";i:223132457;s:14:\"active_modules\";i:223132457;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:110763218;s:13:\"site_icon_url\";i:734881840;s:5:\"roles\";i:-2040273932;s:8:\"timezone\";i:-486461887;}', 'no'),
(631, 'jpsq_sync_checkout', '0:0', 'no'),
(634, 'storefront_nux_dismissed', '1', 'yes'),
(687, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1537607461;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(851, '_site_transient_timeout_browser_7025178463edaacf6ce70fc732b6ab8e', '1545486836', 'no'),
(852, '_site_transient_browser_7025178463edaacf6ce70fc732b6ab8e', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"63.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(869, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1544978980;s:7:\"checked\";a:4:{s:11:\"GarmentsPVC\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentyfifteen.2.1.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentyseventeen.1.8.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentysixteen.1.6.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(877, '_transient_timeout_plugin_slugs', '1545049786', 'no'),
(878, '_transient_plugin_slugs', 'a:6:{i:0;s:19:\"akismet/akismet.php\";i:1;s:39:\"categories-images/categories-images.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:79:\"contact-form-7-dynamic-text-extension/contact-form-7-dynamic-text-extension.php\";i:4;s:9:\"hello.php\";i:5;s:21:\"order_depot/index.php\";}', 'no'),
(879, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1544974131', 'no'),
(880, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4530;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3168;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2601;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2463;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1892;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1699;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1692;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1460;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1414;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1414;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1412;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1344;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1285;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1269;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1126;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1083;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1065;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1045;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:958;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:908;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:839;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:825;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:814;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:745;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:717;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:708;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:703;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:699;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:691;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:676;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:674;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:671;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:652;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:647;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:629;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:629;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:620;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:611;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:610;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:606;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:574;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:558;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:551;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:549;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:549;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:540;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:527;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:521;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:519;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:516;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:513;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:507;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:497;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:490;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:490;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:484;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:468;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:466;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:462;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:453;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:451;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:448;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:442;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:428;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:427;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:421;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:412;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:398;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:391;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:391;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:380;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:374;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:373;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:373;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:373;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:372;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:358;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:355;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:354;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:347;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:343;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:341;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:339;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:337;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:332;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:317;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:316;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:313;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:313;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:308;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:307;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:304;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:304;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}}', 'no'),
(884, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1544978950;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:53:\"http://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/contact-form-7.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:39:\"categories-images/categories-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/categories-images\";s:4:\"slug\";s:17:\"categories-images\";s:6:\"plugin\";s:39:\"categories-images/categories-images.php\";s:11:\"new_version\";s:5:\"2.5.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/categories-images/\";s:7:\"package\";s:65:\"http://downloads.wordpress.org/plugin/categories-images.2.5.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:68:\"https://s.w.org/plugins/geopattern-icon/categories-images_7a8aa3.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/categories-images/assets/banner-772x250.png?rev=1803373\";}s:11:\"banners_rtl\";a:0:{}}s:79:\"contact-form-7-dynamic-text-extension/contact-form-7-dynamic-text-extension.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:51:\"w.org/plugins/contact-form-7-dynamic-text-extension\";s:4:\"slug\";s:37:\"contact-form-7-dynamic-text-extension\";s:6:\"plugin\";s:79:\"contact-form-7-dynamic-text-extension/contact-form-7-dynamic-text-extension.php\";s:11:\"new_version\";s:7:\"2.0.2.1\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/contact-form-7-dynamic-text-extension/\";s:7:\"package\";s:87:\"http://downloads.wordpress.org/plugin/contact-form-7-dynamic-text-extension.2.0.2.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:81:\"https://s.w.org/plugins/geopattern-icon/contact-form-7-dynamic-text-extension.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(885, 'zci_options', 'a:1:{s:19:\"excluded_taxonomies\";a:1:{s:8:\"post_tag\";s:8:\"post_tag\";}}', 'yes'),
(889, 'z_taxonomy_image20', 'http://localhost/garmentspvc/wp-content/uploads/2018/12/100_-Embroidery.jpg', 'yes'),
(892, 'z_taxonomy_image22', 'http://localhost/garmentspvc/wp-content/uploads/2018/12/50_-Embroidery.jpg', 'yes'),
(894, 'z_taxonomy_image21', 'http://localhost/garmentspvc/wp-content/uploads/2018/12/75_-Embroidery.jpg', 'yes'),
(895, 'category_children', 'a:1:{i:25;a:5:{i:0;i:20;i:1;i:21;i:2;i:22;i:3;i:23;i:4;i:24;}}', 'yes'),
(899, '_site_transient_timeout_theme_roots', '1544980767', 'no'),
(900, '_site_transient_theme_roots', 'a:4:{s:11:\"GarmentsPVC\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1541429933:1'),
(5, 5, '_wp_page_template', 'frontpage.php'),
(11, 24, '_wp_attached_file', '2018/08/1.jpg'),
(12, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:13:\"2018/08/1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 25, '_wp_attached_file', '2018/08/1-back.jpg'),
(14, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:18:\"2018/08/1-back.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"1-back-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"1-back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"1-back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"1-back-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 43, '_edit_last', '1'),
(18, 43, '_thumbnail_id', '24'),
(19, 43, '_edit_lock', '1535112783:1'),
(26, 44, '_edit_last', '1'),
(27, 44, '_edit_lock', '1535180614:1'),
(28, 45, '_wp_attached_file', '2018/08/2.jpg'),
(29, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:13:\"2018/08/2.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 44, '_thumbnail_id', '45'),
(31, 46, '_edit_last', '1'),
(32, 46, '_edit_lock', '1535180740:1'),
(33, 47, '_wp_attached_file', '2018/08/3.jpg'),
(34, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:13:\"2018/08/3.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 46, '_thumbnail_id', '47'),
(36, 50, '_edit_last', '1'),
(37, 50, '_edit_lock', '1535188090:1'),
(42, 53, '_wp_attached_file', '2018/08/7.jpg'),
(43, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:13:\"2018/08/7.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"7-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 54, '_wp_attached_file', '2018/08/1-1.jpg'),
(45, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:15:\"2018/08/1-1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 50, '_thumbnail_id', '54'),
(47, 56, '_edit_last', '1'),
(48, 56, '_edit_lock', '1535181543:1'),
(49, 57, '_wp_attached_file', '2018/08/2-1.jpg'),
(50, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:15:\"2018/08/2-1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"2-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 56, '_thumbnail_id', '57'),
(52, 58, '_edit_last', '1'),
(53, 58, '_edit_lock', '1535878218:1'),
(54, 59, '_wp_attached_file', '2018/08/3-1.jpg'),
(55, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:15:\"2018/08/3-1.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"3-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 58, '_thumbnail_id', '59'),
(66, 66, '_edit_last', '1'),
(67, 66, '_menimage1', 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1.jpg'),
(68, 66, '_menimage2', 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1.jpg'),
(72, 66, '_edit_lock', '1540998930:1'),
(81, 67, '_edit_last', '1'),
(82, 67, '_edit_lock', '1541005661:1'),
(83, 67, '_womenimage1', 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1-1.jpg'),
(84, 67, '_womenimage2', 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1-back-1.jpg'),
(90, 69, '_wp_attached_file', '2018/09/rawpixel-741637-unsplash.jpg'),
(91, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:2824;s:4:\"file\";s:36:\"2018/09/rawpixel-741637-unsplash.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"rawpixel-741637-unsplash-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"rawpixel-741637-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"rawpixel-741637-unsplash-416x294.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:294;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"rawpixel-741637-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"rawpixel-741637-unsplash-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"rawpixel-741637-unsplash-768x542.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"rawpixel-741637-unsplash-1024x723.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:723;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 70, '_wp_attached_file', '2018/09/WhatsApp-Image-2017-11-06-at-1.54.55-AM.jpeg'),
(93, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:546;s:6:\"height\";i:342;s:4:\"file\";s:52:\"2018/09/WhatsApp-Image-2017-11-06-at-1.54.55-AM.jpeg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.55-AM-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.55-AM-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.55-AM-416x261.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.55-AM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.55-AM-300x188.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 71, '_wp_attached_file', '2018/09/WhatsApp-Image-2017-11-06-at-1.54.54-AM.jpeg'),
(95, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:667;s:6:\"height\";i:459;s:4:\"file\";s:52:\"2018/09/WhatsApp-Image-2017-11-06-at-1.54.54-AM.jpeg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.54-AM-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.54-AM-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.54-AM-416x286.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.54-AM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.54-AM-300x206.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 72, '_wp_attached_file', '2018/09/WhatsApp-Image-2017-11-06-at-1.54.51-AM.jpeg'),
(97, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:554;s:6:\"height\";i:554;s:4:\"file\";s:52:\"2018/09/WhatsApp-Image-2017-11-06-at-1.54.51-AM.jpeg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.51-AM-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.51-AM-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.51-AM-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.51-AM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.51-AM-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 73, '_wp_attached_file', '2018/09/WhatsApp-Image-2017-11-06-at-1.54.53-AM-1.jpeg'),
(99, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:678;s:6:\"height\";i:452;s:4:\"file\";s:54:\"2018/09/WhatsApp-Image-2017-11-06-at-1.54.53-AM-1.jpeg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:54:\"WhatsApp-Image-2017-11-06-at-1.54.53-AM-1-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:54:\"WhatsApp-Image-2017-11-06-at-1.54.53-AM-1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:54:\"WhatsApp-Image-2017-11-06-at-1.54.53-AM-1-416x277.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"WhatsApp-Image-2017-11-06-at-1.54.53-AM-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"WhatsApp-Image-2017-11-06-at-1.54.53-AM-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 74, '_wp_attached_file', '2018/09/WhatsApp-Image-2017-11-06-at-1.54.52-AM.jpeg'),
(101, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:757;s:4:\"file\";s:52:\"2018/09/WhatsApp-Image-2017-11-06-at-1.54.52-AM.jpeg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.52-AM-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.52-AM-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.52-AM-416x437.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:437;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.52-AM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-11-06-at-1.54.52-AM-285x300.jpeg\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 66, 'length', '50 metre'),
(106, 66, 'color', 'Black'),
(107, 66, 'genere', 'Linen'),
(109, 66, 'category', 'Men'),
(110, 78, '_edit_last', '1'),
(111, 78, '_edit_lock', '1536998570:1'),
(112, 78, '_wp_page_template', 'contact.php'),
(113, 85, '_wc_review_count', '0'),
(114, 85, '_wc_rating_count', 'a:0:{}'),
(115, 85, '_wc_average_rating', '0'),
(116, 85, '_edit_last', '1'),
(117, 85, '_edit_lock', '1537000926:1'),
(120, 66, '_wp_old_slug', '66'),
(125, 89, '_form', '<div class=\"row\">\n<div class=\"form-group col-sm-6\">\n[text* Name id:name class:form-control class:myInput placeholder \"Name*\"]\n</div>\n<div class=\"form-group col-sm-6\">\n[email* Email id:email class:form-control class:myInput placeholder \"Email*\"]\n</div>\n</div>\n<div class=\"row\">\n<div class=\"form-group col-sm-6\">\n[tel MobileNumber class:form-control class:myInput placeholder \"Contact Number\"]\n</div>\n<div class=\"form-group col-sm-6\">\n[text* Subject id:Subject class:form-control class:myInput placeholder \"Subject\"]\n</div>\n</div>\n<div class=\"row\">\n\n<div class=\"form-group col-sm-12\">\n[textarea* message id:message class:form-control class:myInput placeholder \"Your Message\"]\n</div> \n</div>\n[dynamichidden dynamicsitetitle id:site-title \"CF7_bloginfo show=\'name\'\"]\n\n[dynamichidden dynamicposttitle id:post-title \"CF7_get_post_var key=\'title\'\"]\n\n[dynamichidden dynamicurl id:post-url \"CF7_URL\"]\n\n[submit class:myBtn class:myBtn-rounded class:myBtn-border class:myBtn-midlight class:myBtn-sm class:pull-right \"Request For Quote\"]'),
(126, 89, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"GarmentsPVC \"[Subject]\"\";s:6:\"sender\";s:31:\"[Name] <m.bilal294@outlook.com>\";s:9:\"recipient\";s:22:\"m.bilal294@outlook.com\";s:4:\"body\";s:227:\"From: [Name] <[Email]>\nSubject: [Subject]\nMobile Number: [MobileNumber]\nMessage Body:\n[message]\n\nTarget Post : \n[dynamicurl]\n[dynamicposttitle]\n[dynamicsitetitle]\n-- \nThis e-mail was sent from a client a=by access  [dynamicurl]\";s:18:\"additional_headers\";s:17:\"Reply-To: [Email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(127, 89, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"GarmentsPVC \"[your-subject]\"\";s:6:\"sender\";s:36:\"GarmentsPVC <m.bilal294@outlook.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:120:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on GarmentsPVC (http://localhost/garmentspvc)\";s:18:\"additional_headers\";s:32:\"Reply-To: m.bilal294@outlook.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(128, 89, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:49:\"Reqest For Quotation Has been Placed Successfully\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(129, 89, '_additional_settings', '.wpcf7 textarea {\nheight: auto;\nwidth: auto;\n}'),
(130, 89, '_locale', 'en_US'),
(134, 91, '_form', '<div class=\"row\">\n<div class=\"form-group col-sm-4\">\n<label for=\"name\">Name <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\n[text* contact_name id:name class:form-control class:myInput]\n</div>\n<div class=\"form-group col-sm-4\">\n<label for=\"email\">Email <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\n[email* email id:email class:form-control class:myInput]\n</div>\n<div class=\"form-group col-sm-4\">\n<label for=\"phone\">Phone</label>\n[tel phone id:phone class:form-control class:myInput]\n</div>\n</div>\n<div class=\"row\">\n<div class=\"form-group col-sm-12\">\n<label for=\"subject\">Subject <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\n[text* contact_subject id:subject class:form-control class:myInput]\n</div>\n</div>\n<div class=\"row\">\n<div class=\"form-group col-sm-12\">\n<label for=\"message\">Message <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\n[textarea* contact_message id:message class:form-control class:myInput]\n</div>\n</div>\n[submit class:myBtn class:myBtn-rounded class:myBtn-lg class:myBtn-3d class:m-0 class:mt-10 \"Send Message\"]'),
(135, 91, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:19:\"\"[contact_subject]\"\";s:6:\"sender\";s:39:\"[contact_name] <m.bilal294@outlook.com>\";s:9:\"recipient\";s:22:\"m.bilal294@outlook.com\";s:4:\"body\";s:228:\"******************* CONTACT US PAGE **************************\n\nFrom: [contact_name] <[email]>\nSubject: [contact_subject]\nPhone: [phone]\nMessage Body:\n[contact_message]\n\n-- \nThis e-mail was sent from a contact US Page of WEBSITE\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(136, 91, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"GarmentsPVC \"[your-subject]\"\";s:6:\"sender\";s:36:\"GarmentsPVC <m.bilal294@outlook.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:120:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on GarmentsPVC (http://localhost/garmentspvc)\";s:18:\"additional_headers\";s:32:\"Reply-To: m.bilal294@outlook.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(137, 91, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(138, 91, '_additional_settings', ''),
(139, 91, '_locale', 'en_US'),
(140, 95, '_wp_attached_file', '2018/10/random-avatar1.jpg'),
(141, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:427;s:6:\"height\";i:427;s:4:\"file\";s:26:\"2018/10/random-avatar1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"random-avatar1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"random-avatar1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 96, '_wp_attached_file', '2018/10/1.jpg'),
(143, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:13:\"2018/10/1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 97, '_wp_attached_file', '2018/10/1-back.jpg'),
(145, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:18:\"2018/10/1-back.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"1-back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"1-back-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 98, '_wp_attached_file', '2018/10/1-1.jpg'),
(149, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:15:\"2018/10/1-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 99, '_wp_attached_file', '2018/10/1-back-1.jpg'),
(151, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:415;s:6:\"height\";i:729;s:4:\"file\";s:20:\"2018/10/1-back-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1-back-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"1-back-1-171x300.jpg\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 101, '_edit_last', '1'),
(153, 101, '_wp_page_template', 'blog.php'),
(154, 101, '_edit_lock', '1541176599:1'),
(155, 104, '_wp_attached_file', '2018/11/military-patch-1452931.jpg'),
(156, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:34:\"2018/11/military-patch-1452931.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"military-patch-1452931-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"military-patch-1452931-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"military-patch-1452931-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"military-patch-1452931-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1051010318\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.3\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(157, 101, '_thumbnail_id', '104'),
(165, 111, '_wp_attached_file', '2018/11/1.jpg'),
(166, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:268;s:4:\"file\";s:13:\"2018/11/1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 110, '_edit_last', '1'),
(168, 110, '_edit_lock', '1544962700:1'),
(169, 110, '_thumbnail_id', '111'),
(175, 113, '_edit_last', '1'),
(176, 113, '_edit_lock', '1541428336:1'),
(177, 114, '_wp_attached_file', '2018/11/2.jpg'),
(178, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:151;s:4:\"file\";s:13:\"2018/11/2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 113, '_thumbnail_id', '114'),
(185, 116, '_edit_last', '1'),
(186, 116, '_edit_lock', '1541428372:1'),
(187, 117, '_wp_attached_file', '2018/11/3.jpg'),
(188, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:230;s:4:\"file\";s:13:\"2018/11/3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 116, '_thumbnail_id', '117'),
(195, 120, '_edit_last', '1'),
(196, 120, '_edit_lock', '1541428448:1'),
(197, 121, '_wp_attached_file', '2018/11/4.jpg'),
(198, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:270;s:4:\"file\";s:13:\"2018/11/4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 120, '_thumbnail_id', '121'),
(205, 123, '_edit_last', '1'),
(206, 123, '_edit_lock', '1541428489:1'),
(207, 124, '_wp_attached_file', '2018/11/5.jpg'),
(208, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:206;s:4:\"file\";s:13:\"2018/11/5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 123, '_thumbnail_id', '124'),
(215, 127, '_edit_last', '1'),
(216, 127, '_edit_lock', '1544962816:1'),
(217, 128, '_wp_attached_file', '2018/11/6.jpg'),
(218, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:159;s:6:\"height\";i:270;s:4:\"file\";s:13:\"2018/11/6.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 129, '_edit_last', '1'),
(220, 129, '_edit_lock', '1541430022:1'),
(221, 130, '_wp_attached_file', '2018/11/1-1.jpg'),
(222, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:243;s:6:\"height\";i:270;s:4:\"file\";s:15:\"2018/11/1-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 129, '_thumbnail_id', '130'),
(229, 132, '_edit_last', '1'),
(230, 132, '_edit_lock', '1541430109:1'),
(231, 133, '_wp_attached_file', '2018/11/2-1.jpg'),
(232, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:197;s:6:\"height\";i:270;s:4:\"file\";s:15:\"2018/11/2-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 132, '_thumbnail_id', '133'),
(239, 135, '_edit_last', '1'),
(240, 135, '_edit_lock', '1541432850:1'),
(241, 136, '_wp_attached_file', '2018/11/3-1.jpg'),
(242, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:270;s:4:\"file\";s:15:\"2018/11/3-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 135, '_thumbnail_id', '136'),
(244, 139, '_edit_last', '1'),
(245, 139, '_edit_lock', '1541521985:1'),
(246, 140, '_wp_attached_file', '2018/11/booth.jpg'),
(247, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:262;s:4:\"file\";s:17:\"2018/11/booth.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"booth-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 141, '_wp_attached_file', '2018/11/cape.jpg'),
(249, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:270;s:4:\"file\";s:16:\"2018/11/cape.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cape-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 142, '_wp_attached_file', '2018/11/chicago.jpg'),
(251, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:270;s:4:\"file\";s:19:\"2018/11/chicago.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"chicago-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 143, '_wp_attached_file', '2018/11/juice.jpg'),
(253, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:255;s:6:\"height\";i:270;s:4:\"file\";s:17:\"2018/11/juice.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"juice-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 144, '_wp_attached_file', '2018/11/police.jpg'),
(255, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:270;s:4:\"file\";s:18:\"2018/11/police.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"police-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 145, '_wp_attached_file', '2018/11/team.jpg'),
(257, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:270;s:4:\"file\";s:16:\"2018/11/team.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"team-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 146, '_wp_attached_file', '2018/11/auxilary.jpg'),
(259, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:270;s:4:\"file\";s:20:\"2018/11/auxilary.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"auxilary-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 147, '_wp_attached_file', '2018/11/bishop.jpg'),
(261, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:176;s:6:\"height\";i:270;s:4:\"file\";s:18:\"2018/11/bishop.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bishop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 148, '_wp_attached_file', '2018/11/fallen.jpg'),
(263, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:199;s:4:\"file\";s:18:\"2018/11/fallen.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"fallen-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 149, '_wp_attached_file', '2018/11/heat.jpg'),
(265, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:240;s:4:\"file\";s:16:\"2018/11/heat.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"heat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 150, '_wp_attached_file', '2018/11/mad.jpg'),
(267, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:247;s:4:\"file\";s:15:\"2018/11/mad.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"mad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 151, '_wp_attached_file', '2018/11/van.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(269, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:136;s:4:\"file\";s:15:\"2018/11/van.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"van-150x136.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 139, '_wp_page_template', 'default'),
(271, 83, '_edit_lock', '1544889620:1'),
(272, 83, '_edit_last', '1'),
(273, 83, '_wp_page_template', 'default'),
(274, 127, '_wp_old_date', '2018-11-05'),
(280, 158, '_wp_attached_file', '2018/12/100_-Embroidery.jpg'),
(281, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:27:\"2018/12/100_-Embroidery.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"100_-Embroidery-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 159, '_wp_attached_file', '2018/12/50_-Embroidery.jpg'),
(283, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:225;s:4:\"file\";s:26:\"2018/12/50_-Embroidery.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"50_-Embroidery-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 160, '_wp_attached_file', '2018/12/75_-Embroidery.jpg'),
(285, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:225;s:4:\"file\";s:26:\"2018/12/75_-Embroidery.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"75_-Embroidery-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-08-24 04:45:15', '2018-08-24 04:45:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/garmentspvc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-24 04:45:15', '2018-08-24 04:45:15', '', 0, 'http://localhost/garmentspvc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-24 04:45:15', '2018-08-24 04:45:15', '<h2>Who we are</h2><p>Our website address is: http://localhost/garmentspvc.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-24 04:45:15', '2018-08-24 04:45:15', '', 0, 'http://localhost/garmentspvc/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-08-24 07:23:34', '2018-08-24 07:23:34', '', 'frontpage', '', 'publish', 'closed', 'closed', '', 'frontpage', '', '', '2018-08-24 07:23:34', '2018-08-24 07:23:34', '', 0, 'http://localhost/garmentspvc/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-08-24 07:23:34', '2018-08-24 07:23:34', '', 'frontpage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-08-24 07:23:34', '2018-08-24 07:23:34', '', 5, 'http://localhost/garmentspvc/5-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-08-24 11:00:26', '2018-08-24 11:00:26', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-08-24 11:00:26', '2018-08-24 11:00:26', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-08-24 11:00:33', '2018-08-24 11:00:33', '', '1-back', '', 'inherit', 'open', 'closed', '', '1-back', '', '', '2018-08-24 11:00:33', '2018-08-24 11:00:33', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/1-back.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-08-24 11:23:04', '2018-08-24 11:23:04', '', 'White T-Shirt', '', 'publish', 'closed', 'closed', '', 'white-t-shirt', '', '', '2018-08-24 11:23:16', '2018-08-24 11:23:16', '', 0, 'http://localhost/garmentspvc/?post_type=garments&#038;p=43', 0, 'garments', '', 0),
(44, 1, '2018-08-25 07:05:52', '2018-08-25 07:05:52', '', 'Red T-Shirt', '', 'publish', 'closed', 'closed', '', 'red-t-shirt', '', '', '2018-08-25 07:05:52', '2018-08-25 07:05:52', '', 0, 'http://localhost/garmentspvc/?post_type=garments&#038;p=44', 0, 'garments', '', 0),
(45, 1, '2018-08-25 07:05:40', '2018-08-25 07:05:40', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-08-25 07:05:40', '2018-08-25 07:05:40', '', 44, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-08-25 07:06:24', '2018-08-25 07:06:24', '', 'Red T-Shirt 2', '', 'publish', 'closed', 'closed', '', 'red-t-shirt-2', '', '', '2018-08-25 07:06:24', '2018-08-25 07:06:24', '', 0, 'http://localhost/garmentspvc/?post_type=garments&#038;p=46', 0, 'garments', '', 0),
(47, 1, '2018-08-25 07:06:19', '2018-08-25 07:06:19', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-08-25 07:06:19', '2018-08-25 07:06:19', '', 46, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-08-25 07:19:40', '2018-08-25 07:19:40', '', 'Black T-Shirt', '', 'publish', 'closed', 'closed', '', 'black-t-shirt', '', '', '2018-08-25 07:22:45', '2018-08-25 07:22:45', '', 0, 'http://localhost/garmentspvc/?post_type=garments&#038;p=50', 0, 'garments', '', 0),
(53, 1, '2018-08-25 07:12:25', '2018-08-25 07:12:25', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-08-25 07:12:25', '2018-08-25 07:12:25', '', 50, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-08-25 07:19:28', '2018-08-25 07:19:28', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2018-08-25 07:19:28', '2018-08-25 07:19:28', '', 50, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-08-25 07:20:49', '2018-08-25 07:20:49', '', 'Black Polo', '', 'publish', 'closed', 'closed', '', 'black-polo', '', '', '2018-08-25 07:20:49', '2018-08-25 07:20:49', '', 0, 'http://localhost/garmentspvc/?post_type=garments&#038;p=56', 0, 'garments', '', 0),
(57, 1, '2018-08-25 07:20:22', '2018-08-25 07:20:22', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2018-08-25 07:20:22', '2018-08-25 07:20:22', '', 56, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-08-25 07:21:48', '2018-08-25 07:21:48', '', 'Black Hoodie', '', 'publish', 'closed', 'closed', '', 'black-hoodie', '', '', '2018-09-02 08:50:16', '2018-09-02 08:50:16', '', 0, 'http://localhost/garmentspvc/?post_type=garments&#038;p=58', 0, 'garments', '', 0),
(59, 1, '2018-08-25 07:21:43', '2018-08-25 07:21:43', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2018-08-25 07:21:43', '2018-08-25 07:21:43', '', 58, 'http://localhost/garmentspvc/wp-content/uploads/2018/08/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-09-03 15:13:08', '2018-09-03 15:13:08', '<strong>Lorem Ipsum</strong> është një tekst shabllon i industrisë së printimit dhe shtypshkronjave. Lorem Ipsum ka qenë teksti shabllon i industrisë që nga vitet 1500, kur një shtypës i panjohur morri një galeri shkrimesh dhe i ngatërroi për të krijuar një libër mostër. Teksti i ka mbijetuar jo vetëm pesë shekujve, por edhe kalimit në shtypshkrimin elektronik, duke ndenjur në thelb i pandryshuar. U bë i njohur në vitet 1960 me lëshimin e letrave \'Letraset\' që përmbanin tekstin Lorem Ipsum, e në kohët e fundit me aplikacione publikimi si Aldus PageMaker që përmbajnë versione të Lorem Ipsum.', 'MenBlackJeans', '', 'publish', 'open', 'closed', '', 'menblackjeans', '', '', '2018-10-31 15:17:06', '2018-10-31 15:17:06', '', 0, 'http://localhost/garmentspvc/?post_type=mengarments&#038;p=66', 0, 'mengarments', '', 9),
(67, 1, '2018-09-03 15:20:53', '2018-09-03 15:20:53', '', 'RedWoman', '', 'publish', 'open', 'open', '', 'redwoman', '', '', '2018-10-31 15:22:57', '2018-10-31 15:22:57', '', 0, 'http://localhost/garmentspvc/?post_type=womengarments&#038;p=67', 0, 'womengarments', '', 0),
(69, 1, '2018-09-03 15:29:21', '2018-09-03 15:29:21', '', 'rawpixel-741637-unsplash', '', 'inherit', 'open', 'closed', '', 'rawpixel-741637-unsplash', '', '', '2018-09-03 15:29:21', '2018-09-03 15:29:21', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/09/rawpixel-741637-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-09-03 15:30:04', '2018-09-03 15:30:04', '', 'WhatsApp Image 2017-11-06 at 1.54.55 AM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2017-11-06-at-1-54-55-am', '', '', '2018-09-03 15:30:04', '2018-09-03 15:30:04', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/09/WhatsApp-Image-2017-11-06-at-1.54.55-AM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-09-03 15:30:26', '2018-09-03 15:30:26', '', 'WhatsApp Image 2017-11-06 at 1.54.54 AM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2017-11-06-at-1-54-54-am', '', '', '2018-09-03 15:30:26', '2018-09-03 15:30:26', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/09/WhatsApp-Image-2017-11-06-at-1.54.54-AM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-09-03 15:30:39', '2018-09-03 15:30:39', '', 'WhatsApp Image 2017-11-06 at 1.54.51 AM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2017-11-06-at-1-54-51-am', '', '', '2018-09-03 15:30:39', '2018-09-03 15:30:39', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/09/WhatsApp-Image-2017-11-06-at-1.54.51-AM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-09-03 15:30:43', '2018-09-03 15:30:43', '', 'WhatsApp Image 2017-11-06 at 1.54.53 AM (1)', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2017-11-06-at-1-54-53-am-1', '', '', '2018-09-03 15:30:43', '2018-09-03 15:30:43', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/09/WhatsApp-Image-2017-11-06-at-1.54.53-AM-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-09-03 15:30:51', '2018-09-03 15:30:51', '', 'WhatsApp Image 2017-11-06 at 1.54.52 AM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2017-11-06-at-1-54-52-am', '', '', '2018-09-03 15:30:51', '2018-09-03 15:30:51', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/09/WhatsApp-Image-2017-11-06-at-1.54.52-AM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-09-11 15:28:51', '2018-09-11 15:28:51', '', 'MenBlackJeans', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-09-11 15:28:51', '2018-09-11 15:28:51', '', 66, 'http://localhost/garmentspvc/66-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-09-11 15:30:07', '2018-09-11 15:30:07', '<strong>Lorem Ipsum</strong> është një tekst shabllon i industrisë së printimit dhe shtypshkronjave. Lorem Ipsum ka qenë teksti shabllon i industrisë që nga vitet 1500, kur një shtypës i panjohur morri një galeri shkrimesh dhe i ngatërroi për të krijuar një libër mostër. Teksti i ka mbijetuar jo vetëm pesë shekujve, por edhe kalimit në shtypshkrimin elektronik, duke ndenjur në thelb i pandryshuar. U bë i njohur në vitet 1960 me lëshimin e letrave \'Letraset\' që përmbanin tekstin Lorem Ipsum, e në kohët e fundit me aplikacione publikimi si Aldus PageMaker që përmbajnë versione të Lorem Ipsum.', 'MenBlackJeans', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-09-11 15:30:07', '2018-09-11 15:30:07', '', 66, 'http://localhost/garmentspvc/66-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-09-15 08:04:57', '2018-09-15 08:04:57', '', 'contact-us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-15 08:04:57', '2018-09-15 08:04:57', '', 0, 'http://localhost/garmentspvc/?page_id=78', 0, 'page', '', 0),
(79, 1, '2018-09-15 08:04:57', '2018-09-15 08:04:57', '', 'contact-us', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-09-15 08:04:57', '2018-09-15 08:04:57', '', 78, 'http://localhost/garmentspvc/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-09-15 08:37:30', '2018-09-15 08:37:30', '[yith_ywraq_request_quote]', 'Request a Quote', '', 'publish', 'closed', 'closed', '', 'request-quote', '', '', '2018-09-15 08:37:30', '2018-09-15 08:37:30', '', 0, 'http://localhost/garmentspvc/request-quote/', 0, 'page', '', 0),
(81, 1, '2018-09-15 08:38:53', '2018-09-15 08:38:53', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-09-15 08:38:53', '2018-09-15 08:38:53', '', 0, 'http://localhost/garmentspvc/shop/', 0, 'page', '', 0),
(82, 1, '2018-09-15 08:38:53', '2018-09-15 08:38:53', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-09-15 08:38:53', '2018-09-15 08:38:53', '', 0, 'http://localhost/garmentspvc/cart/', 0, 'page', '', 0),
(83, 1, '2018-09-15 08:38:53', '2018-09-15 08:38:53', '[soccer_payments]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-12-15 16:01:34', '2018-12-15 16:01:34', '', 0, 'http://localhost/garmentspvc/checkout/', 0, 'page', '', 0),
(84, 1, '2018-09-15 08:38:54', '2018-09-15 08:38:54', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-09-15 08:38:54', '2018-09-15 08:38:54', '', 0, 'http://localhost/garmentspvc/my-account/', 0, 'page', '', 0),
(85, 1, '2018-09-15 08:42:06', '0000-00-00 00:00:00', '', '', '<p><br data-mce-bogus=\"1\"></p>', 'draft', 'open', 'closed', '', '', '', '', '2018-09-15 08:42:06', '2018-09-15 08:42:06', '', 0, 'http://localhost/garmentspvc/?post_type=product&#038;p=85', 0, 'product', '', 0),
(89, 1, '2018-09-22 09:11:01', '2018-09-22 09:11:01', '<div class=\"row\">\r\n<div class=\"form-group col-sm-6\">\r\n[text* Name id:name class:form-control class:myInput placeholder \"Name*\"]\r\n</div>\r\n<div class=\"form-group col-sm-6\">\r\n[email* Email id:email class:form-control class:myInput placeholder \"Email*\"]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col-sm-6\">\r\n[tel MobileNumber class:form-control class:myInput placeholder \"Contact Number\"]\r\n</div>\r\n<div class=\"form-group col-sm-6\">\r\n[text* Subject id:Subject class:form-control class:myInput placeholder \"Subject\"]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n\r\n<div class=\"form-group col-sm-12\">\r\n[textarea* message id:message class:form-control class:myInput placeholder \"Your Message\"]\r\n</div> \r\n</div>\r\n[dynamichidden dynamicsitetitle id:site-title \"CF7_bloginfo show=\'name\'\"]\r\n\r\n[dynamichidden dynamicposttitle id:post-title \"CF7_get_post_var key=\'title\'\"]\r\n\r\n[dynamichidden dynamicurl id:post-url \"CF7_URL\"]\r\n\r\n[submit class:myBtn class:myBtn-rounded class:myBtn-border class:myBtn-midlight class:myBtn-sm class:pull-right \"Request For Quote\"]\n1\nGarmentsPVC \"[Subject]\"\n[Name] <m.bilal294@outlook.com>\nm.bilal294@outlook.com\nFrom: [Name] <[Email]>\r\nSubject: [Subject]\r\nMobile Number: [MobileNumber]\r\nMessage Body:\r\n[message]\r\n\r\nTarget Post : \r\n[dynamicurl]\r\n[dynamicposttitle]\r\n[dynamicsitetitle]\r\n-- \r\nThis e-mail was sent from a client a=by access  [dynamicurl]\nReply-To: [Email]\n\n1\n\n\nGarmentsPVC \"[your-subject]\"\nGarmentsPVC <m.bilal294@outlook.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on GarmentsPVC (http://localhost/garmentspvc)\nReply-To: m.bilal294@outlook.com\n\n\n\nReqest For Quotation Has been Placed Successfully\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.\n.wpcf7 textarea {\r\nheight: auto;\r\nwidth: auto;\r\n}', 'PlaceOrder', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-22 10:34:29', '2018-09-22 10:34:29', '', 0, 'http://localhost/garmentspvc/?post_type=wpcf7_contact_form&#038;p=89', 0, 'wpcf7_contact_form', '', 0),
(91, 1, '2018-09-22 10:45:52', '2018-09-22 10:45:52', '<div class=\"row\">\r\n<div class=\"form-group col-sm-4\">\r\n<label for=\"name\">Name <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\r\n[text* contact_name id:name class:form-control class:myInput]\r\n</div>\r\n<div class=\"form-group col-sm-4\">\r\n<label for=\"email\">Email <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\r\n[email* email id:email class:form-control class:myInput]\r\n</div>\r\n<div class=\"form-group col-sm-4\">\r\n<label for=\"phone\">Phone</label>\r\n[tel phone id:phone class:form-control class:myInput]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col-sm-12\">\r\n<label for=\"subject\">Subject <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\r\n[text* contact_subject id:subject class:form-control class:myInput]\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col-sm-12\">\r\n<label for=\"message\">Message <span class=\"text-lightred\" style=\"font-size: 15px\">*</span></label>\r\n[textarea* contact_message id:message class:form-control class:myInput]\r\n</div>\r\n</div>\r\n[submit class:myBtn class:myBtn-rounded class:myBtn-lg class:myBtn-3d class:m-0 class:mt-10 \"Send Message\"]\n1\n\"[contact_subject]\"\n[contact_name] <m.bilal294@outlook.com>\nm.bilal294@outlook.com\n******************* CONTACT US PAGE **************************\r\n\r\nFrom: [contact_name] <[email]>\r\nSubject: [contact_subject]\r\nPhone: [phone]\r\nMessage Body:\r\n[contact_message]\r\n\r\n-- \r\nThis e-mail was sent from a contact US Page of WEBSITE\nReply-To: [email]\n\n\n\n\nGarmentsPVC \"[your-subject]\"\nGarmentsPVC <m.bilal294@outlook.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on GarmentsPVC (http://localhost/garmentspvc)\nReply-To: m.bilal294@outlook.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact-us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-22 10:49:26', '2018-09-22 10:49:26', '', 0, 'http://localhost/garmentspvc/?post_type=wpcf7_contact_form&#038;p=91', 0, 'wpcf7_contact_form', '', 0),
(92, 1, '2018-09-23 08:45:33', '2018-09-23 08:45:33', '', 'RedWoman', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-09-23 08:45:33', '2018-09-23 08:45:33', '', 67, 'http://localhost/garmentspvc/67-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-10-31 15:15:35', '2018-10-31 15:15:35', '', 'random-avatar1', '', 'inherit', 'open', 'closed', '', 'random-avatar1', '', '', '2018-10-31 15:15:35', '2018-10-31 15:15:35', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/10/random-avatar1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-10-31 15:16:12', '2018-10-31 15:16:12', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2018-10-31 15:16:12', '2018-10-31 15:16:12', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-10-31 15:16:14', '2018-10-31 15:16:14', '', '1-back', '', 'inherit', 'open', 'closed', '', '1-back-2', '', '', '2018-10-31 15:16:14', '2018-10-31 15:16:14', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1-back.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-10-31 15:22:07', '2018-10-31 15:22:07', '', '1', '', 'inherit', 'open', 'closed', '', '1-4', '', '', '2018-10-31 15:22:07', '2018-10-31 15:22:07', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-10-31 15:22:15', '2018-10-31 15:22:15', '', '1-back', '', 'inherit', 'open', 'closed', '', '1-back-3', '', '', '2018-10-31 15:22:15', '2018-10-31 15:22:15', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/10/1-back-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-11-02 15:53:31', '2018-11-02 15:53:31', 'Welcome to Garments &amp; patches co. We specialize in making high-quality, custom and embroidered patches to meet everyone\'s requirement. We can use your logo and design ideas to make a custom patch unique to your organization or event. All of our patches are custom made, they can be almost any shape, color or size. . You can expect your patches to be at your door in as little time or less after placing your order, and we pride ourselves with having the best prices, best turnaround time and some of the best designers the industry has to offer. If you have any questions, please give us a call at 0300-2724354 or send us an e-mail at sales@patchprofessionals.com. Request a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> and get started on your next great custom patch today!\r\n\r\n&nbsp;\r\n\r\nOur goal at Garments &amp; patches co is to ensure that you, the client, are fully satisfied with his custom patch order and will want to come back to us for all of your future patch needs. That is why we make sure our customer service representatives are very knowledgeable about our products and assist our customers to make informed decisions when purchasing custom embroidered patches. Our experienced designers will make sure you receive a beautiful and accurate custom patch that enhances your organization\'s image and will be a patch that you are proud to wear. Learn more about custom patches.\r\n\r\nLet our knowledge and experience work for you. We\'ve created and manufactured custom patches for many different companies and for diffirent organizations event our patches including police patches, fire patches, biker patches, awareness patches, EMS patches, military patches, disaster relief patches, martial arts patches, award patches, recognition patches . If you have a reason for a custom patch. We are the people to call. And because it\'s so easy to get started, you can get a Free Quote today.\r\n\r\nPatchProfessionals.com is a master in making of custom patch due to our attention to detail and the relationships we build with our customers. we are available to answer any query collaborate on a unique design; and help you make those tough decisions regarding sizing and available options. But our favorite part of the process is when you have your custom patches in your hand and they are exactly what you wanted. We love to get feedback from our customers, and if you\'d like to submit a testimonial about the experience you had while working with PatchProfessionals.com, feel free to call us at 0300-2724354 or e-mail sales@patchprofessionals.com.\r\n\r\nAt PatchProfessionals.com, we want to help you expand your company or organization\'s reach, celebrate victories, and acknowledge those who performed at a higher standard of excellence. That is why we provide top-quality, custom embroidered patches through our creative design team and our fantastic customer representatives. For questions, comments or concerns, please contact us at 877-912-6407 or sales@patchprofessionals.com.\r\n\r\n&nbsp;', 'Patches In Brief', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-11-02 16:37:03', '2018-11-02 16:37:03', '', 0, 'http://localhost/garmentspvc/?page_id=101', 0, 'page', '', 0),
(102, 1, '2018-11-02 15:53:31', '2018-11-02 15:53:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-02 15:53:31', '2018-11-02 15:53:31', '', 101, 'http://localhost/garmentspvc/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-11-02 16:11:06', '2018-11-02 16:11:06', 'Welcome to Garments &amp; patches co. We specialize in making high-quality, custom and embroidered patches to meet everyone\'s requirement. We can use your logo and design ideas to make a custom patch unique to your organization or event. All of our patches are custom made, they can be almost any shape, color or size. . You can expect your patches to be at your door in as little time or less after placing your order, and we pride ourselves with having the best prices, best turnaround time and some of the best designers the industry has to offer. If you have any questions, please give us a call at 0300-2724354 or send us an e-mail at sales@patchprofessionals.com. Request a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> and get started on your next great custom patch today!\r\n\r\n&nbsp;\r\n\r\nOur goal at Garments &amp; patches co is to ensure that you, the client, are fully satisfied with his custom patch order and will want to come back to us for all of your future patch needs. That is why we make sure our customer service representatives are very knowledgeable about our products and assist our customers to make informed decisions when purchasing custom embroidered patches. Our experienced designers will make sure you receive a beautiful and accurate custom patch that enhances your organization\'s image and will be a patch that you are proud to wear. <a href=\"http://en.wikipedia.org/wiki/Embroidered_patch\">Learn more about custom patches.</a>\r\n\r\nLet our knowledge and experience work for you. We\'ve created and manufactured custom patches for many different companies and for diffirent organizations event our patches including police patches, fire patches, biker patches, awareness patches, EMS patches, military patches, disaster relief patches, martial arts patches, award patches, recognition patches . If you have a reason for a custom patch. We are the people to call. And because it\'s so easy to get started, you can get a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> today.\r\n\r\nPatchProfessionals.com is a master in making of custom patch due to our attention to detail and the relationships we build with our customers. we are available to answer any query collaborate on a unique design; and help you make those tough decisions regarding sizing and available options. But our favorite part of the process is when you have your custom patches in your hand and they are exactly what you wanted. We love to get feedback from our customers, and if you\'d like to submit a testimonial about the experience you had while working with PatchProfessionals.com, feel free to call us at 0300-2724354 or e-mail sales@patchprofessionals.com.\r\n\r\nAt PatchProfessionals.com, we want to help you expand your company or organization\'s reach, celebrate victories, and acknowledge those who performed at a higher standard of excellence. That is why we provide top-quality, custom embroidered patches through our creative design team and our fantastic customer representatives. For questions, comments or concerns, please contact us at 877-912-6407 or sales@patchprofessionals.com.\r\n\r\n&nbsp;', 'Blog', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-02 16:11:06', '2018-11-02 16:11:06', '', 101, 'http://localhost/garmentspvc/101-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-11-02 16:19:30', '2018-11-02 16:19:30', '', 'military-patch-1452931', '', 'inherit', 'open', 'closed', '', 'military-patch-1452931', '', '', '2018-11-02 16:19:30', '2018-11-02 16:19:30', '', 101, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/military-patch-1452931.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-11-02 16:20:46', '2018-11-02 16:20:46', 'Welcome to Garments &amp; patches co. We specialize in making high-quality, custom and embroidered patches to meet everyone\'s requirement. We can use your logo and design ideas to make a custom patch unique to your organization or event. All of our patches are custom made, they can be almost any shape, color or size. . You can expect your patches to be at your door in as little time or less after placing your order, and we pride ourselves with having the best prices, best turnaround time and some of the best designers the industry has to offer. If you have any questions, please give us a call at 0300-2724354 or send us an e-mail at sales@patchprofessionals.com. Request a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> and get started on your next great custom patch today!\r\n\r\n&nbsp;\r\n\r\nOur goal at Garments &amp; patches co is to ensure that you, the client, are fully satisfied with his custom patch order and will want to come back to us for all of your future patch needs. That is why we make sure our customer service representatives are very knowledgeable about our products and assist our customers to make informed decisions when purchasing custom embroidered patches. Our experienced designers will make sure you receive a beautiful and accurate custom patch that enhances your organization\'s image and will be a patch that you are proud to wear. <a href=\"http://en.wikipedia.org/wiki/Embroidered_patch\">Learn more about custom patches.</a>\r\n\r\nLet our knowledge and experience work for you. We\'ve created and manufactured custom patches for many different companies and for diffirent organizations event our patches including police patches, fire patches, biker patches, awareness patches, EMS patches, military patches, disaster relief patches, martial arts patches, award patches, recognition patches . If you have a reason for a custom patch. We are the people to call. And because it\'s so easy to get started, you can get a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> today.\r\n\r\nPatchProfessionals.com is a master in making of custom patch due to our attention to detail and the relationships we build with our customers. we are available to answer any query collaborate on a unique design; and help you make those tough decisions regarding sizing and available options. But our favorite part of the process is when you have your custom patches in your hand and they are exactly what you wanted. We love to get feedback from our customers, and if you\'d like to submit a testimonial about the experience you had while working with PatchProfessionals.com, feel free to call us at 0300-2724354 or e-mail sales@patchprofessionals.com.\r\n\r\nAt PatchProfessionals.com, we want to help you expand your company or organization\'s reach, celebrate victories, and acknowledge those who performed at a higher standard of excellence. That is why we provide top-quality, custom embroidered patches through our creative design team and our fantastic customer representatives. For questions, comments or concerns, please contact us at 877-912-6407 or sales@patchprofessionals.com.\r\n\r\n&nbsp;', 'Patches In Brief', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-02 16:20:46', '2018-11-02 16:20:46', '', 101, 'http://localhost/garmentspvc/101-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-11-02 16:32:43', '2018-11-02 16:32:43', 'Welcome to Garments &amp; patches co. We specialize in making high-quality, custom and embroidered patches to meet everyone\'s requirement. We can use your logo and design ideas to make a custom patch unique to your organization or event. All of our patches are custom made, they can be almost any shape, color or size. . You can expect your patches to be at your door in as little time or less after placing your order, and we pride ourselves with having the best prices, best turnaround time and some of the best designers the industry has to offer. If you have any questions, please give us a call at 0300-2724354 or send us an e-mail at sales@patchprofessionals.com. Request a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> and get started on your next great custom patch today!\r\n\r\n&nbsp;', 'Patches In Brief', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-02 16:32:43', '2018-11-02 16:32:43', '', 101, 'http://localhost/garmentspvc/101-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-11-02 16:36:51', '2018-11-02 16:36:51', 'Welcome to Garments &amp; patches co. We specialize in making high-quality, custom and embroidered patches to meet everyone\'s requirement. We can use your logo and design ideas to make a custom patch unique to your organization or event. All of our patches are custom made, they can be almost any shape, color or size. . You can expect your patches to be at your door in as little time or less after placing your order, and we pride ourselves with having the best prices, best turnaround time and some of the best designers the industry has to offer. If you have any questions, please give us a call at 0300-2724354 or send us an e-mail at sales@patchprofessionals.com. Request a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> and get started on your next great custom patch today!\n\n&nbsp;\n\nOur goal at Garments &amp; patches co is to ensure that you, the client, are fully satisfied with his custom patch order and will want to come back to us for all of your future patch needs. That is why we make sure our customer service representatives are very knowledgeable about our products and assist our customers to make informed decisions when purchasing custom embroidered patches. Our experienced designers will make sure you receive a beautiful and accurate custom patch that enhances your organization\'s image and will be a patch that you are proud to wear. <a href=\"http://en.wikipedia.org/wiki/Embroidered_patch\">Learn more about custom patches.</a>\n\nLet our knowledge and experience work for you. We\'ve created and manufactured custom patches for many different companies and for diffirent organizations event our patches including police patches, fire patches, biker patches, awareness patches, EMS patches, military patches, disaster relief patches, martial arts patches, award patches, recognition patches . If you have a reason for a custom patch. We are the people to call. And because it\'s so easy to get started, you can get a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> today.\n\nPatchProfessionals.com is a master in making of custom patch due to our attention to detail and the relationships we build with our customers. we are available to answer any query collaborate on a unique design; and help you make those tough decisions regarding sizing and available options. But our favorite part of the process is when you have your custom patches in your hand and they are exactly what you wanted. We love to get feedback from our customers, and if you\'d like to submit a testimonial about the experience you had while working with PatchProfessionals.com, feel free to call us at 0300-2724354 or e-mail sales@patchprofessionals.com.\n\nAt PatchProfessionals.com, we want to help you expand your company or organization\'s reach, celebrate victories, and acknowledge those who performed at a higher standard of excellence. That is why we provide top-quality, custom embroidered patches through our creative design team and our fantastic customer representatives. For questions, comments or concerns, please contact us at 877-912-6407 or sales@patchprofessionals.com.\n\n&nbsp;', 'Patches In Brief', '', 'inherit', 'closed', 'closed', '', '101-autosave-v1', '', '', '2018-11-02 16:36:51', '2018-11-02 16:36:51', '', 101, 'http://localhost/garmentspvc/101-autosave-v1/', 0, 'revision', '', 0),
(108, 1, '2018-11-02 16:37:03', '2018-11-02 16:37:03', 'Welcome to Garments &amp; patches co. We specialize in making high-quality, custom and embroidered patches to meet everyone\'s requirement. We can use your logo and design ideas to make a custom patch unique to your organization or event. All of our patches are custom made, they can be almost any shape, color or size. . You can expect your patches to be at your door in as little time or less after placing your order, and we pride ourselves with having the best prices, best turnaround time and some of the best designers the industry has to offer. If you have any questions, please give us a call at 0300-2724354 or send us an e-mail at sales@patchprofessionals.com. Request a <a href=\"http://patchprofessionals.com/quote.html\">Free Quote</a> and get started on your next great custom patch today!\r\n\r\n&nbsp;\r\n\r\nOur goal at Garments &amp; patches co is to ensure that you, the client, are fully satisfied with his custom patch order and will want to come back to us for all of your future patch needs. That is why we make sure our customer service representatives are very knowledgeable about our products and assist our customers to make informed decisions when purchasing custom embroidered patches. Our experienced designers will make sure you receive a beautiful and accurate custom patch that enhances your organization\'s image and will be a patch that you are proud to wear. Learn more about custom patches.\r\n\r\nLet our knowledge and experience work for you. We\'ve created and manufactured custom patches for many different companies and for diffirent organizations event our patches including police patches, fire patches, biker patches, awareness patches, EMS patches, military patches, disaster relief patches, martial arts patches, award patches, recognition patches . If you have a reason for a custom patch. We are the people to call. And because it\'s so easy to get started, you can get a Free Quote today.\r\n\r\nPatchProfessionals.com is a master in making of custom patch due to our attention to detail and the relationships we build with our customers. we are available to answer any query collaborate on a unique design; and help you make those tough decisions regarding sizing and available options. But our favorite part of the process is when you have your custom patches in your hand and they are exactly what you wanted. We love to get feedback from our customers, and if you\'d like to submit a testimonial about the experience you had while working with PatchProfessionals.com, feel free to call us at 0300-2724354 or e-mail sales@patchprofessionals.com.\r\n\r\nAt PatchProfessionals.com, we want to help you expand your company or organization\'s reach, celebrate victories, and acknowledge those who performed at a higher standard of excellence. That is why we provide top-quality, custom embroidered patches through our creative design team and our fantastic customer representatives. For questions, comments or concerns, please contact us at 877-912-6407 or sales@patchprofessionals.com.\r\n\r\n&nbsp;', 'Patches In Brief', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-02 16:37:03', '2018-11-02 16:37:03', '', 101, 'http://localhost/garmentspvc/101-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-11-05 14:33:37', '2018-11-05 14:33:37', '', 'joint fire', '', 'publish', 'open', 'closed', '', 'joint-fire', '', '', '2018-11-05 14:33:37', '2018-11-05 14:33:37', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=110', 0, 'patches', '', 0),
(111, 1, '2018-11-05 14:32:50', '2018-11-05 14:32:50', '', '1', '', 'inherit', 'open', 'closed', '', '1-5', '', '', '2018-11-05 14:32:50', '2018-11-05 14:32:50', '', 110, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-11-05 14:33:37', '2018-11-05 14:33:37', '', 'joint fire', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-11-05 14:33:37', '2018-11-05 14:33:37', '', 110, 'http://localhost/garmentspvc/110-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-11-05 14:34:29', '2018-11-05 14:34:29', '', 'Interstate Batteries', '', 'publish', 'open', 'closed', '', 'interstate-batteries', '', '', '2018-11-05 14:34:29', '2018-11-05 14:34:29', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=113', 0, 'patches', '', 0),
(114, 1, '2018-11-05 14:34:20', '2018-11-05 14:34:20', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2018-11-05 14:34:20', '2018-11-05 14:34:20', '', 113, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2018-11-05 14:34:29', '2018-11-05 14:34:29', '', 'Interstate Batteries', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-11-05 14:34:29', '2018-11-05 14:34:29', '', 113, 'http://localhost/garmentspvc/113-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-11-05 14:35:07', '2018-11-05 14:35:07', '', 'Bad Guy', '', 'publish', 'open', 'closed', '', 'bad-guy', '', '', '2018-11-05 14:35:07', '2018-11-05 14:35:07', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=116', 0, 'patches', '', 0),
(117, 1, '2018-11-05 14:34:59', '2018-11-05 14:34:59', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2018-11-05 14:34:59', '2018-11-05 14:34:59', '', 116, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2018-11-05 14:35:07', '2018-11-05 14:35:07', '', 'Bad Guy', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-11-05 14:35:07', '2018-11-05 14:35:07', '', 116, 'http://localhost/garmentspvc/116-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-11-05 14:35:14', '2018-11-05 14:35:14', '', 'Bad Guy', '', 'inherit', 'closed', 'closed', '', '116-autosave-v1', '', '', '2018-11-05 14:35:14', '2018-11-05 14:35:14', '', 116, 'http://localhost/garmentspvc/116-autosave-v1/', 0, 'revision', '', 0),
(120, 1, '2018-11-05 14:36:08', '2018-11-05 14:36:08', '', 'Beast Assault', '', 'publish', 'open', 'closed', '', 'beast-assault', '', '', '2018-11-05 14:36:08', '2018-11-05 14:36:08', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=120', 0, 'patches', '', 0),
(121, 1, '2018-11-05 14:35:56', '2018-11-05 14:35:56', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-11-05 14:35:56', '2018-11-05 14:35:56', '', 120, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2018-11-05 14:36:08', '2018-11-05 14:36:08', '', 'Beast Assault', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-11-05 14:36:08', '2018-11-05 14:36:08', '', 120, 'http://localhost/garmentspvc/120-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-11-05 14:37:02', '2018-11-05 14:37:02', '', 'America Brave', '', 'publish', 'open', 'closed', '', 'america-brave', '', '', '2018-11-05 14:37:02', '2018-11-05 14:37:02', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=123', 0, 'patches', '', 0),
(124, 1, '2018-11-05 14:36:55', '2018-11-05 14:36:55', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-11-05 14:36:55', '2018-11-05 14:36:55', '', 123, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2018-11-05 14:37:02', '2018-11-05 14:37:02', '', 'America Brave', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2018-11-05 14:37:02', '2018-11-05 14:37:02', '', 123, 'http://localhost/garmentspvc/123-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-11-05 14:37:10', '2018-11-05 14:37:10', '', 'America Brave', '', 'inherit', 'closed', 'closed', '', '123-autosave-v1', '', '', '2018-11-05 14:37:10', '2018-11-05 14:37:10', '', 123, 'http://localhost/garmentspvc/123-autosave-v1/', 0, 'revision', '', 0),
(127, 1, '2018-12-16 12:21:02', '2018-12-16 12:21:02', '', 'Bravest', '', 'publish', 'open', 'closed', '', 'bravest', '', '', '2018-12-16 12:21:02', '2018-12-16 12:21:02', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=127', 0, 'patches', '', 0),
(128, 1, '2018-11-05 14:37:34', '2018-11-05 14:37:34', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-11-05 14:37:34', '2018-11-05 14:37:34', '', 127, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-11-05 15:02:17', '2018-11-05 15:02:17', '', 'Owl-TM', '', 'publish', 'open', 'closed', '', 'owl-tm', '', '', '2018-11-05 15:02:17', '2018-11-05 15:02:17', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=129', 0, 'patches', '', 0),
(130, 1, '2018-11-05 15:02:09', '2018-11-05 15:02:09', '', '1', '', 'inherit', 'open', 'closed', '', '1-6', '', '', '2018-11-05 15:02:09', '2018-11-05 15:02:09', '', 129, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2018-11-05 15:02:17', '2018-11-05 15:02:17', '', 'Owl-TM', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-11-05 15:02:17', '2018-11-05 15:02:17', '', 129, 'http://localhost/garmentspvc/129-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-11-05 15:03:34', '2018-11-05 15:03:34', '', 'Ribbon-leaf', '', 'publish', 'open', 'closed', '', 'ribbon-leaf', '', '', '2018-11-05 15:03:34', '2018-11-05 15:03:34', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=132', 0, 'patches', '', 0),
(133, 1, '2018-11-05 15:03:23', '2018-11-05 15:03:23', '', '2', '', 'inherit', 'open', 'closed', '', '2-4', '', '', '2018-11-05 15:03:23', '2018-11-05 15:03:23', '', 132, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2018-11-05 15:03:34', '2018-11-05 15:03:34', '', 'Ribbon-leaf', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2018-11-05 15:03:34', '2018-11-05 15:03:34', '', 132, 'http://localhost/garmentspvc/132-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(135, 1, '2018-11-05 15:04:58', '2018-11-05 15:04:58', '', 'AA Eagle', '', 'publish', 'open', 'closed', '', 'aa-eagle', '', '', '2018-11-05 15:04:58', '2018-11-05 15:04:58', '', 0, 'http://localhost/garmentspvc/?post_type=patches&#038;p=135', 0, 'patches', '', 0),
(136, 1, '2018-11-05 15:04:43', '2018-11-05 15:04:43', '', '3', '', 'inherit', 'open', 'closed', '', '3-4', '', '', '2018-11-05 15:04:43', '2018-11-05 15:04:43', '', 135, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2018-11-05 15:04:58', '2018-11-05 15:04:58', '', 'AA Eagle', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2018-11-05 15:04:58', '2018-11-05 15:04:58', '', 135, 'http://localhost/garmentspvc/135-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-11-06 14:57:02', '2018-11-06 14:57:02', 'An important part of every embroidered patch and woven patch order is the edge selection. Finished edges keep patches from unraveling and becoming unsightly. A Merrowed Edge is essentially a sewn border. It is created using an overlock stitch, which yields a uniform edge and prevents fraying. A Hot Cut Edge is die cut. Heated scissors help create this type of edge. Every patch must have an edge in order to stay intact. Hot Cut Edges are used for more extreme shapes, while Merrow Edges create a rounded appearance.\r\n\r\nIf you need assistance choosing between a Merrowed Edge and a Hot Cut Edge, contact a Patch Depot representative right away!\r\n<h4>Merrow Borders</h4>\r\n<img class=\"alignnone size-full wp-image-140\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/booth.jpg\" alt=\"\" width=\"270\" height=\"262\" /> <img class=\"alignnone size-full wp-image-141\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/cape.jpg\" alt=\"\" width=\"269\" height=\"270\" /> <img class=\"alignnone size-full wp-image-142\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/chicago.jpg\" alt=\"\" width=\"265\" height=\"270\" /> <img class=\"alignnone size-full wp-image-143\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/juice.jpg\" alt=\"\" width=\"255\" height=\"270\" /> <img class=\"alignnone size-full wp-image-144\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/police.jpg\" alt=\"\" width=\"257\" height=\"270\" /> <img class=\"alignnone size-full wp-image-145\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/team.jpg\" alt=\"\" width=\"267\" height=\"270\" />\r\n<h4>Hot Cut Borders</h4>\r\n<img class=\"alignnone size-full wp-image-146\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/auxilary.jpg\" alt=\"\" width=\"265\" height=\"270\" /> <img class=\"alignnone size-full wp-image-147\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/bishop.jpg\" alt=\"\" width=\"176\" height=\"270\" /> <img class=\"alignnone size-full wp-image-148\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/fallen.jpg\" alt=\"\" width=\"270\" height=\"199\" /> <img class=\"alignnone size-full wp-image-149\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/heat.jpg\" alt=\"\" width=\"270\" height=\"240\" /> <img class=\"alignnone size-full wp-image-150\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/mad.jpg\" alt=\"\" width=\"270\" height=\"247\" /> <img class=\"alignnone size-full wp-image-151\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/van.jpg\" alt=\"\" width=\"270\" height=\"136\" />', 'edges', '', 'publish', 'closed', 'closed', '', 'edges', '', '', '2018-11-06 14:57:02', '2018-11-06 14:57:02', '', 0, 'http://localhost/garmentspvc/?page_id=139', 0, 'page', '', 0),
(140, 1, '2018-11-06 14:54:19', '2018-11-06 14:54:19', '', 'booth', '', 'inherit', 'open', 'closed', '', 'booth', '', '', '2018-11-06 14:54:19', '2018-11-06 14:54:19', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/booth.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2018-11-06 14:54:25', '2018-11-06 14:54:25', '', 'cape', '', 'inherit', 'open', 'closed', '', 'cape', '', '', '2018-11-06 14:54:25', '2018-11-06 14:54:25', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/cape.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-11-06 14:54:27', '2018-11-06 14:54:27', '', 'chicago', '', 'inherit', 'open', 'closed', '', 'chicago', '', '', '2018-11-06 14:54:27', '2018-11-06 14:54:27', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/chicago.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2018-11-06 14:54:29', '2018-11-06 14:54:29', '', 'juice', '', 'inherit', 'open', 'closed', '', 'juice', '', '', '2018-11-06 14:54:29', '2018-11-06 14:54:29', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/juice.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2018-11-06 14:54:31', '2018-11-06 14:54:31', '', 'police', '', 'inherit', 'open', 'closed', '', 'police', '', '', '2018-11-06 14:54:31', '2018-11-06 14:54:31', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/police.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-11-06 14:54:33', '2018-11-06 14:54:33', '', 'team', '', 'inherit', 'open', 'closed', '', 'team', '', '', '2018-11-06 14:54:33', '2018-11-06 14:54:33', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/team.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-11-06 14:56:32', '2018-11-06 14:56:32', '', 'auxilary', '', 'inherit', 'open', 'closed', '', 'auxilary', '', '', '2018-11-06 14:56:32', '2018-11-06 14:56:32', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/auxilary.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-11-06 14:56:35', '2018-11-06 14:56:35', '', 'bishop', '', 'inherit', 'open', 'closed', '', 'bishop', '', '', '2018-11-06 14:56:35', '2018-11-06 14:56:35', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/bishop.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-11-06 14:56:37', '2018-11-06 14:56:37', '', 'fallen', '', 'inherit', 'open', 'closed', '', 'fallen', '', '', '2018-11-06 14:56:37', '2018-11-06 14:56:37', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/fallen.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-11-06 14:56:40', '2018-11-06 14:56:40', '', 'heat', '', 'inherit', 'open', 'closed', '', 'heat', '', '', '2018-11-06 14:56:40', '2018-11-06 14:56:40', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/heat.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2018-11-06 14:56:42', '2018-11-06 14:56:42', '', 'mad', '', 'inherit', 'open', 'closed', '', 'mad', '', '', '2018-11-06 14:56:42', '2018-11-06 14:56:42', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/mad.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2018-11-06 14:56:45', '2018-11-06 14:56:45', '', 'van', '', 'inherit', 'open', 'closed', '', 'van', '', '', '2018-11-06 14:56:45', '2018-11-06 14:56:45', '', 139, 'http://localhost/garmentspvc/wp-content/uploads/2018/11/van.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2018-11-06 14:57:02', '2018-11-06 14:57:02', 'An important part of every embroidered patch and woven patch order is the edge selection. Finished edges keep patches from unraveling and becoming unsightly. A Merrowed Edge is essentially a sewn border. It is created using an overlock stitch, which yields a uniform edge and prevents fraying. A Hot Cut Edge is die cut. Heated scissors help create this type of edge. Every patch must have an edge in order to stay intact. Hot Cut Edges are used for more extreme shapes, while Merrow Edges create a rounded appearance.\r\n\r\nIf you need assistance choosing between a Merrowed Edge and a Hot Cut Edge, contact a Patch Depot representative right away!\r\n<h4>Merrow Borders</h4>\r\n<img class=\"alignnone size-full wp-image-140\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/booth.jpg\" alt=\"\" width=\"270\" height=\"262\" /> <img class=\"alignnone size-full wp-image-141\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/cape.jpg\" alt=\"\" width=\"269\" height=\"270\" /> <img class=\"alignnone size-full wp-image-142\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/chicago.jpg\" alt=\"\" width=\"265\" height=\"270\" /> <img class=\"alignnone size-full wp-image-143\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/juice.jpg\" alt=\"\" width=\"255\" height=\"270\" /> <img class=\"alignnone size-full wp-image-144\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/police.jpg\" alt=\"\" width=\"257\" height=\"270\" /> <img class=\"alignnone size-full wp-image-145\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/team.jpg\" alt=\"\" width=\"267\" height=\"270\" />\r\n<h4>Hot Cut Borders</h4>\r\n<img class=\"alignnone size-full wp-image-146\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/auxilary.jpg\" alt=\"\" width=\"265\" height=\"270\" /> <img class=\"alignnone size-full wp-image-147\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/bishop.jpg\" alt=\"\" width=\"176\" height=\"270\" /> <img class=\"alignnone size-full wp-image-148\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/fallen.jpg\" alt=\"\" width=\"270\" height=\"199\" /> <img class=\"alignnone size-full wp-image-149\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/heat.jpg\" alt=\"\" width=\"270\" height=\"240\" /> <img class=\"alignnone size-full wp-image-150\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/mad.jpg\" alt=\"\" width=\"270\" height=\"247\" /> <img class=\"alignnone size-full wp-image-151\" src=\"http://localhost/garmentspvc/wp-content/uploads/2018/11/van.jpg\" alt=\"\" width=\"270\" height=\"136\" />', 'edges', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-11-06 14:57:02', '2018-11-06 14:57:02', '', 139, 'http://localhost/garmentspvc/uncategorized/139-revision-v1.html/', 0, 'revision', '', 0),
(153, 1, '2018-12-15 13:53:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-15 13:53:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/garmentspvc/?p=153', 0, 'post', '', 0),
(154, 1, '2018-12-15 13:59:23', '2018-12-15 13:59:23', '[bet_slips]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-12-15 13:59:23', '2018-12-15 13:59:23', '', 83, 'http://localhost/garmentspvc/uncategorized/83-revision-v1.html/', 0, 'revision', '', 0),
(155, 1, '2018-12-15 14:00:12', '2018-12-15 14:00:12', '[soccer_payments]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-12-15 14:00:12', '2018-12-15 14:00:12', '', 83, 'http://localhost/garmentspvc/uncategorized/83-revision-v1.html/', 0, 'revision', '', 0),
(156, 1, '2018-12-15 16:02:38', '2018-12-15 16:02:38', '[soccer_payments]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '83-autosave-v1', '', '', '2018-12-15 16:02:38', '2018-12-15 16:02:38', '', 83, 'http://localhost/garmentspvc/uncategorized/83-autosave-v1.html/', 0, 'revision', '', 0),
(157, 1, '2018-12-16 12:21:02', '2018-12-16 12:21:02', '', 'Bravest', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2018-12-16 12:21:02', '2018-12-16 12:21:02', '', 127, 'http://localhost/garmentspvc/uncategorized/127-revision-v1.html/', 0, 'revision', '', 0),
(158, 1, '2018-12-16 12:51:11', '2018-12-16 12:51:11', '', '100_ Embroidery', '', 'inherit', 'open', 'closed', '', '100_-embroidery', '', '', '2018-12-16 12:51:11', '2018-12-16 12:51:11', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/12/100_-Embroidery.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2018-12-16 14:16:12', '2018-12-16 14:16:12', '', '50_ Embroidery', '', 'inherit', 'open', 'closed', '', '50_-embroidery', '', '', '2018-12-16 14:16:12', '2018-12-16 14:16:12', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/12/50_-Embroidery.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2018-12-16 14:17:17', '2018-12-16 14:17:17', '', '75_ Embroidery', '', 'inherit', 'open', 'closed', '', '75_-embroidery', '', '', '2018-12-16 14:17:17', '2018-12-16 14:17:17', '', 0, 'http://localhost/garmentspvc/wp-content/uploads/2018/12/75_-Embroidery.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(6, 'simple', 'simple', 0),
(7, 'grouped', 'grouped', 0),
(8, 'variable', 'variable', 0),
(9, 'external', 'external', 0),
(10, 'exclude-from-search', 'exclude-from-search', 0),
(11, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(12, 'featured', 'featured', 0),
(13, 'outofstock', 'outofstock', 0),
(14, 'rated-1', 'rated-1', 0),
(15, 'rated-2', 'rated-2', 0),
(16, 'rated-3', 'rated-3', 0),
(17, 'rated-4', 'rated-4', 0),
(18, 'rated-5', 'rated-5', 0),
(19, 'Uncategorized', 'uncategorized', 0),
(20, '100embroidery', '100embroidery', 0),
(21, '75embroidery', '75embroidery', 0),
(22, '50embroidery', '50embroidery', 0),
(23, 'Woven', 'woven', 0),
(24, 'PVC', 'pvc', 0),
(25, 'Patches', 'patches', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(22, 1, 0),
(40, 1, 0),
(43, 1, 0),
(44, 1, 0),
(46, 1, 0),
(50, 1, 0),
(56, 1, 0),
(58, 1, 0),
(110, 20, 0),
(113, 20, 0),
(116, 20, 0),
(120, 20, 0),
(123, 20, 0),
(127, 22, 0),
(129, 21, 0),
(132, 21, 0),
(135, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_cat', '', 0, 0),
(20, 20, 'category', '', 25, 5),
(21, 21, 'category', '', 25, 3),
(22, 22, 'category', '', 25, 1),
(23, 23, 'category', '', 25, 0),
(24, 24, 'category', '', 25, 0),
(25, 25, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '153'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&imgsize=full'),
(19, 1, 'wp_user-settings-time', '1535985822'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(22, 1, 'wc_last_active', '1536969600'),
(23, 1, 'jetpack_tracks_anon_id', 'jetpack:ObW3wRaB7e41p7Qf9taQaKaq'),
(24, 1, 'session_tokens', 'a:2:{s:64:\"862fc6a2bf35efed42098de29b0425740e3cc75d21810b3c6b6469861e193e63\";a:4:{s:10:\"expiration\";i:1545054832;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0\";s:5:\"login\";i:1544882032;}s:64:\"ffa3eabbbca84e78196dd9db75c817bf9175b515452c8b35d2cc8fe7d2e98491\";a:4:{s:10:\"expiration\";i:1545134234;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1544961434;}}'),
(25, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2UJNDf8q6cpQYLhX2xIonoSiopdur/', 'admin', 'm.bilal294@outlook.com', '', '2018-08-24 04:45:15', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(4, '1', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:712:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:1:\"*\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"*\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"m.bilal294@outlook.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"mailchimp_landing_site\";s:64:\"http://localhost/garmentspvc/garmentspvc/wp-admin/admin-ajax.php\";}', 1537173706),
(1, '38383101af733af0728eadddf88cefd6', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1537173453);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_depot_size`
--
ALTER TABLE `order_depot_size`
  ADD PRIMARY KEY (`order_depot_size_ID`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_depot_size`
--
ALTER TABLE `order_depot_size`
  MODIFY `order_depot_size_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
