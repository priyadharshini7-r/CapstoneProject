-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 02:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-01 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, 'BCA', 'SCORE', '2024-01-13 10:42:14'),
(2, 'MCA', 'SCORE', '2024-01-13 10:42:35'),
(3, 'BBA', 'BUISNESS SCHOOL', '2024-01-13 10:42:41'),
(4, 'MBA', 'BUISNESS SCHOOL', '2024-01-13 10:42:47'),
(5, 'BSC CS', 'SITE', '2024-01-13 10:42:52'),
(6, 'MSC CS', 'SITE', '2024-01-13 10:42:57'),
(7, 'BCOM', 'COMMERCE', '2024-01-13 10:43:04'),
(8, 'MCOM', 'COMMERCE', '2024-01-13 10:43:10'),
(9, 'BTECH', 'CS', '2024-01-13 10:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` varchar(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(6, 'Submit Assignment', '1', 'Please submit your assignment before your due date', '2024-03-30 06:05:57'),
(7, 'Codeathon results', '2', 'Code athon results were published on our work mail, kindly check!', '2024-04-05 03:41:49'),
(8, 'University Day', '9', 'University day celebration scheduled on 11-05-2024', '2024-04-05 03:42:39'),
(9, 'Capstone project Review shceduled', '1', 'Capstone project review was scheduled for all ug courses on 21-05-2024', '2024-04-05 03:44:07'),
(10, 'CAT 2 SCHEDULED', '3', 'CAT 2 scheduled on 20-05-2024, Time table will be updated soon', '2024-04-05 03:45:25'),
(11, 'FAREWELL CELEBRATION', '5', 'Farewell is celebrated on 09.05.2024', '2024-04-05 03:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, ????, ??, SimSun, STXihei, ????, serif\"><span style=\"font-size: 26px;\"> Techmint was established with the aim of providing quality higher education on par with international standards. It persistently seeks and adopts innovative methods to improve the quality of higher education on a consistent basis.The campus has a cosmopolitan atmosphere with students from all corners of the globe. Experienced and learned teachers are strongly encouraged to nurture the students. The global standards set at Techmint in the field of teaching and research spur us on in our relentless pursuit of excellence. In fact, it has become a way of life for us. The highly motivated youngsters on the campus are a constant source of pride. Our Memoranda of Understanding with various international universities are our major strength. They provide for an exchange of students and faculty and encourage joint research projects for the mutual benefit of these universities. Many of our students, who pursue their research projects in foreign universities, bring high quality to their work and esteem to India and have done us proud. With steady steps, we continue our march forward. We look forward to meeting you here at Techmint.</span></font><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Dr R Seenivasan Director (International Relations),Techmint (TM), Vellore - 632014, Tamil Nadu, Phone: +91-416-220-2072 | +91-416-220-2070', 'global@techmint.ac.in', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'University Day', 'University day celebration scheduled on 11-05-2024', '2024-03-02 18:17:03'),
(2, 'Masks manditory', 'Mask was manditory for every entry\r\n', '2024-03-02 18:17:03'),
(3, 'Admissions Open for all UG and PG courses 2024', 'Teachmint is pleased to announce that the admission process for the academic year 2023-2024 is now open. Applications are invited from eligible students for admission to various undergraduate and postgraduate programs offered by the institution.', '2024-03-30 05:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(6, 'Praveen', 'praveen@gmail.com', '1', 'Male', '2004-05-09', '21BCA0005', 'Sanjeevi', 'Rani', 2345234523, 2323233232, '24 A, ABC nagar, Katpadi, Vellore, Tamilnadu', '21BCA0005', 'bd1785c98e994226830282be5f550456', '06f2e8de2715c73f9ef4b0325321c5c51711721914.jpg', '2024-03-29 14:18:34'),
(7, 'Priyadharshini Ramesh', 'priya1234@gmail.com', '2', 'Female', '2003-11-25', '21MCA0026', 'Ramesh', 'Tamilselvi', 7339390094, 9145096734, 'GUDIYATHAM', '21MCA0026', '17b3d6154b77bd7d2b2a1b1ea5e35b3c', 'ba1babfbd51e0ff4bb6d76dc11816a131712287152.png', '2024-04-05 03:19:12'),
(8, 'Prathesha', 'prathi1234@gmail.com', '2', 'Female', '2004-08-18', '21MCA0011', 'Jana', 'Priya', 8825646547, 9200323971, 'Gudiyatham', '21MCA0011', '8623e9823015437f8aca698407474cc5', 'ba1babfbd51e0ff4bb6d76dc11816a131712287328.png', '2024-04-05 03:22:08'),
(9, 'GURU', 'gurusai123@gmail.com', '3', 'Male', '2003-05-22', '21BBA0055', 'Sivamoorthy', 'Selvi', 7010802588, 9898767867, 'KATPADI', '21BBA0055', '0f5d5d3b94b7c480f2a94d74eceff5de', '2d955cb7136b07716da54869780ed3301712287494.png', '2024-04-05 03:24:54'),
(10, 'Sruthika', 'sruthi1234@gmail.com', '5', 'Female', '2003-12-05', '21BCS0064', 'Madhan kumar', 'Barathi', 8825656437, 9977556644, 'KV.KUPPAM', '21BCS0064', 'e116971a308aa0dc70a2acd628e54f58', 'ba1babfbd51e0ff4bb6d76dc11816a131712287610.png', '2024-04-05 03:26:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
