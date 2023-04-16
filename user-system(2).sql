-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 02:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultation_record`
--

CREATE TABLE `consultation_record` (
  `consultation_number` int(11) NOT NULL,
  `patients_id` int(11) NOT NULL,
  `bp` decimal(5,1) DEFAULT NULL,
  `pulse_rate` decimal(5,1) DEFAULT NULL,
  `weight` decimal(5,1) DEFAULT NULL,
  `height` decimal(5,1) DEFAULT NULL,
  `temperature` decimal(5,1) DEFAULT NULL,
  `allergies` varchar(255) NOT NULL,
  `consultation` varchar(255) NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `treatment_date` datetime NOT NULL,
  `medicine_treatment` varchar(255) NOT NULL,
  `consultant` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultation_record`
--

INSERT INTO `consultation_record` (`consultation_number`, `patients_id`, `bp`, `pulse_rate`, `weight`, `height`, `temperature`, `allergies`, `consultation`, `diagnosis`, `treatment_date`, `medicine_treatment`, `consultant`, `remarks`) VALUES
(5, 4, '80.0', '37.5', '66.1', '1.7', '36.5', 'kanin', 'ubo', 'sipon', '0000-00-00 00:00:00', 'paracetamol', 'Nurse Joy', 'pahinga'),
(7, 5, '80.0', '37.5', '67.4', '156.0', '34.6', 'babae', 'ubo', 'sipon', '2023-02-26 09:07:47', 'kiss', 'Nurse Joy', 'pahinga'),
(8, 4, '80.0', '37.5', '67.0', '156.0', '34.5', 'hipon', 'ubo', 'sipon', '2023-02-26 09:08:14', 'kiss', 'Nurse Joy', 'tulog');

-- --------------------------------------------------------

--
-- Table structure for table `immunization_record`
--

CREATE TABLE `immunization_record` (
  `immunization_number` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `height` decimal(5,1) DEFAULT NULL,
  `weight` decimal(5,1) DEFAULT NULL,
  `immunization` varchar(255) NOT NULL,
  `dose` varchar(11) NOT NULL,
  `immunization_date` datetime NOT NULL,
  `consultant` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `immunization_record`
--

INSERT INTO `immunization_record` (`immunization_number`, `id`, `height`, `weight`, `immunization`, `dose`, `immunization_date`, `consultant`) VALUES
(1, 1, '1.6', '14.5', 'haha', '1st', '2023-02-26 07:18:22', 'Nurse Joy');

-- --------------------------------------------------------

--
-- Table structure for table `newborn_record`
--

CREATE TABLE `newborn_record` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `suffix` varchar(11) NOT NULL,
  `gname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) NOT NULL,
  `sex` text NOT NULL,
  `contact_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newborn_record`
--

INSERT INTO `newborn_record` (`id`, `lastname`, `firstname`, `middlename`, `suffix`, `gname`, `address`, `birthday`, `age`, `sex`, `contact_no`) VALUES
(1, 'Tabing', 'Ada Vennard', 'Montenegro', 'n/a', 'Erick Tabing', 'Brgy. Sto Tomas Calauan Laguna', '2023-02-22', 24, 'Female', '0908778926');

-- --------------------------------------------------------

--
-- Table structure for table `patients_record`
--

CREATE TABLE `patients_record` (
  `patients_id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `suffix` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `age` int(25) NOT NULL,
  `sex` varchar(25) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `consultation_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients_record`
--

INSERT INTO `patients_record` (`patients_id`, `lastname`, `firstname`, `middlename`, `suffix`, `address`, `birthday`, `age`, `sex`, `contact_no`, `email`, `consultation_number`) VALUES
(4, 'Catchillar', 'CarlJustine', 'De Guzman', 'n/a', 'Blk 55 Lot 38, Phase 1, Brgy. Sto.Tomas, Calauan, Laguna', '2023-02-26', 22, 'Male', '09192191199', 'carljustine@gmail.com', 6),
(5, 'Montenegro', 'Agustin', 'Allerite', 'Jr', 'Montenegro', '2023-02-23', 23, 'Male', '908778926', 'agustinmontenegro824@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `email`, `password`) VALUES
(1, 'ahah', 'ahah@gmail.com', '123'),
(2, 'Agustin Allerite Montenegro', 'agustinmontenegro824@gmail.com', '123'),
(3, 'Agustin Allerite Montenegro', 'agustinmontenegro824@gmail.co', '123'),
(4, 'hehe', 'hehe@gmail.com', '123'),
(5, 'mema', 'mema@gmail.com', '123'),
(6, 'Nurse Joy', 'joy@gmail.com', '123'),
(7, 'Earl', 'earl@gmail.com', '12345'),
(8, 'raymond', 'raym@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultation_record`
--
ALTER TABLE `consultation_record`
  ADD PRIMARY KEY (`consultation_number`),
  ADD KEY `fk_patients_record` (`patients_id`);

--
-- Indexes for table `immunization_record`
--
ALTER TABLE `immunization_record`
  ADD PRIMARY KEY (`immunization_number`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `newborn_record`
--
ALTER TABLE `newborn_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients_record`
--
ALTER TABLE `patients_record`
  ADD PRIMARY KEY (`patients_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultation_record`
--
ALTER TABLE `consultation_record`
  MODIFY `consultation_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `immunization_record`
--
ALTER TABLE `immunization_record`
  MODIFY `immunization_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newborn_record`
--
ALTER TABLE `newborn_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients_record`
--
ALTER TABLE `patients_record`
  MODIFY `patients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consultation_record`
--
ALTER TABLE `consultation_record`
  ADD CONSTRAINT `fk_patients_record` FOREIGN KEY (`patients_id`) REFERENCES `patients_record` (`patients_id`);

--
-- Constraints for table `immunization_record`
--
ALTER TABLE `immunization_record`
  ADD CONSTRAINT `fk_newborn_id` FOREIGN KEY (`id`) REFERENCES `newborn_record` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
