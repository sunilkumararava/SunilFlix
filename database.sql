-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2020 at 11:03 PM
-- Server version: 5.7.23
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `flix_2_0`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor_table`
--

CREATE TABLE `actor_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `born` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channels_categories`
--

CREATE TABLE `channels_categories` (
  `channel_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channels_countries`
--

CREATE TABLE `channels_countries` (
  `channel_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channel_table`
--

CREATE TABLE `channel_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `tags` longtext COLLATE utf8_unicode_ci,
  `rating` double NOT NULL,
  `classification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL,
  `shares` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `playas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sublabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE `comment_table` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_table`
--

CREATE TABLE `country_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_table`
--

CREATE TABLE `device_table` (
  `id` int(11) NOT NULL,
  `token` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode_table`
--

CREATE TABLE `episode_table` (
  `id` int(11) NOT NULL,
  `season_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `downloadas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_table`
--

CREATE TABLE `fos_user_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` longtext COLLATE utf8_unicode_ci,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user_table`
--

INSERT INTO `fos_user_table` (`id`, `media_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `name`, `type`, `token`, `theme`) VALUES
(1, NULL, 'ADMIN', 'admin', 'ADMIN', 'admin', 1, 'djtfgbufxr4gwk4k0gss4sgs4k48wc4', '$2y$13$djtfgbufxr4gwk4k0gss4ekodAwfJ3IP01OyKvMD.stoxgr6MMa2S', '2020-01-09 00:52:10', 0, 0, NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 0, 'Video Status', 'email', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_table`
--

CREATE TABLE `gallery_table` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre_table`
--

CREATE TABLE `genre_table` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items_table`
--

CREATE TABLE `items_table` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_table`
--

CREATE TABLE `language_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medias_gallerys_table`
--

CREATE TABLE `medias_gallerys_table` (
  `gallery_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_table`
--

CREATE TABLE `media_table` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media_table`
--

INSERT INTO `media_table` (`id`, `titre`, `url`, `type`, `extension`, `date`, `enabled`) VALUES
(1, 'image2681.png', '6a5b9e59809336c7f1bbfd843f08b0f3.png', 'image/png', 'png', '2019-11-19 22:21:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pack_table`
--

CREATE TABLE `pack_table` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posters_genres`
--

CREATE TABLE `posters_genres` (
  `poster_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poster_table`
--

CREATE TABLE `poster_table` (
  `id` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  `posted_id` int(11) DEFAULT NULL,
  `trailer_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `downloadas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tags` longtext COLLATE utf8_unicode_ci,
  `rating` double NOT NULL,
  `imdb` double DEFAULT NULL,
  `classification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `downloads` int(11) NOT NULL,
  `shares` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `comment` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sublabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_table`
--

CREATE TABLE `rate_table` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `review` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_table`
--

CREATE TABLE `role_table` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `season_table`
--

CREATE TABLE `season_table` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings_table`
--

CREATE TABLE `settings_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `appname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appdescription` longtext COLLATE utf8_unicode_ci,
  `googleplay` longtext COLLATE utf8_unicode_ci,
  `privacypolicy` longtext COLLATE utf8_unicode_ci,
  `firebasekey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rewardedadmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banneradmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bannerfacebookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bannertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativeadmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativefacebookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativeitem` int(11) DEFAULT NULL,
  `nativetype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialadmobid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialfacebookid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interstitialclick` int(11) DEFAULT NULL,
  `logo_id` int(11) DEFAULT NULL,
  `favicon_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitedescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitekeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` tinyint(1) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cashaccount` longtext COLLATE utf8_unicode_ci,
  `paypalclientid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypalclientsecret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypalaccount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripeapikey` longtext COLLATE utf8_unicode_ci,
  `manual` tinyint(1) NOT NULL,
  `stripe` tinyint(1) NOT NULL,
  `paypal` tinyint(1) NOT NULL,
  `gpay` tinyint(1) NOT NULL,
  `stripepublickey` longtext COLLATE utf8_unicode_ci,
  `paypalsandbox` tinyint(1) NOT NULL,
  `refundpolicy` longtext COLLATE utf8_unicode_ci,
  `faq` longtext COLLATE utf8_unicode_ci,
  `homebanner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homebannertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moviebanner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moviebannertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seriebanner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seriebannertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channelbanner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channelbannertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `themoviedbkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `themoviedblang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings_table`
--

INSERT INTO `settings_table` (`id`, `media_id`, `appname`, `appdescription`, `googleplay`, `privacypolicy`, `firebasekey`, `rewardedadmobid`, `banneradmobid`, `bannerfacebookid`, `bannertype`, `nativeadmobid`, `nativefacebookid`, `nativeitem`, `nativetype`, `interstitialadmobid`, `interstitialfacebookid`, `interstitialtype`, `interstitialclick`, `logo_id`, `favicon_id`, `title`, `subtitle`, `sitedescription`, `sitekeywords`, `login`, `currency`, `cashaccount`, `paypalclientid`, `paypalclientsecret`, `paypalaccount`, `stripeapikey`, `manual`, `stripe`, `paypal`, `gpay`, `stripepublickey`, `paypalsandbox`, `refundpolicy`, `faq`, `homebanner`, `homebannertype`, `moviebanner`, `moviebannertype`, `seriebanner`, `seriebannertype`, `channelbanner`, `channelbannertype`, `themoviedbkey`, `themoviedblang`, `header`) VALUES
(2, 1, 'Flix App', 'Flix Application Movies App / Tv Seris / Live Channel - Demo app .', 'https://play.google.com/store/apps/details?id=com.virmana.flix', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Your Privacy Policy Content</p>', 'AIzaSyCg77N96veclCZBruelCXqKY5MVJc1nUds', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxxxxxxx', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxxxxxxx', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxxxxxxx', 'BOTH', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxxxxxxx', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxxxxxxx', 4, 'BOTH', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxxxxxxx', 'XXXXXXXXXXXXXXXX_XXXXXXXXXXXXXXXX', 'BOTH', 5, NULL, NULL, 'Flix ', 'Free Movies and Series and channel tv', 'Free Movies and Series and channel tv', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide_table`
--

CREATE TABLE `slide_table` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `source_table`
--

CREATE TABLE `source_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `episode_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `quality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external` tinyint(1) DEFAULT NULL,
  `premium` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_table`
--

CREATE TABLE `subscription_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pack` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infos` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `transaction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtitle_table`
--

CREATE TABLE `subtitle_table` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `episode_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_table`
--

CREATE TABLE `support_table` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `version_table`
--

CREATE TABLE `version_table` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor_table`
--
ALTER TABLE `actor_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D2AD64D2989D9B62` (`slug`),
  ADD KEY `IDX_D2AD64D2EA9FDD75` (`media_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E1AC00FEA9FDD75` (`media_id`);

--
-- Indexes for table `channels_categories`
--
ALTER TABLE `channels_categories`
  ADD PRIMARY KEY (`channel_id`,`category_id`),
  ADD KEY `IDX_5D59DF4872F5A1AA` (`channel_id`),
  ADD KEY `IDX_5D59DF4812469DE2` (`category_id`);

--
-- Indexes for table `channels_countries`
--
ALTER TABLE `channels_countries`
  ADD PRIMARY KEY (`channel_id`,`country_id`),
  ADD KEY `IDX_2AB5073672F5A1AA` (`channel_id`),
  ADD KEY `IDX_2AB50736F92F3E70` (`country_id`);

--
-- Indexes for table `channel_table`
--
ALTER TABLE `channel_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_410887DE989D9B62` (`slug`),
  ADD KEY `IDX_410887DEEA9FDD75` (`media_id`);

--
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5FB317B75BB66C05` (`poster_id`),
  ADD KEY `IDX_5FB317B772F5A1AA` (`channel_id`),
  ADD KEY `IDX_5FB317B7A76ED395` (`user_id`);

--
-- Indexes for table `country_table`
--
ALTER TABLE `country_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_51C99AACEA9FDD75` (`media_id`);

--
-- Indexes for table `device_table`
--
ALTER TABLE `device_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episode_table`
--
ALTER TABLE `episode_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CD237912989D9B62` (`slug`),
  ADD KEY `IDX_CD2379124EC001D1` (`season_id`),
  ADD KEY `IDX_CD237912FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_CD237912EA9FDD75` (`media_id`);

--
-- Indexes for table `fos_user_table`
--
ALTER TABLE `fos_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C3D4D4BD92FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_C3D4D4BDA0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_C3D4D4BDC05FB297` (`confirmation_token`),
  ADD KEY `IDX_C3D4D4BDEA9FDD75` (`media_id`);

--
-- Indexes for table `gallery_table`
--
ALTER TABLE `gallery_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_table`
--
ALTER TABLE `genre_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_table`
--
ALTER TABLE `items_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F2F545FD5BB66C05` (`poster_id`),
  ADD KEY `IDX_F2F545FD72F5A1AA` (`channel_id`),
  ADD KEY `IDX_F2F545FDA76ED395` (`user_id`);

--
-- Indexes for table `language_table`
--
ALTER TABLE `language_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_89718B17EA9FDD75` (`media_id`);

--
-- Indexes for table `medias_gallerys_table`
--
ALTER TABLE `medias_gallerys_table`
  ADD PRIMARY KEY (`gallery_id`,`media_id`),
  ADD KEY `IDX_CC965DCE4E7AF8F` (`gallery_id`),
  ADD KEY `IDX_CC965DCEEA9FDD75` (`media_id`);

--
-- Indexes for table `media_table`
--
ALTER TABLE `media_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pack_table`
--
ALTER TABLE `pack_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posters_genres`
--
ALTER TABLE `posters_genres`
  ADD PRIMARY KEY (`poster_id`,`genre_id`),
  ADD KEY `IDX_888D8635BB66C05` (`poster_id`),
  ADD KEY `IDX_888D8634296D31F` (`genre_id`);

--
-- Indexes for table `poster_table`
--
ALTER TABLE `poster_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AD2483989D9B62` (`slug`),
  ADD KEY `IDX_2AD2483922726E9` (`cover_id`),
  ADD KEY `IDX_2AD24832EC46446` (`posted_id`),
  ADD KEY `IDX_2AD2483B6C04CFD` (`trailer_id`);

--
-- Indexes for table `rate_table`
--
ALTER TABLE `rate_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_666996655BB66C05` (`poster_id`),
  ADD KEY `IDX_6669966572F5A1AA` (`channel_id`),
  ADD KEY `IDX_66699665A76ED395` (`user_id`);

--
-- Indexes for table `role_table`
--
ALTER TABLE `role_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F567695BB66C05` (`poster_id`),
  ADD KEY `IDX_1F5676910DAF24A` (`actor_id`);

--
-- Indexes for table `season_table`
--
ALTER TABLE `season_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E11878995BB66C05` (`poster_id`);

--
-- Indexes for table `settings_table`
--
ALTER TABLE `settings_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4EF0C90FEA9FDD75` (`media_id`),
  ADD KEY `IDX_4EF0C90FF98F144A` (`logo_id`),
  ADD KEY `IDX_4EF0C90FD78119FD` (`favicon_id`);

--
-- Indexes for table `slide_table`
--
ALTER TABLE `slide_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77A059655BB66C05` (`poster_id`),
  ADD KEY `IDX_77A0596572F5A1AA` (`channel_id`),
  ADD KEY `IDX_77A059654296D31F` (`genre_id`),
  ADD KEY `IDX_77A0596512469DE2` (`category_id`),
  ADD KEY `IDX_77A05965EA9FDD75` (`media_id`);

--
-- Indexes for table `source_table`
--
ALTER TABLE `source_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6F215479EA9FDD75` (`media_id`),
  ADD KEY `IDX_6F2154795BB66C05` (`poster_id`),
  ADD KEY `IDX_6F215479362B62A0` (`episode_id`),
  ADD KEY `IDX_6F21547972F5A1AA` (`channel_id`);

--
-- Indexes for table `subscription_table`
--
ALTER TABLE `subscription_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C118E35A76ED395` (`user_id`),
  ADD KEY `IDX_C118E35EA9FDD75` (`media_id`);

--
-- Indexes for table `subtitle_table`
--
ALTER TABLE `subtitle_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_79585A84EA9FDD75` (`media_id`),
  ADD KEY `IDX_79585A845BB66C05` (`poster_id`),
  ADD KEY `IDX_79585A84362B62A0` (`episode_id`),
  ADD KEY `IDX_79585A8482F1BAF4` (`language_id`);

--
-- Indexes for table `support_table`
--
ALTER TABLE `support_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version_table`
--
ALTER TABLE `version_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor_table`
--
ALTER TABLE `actor_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channel_table`
--
ALTER TABLE `channel_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_table`
--
ALTER TABLE `country_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_table`
--
ALTER TABLE `device_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episode_table`
--
ALTER TABLE `episode_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fos_user_table`
--
ALTER TABLE `fos_user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_table`
--
ALTER TABLE `gallery_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre_table`
--
ALTER TABLE `genre_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items_table`
--
ALTER TABLE `items_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_table`
--
ALTER TABLE `language_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_table`
--
ALTER TABLE `media_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pack_table`
--
ALTER TABLE `pack_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poster_table`
--
ALTER TABLE `poster_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_table`
--
ALTER TABLE `rate_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_table`
--
ALTER TABLE `role_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `season_table`
--
ALTER TABLE `season_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_table`
--
ALTER TABLE `settings_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slide_table`
--
ALTER TABLE `slide_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `source_table`
--
ALTER TABLE `source_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_table`
--
ALTER TABLE `subscription_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subtitle_table`
--
ALTER TABLE `subtitle_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_table`
--
ALTER TABLE `support_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `version_table`
--
ALTER TABLE `version_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actor_table`
--
ALTER TABLE `actor_table`
  ADD CONSTRAINT `FK_D2AD64D2EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `category_table`
--
ALTER TABLE `category_table`
  ADD CONSTRAINT `FK_1E1AC00FEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `channels_categories`
--
ALTER TABLE `channels_categories`
  ADD CONSTRAINT `FK_5D59DF4812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5D59DF4872F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `channel_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channels_countries`
--
ALTER TABLE `channels_countries`
  ADD CONSTRAINT `FK_2AB5073672F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `channel_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2AB50736F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_table`
--
ALTER TABLE `channel_table`
  ADD CONSTRAINT `FK_410887DEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD CONSTRAINT `FK_5FB317B75BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`),
  ADD CONSTRAINT `FK_5FB317B772F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `channel_table` (`id`),
  ADD CONSTRAINT `FK_5FB317B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`);

--
-- Constraints for table `country_table`
--
ALTER TABLE `country_table`
  ADD CONSTRAINT `FK_51C99AACEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `episode_table`
--
ALTER TABLE `episode_table`
  ADD CONSTRAINT `FK_CD2379124EC001D1` FOREIGN KEY (`season_id`) REFERENCES `season_table` (`id`),
  ADD CONSTRAINT `FK_CD237912EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`),
  ADD CONSTRAINT `FK_CD237912FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `fos_user_table`
--
ALTER TABLE `fos_user_table`
  ADD CONSTRAINT `FK_C3D4D4BDEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `items_table`
--
ALTER TABLE `items_table`
  ADD CONSTRAINT `FK_F2F545FD5BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`),
  ADD CONSTRAINT `FK_F2F545FD72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `channel_table` (`id`),
  ADD CONSTRAINT `FK_F2F545FDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`);

--
-- Constraints for table `language_table`
--
ALTER TABLE `language_table`
  ADD CONSTRAINT `FK_89718B17EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `medias_gallerys_table`
--
ALTER TABLE `medias_gallerys_table`
  ADD CONSTRAINT `FK_CC965DCE4E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `gallery_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CC965DCEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posters_genres`
--
ALTER TABLE `posters_genres`
  ADD CONSTRAINT `FK_888D8634296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_888D8635BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poster_table`
--
ALTER TABLE `poster_table`
  ADD CONSTRAINT `FK_2AD24832EC46446` FOREIGN KEY (`posted_id`) REFERENCES `media_table` (`id`),
  ADD CONSTRAINT `FK_2AD2483922726E9` FOREIGN KEY (`cover_id`) REFERENCES `media_table` (`id`),
  ADD CONSTRAINT `FK_2AD2483B6C04CFD` FOREIGN KEY (`trailer_id`) REFERENCES `source_table` (`id`);

--
-- Constraints for table `rate_table`
--
ALTER TABLE `rate_table`
  ADD CONSTRAINT `FK_666996655BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`),
  ADD CONSTRAINT `FK_6669966572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `channel_table` (`id`),
  ADD CONSTRAINT `FK_66699665A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`);

--
-- Constraints for table `role_table`
--
ALTER TABLE `role_table`
  ADD CONSTRAINT `FK_1F5676910DAF24A` FOREIGN KEY (`actor_id`) REFERENCES `actor_table` (`id`),
  ADD CONSTRAINT `FK_1F567695BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`);

--
-- Constraints for table `season_table`
--
ALTER TABLE `season_table`
  ADD CONSTRAINT `FK_E11878995BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`);

--
-- Constraints for table `settings_table`
--
ALTER TABLE `settings_table`
  ADD CONSTRAINT `FK_4EF0C90FD78119FD` FOREIGN KEY (`favicon_id`) REFERENCES `media_table` (`id`),
  ADD CONSTRAINT `FK_4EF0C90FEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`),
  ADD CONSTRAINT `FK_4EF0C90FF98F144A` FOREIGN KEY (`logo_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `slide_table`
--
ALTER TABLE `slide_table`
  ADD CONSTRAINT `FK_77A0596512469DE2` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`id`),
  ADD CONSTRAINT `FK_77A059654296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre_table` (`id`),
  ADD CONSTRAINT `FK_77A059655BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`),
  ADD CONSTRAINT `FK_77A0596572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `channel_table` (`id`),
  ADD CONSTRAINT `FK_77A05965EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `source_table`
--
ALTER TABLE `source_table`
  ADD CONSTRAINT `FK_6F215479362B62A0` FOREIGN KEY (`episode_id`) REFERENCES `episode_table` (`id`),
  ADD CONSTRAINT `FK_6F2154795BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`),
  ADD CONSTRAINT `FK_6F21547972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `channel_table` (`id`),
  ADD CONSTRAINT `FK_6F215479EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `subscription_table`
--
ALTER TABLE `subscription_table`
  ADD CONSTRAINT `FK_C118E35A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_table` (`id`),
  ADD CONSTRAINT `FK_C118E35EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);

--
-- Constraints for table `subtitle_table`
--
ALTER TABLE `subtitle_table`
  ADD CONSTRAINT `FK_79585A84362B62A0` FOREIGN KEY (`episode_id`) REFERENCES `episode_table` (`id`),
  ADD CONSTRAINT `FK_79585A845BB66C05` FOREIGN KEY (`poster_id`) REFERENCES `poster_table` (`id`),
  ADD CONSTRAINT `FK_79585A8482F1BAF4` FOREIGN KEY (`language_id`) REFERENCES `language_table` (`id`),
  ADD CONSTRAINT `FK_79585A84EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media_table` (`id`);
