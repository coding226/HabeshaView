-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2020 at 10:59 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hahu_hv`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci,
  `place_of_birth` mediumtext COLLATE utf8mb4_unicode_ci,
  `DOB` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `ad_type` varchar(100) NOT NULL,
  `ad_image` varchar(100) NOT NULL,
  `ad_video` varchar(100) NOT NULL,
  `ad_url` varchar(100) DEFAULT NULL,
  `ad_location` varchar(100) NOT NULL,
  `ad_target` varchar(100) DEFAULT NULL,
  `ad_hold` int(50) DEFAULT NULL,
  `time` varchar(100) NOT NULL,
  `endtime` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adsenses`
--

CREATE TABLE `adsenses` (
  `id` int(11) NOT NULL,
  `code` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ishome` tinyint(1) NOT NULL,
  `isviewall` tinyint(1) NOT NULL,
  `issearch` tinyint(1) NOT NULL,
  `iswishlist` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adsenses`
--

INSERT INTO `adsenses` (`id`, `code`, `status`, `ishome`, `isviewall`, `issearch`, `iswishlist`, `created_at`, `updated_at`) VALUES
(1, '<script type=\"text/javascript\">\r\n    google_ad_client = \"ca-pub-51*****673\";  \r\n    google_ad_slot = \"59*****49\"; \r\n    google_ad_width = 728;\r\n    google_ad_height =  90; \r\n \r\n    </script>', 0, 0, 0, 0, 0, '2019-09-09 12:43:44', '2019-12-28 06:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `audio_languages`
--

CREATE TABLE `audio_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audio_languages`
--

INSERT INTO `audio_languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"English\"}', '2020-02-14 19:17:07', '2020-02-14 19:17:07'),
(2, '{\"en\":\"Amharic\"}', '2020-02-14 20:18:27', '2020-02-14 20:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `auth_customizes`
--

CREATE TABLE `auth_customizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_customizes`
--

INSERT INTO `auth_customizes` (`id`, `image`, `detail`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"auth_page1582160654Untitled-1.png\"}', '{\"en\":\"<h1>Live TV,<br \\/>\\r\\nMovies &amp; More<\\/h1>\"}', '2018-04-21 18:30:00', '2020-02-20 12:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(13) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(255) NOT NULL,
  `detail` varchar(5000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buttons`
--

CREATE TABLE `buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `rightclick` tinyint(1) NOT NULL DEFAULT '1',
  `inspect` tinyint(1) DEFAULT NULL,
  `goto` tinyint(1) NOT NULL DEFAULT '1',
  `color` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buttons`
--

INSERT INTO `buttons` (`id`, `rightclick`, `inspect`, `goto`, `color`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 0, '2018-07-31 06:00:00', '2020-02-21 22:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(13) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(191) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_email` tinyint(1) NOT NULL,
  `download` int(11) DEFAULT '0',
  `free_sub` int(11) NOT NULL DEFAULT '0',
  `free_days` int(11) DEFAULT NULL,
  `stripe_pub_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_mar_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_add` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prime_main_slider` tinyint(1) NOT NULL DEFAULT '1',
  `catlog` tinyint(1) NOT NULL,
  `withlogin` tinyint(1) NOT NULL,
  `prime_genre_slider` tinyint(1) NOT NULL DEFAULT '1',
  `donation` tinyint(1) DEFAULT NULL,
  `donation_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prime_footer` tinyint(1) NOT NULL DEFAULT '1',
  `prime_movie_single` tinyint(1) NOT NULL DEFAULT '1',
  `terms_condition` text COLLATE utf8mb4_unicode_ci,
  `privacy_pol` text COLLATE utf8mb4_unicode_ci,
  `refund_pol` text COLLATE utf8mb4_unicode_ci,
  `copyright` text COLLATE utf8mb4_unicode_ci,
  `stripe_payment` tinyint(1) NOT NULL DEFAULT '1',
  `paypal_payment` tinyint(1) NOT NULL DEFAULT '1',
  `age_restriction` tinyint(1) DEFAULT '0',
  `payu_payment` tinyint(1) NOT NULL DEFAULT '1',
  `bankdetails` tinyint(1) NOT NULL,
  `account_no` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(111) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_payment` int(11) UNSIGNED DEFAULT '0',
  `paytm_test` tinyint(11) DEFAULT NULL,
  `preloader` tinyint(1) NOT NULL DEFAULT '1',
  `fb_login` tinyint(1) NOT NULL,
  `gitlab_login` tinyint(1) NOT NULL,
  `google_login` tinyint(1) NOT NULL,
  `wel_eml` tinyint(1) DEFAULT NULL,
  `blog` tinyint(1) NOT NULL DEFAULT '0',
  `is_playstore` tinyint(1) NOT NULL DEFAULT '0',
  `is_appstore` tinyint(1) NOT NULL DEFAULT '0',
  `playstore` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appstore` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_dark` tinyint(1) DEFAULT NULL,
  `user_rating` tinyint(1) NOT NULL DEFAULT '0',
  `comments` tinyint(1) NOT NULL DEFAULT '0',
  `braintree` tinyint(1) NOT NULL DEFAULT '0',
  `paystack` tinyint(1) NOT NULL DEFAULT '0',
  `remove_landing_page` tinyint(1) NOT NULL DEFAULT '0',
  `coinpay` tinyint(1) NOT NULL DEFAULT '0',
  `aws` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `logo`, `favicon`, `title`, `w_email`, `verify_email`, `download`, `free_sub`, `free_days`, `stripe_pub_key`, `stripe_secret_key`, `paypal_mar_email`, `currency_code`, `currency_symbol`, `invoice_add`, `prime_main_slider`, `catlog`, `withlogin`, `prime_genre_slider`, `donation`, `donation_link`, `prime_footer`, `prime_movie_single`, `terms_condition`, `privacy_pol`, `refund_pol`, `copyright`, `stripe_payment`, `paypal_payment`, `age_restriction`, `payu_payment`, `bankdetails`, `account_no`, `branch`, `account_name`, `ifsc_code`, `bank_name`, `paytm_payment`, `paytm_test`, `preloader`, `fb_login`, `gitlab_login`, `google_login`, `wel_eml`, `blog`, `is_playstore`, `is_appstore`, `playstore`, `appstore`, `color`, `color_dark`, `user_rating`, `comments`, `braintree`, `paystack`, `remove_landing_page`, `coinpay`, `aws`, `created_at`, `updated_at`) VALUES
(1, 'logo_1581684596logo-white.png', 'favicon.png', '{\"en\":\"habeshaview\",\"Spanish\":\"Nexthour\",\"spanish\":\"Nexthour\",\"FR\":\"Nexthour\",\"EN\":\"Nexthour\",\"English\":\"habeshaview\"}', 'bujutena@gmail.com', 0, 0, 0, 40, '', '', '', 'USD', 'fa fa-dollar', '{\"en\":null,\"Spanish\":null,\"spanish\":null,\"FR\":null,\"EN\":null,\"English\":null}', 0, 0, 1, 1, 0, NULL, 0, 1, '{\"en\":\"<p>new goodes<\\/p>\",\"nl\":\"<p>newvious&nbsp;goodesioanos<\\/p>\"}', NULL, NULL, '{\"en\":\"habeshaview | All Rights Reserved.\"}', 0, 1, 0, 0, 0, '9r9348439', NULL, 'jdhfjd', 'ksdjkdjf093', 'hjdfhjd', 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 'https://play.google.com/store/apps/details?id=habeshaview.tv', 'https://apps.apple.com/us/app/habesha-view/id1332348818', 'default', 0, 0, 0, 1, 0, 1, 0, 0, NULL, '2020-02-26 10:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_off` double(8,2) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_off` double(8,2) DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'once',
  `max_redemptions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redeem_by` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cps_cpp`
--

CREATE TABLE `cps_cpp` (
  `userid` int(255) NOT NULL,
  `expire` int(255) NOT NULL,
  `info` text NOT NULL,
  `plan` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_callback_addresses`
--

CREATE TABLE `cp_cp_callback_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pubkey` text COLLATE utf8mb4_unicode_ci,
  `ipn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_conversions`
--

CREATE TABLE `cp_cp_conversions` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_deposits`
--

CREATE TABLE `cp_cp_deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirms` tinyint(3) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amounti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feei` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_ipns`
--

CREATE TABLE `cp_cp_ipns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ipn_version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipn_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipn_mode` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipn_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `status_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirms` tinyint(3) UNSIGNED DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amounti` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feei` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` text COLLATE utf8mb4_unicode_ci,
  `send_tx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_confirms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_log`
--

CREATE TABLE `cp_cp_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_mass_withdrawals`
--

CREATE TABLE `cp_cp_mass_withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_transactions`
--

CREATE TABLE `cp_cp_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency1` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency2` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` text COLLATE utf8mb4_unicode_ci,
  `ipn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirms_needed` tinyint(3) UNSIGNED NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL,
  `status_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `status_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_confirms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_transfers`
--

CREATE TABLE `cp_cp_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pbntag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `ref_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_withdrawals`
--

CREATE TABLE `cp_cp_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mass_withdrawal_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amounti` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pbntag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `ref_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `status_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `txn_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci,
  `place_of_birth` mediumtext COLLATE utf8mb4_unicode_ci,
  `DOB` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donater_lists`
--

CREATE TABLE `donater_lists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `method` varchar(191) DEFAULT NULL,
  `donor_msg` longtext,
  `amount` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `seasons_id` int(10) UNSIGNED NOT NULL,
  `tmdb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `episode_no` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `a_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` tinyint(1) DEFAULT NULL,
  `subtitle_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_files` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `released` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'E',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_translations`
--

CREATE TABLE `footer_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_translations`
--

INSERT INTO `footer_translations` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'terms and condition', '{\"en\":\"Terms and condition\",\"nl\":\"Terms and condition2\",\"de\":\"Gesch\\u00e4ftsbedingung\"}', NULL, '2018-04-24 03:31:15'),
(2, 'privacy policy', '{\"en\":\"Privacy policy\",\"nl\":\"Privacy policy2\",\"de\":\"Datenschutz-Bestimmungen\"}', NULL, '2018-04-24 03:31:15'),
(3, 'refund policy', '{\"en\":\"Refund policy\",\"nl\":\"Refund policy2\",\"de\":\"R\\u00fcckgaberecht\"}', NULL, '2018-04-24 03:31:15'),
(4, 'help', '{\"en\":\"Help\",\"nl\":\"Help2\",\"de\":\"Hilfe\"}', NULL, '2018-04-24 03:31:15'),
(5, 'corporate', '{\"en\":\"Corporate\",\"nl\":\"Corporate2\",\"de\":\"Unternehmen\"}', NULL, '2018-04-24 03:31:15'),
(6, 'sitemap', '{\"en\":\"Sitemap\",\"nl\":\"Sitemap2\",\"de\":\"Seitenverzeichnis\"}', NULL, '2018-04-24 03:31:15'),
(7, 'subscribe', '{\"en\":\"Subscribe\",\"nl\":\"Subscribe2\",\"de\":\"Abonnieren\"}', NULL, '2018-04-24 03:31:15'),
(8, 'subscribe text', '{\"en\":\"Subscribe to our newsletters to keep yourself up-to-date with our news, announcement and events\",\"nl\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.2\",\"de\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.\"}', NULL, '2020-02-14 20:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `front_slider_updates`
--

CREATE TABLE `front_slider_updates` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_show` int(11) UNSIGNED DEFAULT NULL,
  `orderby` int(11) DEFAULT '1',
  `sliderview` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `front_slider_updates`
--

INSERT INTO `front_slider_updates` (`id`, `item_show`, `orderby`, `sliderview`) VALUES
(1, 6, 1, 1),
(2, 6, 1, 1),
(3, 3, 1, 1),
(4, 12, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 2, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Live TV Channels\"}', '2020-02-14 19:15:47', '2020-02-14 19:15:47'),
(2, '{\"en\":\"Movies\"}', '2020-02-14 19:30:29', '2020-02-14 19:30:29'),
(3, '{\"en\":\"Entertainment Channels\"}', '2020-02-14 19:30:38', '2020-02-14 19:30:38'),
(4, '{\"en\":\"Documentaries\"}', '2020-02-14 19:30:43', '2020-02-14 19:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `header_translations`
--

CREATE TABLE `header_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_translations`
--

INSERT INTO `header_translations` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'dashboard', '{\"en\":\"Dashboard\",\"nl\":\"Dashboard\",\"de\":\"Instrumententafel\"}', NULL, '2019-02-11 09:31:22'),
(5, 'faqs', '{\"en\":\"Faq\'s\",\"nl\":\"Faq\'s\",\"de\":\"Faq\'s\"}', NULL, '2018-04-24 03:30:15'),
(6, 'sign in', '{\"en\":\"Sign In\",\"nl\":\"Sign In\",\"de\":\"Anmelden\"}', NULL, '2018-04-24 03:30:15'),
(7, 'sign out', '{\"en\":\"Sign Out\",\"nl\":\"Sign Out\",\"de\":\"Ausloggen\"}', NULL, '2018-04-24 03:30:15'),
(8, 'watchlist', '{\"en\":\"Watchlist\",\"nl\":\"Watchlist\",\"de\":\"Beobachtungsliste\"}', NULL, '2018-04-24 03:30:15'),
(9, 'register', '{\"en\":\"Register\",\"nl\":\"Register\",\"de\":\"Registrieren\"}', NULL, '2018-04-24 03:30:15'),
(10, 'donation', '{\"en\":\"Donation\"}', NULL, '2019-10-02 03:43:51'),
(11, 'Free Trial', '{\"en\":\"Free Trial\"}', NULL, '2019-10-22 02:05:02'),
(12, 'Free Trial Text', '{\"en\":\"Your Free Member Ship has Started\"}', NULL, '2019-10-22 05:08:44'),
(13, 'watch history', '{\"en\":\"Watch History\"}', NULL, '2019-11-11 02:36:51'),
(14, 'average rating', '{\"en\":\"Avg Rating\"}', NULL, '2019-11-11 04:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED DEFAULT NULL,
  `tv_series_id` int(10) UNSIGNED DEFAULT NULL,
  `slide_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `movie_id`, `tv_series_id`, `slide_image`, `active`, `position`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'slide_1581690029slider-2.jpg', 1, 1, '2020-02-14 19:50:29', '2020-02-14 19:50:29'),
(2, NULL, 1, 'slide_1581690044slider-3.jpg', 1, 2, '2020-02-14 19:50:44', '2020-02-14 19:50:44'),
(3, 1, NULL, 'slide_1581690057slider-1.jpg', 1, 3, '2020-02-14 19:50:57', '2020-02-14 19:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `home_translations`
--

CREATE TABLE `home_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_translations`
--

INSERT INTO `home_translations` (`id`, `key`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'watch next tv series and movies', '{\"en\":\"Watch TV And Movies\",\"nl\":\"Watch Nexot TV Seriesee And Moviessk\",\"de\":\"Schaue n\\u00e4chste TV-Serie und Filme\"}', 0, NULL, '2020-02-14 19:55:53'),
(2, 'watch next movies', '{\"en\":\"Watch Movies\",\"nl\":\"Watch Next Movies5\",\"de\":\"Sieh dir die n\\u00e4chsten Filme an\"}', 0, NULL, '2020-02-14 19:55:53'),
(3, 'watch next tv series', '{\"en\":\"Watch TV Series\",\"nl\":\"Watch Next TV Series5\",\"de\":\"Sehen Sie sich die n\\u00e4chste TV-Serie an\"}', 0, NULL, '2020-02-14 19:55:53'),
(4, 'view all', '{\"en\":\"View all\",\"nl\":\"View all5\",\"de\":\"Alle ansehen\"}', 1, NULL, '2019-02-10 11:10:32'),
(5, 'featured', '{\"en\":\"Featured\",\"nl\":\"featured5\",\"de\":\"gekennzeichnet\"}', 0, NULL, '2020-02-14 19:54:52'),
(7, 'movies in', '{\"en\":\"Movies  in\",\"nl\":\"movies  in5\",\"de\":\"Filme in\"}', 0, NULL, '2020-02-14 19:18:13'),
(8, 'tv shows in', '{\"en\":\"Tv Shows in\",\"nl\":\"tv shows in5\",\"de\":\"Fernsehshows in\"}', 0, NULL, '2020-02-14 19:18:21'),
(9, 'at the big screen at home', '{\"en\":\"at the big screen at home\",\"nl\":\"at the big screen at home5\",\"de\":\"auf dem gro\\u00dfen Bildschirm zu Hause\"}', 1, NULL, '2018-04-24 03:36:54'),
(10, 'recently added', '{\"en\":\"Recently Added\",\"nl\":\"Recently Added5\",\"de\":\"K\\u00fcrzlich hinzugef\\u00fcgt\"}', 1, NULL, '2018-04-24 03:36:54'),
(11, 'found for', '{\"en\":\"Found for\",\"nl\":\"found for5\",\"de\":\"gefunden f\\u00fcr\"}', 1, NULL, '2018-04-24 03:39:13'),
(12, 'directors', '{\"en\":\"Directors\",\"nl\":\"Directors5\",\"de\":\"Direktoren\"}', 1, NULL, '2018-04-24 03:36:54'),
(13, 'starring', '{\"en\":\"Starring\",\"nl\":\"Starring5\",\"de\":\"Mit\"}', 1, NULL, '2018-04-24 03:36:54'),
(14, 'genres', '{\"en\":\"Genres\",\"nl\":\"Genres5\",\"de\":\"Genres\"}', 1, NULL, '2018-04-24 03:36:54'),
(15, 'audio languages', '{\"en\":\"Audio Languages\",\"nl\":\"Audio Languages5\",\"de\":\"Audio-Sprachen\"}', 1, NULL, '2018-04-24 03:36:54'),
(16, 'customers also watched', '{\"en\":\"Customers also watched\",\"nl\":\"Customers also watched5\",\"de\":\"Kunden haben auch zugeschaut\"}', 1, NULL, '2018-04-24 03:36:54'),
(17, 'episodes', '{\"en\":\"Episodes\",\"nl\":\"Episodes5\",\"de\":\"Episoden\"}', 1, NULL, '2018-04-24 03:36:54'),
(18, 'series', '{\"en\":\"Series\",\"nl\":\"Series5\",\"de\":\"Serie\"}', 1, NULL, '2018-04-24 03:36:54'),
(19, 'frequently asked questions', '{\"en\":\"Frequently Asked Questions\",\"nl\":\"Frequently Asked Questions5\",\"de\":\"H\\u00e4ufig gestellte Fragen\"}', 1, NULL, '2018-04-24 03:36:54'),
(20, 'movies', '{\"en\":\":\",\"nl\":\"Movies5\",\"de\":\"Filme\"}', 1, NULL, '2020-02-14 19:55:53'),
(21, 'tv shows', '{\"en\":\"Tv Shows\",\"nl\":\"Tv Shows5\",\"de\":\"Fernsehshows\"}', 0, NULL, '2020-02-14 19:18:30'),
(22, 'Actor DOB', '{\"en\":\"Date Of Birth\"}', 1, NULL, '2019-11-02 05:38:41'),
(23, 'Actor Place Of Birth', '{\"en\":\"Place Of Birth\"}', 1, NULL, '2019-11-02 05:38:41'),
(24, 'TMDB Rating', '{\"en\":\"Rating\"}', 1, NULL, '2019-11-25 04:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `button` tinyint(1) NOT NULL DEFAULT '1',
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `image`, `heading`, `detail`, `button`, `button_text`, `button_link`, `left`, `position`, `created_at`, `updated_at`) VALUES
(6, 'landing_page_1582160503default-poster.jpg', '{\"en\":\"Live TV, Movies & More\"}', '{\"en\":\"Ethiopian & International Live TV Plus Movies Anytime, Anywhere\"}', 1, '{\"en\":null}', 'login', 1, 1, '2020-02-20 12:28:52', '2020-02-20 12:31:43'),
(7, 'landing_page_1582160399default-poster.jpg', '{\"en\":\"TV on your favorite devices\"}', '{\"en\":\"There\'s no contract, so you can dip in and out at anytime.\"}', 1, '{\"en\":\"test\"}', 'login', 1, 2, '2020-02-20 12:29:59', '2020-02-20 12:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `local` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `def` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `local`, `name`, `def`, `created_at`, `updated_at`) VALUES
(1, 'English', 'English', 1, '2020-02-20 14:57:19', '2020-02-20 14:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(13) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `added` varchar(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `position`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Home\"}', 'home', 1, '2020-02-14 18:22:02', '2020-02-14 18:22:02'),
(2, '{\"en\":\"Live TV\"}', 'live-tv', 2, '2020-02-14 18:22:07', '2020-02-14 18:22:07'),
(3, '{\"en\":\"Movies\"}', 'movies', 3, '2020-02-14 18:22:11', '2020-02-14 18:22:11'),
(4, '{\"en\":\"TV Shows\"}', 'tv-shows', 4, '2020-02-14 18:22:16', '2020-02-14 18:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `menu_videos`
--

CREATE TABLE `menu_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED DEFAULT NULL,
  `tv_series_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_videos`
--

INSERT INTO `menu_videos` (`id`, `menu_id`, `movie_id`, `tv_series_id`, `created_at`, `updated_at`) VALUES
(23, 1, 5, NULL, '2020-02-14 20:34:12', '2020-02-14 20:34:12'),
(24, 2, 5, NULL, '2020-02-14 20:34:12', '2020-02-14 20:34:12'),
(27, 1, 6, NULL, '2020-02-14 20:36:26', '2020-02-14 20:36:26'),
(28, 2, 6, NULL, '2020-02-14 20:36:26', '2020-02-14 20:36:26'),
(29, 1, 7, NULL, '2020-02-14 20:38:45', '2020-02-14 20:38:45'),
(30, 2, 7, NULL, '2020-02-14 20:38:45', '2020-02-14 20:38:45'),
(31, 1, 8, NULL, '2020-02-14 20:40:01', '2020-02-14 20:40:01'),
(32, 2, 8, NULL, '2020-02-14 20:40:01', '2020-02-14 20:40:01'),
(33, 1, 9, NULL, '2020-02-14 20:45:58', '2020-02-14 20:45:58'),
(34, 2, 9, NULL, '2020-02-14 20:45:58', '2020-02-14 20:45:58'),
(35, 1, 10, NULL, '2020-02-14 20:50:09', '2020-02-14 20:50:09'),
(36, 2, 10, NULL, '2020-02-14 20:50:09', '2020-02-14 20:50:09'),
(37, 1, 11, NULL, '2020-02-14 20:51:20', '2020-02-14 20:51:20'),
(38, 2, 11, NULL, '2020-02-14 20:51:20', '2020-02-14 20:51:20'),
(49, 1, 4, NULL, '2020-02-14 21:06:41', '2020-02-14 21:06:41'),
(50, 3, 4, NULL, '2020-02-14 21:06:41', '2020-02-14 21:06:41'),
(51, 1, 14, NULL, '2020-02-14 21:10:17', '2020-02-14 21:10:17'),
(52, 2, 14, NULL, '2020-02-14 21:10:17', '2020-02-14 21:10:17'),
(53, 1, 15, NULL, '2020-02-14 21:12:41', '2020-02-14 21:12:41'),
(54, 2, 15, NULL, '2020-02-14 21:12:41', '2020-02-14 21:12:41'),
(55, 1, 1, NULL, '2020-02-17 05:37:51', '2020-02-17 05:37:51'),
(56, 2, 1, NULL, '2020-02-17 05:37:51', '2020-02-17 05:37:51'),
(57, 1, 16, NULL, '2020-02-17 05:38:51', '2020-02-17 05:38:51'),
(58, 2, 16, NULL, '2020-02-17 05:38:51', '2020-02-17 05:38:51'),
(65, 1, 17, NULL, '2020-02-20 16:51:41', '2020-02-20 16:51:41'),
(66, 3, 17, NULL, '2020-02-20 16:51:41', '2020-02-20 16:51:41'),
(67, 1, 18, NULL, '2020-02-20 16:52:37', '2020-02-20 16:52:37'),
(68, 3, 18, NULL, '2020-02-20 16:52:37', '2020-02-20 16:52:37'),
(69, 1, 19, NULL, '2020-02-20 16:55:16', '2020-02-20 16:55:16'),
(70, 2, 19, NULL, '2020-02-20 16:55:16', '2020-02-20 16:55:16'),
(71, 1, 20, NULL, '2020-02-20 16:56:17', '2020-02-20 16:56:17'),
(72, 2, 20, NULL, '2020-02-20 16:56:17', '2020-02-20 16:56:17'),
(75, 1, 21, NULL, '2020-02-20 18:13:48', '2020-02-20 18:13:48'),
(76, 3, 21, NULL, '2020-02-20 18:13:48', '2020-02-20 18:13:48'),
(77, 1, 22, NULL, '2020-02-20 18:15:56', '2020-02-20 18:15:56'),
(78, 3, 22, NULL, '2020-02-20 18:15:56', '2020-02-20 18:15:56'),
(83, 1, 2, NULL, '2020-02-20 18:19:02', '2020-02-20 18:19:02'),
(84, 2, 2, NULL, '2020-02-20 18:19:02', '2020-02-20 18:19:02'),
(85, 1, 12, NULL, '2020-02-20 18:19:36', '2020-02-20 18:19:36'),
(86, 2, 12, NULL, '2020-02-20 18:19:36', '2020-02-20 18:19:36'),
(87, 1, 13, NULL, '2020-03-02 18:39:39', '2020-03-02 18:39:39'),
(88, 2, 13, NULL, '2020-03-02 18:39:39', '2020-03-02 18:39:39'),
(91, 1, 3, NULL, '2020-03-04 00:24:29', '2020-03-04 00:24:29'),
(92, 3, 3, NULL, '2020-03-04 00:24:29', '2020-03-04 00:24:29'),
(95, 1, 23, NULL, '2020-03-04 01:25:35', '2020-03-04 01:25:35'),
(96, 2, 23, NULL, '2020-03-04 01:25:35', '2020-03-04 01:25:35'),
(97, 3, 23, NULL, '2020-03-04 01:25:35', '2020-03-04 01:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_03_07_311070_create_tracker_paths_table', 1),
(4, '2015_03_07_311071_create_tracker_queries_table', 1),
(5, '2015_03_07_311072_create_tracker_queries_arguments_table', 1),
(6, '2015_03_07_311073_create_tracker_routes_table', 1),
(7, '2015_03_07_311074_create_tracker_routes_paths_table', 1),
(8, '2015_03_07_311075_create_tracker_route_path_parameters_table', 1),
(9, '2015_03_07_311076_create_tracker_agents_table', 1),
(10, '2015_03_07_311077_create_tracker_cookies_table', 1),
(11, '2015_03_07_311078_create_tracker_devices_table', 1),
(12, '2015_03_07_311079_create_tracker_domains_table', 1),
(13, '2015_03_07_311080_create_tracker_referers_table', 1),
(14, '2015_03_07_311081_create_tracker_geoip_table', 1),
(15, '2015_03_07_311082_create_tracker_sessions_table', 1),
(16, '2015_03_07_311083_create_tracker_errors_table', 1),
(17, '2015_03_07_311084_create_tracker_system_classes_table', 1),
(18, '2015_03_07_311085_create_tracker_log_table', 1),
(19, '2015_03_07_311086_create_tracker_events_table', 1),
(20, '2015_03_07_311087_create_tracker_events_log_table', 1),
(21, '2015_03_07_311088_create_tracker_sql_queries_table', 1),
(22, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 1),
(23, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 1),
(24, '2015_03_07_311091_create_tracker_sql_queries_log_table', 1),
(25, '2015_03_07_311092_create_tracker_connections_table', 1),
(26, '2015_03_07_311093_create_tracker_tables_relations', 1),
(27, '2015_03_13_311094_create_tracker_referer_search_term_table', 1),
(28, '2015_03_13_311095_add_tracker_referer_columns', 1),
(29, '2015_11_23_311096_add_tracker_referer_column_to_log', 1),
(30, '2015_11_23_311097_create_tracker_languages_table', 1),
(31, '2015_11_23_311098_add_language_id_column_to_sessions', 1),
(32, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 1),
(33, '2015_11_23_311100_add_nullable_to_tracker_error', 1),
(34, '2017_01_31_311101_fix_agent_name', 1),
(35, '2017_06_20_311102_add_agent_name_hash', 1),
(36, '2017_11_11_083037_create_movies_table', 1),
(37, '2017_11_12_054912_create_directors_table', 1),
(38, '2017_11_12_055733_create_actors_table', 1),
(39, '2017_11_12_060041_create_genres_table', 1),
(40, '2017_11_12_060748_create_packages_table', 1),
(41, '2017_11_12_061316_create_faqs_table', 1),
(42, '2017_11_12_061432_create_configs_table', 1),
(43, '2018_01_09_083026_add_cashier_table_fields', 1),
(44, '2018_01_09_090132_create_permission_tables', 1),
(45, '2018_01_11_040258_create_coupon_codes_table', 1),
(46, '2018_01_16_110614_create_movie_series_table', 1),
(47, '2018_01_16_153532_create_audio_languages_table', 1),
(48, '2018_01_24_123038_create_tv_series_table', 1),
(49, '2018_02_03_073641_create_wishlists_table', 1),
(50, '2018_03_14_132728_create_home_sliders_table', 1),
(51, '2018_03_14_135038_create_seasons_table', 1),
(52, '2018_03_14_140100_create_episodes_table', 1),
(53, '2018_03_25_132517_create_videolinks_table', 1),
(54, '2018_04_02_140524_create_paypal_subscriptions_table', 1),
(55, '2018_04_12_035533_create_languages_table', 1),
(56, '2018_04_14_053616_create_home_translations_table', 2),
(57, '2018_04_14_172143_create_header_translations_table', 3),
(58, '2018_04_14_172228_create_footer_translations_table', 3),
(59, '2018_04_14_180413_create_popover_translations_table', 4),
(60, '2018_04_16_065808_create_menus_table', 5),
(61, '2018_04_16_070130_create_menu_videos_table', 5),
(62, '2018_04_16_080456_create_menu_videos_table', 6),
(63, '2016_12_03_000000_create_payu_payments_table', 7),
(64, '2018_04_19_163952_create_landing_pages_table', 8),
(65, '2018_04_22_163308_create_manage_packages_table', 9),
(66, '2018_04_22_165105_create_auth_customizes_table', 10),
(67, '2018_07_20_113202_create_subs_table', 11),
(68, '2018_07_20_171234_create_seos_table', 11),
(69, '2018_07_21_053731_create_plans_table', 12),
(70, '2018_07_31_115802_create_buttons_table', 13),
(72, '2019_02_10_115619_create_pricing_texts_table', 14),
(73, '2019_09_14_061904_create_notifications_table', 15),
(74, '2016_06_01_000001_create_oauth_auth_codes_table', 16),
(75, '2016_06_01_000002_create_oauth_access_tokens_table', 16),
(76, '2016_06_01_000003_create_oauth_refresh_tokens_table', 16),
(77, '2016_06_01_000004_create_oauth_clients_table', 16),
(78, '2016_06_01_000005_create_oauth_personal_access_clients_table', 16),
(79, '2019_11_07_141409_create_jobs_table', 17),
(80, '2017_09_15_051156_setup_coinpayment_tables', 18),
(81, '2018_03_24_032432_create_callback_address_table', 18),
(82, '2018_05_07_123123_fix_transactions_table', 18),
(83, '2018_05_08_037214_cp_create_mass_withdrawal', 18),
(84, '2018_07_01_112608_add_column_dest_tag_to_transactions_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmdb_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetch_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) DEFAULT NULL,
  `maturity_rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` tinyint(1) DEFAULT NULL,
  `subtitle_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_files` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` int(11) DEFAULT NULL,
  `released` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_video` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `series` tinyint(1) DEFAULT NULL,
  `a_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_files` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `live` tinyint(1) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `tmdb_id`, `title`, `keyword`, `description`, `duration`, `thumbnail`, `poster`, `tmdb`, `fetch_by`, `director_id`, `actor_id`, `genre_id`, `trailer_url`, `detail`, `rating`, `maturity_rating`, `subtitle`, `subtitle_list`, `subtitle_files`, `publish_year`, `released`, `upload_video`, `featured`, `series`, `a_language`, `audio_files`, `type`, `live`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Russia Today', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581688003rt.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"RT is a Russian international television network funded by the Russian government. It operates pay television channels directed to audiences outside of Russia, as well as providing Internet content in English, Spanish, French, German, Arabic and Russian.\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-14 19:16:43', '2020-02-14 19:35:56'),
(2, NULL, 'TRT World', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581688314trt.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"TRT World is a Turkish state international news channel broadcast 24-hours per day in English. The news channel is based in Istanbul. It provides worldwide news and current affairs with a pronounced emphasis on news relating to Turkey and Western Asia. It provides an exclusively Turkish perspective on global matters.\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-14 19:21:54', '2020-02-20 18:19:02'),
(3, NULL, 'Hiwot Ena Sak (ህይወት እና ሳቅ)', '{\"en\":null,\"English\":null}', '{\"en\":null,\"English\":null}', NULL, 'thumb_1581688781hiwot.jpg', NULL, 'N', NULL, NULL, NULL, '2', NULL, '{\"en\":null,\"English\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2', NULL, 'M', 0, 1, 1, '2020-02-14 19:29:41', '2020-03-04 00:24:09'),
(4, NULL, 'Sinu Kal (ጽኑ ቃል)', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1581694600tinu-kal.jpg', NULL, 'N', NULL, NULL, NULL, '2', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '2', NULL, 'M', 0, 1, 1, '2020-02-14 19:32:10', '2020-02-14 21:06:40'),
(5, NULL, 'France 24 English', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581689411fr24.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"France 24 is a French state-owned international news television network based in Paris. Its channels broadcast in French, English, Arabic, and Spanish and are aimed at the overseas market, similar to BBC World News, DW, RT and VOA.\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-14 19:40:11', '2020-02-14 20:34:12'),
(6, NULL, 'Al Jazeera English', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581692719alj.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"Al Jazeera Media Network is a major global news organization, with 80 bureaus around the world. The original Al Jazeera Arabic channel\'s willingness to broadcast dissenting views, for example on call-in shows, created controversies in the Arab States of the Persian Gulf. The station gained worldwide attention following the outbreak of the war in Afghanistan, when its office there was the only channel to cover the war live.\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-14 19:41:00', '2020-02-14 20:36:25'),
(7, NULL, 'WALTA TV (ዋልታ ቲቪ)', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581692925walta.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"Walta TV is operated by Walta Media and Communication Corporate S.C. and was launched in April 2017.[1] As of 2017, It is one of five channels in Ethiopia to be officially licensed by the Ethiopian Broadcasting Authority.[2] Before the launch of its own channel, Walta mostly provided its locally produced news and documentaries for the national broadcaster EBC TV (formerly ETV).\"}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-14 19:42:20', '2020-02-14 20:38:45'),
(8, NULL, 'Amhara TV (አማራ ቲቪ)', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581693001amahara.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"\\u12e8\\u12a0\\u121b\\u122b  \\u1265\\u12d9\\u1283\\u1295 \\u1218\\u1308\\u1293\\u129b \\u12f5\\u122d\\u1305\\u1275(\\u12a0\\u1265\\u1218\\u12f5) \\u12601993 \\u12d3\\/\\u121d \\u12e8\\u1270\\u124b\\u124b\\u1218 \\u121a\\u12f2\\u12eb \\u1232\\u1206\\u1295 \\u1270\\u1320\\u122a\\u1290\\u1271 \\u1208\\u12ad\\u120d\\u1209 \\u121d\\u12ad\\u122d \\u1264\\u1275 \\u1290\\u12cd\\u1361\\u1361\\u12f5\\u122d\\u1305\\u1271 \\u12e8\\u1270\\u124b\\u124b\\u1218\\u1260\\u1275 \\u12d3\\u120b\\u121b \\u12e8\\u12ad\\u120d\\u1209\\u1295 \\u1263\\u1205\\u120d\\u1363\\u12c8\\u130d \\u1363\\u12a5\\u1234\\u1275 \\u1260\\u121b\\u1320\\u1293\\u12a8\\u122d \\u12a5\\u1293 \\u1201\\u1208\\u1295\\u1270\\u1293\\u12ca \\u1218\\u1240\\u122b\\u1228\\u1265\\u1295 \\u1260\\u1218\\u134d\\u1320\\u122d \\u12e8\\u12ad\\u120d\\u1209\\u1295 \\u1205\\u12dd\\u1266\\u127d \\u12c8\\u12f0 \\u1270\\u123b\\u1208 \\u120d\\u12d5\\u120d\\u1293 \\u121b\\u12f5\\u1228\\u1235 \\u1290\\u12cd\\u1361\\u1361\\u1260\\u1200\\u1308\\u122a\\u1271 \\u1230\\u120b\\u121d\\u1293 \\u12f4\\u121e\\u12ad\\u122b\\u1232 \\u12a5\\u1295\\u12f2\\u1230\\u134d\\u1295 \\u12e8\\u1260\\u12a9\\u1209\\u1295 \\u121a\\u1293 \\u12a5\\u12e8\\u1270\\u12c8\\u1323 \\u12eb\\u1208 \\u121a\\u12f2\\u12eb \\u1290\\u12cd\\u1361\\u1361\"}', 9, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '2', NULL, 'M', 1, 1, 1, '2020-02-14 20:40:01', '2020-02-14 20:40:01'),
(9, NULL, 'Addis TV (አዲስ ቴቪ )', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581693358addis.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"ADDIS TV is the main news channel with 24 hours coverage, with content on culture, politics, documentaries, and economy. Broadcast mostly in Amharic with the exception of some news segments which are broadcast in other languages.\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '2', NULL, 'M', 1, 1, 1, '2020-02-14 20:45:58', '2020-02-14 20:45:58'),
(10, NULL, 'ETV Languages', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581693609etv-l.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"ETV Languages is a channel which focuses on news in the varies languages of Ethiopia along with 3 international languages.  It\'s 100% owned by the Ethiopian government. Its programming includes news, sport, music and other entertainment.\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '1,2', NULL, 'M', 1, 1, 1, '2020-02-14 20:50:09', '2020-02-14 20:50:09'),
(12, NULL, 'ETV Entertainment', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581694323etv-ent.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"ETV Entertainment (ETV \\u1218\\u12dd\\u1293\\u129b) is a channel which focuses on dramas, as well as lifestyle programming. The channel is most known for broadcasting Ethiopian first family sitcom, Betoch. This channel also airs a lot of popular foreign content including soap operas and Hollywood films.\"}', 9, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2', NULL, 'M', 1, 1, 1, '2020-02-14 20:55:26', '2020-02-20 18:19:36'),
(13, NULL, 'ETV News (ETV ዜና)', '{\"en\":null,\"English\":null}', '{\"en\":null,\"English\":null}', '0', 'thumb_1581694011etv-news.jpg', NULL, NULL, NULL, '0', '0', '1', NULL, '{\"en\":\"ETV News (etv \\u12dc\\u1293) is the main news channel with 24 hours coverage, with content on culture, politics, documentaries, and economy. Broadcast mostly in Amharic with the exception of some news segments which are broadcast in other languages. ETV News (etv \\u12dc\\u1293) is the main news channel with 24 hours coverage, with content on culture, politics, documentaries, and economy. Broadcast mostly in Amharic with the exception of some news segments which are broadcast in other languages.\",\"English\":\"ETV News (etv \\u12dc\\u1293) is the main news channel with 24 hours coverage, with content on culture, politics, documentaries, and economy. Broadcast mostly in Amharic with the exception of some news segments which are broadcast in other languages. ETV News (etv \\u12dc\\u1293) is the main news channel with 24 hours coverage, with content on culture, politics, documentaries, and economy. Broadcast mostly in Amharic with the exception of some news segments which are broadcast in other languages.\"}', 9, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 1, 0, '2', NULL, 'M', 1, 1, 1, '2020-02-14 20:56:51', '2020-03-02 18:39:39'),
(14, NULL, 'FilmBox Africa', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581694817filmbox-africa.jpg', NULL, NULL, NULL, '0', '0', '3', NULL, '{\"en\":\"FilmBox Africa is a basic tier film channel dedicated to a wide audience of movie fans. It offers more than 300 premiere titles every year, and features the best directors\\u2019 films, television series and miniseries, as well as high-budget television productions.\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-14 21:10:17', '2020-02-14 21:10:17'),
(15, NULL, 'FunBox', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1581694961filmbox-fast.jpg', NULL, NULL, NULL, '0', '0', '3', NULL, '{\"en\":\"Impressive variety of disciplines: Car Racing, Motocross, Boating, Sailing, Skateboarding, Snowboarding, Skydiving,  Skateboarding, BMX, FMX and more\"}', 8, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-14 21:12:41', '2020-02-14 21:12:41'),
(17, NULL, 'Felashaw', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1582176101felashaw.jpg', NULL, 'N', NULL, NULL, NULL, '2', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '2', NULL, 'M', 0, 1, 1, '2020-02-20 16:51:15', '2020-02-20 16:51:41'),
(18, NULL, 'Hiwot Bederja', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1582176157hiwot-bedereja.jpg', NULL, 'N', NULL, NULL, NULL, '2', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', 0, 1, 1, '2020-02-20 16:52:37', '2020-02-20 16:52:37'),
(19, NULL, 'Filmbox Fight', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1582176316filmbox-figt.jpg', NULL, NULL, NULL, '0', '0', '3', NULL, '{\"en\":\"Impressive variety of disciplines: Car Racing, Motocross, Boating, Sailing, Skateboarding, Snowboarding, Skydiving,  Skateboarding, BMX, FMX and more\"}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-20 16:55:16', '2020-02-20 16:55:16'),
(20, NULL, 'Filmbox Art', '{\"en\":null}', '{\"en\":null}', '0', 'thumb_1582176377filmbox-art.jpg', NULL, NULL, NULL, '0', '0', '3', NULL, '{\"en\":\"Impressive variety of disciplines: Car Racing, Motocross, Boating, Sailing, Skateboarding, Snowboarding, Skydiving,  Skateboarding, BMX, FMX and more\"}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', NULL, 'M', 1, 1, 1, '2020-02-20 16:56:17', '2020-02-20 16:56:17'),
(21, NULL, 'Ethiopian film test', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1582181028sig.jpg', NULL, 'N', NULL, NULL, NULL, '2', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '2', NULL, 'M', 0, 1, 1, '2020-02-20 18:13:48', '2020-02-20 18:13:48'),
(22, NULL, 'Zemen', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1582181156kura.jpg', NULL, 'N', NULL, NULL, NULL, '2', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '2', NULL, 'M', 0, 1, 1, '2020-02-20 18:15:56', '2020-02-20 18:15:56'),
(23, NULL, 'Wall E', '{\"English\":null}', '{\"English\":null}', '142', NULL, NULL, 'N', NULL, NULL, NULL, '2', 'https://youtu.be/3CwQjsdE-1Q', '{\"English\":\"fd\"}', NULL, 'all age', 0, NULL, NULL, NULL, '2020-03-28', NULL, 0, 0, '1', NULL, 'M', 0, 1, 8, '2020-03-04 00:26:16', '2020-03-04 00:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `movie_comments`
--

CREATE TABLE `movie_comments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `tv_series_id` int(11) DEFAULT NULL,
  `comment` longtext,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie_series`
--

CREATE TABLE `movie_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `series_movie_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_subcomments`
--

CREATE TABLE `movie_subcomments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `reply` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `multiplescreens`
--

CREATE TABLE `multiplescreens` (
  `id` int(11) UNSIGNED NOT NULL,
  `screen1` varchar(50) DEFAULT NULL,
  `screen2` varchar(50) DEFAULT NULL,
  `screen3` varchar(50) DEFAULT NULL,
  `screen4` varchar(50) DEFAULT NULL,
  `screen5` varchar(50) DEFAULT NULL,
  `screen6` varchar(50) DEFAULT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `activescreen` varchar(191) DEFAULT NULL,
  `pkg_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for multiple screens for user ';

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `tv_id` int(11) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('0089401daa90d3762f58a89e8293b5daf7ccec3fdaa1b71e0f2609b14677a5234f91d54f4d014087', 7, 2, NULL, '[]', 0, '2019-12-13 05:49:01', '2019-12-13 05:49:01', '2020-12-13 11:19:01'),
('0165da9b4bd9460ccdabf3531e5b2a3943b894bc6b45ad799d90e15779bba78548f35935274460c6', 7, 2, NULL, '[]', 0, '2019-12-16 06:54:58', '2019-12-16 06:54:58', '2020-12-16 12:24:58'),
('020ea46a0c8127e2242afb4b4aec41b59029806bf2e235bbb9b86a4c1e6882006ec677646047e7e0', 5, 2, NULL, '[]', 0, '2019-12-09 04:36:29', '2019-12-09 04:36:29', '2020-12-09 10:06:29'),
('031da479ac44e56c39bdec9121429d6e24b35bb8c4ad59e66ece568c8e38dec51a1158e67d287825', 1, 2, NULL, '[]', 0, '2019-12-11 06:23:27', '2019-12-11 06:23:27', '2020-12-11 11:53:27'),
('03efdbb210ab330282ef326df8a455f61ac976eabecfd4c87283baac1a9088af94890fa974d47071', 7, 2, NULL, '[]', 0, '2019-12-16 04:45:13', '2019-12-16 04:45:13', '2020-12-16 10:15:13'),
('03f5c5668c3092f38fd7411492857b9e39beb223bc27dd9291458ce8bf6ef57268b0d9ea8404d1b4', 8, 2, NULL, '[]', 0, '2020-02-20 06:14:17', '2020-02-20 06:14:17', '2021-02-20 00:14:17'),
('043acc71e7bc4fa2f8d15c3abb29649df083fa5bd680a085761ef6836e79df9fce97b8fcd60592e6', 7, 2, NULL, '[]', 0, '2019-12-16 01:50:00', '2019-12-16 01:50:00', '2020-12-16 07:20:00'),
('070487e27867d8f77a0717f7b0564b9feed05d2b60a119d551aba5a158e77570404dd9914eb9d2b0', 8, 2, NULL, '[]', 0, '2020-02-20 06:06:15', '2020-02-20 06:06:15', '2021-02-20 00:06:15'),
('072d4e64cd6a15a9985f1f0a84360db5b827109a28e0ca2849558d26c53dd406e8e7ea4054a29c2d', 7, 2, NULL, '[]', 0, '2019-12-12 00:02:34', '2019-12-12 00:02:34', '2020-12-12 05:32:34'),
('09262b9ef5730cf80938060a1a2a470658392ddd9bc7814d2ea118423fce451d686532733673bf85', 18, 2, NULL, '[]', 0, '2020-02-28 18:07:30', '2020-02-28 18:07:30', '2021-02-28 12:07:30'),
('09a3ea8c15b0e660a9b4d3d03ab3635559e777fd22d09fd202730d21354bd89d856f971d51af6e92', 18, 2, NULL, '[]', 0, '2020-03-02 18:07:40', '2020-03-02 18:07:40', '2021-03-02 12:07:40'),
('09b56529ff9844b16f439cca366acfd05ff06519c209d426a6c4070340fbb2c96ef7515c6a3d80f9', 4, 2, NULL, '[]', 0, '2020-02-16 12:28:47', '2020-02-16 12:28:47', '2021-02-16 06:28:47'),
('0b9b1a89dfd04f607726e0351eb5fe20fb89681999fdd1ecbee77e92d213d4fad9a82d212b7dde13', 7, 2, NULL, '[]', 0, '2019-12-14 04:45:28', '2019-12-14 04:45:28', '2020-12-14 10:15:28'),
('0ba02396d44032a48402a804382a13ca7f702ad03212f9ab5f5a76296aecbd4ec165f88bee4f89b8', 7, 2, NULL, '[]', 0, '2019-12-14 05:03:30', '2019-12-14 05:03:30', '2020-12-14 10:33:30'),
('0c41c5c3b11b287a74a10a2e2c3b31704d5b5fa17d731524487b6f4fb7727bbf53de05ab41758686', 4, 2, NULL, '[]', 0, '2020-02-16 12:12:13', '2020-02-16 12:12:13', '2021-02-16 06:12:13'),
('0cfd87cdf38f463576d37de3ec000dbc335b0d66cef0f7b67afd4d5d84d2787ef0f57cd34b8c0e0a', 8, 2, NULL, '[]', 0, '2020-03-04 21:12:31', '2020-03-04 21:12:31', '2021-03-04 15:12:31'),
('0d70c840804fd8452a115933fa8166012e7936e4aa79e60018dee623b66e9f756ec33d3eaa9c2108', 7, 2, NULL, '[]', 0, '2019-12-15 23:38:51', '2019-12-15 23:38:51', '2020-12-16 05:08:51'),
('0da90aebd17f047c4fbaab47c1558e11db8a590627d2ab209104b89f49cd9f0e0aa021ca2f25f610', 1, 2, NULL, '[]', 0, '2020-02-17 11:35:43', '2020-02-17 11:35:43', '2021-02-17 05:35:43'),
('1047e3d191a80995a1cb2095a9948aff127deb3f2cc8ba90f6cef80796361aa0f41960c6063f8f8c', 18, 2, NULL, '[]', 0, '2020-02-29 21:25:22', '2020-02-29 21:25:22', '2021-03-01 15:25:22'),
('119b6a9fc4b2b21224642592c8cda0abfff3f37f77d5bfa52f87b7b660f9334cfacb40e1774111bd', 1, 2, NULL, '[]', 0, '2020-02-18 12:40:42', '2020-02-18 12:40:42', '2021-02-18 06:40:42'),
('11a8611ddda072e502dc837ca83c9fd9a85606a3ef0764daa932e78811d039819ad432ab2aa47faf', 7, 2, NULL, '[]', 0, '2019-12-16 01:56:22', '2019-12-16 01:56:22', '2020-12-16 07:26:22'),
('11da0d029178421b2b1dbf07a4aac1a55b32f6318d155c61664a2fd9aa8406b718eb58b3dbc1c357', 3, 2, NULL, '[]', 0, '2020-03-01 00:08:31', '2020-03-01 00:08:31', '2021-03-01 18:08:31'),
('126a8f9e2aaf11e5dd43f7d25700da8df4b5d7bf522f1ee5cebbc458b940edce3164a657fc14f015', 3, 2, NULL, '[]', 0, '2020-03-01 00:48:59', '2020-03-01 00:48:59', '2021-03-01 18:48:59'),
('12a580a9466e96ea09147a23ca406a638fa05b515574a2848c58cb99b688770ac6d09dbae1bafce1', 1, 2, NULL, '[]', 0, '2020-02-16 12:25:38', '2020-02-16 12:25:38', '2021-02-16 06:25:38'),
('131525a140141c88835e6288070cc7781632e7d19b63cfcf888c3dd98e39edc470889a95c7327907', 7, 2, NULL, '[]', 0, '2019-12-14 00:54:38', '2019-12-14 00:54:38', '2020-12-14 06:24:38'),
('14438c1282260229a2c33a447ebf239e6b85c674b67967ec24d2c38c900b1cd3f0c4a4fc0f1fb42f', 1, 2, NULL, '[]', 0, '2020-02-20 01:06:12', '2020-02-20 01:06:12', '2021-02-19 19:06:12'),
('163e945a9039fdf03f1c662c17035f2488a385fbc39a20cd2e3492d92310fe2a6fc083d012d67bc6', 1, 2, NULL, '[]', 0, '2020-02-16 11:54:23', '2020-02-16 11:54:23', '2021-02-16 05:54:23'),
('17f9e1d284d89d7b16e58f8608fa10081a24d04bd2f5ce59fe242faab1e2ee33be603f6e52eb48d9', 7, 2, NULL, '[]', 0, '2019-12-16 07:24:27', '2019-12-16 07:24:27', '2020-12-16 12:54:27'),
('1867a511717d988d090df54671cea6bc7bc7f7699129e5eb59535178553dc15e1cf6cffc6b1c7988', 8, 2, NULL, '[]', 0, '2020-02-20 17:09:15', '2020-02-20 17:09:15', '2021-02-20 11:09:15'),
('190135e2ea10693b2ee7b794a73678e30f386876c9f98d6bf6518c6a2bd9690aa8a18244c690340c', 7, 2, NULL, '[]', 0, '2019-12-13 01:35:52', '2019-12-13 01:35:52', '2020-12-13 07:05:52'),
('1b43e6c609931dc7b85ac0217e2cf6e1cce3173b33acc15c27d687c3bcd96cfe66bda3b0d0ffe9d0', 7, 2, NULL, '[]', 0, '2019-12-19 23:26:26', '2019-12-19 23:26:26', '2020-12-20 04:56:26'),
('1ca4fc5a8cc82681aae0d025e059e043e87bce3263bae049e8d3cd4c6e2038ddd15729db2de1ad53', 3, 2, NULL, '[]', 0, '2020-03-01 01:12:39', '2020-03-01 01:12:39', '2021-03-01 19:12:39'),
('1e34290ca3a996fff89bd1a4995e2377f35c8b3dc5c2380269f5d2f84d811df954ffe8e18943f622', 7, 2, NULL, '[]', 0, '2019-12-16 00:53:11', '2019-12-16 00:53:11', '2020-12-16 06:23:11'),
('1f9ca544b8ce37c510e0b997bd009ccbbf3bdba5c16949650ff1fd8e96af9b7fd6fa80389890dd8c', 1, 2, NULL, '[]', 0, '2020-02-19 00:43:37', '2020-02-19 00:43:37', '2021-02-18 18:43:37'),
('200e6864068e5aa691fe4f074efc034173e2ee3f6f04335a7ba7fb5dd1868b1c72fa8a256ce75188', 4, 2, NULL, '[]', 0, '2020-02-16 12:32:35', '2020-02-16 12:32:35', '2021-02-16 06:32:35'),
('22e4360dbb0a8a647d0ac53422e3e39824a5cd89df2c3f4b054407f0ee595db2c048bd65d18db3a4', 8, 2, NULL, '[]', 0, '2020-03-02 18:08:54', '2020-03-02 18:08:54', '2021-03-02 12:08:54'),
('23246c3ffe76f03f22f286d7eb505dba23ce9ebca82782f1004dc0027e5436f0243ee79620a3b9db', 19, 2, NULL, '[]', 0, '2020-03-02 19:13:55', '2020-03-02 19:13:55', '2021-03-02 13:13:55'),
('24fe9b74a0d5d82006d0fc8409b5ca1a14ec1292af11f9570d9941febe2c68b082610f10f82a7e5b', 7, 2, NULL, '[]', 0, '2019-12-17 06:39:52', '2019-12-17 06:39:52', '2020-12-17 12:09:52'),
('251dbaf78d8463c17828f1c1eec7f7486fd81ad36910995a65575f95f04ec6e74c2dc004b1c27965', 7, 2, NULL, '[]', 0, '2019-12-20 00:06:08', '2019-12-20 00:06:08', '2020-12-20 05:36:08'),
('2652fc70ecd60cf93a16ab6038d4bdcdcb7a24dd46167602737d5f4b5ea67e5b902f3ebed86ff8ec', 8, 2, NULL, '[]', 0, '2020-03-02 07:43:44', '2020-03-02 07:43:44', '2021-03-02 01:43:44'),
('26c7d15485257f499fd92f6bb4cb139ff0a6ed399c09e19f4500df7c213307df9c84f56517c6a01d', 8, 2, NULL, '[]', 0, '2020-02-20 07:16:48', '2020-02-20 07:16:48', '2021-02-20 01:16:48'),
('26eb2d46303ef1eaa833f1f72ee6f7b0d43d4bf61bdc23959ceffb4cbb57af115faf65f678f1376d', 8, 2, NULL, '[]', 0, '2020-02-20 06:15:49', '2020-02-20 06:15:49', '2021-02-20 00:15:49'),
('27a978242d4297078435140fbd20a4179b575fc95f44424c2ff7a71256fd1b9de880a764ecc11057', 1, 2, NULL, '[]', 0, '2020-02-16 12:53:56', '2020-02-16 12:53:56', '2021-02-16 06:53:56'),
('296e8d2cc8152a8f020f7ae10d8a8cd667d36e6b939c47059110a7963612cbe82d0a47bb9271c730', 8, 2, NULL, '[]', 0, '2020-02-20 06:03:28', '2020-02-20 06:03:28', '2021-02-20 00:03:28'),
('29d9165424adfe3968d77c7d7ee8bf1aaf7ab119fe446fc426a22ab0273781cfc22468baf3b64b7e', 7, 2, NULL, '[]', 0, '2019-12-14 04:41:54', '2019-12-14 04:41:54', '2020-12-14 10:11:54'),
('2a57bc8c13aaa1f58ccdee451d942d553b7165cfe05a4def838be4542c96c3ca1932e881cdc5da4b', 8, 2, NULL, '[]', 0, '2020-02-20 15:23:44', '2020-02-20 15:23:44', '2021-02-20 09:23:44'),
('2a88ee907f487e1e4e5693a8fcdde003c5e0c90b9d541533b66049c29543d456fc41b3ababf0b458', 7, 2, NULL, '[]', 0, '2019-12-16 06:58:43', '2019-12-16 06:58:43', '2020-12-16 12:28:43'),
('2aa01970f1f76e24511bf6d0e76d6b46f972713fda765ecffff6a662d05449580aa4121e92e63876', 7, 2, NULL, '[]', 0, '2019-12-14 00:53:03', '2019-12-14 00:53:03', '2020-12-14 06:23:03'),
('2d7149c9f31b6100bb1779a5b918dab9438b0f0c2e674aaf85956154ca22b4cdb4794c7eb6a811cd', 7, 2, NULL, '[]', 0, '2019-12-16 06:53:15', '2019-12-16 06:53:15', '2020-12-16 12:23:15'),
('2e6d19459a737e39f1c118f21c7fd77a442e9ce233eab66eff15d4dfce15c1fe101885ff22e8e032', 7, 2, NULL, '[]', 0, '2019-12-14 05:02:50', '2019-12-14 05:02:50', '2020-12-14 10:32:50'),
('3078a7c5eb0874221a90d50287f3c064f479a3a8e9efaeeb232471c0977efd3e30e675b7ac0e4e0a', 8, 2, NULL, '[]', 0, '2020-02-20 05:11:26', '2020-02-20 05:11:26', '2021-02-19 23:11:26'),
('308d7f6df84a31879997723d13ee8cf1234d3977c8a5a48bb106f149e27164fa75efb2794e3f2d4d', 8, 2, NULL, '[]', 0, '2020-03-04 23:45:37', '2020-03-04 23:45:37', '2021-03-04 17:45:37'),
('3099833efa91fc9dd0a8fcba829759b3830e7052c0c70f005e0ab7ecbc079b5a80196161607a3d34', 12, 2, NULL, '[]', 0, '2020-02-20 23:57:33', '2020-02-20 23:57:33', '2021-02-20 17:57:33'),
('3194d8ffb180fd370ba1505311f75d5608e3f02d6ca331a032b841030ce5e61dc7ae619c9921bf43', 7, 2, NULL, '[]', 0, '2019-12-12 01:44:33', '2019-12-12 01:44:33', '2020-12-12 07:14:33'),
('31df81974205c025e3d7d5b92581a36e66dda894e0e2543a9042b749489942d9fd47ce0fd71cd808', 15, 2, NULL, '[]', 0, '2020-02-23 02:46:00', '2020-02-23 02:46:00', '2021-02-22 20:46:00'),
('3266f818d90e7d796b3f842f8acbdcecff2a0432fc2226b5f7eda7b23bc89c4d4a25277d8e188385', 12, 2, NULL, '[]', 0, '2020-02-25 19:56:45', '2020-02-25 19:56:45', '2021-02-25 13:56:45'),
('33d086340b8eca00f5fb6d128b70cadd1365c73c2698a75051cf27414865c713e0b6a6fb1200f897', 1, 2, NULL, '[]', 0, '2020-02-18 06:25:47', '2020-02-18 06:25:47', '2021-02-18 00:25:47'),
('33ffaa112289f4201beb530afe109951cf87f89ce38c2eb0f7224c07d2efbc541d52c0d76a729d3c', 1, 2, NULL, '[]', 0, '2020-02-18 07:40:33', '2020-02-18 07:40:33', '2021-02-18 01:40:33'),
('3417e1b52326d7a8e6d44b4c4d0e185cb449f69ea6c97b3e900ee374699db96db01f49659b68c0a6', 8, 2, NULL, '[]', 0, '2020-02-20 13:03:48', '2020-02-20 13:03:48', '2021-02-20 07:03:48'),
('3434090ba6953dce622f042113454477b4ae56f358b22b38cd565d2a4f43ce79157b9570984d13b9', 7, 2, NULL, '[]', 0, '2019-12-15 23:30:45', '2019-12-15 23:30:45', '2020-12-16 05:00:45'),
('349ce9354107501e8065b88dde399ff9f620285ed67e84268a108e5b024d7f36c0b0571ef74936d1', 1, 2, NULL, '[]', 0, '2020-02-18 07:33:14', '2020-02-18 07:33:14', '2021-02-18 01:33:14'),
('3583aaef649d06fab1c5abf616b0934d87e148e9b01a46ae7f8c454b575a068bc6dcf243ef003a6b', 8, 2, NULL, '[]', 0, '2020-02-20 05:20:36', '2020-02-20 05:20:36', '2021-02-19 23:20:36'),
('3691e408be3fdaa7c864b3a93fc407e508ed79ece5712553f42fc82c85d88de23bceb491474a51e5', 7, 2, NULL, '[]', 0, '2019-12-12 00:48:33', '2019-12-12 00:48:33', '2020-12-12 06:18:33'),
('38525c908b88a34a1fd95d3beff57769490800e16599eee9e4a0a78903ac622aebb5e0507489d3a5', 8, 2, NULL, '[]', 0, '2020-02-19 04:07:00', '2020-02-19 04:07:00', '2021-02-18 22:07:00'),
('386be5cc96e9eeae10f62d4c4b9a98ac403f1f81ca1c8529be2fd0555f1982627895797f8c800b8e', 7, 2, NULL, '[]', 0, '2019-12-12 03:53:56', '2019-12-12 03:53:56', '2020-12-12 09:23:56'),
('38d68ad7a63aee164ed92973475483029ff90e6ab497f99480e8d2829e6f94e5be5dfac06faa0021', 2, 2, NULL, '[]', 0, '2020-02-16 12:48:13', '2020-02-16 12:48:13', '2021-02-16 06:48:13'),
('39986c0d6eae646956f3b5e1fe2e98fb2716894e9706681d45d79e2007c7135122143ef868e30b6b', 8, 2, NULL, '[]', 0, '2020-03-04 20:51:33', '2020-03-04 20:51:33', '2021-03-04 14:51:33'),
('3b3d19fddd9eea905107163ad3f44a2789614ab1045534b301b2679d29b052eacb375adc1a5f980c', 8, 2, NULL, '[]', 0, '2020-03-05 00:45:22', '2020-03-05 00:45:22', '2021-03-04 18:45:22'),
('3bd2bce375712a695f3d1a28a6f6157b86d8f3abc6e7286d5110494f21b024c5b1fadd1dd2982513', 4, 2, NULL, '[]', 0, '2020-02-16 12:33:08', '2020-02-16 12:33:08', '2021-02-16 06:33:08'),
('3be440a97d63c32cd3557640daefd0d2dc242bd51ec6a87d0d539dbf97ead788a6aeba6ef68971a5', 15, 2, NULL, '[]', 0, '2020-02-21 00:37:50', '2020-02-21 00:37:50', '2021-02-20 18:37:50'),
('3caefd3c548c5d13b0fd19e4f677c1ad7f04e1c054a5b7fd59ee19e814b56071de3575c3b36b04a4', 8, 2, NULL, '[]', 0, '2020-03-04 23:32:04', '2020-03-04 23:32:04', '2021-03-04 17:32:04'),
('3e1af95a7dff1f4468a7965106daecff50600b10bf0e08b6af6574220e125616c1439e8d16dd1862', 8, 2, NULL, '[]', 0, '2020-02-20 05:07:11', '2020-02-20 05:07:11', '2021-02-19 23:07:11'),
('3fc8ebc7aee93b3d57cf20cbffe2a993f2225e310db4cdf8f0b7a182b0aab5d84de276870b1af8e9', 7, 2, NULL, '[]', 0, '2019-12-20 00:22:39', '2019-12-20 00:22:39', '2020-12-20 05:52:39'),
('3fe783c85c735bac0cabfed3e70b68d0929e029d45b37751556fb39028ee791ba0d4d38b3638d204', 8, 2, NULL, '[]', 0, '2020-03-02 18:56:31', '2020-03-02 18:56:31', '2021-03-02 12:56:31'),
('4034f36d35364c4b59a9e349f7fdfcc02b658f5a1c199d090572c655df00b4d4f42c4d88d49c7989', 8, 2, NULL, '[]', 0, '2020-03-04 19:13:59', '2020-03-04 19:13:59', '2021-03-04 13:13:59'),
('42c6e2e0c2cbbead6e526af5d3f8d4e4fb5d8d1f1a64ae4b4bbe1e93ceac4ac1cb404a66d9a96cbf', 7, 2, NULL, '[]', 0, '2019-12-14 04:43:35', '2019-12-14 04:43:35', '2020-12-14 10:13:35'),
('43cb034b8dbe8fd860229825c553c01113c1a61fd8396806660938a4539a18072f05c3c029fa0f4f', 11, 2, NULL, '[]', 0, '2020-02-20 20:10:06', '2020-02-20 20:10:06', '2021-02-20 14:10:06'),
('44d0bb305998af570ffb1033832bf304679790bf5f2c0930d9d724dca554dd7208b73d4e20546ca8', 7, 2, NULL, '[]', 0, '2019-12-13 00:53:44', '2019-12-13 00:53:44', '2020-12-13 06:23:44'),
('4550f2f2ee3cde69b667a0cbf811711395b257905850f862f56b44c16aa60fdfb132086b1223ea35', 8, 2, NULL, '[]', 0, '2020-03-04 00:35:13', '2020-03-04 00:35:13', '2021-03-03 18:35:13'),
('45c76c251df3fdbf09a08c6d38a87a04a3321755b9ab2d50bfe7bc95edadc8877cd97ba45080da48', 8, 2, NULL, '[]', 0, '2020-02-20 12:37:35', '2020-02-20 12:37:35', '2021-02-20 06:37:35'),
('4702b738cd0ab527dccabe1b2776985635eda6761015496247fbbec1c2bbef5f5def329b194f543a', 18, 2, NULL, '[]', 0, '2020-02-29 23:57:01', '2020-02-29 23:57:01', '2021-03-01 17:57:01'),
('482c2ea3c2197a57628beb6b4ffa19a3e580ee44ad0b269945246476f7b44aab3b96abe80c2c8a22', 7, 2, NULL, '[]', 0, '2019-12-16 23:11:27', '2019-12-16 23:11:27', '2020-12-17 04:41:27'),
('49265752639a90772a831110c21ca249c7a20dd900f6c3ddb1ce7c7fe7b0dc417ae82ce57d95dde5', 8, 2, NULL, '[]', 0, '2020-03-02 23:52:17', '2020-03-02 23:52:17', '2021-03-02 17:52:17'),
('4a15349f36de62f0f6af4587faef1711f85f1f3a52563776ad31cd9e665dd75a55a2eb946be5aa79', 7, 2, NULL, '[]', 0, '2019-12-16 07:03:43', '2019-12-16 07:03:43', '2020-12-16 12:33:43'),
('4a69942927c8bf033955b10ad0265a3526377064d2ecd2040a5aad73c0f779a9e05bc8f281c29e32', 1, 2, NULL, '[]', 0, '2020-02-19 05:24:55', '2020-02-19 05:24:55', '2021-02-18 23:24:55'),
('4b7d5cf955d2150f5934c2fbe52c61158f4df04c6ebb3a4b1d3f0888d3e1965b2aea935ccc46cb14', 7, 2, NULL, '[]', 0, '2019-12-15 23:48:53', '2019-12-15 23:48:53', '2020-12-16 05:18:53'),
('4c52ebace1961d6a47e86152784cd53adcef42a93d99fa1e143c53a8c1a4d99cedb9e2c6c87067c4', 7, 2, NULL, '[]', 0, '2019-12-14 01:13:08', '2019-12-14 01:13:08', '2020-12-14 06:43:08'),
('4cacf1cfed0083163b509e37a999f70b384635157939c8c60fbfda953c0ba9b57497f35057096f3c', 4, 2, NULL, '[]', 0, '2020-02-16 12:39:00', '2020-02-16 12:39:00', '2021-02-16 06:39:00'),
('4ddaa1ba565904672a66e234261bbb3b456108be1e85777a44c412ca21dd15f2a5ad32bb5aff699c', 7, 2, NULL, '[]', 0, '2019-12-14 04:04:18', '2019-12-14 04:04:18', '2020-12-14 09:34:18'),
('4e27c85c39ab18c3b8f70eb1eecb7631496aebbad192dd292069c0b4b7045b2bd2b875640702bfb8', 8, 2, NULL, '[]', 0, '2020-02-20 08:18:30', '2020-02-20 08:18:30', '2021-02-20 02:18:30'),
('4e538a90bb17331250a8da79de372c34f5d9401f6b18f2c9c5926717de4399be418822381bf9bbc7', 7, 2, NULL, '[]', 0, '2019-12-14 01:51:34', '2019-12-14 01:51:34', '2020-12-14 07:21:34'),
('4f1c67fe9f8f51a1f001ee82d7d67fa74476066d99896a5beceed3741e26624d7e02a4d04d4a1dc1', 7, 2, NULL, '[]', 0, '2019-12-12 04:06:49', '2019-12-12 04:06:49', '2020-12-12 09:36:49'),
('4f8c3b5fb48f0cd1ef4118cf50eff21ede3f0f04a4ca0d84907381a77c646c1757d5a4a201121488', 7, 2, NULL, '[]', 0, '2019-12-16 01:31:35', '2019-12-16 01:31:35', '2020-12-16 07:01:35'),
('502269ca4d12766d6ad16f21fbaae709acc587d06525143b4e8e0bd3b1048b7fa3e71dcd9e11dbd3', 1, 2, NULL, '[]', 0, '2020-02-18 07:30:20', '2020-02-18 07:30:20', '2021-02-18 01:30:20'),
('50416f36f8d83652e135afb3983628e2839a55a5c374d19f10b42de48dc293ee1ad7285b120e2727', 1, 2, NULL, '[]', 0, '2020-02-19 05:34:26', '2020-02-19 05:34:26', '2021-02-18 23:34:26'),
('508282f26a9e351349d8b8ec17c02f091aaf2ee17a7b629cb7055d6d459ba9592bb8ac6d3d01f071', 15, 2, NULL, '[]', 0, '2020-02-28 04:41:21', '2020-02-28 04:41:21', '2021-02-27 22:41:21'),
('5150176a84637b2cbabc99bd62f09aba4fb4e241fa68f581c6eee5dcfe659b7fff8323b53251ff26', 7, 2, NULL, '[]', 0, '2019-12-13 06:37:04', '2019-12-13 06:37:04', '2020-12-13 12:07:04'),
('52f0fb3668ceaabcbb5fce4499b32569a089e86650713bddfb8f5a95c334c447cf5a61680fe1bee2', 7, 2, NULL, '[]', 0, '2019-12-12 00:51:11', '2019-12-12 00:51:11', '2020-12-12 06:21:11'),
('54f6d0dc526c2f0d398f99a89c56aaff1b223c4a8d972159f08fffbabe5b9a47cf14f15d2ef6a999', 8, 2, NULL, '[]', 0, '2020-03-02 18:15:27', '2020-03-02 18:15:27', '2021-03-02 12:15:27'),
('552c25775beb4dafc90f69cd338ada75edc02eb5d775693959308a26ac46b1d9d051b66a7722126a', 7, 2, NULL, '[]', 0, '2019-12-12 00:38:29', '2019-12-12 00:38:29', '2020-12-12 06:08:29'),
('559da40ee0a5496ebb36bde8152bbde0e7a6be62322da8048e202a7af4b9f0b9895a2ed612c3e154', 7, 2, NULL, '[]', 0, '2019-12-12 06:01:40', '2019-12-12 06:01:40', '2020-12-12 11:31:40'),
('5792992d82ff3e9f4046b527dfd6771720b95468b9a8b1490ff298c77852f07e57736706bcce29c4', 7, 2, NULL, '[]', 0, '2019-12-19 23:24:13', '2019-12-19 23:24:13', '2020-12-20 04:54:13'),
('58fcfae859acb8476de283830ccaddb4b7cbdf8a716342080d5ad446479162061ca53f49a7d7d6e7', 1, 2, NULL, '[]', 0, '2020-02-19 05:26:47', '2020-02-19 05:26:47', '2021-02-18 23:26:47'),
('59ec495ca0d310fddc6de9b267358654cae0445e47f6ad72e9533724d634d7499703241fa7b72fa4', 1, 2, NULL, '[]', 0, '2020-02-18 07:37:42', '2020-02-18 07:37:42', '2021-02-18 01:37:42'),
('59f99012b2c46b0e20ed602e3ffed4b31ab6e2d839fde10346187b516cbd9ca340a4cfe76d08baff', 8, 2, NULL, '[]', 0, '2020-03-02 18:42:01', '2020-03-02 18:42:01', '2021-03-02 12:42:01'),
('5b4a7072b049e1fd177c6e5bc71b6ef42d50c624b6830b530f62c8faee191a21b1678b8628b9e95f', 7, 2, NULL, '[]', 0, '2019-12-16 04:44:02', '2019-12-16 04:44:02', '2020-12-16 10:14:02'),
('5c2e6e5584de3ad6974afaaa874cc742e97e3e35542bcccb143b12d557c499cbbb51571016f3186c', 8, 2, NULL, '[]', 0, '2020-02-20 16:02:21', '2020-02-20 16:02:21', '2021-02-20 10:02:21'),
('5c700ac823d547fa2cc1030c7a53a4f4374248a6239f4b742aa7ad41bbf21f7082a726685207bb36', 11, 2, NULL, '[]', 0, '2020-02-20 20:05:37', '2020-02-20 20:05:37', '2021-02-20 14:05:37'),
('5d0e1cace9e598aef531af14e6023733ceaab0239761190d8f4b1d100d593890b0d76db2070fd675', 7, 2, NULL, '[]', 0, '2019-12-17 07:12:44', '2019-12-17 07:12:44', '2020-12-17 12:42:44'),
('5d7f9fe0ab961ae86fc1522e8f6c4cf6f44903d44e3a8ae6cb6f7898c7a17db213b28c975a6bf5ea', 4, 2, NULL, '[]', 0, '2020-02-16 12:09:41', '2020-02-16 12:09:41', '2021-02-16 06:09:41'),
('5dc295b784f93b1fe035ecee240c2930cd0025362b5214cb0e2155ad5c6a01c55286a6f76abd6867', 1, 2, NULL, '[]', 0, '2020-02-19 05:43:18', '2020-02-19 05:43:18', '2021-02-18 23:43:18'),
('5e096259c26857a2f3083dd447c866c7abf00c9e9f6b8b9e8b52b676e46e9a8064900eb206e87046', 1, 2, NULL, '[]', 0, '2020-02-19 05:27:57', '2020-02-19 05:27:57', '2021-02-18 23:27:57'),
('5e45125d4a6daef70882819524cd702d08c87d437b8d32de413b021e470a69aecd07dca77ad50ec7', 7, 2, NULL, '[]', 0, '2019-12-12 01:02:44', '2019-12-12 01:02:44', '2020-12-12 06:32:44'),
('5e743c48111cf411ab660c0c670bd9879a9a8ca0660c9ce35cc2fb8122a62bd7540ee19430caace6', 15, 2, NULL, '[]', 0, '2020-02-26 01:29:57', '2020-02-26 01:29:57', '2021-02-25 19:29:57'),
('5ec7a4ca154d85804284483bc99e3aea8f760915236515ebb1a83dd1a443c4f84eeacea0459e8f7d', 7, 2, NULL, '[]', 0, '2019-12-14 01:46:37', '2019-12-14 01:46:37', '2020-12-14 07:16:37'),
('5fb77bc2344de0afb046168125b197f515157c6466aeea2e9c130ea7ec7439f24e27722cb3199309', 7, 2, NULL, '[]', 0, '2019-12-16 07:11:06', '2019-12-16 07:11:06', '2020-12-16 12:41:06'),
('6116ca65fb93e858d20d4d0bde04d9ad36fbe45b9605171e18146e7e260b57f105661f680c04b607', 8, 2, NULL, '[]', 0, '2020-02-20 12:44:00', '2020-02-20 12:44:00', '2021-02-20 06:44:00'),
('62255413aff956bbb862f06fc9856325295c2fcd1b97931ce02885d477b8d51313db634c593cc442', 18, 2, NULL, '[]', 0, '2020-03-01 00:02:39', '2020-03-01 00:02:39', '2021-03-01 18:02:39'),
('633e11d981be32f15179ab358f0e356d4d575909ed9e0751b65b7963e48609407db3d0b797f6b83c', 3, 2, NULL, '[]', 0, '2020-03-01 02:19:12', '2020-03-01 02:19:12', '2021-03-01 20:19:12'),
('638dab75f6114fd44b2912ad31be45f6ca1e27740deb0ee75eaf2540f6ce1c129f393d04c36ec5e3', 8, 2, NULL, '[]', 0, '2020-02-20 12:40:26', '2020-02-20 12:40:26', '2021-02-20 06:40:26'),
('63bd53b161fd6713d9d46058d692c597e329116f62156f4f38f98fb1a048df549dd8c78513fb9f6d', 7, 2, NULL, '[]', 0, '2019-12-14 05:09:36', '2019-12-14 05:09:36', '2020-12-14 10:39:36'),
('64411e83be3c5714e169eca698f28b4dd1be041bce5e3bc9d3a923c808eae986d975560d82992561', 7, 2, NULL, '[]', 0, '2019-12-14 01:21:34', '2019-12-14 01:21:34', '2020-12-14 06:51:34'),
('64ceeb9eb0d30c1dc06deac46d48c61abfd3a80179680ad7343d15fb0cbab0642c6d243304133c5e', 7, 2, NULL, '[]', 0, '2019-12-16 06:53:44', '2019-12-16 06:53:44', '2020-12-16 12:23:44'),
('66053da911d815e35fef44e4051240eb319083d99947a1bfdc5d0ec918474e975ffd1bf952690f2a', 7, 2, NULL, '[]', 0, '2019-12-12 05:24:18', '2019-12-12 05:24:18', '2020-12-12 10:54:18'),
('67005670ca3c87c4826bfe9a6dd26e0907dcdc701fd1443222e49172482902c7e784547c0acee3d5', 7, 2, NULL, '[]', 0, '2019-12-14 01:31:48', '2019-12-14 01:31:48', '2020-12-14 07:01:48'),
('68ca67d8aae0174a296f596914c9ead713153c550cf82e796f39fd8d11acde52fe80c29bac22a99d', 8, 2, NULL, '[]', 0, '2020-02-20 10:16:04', '2020-02-20 10:16:04', '2021-02-20 04:16:04'),
('69993d8e8d425b42f6e7eafc14b5d833eee7b7cc2e70b9272ff7c03f2f2d82ffd4d96bdc3c314778', 7, 2, NULL, '[]', 0, '2019-12-13 05:43:20', '2019-12-13 05:43:20', '2020-12-13 11:13:20'),
('6a44e82f07f8de2925fea368255a38a43739649efa73f52aefe0efb6a2196be8bc0c043d28dee26e', 7, 2, NULL, '[]', 0, '2019-12-16 06:52:36', '2019-12-16 06:52:36', '2020-12-16 12:22:36'),
('6a5fba9656e693b49e7646240d9d1304f23702a679380bf40961a557e9363388e20e208645177282', 1, 2, NULL, '[]', 0, '2019-12-09 04:39:09', '2019-12-09 04:39:09', '2020-12-09 10:09:09'),
('6b33d12b1ba3b5d8d394c646c3190c366efb785a8f61ba02ba2240017a55acc19c4699a8ba108137', 7, 2, NULL, '[]', 0, '2019-12-14 04:37:10', '2019-12-14 04:37:10', '2020-12-14 10:07:10'),
('6b84f378faea402412683963122ac70fe6d4a3a6ca16697d60124b23ecb178cd75932c9bafca14ac', 8, 2, NULL, '[]', 0, '2020-02-20 08:28:34', '2020-02-20 08:28:34', '2021-02-20 02:28:34'),
('6bd39a8694d155f70a850145b4ac005262808f699eab4bef1174bae4362ef9d167ed78046271c65c', 7, 2, NULL, '[]', 0, '2019-12-12 03:57:38', '2019-12-12 03:57:38', '2020-12-12 09:27:38'),
('6ca64c92a6e322701b1cb8e7469b0ab0b7cb6681f33f2bd3026c3065ee3ef37b534bc2ffedef58a0', 7, 2, NULL, '[]', 0, '2019-12-12 01:35:24', '2019-12-12 01:35:24', '2020-12-12 07:05:24'),
('6d7c78fc56dd2ead85e7be160523f825f15e31414d4978bc53332d608d5d9a8193f832a6673307ce', 8, 2, NULL, '[]', 0, '2020-02-20 13:04:24', '2020-02-20 13:04:24', '2021-02-20 07:04:24'),
('6d8a4b31698d6578b8174b5084708c54f97732d94bda270ffb9d3a7bccaa2ab73cffca1cbf573228', 8, 2, NULL, '[]', 0, '2020-03-02 18:44:11', '2020-03-02 18:44:11', '2021-03-02 12:44:11'),
('6da0e5d926a7f671cd6e032687794051c9cc4568bef582d770f630108ccd017651ccce7d22d534eb', 19, 2, NULL, '[]', 0, '2020-03-02 19:09:52', '2020-03-02 19:09:52', '2021-03-02 13:09:52'),
('6dfd7e5e36d98a22f8574ba5801b9e0930889e8bf0f23fa57c92c487704fbd05377c6d49ecc6da64', 13, 2, NULL, '[]', 0, '2020-02-20 23:58:41', '2020-02-20 23:58:41', '2021-02-20 17:58:41'),
('6e1224574fe3bd31b5666896708fd28c8b4383c7e866cb9e524c2882e5bd28551d821629199f551e', 7, 2, NULL, '[]', 0, '2019-12-12 03:56:46', '2019-12-12 03:56:46', '2020-12-12 09:26:46'),
('6e16862ceaa8a625fa97245fe90aa1c4c2df1c6a3c0d6ff9aaf35d01b0c1fd86fde274f262b28423', 7, 2, NULL, '[]', 0, '2019-12-14 05:06:48', '2019-12-14 05:06:48', '2020-12-14 10:36:48'),
('6e7865f43049b8c10142c13f7f26547a2ba465ba4e1900240f4faba6a99bb417342c18599f117d39', 1, 2, NULL, '[]', 0, '2020-02-23 03:54:25', '2020-02-23 03:54:25', '2021-02-22 21:54:25'),
('6ffa591a0061f27059f130c2557d6275276c86c68f940be90df2e2282981c1db610a62cf70ecc4a0', 8, 2, NULL, '[]', 0, '2020-03-04 01:38:16', '2020-03-04 01:38:16', '2021-03-03 19:38:16'),
('71f4c801d60a7b05e51f645cdcdc990577932f27e752d15464a6f856283b0a6a896d2b47012d73f1', 8, 2, NULL, '[]', 0, '2020-02-20 06:04:12', '2020-02-20 06:04:12', '2021-02-20 00:04:12'),
('71fb37bc5f6ecb06f41ce89a89ca235da2eed45838f59533c7730eaa79417b3b62e652356b0c7e83', 8, 2, NULL, '[]', 0, '2020-03-04 00:36:38', '2020-03-04 00:36:38', '2021-03-03 18:36:38'),
('720027f67e24c6ad3d54a8d5f56deb6c2c5e0ded2c1537c0454885c0851e94528d134b60dab9c6ba', 7, 2, NULL, '[]', 0, '2019-12-16 07:11:38', '2019-12-16 07:11:38', '2020-12-16 12:41:38'),
('7358a1c4b875d18ef60a0bd259877b30c95274b1ec5d090be4ebdb6cfe9864e97ddfced93d07dc38', 7, 2, NULL, '[]', 0, '2019-12-12 00:55:04', '2019-12-12 00:55:04', '2020-12-12 06:25:04'),
('74622bbfffc0d81c66c82b99fbc58c62098e1208f92c0617a02f848e718de75f8776ddf4f9d1a6fd', 7, 2, NULL, '[]', 0, '2019-12-14 04:51:45', '2019-12-14 04:51:45', '2020-12-14 10:21:45'),
('75207d82a5fa57e06cebc72d99cd1ea0d9497313d718bc59afe084fed60207f950ca1c32f707f709', 7, 2, NULL, '[]', 0, '2019-12-16 04:40:19', '2019-12-16 04:40:19', '2020-12-16 10:10:19'),
('75d254cd8f02c7ddbe28bf8db76ed52323469e4cf87abc24ca02e76c38f42722017c06de076441f2', 1, 2, NULL, '[]', 0, '2020-02-19 00:33:16', '2020-02-19 00:33:16', '2021-02-18 18:33:16'),
('75d5c3441481f01f90b0b46174a9360ca32fe66510def356192ce110dbf29161715ed60498442de2', 7, 2, NULL, '[]', 0, '2019-12-11 06:38:41', '2019-12-11 06:38:41', '2020-12-11 12:08:41'),
('77a474fc8f11cb4f1ce16c984d48d276773da018bf1180200d17d06538f84eaef130035b15da3db0', 1, 2, NULL, '[]', 0, '2020-02-21 07:07:13', '2020-02-21 07:07:13', '2021-02-21 01:07:13'),
('7812eab39dbbb2d61cd41acd5f175720d58aa50784651b1e3bd2509ea454faa73b60f142c1a883a3', 7, 2, NULL, '[]', 0, '2019-12-12 04:48:48', '2019-12-12 04:48:48', '2020-12-12 10:18:48'),
('7867725a836f0e387a75a742ff63756dcfcf7f4eaf7adb39df61b3a72ccaf9a139538294919f20da', 7, 2, NULL, '[]', 0, '2019-12-16 04:22:29', '2019-12-16 04:22:29', '2020-12-16 09:52:29'),
('78edfa38a5b78ecb0012c535ee7d9724f10abc92f56388f6dcb929bad21f1b0691e7c09b76c71633', 8, 2, NULL, '[]', 0, '2020-03-04 18:02:13', '2020-03-04 18:02:13', '2021-03-04 12:02:13'),
('7a707755becc4f20eeb3fc5da0d9ee628689d189440972dd211f02aed89bce8f19ed6fdd095b995d', 7, 2, NULL, '[]', 0, '2019-12-14 01:22:07', '2019-12-14 01:22:07', '2020-12-14 06:52:07'),
('7aa0bb7a5a2fcf3cc09ff5e82cc65feeb5204b66b2af79da71fd046a23d7e34554b98bb7fdd5a380', 7, 2, NULL, '[]', 0, '2019-12-16 06:01:01', '2019-12-16 06:01:01', '2020-12-16 11:31:01'),
('7ba59cddd0d155bd3be851c068597f341d75b6c716aae37ed2a3607f2ed07d431b06f6000fd5d736', 7, 2, NULL, '[]', 0, '2019-12-16 01:25:05', '2019-12-16 01:25:05', '2020-12-16 06:55:05'),
('7c2da41720da91ccf7069bf7888d090c41d1f27d7c04db3244b932668f1e3bc77d8f6a17fdd833ff', 7, 2, NULL, '[]', 0, '2019-12-12 23:29:10', '2019-12-12 23:29:10', '2020-12-13 04:59:10'),
('7d1fb79d709acb9d6090b5ce70fc4644c1af9d0f7da669b85e17661dd550a17c318f6fcc0362603f', 1, 2, NULL, '[]', 0, '2020-02-19 20:47:35', '2020-02-19 20:47:35', '2021-02-19 14:47:35'),
('7dec99bc6b490b3445be6b0fd74103970d03e93f6c5625711dfb8df8f5ee5b9f6d5773aa0a13ec46', 8, 2, NULL, '[]', 0, '2020-02-20 10:20:01', '2020-02-20 10:20:01', '2021-02-20 04:20:01'),
('7ed577f4e37c7f544fa8255e768973c08f78cf3302d7de221ab337d7760327620c31fb7daf6b82b1', 7, 2, NULL, '[]', 0, '2019-12-14 05:13:48', '2019-12-14 05:13:48', '2020-12-14 10:43:48'),
('81e695e4c74f843499278f89879162b59f01feda9c578eced4f1b9e787084206b6441a5b5512bc27', 7, 2, NULL, '[]', 0, '2019-12-12 00:34:22', '2019-12-12 00:34:22', '2020-12-12 06:04:22'),
('82a29873c624dda51f22e0c5eb49afecfbf44f5e03bf624f21994ec7b62787812972a36d2cbf0afc', 7, 2, NULL, '[]', 0, '2019-12-12 04:01:50', '2019-12-12 04:01:50', '2020-12-12 09:31:50'),
('842f79699e44ef194854e137402132a2824363436e9edee84ebdb65750f6aa84cfbed9fd58a7b4bb', 8, 2, NULL, '[]', 0, '2020-03-04 01:25:31', '2020-03-04 01:25:31', '2021-03-03 19:25:31'),
('844c50111f5909c818f873ebdd4956da086d711813bc0da7595b4e8ee9eb61eb3ff03bdca7ad280a', 8, 2, NULL, '[]', 0, '2020-02-20 01:09:55', '2020-02-20 01:09:55', '2021-02-19 19:09:55'),
('84cc7d4faf04bf7848402257012c498905053f468a6de706d44c6f715f6cff86385c3aab285d08c5', 3, 2, NULL, '[]', 0, '2020-03-01 00:11:33', '2020-03-01 00:11:33', '2021-03-01 18:11:33'),
('84d01b7932bb9a0965e2d45395f3eb0a2e9fea161748ab98a0e3d0472c1f2ac993c37a2deaa8c899', 7, 2, NULL, '[]', 0, '2019-12-12 01:59:54', '2019-12-12 01:59:54', '2020-12-12 07:29:54'),
('851c1c266db92e3552d02ec4f3c83b5f705ad4208b0908fe8f1f6e219f39ed407efbabf6872390e4', 1, 2, NULL, '[]', 0, '2020-02-19 06:30:28', '2020-02-19 06:30:28', '2021-02-19 00:30:28'),
('85bf7e2de8e2ec2a974fdbca3a9fdd0e68c5d052ab2a0e1490e001242283a61c2605f4825b07e15d', 7, 2, NULL, '[]', 0, '2019-12-16 02:00:42', '2019-12-16 02:00:42', '2020-12-16 07:30:42'),
('87c1899f1ec5a0bfe336c0b7fa4de2dd2fffb7e7d30f20a6146adf6056f2b53ba633cb4c568f6118', 8, 2, NULL, '[]', 0, '2020-02-20 12:58:03', '2020-02-20 12:58:03', '2021-02-20 06:58:03'),
('88d8df1c31740d03113e9220036b72a8921d573f2a4f59a99db04dcd7e7f6d604a8e2ebcd7d03cb7', 15, 2, NULL, '[]', 0, '2020-02-21 01:35:50', '2020-02-21 01:35:50', '2021-02-20 19:35:50'),
('88df54fb19db76d713bf6fd2c202bfb03baa278686081153f5ef418a895b1d54db3b53aa7eaf393f', 8, 2, NULL, '[]', 0, '2020-03-05 01:06:53', '2020-03-05 01:06:53', '2021-03-04 19:06:53'),
('89110d9e995bc34f0587bf7b84c4c7c7bd6e1e2c8a0e5cf393fa8a1efbbb2e8d852a25c0a36c3540', 8, 2, NULL, '[]', 0, '2020-02-20 07:12:59', '2020-02-20 07:12:59', '2021-02-20 01:12:59'),
('89f6c18956923dd6f87e2c18dfb4603120caa1ee03b246e2192bc657315c607bb0c34bbc08a1e8a1', 8, 2, NULL, '[]', 0, '2020-02-20 15:35:16', '2020-02-20 15:35:16', '2021-02-20 09:35:16'),
('8a2f0ead6d11827c870c563702e31350281b02665989f9623b23e0748cc8100ea42009eae2a21b05', 1, 2, NULL, '[]', 0, '2020-02-19 19:40:07', '2020-02-19 19:40:07', '2021-02-19 13:40:07'),
('8a5323c915e7d9f57ae7cc0b887573aae8b6a2fcb15fc42f9f9760648a951eddcc26e2af41ba58b5', 3, 2, NULL, '[]', 0, '2020-03-01 00:21:52', '2020-03-01 00:21:52', '2021-03-01 18:21:52'),
('8b66c8596c0910ebf22a88db07cabfe7a92a9ad740178f493668910f7c3c3c79ccbe196a573b3684', 8, 2, NULL, '[]', 0, '2020-03-04 21:13:24', '2020-03-04 21:13:24', '2021-03-04 15:13:24'),
('8b72b7c6c4c86fb5e2fd67eb8a8656ab291500c243fd830a1fac463025c2fcb97af297246181b87e', 19, 2, NULL, '[]', 0, '2020-03-02 19:09:52', '2020-03-02 19:09:52', '2021-03-02 13:09:52'),
('8d11881bd869a8d33be4042b79a0f7bfcc7f1ff5aa9831efa3d2f9ac114264145e23a639cfd33a35', 1, 2, NULL, '[]', 0, '2020-02-19 05:12:36', '2020-02-19 05:12:36', '2021-02-18 23:12:36'),
('8d26c6a9d05bab1e3a1f81ec0109b3e1e76df3484129ac641556ba208f6054420a13a3a07d7f3b76', 8, 2, NULL, '[]', 0, '2020-02-20 13:04:04', '2020-02-20 13:04:04', '2021-02-20 07:04:04'),
('8d581ba7eda66e73c646d0e803f2b80f9304e992c34a93e13afd1f381cce7a7cfb4a45512fd1ea31', 7, 2, NULL, '[]', 0, '2019-12-12 02:11:33', '2019-12-12 02:11:33', '2020-12-12 07:41:33'),
('8d5f5a53aecd0a13d2bf5d9d39cb7dfc24769c4347500516e70dcc238627554888bd1b38ab13bd50', 8, 2, NULL, '[]', 0, '2020-03-04 01:35:30', '2020-03-04 01:35:30', '2021-03-03 19:35:30'),
('8dd306b98af35d18fb549f1d6d63dd8059282c5e94b4e2314114ecf04e8628c3df8cadc153752b5f', 8, 2, NULL, '[]', 0, '2020-03-04 23:52:00', '2020-03-04 23:52:00', '2021-03-04 17:52:00'),
('8e029e55c527e2c40015c5d6514f6fd45686377da4f8802211a18f7910cda53b8a7fb442f3b2b043', 8, 2, NULL, '[]', 0, '2020-02-20 12:42:15', '2020-02-20 12:42:15', '2021-02-20 06:42:15'),
('903cfc5a759d55d508f635ac4b408e6e57e92bf252737180dee99c6292ee5a557368136b69ccb28b', 1, 2, NULL, '[]', 0, '2020-02-19 04:33:18', '2020-02-19 04:33:18', '2021-02-18 22:33:18'),
('904062a5afb7143f7551e74b5a30f5bc9c51c41458e2563aa92ddf2daba441899d159b87e23bd5e0', 7, 2, NULL, '[]', 0, '2019-12-14 04:53:32', '2019-12-14 04:53:32', '2020-12-14 10:23:32'),
('92b3f1880e1671c138ebe06f686acbb22e747d4bb2d7dfd51c963ea03f08a6ff19271a33db51bd0b', 8, 2, NULL, '[]', 0, '2020-02-18 06:36:05', '2020-02-18 06:36:05', '2021-02-18 00:36:05'),
('932ab183a800746cdbfdf7becb3cd9d1cfe94a94d303620a3704d84a08eb0c7131188e02de776118', 8, 2, NULL, '[]', 0, '2020-03-02 18:33:44', '2020-03-02 18:33:44', '2021-03-02 12:33:44'),
('935e2da02c47b2d9e179a12253c727ec17e45d7327e284c7cd6d1c112346e4b2e0b3c8a6311b3dad', 3, 2, NULL, '[]', 0, '2020-03-01 01:25:01', '2020-03-01 01:25:01', '2021-03-01 19:25:01'),
('940331efefc80eaecb4ca3f6eb9d00393e6d1402eb00e1e8b8a1c4b55008fd8a16f4ba27990d5f15', 18, 2, NULL, '[]', 0, '2020-02-29 21:23:36', '2020-02-29 21:23:36', '2021-03-01 15:23:36'),
('96794f8a4ead0246cbcc9f1f21b29657f525993004afe1c4681c9a841e74458646cc9ebf79bd1583', 1, 2, NULL, '[]', 0, '2020-02-20 00:53:01', '2020-02-20 00:53:01', '2021-02-19 18:53:01'),
('981c53477981eaf5bc81eada2e513604068b51ebd7c052323a51f799d12e97110e4fd83343a12de5', 7, 2, NULL, '[]', 0, '2019-12-14 01:56:20', '2019-12-14 01:56:20', '2020-12-14 07:26:20'),
('992b1cc1f43ae3a2d3d8ae1a7f122c24235a3add3339d384864fc268f0fdb6b7ff779ce562ca344e', 12, 2, NULL, '[]', 0, '2020-02-21 00:24:13', '2020-02-21 00:24:13', '2021-02-20 18:24:13'),
('99342dc0507790dec07e247c113b8c200b3f947ac8be90e3a8afb1df84fd32c76a00fc79e4b41790', 18, 2, NULL, '[]', 0, '2020-02-29 01:29:30', '2020-02-29 01:29:30', '2021-02-28 19:29:30'),
('99f4c9e0226277a25235bf911e58b04a3983ebe2ee2747b6103d836ba1a4b1d5525a2938b18f42e7', 7, 2, NULL, '[]', 0, '2019-12-16 03:43:57', '2019-12-16 03:43:57', '2020-12-16 09:13:57'),
('9a702f024d52411d7bca70ad2ce4f308292dab9242ba5faaa954816c45ac60b77b6f1ab5672c32b3', 10, 2, NULL, '[]', 0, '2020-02-19 21:52:14', '2020-02-19 21:52:14', '2021-02-19 15:52:14'),
('9bd49b8320780dc523946905fd8e7f592b41f203b79df195e1173f06c14eb56013000e2d6846d4da', 8, 2, NULL, '[]', 0, '2020-02-29 23:48:22', '2020-02-29 23:48:22', '2021-03-01 17:48:22'),
('9e620450fb5d374214bf157c45353f30a04253a7dc475b3a10d27f66d4df89c1ea8471df2eaa3d0c', 8, 2, NULL, '[]', 0, '2020-02-20 01:13:28', '2020-02-20 01:13:28', '2021-02-19 19:13:28'),
('9fb9e7e72b018fc1bfa0609356253d4f0d781f66c6b8afb94063af370de4f2cc3ce63bf5be674f91', 8, 2, NULL, '[]', 0, '2020-03-04 19:24:49', '2020-03-04 19:24:49', '2021-03-04 13:24:49'),
('a06697331c0b96b7b9288391c51d8c209d7dbb1d599986737ab7f8482fcc105e61576e0ecf8e2317', 1, 2, NULL, '[]', 0, '2020-02-20 17:03:00', '2020-02-20 17:03:00', '2021-02-20 11:03:00'),
('a07869cff00597cbbd7e44c8a3808b615a75ed38d2fa83f7e14a13d55929ca695377dcc84eaeb19b', 7, 2, NULL, '[]', 0, '2019-12-13 05:57:35', '2019-12-13 05:57:35', '2020-12-13 11:27:35'),
('a12f051864539d283508b8a3805b85866e69d2350bf339f1c5073675386e17ec8fcdf250f0909c0e', 8, 2, NULL, '[]', 0, '2020-02-20 11:53:47', '2020-02-20 11:53:47', '2021-02-20 05:53:47'),
('a14ff4a82167e8b1d67fed5e6745a721dd8a48c6b78edba17425cbfdc3055ddbc6eb631e4d81038d', 8, 2, NULL, '[]', 0, '2020-02-20 16:30:04', '2020-02-20 16:30:04', '2021-02-20 10:30:04'),
('a1c6b205aae824c161daa54bf020f04c3da548217dce73e89d1c5881374294261e1682f261f7a924', 8, 2, NULL, '[]', 0, '2020-02-29 23:42:12', '2020-02-29 23:42:12', '2021-03-01 17:42:12'),
('a230095aba284b34bbffa2a31fc9d22f804f87fdf2c1d679b35e68607bdc22bdb12314a99e4fbfe9', 4, 2, NULL, '[]', 0, '2020-02-16 12:30:55', '2020-02-16 12:30:55', '2021-02-16 06:30:55'),
('a3050bfe700261cba01c53ce278f9201fda8396ab9c34ecf3c0a644ede519d6439d317b6ac5920f7', 7, 2, NULL, '[]', 0, '2019-12-14 01:49:26', '2019-12-14 01:49:26', '2020-12-14 07:19:26'),
('a42622de9a37bbec812a2dfb9070ecd36dc3191f703e1f3ed00ddf6128ec91185e63dc5ac270fe82', 7, 2, NULL, '[]', 0, '2019-12-16 07:04:20', '2019-12-16 07:04:20', '2020-12-16 12:34:20'),
('a47f848e1c1238c4644b3a330fef72ba3ab9c385354ccc105234b78e41fb5cfd50c7672d78bcd7da', 8, 2, NULL, '[]', 0, '2020-02-20 05:21:33', '2020-02-20 05:21:33', '2021-02-19 23:21:33'),
('a4d4b2d1d285ae199acc5b2e4332ec7e93c272e2f3731359d07cb79c980badeeab711618c3490e74', 3, 2, NULL, '[]', 0, '2020-03-01 19:45:16', '2020-03-01 19:45:16', '2021-03-01 13:45:16'),
('a508eb069078bfc5cba2740ce62888e9bd33cf7ed4ccd72b8f3d21d69ebe347f268903b181fac98c', 8, 2, NULL, '[]', 0, '2020-03-05 01:21:10', '2020-03-05 01:21:10', '2021-03-04 19:21:10'),
('a788ac13d46a2ffc7debd80fe88ef8cef6039187cebcaddd5c5c05d14af1165e53449b97ba836652', 7, 2, NULL, '[]', 0, '2019-12-14 04:34:15', '2019-12-14 04:34:15', '2020-12-14 10:04:15'),
('a8e39bdf3150bc2a7856f3d97211cbf4a206ac8dc08475184e8fac8870a3dbda4e1cbf40ef6c8d33', 7, 2, NULL, '[]', 0, '2019-12-16 23:39:28', '2019-12-16 23:39:28', '2020-12-17 05:09:28'),
('aa7ab34ab998810ee0626fba13f66d2c06b270fc683cbd0333e93ba71651433e2713728abd7bf7f9', 8, 2, NULL, '[]', 0, '2020-02-20 08:48:16', '2020-02-20 08:48:16', '2021-02-20 02:48:16'),
('aaa04aa36f99e1fc06f79db61ece770250f694dc8efdee8bebf84ec39dedd633715577d8dca11d07', 1, 2, NULL, '[]', 0, '2020-02-18 02:46:37', '2020-02-18 02:46:37', '2021-02-17 20:46:37'),
('aaf7efa248539e9051899f6b4e716f42460403923f342cf52382b1eb4d15e2f3e3cd3f39e2014ca4', 3, 2, NULL, '[]', 0, '2020-02-16 11:56:53', '2020-02-16 11:56:53', '2021-02-16 05:56:53'),
('ac997b3fec8e4b23c5b67ded48e99f662ee5f6e63e0dae3b2214cb0bd3644399bcfd1fd3fb091788', 8, 2, NULL, '[]', 0, '2020-03-01 00:20:34', '2020-03-01 00:20:34', '2021-03-01 18:20:34'),
('af3b8e1a724f631bc41a5ef20dec93110ce2ef25364ea35060988bc03e7e70ea3e5dc5fa9833a797', 7, 2, NULL, '[]', 0, '2019-12-14 05:18:38', '2019-12-14 05:18:38', '2020-12-14 10:48:38'),
('afb0d14bf3103915888d50c9e0669ad2f5bf073a204e7f182dad2cdbdbf32c41845e0c13a1ac4f90', 8, 2, NULL, '[]', 0, '2020-02-20 05:50:42', '2020-02-20 05:50:42', '2021-02-19 23:50:42'),
('aff8b78d52eec6b5cdbe8fa0d3145f7f368cbd0d7892d791dfdfeb01652a0c7b1aa0486eadbbc0d8', 8, 2, NULL, '[]', 0, '2020-03-01 00:17:17', '2020-03-01 00:17:17', '2021-03-01 18:17:17'),
('b07bfc4e1cf53fb7cb5b5d88dd22526411565f72ed7a015176d9802a238f971b3eab339ad0c41e77', 12, 2, NULL, '[]', 0, '2020-02-20 23:58:09', '2020-02-20 23:58:09', '2021-02-20 17:58:09'),
('b0f76327fac5fadadcd62f1d398e59997fc06bce07de22cd9cb547a9c5ab72112a7682e817bbfe66', 19, 2, NULL, '[]', 0, '2020-03-02 19:17:49', '2020-03-02 19:17:49', '2021-03-02 13:17:49'),
('b10aba8c30bf7fe8fddc937d60cbd7e249e23c82141ace507406ea3c1b7160c05fa346cb8b878792', 10, 2, NULL, '[]', 0, '2020-02-19 21:56:27', '2020-02-19 21:56:27', '2021-02-19 15:56:27'),
('b142cda690a7135d24674dc194482be3ca9e0d7b5eb419bbeb30b68f47ea50cd25124e8c660e9792', 7, 2, NULL, '[]', 0, '2019-12-13 05:58:12', '2019-12-13 05:58:12', '2020-12-13 11:28:12'),
('b215e91501fbeef405645af04978b8f8e0f05b46d21c1d915cefe6ffeaeb695c708cf0a6a8310838', 7, 2, NULL, '[]', 0, '2019-12-12 01:28:32', '2019-12-12 01:28:32', '2020-12-12 06:58:32'),
('b2396e8fb3f91d12914c653bd1dfdf54055af669f1a00044f7e504388a328acfc16a9b94bb48bdf6', 7, 2, NULL, '[]', 0, '2019-12-14 01:19:46', '2019-12-14 01:19:46', '2020-12-14 06:49:46'),
('b23e4392b6f289fcb3b4a3f28048480da18409002938eceb0339393f028a2d5d0035149e241ea3ac', 1, 2, NULL, '[]', 0, '2020-02-16 12:06:43', '2020-02-16 12:06:43', '2021-02-16 06:06:43'),
('b30662530f5dabe3c01e006dc6f6dbd3e73efab7231d71d19274eeeab8793a980e6cddf745db16d0', 1, 2, NULL, '[]', 0, '2020-02-19 03:48:36', '2020-02-19 03:48:36', '2021-02-18 21:48:36'),
('b344a71f7cd63bd993372284398e1fca596a1fbb977ad9322c65739e5f8d3f9e80538cd3d05066d2', 8, 2, NULL, '[]', 0, '2020-02-26 02:41:25', '2020-02-26 02:41:25', '2021-02-25 20:41:25'),
('b3d06ea8205ccb7b67584247a6aa81ee38d2f05fd01230f941aba9e530d4047c8d70d564b08e3625', 15, 2, NULL, '[]', 0, '2020-02-21 22:03:15', '2020-02-21 22:03:15', '2021-02-21 16:03:15'),
('b4991960fae5200a96e9d0fc4ecbc93f12559664606cbfd0ccfdc9a22aa42bb9a0c288431f58804b', 8, 2, NULL, '[]', 0, '2020-02-20 05:56:32', '2020-02-20 05:56:32', '2021-02-19 23:56:32'),
('b4bf80dc63ac4cb469aa68fd319a6fdc686d163b0f729472aa1714d0cf5022af3f6e35784cb90477', 8, 2, NULL, '[]', 0, '2020-03-04 23:49:16', '2020-03-04 23:49:16', '2021-03-04 17:49:16'),
('b5ab8582ba5861630f36db11fb9fd2298082180b367d2152079c688058d3e40ce44f9d60556685c0', 1, 2, NULL, '[]', 0, '2020-02-19 04:31:47', '2020-02-19 04:31:47', '2021-02-18 22:31:47'),
('b601b11dd2de1130390005f37ca370c5deb4a201acd5ef7be2fe3c09a0fb39f44fa920d510dbee05', 3, 2, NULL, '[]', 0, '2020-03-01 00:14:11', '2020-03-01 00:14:11', '2021-03-01 18:14:11'),
('b6ad624b55152db165334b34241049483b04e683480624827275b7951f9a581dc1ea690658283d71', 8, 2, NULL, '[]', 0, '2020-03-02 07:50:25', '2020-03-02 07:50:25', '2021-03-02 01:50:25'),
('b6dc0e8471af1fc0027aada965154742a106a63344a95ed46e8456a6726ec97a1358ca567f35bbdf', 8, 2, NULL, '[]', 0, '2020-02-20 12:45:06', '2020-02-20 12:45:06', '2021-02-20 06:45:06'),
('b74bb0e116ca4692cde92d35c118a17bb67bd8d9904576bc0d5e40ed752f67ed19a15851221ca12a', 1, 2, NULL, '[]', 0, '2020-02-17 11:32:36', '2020-02-17 11:32:36', '2021-02-17 05:32:36'),
('b75b9cfc2bccd7be5edb3ede3205bfae72c4f2c73807ae1332e83f57882696ae8699cc6c9591309f', 7, 2, NULL, '[]', 0, '2019-12-14 04:44:28', '2019-12-14 04:44:28', '2020-12-14 10:14:28'),
('b75e85850f281d2dcee320b7eadc5ec47db644a18f49e1bb69fd61fbdbb850ad94fdd16f03c461b9', 3, 2, NULL, '[]', 0, '2020-03-01 00:58:41', '2020-03-01 00:58:41', '2021-03-01 18:58:41'),
('b795dfb9785d0383388640581840c6f8f51cbc5033cbfc4998f6c8544dc7f65fc9600840b49325de', 4, 2, NULL, '[]', 0, '2020-02-16 12:28:27', '2020-02-16 12:28:27', '2021-02-16 06:28:27'),
('b890dc43511a1a27e5f706d8395840850ca61dd892b0d2e7f9d41dcf71ebab7acf600d434c5110f4', 1, 2, NULL, '[]', 0, '2020-02-19 06:45:04', '2020-02-19 06:45:04', '2021-02-19 00:45:04'),
('b89964a3c7a623bc7ae615e98524042defe7409ae0e019de5a597aaccce472e1a7136a99b12cd4d4', 8, 2, NULL, '[]', 0, '2020-02-20 17:39:21', '2020-02-20 17:39:21', '2021-02-20 11:39:21'),
('b98a3834f774bd6d90008d21133e9fc2a502817577eef71ef03c333cc0b9e76f5f6ef0f4365a8e09', 1, 2, NULL, '[]', 0, '2020-02-19 06:44:18', '2020-02-19 06:44:18', '2021-02-19 00:44:18'),
('b9989473fb3aa52d51acccb3e3fa8df9c2b0db257bcb22da9e533242ef5c3906fb7b078c79512ef6', 1, 2, NULL, '[]', 0, '2020-02-16 11:56:19', '2020-02-16 11:56:19', '2021-02-16 05:56:19'),
('bc0df1e0b9c75c5a974e56379d0c7279e70f7d8598dd2496ba24da0e933a3791105e8f724f20d93f', 7, 2, NULL, '[]', 0, '2019-12-15 23:22:58', '2019-12-15 23:22:58', '2020-12-16 04:52:58'),
('be01b54803bef3813d7df1efdae03cd005bdf5e98026c81ed5e6e0bbdb1cd97c39c49fb382ae4a37', 6, 2, NULL, '[]', 0, '2019-12-11 06:35:09', '2019-12-11 06:35:09', '2020-12-11 12:05:09'),
('bf4dbc398044d4e9e5784a88e9c86874af36ff32aa5e9df58ffc563a95082682144d1b17aaf0a1a0', 8, 2, NULL, '[]', 0, '2020-02-20 10:18:00', '2020-02-20 10:18:00', '2021-02-20 04:18:00'),
('bf6b524499d48a21d3b6a2501f21f18399e79acbaa4462edfcbf27af42916ec95a62ce6c408c5c9b', 7, 2, NULL, '[]', 0, '2019-12-14 04:21:34', '2019-12-14 04:21:34', '2020-12-14 09:51:34'),
('c0928acce624e144c296e3bbd3739cdc294000828f4bd1e265b0e1b6a7733102d798baf1d5d374a7', 1, 2, NULL, '[]', 0, '2020-02-18 01:54:44', '2020-02-18 01:54:44', '2021-02-17 19:54:44'),
('c093af827773328c75093760ea5f9d4a8fef0f9731dfc622f5566c112d2e29b9ec4ae619e46eb1f3', 8, 2, NULL, '[]', 0, '2020-03-01 00:10:13', '2020-03-01 00:10:13', '2021-03-01 18:10:13'),
('c176b5501a0925f169d02274b1eb7d9b69c05516024aa8961ef56034b356176e990b5fdd4f04744c', 7, 2, NULL, '[]', 0, '2019-12-12 04:22:18', '2019-12-12 04:22:18', '2020-12-12 09:52:18'),
('c18565e14ebb2ceade2daec6180dd3e0658ed58d4dafaa9b8ecba7fe64211b7cf80e3b38c402e018', 3, 2, NULL, '[]', 0, '2020-03-01 01:22:27', '2020-03-01 01:22:27', '2021-03-01 19:22:27'),
('c2095802fafbad65039fc8d1984da82a12bf932182ed580049e2a01b51d37559259a9295206e853b', 8, 2, NULL, '[]', 0, '2020-03-04 00:29:08', '2020-03-04 00:29:08', '2021-03-03 18:29:08'),
('c230f96a6f9c7f595d683301a1cb7eb838554531946c2724aba5eddaf3075162181e0a25a498b734', 7, 2, NULL, '[]', 0, '2019-12-12 06:06:21', '2019-12-12 06:06:21', '2020-12-12 11:36:21'),
('c267d02e7f9e67f603c18f5e0ba1966678127c525618a8285e8b40a27a37077d9b155f541106aea7', 7, 2, NULL, '[]', 0, '2019-12-16 01:18:31', '2019-12-16 01:18:31', '2020-12-16 06:48:31'),
('c292cf0c039d024738b7478502928a496d7e3655da73065e7de29d77197d8b987627296be2a919be', 7, 2, NULL, '[]', 0, '2019-12-12 00:53:54', '2019-12-12 00:53:54', '2020-12-12 06:23:54'),
('c31958f9d3af081d90708ce1854606b6a8e1e0473b9cc18d4d072b800f921ed237b6124d4e8c6fce', 12, 2, NULL, '[]', 0, '2020-02-26 07:42:29', '2020-02-26 07:42:29', '2021-02-26 01:42:29'),
('c3323f971c358b3dcd526a1f6880d4e9679011c731b6abbd882b5cd48feb55953221d208bda6c692', 1, 2, NULL, '[]', 0, '2020-02-19 00:35:50', '2020-02-19 00:35:50', '2021-02-18 18:35:50'),
('c6595c20dfad1c41179a507e1d71f750e0af48a3298d5183f45c75aadaf43eaa944962ff3e727a41', 7, 2, NULL, '[]', 0, '2019-12-14 04:46:00', '2019-12-14 04:46:00', '2020-12-14 10:16:00'),
('c65abeb5d0cd7a50b0aedeaecec9d205506cfca8346f1e14e61b80b5e16809b18f8b93b9c3ad917c', 1, 2, NULL, '[]', 0, '2020-02-19 05:33:29', '2020-02-19 05:33:29', '2021-02-18 23:33:29'),
('c8033cb0e61285113ec8492048bb4a718ca6d6322a81fd45cbf9b13a52f09ec30af3a01f59315fad', 1, 2, NULL, '[]', 0, '2020-02-18 01:48:10', '2020-02-18 01:48:10', '2021-02-17 19:48:10'),
('c8513721764e6972941f05eb446cdd7cda07b2c7f7c0624a914740d42fcd57afa04d43345c10c08f', 8, 2, NULL, '[]', 0, '2020-02-20 07:27:07', '2020-02-20 07:27:07', '2021-02-20 01:27:07'),
('c91209acffc0440140977ca200123bdf7a6061094854bf488c437df92e4f684b0d203b968333b7e9', 8, 2, NULL, '[]', 0, '2020-03-02 23:24:29', '2020-03-02 23:24:29', '2021-03-02 17:24:29'),
('c9a0818e2a34caabf256c0a2d84eed7771da9b53b105e37d5564d6b7ddb22a7a6be1c0a3f5a30517', 3, 2, NULL, '[]', 0, '2019-12-12 02:25:48', '2019-12-12 02:25:48', '2020-12-12 07:55:48'),
('c9c16977278896db5a6ef6e6812d69bf581b99941b90a74cd5f468e46c7e90b3177d5e65f80947a4', 8, 2, NULL, '[]', 0, '2020-03-04 21:17:24', '2020-03-04 21:17:24', '2021-03-04 15:17:24'),
('c9c8ab6d8197a5d3aa7d7a231098afd84badec04b9efe46605f07df84d9a6961b23aef30ea109fcf', 7, 2, NULL, '[]', 0, '2019-12-16 06:59:31', '2019-12-16 06:59:31', '2020-12-16 12:29:31'),
('ca57c0bf2f446a2a9a1434988dd609ae5b889bda6676d3aba2165509b8276aa3b57c34589e28793d', 1, 2, NULL, '[]', 0, '2020-02-16 12:47:42', '2020-02-16 12:47:42', '2021-02-16 06:47:42'),
('cb4af0b333160134f934e4572c529f65117e77c47a51ba533293437893dea6713a0fd98e9fb3a56c', 7, 2, NULL, '[]', 0, '2019-12-13 05:55:40', '2019-12-13 05:55:40', '2020-12-13 11:25:40'),
('cbfdf5c44ce8afdce86af82820c86bbd6c86a75ff6c51714eddfbabf8bc06f85e1b688a9b839ae56', 1, 2, NULL, '[]', 0, '2020-02-17 11:38:21', '2020-02-17 11:38:21', '2021-02-17 05:38:21'),
('cdb2945dcb72cdbcb4fb93677a68e1d97cd3417a80941220554584af0b963f901f63fcc4b5a77d97', 8, 2, NULL, '[]', 0, '2020-02-20 05:45:27', '2020-02-20 05:45:27', '2021-02-19 23:45:27'),
('cde69f879427257fba8fbdf68dda6f1a94957119b9074fa4ce0114129879ce7e00211417c1693db6', 8, 2, NULL, '[]', 0, '2020-02-21 07:10:33', '2020-02-21 07:10:33', '2021-02-21 01:10:33'),
('ce01d232935d784fb7c33bf20d57dcd74e1e95505ab47951cfacea7e1106de819a42db90960eaa92', 10, 2, NULL, '[]', 0, '2020-02-19 21:50:42', '2020-02-19 21:50:42', '2021-02-19 15:50:42'),
('ce8213f2c1b8cc230b49489405da8c41756c9fff8e261520c9eb3118c0609fd9e578d8404f52a329', 1, 2, NULL, '[]', 0, '2020-02-18 07:55:24', '2020-02-18 07:55:24', '2021-02-18 01:55:24'),
('ce9b4438778a7d4f57025b2ea018ca8dd1134f62caea5cccf73cd6301022b24bfaacfa6167081497', 1, 2, NULL, '[]', 0, '2020-02-19 05:13:33', '2020-02-19 05:13:33', '2021-02-18 23:13:33'),
('cecebd2c2230ac216541c5846ac261f4412331bea9a51ac38e54c1e5090c1be8c094d6d2f93bf81d', 8, 2, NULL, '[]', 0, '2020-03-02 07:41:22', '2020-03-02 07:41:22', '2021-03-02 01:41:22'),
('d0e2277daf482f2990539fd5893bd373b43d385eb32e3a92555c342ac275149594bf1699f5f35cd1', 7, 2, NULL, '[]', 0, '2019-12-16 23:20:24', '2019-12-16 23:20:24', '2020-12-17 04:50:24'),
('d1836cd13584ea14463dc0230197eb3bb63af907169d931fc42fe5ac8f65befbcb0ba75663c7c898', 8, 2, NULL, '[]', 0, '2020-02-20 12:01:20', '2020-02-20 12:01:20', '2021-02-20 06:01:20'),
('d191fab40f60fd40c71ffacb9f9936129f04a28b56100a7b46b63490fe40ec9fe6f9a2c50eb637ea', 8, 2, NULL, '[]', 0, '2020-02-22 11:25:57', '2020-02-22 11:25:57', '2021-02-22 05:25:57'),
('d1c41ddd92091b028c4356820093d185ab9edad1b11fbdb5164532ba577ccc93f35ab6aa62333ddd', 14, 2, NULL, '[]', 0, '2020-02-21 00:30:06', '2020-02-21 00:30:06', '2021-02-20 18:30:06'),
('d345b8900b57b2ea747efb6a8f19b1c1bff6fa33b0bcd26d91a518076011d843b02d4f00e74a6fce', 9, 2, NULL, '[]', 0, '2020-02-19 04:34:56', '2020-02-19 04:34:56', '2021-02-18 22:34:56'),
('d4c98dabf35f88f4dab95dfc1543999a489915995a8f16af3484f33b6bf607030b1564b0ab133225', 1, 2, NULL, '[]', 0, '2020-02-16 12:55:52', '2020-02-16 12:55:52', '2021-02-16 06:55:52'),
('d53adea2fa5fd3447038634c67bf3708a46d15d6b0119336e4d85a77ea401453921be17a5106ee7a', 8, 2, NULL, '[]', 0, '2020-03-04 18:15:55', '2020-03-04 18:15:55', '2021-03-04 12:15:55'),
('d5e9bf9217bf9ad040c31bd01c564f9f7746c1e7b00bf4cd03a71969ccdf4b1763a336d1a3922aef', 3, 2, NULL, '[]', 0, '2020-03-02 04:31:07', '2020-03-02 04:31:07', '2021-03-01 22:31:07'),
('d769f7e95fc0da8a1ddad7a95c06865184a32af882c7f4c5a30361b6f728c8cc37ba0eb015aa9f69', 3, 2, NULL, '[]', 0, '2020-03-01 01:23:53', '2020-03-01 01:23:53', '2021-03-01 19:23:53'),
('d8742f7e83ffc17cb8c97337f7820294ef96215f68483626b57f5733d875921bd52f477fa4c5c637', 15, 2, NULL, '[]', 0, '2020-02-26 21:37:47', '2020-02-26 21:37:47', '2021-02-26 15:37:47'),
('d88d27a36c960f948d73ff57aeaec0de0a32e1f4cfec8e68aaf6399ef60cba294fa0d0c335a4a550', 7, 2, NULL, '[]', 0, '2019-12-12 06:11:59', '2019-12-12 06:11:59', '2020-12-12 11:41:59'),
('d90ad227cd727d9c957f7ef448f499fb8b8de7d1c1efa3c2baa1e41b9d0ebac4cd42f36f6211f233', 12, 2, NULL, '[]', 0, '2020-02-22 11:41:56', '2020-02-22 11:41:56', '2021-02-22 05:41:56'),
('d90e193d2542d76a1d924601524d83345aa82f4b814a7d0f26b70114950a5d9bc54fe5de199d9f1c', 8, 2, NULL, '[]', 0, '2020-02-20 11:59:54', '2020-02-20 11:59:54', '2021-02-20 05:59:54');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d9967ecc2aab7531b645b372541550c691efdbba7641d940f2aee9c4c1abe4659a44d98919cbec94', 1, 2, NULL, '[]', 0, '2020-02-19 00:41:08', '2020-02-19 00:41:08', '2021-02-18 18:41:08'),
('d9a398ebd5977bb6810dad70bc3901d171a0aa496daf7073d64c2f53d953edebb1a973537ca34fe4', 7, 2, NULL, '[]', 0, '2019-12-17 00:44:26', '2019-12-17 00:44:26', '2020-12-17 06:14:26'),
('d9b2844f662e45f7a363a70d019342d7dc50b7739761408bc89539c709c62fc9dcd842205af81526', 1, 2, NULL, '[]', 0, '2020-02-20 16:58:46', '2020-02-20 16:58:46', '2021-02-20 10:58:46'),
('d9b90440cdd50da8d1ec37c9ae675eebad7aa592371c18437d7d42a3ad1198459e9c8cbf0384344c', 15, 2, NULL, '[]', 0, '2020-02-21 01:27:38', '2020-02-21 01:27:38', '2021-02-20 19:27:38'),
('da073596c689102518d8a699b71417fb94acf96808c47cef823a67ed3a5dfacc0732714836638109', 7, 2, NULL, '[]', 0, '2019-12-14 01:57:07', '2019-12-14 01:57:07', '2020-12-14 07:27:07'),
('db5ae5dadab27663a92aa068599285017df3abe12287ef3158d7ecc811928324f12611aba48e0736', 8, 2, NULL, '[]', 0, '2020-02-20 05:47:23', '2020-02-20 05:47:23', '2021-02-19 23:47:23'),
('dbc1ba25911946b36a16f66f179908d5a755849b641b284e4f3c6ae845c0bd6a0a004ecb55de92b1', 7, 2, NULL, '[]', 0, '2019-12-14 05:14:26', '2019-12-14 05:14:26', '2020-12-14 10:44:26'),
('dd2e2e02d70af559f87c18dbc166d8ccb1598946518f40ff1c234e01fc2824e530c18256afe61c23', 7, 2, NULL, '[]', 0, '2019-12-16 04:50:31', '2019-12-16 04:50:31', '2020-12-16 10:20:31'),
('dd6d22ac8d1986cefdf8a48d36c4fa087befee04301131b9ae4ebfe0a4990a98615f1baead376d22', 8, 2, NULL, '[]', 0, '2020-03-02 23:47:59', '2020-03-02 23:47:59', '2021-03-02 17:47:59'),
('de1f929d1d816466cb66504d67668ed5c238363e849a4f9cd065ba4e299f6aa05312b5861389be14', 8, 2, NULL, '[]', 0, '2020-02-20 16:23:20', '2020-02-20 16:23:20', '2021-02-20 10:23:20'),
('de7f39dc67bb091ed26cb6cc5a87c7f43ffdc90e541c2534d2fbd0ab5d4f062093be70506dc4110b', 7, 2, NULL, '[]', 0, '2019-12-12 03:59:17', '2019-12-12 03:59:17', '2020-12-12 09:29:17'),
('df457950fc6d666738c08144fdc60b5886d36cb7983f9e0df5ae020e432b611ef47759a041748b25', 7, 2, NULL, '[]', 0, '2019-12-15 23:45:02', '2019-12-15 23:45:02', '2020-12-16 05:15:02'),
('df69627ebcd04223d02a88e7b99bd02a78bac0fcae69ea0ffe8daa6c118a5159a4b1eddf825dfd42', 8, 2, NULL, '[]', 0, '2020-03-01 00:04:45', '2020-03-01 00:04:45', '2021-03-01 18:04:45'),
('e04759ca548bb369233c464990d544e46b11df197ed96392f4ec53de43792dfccae4c3ce93a4e5a6', 8, 2, NULL, '[]', 0, '2020-03-05 00:58:53', '2020-03-05 00:58:53', '2021-03-04 18:58:53'),
('e1957e5d7355e4d849caa5f290d38512fbd0cd51953334dc6b7dbb15cea1785e1b976483539ea796', 3, 2, NULL, '[]', 0, '2019-12-16 05:07:50', '2019-12-16 05:07:50', '2020-12-16 10:37:50'),
('e1b995c73191d2aef2e6d1cb1f786ef1e5f048b8b4dee7217212de3e161084e8e38b787896da86c8', 1, 2, NULL, '[]', 0, '2020-02-19 05:18:22', '2020-02-19 05:18:22', '2021-02-18 23:18:22'),
('e2181b77960323154a752eeb293b63464300cbc5b2efff06136fdf1ea2103edc3b59a6ab0a3a2e8a', 3, 2, NULL, '[]', 0, '2020-03-01 02:15:47', '2020-03-01 02:15:47', '2021-03-01 20:15:47'),
('e2e0cd65e86202fde88adb63c43ab8ace60e5d248628986ab045a0bb3ea0558285f0d1173902ea34', 7, 2, NULL, '[]', 0, '2019-12-16 04:17:48', '2019-12-16 04:17:48', '2020-12-16 09:47:48'),
('e48887607a1879ebc193f982f670e5114801b32b33fbc4dcd875cc7dfb934d5e9b7caf823b88da1e', 7, 2, NULL, '[]', 0, '2019-12-14 01:37:15', '2019-12-14 01:37:15', '2020-12-14 07:07:15'),
('e61b1a67d8cfecf9e63e715978f3b49b2117b37b5cb080f53cd8d66a2c8d07096dbb457bc79abc22', 18, 2, NULL, '[]', 0, '2020-02-28 18:07:29', '2020-02-28 18:07:29', '2021-02-28 12:07:29'),
('e61d66740e72dfd87d08827474fd3ce1033051014aacf8dac701d2d539be037d979167d3fc7fc5db', 7, 2, NULL, '[]', 0, '2019-12-16 07:26:42', '2019-12-16 07:26:42', '2020-12-16 12:56:42'),
('e7584812409bdef1b289397a3e87787deabbd0346a05d62cd47e07e2ab4bdb802e819d674a6d252b', 8, 2, NULL, '[]', 0, '2020-03-05 01:35:56', '2020-03-05 01:35:56', '2021-03-04 19:35:56'),
('e764d53ac9ce10dadfa02cbd9ea09036fda15baf44cbb1e34b1c16bde5e658c60e3d7f6e08d03343', 8, 2, NULL, '[]', 0, '2020-02-20 10:15:16', '2020-02-20 10:15:16', '2021-02-20 04:15:16'),
('ea6cfc1c968451ccb9cab8500c59bfe6cd9e2ddb5067fdeb6db84401c83c6f537aa6fd918f30b63d', 1, 2, NULL, '[]', 0, '2020-02-20 15:22:51', '2020-02-20 15:22:51', '2021-02-20 09:22:51'),
('eb4a87ac164afdf9a5b3e07b838a3514ca182ce60dc7a47b584cea96d062fde136ec636996ef8df7', 7, 2, NULL, '[]', 0, '2019-12-12 01:36:53', '2019-12-12 01:36:53', '2020-12-12 07:06:53'),
('edbf4e1c41a9ba7264932c12fe871cfee4f3646bb04c3c31b2bfc689a2466e236be8a5c9cb37374b', 1, 2, NULL, '[]', 0, '2020-02-20 15:13:51', '2020-02-20 15:13:51', '2021-02-20 09:13:51'),
('ee580b6e7da26debd70a5949dac70db5ac61bc4a73dc9bf4d9dbfda74cbfeca1b59d82c38a33ece0', 1, 2, NULL, '[]', 0, '2020-02-19 05:37:34', '2020-02-19 05:37:34', '2021-02-18 23:37:34'),
('ef00b25051559b015a18fe9638cae348f291de9d16986e9d62c9b39a7b7713e82ab3e339eb31b8b2', 1, 2, NULL, '[]', 0, '2020-02-19 03:59:38', '2020-02-19 03:59:38', '2021-02-18 21:59:38'),
('ef6f5f5a4da54ecbffc51fc63ccf838885e71007f2ba02dbed6ecb6af4142e71d27c73ca4e03e26a', 7, 2, NULL, '[]', 0, '2019-12-16 01:58:56', '2019-12-16 01:58:56', '2020-12-16 07:28:56'),
('efff0e5c00c10ee87b790c42a9eb08ad8d21489d935716637ece1dda673a9c257fef84e86bf7a1bf', 11, 2, NULL, '[]', 0, '2020-02-20 20:05:38', '2020-02-20 20:05:38', '2021-02-20 14:05:38'),
('f15ef9480ad6c988c3b4f015511f2a7cf22f9457c5d7eb18610b02c6011444672456da4da25ed21a', 7, 2, NULL, '[]', 0, '2019-12-16 06:59:57', '2019-12-16 06:59:57', '2020-12-16 12:29:57'),
('f47719483107c04bb44189682996cc2fabe202a0649e4817d0501bf24116769bc4b2d40bf0d1ca30', 8, 2, NULL, '[]', 0, '2020-03-05 01:00:34', '2020-03-05 01:00:34', '2021-03-04 19:00:34'),
('f4d5ee4a16a8af99e1240e8cf076a5b95435d9075151eca03196e35dade898ba8a8deaff5e6c4926', 7, 2, NULL, '[]', 0, '2019-12-19 23:29:43', '2019-12-19 23:29:43', '2020-12-20 04:59:43'),
('f55ae3a5a9b63016c3f9f60a763585ff4f86ba16a9a267996ce951c9077fc367a7965b4a2c54acb1', 1, 2, NULL, '[]', 0, '2020-02-19 06:26:22', '2020-02-19 06:26:22', '2021-02-19 00:26:22'),
('f6242619620d57e99d72f55a47422d01033dbc86ba6b250da73dc21369ccbb2084097b30a5b97dab', 8, 2, NULL, '[]', 0, '2020-02-20 06:17:35', '2020-02-20 06:17:35', '2021-02-20 00:17:35'),
('f629039f59ca17c387df93e07d18f2c311acb131573a1db41691ddcddd6d0c82cf3375796d9fa1ca', 7, 2, NULL, '[]', 0, '2019-12-14 00:49:25', '2019-12-14 00:49:25', '2020-12-14 06:19:25'),
('f678ebc3cea9c6a9fbff81a4994071b75f34c7c126a5a13888588db05b938788816b4a6665b15757', 8, 2, NULL, '[]', 0, '2020-03-02 22:29:12', '2020-03-02 22:29:12', '2021-03-02 16:29:12'),
('f6e4a63370e785719b86321a00c25f29d4d8c79ea8f745d2071f6f94c695f826d8d94c9b57cf0d7d', 1, 2, NULL, '[]', 0, '2020-02-19 04:31:14', '2020-02-19 04:31:14', '2021-02-18 22:31:14'),
('f76311af0db83296c86607e82eb418549fca9c292ac1e13f7a14a25c28c46fdb9787102a021d396d', 7, 2, NULL, '[]', 0, '2019-12-12 02:36:05', '2019-12-12 02:36:05', '2020-12-12 08:06:05'),
('f89bdadd2c34b78330e0a86f39527e51fbc96dbc2fb5f7216a4c1f8f7cebc056e82f9cbe29330365', 11, 2, NULL, '[]', 0, '2020-02-20 20:57:04', '2020-02-20 20:57:04', '2021-02-20 14:57:04'),
('f91e0ab3cb25df92b6f7c5e1af25d299037c02af6aaf5a6c82587589957e76468efb86987c5a80c4', 8, 2, NULL, '[]', 0, '2020-02-20 08:45:46', '2020-02-20 08:45:46', '2021-02-20 02:45:46'),
('f99f0760945a2911bfc28b52a1b65cfdc5281ec11fb6936e3e592b8c9502bdab903aeed1c0046907', 12, 2, NULL, '[]', 0, '2020-02-21 08:09:01', '2020-02-21 08:09:01', '2021-02-21 02:09:01'),
('f9bf5fa3b29a784a3b3011dca6a9bcd656807421f309ac3804629b724aca2c45df7f2ef6136a4702', 8, 2, NULL, '[]', 0, '2020-03-05 01:08:30', '2020-03-05 01:08:30', '2021-03-04 19:08:30'),
('f9cecd1445bdd437a06d7c9d7c2ffa17a7fcd4622c629b75e3177e7c3153c610ed34700c78315885', 1, 2, NULL, '[]', 0, '2020-02-29 23:40:45', '2020-02-29 23:40:45', '2021-03-01 17:40:45'),
('faf035b20fe462fa8b42287822d7e89d41a69b1164145a400b1979444cfd5ee747f5218d6675e56e', 8, 2, NULL, '[]', 0, '2020-02-20 18:21:05', '2020-02-20 18:21:05', '2021-02-20 12:21:05'),
('fc251626eabb4dd31ce3597ef7fb5df2c75221dddf904324f7f90f048796ff70c752f882faa9b892', 7, 2, NULL, '[]', 0, '2019-12-16 04:51:00', '2019-12-16 04:51:00', '2020-12-16 10:21:00'),
('fd5bb9676286816afb868b07a4d4b5b425a4d2899e20482571c3125d44f30e6bc1615313992e0bf7', 7, 2, NULL, '[]', 0, '2019-12-12 03:52:42', '2019-12-12 03:52:42', '2020-12-12 09:22:42'),
('fe2d067f09f3b7ca24908a02130333b14d9a3e75c165715e36d4a8c2778b52eaf8129829e1bd4a40', 1, 2, NULL, '[]', 0, '2020-02-20 16:57:00', '2020-02-20 16:57:00', '2021-02-20 10:57:00'),
('fe3c2f16943c52def7c8aaf216bc64d867adb91142e2646eb5efd7f7cdb90076c0384da689a1b3e6', 8, 2, NULL, '[]', 0, '2020-02-20 06:05:18', '2020-02-20 06:05:18', '2021-02-20 00:05:18'),
('fe95c434970847f935de721c302eb5013d54c2a76bf4d7104ae02604523aa857846a9ee2258ca6b5', 8, 2, NULL, '[]', 0, '2020-03-04 18:08:34', '2020-03-04 18:08:34', '2021-03-04 12:08:34'),
('fec2ace5c37ea4116f8ef3531533af78dcc4ef9bf9de265429841dd753fd79dcb231e1cfddacecc7', 7, 2, NULL, '[]', 0, '2019-12-16 01:13:55', '2019-12-16 01:13:55', '2020-12-16 06:43:55'),
('ff8f3dfa3e7936028040107662282d0c6d9ca7c27c11975bb56981c2320e62089f99a112d9c2f04c', 7, 2, NULL, '[]', 0, '2019-12-12 01:03:20', '2019-12-12 01:03:20', '2020-12-12 06:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, NULL, 'Nexthour Personal Access Client', 'Z9kvpHyT5nzRQrGKvLoKxXces8bxDzexeqZVP5sA', 'http://localhost', 1, 0, 0, '2019-12-09 04:29:26', '2019-12-09 04:29:26'),
(2, NULL, 'Nexthour Password Grant Client', 'C2VrZuB5yr78fKGJcbPMtS4k6U1DAWePGhNu4Uq8', 'http://localhost', 0, 1, 0, '2019-12-09 04:29:27', '2019-12-09 04:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-09 04:29:27', '2019-12-09 04:29:27');

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
('013548048eb4b66e3ea479a4873de629f30f1a1ddda05d84935ea7727941896865c6b63368eabe3d', '3b3d19fddd9eea905107163ad3f44a2789614ab1045534b301b2679d29b052eacb375adc1a5f980c', 0, '2021-03-04 18:45:22'),
('0147b6464b43a7425a47c6148e53f89f6db58b1af6bec48a947168497c5799dce00e4b4abe65b03a', 'c093af827773328c75093760ea5f9d4a8fef0f9731dfc622f5566c112d2e29b9ec4ae619e46eb1f3', 0, '2021-03-01 18:10:13'),
('02419d5aa484475dbe8bd02b33d95049dc324b87e6753964586eef41bf904abeaa1f4cf7d21258b1', '59f99012b2c46b0e20ed602e3ffed4b31ab6e2d839fde10346187b516cbd9ca340a4cfe76d08baff', 0, '2021-03-02 12:42:01'),
('02f0a83ee32513aae35eba1474f496cf43cde526b32b4a857d636f8d9363c70138bea00515e2df76', '0cfd87cdf38f463576d37de3ec000dbc335b0d66cef0f7b67afd4d5d84d2787ef0f57cd34b8c0e0a', 0, '2021-03-04 15:12:31'),
('04cc733a317b5276e86706dc41946ca36852021dc06b070994b39affe9f856c019f058ae11efd75a', '03f5c5668c3092f38fd7411492857b9e39beb223bc27dd9291458ce8bf6ef57268b0d9ea8404d1b4', 0, '2021-02-20 00:14:17'),
('054ebf0c92b7d8c59de8d7b3e9e1eb8e95d26cb15f58f15b7bde2cee591f7b5d2e184c47549e06a3', 'b89964a3c7a623bc7ae615e98524042defe7409ae0e019de5a597aaccce472e1a7136a99b12cd4d4', 0, '2021-02-20 11:39:21'),
('06aa2d55aa833621aa2544970aa62397a51f56caa0ba54aabbe95aa8558620a5b420ca7c72ca924f', '502269ca4d12766d6ad16f21fbaae709acc587d06525143b4e8e0bd3b1048b7fa3e71dcd9e11dbd3', 0, '2021-02-18 01:30:20'),
('07f4d425739b38f3a60fa2d1510f616f6019c0db4606f3aec56577c8dff5409a19863be2cfc73560', 'd90e193d2542d76a1d924601524d83345aa82f4b814a7d0f26b70114950a5d9bc54fe5de199d9f1c', 0, '2021-02-20 05:59:54'),
('084614ca2b2dd4109d1477b46426e72613a133c36cad76d484d366b44023e26125af67745030ab52', '932ab183a800746cdbfdf7becb3cd9d1cfe94a94d303620a3704d84a08eb0c7131188e02de776118', 0, '2021-03-02 12:33:44'),
('08ae08b1bf85c850bed1fb877a83e63f3645060afd177eadd77f7379bf2f2f2ccebfae73670c0925', 'cbfdf5c44ce8afdce86af82820c86bbd6c86a75ff6c51714eddfbabf8bc06f85e1b688a9b839ae56', 0, '2021-02-17 05:38:21'),
('0bb07b83169a5dc1676aa33da3abfd5224906c65c4cdfc9f1dc998a46e2f03c62079b6055051d760', 'a12f051864539d283508b8a3805b85866e69d2350bf339f1c5073675386e17ec8fcdf250f0909c0e', 0, '2021-02-20 05:53:47'),
('0bb18d962c47bb58f9d2246dfecd61ede68f8088b672c2ff1d861d717129d55412b22677a954c28b', '88d8df1c31740d03113e9220036b72a8921d573f2a4f59a99db04dcd7e7f6d604a8e2ebcd7d03cb7', 0, '2021-02-20 19:35:50'),
('0ddbdbdcb09d49c11991dfb702b63b5f86989ed250dcf656f65d2edb775082089ca670b30fbe5a33', 'b344a71f7cd63bd993372284398e1fca596a1fbb977ad9322c65739e5f8d3f9e80538cd3d05066d2', 0, '2021-02-25 20:41:25'),
('10253c966c83bd8d55026489103200a49878659244bb1145a141fef7959c19c6c8e61a4dfad9785c', 'f9cecd1445bdd437a06d7c9d7c2ffa17a7fcd4622c629b75e3177e7c3153c610ed34700c78315885', 0, '2021-03-01 17:40:45'),
('10fc188268f59a3c3846719b52a842b972adba0ad5dead5c7c8c5f876f0e6725ae3e4236c5737244', 'd90ad227cd727d9c957f7ef448f499fb8b8de7d1c1efa3c2baa1e41b9d0ebac4cd42f36f6211f233', 0, '2021-02-22 05:41:56'),
('127ec06c9e03e3a0585065ca56bebf6f5c37f250beea91b3c01b29ae55afac97c6cd15687d132fcc', '633e11d981be32f15179ab358f0e356d4d575909ed9e0751b65b7963e48609407db3d0b797f6b83c', 0, '2021-03-01 20:19:12'),
('167690b58a914cf2df2fe35205e23f943971e6957fa6811851a14a2146bcf60cd17710f9885b7d01', 'edbf4e1c41a9ba7264932c12fe871cfee4f3646bb04c3c31b2bfc689a2466e236be8a5c9cb37374b', 0, '2021-02-20 09:13:51'),
('1803a803cd16cd47596f686562798c5677bbcb0a6a2c7ab5934a9d6a20ce340fe24230928892bba0', 'de1f929d1d816466cb66504d67668ed5c238363e849a4f9cd065ba4e299f6aa05312b5861389be14', 0, '2021-02-20 10:23:20'),
('19ee6726ba852694cf8de370fef7b9a5f584cfc7259ef5c9eddc76104ec75ea9d7898070afeb702b', '8b66c8596c0910ebf22a88db07cabfe7a92a9ad740178f493668910f7c3c3c79ccbe196a573b3684', 0, '2021-03-04 15:13:24'),
('1c1d5d1fad5d30a06c05d8fea4fa865d951c42b3ba8623211b4f38826afc6a6d4370623dccb60b18', '54f6d0dc526c2f0d398f99a89c56aaff1b223c4a8d972159f08fffbabe5b9a47cf14f15d2ef6a999', 0, '2021-03-02 12:15:27'),
('1d75d4c4b9951737a265f5cdd24953b0437e5539453d1de6260311bd3fa2852c7c32675427aa981d', '23246c3ffe76f03f22f286d7eb505dba23ce9ebca82782f1004dc0027e5436f0243ee79620a3b9db', 0, '2021-03-02 13:13:55'),
('1db071eefd2449515293af9cfad63c3dd4e855d886e310c7aa7d70795b98eb33515330913d049ce6', '39986c0d6eae646956f3b5e1fe2e98fb2716894e9706681d45d79e2007c7135122143ef868e30b6b', 0, '2021-03-04 14:51:33'),
('1dfdc6c5ad090a3fbc7c8fe03a6de96b58c1a6b3b72504d508f4721c7546a48efe3ed92089764d1a', 'f6e4a63370e785719b86321a00c25f29d4d8c79ea8f745d2071f6f94c695f826d8d94c9b57cf0d7d', 0, '2021-02-18 22:31:14'),
('1f12cf3e58d81e4b12f8ffb22893f4843d66e9da67ce7a10594fa07d54b2a1568d9710caae55f558', 'b4bf80dc63ac4cb469aa68fd319a6fdc686d163b0f729472aa1714d0cf5022af3f6e35784cb90477', 0, '2021-03-04 17:49:16'),
('1f4905fe62e1dc88255ae72358820435b9b97afcfe8b0300c416e436769b6195830bfc37c2b42dd4', '126a8f9e2aaf11e5dd43f7d25700da8df4b5d7bf522f1ee5cebbc458b940edce3164a657fc14f015', 0, '2021-03-01 18:48:59'),
('22033fadd2ea616f8ca5118060623eab76445f6a5ce8cfc8414a600e089afd27545abce0428d3b5d', 'f89bdadd2c34b78330e0a86f39527e51fbc96dbc2fb5f7216a4c1f8f7cebc056e82f9cbe29330365', 0, '2021-02-20 14:57:04'),
('224a56d00b6b6d80c0f169ac5e5499cec802dd0775e3ff129a79b49eeeb3b4e7afc5f318bc6dfa34', 'c91209acffc0440140977ca200123bdf7a6061094854bf488c437df92e4f684b0d203b968333b7e9', 0, '2021-03-02 17:24:29'),
('2284c5600c122e2c4308063df08827169882416e18faf9b0aaba59776e91acf4bb45cdb8810c8069', 'e764d53ac9ce10dadfa02cbd9ea09036fda15baf44cbb1e34b1c16bde5e658c60e3d7f6e08d03343', 0, '2021-02-20 04:15:16'),
('239e60e466757227dd16013de8fc7e99f05cc6dbbb725ba242f4e039a21a8632692cbf58b8b46894', '8a2f0ead6d11827c870c563702e31350281b02665989f9623b23e0748cc8100ea42009eae2a21b05', 0, '2021-02-19 13:40:07'),
('269001ce9ecd1663566123af55c667dd4e82a08e9a40a342d3e260a547d670cccb817c614a1473b6', '09a3ea8c15b0e660a9b4d3d03ab3635559e777fd22d09fd202730d21354bd89d856f971d51af6e92', 0, '2021-03-02 12:07:40'),
('26c0399f7cf6b511a3f96ce192d0e26f1912f337af7303a072913d89acda06fa4240f82a9a43481b', 'f6242619620d57e99d72f55a47422d01033dbc86ba6b250da73dc21369ccbb2084097b30a5b97dab', 0, '2021-02-20 00:17:35'),
('28a52ebdbc66f3b7e9b35572d881c0fbcd9dfb33a2c86a8ea3ad4abb3fb301f18f456710d6564dfc', 'b07bfc4e1cf53fb7cb5b5d88dd22526411565f72ed7a015176d9802a238f971b3eab339ad0c41e77', 0, '2021-02-20 17:58:09'),
('2a45d44c6231e0465802ddf915f7413dd0f8d2ea570423282aade2852e33c30d4229874ea0473259', '62255413aff956bbb862f06fc9856325295c2fcd1b97931ce02885d477b8d51313db634c593cc442', 0, '2021-03-01 18:02:39'),
('2b71b8bad2e83acfd7e0022ab2cde66e21685dd52cb39bf0962a140216adce48df39e6471df01957', '8a5323c915e7d9f57ae7cc0b887573aae8b6a2fcb15fc42f9f9760648a951eddcc26e2af41ba58b5', 0, '2021-03-01 18:21:52'),
('2c3eb89e08d80161eba749b0ed0df1e470363798842455264659c131f3f0d765dec2355c807ee574', 'c0928acce624e144c296e3bbd3739cdc294000828f4bd1e265b0e1b6a7733102d798baf1d5d374a7', 0, '2021-02-17 19:54:44'),
('2c5b36758d970474a2f046aa910e77ae230193469f2d74948da1673e999f294e10b151e51dbde97b', 'f47719483107c04bb44189682996cc2fabe202a0649e4817d0501bf24116769bc4b2d40bf0d1ca30', 0, '2021-03-04 19:00:34'),
('2ca03df43390cd91ae1bec98aa0af0a30a235de62350d9ba562595d5c2f938fc165290d594118e94', '844c50111f5909c818f873ebdd4956da086d711813bc0da7595b4e8ee9eb61eb3ff03bdca7ad280a', 0, '2021-02-19 19:09:55'),
('2eaedf189570063c08e9500c325299130670ea38cba807f9bf17590a6af1b0f12474910fc218dec6', 'd5e9bf9217bf9ad040c31bd01c564f9f7746c1e7b00bf4cd03a71969ccdf4b1763a336d1a3922aef', 0, '2021-03-01 22:31:07'),
('2fa6768b4499a54dbff3d72338791d4c6748c28c52c59461e2e47ad7b4a72b05310f4dcd7f56e711', 'f55ae3a5a9b63016c3f9f60a763585ff4f86ba16a9a267996ce951c9077fc367a7965b4a2c54acb1', 0, '2021-02-19 00:26:22'),
('309ee80f37914e7ed1b2bf1a352e55aa7eda18b6d6e3be901c366dc1f7e77aa414eded9a04e15976', '77a474fc8f11cb4f1ce16c984d48d276773da018bf1180200d17d06538f84eaef130035b15da3db0', 0, '2021-02-21 01:07:13'),
('31086747649be6d99bf312f3f8be94ac2594332b914115582c0889185bca1f0e98893e192faaa596', '31df81974205c025e3d7d5b92581a36e66dda894e0e2543a9042b749489942d9fd47ce0fd71cd808', 0, '2021-02-22 20:46:00'),
('32ac13ec34ef6f54795f17199156d19502c527685af914e31224da1ae737ae2f3a6db859aa6aaeee', 'dd6d22ac8d1986cefdf8a48d36c4fa087befee04301131b9ae4ebfe0a4990a98615f1baead376d22', 0, '2021-03-02 17:47:59'),
('33f9885dde3dc0fd41a66bc51c859ee7e9cc9e4e9af8b3625524d3a169474d168cd023f4a5e9db91', '09262b9ef5730cf80938060a1a2a470658392ddd9bc7814d2ea118423fce451d686532733673bf85', 0, '2021-02-28 12:07:30'),
('35213e7d16f67951e219a81b0df36ddbc41d43c641a3e83a9986bdc71e635d384373927117d757f2', '26eb2d46303ef1eaa833f1f72ee6f7b0d43d4bf61bdc23959ceffb4cbb57af115faf65f678f1376d', 0, '2021-02-20 00:15:49'),
('36efc0ed966f4d820b742cf5afb0e7693502b68ee7fb2e8774eae544034de926cd486c26cfaf114d', '87c1899f1ec5a0bfe336c0b7fa4de2dd2fffb7e7d30f20a6146adf6056f2b53ba633cb4c568f6118', 0, '2021-02-20 06:58:03'),
('371a41978ad5b3c6f1f8fb445d17371dc22a1e04b783e3d73c8f123c3c743cf3f5839c79eb7abeb5', '3caefd3c548c5d13b0fd19e4f677c1ad7f04e1c054a5b7fd59ee19e814b56071de3575c3b36b04a4', 0, '2021-03-04 17:32:04'),
('383ef29f96b01e7282831405db9516740481f2904ab86017e22996d122452c2c670cf0cffc786c63', 'c3323f971c358b3dcd526a1f6880d4e9679011c731b6abbd882b5cd48feb55953221d208bda6c692', 0, '2021-02-18 18:35:50'),
('39257333197d834f513008c0a8c345ac7918f9a3a1ffb63b245540398473306c58fc6c653b97f096', 'aaa04aa36f99e1fc06f79db61ece770250f694dc8efdee8bebf84ec39dedd633715577d8dca11d07', 0, '2021-02-17 20:46:37'),
('3ca580507777a05c2b29aff3ae5006518082e1e6c16ae6c1df945e3944c4094248baef1e2325fc4b', '2a57bc8c13aaa1f58ccdee451d942d553b7165cfe05a4def838be4542c96c3ca1932e881cdc5da4b', 0, '2021-02-20 09:23:44'),
('3cbf14499a85f8370cf9aea573a07f71fc34ba3028aee97a4d8a10cd6531cf06dcf21e7825512dd1', 'ca57c0bf2f446a2a9a1434988dd609ae5b889bda6676d3aba2165509b8276aa3b57c34589e28793d', 0, '2021-02-16 06:47:42'),
('3e532c2de21f1add9a06aa35c75afb4d36430f6309c3782e0cf65e3d79e6644c42193c3d4700f2c1', '6da0e5d926a7f671cd6e032687794051c9cc4568bef582d770f630108ccd017651ccce7d22d534eb', 0, '2021-03-02 13:09:52'),
('3e6729da9c7fb9328828dd5d4573967f9bba068c8a59e972790c2837f131ddd4e5d0a02acfbbf9be', '200e6864068e5aa691fe4f074efc034173e2ee3f6f04335a7ba7fb5dd1868b1c72fa8a256ce75188', 0, '2021-02-16 06:32:35'),
('3fe1be2aee5e36e94b5b64490dc9f07cc46baa6e986704c7e4cb205af682eda6d0f41289e4e32fcb', '3e1af95a7dff1f4468a7965106daecff50600b10bf0e08b6af6574220e125616c1439e8d16dd1862', 0, '2021-02-19 23:07:11'),
('41782544cd6707c39de23da3187b296c41567885ab06ef1612d571407cf0918f3bc16e8dcd209168', 'df69627ebcd04223d02a88e7b99bd02a78bac0fcae69ea0ffe8daa6c118a5159a4b1eddf825dfd42', 0, '2021-03-01 18:04:45'),
('4196b20ad81dfbdb82436b60d22e7bc3b60e8c51ef110a5995bcfbfc236c5bf2f2b803bc110890ff', '50416f36f8d83652e135afb3983628e2839a55a5c374d19f10b42de48dc293ee1ad7285b120e2727', 0, '2021-02-18 23:34:26'),
('44079e7aee63a8be34131427cbe3f3dd23d8f73069b6d1b519b4bcf4df80bdf7425153c61a468fc3', 'cecebd2c2230ac216541c5846ac261f4412331bea9a51ac38e54c1e5090c1be8c094d6d2f93bf81d', 0, '2021-03-02 01:41:22'),
('44a841d9024c3a3a64c4c09b3ea55b247d41c520b1100369fd93a434761cb78bd9a3e897ad44bdf7', '119b6a9fc4b2b21224642592c8cda0abfff3f37f77d5bfa52f87b7b660f9334cfacb40e1774111bd', 0, '2021-02-18 06:40:42'),
('47cbed67c26124e13696374af6d4f1d1e590eea3ccaf31673eb1a8abf39c0f84ec3314133e309954', 'ee580b6e7da26debd70a5949dac70db5ac61bc4a73dc9bf4d9dbfda74cbfeca1b59d82c38a33ece0', 0, '2021-02-18 23:37:34'),
('4a6605a49af6865d56dc1351424312d0dbf2419594a143ed1e7aa63dc02636ecbad87a8911af44f0', '33ffaa112289f4201beb530afe109951cf87f89ce38c2eb0f7224c07d2efbc541d52c0d76a729d3c', 0, '2021-02-18 01:40:33'),
('4a7ccc3f30be1357c4270e2c85a2d6e6b4c5784f47ec6398fb5b614f5afed6ad4e843cdf6c9afaa9', 'ef00b25051559b015a18fe9638cae348f291de9d16986e9d62c9b39a7b7713e82ab3e339eb31b8b2', 0, '2021-02-18 21:59:38'),
('4b0139cb08a76d596be2ca8f8289441adb452d95ff97cdc6002eeacc58bfa1386e4834eaccf90170', '1f9ca544b8ce37c510e0b997bd009ccbbf3bdba5c16949650ff1fd8e96af9b7fd6fa80389890dd8c', 0, '2021-02-18 18:43:37'),
('4b4d7694b7e713e961506801e5d0975a39a24ec64b2696d96f38a4f154297961c5a5219e7ff39846', '1867a511717d988d090df54671cea6bc7bc7f7699129e5eb59535178553dc15e1cf6cffc6b1c7988', 0, '2021-02-20 11:09:15'),
('4b72bd5d1f1131c157d244f680d1e358ecf36d6a53a7c0369f7646ca57b37e3acb538039fbcfe31e', '3417e1b52326d7a8e6d44b4c4d0e185cb449f69ea6c97b3e900ee374699db96db01f49659b68c0a6', 0, '2021-02-20 07:03:48'),
('4c00c1675e80b28f544cceff31027030afed0c6b7a8a9928d0e1e0197540b7fe49fa0430183e54fd', 'd53adea2fa5fd3447038634c67bf3708a46d15d6b0119336e4d85a77ea401453921be17a5106ee7a', 0, '2021-03-04 12:15:55'),
('4f8bf06deac0d7b1cadba2097ae9b2a7185a9655042fa63fe043b764afc89f4e11e92b6cb581fbd8', '5dc295b784f93b1fe035ecee240c2930cd0025362b5214cb0e2155ad5c6a01c55286a6f76abd6867', 0, '2021-02-18 23:43:18'),
('50b9e9d1f3b0da0c1bee6e30dca1a5a15776b20656ec74e61787ddaa137baedf7d6de6de12b23ff5', '8b72b7c6c4c86fb5e2fd67eb8a8656ab291500c243fd830a1fac463025c2fcb97af297246181b87e', 0, '2021-03-02 13:09:52'),
('50df3cba15595695d2ca1e85ed587c3e7dd484e40251adacc6f4fcbacf3d0e3c2043a1023de55306', 'aaf7efa248539e9051899f6b4e716f42460403923f342cf52382b1eb4d15e2f3e3cd3f39e2014ca4', 0, '2021-02-16 05:56:53'),
('556bb7c7bb3abbbb77f38f4234a1d61bc7d9205cab0ee6ff3fadcbc60d4d07f37887793f3e9f10b0', 'c65abeb5d0cd7a50b0aedeaecec9d205506cfca8346f1e14e61b80b5e16809b18f8b93b9c3ad917c', 0, '2021-02-18 23:33:29'),
('55aeb4ffa230f02b6bb016f49678e1bd0c0a4217eee5982eeddb7295172257809b3fc961f1397f76', 'f678ebc3cea9c6a9fbff81a4994071b75f34c7c126a5a13888588db05b938788816b4a6665b15757', 0, '2021-03-02 16:29:12'),
('563b532f90c37a83ab36b35dd5ad55d938b4443482841ed7d00ae30738f07986bd78bf20ac1528fc', '5c2e6e5584de3ad6974afaaa874cc742e97e3e35542bcccb143b12d557c499cbbb51571016f3186c', 0, '2021-02-20 10:02:21'),
('57054b3a157024c2728073f192d3dff68255c2009535e59071d8894031c35dedad099a5f5fbb66cf', '6d7c78fc56dd2ead85e7be160523f825f15e31414d4978bc53332d608d5d9a8193f832a6673307ce', 0, '2021-02-20 07:04:24'),
('577e1b8665f0d8405e75b6cd0c54c025772663a0b05d3313e1e5bfac6950bd39ba686f2472cae3cf', '11da0d029178421b2b1dbf07a4aac1a55b32f6318d155c61664a2fd9aa8406b718eb58b3dbc1c357', 0, '2021-03-01 18:08:31'),
('5921ffb126a55e2fb27a3d7a4068b9590228e250ce13da84fdbf5b102302d40c40c78dfd73038c2d', 'd4c98dabf35f88f4dab95dfc1543999a489915995a8f16af3484f33b6bf607030b1564b0ab133225', 0, '2021-02-16 06:55:52'),
('5967464e1d957b73f3904a0218a2164e124e407568d9dc3e2f816de53e372dcf54c95859a24b84cd', 'aff8b78d52eec6b5cdbe8fa0d3145f7f368cbd0d7892d791dfdfeb01652a0c7b1aa0486eadbbc0d8', 0, '2021-03-01 18:17:17'),
('5d106c7c01976a40fce8c782824d6c0e920a8bcf76293e8cae1fd5b17bb7b1bf6d3c690620643f3d', '89110d9e995bc34f0587bf7b84c4c7c7bd6e1e2c8a0e5cf393fa8a1efbbb2e8d852a25c0a36c3540', 0, '2021-02-20 01:12:59'),
('61c7314391941f995557e1abcbc43eeb70a8f900ea4251185d1cf1ab7b70913b9ebe3ca95236c554', '43cb034b8dbe8fd860229825c553c01113c1a61fd8396806660938a4539a18072f05c3c029fa0f4f', 0, '2021-02-20 14:10:06'),
('621ccdb78e7a965b11a144c9cb69cea9df271989abee95ead0e472e10c70897b59c323dff1474f38', 'd9b90440cdd50da8d1ec37c9ae675eebad7aa592371c18437d7d42a3ad1198459e9c8cbf0384344c', 0, '2021-02-20 19:27:38'),
('62943d28e5499979964245b102a7078d29899a7c0210635aded4709fb7b2c7b01e4788a6f676f907', 'b9989473fb3aa52d51acccb3e3fa8df9c2b0db257bcb22da9e533242ef5c3906fb7b078c79512ef6', 0, '2021-02-16 05:56:19'),
('62ccbf2f42a3c5ad688fade2ca69c1d7f50d38a46108e6fbbe48f149dea143411d1a776cbb0c2c92', 'd345b8900b57b2ea747efb6a8f19b1c1bff6fa33b0bcd26d91a518076011d843b02d4f00e74a6fce', 0, '2021-02-18 22:34:56'),
('635c4a33f8ef77d18b504f21ef3ac79a823ccf8ebe32317c88340f20ceae4078903386e4ceb5da9d', 'b795dfb9785d0383388640581840c6f8f51cbc5033cbfc4998f6c8544dc7f65fc9600840b49325de', 0, '2021-02-16 06:28:27'),
('64fa3c88c9ec9cf2a10c42d5c1974a9700fc6eff203f3587d28d2917e4944c076aad96a73e2e7a7d', '9fb9e7e72b018fc1bfa0609356253d4f0d781f66c6b8afb94063af370de4f2cc3ce63bf5be674f91', 0, '2021-03-04 13:24:49'),
('665cec8e88ff59d33d1a6cf0c1a89d623715699297f95583138e2a9fff9f51975129d1e5a6b6a0d9', 'ce01d232935d784fb7c33bf20d57dcd74e1e95505ab47951cfacea7e1106de819a42db90960eaa92', 0, '2021-02-19 15:50:42'),
('666d230f003bb47139851a4ec9ab533658052b0bb105b59c9faf743fab92e4f157338f7ca367a974', '1ca4fc5a8cc82681aae0d025e059e043e87bce3263bae049e8d3cd4c6e2038ddd15729db2de1ad53', 0, '2021-03-01 19:12:39'),
('66dfa8d8e7a2c722053f6903a0423af55fbd585de9b84f024f7535e30b8ca9713167188f09f12f13', '8e029e55c527e2c40015c5d6514f6fd45686377da4f8802211a18f7910cda53b8a7fb442f3b2b043', 0, '2021-02-20 06:42:15'),
('67233e19f84623e7f71dab4560b74b22036724762642a13d93eaacef74c23b83fecd9272a6d7919b', '842f79699e44ef194854e137402132a2824363436e9edee84ebdb65750f6aa84cfbed9fd58a7b4bb', 0, '2021-03-03 19:25:31'),
('682fc842aa861073c6b77cac8305467e23ebcac217cc9f575795a314ef2534375ce805a8097df95d', 'd9967ecc2aab7531b645b372541550c691efdbba7641d940f2aee9c4c1abe4659a44d98919cbec94', 0, '2021-02-18 18:41:08'),
('6840614f1ecbdb129a367119c8b869d0dcac9bae61012baf6d7e114378d8c84c7217f51c6e18203e', '163e945a9039fdf03f1c662c17035f2488a385fbc39a20cd2e3492d92310fe2a6fc083d012d67bc6', 0, '2021-02-16 05:54:23'),
('6906c25283c35e35da942152ed1bb0dd6425395b9d228c7e298e82f59c794b98cb9fd5933d10184b', '8d5f5a53aecd0a13d2bf5d9d39cb7dfc24769c4347500516e70dcc238627554888bd1b38ab13bd50', 0, '2021-03-03 19:35:30'),
('69af343caf90b3f996510a22e20826fdd5c9b1b0010926224ac57f6a9bddc9ca2eb7755aa169a6f3', 'f9bf5fa3b29a784a3b3011dca6a9bcd656807421f309ac3804629b724aca2c45df7f2ef6136a4702', 0, '2021-03-04 19:08:30'),
('6a93d6390cc167240c4efe5a9df74f9c74cf75dac453ba0c49f30b5dd9f7ee4961dd8372307e2fc8', '638dab75f6114fd44b2912ad31be45f6ca1e27740deb0ee75eaf2540f6ce1c129f393d04c36ec5e3', 0, '2021-02-20 06:40:26'),
('6b1e6948208c0be5d4ab52e5a8f15d850999bb7352a0e19d69238a4b885dce219d01933cc055f16d', 'ce8213f2c1b8cc230b49489405da8c41756c9fff8e261520c9eb3118c0609fd9e578d8404f52a329', 0, '2021-02-18 01:55:24'),
('6b29f4eae30e8c3a6fc30948aeb295f76c67cd63f149f8289e08fdcc8501e7a882636801b07eb22c', '6d8a4b31698d6578b8174b5084708c54f97732d94bda270ffb9d3a7bccaa2ab73cffca1cbf573228', 0, '2021-03-02 12:44:11'),
('6b32747c49810d81e8c21a33bc093f54f7004c6b3082c88d690bd7c3521f8d867e2375e96f17f030', '4e27c85c39ab18c3b8f70eb1eecb7631496aebbad192dd292069c0b4b7045b2bd2b875640702bfb8', 0, '2021-02-20 02:18:30'),
('70e12dbda0abb26434f8546f9deffd680325b6857589793a79d4adacfe390df194eb26f251dda5c5', 'b601b11dd2de1130390005f37ca370c5deb4a201acd5ef7be2fe3c09a0fb39f44fa920d510dbee05', 0, '2021-03-01 18:14:11'),
('71528ad1d29d0b5bea3777850f9bdcb899380965bb44d1198f5f002e7d509b291bb1b6bb5263f0a4', 'e2181b77960323154a752eeb293b63464300cbc5b2efff06136fdf1ea2103edc3b59a6ab0a3a2e8a', 0, '2021-03-01 20:15:47'),
('723fd3df8faf8339228c28b57c924010099cb65d0e691d20d601abdbb350be479bc5cd6221a9b132', 'fe95c434970847f935de721c302eb5013d54c2a76bf4d7104ae02604523aa857846a9ee2258ca6b5', 0, '2021-03-04 12:08:34'),
('72b9b5412549d52dcb540205edfe33f685f67e7cc53c1e8c3b3ce3e6311ec757e334793516f12222', 'b3d06ea8205ccb7b67584247a6aa81ee38d2f05fd01230f941aba9e530d4047c8d70d564b08e3625', 0, '2021-02-21 16:03:15'),
('73b3ef22f34c7d11e0887aafb990a369bb35fac183a899779157838361a29b66fea57b55c81923d6', 'a14ff4a82167e8b1d67fed5e6745a721dd8a48c6b78edba17425cbfdc3055ddbc6eb631e4d81038d', 0, '2021-02-20 10:30:04'),
('76f4a10d495c4fabedf8997e4e11c42c4521962a4cec576d698f46740457c8a0a23d95611ed8f98c', 'ac997b3fec8e4b23c5b67ded48e99f662ee5f6e63e0dae3b2214cb0bd3644399bcfd1fd3fb091788', 0, '2021-03-01 18:20:34'),
('77712cc3e12f508f18427b6809c8103bbb963f4d253da6fe63eb6a128cd846ec04a0bf3eb13c9bd1', '14438c1282260229a2c33a447ebf239e6b85c674b67967ec24d2c38c900b1cd3f0c4a4fc0f1fb42f', 0, '2021-02-19 19:06:12'),
('783d11a917ea5d598f8fa313013818ccb17ecf524a7f1ab4cd9e553b68a8353b71316f5d943f79e8', 'afb0d14bf3103915888d50c9e0669ad2f5bf073a204e7f182dad2cdbdbf32c41845e0c13a1ac4f90', 0, '2021-02-19 23:50:42'),
('78bfc1bef02636da78dbaee7d195130751e54e3f21c9ab9fac13472f4d4373103e3b35724ec55d5b', '7d1fb79d709acb9d6090b5ce70fc4644c1af9d0f7da669b85e17661dd550a17c318f6fcc0362603f', 0, '2021-02-19 14:47:35'),
('7aefda74b159d4fdec4e29ce6c6b1f6b9a14b16897a9ae3b4b5190871e18575a6bd0837a241c0186', '38525c908b88a34a1fd95d3beff57769490800e16599eee9e4a0a78903ac622aebb5e0507489d3a5', 0, '2021-02-18 22:07:00'),
('7c2b32b960af4938446498fa5e464798e1fffb37f7c03661a96dfb9de8276b3e0a5d338d32684676', 'bf4dbc398044d4e9e5784a88e9c86874af36ff32aa5e9df58ffc563a95082682144d1b17aaf0a1a0', 0, '2021-02-20 04:18:00'),
('7c61a90834f14f8663c96a154074a4cd6d335979a5bb466ce6a719e054a428052a64851bb3c031fc', '9a702f024d52411d7bca70ad2ce4f308292dab9242ba5faaa954816c45ac60b77b6f1ab5672c32b3', 0, '2021-02-19 15:52:14'),
('7e12c1a841d0357ee815a898b440415083abccf8df142096dd8c33b4a3fb99844da442b334efee9f', '33d086340b8eca00f5fb6d128b70cadd1365c73c2698a75051cf27414865c713e0b6a6fb1200f897', 0, '2021-02-18 00:25:47'),
('815bd51b089f3c0fc737150778c915d0ab810dadd095d0462d6970d9cd46813009b4a91015c7b0bf', 'd1836cd13584ea14463dc0230197eb3bb63af907169d931fc42fe5ac8f65befbcb0ba75663c7c898', 0, '2021-02-20 06:01:20'),
('81ca23903baf1eec0c83c0ac0fee775402b9af9799e102a3ea18ca1cb22e225cbcd274098b01c5c5', '99342dc0507790dec07e247c113b8c200b3f947ac8be90e3a8afb1df84fd32c76a00fc79e4b41790', 0, '2021-02-28 19:29:30'),
('81d9b86c59531c1a50a862d90796fb6034ca38fc8e1af43dd083467896ea2b1fd8c76dd1618a7f76', '935e2da02c47b2d9e179a12253c727ec17e45d7327e284c7cd6d1c112346e4b2e0b3c8a6311b3dad', 0, '2021-03-01 19:25:01'),
('82663ccae3bb4cfe4121d5ce442b0ce554f49eb63df82ee309a3889c3f89331b63a8afcf4d2525db', '96794f8a4ead0246cbcc9f1f21b29657f525993004afe1c4681c9a841e74458646cc9ebf79bd1583', 0, '2021-02-19 18:53:01'),
('85b21420cf14af9defb33e1753ce9bb2317930def73f1e9580c66c239bba96944a250ff86109f5c8', '3078a7c5eb0874221a90d50287f3c064f479a3a8e9efaeeb232471c0977efd3e30e675b7ac0e4e0a', 0, '2021-02-19 23:11:26'),
('888d57e045f2a820fc28910c559e8490fe5de283c991ba67a5ef6fa4f838005fd4bda8ade24e423d', '4702b738cd0ab527dccabe1b2776985635eda6761015496247fbbec1c2bbef5f5def329b194f543a', 0, '2021-03-01 17:57:01'),
('893ad7beda916736c7966d05c893d75e34e6c08c5625d54581c3d4a2d28f1c80ddeb43a52641947d', '3fe783c85c735bac0cabfed3e70b68d0929e029d45b37751556fb39028ee791ba0d4d38b3638d204', 0, '2021-03-02 12:56:31'),
('89408751bc9f82e000a475ede4202f70f65c7c43bd8c069ba4b358abe84c50df2bce5b06e40f6804', 'b30662530f5dabe3c01e006dc6f6dbd3e73efab7231d71d19274eeeab8793a980e6cddf745db16d0', 0, '2021-02-18 21:48:36'),
('8a4c0797f0336f7f46143f124629dfbe75797eba299e6741b41ec38c2f260ab297a61f63fc0b2647', 'b74bb0e116ca4692cde92d35c118a17bb67bd8d9904576bc0d5e40ed752f67ed19a15851221ca12a', 0, '2021-02-17 05:32:37'),
('8af9221f5a1c5dea7e41e8cf3e7e53815b807680117ffdf694193325b0cc4809ffb0f191ec50942f', 'ce9b4438778a7d4f57025b2ea018ca8dd1134f62caea5cccf73cd6301022b24bfaacfa6167081497', 0, '2021-02-18 23:13:33'),
('8bed894ed5cf4c28a4a1c1fa9dd771d72f3ca72edf70630deef5e6f870961b73b44bd67d8bae2578', 'd1c41ddd92091b028c4356820093d185ab9edad1b11fbdb5164532ba577ccc93f35ab6aa62333ddd', 0, '2021-02-20 18:30:06'),
('8e5b03394f523fcf72bcb058b9a5975216c3ba46330ca282c3731dd33dcfb9d5cc44469174701c34', '308d7f6df84a31879997723d13ee8cf1234d3977c8a5a48bb106f149e27164fa75efb2794e3f2d4d', 0, '2021-03-04 17:45:37'),
('9640498472f9c5184a19cabd304e833fa3996ee47e81fa6b8377cd951249f5ac8867df044423f148', '6116ca65fb93e858d20d4d0bde04d9ad36fbe45b9605171e18146e7e260b57f105661f680c04b607', 0, '2021-02-20 06:44:00'),
('982dae1246a2df383b13a2cead34d1984fca0c4236f8fc74156a5cc35a96429a4635e5b537489787', '3be440a97d63c32cd3557640daefd0d2dc242bd51ec6a87d0d539dbf97ead788a6aeba6ef68971a5', 0, '2021-02-20 18:37:50'),
('9856803989b2215d2eb6040e81050dd7e92f63a4d3e6253994fcdac6ee88192836c2791f2d46da94', 'b890dc43511a1a27e5f706d8395840850ca61dd892b0d2e7f9d41dcf71ebab7acf600d434c5110f4', 0, '2021-02-19 00:45:04'),
('99e26bbb18923f9eafbf2dcaff4f9828720082a7cb4e267fc1dfebb19ed1eea86d112b79617e20b7', 'b4991960fae5200a96e9d0fc4ecbc93f12559664606cbfd0ccfdc9a22aa42bb9a0c288431f58804b', 0, '2021-02-19 23:56:32'),
('9a69865da735e6f689276c98059929eae97e54fb9513c6057e30b3ec251add68001825ce70cc2819', '2652fc70ecd60cf93a16ab6038d4bdcdcb7a24dd46167602737d5f4b5ea67e5b902f3ebed86ff8ec', 0, '2021-03-02 01:43:44'),
('9bedd55b766dd125525d0f1cb477b3cdc4a7f7f32447d80d3d83162ee4cf06039d55a964bbc44b9f', '12a580a9466e96ea09147a23ca406a638fa05b515574a2848c58cb99b688770ac6d09dbae1bafce1', 0, '2021-02-16 06:25:38'),
('9c1ddd71d41c69e81def3e2fb19a9930b29aac3e913a59ff0480f6175a2081761f71b1f9621df770', 'e04759ca548bb369233c464990d544e46b11df197ed96392f4ec53de43792dfccae4c3ce93a4e5a6', 0, '2021-03-04 18:58:53'),
('9c4b6ae7b86aa14dd555371e57219bf9bcfacc43eea2e5f7855da39e011d7cb464823ebc91478d04', '26c7d15485257f499fd92f6bb4cb139ff0a6ed399c09e19f4500df7c213307df9c84f56517c6a01d', 0, '2021-02-20 01:16:48'),
('9c709b166ca9a105a8fd34b5a0dcd509585d7cd652957ed29492a7ac6f7e3dc8b13d86108f7d73c4', '4550f2f2ee3cde69b667a0cbf811711395b257905850f862f56b44c16aa60fdfb132086b1223ea35', 0, '2021-03-03 18:35:13'),
('9c74fbddaec995d2eba21f8d73632100bb47eaa6e7ab65ee2f2b8dfa8543f37d274cbca9e6796469', '3bd2bce375712a695f3d1a28a6f6157b86d8f3abc6e7286d5110494f21b024c5b1fadd1dd2982513', 0, '2021-02-16 06:33:08'),
('9e4c84a3a6fa011ff22ccc80cd09c742dbdd4ea4fc83cfdaeb13e84190a0e9b2418574d7cb7c6e0b', 'c31958f9d3af081d90708ce1854606b6a8e1e0473b9cc18d4d072b800f921ed237b6124d4e8c6fce', 0, '2021-02-26 01:42:29'),
('9ebe7199d4fcb1481c8975cd393da5f2a3ce0ec265bcdb716b44e6f867f3af9087f839e4dba257f7', '903cfc5a759d55d508f635ac4b408e6e57e92bf252737180dee99c6292ee5a557368136b69ccb28b', 0, '2021-02-18 22:33:18'),
('9ed54a45b00fc88403b3a3746262de183f97518a851c5113046a1361efc0d739dd79319e03484923', '27a978242d4297078435140fbd20a4179b575fc95f44424c2ff7a71256fd1b9de880a764ecc11057', 0, '2021-02-16 06:53:56'),
('9f5885b760854e6b9404c9e3fbb0a4267aa81a25f295c35c180bb7cbaae42a419ae1a237819f26e4', 'd769f7e95fc0da8a1ddad7a95c06865184a32af882c7f4c5a30361b6f728c8cc37ba0eb015aa9f69', 0, '2021-03-01 19:23:53'),
('9f9651f1a174e096a46eabe04ee105fcae45fbd3f16cdc17ac171b896f695e004752e621ac878b8c', '09b56529ff9844b16f439cca366acfd05ff06519c209d426a6c4070340fbb2c96ef7515c6a3d80f9', 0, '2021-02-16 06:28:47'),
('a0a39011382b9c43cb25fe29781b19ee4a8d2bb3256dcb91e5a73fc686a7d5f5a7f47d4105838648', '92b3f1880e1671c138ebe06f686acbb22e747d4bb2d7dfd51c963ea03f08a6ff19271a33db51bd0b', 0, '2021-02-18 00:36:05'),
('a2e24630c8d4858aa1e3c938884e62453d97e15134ab1a0ec803b1567b57c5cf47cadd7deb3319e1', '4034f36d35364c4b59a9e349f7fdfcc02b658f5a1c199d090572c655df00b4d4f42c4d88d49c7989', 0, '2021-03-04 13:13:59'),
('a3ccce9adbaa7db67e7356899369eeec1a9ebfa6a3a38b6018ce3823daf2f33dcd899e2577e8a85b', '8d11881bd869a8d33be4042b79a0f7bfcc7f1ff5aa9831efa3d2f9ac114264145e23a639cfd33a35', 0, '2021-02-18 23:12:36'),
('a4e7f2d0284ce28aecdafea774a8f36d018c6ee9c249d2a180af529787ffc26fa4703cfe5b478d8c', '58fcfae859acb8476de283830ccaddb4b7cbdf8a716342080d5ad446479162061ca53f49a7d7d6e7', 0, '2021-02-18 23:26:47'),
('a5977f2c54a3ffb037c80e5e97c4e2e29bcd3aa9a2fa4f202c8aa68bdd7d24757869a83081c63a9a', 'cdb2945dcb72cdbcb4fb93677a68e1d97cd3417a80941220554584af0b963f901f63fcc4b5a77d97', 0, '2021-02-19 23:45:27'),
('a5c8a70470f12a5393088279a1bee419569ac1639a70bdfc4130b4155be3874273e4bf33f8abaf7f', '4a69942927c8bf033955b10ad0265a3526377064d2ecd2040a5aad73c0f779a9e05bc8f281c29e32', 0, '2021-02-18 23:24:55'),
('a60c08882464d692e83a9817a45e5cf48a5aa8e8d7ebbf2035470694829b36a9a3cf90d7c6bd2ce2', '940331efefc80eaecb4ca3f6eb9d00393e6d1402eb00e1e8b8a1c4b55008fd8a16f4ba27990d5f15', 0, '2021-03-01 15:23:36'),
('a7834cd615f762392ad713be4143d40d95082054421d5d7600abcd20f5269c992d94d4cf3842add1', 'd191fab40f60fd40c71ffacb9f9936129f04a28b56100a7b46b63490fe40ec9fe6f9a2c50eb637ea', 0, '2021-02-22 05:25:57'),
('a79a58e8ed9c2a7f4d22508e623c11c62be34767794456ec4ab9cb5a5d679905328748773b4eb747', 'efff0e5c00c10ee87b790c42a9eb08ad8d21489d935716637ece1dda673a9c257fef84e86bf7a1bf', 0, '2021-02-20 14:05:38'),
('a873a2242a0db60e13cce76df98fce99da98907fae2fa0a678422ec3d36657a1dedadd3200ffd9ad', 'c8513721764e6972941f05eb446cdd7cda07b2c7f7c0624a914740d42fcd57afa04d43345c10c08f', 0, '2021-02-20 01:27:07'),
('a98cb2e7ca19c9cf6ae1311fc8619189b4b6c5414940e013ae09d0d95cce4e1e90448593f42ddd6f', '5e096259c26857a2f3083dd447c866c7abf00c9e9f6b8b9e8b52b676e46e9a8064900eb206e87046', 0, '2021-02-18 23:27:57'),
('aa5f41e1adf812293bc3d758453fdba55615a5595ff57998f68e01e3ad4a8ef6eb2496dd025c2920', 'f91e0ab3cb25df92b6f7c5e1af25d299037c02af6aaf5a6c82587589957e76468efb86987c5a80c4', 0, '2021-02-20 02:45:46'),
('ab9ca63deeabba3948e765308579467d20c126c39bc9554d88f570ef3e53bd0ae48a805a14bc0e3e', '4cacf1cfed0083163b509e37a999f70b384635157939c8c60fbfda953c0ba9b57497f35057096f3c', 0, '2021-02-16 06:39:00'),
('ae358dab4aa872523c004ee6d01fc4f734de362f925efb6d1d10c1c34f2ac5c456f06f6d3786d10d', '71fb37bc5f6ecb06f41ce89a89ca235da2eed45838f59533c7730eaa79417b3b62e652356b0c7e83', 0, '2021-03-03 18:36:38'),
('ae72663493ace0f43e6e4a3c827a09cc63d1a8e09c1dcc9cece19bcc5f60805afd65681d4b12cdd9', 'e61b1a67d8cfecf9e63e715978f3b49b2117b37b5cb080f53cd8d66a2c8d07096dbb457bc79abc22', 0, '2021-02-28 12:07:29'),
('aef15b619a4e46597f08112bd3b1bf684244e05e8d38e7ad10095f86d14cf7606c3ce60768f48c00', 'a47f848e1c1238c4644b3a330fef72ba3ab9c385354ccc105234b78e41fb5cfd50c7672d78bcd7da', 0, '2021-02-19 23:21:33'),
('b12e1b91db16bf7b3f1876966e4a580e6c7db53f2df27a35bd7561259aa19410b576daf653064f08', 'b0f76327fac5fadadcd62f1d398e59997fc06bce07de22cd9cb547a9c5ab72112a7682e817bbfe66', 0, '2021-03-02 13:17:49'),
('b15694d1663086a66fc1c52840ffb52a06bd8ed7e247fa284cee219b149e11bbada81cb9e44d7704', 'b23e4392b6f289fcb3b4a3f28048480da18409002938eceb0339393f028a2d5d0035149e241ea3ac', 0, '2021-02-16 06:06:43'),
('b229ec0598b0a91abeacc94b03215b7ae31285b3b895048a4612abbd586e757ca8cac70420b9bb6b', '6ffa591a0061f27059f130c2557d6275276c86c68f940be90df2e2282981c1db610a62cf70ecc4a0', 0, '2021-03-03 19:38:16'),
('b25f61687a916d7d1f782c92be6ad2269450974aec414ddab6f5e882262eec523ad4b9c003857380', '59ec495ca0d310fddc6de9b267358654cae0445e47f6ad72e9533724d634d7499703241fa7b72fa4', 0, '2021-02-18 01:37:42'),
('b2a3761749e295d6adfc54618f8bf8149dacb9dfbec76233d6b35a2b01cf2e2cc4ff14858ca5c170', '3266f818d90e7d796b3f842f8acbdcecff2a0432fc2226b5f7eda7b23bc89c4d4a25277d8e188385', 0, '2021-02-25 13:56:45'),
('b47a504b88ea79303874a04ef788476a66560839ff0d41db11d99f4788799192e5181064567315ac', 'ea6cfc1c968451ccb9cab8500c59bfe6cd9e2ddb5067fdeb6db84401c83c6f537aa6fd918f30b63d', 0, '2021-02-20 09:22:51'),
('b57da6d5acc6de1feef4cc4031eac9c649b084fa534380dba5a4f990ebc9fd11cebd85fb3df13800', 'b98a3834f774bd6d90008d21133e9fc2a502817577eef71ef03c333cc0b9e76f5f6ef0f4365a8e09', 0, '2021-02-19 00:44:18'),
('b78bd2dbadf667d8254aca77be08d51cbdc8b69a25e6bd6a32b1509e93221661f39a3b6c147316ae', '38d68ad7a63aee164ed92973475483029ff90e6ab497f99480e8d2829e6f94e5be5dfac06faa0021', 0, '2021-02-16 06:48:13'),
('b8397c6d0dff1a5e3a5464333cdf304837f140b5e5aafd0cfff866a54efffff18e2cbea70bb951b6', 'a508eb069078bfc5cba2740ce62888e9bd33cf7ed4ccd72b8f3d21d69ebe347f268903b181fac98c', 0, '2021-03-04 19:21:10'),
('ba4556d5b51d5d5e9bd9e89d904196a65253bfdbf40afc79ff9bd3ec99ace90b4c55ba5c6cb4514c', '0c41c5c3b11b287a74a10a2e2c3b31704d5b5fa17d731524487b6f4fb7727bbf53de05ab41758686', 0, '2021-02-16 06:12:13'),
('bd734abf7293035431edefe864ea8b2c7d4655eb2645e441a6823c36c75315ed829bcd8ebd88b4c3', '71f4c801d60a7b05e51f645cdcdc990577932f27e752d15464a6f856283b0a6a896d2b47012d73f1', 0, '2021-02-20 00:04:12'),
('bef9578316e47c94b97f5bffb826cedb041a642f476d68bc9d37dd613468760caf7d1b60d2736449', 'b5ab8582ba5861630f36db11fb9fd2298082180b367d2152079c688058d3e40ce44f9d60556685c0', 0, '2021-02-18 22:31:47'),
('c0c18527e762ce446979fe08ad5f3ea669d664395cc14e9314d3eb1a02f6fdf8d5c1ff0c131c9365', '1047e3d191a80995a1cb2095a9948aff127deb3f2cc8ba90f6cef80796361aa0f41960c6063f8f8c', 0, '2021-03-01 15:25:22'),
('c1ab179ce3dd48dc71497ca4817f56b3dbcd6c4d19d39a460e93927287060404626932c27091e806', 'c8033cb0e61285113ec8492048bb4a718ca6d6322a81fd45cbf9b13a52f09ec30af3a01f59315fad', 0, '2021-02-17 19:48:10'),
('c2e7d311534433014126d58c799f77c06f1a5f882f0de34b1940ece1af6283d9ffd3e4e329bf8f6e', 'b75e85850f281d2dcee320b7eadc5ec47db644a18f49e1bb69fd61fbdbb850ad94fdd16f03c461b9', 0, '2021-03-01 18:58:41'),
('c37c145c33d84f4c764e82e8e2475ba101e637d21a378f2e80d37c2289461267eb0d1106055fa21e', 'db5ae5dadab27663a92aa068599285017df3abe12287ef3158d7ecc811928324f12611aba48e0736', 0, '2021-02-19 23:47:23'),
('c40903a442448dafc7e77b32c396495f0713713acc9369e71172f9e84f13cc14e01142ad4b2f5954', '3583aaef649d06fab1c5abf616b0934d87e148e9b01a46ae7f8c454b575a068bc6dcf243ef003a6b', 0, '2021-02-19 23:20:36'),
('c4351979807189c73cfad817aa96c319bafc9813aaf8b5a35e6431b96be01419267477f104a6bfad', '7dec99bc6b490b3445be6b0fd74103970d03e93f6c5625711dfb8df8f5ee5b9f6d5773aa0a13ec46', 0, '2021-02-20 04:20:01'),
('c48a4ea74e703ae0b2dda7ffe374b81f70fae84cc938f5ac1cab67cd5215098929afcfc51ac20b1a', 'c2095802fafbad65039fc8d1984da82a12bf932182ed580049e2a01b51d37559259a9295206e853b', 0, '2021-03-03 18:29:08'),
('c55988d1000788c3fba4b4a58ca9c11f90bd3ae45ce106dd6aff8c281947169f2c5737d34259ab40', '0da90aebd17f047c4fbaab47c1558e11db8a590627d2ab209104b89f49cd9f0e0aa021ca2f25f610', 0, '2021-02-17 05:35:43'),
('c57948483bfceef291d2203ddcbdcdc625830c6d925f8f62dd80e55b4eae2af44b1848d12747c79e', 'faf035b20fe462fa8b42287822d7e89d41a69b1164145a400b1979444cfd5ee747f5218d6675e56e', 0, '2021-02-20 12:21:05'),
('c6408ce51e01672c54b6b7ff856948233be02e851fdfb4e91a7dfb2226b07f23cbf7788db1bbfbbb', '75d254cd8f02c7ddbe28bf8db76ed52323469e4cf87abc24ca02e76c38f42722017c06de076441f2', 0, '2021-02-18 18:33:16'),
('c7d42bbfa134d63f3c5b4a318e6b4ecbd6936174339874f702f385bac69391823b3c7d72107f09bb', '5e743c48111cf411ab660c0c670bd9879a9a8ca0660c9ce35cc2fb8122a62bd7540ee19430caace6', 0, '2021-02-25 19:29:57'),
('c9ffc563b1340b8a4c10de17517a0e88c5be7d8f81ba40c9419a2590e4c9266662a1101217f36179', 'c18565e14ebb2ceade2daec6180dd3e0658ed58d4dafaa9b8ecba7fe64211b7cf80e3b38c402e018', 0, '2021-03-01 19:22:27'),
('ca38eb465ce987d7894c8410d261c5252163c964212caa16fb790a66cedb231f055c598ca352ef09', '992b1cc1f43ae3a2d3d8ae1a7f122c24235a3add3339d384864fc268f0fdb6b7ff779ce562ca344e', 0, '2021-02-20 18:24:13'),
('ca635755b073ad3430832c1e94c5dda2b1e2729e20d84f93e9d36a93bf53dee474c41871b56d0db4', '851c1c266db92e3552d02ec4f3c83b5f705ad4208b0908fe8f1f6e219f39ed407efbabf6872390e4', 0, '2021-02-19 00:30:28'),
('cfe62d341a7a6fbdf7f1ee0058a7d3bf19a78fc728d484d7fc95e7c540dc4a291f278a421a7bc793', '6e7865f43049b8c10142c13f7f26547a2ba465ba4e1900240f4faba6a99bb417342c18599f117d39', 0, '2021-02-22 21:54:25'),
('d042b4bbb8866ccc7c3be6e63522428d7de86ce0555fa9af42c6b444c827e4c9ac033b3bc15b7c2a', 'b6ad624b55152db165334b34241049483b04e683480624827275b7951f9a581dc1ea690658283d71', 0, '2021-03-02 01:50:25'),
('d0596b4b643cf6c18090f724d56df3fffdeaeb6473cb7904f7ef712502f4bee9d8cfd8317b965add', 'f99f0760945a2911bfc28b52a1b65cfdc5281ec11fb6936e3e592b8c9502bdab903aeed1c0046907', 0, '2021-02-21 02:09:01'),
('d05eb549acfdd2db4346ddd7451e6d25e77cf3f6bcdaba639882073c825e67cf2f7815b1b33ee840', 'b6dc0e8471af1fc0027aada965154742a106a63344a95ed46e8456a6726ec97a1358ca567f35bbdf', 0, '2021-02-20 06:45:06'),
('d1c3aba845bd8bfd3afca9bdda3b93e2fd91a513437d645a9f3926741b7be4329db667d9106fec85', 'c9c16977278896db5a6ef6e6812d69bf581b99941b90a74cd5f468e46c7e90b3177d5e65f80947a4', 0, '2021-03-04 15:17:24'),
('d2af06410cc0000eda4018ca6f77eafe5b6a95976298e4ecbd3aae924e60ca0062311316f4476bf9', '349ce9354107501e8065b88dde399ff9f620285ed67e84268a108e5b024d7f36c0b0571ef74936d1', 0, '2021-02-18 01:33:14'),
('d2f038719face0699e3c1cf29a4e5ce8c83cf4e5734985795239ed3801c0130a84181abad7c602ce', 'e7584812409bdef1b289397a3e87787deabbd0346a05d62cd47e07e2ab4bdb802e819d674a6d252b', 0, '2021-03-04 19:35:56'),
('d928417f79809f6a5b5ad5903730372aa3e3d8f6d478647ee1688c083b7585b11ea68e9f4b839de6', '5d7f9fe0ab961ae86fc1522e8f6c4cf6f44903d44e3a8ae6cb6f7898c7a17db213b28c975a6bf5ea', 0, '2021-02-16 06:09:41'),
('d9d9475771b780784e8df19895c60fafe66e6d3bffa3a7196c17cac7c2994341a2ce00b4458e5b05', '9e620450fb5d374214bf157c45353f30a04253a7dc475b3a10d27f66d4df89c1ea8471df2eaa3d0c', 0, '2021-02-19 19:13:28'),
('db9d32782736454d81b5a9be962b81ee63f8770883dec8be3fab3291931fa7551f20b0688bfdb47c', '296e8d2cc8152a8f020f7ae10d8a8cd667d36e6b939c47059110a7963612cbe82d0a47bb9271c730', 0, '2021-02-20 00:03:28'),
('dba2cf90f9db6814095521eb24ba4294bb60f2d8292c45bc0bb620f4cf83c11dd9946fb39822df9d', '6dfd7e5e36d98a22f8574ba5801b9e0930889e8bf0f23fa57c92c487704fbd05377c6d49ecc6da64', 0, '2021-02-20 17:58:41'),
('dbd2d52984a4972c3f2323a4f44628fa0eaebba80a78eb68c2cd1ef428cab6103ec142533b094d20', '22e4360dbb0a8a647d0ac53422e3e39824a5cd89df2c3f4b054407f0ee595db2c048bd65d18db3a4', 0, '2021-03-02 12:08:54'),
('dcd733dbbebc218cdddf93af1a4891924b69aed1dadd5e412049ab02a2df7b20482c70a4127f9ac6', '49265752639a90772a831110c21ca249c7a20dd900f6c3ddb1ce7c7fe7b0dc417ae82ce57d95dde5', 0, '2021-03-02 17:52:17'),
('e0d8efeea61ee4512922c92a75ed6ca21edc46bbfb4556594ebb33b3dcaadf1fd86cb2e2caa69556', '78edfa38a5b78ecb0012c535ee7d9724f10abc92f56388f6dcb929bad21f1b0691e7c09b76c71633', 0, '2021-03-04 12:02:13'),
('e3bc2fff2e65d5de01fa5a0bc8be62271a655985aa5c5663022f8e3d83785a8af25d2b2bf338c8cd', 'aa7ab34ab998810ee0626fba13f66d2c06b270fc683cbd0333e93ba71651433e2713728abd7bf7f9', 0, '2021-02-20 02:48:16'),
('e3bcad85f995cc36255cb2156a73623e631c0749a3a079d373fa6f61245a996ca6ab68df933a9319', '6b84f378faea402412683963122ac70fe6d4a3a6ca16697d60124b23ecb178cd75932c9bafca14ac', 0, '2021-02-20 02:28:34'),
('e432621e770a0370aa6436ccf0d875eb91687864d8d6b1f68e31854afe2835a254758abf485ec528', 'fe2d067f09f3b7ca24908a02130333b14d9a3e75c165715e36d4a8c2778b52eaf8129829e1bd4a40', 0, '2021-02-20 10:57:00'),
('e44f8675b91902f645deac644609181525687b13c17e03fc2f885f8829e04cfdcc81f67aa65955df', '3099833efa91fc9dd0a8fcba829759b3830e7052c0c70f005e0ab7ecbc079b5a80196161607a3d34', 0, '2021-02-20 17:57:33'),
('e61210b98a4f508f81492b3eda6f88a677dd6e13bc42bea1aaad59014fa14944caa9695b54ec6e3c', '070487e27867d8f77a0717f7b0564b9feed05d2b60a119d551aba5a158e77570404dd9914eb9d2b0', 0, '2021-02-20 00:06:15'),
('e73dd836589575c7f7d15047068d4591d0c487945d3e06d27203b3cc96cf8f0be0b37ecfaca9af7e', 'fe3c2f16943c52def7c8aaf216bc64d867adb91142e2646eb5efd7f7cdb90076c0384da689a1b3e6', 0, '2021-02-20 00:05:18'),
('e78bf5c9ae4ce75a18a074a87dfcf38bd453c8cac091d2a99a8fb2935101b03e399e4571d8067298', '508282f26a9e351349d8b8ec17c02f091aaf2ee17a7b629cb7055d6d459ba9592bb8ac6d3d01f071', 0, '2021-02-27 22:41:21'),
('e79402f601253fd532811007e8e1b079cc33bddc5879b68256f2e3af48ff578e3badf144b0b70b20', '9bd49b8320780dc523946905fd8e7f592b41f203b79df195e1173f06c14eb56013000e2d6846d4da', 0, '2021-03-01 17:48:22'),
('ebc17830dfa12899eff0f877b8fd1482b858bf96af8a8463f1ea322a38a3f6f959d3c52fc75ca036', 'd8742f7e83ffc17cb8c97337f7820294ef96215f68483626b57f5733d875921bd52f477fa4c5c637', 0, '2021-02-26 15:37:47'),
('eca8b4e1c5e1f544891449a79159e4aa32dbf220acaffc3c555bfee82e54e976edc3b3f3bd447777', 'b10aba8c30bf7fe8fddc937d60cbd7e249e23c82141ace507406ea3c1b7160c05fa346cb8b878792', 0, '2021-02-19 15:56:27'),
('ecc2770be8572005e3bec70c756de864109d184cccacda0f4af6126663d710fe6ed3bb9f67e4266b', 'e1b995c73191d2aef2e6d1cb1f786ef1e5f048b8b4dee7217212de3e161084e8e38b787896da86c8', 0, '2021-02-18 23:18:22'),
('ed6145f7a3f8bf6d39cc2498e362ae66db4117a94daddad8d21f821d04bf62434188e574e352903c', '68ca67d8aae0174a296f596914c9ead713153c550cf82e796f39fd8d11acde52fe80c29bac22a99d', 0, '2021-02-20 04:16:04'),
('edade50c2129bbce44d5c2c2b91805f0efe011376d286fe44d9691dd23ae438a6aa16ca816ce1ddf', '45c76c251df3fdbf09a08c6d38a87a04a3321755b9ab2d50bfe7bc95edadc8877cd97ba45080da48', 0, '2021-02-20 06:37:35'),
('ee20779cf16f80f02b4bf8ce6a258375a2e3487f32e6458a77df669ff4c1da95b42ded6165b1efbc', 'a230095aba284b34bbffa2a31fc9d22f804f87fdf2c1d679b35e68607bdc22bdb12314a99e4fbfe9', 0, '2021-02-16 06:30:55'),
('eee9a669fa3d0190aed37f22d522c891a1b806a07292729b5730e8d9b85ae511b5902e10365b595e', 'cde69f879427257fba8fbdf68dda6f1a94957119b9074fa4ce0114129879ce7e00211417c1693db6', 0, '2021-02-21 01:10:33'),
('efbea3ef85f046c65a1cd40a7a36a6e1b678e7621e27e7b59cac4c20042fba5a7c2028ed1991d6bc', '84cc7d4faf04bf7848402257012c498905053f468a6de706d44c6f715f6cff86385c3aab285d08c5', 0, '2021-03-01 18:11:33'),
('f2aa6edaba35b3176b4107bd0050a6869ffe71043b14c2d9719e1c709ad6c9da9d8c219f3f33dc56', '8d26c6a9d05bab1e3a1f81ec0109b3e1e76df3484129ac641556ba208f6054420a13a3a07d7f3b76', 0, '2021-02-20 07:04:04'),
('f2ace89a73b3b70ed70addeb795cdcfe3a2c3578dd183093bab24c9c511455ee23524a9f63e9925e', 'a1c6b205aae824c161daa54bf020f04c3da548217dce73e89d1c5881374294261e1682f261f7a924', 0, '2021-03-01 17:42:12'),
('f2d5d21faec12c1f2fa22b48f0aaab0cc9b2b140c602a160aaa2b24fdf96a23df0355250731b580c', 'a06697331c0b96b7b9288391c51d8c209d7dbb1d599986737ab7f8482fcc105e61576e0ecf8e2317', 0, '2021-02-20 11:03:00'),
('f37fd6048df5c054b1f247e8700da912d4efa918c10c588cfd4cf632a2d404c4bcf3c41570b5f518', 'd9b2844f662e45f7a363a70d019342d7dc50b7739761408bc89539c709c62fc9dcd842205af81526', 0, '2021-02-20 10:58:46'),
('f488ffdd20fd508dbb0db54653738fa6d18862a0f81bbd5da71a9e703b2fba38eadf44382efc44aa', '5c700ac823d547fa2cc1030c7a53a4f4374248a6239f4b742aa7ad41bbf21f7082a726685207bb36', 0, '2021-02-20 14:05:37'),
('f78a2eaac88e465a862bf570f317a31835e65761d52ef4b8b66696a18a46de8c8da5652ba3441c2e', '8dd306b98af35d18fb549f1d6d63dd8059282c5e94b4e2314114ecf04e8628c3df8cadc153752b5f', 0, '2021-03-04 17:52:00'),
('f8065cb89f9c513fe58b414aa7160a572b28c4e3bda0d4c02163a80c79b7ec2b6305fcf74b1a0f6f', 'a4d4b2d1d285ae199acc5b2e4332ec7e93c272e2f3731359d07cb79c980badeeab711618c3490e74', 0, '2021-03-01 13:45:16'),
('ff05a6e101715e1bdc6704148150615eb236dd162048e554c25ecd16779b9a96d6fdfe14871fdbeb', '89f6c18956923dd6f87e2c18dfb4603120caa1ee03b246e2192bc657315c607bb0c34bbc08a1e8a1', 0, '2021-02-20 09:35:16'),
('ff4996f75c487d01b22fbf4586f499d570e294c49e70a9444ab9d420df770a5da38018c61e721402', '88df54fb19db76d713bf6fd2c202bfb03baa278686081153f5ef418a895b1d54db3b53aa7eaf393f', 0, '2021-03-04 19:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) UNSIGNED NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval_count` int(11) DEFAULT NULL,
  `trial_period_days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `screens` int(11) UNSIGNED DEFAULT '1',
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `plan_id`, `name`, `currency`, `currency_symbol`, `amount`, `interval`, `interval_count`, `trial_period_days`, `status`, `screens`, `delete_status`, `created_at`, `updated_at`) VALUES
(7, 'monthly', '{\"en\":\"Monthly Subscription\"}', 'USD', 'fa fa-dollar', 6.00, '{\"en\":\"month\"}', 1, '7', 1, 1, 1, '2020-02-17 05:59:17', '2020-02-17 05:59:17'),
(8, 'yearly', '{\"en\":\"Yearly Subscription (Save $12.00)\"}', 'USD', 'fa fa-dollar', 60.00, '{\"en\":\"year\"}', 1, '7', 1, 1, 1, '2020-02-17 06:00:07', '2020-02-17 06:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `package_menu`
--

CREATE TABLE `package_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `package_id` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_menu`
--

INSERT INTO `package_menu` (`id`, `menu_id`, `package_id`, `created_at`, `updated_at`) VALUES
(9, 1, 'monthly', NULL, '2020-02-16 17:03:17'),
(10, 2, 'monthly', NULL, '2020-02-16 17:03:17'),
(11, 3, 'monthly', NULL, '2020-02-16 17:03:17'),
(12, 4, 'monthly', NULL, '2020-02-16 17:03:17'),
(13, 1, 'monthly', '2020-02-16 17:49:16', '2020-02-16 17:49:16'),
(14, 2, 'monthly', '2020-02-16 17:49:16', '2020-02-16 17:49:16'),
(15, 3, 'monthly', '2020-02-16 17:49:16', '2020-02-16 17:49:16'),
(16, 4, 'monthly', '2020-02-16 17:49:16', '2020-02-16 17:49:16'),
(17, 1, 'monthly', '2020-02-16 17:51:14', '2020-02-16 17:51:14'),
(18, 2, 'monthly', '2020-02-16 17:51:14', '2020-02-16 17:51:14'),
(19, 3, 'monthly', '2020-02-16 17:51:14', '2020-02-16 17:51:14'),
(20, 4, 'monthly', '2020-02-16 17:51:14', '2020-02-16 17:51:14'),
(21, 1, 'basic', '2020-02-16 17:52:48', '2020-02-16 17:52:48'),
(22, 2, 'basic', '2020-02-16 17:52:48', '2020-02-16 17:52:48'),
(23, 3, 'basic', '2020-02-16 17:52:48', '2020-02-16 17:52:48'),
(24, 4, 'basic', '2020-02-16 17:52:48', '2020-02-16 17:52:48'),
(29, 1, 'monthly', '2020-02-16 17:59:17', '2020-02-16 17:59:17'),
(30, 2, 'monthly', '2020-02-16 17:59:17', '2020-02-16 17:59:17'),
(31, 3, 'monthly', '2020-02-16 17:59:17', '2020-02-16 17:59:17'),
(32, 4, 'monthly', '2020-02-16 17:59:17', '2020-02-16 17:59:17'),
(37, 1, 'yearly', NULL, '2020-02-19 13:07:31'),
(38, 2, 'yearly', NULL, '2020-02-19 13:07:31'),
(39, 3, 'yearly', NULL, '2020-02-19 13:07:31'),
(40, 4, 'yearly', NULL, '2020-02-19 13:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('info@hahu.co.uk', '$2y$10$NIVzfysR0aBJLbW97I5X5uyK/EkhE7Eh7qA4W3vjPti5ZnBIoEqiq', '2020-02-17 05:16:34'),
('bujutena@gmail.com', '$2y$10$T.8HdO.w/J8Xod2jJZO3LOB1WnwFDC0W7gNUjXVKgx4d5TCtci5ri', '2020-02-17 05:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_subscriptions`
--

CREATE TABLE `paypal_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_from` timestamp NULL DEFAULT NULL,
  `subscription_to` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_subscriptions`
--

INSERT INTO `paypal_subscriptions` (`id`, `user_id`, `payment_id`, `user_name`, `package_id`, `price`, `status`, `method`, `subscription_from`, `subscription_to`, `created_at`, `updated_at`) VALUES
(1, 2, 'by admin', 'Yibeltal', 1, 1.00, 0, 'by Admin', '2020-02-17 05:04:59', '2021-02-17 05:04:59', '2020-02-17 05:04:59', '2020-02-17 05:08:12'),
(2, 9, 'by admin', 'bujutena', 7, 6.00, 1, 'by Admin', '2020-02-21 00:42:28', '2020-03-20 23:42:28', '2020-02-20 01:04:14', '2020-02-21 00:42:28'),
(3, 8, 'by admin', 'Yibeltal', 8, 60.00, 1, 'by Admin', '2020-02-20 01:12:56', '2021-02-20 01:12:56', '2020-02-20 01:10:17', '2020-02-20 01:12:56'),
(4, 11, 'by admin', 'ronroncymtv', 8, 60.00, 1, 'by Admin', '2020-02-20 20:56:24', '2021-02-20 20:56:24', '2020-02-20 20:56:24', '2020-02-20 20:56:24'),
(5, 14, 'by admin', 'Mekdes', 8, 60.00, 1, 'by Admin', '2020-02-21 01:01:12', '2021-02-21 01:01:12', '2020-02-21 01:01:12', '2020-02-21 01:01:12'),
(6, 13, 'by admin', 'mekdes', 8, 60.00, 1, 'by Admin', '2020-02-21 01:01:36', '2021-02-21 01:01:36', '2020-02-21 01:01:36', '2020-02-21 01:01:36'),
(7, 12, 'by admin', 'tigist', 8, 60.00, 1, 'by Admin', '2020-02-21 01:02:00', '2021-02-21 01:02:00', '2020-02-21 01:02:00', '2020-02-21 01:02:00'),
(8, 15, 'by admin', 'Sisay', 8, 60.00, 1, 'by Admin', '2020-02-21 01:02:33', '2021-02-21 01:02:33', '2020-02-21 01:02:33', '2020-02-21 01:02:33'),
(9, 16, 'PAYID-LZIY43I6KS76272LG631110S', 'SabaD', 7, 6.00, 1, 'paypal', '2020-02-23 07:57:30', '2020-03-23 06:57:30', '2020-02-23 07:57:30', '2020-02-23 07:57:30'),
(10, 18, 'by admin', 'John Doe', 7, 6.00, 1, 'by Admin', '2020-03-01 00:08:58', '2020-03-29 23:08:58', '2020-03-01 00:08:58', '2020-03-01 00:08:58'),
(11, 3, 'by admin', 'Mimi', 7, 6.00, 1, 'by Admin', '2020-03-01 00:09:17', '2020-03-29 23:09:17', '2020-03-01 00:09:17', '2020-03-01 00:09:17'),
(12, 19, 'PAYID-LZOLRVY4JD21818EK229500X', 'Roncymtv', 7, 6.00, 1, 'paypal', '2020-03-02 19:12:50', '2020-04-02 18:12:50', '2020-03-02 19:12:50', '2020-03-02 19:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_settings`
--

CREATE TABLE `player_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_enable` tinyint(1) DEFAULT NULL,
  `cpy_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_opt` tinyint(1) DEFAULT NULL,
  `auto_play` tinyint(1) DEFAULT NULL,
  `speed` tinyint(1) DEFAULT NULL,
  `thumbnail` tinyint(1) DEFAULT NULL,
  `info_window` tinyint(1) DEFAULT NULL,
  `skin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loop_video` tinyint(1) DEFAULT NULL,
  `is_resume` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_settings`
--

INSERT INTO `player_settings` (`id`, `logo`, `logo_enable`, `cpy_text`, `share_opt`, `auto_play`, `speed`, `thumbnail`, `info_window`, `skin`, `loop_video`, `is_resume`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', NULL, 'habeshaview', 1, 1, NULL, NULL, NULL, 'classic_skin_dark', NULL, 1, NULL, '2020-02-14 19:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `popover_translations`
--

CREATE TABLE `popover_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popover_translations`
--

INSERT INTO `popover_translations` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'mins', '{\"en\":\"Mins\",\"nl\":\"mins2\",\"de\":\"Minuten\"}', NULL, '2018-04-24 03:38:42'),
(2, 'season', '{\"en\":\"Season\",\"nl\":\"season2\",\"de\":\"Jahreszeit\"}', NULL, '2018-04-24 03:38:42'),
(3, 'all age', '{\"en\":\"All age\",\"nl\":\"all age2\",\"de\":\"jedes Alter\"}', NULL, '2018-04-24 03:38:42'),
(4, 'read more', '{\"en\":\"Read more\",\"nl\":\"Read more2\",\"de\":\"Weiterlesen\"}', NULL, '2018-04-24 03:38:04'),
(5, 'less', '{\"en\":\"Less\",\"nl\":\"Less2\",\"de\":\"Weniger\"}', NULL, '2018-04-24 03:38:04'),
(6, 'play', '{\"en\":\"Play Now\",\"nl\":\"play2\",\"de\":\"abspielen\"}', NULL, '2018-04-24 03:38:42'),
(7, 'watch trailer', '{\"en\":\"Watch trailer\",\"nl\":\"watch trailer2\",\"de\":\"Trailer ansehen\"}', NULL, '2018-04-24 03:38:42'),
(8, 'add to watchlist', '{\"en\":\"Add to watchlist\",\"nl\":\"add to watchlist2\",\"de\":\"Auf die Beobachtungsliste\"}', NULL, '2018-04-24 03:38:42'),
(9, 'remove from watchlist', '{\"en\":\"Remove  from watchlist\",\"nl\":\"remove  from watchlist2\",\"de\":\"aus der Beobachtungsliste entfernen\"}', NULL, '2018-04-24 03:38:42'),
(10, 'subtitles', '{\"en\":\"Subtitles\",\"nl\":\"subtitles2\",\"de\":\"Untertitel\"}', NULL, '2018-04-24 03:38:42'),
(11, 'Download', '{\"en\":\"Download\"}', NULL, '2019-10-23 04:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_texts`
--

CREATE TABLE `pricing_texts` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `title1` mediumtext,
  `title2` mediumtext,
  `title3` mediumtext,
  `title4` mediumtext,
  `title5` mediumtext,
  `title6` mediumtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing_texts`
--

INSERT INTO `pricing_texts` (`id`, `package_id`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `created_at`, `updated_at`) VALUES
(1, 7, '{\"en\":\"Unlimited films and TV programmes.\"}', '{\"en\":\"On up to 3 devices at once.\"}', '{\"en\":\"Cancel at any time.\"}', '{\"en\":\"Watch on your laptop, TV, phone and tablet.\"}', '{\"en\":\"Watch anywhere.\"}', '{\"en\":\"Pay month-to-month.\"}', '2020-02-20 01:12:48', '2020-02-20 01:26:51'),
(2, 8, '{\"en\":\"Unlimited films and TV programmes.\"}', '{\"en\":\"On up to 3 devices at once.\"}', '{\"en\":\"Cancel at any time.\"}', '{\"en\":\"Watch on your laptop, TV, phone and tablet.\"}', '{\"en\":\"Watch anywhere.\"}', '{\"en\":\"Save $12 when you subscribe for 1 year.\"}', '2020-02-20 01:15:52', '2020-02-20 01:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `tv_series_id` int(10) UNSIGNED NOT NULL,
  `tmdb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `season_no` bigint(20) NOT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` tinyint(1) DEFAULT NULL,
  `subtitle_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `tv_series_id`, `tmdb_id`, `season_no`, `tmdb`, `publish_year`, `thumbnail`, `poster`, `actor_id`, `a_language`, `subtitle`, `subtitle_list`, `detail`, `featured`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'N', NULL, 'thumb_1581689828filmbox-360.jpg', NULL, NULL, '1', 0, NULL, '{\"en\":null}', 0, 'S', '2020-02-14 19:47:08', '2020-02-14 19:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` text COLLATE utf8mb4_unicode_ci,
  `google` text COLLATE utf8mb4_unicode_ci,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `author`, `fb`, `google`, `metadata`, `description`, `keyword`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Yibeltal Tena Adinew\"}', 'sdf', 'sdfg', '{\"en\":\"this ts a next hour\"}', '{\"en\":null}', '{\"en\":null}', NULL, '2020-02-14 20:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` int(11) NOT NULL,
  `url1` varchar(191) DEFAULT NULL,
  `url2` varchar(191) DEFAULT NULL,
  `url3` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `url1`, `url2`, `url3`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/habeshaviewtv', 'https://www.twitter.com/habeshaview', 'https://www.youtube.com/channel/UC0P5OnwRqW-JXKqCZzHrsgw', '2020-02-20 02:53:52', '2020-02-20 14:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `subcomments`
--

CREATE TABLE `subcomments` (
  `id` int(13) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `subscription_from` timestamp NULL DEFAULT NULL,
  `subscription_to` timestamp NULL DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtitles`
--

CREATE TABLE `subtitles` (
  `id` int(11) UNSIGNED NOT NULL,
  `sub_lang` varchar(100) DEFAULT NULL,
  `sub_t` varchar(191) DEFAULT NULL,
  `m_t_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtitles`
--

INSERT INTO `subtitles` (`id`, `sub_lang`, `sub_t`, `m_t_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'sig.jpg', '21', '2020-02-20 18:13:48', '2020-02-20 18:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `tv_series`
--

CREATE TABLE `tv_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmdb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetch_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `rating` double(8,2) DEFAULT NULL,
  `episode_runtime` double(8,2) DEFAULT NULL,
  `maturity_rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T',
  `status` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tv_series`
--

INSERT INTO `tv_series` (`id`, `keyword`, `description`, `title`, `tmdb_id`, `tmdb`, `fetch_by`, `thumbnail`, `poster`, `genre_id`, `detail`, `rating`, `episode_runtime`, `maturity_rating`, `featured`, `type`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":null}', '{\"en\":null}', 'habeshaview', NULL, 'N', NULL, 'thumb_1581735569etv-n.png', NULL, '1', '{\"en\":null}', 8.00, NULL, 'all age', 1, 'T', 1, 1, '2020-02-14 19:45:13', '2020-02-15 14:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verifyToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gitlab_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT '0',
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_assistant` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_blocked` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `verifyToken`, `status`, `password`, `google_id`, `facebook_id`, `gitlab_id`, `dob`, `age`, `mobile`, `braintree_id`, `code`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `is_admin`, `is_assistant`, `remember_token`, `is_blocked`, `created_at`, `updated_at`) VALUES
(1, 'habeshaview', NULL, 'bujutena@gmail.com', 'yxfQQLE3nIsxcpS1iWOxp2LNlmqAgb1VEH3mLdSi', 0, '$2y$10$GKdf1vOUzeDvE0HqQYCfGuAVJXlA6V07B1Lap//A8CGdOvmroyomO', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'HEziLzyuVkO8f6Vqn60cDdUoft7cNuxp9WGuGfbZrZt4a6OycWyfqLufeJc9', 0, '2020-02-01 11:58:46', '2020-03-01 11:53:17'),
(3, 'Mimi', NULL, 'eshkolwein@gmail.com', '4lTv50v4OvkZSmhTmsDyKW7mO9xcZbCTg5JzpdyY', 1, '$2y$10$ZxCRR4ZR/mCXqA4LZqrTrO7G5GM6HA7v656gV.9lznWjRpyfl7Ayy', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-14 20:10:48', '2020-02-14 20:10:48'),
(4, 'Fidel', NULL, 'bujutena@hotmail.com', 'vVWzl', 0, '$2y$10$PJnIt61nyyDKwGRZTwPw5OvNIzGKrYZJ89Mt/2bUcoFa7fyZz2b0C', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-16 12:09:40', '2020-02-16 12:09:40'),
(8, 'Yibeltal', NULL, 'info@hahu.co.uk', '0tIQRi2Sb2OhMYTqMpa5tXkLuiCmk3MkerZhGKrR', 1, '$2y$10$g1xkROmHyElrzcWljhbpZ.WFFLaxkR3VG5c61F2sm2bRMCtVusHTK', NULL, NULL, NULL, '2020-02-19', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'tX11eyu7HYQnRw3bLUs5OYnTkjLf99VsWP1hur28LV59HZTDgbMzzIfjg2i1', 0, '2020-02-17 05:26:36', '2020-03-01 11:52:35'),
(9, 'bujutena', NULL, 'buju@dd.com', 'TbdSY', 0, '$2y$10$QeklcAMQYTl0Kqd6LjEjQO4kJsK.P7VitQC2/G7Pphaz2k0pUm2mS', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-19 04:34:24', '2020-02-19 04:34:24'),
(11, 'ronroncymtv', NULL, 'vanherkhoek@gmail.com', '0vram', 0, '$2y$10$ERlQr8lw4il8qA5T7kyWAutYgtBpSxvYU8NXttx7uedihF4cp28fu', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-20 20:05:36', '2020-02-20 20:56:09'),
(12, 'tigist', NULL, 'tigist@habeshaview.com', '8qKxK', 0, '$2y$10$RKnr/apaPDERi7K5.BS8ee1XdIxYJ9qxZoByTh/lTS2TPQrH7XXxu', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'd80WnZwnCyMbdPJpkWktGj2iPtsZ89sropknXS6lWL8ejU7MwiAFQzTdK1KR', 0, '2020-02-20 23:57:32', '2020-02-26 11:11:47'),
(13, 'mekdes', NULL, 'mekdes007@yahoo.com', '3F5Bq', 0, '$2y$10$U8P9BRMfX2JIr9z2k3EH9OOg3oGafF7fC5U36SsLXtj/I1u6/wOyS', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-20 23:58:41', '2020-02-20 23:58:41'),
(14, 'Mekdes', NULL, 'mekdes@habeshaview.com', 'IJu34', 0, '$2y$10$hHpIAt6UTB15j4iIEbGdH.rrmc6RPpUWaHr9WseVPfS24ncLJnFOW', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-21 00:30:02', '2020-02-21 00:30:02'),
(15, 'Sisay', NULL, 'sisayhair1@gmail.com', 'cNvcU', 0, '$2y$10$kIkzxurVoSO4dFIvLxT7qO23irMcF1L6l8vcCpKAE9Jw710DPdJQa', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-21 00:37:50', '2020-02-21 00:37:50'),
(16, 'SabaD', NULL, 'saba@habeshaview.com', 'zUm1EBxirgDschfVNuOmqS4cCzHAINplSyBgwLmw', 1, '$2y$10$vLfDBKS2Q7Bupsy3e4MaNuLxpSUNEtRYw1UkrpFuRhyNhzXWcsb4y', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'JGIRxc5bPNJv83zxqx7ynFLfPzEiB1C1tOXXLALfnpbZu3YGnF4dWc4kYmRw', 0, '2020-02-23 07:50:44', '2020-02-23 07:50:44'),
(17, 'makwananaimish', NULL, 'makwananaimish@gmail.com', 'NWuaAPijimpuBbmBXfPqvUqk8QTP0DzAa61RW451', 1, '$2y$10$nkwGjiiDCE7/80EdT63VAeVAnXwVhxn7vpcFStlB/tKQet.TbmDVm', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-26 20:08:23', '2020-02-26 20:08:23'),
(18, 'John Doe', NULL, 'john@mediacity.co.in', 'i4RsK', 0, '$2y$10$PBaFfmvo.T/2I24l8alYjO7BHLzlKpULMpseRhCf5/oMMczNUz74.', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-02-28 18:07:28', '2020-02-28 18:07:28'),
(19, 'Roncymtv', NULL, 'ron@cymtv.com', 'W6eE8', 0, '$2y$10$HqEahS2eLS0oW36LGRLP9u0asiTtdqDOn7OzLQoaZLfYIf3wNOtfq', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '2020-03-02 19:09:51', '2020-03-02 19:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_ratings`
--

CREATE TABLE `user_ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tv_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_ratings`
--

INSERT INTO `user_ratings` (`id`, `user_id`, `tv_id`, `movie_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 2, 5, '2020-02-19 19:31:37', '2020-02-19 19:31:37'),
(2, 8, NULL, 5, 5, '2020-02-21 01:12:16', '2020-02-21 01:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `videolinks`
--

CREATE TABLE `videolinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED DEFAULT NULL,
  `episode_id` int(10) UNSIGNED DEFAULT NULL,
  `upload_video` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iframeurl` longtext COLLATE utf8mb4_unicode_ci,
  `ready_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_360` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_480` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_720` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_1080` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videolinks`
--

INSERT INTO `videolinks` (`id`, `movie_id`, `episode_id`, `upload_video`, `iframeurl`, `ready_url`, `url_360`, `url_480`, `url_720`, `url_1080`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/habeshaview/russiatoday_h264/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 19:16:43', '2020-02-14 19:16:43'),
(2, 2, NULL, NULL, NULL, 'http://livestreaming.enlivetv.com:8081/habeshaview/trtworld_h264/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 19:21:54', '2020-02-14 19:21:54'),
(3, 3, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/media/vod/hiwotenasak.mp4/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 19:29:41', '2020-03-04 00:24:29'),
(4, 4, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/media/vod/tsinu.m4v/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 19:32:10', '2020-02-14 21:06:41'),
(5, 5, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/france24/english/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 19:40:11', '2020-02-14 20:34:12'),
(6, 6, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/imtv/aljazeera_english/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 19:41:00', '2020-02-14 20:35:19'),
(7, 7, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/habeshaview/waltatv_h264/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 19:42:20', '2020-02-14 20:38:45'),
(8, 8, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/habeshaview/amharatv_h264/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 20:40:01', '2020-02-14 20:40:01'),
(9, 9, NULL, NULL, NULL, 'https://streaming4.cymtv.com:30443/habeshaview/addistv_h264/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 20:45:58', '2020-02-14 20:45:58'),
(10, 10, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/imtv/ETVLang/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 20:50:09', '2020-02-14 20:50:09'),
(12, 12, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/imtv/ETVEnt/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 20:55:26', '2020-02-14 20:55:26'),
(13, 13, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/imtv/ETVNews/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 20:56:51', '2020-02-14 20:56:51'),
(14, 14, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/spi/africa/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 21:10:17', '2020-02-14 21:10:17'),
(15, 15, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/spi/fastnfun/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-14 21:12:41', '2020-02-14 21:12:41'),
(17, 17, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/media/vod/hiwotenasak.mp4/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-20 16:51:15', '2020-02-20 16:51:15'),
(18, 18, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/media/vod/hiwotenasak.mp4/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-20 16:52:37', '2020-02-20 16:52:37'),
(19, 19, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/spi/fastnfun/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-20 16:55:16', '2020-02-20 16:55:16'),
(20, 20, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/media/vod/hiwotenasak.mp4/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-20 16:56:17', '2020-02-20 16:56:17'),
(21, 21, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/media/vod/hiwotenasak.mp4/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-20 18:13:48', '2020-02-20 18:13:48'),
(22, 22, NULL, NULL, NULL, 'http://streaming4.cymtv.com:8081/media/vod/hiwotenasak.mp4/playlist.m3u8', NULL, NULL, NULL, NULL, '2020-02-20 18:15:56', '2020-02-20 18:15:56'),
(23, 23, NULL, NULL, NULL, 'http://sample.vodobox.net/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8', NULL, NULL, NULL, NULL, '2020-03-04 00:26:16', '2020-03-04 00:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) UNSIGNED NOT NULL,
  `viewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewable_id` bigint(20) UNSIGNED NOT NULL,
  `visitor` text COLLATE utf8mb4_unicode_ci,
  `collection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `viewable_type`, `viewable_id`, `visitor`, `collection`, `viewed_at`) VALUES
(1, 'App\\Movie', 13, 't2l9hDaWMI4wQFssLzVUyp42pE6xtso32LY5QmzI9EZBqaPLHRw2C42J7YLqdTSsxKgUklVPUwu4exRY', NULL, '2020-02-14 20:59:57'),
(2, 'App\\Movie', 13, 't2l9hDaWMI4wQFssLzVUyp42pE6xtso32LY5QmzI9EZBqaPLHRw2C42J7YLqdTSsxKgUklVPUwu4exRY', NULL, '2020-02-14 21:02:35'),
(3, 'App\\Movie', 10, 't2l9hDaWMI4wQFssLzVUyp42pE6xtso32LY5QmzI9EZBqaPLHRw2C42J7YLqdTSsxKgUklVPUwu4exRY', NULL, '2020-02-14 21:14:58'),
(4, 'App\\Movie', 6, 't2l9hDaWMI4wQFssLzVUyp42pE6xtso32LY5QmzI9EZBqaPLHRw2C42J7YLqdTSsxKgUklVPUwu4exRY', NULL, '2020-02-14 21:15:38'),
(5, 'App\\Movie', 7, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-16 12:35:45'),
(6, 'App\\Movie', 7, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-16 12:36:08'),
(7, 'App\\Movie', 13, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-17 10:03:44'),
(8, 'App\\Movie', 7, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-19 07:33:51'),
(9, 'App\\Movie', 8, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-21 22:37:00'),
(10, 'App\\Movie', 8, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-21 22:38:49'),
(11, 'App\\Movie', 5, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-21 22:39:47'),
(12, 'App\\Movie', 2, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-21 22:40:09'),
(13, 'App\\Movie', 5, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-21 22:40:29'),
(14, 'App\\Movie', 13, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-21 22:40:37'),
(15, 'App\\Movie', 6, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-21 22:40:58'),
(16, 'App\\Movie', 6, 'L9QY6N3osAHmhWMy6Oa1UeuPIbRxKFDNDYnPDMwNbnKeJu7PDuDmmhwjFkZ093MUsuC0pkf6xsiSiDI5', NULL, '2020-02-21 22:42:32'),
(17, 'App\\Movie', 13, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:37:14'),
(18, 'App\\Movie', 5, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:47:56'),
(19, 'App\\Movie', 2, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:48:40'),
(20, 'App\\Movie', 2, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:49:23'),
(21, 'App\\Movie', 5, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:50:01'),
(22, 'App\\Movie', 5, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:50:19'),
(23, 'App\\Movie', 13, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:51:47'),
(24, 'App\\Movie', 13, 'FHJlp474bKpEEdm5llVpoCc16p6ps9t2dyTYfYAj8fAC0LNcAlsQNZTmErZOaboYjXWtN3waGD5fZ1k9', NULL, '2020-02-22 09:52:52'),
(25, 'App\\Movie', 7, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-22 10:23:29'),
(26, 'App\\Movie', 17, 'LLHu96mYiCXuUAG0RXjDLYqP3iApqmLF7irYxiGErAEF1PERJxx96Qn9j3HPSfqIZ7qZJqg0aqPMqlYs', NULL, '2020-02-23 10:00:25'),
(27, 'App\\Movie', 13, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-02-29 23:56:43'),
(28, 'App\\Movie', 8, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-03-01 01:40:28'),
(29, 'App\\Movie', 5, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-03-01 01:40:40'),
(30, 'App\\Movie', 21, '80a55AhtXv3GbP5QDgfO5rbXkRYEk94FG0sl4gCi7dYQxJgJdFiRqfj7AMLEHBMACrZ25eYqRgXXrEpW', NULL, '2020-03-01 01:46:59'),
(31, 'App\\Movie', 13, 'JiT7YSj1SQ5vh6SBJiCAqQRyM7D8i8xRwLgy9w5JOSGoqEHUXOywrOzdNGarcyYzb2IitJUjc7VolZmi', NULL, '2020-03-02 18:39:52'),
(32, 'App\\Movie', 1, 'xPZ2N5Vq19urjWs3w4TpZSjPF5xHTd6OtwetJ71d3V4BOTgLOFcuiMK4ayqVRQ4PAjAMYcAIwXZF40HO', NULL, '2020-03-02 23:22:39'),
(33, 'App\\Movie', 1, 'mWfSA6wWzzmGoBdzTkDrJn8T35q1HtC9cJ2H1PRmEEpsI4Fc3FeC1mk7Aljy66XvUsircjJ4AZIx86mD', NULL, '2020-03-02 23:28:54'),
(34, 'App\\Movie', 2, 'mWfSA6wWzzmGoBdzTkDrJn8T35q1HtC9cJ2H1PRmEEpsI4Fc3FeC1mk7Aljy66XvUsircjJ4AZIx86mD', NULL, '2020-03-02 23:33:15'),
(35, 'App\\Movie', 6, 'mWfSA6wWzzmGoBdzTkDrJn8T35q1HtC9cJ2H1PRmEEpsI4Fc3FeC1mk7Aljy66XvUsircjJ4AZIx86mD', NULL, '2020-03-02 23:33:50'),
(36, 'App\\Movie', 1, 'xPZ2N5Vq19urjWs3w4TpZSjPF5xHTd6OtwetJ71d3V4BOTgLOFcuiMK4ayqVRQ4PAjAMYcAIwXZF40HO', NULL, '2020-03-04 22:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `tv_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watch_histories`
--

INSERT INTO `watch_histories` (`id`, `movie_id`, `tv_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 13, NULL, 1, '2020-02-14 21:02:46', '2020-02-14 21:02:46'),
(2, 10, NULL, 1, '2020-02-14 21:15:10', '2020-02-14 21:15:10'),
(3, 6, NULL, 1, '2020-02-14 21:15:49', '2020-02-14 21:15:49'),
(4, 9, NULL, 1, '2020-02-15 03:24:14', '2020-02-15 03:24:14'),
(5, 5, NULL, 8, '2020-02-20 01:13:50', '2020-02-20 01:13:50'),
(6, 13, NULL, 8, '2020-02-20 01:15:31', '2020-02-20 01:15:31'),
(7, 9, NULL, 8, '2020-02-20 01:15:53', '2020-02-20 01:15:53'),
(8, 3, NULL, 8, '2020-02-20 01:16:23', '2020-02-20 01:16:23'),
(9, 7, NULL, 8, '2020-02-20 01:17:49', '2020-02-20 01:17:49'),
(10, 1, NULL, 8, '2020-02-20 06:06:59', '2020-02-20 06:06:59'),
(11, 6, NULL, 8, '2020-02-20 10:32:35', '2020-02-20 10:32:35'),
(12, 1, NULL, 11, '2020-02-20 20:57:15', '2020-02-20 20:57:15'),
(13, 17, NULL, 11, '2020-02-20 20:57:38', '2020-02-20 20:57:38'),
(14, 7, NULL, 15, '2020-02-21 01:28:01', '2020-02-21 01:28:01'),
(15, 10, NULL, 15, '2020-02-21 01:28:33', '2020-02-21 01:28:33'),
(16, 12, NULL, 15, '2020-02-21 01:28:58', '2020-02-21 01:28:58'),
(17, 13, NULL, 15, '2020-02-21 01:29:08', '2020-02-21 01:29:08'),
(18, 9, NULL, 15, '2020-02-21 01:29:23', '2020-02-21 01:29:23'),
(19, 8, NULL, 15, '2020-02-21 01:29:46', '2020-02-21 01:29:46'),
(20, 17, NULL, 15, '2020-02-21 01:32:53', '2020-02-21 01:32:53'),
(21, 1, NULL, 15, '2020-02-21 01:34:21', '2020-02-21 01:34:21'),
(22, 15, NULL, 15, '2020-02-21 01:36:08', '2020-02-21 01:36:08'),
(23, 12, NULL, 8, '2020-02-21 07:11:33', '2020-02-21 07:11:33'),
(24, 5, NULL, 1, '2020-02-21 22:40:02', '2020-02-21 22:40:02'),
(25, 2, NULL, 1, '2020-02-21 22:40:23', '2020-02-21 22:40:23'),
(26, 2, NULL, 8, '2020-02-22 09:48:52', '2020-02-22 09:48:52'),
(27, 7, NULL, 1, '2020-02-22 10:23:38', '2020-02-22 10:23:38'),
(28, 1, NULL, 16, '2020-02-23 07:58:10', '2020-02-23 07:58:10'),
(29, 7, NULL, 16, '2020-02-23 07:58:32', '2020-02-23 07:58:32'),
(30, 13, NULL, 16, '2020-02-23 09:47:53', '2020-02-23 09:47:53'),
(31, 8, NULL, 16, '2020-02-23 09:48:27', '2020-02-23 09:48:27'),
(32, 9, NULL, 16, '2020-02-23 10:00:03', '2020-02-23 10:00:03'),
(33, 22, NULL, 16, '2020-02-23 10:00:49', '2020-02-23 10:00:49'),
(34, 10, NULL, 8, '2020-02-29 23:51:04', '2020-02-29 23:51:04'),
(35, 21, NULL, 1, '2020-03-01 01:47:09', '2020-03-01 01:47:09'),
(36, 14, NULL, 8, '2020-03-02 07:50:57', '2020-03-02 07:50:57'),
(37, 4, NULL, 8, '2020-03-02 18:05:23', '2020-03-02 18:05:23'),
(38, 17, NULL, 8, '2020-03-02 22:34:27', '2020-03-02 22:34:27'),
(39, 23, NULL, 8, '2020-03-04 00:26:44', '2020-03-04 00:26:44'),
(40, 8, NULL, 8, '2020-03-04 21:27:20', '2020-03-04 21:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `added` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `movie_id`, `season_id`, `added`, `created_at`, `updated_at`) VALUES
(1, 8, 2, NULL, 0, '2020-02-20 01:31:46', '2020-02-20 01:32:00'),
(2, 8, 1, NULL, 0, '2020-02-20 06:22:26', '2020-02-20 06:22:27'),
(3, 8, 13, NULL, 0, '2020-02-20 16:06:23', '2020-02-20 16:06:24'),
(4, 16, 13, NULL, 1, '2020-02-23 07:58:44', '2020-02-23 07:58:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adsenses`
--
ALTER TABLE `adsenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_languages`
--
ALTER TABLE `audio_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_customizes`
--
ALTER TABLE `auth_customizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_cp_callback_addresses`
--
ALTER TABLE `cp_cp_callback_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_callback_addresses_address_currency_unique` (`address`,`currency`);

--
-- Indexes for table `cp_cp_conversions`
--
ALTER TABLE `cp_cp_conversions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_conversions_ref_id_unique` (`ref_id`),
  ADD KEY `cp_conversions_from_index` (`from`),
  ADD KEY `cp_conversions_to_index` (`to`);

--
-- Indexes for table `cp_cp_deposits`
--
ALTER TABLE `cp_cp_deposits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_deposits_txn_id_unique` (`txn_id`),
  ADD KEY `cp_deposits_address_index` (`address`);

--
-- Indexes for table `cp_cp_ipns`
--
ALTER TABLE `cp_cp_ipns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_ipns_ipn_id_unique` (`ipn_id`),
  ADD KEY `cp_ipns_address_index` (`address`);

--
-- Indexes for table `cp_cp_log`
--
ALTER TABLE `cp_cp_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_cp_mass_withdrawals`
--
ALTER TABLE `cp_cp_mass_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_cp_transactions`
--
ALTER TABLE `cp_cp_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_transactions_txn_id_unique` (`txn_id`);

--
-- Indexes for table `cp_cp_transfers`
--
ALTER TABLE `cp_cp_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_transfers_ref_id_unique` (`ref_id`),
  ADD KEY `cp_transfers_status_index` (`status`);

--
-- Indexes for table `cp_cp_withdrawals`
--
ALTER TABLE `cp_cp_withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_withdrawals_ref_id_unique` (`ref_id`),
  ADD UNIQUE KEY `cp_withdrawals_txn_id_unique` (`txn_id`),
  ADD KEY `cp_withdrawals_mass_withdrawal_id_index` (`mass_withdrawal_id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donater_lists`
--
ALTER TABLE `donater_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episodes_seasons_id_foreign` (`seasons_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_translations`
--
ALTER TABLE `footer_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_slider_updates`
--
ALTER TABLE `front_slider_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_translations`
--
ALTER TABLE `header_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_sliders_movie_id_foreign` (`movie_id`),
  ADD KEY `home_sliders_tv_series_id_foreign` (`tv_series_id`);

--
-- Indexes for table `home_translations`
--
ALTER TABLE `home_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_videos`
--
ALTER TABLE `menu_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_videos_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_videos_movie_id_foreign` (`movie_id`),
  ADD KEY `menu_videos_tv_series_id_foreign` (`tv_series_id`);

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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_comments`
--
ALTER TABLE `movie_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_series`
--
ALTER TABLE `movie_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_series_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `movie_subcomments`
--
ALTER TABLE `movie_subcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiplescreens`
--
ALTER TABLE `multiplescreens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`(191),`notifiable_type`);

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
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_menu`
--
ALTER TABLE `package_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paypal_subscriptions`
--
ALTER TABLE `paypal_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_email_unique` (`email`);

--
-- Indexes for table `player_settings`
--
ALTER TABLE `player_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popover_translations`
--
ALTER TABLE `popover_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing_texts`
--
ALTER TABLE `pricing_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seasons_tv_series_id_foreign` (`tv_series_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcomments`
--
ALTER TABLE `subcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtitles`
--
ALTER TABLE `subtitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tv_series`
--
ALTER TABLE `tv_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `google_id` (`google_id`),
  ADD UNIQUE KEY `facebook_id` (`facebook_id`),
  ADD UNIQUE KEY `gitlab_id` (`gitlab_id`),
  ADD UNIQUE KEY `code` (`code`) USING BTREE;

--
-- Indexes for table `user_ratings`
--
ALTER TABLE `user_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videolinks`
--
ALTER TABLE `videolinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videolinks_movie_id_foreign` (`movie_id`),
  ADD KEY `videolinks_episode_id_foreign` (`episode_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_viewable_type_viewable_id_index` (`viewable_type`,`viewable_id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adsenses`
--
ALTER TABLE `adsenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audio_languages`
--
ALTER TABLE `audio_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_customizes`
--
ALTER TABLE `auth_customizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buttons`
--
ALTER TABLE `buttons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_callback_addresses`
--
ALTER TABLE `cp_cp_callback_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_conversions`
--
ALTER TABLE `cp_cp_conversions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_deposits`
--
ALTER TABLE `cp_cp_deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_ipns`
--
ALTER TABLE `cp_cp_ipns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_log`
--
ALTER TABLE `cp_cp_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_mass_withdrawals`
--
ALTER TABLE `cp_cp_mass_withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_transactions`
--
ALTER TABLE `cp_cp_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_transfers`
--
ALTER TABLE `cp_cp_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_withdrawals`
--
ALTER TABLE `cp_cp_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donater_lists`
--
ALTER TABLE `donater_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_translations`
--
ALTER TABLE `footer_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `front_slider_updates`
--
ALTER TABLE `front_slider_updates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `header_translations`
--
ALTER TABLE `header_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_translations`
--
ALTER TABLE `home_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_videos`
--
ALTER TABLE `menu_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `movie_comments`
--
ALTER TABLE `movie_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_series`
--
ALTER TABLE `movie_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_subcomments`
--
ALTER TABLE `movie_subcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multiplescreens`
--
ALTER TABLE `multiplescreens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `package_menu`
--
ALTER TABLE `package_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `paypal_subscriptions`
--
ALTER TABLE `paypal_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_settings`
--
ALTER TABLE `player_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `popover_translations`
--
ALTER TABLE `popover_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pricing_texts`
--
ALTER TABLE `pricing_texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcomments`
--
ALTER TABLE `subcomments`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtitles`
--
ALTER TABLE `subtitles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tv_series`
--
ALTER TABLE `tv_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_ratings`
--
ALTER TABLE `user_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videolinks`
--
ALTER TABLE `videolinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cp_cp_deposits`
--
ALTER TABLE `cp_cp_deposits`
  ADD CONSTRAINT `cp_deposits_address_foreign` FOREIGN KEY (`address`) REFERENCES `cp_cp_callback_addresses` (`address`) ON UPDATE CASCADE;

--
-- Constraints for table `cp_cp_withdrawals`
--
ALTER TABLE `cp_cp_withdrawals`
  ADD CONSTRAINT `cp_withdrawals_mass_withdrawal_id_foreign` FOREIGN KEY (`mass_withdrawal_id`) REFERENCES `cp_cp_mass_withdrawals` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_seasons_id_foreign` FOREIGN KEY (`seasons_id`) REFERENCES `seasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD CONSTRAINT `home_sliders_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `home_sliders_tv_series_id_foreign` FOREIGN KEY (`tv_series_id`) REFERENCES `tv_series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
