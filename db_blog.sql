-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 11:03 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_12_093906_create_admin_table', 1),
('2016_08_18_105904_create_category_table', 2),
('2016_08_22_063631_create_news_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `is_fetured` tinyint(4) NOT NULL,
  `news_type` tinyint(4) NOT NULL,
  `news_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `deletion_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `is_fetured`, `news_type`, `news_title`, `author_name`, `short_description`, `long_description`, `image`, `publication_status`, `deletion_status`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 2, 'hello world', 'shahidul mostafa', 'fsd', 'sdf', 'news_image/4zxPdUfsOca4jMLzVqmN.jpg', 1, 0, NULL, NULL),
(2, 3, 0, 0, 'fdsf', 'shahidul mostafa', 'sdfd', 'fdsf', 'news_image/Z2FqCLy2chtGS7GoxMCW.jpg', 1, 0, NULL, NULL),
(3, 3, 0, 0, 'hello world', 'shahidul mostafa', 'c', 'ccc', 'news_image/F1MIjYNlPlOlfg77qwz1.jpg', 1, 0, NULL, NULL),
(7, 2, 1, 0, 'জাতীয় কবি কাজী নজরুল ইসলাম স্মরণে', 'shahidul mostafa', 'জাতীয় কবি কাজী নজরুল ইসলাম স্মরণে গান করলেন ঢাকা বিশ্ববিদ্যালয়ের সংগীত \r\nবিভাগের ৪০ জন শিক্ষার্থী। এবারই প্রথম তাঁদের অংশগ্রহণে এ ধরনের একটি \r\nঅনুষ্ঠানের আয়োজন করল চ্যানেল আই। কবি কাজী নজরুল ইসলামের \r\nমৃত্যুবার্ষিকীতে ‘তোরা সব জয়ধ্বনি কর’ অনুষ্ঠানটি দেখানো হবে শনিবার রাত \r\nসাড়ে ১১টায়।', 'জাতীয় কবি কাজী নজরুল ইসলাম স্মরণে গান করলেন ঢাকা বিশ্ববিদ্যালয়ের সংগীত \r\nবিভাগের ৪০ জন শিক্ষার্থী। এবারই প্রথম তাঁদের অংশগ্রহণে এ ধরনের একটি \r\nঅনুষ্ঠানের আয়োজন করল চ্যানেল আই। কবি কাজী নজরুল ইসলামের \r\nমৃত্যুবার্ষিকীতে ‘তোরা সব জয়ধ্বনি কর’ অনুষ্ঠানটি দেখানো হবে শনিবার রাত \r\nসাড়ে ১১টায়।<br>ঢাবির বাংলা বিভাগ, অপরাজেয় বাংলাসহ বিভিন্ন জায়গায় \r\nঅনুষ্ঠানটির দৃশ্য ধারণ করা হয়েছে। বিশ্ববিদ্যালয়ের সংগীত বিভাগের প্রধান \r\nলীনা তাপসী খান এ অনুষ্ঠানটি উপস্থাপনা করেছেন। অনুষ্ঠানের টাইটেল গানটিসহ \r\nমোট তিনটি গান গেয়েছেন ঢাবির সংগীত বিভাগের ৪০ শিক্ষার্থী। এ ছাড়া নজরুলের\r\n ‘বিদ্রোহী’ কবিতা থেকে পাঠ করেছেন বিশ্ববিদ্যালয়ের উপাচার্য আ আ ম স \r\nআরেফিন সিদ্দিক। দুটি নজরুলসংগীত গেয়েছেন লীনা তাপসী খান ও সুস্মিতা আনিস। <br>চ্যানেল আইয়ের বিশেষ আয়োজন ‘তোরা সব জয়ধ্বনি কর’-এর পরিকল্পনা ও পরিচালনা করেছেন রাজু আলীম।', 'news_image/DOjQtaNDw1B8KnjGvK6c.jpg', 0, 0, NULL, NULL),
(8, 8, 1, 0, '১৫ আগস্ট যেভাবে সময় কাটে শেখ হাসিনার', 'shahidul mostafa', 'সাধারণত দিন যতই পার হয়, শোক ততই ম্রিয়মান হয়। কিন্তু এক চল্লিশ বছর পরও \r\nবাবা হারানোর শোক এতটুকু কমেনি বঙ্গবন্ধু কন্যা, আওয়ামী লীগ সভাপতি ও \r\nপ্রধানমন্ত্রী শেখ হাসিনার। ১৯৭৫ সালের ১৫ আগস্ট বাবা, মা ও ভাই হারানোর \r\nশোক জগদ্দল পাথরের মতো আজও চেপে আছে তার বুকে। আজও এ দিনটি তাকে ‘ইমোশনাল’ \r\nকরে তোলে। প্রতিবার ১৫ আগস্ট এলেই দলের কেন্দ্রীয় নেতারা…', 'সাধারণত দিন যতই পার হয়, শোক ততই ম্রিয়মান হয়। কিন্তু এক চল্লিশ বছর পরও \r\nবাবা হারানোর শোক এতটুকু কমেনি বঙ্গবন্ধু কন্যা, আওয়ামী লীগ সভাপতি ও \r\nপ্রধানমন্ত্রী শেখ হাসিনার। ১৯৭৫ সালের ১৫ আগস্ট বাবা, মা ও ভাই হারানোর \r\nশোক জগদ্দল পাথরের মতো আজও চেপে আছে তার বুকে। আজও এ দিনটি তাকে ‘ইমোশনাল’ \r\nকরে তোলে। প্রতিবার ১৫ আগস্ট এলেই দলের কেন্দ্রীয় নেতারা…', 'news_image/ebSx9RSFrlk88FLARRb8.jpg', 1, 0, NULL, NULL),
(10, 8, 1, 2, '৫ জুলাই বাসাটি ভাড়া নেয় জঙ্গিরা', 'shahidul mostafa', 'নারায়ণগঞ্জের পাইকপাড়ার বাসাটি চলতি বছরের ৫ জুলাই জঙ্গিরা ভাড়া নেয়। ওই\r\n বাসায় গ্রেনেড, অস্ত্র ও গুলি মজুত করে তারা। ঢাকা মহানগর পুলিশের \r\nঅতিরিক্ত উপকমিশনার ছানোয়ার হোসেন প্রথম আলোকে একথা বলেন।<div style=\"position: absolute; left: 170px; top: 820px;\" class=\"fb-quote fb_iframe_widget\"><span style=\"vertical-align: bottom; width: 166px; height: 47px;\"></span></div>\r\n<p>পুলিশ জানিয়েছে, জঙ্গিদের কাছে মোট ছয়টি গ্রেনেড ছিল। এর মধ্যে দুটি \r\nগ্রেনেড তারা পুলিশকে লক্ষ করে ছুড়ে মারে। দুটি গ্রেনেড পুলিশ নিষ্ক্রিয় \r\nকরেছে। আর দুটি গ্রেনেড পাশের একটি টিনের চালের ওপর পড়ে থাকতে দেখা গেছে।</p>', 'নারায়ণগঞ্জের পাইকপাড়ার বাসাটি চলতি বছরের ৫ জুলাই জঙ্গিরা ভাড়া নেয়। ওই\r\n বাসায় গ্রেনেড, অস্ত্র ও গুলি মজুত করে তারা। ঢাকা মহানগর পুলিশের \r\nঅতিরিক্ত উপকমিশনার ছানোয়ার হোসেন প্রথম আলোকে একথা বলেন।<div style=\"position: absolute; left: 373.5px; top: 820px;\" class=\"fb-quote fb_iframe_widget\"><span style=\"vertical-align: bottom; width: 166px; height: 47px;\"></span></div>\r\n<p>পুলিশ জানিয়েছে, জঙ্গিদের কাছে মোট ছয়টি গ্রেনেড ছিল। এর মধ্যে দুটি \r\nগ্রেনেড তারা পুলিশকে লক্ষ করে ছুড়ে মারে। দুটি গ্রেনেড পুলিশ নিষ্ক্রিয় \r\nকরেছে। আর দুটি গ্রেনেড পাশের একটি টিনের চালের ওপর পড়ে থাকতে দেখা গেছে।</p>\r\n\r\n<p>ছানোয়ার হোসেন বলেন, সকাল সাড়ে ছয়টার দিকে পুলিশ ঘটনাস্থলে পৌঁছে বাড়িটি\r\n ঘিরে ফেলে। তামিম চৌধুরীর কাছে গ্রেনেড ছিল। বাকি দুজনের কাছে অস্ত্র ছিল।\r\n সেগুলো কল্যাণপুরে জঙ্গিদের কাছ থেকে উদ্ধার করা ও গুলশানে হামলায় ব্যবহৃত\r\n অস্ত্রের মতো। এগুলো সীমান্ত পার হয়ে অবৈধ পথে আসা অস্ত্রের মতো দেখতে।</p>\r\n<p>অতিরিক্ত উপকমিশনার আরও বলেন, সকাল সাড়ে ছয়টার দিকে পুলিশ বাড়িটি ঘিরে \r\nফেলে। এরপর অভিযান চালানো হবে বলে বাড়িওয়ালাকে জানানো হয়। জঙ্গিদের \r\nআত্মসমর্পণ করার জন্য আধ ঘণ্টার মতো সময়ও দেওয়া হয়েছিল। কিন্তু তাঁরা সেই \r\nসুযোগ নেননি। এরপরই পুলিশ অভিযান চালায়।</p>\r\n<p>পাইকপাড়ার বাড়িটি তিনতলা। জঙ্গিরা তিনতলার ফ্ল্যাটটি ভাড়া নেয়। এই বাড়ির\r\n আশপাশে টিনের কয়েকটি বাড়ি রয়েছে। বাড়িটির মালিকের নাম নুরুদ্দীন দেওয়ান। \r\nমালিকের চাচাতো ভাই সালাউদ্দিন প্রথম আলোকে বলেন, তাঁর ভাই জাপানে থাকতেন। \r\nদেশে ফিরে এই বাড়িটি করেছেন। তিনি বলেন, তিনতলার ভাড়াটিয়াদের তিনি কাউকে \r\nচিনতেন না।</p>\r\n\r\n<p>পুলিশের সহকারী মহাপরিদর্শক মনিরুজ্জামান বলেছেন, জঙ্গিরা তাদের সঙ্গে \r\nথাকা ল্যাপটপ ও কিছু কাগজপত্র পুড়িয়েছে। তিনি বলেন, প্রথমে বাড়িওয়ালাকে \r\nদিয়ে জঙ্গিদের আত্মসমর্পণ করতে বলা হয়। এরপর হ্যান্ডমাইকে একই কথা বলা হয়। \r\nকিন্তু তাঁরা না শোনায় অভিযান চালানো হয়।</p>\r\n<p>পুলিশের মহাপরিদর্শক (আইজিপি) এ কে এম শহীদুল হক প্রথম আলোকে বলেছেন, \r\nনারায়ণগঞ্জ শহরের পাইকপাড়ায় আজ শনিবার চালানো এই অভিযানে গুলশানে জঙ্গি \r\nহামলার অন্যতম হোতা তামিম চৌধুরীসহ তিনজন জঙ্গি নিহত হয়েছেন। সকালে \r\nপাইকপাড়ার বড় কবরস্থান এলাকার একটি তিনতলা ভবন ঘিরে অভিযান শুরু করে ঢাকা \r\nমহানগর পুলিশের (ডিএমপি) কাউন্টার টেররিজম অ্যান্ড ট্রান্সন্যাশনাল ইউনিট। \r\nতাদের সঙ্গে যোগ দেয় সোয়াট। সহযোগিতা করে র‍্যাব-১১ ও নারায়ণগঞ্জ জেলা \r\nপুলিশ।</p>\r\n<p>গত ১ জুলাই রাতে গুলশান-২-এর ৭৯ নম্বর সড়কে হলি আর্টিজান বেকারি \r\nরেস্তোরাঁয় হামলা চালায় পাঁচ জঙ্গি। তাঁরা দেশি-বিদেশি ২০ নাগরিককে \r\nনৃশংসভাবে হত্যা করে। ওই রাতে অভিযান চালাতে গিয়ে জঙ্গিদের বোমায় নিহত হন \r\nপুলিশের দুজন কর্মকর্তা। পরদিন সকালে সেনা অভিযানের মধ্য দিয়ে জঙ্গিদের ১২ \r\nঘণ্টার জিম্মি সংকটের অবসান হয়। অভিযানে পাঁচ জঙ্গিসহ ছয়জন নিহত হন।</p>', 'news_image/kdPBIuo1XEeNsdXa5j7J.jpg', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `admin_name`, `admin_email`, `admin_password`, `created_at`, `updated_at`) VALUES
(1, 'shahidul mostafa', 'shahidulmostafa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletion_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`, `deletion_status`) VALUES
(2, 'বিনোদন', '<br>', 1, NULL, NULL, 0),
(8, 'জাতীয়', '<br>', 1, NULL, NULL, 0),
(9, 'রাজনীতি', '<br>', 0, NULL, NULL, 0),
(10, 'আন্তর্জাতিক', '<br>', 0, NULL, NULL, 0),
(11, 'Utshob Fashion 2018', 'Utshob Fashion 2018 Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018Utshob Fashion 2018<br>', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
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
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
