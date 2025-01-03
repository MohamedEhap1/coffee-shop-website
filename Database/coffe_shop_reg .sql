-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2025 at 08:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffe_shop_reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `Name` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Check_admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`Name`, `Email`, `Password`, `Check_admin`) VALUES
('Mohamed Adel', 'Mohamed_Adel@gmail.com', '123456789', 0),
('mohamed', 'mohamedad@gmail.com', 'admin', 1),
('mo', 'mo1@gmail.com', 'mo1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title`, `price`, `image_url`) VALUES
(2, 'Colombian Supremo Cup (12 OZ)', 40, 'assets/images/cart-item-2.png'),
(3, 'Nitro Cold Brew w/ Straw (12 OZ)', 50, 'assets/images/cart-item-3.png'),
(4, 'Seasonal Single-Origin (12 OZ)', 30, 'assets/images/cart-item-4.png'),
(5, 'Indonesian Sumatra Mandheling (12 OZ)', 40, 'assets/images/cart-item-5.png'),
(6, 'Mint Mojito Iced Coffee (12 OZ)', 55, 'assets/images/cart-item-6.png'),
(7, 'Iced Americano (12 OZ)', 35, 'assets/images/cart-item-7.png'),
(8, 'Specialty Brews (12 OZ)', 85, 'assets/images/cart-item-8.png'),
(9, 'Seasonal Origin (12 OZ)', 80, 'assets/images/cart-item-9.png'),
(10, 'Ethiopian Yirgacheffe Cup (12 OZ)', 55, 'assets/images/cart-item-10.png'),
(11, 'Cold Brew Tonic In a Cup (12 OZ)', 35, 'assets/images/cart-item-11.png'),
(12, 'Caramel Cold Foam Cold Brew (12 OZ)', 55, 'assets/images/cart-item-12.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `total_price`, `order_date`) VALUES
(7, 'mo', 90.00, '2024-12-19 10:35:02'),
(8, 'mo', 90.00, '2024-12-19 10:35:31'),
(9, 'mo', 90.00, '2024-12-19 10:35:55'),
(10, 'mo', 90.00, '2024-12-19 10:37:09'),
(11, 'mo', 40.00, '2024-12-19 10:40:23'),
(12, 'mo', 45.00, '2024-12-19 10:41:26'),
(13, 'mo', 40.00, '2024-12-19 10:41:58'),
(14, 'mo', 40.00, '2024-12-19 10:44:49'),
(15, 'mo', 40.00, '2024-12-19 10:45:19'),
(16, 'mo', 40.00, '2024-12-19 10:46:50'),
(17, 'mo', 40.00, '2024-12-19 10:47:51'),
(18, 'mo', 40.00, '2024-12-19 10:49:30'),
(19, 'mo', 40.00, '2024-12-20 17:22:20'),
(20, 'mo', 40.00, '2024-12-20 17:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_name`, `quantity`, `price`) VALUES
(7, 7, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(8, 7, 'Nitro Cold Brew w/ Straw (12 OZ)', 1, 50.00),
(9, 8, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(10, 8, 'Nitro Cold Brew w/ Straw (12 OZ)', 1, 50.00),
(11, 9, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(12, 9, 'Nitro Cold Brew w/ Straw (12 OZ)', 1, 50.00),
(13, 10, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(14, 10, 'Nitro Cold Brew w/ Straw (12 OZ)', 1, 50.00),
(15, 11, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(16, 12, 'Americano - Hot Espresso (12 OZ)', 1, 45.00),
(17, 13, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(18, 14, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(19, 15, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(20, 16, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(21, 17, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(22, 18, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(23, 19, 'Colombian Supremo Cup (12 OZ)', 1, 40.00),
(24, 20, 'Colombian Supremo Cup (12 OZ)', 1, 40.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
