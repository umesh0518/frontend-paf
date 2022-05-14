-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 12:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

--
-- Database: `new`
--
CREATE DATABASE IF NOT EXISTS `new` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `new`;

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `CardID` int(11) NOT NULL,
  `Card_Holder` varchar(30) NOT NULL,
  `Card_Number` varchar(20) NOT NULL,
  `Expire_Date` varchar(20) NOT NULL,
  `CVV` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `consumption`
--

CREATE TABLE `consumption` (
  `Consumption_ID` int(11) NOT NULL,
  `Account_No` varchar(20) NOT NULL,
  `Reading` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consumption`
--

INSERT INTO `consumption` (`Consumption_ID`, `Account_No`, `Reading`, `Date`) VALUES
(141, '3', '555.9', '2022-02-02'),
(143, '4', '44445', '2022-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `Notice_ID` int(11) NOT NULL,
  `Notice_Title` varchar(50) NOT NULL,
  `Notice_Time` varchar(50) NOT NULL,
  `Notice_Date` varchar(50) NOT NULL,
  `Area` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`Notice_ID`, `Notice_Title`, `Notice_Time`, `Notice_Date`, `Area`, `Description`) VALUES
(1, 'Power Cut', '08:45 A.M.', '23-04-2022', 'A, B, F, H, I', '10:30 A.M. to 12:30 P.M.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Userid` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phoneno` varchar(40) NOT NULL,
  `Nic` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Userid`, `Username`, `Email`, `Phoneno`, `Nic`) VALUES
(1, 'Sithum%2BFDO%2B%2Bdddddddddd', 'sithumfdo%2540gmail.com', '0715869365', '968987256V'),
(5, '11111111111', 'Sithum FDO', 'sithumfdo@gmail.com', '0715869365'),
(6, '11111111111', 'Sithum FDO', 'sithumfdo@gmail.com', '0715869365'),
(7, '1', 'dddddddddddddddddd', 'sithumfdo@gmail.com', '0715869365'),
(8, 'as', 'dd', 'dd', 'dd'),
(9, 'asdfasd', 'fasdfas', 'dfasdf', 'sadf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`CardID`);

--
-- Indexes for table `consumption`
--
ALTER TABLE `consumption`
  ADD PRIMARY KEY (`Consumption_ID`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`Notice_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `CardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `consumption`
--
ALTER TABLE `consumption`
  MODIFY `Consumption_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `Notice_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `paf`
--
CREATE DATABASE IF NOT EXISTS `paf` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paf`;

-- --------------------------------------------------------

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
