-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2020 at 04:39 PM
-- Server version: 5.7.11
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_arch`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(81, 'action_scheduler/migration_hook', 'complete', '2020-10-12 06:29:08', '2020-10-12 06:29:08', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1602484148;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1602484148;}', 1, 1, '2020-10-12 06:29:19', '2020-10-12 09:59:19', 0, NULL),
(82, 'action_scheduler/migration_hook', 'complete', '2020-10-12 06:30:19', '2020-10-12 06:30:19', '[]', 'O:30:"ActionScheduler_SimpleSchedule":2:{s:22:"\0*\0scheduled_timestamp";i:1602484219;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1602484219;}', 1, 1, '2020-10-12 06:30:21', '2020-10-12 10:00:21', 0, NULL),
(83, 'wpforms_process_entry_emails_meta_cleanup', 'canceled', '2020-10-13 00:00:00', '2020-10-13 00:00:00', '{"tasks_meta_id":1}', 'O:32:"ActionScheduler_IntervalSchedule":5:{s:22:"\0*\0scheduled_timestamp";i:1602547200;s:18:"\0*\0first_timestamp";i:1602547200;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1602547200;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(84, 'wpforms_admin_notifications_update', 'canceled', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{"tasks_meta_id":2}', 'O:28:"ActionScheduler_NullSchedule":0:{}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 81, 'action created', '2020-10-12 06:28:08', '2020-10-12 06:28:08'),
(2, 81, 'action started via WP Cron', '2020-10-12 06:29:19', '2020-10-12 06:29:19'),
(3, 81, 'action complete via WP Cron', '2020-10-12 06:29:19', '2020-10-12 06:29:19'),
(4, 82, 'action created', '2020-10-12 06:29:19', '2020-10-12 06:29:19'),
(5, 83, 'action created', '2020-10-12 06:29:20', '2020-10-12 06:29:20'),
(6, 82, 'action started via WP Cron', '2020-10-12 06:30:21', '2020-10-12 06:30:21'),
(7, 82, 'action complete via WP Cron', '2020-10-12 06:30:21', '2020-10-12 06:30:21'),
(8, 84, 'action created', '2020-10-12 06:33:13', '2020-10-12 06:33:13'),
(9, 84, 'action canceled', '2020-10-12 06:33:22', '2020-10-12 06:33:22'),
(10, 83, 'action canceled', '2020-10-12 06:33:22', '2020-10-12 06:33:22');

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'یک نویسندهٔ دیدگاه در وردپرس', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-05 02:33:41', '2020-10-04 23:03:41', 'سلام، این یک دیدگاه است.\nبرای شروع مدیریت، ویرایش و پاک کردن دیدگاه‌ها، لطفا بخش دیدگاه‌ها در پیشخوان را ببینید.\nتصاویر نویسندگان دیدگاه از <a href="https://gravatar.com">Gravatar</a> گرفته می‌شود.', 0, '1', '', 'comment', 0, 0),
(2, 82, 'محمد ایرانی', 'm.ab@test.com', 'http://test.com', '::1', '2020-10-12 19:58:40', '2020-10-12 16:28:40', 'مطلب خیلی خوبی بود تشکر', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36 Edg/86.0.622.38', 'comment', 0, 0),
(3, 82, 'dadmin', 'admin@dalanarch.ir', 'http://localhost/git/wpArch/wp', '::1', '2020-10-12 20:00:38', '2020-10-12 16:30:38', 'خواهش میکنم', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'comment', 2, 1);

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
-- Table structure for table `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `token` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `status` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'S',
  `id` int(11) NOT NULL,
  `profile` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` int(11) NOT NULL DEFAULT '0',
  `last_activity` int(11) NOT NULL DEFAULT '0',
  `followup_step` tinyint(4) NOT NULL DEFAULT '0',
  `followup_time` bigint(20) NOT NULL DEFAULT '0',
  `followup` tinyint(4) NOT NULL DEFAULT '0',
  `surname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sex` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'n',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `referrer` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `http_referer` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `geo` tinyint(4) NOT NULL DEFAULT '0',
  `country` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `region` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bounce_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bounce_time` int(11) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `list_21` tinyint(4) NOT NULL DEFAULT '0',
  `list_22` tinyint(4) NOT NULL DEFAULT '0',
  `list_23` tinyint(4) NOT NULL DEFAULT '0',
  `list_24` tinyint(4) NOT NULL DEFAULT '0',
  `list_25` tinyint(4) NOT NULL DEFAULT '0',
  `list_26` tinyint(4) NOT NULL DEFAULT '0',
  `list_27` tinyint(4) NOT NULL DEFAULT '0',
  `list_28` tinyint(4) NOT NULL DEFAULT '0',
  `list_29` tinyint(4) NOT NULL DEFAULT '0',
  `list_30` tinyint(4) NOT NULL DEFAULT '0',
  `list_31` tinyint(4) NOT NULL DEFAULT '0',
  `list_32` tinyint(4) NOT NULL DEFAULT '0',
  `list_33` tinyint(4) NOT NULL DEFAULT '0',
  `list_34` tinyint(4) NOT NULL DEFAULT '0',
  `list_35` tinyint(4) NOT NULL DEFAULT '0',
  `list_36` tinyint(4) NOT NULL DEFAULT '0',
  `list_37` tinyint(4) NOT NULL DEFAULT '0',
  `list_38` tinyint(4) NOT NULL DEFAULT '0',
  `list_39` tinyint(4) NOT NULL DEFAULT '0',
  `list_40` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_6` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_7` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_8` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_9` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_10` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_11` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_12` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_13` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_14` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_15` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_16` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_17` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_18` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_19` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_20` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_newsletter`
--

INSERT INTO `wp_newsletter` (`name`, `email`, `token`, `language`, `status`, `id`, `profile`, `created`, `updated`, `last_activity`, `followup_step`, `followup_time`, `followup`, `surname`, `sex`, `feed_time`, `feed`, `referrer`, `ip`, `wp_user_id`, `http_referer`, `geo`, `country`, `region`, `city`, `bounce_type`, `bounce_time`, `unsub_email_id`, `unsub_time`, `list_1`, `list_2`, `list_3`, `list_4`, `list_5`, `list_6`, `list_7`, `list_8`, `list_9`, `list_10`, `list_11`, `list_12`, `list_13`, `list_14`, `list_15`, `list_16`, `list_17`, `list_18`, `list_19`, `list_20`, `list_21`, `list_22`, `list_23`, `list_24`, `list_25`, `list_26`, `list_27`, `list_28`, `list_29`, `list_30`, `list_31`, `list_32`, `list_33`, `list_34`, `list_35`, `list_36`, `list_37`, `list_38`, `list_39`, `list_40`, `profile_1`, `profile_2`, `profile_3`, `profile_4`, `profile_5`, `profile_6`, `profile_7`, `profile_8`, `profile_9`, `profile_10`, `profile_11`, `profile_12`, `profile_13`, `profile_14`, `profile_15`, `profile_16`, `profile_17`, `profile_18`, `profile_19`, `profile_20`, `test`) VALUES
('', 'admin@dalanarch.ir', '3c1b21b748', '', 'C', 1, NULL, '2020-10-12 06:40:35', 0, 0, 0, 0, 0, '', 'n', 0, 0, '', '', 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
('', 'test@test.com', '0699aa4337', '', 'C', 2, NULL, '2020-10-12 06:44:19', 1602485059, 0, 0, 0, 0, '', 'n', 0, 0, 'widget', '::1', 0, 'http://localhost/git/wpArch/wp/', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_unicode_520_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `track` int(11) NOT NULL DEFAULT '1',
  `list` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_520_ci,
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message_text` longtext COLLATE utf8mb4_unicode_520_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_520_ci,
  `send_on` int(11) NOT NULL DEFAULT '0',
  `token` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unsub_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stats_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_newsletter_emails`
--

INSERT INTO `wp_newsletter_emails` (`id`, `language`, `subject`, `message`, `created`, `status`, `total`, `last_id`, `sent`, `track`, `list`, `type`, `query`, `editor`, `sex`, `theme`, `message_text`, `preferences`, `send_on`, `token`, `options`, `private`, `click_count`, `version`, `open_count`, `unsub_count`, `error_count`, `stats_time`) VALUES
(1, '', '', '<!DOCTYPE html>\n<html>\n<head>\n<title>{email_subject}</title>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1">\n<meta http-equiv="X-UA-Compatible" content="IE=edge">\n<style type="text/css">\n#outlook a{padding:0;} /* Force Outlook to provide a "view in browser" message */\n.ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;} /* Force Hotmail to display normal line spacing */\nbody, table, td, a{-webkit-text-size-adjust:100%; -ms-text-size-adjust:100%;} /* Prevent WebKit and Windows mobile changing default text sizes */\ntable, td{mso-table-lspace:0pt; mso-table-rspace:0pt;} /* Remove spacing between tables in Outlook 2007 and up */\nimg{-ms-interpolation-mode:bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */\n\nbody{margin:0; padding:0; height:100% !important; margin:0; padding:0; width:100% !important;}\nimg{border:0; height:auto; line-height:100%; outline:none; text-decoration:none; max-width: 100%!important}\ntable{border-collapse:collapse !important;}\nimg.aligncenter{display:block;margin:0 auto;}\n\n@media all and (max-width: 525px) {\n\n    /* ALLOWS FOR FLUID TABLES */\n    table[class="wrapper"]{\n        width:100% !important;\n    }\n\n    table[class="mobile-full-width"] {\n        width:100% !important;\n    }\n\n    img[class="mobile-full-width"] {\n        width:100% !important;\n        display: block;\n    }\n\n    /* ADJUSTS LAYOUT OF LOGO IMAGE */\n    td[class="logo"]{\n        text-align: left;\n        padding: 20px 0 20px 0 !important;\n    }\n\n    td[class="logo"] img{\n        margin:0 auto!important;\n    }\n\n    /* USE THESE CLASSES TO HIDE CONTENT ON MOBILE */\n    td[class="mobile-hide"]{\n        display:none;}\n\n    img[class="mobile-hide"]{\n        display: none !important;\n    }\n\n    img[class="img-max"]{\n        max-width: 100% !important;\n        /*width: 100% !important;*/\n        height:auto !important;\n    }\n\n    /* FULL-WIDTH TABLES */\n    table[class="responsive-table"]{\n        width:100%!important;\n        max-width: 100%!important;\n    }\n\n    /* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE */\n    td[class="padding"]{\n        padding: 10px 5% 15px 5% !important;\n    }\n\n    td[class="padding-copy"]{\n        padding: 10px 5% 10px 5% !important;\n        text-align: center;\n    }\n\n    td[class="padding-meta"]{\n        padding: 30px 5% 0px 5% !important;\n        text-align: center;\n    }\n\n    td[class="no-pad"]{\n        padding: 0 0 20px 0 !important;\n    }\n\n    td[class="no-padding"]{\n        padding: 0 !important;\n    }\n\n    td[class="section-padding"]{\n        padding: 50px 15px 50px 15px !important;\n    }\n\n    td[class="section-padding-bottom-image"]{\n        padding: 50px 15px 0 15px !important;\n    }\n\n    /* ADJUST BUTTONS ON MOBILE */\n    td[class="mobile-wrapper"]{\n        padding: 10px 5% 15px 5% !important;\n    }\n\n    table[class="mobile-button-container"]{\n        margin:0 auto;\n        width:100% !important;\n    }\n\n    a[class="mobile-button"]{\n        width:80% !important;\n        padding: 15px !important;\n        border: 0 !important;\n        font-size: 16px !important;\n    }\n}\n\n/* Text */\n\n\n/* Last posts */\n@media (max-width: 525px) {\n    .posts-1-column {\n        width: 100%!important;\n    }\n    .posts-1-image {\n        width: 100%!important;\n        display: block;\n    }\n}\n\n\n\n/* Html */\n.html-td-global p {\n    font-family: Helvetica, Arial, sans-serif;\n    font-size: 16px;\n}\n\n\n/* Hero */\n@media all and (max-width: 525px) {\n    .hero-table {\n        width: 100%!important;\n        max-width: 100%!important;\n    }\n\n    .hero-table-right {\n        margin-top: 20px;\n    }\n}\n\n/* Header */\n@media all and (max-width: 640) {\n    .header-table td {\n        width: 100%!important;\n    }\n    .header-logo-global {\n        text-align: center!important;\n    }\n}\n\n</style>\n</head>\n<body style="margin: 0; padding: 0;" dir="rtl">\n\n<table cellpadding=\'0\' cellspacing=\'0\' border=\'0\' width=\'100%\'>\n<tr>\n<td bgcolor=\'#f4f4f4\' valign=\'top\'><!-- tnp -->\r\n\r\n\n<!-- /tnp -->\n</td>\n</tr>\n</table>\n\n</body>\n</html>', '2020-10-12 13:05:57', 'new', 0, 0, 0, 1, 0, 'message', 'select * from wp_newsletter where status=\'C\'', 2, '', '', 'This email requires a modern e-mail reader but you can view the email online here:\n{email_url}.\nThank you, دالان آرک\nTo change your subscription follow: {profile_url}.', NULL, 1602507957, '356f002953', 'a:1:{s:19:"composer_background";s:7:"#f4f4f4";}', 0, 0, '', 0, 0, 0, 0),
(2, '', '', '<!doctype html>\r\n<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">\r\n<head>\r\n    <title>{email_subject}</title>\r\n    <!--[if !mso]><!-- -->\r\n    <meta http-equiv="X-UA-Compatible" content="IE=edge">\r\n    <!--<![endif]-->\r\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">\r\n    <meta name="viewport" content="width=device-width, initial-scale=1">\r\n    <style type="text/css">\r\n        a {\r\n            text-decoration: none;\r\n            color: #555555;\r\n        }\r\n        #outlook a {\r\n            padding: 0;\r\n        }\r\n\r\n        body {\r\n            margin: 0;\r\n            padding: 0;\r\n            -webkit-text-size-adjust: 100%;\r\n            -ms-text-size-adjust: 100%;\r\n        }\r\n\r\n        table,\r\n        td {\r\n            border-collapse: collapse;\r\n            mso-table-lspace: 0pt;\r\n            mso-table-rspace: 0pt;\r\n        }\r\n\r\n        img {\r\n            border: 0;\r\n            height: auto;\r\n            line-height: 100%;\r\n            outline: none;\r\n            text-decoration: none;\r\n            -ms-interpolation-mode: bicubic;\r\n            max-width: 100%;\r\n        }\r\n\r\n        p {\r\n            display: block;\r\n            margin: 13px 0;\r\n        }\r\n        @media all and (max-width: 525px) {\r\n            td {\r\n                float: left;\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n    <!--[if mso]>\r\n    <xml>\r\n    <o:OfficeDocumentSettings>\r\n      <o:AllowPNG/>\r\n      <o:PixelsPerInch>96</o:PixelsPerInch>\r\n    </o:OfficeDocumentSettings>\r\n    </xml>\r\n    <![endif]-->\r\n    \r\n    <!--[if lte mso 11]>\r\n    <style type="text/css">\r\n        .mj-outlook-group-fix { width:100% !important; }\r\n    </style>\r\n    <![endif]-->\r\n</head>\r\n\r\n<body style="margin: 0!important; padding: 0!important; background-color: #f4f4f4;">\r\n<div style="background-color: #f4f4f4;"><br />\r\n<div style="background-color: #ffffff; margin: 0px auto; max-width: 600px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; color: #666; padding: 0; border: 0;"><!--[if mso | IE]><table role="presentation" border="0" cellpadding="0" align="center" cellspacing="0" width="600"><tr><td width="600" style="vertical-align:top;width:600px;"><![endif]-->\r\n<table style="max-width: 600px; width: 100%; border-collapse: collapse;" border="0" width="100%" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: left; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; color: #666;" align="left" valign="top" bgcolor="#ffffff" width="100%">\r\n<div style="text-align: center;">\r\n<div style="padding: 30px 0; color: #000; font-size: 28px; border-bottom: 1px solid #ddd; text-align: center;">دالان آرک</div>\r\n<div style="padding: 10px 0; color: #000; font-size: 16px; text-align: center;">یک سایت دیگر با وردپرس فارسی</div>\r\n</div>\r\n<div style="padding: 10px 20px 20px 20px; background-color: #fff; line-height: 18px;">\r\n<p style="text-align: center; font-size: small;"><a href="{email_url}" target="_blank" rel="noopener">View this email online</a></p>\r\n<p>Here you can start to write your message. Be polite with your readers! Don\'t forget the subject of this message.</p>\r\n<table cellpadding="5">\r\n<tbody>\r\n<tr><!-- Image column -->\r\n<td valign="top" width="150"><a href="http://localhost/git/wpArch/wp/?p=76" target="_blank" rel="noopener"><img style="width: 150px; min-width: 150px;" src="http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/bridgeoverhead-150x150.jpg" alt="image" width="150" /></a></td>\r\n<td valign="top"><a style="font-size: 20px; line-height: 26px;" href="http://localhost/git/wpArch/wp/?p=76" target="_blank" rel="noopener">نقاط کانونی یا Focal Points در دکوراسیون داخلی چیست؟</a></td>\r\n</tr>\r\n<tr><!-- Image column -->\r\n<td valign="top" width="150"><a href="http://localhost/git/wpArch/wp/?p=71" target="_blank" rel="noopener"><img style="width: 150px; min-width: 150px;" src="http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/tehran-150x150.jpg" alt="image" width="150" /></a></td>\r\n<td valign="top"><a style="font-size: 20px; line-height: 26px;" href="http://localhost/git/wpArch/wp/?p=71" target="_blank" rel="noopener">فراخوان طراحی دیوارنگاری، جداره های پیشانی و ورودی های جانبی تونل های تهران</a></td>\r\n</tr>\r\n<tr><!-- Image column -->\r\n<td valign="top" width="150"><a href="http://localhost/git/wpArch/wp/?p=67" target="_blank" rel="noopener"><img style="width: 150px; min-width: 150px;" src="http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/greenery-1-150x150.jpg" alt="image" width="150" /></a></td>\r\n<td valign="top"><a style="font-size: 20px; line-height: 26px;" href="http://localhost/git/wpArch/wp/?p=67" target="_blank" rel="noopener">معماری سبز و طراحی داخلی ویلا برای یک زوج مسن</a></td>\r\n</tr>\r\n<tr><!-- Image column -->\r\n<td valign="top" width="150"><a href="http://localhost/git/wpArch/wp/?p=63" target="_blank" rel="noopener"><img style="width: 150px; min-width: 150px;" src="http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/jungle-1-150x150.jpg" alt="image" width="150" /></a></td>\r\n<td valign="top"><a style="font-size: 20px; line-height: 26px;" href="http://localhost/git/wpArch/wp/?p=63" target="_blank" rel="noopener">هتلی که توانایی معمارانش را به رخ می کشد!</a></td>\r\n</tr>\r\n<tr><!-- Image column -->\r\n<td valign="top" width="150"> </td>\r\n<td valign="top"><a style="font-size: 20px; line-height: 26px;" href="http://localhost/git/wpArch/wp/?p=1" target="_blank" rel="noopener">سلام دنیا!</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- Footer -->\r\n<div style="text-align: center; font-weight: bold; margin: 40px 0 10px;"> </div>\r\n<div style="text-align: center; margin: 10px 0 20px;"> </div>\r\n<!-- Social -->\r\n<div style="text-align: center; color: #888; margin-top: 20px;"> </div>\r\n<div style="text-align: center; color: #888;">To change your subscription, <a href="{profile_url}" target="_blank" rel="noopener">click here</a>.</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--[if mso | IE]></td></tr></table><![endif]--></div>\r\n</div>\r\n</body>\r\n</html>', '2020-10-12 13:09:02', 'new', 2, 0, 0, 1, 0, 'message', 'select * from wp_newsletter where status=\'C\'', 0, '', '', 'This email requires a modern e-mail reader but you can view the email online here:\r\n\r\n{email_url}.\r\n\r\nThank you, دالان آرک\r\nTo change your subscription follow:\r\n{profile_url}.', NULL, 1602505800, '', 'a:3:{s:14:"lists_operator";s:2:"or";s:6:"status";s:1:"C";s:8:"wp_users";s:1:"0";}', 0, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_user_logs`
--

CREATE TABLE `wp_newsletter_user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `source` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_newsletter_user_logs`
--

INSERT INTO `wp_newsletter_user_logs` (`id`, `user_id`, `ip`, `source`, `data`, `created`) VALUES
(1, 2, '::1', 'subscribe', '{"status":"C"}', 1602485059);

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
(1, 'siteurl', 'http://localhost/git/wpArch/wp', 'yes'),
(2, 'home', 'http://localhost/git/wpArch/wp', 'yes'),
(3, 'blogname', 'دالان آرک', 'yes'),
(4, 'blogdescription', 'یک سایت دیگر با وردپرس فارسی', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@dalanarch.ir', 'yes'),
(7, 'start_of_week', '6', 'yes'),
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
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:21:"newsletter/plugin.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '+3.5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:61:"C:\\UwAmp\\www\\git\\wpArch\\wp/wp-content/themes/wparch/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'wparch', 'yes'),
(41, 'stylesheet', 'wparch', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:2;a:4:{s:5:"title";s:30:"دربارهٔ این سایت";s:4:"text";s:88:"اینجا مکان مناسبی است برای معرفی شما و سایت‌تان.";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:22:"ما را بیابید";s:4:"text";s:262:"<strong>نشانی</strong>\nخیابان ۱۲۳\nنیویورک، نیویورک ۱۰۰۰۱\n\n<strong>ساعت کاری</strong>\nشنبه تا چهارشنبه: ۹ صبح تا ۵ بعد از ظهر\nپنجشنبه و جمعه: ۱۱ صبح تا ۳ بعد از ظهر";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1617404621', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'fa_IR', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:25:"نظرات کاربران";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:5:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:8:"search-2";i:3;s:14:"recent-posts-2";i:4;s:17:"recent-comments-2";}s:9:"sidebar-1";a:2:{i:0;s:13:"media_image-2";i:1;s:17:"recent-comments-3";}s:9:"sidebar-2";a:1:{i:0;s:10:"archives-2";}s:9:"sidebar-3";a:1:{i:0;s:12:"categories-2";}s:9:"sidebar-4";a:1:{i:0;s:6:"meta-2";}s:9:"sidebar-5";a:1:{i:0;s:18:"newsletterwidget-3";}s:13:"array_version";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1602607263;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1602608639;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1602630236;a:4:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1602630239;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1602630246;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1603103400;a:1:{s:28:"wpforms_email_summaries_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:30:"wpforms_email_summaries_weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1603148636;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:2:{i:2;a:15:{s:4:"size";s:6:"medium";s:5:"width";i:390;s:6:"height";i:262;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";s:13:"attachment_id";i:98;s:3:"url";s:83:"http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/raph_ads_arel-300x202.jpg";s:5:"title";s:17:"فروش چیزی";}s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwenty', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1602520606;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:6:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:8:"search-2";i:3;s:14:"recent-posts-2";i:4;s:17:"recent-comments-2";i:5;s:18:"newsletterwidget-3";}s:9:"sidebar-1";a:3:{i:0;s:10:"archives-3";i:1;s:14:"recent-posts-3";i:2;s:12:"categories-3";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(144, 'finished_updating_comment_type', '1', 'yes'),
(148, 'current_theme', 'WP Arch', 'yes'),
(149, 'theme_mods_wparch', 'a:13:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"arch-hedear";i:8;s:9:"arch-menu";i:9;}s:18:"custom_css_post_id";i:-1;s:12:"header_image";s:13:"remove-header";s:11:"custom_logo";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1602520558;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:8:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:8:"search-2";i:3;s:14:"recent-posts-2";i:4;s:17:"recent-comments-2";i:5;s:10:"archives-2";i:6;s:12:"categories-2";i:7;s:6:"meta-2";}s:9:"sidebar-1";a:2:{i:0;s:10:"archives-3";i:1;s:14:"recent-posts-3";}s:9:"sidebar-2";a:1:{i:0;s:12:"categories-3";}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:1:{i:0;s:18:"newsletterwidget-3";}}}s:13:"link_ibgcolor";s:7:"#ffa000";s:11:"link_icolor";s:7:"#ffffff";s:16:"header_textcolor";s:0:"";s:14:"link_maincolor";s:7:"#000000";s:14:"link_textcolor";s:7:"#ffffff";s:16:"background_image";s:0:"";s:17:"background_preset";s:6:"repeat";}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(171, '_transient_health-check-site-status-result', '{"good":10,"recommended":10,"critical":0}', 'yes'),
(194, 'recovery_mode_email_last_sent', '1602388139', 'yes'),
(221, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(304, 'recently_activated', 'a:1:{s:24:"wpforms-lite/wpforms.php";i:1602484402;}', 'yes'),
(307, '_site_transient_timeout_browser_ef304b8034ec4ae3b449ff3aaae049f6', '1603088794', 'no'),
(308, '_site_transient_browser_ef304b8034ec4ae3b449ff3aaae049f6', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"84.0.4147.135";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(309, '_site_transient_timeout_php_check_70b0f2e71e10d268b0bc7f081eb76a94', '1603088795', 'no'),
(310, '_site_transient_php_check_70b0f2e71e10d268b0bc7f081eb76a94', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(311, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1602566589', 'no'),
(312, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:"sandboxed";b:0;s:5:"error";N;s:8:"location";a:1:{s:2:"ip";b:0;}s:6:"events";a:2:{i:0;a:10:{s:4:"type";s:6:"meetup";s:5:"title";s:75:"Discussion Group: Who am I to be speaking? + Finding a topic for a WP event";s:3:"url";s:68:"https://www.meetup.com/learn-wordpress-discussions/events/273798318/";s:6:"meetup";s:27:"Learn WordPress Discussions";s:10:"meetup_url";s:51:"https://www.meetup.com/learn-wordpress-discussions/";s:4:"date";s:19:"2020-10-12 07:00:00";s:8:"end_date";s:19:"2020-10-12 08:00:00";s:20:"start_unix_timestamp";i:1602511200;s:18:"end_unix_timestamp";i:1602514800;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"US";s:8:"latitude";d:37.779998779297;s:9:"longitude";d:-122.41999816895;}}i:1;a:10:{s:4:"type";s:8:"wordcamp";s:5:"title";s:22:"WordCamp Italia Online";s:3:"url";s:33:"https://2020.italia.wordcamp.org/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2020-10-16 00:00:00";s:8:"end_date";s:19:"2020-10-17 00:00:00";s:20:"start_unix_timestamp";i:1602799200;s:18:"end_unix_timestamp";i:1602885600;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"IT";s:8:"latitude";d:41.87194;s:9:"longitude";d:12.56738;}}}}', 'no'),
(319, 'action_scheduler_hybrid_store_demarkation', '80', 'yes'),
(320, 'schema-ActionScheduler_StoreSchema', '3.0.1602484088', 'yes'),
(321, 'schema-ActionScheduler_LoggerSchema', '2.0.1602484088', 'yes'),
(322, 'wpforms_version', '1.6.2.3', 'yes'),
(323, 'wpforms_version_lite', '1.6.2.3', 'yes'),
(324, 'wpforms_activated', 'a:1:{s:4:"lite";i:1602484088;}', 'yes'),
(327, 'action_scheduler_lock_async-request-runner', '1602484450', 'yes'),
(328, 'widget_wpforms-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, '_transient_timeout_as-post-store-dependencies-met', '1602570488', 'no'),
(331, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(332, 'wpforms_review', 'a:2:{s:4:"time";i:1602484089;s:9:"dismissed";b:0;}', 'yes'),
(339, 'newsletter_logger_secret', '3e0ed886', 'yes'),
(341, 'newsletter_main_first_install_time', '1602484832', 'no'),
(342, 'newsletter_main', 'a:30:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:17:"info@dalanarch.ir";s:11:"sender_name";s:17:"دالان آرک";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:5:"debug";i:0;s:5:"track";i:1;s:3:"css";s:0:"";s:12:"css_disabled";i:0;s:2:"ip";s:0:"";s:4:"page";i:81;s:19:"disable_cron_notice";i:0;s:13:"do_shortcodes";i:0;s:11:"header_logo";s:0:"";s:12:"header_title";s:17:"دالان آرک";s:10:"header_sub";s:51:"یک سایت دیگر با وردپرس فارسی";s:12:"footer_title";s:0:"";s:14:"footer_contact";s:0:"";s:12:"footer_legal";s:0:"";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:13:"instagram_url";s:0:"";s:13:"pinterest_url";s:0:"";s:12:"linkedin_url";s:0:"";s:10:"tumblr_url";s:0:"";s:11:"youtube_url";s:0:"";s:9:"vimeo_url";s:0:"";s:14:"soundcloud_url";s:0:"";}', 'yes'),
(343, 'newsletter_main_info', 'a:15:{s:11:"header_logo";a:1:{s:2:"id";i:0;}s:12:"header_title";s:17:"دالان آرک";s:10:"header_sub";s:51:"یک سایت دیگر با وردپرس فارسی";s:12:"footer_title";s:0:"";s:14:"footer_contact";s:0:"";s:12:"footer_legal";s:0:"";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:13:"instagram_url";s:0:"";s:13:"pinterest_url";s:0:"";s:12:"linkedin_url";s:0:"";s:10:"tumblr_url";s:0:"";s:11:"youtube_url";s:0:"";s:9:"vimeo_url";s:0:"";s:14:"soundcloud_url";s:0:"";}', 'yes'),
(344, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(345, 'newsletter_main_version', '1.6.3', 'yes'),
(346, 'newsletter_subscription_first_install_time', '1602484832', 'no'),
(347, 'newsletter', 'a:14:{s:14:"noconfirmation";i:1;s:12:"notify_email";s:18:"admin@dalanarch.ir";s:8:"multiple";i:1;s:6:"notify";i:0;s:10:"error_text";s:102:"<p>You cannot subscribe with the email address you entered, please contact the site administrator.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:104:"<p>A confirmation email is on the way. Follow the instructions and check the spam folder. Thank you.</p>";s:20:"confirmation_subject";s:32:"Please confirm your subscription";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:94:"<p>Please confirm your subscription <a href="{subscription_confirm_url}">clicking here</a></p>";s:14:"confirmed_text";s:43:"<p>Your subscription has been confirmed</p>";s:17:"confirmed_subject";s:7:"Welcome";s:17:"confirmed_message";s:130:"<p>This message confirms your subscription to our newsletter. Thank you!</p><hr><p><a href="{profile_url}">Change your profile</p>";s:18:"confirmed_tracking";s:0:"";}', 'yes'),
(348, 'newsletter_subscription_lists', 'a:160:{s:6:"list_1";s:28:"اعلان های عمومی";s:13:"list_1_status";s:1:"1";s:19:"list_1_subscription";s:1:"2";s:14:"list_1_profile";s:1:"1";s:6:"list_2";s:27:"مسابقات معماری";s:13:"list_2_status";s:1:"1";s:19:"list_2_subscription";s:1:"1";s:14:"list_2_profile";s:1:"1";s:6:"list_3";s:17:"گروه دیگر";s:13:"list_3_status";s:1:"1";s:19:"list_3_subscription";s:1:"1";s:14:"list_3_profile";s:1:"1";s:6:"list_4";s:0:"";s:13:"list_4_status";s:1:"0";s:19:"list_4_subscription";s:1:"0";s:14:"list_4_profile";s:1:"0";s:6:"list_5";s:0:"";s:13:"list_5_status";s:1:"0";s:19:"list_5_subscription";s:1:"0";s:14:"list_5_profile";s:1:"0";s:6:"list_6";s:0:"";s:13:"list_6_status";s:1:"0";s:19:"list_6_subscription";s:1:"0";s:14:"list_6_profile";s:1:"0";s:6:"list_7";s:0:"";s:13:"list_7_status";s:1:"0";s:19:"list_7_subscription";s:1:"0";s:14:"list_7_profile";s:1:"0";s:6:"list_8";s:0:"";s:13:"list_8_status";s:1:"0";s:19:"list_8_subscription";s:1:"0";s:14:"list_8_profile";s:1:"0";s:6:"list_9";s:0:"";s:13:"list_9_status";s:1:"0";s:19:"list_9_subscription";s:1:"0";s:14:"list_9_profile";s:1:"0";s:7:"list_10";s:0:"";s:14:"list_10_status";s:1:"0";s:20:"list_10_subscription";s:1:"0";s:15:"list_10_profile";s:1:"0";s:7:"list_11";s:0:"";s:14:"list_11_status";s:1:"0";s:20:"list_11_subscription";s:1:"0";s:15:"list_11_profile";s:1:"0";s:7:"list_12";s:0:"";s:14:"list_12_status";s:1:"0";s:20:"list_12_subscription";s:1:"0";s:15:"list_12_profile";s:1:"0";s:7:"list_13";s:0:"";s:14:"list_13_status";s:1:"0";s:20:"list_13_subscription";s:1:"0";s:15:"list_13_profile";s:1:"0";s:7:"list_14";s:0:"";s:14:"list_14_status";s:1:"0";s:20:"list_14_subscription";s:1:"0";s:15:"list_14_profile";s:1:"0";s:7:"list_15";s:0:"";s:14:"list_15_status";s:1:"0";s:20:"list_15_subscription";s:1:"0";s:15:"list_15_profile";s:1:"0";s:7:"list_16";s:0:"";s:14:"list_16_status";s:1:"0";s:20:"list_16_subscription";s:1:"0";s:15:"list_16_profile";s:1:"0";s:7:"list_17";s:0:"";s:14:"list_17_status";s:1:"0";s:20:"list_17_subscription";s:1:"0";s:15:"list_17_profile";s:1:"0";s:7:"list_18";s:0:"";s:14:"list_18_status";s:1:"0";s:20:"list_18_subscription";s:1:"0";s:15:"list_18_profile";s:1:"0";s:7:"list_19";s:0:"";s:14:"list_19_status";s:1:"0";s:20:"list_19_subscription";s:1:"0";s:15:"list_19_profile";s:1:"0";s:7:"list_20";s:0:"";s:14:"list_20_status";s:1:"0";s:20:"list_20_subscription";s:1:"0";s:15:"list_20_profile";s:1:"0";s:7:"list_21";s:0:"";s:14:"list_21_status";s:1:"0";s:20:"list_21_subscription";s:1:"0";s:15:"list_21_profile";s:1:"0";s:7:"list_22";s:0:"";s:14:"list_22_status";s:1:"0";s:20:"list_22_subscription";s:1:"0";s:15:"list_22_profile";s:1:"0";s:7:"list_23";s:0:"";s:14:"list_23_status";s:1:"0";s:20:"list_23_subscription";s:1:"0";s:15:"list_23_profile";s:1:"0";s:7:"list_24";s:0:"";s:14:"list_24_status";s:1:"0";s:20:"list_24_subscription";s:1:"0";s:15:"list_24_profile";s:1:"0";s:7:"list_25";s:0:"";s:14:"list_25_status";s:1:"0";s:20:"list_25_subscription";s:1:"0";s:15:"list_25_profile";s:1:"0";s:7:"list_26";s:0:"";s:14:"list_26_status";s:1:"0";s:20:"list_26_subscription";s:1:"0";s:15:"list_26_profile";s:1:"0";s:7:"list_27";s:0:"";s:14:"list_27_status";s:1:"0";s:20:"list_27_subscription";s:1:"0";s:15:"list_27_profile";s:1:"0";s:7:"list_28";s:0:"";s:14:"list_28_status";s:1:"0";s:20:"list_28_subscription";s:1:"0";s:15:"list_28_profile";s:1:"0";s:7:"list_29";s:0:"";s:14:"list_29_status";s:1:"0";s:20:"list_29_subscription";s:1:"0";s:15:"list_29_profile";s:1:"0";s:7:"list_30";s:0:"";s:14:"list_30_status";s:1:"0";s:20:"list_30_subscription";s:1:"0";s:15:"list_30_profile";s:1:"0";s:7:"list_31";s:0:"";s:14:"list_31_status";s:1:"0";s:20:"list_31_subscription";s:1:"0";s:15:"list_31_profile";s:1:"0";s:7:"list_32";s:0:"";s:14:"list_32_status";s:1:"0";s:20:"list_32_subscription";s:1:"0";s:15:"list_32_profile";s:1:"0";s:7:"list_33";s:0:"";s:14:"list_33_status";s:1:"0";s:20:"list_33_subscription";s:1:"0";s:15:"list_33_profile";s:1:"0";s:7:"list_34";s:0:"";s:14:"list_34_status";s:1:"0";s:20:"list_34_subscription";s:1:"0";s:15:"list_34_profile";s:1:"0";s:7:"list_35";s:0:"";s:14:"list_35_status";s:1:"0";s:20:"list_35_subscription";s:1:"0";s:15:"list_35_profile";s:1:"0";s:7:"list_36";s:0:"";s:14:"list_36_status";s:1:"0";s:20:"list_36_subscription";s:1:"0";s:15:"list_36_profile";s:1:"0";s:7:"list_37";s:0:"";s:14:"list_37_status";s:1:"0";s:20:"list_37_subscription";s:1:"0";s:15:"list_37_profile";s:1:"0";s:7:"list_38";s:0:"";s:14:"list_38_status";s:1:"0";s:20:"list_38_subscription";s:1:"0";s:15:"list_38_profile";s:1:"0";s:7:"list_39";s:0:"";s:14:"list_39_status";s:1:"0";s:20:"list_39_subscription";s:1:"0";s:15:"list_39_profile";s:1:"0";s:7:"list_40";s:0:"";s:14:"list_40_status";s:1:"0";s:20:"list_40_subscription";s:1:"0";s:15:"list_40_profile";s:1:"0";}', 'yes'),
(349, 'newsletter_subscription_template', 'a:1:{s:8:"template";s:2365:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n            hr {\n                border-top: 1px solid #999;\n            }\n        </style>\n    </head>\n\n    <!-- KEEP THE LAYOUT SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0; padding: 0;">\n\n        <!-- Top title with dark background -->\n        <table style="background-color: #444; width: 100%;" cellspacing="0" cellpadding="0">\n            <tr>\n                <td style="padding: 20px; text-align: center; font-family: sans-serif; color: #fff; font-size: 28px">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center" style="padding: 15px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 15px; color: #333; font-size: 16px; font-family: sans-serif">\n                                <!-- The "message" tag below is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n\n                                <hr>\n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n                                <p>\n                                    <small>\n                                        <a href="{blog_url}">{blog_url}</a><br>\n                                        {company_name}<br>\n                                        {company_address}\n                                    </small>\n                                </p>\n                                \n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'yes'),
(350, 'newsletter_profile', 'a:184:{s:5:"email";s:5:"Email";s:11:"email_error";s:28:"Email address is not correct";s:4:"name";s:23:"First name or full name";s:10:"name_error";s:16:"Name is required";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:21:"Last name is required";s:14:"surname_status";i:0;s:10:"sex_status";i:0;s:3:"sex";s:3:"I\'m";s:7:"privacy";s:44:"By continuing, you accept the privacy policy";s:13:"privacy_error";s:34:"You must accept the privacy policy";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:18:"privacy_use_wp_url";i:0;s:9:"subscribe";s:12:"اشتراک";s:12:"title_female";s:3:"Ms.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:13:"Not specified";s:13:"profile_error";s:34:"A mandatory field is not filled in";s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";s:13:"list_1_forced";i:0;s:13:"list_2_forced";i:0;s:13:"list_3_forced";i:0;s:13:"list_4_forced";i:0;s:13:"list_5_forced";i:0;s:13:"list_6_forced";i:0;s:13:"list_7_forced";i:0;s:13:"list_8_forced";i:0;s:13:"list_9_forced";i:0;s:14:"list_10_forced";i:0;s:14:"list_11_forced";i:0;s:14:"list_12_forced";i:0;s:14:"list_13_forced";i:0;s:14:"list_14_forced";i:0;s:14:"list_15_forced";i:0;s:14:"list_16_forced";i:0;s:14:"list_17_forced";i:0;s:14:"list_18_forced";i:0;s:14:"list_19_forced";i:0;s:14:"list_20_forced";i:0;s:14:"list_21_forced";i:0;s:14:"list_22_forced";i:0;s:14:"list_23_forced";i:0;s:14:"list_24_forced";i:0;s:14:"list_25_forced";i:0;s:14:"list_26_forced";i:0;s:14:"list_27_forced";i:0;s:14:"list_28_forced";i:0;s:14:"list_29_forced";i:0;s:14:"list_30_forced";i:0;s:14:"list_31_forced";i:0;s:14:"list_32_forced";i:0;s:14:"list_33_forced";i:0;s:14:"list_34_forced";i:0;s:14:"list_35_forced";i:0;s:14:"list_36_forced";i:0;s:14:"list_37_forced";i:0;s:14:"list_38_forced";i:0;s:14:"list_39_forced";i:0;s:14:"list_40_forced";i:0;}', 'yes'),
(351, 'newsletter_subscription_antibot', 'a:6:{s:12:"ip_blacklist";a:0:{}s:17:"address_blacklist";a:0:{}s:9:"antiflood";i:60;s:7:"akismet";i:0;s:7:"captcha";i:0;s:8:"disabled";i:0;}', 'yes'),
(352, 'newsletter_subscription_version', '2.2.7', 'yes'),
(353, 'newsletter_unsubscription_first_install_time', '1602484832', 'no'),
(354, 'newsletter_unsubscription', 'a:6:{s:16:"unsubscribe_text";s:103:"<p>Please confirm you want to unsubscribe <a href="{unsubscription_confirm_url}">clicking here</a>.</p>";s:10:"error_text";s:99:"<p>Subscriber not found, it probably has already been removed. No further actions are required.</p>";s:17:"unsubscribed_text";s:124:"<p>Your subscription has been deleted. If that was an error you can <a href="{reactivate_url}">subscribe again here</a>.</p>";s:20:"unsubscribed_subject";s:7:"Goodbye";s:20:"unsubscribed_message";s:87:"<p>This message confirms that you have unsubscribed from our newsletter. Thank you.</p>";s:16:"reactivated_text";s:46:"<p>Your subscription has been reactivated.</p>";}', 'yes'),
(355, 'newsletter_unsubscription_version', '1.0.3', 'yes'),
(356, 'newsletter_profile_first_install_time', '1602484832', 'no'),
(357, 'newsletter_profile_main', 'a:8:{s:4:"text";s:188:"{profile_form}\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    <p><a href="{unsubscription_confirm_url}">Cancel your subscription</a></p>";s:13:"email_changed";s:81:"Your email has been changed, an activation email has been sent with instructions.";s:5:"error";s:42:"Your email is not valid or already in use.";s:10:"save_label";s:4:"Save";s:13:"privacy_label";s:21:"Read our privacy note";s:5:"saved";s:14:"Profile saved.";s:18:"export_newsletters";i:0;s:3:"url";s:0:"";}', 'yes'),
(358, 'newsletter_profile_version', '1.1.0', 'yes'),
(359, 'newsletter_emails_first_install_time', '1602484832', 'no'),
(360, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(361, 'newsletter_emails_theme_default', 'a:8:{s:11:"theme_color";s:7:"#555555";s:16:"theme_background";s:7:"#f4f4f4";s:11:"theme_posts";s:1:"1";s:16:"theme_thumbnails";s:1:"1";s:16:"theme_image_size";s:9:"thumbnail";s:16:"theme_categories";a:2:{i:0;s:1:"1";i:1;s:1:"6";}s:10:"theme_tags";s:0:"";s:15:"theme_max_posts";s:2:"10";}', 'no'),
(362, 'newsletter_emails_version', '1.1.5', 'yes'),
(363, 'newsletter_users_first_install_time', '1602484832', 'no'),
(364, 'newsletter_users', 'a:0:{}', 'yes'),
(365, 'newsletter_users_version', '1.3.0', 'yes'),
(366, 'newsletter_statistics_first_install_time', '1602484832', 'no'),
(367, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"303f1c22792a01cf17958a0dc79dc587";}', 'yes'),
(368, 'newsletter_statistics_version', '1.2.7', 'yes'),
(369, 'newsletter_install_time', '1602484833', 'no'),
(370, 'widget_newsletterwidget', 'a:2:{i:3;a:5:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:12:"lists_layout";s:0:"";s:17:"lists_empty_label";s:0:"";s:17:"lists_field_label";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(371, 'widget_newsletterwidgetminimal', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(372, '_transient_timeout_tnp_extensions_json', '1602744034', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(373, '_transient_tnp_extensions_json', '[\n    {\n        "id": "85",\n        "children_fileid": null,\n        "version": "1.1.3",\n        "title": "Addons Manager",\n        "description": "",\n        "slug": "newsletter-extensions",\n        "type": "manager",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "",\n        "status": "4",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=85",\n        "wp_slug": "newsletter-extensions\\/extensions.php"\n    },\n    {\n        "id": "87",\n        "children_fileid": "",\n        "version": "1.0.3",\n        "title": "Speed and Delivery Hours Control",\n        "description": "Configure a different delivery speed for each newsletter and the delivery hours window. Only for regular newsletters.",\n        "slug": "newsletter-speedcontrol",\n        "type": "legacy",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/12\\/speedcontrol.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=87",\n        "wp_slug": "newsletter-speedcontrol\\/speedcontrol.php"\n    },\n    {\n        "id": "90",\n        "children_fileid": "",\n        "version": "1.0.1",\n        "title": "Sendinblue",\n        "description": "Integration with Sendinblue mailing service.",\n        "slug": "newsletter-sendinblue",\n        "type": "delivery",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/documentation\\/?p=198432",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=90",\n        "wp_slug": "newsletter-sendinblue\\/sendinblue.php"\n    },\n    {\n        "id": "92",\n        "children_fileid": "",\n        "version": "1.0.1",\n        "title": "Popup Maker Integration (ALPHA version)",\n        "description": "Use Newsletter forms (via shortcode) with Popup Maker. ",\n        "slug": "newsletter-popupmaker",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2020\\/07\\/popupmaker-32x32-1.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=92",\n        "wp_slug": "newsletter-popupmaker\\/popupmaker.php"\n    },\n    {\n        "id": "91",\n        "children_fileid": "",\n        "version": "1.0.2",\n        "title": "Instasend",\n        "description": "Quickly create a newsletter from a post (free for limited time)",\n        "slug": "newsletter-instasend",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2020\\/05\\/instasend-32.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=91",\n        "wp_slug": "newsletter-instasend\\/instasend.php"\n    },\n    {\n        "id": "61",\n        "children_fileid": "",\n        "version": "4.1.6",\n        "title": "Contact Form 7",\n        "description": "Adds the newsletter subscription feature to your Contact Form 7 forms.",\n        "slug": "newsletter-cf7",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/contact-form-7-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/users-32px-outline_badge-13.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=61",\n        "wp_slug": "newsletter-cf7\\/cf7.php"\n    },\n    {\n        "id": "83",\n        "children_fileid": null,\n        "version": "1.0.3",\n        "title": "Ninja Forms Integration",\n        "description": "Integrate Ninja Forms with Newsletter collecting subscription from your contact form.",\n        "slug": "newsletter-ninjaforms",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/10\\/forms-integration.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=83",\n        "wp_slug": "newsletter-ninjaforms\\/ninjaforms.php"\n    },\n    {\n        "id": "84",\n        "children_fileid": "",\n        "version": "1.0.3",\n        "title": "WP Forms Integration",\n        "description": "Integration with WP-Forms plugin. You can add a subscription option to your contact forms.",\n        "slug": "newsletter-wpforms",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/10\\/forms-integration.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=84",\n        "wp_slug": "newsletter-wpforms\\/wpforms.php"\n    },\n    {\n        "id": "50",\n        "children_fileid": "",\n        "version": "4.3.7",\n        "title": "Reports",\n        "description": "Shows tables and diagrams of the collected data (opens, clicks, ...).",\n        "slug": "newsletter-reports",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/reports",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/business-32px-outline_chart-bar-33.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=50",\n        "wp_slug": "newsletter-reports\\/reports.php"\n    },\n    {\n        "id": "62",\n        "children_fileid": "",\n        "version": "4.4.7",\n        "title": "Automated",\n        "description": "Automatically creates periodic newsletters with your blog contents. Multichannel.",\n        "slug": "newsletter-automated",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/automated",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-2_time-countdown.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=62",\n        "wp_slug": "newsletter-automated\\/automated.php"\n    },\n    {\n        "id": "63",\n        "children_fileid": "",\n        "version": "1.5.1",\n        "title": "WooCommerce",\n        "description": "The Newsletter Plugin integration for WooCommerce\\u2122. Unleash your marketing powers.",\n        "slug": "newsletter-woocommerce",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/woocommerce",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/03\\/woocommerce-extension-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=63",\n        "wp_slug": "newsletter-woocommerce\\/woocommerce.php"\n    },\n    {\n        "id": "67",\n        "children_fileid": "",\n        "version": "1.1.8",\n        "title": "Leads",\n        "description": "Add a popup or a fixed subscription bar to your website and offer your visitors a simple way to subscribe.",\n        "slug": "newsletter-leads",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/leads-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=67",\n        "wp_slug": "newsletter-leads\\/leads.php"\n    },\n    {\n        "id": "68",\n        "children_fileid": "",\n        "version": "1.1.2",\n        "title": "Google Analytics",\n        "description": "Automatically add Google Analytics UTM campaign tracking to links",\n        "slug": "newsletter-analytics",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/google-analytics",\n        "image": " https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/analytics.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=68",\n        "wp_slug": "newsletter-analytics\\/analytics.php"\n    },\n    {\n        "id": "70",\n        "children_fileid": null,\n        "version": "1.0.7",\n        "title": "Subscribe on Comment",\n        "description": "Adds the subscription option to your blog comment form",\n        "slug": "newsletter-comments",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/02\\/comment-notification.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=70",\n        "wp_slug": "newsletter-comments\\/comments.php"\n    },\n    {\n        "id": "72",\n        "children_fileid": "",\n        "version": "1.2.8",\n        "title": "Autoresponder",\n        "description": "Create unlimited email series to follow-up your subscribers. Lessons, up-sells, conversations.",\n        "slug": "newsletter-autoresponder",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/autoresponder",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/emoticons-32px-outline_robot.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=72",\n        "wp_slug": "newsletter-autoresponder\\/autoresponder.php"\n    },\n    {\n        "id": "74",\n        "children_fileid": "",\n        "version": "1.2.8",\n        "title": "Extended Composer Blocks",\n        "description": "Adds new blocks to the newsletter composer: list, video, gallery, full post.",\n        "slug": "newsletter-blocks",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/ui-32px-outline-3_widget.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=74",\n        "wp_slug": "newsletter-blocks\\/blocks.php"\n    },\n    {\n        "id": "75",\n        "children_fileid": null,\n        "version": "1.1.0",\n        "title": "Geolocation",\n        "description": "Geolocate the subscribers and target them by geolocation in your campaign.",\n        "slug": "newsletter-geo",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/03\\/geo-extension-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=75",\n        "wp_slug": "newsletter-geo\\/geo.php"\n    },\n    {\n        "id": "77",\n        "children_fileid": "",\n        "version": "2.0.3",\n        "title": "Newsletter API",\n        "description": "Access programmatically to The Newsletter Plugin via REST calls.",\n        "slug": "newsletter-api",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/10\\/bold-direction@2x-1.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=77",\n        "wp_slug": "newsletter-api\\/api.php"\n    },\n    {\n        "id": "55",\n        "children_fileid": null,\n        "version": "4.0.9",\n        "title": "Facebook",\n        "description": "One click subscription and confirmation with Facebook Connect.",\n        "slug": "newsletter-facebook",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/facebook-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/Facebook.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=55",\n        "wp_slug": "newsletter-facebook\\/facebook.php"\n    },\n    {\n        "id": "76",\n        "children_fileid": "",\n        "version": "1.1.2",\n        "title": "Bounce Management",\n        "description": "This experimental extension manages the bounces and keeps the list clean of invalid addresses.",\n        "slug": "newsletter-bounce",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/10\\/ic_settings_backup_restore_32px.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=76",\n        "wp_slug": "newsletter-bounce\\/bounce.php"\n    },\n    {\n        "id": "79",\n        "children_fileid": null,\n        "version": "1.0.9",\n        "title": "Events Manager Integration",\n        "description": "Integrates with Events Manager plugin to add events in your regular and automated newsletters.",\n        "slug": "newsletter-events",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2019\\/02\\/events-manager-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=79",\n        "wp_slug": "newsletter-events\\/events.php"\n    },\n    {\n        "id": "82",\n        "children_fileid": null,\n        "version": "1.0.0",\n        "title": "Translatepress Bridge",\n        "description": "Enables few multilanguage Newsletter features for who is using Translatepress.",\n        "slug": "newsletter-translatepress",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/09\\/translatepress.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=82",\n        "wp_slug": "newsletter-translatepress\\/translatepress.php"\n    },\n    {\n        "id": "86",\n        "children_fileid": "",\n        "version": "1.0.9",\n        "title": "Advanced Import",\n        "description": "An advanced import system with extended profile fields and mapping (beta version).",\n        "slug": "newsletter-import",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/file-upload-88.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=86",\n        "wp_slug": "newsletter-import\\/import.php"\n    },\n    {\n        "id": "88",\n        "children_fileid": null,\n        "version": "1.1.1",\n        "title": "The Events Calendar (by Tribe)",\n        "description": "Adds a composer block which extracts the events managed by The Events Calendar plugin.",\n        "slug": "newsletter-tribeevents",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/documentation\\/tribeevents-extension",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2019\\/02\\/tribe-event-calendar-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=88",\n        "wp_slug": "newsletter-tribeevents\\/tribeevents.php"\n    },\n    {\n        "id": "58",\n        "children_fileid": null,\n        "version": "4.0.3",\n        "title": "Archive",\n        "description": "Generates a public archive of the sent newsletters for your blog.",\n        "slug": "newsletter-archive",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/newsletter-archive-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/files-32px-outline_archive-3d-content.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=58",\n        "wp_slug": "newsletter-archive\\/archive.php"\n    },\n    {\n        "id": "71",\n        "children_fileid": null,\n        "version": "1.0.7",\n        "title": "Locked Content",\n        "description": "Boost your subscription rate locking out your premium contents with a subscription form.",\n        "slug": "newsletter-lock",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/ui-32px-outline-1_lock-open.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=71",\n        "wp_slug": "newsletter-lock\\/lock.php"\n    },\n    {\n        "id": "73",\n        "children_fileid": "",\n        "version": "1.2.4",\n        "title": "WP Users Integration",\n        "description": "Connects the WordPress user registration with Newsletter subscription. Optionally imports all WP users as subscribers.",\n        "slug": "newsletter-wpusers",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/media-32px-outline-2_speaker-01.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=73",\n        "wp_slug": "newsletter-wpusers\\/wpusers.php"\n    },\n    {\n        "id": "51",\n        "children_fileid": null,\n        "version": "4.1.1",\n        "title": "Feed by Mail",\n        "description": "Automatically creates and sends newsletters with the latest blog posts.",\n        "slug": "newsletter-feed",\n        "type": "legacy",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/feed-by-mail-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_playlist.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=51",\n        "wp_slug": "newsletter-feed\\/feed.php"\n    },\n    {\n        "id": "53",\n        "children_fileid": null,\n        "version": "2.2.0",\n        "title": "Popup",\n        "description": "Configurable popup system to increase the subscription rate.",\n        "slug": "newsletter-popup",\n        "type": "legacy",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/popup-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=53",\n        "wp_slug": "newsletter-popup\\/popup.php"\n    },\n    {\n        "id": "54",\n        "children_fileid": null,\n        "version": "4.1.1",\n        "title": "Followup",\n        "description": "Automated email series sent upon subscription at defined intervals.",\n        "slug": "newsletter-followup",\n        "type": "legacy",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/follow-up-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-2_time-countdown.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=54",\n        "wp_slug": "newsletter-followup\\/followup.php"\n    },\n    {\n        "id": "48",\n        "children_fileid": "",\n        "version": "4.1.9",\n        "title": "SendGrid",\n        "description": "Integrates the SendGrid delivery system and bounce detection.",\n        "slug": "newsletter-sendgrid",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/sendgrid-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=48",\n        "wp_slug": "newsletter-sendgrid\\/sendgrid.php"\n    },\n    {\n        "id": "49",\n        "children_fileid": "",\n        "version": "4.0.0",\n        "title": "Mandrill",\n        "description": "Integrates the Mandrill delivery system and bounce detection.",\n        "slug": "newsletter-mandrill",\n        "type": "legacy",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mandrill-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=49",\n        "wp_slug": "newsletter-mandrill\\/mandrill.php"\n    },\n    {\n        "id": "52",\n        "children_fileid": "",\n        "version": "4.0.8",\n        "title": "Mailjet",\n        "description": "Integrates the Mailjet delivery system and bounce detection.",\n        "slug": "newsletter-mailjet",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailjet-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=52",\n        "wp_slug": "newsletter-mailjet\\/mailjet.php"\n    },\n    {\n        "id": "60",\n        "children_fileid": "",\n        "version": "1.2.8",\n        "title": "Amazon SES",\n        "description": "Integrates Newsletter with Amazon SES service for sending emails and processing bounces.",\n        "slug": "newsletter-amazon",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/amazon-ses-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=60",\n        "wp_slug": "newsletter-amazon\\/amazon.php"\n    },\n    {\n        "id": "65",\n        "children_fileid": null,\n        "version": "4.1.0",\n        "title": "Mailgun",\n        "description": "Integrates the Mailgun delivery system and bounce detection.",\n        "slug": "newsletter-mailgun",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailgun-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=65",\n        "wp_slug": "newsletter-mailgun\\/mailgun.php"\n    },\n    {\n        "id": "66",\n        "children_fileid": "",\n        "version": "1.0.9",\n        "title": "ElasticEmail",\n        "description": "ElasticEmail integration",\n        "slug": "newsletter-elasticemail",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=66",\n        "wp_slug": "newsletter-elasticemail\\/elasticemail.php"\n    },\n    {\n        "id": "69",\n        "children_fileid": "",\n        "version": "1.1.7",\n        "title": "SparkPost",\n        "description": "Integrates Newsletter with the SparkPost mail delivery service and bounce detection.",\n        "slug": "newsletter-sparkpost",\n        "type": "delivery",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=69",\n        "wp_slug": "newsletter-sparkpost\\/sparkpost.php"\n    },\n    {\n        "id": "56",\n        "children_fileid": "",\n        "version": "2.2.0",\n        "title": "Grabber",\n        "description": "Experimental! General subscription grabber from other forms. Requires technical skills.",\n        "slug": "newsletter-grabber",\n        "type": "legacy",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/grabber-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/placeholder.png",\n        "status": "4",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=56",\n        "wp_slug": "newsletter-grabber\\/grabber.php"\n    }\n]', 'no'),
(374, 'newsletter_page', '81', 'no'),
(376, 'newsletter_diagnostic_cron_calls', 'a:84:{i:0;i:1602484872;i:1;i:1602485170;i:2;i:1602485480;i:3;i:1602486012;i:4;i:1602486072;i:5;i:1602486252;i:6;i:1602486372;i:7;i:1602486703;i:8;i:1602486995;i:9;i:1602487322;i:10;i:1602507447;i:11;i:1602507684;i:12;i:1602507860;i:13;i:1602507964;i:14;i:1602508323;i:15;i:1602508605;i:16;i:1602508887;i:17;i:1602509164;i:18;i:1602509487;i:19;i:1602509817;i:20;i:1602510565;i:21;i:1602510674;i:22;i:1602510979;i:23;i:1602511273;i:24;i:1602511442;i:25;i:1602511636;i:26;i:1602512036;i:27;i:1602512305;i:28;i:1602512475;i:29;i:1602512765;i:30;i:1602513102;i:31;i:1602513422;i:32;i:1602513695;i:33;i:1602518591;i:34;i:1602518688;i:35;i:1602518802;i:36;i:1602519076;i:37;i:1602519399;i:38;i:1602519674;i:39;i:1602519970;i:40;i:1602520291;i:41;i:1602520563;i:42;i:1602520981;i:43;i:1602521173;i:44;i:1602521466;i:45;i:1602521815;i:46;i:1602522073;i:47;i:1602522257;i:48;i:1602522393;i:49;i:1602522690;i:50;i:1602523006;i:51;i:1602523306;i:52;i:1602523567;i:53;i:1602523868;i:54;i:1602524212;i:55;i:1602524493;i:56;i:1602524853;i:57;i:1602536868;i:58;i:1602537106;i:59;i:1602537406;i:60;i:1602550486;i:61;i:1602550664;i:62;i:1602550904;i:63;i:1602554558;i:64;i:1602554737;i:65;i:1602554797;i:66;i:1602555087;i:67;i:1602577577;i:68;i:1602597516;i:69;i:1602598287;i:70;i:1602598582;i:71;i:1602598904;i:72;i:1602599257;i:73;i:1602599497;i:74;i:1602599857;i:75;i:1602600095;i:76;i:1602600370;i:77;i:1602600668;i:78;i:1602601007;i:79;i:1602604813;i:80;i:1602605585;i:81;i:1602606188;i:82;i:1602606445;i:83;i:1602607033;}', 'no'),
(377, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:"mean";d:1453.297619047619;s:3:"max";i:22490;s:3:"min";i:60;}', 'no'),
(380, '_transient_timeout_newsletter_user_count', '1602571390', 'no'),
(381, '_transient_newsletter_user_count', '1', 'no'),
(487, 'category_children', 'a:0:{}', 'yes'),
(500, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1602520579;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:9:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:8:"search-2";i:3;s:14:"recent-posts-2";i:4;s:17:"recent-comments-2";i:5;s:10:"archives-2";i:6;s:12:"categories-2";i:7;s:6:"meta-2";i:8;s:18:"newsletterwidget-3";}s:9:"sidebar-1";a:3:{i:0;s:10:"archives-3";i:1;s:14:"recent-posts-3";i:2;s:12:"categories-3";}}}}', 'yes'),
(529, '_transient_random_seed', 'bcb20fa6a7a3eb4f87c2798dea6a0473', 'yes'),
(605, '_site_transient_timeout_theme_roots', '1602599319', 'no'),
(606, '_site_transient_theme_roots', 'a:4:{s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:6:"wparch";s:7:"/themes";}', 'no'),
(607, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fa_IR/wordpress-5.5.1.zip";s:6:"locale";s:5:"fa_IR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fa_IR/wordpress-5.5.1.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.5.1";s:7:"version";s:5:"5.5.1";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1602597523;s:15:"version_checked";s:5:"5.5.1";s:12:"translations";a:0:{}}', 'no'),
(608, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1602597524;s:7:"checked";a:4:{s:14:"twentynineteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"2.4";s:12:"twentytwenty";s:3:"1.5";s:6:"wparch";s:3:"1.0";}s:8:"response";a:0:{}s:9:"no_update";a:3:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentyseventeen";a:6:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.4";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.5";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentynineteen";s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"1.7";s:7:"updated";s:19:"2019-11-12 09:00:53";s:7:"package";s:78:"https://downloads.wordpress.org/translation/theme/twentynineteen/1.7/fa_IR.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:15:"twentyseventeen";s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"2.4";s:7:"updated";s:19:"2019-11-12 10:35:16";s:7:"package";s:79:"https://downloads.wordpress.org/translation/theme/twentyseventeen/2.4/fa_IR.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:12:"twentytwenty";s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"1.5";s:7:"updated";s:19:"2020-01-31 21:41:57";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/twentytwenty/1.5/fa_IR.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(609, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1602597525;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.1.6";s:21:"newsletter/plugin.php";s:5:"6.8.8";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2020-04-14 14:10:50";s:7:"package";s:74:"https://downloads.wordpress.org/translation/plugin/akismet/4.1.6/fa_IR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.6";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:21:"newsletter/plugin.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/newsletter";s:4:"slug";s:10:"newsletter";s:6:"plugin";s:21:"newsletter/plugin.php";s:11:"new_version";s:5:"6.8.8";s:3:"url";s:41:"https://wordpress.org/plugins/newsletter/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/newsletter.6.8.8.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/newsletter/assets/icon-256x256.png?rev=1052028";s:2:"1x";s:63:"https://ps.w.org/newsletter/assets/icon-128x128.png?rev=1160467";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/newsletter/assets/banner-1544x500.png?rev=1052027";s:2:"1x";s:65:"https://ps.w.org/newsletter/assets/banner-772x250.png?rev=1052027";}s:11:"banners_rtl";a:0:{}}}}', 'no');

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
(44, 2, '_edit_lock', '1602522016:1'),
(46, 2, '_edit_last', '1'),
(50, 2, '_cb_seo', 'a:1:{s:14:"CB_Description";s:38:"آزمایش توضیحات فارسی";}'),
(51, 24, '_wp_attached_file', '2020/10/header-servicio-hardware.1.1.jpg'),
(52, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1903;s:6:"height";i:1198;s:4:"file";s:40:"2020/10/header-servicio-hardware.1.1.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:40:"header-servicio-hardware.1.1-300x189.jpg";s:5:"width";i:300;s:6:"height";i:189;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"header-servicio-hardware.1.1-1024x645.jpg";s:5:"width";i:1024;s:6:"height";i:645;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:40:"header-servicio-hardware.1.1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"header-servicio-hardware.1.1-768x483.jpg";s:5:"width";i:768;s:6:"height";i:483;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:41:"header-servicio-hardware.1.1-1536x967.jpg";s:5:"width";i:1536;s:6:"height";i:967;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 2, '_thumbnail_id', '24'),
(56, 25, '_customize_restore_dismissed', '1'),
(57, 26, '_edit_lock', '1602233900:1'),
(58, 26, '_customize_restore_dismissed', '1'),
(60, 27, '_customize_restore_dismissed', '1'),
(62, 28, '_customize_restore_dismissed', '1'),
(64, 29, '_customize_restore_dismissed', '1'),
(65, 30, '_menu_item_type', 'post_type'),
(66, 30, '_menu_item_menu_item_parent', '0'),
(67, 30, '_menu_item_object_id', '1'),
(68, 30, '_menu_item_object', 'post'),
(69, 30, '_menu_item_target', ''),
(70, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 30, '_menu_item_xfn', ''),
(72, 30, '_menu_item_url', ''),
(74, 31, '_menu_item_type', 'post_type'),
(75, 31, '_menu_item_menu_item_parent', '0'),
(76, 31, '_menu_item_object_id', '2'),
(77, 31, '_menu_item_object', 'page'),
(78, 31, '_menu_item_target', ''),
(79, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 31, '_menu_item_xfn', ''),
(81, 31, '_menu_item_url', ''),
(85, 32, '_wp_trash_meta_status', 'publish'),
(86, 32, '_wp_trash_meta_time', '1602241369'),
(87, 33, '_wp_attached_file', '2020/10/cropped-header-servicio-hardware.1.1.jpg'),
(88, 33, '_wp_attachment_context', 'site-icon'),
(89, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:48:"2020/10/cropped-header-servicio-hardware.1.1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:48:"cropped-header-servicio-hardware.1.1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:48:"cropped-header-servicio-hardware.1.1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:48:"cropped-header-servicio-hardware.1.1-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:48:"cropped-header-servicio-hardware.1.1-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:48:"cropped-header-servicio-hardware.1.1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:46:"cropped-header-servicio-hardware.1.1-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(90, 34, '_edit_lock', '1602245416:1'),
(91, 35, '_wp_attached_file', '2020/10/cropped-header-servicio-hardware.1.1-1.jpg'),
(92, 35, '_wp_attachment_context', 'site-icon'),
(93, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:50:"2020/10/cropped-header-servicio-hardware.1.1-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-1-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-1-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:48:"cropped-header-servicio-hardware.1.1-1-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 34, '_customize_restore_dismissed', '1'),
(95, 36, '_wp_trash_meta_status', 'publish'),
(96, 36, '_wp_trash_meta_time', '1602245434'),
(97, 37, '_edit_lock', '1602245725:1'),
(98, 37, '_customize_restore_dismissed', '1'),
(99, 38, '_wp_trash_meta_status', 'publish'),
(100, 38, '_wp_trash_meta_time', '1602245773'),
(101, 39, '_wp_trash_meta_status', 'publish'),
(102, 39, '_wp_trash_meta_time', '1602245953'),
(103, 40, '_edit_lock', '1602246013:1'),
(104, 40, '_wp_trash_meta_status', 'publish'),
(105, 40, '_wp_trash_meta_time', '1602246015'),
(106, 41, '_wp_trash_meta_status', 'publish'),
(107, 41, '_wp_trash_meta_time', '1602246462'),
(108, 42, '_wp_trash_meta_status', 'publish'),
(109, 42, '_wp_trash_meta_time', '1602246484'),
(110, 43, '_wp_attached_file', '2020/10/cropped-header-servicio-hardware.1.1-2.jpg'),
(111, 43, '_wp_attachment_context', 'custom-logo'),
(112, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:336;s:6:"height";i:125;s:4:"file";s:50:"2020/10/cropped-header-servicio-hardware.1.1-2.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-2-300x112.jpg";s:5:"width";i:300;s:6:"height";i:112;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-2-150x125.jpg";s:5:"width";i:150;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(114, 45, '_wp_attached_file', '2020/10/cropped-header-servicio-hardware.1.1-3.jpg'),
(115, 45, '_wp_attachment_context', 'custom-logo'),
(116, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:120;s:4:"file";s:50:"2020/10/cropped-header-servicio-hardware.1.1-3.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:49:"cropped-header-servicio-hardware.1.1-3-300x90.jpg";s:5:"width";i:300;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:50:"cropped-header-servicio-hardware.1.1-3-150x120.jpg";s:5:"width";i:150;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 44, '_customize_restore_dismissed', '1'),
(118, 46, '_wp_trash_meta_status', 'publish'),
(119, 46, '_wp_trash_meta_time', '1602246831'),
(120, 47, '_wp_trash_meta_status', 'publish'),
(121, 47, '_wp_trash_meta_time', '1602246838'),
(123, 49, '_menu_item_type', 'custom'),
(124, 49, '_menu_item_menu_item_parent', '52'),
(125, 49, '_menu_item_object_id', '49'),
(126, 49, '_menu_item_object', 'custom'),
(127, 49, '_menu_item_target', ''),
(128, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(129, 49, '_menu_item_xfn', ''),
(130, 49, '_menu_item_url', 'http://localhost/git/wpArch/wp/'),
(132, 50, '_menu_item_type', 'post_type'),
(133, 50, '_menu_item_menu_item_parent', '51'),
(134, 50, '_menu_item_object_id', '2'),
(135, 50, '_menu_item_object', 'page'),
(136, 50, '_menu_item_target', ''),
(137, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 50, '_menu_item_xfn', ''),
(139, 50, '_menu_item_url', ''),
(141, 51, '_menu_item_type', 'post_type'),
(142, 51, '_menu_item_menu_item_parent', '0'),
(143, 51, '_menu_item_object_id', '1'),
(144, 51, '_menu_item_object', 'post'),
(145, 51, '_menu_item_target', ''),
(146, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(147, 51, '_menu_item_xfn', ''),
(148, 51, '_menu_item_url', ''),
(150, 52, '_menu_item_type', 'taxonomy'),
(151, 52, '_menu_item_menu_item_parent', '50'),
(152, 52, '_menu_item_object_id', '1'),
(153, 52, '_menu_item_object', 'category'),
(154, 52, '_menu_item_target', ''),
(155, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 52, '_menu_item_xfn', ''),
(157, 52, '_menu_item_url', ''),
(159, 53, '_menu_item_type', 'custom'),
(160, 53, '_menu_item_menu_item_parent', '56'),
(161, 53, '_menu_item_object_id', '53'),
(162, 53, '_menu_item_object', 'custom'),
(163, 53, '_menu_item_target', ''),
(164, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(165, 53, '_menu_item_xfn', ''),
(166, 53, '_menu_item_url', 'http://localhost/git/wpArch/wp/'),
(168, 54, '_menu_item_type', 'post_type'),
(169, 54, '_menu_item_menu_item_parent', '56'),
(170, 54, '_menu_item_object_id', '2'),
(171, 54, '_menu_item_object', 'page'),
(172, 54, '_menu_item_target', ''),
(173, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(174, 54, '_menu_item_xfn', ''),
(175, 54, '_menu_item_url', ''),
(177, 55, '_menu_item_type', 'custom'),
(178, 55, '_menu_item_menu_item_parent', '0'),
(179, 55, '_menu_item_object_id', '55'),
(180, 55, '_menu_item_object', 'custom'),
(181, 55, '_menu_item_target', ''),
(182, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(183, 55, '_menu_item_xfn', ''),
(184, 55, '_menu_item_url', 'http://localhost/git/wpArch/wp/'),
(186, 56, '_menu_item_type', 'post_type'),
(187, 56, '_menu_item_menu_item_parent', '0'),
(188, 56, '_menu_item_object_id', '2'),
(189, 56, '_menu_item_object', 'page'),
(190, 56, '_menu_item_target', ''),
(191, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(192, 56, '_menu_item_xfn', ''),
(193, 56, '_menu_item_url', ''),
(195, 57, '_menu_item_type', 'custom'),
(196, 57, '_menu_item_menu_item_parent', '58'),
(197, 57, '_menu_item_object_id', '57'),
(198, 57, '_menu_item_object', 'custom'),
(199, 57, '_menu_item_target', ''),
(200, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(201, 57, '_menu_item_xfn', ''),
(202, 57, '_menu_item_url', 'http://localhost/git/wpArch/wp/'),
(204, 58, '_menu_item_type', 'post_type'),
(205, 58, '_menu_item_menu_item_parent', '62'),
(206, 58, '_menu_item_object_id', '2'),
(207, 58, '_menu_item_object', 'page'),
(208, 58, '_menu_item_target', ''),
(209, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(210, 58, '_menu_item_xfn', ''),
(211, 58, '_menu_item_url', ''),
(213, 59, '_menu_item_type', 'custom'),
(214, 59, '_menu_item_menu_item_parent', '0'),
(215, 59, '_menu_item_object_id', '59'),
(216, 59, '_menu_item_object', 'custom'),
(217, 59, '_menu_item_target', ''),
(218, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(219, 59, '_menu_item_xfn', ''),
(220, 59, '_menu_item_url', 'http://localhost/git/wpArch/wp/'),
(222, 60, '_menu_item_type', 'post_type'),
(223, 60, '_menu_item_menu_item_parent', '51'),
(224, 60, '_menu_item_object_id', '2'),
(225, 60, '_menu_item_object', 'page'),
(226, 60, '_menu_item_target', ''),
(227, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(228, 60, '_menu_item_xfn', ''),
(229, 60, '_menu_item_url', ''),
(231, 61, '_menu_item_type', 'custom'),
(232, 61, '_menu_item_menu_item_parent', '0'),
(233, 61, '_menu_item_object_id', '61'),
(234, 61, '_menu_item_object', 'custom'),
(235, 61, '_menu_item_target', ''),
(236, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(237, 61, '_menu_item_xfn', ''),
(238, 61, '_menu_item_url', '#'),
(239, 61, '_menu_item_orphaned', '1602268044'),
(240, 62, '_menu_item_type', 'custom'),
(241, 62, '_menu_item_menu_item_parent', '0'),
(242, 62, '_menu_item_object_id', '62'),
(243, 62, '_menu_item_object', 'custom'),
(244, 62, '_menu_item_target', ''),
(245, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(246, 62, '_menu_item_xfn', ''),
(247, 62, '_menu_item_url', ''),
(249, 63, '_edit_lock', '1602359688:1'),
(250, 64, '_wp_attached_file', '2020/10/jungle-1.jpg'),
(251, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:20:"2020/10/jungle-1.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:20:"jungle-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"jungle-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"jungle-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"jungle-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(254, 63, '_thumbnail_id', '64'),
(255, 63, '_edit_last', '1'),
(256, 66, '_edit_lock', '1602355979:1'),
(257, 67, '_edit_lock', '1602360804:1'),
(258, 68, '_wp_attached_file', '2020/10/greenery-1.jpg'),
(259, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1201;s:6:"height";i:800;s:4:"file";s:22:"2020/10/greenery-1.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:22:"greenery-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"greenery-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"greenery-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"greenery-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"10";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 60D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1592061410";s:9:"copyright";s:7:"arel.ir";s:12:"focal_length";s:2:"10";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:6:"0.0025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(262, 67, '_thumbnail_id', '68'),
(263, 67, '_edit_last', '1'),
(264, 70, '_edit_lock', '1602356512:1'),
(265, 71, '_edit_lock', '1602385704:1'),
(266, 72, '_wp_attached_file', '2020/10/tehran.jpg'),
(267, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:18:"2020/10/tehran.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:18:"tehran-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"tehran-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"tehran-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tehran-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(270, 71, '_thumbnail_id', '72'),
(271, 71, '_edit_last', '1'),
(284, 76, '_edit_lock', '1602466010:1'),
(285, 77, '_wp_attached_file', '2020/10/bridgeoverhead.jpg'),
(286, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:933;s:4:"file";s:26:"2020/10/bridgeoverhead.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:26:"bridgeoverhead-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"bridgeoverhead-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"bridgeoverhead-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"bridgeoverhead-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(289, 76, '_thumbnail_id', '77'),
(290, 76, '_edit_last', '1'),
(293, 82, '_edit_lock', '1602519676:1'),
(294, 83, '_wp_attached_file', '2020/10/l4.jpg'),
(295, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:640;s:4:"file";s:14:"2020/10/l4.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:14:"l4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:14:"l4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"l4-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(296, 82, '_edit_last', '1'),
(297, 85, '_wp_attached_file', '2020/10/lighthouse-980457.jpg'),
(298, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:29:"2020/10/lighthouse-980457.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:29:"lighthouse-980457-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"lighthouse-980457-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"lighthouse-980457-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"lighthouse-980457-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(299, 82, '_pingme', '1'),
(300, 82, '_encloseme', '1'),
(301, 82, '_thumbnail_id', '85'),
(302, 86, '_wp_attached_file', '2020/10/b-img-dive-into-ux.jpg'),
(303, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:720;s:4:"file";s:30:"2020/10/b-img-dive-into-ux.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:30:"b-img-dive-into-ux-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"b-img-dive-into-ux-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"b-img-dive-into-ux-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"b-img-dive-into-ux-768x503.jpg";s:5:"width";i:768;s:6:"height";i:503;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(304, 87, '_edit_lock', '1602519874:1'),
(305, 48, '_customize_restore_dismissed', '1'),
(306, 88, '_wp_attached_file', '2020/10/02_events_article_07.jpg'),
(307, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:500;s:4:"file";s:32:"2020/10/02_events_article_07.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:32:"02_events_article_07-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:32:"02_events_article_07-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(308, 89, '_edit_lock', '1602520749:1'),
(309, 90, '_wp_attached_file', '2020/10/cropped-02_events_article_07.jpg'),
(310, 90, '_wp_attachment_context', 'custom-logo'),
(311, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:120;s:4:"file";s:40:"2020/10/cropped-02_events_article_07.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:39:"cropped-02_events_article_07-300x90.jpg";s:5:"width";i:300;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:40:"cropped-02_events_article_07-150x120.jpg";s:5:"width";i:150;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(312, 89, '_wp_trash_meta_status', 'publish'),
(313, 89, '_wp_trash_meta_time', '1602520754'),
(314, 91, '_edit_lock', '1602520973:1'),
(315, 91, '_wp_trash_meta_status', 'publish'),
(316, 91, '_wp_trash_meta_time', '1602520976'),
(317, 92, '_wp_trash_meta_status', 'publish'),
(318, 92, '_wp_trash_meta_time', '1602520991'),
(319, 93, '_edit_lock', '1602521109:1'),
(320, 94, '_wp_attached_file', '2020/10/body-bg.png'),
(321, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:188;s:6:"height";i:178;s:4:"file";s:19:"2020/10/body-bg.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"body-bg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(322, 94, '_wp_attachment_is_custom_background', 'wparch'),
(323, 93, '_wp_trash_meta_status', 'publish'),
(324, 93, '_wp_trash_meta_time', '1602521152'),
(325, 95, '_wp_trash_meta_status', 'publish'),
(326, 95, '_wp_trash_meta_time', '1602521170'),
(327, 96, '_wp_trash_meta_status', 'publish'),
(328, 96, '_wp_trash_meta_time', '1602521207'),
(329, 97, '_wp_trash_meta_status', 'publish'),
(330, 97, '_wp_trash_meta_time', '1602521260'),
(331, 98, '_wp_attached_file', '2020/10/raph_ads_arel.jpg'),
(332, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:390;s:6:"height";i:262;s:4:"file";s:25:"2020/10/raph_ads_arel.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:25:"raph_ads_arel-300x202.jpg";s:5:"width";i:300;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"raph_ads_arel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(333, 99, '_menu_item_type', 'custom'),
(334, 99, '_menu_item_menu_item_parent', '0'),
(335, 99, '_menu_item_object_id', '99'),
(336, 99, '_menu_item_object', 'custom'),
(337, 99, '_menu_item_target', ''),
(338, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(339, 99, '_menu_item_xfn', ''),
(340, 99, '_menu_item_url', 'http://google.com'),
(342, 100, '_menu_item_type', 'post_type'),
(343, 100, '_menu_item_menu_item_parent', '0'),
(344, 100, '_menu_item_object_id', '2'),
(345, 100, '_menu_item_object', 'page'),
(346, 100, '_menu_item_target', ''),
(347, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(348, 100, '_menu_item_xfn', ''),
(349, 100, '_menu_item_url', ''),
(360, 103, '_menu_item_type', 'post_type'),
(361, 103, '_menu_item_menu_item_parent', '0'),
(362, 103, '_menu_item_object_id', '2'),
(363, 103, '_menu_item_object', 'page'),
(364, 103, '_menu_item_target', ''),
(365, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(366, 103, '_menu_item_xfn', ''),
(367, 103, '_menu_item_url', ''),
(369, 104, '_menu_item_type', 'custom'),
(370, 104, '_menu_item_menu_item_parent', '0'),
(371, 104, '_menu_item_object_id', '104'),
(372, 104, '_menu_item_object', 'custom'),
(373, 104, '_menu_item_target', ''),
(374, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(375, 104, '_menu_item_xfn', ''),
(376, 104, '_menu_item_url', ''),
(378, 105, '_menu_item_type', 'taxonomy'),
(379, 105, '_menu_item_menu_item_parent', '104'),
(380, 105, '_menu_item_object_id', '6'),
(381, 105, '_menu_item_object', 'category'),
(382, 105, '_menu_item_target', ''),
(383, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(384, 105, '_menu_item_xfn', ''),
(385, 105, '_menu_item_url', ''),
(387, 106, '_menu_item_type', 'taxonomy'),
(388, 106, '_menu_item_menu_item_parent', '104'),
(389, 106, '_menu_item_object_id', '7'),
(390, 106, '_menu_item_object', 'category'),
(391, 106, '_menu_item_target', ''),
(392, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(393, 106, '_menu_item_xfn', ''),
(394, 106, '_menu_item_url', ''),
(396, 107, '_menu_item_type', 'post_type'),
(397, 107, '_menu_item_menu_item_parent', '106'),
(398, 107, '_menu_item_object_id', '82'),
(399, 107, '_menu_item_object', 'post'),
(400, 107, '_menu_item_target', ''),
(401, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(402, 107, '_menu_item_xfn', ''),
(403, 107, '_menu_item_url', ''),
(406, 108, '_customize_restore_dismissed', '1');

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
(1, 1, '2020-10-05 02:33:41', '2020-10-04 23:03:41', '<!-- wp:paragraph -->\n<p>به وردپرس خوش آمدید. این اولین نوشتهٔ شماست. این را ویرایش یا حذف کنید، سپس نوشتن را شروع نمایید!</p>\n<!-- /wp:paragraph -->', 'سلام دنیا!', '', 'publish', 'open', 'open', '', '%d8%b3%d9%84%d8%a7%d9%85-%d8%af%d9%86%db%8c%d8%a7', '', '', '2020-10-05 02:33:41', '2020-10-04 23:03:41', '', 0, 'http://localhost/git/wpArch/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2020-10-05 02:33:41', '2020-10-04 23:03:41', '<!-- wp:paragraph -->\n<p>این یک برگهٔ نمونه است. این از یک نوشتهٔ وبلاگ متفاوت است زیرا در یک مکان باقی خواهد ماند و در راهبری سایتتان (در بیشتر پوسته‌ها) نشان داده خواهد شد. بیشتر مردم با یک برگه درباره که آن‌ها را به بازدیدکنندگان بالقوهٔ سایت معرفی می‌کند، آغاز می‌کنند. که ممکن است چیزی همانند این باشد:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>سلام! من یک پیام‌رسان دوچرخه‌سوار در روز، بازیگر مشتاق در شب هستم، و این وب‌سایت من است. من در لس آنجلس زندگی می‌کنم، یک سگ بزرگ به نام جک دارم، و من پینیا کولادا دوست دارم. (همچنین گرفتار شدن در باران را دوست دارم.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...یا چیزهایی مانند این:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>شرکت XYZ در سال ۱۹۷۱ تأسیس شد، و تا کنون چیزهای با کیفیتی را به عموم عرضه کرده است. این شرکت در شهر گاتهام واقع شده است، بیش از ۲۰۰۰ نفر در آن کار می‌کنند و همه نوع چیز عالی برای جامعه گاتهام انجام می‌دهد.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>به عنوان یک کاربر جدید وردپرس، برای حذف این برگه و ایجاد برگه‌های جدید برای محتوای خود شما باید به <a href="http://localhost/git/wpArch/wp/wp-admin/">پیشخوان</a> بروید. خوش بگذره!</p>\n<!-- /wp:paragraph -->', 'درباره ما', '', 'publish', 'closed', 'open', '', '%d8%a8%d8%b1%da%af%d9%87-%d9%86%d9%85%d9%88%d9%86%d9%87', '', '', '2020-10-12 20:30:15', '2020-10-12 17:00:15', '', 0, 'http://localhost/git/wpArch/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-10-05 02:33:41', '2020-10-04 23:03:41', '<!-- wp:heading --><h2>ما که هستیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>نشانی وب‌سایت ما: http://localhost/git/wpArch/wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>کدامیک از اطلاعات شخصی را جمع آوری میکنیم و چرا</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>دیدگاه‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>هنگامی که بازدیدکنندگان نظرات خود را در سایت می‌نویسند، ما اطلاعاتی را که در فرم نظرات و همچنین بازدید کننده‌ها ارائه می‌شود جمع آوری می‌کنیم &#8217;s آدرس IP و رجیستر عامل کاربر مرورگر برای کمک به تشخیص هرزنامه.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>یک رشته ناشناس ایجاد شده از آدرس ایمیل شما (همچنین هش نامیده می‌شود) ممکن است به سرویس Gravatar ارائه شود تا ببینید آیا از آن استفاده می‌کنید. سیاست حفظ حریم خصوصی خدمات Gravatar در اینجا در دسترس است: https://automattic.com/privacy/. پس از تأیید نظر شما، تصویر نمایه شما در متن نظر شما قابل مشاهده است.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>رسانه</h3><!-- /wp:heading --><!-- wp:paragraph --><p>اگر تصاویر را به وبسایت آپلود کنید، نباید آپلود تصاویر با داده‌های مکان جغرافیایی (EXIF GPS) شامل شود. بازدیدکنندگان وب سایت می‌توانند هر گونه اطلاعات مکان را از تصاویر در وب سایت دانلود و استخراج کنند.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>فرم‌های تماس</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>کوکی‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>اگر شما نظر خود را در سایت ما ثبت کنید، ممکن است برای ذخیره نام، آدرس ایمیل و وب سایت خود در کوکی‌ها تصمیم گیری کنید. اینها برای راحتی شما هستند، به طوری که شما مجبور نیستید دوباره جزئیات خود را پر کنید زمانی که نظر دیگری را ترک کنید. این کوکی‌ها یک سال طول خواهد کشید.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر از برگه ورود ما بازدید نمایید، ما یک کوکی موقت برای مشخص نمودن اینکه آیا مروگر شما کوکی قبول می‌کند را تنظیم می‌کنیم. این کوکی محتوای اطلاعات شخصی شما نیست و وقتی مرورگر شما بسته می‌شود از بین می‌رود.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>هنگام ورود به سیستم، ما همچنین کوکی‌ها را تنظیم خواهیم کرد تا اطلاعات ورود به سیستم و گزینه‌های صفحه نمایش خود را ذخیره کنید. کوکی‌های ورود به سیستم برای دو روز گذشته و کوکی‌های گزینه‌های صفحه نمایش برای یک سال گذشته است. اگر شما انتخاب کنید &quot; به یاد داشته باشید من Me&quot;، ورود شما برای دو هفته ادامه خواهد داشت. اگر از حساب خود خارج شوید، کوکی‌های ورود حذف خواهند شد.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>اگر یک مقاله را ویرایش یا منتشر کنید، یک کوکی اضافی در مرورگر شما ذخیره خواهد شد. این کوکی حاوی اطلاعات شخصی نیست و به سادگی نشان می‌دهد که شناسه پست مقاله شما فقط ویرایش شده است. بعد از یک روز منقضی می‌شود.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>محتوای جاسازی‌شده از دیگر وب‌سایت‌ها</h3><!-- /wp:heading --><!-- wp:paragraph --><p>مقالات موجود در این سایت ممکن است شامل محتوای تعبیه شده (مثلا ویدئوها، تصاویر، مقالات و غیره) باشد. مطالب جاسازی شده از وب سایت‌های دیگر رفتار دقیقا همان طوری که بازدید کننده از وب سایت دیگر بازدید کرده است.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>این وبسایت‌ها ممکن است اطلاعاتی مربوط به شما را جمع‌آوری کنند، از کوکی‌ها استفاده کنند، ردیابی سوم شخص اضافه را جاسازی کنند و تعامل شما را با محتوای تعبیه شده نظارت کنند که شامل ردیابی تعامل شما با محتوای جاسازی شده است اگر حساب کاربری داشته و به آن وبسایت وارد شده باشید.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>تجزیه و تحلیل</h3><!-- /wp:heading --><!-- wp:heading --><h2>اطلاعات شما را با چه کسی به اشتراک می‌گذاریم</h2><!-- /wp:heading --><!-- wp:heading --><h2>چه مدت ما اطلاعات شما را حفظ می‌کنیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>اگر یک نظر را ترک کنید، نظر و متادیتای آن به طور نامحدود حفظ می‌شوند. این به این معنا است که ما می‌توانیم به جای برگزاری آنها در یک خط مؤثر، به طور خودکار هر نظر پیگیری را تصدیق و تأیید کنیم.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>برای کاربرانی که در وب سایت ما ثبت نام می‌کنند (اگر وجود داشته باشند)، ما همچنین اطلاعات شخصی را که در مشخصات کاربر آنها ارائه می‌کنیم، ذخیره می‌کنیم. همه کاربران می‌توانند اطلاعات شخصی خود را در هر زمان (به جز آنها که نمی‌توانند نام کاربری خود را تغییر دهند) ببینند، ویرایش و یا حذف کنند. مدیران وب سایت همچنین می‌توانند این اطلاعات را مشاهده و ویرایش کنند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>حقوقی که بر روی داده‌هایتان دارید</h2><!-- /wp:heading --><!-- wp:paragraph --><p>اگر در این سایت حساب کاربری دارید یا نظرها را ترک کرده اید، می‌توانید درخواست دریافت یک فایل صادر شده از اطلاعات شخصی که ما در مورد شما نگه می‌داریم، از جمله هر گونه داده‌ای که برای ما ارائه کرده اید. همچنین می‌توانید درخواست کنید که ما هر گونه اطلاعات شخصی که در مورد شما نگه داریم پاک کنیم. این شامل اطلاعاتی نیست که ما مجبور به نگهداری آنها برای اهداف اداری، قانونی یا امنیتی باشیم.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>داده‌های شما را به کجا ارسال می‌کنیم</h2><!-- /wp:heading --><!-- wp:paragraph --><p>دیدگاه‌های بازدیدکننده ممکن است از طریق یک سرویس تشخیص جفنگ خودکار بررسی شوند.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>اطلاعات تماس شما</h2><!-- /wp:heading --><!-- wp:heading --><h2>اطلاعات اضافی</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>چگونه از اطلاعات شما حفاظت می‌کنیم</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>چه رویه‌های نقض اطلاعات در حال حاضر وجود دارد</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>چه چیز جدیدی از داده‌ها دریافت می‌کنیم</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>تصمیم گیری خودکار و / یا پروفایل ما با داده‌های کاربر انجام می‌شود</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>الزامات افشای قانونی صنعت</h3><!-- /wp:heading -->', 'سیاست حریم خصوصی', '', 'draft', 'closed', 'open', '', 'سیاست-حفظ-حریم-خصوصی', '', '', '2020-10-05 02:33:41', '2020-10-04 23:03:41', '', 0, 'http://localhost/git/wpArch/wp/?page_id=3', 0, 'page', '', 0),
(23, 1, '2020-10-07 15:35:34', '2020-10-07 12:05:34', '<!-- wp:paragraph -->\n<p>این یک برگهٔ نمونه است. این از یک نوشتهٔ وبلاگ متفاوت است زیرا در یک مکان باقی خواهد ماند و در راهبری سایتتان (در بیشتر پوسته‌ها) نشان داده خواهد شد. بیشتر مردم با یک برگه درباره که آن‌ها را به بازدیدکنندگان بالقوهٔ سایت معرفی می‌کند، آغاز می‌کنند. که ممکن است چیزی همانند این باشد:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>سلام! من یک پیام‌رسان دوچرخه‌سوار در روز، بازیگر مشتاق در شب هستم، و این وب‌سایت من است. من در لس آنجلس زندگی می‌کنم، یک سگ بزرگ به نام جک دارم، و من پینیا کولادا دوست دارم. (همچنین گرفتار شدن در باران را دوست دارم.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...یا چیزهایی مانند این:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>شرکت XYZ در سال ۱۹۷۱ تأسیس شد، و تا کنون چیزهای با کیفیتی را به عموم عرضه کرده است. این شرکت در شهر گاتهام واقع شده است، بیش از ۲۰۰۰ نفر در آن کار می‌کنند و همه نوع چیز عالی برای جامعه گاتهام انجام می‌دهد.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>به عنوان یک کاربر جدید وردپرس، برای حذف این برگه و ایجاد برگه‌های جدید برای محتوای خود شما باید به <a href="http://localhost/git/wpArch/wp/wp-admin/">پیشخوان</a> بروید. خوش بگذره!</p>\n<!-- /wp:paragraph -->', 'برگه نمونه', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-07 15:35:34', '2020-10-07 12:05:34', '', 2, 'http://localhost/git/wpArch/wp/?p=23', 0, 'revision', '', 0),
(24, 1, '2020-10-08 06:06:35', '2020-10-08 02:36:35', '', 'header-servicio-hardware.1.1', '', 'inherit', 'open', 'closed', '', 'header-servicio-hardware-1-1', '', '', '2020-10-08 06:06:35', '2020-10-08 02:36:35', '', 2, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/header-servicio-hardware.1.1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-10-09 12:09:29', '0000-00-00 00:00:00', '{\n    "wparch::header_textcolor": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 08:39:29"\n    },\n    "wparch::background_color": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 08:39:29"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e062c493-5bc1-4e3d-beba-00fbeacaa8e8', '', '', '2020-10-09 12:09:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2020-10-09 12:28:20', '0000-00-00 00:00:00', '{\n    "wparch::link_textcolor": {\n        "value": "#eeee22",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 08:58:20"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'edd26627-1393-4e12-a043-7ffeb1354650', '', '', '2020-10-09 12:28:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2020-10-09 12:29:27', '0000-00-00 00:00:00', '{\n    "wparch::link_maincolor": {\n        "value": "#eeee22",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 08:59:27"\n    },\n    "wparch::link_textcolor": {\n        "value": "#1e73be",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 08:59:27"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '385d46dc-6207-485d-bda0-32e69eace2e0', '', '', '2020-10-09 12:29:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2020-10-09 12:49:41', '0000-00-00 00:00:00', '{\n    "wparch::link_icolor": {\n        "value": "#81d742",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 09:19:41"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd26215a3-1b9d-4872-933d-3dc59d8915f3', '', '', '2020-10-09 12:49:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2020-10-09 13:47:48', '0000-00-00 00:00:00', '{\n    "wparch::link_maincolor": {\n        "value": "#dd3333",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 10:17:48"\n    },\n    "wparch::link_textcolor": {\n        "value": "#ffffff",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 10:17:48"\n    },\n    "wparch::link_icolor": {\n        "value": "#eeee22",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 10:17:48"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0ffd9dd6-06ea-43fb-99cf-e5abc6be08a9', '', '', '2020-10-09 13:47:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2020-10-09 13:54:50', '2020-10-09 10:24:50', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-10-09 13:58:31', '2020-10-09 10:28:31', '', 0, 'http://localhost/git/wpArch/wp/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-10-09 13:58:31', '2020-10-09 10:28:31', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-10-09 13:58:31', '2020-10-09 10:28:31', '', 0, 'http://localhost/git/wpArch/wp/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2020-10-09 14:32:49', '2020-10-09 11:02:49', '{\n    "wparch::header_image": {\n        "value": "http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/header-servicio-hardware.1.1.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 11:02:49"\n    },\n    "wparch::header_image_data": {\n        "value": {\n            "url": "http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/header-servicio-hardware.1.1.jpg",\n            "thumbnail_url": "http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/header-servicio-hardware.1.1.jpg",\n            "timestamp": 1602241353271,\n            "attachment_id": 24,\n            "width": 1903,\n            "height": 1198\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 11:02:49"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fbb5131a-8802-4a9d-a7c8-d1fef0fc954d', '', '', '2020-10-09 14:32:49', '2020-10-09 11:02:49', '', 0, 'http://localhost/git/wpArch/wp/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2020-10-09 15:40:12', '2020-10-09 12:10:12', 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1.jpg', 'cropped-header-servicio-hardware.1.1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-servicio-hardware-1-1-jpg', '', '', '2020-10-09 15:40:12', '2020-10-09 12:10:12', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-10-09 15:40:16', '0000-00-00 00:00:00', '{\n    "site_icon": {\n        "value": 33,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:10:16"\n    },\n    "wparch::header_image": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:10:16"\n    },\n    "wparch::header_image_data": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:10:16"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '89975fd1-90ea-4db6-95c8-03f176734d0d', '', '', '2020-10-09 15:40:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2020-10-09 15:40:31', '2020-10-09 12:10:31', 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1-1.jpg', 'cropped-header-servicio-hardware.1.1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-servicio-hardware-1-1-1-jpg', '', '', '2020-10-09 15:40:31', '2020-10-09 12:10:31', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-10-09 15:40:33', '2020-10-09 12:10:33', '{\n    "site_icon": {\n        "value": 35,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:10:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'de076faf-21b7-4471-9c58-8eb67e38e423', '', '', '2020-10-09 15:40:33', '2020-10-09 12:10:33', '', 0, 'http://localhost/git/wpArch/wp/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2020-10-09 15:44:13', '0000-00-00 00:00:00', '{\n    "site_icon": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:14:13"\n    },\n    "wparch::custom_logo": {\n        "value": 24,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:14:13"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8b1e3d66-842b-492b-ae99-8dc1d9e82368', '', '', '2020-10-09 15:44:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2020-10-09 15:46:13', '2020-10-09 12:16:13', '{\n    "site_icon": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:16:13"\n    },\n    "wparch::custom_logo": {\n        "value": 24,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:16:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7f865f4-2b7d-4a6a-be0e-27e6d6bdd5d6', '', '', '2020-10-09 15:46:13', '2020-10-09 12:16:13', '', 0, 'http://localhost/git/wpArch/wp/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2020-10-09 15:49:13', '2020-10-09 12:19:13', '{\n    "wparch::custom_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:19:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e5223ff7-9631-4a8e-b648-f8fbceb16025', '', '', '2020-10-09 15:49:13', '2020-10-09 12:19:13', '', 0, 'http://localhost/git/wpArch/wp/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2020-10-09 15:50:15', '2020-10-09 12:20:15', '{\n    "wparch::custom_logo": {\n        "value": 24,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:20:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '677d817e-ebf3-4db7-9477-dfcbbc69aacc', '', '', '2020-10-09 15:50:15', '2020-10-09 12:20:15', '', 0, 'http://localhost/git/wpArch/wp/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2020-10-09 15:57:42', '2020-10-09 12:27:42', '{\n    "wparch::custom_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:27:42"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f95ba68-7c7f-4e77-8dc3-6da4b956e5b1', '', '', '2020-10-09 15:57:42', '2020-10-09 12:27:42', '', 0, 'http://localhost/git/wpArch/wp/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2020-10-09 15:58:04', '2020-10-09 12:28:04', '{\n    "wparch::header_image": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:28:04"\n    },\n    "wparch::header_image_data": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:28:04"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0b348b9a-2746-4163-bb5f-b72c4cb0e363', '', '', '2020-10-09 15:58:04', '2020-10-09 12:28:04', '', 0, 'http://localhost/git/wpArch/wp/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2020-10-09 16:01:54', '2020-10-09 12:31:54', 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1-2.jpg', 'cropped-header-servicio-hardware.1.1-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-servicio-hardware-1-1-2-jpg', '', '', '2020-10-09 16:01:54', '2020-10-09 12:31:54', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-10-09 16:02:44', '0000-00-00 00:00:00', '{\n    "wparch::custom_logo": {\n        "value": 43,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:32:44"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '17bb745e-24cf-42cb-868b-0994df9f4e36', '', '', '2020-10-09 16:02:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2020-10-09 16:03:22', '2020-10-09 12:33:22', 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1-3.jpg', 'cropped-header-servicio-hardware.1.1-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-header-servicio-hardware-1-1-3-jpg', '', '', '2020-10-09 16:03:22', '2020-10-09 12:33:22', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-header-servicio-hardware.1.1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-10-09 16:03:51', '2020-10-09 12:33:51', '{\n    "wparch::custom_logo": {\n        "value": 45,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:33:51"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82acfc02-be66-4536-b7a9-c375ed3faa47', '', '', '2020-10-09 16:03:51', '2020-10-09 12:33:51', '', 0, 'http://localhost/git/wpArch/wp/?p=46', 0, 'customize_changeset', '', 0),
(47, 1, '2020-10-09 16:03:58', '2020-10-09 12:33:58', '{\n    "wparch::custom_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 12:33:58"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1023ce04-ba02-47bb-b487-60fd5c9f1af8', '', '', '2020-10-09 16:03:58', '2020-10-09 12:33:58', '', 0, 'http://localhost/git/wpArch/wp/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2020-10-09 21:29:51', '0000-00-00 00:00:00', '{\n    "wparch::link_maincolor": {\n        "value": "#110023",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 17:59:51"\n    },\n    "wparch::link_textcolor": {\n        "value": "#eeee22",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-09 17:59:26"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '42bda1e1-1435-4d9c-8a57-55e377acf528', '', '', '2020-10-09 21:29:51', '2020-10-09 17:59:51', '', 0, 'http://localhost/git/wpArch/wp/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', '', 'خانه', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%a7%d9%86%d9%87-4', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=49', 10, 'nav_menu_item', '', 0),
(50, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=50', 8, 'nav_menu_item', '', 0),
(51, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=51', 6, 'nav_menu_item', '', 0),
(52, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=52', 9, 'nav_menu_item', '', 0),
(53, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', '', 'خانه', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%a7%d9%86%d9%87-3', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=54', 5, 'nav_menu_item', '', 0),
(55, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', '', 'خانه', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%a7%d9%86%d9%87-2', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=56', 3, 'nav_menu_item', '', 0),
(57, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', '', 'خانه', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%a7%d9%86%d9%87-5', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=57', 13, 'nav_menu_item', '', 0),
(58, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=58', 12, 'nav_menu_item', '', 0),
(59, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', '', 'خانه', '', 'publish', 'closed', 'closed', '', '%d8%ae%d8%a7%d9%86%d9%87', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=59', 2, 'nav_menu_item', '', 0),
(60, 1, '2020-10-09 21:46:41', '2020-10-09 18:16:41', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=60', 7, 'nav_menu_item', '', 0),
(61, 1, '2020-10-09 21:57:24', '0000-00-00 00:00:00', '', 'Test', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-10-09 21:57:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2020-10-10 20:09:44', '2020-10-10 16:39:44', '', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2020-10-12 20:25:54', '2020-10-12 16:55:54', '', 0, 'http://localhost/git/wpArch/wp/?p=62', 11, 'nav_menu_item', '', 0),
(63, 1, '2020-10-10 22:22:44', '2020-10-10 18:52:44', '<!-- wp:paragraph -->\n<p>در قلب یکی از شهر های منحصر به فرد آمریکای لاتین،یک پروژه هنری و معماری خاص، توانایی معمارانش را به رخ می کشد. معماران پروژه با توجه به نکات محیط زیستی شروع به طراحی کردند. تعامل<a href="https://www.arel.ir/">&nbsp;معماری و هنر</a>&nbsp;در این هتل به خوبی نمایان گشته است. ترکیب هوشمندانه از دانش نیاکان، نوآوری های خارق العاده در تکنولوژی، پایداری کاربردی، روح زنده و تجربه های سایر معماران یک روش جدید در خلق و استفاده از هنر برای دستیابی به دیدگاه بالقوه و تکامل آن ابداع شده است. این جزیره از جامعه مدرن به دور مانده و طبیعت حقیقی خودش را حفظ کرده است.به این علت افراد مختلف از سراسر دنیا برای لذت بردن از این زیبایی فوق العاده عازم این شهر می شوند.&nbsp;</p>\n<!-- /wp:paragraph -->', 'هتلی که توانایی معمارانش را به رخ می کشد!', '', 'publish', 'open', 'open', '', '%d9%87%d8%aa%d9%84%db%8c-%da%a9%d9%87-%d8%aa%d9%88%d8%a7%d9%86%d8%a7%db%8c%db%8c-%d9%85%d8%b9%d9%85%d8%a7%d8%b1%d8%a7%d9%86%d8%b4-%d8%b1%d8%a7-%d8%a8%d9%87-%d8%b1%d8%ae-%d9%85%db%8c-%da%a9%d8%b4%d8%af', '', '', '2020-10-10 22:44:16', '2020-10-10 19:14:16', '', 0, 'http://localhost/git/wpArch/wp/?p=63', 0, 'post', '', 0),
(64, 1, '2020-10-10 22:22:13', '2020-10-10 18:52:13', '', 'jungle (1)', '', 'inherit', 'open', 'closed', '', 'jungle-1', '', '', '2020-10-10 22:22:13', '2020-10-10 18:52:13', '', 63, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/jungle-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-10-10 22:22:44', '2020-10-10 18:52:44', '<!-- wp:paragraph -->\n<p>در قلب یکی از شهر های منحصر به فرد آمریکای لاتین،یک پروژه هنری و معماری خاص، توانایی معمارانش را به رخ می کشد. معماران پروژه با توجه به نکات محیط زیستی شروع به طراحی کردند. تعامل<a href="https://www.arel.ir/"> معماری و هنر</a> در این هتل به خوبی نمایان گشته است. ترکیب هوشمندانه از دانش نیاکان، نوآوری های خارق العاده در تکنولوژی، پایداری کاربردی، روح زنده و تجربه های سایر معماران یک روش جدید در خلق و استفاده از هنر برای دستیابی به دیدگاه بالقوه و تکامل آن ابداع شده است. این جزیره از جامعه مدرن به دور مانده و طبیعت حقیقی خودش را حفظ کرده است.به این علت افراد مختلف از سراسر دنیا برای لذت بردن از این زیبایی فوق العاده عازم این شهر می شوند. </p>\n<!-- /wp:paragraph -->', 'هتلی که توانایی معمارانش را به رخ می کشد!', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-10-10 22:22:44', '2020-10-10 18:52:44', '', 63, 'http://localhost/git/wpArch/wp/?p=65', 0, 'revision', '', 0),
(66, 1, '2020-10-10 22:22:59', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-10 22:22:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=66', 0, 'post', '', 0),
(67, 1, '2020-10-10 22:27:40', '2020-10-10 18:57:40', '<!-- wp:paragraph -->\n<p>طبق شرح متن ارائه شده توسط معماران، این<a href="https://www.arel.ir/fa/News-Category-385.html">&nbsp;ویلا</a>&nbsp; با مساحت&nbsp;400&nbsp;متر مربع &nbsp;در منطقه ای در حال رشد برای ساخت و سازهای شهری و اقتصادی درویتنام ساخته شده است. این سرزمین یک مرکز استخراج زغال سنگ معدنی در استان کوانگ نین است که در گذشته به دلیل عملیات استخراج از کیفیت محیطی پایینی برخوردار بوده اما اخیراً در آن کیفیت هوا و شهر بسیار بهبود یافته است.</p>\n<!-- /wp:paragraph -->', 'معماری سبز و طراحی داخلی ویلا برای یک زوج مسن', '', 'publish', 'open', 'open', '', '%d9%85%d8%b9%d9%85%d8%a7%d8%b1%db%8c-%d8%b3%d8%a8%d8%b2-%d9%88-%d8%b7%d8%b1%d8%a7%d8%ad%db%8c-%d8%af%d8%a7%d8%ae%d9%84%db%8c-%d9%88%db%8c%d9%84%d8%a7-%d8%a8%d8%b1%d8%a7%db%8c-%db%8c%da%a9-%d8%b2%d9%88', '', '', '2020-10-10 23:44:25', '2020-10-10 20:14:25', '', 0, 'http://localhost/git/wpArch/wp/?p=67', 0, 'post', '', 0),
(68, 1, '2020-10-10 22:23:53', '2020-10-10 18:53:53', '', 'greenery (1)', '', 'inherit', 'open', 'closed', '', 'greenery-1', '', '', '2020-10-10 22:23:53', '2020-10-10 18:53:53', '', 67, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/greenery-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-10-10 22:27:40', '2020-10-10 18:57:40', '<!-- wp:paragraph -->\n<p>طبق شرح متن ارائه شده توسط معماران، این<a href="https://www.arel.ir/fa/News-Category-385.html"> ویلا</a>  با مساحت 400 متر مربع  در منطقه ای در حال رشد برای ساخت و سازهای شهری و اقتصادی درویتنام ساخته شده است. این سرزمین یک مرکز استخراج زغال سنگ معدنی در استان کوانگ نین است که در گذشته به دلیل عملیات استخراج از کیفیت محیطی پایینی برخوردار بوده اما اخیراً در آن کیفیت هوا و شهر بسیار بهبود یافته است.</p>\n<!-- /wp:paragraph -->', 'معماری سبز و طراحی داخلی ویلا برای یک زوج مسن', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-10-10 22:27:40', '2020-10-10 18:57:40', '', 67, 'http://localhost/git/wpArch/wp/?p=69', 0, 'revision', '', 0),
(70, 1, '2020-10-10 22:31:51', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-10 22:31:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=70', 0, 'post', '', 0),
(71, 1, '2020-10-10 22:33:43', '2020-10-10 19:03:43', '<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->', 'فراخوان طراحی دیوارنگاری، جداره های پیشانی و ورودی های جانبی تونل های تهران', '', 'publish', 'open', 'open', '', '%d9%81%d8%b1%d8%a7%d8%ae%d9%88%d8%a7%d9%86-%d8%b7%d8%b1%d8%a7%d8%ad%db%8c-%d8%af%db%8c%d9%88%d8%a7%d8%b1%d9%86%da%af%d8%a7%d8%b1%db%8c%d8%8c-%d8%ac%d8%af%d8%a7%d8%b1%d9%87-%d9%87%d8%a7%db%8c-%d9%be', '', '', '2020-10-10 23:46:21', '2020-10-10 20:16:21', '', 0, 'http://localhost/git/wpArch/wp/?p=71', 0, 'post', '', 0),
(72, 1, '2020-10-10 22:32:46', '2020-10-10 19:02:46', '', 'tehran', '', 'inherit', 'open', 'closed', '', 'tehran', '', '', '2020-10-10 22:32:46', '2020-10-10 19:02:46', '', 71, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/tehran.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-10-10 22:33:43', '2020-10-10 19:03:43', '<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->', 'فراخوان طراحی دیوارنگاری، جداره های پیشانی و ورودی های جانبی تونل های تهران', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-10-10 22:33:43', '2020-10-10 19:03:43', '', 71, 'http://localhost/git/wpArch/wp/?p=73', 0, 'revision', '', 0),
(74, 1, '2020-10-10 22:44:15', '2020-10-10 19:14:15', '<!-- wp:paragraph -->\n<p>در قلب یکی از شهر های منحصر به فرد آمریکای لاتین،یک پروژه هنری و معماری خاص، توانایی معمارانش را به رخ می کشد. معماران پروژه با توجه به نکات محیط زیستی شروع به طراحی کردند. تعامل<a href="https://www.arel.ir/">&nbsp;معماری و هنر</a>&nbsp;در این هتل به خوبی نمایان گشته است. ترکیب هوشمندانه از دانش نیاکان، نوآوری های خارق العاده در تکنولوژی، پایداری کاربردی، روح زنده و تجربه های سایر معماران یک روش جدید در خلق و استفاده از هنر برای دستیابی به دیدگاه بالقوه و تکامل آن ابداع شده است. این جزیره از جامعه مدرن به دور مانده و طبیعت حقیقی خودش را حفظ کرده است.به این علت افراد مختلف از سراسر دنیا برای لذت بردن از این زیبایی فوق العاده عازم این شهر می شوند.&nbsp;</p>\n<!-- /wp:paragraph -->', 'هتلی که توانایی معمارانش را به رخ می کشد!', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-10-10 22:44:15', '2020-10-10 19:14:15', '', 63, 'http://localhost/git/wpArch/wp/?p=74', 0, 'revision', '', 0),
(75, 1, '2020-10-10 23:27:32', '2020-10-10 19:57:32', '<!-- wp:paragraph -->\n<p>طبق شرح متن ارائه شده توسط معماران، این<a href="https://www.arel.ir/fa/News-Category-385.html">&nbsp;ویلا</a>&nbsp; با مساحت&nbsp;400&nbsp;متر مربع &nbsp;در منطقه ای در حال رشد برای ساخت و سازهای شهری و اقتصادی درویتنام ساخته شده است. این سرزمین یک مرکز استخراج زغال سنگ معدنی در استان کوانگ نین است که در گذشته به دلیل عملیات استخراج از کیفیت محیطی پایینی برخوردار بوده اما اخیراً در آن کیفیت هوا و شهر بسیار بهبود یافته است.</p>\n<!-- /wp:paragraph -->', 'معماری سبز و طراحی داخلی ویلا برای یک زوج مسن', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-10-10 23:27:32', '2020-10-10 19:57:32', '', 67, 'http://localhost/git/wpArch/wp/?p=75', 0, 'revision', '', 0),
(76, 1, '2020-10-12 04:32:37', '2020-10-12 01:02:37', '<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->', 'نقاط کانونی یا Focal Points در دکوراسیون داخلی چیست؟', '', 'publish', 'open', 'open', '', '%d9%86%d9%82%d8%a7%d8%b7-%da%a9%d8%a7%d9%86%d9%88%d9%86%db%8c-%db%8c%d8%a7-focal-points-%d8%af%d8%b1-%d8%af%da%a9%d9%88%d8%b1%d8%a7%d8%b3%db%8c%d9%88%d9%86-%d8%af%d8%a7%d8%ae%d9%84%db%8c-%da%86%db%8c', '', '', '2020-10-12 04:33:21', '2020-10-12 01:03:21', '', 0, 'http://localhost/git/wpArch/wp/?p=76', 0, 'post', '', 0),
(77, 1, '2020-10-12 04:32:28', '2020-10-12 01:02:28', '', 'bridgeoverhead', '', 'inherit', 'open', 'closed', '', 'bridgeoverhead', '', '', '2020-10-12 04:32:28', '2020-10-12 01:02:28', '', 76, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/bridgeoverhead.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-10-12 04:32:37', '2020-10-12 01:02:37', '<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->', 'نقاط کانونی یا Focal Points در دکوراسیون داخلی چیست؟', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-10-12 04:32:37', '2020-10-12 01:02:37', '', 76, 'http://localhost/git/wpArch/wp/?p=78', 0, 'revision', '', 0),
(79, 1, '2020-10-12 09:56:35', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-12 09:56:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=79', 0, 'post', '', 0),
(80, 1, '2020-10-12 09:59:18', '2020-10-12 06:29:18', '{"id":"80","field_id":2,"fields":[{"id":"0","type":"name","label":"Name","format":"first-last","description":"","required":"1","size":"medium","simple_placeholder":"","simple_default":"","first_placeholder":"","first_default":"","middle_placeholder":"","middle_default":"","last_placeholder":"","last_default":"","css":""},{"id":"1","type":"email","label":"Email","description":"","required":"1","size":"medium","placeholder":"","confirmation_placeholder":"","default_value":"","css":""}],"settings":{"form_title":"Newsletter Signup Form","form_desc":"","form_class":"","submit_text":"Submit","submit_text_processing":"Sending...","submit_class":"","antispam":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Newsletter Signup Form Entry","sender_name":"\\u062f\\u0627\\u0644\\u0627\\u0646 \\u0622\\u0631\\u06a9","sender_address":"{admin_email}","replyto":"","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"Thanks for contacting us! We will be in touch with you shortly.","message_scroll":"1","page":"2","redirect":""}}},"meta":{"template":"subscribe"}}', 'Newsletter Signup Form', '', 'publish', 'closed', 'closed', '', 'newsletter-signup-form', '', '', '2020-10-12 09:59:20', '2020-10-12 06:29:20', '', 0, 'http://localhost/git/wpArch/wp/?post_type=wpforms&#038;p=80', 0, 'wpforms', '', 0),
(81, 1, '2020-10-12 10:10:35', '2020-10-12 06:40:35', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2020-10-12 10:10:35', '2020-10-12 06:40:35', '', 0, 'http://localhost/git/wpArch/wp/?page_id=81', 0, 'page', '', 0),
(82, 1, '2020-10-12 19:51:14', '2020-10-12 16:21:14', '<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":83,"sizeSlug":"large","className":"is-style-default"} -->\n<figure class="wp-block-image size-large is-style-default"><img src="http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/l4.jpg" alt="" class="wp-image-83"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و <a href="http://codebox.ir" data-type="URL" data-id="codebox.ir">متخصصان </a>را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->', 'عنوان آزمایش', '', 'publish', 'open', 'open', '', '%d8%b9%d9%86%d9%88%d8%a7%d9%86-%d8%a2%d8%b2%d9%85%d8%a7%db%8c%d8%b4', '', '', '2020-10-12 19:51:15', '2020-10-12 16:21:15', '', 0, 'http://localhost/git/wpArch/wp/?p=82', 0, 'post', '', 2),
(83, 1, '2020-10-12 19:40:46', '2020-10-12 16:10:46', '', 'l4', '', 'inherit', 'open', 'closed', '', 'l4', '', '', '2020-10-12 19:40:46', '2020-10-12 16:10:46', '', 82, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/l4.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-10-12 19:42:14', '2020-10-12 16:12:14', '<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":83,"sizeSlug":"large","className":"is-style-default"} -->\n<figure class="wp-block-image size-large is-style-default"><img src="http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/l4.jpg" alt="" class="wp-image-83"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و <a href="http://codebox.ir" data-type="URL" data-id="codebox.ir">متخصصان </a>را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>\n<!-- /wp:paragraph -->', 'عنوان آزمایش', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2020-10-12 19:42:14', '2020-10-12 16:12:14', '', 82, 'http://localhost/git/wpArch/wp/?p=84', 0, 'revision', '', 0),
(85, 1, '2020-10-12 19:49:46', '2020-10-12 16:19:46', '', 'lighthouse-980457', '', 'inherit', 'open', 'closed', '', 'lighthouse-980457', '', '', '2020-10-12 19:49:46', '2020-10-12 16:19:46', '', 82, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/lighthouse-980457.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-10-12 19:54:30', '2020-10-12 16:24:30', '', 'b-img-dive-into-ux', '', 'inherit', 'open', 'closed', '', 'b-img-dive-into-ux', '', '', '2020-10-12 19:54:30', '2020-10-12 16:24:30', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/b-img-dive-into-ux.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-10-12 19:56:13', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-12 19:56:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?page_id=87', 0, 'page', '', 0),
(88, 1, '2020-10-12 20:08:50', '2020-10-12 16:38:50', '', '02_events_article_07', '', 'inherit', 'open', 'closed', '', '02_events_article_07', '', '', '2020-10-12 20:08:50', '2020-10-12 16:38:50', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/02_events_article_07.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-10-12 20:09:14', '2020-10-12 16:39:14', '{\n    "blogname": {\n        "value": "\\u062f\\u0627\\u0644\\u0627\\u0646 \\u0622\\u0631\\u06a9",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:38:53"\n    },\n    "wparch::custom_logo": {\n        "value": 90,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:39:14"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8a118696-4b22-4ae9-a1b8-e7444346e5b2', '', '', '2020-10-12 20:09:14', '2020-10-12 16:39:14', '', 0, 'http://localhost/git/wpArch/wp/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2020-10-12 20:09:02', '2020-10-12 16:39:02', 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-02_events_article_07.jpg', 'cropped-02_events_article_07.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-02_events_article_07-jpg', '', '', '2020-10-12 20:09:02', '2020-10-12 16:39:02', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/cropped-02_events_article_07.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(91, 1, '2020-10-12 20:12:56', '2020-10-12 16:42:56', '{\n    "wparch::link_ibgcolor": {\n        "value": "#eeee22",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:42:53"\n    },\n    "wparch::link_icolor": {\n        "value": "#dd3333",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:41:53"\n    },\n    "wparch::header_textcolor": {\n        "value": "#8224e3",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:42:53"\n    },\n    "wparch::link_maincolor": {\n        "value": "#8224e3",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:42:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f94f94d0-4c56-4cd4-bcc1-c717c54467e5', '', '', '2020-10-12 20:12:56', '2020-10-12 16:42:56', '', 0, 'http://localhost/git/wpArch/wp/?p=91', 0, 'customize_changeset', '', 0),
(92, 1, '2020-10-12 20:13:11', '2020-10-12 16:43:11', '{\n    "wparch::link_icolor": {\n        "value": "#ffffff",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:43:11"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35155210-407b-4094-a031-805936f07a05', '', '', '2020-10-12 20:13:11', '2020-10-12 16:43:11', '', 0, 'http://localhost/git/wpArch/wp/?p=92', 0, 'customize_changeset', '', 0),
(93, 1, '2020-10-12 20:15:52', '2020-10-12 16:45:52', '{\n    "wparch::link_textcolor": {\n        "value": "#eeee22",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:43:53"\n    },\n    "wparch::background_image": {\n        "value": "http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/body-bg.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:45:52"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '32aa3122-3a43-4eda-8cb0-9c58cda78d37', '', '', '2020-10-12 20:15:52', '2020-10-12 16:45:52', '', 0, 'http://localhost/git/wpArch/wp/?p=93', 0, 'customize_changeset', '', 0),
(94, 1, '2020-10-12 20:15:46', '2020-10-12 16:45:46', '', 'body-bg', '', 'inherit', 'open', 'closed', '', 'body-bg', '', '', '2020-10-12 20:15:46', '2020-10-12 16:45:46', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/body-bg.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2020-10-12 20:16:10', '2020-10-12 16:46:10', '{\n    "wparch::background_preset": {\n        "value": "repeat",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:46:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6892f66a-fad4-4368-b440-be99dc3e5459', '', '', '2020-10-12 20:16:10', '2020-10-12 16:46:10', '', 0, 'http://localhost/git/wpArch/wp/?p=95', 0, 'customize_changeset', '', 0),
(96, 1, '2020-10-12 20:16:47', '2020-10-12 16:46:47', '{\n    "wparch::background_image": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:46:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd1b54cef-60cd-4c93-94c3-dea6685e37d1', '', '', '2020-10-12 20:16:47', '2020-10-12 16:46:47', '', 0, 'http://localhost/git/wpArch/wp/?p=96', 0, 'customize_changeset', '', 0),
(97, 1, '2020-10-12 20:17:40', '2020-10-12 16:47:40', '{\n    "wparch::custom_logo": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:47:40"\n    },\n    "wparch::header_textcolor": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:47:40"\n    },\n    "wparch::link_maincolor": {\n        "value": "#000000",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:47:40"\n    },\n    "wparch::link_textcolor": {\n        "value": "#ffffff",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:47:40"\n    },\n    "wparch::link_ibgcolor": {\n        "value": "#ffa000",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-12 16:47:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd700ca90-12e9-4bd5-9677-45a78836e1be', '', '', '2020-10-12 20:17:40', '2020-10-12 16:47:40', '', 0, 'http://localhost/git/wpArch/wp/?p=97', 0, 'customize_changeset', '', 0),
(98, 1, '2020-10-12 20:20:09', '2020-10-12 16:50:09', '', 'raph_ads_arel', '', 'inherit', 'open', 'closed', '', 'raph_ads_arel', '', '', '2020-10-12 20:20:09', '2020-10-12 16:50:09', '', 0, 'http://localhost/git/wpArch/wp/wp-content/uploads/2020/10/raph_ads_arel.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2020-10-12 20:29:33', '2020-10-12 16:59:33', '', 'گوگل', '', 'publish', 'closed', 'closed', '', '%da%af%d9%88%da%af%d9%84', '', '', '2020-10-12 20:30:57', '2020-10-12 17:00:57', '', 0, 'http://localhost/git/wpArch/wp/?p=99', 1, 'nav_menu_item', '', 0),
(100, 1, '2020-10-12 20:29:33', '2020-10-12 16:59:33', ' ', '', '', 'publish', 'closed', 'closed', '', '%d8%af%d8%b1%d8%a8%d8%a7%d8%b1%d9%87-%d9%85%d8%a7', '', '', '2020-10-12 20:30:57', '2020-10-12 17:00:57', '', 0, 'http://localhost/git/wpArch/wp/?p=100', 2, 'nav_menu_item', '', 0),
(101, 1, '2020-10-12 20:30:14', '2020-10-12 17:00:14', '<!-- wp:paragraph -->\n<p>این یک برگهٔ نمونه است. این از یک نوشتهٔ وبلاگ متفاوت است زیرا در یک مکان باقی خواهد ماند و در راهبری سایتتان (در بیشتر پوسته‌ها) نشان داده خواهد شد. بیشتر مردم با یک برگه درباره که آن‌ها را به بازدیدکنندگان بالقوهٔ سایت معرفی می‌کند، آغاز می‌کنند. که ممکن است چیزی همانند این باشد:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>سلام! من یک پیام‌رسان دوچرخه‌سوار در روز، بازیگر مشتاق در شب هستم، و این وب‌سایت من است. من در لس آنجلس زندگی می‌کنم، یک سگ بزرگ به نام جک دارم، و من پینیا کولادا دوست دارم. (همچنین گرفتار شدن در باران را دوست دارم.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...یا چیزهایی مانند این:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>شرکت XYZ در سال ۱۹۷۱ تأسیس شد، و تا کنون چیزهای با کیفیتی را به عموم عرضه کرده است. این شرکت در شهر گاتهام واقع شده است، بیش از ۲۰۰۰ نفر در آن کار می‌کنند و همه نوع چیز عالی برای جامعه گاتهام انجام می‌دهد.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>به عنوان یک کاربر جدید وردپرس، برای حذف این برگه و ایجاد برگه‌های جدید برای محتوای خود شما باید به <a href="http://localhost/git/wpArch/wp/wp-admin/">پیشخوان</a> بروید. خوش بگذره!</p>\n<!-- /wp:paragraph -->', 'درباره ما', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-12 20:30:14', '2020-10-12 17:00:14', '', 2, 'http://localhost/git/wpArch/wp/?p=101', 0, 'revision', '', 0),
(103, 1, '2020-10-12 20:32:32', '2020-10-12 17:02:32', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2020-10-12 20:33:15', '2020-10-12 17:03:15', '', 0, 'http://localhost/git/wpArch/wp/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2020-10-12 20:32:32', '2020-10-12 17:02:32', '', 'معماری داخلی', '', 'publish', 'closed', 'closed', '', '%d9%85%d8%b9%d9%85%d8%a7%d8%b1%db%8c-%d8%af%d8%a7%d8%ae%d9%84%db%8c', '', '', '2020-10-12 20:33:15', '2020-10-12 17:03:15', '', 0, 'http://localhost/git/wpArch/wp/?p=104', 2, 'nav_menu_item', '', 0),
(105, 1, '2020-10-12 20:32:32', '2020-10-12 17:02:32', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2020-10-12 20:33:16', '2020-10-12 17:03:16', '', 0, 'http://localhost/git/wpArch/wp/?p=105', 3, 'nav_menu_item', '', 0),
(106, 1, '2020-10-12 20:32:32', '2020-10-12 17:02:32', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2020-10-12 20:33:16', '2020-10-12 17:03:16', '', 0, 'http://localhost/git/wpArch/wp/?p=106', 4, 'nav_menu_item', '', 0),
(107, 1, '2020-10-12 20:33:16', '2020-10-12 17:03:16', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2020-10-12 20:33:16', '2020-10-12 17:03:16', '', 0, 'http://localhost/git/wpArch/wp/?p=107', 5, 'nav_menu_item', '', 0),
(108, 1, '2020-10-13 12:00:45', '0000-00-00 00:00:00', '{\n    "wparch::link_maincolor": {\n        "value": "#000000",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2020-10-13 08:30:45"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '79ba0a54-f49c-4904-b414-be7179286f8b', '', '', '2020-10-13 12:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/git/wpArch/wp/?p=108', 0, 'customize_changeset', '', 0);

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
(1, 'دسته‌بندی نشده', '%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87', 0),
(2, 'پیش فرض - Header right', '%d9%be%db%8c%d8%b4-%d9%81%d8%b1%d8%b6-header-right', 0),
(3, 'پیش فرض - Main Menu', '%d9%be%db%8c%d8%b4-%d9%81%d8%b1%d8%b6-main-menu', 0),
(4, 'جدید', '%d8%ac%d8%af%db%8c%d8%af', 0),
(5, 'ویژه', '%d9%88%db%8c%da%98%d9%87', 0),
(6, 'معماری سنتی', '%d9%85%d8%b9%d9%85%d8%a7%d8%b1%db%8c-%d8%b3%d9%86%d8%aa%db%8c', 0),
(7, 'عمران و توسعه', '%d8%b9%d9%85%d8%b1%d8%a7%d9%86-%d9%88-%d8%aa%d9%88%d8%b3%d8%b9%d9%87', 0),
(8, 'آزمایش', '%d8%a2%d8%b2%d9%85%d8%a7%db%8c%d8%b4', 0),
(9, 'آزمایش منو اصلی', '%d8%a2%d8%b2%d9%85%d8%a7%db%8c%d8%b4-%d9%85%d9%86%d9%88-%d8%a7%d8%b5%d9%84%db%8c', 0);

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
(1, 1, 0),
(30, 2, 0),
(31, 2, 0),
(49, 3, 0),
(50, 3, 0),
(51, 3, 0),
(52, 3, 0),
(53, 3, 0),
(54, 3, 0),
(55, 3, 0),
(56, 3, 0),
(57, 3, 0),
(58, 3, 0),
(59, 3, 0),
(60, 3, 0),
(62, 3, 0),
(63, 1, 0),
(63, 4, 0),
(67, 1, 0),
(67, 4, 0),
(67, 5, 0),
(71, 1, 0),
(71, 4, 0),
(71, 5, 0),
(76, 1, 0),
(76, 6, 0),
(82, 1, 0),
(82, 4, 0),
(82, 5, 0),
(82, 7, 0),
(99, 8, 0),
(100, 8, 0),
(103, 9, 0),
(104, 9, 0),
(105, 9, 0),
(106, 9, 0),
(107, 9, 0);

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
(1, 1, 'category', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 6),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 13),
(4, 4, 'post_tag', '', 0, 4),
(5, 5, 'post_tag', '', 0, 3),
(6, 6, 'category', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'nav_menu', '', 0, 2),
(9, 9, 'nav_menu', '', 0, 5);

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
(1, 1, 'nickname', 'مدیر سایت'),
(2, 1, 'first_name', 'Milad'),
(3, 1, 'last_name', 'Abooali'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:"1fb2f5807697ab8b5db383bf681e3f0878b5673c9cb08557e2beb7acd2d7e775";a:4:{s:10:"expiration";i:1603062239;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36";s:5:"login";i:1601852639;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '79'),
(18, 1, 'enable_custom_fields', '1'),
(19, 1, 'meta-box-order_page', 'a:3:{s:6:"normal";s:47:"_cb_seo_metabox,_custom_meta_metabox,postcustom";s:4:"side";s:0:"";s:8:"advanced";s:0:"";}'),
(20, 1, 'closedpostboxes_page', 'a:2:{i:0;s:20:"_custom_meta_metabox";i:1;s:10:"postcustom";}'),
(21, 1, 'metaboxhidden_page', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(23, 1, 'wp_user-settings-time', '1602523381'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(26, 1, 'nav_menu_recently_edited', '9'),
(27, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:41:"dashboard_site_health,dashboard_right_now";s:4:"side";s:21:"dashboard_quick_press";s:7:"column3";s:18:"dashboard_activity";s:7:"column4";s:17:"dashboard_primary";}'),
(28, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(29, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(30, 1, 'wp_media_library_mode', 'grid'),
(31, 1, '_new_email', 'a:2:{s:4:"hash";s:32:"ee96e5c1519ed45711c5a0e168b1ebe2";s:8:"newemail";s:21:"m.abooali@hotmail.com";}');

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
(1, 'dadmin', '$P$Bozb4I10FEXr0zelwRCkAq/sjQ91Hy/', 'dadmin', 'm.abooali@hotmail.com', 'http://localhost/git/wpArch/wp', '2020-10-04 23:03:41', '', 0, 'مدیر سایت');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

INSERT INTO `wp_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_entry_emails_meta_cleanup', 'Wzg2NDAwXQ==', '2020-10-12 06:29:20'),
(2, 'wpforms_admin_notifications_update', 'W10=', '2020-10-12 06:33:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `wp_user_id` (`wp_user_id`);

--
-- Indexes for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
