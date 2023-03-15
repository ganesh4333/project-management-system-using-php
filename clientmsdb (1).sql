-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 06:56 AM
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
-- Database: `clientmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID` int(11) NOT NULL,
  `ProjectName` varchar(200) NOT NULL,
  `ecost` int(100) NOT NULL,
  `fcost` int(100) NOT NULL,
  `costf` varchar(200) NOT NULL,
  `amount1` int(10) NOT NULL,
  `description1` varchar(200) NOT NULL,
  `amount2` int(10) NOT NULL,
  `description2` varchar(200) NOT NULL,
  `amount3` int(10) NOT NULL,
  `description3` varchar(200) NOT NULL,
  `amount4` int(10) NOT NULL,
  `description4` varchar(200) NOT NULL,
  `amount5` int(10) NOT NULL,
  `description5` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `ProjectName`, `ecost`, `fcost`, `costf`, `amount1`, `description1`, `amount2`, `description2`, `amount3`, `description3`, `amount4`, `description4`, `amount5`, `description5`) VALUES
(1, 'Line Followere', 0, 25000, 'car', 10000, 'cash', 2000, 'pp', 3000, 'cc', 2000, 'vv', 3000, 'bb'),
(2, 'Line follow2', 10000, 5000, 'sreya', 1000, 'pp', 2000, 'cc', 1000, 'pp', 1000, 'pp', 0, 'cc'),
(3, 'Power Tools', 20000, 18000, 'Ganesh', 10000, 'Phonepe', 1000, 'cash', 500, 'cash', 500, 'cash', 2000, 'gpay'),
(4, 'ID CARD PRINTING', 20000, 15000, 'pranay', 10000, 'Cash', 0, '', 0, '', 0, '', 0, ''),
(5, 'Employee management', 10000, 8000, 'pranay', 2000, 'cash', 5000, 'pp', 0, 'no', 0, 'no', 0, 'no'),
(6, 'Power Tools', 20000, 18000, 'Ganesh', 10000, 'cash', 0, '', 0, '', 0, '', 0, ''),
(7, 'Home Automachine', 15000, 14500, 'Venu', 5000, 'phone pay to venkat sir ', 2000, 'cash to harika', 0, '', 0, '', 0, ''),
(8, 'solar panel', 9000, 7000, 'ganesh', 5000, 'cash', 0, '', 0, '', 0, '', 0, ''),
(9, 'Street Light', 20000, 19500, 'mahidhar', 10000, 'cash', 0, '', 0, '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `reqprod`
--

CREATE TABLE `reqprod` (
  `ID` int(11) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `products` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reqprod`
--

INSERT INTO `reqprod` (`ID`, `ename`, `pname`, `products`) VALUES
(1, 'raj', 'withrack', 'cvhbgf'),
(2, 'kai', 'kal', 'profjdgv'),
(3, 'kkkal', 'kach', 'kup'),
(4, 'Ganesh Pagidipalli', 'fdgtfhy', 'hgjhgj'),
(5, 'Ganesh Pagidipalli', 'Web System', '<p><strong>Products</strong></p>\r\n<p>Laser</p>\r\n<p>kil</p>'),
(6, 'user', 'Kali Linux', '1. Nmap\r\n2. Lynis\r\n3. Fierce\r\n4. OpenVAS\r\n5. Nikto\r\n6. WPScan\r\n7. Skipfish\r\n8. CMSMap\r\n9. Fluxion\r\n10. Aircrack-ng\r\n11. Kismet Wireless\r\n12. Wireshark\r\n13. John the Ripper\r\n14. THC Hydra\r\n15. findmyhash\r\n16. RainbowCrack\r\n17. Metasploit Framework\r\n18. Social Engineering Toolkit\r\n19. BeEF\r\n20. Yersinia\r\n21. DHCPig\r\n22. FunkLoad\r\n23. SlowHTTPTest\r\n24. Inundator\r\n25. t50'),
(7, 'Ganesh Pagidipalli', 'ID CARD PRINTING', '• Controller Board.\r\n• Filament.\r\n• Frame.\r\n• Stepper Motors.\r\n• Belts.\r\n• Threaded rods.\r\n• End Stops.\r\n• Power Supply Unit (PSU)'),
(8, 'user', 'Employee Management', 'wheels\r\nhorn'),
(9, 'Ganesh Pagidipalli', 'Home Automachine', 'asdwf');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555562, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-10-21 07:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ContactName` varchar(120) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `State` varchar(120) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Workphnumber` bigint(10) DEFAULT NULL,
  `Cellphnumber` bigint(10) DEFAULT NULL,
  `Otherphnumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `WebsiteAddress` varchar(200) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `AccountID`, `AccountType`, `ContactName`, `CompanyName`, `Address`, `City`, `State`, `ZipCode`, `Workphnumber`, `Cellphnumber`, `Otherphnumber`, `Email`, `WebsiteAddress`, `Notes`, `Password`, `CreationDate`) VALUES
(7, 699145729, 'Active Account', 'Poging Bata', 'Samsung', 'manila', 'Zamboange', 'Pagadian', 102, 8993399393, 999393939, 994949388, 'BatangPogi@gmail.com', 'Tigbao Zamboanga Del Sur', 'Batang Pogi', '21232f297a57a5a743894a0e4a801fc3', '2020-05-02 05:50:42'),
(8, 681438421, 'Active Account', 'Ganesh Pagidipalli', 'Raj Infra', 'Sdress', 'city', 'state', 521235, 9603115723, 9491949920, 0, 'ganesh@mail.com', 'no site', 'no notes it\'s plain calm', 'fa1d87bc7f85769ea9dee2e4957321ae', '2023-02-10 05:58:47'),
(11, 187563790, 'Active Account', 'user', 'TTS', 'no address', 'city', 'state', 541452, 8525665258, 8525665259, 8525665250, 'user@non-admin.com', 'no address', 'no notes', 'ee11cbb19052e40b07aac0ca060c23ee', '2023-03-01 11:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` varchar(120) DEFAULT NULL,
  `ServiceId` varchar(120) DEFAULT NULL,
  `ServiceName` varchar(100) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  `BillingId` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`ID`, `Userid`, `ServiceId`, `ServiceName`, `EmployeeName`, `BillingId`, `PostingDate`) VALUES
(52, '11', '24', 'Agricutlural robot', '', '387483425', '2023-03-01 15:20:13'),
(53, '11', '25', 'line follower robot', '', '387483425', '2023-03-01 15:20:13'),
(54, '11', '25', 'line follower robot', '', '482872110', '2023-03-01 15:22:53'),
(55, '11', '25', 'line follower robot', '', '239647022', '2023-03-01 15:23:36'),
(56, '8', '23', 'Reverse Engineering', '', '496060520', '2023-03-01 15:31:17'),
(57, '8', '24', 'Agricutlural robot', '', '496060520', '2023-03-01 15:31:17'),
(58, '8', '19', 'Bottle light', '', '970155977', '2023-03-01 15:31:54'),
(59, '8', '20', 'book swing', '', '970155977', '2023-03-01 15:31:54'),
(60, '8', '23', 'Reverse Engineering', '', '970155977', '2023-03-01 15:31:55'),
(61, '8', '28', 'ID CARD PRINTING', '', '141450272', '2023-03-02 17:39:43'),
(62, '11', '29', 'Employee management', '', '790072642', '2023-03-03 10:50:18'),
(63, '11', '28', 'ID CARD PRINTING', 'user', '860478617', '2023-03-04 05:05:06'),
(64, '8', '31', 'Home automachine', 'Ganesh Pagidipalli', '130268690', '2023-03-05 15:39:21'),
(65, '7', '16', 'Line Follower Robot', 'Poging Bata', '566170357', '2023-03-06 07:41:23'),
(66, '8', '32', 'solar panel', 'Ganesh Pagidipalli', '788726918', '2023-03-06 09:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'bghjgjhg', NULL, NULL, '2019-10-24 07:54:52'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'info@gmail.com', 8529631237, '2019-10-24 07:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `EndDate` varchar(15) NOT NULL,
  `descrip` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `number` varchar(15) NOT NULL,
  `a_number` varchar(15) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `purpose` varchar(10) NOT NULL,
  `college` varchar(50) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `year` varchar(2) NOT NULL,
  `address` varchar(300) NOT NULL,
  `ServiceStatus` varchar(20) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `EndDate`, `descrip`, `name`, `number`, `a_number`, `mail`, `purpose`, `college`, `branch`, `year`, `address`, `ServiceStatus`, `CreationDate`) VALUES
(16, 'Line Follower Robot', '', 'Description abount', 'Mohan', '7894563214', '9875821453', 'mohan@gmrit.edu.in', '', 'GMRIT', 'EEE', '3', 'address having but dont know', 'Ongoing', '2023-02-14 05:26:00'),
(17, 'Burning oil', '', '', 'Pranay', '9948136754', '9948136755', 'pranay@gmail.com', '', 'GMRIT, RAJAM', 'CSE', '4', 'srikakkaulam, rajamundry', 'Canceled', '2023-02-22 12:15:50'),
(18, 'Drone Flying', '', '', 'chai', '9876543215', '9876543216', 'chai@chai.com', '', 'GVVVE', 'EEE', '2', 'No address', 'Canceled', '2023-02-23 08:56:10'),
(19, 'Bottle light', '', 'no desc', 'no name', '8789858154', '8789858155', 'no_email@mail.com', '', 'no college', 'no branch', '2', 'no address', 'Canceled', '2023-02-23 09:18:07'),
(20, 'book swing', '', 'book having an swing connection', 'ramaraj', '7858254525', '7852656565', 'email_yes@email.com', '', 'college_address', 'sse', '3', 'adres is rajaam', 'Canceled', '2023-02-23 10:49:26'),
(23, 'Reverse Engineering', '', 'Reverse the engineer which need to be test', 'Rama Raj', '9584964447', '9603225723', 'rama@raj.com', '', 'GVPCE', 'CSE', '3', ' R8CR+5WM, Gandhi Nagar, Madhurawada, Visakhapatnam, Andhra Pradesh 530048', 'Ongoing', '2023-02-28 05:43:02'),
(24, 'Agricutlural robot', '', 'Robotic will run forword and backword left and right', 'indugu venu kum', '9951063369', '9248385930', 'induguvenukumar@gmail.com', '', 'Chaitanya Engg collegew', 'ece', '4', 'vizag', 'completed', '2023-02-28 06:20:49'),
(25, 'line follower robot', '', 'its follows the black colour ', 'ganesh', '9951063300', '9951063300', 'venukumar@gmail.com', '', 'Raghu Engg college', 'EEE', '4', 'Dr no so and so', 'initiated', '2023-02-28 06:22:14'),
(26, 'Wheel Chair', '', 'Wheel Chair', 'surya', '9491947785', '9491947787', 'surya@tts.com', '', 'GMRIT', 'ECE', '3', 'suryapeta', 'closed', '2023-03-02 08:48:31'),
(27, 'project', '', 'descgdhjthjh', 'dfgfg', '9948136754', '9875821453', 'raj@rajput.com', '552565', 'GMRIT', 'dfgh', '3', '5000', 'Initiated', '2023-03-02 14:08:09'),
(28, 'ID CARD PRINTING', '', 'To print an ID card for employyes through 3D printer', 'Sreya', '9491947785', '9491947786', 'sreya@tts.com', '525256', 'GMRIT', 'ECE', '4', 'Srikakulam address', 'Completed', '2023-03-02 17:38:16'),
(29, 'Employee management', '', 'to manage the whole employees', 'Surya', '7418529632', '7418529633', 'surya@tts.com', '535654', 'GMRIT', 'ECE', '3', 'Bobbili', 'Completed', '2023-03-03 10:39:38'),
(30, 'Sanitizer', '2023-03-23', 'need to use the sanitizer', 'Chaithanta', '9584964447', '9248385930', 'chaitanya@tts.com', '654321', 'GMRITECE', 'CSE', '2', 'no address madhurawada', 'Initiated', '2023-03-04 05:54:21'),
(31, 'Home automachine', '2023-03-10', '4 loades should be operated with Relay module', 'm Ravathi pathi', '9701497014', '9951063396', 'pardhu@gmail.com', '531137', 'pullarao college', 'ece', '3', 'srikakulam, ichapuram', 'Initiated', '2023-03-05 15:29:36'),
(32, 'solar panel', '2023-03-06', 'solar panel', 'sreya', '8090901233', '8090901233', 'sreya@tts.com', '590932', 'gvp', 'mech', '4', 'bhj', 'Completed', '2023-03-06 06:40:43'),
(33, 'Street Light', '2023-03-29', 'To Glow the street lights', 'Mahidhar', '8522588525', '8522588525', 'mahi@mail.com', '558598', 'GVPR', 'EEE', '3', 'srikakulam, nomina gunta', 'Initiated', '2023-03-06 12:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `number` varchar(13) NOT NULL,
  `a_number` varchar(13) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `purpose` varchar(300) NOT NULL,
  `college` varchar(100) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `year` varchar(5) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`id`, `name`, `number`, `a_number`, `mail`, `purpose`, `college`, `branch`, `year`, `address`) VALUES
(1, 'Ganesh', '9491947785', '9494947788', 'ganesh@mail.com', 'urike prends', 'GMRIT', 'CSE', '4', 'no adddr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reqprod`
--
ALTER TABLE `reqprod`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reqprod`
--
ALTER TABLE `reqprod`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
