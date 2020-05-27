-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 23, 2020 at 06:10 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `sub_title` text NOT NULL,
  `description` mediumtext NOT NULL,
  `banner` mediumtext NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `sub_title`, `description`, `banner`, `is_deleted`) VALUES
(1, 'test', 'Save up to 49% off', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'assets/uploads/banners/3.jpg', 0),
(2, 'sale', 'sale 80% off', 'cdsfdssgg', 'assets/uploads/banners/2.jpg', 0),
(3, 'sale', 'Save up to 49% off', 'adads', 'assets/uploads/banners/1.jpg', 0),
(4, 'sale', 'sale 80% off', 'aaSAsASa', 'assets/uploads/banners/watch.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` mediumtext NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `is_deleted`) VALUES
(1, 'nike', 'assets/uploads/brands/dell.png', 0),
(2, 'puma', 'assets/uploads/brands/dell.png', 0),
(4, 'samsung', 'assets/uploads/brands/dell.png', 0),
(5, 'google', 'assets/uploads/brands/dell.png', 0),
(6, 'dell', 'assets/uploads/brands/dell.png', 0),
(7, 'nike', 'assets/uploads/brands/nike.png', 0),
(8, 'blueline', 'assets/uploads/brands/brand3.png', 0),
(9, 'caferacer', 'assets/uploads/brands/brand6.png', 0),
(10, 'hot foil', 'assets/uploads/brands/brand1.png', 0),
(11, 'get lucky', 'assets/uploads/brands/brand2.png', 0),
(12, 'lifestyle', 'assets/uploads/brands/lifestyle.png', 0),
(13, 'adidas', 'assets/uploads/brands/adidas.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` decimal(9,2) NOT NULL,
  `user_ip` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `total_amount`, `user_ip`, `date`, `is_deleted`) VALUES
(483, 56, 31, 1, '200.00', '::1', '2020-05-11 02:50:23', 1),
(484, 56, 2, 2, '20000.00', '::1', '2020-05-11 05:05:30', 1),
(485, 56, 6, 1, '1200.00', '::1', '2020-05-11 05:19:24', 1),
(486, 56, 5, 1, '9600.00', '::1', '2020-05-12 09:14:47', 1),
(487, 56, 5, 1, '9600.00', '::1', '2020-05-12 09:17:11', 1),
(488, 56, 30, 2, '36000.00', '::1', '2020-05-12 10:12:30', 1),
(489, 56, 30, 1, '18000.00', '::1', '2020-05-12 10:21:57', 1),
(490, 56, 31, 1, '200.00', '::1', '2020-05-12 10:22:04', 1),
(491, 56, 30, 1, '18000.00', '::1', '2020-05-12 02:24:23', 1),
(492, 0, 10, 1, '32000.00', '::1', '2020-05-13 09:55:59', 1),
(493, 1, 10, 1, '32000.00', '::1', '2020-05-13 11:03:14', 1),
(494, 1, 4, 1, '30000.00', '::1', '2020-05-13 11:03:17', 1),
(495, 56, 2, 6, '60000.00', '::1', '2020-05-13 02:23:31', 1),
(496, 56, 13, 1, '1250.00', '::1', '2020-05-13 05:43:38', 1),
(497, 0, 30, 1, '18000.00', '::1', '2020-05-14 09:46:18', 1),
(498, 0, 30, 2, '36000.00', '::1', '2020-05-14 09:50:16', 1),
(499, 56, 31, 8, '1600.00', '::1', '2020-05-14 10:02:24', 1),
(500, 56, 4, 3, '90000.00', '::1', '2020-05-14 12:07:05', 1),
(501, 56, 6, 1, '1200.00', '::1', '2020-05-14 12:38:43', 1),
(502, 56, 4, 2, '60000.00', '::1', '2020-05-14 03:06:16', 1),
(503, 56, 4, 4, '120000.00', '::1', '2020-05-14 03:08:57', 1),
(504, 56, 4, 1, '30000.00', '::1', '2020-05-14 03:22:35', 1),
(505, 56, 4, 1, '30000.00', '::1', '2020-05-14 04:37:43', 1),
(506, 56, 2, 1, '10000.00', '::1', '2020-05-14 04:39:02', 1),
(507, 56, 6, 1, '1200.00', '::1', '2020-05-14 04:51:29', 1),
(508, 56, 2, 4, '40000.00', '::1', '2020-05-14 04:54:29', 1),
(509, 56, 5, 1, '12000.00', '::1', '2020-05-12 00:00:00', 1),
(510, 56, 5, 1, '12000.00', '::1', '2020-05-22 06:31:12', 1),
(511, 56, 7, 1, '15000.00', '::1', '2020-05-14 07:27:25', 1),
(512, 56, 7, 1, '15000.00', '::1', '2020-05-14 07:28:53', 1),
(513, 56, 7, 4, '42000.00', '::1', '2020-05-15 10:02:28', 1),
(514, 1, 5, 2, '19200.00', '', '2020-05-15 03:46:35', 1),
(515, 1, 5, 1, '9600.00', '::1', '2020-05-15 03:48:52', 1),
(516, 56, 5, 1, '9600.00', '::1', '2020-05-15 04:21:50', 1),
(517, 59, 10, 1, '32000.00', '::1', '2020-05-15 06:17:08', 1),
(518, 56, 2, 2, '20000.00', '::1', '2020-05-16 11:32:09', 1),
(519, 56, 2, 2, '20000.00', '::1', '2020-05-16 11:47:20', 1),
(520, 56, 2, 1, '10000.00', '::1', '2020-05-16 01:09:53', 1),
(521, 56, 5, 1, '9600.00', '::1', '2020-05-16 01:13:58', 1),
(522, 56, 5, 1, '9600.00', '::1', '2020-05-16 01:14:18', 1),
(523, 56, 5, 1, '9600.00', '::1', '2020-05-16 01:17:40', 1),
(524, 56, 31, 1, '200.00', '::1', '2020-05-16 01:22:01', 1),
(525, 56, 31, 1, '200.00', '::1', '2020-05-16 01:22:55', 1),
(526, 56, 2, 1, '10000.00', '::1', '2020-05-16 01:32:29', 1),
(527, 56, 31, 1, '200.00', '::1', '2020-05-16 02:19:03', 1),
(528, 0, 2, 1, '10000.00', '::1', '2020-05-16 02:29:15', 1),
(529, 56, 31, 1, '200.00', '::1', '2020-05-16 02:30:46', 1),
(530, 0, 2, 1, '10000.00', '::1', '2020-05-16 02:30:52', 1),
(531, 56, 5, 1, '9600.00', '::1', '2020-05-16 02:43:01', 1),
(532, 56, 2, 5, '50000.00', '::1', '2020-05-16 03:18:48', 1),
(533, 56, 6, 1, '1200.00', '::1', '2020-05-18 09:19:22', 1),
(534, 56, 6, 1, '1200.00', '::1', '2020-05-18 10:09:27', 1),
(535, 56, 5, 1, '9600.00', '::1', '2020-05-18 10:19:03', 1),
(536, 56, 6, 1, '1200.00', '::1', '2020-05-18 10:34:07', 1),
(537, 56, 6, 1, '1200.00', '::1', '2020-05-18 10:50:27', 1),
(538, 56, 10, 1, '32000.00', '::1', '2020-05-18 10:52:57', 1),
(539, 56, 31, 1, '200.00', '::1', '2020-05-18 11:13:17', 1),
(540, 56, 31, 1, '200.00', '::1', '2020-05-18 11:24:13', 1),
(541, 56, 13, 1, '1250.00', '::1', '2020-05-18 11:28:21', 1),
(542, 56, 10, 1, '32000.00', '::1', '2020-05-18 11:36:33', 1),
(543, 56, 7, 1, '10500.00', '::1', '2020-05-18 11:46:11', 1),
(544, 56, 10, 1, '32000.00', '::1', '2020-05-18 11:48:48', 1),
(545, 56, 10, 1, '32000.00', '::1', '2020-05-18 11:49:29', 1),
(546, 56, 10, 1, '32000.00', '::1', '2020-05-18 11:50:32', 1),
(547, 56, 5, 1, '9600.00', '::1', '2020-05-18 02:02:38', 1),
(548, 56, 7, 1, '10500.00', '::1', '2020-05-18 02:04:22', 1),
(549, 56, 7, 1, '10500.00', '::1', '2020-05-18 02:06:23', 1),
(550, 56, 7, 1, '10500.00', '::1', '2020-05-18 02:08:18', 1),
(551, 56, 31, 1, '200.00', '::1', '2020-05-18 02:11:18', 1),
(552, 1, 2, 1, '10000.00', '::1', '2020-05-18 02:55:04', 1),
(553, 56, 2, 1, '10000.00', '::1', '2020-05-18 02:55:51', 1),
(554, 56, 2, 1, '10000.00', '::1', '2020-05-18 04:24:42', 1),
(555, 56, 10, 1, '32000.00', '::1', '2020-05-18 04:35:11', 1),
(556, 56, 4, 1, '29000.00', '::1', '2020-05-18 05:16:15', 1),
(557, 56, 2, 1, '10000.00', '::1', '2020-05-18 05:40:18', 1),
(558, 56, 10, 1, '32000.00', '::1', '2020-05-18 06:02:40', 1),
(559, 56, 2, 1, '10000.00', '::1', '2020-05-18 06:03:07', 1),
(560, 56, 4, 1, '29000.00', '::1', '2020-05-18 06:25:03', 1),
(561, 56, 10, 7, '224000.00', '::1', '2020-05-18 06:26:23', 1),
(562, 56, 5, 1, '9600.00', '::1', '2020-05-19 09:15:37', 1),
(563, 56, 10, 1, '32000.00', '::1', '2020-05-19 09:18:40', 1),
(564, 1, 4, 1, '30000.00', '::1', '2020-05-19 06:18:53', 1),
(565, 56, 4, 2, '58000.00', '::1', '2020-05-19 06:19:06', 1),
(566, 0, 4, 1, '30000.00', '::1', '2020-05-19 06:31:38', 1),
(567, 0, 4, 1, '30000.00', '::1', '2020-05-19 06:32:25', 1),
(568, 56, 2, 1, '10000.00', '::1', '2020-05-19 06:33:01', 1),
(569, 0, 2, 1, '10000.00', '::1', '2020-05-19 06:33:10', 1),
(570, 56, 2, 1, '10000.00', '::1', '2020-05-19 06:33:44', 1),
(571, 0, 2, 1, '10000.00', '::1', '2020-05-19 06:34:25', 1),
(572, 59, 2, 1, '10000.00', '::1', '2020-05-19 06:35:17', 1),
(573, 57, 2, 1, '10000.00', '::1', '2020-05-19 06:40:59', 1),
(574, 57, 2, 1, '10000.00', '::1', '2020-05-19 06:41:24', 0),
(575, 54, 2, 1, '10000.00', '::1', '2020-05-19 06:42:08', 0),
(576, 54, 4, 1, '30000.00', '::1', '2020-05-19 06:45:26', 0),
(577, 56, 2, 1, '10000.00', '::1', '2020-05-19 08:36:08', 1),
(578, 0, 4, 1, '30000.00', '::1', '2020-05-19 08:37:24', 1),
(579, 56, 3, 3, '135000.00', '::1', '2020-05-20 07:11:56', 1),
(580, 56, 2, 1, '10000.00', '::1', '2020-05-20 07:12:06', 1),
(581, 56, 2, 1, '10000.00', '::1', '2020-05-20 07:55:14', 1),
(582, 0, 2, 1, '10000.00', '::1', '2020-05-20 08:42:46', 1),
(583, 59, 3, 1, '45000.00', '::1', '2020-05-20 10:12:49', 1),
(584, 56, 4, 5, '145000.00', '::1', '2020-05-22 03:17:23', 1),
(585, 0, 3, 1, '45000.00', '::1', '2020-05-22 03:17:29', 1),
(586, 56, 4, 1, '29000.00', '::1', '2020-05-22 03:27:43', 1),
(587, 0, 4, 1, '29000.00', '::1', '2020-05-22 03:32:58', 1),
(588, 56, 5, 1, '9600.00', '::1', '2020-05-22 03:34:00', 1),
(589, 56, 13, 1, '1250.00', '::1', '2020-05-22 10:13:02', 1),
(590, 56, 2, 1, '10000.00', '::1', '2020-05-22 10:49:09', 1),
(591, 56, 5, 1, '9600.00', '::1', '2020-05-22 11:02:10', 0),
(592, 56, 4, 1, '29000.00', '::1', '2020-05-22 11:04:43', 0),
(593, 56, 3, 1, '45000.00', '::1', '2020-05-22 11:04:51', 0),
(594, 2, 3, 1, '45000.00', '::1', '2020-05-23 09:35:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `icon` mediumtext NOT NULL,
  `is_header` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `banner_id` (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `banner_id`, `name`, `slug`, `icon`, `is_header`, `is_active`, `is_deleted`) VALUES
(1, 1, 'clothing', 'clothing', 'fa-shopping-bag', 1, 1, 0),
(2, 2, 'electronics', 'electronics-shop', 'fa-laptop', 1, 1, 0),
(3, 1, 'jewellery', 'jewellery', 'fa-diamond', 1, 1, 0),
(4, 4, 'watches', 'watches', 'fa-clock-o', 1, 1, 0),
(5, 3, 'home and garden', 'homeandgarden', 'fa-envira', 1, 1, 0),
(6, 2, 'sport', 'sport', 'fa-futbol-o', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `is_active`, `is_deleted`) VALUES
(1, 'North and Middle Andaman', 32, 1, 0),
(2, 'South Andaman', 32, 1, 0),
(3, 'Nicobar', 32, 1, 0),
(4, 'Adilabad', 1, 1, 0),
(5, 'Anantapur', 1, 1, 0),
(6, 'Chittoor', 1, 1, 0),
(7, 'East Godavari', 1, 1, 0),
(8, 'Guntur', 1, 1, 0),
(9, 'Hyderabad', 1, 1, 0),
(10, 'Kadapa', 1, 1, 0),
(11, 'Karimnagar', 1, 1, 0),
(12, 'Khammam', 1, 1, 0),
(13, 'Krishna', 1, 1, 0),
(14, 'Kurnool', 1, 1, 0),
(15, 'Mahbubnagar', 1, 1, 0),
(16, 'Medak', 1, 1, 0),
(17, 'Nalgonda', 1, 1, 0),
(18, 'Nellore', 1, 1, 0),
(19, 'Nizamabad', 1, 1, 0),
(20, 'Prakasam', 1, 1, 0),
(21, 'Rangareddi', 1, 1, 0),
(22, 'Srikakulam', 1, 1, 0),
(23, 'Vishakhapatnam', 1, 1, 0),
(24, 'Vizianagaram', 1, 1, 0),
(25, 'Warangal', 1, 1, 0),
(26, 'West Godavari', 1, 1, 0),
(27, 'Anjaw', 3, 1, 0),
(28, 'Changlang', 3, 1, 0),
(29, 'East Kameng', 3, 1, 0),
(30, 'Lohit', 3, 1, 0),
(31, 'Lower Subansiri', 3, 1, 0),
(32, 'Papum Pare', 3, 1, 0),
(33, 'Tirap', 3, 1, 0),
(34, 'Dibang Valley', 3, 1, 0),
(35, 'Upper Subansiri', 3, 1, 0),
(36, 'West Kameng', 3, 1, 0),
(37, 'Barpeta', 2, 1, 0),
(38, 'Bongaigaon', 2, 1, 0),
(39, 'Cachar', 2, 1, 0),
(40, 'Darrang', 2, 1, 0),
(41, 'Dhemaji', 2, 1, 0),
(42, 'Dhubri', 2, 1, 0),
(43, 'Dibrugarh', 2, 1, 0),
(44, 'Goalpara', 2, 1, 0),
(45, 'Golaghat', 2, 1, 0),
(46, 'Hailakandi', 2, 1, 0),
(47, 'Jorhat', 2, 1, 0),
(48, 'Karbi Anglong', 2, 1, 0),
(49, 'Karimganj', 2, 1, 0),
(50, 'Kokrajhar', 2, 1, 0),
(51, 'Lakhimpur', 2, 1, 0),
(52, 'Marigaon', 2, 1, 0),
(53, 'Nagaon', 2, 1, 0),
(54, 'Nalbari', 2, 1, 0),
(55, 'North Cachar Hills', 2, 1, 0),
(56, 'Sibsagar', 2, 1, 0),
(57, 'Sonitpur', 2, 1, 0),
(58, 'Tinsukia', 2, 1, 0),
(59, 'Araria', 4, 1, 0),
(60, 'Aurangabad', 4, 1, 0),
(61, 'Banka', 4, 1, 0),
(62, 'Begusarai', 4, 1, 0),
(63, 'Bhagalpur', 4, 1, 0),
(64, 'Bhojpur', 4, 1, 0),
(65, 'Buxar', 4, 1, 0),
(66, 'Darbhanga', 4, 1, 0),
(67, 'Purba Champaran', 4, 1, 0),
(68, 'Gaya', 4, 1, 0),
(69, 'Gopalganj', 4, 1, 0),
(70, 'Jamui', 4, 1, 0),
(71, 'Jehanabad', 4, 1, 0),
(72, 'Khagaria', 4, 1, 0),
(73, 'Kishanganj', 4, 1, 0),
(74, 'Kaimur', 4, 1, 0),
(75, 'Katihar', 4, 1, 0),
(76, 'Lakhisarai', 4, 1, 0),
(77, 'Madhubani', 4, 1, 0),
(78, 'Munger', 4, 1, 0),
(79, 'Madhepura', 4, 1, 0),
(80, 'Muzaffarpur', 4, 1, 0),
(81, 'Nalanda', 4, 1, 0),
(82, 'Nawada', 4, 1, 0),
(83, 'Patna', 4, 1, 0),
(84, 'Purnia', 4, 1, 0),
(85, 'Rohtas', 4, 1, 0),
(86, 'Saharsa', 4, 1, 0),
(87, 'Samastipur', 4, 1, 0),
(88, 'Sheohar', 4, 1, 0),
(89, 'Sheikhpura', 4, 1, 0),
(90, 'Saran', 4, 1, 0),
(91, 'Sitamarhi', 4, 1, 0),
(92, 'Supaul', 4, 1, 0),
(93, 'Siwan', 4, 1, 0),
(94, 'Vaishali', 4, 1, 0),
(95, 'Pashchim Champaran', 4, 1, 0),
(96, 'Bastar', 36, 1, 0),
(97, 'Bilaspur', 36, 1, 0),
(98, 'Dantewada', 36, 1, 0),
(99, 'Dhamtari', 36, 1, 0),
(100, 'Durg', 36, 1, 0),
(101, 'Jashpur', 36, 1, 0),
(102, 'Janjgir-Champa', 36, 1, 0),
(103, 'Korba', 36, 1, 0),
(104, 'Koriya', 36, 1, 0),
(105, 'Kanker', 36, 1, 0),
(106, 'Kawardha', 36, 1, 0),
(107, 'Mahasamund', 36, 1, 0),
(108, 'Raigarh', 36, 1, 0),
(109, 'Rajnandgaon', 36, 1, 0),
(110, 'Raipur', 36, 1, 0),
(111, 'Surguja', 36, 1, 0),
(112, 'Diu', 29, 1, 0),
(113, 'Daman', 29, 1, 0),
(114, 'Central Delhi', 25, 1, 0),
(115, 'East Delhi', 25, 1, 0),
(116, 'New Delhi', 25, 1, 0),
(117, 'North Delhi', 25, 1, 0),
(118, 'North East Delhi', 25, 1, 0),
(119, 'North West Delhi', 25, 1, 0),
(120, 'South Delhi', 25, 1, 0),
(121, 'South West Delhi', 25, 1, 0),
(122, 'West Delhi', 25, 1, 0),
(123, 'North Goa', 26, 1, 0),
(124, 'South Goa', 26, 1, 0),
(125, 'Ahmedabad', 5, 1, 0),
(126, 'Amreli District', 5, 1, 0),
(127, 'Anand', 5, 1, 0),
(128, 'Banaskantha', 5, 1, 0),
(129, 'Bharuch', 5, 1, 0),
(130, 'Bhavnagar', 5, 1, 0),
(131, 'Dahod', 5, 1, 0),
(132, 'The Dangs', 5, 1, 0),
(133, 'Gandhinagar', 5, 1, 0),
(134, 'Jamnagar', 5, 1, 0),
(135, 'Junagadh', 5, 1, 0),
(136, 'Kutch', 5, 1, 0),
(137, 'Kheda', 5, 1, 0),
(138, 'Mehsana', 5, 1, 0),
(139, 'Narmada', 5, 1, 0),
(140, 'Navsari', 5, 1, 0),
(141, 'Patan', 5, 1, 0),
(142, 'Panchmahal', 5, 1, 0),
(143, 'Porbandar', 5, 1, 0),
(144, 'Rajkot', 5, 1, 0),
(145, 'Sabarkantha', 5, 1, 0),
(146, 'Surendranagar', 5, 1, 0),
(147, 'Surat', 5, 1, 0),
(148, 'Vadodara', 5, 1, 0),
(149, 'Valsad', 5, 1, 0),
(150, 'Ambala', 6, 1, 0),
(151, 'Bhiwani', 6, 1, 0),
(152, 'Faridabad', 6, 1, 0),
(153, 'Fatehabad', 6, 1, 0),
(154, 'Gurgaon', 6, 1, 0),
(155, 'Hissar', 6, 1, 0),
(156, 'Jhajjar', 6, 1, 0),
(157, 'Jind', 6, 1, 0),
(158, 'Karnal', 6, 1, 0),
(159, 'Kaithal', 6, 1, 0),
(160, 'Kurukshetra', 6, 1, 0),
(161, 'Mahendragarh', 6, 1, 0),
(162, 'Mewat', 6, 1, 0),
(163, 'Panchkula', 6, 1, 0),
(164, 'Panipat', 6, 1, 0),
(165, 'Rewari', 6, 1, 0),
(166, 'Rohtak', 6, 1, 0),
(167, 'Sirsa', 6, 1, 0),
(168, 'Sonepat', 6, 1, 0),
(169, 'Yamuna Nagar', 6, 1, 0),
(170, 'Palwal', 6, 1, 0),
(171, 'Bilaspur', 7, 1, 0),
(172, 'Chamba', 7, 1, 0),
(173, 'Hamirpur', 7, 1, 0),
(174, 'Kangra', 7, 1, 0),
(175, 'Kinnaur', 7, 1, 0),
(176, 'Kulu', 7, 1, 0),
(177, 'Lahaul and Spiti', 7, 1, 0),
(178, 'Mandi', 7, 1, 0),
(179, 'Shimla', 7, 1, 0),
(180, 'Sirmaur', 7, 1, 0),
(181, 'Solan', 7, 1, 0),
(182, 'Una', 7, 1, 0),
(183, 'Anantnag', 8, 1, 0),
(184, 'Badgam', 8, 1, 0),
(185, 'Bandipore', 8, 1, 0),
(186, 'Baramula', 8, 1, 0),
(187, 'Doda', 8, 1, 0),
(188, 'Jammu', 8, 1, 0),
(189, 'Kargil', 8, 1, 0),
(190, 'Kathua', 8, 1, 0),
(191, 'Kupwara', 8, 1, 0),
(192, 'Leh', 8, 1, 0),
(193, 'Poonch', 8, 1, 0),
(194, 'Pulwama', 8, 1, 0),
(195, 'Rajauri', 8, 1, 0),
(196, 'Srinagar', 8, 1, 0),
(197, 'Samba', 8, 1, 0),
(198, 'Udhampur', 8, 1, 0),
(199, 'Bokaro', 34, 1, 0),
(200, 'Chatra', 34, 1, 0),
(201, 'Deoghar', 34, 1, 0),
(202, 'Dhanbad', 34, 1, 0),
(203, 'Dumka', 34, 1, 0),
(204, 'Purba Singhbhum', 34, 1, 0),
(205, 'Garhwa', 34, 1, 0),
(206, 'Giridih', 34, 1, 0),
(207, 'Godda', 34, 1, 0),
(208, 'Gumla', 34, 1, 0),
(209, 'Hazaribagh', 34, 1, 0),
(210, 'Koderma', 34, 1, 0),
(211, 'Lohardaga', 34, 1, 0),
(212, 'Pakur', 34, 1, 0),
(213, 'Palamu', 34, 1, 0),
(214, 'Ranchi', 34, 1, 0),
(215, 'Sahibganj', 34, 1, 0),
(216, 'Seraikela and Kharsawan', 34, 1, 0),
(217, 'Pashchim Singhbhum', 34, 1, 0),
(218, 'Ramgarh', 34, 1, 0),
(219, 'Bidar', 9, 1, 0),
(220, 'Belgaum', 9, 1, 0),
(221, 'Bijapur', 9, 1, 0),
(222, 'Bagalkot', 9, 1, 0),
(223, 'Bellary', 9, 1, 0),
(224, 'Bangalore Rural District', 9, 1, 0),
(225, 'Bangalore Urban District', 9, 1, 0),
(226, 'Chamarajnagar', 9, 1, 0),
(227, 'Chikmagalur', 9, 1, 0),
(228, 'Chitradurga', 9, 1, 0),
(229, 'Davanagere', 9, 1, 0),
(230, 'Dharwad', 9, 1, 0),
(231, 'Dakshina Kannada', 9, 1, 0),
(232, 'Gadag', 9, 1, 0),
(233, 'Gulbarga', 9, 1, 0),
(234, 'Hassan', 9, 1, 0),
(235, 'Haveri District', 9, 1, 0),
(236, 'Kodagu', 9, 1, 0),
(237, 'Kolar', 9, 1, 0),
(238, 'Koppal', 9, 1, 0),
(239, 'Mandya', 9, 1, 0),
(240, 'Mysore', 9, 1, 0),
(241, 'Raichur', 9, 1, 0),
(242, 'Shimoga', 9, 1, 0),
(243, 'Tumkur', 9, 1, 0),
(244, 'Udupi', 9, 1, 0),
(245, 'Uttara Kannada', 9, 1, 0),
(246, 'Ramanagara', 9, 1, 0),
(247, 'Chikballapur', 9, 1, 0),
(248, 'Yadagiri', 9, 1, 0),
(249, 'Alappuzha', 10, 1, 0),
(250, 'Ernakulam', 10, 1, 0),
(251, 'Idukki', 10, 1, 0),
(252, 'Kollam', 10, 1, 0),
(253, 'Kannur', 10, 1, 0),
(254, 'Kasaragod', 10, 1, 0),
(255, 'Kottayam', 10, 1, 0),
(256, 'Kozhikode', 10, 1, 0),
(257, 'Malappuram', 10, 1, 0),
(258, 'Palakkad', 10, 1, 0),
(259, 'Pathanamthitta', 10, 1, 0),
(260, 'Thrissur', 10, 1, 0),
(261, 'Thiruvananthapuram', 10, 1, 0),
(262, 'Wayanad', 10, 1, 0),
(263, 'Alirajpur', 11, 1, 0),
(264, 'Anuppur', 11, 1, 0),
(265, 'Ashok Nagar', 11, 1, 0),
(266, 'Balaghat', 11, 1, 0),
(267, 'Barwani', 11, 1, 0),
(268, 'Betul', 11, 1, 0),
(269, 'Bhind', 11, 1, 0),
(270, 'Bhopal', 11, 1, 0),
(271, 'Burhanpur', 11, 1, 0),
(272, 'Chhatarpur', 11, 1, 0),
(273, 'Chhindwara', 11, 1, 0),
(274, 'Damoh', 11, 1, 0),
(275, 'Datia', 11, 1, 0),
(276, 'Dewas', 11, 1, 0),
(277, 'Dhar', 11, 1, 0),
(278, 'Dindori', 11, 1, 0),
(279, 'Guna', 11, 1, 0),
(280, 'Gwalior', 11, 1, 0),
(281, 'Harda', 11, 1, 0),
(282, 'Hoshangabad', 11, 1, 0),
(283, 'Indore', 11, 1, 0),
(284, 'Jabalpur', 11, 1, 0),
(285, 'Jhabua', 11, 1, 0),
(286, 'Katni', 11, 1, 0),
(287, 'Khandwa', 11, 1, 0),
(288, 'Khargone', 11, 1, 0),
(289, 'Mandla', 11, 1, 0),
(290, 'Mandsaur', 11, 1, 0),
(291, 'Morena', 11, 1, 0),
(292, 'Narsinghpur', 11, 1, 0),
(293, 'Neemuch', 11, 1, 0),
(294, 'Panna', 11, 1, 0),
(295, 'Rewa', 11, 1, 0),
(296, 'Rajgarh', 11, 1, 0),
(297, 'Ratlam', 11, 1, 0),
(298, 'Raisen', 11, 1, 0),
(299, 'Sagar', 11, 1, 0),
(300, 'Satna', 11, 1, 0),
(301, 'Sehore', 11, 1, 0),
(302, 'Seoni', 11, 1, 0),
(303, 'Shahdol', 11, 1, 0),
(304, 'Shajapur', 11, 1, 0),
(305, 'Sheopur', 11, 1, 0),
(306, 'Shivpuri', 11, 1, 0),
(307, 'Sidhi', 11, 1, 0),
(308, 'Singrauli', 11, 1, 0),
(309, 'Tikamgarh', 11, 1, 0),
(310, 'Ujjain', 11, 1, 0),
(311, 'Umaria', 11, 1, 0),
(312, 'Vidisha', 11, 1, 0),
(313, 'Ahmednagar', 12, 1, 0),
(314, 'Akola', 12, 1, 0),
(315, 'Amrawati', 12, 1, 0),
(316, 'Aurangabad', 12, 1, 0),
(317, 'Bhandara', 12, 1, 0),
(318, 'Beed', 12, 1, 0),
(319, 'Buldhana', 12, 1, 0),
(320, 'Chandrapur', 12, 1, 0),
(321, 'Dhule', 12, 1, 0),
(322, 'Gadchiroli', 12, 1, 0),
(323, 'Gondiya', 12, 1, 0),
(324, 'Hingoli', 12, 1, 0),
(325, 'Jalgaon', 12, 1, 0),
(326, 'Jalna', 12, 1, 0),
(327, 'Kolhapur', 12, 1, 0),
(328, 'Latur', 12, 1, 0),
(329, 'Mumbai City', 12, 1, 0),
(330, 'Mumbai suburban', 12, 1, 0),
(331, 'Nandurbar', 12, 1, 0),
(332, 'Nanded', 12, 1, 0),
(333, 'Nagpur', 12, 1, 0),
(334, 'Nashik', 12, 1, 0),
(335, 'Osmanabad', 12, 1, 0),
(336, 'Parbhani', 12, 1, 0),
(337, 'Pune', 12, 1, 0),
(338, 'Raigad', 12, 1, 0),
(339, 'Ratnagiri', 12, 1, 0),
(340, 'Sindhudurg', 12, 1, 0),
(341, 'Sangli', 12, 1, 0),
(342, 'Solapur', 12, 1, 0),
(343, 'Satara', 12, 1, 0),
(344, 'Thane', 12, 1, 0),
(345, 'Wardha', 12, 1, 0),
(346, 'Washim', 12, 1, 0),
(347, 'Yavatmal', 12, 1, 0),
(348, 'Bishnupur', 13, 1, 0),
(349, 'Churachandpur', 13, 1, 0),
(350, 'Chandel', 13, 1, 0),
(351, 'Imphal East', 13, 1, 0),
(352, 'Senapati', 13, 1, 0),
(353, 'Tamenglong', 13, 1, 0),
(354, 'Thoubal', 13, 1, 0),
(355, 'Ukhrul', 13, 1, 0),
(356, 'Imphal West', 13, 1, 0),
(357, 'East Garo Hills', 14, 1, 0),
(358, 'East Khasi Hills', 14, 1, 0),
(359, 'Jaintia Hills', 14, 1, 0),
(360, 'Ri-Bhoi', 14, 1, 0),
(361, 'South Garo Hills', 14, 1, 0),
(362, 'West Garo Hills', 14, 1, 0),
(363, 'West Khasi Hills', 14, 1, 0),
(364, 'Aizawl', 15, 1, 0),
(365, 'Champhai', 15, 1, 0),
(366, 'Kolasib', 15, 1, 0),
(367, 'Lawngtlai', 15, 1, 0),
(368, 'Lunglei', 15, 1, 0),
(369, 'Mamit', 15, 1, 0),
(370, 'Saiha', 15, 1, 0),
(371, 'Serchhip', 15, 1, 0),
(372, 'Dimapur', 16, 1, 0),
(373, 'Kohima', 16, 1, 0),
(374, 'Mokokchung', 16, 1, 0),
(375, 'Mon', 16, 1, 0),
(376, 'Phek', 16, 1, 0),
(377, 'Tuensang', 16, 1, 0),
(378, 'Wokha', 16, 1, 0),
(379, 'Zunheboto', 16, 1, 0),
(380, 'Angul', 17, 1, 0),
(381, 'Boudh', 17, 1, 0),
(382, 'Bhadrak', 17, 1, 0),
(383, 'Bolangir', 17, 1, 0),
(384, 'Bargarh', 17, 1, 0),
(385, 'Baleswar', 17, 1, 0),
(386, 'Cuttack', 17, 1, 0),
(387, 'Debagarh', 17, 1, 0),
(388, 'Dhenkanal', 17, 1, 0),
(389, 'Ganjam', 17, 1, 0),
(390, 'Gajapati', 17, 1, 0),
(391, 'Jharsuguda', 17, 1, 0),
(392, 'Jajapur', 17, 1, 0),
(393, 'Jagatsinghpur', 17, 1, 0),
(394, 'Khordha', 17, 1, 0),
(395, 'Kendujhar', 17, 1, 0),
(396, 'Kalahandi', 17, 1, 0),
(397, 'Kandhamal', 17, 1, 0),
(398, 'Koraput', 17, 1, 0),
(399, 'Kendrapara', 17, 1, 0),
(400, 'Malkangiri', 17, 1, 0),
(401, 'Mayurbhanj', 17, 1, 0),
(402, 'Nabarangpur', 17, 1, 0),
(403, 'Nuapada', 17, 1, 0),
(404, 'Nayagarh', 17, 1, 0),
(405, 'Puri', 17, 1, 0),
(406, 'Rayagada', 17, 1, 0),
(407, 'Sambalpur', 17, 1, 0),
(408, 'Subarnapur', 17, 1, 0),
(409, 'Sundargarh', 17, 1, 0),
(410, 'Karaikal', 27, 1, 0),
(411, 'Mahe', 27, 1, 0),
(412, 'Puducherry', 27, 1, 0),
(413, 'Yanam', 27, 1, 0),
(414, 'Amritsar', 18, 1, 0),
(415, 'Bathinda', 18, 1, 0),
(416, 'Firozpur', 18, 1, 0),
(417, 'Faridkot', 18, 1, 0),
(418, 'Fatehgarh Sahib', 18, 1, 0),
(419, 'Gurdaspur', 18, 1, 0),
(420, 'Hoshiarpur', 18, 1, 0),
(421, 'Jalandhar', 18, 1, 0),
(422, 'Kapurthala', 18, 1, 0),
(423, 'Ludhiana', 18, 1, 0),
(424, 'Mansa', 18, 1, 0),
(425, 'Moga', 18, 1, 0),
(426, 'Mukatsar', 18, 1, 0),
(427, 'Nawan Shehar', 18, 1, 0),
(428, 'Patiala', 18, 1, 0),
(429, 'Rupnagar', 18, 1, 0),
(430, 'Sangrur', 18, 1, 0),
(431, 'Ajmer', 19, 1, 0),
(432, 'Alwar', 19, 1, 0),
(433, 'Bikaner', 19, 1, 0),
(434, 'Barmer', 19, 1, 0),
(435, 'Banswara', 19, 1, 0),
(436, 'Bharatpur', 19, 1, 0),
(437, 'Baran', 19, 1, 0),
(438, 'Bundi', 19, 1, 0),
(439, 'Bhilwara', 19, 1, 0),
(440, 'Churu', 19, 1, 0),
(441, 'Chittorgarh', 19, 1, 0),
(442, 'Dausa', 19, 1, 0),
(443, 'Dholpur', 19, 1, 0),
(444, 'Dungapur', 19, 1, 0),
(445, 'Ganganagar', 19, 1, 0),
(446, 'Hanumangarh', 19, 1, 0),
(447, 'Juhnjhunun', 19, 1, 0),
(448, 'Jalore', 19, 1, 0),
(449, 'Jodhpur', 19, 1, 0),
(450, 'Jaipur', 19, 1, 0),
(451, 'Jaisalmer', 19, 1, 0),
(452, 'Jhalawar', 19, 1, 0),
(453, 'Karauli', 19, 1, 0),
(454, 'Kota', 19, 1, 0),
(455, 'Nagaur', 19, 1, 0),
(456, 'Pali', 19, 1, 0),
(457, 'Pratapgarh', 19, 1, 0),
(458, 'Rajsamand', 19, 1, 0),
(459, 'Sikar', 19, 1, 0),
(460, 'Sawai Madhopur', 19, 1, 0),
(461, 'Sirohi', 19, 1, 0),
(462, 'Tonk', 19, 1, 0),
(463, 'Udaipur', 19, 1, 0),
(464, 'East Sikkim', 20, 1, 0),
(465, 'North Sikkim', 20, 1, 0),
(466, 'South Sikkim', 20, 1, 0),
(467, 'West Sikkim', 20, 1, 0),
(468, 'Ariyalur', 21, 1, 0),
(469, 'Chennai', 21, 1, 0),
(470, 'Coimbatore', 21, 1, 0),
(471, 'Cuddalore', 21, 1, 0),
(472, 'Dharmapuri', 21, 1, 0),
(473, 'Dindigul', 21, 1, 0),
(474, 'Erode', 21, 1, 0),
(475, 'Kanchipuram', 21, 1, 0),
(476, 'Kanyakumari', 21, 1, 0),
(477, 'Karur', 21, 1, 0),
(478, 'Madurai', 21, 1, 0),
(479, 'Nagapattinam', 21, 1, 0),
(480, 'The Nilgiris', 21, 1, 0),
(481, 'Namakkal', 21, 1, 0),
(482, 'Perambalur', 21, 1, 0),
(483, 'Pudukkottai', 21, 1, 0),
(484, 'Ramanathapuram', 21, 1, 0),
(485, 'Salem', 21, 1, 0),
(486, 'Sivagangai', 21, 1, 0),
(487, 'Tiruppur', 21, 1, 0),
(488, 'Tiruchirappalli', 21, 1, 0),
(489, 'Theni', 21, 1, 0),
(490, 'Tirunelveli', 21, 1, 0),
(491, 'Thanjavur', 21, 1, 0),
(492, 'Thoothukudi', 21, 1, 0),
(493, 'Thiruvallur', 21, 1, 0),
(494, 'Thiruvarur', 21, 1, 0),
(495, 'Tiruvannamalai', 21, 1, 0),
(496, 'Vellore', 21, 1, 0),
(497, 'Villupuram', 21, 1, 0),
(498, 'Dhalai', 22, 1, 0),
(499, 'North Tripura', 22, 1, 0),
(500, 'South Tripura', 22, 1, 0),
(501, 'West Tripura', 22, 1, 0),
(502, 'Almora', 33, 1, 0),
(503, 'Bageshwar', 33, 1, 0),
(504, 'Chamoli', 33, 1, 0),
(505, 'Champawat', 33, 1, 0),
(506, 'Dehradun', 33, 1, 0),
(507, 'Haridwar', 33, 1, 0),
(508, 'Nainital', 33, 1, 0),
(509, 'Pauri Garhwal', 33, 1, 0),
(510, 'Pithoragharh', 33, 1, 0),
(511, 'Rudraprayag', 33, 1, 0),
(512, 'Tehri Garhwal', 33, 1, 0),
(513, 'Udham Singh Nagar', 33, 1, 0),
(514, 'Uttarkashi', 33, 1, 0),
(515, 'Agra', 23, 1, 0),
(516, 'Allahabad', 23, 1, 0),
(517, 'Aligarh', 23, 1, 0),
(518, 'Ambedkar Nagar', 23, 1, 0),
(519, 'Auraiya', 23, 1, 0),
(520, 'Azamgarh', 23, 1, 0),
(521, 'Barabanki', 23, 1, 0),
(522, 'Badaun', 23, 1, 0),
(523, 'Bagpat', 23, 1, 0),
(524, 'Bahraich', 23, 1, 0),
(525, 'Bijnor', 23, 1, 0),
(526, 'Ballia', 23, 1, 0),
(527, 'Banda', 23, 1, 0),
(528, 'Balrampur', 23, 1, 0),
(529, 'Bareilly', 23, 1, 0),
(530, 'Basti', 23, 1, 0),
(531, 'Bulandshahr', 23, 1, 0),
(532, 'Chandauli', 23, 1, 0),
(533, 'Chitrakoot', 23, 1, 0),
(534, 'Deoria', 23, 1, 0),
(535, 'Etah', 23, 1, 0),
(536, 'Kanshiram Nagar', 23, 1, 0),
(537, 'Etawah', 23, 1, 0),
(538, 'Firozabad', 23, 1, 0),
(539, 'Farrukhabad', 23, 1, 0),
(540, 'Fatehpur', 23, 1, 0),
(541, 'Faizabad', 23, 1, 0),
(542, 'Gautam Buddha Nagar', 23, 1, 0),
(543, 'Gonda', 23, 1, 0),
(544, 'Ghazipur', 23, 1, 0),
(545, 'Gorkakhpur', 23, 1, 0),
(546, 'Ghaziabad', 23, 1, 0),
(547, 'Hamirpur', 23, 1, 0),
(548, 'Hardoi', 23, 1, 0),
(549, 'Mahamaya Nagar', 23, 1, 0),
(550, 'Jhansi', 23, 1, 0),
(551, 'Jalaun', 23, 1, 0),
(552, 'Jyotiba Phule Nagar', 23, 1, 0),
(553, 'Jaunpur District', 23, 1, 0),
(554, 'Kanpur Dehat', 23, 1, 0),
(555, 'Kannauj', 23, 1, 0),
(556, 'Kanpur Nagar', 23, 1, 0),
(557, 'Kaushambi', 23, 1, 0),
(558, 'Kushinagar', 23, 1, 0),
(559, 'Lalitpur', 23, 1, 0),
(560, 'Lakhimpur Kheri', 23, 1, 0),
(561, 'Lucknow', 23, 1, 0),
(562, 'Mau', 23, 1, 0),
(563, 'Meerut', 23, 1, 0),
(564, 'Maharajganj', 23, 1, 0),
(565, 'Mahoba', 23, 1, 0),
(566, 'Mirzapur', 23, 1, 0),
(567, 'Moradabad', 23, 1, 0),
(568, 'Mainpuri', 23, 1, 0),
(569, 'Mathura', 23, 1, 0),
(570, 'Muzaffarnagar', 23, 1, 0),
(571, 'Pilibhit', 23, 1, 0),
(572, 'Pratapgarh', 23, 1, 0),
(573, 'Rampur', 23, 1, 0),
(574, 'Rae Bareli', 23, 1, 0),
(575, 'Saharanpur', 23, 1, 0),
(576, 'Sitapur', 23, 1, 0),
(577, 'Shahjahanpur', 23, 1, 0),
(578, 'Sant Kabir Nagar', 23, 1, 0),
(579, 'Siddharthnagar', 23, 1, 0),
(580, 'Sonbhadra', 23, 1, 0),
(581, 'Sant Ravidas Nagar', 23, 1, 0),
(582, 'Sultanpur', 23, 1, 0),
(583, 'Shravasti', 23, 1, 0),
(584, 'Unnao', 23, 1, 0),
(585, 'Varanasi', 23, 1, 0),
(586, 'Birbhum', 24, 1, 0),
(587, 'Bankura', 24, 1, 0),
(588, 'Bardhaman', 24, 1, 0),
(589, 'Darjeeling', 24, 1, 0),
(590, 'Dakshin Dinajpur', 24, 1, 0),
(591, 'Hooghly', 24, 1, 0),
(592, 'Howrah', 24, 1, 0),
(593, 'Jalpaiguri', 24, 1, 0),
(594, 'Cooch Behar', 24, 1, 0),
(595, 'Kolkata', 24, 1, 0),
(596, 'Malda', 24, 1, 0),
(597, 'Midnapore', 24, 1, 0),
(598, 'Murshidabad', 24, 1, 0),
(599, 'Nadia', 24, 1, 0),
(600, 'North 24 Parganas', 24, 1, 0),
(601, 'South 24 Parganas', 24, 1, 0),
(602, 'Purulia', 24, 1, 0),
(603, 'Uttar Dinajpur', 24, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `add_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `user_name`, `user_email`, `comment`, `add_date`, `is_deleted`) VALUES
(1, 2, 'patel', 'patel@mail.com', 'nice product', '2020-04-10 11:54:46', 0),
(2, 4, 'patel2', 'patel7@mail.com', 'product sdcss', '2020-04-08 11:54:46', 0),
(3, 1, 'patel', 'patel7@mail.com', 'product', '2020-04-10 11:54:46', 0),
(4, 3, 'patel', 'patel44@mail.com', 'product', '2020-04-01 11:54:46', 0),
(13, 4, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaaaaaaa', '2020-04-10 07:19:16', 0),
(16, 4, 'komalproject', 'kdc@narola.email', 'good products', '2020-04-11 10:33:01', 0),
(17, 7, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaa', '2020-04-11 10:45:30', 0),
(18, 3, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaa', '2020-04-11 11:46:56', 0),
(19, 5, 'komalproject', 'kdc@narola.email', 'gooooooooooood', '2020-04-11 11:51:15', 0),
(20, 5, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaaaaaaaa', '2020-04-11 11:55:43', 0),
(24, 1, 'aaa', 'kdc@narola.email', 'aaaaaaaaaaaa', '2020-04-11 03:19:34', 0),
(25, 3, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaa', '2020-04-13 11:42:25', 0),
(26, 4, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaa', '2020-04-13 06:38:42', 0),
(27, 4, 'komalproject', 'kdc@narola.email', 'ASD-scs=xcsc', '2020-04-13 06:39:14', 0),
(28, 11, 'komalproject', 'kdc@narola.email', 'goood products', '2020-04-14 09:46:14', 0),
(29, 2, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaaaa', '2020-04-14 10:13:37', 0),
(30, 2, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaaaaaaa', '2020-04-14 11:22:27', 0),
(31, 2, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaaaaaa', '2020-04-14 11:31:44', 0),
(32, 4, 'komalproject', 'kdc@narola.email', 'sasasaasasasa', '2020-04-15 10:03:58', 0),
(33, 2, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaaaaa', '2020-04-15 04:07:42', 0),
(34, 4, 'komalproject', 'kdc@narola.email', 'aaaaaaaaaaaa', '2020-04-22 12:14:56', 0),
(35, 4, 'asa', 'kdc@narola.email', 'aaaaaaaaaaaa', '2020-04-22 12:15:09', 0),
(36, 4, 'komalproject', 'komalkhalasi.13@gmail.com', 'addSDASDASAS', '2020-04-27 02:53:10', 0),
(37, 2, 'komalproject', 'komalkhalasi.13@gmail.com', 'adsadasdasdasds', '2020-04-27 03:28:38', 0),
(38, 4, 'sdfdfd', 'vxvx@dfdgddvf', 'sfdsfdfdfgdfgdf', '2020-04-30 06:01:18', 0),
(39, 4, 'ASAD', 'acaa@fsd', 'ASDASD', '2020-04-30 06:02:49', 0),
(40, 4, 'asdas', 'user@gmail.com', 'sass', '2020-04-30 06:03:50', 0),
(41, 2, 'komalproject', 'komalkhalasi.13@gmail.com', 'sczsfcdsfcdsfcsd', '2020-05-04 06:14:07', 0),
(42, 9, 'komalproject', 'komalkhalasi90@gmail.com', 'aXXXXXXXXXXXXXX', '2020-05-04 06:23:01', 0),
(43, 4, 'komalproject', 'kdc@narola.email', 'asdasdasfasfa', '2020-05-07 05:49:57', 0),
(44, 4, 'asdasdas', 'komalkhalasi90@gmail.com', 'asdasdasfsdsd', '2020-05-07 05:50:04', 0),
(45, 4, 'asfasf', 'komalkhalasi90@gmail.com', 'asdasdasfasfs', '2020-05-07 05:50:14', 0),
(46, 4, 'ADASDASD', 'komalkhalasi90@gmail.com', 'ASFASFSAF', '2020-05-07 05:50:24', 0),
(47, 4, 'komalproject', 'komalkhalasi90@gmail.com', 'ASASFSAFSFSF', '2020-05-07 05:50:32', 0),
(48, 4, 'adas', 'komalkhalasi90@gmail.com', 'asdasdasdasd', '2020-05-07 05:51:14', 0),
(49, 31, 'komal', 'kdc@narola.email', 'asdasdasdasdas', '2020-05-11 03:37:19', 0),
(50, 4, 'komal', 'kdc@narola.email', 'asfsfasfsfsdfsd', '2020-05-13 04:40:22', 0),
(51, 2, 'komal', 'komalkhalasi.13@gmail.com', 'test comments', '2020-05-16 02:39:34', 0),
(52, 2, 'ssss', 'komalkhalasi90@gmail.com', 'asdasdsadasd', '2020-05-16 02:40:48', 0),
(53, 2, 'cscsdf', 'komalkhalasi90@gmail.com', 'sdfsdfdsfsdfsdf', '2020-05-16 02:41:58', 0),
(54, 12, 'komal', 'kdc@narola.email', 'khjggfdfdddd', '2020-05-18 05:31:40', 0),
(55, 4, 'ssss', 'komalkhalasi90@gmail.com', 'test review', '2020-05-18 05:39:33', 0),
(56, 4, 'ssss', 'komalkhalasi90@gmail.com', 'fdhfghgfhgfh', '2020-05-22 11:07:35', 0),
(57, 5, 'komvh', 'kdc@narola.email', 'bvnbnbnbnvbnvb', '2020-05-22 11:25:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `countryCode` char(2) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `name` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `name`, `is_active`, `is_deleted`) VALUES
(1, 'AD', 'Andorra', 1, 0),
(2, 'AE', 'United Arab Emirates', 1, 0),
(3, 'AF', 'Afghanistan', 1, 0),
(4, 'AG', 'Antigua and Barbuda', 1, 0),
(5, 'AI', 'Anguilla', 1, 0),
(6, 'AL', 'Albania', 1, 0),
(7, 'AM', 'Armenia', 1, 0),
(8, 'AO', 'Angola', 1, 0),
(9, 'AQ', 'Antarctica', 1, 0),
(10, 'AR', 'Argentina', 1, 0),
(11, 'AS', 'American Samoa', 1, 0),
(12, 'AT', 'Austria', 1, 0),
(13, 'AU', 'Australia', 1, 0),
(14, 'AW', 'Aruba', 1, 0),
(15, 'AX', 'Ã…land', 1, 0),
(16, 'AZ', 'Azerbaijan', 1, 0),
(17, 'BA', 'Bosnia and Herzegovina', 1, 0),
(18, 'BB', 'Barbados', 1, 0),
(19, 'BD', 'Bangladesh', 1, 0),
(20, 'BE', 'Belgium', 1, 0),
(21, 'BF', 'Burkina Faso', 1, 0),
(22, 'BG', 'Bulgaria', 1, 0),
(23, 'BH', 'Bahrain', 1, 0),
(24, 'BI', 'Burundi', 1, 0),
(25, 'BJ', 'Benin', 1, 0),
(26, 'BL', 'Saint BarthÃ©lemy', 1, 0),
(27, 'BM', 'Bermuda', 1, 0),
(28, 'BN', 'Brunei', 1, 0),
(29, 'BO', 'Bolivia', 1, 0),
(30, 'BQ', 'Bonaire', 1, 0),
(31, 'BR', 'Brazil', 1, 0),
(32, 'BS', 'Bahamas', 1, 0),
(33, 'BT', 'Bhutan', 1, 0),
(34, 'BV', 'Bouvet Island', 1, 0),
(35, 'BW', 'Botswana', 1, 0),
(36, 'BY', 'Belarus', 1, 0),
(37, 'BZ', 'Belize', 1, 0),
(38, 'CA', 'Canada', 1, 0),
(39, 'CC', 'Cocos [Keeling] Islands', 1, 0),
(40, 'CD', 'Democratic Republic of the Congo', 1, 0),
(41, 'CF', 'Central African Republic', 1, 0),
(42, 'CG', 'Republic of the Congo', 1, 0),
(43, 'CH', 'Switzerland', 1, 0),
(44, 'CI', 'Ivory Coast', 1, 0),
(45, 'CK', 'Cook Islands', 1, 0),
(46, 'CL', 'Chile', 1, 0),
(47, 'CM', 'Cameroon', 1, 0),
(48, 'CN', 'China', 1, 0),
(49, 'CO', 'Colombia', 1, 0),
(50, 'CR', 'Costa Rica', 1, 0),
(51, 'CU', 'Cuba', 1, 0),
(52, 'CV', 'Cape Verde', 1, 0),
(53, 'CW', 'Curacao', 1, 0),
(54, 'CX', 'Christmas Island', 1, 0),
(55, 'CY', 'Cyprus', 1, 0),
(56, 'CZ', 'Czech Republic', 1, 0),
(57, 'DE', 'Germany', 1, 0),
(58, 'DJ', 'Djibouti', 1, 0),
(59, 'DK', 'Denmark', 1, 0),
(60, 'DM', 'Dominica', 1, 0),
(61, 'DO', 'Dominican Republic', 1, 0),
(62, 'DZ', 'Algeria', 1, 0),
(63, 'EC', 'Ecuador', 1, 0),
(64, 'EE', 'Estonia', 1, 0),
(65, 'EG', 'Egypt', 1, 0),
(66, 'EH', 'Western Sahara', 1, 0),
(67, 'ER', 'Eritrea', 1, 0),
(68, 'ES', 'Spain', 1, 0),
(69, 'ET', 'Ethiopia', 1, 0),
(70, 'FI', 'Finland', 1, 0),
(71, 'FJ', 'Fiji', 1, 0),
(72, 'FK', 'Falkland Islands', 1, 0),
(73, 'FM', 'Micronesia', 1, 0),
(74, 'FO', 'Faroe Islands', 1, 0),
(75, 'FR', 'France', 1, 0),
(76, 'GA', 'Gabon', 1, 0),
(77, 'GB', 'United Kingdom', 1, 0),
(78, 'GD', 'Grenada', 1, 0),
(79, 'GE', 'Georgia', 1, 0),
(80, 'GF', 'French Guiana', 1, 0),
(81, 'GG', 'Guernsey', 1, 0),
(82, 'GH', 'Ghana', 1, 0),
(83, 'GI', 'Gibraltar', 1, 0),
(84, 'GL', 'Greenland', 1, 0),
(85, 'GM', 'Gambia', 1, 0),
(86, 'GN', 'Guinea', 1, 0),
(87, 'GP', 'Guadeloupe', 1, 0),
(88, 'GQ', 'Equatorial Guinea', 1, 0),
(89, 'GR', 'Greece', 1, 0),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 1, 0),
(91, 'GT', 'Guatemala', 1, 0),
(92, 'GU', 'Guam', 1, 0),
(93, 'GW', 'Guinea-Bissau', 1, 0),
(94, 'GY', 'Guyana', 1, 0),
(95, 'HK', 'Hong Kong', 1, 0),
(96, 'HM', 'Heard Island and McDonald Islands', 1, 0),
(97, 'HN', 'Honduras', 1, 0),
(98, 'HR', 'Croatia', 1, 0),
(99, 'HT', 'Haiti', 1, 0),
(100, 'HU', 'Hungary', 1, 0),
(101, 'ID', 'Indonesia', 1, 0),
(102, 'IE', 'Ireland', 1, 0),
(103, 'IL', 'Israel', 1, 0),
(104, 'IM', 'Isle of Man', 1, 0),
(105, 'IN', 'India', 1, 0),
(106, 'IO', 'British Indian Ocean Territory', 1, 0),
(107, 'IQ', 'Iraq', 1, 0),
(108, 'IR', 'Iran', 1, 0),
(109, 'IS', 'Iceland', 1, 0),
(110, 'IT', 'Italy', 1, 0),
(111, 'JE', 'Jersey', 1, 0),
(112, 'JM', 'Jamaica', 1, 0),
(113, 'JO', 'Jordan', 1, 0),
(114, 'JP', 'Japan', 1, 0),
(115, 'KE', 'Kenya', 1, 0),
(116, 'KG', 'Kyrgyzstan', 1, 0),
(117, 'KH', 'Cambodia', 1, 0),
(118, 'KI', 'Kiribati', 1, 0),
(119, 'KM', 'Comoros', 1, 0),
(120, 'KN', 'Saint Kitts and Nevis', 1, 0),
(121, 'KP', 'North Korea', 1, 0),
(122, 'KR', 'South Korea', 1, 0),
(123, 'KW', 'Kuwait', 1, 0),
(124, 'KY', 'Cayman Islands', 1, 0),
(125, 'KZ', 'Kazakhstan', 1, 0),
(126, 'LA', 'Laos', 1, 0),
(127, 'LB', 'Lebanon', 1, 0),
(128, 'LC', 'Saint Lucia', 1, 0),
(129, 'LI', 'Liechtenstein', 1, 0),
(130, 'LK', 'Sri Lanka', 1, 0),
(131, 'LR', 'Liberia', 1, 0),
(132, 'LS', 'Lesotho', 1, 0),
(133, 'LT', 'Lithuania', 1, 0),
(134, 'LU', 'Luxembourg', 1, 0),
(135, 'LV', 'Latvia', 1, 0),
(136, 'LY', 'Libya', 1, 0),
(137, 'MA', 'Morocco', 1, 0),
(138, 'MC', 'Monaco', 1, 0),
(139, 'MD', 'Moldova', 1, 0),
(140, 'ME', 'Montenegro', 1, 0),
(141, 'MF', 'Saint Martin', 1, 0),
(142, 'MG', 'Madagascar', 1, 0),
(143, 'MH', 'Marshall Islands', 1, 0),
(144, 'MK', 'Macedonia', 1, 0),
(145, 'ML', 'Mali', 1, 0),
(146, 'MM', 'Myanmar [Burma]', 1, 0),
(147, 'MN', 'Mongolia', 1, 0),
(148, 'MO', 'Macao', 1, 0),
(149, 'MP', 'Northern Mariana Islands', 1, 0),
(150, 'MQ', 'Martinique', 1, 0),
(151, 'MR', 'Mauritania', 1, 0),
(152, 'MS', 'Montserrat', 1, 0),
(153, 'MT', 'Malta', 1, 0),
(154, 'MU', 'Mauritius', 1, 0),
(155, 'MV', 'Maldives', 1, 0),
(156, 'MW', 'Malawi', 1, 0),
(157, 'MX', 'Mexico', 1, 0),
(158, 'MY', 'Malaysia', 1, 0),
(159, 'MZ', 'Mozambique', 1, 0),
(160, 'NA', 'Namibia', 1, 0),
(161, 'NC', 'New Caledonia', 1, 0),
(162, 'NE', 'Niger', 1, 0),
(163, 'NF', 'Norfolk Island', 1, 0),
(164, 'NG', 'Nigeria', 1, 0),
(165, 'NI', 'Nicaragua', 1, 0),
(166, 'NL', 'Netherlands', 1, 0),
(167, 'NO', 'Norway', 1, 0),
(168, 'NP', 'Nepal', 1, 0),
(169, 'NR', 'Nauru', 1, 0),
(170, 'NU', 'Niue', 1, 0),
(171, 'NZ', 'New Zealand', 1, 0),
(172, 'OM', 'Oman', 1, 0),
(173, 'PA', 'Panama', 1, 0),
(174, 'PE', 'Peru', 1, 0),
(175, 'PF', 'French Polynesia', 1, 0),
(176, 'PG', 'Papua New Guinea', 1, 0),
(177, 'PH', 'Philippines', 1, 0),
(178, 'PK', 'Pakistan', 1, 0),
(179, 'PL', 'Poland', 1, 0),
(180, 'PM', 'Saint Pierre and Miquelon', 1, 0),
(181, 'PN', 'Pitcairn Islands', 1, 0),
(182, 'PR', 'Puerto Rico', 1, 0),
(183, 'PS', 'Palestine', 1, 0),
(184, 'PT', 'Portugal', 1, 0),
(185, 'PW', 'Palau', 1, 0),
(186, 'PY', 'Paraguay', 1, 0),
(187, 'QA', 'Qatar', 1, 0),
(188, 'RE', 'RÃ©union', 1, 0),
(189, 'RO', 'Romania', 1, 0),
(190, 'RS', 'Serbia', 1, 0),
(191, 'RU', 'Russia', 1, 0),
(192, 'RW', 'Rwanda', 1, 0),
(193, 'SA', 'Saudi Arabia', 1, 0),
(194, 'SB', 'Solomon Islands', 1, 0),
(195, 'SC', 'Seychelles', 1, 0),
(196, 'SD', 'Sudan', 1, 0),
(197, 'SE', 'Sweden', 1, 0),
(198, 'SG', 'Singapore', 1, 0),
(199, 'SH', 'Saint Helena', 1, 0),
(200, 'SI', 'Slovenia', 1, 0),
(201, 'SJ', 'Svalbard and Jan Mayen', 1, 0),
(202, 'SK', 'Slovakia', 1, 0),
(203, 'SL', 'Sierra Leone', 1, 0),
(204, 'SM', 'San Marino', 1, 0),
(205, 'SN', 'Senegal', 1, 0),
(206, 'SO', 'Somalia', 1, 0),
(207, 'SR', 'Suriname', 1, 0),
(208, 'SS', 'South Sudan', 1, 0),
(209, 'ST', 'SÃ£o TomÃ© and PrÃ­ncipe', 1, 0),
(210, 'SV', 'El Salvador', 1, 0),
(211, 'SX', 'Sint Maarten', 1, 0),
(212, 'SY', 'Syria', 1, 0),
(213, 'SZ', 'Swaziland', 1, 0),
(214, 'TC', 'Turks and Caicos Islands', 1, 0),
(215, 'TD', 'Chad', 1, 0),
(216, 'TF', 'French Southern Territories', 1, 0),
(217, 'TG', 'Togo', 1, 0),
(218, 'TH', 'Thailand', 1, 0),
(219, 'TJ', 'Tajikistan', 1, 0),
(220, 'TK', 'Tokelau', 1, 0),
(221, 'TL', 'East Timor', 1, 0),
(222, 'TM', 'Turkmenistan', 1, 0),
(223, 'TN', 'Tunisia', 1, 0),
(224, 'TO', 'Tonga', 1, 0),
(225, 'TR', 'Turkey', 1, 0),
(226, 'TT', 'Trinidad and Tobago', 1, 0),
(227, 'TV', 'Tuvalu', 1, 0),
(228, 'TW', 'Taiwan', 1, 0),
(229, 'TZ', 'Tanzania', 1, 0),
(230, 'UA', 'Ukraine', 1, 0),
(231, 'UG', 'Uganda', 1, 0),
(232, 'UM', 'U.S. Minor Outlying Islands', 1, 0),
(233, 'US', 'United States', 1, 0),
(234, 'UY', 'Uruguay', 1, 0),
(235, 'UZ', 'Uzbekistan', 1, 0),
(236, 'VA', 'Vatican City', 1, 0),
(237, 'VC', 'Saint Vincent and the Grenadines', 1, 0),
(238, 'VE', 'Venezuela', 1, 0),
(239, 'VG', 'British Virgin Islands', 1, 0),
(240, 'VI', 'U.S. Virgin Islands', 1, 0),
(241, 'VN', 'Vietnam', 1, 0),
(242, 'VU', 'Vanuatu', 1, 0),
(243, 'WF', 'Wallis and Futuna', 1, 0),
(244, 'WS', 'Samoa', 1, 0),
(245, 'XK', 'Kosovo', 1, 0),
(246, 'YE', 'Yemen', 1, 0),
(247, 'YT', 'Mayotte', 1, 0),
(248, 'ZA', 'South Africa', 1, 0),
(249, 'ZM', 'Zambia', 1, 0),
(250, 'ZW', 'Zimbabwe', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `amount` bigint(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `quantity`, `used`, `start_date`, `end_date`, `is_active`, `is_deleted`) VALUES
(1, 'code', 0, 500, 15, 13, '2020-03-31 00:00:00', '2020-05-22 00:00:00', 1, 0),
(2, 'shop30', 1, 30, 10, 1, '2020-04-01 00:00:00', '2020-05-21 00:00:00', 1, 0),
(3, 'cart600', 0, 600, 10, 1, '2020-03-21 00:00:00', '2020-05-16 00:00:00', 1, 0),
(4, 'shoe70', 1, 70, 50, 6, '2020-02-05 00:00:00', '2020-05-14 00:00:00', 1, 0),
(5, 'gcart', 1, 30, 10, 1, '2020-05-15 00:00:00', '2020-05-23 00:00:00', 1, 0),
(6, 'sbier', 1, 20, 10, 0, '2020-05-17 00:00:00', '2020-05-26 00:00:00', 1, 0),
(7, 'komal', 1, 20, 12, 11, '2020-05-13 00:00:00', '2020-05-20 00:00:00', 1, 0),
(8, 'HHSCR', 0, 500, 10, 3, '2020-05-19 00:00:00', '2020-05-27 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `placeholders` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `slug`, `name`, `subject`, `message`, `placeholders`) VALUES
(1, 'forgot-password', 'Forgot Password', 'Reset Password Instructions', '<h2></h2><h3 style=\"text-align: justify; \"><span style=\"font-size: 14pt;\">Hello {firstname} {lastname},</span></h3><p style=\"text-align: justify; \"><span style=\"font-size: 13px; letter-spacing: normal;\">Someone, hopefully, you, has requested to reset the password for your </span>{company_name} account with email <b>{email}</b>.</p><span style=\"font-size: 13px; letter-spacing: normal; color: inherit; font-family: inherit;\"><p style=\"text-align: justify;\"><span style=\"color: inherit; font-family: inherit;\">If you did not perform this request, you can safely ignore this email </span>and your password will remain the same. <span style=\"color: inherit; font-family: inherit;\">Otherwise, click the link below to complete the process.</span></p><p style=\"text-align: justify;\"><a href=\"{reset_password_link}\" target=\"_blank\" style=\"font-family: inherit; background-color: rgb(255, 255, 255);\">Reset Password</a></p><p style=\"text-align: justify;\">Please note that this link is valid for next 1 hour only. You won\'t be able to change the password after the link gets expired.</p></span><p></p><p style=\"text-align: justify; \"><span style=\"font-size: 13px; letter-spacing: normal; color: inherit; font-family: inherit;\">Regards,</span></p><p style=\"text-align: justify; \"><span style=\"color: inherit; font-family: inherit; font-size: 13px; letter-spacing: normal;\">{company_name}</span></p>', 'a:6:{s:11:\"{firstname}\";s:14:\"User Firstname\";s:10:\"{lastname}\";s:13:\"User Lastname\";s:7:\"{email}\";s:10:\"User Email\";s:20:\"{reset_password_url}\";s:18:\"Reset Password URL\";s:17:\"{email_signature}\";s:15:\"Email Signature\";s:14:\"{company_name}\";s:12:\"Company Name\";}'),
(2, 'new-user-signup', 'New User Sign Up', 'Welcome {company_name}', '<p></p><p></p><p></p><h1><b>Dear {firstname} {lastname}</b></h1><br>Thank you for registering on {company_name}.<br><br>We just wanted to say welcome.<br><br>Please contact us if you need any help.<br><br>Click the link below to verify your email<p></p><p><a href=\"{email_verification_url}\" target=\"_blank\">Verify Your Email</a><br><br>Kind Regards, <br>{email_signature}<br><br>(This is an automated email, so please don\\\'t reply to this email address)<br></p><p></p><p></p><p></p>', 'a:5:{s:11:\"{firstname}\";s:14:\"User Firstname\";s:10:\"{lastname}\";s:13:\"User Lastname\";s:24:\"{email_verification_url}\";s:22:\"Email Verification URL\";s:17:\"{email_signature}\";s:15:\"Email Signature\";s:14:\"{company_name}\";s:12:\"Company Name\";}'),
(3, 'order-placed', 'Your Order Placed Successfully', 'Your Order Placed Successfully', '<p><span style=\"color: rgb(34, 34, 34); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">Hello {customer_name},</span><br style=\"color: rgb(34, 34, 34); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(34, 34, 34); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">Your Order Number is </span>{order_amount}<br style=\"color: rgb(34, 34, 34); font-family: \"Open Sans\", sans-serif; font-size: 14px;\"><span style=\"color: rgb(34, 34, 34); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">Your order has been placed successfully</span><br></p>', 'a:4:{s:15:\"{customer_name}\";s:13:\"Customer Name\";s:14:\"{order_amount}\";s:12:\"Order Amount\";s:12:\"{admin_name}\";s:10:\"Admin Name\";s:13:\"{admin_email}\";s:11:\"Admin Email\";}'),
(5, 'thanks-for-product-review', 'Thanks For Product Review', 'Thank you for reviewing {product_name}... on {company_name}', '<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\"  style=\"border-spacing:0;margin-right:50px; margin-left: 0px; auto;width:640px\">\r\n	<tr>\r\n		<td>\r\n			<hr border=\"4\" style=\"margin-right:420px;margin-left:420px;backgroung-color:33ADFF\">\r\n				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n					<tr>\r\n						<td style=\"margin-left: 400px;text-align: center;font-size: 35px;\">\r\n							<b>{company_name}</b>\r\n						</td>\r\n					</tr>\r\n				</table>\r\n				<hr border=\"40\" style=\"margin-right:420px;margin-left:420px;backgroung-color:33ADFF\">\r\n				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"border-spacing:0;margin:0 auto;width:640px\">\r\n					<tbody>\r\n						<tr>\r\n							<td align=\"left\">\r\n								<span style=\"color:#000000;font-size:24px;line-height:26px\">Thanks {firstname},</span><br><br>\r\n								<span>Your latest customer review is live on {company_name}. We and millions of shoppers on {company_name} appreciate the time you took to share your experience with this item.</span>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table><br><br><br>\r\n				<table width=\"40\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\" align=\"center\" style=\"margin-left: 100px; background-color: transparent;\">\r\n					<tbody>\r\n						<tr>\r\n							<td valign=\"top\"  width=\"110\"><a href=\"{products_detail_url}\">\r\n								<img width=\"90\" src=\"{image_url}\" ></a>\r\n							</td>\r\n							<td valign=\"top\"  align=\"left\" style=\"font-size:16px;line-height:18px;border:1px\">\r\n								<span><img style=\"display:inline\" src=\"\" class=\"CToWUd\"><br> \r\n									<span style=\"font-size:14px;line-height:18px;color:#888888\">   from <a style=\"color:#000306;font-weight: bold;\">{firstname} {lastname}</a>  on {review_date}</span>\r\n								</span><br>\r\n								<span style=\"font-size:14px;line-height:18px;color:#363636;\"><strong>Star rating :</strong>\r\n									<span > {star_rating} <img src=\"http://localhost/gcart/assets/themes/default/images/str.jpg\" height=\"15px\" width=\"15px\"> \r\n										<span style=\"font-size:14px;line-height:18px;color:#363636\"><strong><br>{review_msg}</strong>\r\n										</span><br> <span style=\"font-size:4px;line-height:4px;color:#ffffff\">	\r\n									</span>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table >\r\n				<hr border=\"40\" style=\"margin-right:420px;margin-left:420px;backgroung-color:33ADFF\">\r\n				<table width=\"440\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\" align=\"center\"  style=\"margin-left: 100px; background-color: transparent;\">\r\n					<tr>\r\n						<td>Kind Regards, <br>{email_signature}<br><br>(This is an automated email, so please don\\\'t reply to this email address)<br></td>\r\n					</tr>\r\n				</table>\r\n		</td>\r\n	</tr>\r\n</table>', 'a:20:{i:0;s:11:\"{fristname}\";i:1;s:14:\"User Firstname\";i:2;s:10:\"{lastname}\";i:3;s:13:\"User Lastname\";i:4;s:14:\"{company_name}\";i:5;s:12:\"Company Name\";i:6;s:17:\"{email_signature}\";i:7;s:15:\"Email Signature\";i:8;s:21:\"{products_detail_url}\";i:9;s:20:\"Products detail page\";i:10;s:11:\"{image_url}\";i:11;s:17:\"Product image url\";i:12;s:13:\"{review_date}\";i:13;s:20:\"Products review date\";i:14;s:13:\"{star_rating}\";i:15;s:11:\"Star rating\";i:16;s:12:\"{review_msg}\";i:17;s:19:\"Products review msg\";i:18;s:14:\"{product_name}\";i:19;s:13:\"Products Name\";}'),
(6, 'confirm-order', 'Confirm Order', 'Your {company_name} order', '<hr border=\"4\" style=\"margin-right:420px;margin-left:420px;backgroung-color:33ADFF\">\r\n<table >\r\n<tr>\r\n<td style=\"text-align: center;font-size: 22px;\"><b>{company_name}</b></td>\r\n</tr>\r\n</table>\r\n<hr border=\"40\" style=\"margin-right:420px;margin-left:420px;backgroung-color:33ADFF\">\r\n<table >\r\n<tbody>\r\n<tr>\r\n<td align=\"left\"><span style=\"color:#000000;font-size:24px;line-height:26px\"><b>Hello {firstname} ,</b></span><br><br><span>Thank you for your order. We’ll send a confirmation when your order ships. Your estimated delivery date is indicated below. If you would like to view the status of your order or make any changes to it, please visit Your Orders on {company_name}</span>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table><br>\r\n<hr border=\"40\" style=\"margin-right:420px;margin-left:420px;backgroung-color:33ADFF\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" >\r\n<tbody>\r\n<tr width=\"100%\">\r\n<td align=\"left\" width=\"50%\">\r\n<span><b>Arriving :</b></span><br>\r\n<span>{frist_date}  TO </span><br>\r\n<span>{second_date}</span><br>\r\n<br>\r\n</td>\r\n<td align=\"left\" width=\"50%\">\r\n<span><b>Your order will be sent to:</b></span><br>\r\n<span> {firstname} </span><br>\r\n<span>{house_no} {societyname},</span><br>\r\n<span>{landmark}, </span><br>\r\n<span>{city} , {state} {pincode}</span><br>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size:25px;\"><b><U>Order Details</U></b><br></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size:15px;\">Order #{order_number}</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-size:15px;\">Placed on {order_date}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n{products_data}\r\n\r\n<br>\r\n<br>\r\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n<tbody>\r\n<tr style=\"margin-top:20px;\" width=\"100%\">\r\n<td valign=\"top\" align=\"left\" width=\"40%\"></td>\r\n\r\n\r\n<td valign=\"top\" width=\"40%\" align=\"right\">\r\n	<span>Item Subtotal:</span><br>\r\n	<span>Shipping & Handling:</span><br>\r\n	<span>Promotion Applied:</span><br><br>\r\n	<span><b>Order Total:</b></span>\r\n\r\n</td>\r\n\r\n<td valign=\"top\" width=\"20%\" align=\"right\">\r\n	<span>{sub_total}</span><br>\r\n	<span>{shipping_amount}</span><br>\r\n	<span>{coupon_amount}</span><br><br>\r\n	<span><b>{grand_total}</b></span>\r\n	<span><?php echo \'komal\' ?></span>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table >\r\n<hr border=\"40\" style=\"margin-right:420px;margin-left:420px;backgroung-color:33ADFF\">\r\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n<tr>\r\n<td>Kind Regards, <br>{email_signature}<br><br>(This is an automated email, so please don\\\'t reply to this email address)<br>\r\n</td>\r\n</tr>\r\n</table>', 'a:36:{i:0;s:14:\"{company_name}\";i:1;s:12:\"company Name\";i:2;s:11:\"{firstname}\";i:3;s:14:\"User fristname\";i:4;s:12:\"{frist_date}\";i:5;s:24:\"Order delivery firstdate\";i:6;s:13:\"{second_date}\";i:7;s:25:\"Order delivery secontdate\";i:8;s:10:\"{house_no}\";i:9;s:17:\"User house number\";i:10;s:13:\"{societyname}\";i:11;s:17:\"User society name\";i:12;s:6:\"{city}\";i:13;s:9:\"User city\";i:14;s:7:\"{state}\";i:15;s:10:\"User state\";i:16;s:9:\"{pincode}\";i:17;s:13:\" User pincode\";i:18;s:14:\"{order_number}\";i:19;s:12:\"Order number\";i:20;s:12:\"{order_date}\";i:21;s:11:\" Order date\";i:22;s:15:\"{products_data}\";i:23;s:15:\"Products detail\";i:24;s:11:\"{sub_total}\";i:25;s:9:\"Sub total\";i:26;s:17:\"{shipping_amount}\";i:27;s:15:\"Shipping amount\";i:28;s:15:\"{coupon_amount}\";i:29;s:13:\"Coupon amount\";i:30;s:13:\"{grand_total}\";i:31;s:11:\"Grand total\";i:32;s:17:\"{email_signature}\";i:33;s:15:\"Email Signature\";i:34;s:10:\"{landmark}\";i:35;s:8:\"Landmark\";}');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `answer` varchar(700) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `is_deleted`) VALUES
(1, 'Six started far placing saw respect', '\r\nNam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliq...<br><br>', 0),
(5, 'Civilly why how end viewing related', 'Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hot_deals`
--

DROP TABLE IF EXISTS `hot_deals`;
CREATE TABLE IF NOT EXISTS `hot_deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `value` bigint(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hot_deals`
--

INSERT INTO `hot_deals` (`id`, `product_id`, `type`, `value`, `start_date`, `end_date`, `is_deleted`) VALUES
(3, 6, 1, 60, '2020-03-31 00:00:00', '2020-04-22 00:00:00', 0),
(4, 5, 1, 20, '2020-04-14 00:00:00', '2020-05-28 00:00:00', 0),
(5, 4, 0, 1000, '2020-04-13 00:00:00', '2020-05-28 00:00:00', 0),
(6, 7, 1, 30, '2020-05-14 00:00:00', '2020-05-22 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

DROP TABLE IF EXISTS `news_letters`;
CREATE TABLE IF NOT EXISTS `news_letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_letters`
--

INSERT INTO `news_letters` (`id`, `email`, `created_date`, `is_deleted`) VALUES
(1, 'bdp@narola.email', '2020-03-11 00:00:00', 0),
(2, 'vrp@narola.email', '2020-04-03 17:26:04', 0),
(3, 'vrtp@narola.email', '2020-04-04 12:16:27', 0),
(4, 'vixutipatel129@gmail.com', '2020-04-06 19:57:33', 0),
(128, 'kdc@narola.email', '2020-04-11 10:17:12', 0),
(130, 'komal@gmail.com', '2020-04-14 10:30:37', 0),
(134, 'ss@gmail.com', '2020-04-14 10:34:47', 0),
(136, 'ADSAD@DXGDG', '2020-04-14 10:35:29', 0),
(137, 'aa@gmail.com', '2020-04-17 09:34:50', 0),
(138, 'komal@gmail', '2020-04-25 11:38:20', 0),
(139, 'dharav@gmail', '2020-04-25 11:38:56', 0),
(140, 'dharav@gmail.com', '2020-04-25 11:39:46', 0),
(141, 'dharav1@gmail.com', '2020-04-25 11:40:37', 0),
(142, 'aa@gmail.vcc', '2020-05-04 18:44:11', 0),
(143, 'ss@gmial.com', '2020-05-07 11:21:41', 0),
(144, 'qas@gmail.com', '2020-05-07 11:23:31', 0),
(145, 'xasw@gmail.com', '2020-05-07 11:23:53', 0),
(146, 'fdes@gmail.com', '2020-05-07 11:24:11', 0),
(147, 'deaa@gmail.com', '2020-05-11 15:48:14', 0),
(148, 'kdc@narola.email', '2020-05-13 18:06:47', 0),
(149, 'azaz@gmail.com', '2020-05-13 18:07:05', 0),
(150, 'zsad@gmail.com', '2020-05-13 18:07:28', 0),
(151, 'dch@gmail.com', '2020-05-15 09:57:12', 0),
(152, 'kdc@narola.email', '2020-05-16 11:09:17', 0),
(153, 'kdc@narola.email', '2020-05-16 11:26:31', 0),
(154, 'kdc@narola.email', '2020-05-16 11:26:44', 0),
(155, 'kdc@narola.email', '2020-05-16 11:27:27', 0),
(156, 'aaaaaa@gmail.com', '2020-05-16 14:43:18', 0),
(157, 'fse@gmail.com', '2020-05-16 15:04:49', 0),
(158, 'sawe@gmail.com', '2020-05-16 15:05:35', 0),
(159, 'vdrw@gmail.com', '2020-05-16 17:33:26', 0),
(160, 'xsr@gmail.com', '2020-05-18 17:16:29', 0),
(161, 'komalkhalasi@gmail.com', '2020-05-20 18:29:40', 0),
(162, 'der@gmail.com', '2020-05-22 15:20:19', 0),
(163, 'gty@gmail.com', '2020-05-22 22:35:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT 0,
  `order_number` varchar(32) NOT NULL,
  `invoice_number` bigint(20) NOT NULL,
  `total_products` int(11) NOT NULL,
  `grand_total` decimal(7,2) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `payment_method` varchar(20) NOT NULL DEFAULT 'cash on delivery',
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `coupon_id` (`coupon_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `order_number`, `invoice_number`, `total_products`, `grand_total`, `order_date`, `order_status`, `payment_method`, `payment_status`, `is_deleted`) VALUES
(1, 2, NULL, '7490285', 6584130147, 4, '24820.94', '2020-03-04', 1, 'cash on delivery', 1, 0),
(2, 3, NULL, '7654321', 972014563, 6, '55620.94', '2020-03-10', 0, 'cash on delivery', 1, 0),
(18, 1, NULL, '14252221', 45886107, 1, '9000.00', '2020-04-29', 0, 'cash on delivery', 0, 0),
(53, 57, NULL, '17967908', 56954675, 1, '45000.00', '2020-04-30', 0, 'cash on delivery', 0, 0),
(64, 57, NULL, '47921652', 72395328, 1, '12000.00', '2020-05-04', 0, 'cash on delivery', 0, 0),
(65, 57, NULL, '31426615', 44905450, 2, '31400.00', '2020-05-04', 0, 'cash on delivery', 0, 0),
(67, 57, NULL, '4563149', 83525873, 1, '30000.00', '2020-05-04', 0, 'cash on delivery', 0, 0),
(89, 1, NULL, '62527021', 15317619, 2, '42000.00', '2020-05-06', 0, 'cash on delivery', 0, 0),
(97, 1, 1, '9156163', 15212274, 1, '9100.00', '2020-05-15', 0, 'cash on delivery', 0, 0),
(98, 59, NULL, '51256878', 45137686, 1, '32000.00', '2020-05-15', 0, 'cash on delivery', 0, 0),
(117, 56, 7, '84950906', 62868484, 1, '7680.00', '2020-05-19', 0, 'cash on delivery', 0, 0),
(119, 59, 8, '94474249', 40489699, 1, '44500.00', '2020-05-20', 0, 'cash on delivery', 0, 0),
(120, 56, 8, '28058079', 74109950, 1, '99999.99', '2020-05-22', 0, 'cash on delivery', 0, 0),
(121, 56, NULL, '29699043', 10608169, 1, '10000.00', '2020-05-22', 0, 'cash on delivery', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_status` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `total_amount` decimal(7,2) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `vendor_status`, `quantity`, `total_amount`, `is_deleted`) VALUES
(1, 1, 1, 1, 2, '15700.70', 0),
(2, 1, 2, 1, 2, '9120.24', 0),
(3, 2, 3, 0, 2, '30800.00', 0),
(4, 2, 2, 0, 2, '9120.24', 0),
(5, 6, 4, 0, 5, '99999.99', 0),
(6, 6, 8, 0, 3, '36000.00', 0),
(7, 6, 11, 0, 1, '1250.00', 0),
(8, 7, 8, 0, 1, '12000.00', 0),
(9, 8, 12, 0, 1, '15000.00', 0),
(10, 9, 11, 0, 1, '1250.00', 0),
(11, 10, 8, 0, 1, '12000.00', 0),
(12, 11, 3, 0, 1, '45000.00', 0),
(13, 12, 8, 0, 1, '12000.00', 0),
(14, 13, 11, 0, 1, '1250.00', 0),
(15, 14, 8, 0, 1, '12000.00', 0),
(16, 15, 11, 0, 1, '1250.00', 0),
(17, 16, 12, 0, 1, '15000.00', 0),
(18, 17, 11, 0, 1, '1250.00', 0),
(19, 18, 4, 0, 1, '30000.00', 0),
(20, 19, 8, 0, 2, '24000.00', 0),
(21, 20, 12, 0, 1, '15000.00', 0),
(22, 21, 8, 0, 1, '12000.00', 0),
(23, 21, 12, 0, 1, '15000.00', 0),
(24, 22, 11, 0, 1, '1250.00', 0),
(25, 23, 5, 0, 1, '12000.00', 0),
(26, 24, 11, 0, 1, '1250.00', 0),
(27, 25, 8, 0, 1, '12000.00', 0),
(28, 25, 12, 0, 1, '15000.00', 0),
(29, 26, 11, 0, 1, '1250.00', 0),
(30, 27, 11, 0, 1, '1250.00', 0),
(31, 28, 4, 0, 1, '30000.00', 0),
(32, 29, 11, 0, 1, '1250.00', 0),
(33, 30, 11, 0, 5, '6250.00', 0),
(34, 31, 4, 0, 1, '30000.00', 0),
(35, 32, 4, 0, 1, '30000.00', 0),
(36, 33, 8, 0, 1, '12000.00', 0),
(37, 34, 4, 0, 1, '30000.00', 0),
(38, 35, 4, 0, 1, '30000.00', 0),
(39, 36, 4, 0, 1, '30000.00', 0),
(40, 37, 4, 0, 1, '30000.00', 0),
(41, 38, 4, 0, 1, '30000.00', 0),
(42, 39, 4, 0, 1, '30000.00', 0),
(43, 40, 3, 0, 1, '45000.00', 0),
(44, 41, 3, 0, 1, '45000.00', 0),
(45, 42, 4, 0, 1, '30000.00', 0),
(46, 43, 4, 0, 1, '30000.00', 0),
(47, 44, 3, 0, 1, '45000.00', 0),
(48, 45, 7, 0, 1, '15000.00', 0),
(49, 46, 3, 0, 1, '45000.00', 0),
(50, 47, 7, 0, 1, '15000.00', 0),
(51, 48, 3, 0, 1, '45000.00', 0),
(52, 48, 7, 0, 1, '15000.00', 0),
(53, 49, 4, 0, 1, '30000.00', 0),
(54, 49, 8, 0, 1, '12000.00', 0),
(55, 49, 3, 0, 1, '45000.00', 0),
(56, 50, 4, 0, 1, '30000.00', 0),
(57, 50, 8, 0, 1, '12000.00', 0),
(58, 51, 10, 0, 1, '32000.00', 0),
(59, 51, 3, 0, 1, '45000.00', 0),
(60, 51, 7, 0, 1, '15000.00', 0),
(61, 52, 4, 0, 1, '30000.00', 0),
(62, 52, 3, 0, 1, '45000.00', 0),
(63, 52, 6, 0, 1, '1200.00', 0),
(64, 53, 3, 0, 1, '45000.00', 0),
(65, 54, 3, 0, 1, '45000.00', 0),
(66, 55, 4, 0, 1, '30000.00', 0),
(67, 55, 7, 0, 1, '15000.00', 0),
(68, 56, 4, 0, 1, '30000.00', 0),
(69, 57, 4, 0, 2, '60000.00', 0),
(70, 58, 8, 0, 1, '12000.00', 0),
(71, 59, 7, 0, 1, '15000.00', 0),
(72, 60, 4, 0, 1, '30000.00', 0),
(73, 60, 8, 0, 1, '12000.00', 0),
(74, 60, 5, 0, 2, '24000.00', 0),
(75, 61, 11, 0, 1, '1250.00', 0),
(76, 62, 11, 0, 2, '2500.00', 0),
(77, 63, 11, 0, 1, '1250.00', 0),
(78, 64, 8, 0, 1, '12000.00', 0),
(79, 65, 4, 0, 1, '29000.00', 0),
(80, 65, 6, 0, 2, '2400.00', 0),
(81, 66, 13, 0, 1, '1250.00', 0),
(82, 66, 8, 0, 1, '12000.00', 0),
(83, 67, 4, 0, 1, '30000.00', 0),
(84, 68, 4, 0, 1, '30000.00', 0),
(85, 69, 8, 0, 1, '12000.00', 0),
(86, 70, 8, 0, 1, '12000.00', 0),
(87, 70, 11, 0, 1, '1250.00', 0),
(88, 71, 11, 0, 1, '1250.00', 0),
(89, 72, 11, 0, 1, '1250.00', 0),
(90, 73, 11, 0, 1, '1250.00', 0),
(91, 74, 11, 0, 1, '1250.00', 0),
(92, 75, 11, 0, 1, '1250.00', 0),
(93, 76, 5, 0, 1, '12000.00', 0),
(94, 77, 5, 0, 1, '12000.00', 0),
(95, 78, 5, 0, 1, '12000.00', 0),
(96, 79, 3, 0, 1, '45000.00', 0),
(97, 80, 8, 0, 1, '12000.00', 0),
(98, 81, 4, 0, 1, '30000.00', 0),
(99, 82, 8, 0, 1, '12000.00', 0),
(100, 83, 4, 0, 1, '30000.00', 0),
(101, 84, 3, 0, 1, '45000.00', 0),
(102, 85, 4, 0, 1, '30000.00', 0),
(103, 86, 3, 0, 1, '45000.00', 0),
(104, 87, 12, 0, 2, '30000.00', 0),
(105, 88, 3, 0, 1, '45000.00', 0),
(106, 89, 5, 0, 1, '12000.00', 0),
(107, 89, 2, 0, 3, '30000.00', 0),
(108, 90, 5, 0, 1, '9600.00', 0),
(109, 91, 2, 0, 1, '10000.00', 0),
(110, 91, 6, 0, 1, '1200.00', 0),
(111, 92, 4, 0, 1, '29000.00', 0),
(112, 93, 31, 0, 1, '200.00', 0),
(113, 94, 5, 0, 1, '9600.00', 0),
(114, 95, 5, 0, 1, '9600.00', 0),
(115, 96, 6, 0, 1, '1200.00', 0),
(116, 97, 5, 0, 1, '9600.00', 0),
(117, 98, 10, 0, 1, '32000.00', 0),
(118, 99, 5, 0, 1, '9600.00', 0),
(119, 100, 2, 0, 1, '10000.00', 0),
(120, 100, 31, 0, 1, '200.00', 0),
(121, 101, 6, 0, 1, '1200.00', 0),
(122, 102, 6, 0, 1, '1200.00', 0),
(123, 103, 6, 0, 1, '1200.00', 0),
(124, 104, 6, 0, 1, '1200.00', 0),
(125, 105, 10, 0, 1, '32000.00', 0),
(126, 106, 31, 0, 1, '200.00', 0),
(127, 107, 7, 0, 1, '10500.00', 0),
(128, 108, 5, 0, 1, '9600.00', 0),
(129, 109, 7, 0, 1, '10500.00', 0),
(130, 110, 7, 0, 1, '10500.00', 0),
(131, 111, 7, 0, 1, '10500.00', 0),
(132, 112, 31, 0, 1, '200.00', 0),
(133, 113, 2, 0, 1, '10000.00', 0),
(134, 114, 2, 0, 1, '10000.00', 0),
(135, 115, 2, 0, 1, '10000.00', 0),
(136, 116, 10, 0, 1, '32000.00', 0),
(137, 117, 5, 0, 1, '9600.00', 0),
(138, 118, 2, 0, 1, '10000.00', 0),
(139, 119, 3, 0, 1, '45000.00', 0),
(140, 120, 3, 0, 3, '99999.99', 0),
(141, 121, 2, 0, 1, '10000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `sku` int(11) NOT NULL,
  `short_description` mediumtext NOT NULL,
  `long_description` longtext NOT NULL,
  `thumb_image` mediumtext NOT NULL,
  `images` mediumtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `old_price` decimal(8,2) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `related_products` text NOT NULL,
  `tags` text NOT NULL,
  `add_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_sale` tinyint(1) NOT NULL DEFAULT 0,
  `is_hot` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `vendor_id` (`vendor_id`),
  KEY `brand_id` (`brand_id`),
  KEY `category_id` (`category_id`),
  KEY `sub_category_id` (`sub_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendor_id`, `brand_id`, `category_id`, `sub_category_id`, `name`, `slug`, `sku`, `short_description`, `long_description`, `thumb_image`, `images`, `quantity`, `old_price`, `price`, `related_products`, `tags`, `add_date`, `is_sale`, `is_hot`, `is_active`, `is_deleted`) VALUES
(2, 1, 4, 4, 3, 'smart watch', 'smart-watch', 4589769, 'dwfd', 'dsfdsf', 'assets/uploads/products/watch_1.jpg', 'a:3:{i:0;s:45:\"assets/uploads/products/1584168342--nike4.jpg\";i:1;s:45:\"assets/uploads/products/1584168342--nike3.jpg\";i:2;s:45:\"assets/uploads/products/1584168342--nike2.jpg\";}', 0, '15000.00', '10000.00', 'a:1:{i:0;s:1:\"1\";}', 'watch,smart-watch,smart,led', '2020-04-08 11:40:48', 0, 1, 1, 0),
(3, 1, 1, 2, 4, 'Android TV', 'Android-TV', 7856948, 'dsfdsggg\r\ndfg\r\nddg', 'Sometimes the scent of seasonal hand wash is all we need to rouse our holiday spirits. Available in an array of festive fragrances, our naturally derived gel hand wash will leave your hands soft, clean and ready to be tucked into a pair of fair isle mittens. It really is the most wonderful time of the year.', 'assets/uploads/products/tv1.jpg', 'a:3:{i:0;s:45:\"assets/uploads/products/1584168342--nike4.jpg\";i:1;s:45:\"assets/uploads/products/1584168342--nike3.jpg\";i:2;s:45:\"assets/uploads/products/1584168342--nike2.jpg\";}', 6, '50000.00', '45000.00', 'a:1:{i:0;s:1:\"1\";}', 'led-tv,android,smart-tv,colorfull', '2020-04-08 11:40:48', 0, 0, 1, 0),
(4, 1, 1, 2, 4, 'android LED 108 cm', 'android-LED-108-cm', 456985, 'qwdwddsdf', 'sffgdgdfgf\r\ndsgdfgdf\r\ndfgdfg\r\ndfag\r\nd', 'assets/uploads/products/tv1.jpg', 'a:3:{i:0;s:45:\"assets/uploads/products/1584168342--nike4.jpg\";i:1;s:45:\"assets/uploads/products/1584168342--nike3.jpg\";i:2;s:45:\"assets/uploads/products/1584168342--nike2.jpg\";}', 5, '38000.00', '30000.00', 'a:1:{i:0;s:1:\"1\";}', 'tv,android', '2020-04-08 11:40:48', 1, 0, 1, 0),
(5, 2, 3, 4, 3, 'watch 3', 'watch-3', 789587, 'dfdsfdsfsf', 'sdfsdfdsfdsfdsf', 'assets/uploads/products/watch_2.jpg', '', 4, '15000.00', '12000.00', '', 'watch,smobile,fffgfd', '2020-04-08 11:40:48', 1, 0, 1, 0),
(6, 1, 1, 4, 3, 'watch 4', 'watc-4', 789658, 'dgdfgdfg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'assets/uploads/products/watch_3.jpg', '', 0, '1500.00', '1200.00', '', 'smart-watch', '2020-04-08 11:40:48', 1, 1, 1, 0),
(7, 1, 4, 2, 4, 'LED TV', 'LED-TV', 789654, 'dsad', 'adad', 'assets/uploads/products/tv1.jpg', '', 0, '20000.00', '15000.00', '', 'tv', '2020-04-08 11:40:48', 1, 0, 1, 0),
(8, 1, 1, 2, 5, 'android mobiles', 'android-mobile', 879589, 'dsfsdf', 'fsfsdf', 'assets/uploads/products/tv1.jpg', '', 0, '20000.00', '12000.00', '', 'mobile,smart-mobile ', '2020-04-08 11:40:48', 0, 0, 1, 0),
(9, 1, 1, 2, 4, 'tv', 'tv', 7895647, 'sdsf', 'adadasd', 'assets/uploads/products/tv1.jpg', '', 5, '20000.00', '10000.00', '', 'tv', '2020-04-08 11:40:48', 0, 0, 1, 0),
(10, 1, 1, 2, 4, 'LED TV 108 cm ', 'LED-TV-108-cm ', 789658, 'acacascas', 'saADSADSAD', 'assets/uploads/products/tv1.jpg', 'a:3:{i:0;s:45:\"assets/uploads/products/1584168342--nike4.jpg\";i:1;s:45:\"assets/uploads/products/1584168342--nike3.jpg\";i:2;s:45:\"assets/uploads/products/1584168342--nike2.jpg\";}', 6, '45000.00', '32000.00', '', 'tv', '2020-04-08 11:40:48', 0, 0, 1, 0),
(11, 1, 2, 1, 2, 'shirt', 'shirt', 799658, 'axcxzc', 'zxczxczxczxcsdfsd', 'assets/uploads/products/shirt3.jpg', '', 0, '1500.00', '1250.00', '', 'shirt,smobile,mmmobile', '2020-04-08 11:40:48', 1, 0, 1, 0),
(12, 1, 3, 2, 5, 'mi mobile phone', 'mi-mobile-phone', 789456, 'sdfdg', 'dsfgsdg', 'assets/uploads/products/tv1.jpg', '', 0, '18000.00', '15000.00', '', 'mi-mobile,phone', '2020-04-08 11:40:48', 0, 0, 1, 0),
(13, 1, 5, 2, 10, 'earphone', 'earphone', 799658, 'cfddfc', 'nkjhkfd', 'assets/uploads/products/watch_1.jpg', '', 9, '1800.00', '1250.00', '', 'ear-phone', '2020-04-08 11:40:48', 0, 0, 1, 0),
(30, 1, 6, 2, 5, 'MI tv 41ench', 'mi-tv', 799658, 'sdfsdvsddssd', 'ssdfsdfsd', 'assets/uploads/products/tv1.jpg', '', 2, '20000.00', '18000.00', '', 'tv', '2020-05-08 17:10:41', 0, 0, 1, 0),
(31, 1, 5, 2, 5, 'data cable 2 inch', 'data-cable', 789658, 'Ada', 'adaDASD', 'assets/uploads/products/tv1.jpg', '', 6, '500.00', '200.00', '', 'cable', '2020-05-09 14:23:46', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star_ratings` int(11) NOT NULL,
  `review` text NOT NULL,
  `add_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `star_ratings`, `review`, `add_date`, `is_deleted`) VALUES
(1, 1, 1, 3, 'fdsfdfdsf', '2020-04-10 11:26:41', 0),
(2, 3, 2, 5, 'hfvfg', '2020-04-10 11:26:41', 0),
(3, 1, 3, 2, 'dfdsfds', '2020-04-09 11:26:41', 0),
(8, 3, 2, 2, 'amazing', '2020-04-10 11:26:41', 0),
(23, 1, 4, 5, 'aaaa ssds 02adas', '2020-04-13 06:37:19', 0),
(24, 1, 2, 5, 'Amazing products', '2020-04-14 09:47:29', 0),
(25, 1, 13, 5, 'very nice earphone', '2020-04-15 10:27:56', 0),
(26, 1, 5, 5, 'goooooood', '2020-04-17 05:44:17', 0),
(27, 1, 11, 5, 'gooooooooood', '2020-04-18 09:59:55', 1),
(63, 56, 3, 5, 'aaaaaaaaaaaaaaaaa', '2020-05-07 11:46:43', 0),
(64, 56, 4, 5, 'adsadsadasdsa', '2020-05-07 12:38:43', 0),
(65, 56, 4, 4, 'werewtertertertretr', '2020-05-08 00:00:00', 0),
(66, 56, 4, 5, 'wetertretertret', '2020-05-07 18:08:00', 0),
(67, 1, 4, 4, 'efesfdsfdsfds', '2020-05-07 18:08:23', 0),
(68, 1, 4, 4, 'wefewfefsfs', '2020-05-07 18:08:33', 0),
(69, 56, 8, 5, 'sdasdsadsadasd', '2020-05-09 12:41:33', 0),
(74, 56, 2, 5, 'very nice products', '2020-05-13 06:15:41', 0),
(75, 56, 5, 4, 'zcscscsdsdsd', '2020-05-15 11:53:08', 0),
(86, 59, 10, 5, 'test review', '2020-05-15 06:52:38', 0),
(88, 56, 12, 5, 'test review', '2020-05-18 05:16:48', 0),
(89, 59, 3, 5, 'nice products', '2020-05-20 10:22:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`) VALUES
(0, 'user', '-'),
(1, 'admin', '-'),
(2, 'user', '-');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'company_name', 'GCART'),
(2, 'allowed_file_types', 'a:3:{i:0;s:4:\".jpg\";i:1;s:4:\".png\";i:2;s:4:\".gif\";}'),
(3, 'date_format', 'j-m-Y'),
(4, 'time_format', 'h:i A'),
(5, 'facebook_url', 'http://facebook.com'),
(6, 'smtp_host', 'smtp.gmail.com'),
(7, 'smtp_port', '465'),
(8, 'smtp_user', 'gcart.team@gmail.com'),
(9, 'smtp_password', 'gcartdemo$'),
(10, 'from_email', 'gcart.team@gmail.com'),
(11, 'from_name', 'GCART TEAM'),
(12, 'reply_to_email', 'gcart.team@gmail.com\r\n'),
(13, 'reply_to_name', 'GCART '),
(16, 'log_activity', '0'),
(19, 'company_email', 'gcart.team@gmail.com'),
(20, 'twitter_url', 'http://twitter.com'),
(21, 'smtp_encryption', 'ssl'),
(22, 'email_signature', 'GCART TEAM'),
(23, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td> </td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>'),
(24, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>You are \r\n receiving this email because of your account on {company_name}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td> </td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>'),
(29, 'maintenance', '0'),
(30, 'vendors_registration', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slider_settings`
--

DROP TABLE IF EXISTS `slider_settings`;
CREATE TABLE IF NOT EXISTS `slider_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` mediumtext NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_settings`
--

INSERT INTO `slider_settings` (`id`, `title`, `sub_title`, `description`, `image`, `is_deleted`) VALUES
(1, 'world fashion', 'get upto 40% OFF ', 'Highlight your personality  and look with these fabulous and exquisite fashion.', 'assets/uploads/sliders/01.jpg', 0),
(2, 'top brands', 'new collections', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'assets/uploads/sliders/02.jpg', 0),
(3, 'crazy super deals', 'get up to 70% OFF', '', 'assets/uploads/sliders/s1.jfif', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `is_active`, `is_deleted`) VALUES
(1, 'ANDHRA PRADESH', 105, 1, 0),
(2, 'ASSAM', 105, 1, 0),
(3, 'ARUNACHAL PRADESH', 105, 1, 0),
(4, 'BIHAR', 105, 1, 0),
(5, 'GUJARAT', 105, 1, 0),
(6, 'HARYANA', 105, 1, 0),
(7, 'HIMACHAL PRADESH', 105, 1, 0),
(8, 'JAMMU & KASHMIR', 105, 1, 0),
(9, 'KARNATAKA', 105, 1, 0),
(10, 'KERALA', 105, 1, 0),
(11, 'MADHYA PRADESH', 105, 1, 0),
(12, 'MAHARASHTRA', 105, 1, 0),
(13, 'MANIPUR', 105, 1, 0),
(14, 'MEGHALAYA', 105, 1, 0),
(15, 'MIZORAM', 105, 1, 0),
(16, 'NAGALAND', 105, 1, 0),
(17, 'ORISSA', 105, 1, 0),
(18, 'PUNJAB', 105, 1, 0),
(19, 'RAJASTHAN', 105, 1, 0),
(20, 'SIKKIM', 105, 1, 0),
(21, 'TAMIL NADU', 105, 1, 0),
(22, 'TRIPURA', 105, 1, 0),
(23, 'UTTAR PRADESH', 105, 1, 0),
(24, 'WEST BENGAL', 105, 1, 0),
(25, 'DELHI', 105, 1, 0),
(26, 'GOA', 105, 1, 0),
(27, 'PONDICHERY', 105, 1, 0),
(28, 'LAKSHDWEEP', 105, 1, 0),
(29, 'DAMAN & DIU', 105, 1, 0),
(30, 'DADRA & NAGAR', 105, 1, 0),
(31, 'CHANDIGARH', 105, 1, 0),
(32, 'ANDAMAN & NICOBAR', 105, 1, 0),
(33, 'UTTARANCHAL', 105, 1, 0),
(34, 'JHARKHAND', 105, 1, 0),
(35, 'CHATTISGARH', 105, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `days` int(11) NOT NULL,
  `product_limit` int(11) NOT NULL,
  `description` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `cost`, `days`, `product_limit`, `description`, `is_deleted`) VALUES
(1, '-', '11.00', 10, 1, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `is_active`, `is_deleted`) VALUES
(1, 1, 'tops', 'tops', 1, 0),
(2, 1, 'shirts', 'shirts', 1, 0),
(3, 4, 'sport wear', 'sport_wear', 1, 0),
(4, 2, 'tv', 'tv', 1, 0),
(5, 2, 'mobile', 'mobile', 1, 0),
(6, 2, 'keyboards', 'keyboards', 1, 0),
(7, 3, 'ring', 'ring', 1, 0),
(8, 2, 'ac', 'ac', 1, 0),
(9, 2, 'laptop', 'laptop', 1, 0),
(10, 2, 'earphone', 'earphone', 1, 0),
(11, 2, 'data cable', 'data_cable', 1, 0),
(12, 2, 'fen', 'fen', 1, 0),
(13, 2, 'table fen', 'table_fen', 0, 0),
(14, 2, 'mouse', 'mouse', 1, 0),
(15, 2, 'monitor', 'monitor', 1, 0),
(16, 5, 'table carpate', 'table_carpate', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_order_datas`
--

DROP TABLE IF EXISTS `tmp_order_datas`;
CREATE TABLE IF NOT EXISTS `tmp_order_datas` (
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `coupon_id` (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `profile_image` mediumtext NOT NULL,
  `last_login` datetime NOT NULL,
  `last_ip` varchar(50) NOT NULL,
  `signup_date` datetime DEFAULT current_timestamp(),
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) NOT NULL,
  `new_pass_key_requested` datetime NOT NULL,
  `sign_up_key` varchar(32) NOT NULL,
  `is_email_verified` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `firstname`, `lastname`, `email`, `mobile`, `password`, `profile_image`, `last_login`, `last_ip`, `signup_date`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `sign_up_key`, `is_email_verified`, `is_active`, `is_admin`, `is_deleted`) VALUES
(1, 1, 'bhavik', 'patel', 'bdp@narola.email', 9978554691, '7609d4129bbee31872fcdfed0be405c1', '', '2020-05-19 20:36:51', '::1', '2020-02-27 12:11:21', '2020-03-13 14:58:30', '', '2020-02-24 03:04:19', '', 1, 1, 1, 0),
(2, 0, 'User', 'User', 'user@gmail.com', 7878787878, 'ee11cbb19052e40b07aac0ca060c23ee', './assets/uploads/users/16-1-user.png', '2020-04-06 00:11:44', '::1', '2020-02-11 09:22:00', NULL, '-', '2020-03-03 00:00:00', '-', 1, 1, 0, 0),
(3, 0, 'anonymous', 'user', 'anonymous@gmail.com', 6565656565, '294de3557d9d00b3d2d8a1e6aab028cf', '-', '2020-03-12 12:28:39', '::1', '2020-03-02 05:13:28', NULL, '-', '2020-03-03 00:00:00', '-', 1, 1, 0, 0),
(8, 0, 'vixuti', 'patel', 'vrpp@narola.email', 9898675454, '604a829e759fd10c84f9f86867f98966', 'assets/uploads/users/1586111609-default_img.png', '2020-04-06 18:46:03', '::1', '2020-04-03 17:55:12', '2020-04-06 18:45:51', '', '0000-00-00 00:00:00', '6ec3125f81559a5cbfa7b37cccbc5cd3', 1, 1, 0, 0),
(11, 0, 'mili', 'tandel', 'mili@gmail.com', 8787676565, '76681a82dd1c41a61bf1d3fbcf20b608', 'assets/uploads/users/1586111945-default_img.png', '2020-04-06 00:08:28', '::1', '2020-04-03 18:03:07', NULL, '', '0000-00-00 00:00:00', '4b8de18fee1f85d06bad557d87ae41a0', 1, 1, 1, 0),
(45, 0, 'krina', 'patel', 'krina@gmail.com', 9878676567, '72f361fbf1ac746ef085c4a83bae0c44', '', '0000-00-00 00:00:00', '', '2020-04-06 15:19:19', NULL, '', '0000-00-00 00:00:00', '6db32f2b64fdad0b91b6c122382f8aaa', 0, 0, 0, 0),
(51, 0, 'jina', 'tandel', 'gcart.team@gmail.com', 9898786765, '1ac5a38d78b1c5159298aa191fb8b8d8', '', '2020-04-06 18:48:31', '::1', '2020-04-06 19:02:15', '2020-04-06 19:15:56', '', '0000-00-00 00:00:00', 'd0086194fbd3d608459c24afcb750405', 1, 1, 0, 0),
(52, 0, 'ayushi', 'patel', 'vrpl@narola.email', 9887677656, '3e44e7ddd8c1c14677d4043253c67833', '', '0000-00-00 00:00:00', '', '2020-04-06 19:33:10', NULL, '', '0000-00-00 00:00:00', 'ea3aaf65954c4b2d153a224ef60d3286', 1, 0, 0, 0),
(53, 0, 'vrp', 'narola', 'vixuti@gmail.com', 8787676556, '3e76c356c75da6415a8e741a6d50ffee', '', '2020-04-06 19:29:48', '::1', '2020-04-06 19:43:41', NULL, '', '0000-00-00 00:00:00', '33ec2d7a2f5d5b2ea48b9324e9bc1d6f', 1, 1, 0, 0),
(54, 0, 'ekta', 'patel', 'vrp@narola.email', 9898787667, '8846d35789786a4c5197130664ace6e0', 'assets/uploads/users/1586182037-dell.png', '2020-05-19 20:37:49', '::1', '2020-04-06 19:50:02', NULL, '', '0000-00-00 00:00:00', '019ef84b71ef206bea5d14aaaf7e5743', 1, 1, 0, 0),
(56, 0, 'komal', 'chhipa', 'komalkhalasi.13@gmail.com', 7894569856, '8ffa9b29c4b60ee0510b52f535fb5bf9', 'assets/uploads/users/1587624786-1586182037-dell.png', '2020-05-23 09:36:16', '::1', '2020-04-20 12:23:41', NULL, '', '0000-00-00 00:00:00', 'be76e829f4fa3b554fd60a31222b391e', 1, 1, 0, 0),
(57, 0, 'dharav', 'chhipa', 'dch@narola.email', 4569874569, '8ffa9b29c4b60ee0510b52f535fb5bf9', '', '2020-05-19 18:47:37', '::1', '2020-04-30 17:25:07', '2020-05-19 18:40:38', '', '0000-00-00 00:00:00', 'bb1e0f16ea4240465763728f5cd6f28a', 1, 1, 0, 0),
(59, 0, 'komal', 'khalasi', 'kdc@narola.email', 7894856985, '8ffa9b29c4b60ee0510b52f535fb5bf9', '', '2020-05-20 22:07:18', '::1', '2020-05-15 18:13:58', NULL, '', '0000-00-00 00:00:00', 'a2bd8476ce5c07f161fd15c9c1dd790b', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_addresses`
--

DROP TABLE IF EXISTS `users_addresses`;
CREATE TABLE IF NOT EXISTS `users_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `house_or_village` varchar(250) NOT NULL,
  `street_or_society` varchar(250) NOT NULL,
  `landmark` varchar(250) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `pincode` int(6) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `city_id` (`city_id`),
  KEY `state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_addresses`
--

INSERT INTO `users_addresses` (`id`, `users_id`, `house_or_village`, `street_or_society`, `landmark`, `city_id`, `state_id`, `pincode`, `is_deleted`) VALUES
(1, 75, 'd', 'ds', NULL, 17, 1, 396445, 0),
(2, 56, 'B-301', 'Startworld', 'Bagban Circel,near Guravpath', 147, 5, 123456, 0),
(3, 59, 'b-301', 'santiniketan socity', 'l.p savni road', 147, 5, 123456, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_auto_login`
--

DROP TABLE IF EXISTS `user_auto_login`;
CREATE TABLE IF NOT EXISTS `user_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `profile_image` mediumtext NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `shop_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(6) NOT NULL,
  `logo` mediumtext NOT NULL,
  `shop_number` int(11) NOT NULL,
  `registration_number` bigint(20) DEFAULT NULL,
  `subscribe_date` datetime NOT NULL,
  `shop_details` varchar(100) NOT NULL,
  `total_products` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_ip` varchar(50) NOT NULL,
  `new_pass_key` varchar(32) NOT NULL,
  `new_pass_key_requested` datetime NOT NULL,
  `sign_up_key` varchar(32) NOT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subscription_id` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `subscription_id`, `firstname`, `lastname`, `email`, `mobile`, `password`, `profile_image`, `owner_name`, `shop_name`, `address`, `city`, `pincode`, `logo`, `shop_number`, `registration_number`, `subscribe_date`, `shop_details`, `total_products`, `last_login`, `last_ip`, `new_pass_key`, `new_pass_key_requested`, `sign_up_key`, `last_password_change`, `is_email_verified`, `is_active`, `is_admin`, `is_deleted`) VALUES
(1, 1, 'bhavik', 'patel', 'bdp@narola.email', 9978554691, '53acf5f531943514246a7ed92f496a7d', 'assets/uploads/vendors/profile/1584168542-profile.png', 'admin', 'all in one store', 'mrl', 'surat', 396445, 'assets/uploads/vendors/logo/1585282690-logo_3.jpg', 7, 0, '2020-03-01 00:00:00', 'all sports items available', 37, '2020-03-01 00:00:00', '::1', '-', '2020-03-01 00:00:00', '-', '2020-03-02 14:58:30', 1, 1, 1, 0),
(2, 1, 'bdp', '7', 'bdp@mail.com', 9978554691, '29a2047bb5908c54034763e93eb92e1c', 'assets/uploads/vendors/profile/1584163289-profile.png\r\n', 'bdp', 'b7', 'mrl', 'navsari', 396445, 'assets/uploads/vendors/logo/1584424477-logo_1.jpg', 127, 0, '2020-03-02 00:00:00', '-', 39, '2020-02-17 10:32:20', '::1', '', '2020-02-26 00:00:00', '', NULL, 1, 1, 0, 0),
(4, NULL, 'kalpana', 'patel', 'kp@gmail.com', 9878676545, '760cace8efc1d83449521ed19438be02', '', 'kaplana', 'HP store', 'bilimora', '', 396321, '', 8874, 888344, '0000-00-00 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', 'e03de56a8ce397589dcdbd7a7c748f7d', NULL, 0, 0, 0, 0),
(5, NULL, 'mira', 'patel', 'mira@gmail.com', 8987787656, '59696065bfcc1bdf8eefaf2c5984a19b', '', 'mira patel', 'unique shop', 'narayan nagar', '', 396321, '', 987, 867876, '0000-00-00 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', 'b1a195ca9e32948cd658058e6af9b21b', NULL, 0, 0, 0, 0),
(6, NULL, 'mira', 'patel', 'mira@gmail.com', 8987787656, '59696065bfcc1bdf8eefaf2c5984a19b', '', 'mira patel', 'unique shop', 'narayan nagar', '', 396321, '', 987, 867876, '0000-00-00 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '421ddbec8d248a54b0d81aa9bdcdaf61', NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `is_deleted`) VALUES
(51, 56, 11, 1),
(52, 56, 13, 1),
(53, 56, 12, 1),
(55, 56, 12, 1),
(56, 56, 12, 1),
(57, 56, 5, 1),
(58, 56, 12, 1),
(59, 56, 8, 1),
(60, 56, 11, 1),
(61, 56, 11, 1),
(62, 56, 13, 1),
(63, 56, 13, 1),
(64, 56, 11, 1),
(65, 56, 12, 1),
(66, 56, 12, 1),
(67, 56, 11, 1),
(68, 56, 11, 1),
(69, 56, 6, 1),
(70, 56, 6, 1),
(71, 56, 6, 1),
(72, 56, 13, 1),
(73, 56, 12, 1),
(74, 56, 11, 1),
(75, 56, 8, 1),
(76, 56, 6, 1),
(77, 56, 11, 1),
(78, 56, 2, 1),
(79, 56, 5, 1),
(80, 56, 6, 1),
(81, 56, 4, 1),
(82, 56, 6, 1),
(83, 56, 3, 1),
(84, 56, 8, 1),
(86, 56, 11, 1),
(87, 56, 12, 1),
(88, 56, 5, 1),
(89, 56, 6, 1),
(90, 56, 4, 1),
(91, 56, 12, 1),
(92, 56, 11, 1),
(93, 56, 13, 1),
(94, 56, 11, 1),
(95, 56, 12, 1),
(96, 56, 5, 1),
(97, 56, 5, 1),
(98, 56, 4, 1),
(99, 56, 4, 1),
(100, 56, 4, 1),
(101, 56, 5, 1),
(102, 56, 5, 1),
(103, 56, 5, 1),
(104, 56, 11, 1),
(107, 56, 11, 1),
(113, 56, 4, 1),
(114, 56, 4, 1),
(116, 56, 5, 1),
(117, 56, 11, 1),
(118, 56, 11, 1),
(119, 56, 13, 1),
(120, 56, 11, 1),
(121, 56, 8, 1),
(122, 56, 3, 1),
(123, 56, 13, 1),
(124, 56, 11, 1),
(125, 56, 8, 1),
(126, 56, 12, 1),
(127, 56, 8, 1),
(128, 56, 4, 1),
(129, 56, 3, 1),
(130, 1, 8, 1),
(131, 1, 8, 1),
(132, 1, 11, 1),
(133, 1, 8, 1),
(134, 1, 4, 1),
(135, 1, 3, 1),
(136, 1, 11, 1),
(137, 56, 4, 1),
(138, 56, 2, 1),
(139, 56, 5, 1),
(140, 56, 6, 1),
(141, 1, 7, 1),
(142, 1, 12, 1),
(143, 56, 11, 1),
(144, 56, 12, 1),
(145, 56, 8, 1),
(146, 56, 3, 1),
(147, 56, 2, 1),
(148, 56, 5, 1),
(149, 56, 6, 1),
(150, 56, 11, 1),
(151, 56, 13, 1),
(152, 56, 7, 1),
(153, 56, 10, 1),
(154, 56, 9, 1),
(155, 56, 8, 1),
(156, 56, 12, 1),
(157, 56, 2, 1),
(158, 56, 5, 1),
(159, 56, 6, 1),
(160, 56, 4, 1),
(161, 56, 4, 1),
(162, 56, 4, 1),
(163, 56, 4, 1),
(164, 56, 4, 1),
(165, 56, 4, 1),
(166, 56, 8, 1),
(167, 56, 8, 1),
(168, 56, 3, 1),
(169, 56, 8, 1),
(170, 56, 2, 1),
(171, 56, 2, 1),
(172, 56, 5, 1),
(173, 56, 2, 1),
(174, 56, 2, 1),
(175, 56, 11, 1),
(176, 56, 11, 1),
(177, 56, 11, 1),
(178, 56, 11, 1),
(179, 56, 4, 1),
(180, 56, 8, 1),
(181, 56, 3, 1),
(182, 56, 5, 1),
(183, 56, 5, 1),
(184, 56, 5, 1),
(185, 56, 5, 1),
(186, 56, 5, 1),
(187, 56, 2, 1),
(188, 56, 6, 1),
(189, 56, 5, 1),
(190, 56, 5, 1),
(191, 56, 2, 1),
(192, 56, 5, 1),
(193, 56, 6, 1),
(194, 56, 6, 1),
(195, 56, 6, 1),
(196, 56, 5, 1),
(197, 56, 5, 1),
(198, 56, 5, 1),
(199, 56, 5, 1),
(200, 56, 2, 1),
(201, 56, 6, 1),
(202, 56, 5, 1),
(203, 56, 2, 1),
(204, 56, 5, 1),
(205, 56, 5, 1),
(206, 56, 5, 1),
(207, 56, 5, 1),
(208, 56, 5, 1),
(209, 56, 5, 1),
(210, 56, 5, 1),
(211, 56, 2, 1),
(212, 56, 2, 1),
(213, 56, 2, 1),
(214, 56, 5, 1),
(215, 56, 6, 1),
(216, 56, 6, 1),
(217, 56, 6, 1),
(218, 56, 4, 1),
(219, 56, 5, 1),
(220, 56, 6, 1),
(221, 56, 6, 1),
(222, 56, 2, 1),
(223, 56, 5, 1),
(224, 56, 6, 1),
(225, 56, 4, 1),
(226, 56, 5, 1),
(227, 56, 5, 1),
(228, 56, 5, 1),
(229, 56, 4, 1),
(230, 56, 5, 1),
(231, 56, 5, 1),
(232, 56, 5, 1),
(233, 56, 5, 1),
(234, 56, 4, 1),
(235, 56, 5, 1),
(236, 56, 5, 1),
(237, 56, 5, 1),
(238, 56, 5, 1),
(239, 56, 5, 1),
(240, 56, 5, 1),
(241, 56, 5, 1),
(242, 56, 5, 1),
(243, 56, 4, 1),
(244, 56, 5, 1),
(245, 56, 5, 1),
(246, 56, 5, 1),
(247, 56, 5, 1),
(248, 56, 5, 1),
(249, 56, 5, 1),
(250, 56, 5, 1),
(251, 56, 4, 1),
(252, 56, 5, 1),
(253, 56, 5, 1),
(254, 56, 5, 1),
(255, 56, 2, 1),
(256, 56, 5, 1),
(257, 56, 5, 1),
(258, 56, 5, 1),
(259, 56, 5, 1),
(260, 56, 5, 1),
(261, 56, 5, 1),
(262, 56, 4, 1),
(263, 56, 4, 1),
(264, 56, 4, 1),
(265, 56, 4, 1),
(266, 56, 4, 1),
(267, 56, 4, 1),
(268, 56, 4, 1),
(269, 56, 4, 1),
(270, 56, 4, 1),
(271, 56, 4, 1),
(272, 56, 5, 1),
(273, 56, 2, 1),
(274, 56, 6, 1),
(275, 56, 5, 1),
(276, 56, 11, 1),
(277, 56, 11, 1),
(278, 56, 11, 1),
(279, 56, 11, 1),
(280, 56, 4, 1),
(281, 56, 5, 1),
(282, 56, 11, 1),
(283, 56, 4, 1),
(284, 56, 5, 1),
(285, 56, 11, 1),
(286, 56, 9, 1),
(287, 56, 4, 1),
(288, 56, 8, 1),
(289, 56, 9, 1),
(290, 1, 3, 1),
(291, 1, 2, 1),
(292, 1, 3, 1),
(293, 1, 2, 1),
(294, 56, 2, 1),
(295, 56, 2, 1),
(296, 56, 2, 1),
(297, 56, 2, 1),
(298, 56, 2, 1),
(299, 56, 2, 1),
(300, 56, 5, 1),
(301, 56, 3, 1),
(302, 56, 4, 1),
(303, 56, 4, 1),
(304, 56, 4, 1),
(305, 56, 7, 1),
(306, 56, 8, 1),
(307, 56, 8, 1),
(308, 56, 8, 1),
(309, 56, 2, 1),
(310, 56, 5, 1),
(311, 56, 6, 1),
(312, 56, 4, 1),
(313, 56, 3, 1),
(314, 56, 7, 1),
(315, 56, 8, 1),
(316, 56, 4, 1),
(317, 56, 5, 1),
(318, 56, 4, 1),
(319, 56, 8, 1),
(320, 56, 13, 1),
(321, 56, 13, 1),
(322, 56, 4, 1),
(323, 56, 30, 1),
(324, 56, 31, 1),
(325, 56, 3, 1),
(326, 56, 4, 1),
(327, 56, 2, 1),
(328, 56, 2, 1),
(329, 56, 2, 1),
(330, 56, 4, 1),
(331, 56, 3, 1),
(332, 56, 7, 1),
(333, 56, 11, 1),
(334, 56, 2, 1),
(335, 56, 2, 1),
(336, 56, 2, 1),
(337, 56, 3, 1),
(338, 56, 4, 1),
(339, 56, 5, 1),
(340, 56, 4, 1),
(341, 56, 2, 1),
(342, 56, 3, 1),
(343, 56, 2, 1),
(344, 56, 3, 1),
(345, 56, 2, 1),
(346, 56, 3, 1),
(347, 56, 2, 1),
(348, 56, 4, 1),
(352, 56, 3, 1),
(353, 56, 4, 1),
(354, 56, 2, 1),
(355, 56, 5, 1),
(356, 56, 4, 1),
(357, 56, 3, 1),
(358, 56, 10, 1),
(359, 56, 2, 1),
(360, 56, 2, 1),
(361, 56, 4, 1),
(362, 56, 4, 1),
(363, 56, 4, 1),
(364, 56, 8, 1),
(365, 56, 31, 1),
(366, 56, 4, 1),
(367, 56, 4, 1),
(368, 56, 4, 1),
(369, 56, 8, 1),
(370, 56, 4, 1),
(371, 56, 3, 1),
(372, 56, 4, 1),
(373, 56, 4, 1),
(374, 56, 4, 1),
(375, 56, 8, 1),
(376, 56, 8, 1),
(377, 56, 3, 1),
(378, 56, 4, 1),
(379, 56, 5, 1),
(380, 56, 4, 1),
(381, 56, 4, 1),
(382, 56, 4, 1),
(383, 56, 4, 1),
(384, 56, 4, 1),
(385, 56, 4, 1),
(386, 56, 4, 1),
(387, 56, 4, 1),
(388, 56, 4, 1),
(389, 56, 4, 1),
(390, 56, 4, 1),
(391, 56, 4, 1),
(392, 56, 5, 1),
(393, 56, 5, 1),
(394, 56, 4, 1),
(395, 56, 4, 1),
(396, 56, 5, 1),
(397, 56, 4, 1),
(398, 56, 4, 1),
(399, 56, 5, 1),
(400, 56, 5, 1),
(401, 56, 4, 1),
(402, 56, 4, 1),
(403, 56, 5, 1),
(404, 56, 4, 1),
(405, 56, 5, 1),
(406, 56, 5, 1),
(407, 56, 4, 1),
(408, 56, 4, 1),
(409, 56, 4, 1),
(410, 56, 5, 1),
(411, 56, 5, 1),
(412, 56, 4, 1),
(413, 56, 4, 1),
(414, 56, 4, 1),
(415, 56, 4, 1),
(416, 56, 8, 1),
(417, 56, 8, 1),
(418, 56, 4, 1),
(419, 56, 3, 1),
(420, 56, 7, 1),
(421, 56, 10, 1),
(422, 56, 12, 1),
(423, 56, 12, 1),
(424, 56, 4, 1),
(425, 56, 5, 1),
(426, 56, 11, 1),
(427, 56, 4, 1),
(428, 56, 5, 1),
(429, 56, 4, 1),
(430, 56, 11, 1),
(431, 56, 5, 1),
(432, 56, 31, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `tmp_order_datas`
--
ALTER TABLE `tmp_order_datas`
  ADD CONSTRAINT `tmp_order_datas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tmp_order_datas_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `users_addresses`
--
ALTER TABLE `users_addresses`
  ADD CONSTRAINT `users_addresses_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_addresses_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
