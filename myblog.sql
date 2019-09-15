-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 15, 2019 at 09:42 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Grooming', '2019-09-15 01:48:41', '2019-09-15 01:48:41'),
(2, 'Fashion', '2019-09-15 01:48:54', '2019-09-15 01:48:54'),
(3, 'Technology', '2019-09-15 01:49:00', '2019-09-15 01:49:00'),
(4, 'Sports', '2019-09-15 01:49:05', '2019-09-15 01:49:05'),
(5, 'Relationships', '2019-09-15 01:49:30', '2019-09-15 01:49:30'),
(6, 'Entertainment', '2019-09-15 01:49:45', '2019-09-15 01:49:45'),
(7, 'Culture', '2019-09-15 01:49:50', '2019-09-15 01:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `approved`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Ashish', 'ashish@test.com', '<p>test test good test grooming tips</p>', 1, 1, '2019-09-15 02:10:39', '2019-09-15 02:10:39'),
(2, 'Blesh', 'bleshbanz@gmail.com', '<p>tes tt etst test test awesome bread and shaving tips</p>', 1, 1, '2019-09-15 02:11:16', '2019-09-15 02:11:16');

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
(3, '2016_02_06_175142_create_posts_table', 1),
(4, '2016_03_20_162017_add_slug_to_users', 1),
(5, '2016_04_28_021908_create_categories_table', 1),
(6, '2016_04_28_022255_add_category_id_to_posts', 1),
(7, '2016_05_30_153615_create_tags_table', 1),
(8, '2016_05_30_155417_create_post_tag_table', 1),
(9, '2016_07_16_173641_create_comments_table', 1),
(10, '2016_08_15_000718_add_image_col_to_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `slug`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '10 Quirky Beard Facts That Prove How Important They\'ve Been Through The Ages & Still Continue To Be', '<p><span style=\"color: #191919; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 19.2px; background-color: #f9f9f9;\">1. Beards can trigger extreme reactions. People with pogonophobia have an abnormally persistent fear of beards. The symptoms could include breathlessness, irregular heartbeat, sweating, nausea, and an overall feeling of dread. On the other hand, those with Pogonophilia adore people with beards and beards, in general.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #191919; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 19.2px; background-color: #f9f9f9;\"><span style=\"font-size: 19.2px;\">2. Back in the day, barbers were highly skilled professionals who were trained to perform surgeries too. Up until the mid-18th century, the person who shaved your beard could also perform minor surgeries by probably using the same instruments, gross right?</span></span></p>\r\n<p>&nbsp;</p>', 'ten-quirky-beard-facts', '1568532690.jpg', 1, '2019-09-15 02:01:30', '2019-09-15 02:01:30'),
(2, 'World Beard Day: How The Humble Beard Came To Empower Men As Well As Women', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">As divided men might be about sporting a beard, it can hardly be debated that men who have a&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; color: #ff6000;\" href=\"https://www.mensxp.com/grooming/beards-and-shaving/56528-india-s-hottest-beards-of-2019.html\" target=\"_blank\" rel=\"noopener\">well-groomed</a>, well maintained and properly shaped beard, have an aristocratic appeal.&nbsp;</p>\r\n<div class=\"fb-quote fb_iframe_widget\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: absolute; left: -74.5px; top: -47px;\" data-href=\"https://www.mensxp.com/grooming/beards-and-shaving/56543-a-brief-history-of-the-beard-and-how-beards-empowered-men-and-women.html\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 169px; height: 47px;\"><iframe class=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; position: absolute; border-width: initial; border-style: none; visibility: visible; width: 169px; height: 47px;\" title=\"fb:quote Facebook Social Plugin\" src=\"https://www.facebook.com/v3.1/plugins/quote.php?app_id=121697241177107&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df1bcc2bc6c1d39%26domain%3Dwww.mensxp.com%26origin%3Dhttps%253A%252F%252Fwww.mensxp.com%252Ff3920d2eb2da73c%26relation%3Dparent.parent&amp;container_width=1284&amp;href=https%3A%2F%2Fwww.mensxp.com%2Fgrooming%2Fbeards-and-shaving%2F56543-a-brief-history-of-the-beard-and-how-beards-empowered-men-and-women.html&amp;locale=en_US&amp;sdk=joey\" name=\"f3120907ccde868\" width=\"1000px\" height=\"1000px\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></span></div>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">For millenniums, beards have been associated with one\'s ability to influence and have been seen as a sign of power, virility, wisdom and manliness.</p>', 'world-beard-dat-2019', '1568532825.jpg', 1, '2019-09-15 02:03:45', '2019-09-15 02:03:45'),
(3, 'We Compared The Best Music Streaming Services To See Which One\'s Worth The Money For Indian Users', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">It\'s essential to know the kind of music you\'ll be able to listen on a particular service before digging deep into the other things like the UI and features. So we thought it\'s best if we start with this. So when it comes to music selection, YouTube Music is by far the best option. YouTube Music not only brings the catalog of Google Play Music, but it also has the power of, you know, YouTube!</p>\r\n<div class=\"fb-quote fb_iframe_widget\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: absolute; left: -74.5px; top: 1566px;\" data-href=\"https://www.mensxp.com/technology/apps/56124-we-compared-the-best-music-streaming-services-to-see-which-one-s-worth-the-money-for-indian-users.html\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 169px; height: 47px;\"><iframe class=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; position: absolute; border-width: initial; border-style: none; visibility: visible; width: 169px; height: 47px;\" title=\"fb:quote Facebook Social Plugin\" src=\"https://www.facebook.com/v3.1/plugins/quote.php?app_id=121697241177107&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df27c66f935fa218%26domain%3Dwww.mensxp.com%26origin%3Dhttps%253A%252F%252Fwww.mensxp.com%252Ff2de719f1b88c3%26relation%3Dparent.parent&amp;container_width=1284&amp;href=https%3A%2F%2Fwww.mensxp.com%2Ftechnology%2Fapps%2F56124-we-compared-the-best-music-streaming-services-to-see-which-one-s-worth-the-money-for-indian-users.html&amp;locale=en_US&amp;sdk=joey\" name=\"f2ca238bad07084\" width=\"1000px\" height=\"1000px\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></span></div>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">YouTube, as we all know, has all kinds of music. Be it Bollywood, Western or some regional language music, YouTube has it all. Add Google Play Music\'s vast library of over 30 million songs, you have a winner right there. YouTube Music is also great for listening to live performances, music covers, etc.&nbsp;</p>', 'best-music-streaming-services-indians', '1568532958.jpg', 3, '2019-09-15 02:05:58', '2019-09-15 02:05:58'),
(4, 'WhatsApp Web May Soon Work Without A Smartphone And It\'s Exactly What We Need Right Now', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">WhatsApp is said to be working on a new web/desktop version of its app that will basically work without your smartphone. It will be able to work even when your smartphone is not connected to the internet, which has been a highly demanded feature ever since WhatsApp web was launched.&nbsp;</p>\r\n<div class=\"fb-quote fb_iframe_widget\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: absolute; left: -74.5px; top: -47px;\" data-href=\"https://www.mensxp.com/technology/apps/55311-whatsapp-web-may-soon-work-without-a-smartphone-and-it-s-exactly-what-we-need-right-now.html\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 169px; height: 47px;\"><iframe class=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; position: absolute; border-width: initial; border-style: none; visibility: visible; width: 169px; height: 47px;\" title=\"fb:quote Facebook Social Plugin\" src=\"https://www.facebook.com/v3.1/plugins/quote.php?app_id=121697241177107&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Dfc2d2a5ac3b5c8%26domain%3Dwww.mensxp.com%26origin%3Dhttps%253A%252F%252Fwww.mensxp.com%252Ff22e655e4d5fa1%26relation%3Dparent.parent&amp;container_width=1284&amp;href=https%3A%2F%2Fwww.mensxp.com%2Ftechnology%2Fapps%2F55311-whatsapp-web-may-soon-work-without-a-smartphone-and-it-s-exactly-what-we-need-right-now.html&amp;locale=en_US&amp;sdk=joey\" name=\"fcf3346d9be7cc\" width=\"1000px\" height=\"1000px\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></span></div>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">The report&nbsp;comes from reliable leaker&nbsp;<em style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; text-decoration-line: none; color: #ff6000;\" href=\"https://twitter.com/WABetaInfo/status/1154552711947280385\" target=\"_blank\" rel=\"nofollow noopener\">WABetaInfo</a></em>, who has claimed that developers are working on a desktop version based on Universal Windows Platform (UWP) and will work even when your smartphone is switched off.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">The other new feature that is rumoured is that UWP will also work in sync with a new multi-platform system that will let users access their WhatsApp account on multiple devices.&nbsp;</p>', 'whatsapp-web-app', '1568533044.jpg', 3, '2019-09-15 02:07:24', '2019-09-15 02:07:24'),
(5, 'How Arun Jaitley Motivated Virat Kohli After The Death Of His Father Prem', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">\"There is no passion to be found playing small - in settling for a life that is less than the one you are capable of living.\" Nelson Mandela\'s famous quote is probably the best&nbsp;way to describe Virat Kohli\'s love affair with cricket.</p>\r\n<div class=\"fb-quote fb_iframe_widget\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: absolute; left: -74.5px; top: -47px;\" data-href=\"https://www.mensxp.com/sports/cricket/56747-how-arun-jaitley-motivated-virat-kohli-after-the-death-of-his-father-prem.html\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 169px; height: 47px;\"><iframe class=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; position: absolute; border-width: initial; border-style: none; visibility: visible; width: 169px; height: 47px;\" title=\"fb:quote Facebook Social Plugin\" src=\"https://www.facebook.com/v3.1/plugins/quote.php?app_id=121697241177107&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter.php%3Fversion%3D44%23cb%3Df220c1d412e1eb4%26domain%3Dwww.mensxp.com%26origin%3Dhttps%253A%252F%252Fwww.mensxp.com%252Ff1b5b771c225d4%26relation%3Dparent.parent&amp;container_width=1284&amp;href=https%3A%2F%2Fwww.mensxp.com%2Fsports%2Fcricket%2F56747-how-arun-jaitley-motivated-virat-kohli-after-the-death-of-his-father-prem.html&amp;locale=en_US&amp;sdk=joey\" name=\"f3bad74b9b0b934\" width=\"1000px\" height=\"1000px\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></span></div>\r\n<p>&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">His passion for cricket has made him one of the best batsmen in the world across formats and further nurtured him into a ruthless captain. It\'s also passion that defines Kohli\'s emotional, effervescent and, at times, explosive character. For him, the world is for the taking and his hunger to succeed has propelled him to the pinnacle of the sport.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 34px; font-family: open-sans, Arial, Helvetica, sans-serif; font-size: 1.2em; line-height: 1.7; color: #191919; overflow: visible; background-color: #f9f9f9;\">But, every success story is derived from misery, one that goes on to make the journey worthwhile and adds meaning to it. And, the seeds of Kohli\'s immaculate success in the sport were also sown in troubled times on the back of great personal loss.</p>', 'virat-kohali-india-captain-cricket', NULL, 4, '2019-09-15 02:09:16', '2019-09-15 02:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3),
(4, 3, 4),
(5, 3, 6),
(6, 4, 3),
(7, 4, 6),
(8, 5, 8),
(9, 5, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'beards ans shaving', '2019-09-15 01:54:59', '2019-09-15 01:54:59'),
(2, 'Hairstyle', '2019-09-15 01:55:16', '2019-09-15 01:55:16'),
(3, 'Apps', '2019-09-15 01:55:26', '2019-09-15 01:55:26'),
(4, 'Games', '2019-09-15 01:55:29', '2019-09-15 01:55:29'),
(5, 'Games', '2019-09-15 01:55:29', '2019-09-15 01:55:29'),
(6, 'Programing', '2019-09-15 01:55:36', '2019-09-15 01:55:36'),
(7, 'Harmony mobile', '2019-09-15 01:55:49', '2019-09-15 01:55:49'),
(8, 'cricket', '2019-09-15 01:56:01', '2019-09-15 01:56:01'),
(9, 'football', '2019-09-15 01:56:06', '2019-09-15 01:56:06'),
(10, 'bollywood', '2019-09-15 01:56:25', '2019-09-15 01:56:25'),
(11, 'hollywood', '2019-09-15 01:56:31', '2019-09-15 01:56:31'),
(12, 'news', '2019-09-15 01:56:42', '2019-09-15 01:56:42'),
(13, 'shoes', '2019-09-15 01:56:58', '2019-09-15 01:56:58'),
(14, 'celebraty style', '2019-09-15 01:57:09', '2019-09-15 01:57:09'),
(15, 'trends', '2019-09-15 01:57:22', '2019-09-15 01:57:37'),
(16, 'Friendship', '2019-09-15 01:58:06', '2019-09-15 01:58:06'),
(17, 'Marriage', '2019-09-15 01:58:12', '2019-09-15 01:58:12'),
(18, 'Break ups', '2019-09-15 01:58:44', '2019-09-15 01:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test2213', 'test2213@test.com', '$2y$10$Tap.4P3JobyfgGpl.ZG6SOAxFu1xeZHiTzTnJ9WKPXxe5VjE85k8q', NULL, '2019-08-28 11:13:30', '2019-08-28 11:13:30'),
(2, 'Ashish', 'ashish@test.com', '$2y$10$XtxUDFp2w3ecG0r3RORxy.L2pXKsQ8W8oIhIGxvc.pHRthj0eqac.', NULL, '2019-09-08 04:47:22', '2019-09-08 04:47:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
