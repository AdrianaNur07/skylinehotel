-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2026 at 12:48 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skylinehotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `StaffID` varchar(4) NOT NULL,
  `DepartmentType` varchar(30) NOT NULL,
  `Position` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`StaffID`, `DepartmentType`, `Position`) VALUES
('S001', 'Housekeeping', 'cleaner'),
('S002', 'Catering', 'chef'),
('S003', 'Security', 'security guard'),
('S004', 'Front_office', 'operation manager'),
('S005', 'catering', 'Kitchen staff'),
('S006', 'Front_office', 'Front desk staff'),
('S007', 'Security', 'security guard'),
('S008', 'Front_office', 'human resource manager'),
('S009', 'Front_office', 'IT manager'),
('S010', 'Housekeeping', 'cleaner'),
('S011', 'Housekeeping', 'Cleaner');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `NoIC` varchar(12) NOT NULL,
  `guestname` varchar(30) NOT NULL,
  `guestphone` varchar(16) NOT NULL,
  `RoomID` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`NoIC`, `guestname`, `guestphone`, `RoomID`) VALUES
('720116116241', 'Feofan bin Syukri', '0164205201', '069'),
('740522035613', 'Zandik bin Zainal', '0167042052', '067'),
('750824082158', 'Jamilah binti Samad', '0114235897', '037'),
('760609093128', 'Lisa binti Saiful', '0178458615', '040'),
('851228105231', 'Zhan bin Arin', '0132574895', '028'),
('910816140124', 'Navia binti Naser', '0135697755', '024'),
('930122030456', 'Sabrina binti Kalim', '0128456756', '051'),
('980211040111', 'Haitham bin Rizmi', '0169675214', '012'),
('981130109097', 'Kaeya bin Kaerul', '0157894125', '018'),
('990403101315', 'Lohen bin Harith', '0128956742', '066');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomID` varchar(3) NOT NULL,
  `RoomType` varchar(30) NOT NULL,
  `RoomLevel` varchar(10) NOT NULL,
  `StaffID` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomID`, `RoomType`, `RoomLevel`, `StaffID`) VALUES
('012', 'Single Room', '1st', 'S010'),
('018', 'Single Room', '1st', 'S007'),
('024', 'Single Room', '2nd', 'S009'),
('028', 'Twin Room', '2nd', 'S002'),
('037', 'Twin Room', '3rd', 'S003'),
('040', 'Double Room', '4th', 'S008'),
('051', 'Double Room', '5th', 'S001'),
('066', 'Deluxe Room', '6th', 'S006'),
('067', 'Deluxe Room', '6th', 'S004'),
('069', 'Deluxe Room', '6th', 'S005');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `StaffID` varchar(4) NOT NULL,
  `Scope` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`StaffID`, `Scope`, `Salary`) VALUES
('S001', 'Daily cleaning', '2700.00'),
('S002', 'Food preparation', '3700.00'),
('S003', 'Safeguarding the hotel', '2900.00'),
('S004', 'Oversee daily activities', '5000.00'),
('S005', 'Food preparation', '5500.00'),
('S006', 'Check-in,Check-out', '4000.00'),
('S007', 'Safeguarding', '3000.00'),
('S008', 'Managing employee', '4000.00'),
('S009', 'Technician', '7500.00'),
('S010', 'Daily cleaning', '2700.00'),
('S011', 'Laundry', '2700.00');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(4) NOT NULL,
  `Staffname` varchar(30) NOT NULL,
  `staffphone` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `Staffname`, `staffphone`) VALUES
('S001', 'Kaveh bin Khaldun', '0121254789'),
('S002', 'Mohd Kryll bin Zizan', '0196985210'),
('S003', 'Ajax bin Jantan', '0147582369'),
('S004', 'Zhong Li', '0124587692'),
('S005', 'Nur Sarah binti Kirk', '0152368749'),
('S006', 'Putri Asnah binti Jamal', '0127489645'),
('S007', 'Tengku Varka bin Che Fakir', '0166789546'),
('S008', 'Wan Scara bin Wan Eilham', '0125478945'),
('S009', 'Nurul Nahida binti Shajaratun', '0124568797'),
('S010', 'Diyanah Binti Mohd', '0128765432'),
('S011', 'Adriana Nur Binti Adanan', '0173814518');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`NoIC`),
  ADD KEY `fk_guest_room` (`RoomID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomID`),
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE CASCADE;

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `fk_guest_room` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`) ON DELETE RESTRICT;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_staff` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE RESTRICT;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
