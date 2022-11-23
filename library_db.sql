-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:24 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_address` varchar(30) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_address`, `user_name`, `user_password`) VALUES
(1, 'Maha', 'palakkad', 'lakshmi', 'maha#123'),
(2, 'lachu', 'palakkad', 'richu', 'richu#1456'),
(3, 'anju', 'kochi', 'mennu', 'menu4123#');

-- --------------------------------------------------------

--
-- Table structure for table `books_detail`
--

CREATE TABLE `books_detail` (
  `id` int(11) NOT NULL,
  `book_name` varchar(20) NOT NULL,
  `book_categ` varchar(10) NOT NULL,
  `charge_p_day` int(11) NOT NULL,
  `Author_name` varchar(20) NOT NULL,
  `Established_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_detail`
--

INSERT INTO `books_detail` (`id`, `book_name`, `book_categ`, `charge_p_day`, `Author_name`, `Established_date`) VALUES
(1, ' The Savior’s Champi', 'fantasy', 20, 'J.K. Rowling’s Harry', '2019-01-21'),
(2, 'Harry Potter or Chil', 'fantasy', 10, ' J.K. Rowling’s Harr', '2018-10-21'),
(3, 'the girl with dog', 'thriller', 15, 'maha', '2022-01-10'),
(4, 'The Woman in Cabin', 'Thriller', 13, 'a.t.poiuy', '2021-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `issuing_book`
--

CREATE TABLE `issuing_book` (
  `id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL,
  `Total_Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuing_book`
--

INSERT INTO `issuing_book` (`id`, `User_Id`, `book_id`, `issue_date`, `return_date`, `Total_Amount`) VALUES
(1, 1, 3, '2022-01-01', '2022-01-04', 0),
(2, 2, 1, '2022-03-10', '2022-03-19', 0),
(3, 3, 4, '2022-10-31', '2022-11-04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_phonenum` bigint(20) NOT NULL,
  `user_Address` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_name`, `user_phonenum`, `user_Address`) VALUES
(1, 'anu', 23418765, 'chennai'),
(2, 'ammu', 90876543, 'trivandram'),
(3, 'achu', 456213679, 'kochi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_detail`
--
ALTER TABLE `books_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuing_book`
--
ALTER TABLE `issuing_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books_detail`
--
ALTER TABLE `books_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issuing_book`
--
ALTER TABLE `issuing_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
