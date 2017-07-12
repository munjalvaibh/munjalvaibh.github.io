-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2017 at 04:45 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libman`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `Book_Name` varchar(50) NOT NULL,
  `Genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `Book_Name`, `Genre`) VALUES
(1, '3 Men In a boat', 'Comedy'),
(2, 'xyz', 'abc'),
(3, 'Gulliver''s Travel', 'FICTION'),
(4, 'Goosebumps The Pirates', 'HORROR'),
(5, 'My Life-Bittoo', 'Bio-Graphy');

-- --------------------------------------------------------

--
-- Table structure for table `issued_bk`
--

CREATE TABLE `issued_bk` (
  `book_ID` varchar(11) NOT NULL,
  `issue_dt` varchar(50) NOT NULL,
  `return_dt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issued_bk`
--

INSERT INTO `issued_bk` (`book_ID`, `issue_dt`, `return_dt`) VALUES
('4', '2017-07-12', '2017-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Last Name` text NOT NULL,
  `First Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile No.` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `post` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Both for admin and librarian same table';

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Last Name`, `First Name`, `Email`, `Mobile No.`, `Password`, `post`) VALUES
('css', 'faf', 'afa', 'fsdf', 'dfs', 'admin'),
('munjal', 'prasham', 'munjal@gmail.com', '1561651', 'qwerty', 'lib'),
('njhkj', 'ndncan', 'klcsdmlkc', 'sdcvdsm ', 'asd', 'lib'),
('munjal', 'vaibhav', 'munjalvaibh@gmail.com', '21131', 'admin', 'admin'),
('MUNJAL', 'PRASHAM', 'munjalprasham@gmail.com', '8233813031', 'asdfghjkl', 'lib'),
('munjal', 'bittoo', 'bittoo@gmail.com', '165165146', '123456', 'lib'),
('bdbska', 'jvkdb', 'dsbfk', '1656', 'qaz', 'lib');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
