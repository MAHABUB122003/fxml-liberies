-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 06:45 AM
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
-- Database: `tome`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `prod_id`, `prod_name`, `type`, `quantity`, `price`, `date`, `image`, `em_username`) VALUES
(7, '1', '2', 'Size: 8', 'Male', 1, 10, '2025-07-25', 'C:\\\\\\\\Users\\\\\\\\MD Mahabubur Rahman\\\\\\\\Downloads\\\\\\\\pic 7.jpg', 'admin'),
(8, '2', '1', 'Size:8', 'Male', 2, 30, '2025-07-25', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\pic1.jpg', 'admin'),
(10, '3', '3', 'Size: 8.5', 'Female', 1, 12, '2025-07-27', 'C:\\\\\\\\Users\\\\\\\\MD Mahabubur Rahman\\\\\\\\Downloads\\\\\\\\pic8.jpg', 'admin ');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `question`, `answer`, `date`) VALUES
(2, 'root', 'root1234', 'What is your favorite pet?', 'cat', '2025-07-19'),
(4, 'mahabub', '12345678', 'What is your favorite color?', 'red', '2025-07-19'),
(5, 'admin', 'admin123', 'What is your favorite color?', 'red', '2025-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `prod_id` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prod_id`, `prod_name`, `type`, `stock`, `price`, `status`, `image`, `date`) VALUES
(5, '1', 'Size:8', 'Male', 21, 15, 'Available', 'C:\\Users\\MD Mahabubur Rahman\\Downloads\\pic1.jpg', '2025-07-24'),
(6, '2', 'Size: 8', 'Male', 23, 10, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\pic 7.jpg', '2025-07-25'),
(7, '3', 'Size: 8.5', 'Female', 49, 12, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\pic8.jpg', '2025-07-25'),
(8, '4', 'Size: 4.5', 'Children', 25, 11, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\pic9.jpg', '2025-07-25'),
(9, '5', 'Size: 5', 'Children', 12, 15, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\pic10.jpg', '2025-07-25'),
(10, '6', 'Size:6', 'Children', 15, 13.5, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\pic11.jpg', '2025-07-25'),
(11, '7', 'Size: 5.5', 'Children', 30, 25, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\pic12.jpg', '2025-07-25'),
(12, '8', 'Size: 9', 'Female', 25, 17, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\p1.jpg', '2025-07-25'),
(13, '9', 'Size:9', 'Male', 12, 22, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\p3.jpg', '2025-07-25'),
(14, '10', 'Size: 9', 'Male', 15, 25, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\1.jpg', '2025-07-25'),
(15, '11', 'Size: 8.5', 'Male', 15, 30, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\p2.jpg', '2025-07-25'),
(16, '12', 'Size:8', 'Male', 12, 22, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\3.jpg', '2025-07-25'),
(17, '13', 'Size:4', 'Children', 22, 45, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\g1.jpg', '2025-07-25'),
(18, '14', 'Size:8.5', 'Female', 22, 18, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\g2.jpg', '2025-07-25'),
(19, '8.5', 'Size:9', 'Male', 25, 30, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\g5.jpg', '2025-07-25'),
(20, '16', 'Size:4.5', 'Children', 25, 25, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\g6.jpg', '2025-07-25'),
(21, '17', 'Size:5.5', 'Children', 25, 19, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\ps.jpg', '2025-07-25'),
(22, '18', 'Size:7.5', 'Male', 12, 21, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\b3.jpg', '2025-07-25'),
(23, '19', 'Size:8', 'Male', 15, 25, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\b4.jpg', '2025-07-25'),
(24, '20', 'Size:9', 'Male', 25, 17, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\b5.jpg', '2025-07-25'),
(25, '21', 'Size:9', 'Male', 25, 35, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\b6.jpg', '2025-07-25'),
(26, '22', 'Size:8.5', 'Male', 15, 50, 'Available', 'C:\\\\Users\\\\MD Mahabubur Rahman\\\\Downloads\\\\b9.jpg', '2025-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `total` double NOT NULL,
  `date` date DEFAULT NULL,
  `em_username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `customer_id`, `total`, `date`, `em_username`) VALUES
(1, 1, 220, '2025-07-23', 'admin'),
(4, 2, 30, '2025-07-25', 'admin'),
(5, 3, 12, '2025-07-27', 'admin ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
