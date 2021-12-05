-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 11:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobopportunity`
--

-- --------------------------------------------------------

--
-- Table structure for table `posted`
--

CREATE TABLE `posted` (
  `posted_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `type` varchar(6) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posted`
--

INSERT INTO `posted` (`posted_id`, `title`, `description`, `image`, `type`, `username`) VALUES
(8, 'Software Development', 'am a software developer  and mobile application developer please contact me if you have job', 'gabiro.jpg', 'part', 'zain'),
(9, 'Driver', 'am Truck driver i want a job please contact  me via  joe@gmail.com', 'rwanda.jpg', 'full', 'zain'),
(10, 'Cleaner', 'am cleaner i want a job and am also home maid', 'viov.JPG', 'part', 'zain'),
(11, 'Security ', 'am security guard i want anyone who can hire me', 'factors.PNG', 'full', 'billazamani');

-- --------------------------------------------------------

--
-- Table structure for table `signuptable`
--

CREATE TABLE `signuptable` (
  `id` int(255) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` text NOT NULL,
  `mnmber` varchar(12) NOT NULL,
  `imgUpload` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signuptable`
--

INSERT INTO `signuptable` (`id`, `lname`, `fname`, `age`, `gender`, `email`, `mnmber`, `imgUpload`, `username`, `passwd`) VALUES
(16, 'Dusabe', 'Ramazani', 52, 'male', 'ramazanidusabe8@gmail.com', '0780314784', 'zain.jpg', 'zain', 'zain'),
(17, 'Dusa', 'zain', 31, 'male', 'goodramaofficial@gmail.com', '0780314784', 'zain.jpg', 'huba', 'zain');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posted`
--
ALTER TABLE `posted`
  ADD PRIMARY KEY (`posted_id`);

--
-- Indexes for table `signuptable`
--
ALTER TABLE `signuptable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posted`
--
ALTER TABLE `posted`
  MODIFY `posted_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `signuptable`
--
ALTER TABLE `signuptable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
