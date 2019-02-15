-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2019 at 12:14 PM
-- Server version: 5.7.9
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `uploaded_at`) VALUES
(1, '1550223736206125c6689786f0d0_original.jpg', '2019-02-15 09:42:18'),
(2, '1550223761123975c6689913695e_original.jpg', '2019-02-15 09:42:42'),
(3, '155022392484525c668a348ed84_original.jpg', '2019-02-15 09:45:25'),
(4, '155022428249255c668b9abf34f_original.jpg', '2019-02-15 09:51:23'),
(5, '1550230641276505c66a471483c9_original.png', '2019-02-15 11:37:22'),
(6, '155023064111865c66a471467db_original.png', '2019-02-15 11:37:23'),
(7, '155023282223385c66acf6e039e_original.jpg', '2019-02-15 12:13:43'),
(8, '1550232822289125c66acf6e8529_original.png', '2019-02-15 12:13:44');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
