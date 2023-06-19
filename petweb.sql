-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 05:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `petsworld_admin`
--

CREATE TABLE `petsworld_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petsworld_admin`
--

INSERT INTO `petsworld_admin` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(2, 'admin', 'tejasvmore2017@gmail.com', 'admin2002');

-- --------------------------------------------------------

--
-- Table structure for table `petsworld_category`
--

CREATE TABLE `petsworld_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petsworld_category`
--

INSERT INTO `petsworld_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Cat', '230429032107.jpg'),
(2, 'Dog', '230429033435.jpg'),
(3, 'birds', '230429033548.jpg'),
(4, 'pet food', '230429033930.avif');

-- --------------------------------------------------------

--
-- Table structure for table `petsworld_orders`
--

CREATE TABLE `petsworld_orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petsworld_orders`
--

INSERT INTO `petsworld_orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`) VALUES
(3, 1, '2023-05-26', 'Cash', '900');

-- --------------------------------------------------------

--
-- Table structure for table `petsworld_orders_detail`
--

CREATE TABLE `petsworld_orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petsworld_orders_detail`
--

INSERT INTO `petsworld_orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(4, 3, 'pitbull', 9);

-- --------------------------------------------------------

--
-- Table structure for table `petsworld_product`
--

CREATE TABLE `petsworld_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petsworld_product`
--

INSERT INTO `petsworld_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'Ragdoll', 1, '500', 'This is cat .', '2304290352220.jpg'),
(2, 'mini coon', 1, '800', 'This is mini coon cat mostly located in america.', '2304290352500.jpeg'),
(3, 'rakoon', 1, '300', 'It is a rakoon cat most sell cat .', '2304290451010.jpeg'),
(4, 'Oreo', 1, '500', 'Made out of oreo.', '2304290353040.jpg'),
(5, 'german sheprt', 2, '100', 'This is a black chocolate.', '2304290356380.jpg'),
(6, 'pitbull', 2, '100', 'This is a strawberry.', '2304290356540.jpg'),
(7, 'cyberian hasky', 2, '100', 'This is a butterscotch.', '2304290357110.jpg'),
(8, 'Choco chips', 4, '050', 'This a chocolate chip cookie.', '2007310445280.jpg'),
(9, 'parrot', 3, '025', 'Chocolate flavoured dessert.', '2304290357560.jpg'),
(10, 'pegin', 3, '025', 'Vanilla flavoured dessert.', '2304290400430.webp');

-- --------------------------------------------------------

--
-- Table structure for table `petsworld_user_registrations`
--

CREATE TABLE `petsworld_user_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petsworld_user_registrations`
--

INSERT INTO `petsworld_user_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(1, 'tejas', 'tejasvmore2001@gmail.com', 'tejasmore', '0755864137', 'At post sasurve tel. Koregaon dist. Satara, At post sasurve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `petsworld_admin`
--
ALTER TABLE `petsworld_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `petsworld_category`
--
ALTER TABLE `petsworld_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `petsworld_orders`
--
ALTER TABLE `petsworld_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `petsworld_orders_detail`
--
ALTER TABLE `petsworld_orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `petsworld_product`
--
ALTER TABLE `petsworld_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `petsworld_user_registrations`
--
ALTER TABLE `petsworld_user_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `petsworld_admin`
--
ALTER TABLE `petsworld_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petsworld_category`
--
ALTER TABLE `petsworld_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `petsworld_orders`
--
ALTER TABLE `petsworld_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `petsworld_orders_detail`
--
ALTER TABLE `petsworld_orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `petsworld_product`
--
ALTER TABLE `petsworld_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `petsworld_user_registrations`
--
ALTER TABLE `petsworld_user_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
