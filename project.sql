-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2017 at 10:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `computer_parts`
--

CREATE TABLE `computer_parts` (
  `id` int(11) NOT NULL,
  `main_board` int(11) NOT NULL,
  `cpu` int(11) NOT NULL,
  `RAM` int(11) NOT NULL,
  `HDD` int(11) NOT NULL,
  `GPU` int(11) NOT NULL,
  `PSU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) NOT NULL,
  `cpu_manf` int(11) DEFAULT NULL,
  `cpu_model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cpu_manf`
--

CREATE TABLE `cpu_manf` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cpu_model`
--

CREATE TABLE `cpu_model` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `id` int(11) NOT NULL,
  `gpu_manf` int(11) DEFAULT NULL,
  `gpu_model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gpu_manf`
--

CREATE TABLE `gpu_manf` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gpu_model`
--

CREATE TABLE `gpu_model` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hdd`
--

CREATE TABLE `hdd` (
  `id` int(11) NOT NULL,
  `HDD_manf` int(11) DEFAULT NULL,
  `HDD_model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hdd_manf`
--

CREATE TABLE `hdd_manf` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hdd_model`
--

CREATE TABLE `hdd_model` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_board`
--

CREATE TABLE `main_board` (
  `id` int(11) NOT NULL,
  `mobo_manf` int(11) DEFAULT NULL,
  `mobo_model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mobo_manf`
--

CREATE TABLE `mobo_manf` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mobo_model`
--

CREATE TABLE `mobo_model` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psu`
--

CREATE TABLE `psu` (
  `id` int(11) NOT NULL,
  `psu_manf` int(11) DEFAULT NULL,
  `psu_model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psu_manf`
--

CREATE TABLE `psu_manf` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `psu_model`
--

CREATE TABLE `psu_model` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `id` int(11) NOT NULL,
  `ram_manf` int(11) DEFAULT NULL,
  `ram_model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ram_manf`
--

CREATE TABLE `ram_manf` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ram_model`
--

CREATE TABLE `ram_model` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `computer_parts`
--
ALTER TABLE `computer_parts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpu` (`cpu`,`RAM`,`HDD`,`main_board`,`GPU`,`PSU`),
  ADD KEY `main_board` (`main_board`),
  ADD KEY `RAM` (`RAM`),
  ADD KEY `HDD` (`HDD`),
  ADD KEY `GPU` (`GPU`),
  ADD KEY `PSU` (`PSU`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpu_manf`
--
ALTER TABLE `cpu_manf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpu_model`
--
ALTER TABLE `cpu_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gpu_manf`
--
ALTER TABLE `gpu_manf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gpu_model`
--
ALTER TABLE `gpu_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hdd_manf`
--
ALTER TABLE `hdd_manf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hdd_model`
--
ALTER TABLE `hdd_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_board`
--
ALTER TABLE `main_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobo_manf`
--
ALTER TABLE `mobo_manf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobo_model`
--
ALTER TABLE `mobo_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psu`
--
ALTER TABLE `psu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psu_manf`
--
ALTER TABLE `psu_manf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psu_model`
--
ALTER TABLE `psu_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ram_manf`
--
ALTER TABLE `ram_manf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ram_model`
--
ALTER TABLE `ram_model`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `computer_parts`
--
ALTER TABLE `computer_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cpu_manf`
--
ALTER TABLE `cpu_manf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cpu_model`
--
ALTER TABLE `cpu_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gpu`
--
ALTER TABLE `gpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gpu_manf`
--
ALTER TABLE `gpu_manf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gpu_model`
--
ALTER TABLE `gpu_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hdd`
--
ALTER TABLE `hdd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hdd_manf`
--
ALTER TABLE `hdd_manf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hdd_model`
--
ALTER TABLE `hdd_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `main_board`
--
ALTER TABLE `main_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mobo_manf`
--
ALTER TABLE `mobo_manf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mobo_model`
--
ALTER TABLE `mobo_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `psu`
--
ALTER TABLE `psu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `psu_manf`
--
ALTER TABLE `psu_manf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `psu_model`
--
ALTER TABLE `psu_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ram_manf`
--
ALTER TABLE `ram_manf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ram_model`
--
ALTER TABLE `ram_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
