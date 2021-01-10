-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2020 at 03:30 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuoiky`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, '2019-12-29 15:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `class` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `active`, `status`, `class`, `created_at`, `updated_at`) VALUES
(8, 'Áo', 'ao', NULL, NULL, 0, 1, 'fas fa-tshirt', '2019-12-27 11:01:04', '2019-12-27 12:07:52'),
(9, 'Quần', 'quan', NULL, NULL, 0, 1, 'fas fa-tshirt', '2019-12-27 11:01:10', '2019-12-27 12:21:53'),
(10, 'Giày', 'giay', NULL, NULL, 0, 1, 'fas fa-socks', '2019-12-27 11:01:26', '2019-12-27 12:22:19'),
(11, 'Đồng hồ', 'dong-ho', NULL, NULL, 0, 1, 'fas fa-clock', '2019-12-27 12:27:49', '2019-12-27 12:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(10, 8, 19, 5, 320000, NULL, NULL),
(11, 8, 7, 5, 140000, NULL, NULL),
(12, 8, 8, 10, 600000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thunbar` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thunbar`, `category_id`, `pay`, `content`, `number`, `head`, `view`, `hot`, `created_at`, `updated_at`) VALUES
(5, 'Áo mixi hàng chợ', 'ao-mixi-hang-cho', 300000, 0, 'aomixi.jpg', 8, 4, 'Áo mixi', 6, 0, 0, 1, NULL, '2019-12-27 11:07:27'),
(6, 'Quần màu đen', 'quan-mau-den', 400000, 20, 'quanmauden.jpg', 9, 0, 'Quần màu đen', 14, 0, 0, 0, NULL, '2019-12-27 11:13:51'),
(7, 'Quần đùi màu đen', 'quan-dui-mau-den', 200000, 30, 'quanmaudennhunglaquandui.jpg', 9, 8, 'Quần màu đen nhưng là quần đùi', 6, 0, 0, 1, NULL, '2019-12-27 12:32:08'),
(8, 'Quần đùi màu đen adidas', 'quan-dui-mau-den-adidas', 600000, 0, 'quanmaudennhunglaaddidas.jpg', 9, 1, 'Quần màu đen nhưng là quần đùi nhưng là quần adidas', 19, 0, 0, 1, NULL, '2019-12-27 12:32:09'),
(9, 'Quàn màu xám', 'quan-mau-xam', 300000, 0, 'quanmauxam.jpg', 9, 0, 'Quần màu xám', 20, 0, 0, 0, NULL, NULL),
(10, 'Quần đùi màu đỏ', 'quan-dui-mau-do', 200000, 50, 'quanmaudo.jpg', 9, 0, 'Quần đùi nhưng màu đỏ', 20, 0, 0, 0, NULL, NULL),
(11, 'Áo Việt Nam Vô Địch', 'ao-viet-nam-vo-dich', 1000000, 0, 'aovietnamvodich.jpg', 8, 1, 'Việt Nam Vô Địchhhhhhhhhhhhhh', 19, 0, 0, 1, NULL, '2019-12-27 12:32:11'),
(12, 'Áo màu trắng', 'ao-mau-trang', 200000, 30, 'aomautrang.jpg', 8, 0, 'Áo màu trắng', 20, 0, 0, 0, NULL, NULL),
(13, 'Áo màu đen', 'ao-mau-den', 200000, 30, 'aomauden.jpg', 8, 0, 'Áo màu đen', 20, 0, 0, 0, NULL, NULL),
(14, 'Áo sọc', 'ao-soc', 300000, 30, 'aosoc.jpg', 8, 4, 'Áo có sọc', 26, 0, 0, 0, NULL, '2019-12-27 11:53:23'),
(15, 'Áo màu vàng', 'ao-mau-vang', 300000, 0, 'aomauvang.jpg', 8, 0, 'Áo màu vàng', 30, 0, 0, 0, NULL, NULL),
(16, 'Giày màu đỏ', 'giay-mau-do', 300000, 20, 'giaymaudo.jpg', 10, 4, 'Giày màu đỏ', 26, 0, 0, 0, NULL, '2019-12-27 11:51:01'),
(17, 'Giày màu xanh', 'giay-mau-xanh', 400000, 20, 'giaymauxanh.jpg', 10, 0, 'Giày màu xanh', 30, 0, 0, 0, NULL, NULL),
(18, 'Giày đủ màu', 'giay-du-mau', 500000, 20, 'giaydumau.jpg', 10, 5, 'Giày đủ màu', 5, 0, 0, 0, NULL, '2019-12-27 11:43:16'),
(19, 'Giày màu xám', 'giay-mau-xam', 400000, 20, 'giaymauxam.jpg', 10, 5, 'Giày màu xám', 5, 0, 0, 0, NULL, '2019-12-27 11:52:01'),
(20, 'Giày màu đen', 'giay-mau-den', 200000, 0, 'giaymauden.jpg', 10, 0, 'Giày màu đen', 10, 0, 0, 0, NULL, NULL),
(21, 'Giày màu trắng', 'giay-mau-trang', 300000, 20, 'giaymautrang.jpg', 10, 0, 'Giày màu trắng', 10, 0, 0, 0, NULL, '2019-12-27 11:29:09'),
(22, 'Đồng hồ bạc', 'dong-ho-bac', 500000, 0, 'donghobac.jpg', 11, 0, 'Đồng hồ bạc', 13, 0, 0, 0, NULL, NULL),
(23, 'Đồng hồ vàng', 'dong-ho-vang', 3000000, 0, 'donghovang.jpg', 11, 0, 'Đồng hồ vàng', 13, 0, 0, 0, NULL, '2019-12-27 12:30:59'),
(24, 'Đồng hồ đen', 'dong-ho-den', 400000, 127, 'donghoden.jpg', 11, 0, 'Đồng hồ đen', 38, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `note` varchar(100) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `users_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(8, 8715000, 7, 'giao hàng tận nơi', 0, '2019-12-29 15:18:57', '2019-12-29 15:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Nguyễn Văn Kiên', 'kienquat2005@gmail.com', '0349947004', 'Quế Sơn - Quảng Nam', 'e5fbdb05404e2caa225c101098c3e4c7', NULL, 1, NULL, NULL),
(8, 'Trịnh Xuân Khánh', 'trinhxuankhanh@gmail.com', '012345678', 'Điện Bàn - Quảng Nam', '37ba32a8f3cd6d01ef0d04031eca6329', NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
