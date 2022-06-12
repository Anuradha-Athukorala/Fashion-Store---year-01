-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 11:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unique fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(500) NOT NULL,
  `line_1` varchar(300) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `district` varchar(300) NOT NULL,
  `country` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `gender`, `mobile`, `email`, `password`, `line_1`, `postal_code`, `district`, `country`) VALUES
(1, 'supun', 'dileepa ', 'male', 710779809, 'paranagamasupun@gmail.com', 'supun123', 'Ihalagedara', 71350, 'Kegalle', 'Sri Lanka'),
(2, 'kamal', 'perera', 'male', 763542784, 'kamalperera1998@gmai.com', 'kamal1998', 'a45', 45734, 'Colombo', 'Sri Lanka'),
(3, 'Eric', 'Johnson', 'male', 2147483647, 'eric123@yahoo.com', '$2y$10$U1e/ylMCFJxtDdaod6BpUOCvSuzLHClPMjQzH8CL2xRu4jWOuI6Mi', 'D675/5', 46678, 'Auburn', 'United States of America'),
(4, 'Sandeepa', 'Samaraweera', 'male', 763452439, 'sandeepasamaraweera@gmail.com', '$2y$10$yN35sS8kWBvhF3i9VMuupeErSlh6qGo5WVlHhmeQ6bq5eZ4S9Y4D2', 'polonnaruwa', 35489, 'polonnaruwa', 'Afganistan');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postalcode` int(11) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `first_name`, `last_name`, `mobile`, `email`, `address`, `city`, `postalcode`, `country`) VALUES
(1, 'supun', 'dileepa ', 170779809, 'paranagamasupun@gmail.com', 'Ihalagedara\r\nKobbawela\r\nGaligamuwaTown', 'Kegalle', 71350, 'Sri Lanka');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Item_id` int(11) NOT NULL,
  `Item_code` varchar(100) NOT NULL,
  `Item_name` varchar(100) NOT NULL,
  `Item_description` varchar(300) NOT NULL,
  `Item_size` varchar(20) NOT NULL,
  `Price` float NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_id`, `Item_code`, `Item_name`, `Item_description`, `Item_size`, `Price`, `Quantity`) VALUES
(1, 'TS172', 'T Shirt', 'New High quality men T shirt\r\ncasual short sleeve o-neck 100%\r\ncotton t-shirtmen brand white black', 'M', 20.45, 45),
(2, 'DJ876', 'Denim Jeans', 'Mens Boot Cut Jeans Slightly\r\nFlared Slim Fit Famous Brand\r\nBlue Black jeans Designer Classic\r\nMale Stretch Denim jeans', 'S', 40.21, 34),
(3, 'DJ532', 'Denim Jeans', 'Mens Boot Cut Jeans Slightly\r\nFlared Slim Fit Famous Brand\r\nBlue Black jeans Designer Classic\r\nMale Stretch Denim jeans', 'L', 40.21, 20),
(4, 'SH658', 'Shoe', 'New Brown Shoes.Branded', 'M', 30.78, 20),
(5, 'WH130', 'Watch', 'Brand new Rolex watch with Leather Wrist Band', 'L', 249.99, 5);

-- --------------------------------------------------------

--
-- Table structure for table `loggeduser`
--

CREATE TABLE `loggeduser` (
  `id` int(11) NOT NULL,
  `userNameOrEmail` varchar(500) NOT NULL,
  `Password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loggeduser`
--

INSERT INTO `loggeduser` (`id`, `userNameOrEmail`, `Password`) VALUES
(3, 'paranagamasupun@gmail.com', '$2y$10$SrPD5ZSj7s0SBheTmjzsV.BLfYMR5S5puTha89HyTcRhtQxpxbUxC');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `card_no` varchar(500) NOT NULL,
  `Exp_month` int(11) NOT NULL,
  `Exp_year` int(11) NOT NULL,
  `cvv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `card_no`, `Exp_month`, `Exp_year`, `cvv`) VALUES
(1, 'R P S D Paranagama', '2736495632846355', 10, 2025, 549),
(2, 'Kamal Perera', '4658129758435123', 12, 2026, 455);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Item_id`);

--
-- Indexes for table `loggeduser`
--
ALTER TABLE `loggeduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `Item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loggeduser`
--
ALTER TABLE `loggeduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
