-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2020 at 06:59 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.31-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `potato`
--
CREATE DATABASE IF NOT EXISTS `potato` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `potato`;

-- --------------------------------------------------------

--
-- Table structure for table `data_records`
-- 

DROP TABLE IF EXISTS `data_records`;
CREATE TABLE `data_records` (
  `id` int(50) NOT NULL,
  `tz` varchar(50) NOT NULL,
  `solar` varchar(50) NOT NULL,
  `rainfall` varchar(50) NOT NULL,
  `wind_speed` varchar(50) NOT NULL,
  `wind_direction` varchar(50) NOT NULL,
  `air_temperature` varchar(50) NOT NULL,
  `vapour_pressure` varchar(50) NOT NULL,
  `atm_pressure` varchar(50) NOT NULL,
  `relative_humidity` varchar(50) NOT NULL,
  `tb_count` varchar(50) NOT NULL,
  `tb_rainfall` varchar(50) NOT NULL,
  `timing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `device_list`
--

DROP TABLE IF EXISTS `device_list`;
CREATE TABLE `device_list` (
  `id` int(50) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `device_id` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_records`
--
ALTER TABLE `data_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_list`
--
ALTER TABLE `device_list`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
