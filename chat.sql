-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2016 at 05:26 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chathistory`
--

CREATE TABLE `chathistory` (
  `id` int(10) UNSIGNED NOT NULL,
  `supporter_id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session` int(11) NOT NULL DEFAULT '0',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chathistory`
--

INSERT INTO `chathistory` (`id`, `supporter_id`, `customer_id`, `type`, `message`, `session`, `datetime`) VALUES
(43, 2, 1, 1, 'abc', 1, '2016-12-28 13:39:54'),
(44, 2, 1, 2, 'ffff', 1, '2016-12-28 13:39:58'),
(45, 2, 1, 1, 'aaa', 2, '2016-12-28 13:43:42'),
(46, 2, 1, 2, 'ffff', 2, '2016-12-28 13:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `name`, `phone`) VALUES
(1, 'hinh129@gmail.com', 'nonghinh', '0986616031'),
(2, 'ngonngon@gmail.com', 'Nguyễn Văn A', '0972345117');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `supporter_id` int(10) UNSIGNED NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `level`, `customer_id`, `supporter_id`, `datetime`) VALUES
(18, 2, 1, 2, '2016-12-27 14:16:41'),
(19, 4, 1, 2, '2016-12-27 15:25:31'),
(20, 3, 1, 2, '2016-12-27 15:51:54'),
(21, 3, 1, 2, '2016-12-27 16:03:49'),
(22, 2, 2, 2, '2016-12-28 06:49:16'),
(23, 3, 1, 2, '2016-12-28 06:54:47'),
(24, 3, 1, 2, '2016-12-28 13:19:45'),
(25, 4, 1, 2, '2016-12-28 13:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `supporter`
--

CREATE TABLE `supporter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supporter`
--

INSERT INTO `supporter` (`id`, `name`, `email`, `phone`, `gender`, `type`) VALUES
(1, 'Nguyễn Tuyết Nhung', 'nguyentuyetnhung@gmail.com', '01678900255', 'Nữ', 1),
(2, 'Phan Đình Hải', 'phandinhhai@gmail.com', '0988765909', 'Nam', 2),
(4, 'Mong Manh', 'mongmanhk11b@gmail.com', '0975117407', 'Nữ', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chathistory`
--
ALTER TABLE `chathistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chathistory`
--
ALTER TABLE `chathistory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `supporter`
--
ALTER TABLE `supporter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
