-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ministore`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `userEmail`, `name`, `address`, `city`, `state`, `zip`, `created_at`) VALUES
(1, 'anu@yahoo.com', 'Ameer', 'Aysha Manzil', 'nill', 'nill', '288002', '2024-07-26 06:59:50'),
(2, 'anu@yahoo.com', 'Ameer', 'Aysha Manzil', 'nill', 'nill', '288002', '2024-07-26 07:25:03'),
(3, 'anu@yahoo.com', 'Ameer', 'Aysha Manzil', 'nill', 'nill', '288002', '2024-07-26 07:27:43'),
(4, 'anu@yahoo.com', 'Ameer', 'Aysha Manzil', 'nill', 'nill', '288002', '2024-07-26 09:24:51'),
(5, 'anu@yahoo.com', 'Ameer', 'nill', 'nill', 'nill', '288002', '2024-07-27 03:59:49'),
(6, 'anu@yahoo.com', 'Ameer', 'nill', 'nill', 'nill', '288002', '2024-07-27 04:02:15'),
(7, 'anu@yahoo.com', 'Ameer', 'nill', 'nill', 'nill', '288002', '2024-07-27 04:05:28'),
(8, 'sree@gmail.com', 'dfvbnm,.', 'hbnm,.', 'hgj.', 'nm,.', '4356789', '2024-07-30 15:46:57'),
(9, 'sree@gmail.com', 'dsfghjk', 'dfghj', 'rfghjk', 'dgfhjk', '456789', '2024-07-30 15:48:31'),
(10, 'sree@gmail.com', 'fghjkl;', 'bvnm,.', 'vbnm,.', 'bnm,.', '45678', '2024-07-30 15:53:08'),
(11, 'sree@gmail.com', 'werty', 'dfghjk', 'dgfhj', 'fghjkl', '345678', '2024-07-30 16:02:14'),
(12, 'sree@gmail.com', 'werty', 'dfghjk', 'dgfhj', 'fghjkl', '345678', '2024-07-30 16:08:25'),
(13, 'sree@gmail.com', 'werty', 'dfghjk', 'dgfhj', 'fghjkl', '345678', '2024-07-30 16:08:57'),
(14, 'sree@gmail.com', 'qwertyu', 'wertyui', 'dfghjk', 'dfghj', '34567', '2024-07-30 16:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `size`, `quantity`) VALUES
(3, 4, 16, '64GB', 11),
(4, 4, 15, '64GB', 2),
(10, 3, 15, '64GB', 1),
(11, 5, 8, '64GB', 1),
(12, 5, 15, '64GB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

CREATE TABLE `contact_submissions` (
  `submission_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_submissions`
--

INSERT INTO `contact_submissions` (`submission_id`, `name`, `email`, `subject`, `message`, `submission_date`) VALUES
(1, 'Anu', 'anu@yahoo.com', 'product damage', 'product damage', '2024-07-27 05:33:04'),
(2, 'Anu', 'anu@yahoo.com', 'Manufacturing defect', 'Manufacturing defect', '2024-07-29 06:31:42'),
(3, 'Anu', 'anu@yahoo.com', 'Manufacturing defect', 'Manufacturing defect', '2024-07-29 06:34:01'),
(4, 'Sreelakshmi sajeevan', 'sree@gmail.com', 'Manufacturing defect', 'Manufacturing defect', '2024-07-31 05:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `ministore_user`
--

CREATE TABLE `ministore_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ministore_user`
--

INSERT INTO `ministore_user` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Ameer', 'M', 'ameer@gamil.com', '$2a$10$fnNy9s4kKj2aQ86aOjciSu5XTDuQn2byy7oWMjR5NDgt7fGL8jid6'),
(2, 'Sahil', 'Jahas', 'sahil@gmail.com', '$2a$10$yu8JE3PeMISQWtxxkDTg7.xVmqftMbVLkBdXQfUQkebE2KZ5YY4ve'),
(3, 'Anu', 'George', 'anu@yahoo.com', '$2a$10$lOkaau5vueiggSBZ2zEfvOX2QVENsUo3yfmKzdGQ5whhsX7BVL6IW'),
(4, 'Anwar', 'M', 'anwar@gmail.com', '$2a$10$Cjzz6j12fjKS276/TvqeuudxR1u/cku9OS3zztXtBFH0DZgaPeDnK'),
(5, 'Admin', 'A', 'admin@gmail.com', '$2a$10$iGw5RjjRlqaAX2bCqtNYuu9pXGc0/hBNfq4aGcd0qg8nnYCdCgtqi'),
(6, 'Sreelakshmi', 'Sajeevan', 'sree@gmail.com', '$2a$10$28WkxhZhv0C0WCYdm7NKR.7OleyA4t3vc0p5KZe7GDWGZyI0NnFNW'),
(7, 'Firoz', 'Letheef', 'firoz@gmail.com', '$2a$10$lVyTE9EeUD7JsJa6Cg4JueisRnBPqVzsfXY3Z3RIWTRGMyO1anHxu');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `ordered_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `payment_id`, `ordered_date`) VALUES
(1, 6, 8, 'pay_Of7ZE5vY9cI9kc', '2024-07-31 10:48:25'),
(2, 6, 15, 'pay_Of7ppeiQJrRWYr', '2024-07-31 11:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(100) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `storage` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `highlight` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `specification` text DEFAULT NULL,
  `image_url` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `size`, `colour`, `storage`, `ram`, `highlight`, `description`, `specification`, `image_url`) VALUES
(8, 'IPhone 14', 3000, '64GB', 'Pacific Blue', '64GB', '6GB', '512 GB ROM\r\n15.49 cm (6.1 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA15 Bionic Chip, 6 Core Processor Processor', 'The iPhone 14 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle', 'In The Box\r\nHandset, USB-C to Lightning Cable, Documentation\r\nModel Number\r\nMPXN3HN/A\r\n', 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-14-finish-select-202209-6-1inch-blue?wid=5120&hei=2880&fmt=webp&qlt=70&.v=bjlYUjk1NXN2Uy9CTWFMaXBneUF0bEthL1VsNXgveGUwQ1JqNzA0ZHAra2lYQ0tYMHd1OS9ZREtnNzFSR1owOHF2TWlpSzUzejRCZGt2SjJUNGl1VEtsS0dZaHBma3VTb3UwU2F6dkc4TGUyZW92SlBoRGNVUmdGRkF6QU0rNmI=&traceId=1'),
(15, 'IPhone 13', 2000, '64GB', 'White', '64GB', '6GB', '128 GB ROM\r\n15.49 cm (6.1 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA15 Bionic Chip Processor', 'iPhone 13. boasts an advanced dual-camera system that allows you to click mesmerising pictures with immaculate clarity. Furthermore, the lightning-fast A15 Bionic chip allows for seamless multitasking, elevating your performance to a new dimension. A big leap in battery life, a durable design, and a bright Super Retina XDR display facilitate boosting your user experience.', 'In The Box\r\niPhone, USB-C to Lightning Cable, Documentation\r\nModel Number\r\nMLPH3HN/A\r\nModel Name\r\niPhone 13\r\nColor\r\nPink\r\nBrowse Type\r\nSmartphones\r\nSIM Type\r\nDual Sim\r\nHybrid Sim Slot\r\nNo\r\nTouchscreen\r\nYes\r\nOTG Compatible\r\nNo\r\nQuick Charging\r\nYes', 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-13-finish-select-202207-starlight?wid=5120&hei=2880&fmt=webp&qlt=70&.v=WGQwVDZoTWdLODlMWERUbVY5M013ZzNTNXU4cmFuZHdJd3pGZ3kzaE93dmFkOFU2MWsxeWdvellJRlRDRlhEeE9UVDVQbVhkcDIxQlRzeDZXVVpQSzF6enlSazFhbGkvR0NiVTdBeWRQTnpEK0VSZFdRaGlrSG54M1pSME5HVno=&traceId=1'),
(16, 'IPhone 15 Pro Max', 4000, '64GB', 'White', '64GB', '6GB', 'ROM 256GB\r\n17.02 cm (6.7 inch) Super Retina XDR Display\r\n48MP + 12MP + 12MP | 12MP Front Camera\r\nA17 Pro Chip, 6 Core Processor Processor', 'IPhone 15 Pro Max, a titanium marvel, boasts an aerospace-grade build, making it the lightest Pro model ever. The A17 Pro Chip marks a historic leap in Apple GPUs, delivering unparalleled graphics performance and immersive gaming experiences. The camera system shines with a 48 MP Main camera, offering remarkable detail and automatic portrait enhancements.', 'In The Box\r\nHandset, USB C Charge Cable (1m), Documentation\r\nModel Number\r\nMU793HN/A          \r\nModel Name\r\niPhone 15 Pro Max\r\n', 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-7inch-whitetitanium?wid=5120&hei=2880&fmt=webp&qlt=70&.v=VW44dkRidm5wazhwcGxtL0cyaEJ2VTkrNXBUdUJSK1k4NE5seUtJaW80ZkRmbnd3M3NkTWdNTTIrREE3akpCaWlCQmV2WTA2cncybDF2YzFnKzI0S2prMCtUNWwzYWR0UVU3TWVsbEdUeXRjODhrWk5XcFl2eGdtMU93TW5UemMxS0dMN3JEVTdzTGJjdjBqMFgrMm53PT0=&traceId=1');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `ministore_user`
--
ALTER TABLE `ministore_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ministore_user`
--
ALTER TABLE `ministore_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ministore_user` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ministore_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
