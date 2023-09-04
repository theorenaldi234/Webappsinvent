-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 02:05 PM
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
-- Database: `aplikasiit`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_27`
--

CREATE TABLE `ip_27` (
  `idip` varchar(100) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `user` text NOT NULL,
  `port_location` text NOT NULL,
  `pc_mac_address` text NOT NULL,
  `port_name` text NOT NULL,
  `nama_switch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ip_27`
--

INSERT INTO `ip_27` (`idip`, `ip_address`, `user`, `port_location`, `pc_mac_address`, `port_name`, `nama_switch`) VALUES
('', '', 'WarnetPC-Checkin', 'WARNET', 'b4-b5-2f-d1-6a-6e', 'FA0/3', 'Switch Office A-LT27'),
('[A3]', '[H3]', '[G3]', '[F3]', '[E3]', '[D3]', '[B3]'),
('[value-1]', '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_27`
--
ALTER TABLE `ip_27`
  ADD PRIMARY KEY (`idip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
