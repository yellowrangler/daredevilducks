-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2017 at 05:44 PM
-- Server version: 10.0.23-MariaDB
-- PHP Version: 5.6.23


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddd`
--

-- --------------------------------------------------------

--
-- Table structure for table `nflrsstbl`
--

DROP TABLE IF EXISTS `nflrsstbl`;
CREATE TABLE `nflrsstbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rsssource` varchar(255) DEFAULT NULL,
  `rsslink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Dumping data for table `nflrsstbl`
--

INSERT INTO `nflrsstbl` (`id`, `rsssource`, `rsslink`) VALUES
(1, 'NFL', 'http://www.nfl.com/rss/rsslanding?searchString=home'),
(2, 'ESPN', 'http://sports.espn.go.com/espn/rss/nfl/news'),
(3, 'Rotowire', 'http://www.rotowire.com/rss/news.htm?sport=nfl'),
(4, 'FOX', 'http://api.foxsports.com/v1/rss?partnerKey=zBaFxRyGKCfxBagJG9b8pqLyndmvo7UU&tag=nfl'),
(5, 'Boston Globe', 'http://www.boston.com/tag/new-england-patriots/?feed=rss');
