-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 10:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `CartiD` varchar(45) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartitems`
--

INSERT INTO `cartitems` (`CartiD`, `ItemID`, `quantity`) VALUES
('1', 1, 12),
('1', 1, 12),
('70304759496E708B1D09BF902F1303F5', 13, 5),
('70304759496E708B1D09BF902F1303F5', 9, 3),
('1B4AC96D41722A6738E61B65ECA65C2C', 13, 43),
('1B4AC96D41722A6738E61B65ECA65C2C', 15, 33);

-- --------------------------------------------------------

--
-- Table structure for table `partyreservation`
--

CREATE TABLE `partyreservation` (
  `Name` varchar(50) NOT NULL,
  `Members` int(11) NOT NULL,
  `Date` date NOT NULL,
  `TotalSeats` int(11) NOT NULL,
  `PartyType` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `PhoneNumber` bigint(20) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partyreservation`
--

INSERT INTO `partyreservation` (`Name`, `Members`, `Date`, `TotalSeats`, `PartyType`, `Time`, `PhoneNumber`, `ID`) VALUES
('Bushra', 10, '2023-10-12', 12, 'birthday', '8:00PM', 231323123, 1),
('Abdullah', 10, '2023-01-01', 15, 'Birthday', '1:00 PM', 2313123, 2),
('rafay', 2, '2023-01-02', 2, 'Anniversery', '12:00AM', 123213, 3),
('Ahmed ZAman', 2, '2023-01-02', 2, 'Anniversery', '9:00PM', 24343243, 4),
('Rafiq', 2, '2023-01-02', 2, 'Anniversery', '9:00PM', 24343243, 6),
('Rafif', 3, '2023-01-02', 3, 'Birthday', '10:00PM', 24343243, 7),
('talha', 2, '2023-01-02', 2, 'Birthday', '10:00PM', 21323213, 16);

-- --------------------------------------------------------

--
-- Table structure for table `shahidshinwarimenu`
--

CREATE TABLE `shahidshinwarimenu` (
  `foodname` varchar(50) NOT NULL,
  `fooddiscription` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `foodimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shahidshinwarimenu`
--

INSERT INTO `shahidshinwarimenu` (`foodname`, `fooddiscription`, `price`, `ID`, `foodimage`) VALUES
('Beef White Karahi', '1kg Beef White Karahi', 1400, 1, '1.jpg'),
('Grill Fish', 'Full fish spicy Grill Fish', 1600, 2, '2.jpg'),
('Turkish kabab', '6 pieces in one plate', 650, 3, '3.jpg'),
('Mutton Makhan Handi', '1kg Mutton Makhni Handi', 2100, 4, '4.jpg'),
('Tikka', 'Leg spicy chicken Tikka', 180, 5, '5.jpg'),
('Tikka', 'Chest spicy Chicken Tikka', 220, 6, '6.jpg'),
('Nan', 'Sada Nan', 25, 7, '7.jpg'),
('Special Nan', 'Garlic Nan', 40, 8, '8.jpg'),
('Raita', 'Dahi Raita with salad', 70, 9, '9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shandarmenu`
--

CREATE TABLE `shandarmenu` (
  `foodname` varchar(50) DEFAULT NULL,
  `fooddetail` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shandarmenu`
--

INSERT INTO `shandarmenu` (`foodname`, `fooddetail`, `price`, `ID`) VALUES
('Mutton Shinwari Karahi', 'Mutton Shinwari Karahi 1kg', 1450, 1),
('Mutton Green Karahi', 'Full spicy Mutton Green Karahi', 2100, 2),
('Balochi Boti', '1 dozen Balochi Boti', 550, 3),
('Lahori Charga', 'Full Lahori Charga', 1700, 4),
('Chinese Pulao', 'Chinese Pulao with chicken sauce', 450, 5),
('Katakat', 'Mutton katakat', 400, 6),
('Nan', 'Sada Nan', 25, 7),
('Special Nan', 'Garlic Nan', 40, 8),
('Raita', 'Dahi Raita with salad', 70, 9),
('Special Cake', 'Special Cake for birthday / anniversory', 7000, 10),
('Mutton Steak', 'Mutton Steak with garlic and cheeze sauce', 3500, 11),
('Family Deal', '4 zinger + 4 cripy chicken piece + 1.5 litre Cold ', 2200, 12),
('Chicken Bread Roll', '1 dozen Chicken Bread Roll', 1800, 13),
('Pasta', 'Chicken White Pasta Single Plate', 500, 14),
('Sweet', 'Special Raas Malai', 600, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tablereservation`
--

CREATE TABLE `tablereservation` (
  `Name` varchar(50) NOT NULL,
  `Members` int(11) NOT NULL,
  `Date` date NOT NULL,
  `TotalSeats` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tablereservation`
--

INSERT INTO `tablereservation` (`Name`, `Members`, `Date`, `TotalSeats`, `ID`) VALUES
('Bushra', 5, '2023-01-01', 5, 1),
('Abdullah', 12, '2023-10-12', 12, 2),
('Saad', 12, '2023-12-12', 12, 5),
('REHMAN', 5, '2023-01-01', 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `userinformation`
--

CREATE TABLE `userinformation` (
  `Name` varchar(50) DEFAULT NULL,
  `Number` bigint(20) DEFAULT NULL,
  `Address` varchar(70) DEFAULT NULL,
  `AreaName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `CartiD` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinformation`
--

INSERT INTO `userinformation` (`Name`, `Number`, `Address`, `AreaName`, `Email`, `ID`, `CartiD`) VALUES
('Bushra', 1323213, 'dsadsad', 'sadsad', 'bushra@gmail.com', 1, '0'),
('Abdullah', 213213, 'asdsadadasdsad', 'sdsad', 'abdullahmalikae2002@gmail.com', 6, '0'),
('Abdullah', 213213, 'asdsadadasdsad', 'sdsad', 'abdullahmalikae2002@gmail.com', 7, '0'),
('Abdullah', 213213, 'asdsadadasdsad', 'sdsad', 'abdullahmalikae2002@gmail.com', 8, '0'),
('Saad', 213213, 'asdsadadasdsad', 'asdsdd', 'safknsajd@gmail.com', 9, '0'),
('asdsad', 2321, 'sadsad', 'sadsad', 'asdsad', 11, 'asd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `partyreservation`
--
ALTER TABLE `partyreservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shahidshinwarimenu`
--
ALTER TABLE `shahidshinwarimenu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shandarmenu`
--
ALTER TABLE `shandarmenu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tablereservation`
--
ALTER TABLE `tablereservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userinformation`
--
ALTER TABLE `userinformation`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `partyreservation`
--
ALTER TABLE `partyreservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shahidshinwarimenu`
--
ALTER TABLE `shahidshinwarimenu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shandarmenu`
--
ALTER TABLE `shandarmenu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tablereservation`
--
ALTER TABLE `tablereservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userinformation`
--
ALTER TABLE `userinformation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
