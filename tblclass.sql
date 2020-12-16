-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 12:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruangkelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `id` int(11) NOT NULL,
  `classID` varchar(255) DEFAULT NULL,
  `className` varchar(255) NOT NULL,
  `userID_C` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`id`, `classID`, `className`, `userID_C`, `description`, `created_at`) VALUES
(1, 'y22vKx', 'Kelas Biologi', 'mDJtDHoxo0om', 'Using col ing color to add meaning only providclass. cobakj  jk kjcoba', '2020-11-23 06:52:19'),
(2, 'VwnGH4', 'Kelas Multimedia', 'mDJtDHoxo0om', 'Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by me b', '2020-11-23 06:53:51'),
(3, '3FWLvV', 'Kelas Internasional', 'mDJtDHoxo0om', 'Place one add-on echo Session::get(\'userName\');', '2020-11-23 07:19:03'),
(4, 'dCyANR', 'Kelas Internasional', 'mDJtDHoxo0om', 'fojjalnlkndlnlknalnlnlkasnlnzmvxn sakjbk x osfajqp oiocz Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies – such as screen readers. Ensure that information denoted by the color is eithevious', '2020-11-24 01:25:53'),
(5, '1nxm1a', 'kelas 1', 'mDJtDHoxo0om', 'coba', '2020-11-24 05:33:11'),
(6, 'bTRioq', 'Kelas Multimedia', 'lSnE9Qb1cBrh', '<span class=\"badge badge-success\" style=\"float: right;\">Your Class</span>', '2020-11-24 06:03:16'),
(7, '8hTRLJ', 'Kelas Multimedia', 'mDJtDHoxo0om', 'kelas kus', '2020-11-25 01:32:08'),
(8, 'tLO8tA', 'kelasku', 'mDJtDHoxo0om', 'sdabj ASCKJBCAS', '2020-12-15 13:26:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
