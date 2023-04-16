-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 07:33 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `immunization_record`
--

CREATE TABLE `immunization_record` (
  `immunization_number` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `weight` decimal(52,1) DEFAULT NULL,
  `height` decimal(52,1) DEFAULT NULL,
  `immunization` varchar(255) DEFAULT NULL,
  `dose` varchar(10) DEFAULT NULL,
  `immunization_date` datetime DEFAULT NULL,
  `consultant` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `contact_no` varchar(50) NOT NULL,
  `immunization_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `consultation_number` int(11) DEFAULT NULL,
  `prediction_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prediction_record`
--

CREATE TABLE `prediction_record` (
  `prediction_number` int(11) NOT NULL,
  `patients_id` int(11) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `smoking_status` int(11) DEFAULT NULL,
  `alcohol_status` int(11) DEFAULT NULL,
  `diabetic` int(11) DEFAULT NULL,
  `family_history` int(11) DEFAULT NULL,
  `obesity` int(11) DEFAULT NULL,
  `physical_inactivity` int(11) DEFAULT NULL,
  `prevalent_stroke` int(11) DEFAULT NULL,
  `prevalent_hypertensive` int(11) DEFAULT NULL,
  `bp_medications` int(11) DEFAULT NULL,
  `prediction` decimal(50,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prenatal_consultation`
--

CREATE TABLE `prenatal_consultation` (
  `age_in_months` int(11) NOT NULL,
  `patients_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `aog` decimal(52,2) NOT NULL,
  `bp` varchar(25) NOT NULL,
  `pulse_rate` int(11) NOT NULL,
  `respiratory_rate` int(11) NOT NULL,
  `temperature` decimal(52,2) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` decimal(52,2) NOT NULL,
  `bmi` decimal(52,2) NOT NULL,
  `fundic_height` decimal(52,2) NOT NULL,
  `fetal_heart_tone` varchar(25) NOT NULL,
  `presentation` varchar(25) NOT NULL,
  `unconscious_convulsing` varchar(25) NOT NULL,
  `vaginal_bleeding` varchar(25) NOT NULL,
  `abdominal_pain` varchar(25) NOT NULL,
  `looks` varchar(25) NOT NULL,
  `headache` varchar(25) NOT NULL,
  `breathing` varchar(25) NOT NULL,
  `fever` varchar(25) NOT NULL,
  `vomiting` varchar(25) NOT NULL,
  `edema` varchar(25) NOT NULL,
  `laboratory_utz` varchar(25) NOT NULL,
  `tetanus_toxoid` varchar(25) NOT NULL,
  `iron` varchar(25) NOT NULL,
  `antibiotics` varchar(25) NOT NULL,
  `check_up` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prenatal_record`
--

CREATE TABLE `prenatal_record` (
  `patients_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` int(25) NOT NULL,
  `birthday` date NOT NULL,
  `husband` varchar(100) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `contact_no` varchar(25) NOT NULL,
  `philhealth_no` varchar(25) NOT NULL,
  `lmp` varchar(25) NOT NULL,
  `pmp` varchar(25) NOT NULL,
  `edc` varchar(25) NOT NULL,
  `past_medical_history` varchar(50) NOT NULL,
  `family_history` varchar(50) NOT NULL,
  `history_of_infection` varchar(50) NOT NULL,
  `age_in_months` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `fk_immunization_record_newborn_record` (`id`);

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
-- Indexes for table `prediction_record`
--
ALTER TABLE `prediction_record`
  ADD PRIMARY KEY (`prediction_number`),
  ADD KEY `patients_id` (`patients_id`);

--
-- Indexes for table `prenatal_consultation`
--
ALTER TABLE `prenatal_consultation`
  ADD PRIMARY KEY (`age_in_months`),
  ADD KEY `fk_prenatal_consultation_prenatal_record` (`patients_id`);

--
-- Indexes for table `prenatal_record`
--
ALTER TABLE `prenatal_record`
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
  MODIFY `consultation_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `immunization_record`
--
ALTER TABLE `immunization_record`
  MODIFY `immunization_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newborn_record`
--
ALTER TABLE `newborn_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patients_record`
--
ALTER TABLE `patients_record`
  MODIFY `patients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `prediction_record`
--
ALTER TABLE `prediction_record`
  MODIFY `prediction_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prenatal_consultation`
--
ALTER TABLE `prenatal_consultation`
  MODIFY `age_in_months` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prenatal_record`
--
ALTER TABLE `prenatal_record`
  MODIFY `patients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `fk_immunization_record_newborn_record` FOREIGN KEY (`id`) REFERENCES `newborn_record` (`id`),
  ADD CONSTRAINT `immunization_record_ibfk_1` FOREIGN KEY (`id`) REFERENCES `newborn_record` (`id`);

--
-- Constraints for table `prediction_record`
--
ALTER TABLE `prediction_record`
  ADD CONSTRAINT `prediction_record_ibfk_1` FOREIGN KEY (`patients_id`) REFERENCES `patients_record` (`patients_id`);

--
-- Constraints for table `prenatal_consultation`
--
ALTER TABLE `prenatal_consultation`
  ADD CONSTRAINT `fk_prenatal_consultation_prenatal_record` FOREIGN KEY (`patients_id`) REFERENCES `prenatal_record` (`patients_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
