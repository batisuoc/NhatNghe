-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 01:55 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chungloai`
--

CREATE TABLE `chungloai` (
  `idCL` int(27) NOT NULL,
  `TenCL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `AnHien` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chungloai`
--

INSERT INTO `chungloai` (`idCL`, `TenCL`, `ThuTu`, `AnHien`) VALUES
(1, 'Sản phẩm cho nữ', 1, 1),
(2, 'Sản phẩm cho nam', 2, 1),
(3, 'Sản phẩm trẻ em', 3, 1),
(4, 'NỮ TRANG', 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chungloai`
--
ALTER TABLE `chungloai`
  ADD PRIMARY KEY (`idCL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chungloai`
--
ALTER TABLE `chungloai`
  MODIFY `idCL` int(27) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
