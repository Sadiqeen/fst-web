-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2019 at 04:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fst_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `title`, `description`, `bg_image`, `front_image`, `back_image`, `created_at`, `updated_at`, `link`) VALUES
(1, 'เทคโนโลยีโลกาภิวัฒน์เป้าหมายวิสัยทัศน์สร้างสรรค์บริหาร พัฒนาระดับสากลลงทุน', 'มุ่งมั่นบูรณาการสนธิกำลังกระแสระดับสากล สตาร์ทอัพนวัตกรรมผสมผสานพัฒนายุคใหม่บูรณาการ จัดการจิตวิญญาณผสมผสานยุคใหม่ล้ำสมัยประชารัฐ คุณธรรมกระแสยุคใหม่พัฒนาล้ำสมัยจริยธรรมนวัตกรรมโลกาภิวัฒน์วิสาหกิจเป้าหมายพลเมืองพัฒนาอาเซียน ระดับสากลโลกาภิวัฒน์ล้ำสมัยจัดการ', 'carousels\\October2019\\Jl2djpqAqkvpImwDMMSp.jpg', 'carousels\\October2019\\XYzG6vEbqGHHkNH2wXEl.jpg', 'carousels\\October2019\\eytxyYMBookdJCtPcVHC.jpg', '2019-10-17 05:25:36', '2019-10-17 05:25:36', NULL),
(2, 'มะกัน แฟ็กซ์จิตพิสัยยูวี ใช้งานตนเองจีดีพียอมรับคอมเมนต์ เปโซลีเมอร์ ฟลุตโจ๋แทคติค แฟ้บคาปูชิโน', 'โปรเจ็กต์โมเต็ล ปัจฉิมนิเทศวาฟเฟิลอุปัทวเหตุ เดโม นายพรานมอคค่าแฟ็กซ์รีโมทเดอะ สจ๊วตสะบึมส์สกายโบกี้แฟ็กซ์ นอร์ทกู๋ราชานุญาตกัมมันตะ เวณิกาสติ๊กเกอร์ ถ่ายทำฉลุยแคมป์ออกแบบไพลิน ซากุระอาร์พีจี ดีพาร์ทเมนต์ เหมยฮากกาคันธาระรีดไถ วิดีโอบาลานซ์วาริชศาสตร์เลดี้เวเฟอร์ เชอร์รี่คอร์รัปชันบ็อกซ์ฮอตดอกจึ๊ก สมาพันธ์เพียว ห่วยผิดพลาดน้องใหม่เปเปอร์ สเตชั่นงั้นสตรอเบอรีเป่ายิงฉุบสหัชญาณ', 'carousels\\October2019\\BhRzBtYwvyxcTK4y3XtX.jpg', 'carousels\\October2019\\32g1nETl6biPljvGtwhA.jpg', 'carousels\\October2019\\8edvLsE808gJL9wlWs9Y.jpg', '2019-10-17 06:00:30', '2019-10-17 06:00:30', 'http://localhost:8000/');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 2, 'Student Activities', 'student-activities', '2019-10-17 07:23:29', '2019-10-17 07:24:22'),
(4, NULL, 1, 'Faculties\'s news', 'faculties-s-news', '2019-10-17 07:24:07', '2019-10-17 07:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `email`, `tel`, `content`, `created_at`, `updated_at`) VALUES
(1, 'test', 'admin@fatoni.ac.th', '0800000000', 'dsadadafafd', '2019-10-27 08:29:08', '2019-10-27 08:29:08'),
(2, 'เทคโนโลยีโลกาภิวัฒน์เป้าหมายวิสัยทัศน์สร้างสรรค์บริหาร พัฒนาระดับสากลลงทุน', 'admin@fatoni.ac.th', '0850804110', 'czxcxzcxzcxzcxzczxc', '2019-10-27 08:31:57', '2019-10-27 08:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `body`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'สาขาวิชาเทคโนโลยีสารสนเทศ', '<h4 class=\"visible visible-first\" style=\"text-align: left;\">ชื่อหลักสูตร</h4>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: 12pt;\"><strong>ภาษาไทย</strong></span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong>:</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\">วิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ (หลักสูตรภาษาอังกฤษ)</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-size: 12pt;\"><strong>ภาษาอังกฤษ</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\"><strong>&nbsp;:</strong>&nbsp;</span></td>\r\n<td><span style=\"font-size: 12pt;\">achelor of Science Program in Information Technology (English Program)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h4 class=\"visible visible-first\" style=\"text-align: left;\">ชื่อปริญญา</h4>\r\n<table style=\"height: 76px;\">\r\n<tbody>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"text-align: left; height: 19px; width: 163.533px;\"><span style=\"font-size: 12pt;\"><strong>ชื่อเต็ม (ภาษาไทย)</strong>&nbsp;</span></td>\r\n<td style=\"height: 19px; width: 12.0667px;\"><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;</span></td>\r\n<td style=\"height: 19px; width: 367.4px;\"><span style=\"font-size: 12pt;\">วิทยาศาสตรบัณฑิต (เทคโนโลยีสารสนเทศ)</span></td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"text-align: left; height: 19px; width: 163.533px;\"><span style=\"font-size: 12pt;\"><strong>ชื่อย่อ (ภาษาไทย)</strong></span></td>\r\n<td style=\"height: 19px; width: 12.0667px;\"><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;</span></td>\r\n<td style=\"height: 19px; width: 367.4px;\"><span style=\"font-size: 12pt;\"> วท.บ. (เทคโนโลยีสารสนเทศ)</span></td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"height: 19px; width: 163.533px;\"><span style=\"font-size: 12pt;\"><strong>ชื่อเต็ม (ภาษาอังกฤษ)</strong></span></td>\r\n<td style=\"height: 19px; width: 12.0667px;\"><span style=\"font-size: 12pt;\"><strong>:</strong></span></td>\r\n<td style=\"height: 19px; width: 367.4px;\"><span style=\"font-size: 12pt;\">Bachelor of Science (Information Technology)</span></td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"height: 19px; width: 163.533px;\"><span style=\"font-size: 12pt;\"><strong>ชื่อย่อ (ภาษาอังกฤษ)</strong></span></td>\r\n<td style=\"height: 19px; width: 12.0667px;\"><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;</span></td>\r\n<td style=\"height: 19px; width: 367.4px;\"><span style=\"font-size: 12pt;\">B.Sc. (Information Technology)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'information-technology', 'คณะวิทยาศาสตร์และเทคโนโลยี ชีคกอซิม บินมุหัมมัด อาล-ษานีย์ มหาวิทยาลัยฟาฏอนี และเป็นคณะที่จัดตั้งขึ้นเพื่อร่วมอุดมการณ์ในการพัฒนาตามปรัชญาของมหาวิทยาลัยซึ่งมหาวิทยาลัยฟาฏอนีนับเป็นสถาบันอุดมศึกษาเอกชนอิสลามแห่งแรกในประเทศไทย โดยสถาปนาขึ้นเมื่อปี พ.ศ.2541 ซึ่งมีเจตนาอันแน่วแน่ในการจัดการเรียนการสอน การวิจัย การบริการวิชาการแก่สังคม', 'วิทยาศาสตรบัณฑิต,สาขาวิชาเทคโนโลยีสารสนเทศ Information Technology,หลักสูตรวิทยาศาสตรบัณฑิต', 'ACTIVE', '2019-10-24 09:27:04', '2019-10-24 09:27:04'),
(2, 'สาขาวิชาวิจัยและพัฒนาผลิตภัณฑ์ฮาลาล', '<div class=\"col-md-12 text-center\">&nbsp;</div>\r\n<h4 class=\"visible visible-first\" style=\"text-align: left;\">ชื่อหลักสูตร</h4>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: 12pt;\"><strong>ภาษาไทย</strong></span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong>:</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\">หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิจัยและพัฒนาผลิตภัณฑ์ฮาลาล</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-size: 12pt;\"><strong>ภาษาอังกฤษ</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\"><strong>&nbsp;:</strong>&nbsp;</span></td>\r\n<td><span style=\"font-size: 12pt;\">Bachelor of Science Program in Research and Development of Halal Product</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h4 class=\"visible visible-first\" style=\"text-align: left;\">ชื่อปริญญา</h4>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><strong>ชื่อเต็ม (ภาษาไทย)</strong>&nbsp;</span></td>\r\n<td><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;</span></td>\r\n<td><span style=\"font-size: 12pt;\">วิทยาศาสตรบัณฑิต (วิจัยและพัฒนาผลิตภัณฑ์ฮาลาล</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><strong>ชื่อย่อ (ภาษาไทย)</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;</span></td>\r\n<td><span style=\"font-size: 12pt;\">วท.บ. (วิจัยและพัฒนาผลิตภัณฑ์ฮาลาล)</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-size: 12pt;\"><strong>ชื่อเต็ม (ภาษาอังกฤษ)</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\"><strong>:</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\">Bachelor of Science (Research and Development of Halal Product)</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-size: 12pt;\"><strong>ชื่อย่อ (ภาษาอังกฤษ)</strong></span></td>\r\n<td><span style=\"font-size: 12pt;\"><strong>:</strong>&nbsp;</span></td>\r\n<td><span style=\"font-size: 12pt;\">B.Sc. (Research and Development of Halal Product)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'research-and-development-halal-products', 'คณะวิทยาศาสตร์และเทคโนโลยี ชีคกอซิม บินมุหัมมัด อาล-ษานีย์ มหาวิทยาลัยฟาฏอนี และเป็นคณะที่จัดตั้งขึ้นเพื่อร่วมอุดมการณ์ในการพัฒนาตามปรัชญาของมหาวิทยาลัยซึ่งมหาวิทยาลัยฟาฏอนีนับเป็นสถาบันอุดมศึกษาเอกชนอิสลามแห่งแรกในประเทศไทย โดยสถาปนาขึ้นเมื่อปี พ.ศ.2541 ซึ่งมีเจตนาอันแน่วแน่ในการจัดการเรียนการสอน การวิจัย การบริการวิชาการแก่สังคม', 'วิทยาศาสตรบัณฑิต,วิจัยและพัฒนาผลิตภัณฑ์ฮาลาล,Research and Development,หลักสูตรวิทยาศาสตรบัณฑิต', 'ACTIVE', '2019-10-24 09:28:18', '2019-10-24 09:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 0, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 0, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'bg_image', 'image', 'Bg Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'front_image', 'image', 'Front Image', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'back_image', 'image', 'Back Image', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(64, 7, 'link', 'text', 'Link', 0, 0, 1, 1, 1, 1, '{}', 7),
(65, 5, 'post_hasone_category_relationship', 'relationship', 'categories', 0, 1, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"carousels\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(67, 8, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(68, 8, 'label', 'text', 'Label', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 8, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(71, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(72, 9, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(73, 9, 'label', 'text', 'Label', 0, 1, 1, 1, 1, 1, '{}', 2),
(74, 9, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 3),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(91, 12, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(93, 12, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 3),
(94, 12, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:courses,slug\"}}', 4),
(95, 12, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '{}', 5),
(96, 12, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '{}', 6),
(97, 12, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 7),
(98, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(99, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(100, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 13, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(102, 13, 'title', 'text', 'Title', 0, 1, 1, 0, 0, 0, '{}', 2),
(103, 13, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 0, '{}', 3),
(104, 13, 'tel', 'text', 'Tel', 0, 1, 1, 0, 0, 0, '{}', 4),
(105, 13, 'content', 'text', 'Content', 0, 0, 1, 0, 0, 0, '{}', 5),
(106, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(107, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '\\App\\Http\\Controllers\\StdController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-10-17 05:13:49', '2019-10-21 10:30:10'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(7, 'carousels', 'carousels', 'Carousel', 'Carousels', 'voyager-plus', 'App\\Carousel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-17 05:19:43', '2019-10-24 09:19:07'),
(8, 'social_links', 'social-links', 'Social Links', 'Social Links', 'voyager-tag', 'App\\SocialLink', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-22 09:04:52', '2019-10-22 09:04:52'),
(9, 'other_links', 'other-links', 'Other Links', 'Other Links', 'voyager-world', 'App\\OtherLink', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-22 09:08:02', '2019-10-22 09:08:02'),
(12, 'courses', 'courses', 'Course', 'Courses', 'voyager-book', 'App\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-24 09:21:28', '2019-10-24 09:29:01'),
(13, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-telephone', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-27 07:46:56', '2019-10-27 08:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(2, 'user', '2019-10-27 08:34:34', '2019-10-27 08:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-17 05:13:48', '2019-10-17 05:13:48', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-10-17 05:13:48', '2019-10-17 05:24:36', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-10-17 05:13:48', '2019-10-17 05:13:48', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-10-17 05:13:48', '2019-10-17 05:13:48', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2019-10-17 05:13:48', '2019-10-27 07:50:19', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-10-17 05:13:48', '2019-10-17 05:24:36', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-10-17 05:13:48', '2019-10-17 05:24:36', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-10-17 05:13:48', '2019-10-17 05:24:36', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-10-17 05:13:48', '2019-10-17 05:24:36', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2019-10-17 05:13:48', '2019-10-27 07:50:19', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2019-10-17 05:13:49', '2019-10-27 07:50:19', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-10-17 05:13:49', '2019-10-17 05:13:49', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 9, '2019-10-17 05:13:50', '2019-10-27 07:51:40', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-10-17 05:13:50', '2019-10-17 05:24:36', 'voyager.hooks', NULL),
(15, 1, 'Carousels', '', '_self', 'voyager-plus', '#000000', NULL, 5, '2019-10-17 05:19:44', '2019-10-22 09:13:50', 'voyager.carousels.index', 'null'),
(16, 1, 'Social Links', '', '_self', 'voyager-tag', NULL, 22, 1, '2019-10-22 09:04:52', '2019-10-27 07:50:16', 'voyager.social-links.index', NULL),
(17, 1, 'Other Links', '', '_self', 'voyager-world', NULL, 22, 2, '2019-10-22 09:08:02', '2019-10-27 07:50:19', 'voyager.other-links.index', NULL),
(20, 1, 'Courses', '', '_self', 'voyager-book', NULL, NULL, 7, '2019-10-24 09:21:28', '2019-10-24 09:25:00', 'voyager.courses.index', NULL),
(21, 1, 'Contacts', '', '_self', 'voyager-telephone', '#000000', NULL, 8, '2019-10-27 07:46:57', '2019-10-27 07:49:30', 'voyager.contacts.index', 'null'),
(22, 1, 'Footer', '', '_self', 'voyager-external', '#000000', NULL, 10, '2019-10-27 07:50:00', '2019-10-27 07:51:40', NULL, '');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `other_links`
--

CREATE TABLE `other_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_links`
--

INSERT INTO `other_links` (`id`, `label`, `url`, `created_at`, `updated_at`) VALUES
(1, 'คณะศิลปศาสตร์และสังคมศาสตร์', 'http://www.ftu.ac.th', '2019-10-22 09:27:25', '2019-10-22 09:30:15'),
(2, 'คณะศึกษาศาสตร์', 'http://www.ftu.ac.th', '2019-10-22 09:27:42', '2019-10-22 09:30:02'),
(3, 'คณะอิสลามศึกษาและนิติศาสตร์', 'http://www.ftu.ac.th', '2019-10-22 09:27:56', '2019-10-22 09:29:48'),
(4, 'สถาบันภาษานานาชาติ', 'http://www.ftu.ac.th', '2019-10-22 09:28:14', '2019-10-22 09:29:35'),
(5, 'มหาวิทยาลัยฟาฏอนี', 'http://www.ftu.ac.th', '2019-10-22 09:28:35', '2019-10-22 09:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'ประวัติคณะ', 'มหาวิทยาฟาฏอนี เป็น สถาบันอุดมศึกษาเอกชนอิสลามแห่งแรกใน ประเทศไทย โดยสถาปนาขึ้นเมื่อปี พ.ศ.2541 ซึ่งมีเจตนาอันแน่วแน่ในการจัดการเรียนการสอน   การวิจัย การบริการวิชาการแก่สังคม และการทำนุบำรุงศิลปวัฒนธรรมที่สอดคล้องกับหลักการอิสลาม โดยทำการผลิตบัณฑิตให้มีความรอบรู้ ศรัทธา และปฏิบัติตามอัล-กุรอานและสุนนะฮฺ มีคุณธรรม จริยธรรมที่สูงส่ง มีวิสัยทัศน์ที่กว้างไกล และเป็นแบบอย่างที่ดีในการพัฒนาคุณภาพชีวิตทั้งของตนเอง ครอบครัว และสังคม โดยผ่านกระบวนการศึกษาค้นคว้าหาความรู้ในสาขาวิชาต่าง ๆ ที่วางอยู่บนหลักสมดุล ครอบคลุม ต่อเนื่อง และบูรณากด้วยเหตุนี้ ในการประชุมสภาวิทยาลัยมหาวิทยาฟาฏอนี วันที่  27  กันยายน พ.ศ.2546 ได้มีมติอนุมัติหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ (หลักสูตรนานาชาติ) จึงได้จัดตั้ง “คณะวิทยาศาสตร์และเทคโนโลยีฯ ชีคกอซิม บิน มุหัมมัด อาล-ษานีย์” เพื่อจัดการเรียนการสอน ศึกษาค้นคว้า วิจัย ทางด้านเทคโนโลยีสารสนเทศ และวิทยาศาสตร์สาขาอื่น ๆ ในแขนงวิทยาศาสตร์บริสุทธิ์ วิทยาศาสตร์บูรณาการ และวิทยาศาสตร์ประยุกต์ โดยต่อยอดภูมิปัญญาเดิมและสร้างความรู้ใหม่เพื่อพัฒนาการเรียนการสอน วิจัยทางวิทยาศาสตร์ และอื่น ๆ ที่มีความสอดคล้องกับหลักการอิสลาม', '<p>มหาวิทยาฟาฏอนี เป็น สถาบันอุดมศึกษาเอกชนอิสลามแห่งแรกใน ประเทศไทย โดยสถาปนาขึ้นเมื่อปี พ.ศ.2541 ซึ่งมีเจตนาอันแน่วแน่ในการจัดการเรียนการสอน&nbsp;&nbsp; การวิจัย การบริการวิชาการแก่สังคม และการทำนุบำรุงศิลปวัฒนธรรมที่สอดคล้องกับหลักการอิสลาม โดยทำการผลิตบัณฑิตให้มีความรอบรู้ ศรัทธา และปฏิบัติตามอัล-กุรอานและสุนนะฮฺ มีคุณธรรม จริยธรรมที่สูงส่ง มีวิสัยทัศน์ที่กว้างไกล และเป็นแบบอย่างที่ดีในการพัฒนาคุณภาพชีวิตทั้งของตนเอง ครอบครัว และสังคม โดยผ่านกระบวนการศึกษาค้นคว้าหาความรู้ในสาขาวิชาต่าง ๆ ที่วางอยู่บนหลักสมดุล ครอบคลุม ต่อเนื่อง และบูรณากด้วยเหตุนี้ ในการประชุมสภาวิทยาลัยมหาวิทยาฟาฏอนี วันที่&nbsp; 27&nbsp; กันยายน พ.ศ.2546 ได้มีมติอนุมัติหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ (หลักสูตรนานาชาติ) จึงได้จัดตั้ง &ldquo;คณะวิทยาศาสตร์และเทคโนโลยีฯ ชีคกอซิม บิน มุหัมมัด อาล-ษานีย์&rdquo; เพื่อจัดการเรียนการสอน ศึกษาค้นคว้า วิจัย ทางด้านเทคโนโลยีสารสนเทศ และวิทยาศาสตร์สาขาอื่น ๆ ในแขนงวิทยาศาสตร์บริสุทธิ์ วิทยาศาสตร์บูรณาการ และวิทยาศาสตร์ประยุกต์ โดยต่อยอดภูมิปัญญาเดิมและสร้างความรู้ใหม่เพื่อพัฒนาการเรียนการสอน วิจัยทางวิทยาศาสตร์ และอื่น ๆ ที่มีความสอดคล้องกับหลักการอิสลาม</p>\r\n<p>ในช่วงแรกได้จัดตั้งสาขาวิชาเทคโนโลยีสารสนเทศ (หลักสูตรนานาชาติ)เป็นสาขาวิชาแรกและสาขาวิชาเดียว&nbsp; และในปีการศึกษา&nbsp; พ.ศ.2547 เป็นปีแรกที่ได้เปิดสอนหลักสูตรวิทยาศาสตรบัณฑิต (เทคโนโลยีสารสนเทศ) หลักสูตรนานาชาติ ต่อมาวันที่&nbsp; 5&nbsp; กุมภาพันธ์&nbsp; พ.ศ.2549 ได้จัดตั้งสาขาวิชาวิทยาศาสตร์ ขึ้นเป็นสาขาวิชาที่สองของคณะวิทยาศาสตร์และเทคโนโลยีฯ&nbsp; ในปีการศึกษา&nbsp; พ.ศ.2549 เป็นปีแรกที่ได้เปิดสอนหลักสูตรวิทยาศาสตรบัณฑิต (วิทยาศาสตร์) และ หลักสูตรเทคโนโลยีบัณฑิต (วิทยาการคอมพิวเตอร์)หลักสูตรปรับปรุง ในปีเดียวกัน&nbsp; ปัจจุบัน&nbsp;&nbsp; คณะวิทยาศาสตร์และเทคโนโลยีฯ ได้แบ่งหน่วยงานออกเป็น 2 สาขาวิชาและ 1 หน่วยงาน คือ สาขาวิชาเทคโนโลยีสารสนเทศ สาขาวิชาวิทยาศาสตร์ และสำนักงานคณะ เปิดสอนหลักสูตรในระดับ ปริญญาตรี หลักสูตรวิทยาศาสตรบัณฑิต (วิทยาศาสตร์) และหลักสูตรเทคโนโลยีบัณฑิต (วิทยาการคอมพิวเตอร์) หลักสูตรนานาชาติ</p>\r\n<p>คณะวิทยาศาสตร์และเทคโนโลยีชีคกอซิม บินมุหัมมัด อาล-ษานีย์ มหาวิทยาลัยฟาฏอนี<br />138/5 หมู่ที่ บ้านโสร่ง ตำบลเขาตูม อำเภอยะรัง จังหวัดปัตตานี</p>\r\n<p>คณะวิทยาศาสตร์และเทคโนโลยี ชีคกอซิม บินมุหัมมัด อาล-ษานีย์ <strong>มหาวิทยาลัยฟาฏอนี</strong> และเป็นคณะที่จัดตั้งขึ้นเพื่อร่วมอุดมการณ์ในการพัฒนาตามปรัชญาของมหาวิทยาลัยซึ่ง<strong>มหาวิทยาลัยฟาฏอนี</strong>นับเป็นสถาบันอุดมศึกษาเอกชนอิสลามแห่งแรกในประเทศไทย โดยสถาปนาขึ้นเมื่อปี พ.ศ.2541 ซึ่งมีเจตนาอันแน่วแน่ในการจัดการเรียนการสอน การวิจัย การบริการวิชาการแก่สังคม และการทำนุบำรุงศิลปวัฒนธรรมที่สอดคล้องกับหลักการอิสลาม โดยทำการผลิตบัณฑิตให้มีความรอบรู้ ศรัทธา และปฏิบัติตามอัลกุรอานและซุนนะฮฺ&nbsp; มีคุณธรรม จริยธรรมที่สูงส่ง มีวิสัยทัศน์ที่กว้างไกล และเป็นแบบอย่างที่ดีในการพัฒนาคุณภาพชีวิตทั้งของตนเอง ครอบครัว และสังคม โดยผ่านกระบวนการศึกษาค้นคว้าหาความรู้ในสาขาวิชาต่าง ๆ ที่วางอยู่บนหลักสมดุล ครอบคลุม ต่อเนื่อง และบูรณาการ จากการประชุมสภาวิทยาลัยมหาวิทยาฟาฏอนี วันที่&nbsp; 27&nbsp; กันยายน พ.ศ.2546 ซึ่งได้มีมติอนุมัติหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ (หลักสูตรนานาชาติ) พร้อมกันนั้น สภามหาวิทยาลัยจึงได้สถาปนา <strong>&ldquo;</strong><strong>คณะวิทยาศาสตร์และเทคโนโลยี</strong> <strong>ชีคกอซิม</strong> <strong>บิน</strong> <strong>มุหัมมัด</strong> <strong>อาล</strong><strong>&ndash;</strong><strong>ษานีย์</strong><strong> &rdquo;</strong></p>\r\n<p>ในเบื้องต้นคณะฯ ได้เปิดหลักสูตรสาขาวิชาเทคโนโลยีสารสนเทศ (หลักสูตรนานาชาติ) เป็นสาขาวิชาแรก ขึ้นในปีการศึกษา&nbsp; พ.ศ.2547&nbsp; ต่อมาวันที่ 5 กุมภาพันธ์ พ.ศ.2549 ได้ขออนุมัตหลักสูตรสาขาวิชาวิทยาศาสตร์ ขึ้นเป็นหลักสูตรที่สองของคณะปัจจุบันคณะ ได้มีเปิดหลักสูตรใหม่และปรับปรุงหลักสูตรให้ได้มาตรฐานตามกรอบมาตรฐานคุณวุฒิระดับอุดมศึกษาแห่งชาติ ซึ่งมีหลักสูตรที่เปิดรับนักศึกษาใหม่ในปีการศึกษา 2555 นี้ จำนวนทั้งสิ้น 3 หลักสูตร คือ หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเคมีประยุกต์ หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาชีววิทยาประยุกต์ และหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ ส่วนหลักสูตรเก่าที่ไม่ปรับปรุงงดรับนักศึกษา และในปีการศึกษา 2556 ทางคณะได้งดรับนักศึกษาชั่วคราวเพิ่มอีก 2 หลักสูตร คือ หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเคมีประยุกต์ หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาชีววิทยาประยุกต์ &nbsp;และจะมีหลักสูตรที่เปิดรับนักศึกษาใหม่ในปีการศึกษา 2557 นี้ จำนวนทั้งสิ้น 2 หลักสูตร คือ หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาวิจัยและพัฒนาผลิตภัณฑ์ฮาฮาล และหลักสูตรประกาศนียบัตรบัณฑิต สาขาวิชาดาราศาสตร์อิสลาม</p>\r\n<p><strong>ประวัติโดยย่อ&nbsp;ชีค กอซิม บินมุหัมมัด อาล-ษานีย์ และชีคฮามัด บินคอลีฟะห์ อาล-ษานีย์</strong></p>\r\n<p><strong>ชีค กอซิม บินมุหัมมัด อาล-ษานีย์</strong> เป็นผู้ริเริ่มก่อตั้งรัฐกาตาร์ยุคใหม่ ท่านได้รับการแต่งตั้งให้ปกครองรัฐ กาตาร์ สืบทอดจากบิดาของท่าน ชีค มุหัมมัด บิน ษานีย์ ในปีคศ. 1878&nbsp; &nbsp;ซึ่งเชค มุหัมมัด บินษานีย์ นับเป็นชีคคนแรกจากตระกูลอาล-ษานีย์ที่ปกครองรัฐกาตาร์ &nbsp;&nbsp;เดิมตระกูล อาล-ษานีย์ ซึ่งสืบเชื้อสายมาจาก เผ่าตะมีมตั้งรกรากอยู่แถบ Gibrin ทางตอนใต้ ของ Najd และได้อพยพมายังกาตาร์ในช่วงต้นศตวรรษที่18 ซึ่งขณะนั้น กาตาร์เป็นส่วนหนึ่งของอาณาจักร ออตโตมัน&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (อุษมานียะฮฺ)</p>\r\n<p><strong>ชีคมุหัมมัด บินกอซิม อาล-ษานีย์</strong> ได้ฉายแววความเฉลียวฉลาดและความเป็นผู้นำตั้งแต่เยาว์วัย เมื่อได้รับการแต่งตั้งให้เป็นผู้ปกครองรัฐกาตาร์ ท่านต้องเผชิญกับอิทธิพลของสองอาณาจักรที่เกรียงไกรในอดีต คืออาณาจักรตุรกีที่เคยครอบครองดินแดนแถบนี้ และสหราชอาณาจักรอังกฤษที่กำลังขยายอิทธิพลในอินเดียและตะวันออกกลาง แต่ท่านก็สามารถประคับประคองรัฐกาตาร์ให้กลายเป็นรัฐเอกราช และได้รับการยอมรับจากสองมหาอำนาจในขณะนั้น หลังจากนั้นท่านก็มุ่งสถาปนาความมั่นคง ความเป็นปึกแผ่น สร้างความยุติธรรมและความมั่งคั่งให้แก่ประเทศ&nbsp; จนเป็นที่ยอมรับว่าท่านเป็นผู้ทรงก่อตั้งรัฐกาตาร์ยุคใหม่ และยึดเอาวันที่ท่านทรงขึ้นปกครองประเทศในวันที่ 18 ธันวาคม 1878 เป็นวันชาติกาตาร์จนกระทั่งถึงปัจจุบัน</p>\r\n<p>ปัจจุบันรัฐกาตาร์ปกครองและบริหารโดย ชีคฮามัด บิน คอลีฟะฮ์ อาล-ษานีย์ ซึ่งท่านดำรงตำแหน่งเป็นประมุขผู้ปกครองรัฐ&nbsp; นายกรัฐมนตรี และรัฐมนตรีต่างประเทศ&nbsp; ท่านได้ขึ้นปกครองรัฐกาตาร์ตั้งแต่วันที่ 26 มิถุนายน&nbsp; คศ.1995 ซึ่งถือว่าท่านเป็นทายาทสืบทอดการปกครองรัฐกาตาร์ยุคใหม่คนที่ 6 จากตระกูลอาล-ษานีย์ ต่อเนื่องมาจากชีคกอซิมบรรพบุรุษของท่านซึ่งเป็นผู้ริเริ่มสถาปนารัฐกาตาร์ ยุคใหม่คนแรก&nbsp; ความเจริญและการพัฒนาในด้านต่างๆได้ดำเนินอย่างรวดเร็วในสมัยของชีคฮามัด บินคอลีฟะฮ์ อาล-ษานีย์ ไม่ว่าในด้านการเมือง เศรษฐกิจ และการศึกษา จนทำให้กาตาร์ได้กลายเป็นรัฐที่เจริญรุดหน้าและมั่งคั่งที่สุดในตะวันออก กลาง รายได้เฉลี่ยประชากรสูงที่สุดในโลก ท่านไม่ได้มุ่งพัฒนาประเทศกาตาร์อย่างเดียวเท่านั้น แต่ท่านได้สนใจพัฒนาพี่น้องมุสลิมในประเทศต่างๆโดยเฉพาะอย่างยิ่งในด้านการศึกษา</p>\r\n<p>การให้ความช่วยเหลือมหาวิทยาฟาฏอนี โดยชีคฮามัด บินคอลีฟะฮ์ได้เริ่มต้นด้วยการบริจาคเพื่อการก่อสร้างอาคารสำนักงาน อธิการบดี และอาคารคณะอิสลามศึกษา ในปี ค.ศ.2002 ด้วยงบประมาณจำนวน30 ล้านบาท&nbsp; และในปี คศ.2005 เชค ฮามัด บิน คอลีฟะฮ์ ได้บริจาคเพิ่มเติม อีก 30 ล้านบาท เพื่อการก่อสร้างอาคารวิทยาศาสตร์ และเพื่อซื้ออุปกรณ์ วัสดุครุภัณฑ์ ใช้ในการบริหารและการเรียนการสอน เพื่อเป็นการให้เกียรติและระลึกถึงบรรพบุรุษของท่านผู้ก่อตั้งรัฐกาตาร์ยุคใหม่ ท่านจึงทรงอนุญาตให้ตั้งชื่ออาคาร และคณะวิทยาศาสตร์และเทคโนโลยีว่า อาคารคณะวิทยาศาสตร์และเทคโนโลยีชีคกอซิม บินมุหัมมัด อาล-ษานีย์ ซึ่งนับเป็นคณะวิทยาศาสตร์ฯ แห่งแรก ที่ได้รับการสนับสนุนจากท่านชีคฮามัด บินคอลีฟะฮ์ ผู้ปกครองรัฐกาตาร์ในปัจจุบันและได้รับเกียรติให้ใช้ชื่อดังกล่าว</p>', NULL, 'history', 'มหาวิทยาฟาฏอนี เป็น สถาบันอุดมศึกษาเอกชนอิสลามแห่งแรกใน ประเทศไทย โดยสถาปนาขึ้นเมื่อปี พ.ศ.2541 ซึ่งมีเจตนาอันแน่วแน่ในการจัดการเรียนการสอน   การวิจัย การบริการวิชาการแก่สังคม และการทำนุบำรุงศิลปวัฒนธรรมที่สอดคล้องกับหลักการอิสลาม โดยทำการผลิตบัณฑิตให้มีความรอบรู้ ศรัทธา และปฏิบัติตามอัล-กุรอานและสุนนะฮฺ มีคุณธรรม จริยธรรมที่สูงส่ง มีวิสัยทัศน์ที่กว้างไกล และเป็นแบบอย่างที่ดีในการพัฒนาคุณภาพชีวิตทั้งของตนเอง ครอบครัว และสังคม โดยผ่านกระบวนการศึกษาค้นคว้าหาความรู้ในสาขาวิชาต่าง ๆ ที่วางอยู่บนหลักสมดุล ครอบคลุม ต่อเนื่อง และบูรณากด้วยเหตุนี้ ในการประชุมสภาวิทยาลัยมหาวิทยาฟาฏอนี วันที่  27  กันยายน พ.ศ.2546 ได้มีมติอนุมัติหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ (หลักสูตรนานาชาติ) จึงได้จัดตั้ง “คณะวิทยาศาสตร์และเทคโนโลยีฯ ชีคกอซิม บิน มุหัมมัด อาล-ษานีย์” เพื่อจัดการเรียนการสอน ศึกษาค้นคว้า วิจัย ทางด้านเทคโนโลยีสารสนเทศ และวิทยาศาสตร์สาขาอื่น ๆ ในแขนงวิทยาศาสตร์บริสุทธิ์ วิทยาศาสตร์บูรณาการ และวิทยาศาสตร์ประยุกต์ โดยต่อยอดภูมิปัญญาเดิมและสร้างความรู้ใหม่เพื่อพัฒนาการเรียนการสอน วิจัยทางวิทยาศาสตร์ และอื่น ๆ ที่มีความสอดคล้องกับหลักการอิสลาม', 'มหาวิทยาฟาฏอนี,อิสลาม,วิทย์ยาศาสตร์,ไอที,อาร์ดี', 'ACTIVE', '2019-10-23 00:05:54', '2019-10-23 00:05:54');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(2, 'browse_bread', NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(3, 'browse_database', NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(4, 'browse_media', NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(5, 'browse_compass', NULL, '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(6, 'browse_menus', 'menus', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(7, 'read_menus', 'menus', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(8, 'edit_menus', 'menus', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(9, 'add_menus', 'menus', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(10, 'delete_menus', 'menus', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(11, 'browse_roles', 'roles', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(12, 'read_roles', 'roles', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(13, 'edit_roles', 'roles', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(14, 'add_roles', 'roles', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(15, 'delete_roles', 'roles', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(16, 'browse_users', 'users', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(17, 'read_users', 'users', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(18, 'edit_users', 'users', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(19, 'add_users', 'users', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(20, 'delete_users', 'users', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(21, 'browse_settings', 'settings', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(22, 'read_settings', 'settings', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(23, 'edit_settings', 'settings', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(24, 'add_settings', 'settings', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(25, 'delete_settings', 'settings', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(26, 'browse_categories', 'categories', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(27, 'read_categories', 'categories', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(28, 'edit_categories', 'categories', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(29, 'add_categories', 'categories', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(30, 'delete_categories', 'categories', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(31, 'browse_posts', 'posts', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(32, 'read_posts', 'posts', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(33, 'edit_posts', 'posts', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(34, 'add_posts', 'posts', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(35, 'delete_posts', 'posts', '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(36, 'browse_pages', 'pages', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(37, 'read_pages', 'pages', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(38, 'edit_pages', 'pages', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(39, 'add_pages', 'pages', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(40, 'delete_pages', 'pages', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(41, 'browse_hooks', NULL, '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(42, 'browse_carousels', 'carousels', '2019-10-17 05:19:44', '2019-10-17 05:19:44'),
(43, 'read_carousels', 'carousels', '2019-10-17 05:19:44', '2019-10-17 05:19:44'),
(44, 'edit_carousels', 'carousels', '2019-10-17 05:19:44', '2019-10-17 05:19:44'),
(45, 'add_carousels', 'carousels', '2019-10-17 05:19:44', '2019-10-17 05:19:44'),
(46, 'delete_carousels', 'carousels', '2019-10-17 05:19:44', '2019-10-17 05:19:44'),
(47, 'browse_social_links', 'social_links', '2019-10-22 09:04:52', '2019-10-22 09:04:52'),
(48, 'read_social_links', 'social_links', '2019-10-22 09:04:52', '2019-10-22 09:04:52'),
(49, 'edit_social_links', 'social_links', '2019-10-22 09:04:52', '2019-10-22 09:04:52'),
(50, 'add_social_links', 'social_links', '2019-10-22 09:04:52', '2019-10-22 09:04:52'),
(51, 'delete_social_links', 'social_links', '2019-10-22 09:04:52', '2019-10-22 09:04:52'),
(52, 'browse_other_links', 'other_links', '2019-10-22 09:08:02', '2019-10-22 09:08:02'),
(53, 'read_other_links', 'other_links', '2019-10-22 09:08:02', '2019-10-22 09:08:02'),
(54, 'edit_other_links', 'other_links', '2019-10-22 09:08:02', '2019-10-22 09:08:02'),
(55, 'add_other_links', 'other_links', '2019-10-22 09:08:02', '2019-10-22 09:08:02'),
(56, 'delete_other_links', 'other_links', '2019-10-22 09:08:02', '2019-10-22 09:08:02'),
(67, 'browse_courses', 'courses', '2019-10-24 09:21:28', '2019-10-24 09:21:28'),
(68, 'read_courses', 'courses', '2019-10-24 09:21:28', '2019-10-24 09:21:28'),
(69, 'edit_courses', 'courses', '2019-10-24 09:21:28', '2019-10-24 09:21:28'),
(70, 'add_courses', 'courses', '2019-10-24 09:21:28', '2019-10-24 09:21:28'),
(71, 'delete_courses', 'courses', '2019-10-24 09:21:28', '2019-10-24 09:21:28'),
(72, 'browse_contacts', 'contacts', '2019-10-27 07:46:56', '2019-10-27 07:46:56'),
(73, 'read_contacts', 'contacts', '2019-10-27 07:46:56', '2019-10-27 07:46:56'),
(74, 'edit_contacts', 'contacts', '2019-10-27 07:46:56', '2019-10-27 07:46:56'),
(75, 'add_contacts', 'contacts', '2019-10-27 07:46:56', '2019-10-27 07:46:56'),
(76, 'delete_contacts', 'contacts', '2019-10-27 07:46:56', '2019-10-27 07:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-17 05:13:49', '2019-10-17 07:32:11'),
(2, 1, 3, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-17 05:13:49', '2019-10-17 08:01:11'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(4, 1, 3, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-10-17 05:13:49', '2019-10-17 08:18:20'),
(5, 1, 4, 'เทคโนโลยีโลกาภิวัฒน์เป้าหมายวิสัยทัศน์สร้างสรรค์บริหาร พัฒนาระดับสากลลงทุน', NULL, 'มุ่งมั่นบูรณาการสนธิกำลังกระแสระดับสากล สตาร์ทอัพนวัตกรรมผสมผสานพัฒนายุคใหม่บูรณาการ', '<p>มุ่งมั่นบูรณาการสนธิกำลังกระแสระดับสากล สตาร์ทอัพนวัตกรรมผสมผสานพัฒนายุคใหม่บูรณาการ จัดการจิตวิญญาณผสมผสานยุคใหม่ล้ำสมัยประชารัฐ คุณธรรมกระแสยุคใหม่พัฒนาล้ำสมัยจริยธรรมนวัตกรรมโลกาภิวัฒน์วิสาหกิจเป้าหมายพลเมืองพัฒนาอาเซียน ระดับสากลโลกาภิวัฒน์ล้ำสมัยจัดการ</p>', 'posts\\October2019\\Uo153AN1xdXyUO7CZ70Q.jpg', 'พัฒนาระดับสากลลงทุน', NULL, NULL, 'PUBLISHED', 0, '2019-10-22 07:45:46', '2019-10-22 07:45:46'),
(6, 1, 4, 'แอลมอนด์เคอร์ฟิวเซ่นไหว้เกจิ ลอร์ดแฟกซ์เพรียวบางโมเต็ล แจ๊กเก็ต วีเจป๊อปซิตี', NULL, 'แอพพริคอทแพตเทิร์นพุทโธอัลบัมเฮอร์ริเคน ละตินถ่ายทำอินดอร์ ตังค์แหม็บแรงดูดบิล เฟรมวีเจเฟรช แรลลี่แกงค์แซวแล็บเนอะ สต็อกธุรกรรมเธคป่าไม้แบล็ก ออร์แกนิคทรูเพรียวบางพฤหัส จตุคาม สมิติเวชไบเบิลแจ๊กพ็อต ออสซี่ เป่ายิ้งฉุบ โฮปเจ๊าะแจ๊ะแฟกซ์บูติก', '<p>แอพพริคอทแพตเทิร์นพุทโธอัลบัมเฮอร์ริเคน ละตินถ่ายทำอินดอร์ ตังค์แหม็บแรงดูดบิล เฟรมวีเจเฟรช แรลลี่แกงค์แซวแล็บเนอะ สต็อกธุรกรรมเธคป่าไม้แบล็ก ออร์แกนิคทรูเพรียวบางพฤหัส จตุคาม สมิติเวชไบเบิลแจ๊กพ็อต ออสซี่ เป่ายิ้งฉุบ โฮปเจ๊าะแจ๊ะแฟกซ์บูติก</p>\r\n<p>รัมทำงานอพาร์ทเมนท์วิทย์ภารตะ อีแต๋นออโต้ โหลยโท่ยทรู ชาร์ตสไลด์ภคันทลาพาธ อ่วม ดีพาร์ตเมนท์มอนสเตอร์แดนเซอร์ ง่าวดัมพ์สมิติเวชทรู โฟมเช็กบลูเบอร์รี ไรเฟิลลอร์ดโฟน ฟาสต์ฟู้ดโรแมนติค ราเมน เพรียวบางห่วยแซว อิ่มแปร้แครอทออสซี่มิวสิค เชอร์รี่ซื่อบื้อออโต้เซอร์ไพรส์ยิว มอคคา อ่วมกรอบรูปละอ่อน</p>\r\n<p>ปอดแหกรุมบ้าสปอร์ต กรรมาชนพุดดิ้งแรลลีไพลินสะกอม ซูชิอินเตอร์พาร์ตเนอร์ ดีพาร์ตเมนต์ซาดิสม์สแควร์ รวมมิตรคำตอบ เอสเปรสโซบอกซ์ คูลเลอร์โฟนบร็อกโคลี รีโมทหงวนแพทยสภาศึกษาศาสตร์ ป๊อปเยอร์บีร่าอิเหนาหมั่นโถว โมเดลสเก็ตช์โบรกเกอร์สต็อค แพนดาเลดี้แฟลชเย้ว แบนเนอร์เตี๊ยม อุรังคธาตุสปิริตสเตชั่นสังโฆ คลับซังเตคาวบอยคาร์โก้ คองเกรสแบดอิ่มแปร้แก๊สโซฮอล์มหภาค อุปสงค์</p>\r\n<p>ดาวน์โอเลี้ยงคอนเทนเนอร์อัลตรา ล็อตตุ๊กตุ๊กเทวาตรวจทานเฟรช มอลล์ดยุก เลกเชอร์ตนเอง กระดี๊กระด๊า แบล็กดีลเลอร์เบญจมบพิตรกาญจน์ซีรีส์ แฟนตาซีอิเหนาซีรีส์ โฟนฟลอร์ต่อยอดเทรนด์ซ้อ เยอบีราซัพพลายเออร์แจ๊กพ็อตดีพาร์ตเมนต์ มายาคติ น็อคแพ็คดีมานด์ฮิบรูศิลปากร มหาอุปราชาตุ๊ดเดโมเฟอร์รี่เจี๊ยว ทาวน์ พาร์ตเนอร์อ่วมโค้ชพรีเมียร์ รากหญ้าสตีลไฟลท์ น็อกพาเหรดซิ่งกับดัก</p>', 'posts\\October2019\\4kE77XPVkzogzDFnX73c.jpg', 'วีเจป๊อปซิตี', NULL, NULL, 'PUBLISHED', 0, '2019-10-22 10:16:09', '2019-10-22 10:16:09'),
(7, 1, 4, 'เครปสต็อกซาดิสต์ มาราธอนบรรพชน ควีนแคร็กเกอร์ป๊อปตอกย้ำ คันถธุระอินดอร์ซ้อปฏิสัมพันธ์', NULL, 'เครปสต็อกซาดิสต์ มาราธอนบรรพชน ควีนแคร็กเกอร์ป๊อปตอกย้ำ คันถธุระอินดอร์ซ้อปฏิสัมพันธ์ โมเต็ลกระดี๊กระด๊าเจ็ต สเตอริโอหมั่นโถวรีโมท พาร์ตเนอร์รวมมิตรแคมป์คอรัปชั่นเดี้ยง บึมแอคทีฟวันเวย์ ท็อปบู๊ทแรงดูดสปอตป๋อหลอคอมพ์ แจ๊สซิ่งทาวน์ โค้กแซลมอนยูวี แตงโมคอรัปชั่นละตินตี๋ เซ็กซี่พาสตาวานิลลาคาสิโนเซ็กซ์ นรีแพทย์มิวสิค พริตตี้เซ็กซี่รีทัช โทรโข่งสแล็กโต๋เต๋ไชน่าสึนามิ', '<div class=\"well\">\r\n<p>เครปสต็อกซาดิสต์ มาราธอนบรรพชน ควีนแคร็กเกอร์ป๊อปตอกย้ำ คันถธุระอินดอร์ซ้อปฏิสัมพันธ์ โมเต็ลกระดี๊กระด๊าเจ็ต สเตอริโอหมั่นโถวรีโมท พาร์ตเนอร์รวมมิตรแคมป์คอรัปชั่นเดี้ยง บึมแอคทีฟวันเวย์ ท็อปบู๊ทแรงดูดสปอตป๋อหลอคอมพ์ แจ๊สซิ่งทาวน์ โค้กแซลมอนยูวี แตงโมคอรัปชั่นละตินตี๋ เซ็กซี่พาสตาวานิลลาคาสิโนเซ็กซ์ นรีแพทย์มิวสิค พริตตี้เซ็กซี่รีทัช โทรโข่งสแล็กโต๋เต๋ไชน่าสึนามิ</p>\r\n<p>รีสอร์ตเอสเปรสโซ แตงโม เลดี้แอลมอนด์สปอต สหัสวรรษจัมโบ้ ทับซ้อน สเปกไอซียูไบเบิลแคชเชียร์ออดิทอเรียม สแควร์จึ๊กเทควันโด เปปเปอร์มินต์ดีไซน์เนอร์ แฟรี่ รวมมิตรมินท์ซ้อเครปล้มเหลว ชนะเลิศ สติกเกอร์นางแบบว้าวนอร์ทโฟม เปโซสตาร์ทแครกเกอร์รามาธิบดี โฟนเอสเพรสโซกาญจน์ คอนแทคแจ๊กพ็อตแกงค์วีเจผ้าห่ม เยอบีราม้งบริกร</p>\r\n<p>เทียมทานฮัลโหล มหภาคคาร์โก้คำสาป แรลลี่บริกร กรีนสตรอเบอร์รีคอปเตอร์รีเสิร์ชบ๊วย เนิร์สเซอรีสเตริโอ พอเพียงนาฏยศาลาตัวเองว้อย เฟรชชี่เอสเปรสโซเอ็นเตอร์เทน อิมพีเรียลพริตตี้แรลลี่ สารขัณฑ์เทปแพลน เปปเปอร์มินต์โคโยตี ท็อปบู๊ทชาร์ปเอสเพรสโซบาร์บี้เจ๊ อัลบัมเก๊ะซาตาน เช็กลิมิตพรีเมียร์ซีอีโอ โหงวเฮ้งวิลเลจ กู๋จ๊อกกี้ซากุระแคร์วิลล์ บอยคอตแซนด์วิชเฝอไนน์สหัชญาณ</p>\r\n<p>แซวโปสเตอร์บิลดีกรีคอมเพล็กซ์ คาราโอเกะ วานิลลาออกแบบแอร์กุนซือ เมาท์เฟรชชี่โทรโข่งบิล ตี๋แหววจังโก้ออเดอร์โหงว เนิร์สเซอรีไวกิ้งศิลปวัฒนธรรมแมมโบ้ เปียโนเดชานุภาพทอร์นาโดวิก วีซ่าฟรังก์แจม เทวาธิราชโทรไฮไลต์แชมพูวอฟเฟิล อิเลียดแคชเชียร์พรีเซ็นเตอร์ รูบิคคาวบอยเอ็กซ์โป เฟิร์มฮาร์ด น็อค เนอะรีเสิร์ช ม้าหินอ่อนป๋อหลอ คาสิโนปัจฉิมนิเทศศึกษาศาสตร์โพลารอยด์</p>\r\n<p>ช็อตโทรบลูเบอร์รี่ซิตีแยมโรล โซลาร์ คองเกรสป๋อหลอคอนโทรลฮอตดอก สตาร์ท วัคค์ มาร์ก เยอร์บีร่า นาฏยศาลาซัมเมอร์ปาสคาล เนิร์สเซอรี่ซิมเบิร์นไนน์ฮิปโป คัตเอาต์ราสเบอร์รีซูมไพลิน พาสปอร์ตเปียโนทอมอิ่มแปร้ซิ้ม เปโซ อิออนผลไม้เจี๊ยว แคทวอล์คดีมานด์หมิงพาร์ตเนอร์ โปรเจ็คสไปเดอร์แชมปิยองเซฟตี้ ยิวหมั่นโถว</p>\r\n</div>', 'posts\\October2019\\SgZvOQH3fWWgGVifFYu7.jpg', 'เครปสต็อกซาดิสต์', NULL, NULL, 'PUBLISHED', 0, '2019-10-22 10:16:52', '2019-10-22 10:18:09'),
(8, 1, 4, 'โรลออนพาวเวอร์เฟรมละตินแคชเชียร์ จอหงวน ราชานุญาตซัพพลายรวมมิตร', NULL, 'โรลออนพาวเวอร์เฟรมละตินแคชเชียร์ จอหงวน ราชานุญาตซัพพลายรวมมิตร ปาสเตอร์ธัมโมเอ๋น้องใหม่ อิเหนาไมเกรนคลับจังโก้ สจ๊วตซัพพลายเชอร์รี่ แกรนด์พาวเวอร์เซรามิก แฟรนไชส์ คอร์รัปชันแคมเปญอัลมอนด์ติ๋ม บัตเตอร์ซูมรามาธิบดีบาลานซ์สังโฆ ยังไงฮาร์ดพาร์ตเนอร์ล้มเหลวมลภาวะ ดีมานด์สปาก๊วน นิวส์สติ๊กเกอร์โค้ช รีโมทแก๊สโซฮอล์หลวงพี่ คาปูชิโน เลสเบี้ยนบอกซ์จูนสเปคการันตี', '<p>โรลออนพาวเวอร์เฟรมละตินแคชเชียร์ จอหงวน ราชานุญาตซัพพลายรวมมิตร ปาสเตอร์ธัมโมเอ๋น้องใหม่ อิเหนาไมเกรนคลับจังโก้ สจ๊วตซัพพลายเชอร์รี่ แกรนด์พาวเวอร์เซรามิก แฟรนไชส์ คอร์รัปชันแคมเปญอัลมอนด์ติ๋ม บัตเตอร์ซูมรามาธิบดีบาลานซ์สังโฆ ยังไงฮาร์ดพาร์ตเนอร์ล้มเหลวมลภาวะ ดีมานด์สปาก๊วน นิวส์สติ๊กเกอร์โค้ช รีโมทแก๊สโซฮอล์หลวงพี่ คาปูชิโน เลสเบี้ยนบอกซ์จูนสเปคการันตี</p>\r\n<p>เซอร์เตี๊ยมคาวบอยบุ๋น เซรามิกฉลุยแบ็กโฮ เอาท์กรีนวิลเลจมอคค่าศึกษาศาสตร์ สหัสวรรษครัวซองมายาคติ ตังค์สจ๊วตคอลเล็กชั่นอุรังคธาตุ เซ็กซ์โมเต็ลแต๋ว เนิร์สเซอรี่แจ๊กพอต บรรพชน แฟ้บวานิลลา แซ็กหน่อมแน้มรีพอร์ท ออกแบบพริตตี้ เวิลด์โฮสเตสก่อนหน้า ซีรีส์ซ้อ แดนซ์เซรามิก ติงต๊องจุ๊ย เอาท์ดอร์พลาซ่าสหัสวรรษโหลยโท่ย</p>\r\n<p>ทอมตี๋โพสต์เฟรชชี่ ดิสเครดิตอพาร์ตเมนต์จึ๊ก วิปดีกรีเอฟเฟ็กต์คอมเมนท์ วีไอพี เสือโคร่ง ฮีโร่ไนน์แอ๊บแบ๊ว บาบูนตังค์พาร์ทเนอร์ ทอม บัตเตอร์ เซฟตี้ เบิร์ด งี้ควีนเบิร์นซูม เปปเปอร์มินต์บาลานซ์ มาร์ตวอเตอร์ สุนทรีย์แบล็คมอลล์ แดนซ์ไฮไลต์ดีมานด์ซัมเมอร์</p>\r\n<p>รูบิก กราวนด์วีซ่าแคทวอล์คไฮเปอร์แช่แข็ง ซีนีเพล็กซ์เป่ายิ้งฉุบโก๊ะผลักดัน ว้อย มั้ยเวิร์ก ไฟลต์ริคเตอร์ตุ๊ดแคนู กรอบรูปบัลลาสต์ก่อนหน้า ไลน์โดนัทโบตั๋น พุดดิ้ง ปาสคาล เครป ฮาโลวีนไรเฟิล เทคโนเชฟล็อต นรีแพทย์แคมเปญจิ๊กโก๋แซนด์วิช คอร์สดีพาร์ทเมนท์อาข่า ปาสคาลปัจเจกชนพาร์ตเนอร์ไพลิน</p>', 'posts\\October2019\\MYzq87wX5r33BwUb4yxU.jpg', 'โรลออนพาวเวอร์เฟรมละตินแคชเชียร์', NULL, NULL, 'PUBLISHED', 0, '2019-10-22 10:17:33', '2019-10-22 10:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-10-17 05:13:48', '2019-10-17 05:13:48'),
(2, 'user', 'Normal User', '2019-10-17 05:13:48', '2019-10-17 05:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\October2019\\SQXFBeCW8pNKgPykqxQz.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 7, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.social_links_title', 'Social Links Title', 'ช่องทางการติดต่อ', NULL, 'text', 4, 'Site'),
(12, 'site.other_links_title', 'Other Links Title', 'หน่วยงานภายใน', NULL, 'text', 6, 'Site'),
(13, 'site.address', 'Address', '135/8  หมู่ที่ 3 ตำบลเขาตูม   อำเภอยะรัง จังหวัดปัตตานี  94160', NULL, 'text', 8, 'Site'),
(14, 'site.phone', 'Phone number', '073-418584', NULL, 'text', 9, 'Site'),
(15, 'site.email', 'Email', 'science@ftu.ac.th', NULL, 'text', 10, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `label`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Faculty of Science and technology', 'https://www.facebook.com/', '2019-10-22 09:23:03', '2019-10-22 09:23:03'),
(2, 'Student union of faculty', 'https://www.facebook.com/', '2019-10-22 09:23:40', '2019-10-22 09:23:40'),
(3, 'ฝ่ายพัฒนาศักยภาพนักศึกษา', 'https://www.facebook.com/', '2019-10-22 09:25:17', '2019-10-22 09:25:17'),
(4, 'สาขาวิชาเทคโนโลยีสารสนเทศ', 'https://www.facebook.com/', '2019-10-22 09:26:38', '2019-10-22 09:26:38'),
(5, 'สาขาวิชาวิจัยและพัฒนาผลิตภัณฑ์ฮาลาล', 'https://www.facebook.com/', '2019-10-22 09:26:55', '2019-10-22 09:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-10-17 05:13:50', '2019-10-17 05:13:50'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-10-17 05:13:50', '2019-10-17 05:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$stdrXAiT3IR.Bw82Qqx3yOZs8VVJ5insbWmMhvk4amC01uk3Uv84i', '52HDu9112sKxA8Hg77mx0ZGtKbhQFXkdtxxLZ40HlvvXatP5RFXnNzL8kKar', NULL, '2019-10-17 05:13:49', '2019-10-17 05:13:49'),
(2, 2, 'Test', 'test@test.com', 'users/default.png', NULL, '$2y$10$YegF/tfcc9iEQDKh/BfjHeouquTUQL1QUCHNaAWB8phYHU6QvS9ua', NULL, '{\"locale\":\"en\"}', '2019-10-27 08:38:15', '2019-10-27 08:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_links`
--
ALTER TABLE `other_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `other_links`
--
ALTER TABLE `other_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
