-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2018 at 04:07 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brms`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_level`
--

CREATE TABLE `access_level` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_level`
--

INSERT INTO `access_level` (`id`, `role`) VALUES
(1, 'Usep Admin'),
(2, 'Barangay Admin'),
(3, 'Barangay Staff');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `remember_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `info_id`, `access_id`, `username`, `password`, `remember_token`) VALUES
(132, 224, 1, 'admin', '$2a$10$RTEeLgDE.llZSQXla0BGwuydgsu/WAwuSBFXKHvSX1RilXeiDLvbK', '9tvgJcUParwE2INe59gZUJe2ikKpFjSgZhivUR8Qis8yhMRctXDmfbazLQ8L'),
(183, 984, 2, '111', '$2y$10$XkxjKrhQp4RS5JTSYpw9ouf8pHju0n7yPxCsfQqXUZyfTQ5QbVRge', ''),
(184, 985, 3, '222', '$2y$10$5jUS/vtmcVeVONKqTYIkve6kRKRG7/YLDfJ6BuDr3JxyJyz12b9D2', '');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_info`
--

CREATE TABLE `barangay_info` (
  `id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `img_extension` varchar(100) DEFAULT NULL,
  `img_name` varchar(100) DEFAULT NULL,
  `telefax` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `info_cap` int(11) DEFAULT NULL,
  `info_wad1` int(11) DEFAULT NULL,
  `info_wad2` int(11) DEFAULT NULL,
  `info_wad3` int(11) DEFAULT NULL,
  `info_wad4` int(11) DEFAULT NULL,
  `info_wad5` int(11) DEFAULT NULL,
  `info_wad6` int(11) DEFAULT NULL,
  `info_wad7` int(11) DEFAULT NULL,
  `info_sec` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangay_info`
--

INSERT INTO `barangay_info` (`id`, `address`, `brgy_name`, `city`, `email`, `img_extension`, `img_name`, `telefax`, `website`, `info_cap`, `info_wad1`, `info_wad2`, `info_wad3`, `info_wad4`, `info_wad5`, `info_wad6`, `info_wad7`, `info_sec`) VALUES
(2, '', 'USEP', '', '', NULL, NULL, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'Sampaguita St., Barangay Mintal, 8022 Tugbok District, Davao City', 'Mintal', 'Davao City', 'barangay_mintal@yahoo.com', 'png', '20', '(082) 321 - 8784', 'www.barangaymintal.info', 946, 0, 0, 0, 0, 0, 0, 0, 951);

-- --------------------------------------------------------

--
-- Table structure for table `barangay_workers`
--

CREATE TABLE `barangay_workers` (
  `id` int(11) NOT NULL,
  `brgyId` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `contactNumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `barangay_workers`
--

INSERT INTO `barangay_workers` (`id`, `brgyId`, `firstname`, `lastname`, `type`, `contactNumber`) VALUES
(1, 9, 'Janrey', 'Suarez', 'BHW', '12321321'),
(2, 4, 'Allen', 'Lamparas', 'BNS', '0912345678'),
(3, 2, 'Mao', 'Ni', 'BHW', '123'),
(4, 2, 'Randy', 'Gamboa', 'BHW', '0912345678');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `purok_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `img_name` varchar(100) DEFAULT NULL,
  `img_extension` varchar(100) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `bus_permit` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `establish` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `purok_id`, `info_id`, `form_id`, `type_id`, `img_name`, `img_extension`, `name`, `address`, `bus_permit`, `contact_no`, `status`, `establish`) VALUES
(1, 34, 984, 1, 1, NULL, NULL, 'Net X', 'Address', '123', '123', 'Active', '2018-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `business_form`
--

CREATE TABLE `business_form` (
  `id` int(11) NOT NULL,
  `form` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_form`
--

INSERT INTO `business_form` (`id`, `form`) VALUES
(1, 'Sole Proprietorship'),
(2, 'Partnership'),
(3, 'Corporation'),
(4, 'Cooperative'),
(5, 'Limited Liability Company'),
(6, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `business_type`
--

CREATE TABLE `business_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_type`
--

INSERT INTO `business_type` (`id`, `type`) VALUES
(1, 'Service'),
(2, 'Merchandising'),
(3, 'Manufacturing'),
(4, 'Hybrid'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `id` int(11) NOT NULL,
  `brgy_id` int(11) NOT NULL,
  `header` varchar(10000) NOT NULL,
  `paragraph1` varchar(10000) NOT NULL,
  `paragraph2` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checker`
--

CREATE TABLE `checker` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checker`
--

INSERT INTO `checker` (`id`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `collection_type`
--

CREATE TABLE `collection_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_type`
--

INSERT INTO `collection_type` (`id`, `type`) VALUES
(1, 'Business'),
(2, 'Citizen');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `complainee_id` int(11) NOT NULL,
  `complainants` varchar(10000) NOT NULL,
  `note` varchar(10000) DEFAULT NULL,
  `action_taken` varchar(10000) NOT NULL,
  `date_file` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `connectionSource` varchar(100) NOT NULL,
  `connectionSourceName` varchar(100) NOT NULL,
  `connectionName` varchar(100) NOT NULL,
  `barangayMember` varchar(100) DEFAULT NULL,
  `connectionType` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `connectionSource`, `connectionSourceName`, `connectionName`, `barangayMember`, `connectionType`, `status`) VALUES
(1, '82', ' Arce Joy S. Aguilar VILLAFLOR', 'waw waw waw', 'X001', 'DOWNLINE', 'PENDING'),
(2, 'X001', 'waw waw waw', ' Arce Joy S. Aguilar VILLAFLOR', '82', 'UPLINE', 'PENDING'),
(5, '104', ' Vernie L. Cortez GILZA', 'yFname yMname yLname', '105', 'UPLINE', 'VALIDATED'),
(6, '105', 'yFname yMname yLname', ' Vernie L. Cortez GILZA', '104', 'DOWNLINE', 'VALIDATED'),
(7, '103', ' Keziah Suzaine W. Vien FRANCISCO', 'floyd francis matabilas', 'X003', 'UPLINE', 'PENDING'),
(8, 'X003', 'floyd francis matabilas', ' Keziah Suzaine W. Vien FRANCISCO', '103', 'DOWNLINE', 'PENDING'),
(15, '105', 'yFname yMname yLname', ' Jacquelyn B. Arellano ESTEBAN', '102', 'UPLINE', 'PENDING'),
(16, '102', ' Jacquelyn B. Arellano ESTEBAN', 'yFname yMname yLname', '105', 'DOWNLINE', 'PENDING'),
(17, '105', 'yFname yMname yLname', 'Christian Day Lugatiman', '6', 'DOWNLINE', 'PENDING'),
(18, '6', 'Christian Day Lugatiman', 'yFname yMname yLname', '105', 'UPLINE', 'PENDING'),
(21, '100', ' Amarose Jayne G. Aquino BUSALLA', 'yFname yMname yLname', '105', 'DOWNLINE', 'PENDING'),
(22, '105', 'yFname yMname yLname', ' Amarose Jayne G. Aquino BUSALLA', '100', 'UPLINE', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `drug_use_info`
--

CREATE TABLE `drug_use_info` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `midName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `ageAtFirstDrugUse` varchar(100) DEFAULT NULL,
  `dateOfLastDrugUse` date NOT NULL,
  `lengthOfDrugUse` varchar(100) NOT NULL,
  `frequencyOfDrugUse` varchar(100) NOT NULL,
  `amountDaily` varchar(100) NOT NULL,
  `amountWeekly` varchar(100) NOT NULL,
  `amountMonthly` varchar(100) NOT NULL,
  `amountAnnually` varchar(100) NOT NULL,
  `reasonForUsingDrugs` varchar(100) NOT NULL,
  `meansToSupportDrugHabbit` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `placeSource` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `drugsUsedCurrent` varchar(100) NOT NULL,
  `drugsUsedPrev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_use_info`
--

INSERT INTO `drug_use_info` (`id`, `person_id`, `firstName`, `midName`, `lastName`, `ageAtFirstDrugUse`, `dateOfLastDrugUse`, `lengthOfDrugUse`, `frequencyOfDrugUse`, `amountDaily`, `amountWeekly`, `amountMonthly`, `amountAnnually`, `reasonForUsingDrugs`, `meansToSupportDrugHabbit`, `source`, `placeSource`, `area`, `drugsUsedCurrent`, `drugsUsedPrev`) VALUES
(1, 1, 'usepFname', 'usep,Mname', 'usepLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 2, 'Usep Admin Fname', 'mnameAdminUsep Admin Mname', 'Usep Admin Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 3, 'First Name', 'Middle Name', 'Last Name', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 4, 'fname', 'mname', 'lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 5, 'xFname', 'zMname', 'xLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 6, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 7, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 8, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 9, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 10, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 11, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 12, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 13, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 14, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 15, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 16, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 17, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 18, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 19, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 20, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 21, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 22, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 23, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 24, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 25, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 26, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 27, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 28, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 29, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 30, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 31, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 32, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 33, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 34, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 35, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 36, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 37, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 38, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 39, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 40, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 41, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 42, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 43, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 44, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 45, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 46, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 47, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 48, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 49, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 50, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 51, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 52, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 53, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 54, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 55, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 56, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 57, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 58, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 59, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 60, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 61, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, 62, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 63, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 64, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 65, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 66, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, 67, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 68, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 69, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, 70, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, 71, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 72, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 73, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, 74, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 75, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, 76, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, 77, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 78, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 79, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 80, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 81, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(82, 82, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 83, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, 84, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 85, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, 86, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 87, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 88, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, 89, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, 90, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 91, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 92, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 93, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, 94, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, 95, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, 96, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 97, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 98, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(99, 99, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 100, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(101, 101, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(102, 102, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 103, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 104, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 105, 'yFname', 'yMname', 'yLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, 1, 'usepFname', 'usep,Mname', 'usepLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(107, 2, 'Usep Admin Fname', 'mnameAdminUsep Admin Mname', 'Usep Admin Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, 3, 'First Name', 'Middle Name', 'Last Name', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(109, 4, 'fname', 'mname', 'lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, 5, 'xFname', 'zMname', 'xLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, 6, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, 7, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, 8, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, 9, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, 10, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, 11, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, 12, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(118, 13, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, 14, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, 15, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, 16, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, 17, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, 18, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, 19, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, 20, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, 21, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, 22, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, 23, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, 24, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, 25, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, 26, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(132, 27, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(133, 28, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(134, 29, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(135, 30, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(136, 31, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(137, 32, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(138, 33, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(139, 34, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(140, 35, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(141, 36, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(142, 37, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(143, 38, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(144, 39, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(145, 40, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(146, 41, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(147, 42, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(148, 43, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(149, 44, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(150, 45, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(151, 46, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(152, 47, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(153, 48, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(154, 49, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(155, 50, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(156, 51, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(157, 52, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(158, 53, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(159, 54, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(160, 55, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(161, 56, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(162, 57, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(163, 58, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(164, 59, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, 60, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, 61, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, 62, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, 63, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, 64, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, 65, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(171, 66, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, 67, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, 68, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, 69, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, 70, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, 71, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, 72, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(178, 73, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, 74, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(180, 75, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, 76, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(182, 77, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(183, 78, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(184, 79, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(185, 80, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(186, 81, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(187, 82, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(188, 83, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(189, 84, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(190, 85, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(191, 86, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(192, 87, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(193, 88, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(194, 89, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(195, 90, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(196, 91, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(197, 92, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(198, 93, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, 94, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(200, 95, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(201, 96, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(202, 97, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(203, 98, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(204, 99, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(205, 100, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(206, 101, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(207, 102, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(208, 103, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(209, 104, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(210, 105, 'yFname', 'yMname', 'yLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(211, 106, '000', '000', '000', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(212, 107, 'First Name', 'Middle Name', 'Last Name', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(213, 108, 'xFname', 'xMname', 'yLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(214, 109, 'USeP Admin', 'USeP Admin', 'USeP Admin', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(215, 110, 'Fname', 'Mname', 'Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(216, 111, 'xFname', 'xMname', 'xLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(217, 112, 'Fname', 'Mname', 'Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(218, 113, '222', '222', '222', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(219, 114, 'Fname', 'Mname', 'Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(220, 115, 'Fname', 'Mname', 'Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(221, 116, 'Fname', 'Mname', 'Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(222, 117, 'Fname', 'Mname', 'Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(223, 118, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(224, 119, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(225, 120, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(226, 121, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(227, 122, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(228, 123, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(229, 124, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(230, 125, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(231, 126, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(232, 127, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(233, 128, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(234, 129, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(235, 130, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(236, 131, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(237, 132, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(238, 133, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(239, 134, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(240, 135, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(241, 136, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(242, 137, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(243, 138, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(244, 139, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(245, 140, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, 141, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, 142, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(248, 143, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(249, 144, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(250, 145, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(251, 146, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(252, 147, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(253, 148, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(254, 149, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, 150, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, 151, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(257, 152, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(258, 153, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(259, 154, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(260, 155, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(261, 156, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(262, 157, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(263, 158, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(264, 159, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(265, 160, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(266, 161, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(267, 162, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(268, 163, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(269, 164, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(270, 165, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(271, 166, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(272, 167, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(273, 168, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(274, 169, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(275, 170, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(276, 171, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(277, 172, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(278, 173, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(279, 174, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(280, 175, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(281, 176, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(282, 177, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(283, 178, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(284, 179, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(285, 180, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(286, 181, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(287, 182, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(288, 183, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(289, 184, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(290, 185, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(291, 186, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(292, 187, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(293, 188, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(294, 189, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(295, 190, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(296, 191, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(297, 192, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(298, 193, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(299, 194, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(300, 195, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(301, 196, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(302, 197, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(303, 198, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(304, 199, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(305, 200, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(306, 201, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(307, 202, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(308, 203, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(309, 204, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(310, 205, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(311, 206, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(312, 207, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(313, 208, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(314, 209, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(315, 210, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(316, 211, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(317, 212, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(318, 213, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(319, 214, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(320, 215, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(321, 216, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(322, 217, '444', '444', '444', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(323, 218, 'Gabriel', 'M.', 'Natividad', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(324, 219, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(325, 220, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(326, 221, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(327, 222, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(328, 223, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(329, 224, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(330, 225, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(331, 226, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(332, 227, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(333, 228, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(334, 229, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(335, 230, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(336, 231, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(337, 232, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(338, 233, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(339, 234, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(340, 235, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(341, 236, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(342, 237, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(343, 238, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(344, 239, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(345, 240, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(346, 241, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(347, 242, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(348, 243, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(349, 244, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(350, 245, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(351, 246, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(352, 247, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(353, 248, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(354, 249, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(355, 250, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(356, 251, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(357, 252, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(358, 253, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(359, 254, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(360, 255, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(361, 256, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(362, 257, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(363, 258, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(364, 259, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(365, 260, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(366, 261, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(367, 262, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(368, 263, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(369, 264, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(370, 265, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(371, 266, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(372, 267, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(373, 268, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(374, 269, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(375, 270, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(376, 271, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(377, 272, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(378, 273, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(379, 274, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(380, 275, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(381, 276, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(382, 277, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(383, 278, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(384, 279, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(385, 280, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(386, 281, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(387, 282, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(388, 283, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(389, 284, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(390, 285, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(391, 286, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(392, 287, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(393, 288, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(394, 289, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(395, 290, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(396, 291, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(397, 292, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(398, 293, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(399, 294, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(400, 295, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(401, 296, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(402, 297, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(403, 298, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(404, 299, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(405, 300, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(406, 301, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(407, 302, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(408, 303, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(409, 304, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(410, 305, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(411, 306, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(412, 307, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(413, 308, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(414, 309, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(415, 310, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(416, 311, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(417, 312, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(418, 313, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(419, 314, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(420, 315, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `drug_use_info` (`id`, `person_id`, `firstName`, `midName`, `lastName`, `ageAtFirstDrugUse`, `dateOfLastDrugUse`, `lengthOfDrugUse`, `frequencyOfDrugUse`, `amountDaily`, `amountWeekly`, `amountMonthly`, `amountAnnually`, `reasonForUsingDrugs`, `meansToSupportDrugHabbit`, `source`, `placeSource`, `area`, `drugsUsedCurrent`, `drugsUsedPrev`) VALUES
(421, 316, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(422, 317, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(423, 318, 'Paul', 'Benjamin', 'Revote', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(424, 319, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(425, 320, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(426, 321, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(427, 322, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(428, 323, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(429, 324, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(430, 325, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(431, 326, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(432, 327, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(433, 328, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(434, 329, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(435, 330, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(436, 331, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(437, 332, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(438, 333, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(439, 334, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(440, 335, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(441, 336, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(442, 337, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(443, 338, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(444, 339, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(445, 340, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(446, 341, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(447, 342, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(448, 343, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(449, 344, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(450, 345, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(451, 346, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(452, 347, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(453, 348, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(454, 349, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(455, 350, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(456, 351, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(457, 352, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(458, 353, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(459, 354, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(460, 355, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(461, 356, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(462, 357, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(463, 358, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(464, 359, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(465, 360, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(466, 361, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(467, 362, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(468, 363, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(469, 364, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(470, 365, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(471, 366, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(472, 367, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(473, 368, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(474, 369, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(475, 370, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(476, 371, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(477, 372, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(478, 373, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(479, 374, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(480, 375, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(481, 376, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(482, 377, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(483, 378, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(484, 379, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(485, 380, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(486, 381, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(487, 382, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(488, 383, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(489, 384, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(490, 385, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(491, 386, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(492, 387, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(493, 388, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(494, 389, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(495, 390, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(496, 391, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(497, 392, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(498, 393, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(499, 394, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(500, 395, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(501, 396, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(502, 397, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(503, 398, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(504, 399, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(505, 400, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(506, 401, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(507, 402, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(508, 403, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(509, 404, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(510, 405, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(511, 406, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(512, 407, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(513, 408, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(514, 409, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(515, 410, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(516, 411, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(517, 412, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(518, 413, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(519, 414, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(520, 415, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(521, 416, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(522, 417, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(523, 418, 'Christian', 'D.', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(524, 419, 'Paul', 'Benjamin', 'Revote', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(525, 420, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(526, 421, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(527, 422, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(528, 423, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(529, 424, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(530, 425, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(531, 426, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(532, 427, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(533, 428, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(534, 429, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(535, 430, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(536, 431, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(537, 432, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(538, 433, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(539, 434, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(540, 435, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(541, 436, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(542, 437, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(543, 438, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(544, 439, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(545, 440, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(546, 441, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(547, 442, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(548, 443, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(549, 444, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(550, 445, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(551, 446, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(552, 447, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(553, 448, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(554, 449, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(555, 450, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(556, 451, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(557, 452, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(558, 453, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(559, 454, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(560, 455, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(561, 456, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(562, 457, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(563, 458, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(564, 459, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(565, 460, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(566, 461, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(567, 462, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(568, 463, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(569, 464, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(570, 465, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(571, 466, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(572, 467, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(573, 468, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(574, 469, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(575, 470, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(576, 471, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(577, 472, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(578, 473, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(579, 474, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(580, 475, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(581, 476, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(582, 477, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(583, 478, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(584, 479, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(585, 480, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(586, 481, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(587, 482, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(588, 483, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(589, 484, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(590, 485, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(591, 486, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(592, 487, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(593, 488, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(594, 489, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(595, 490, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(596, 491, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(597, 492, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(598, 493, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(599, 494, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(600, 495, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(601, 496, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(602, 497, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(603, 498, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(604, 499, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(605, 500, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(606, 501, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(607, 502, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(608, 503, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(609, 504, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(610, 505, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(611, 506, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(612, 507, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(613, 508, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(614, 509, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(615, 510, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(616, 511, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(617, 512, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(618, 513, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(619, 514, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(620, 515, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(621, 516, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(622, 517, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(623, 518, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(624, 519, '333', '333', '333', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(625, 520, '444', '444', '444', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(626, 521, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(627, 522, 'Fname', 'Mname', 'Lname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(628, 523, 'Paul', 'Benjamin', 'Revote', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(629, 524, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(630, 525, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(631, 526, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(632, 527, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(633, 528, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(634, 529, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(635, 530, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(636, 531, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(637, 532, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(638, 533, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(639, 534, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(640, 535, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(641, 536, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(642, 537, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(643, 538, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(644, 539, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(645, 540, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(646, 541, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(647, 542, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(648, 543, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(649, 544, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(650, 545, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(651, 546, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(652, 547, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(653, 548, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(654, 549, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(655, 550, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(656, 551, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(657, 552, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(658, 553, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(659, 554, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(660, 555, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(661, 556, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(662, 557, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(663, 558, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(664, 559, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(665, 560, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(666, 561, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(667, 562, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(668, 563, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(669, 564, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(670, 565, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(671, 566, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(672, 567, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(673, 568, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(674, 569, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(675, 570, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(676, 571, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(677, 572, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(678, 573, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(679, 574, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(680, 575, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(681, 576, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(682, 577, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(683, 578, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(684, 579, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(685, 580, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(686, 581, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(687, 582, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(688, 583, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(689, 584, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(690, 585, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(691, 586, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(692, 587, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(693, 588, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(694, 589, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(695, 590, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(696, 591, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(697, 592, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(698, 593, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(699, 594, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(700, 595, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(701, 596, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(702, 597, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(703, 598, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(704, 599, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(705, 600, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(706, 601, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(707, 602, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(708, 603, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(709, 604, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(710, 605, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(711, 606, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(712, 607, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(713, 608, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(714, 609, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(715, 610, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(716, 611, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(717, 612, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(718, 613, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(719, 614, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(720, 615, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(721, 616, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(722, 617, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(723, 618, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(724, 619, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(725, 620, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(726, 621, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(727, 622, 'Marvin', 'S', 'Lagmay', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(728, 623, 'Marvin', 'S', 'Lagmay Jr.', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(729, 624, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(730, 625, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(731, 626, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(732, 627, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(733, 628, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(734, 629, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(735, 630, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(736, 631, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(737, 632, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(738, 633, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(739, 634, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(740, 635, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(741, 636, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(742, 637, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(743, 638, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(744, 639, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(745, 640, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(746, 641, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(747, 642, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(748, 643, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(749, 644, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(750, 645, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(751, 646, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(752, 647, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(753, 648, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(754, 649, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(755, 650, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(756, 651, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(757, 652, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(758, 653, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(759, 654, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(760, 655, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(761, 656, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(762, 657, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(763, 658, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(764, 659, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(765, 660, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(766, 661, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(767, 662, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(768, 663, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(769, 664, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(770, 665, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(771, 666, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(772, 667, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(773, 668, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(774, 669, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(775, 670, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(776, 671, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(777, 672, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(778, 673, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(779, 674, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(780, 675, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(781, 676, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(782, 677, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(783, 678, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(784, 679, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(785, 680, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(786, 681, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(787, 682, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(788, 683, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(789, 684, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(790, 685, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(791, 686, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(792, 687, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(793, 688, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(794, 689, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(795, 690, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(796, 691, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(797, 692, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(798, 693, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(799, 694, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(800, 695, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(801, 696, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(802, 697, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(803, 698, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(804, 699, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(805, 700, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(806, 701, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(807, 702, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(808, 703, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(809, 704, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(810, 705, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(811, 706, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(812, 707, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(813, 708, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(814, 709, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(815, 710, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(816, 711, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(817, 712, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(818, 713, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(819, 714, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(820, 715, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(821, 716, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(822, 717, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(823, 718, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(824, 719, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(825, 720, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(826, 721, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(827, 722, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(828, 723, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(829, 724, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(830, 725, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(831, 726, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(832, 727, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(833, 728, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(834, 729, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(835, 730, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(836, 731, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(837, 732, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `drug_use_info` (`id`, `person_id`, `firstName`, `midName`, `lastName`, `ageAtFirstDrugUse`, `dateOfLastDrugUse`, `lengthOfDrugUse`, `frequencyOfDrugUse`, `amountDaily`, `amountWeekly`, `amountMonthly`, `amountAnnually`, `reasonForUsingDrugs`, `meansToSupportDrugHabbit`, `source`, `placeSource`, `area`, `drugsUsedCurrent`, `drugsUsedPrev`) VALUES
(838, 733, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(839, 734, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(840, 735, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(841, 736, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(842, 737, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(843, 738, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(844, 739, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(845, 740, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(846, 741, 'Daniella Marie', 'Reyes', 'Quinto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(847, 742, 'Joven Sr', 'Aquino', 'Alcantara', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(848, 743, 'Krishna Mae', 'Alonzo', 'Anderson', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(849, 744, 'Rose Mae', 'Arellano', 'Sotto', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(850, 745, 'Anna Marie', 'Vien', 'Cuneta', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(851, 746, 'Grace', 'Cortez', 'Guiterez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(852, 747, 'Karen Mae', 'Alfaro', 'Ramos', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(853, 748, 'Nikki Jane', 'Aguilar', 'Fuentes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(854, 749, 'Billy Joe', 'Alcasid', 'Cortes', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(855, 750, 'Benjie Sr', 'Morales', 'David', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(856, 751, ' Alexandre L.', 'Pascual', 'ADLAWAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(857, 752, ' Michelle R.', 'Pineda', 'ALBET', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(858, 753, ' Marvin E.', 'Reyes', 'ALVARADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(859, 754, ' April Rose P.', 'Aquino', 'ALZATE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(860, 755, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(861, 756, ' Janacel E.', 'Arellano', 'ANTON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(862, 757, ' Lucy Marie C.', 'Vien', 'AUSTERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(863, 758, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(864, 759, ' Ana C.', 'Alfaro', 'BANTUGAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(865, 760, ' Franzly T.', 'Aguilar', 'BARON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(866, 761, ' Lemmor T.', 'Alcasid', 'BENILAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(867, 762, ' Stefanny O.', 'Morales', 'BRUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(868, 763, ' Jelly June M.', 'Pascual', 'CABEROS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(869, 764, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(870, 765, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(871, 766, ' Clarisa T.', 'Aquino', 'DEBALOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(872, 767, ' Wilfredo', 'Alonzo', 'DIONELA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(873, 768, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(874, 769, ' Ronilo L.', 'Vien', 'DUNGOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(875, 770, ' Rhea Mae E.', 'Cortez', 'GALAS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(876, 771, ' Alexis W.', 'Alfaro', 'GAMAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(877, 772, ' Janelhet D.', 'Aguilar', 'GAMUROT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(878, 773, ' Angela E.', 'Alcasid', 'GARCIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(879, 774, ' Noreen L.', 'Morales', 'GUATNO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(880, 775, ' Frederick N.', 'Pascual', 'JOPIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(881, 776, ' Daisy M.', 'Pineda', 'LAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(882, 777, ' Jenyrose G.', 'Reyes', 'LAPU-OS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(883, 778, ' Farah May L.', 'Aquino', 'LEBOA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(884, 779, ' Dailyn L.', 'Alonzo', 'LLANES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(885, 780, ' Othniel M.', 'Arellano', 'MARAAT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(886, 781, ' Leilanie B.', 'Vien', 'MAUG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(887, 782, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(888, 783, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(889, 784, ' Jessa Joy C.', 'Aguilar', 'ODOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(890, 785, ' Kristy P.', 'Alcasid', 'PASCUA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(891, 786, ' Christian James B.', 'Morales', 'PIE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(892, 787, ' Mary Joy L.', 'Pascual', 'PRECILDA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(893, 788, ' Marimel R.', 'Pineda', 'RANCHES', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(894, 789, ' Jimwhil L.', 'Reyes', 'RIO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(895, 790, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(896, 791, ' Carlie L.', 'Alonzo', 'RUBIA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(897, 792, ' Iladio A.', 'Arellano', 'SABADO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(898, 793, ' Vinna C.', 'Vien', 'SALIBAY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(899, 794, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(900, 795, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(901, 796, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(902, 797, ' Novemie M.', 'Alcasid', 'SINANGOTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(903, 798, ' Mary Grace D.', 'Morales', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(904, 799, ' Mary Jane D.', 'Pascual', 'TAGALOG', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(905, 800, ' Armand Rupert John P.', 'Pineda', 'TAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(906, 801, ' Emmanuel M.', 'Reyes', 'TIPAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(907, 802, ' Diocey L.', 'Aquino', 'TUANZON', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(908, 803, ' Jevelyn I.', 'Alonzo', 'VILLARIN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(909, 804, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(910, 805, ' April Jean C.', 'Vien', 'LAROGA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(911, 806, ' Maryl S.', 'Cortez', 'MALABAD', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(912, 807, ' Maythel P.', 'Alfaro', 'PAGUNSAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(913, 808, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(914, 809, ' Michelle Jean D.', 'Alcasid', 'CORSINO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(915, 810, ' Kristine Chariza G.', 'Morales', 'ACLAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(916, 811, ' Rhea Vi D.', 'Pascual', 'AGOT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(917, 812, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(918, 813, ' Emielou G.', 'Reyes', 'BERSABAL', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(919, 814, ' Jay Lloyd L.', 'Aquino', 'CA-AS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(920, 815, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(921, 816, ' Juanito Paulo III M.', 'Arellano', 'DEITA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(922, 817, ' Regie Mae R.', 'Vien', 'GENERALAO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(923, 818, ' Jasmin O.', 'Cortez', 'MANTE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(924, 819, ' Charis G.', 'Alfaro', 'ORAIZ', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(925, 820, ' Quinn Therese A.', 'Aguilar', 'PADILLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(926, 821, ' Desiree B.', 'Alcasid', 'PARANTAR', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(927, 822, ' Czarina Alexandria M.', 'Morales', 'POBLETE', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(928, 823, ' Patrick Jayson L.', 'Pascual', 'RALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(929, 824, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(930, 825, ' April Dawn M.', 'Reyes', 'BOSQUIT', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(931, 826, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(932, 827, ' Valerie D.', 'Alonzo', 'DE DIOS', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(933, 828, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(934, 829, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(935, 830, ' Vernie L.', 'Cortez', 'GILZA', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(936, 831, 'USeP Admin', 'USeP Admin', 'USeP Admin', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(937, 832, 'Marvin', 'S', 'Lagmay', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(938, 833, 'Marvin', 'S', 'Lagmay Jr', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(939, 834, 'Christian', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(940, 835, 'Frankie VI', 'Mala', 'Labro', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(941, 836, 'Daniella', 'Barrios', 'Javilles', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(942, 837, 'Krishna', 'Pacudan', 'Demafeliz', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(943, 838, 'Vince Patrick', 'Tapar', 'Alferez', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(944, 839, 'Joven Rey', 'Marquez', 'Anden', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(945, 840, 'Christian Jr', 'Day', 'Lugatiman', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(946, 841, 'Vince', 'Pascual', 'Alonte', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(947, 842, 'Frankie', 'Pineda', 'Baltazar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(948, 843, 'Krishna', 'Alonzo', 'Smith', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(949, 844, 'alyhana marie', 'lauron', 'tee', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(950, 845, 'Edsan Colin ', 'Villanueva', 'Santander', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(951, 846, 'Joan ', 'robles', 'catulong', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(952, 847, 'Esmael', 'Pantollano', 'Cabalan', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(953, 848, 'Elvrey', 'Biboso', 'Sicat', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(954, 849, 'Conchita ', 'Maturan', 'Bisnar', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(955, 850, 'concepcion', 'brua', 'malino', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(956, 851, 'Erica', 'Sicat', 'Cale', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(957, 852, 'Frauline', 'Calle', 'Tan', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(958, 853, 'Thelma', 'Rasonabe', 'Magnanao', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(959, 854, 'Maria', 'Taoy', 'Banzon', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(960, 855, 'Maricel', 'Ruzgal', 'Basio', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(961, 856, '', '', '', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(962, 857, 'Elvrey', 'Gwapa', 'Sicat', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(963, 858, 'jennifer', 'fernandez', 'Francisco', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(964, 859, 'Dina', 'QuiÃ±ones', 'Basio', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(965, 860, 'dorylene', 'montefalcon', 'ventura', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(966, 861, 'annabelle', 'romero', 'enaldo', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(967, 862, 'embay', 'joson', 'reina', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(968, 863, 'imelda', 'depillo', 'Ejandra', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(969, 864, 'xFname', 'xMname', 'xLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(970, 865, 'first_name', 'middle_name', 'last_name', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(971, 866, 'xFname', 'xMname', 'xLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(972, 867, '222', '222', '222', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(973, 868, '111', '111', '111', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(974, 869, 'xFname', 'xMname', 'xLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(975, 870, 'yFname', 'yMname', 'yLname', NULL, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fee_collection`
--

CREATE TABLE `fee_collection` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `fee_type_id` int(11) NOT NULL,
  `amount_paid` double NOT NULL,
  `receipt_no` varchar(100) NOT NULL,
  `date_paid` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_type`
--

CREATE TABLE `fee_type` (
  `id` int(11) NOT NULL,
  `brgy_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `type` varchar(100) NOT NULL,
  `period` varchar(100) NOT NULL,
  `start` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `history` varchar(1000) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `info_id`, `history`, `date_time`) VALUES
(2, 224, 'New admin added', '2018-01-26 04:47:10'),
(3, 984, 'Login', '2018-01-26 04:47:16'),
(4, 984, 'Add New Admin yLname, yFname yMname', '2018-01-26 04:48:33'),
(5, 984, 'Logout', '2018-01-26 04:48:35'),
(6, 985, 'Login', '2018-01-26 04:48:37'),
(7, 985, 'Login', '2018-01-26 04:49:07'),
(8, 985, 'Upload Image for Brgy. Mintal', '2018-01-26 04:49:43'),
(9, 985, 'Logout', '2018-01-26 04:50:01'),
(10, 985, 'Login', '2018-01-26 04:50:04'),
(11, 984, 'Login', '2018-01-28 00:11:44'),
(12, 984, 'Admin deleted', '2018-01-28 00:12:32'),
(13, 985, 'Admin deleted', '2018-01-28 00:14:56'),
(14, 984, 'Add New Admin xLname, xFname xMname', '2018-01-28 00:15:18'),
(15, 984, 'Admin deleted', '2018-01-28 00:15:27'),
(16, 984, 'Add New Admin xLname, xFname xMname', '2018-01-28 00:15:53'),
(17, 984, 'Add New Admin yLname, yFname yMname', '2018-01-28 00:16:09'),
(18, 984, 'Update Admin xLname, xFname xMname', '2018-01-28 00:16:53'),
(19, 984, 'Logout', '2018-01-28 00:16:57'),
(20, 985, 'Login', '2018-01-28 00:16:59'),
(21, 985, 'Logout', '2018-01-28 00:19:48'),
(22, 985, 'Login', '2018-01-28 00:19:50'),
(23, 985, 'Upload Image for Brgy. Mintal', '2018-01-28 00:20:25'),
(24, 985, 'Add New Business Net X', '2018-01-28 00:21:03'),
(25, 985, 'Logout', '2018-01-28 00:26:38'),
(26, 984, 'Login', '2018-01-28 02:06:30'),
(27, 984, 'Logout', '2018-01-28 02:06:45'),
(28, 985, 'Login', '2018-01-28 02:06:47'),
(29, 985, 'Logout', '2018-01-28 02:07:02'),
(30, 985, 'Login', '2018-01-30 21:14:33'),
(31, 985, 'Login', '2018-02-02 15:27:43'),
(32, 985, 'Logout', '2018-02-02 15:28:01'),
(33, 984, 'Login', '2018-02-02 15:28:11'),
(34, 984, 'Logout', '2018-02-02 15:28:29'),
(35, 985, 'Login', '2018-02-02 15:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `non_barangay_members`
--

CREATE TABLE `non_barangay_members` (
  `id` varchar(10) NOT NULL DEFAULT '0',
  `connectionName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `non_barangay_members`
--

INSERT INTO `non_barangay_members` (`id`, `connectionName`) VALUES
('X001', 'waw waw waw'),
('X002', 'April Dawn M. Reyes BOSQUIT'),
('X003', 'floyd francis matabilas'),
('X004', 'Jacquelyn B. Arellano ESTEBAN'),
('X005', 'Amarose Jayne G.  Aquino BUSALLA');

--
-- Triggers `non_barangay_members`
--
DELIMITER $$
CREATE TRIGGER `generating id for non barangay` BEFORE INSERT ON `non_barangay_members` FOR EACH ROW BEGIN
  INSERT INTO checker VALUES (NULL);
  SET NEW.id = CONCAT('X', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `note` varchar(10000) NOT NULL,
  `date_note` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `brgyId` int(11) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `midName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `civilStatus` enum('Single','Married','Live-in','Widow/er','Separated','Divorce') DEFAULT NULL,
  `placeOfBirth` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `highestEducationalAttainment` varchar(100) DEFAULT NULL,
  `lastSchoolAttendance` date DEFAULT NULL,
  `numberOfYearsInSchool` varchar(100) DEFAULT NULL,
  `occupationPriorToCBRAP` varchar(100) DEFAULT NULL,
  `siblings` varchar(100) DEFAULT NULL,
  `ordinalPosition` varchar(100) DEFAULT NULL,
  `livingArrangements` varchar(100) DEFAULT NULL,
  `monthlyIncome` varchar(100) DEFAULT NULL,
  `skills` varchar(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `occupationFather` varchar(100) DEFAULT NULL,
  `mother` varchar(100) DEFAULT NULL,
  `occupationMother` varchar(100) DEFAULT NULL,
  `spouse` varchar(100) DEFAULT NULL,
  `occupationSpouse` varchar(100) DEFAULT NULL,
  `spouseAddress` varchar(100) DEFAULT NULL,
  `numberOfChildren` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `userId`, `brgyId`, `firstName`, `midName`, `lastName`, `gender`, `address`, `dob`, `civilStatus`, `placeOfBirth`, `religion`, `nationality`, `highestEducationalAttainment`, `lastSchoolAttendance`, `numberOfYearsInSchool`, `occupationPriorToCBRAP`, `siblings`, `ordinalPosition`, `livingArrangements`, `monthlyIncome`, `skills`, `father`, `occupationFather`, `mother`, `occupationMother`, `spouse`, `occupationSpouse`, `spouseAddress`, `numberOfChildren`) VALUES
(1, 8, 2, 'usepFname', 'usep,Mname', 'usepLname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(2, 9, 4, 'Usep Admin Fname', 'mnameAdminUsep Admin Mname', 'Usep Admin Lname', 'male', 'address', '2017-10-27', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, 'Occupation', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(3, 118, 9, 'First Name', 'Middle Name', 'Last Name', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(4, 119, 4, 'fname', 'mname', 'lname', '', 'Address', '2017-10-30', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(5, 120, 4, 'xFname', 'zMname', 'xLname', '', 'Address', '2017-10-30', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(6, 121, 4, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(7, 122, 4, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(8, 123, 4, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(9, 124, 4, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(10, 125, 4, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(11, 126, 4, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(12, 127, 4, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(13, 128, 4, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(14, 129, 4, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(15, 130, 4, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(16, 131, 4, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(17, 132, 4, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(18, 133, 4, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(19, 134, 4, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(20, 135, 4, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(21, 136, 4, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(22, 137, 4, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(23, 138, 4, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(24, 139, 4, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(25, 140, 4, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(26, 141, 4, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(27, 142, 4, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(28, 143, 4, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(29, 144, 4, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(30, 145, 4, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(31, 146, 4, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(32, 147, 4, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(33, 148, 4, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(34, 149, 4, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(35, 150, 4, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(36, 151, 4, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(37, 152, 4, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(38, 153, 4, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(39, 154, 4, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(40, 155, 4, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(41, 156, 4, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(42, 157, 4, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(43, 158, 4, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(44, 159, 4, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(45, 160, 4, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(46, 161, 4, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(47, 162, 4, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(48, 163, 4, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(49, 164, 4, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(50, 165, 4, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(51, 166, 4, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(52, 167, 4, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(53, 168, 4, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(54, 169, 4, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(55, 170, 4, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(56, 171, 4, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(57, 172, 4, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(58, 173, 4, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(59, 174, 4, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(60, 175, 4, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(61, 176, 4, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(62, 177, 4, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(63, 178, 4, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(64, 179, 4, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(65, 180, 4, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(66, 181, 4, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(67, 182, 4, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(68, 183, 4, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(69, 184, 4, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(70, 185, 4, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(71, 186, 4, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(72, 187, 4, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(73, 188, 4, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(74, 189, 4, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(75, 190, 4, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(76, 191, 4, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(77, 192, 4, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(78, 193, 4, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(79, 194, 4, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(80, 195, 4, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(81, 196, 4, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(82, 197, 4, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(83, 198, 4, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(84, 199, 4, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(85, 200, 4, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(86, 201, 4, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(87, 202, 4, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(88, 203, 4, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(89, 204, 4, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(90, 205, 4, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(91, 206, 4, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(92, 207, 4, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(93, 208, 4, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(94, 209, 4, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(95, 210, 4, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(96, 211, 4, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(97, 212, 4, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(98, 213, 4, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(99, 214, 4, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(100, 215, 4, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(101, 216, 4, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(102, 217, 4, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(103, 218, 4, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(104, 219, 4, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(105, 220, 4, 'yFname', 'yMname', 'yLname', 'female', 'Adress', '2017-10-30', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(106, 221, 7, '000', '000', '000', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(107, 222, 2, 'First Name', 'Middle Name', 'Last Name', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(108, 223, 2, 'xFname', 'xMname', 'yLname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(109, 224, 2, 'USeP Admin', 'USeP Admin', 'USeP Admin', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(110, 225, 4, 'Fname', 'Mname', 'Lname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(111, 226, 4, 'xFname', 'xMname', 'xLname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(112, 227, 4, 'Fname', 'Mname', 'Lname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(113, 228, 4, '222', '222', '222', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(114, 229, 4, 'Fname', 'Mname', 'Lname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(115, 230, 4, 'Fname', 'Mname', 'Lname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(116, 231, 4, 'Fname', 'Mname', 'Lname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(117, 232, 4, 'Fname', 'Mname', 'Lname', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(118, 233, 4, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(119, 234, 4, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(120, 235, 4, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(121, 236, 4, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(122, 237, 4, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(123, 238, 4, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(124, 239, 4, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(125, 240, 4, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(126, 241, 4, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(127, 242, 4, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(128, 243, 4, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(129, 244, 4, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(130, 245, 4, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(131, 246, 4, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(132, 247, 4, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(133, 248, 4, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(134, 249, 4, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(135, 250, 4, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(136, 251, 4, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(137, 252, 4, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(138, 253, 4, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(139, 254, 4, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(140, 255, 4, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(141, 256, 4, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(142, 257, 4, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(143, 258, 4, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(144, 259, 4, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(145, 260, 4, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(146, 261, 4, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(147, 262, 4, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(148, 263, 4, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(149, 264, 4, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(150, 265, 4, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(151, 266, 4, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(152, 267, 4, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(153, 268, 4, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(154, 269, 4, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(155, 270, 4, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(156, 271, 4, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(157, 272, 4, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(158, 273, 4, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(159, 274, 4, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(160, 275, 4, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(161, 276, 4, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(162, 277, 4, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(163, 278, 4, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(164, 279, 4, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(165, 280, 4, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(166, 281, 4, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(167, 282, 4, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(168, 283, 4, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(169, 284, 4, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(170, 285, 4, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(171, 286, 4, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(172, 287, 4, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(173, 288, 4, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(174, 289, 4, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(175, 290, 4, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(176, 291, 4, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(177, 292, 4, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(178, 293, 4, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(179, 294, 4, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(180, 295, 4, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(181, 296, 4, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(182, 297, 4, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(183, 298, 4, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(184, 299, 4, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(185, 300, 4, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(186, 301, 4, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(187, 302, 4, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(188, 303, 4, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(189, 304, 4, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(190, 305, 4, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(191, 306, 4, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(192, 307, 4, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(193, 308, 4, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(194, 309, 4, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(195, 310, 4, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(196, 311, 4, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(197, 312, 4, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(198, 313, 4, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(199, 314, 4, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(200, 315, 4, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(201, 316, 4, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(202, 317, 4, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(203, 318, 4, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `persons` (`id`, `userId`, `brgyId`, `firstName`, `midName`, `lastName`, `gender`, `address`, `dob`, `civilStatus`, `placeOfBirth`, `religion`, `nationality`, `highestEducationalAttainment`, `lastSchoolAttendance`, `numberOfYearsInSchool`, `occupationPriorToCBRAP`, `siblings`, `ordinalPosition`, `livingArrangements`, `monthlyIncome`, `skills`, `father`, `occupationFather`, `mother`, `occupationMother`, `spouse`, `occupationSpouse`, `spouseAddress`, `numberOfChildren`) VALUES
(204, 319, 4, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(205, 320, 4, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(206, 321, 4, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(207, 322, 4, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(208, 323, 4, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(209, 324, 4, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(210, 325, 4, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(211, 326, 4, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(212, 327, 4, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(213, 328, 4, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(214, 329, 4, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(215, 330, 4, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(216, 331, 4, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(217, 332, 15, '444', '444', '444', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(218, 333, 17, 'Gabriel', 'M.', 'Natividad', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(219, 334, 17, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(220, 335, 17, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(221, 336, 17, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(222, 337, 17, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(223, 338, 17, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(224, 339, 17, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(225, 340, 17, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(226, 341, 17, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(227, 342, 17, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(228, 343, 17, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(229, 344, 17, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(230, 345, 17, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(231, 346, 17, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(232, 347, 17, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(233, 348, 17, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(234, 349, 17, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(235, 350, 17, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(236, 351, 17, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(237, 352, 17, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(238, 353, 17, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(239, 354, 17, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(240, 355, 17, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(241, 356, 17, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(242, 357, 17, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(243, 358, 17, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(244, 359, 17, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(245, 360, 17, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(246, 361, 17, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(247, 362, 17, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(248, 363, 17, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(249, 364, 17, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(250, 365, 17, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(251, 366, 17, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(252, 367, 17, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(253, 368, 17, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(254, 369, 17, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(255, 370, 17, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(256, 371, 17, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(257, 372, 17, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(258, 373, 17, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(259, 374, 17, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(260, 375, 17, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(261, 376, 17, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(262, 377, 17, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(263, 378, 17, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(264, 379, 17, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(265, 380, 17, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(266, 381, 17, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(267, 382, 17, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(268, 383, 17, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(269, 384, 17, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(270, 385, 17, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(271, 386, 17, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(272, 387, 17, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(273, 388, 17, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(274, 389, 17, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(275, 390, 17, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(276, 391, 17, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(277, 392, 17, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(278, 393, 17, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(279, 394, 17, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(280, 395, 17, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(281, 396, 17, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(282, 397, 17, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(283, 398, 17, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(284, 399, 17, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(285, 400, 17, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(286, 401, 17, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(287, 402, 17, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(288, 403, 17, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(289, 404, 17, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(290, 405, 17, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(291, 406, 17, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(292, 407, 17, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(293, 408, 17, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(294, 409, 17, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(295, 410, 17, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(296, 411, 17, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(297, 412, 17, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(298, 413, 17, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(299, 414, 17, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(300, 415, 17, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(301, 416, 17, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(302, 417, 17, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(303, 418, 17, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(304, 419, 17, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(305, 420, 17, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(306, 421, 17, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(307, 422, 17, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(308, 423, 17, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(309, 424, 17, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(310, 425, 17, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(311, 426, 17, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(312, 427, 17, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(313, 428, 17, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(314, 429, 17, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(315, 430, 17, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(316, 431, 17, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(317, 432, 17, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(318, 433, 17, 'Paul', 'Benjamin', 'Revote', 'male', 'Mintal', '1995-11-15', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(319, 434, 17, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(320, 435, 17, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(321, 436, 17, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(322, 437, 17, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(323, 438, 17, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(324, 439, 17, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(325, 440, 17, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(326, 441, 17, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(327, 442, 17, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(328, 443, 17, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(329, 444, 17, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(330, 445, 17, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(331, 446, 17, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(332, 447, 17, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(333, 448, 17, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(334, 449, 17, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(335, 450, 17, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(336, 451, 17, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(337, 452, 17, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(338, 453, 17, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(339, 454, 17, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(340, 455, 17, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(341, 456, 17, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(342, 457, 17, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(343, 458, 17, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(344, 459, 17, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(345, 460, 17, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(346, 461, 17, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(347, 462, 17, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(348, 463, 17, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(349, 464, 17, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(350, 465, 17, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(351, 466, 17, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(352, 467, 17, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(353, 468, 17, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(354, 469, 17, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(355, 470, 17, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(356, 471, 17, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(357, 472, 17, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(358, 473, 17, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(359, 474, 17, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(360, 475, 17, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(361, 476, 17, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(362, 477, 17, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(363, 478, 17, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(364, 479, 17, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(365, 480, 17, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(366, 481, 17, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(367, 482, 17, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(368, 483, 17, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(369, 484, 17, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(370, 485, 17, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(371, 486, 17, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(372, 487, 17, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(373, 488, 17, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(374, 489, 17, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(375, 490, 17, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(376, 491, 17, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(377, 492, 17, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(378, 493, 17, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(379, 494, 17, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(380, 495, 17, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(381, 496, 17, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(382, 497, 17, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(383, 498, 17, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(384, 499, 17, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(385, 500, 17, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(386, 501, 17, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(387, 502, 17, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(388, 503, 17, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(389, 504, 17, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(390, 505, 17, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(391, 506, 17, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(392, 507, 17, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(393, 508, 17, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(394, 509, 17, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(395, 510, 17, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(396, 511, 17, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(397, 512, 17, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(398, 513, 17, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(399, 514, 17, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(400, 515, 17, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(401, 516, 17, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `persons` (`id`, `userId`, `brgyId`, `firstName`, `midName`, `lastName`, `gender`, `address`, `dob`, `civilStatus`, `placeOfBirth`, `religion`, `nationality`, `highestEducationalAttainment`, `lastSchoolAttendance`, `numberOfYearsInSchool`, `occupationPriorToCBRAP`, `siblings`, `ordinalPosition`, `livingArrangements`, `monthlyIncome`, `skills`, `father`, `occupationFather`, `mother`, `occupationMother`, `spouse`, `occupationSpouse`, `spouseAddress`, `numberOfChildren`) VALUES
(402, 517, 17, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(403, 518, 17, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(404, 519, 17, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(405, 520, 17, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(406, 521, 17, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(407, 522, 17, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(408, 523, 17, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(409, 524, 17, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(410, 525, 17, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(411, 526, 17, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(412, 527, 17, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(413, 528, 17, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(414, 529, 17, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(415, 530, 17, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(416, 531, 17, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(417, 532, 17, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(418, 533, 17, 'Christian', 'D.', 'Lugatiman', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(419, 534, 17, 'Paul', 'Benjamin', 'Revote', 'female', 'Mintal', '1995-11-15', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(420, 535, 17, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(421, 536, 17, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(422, 537, 17, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(423, 538, 17, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(424, 539, 17, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(425, 540, 17, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(426, 541, 17, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(427, 542, 17, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(428, 543, 17, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(429, 544, 17, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(430, 545, 17, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(431, 546, 17, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(432, 547, 17, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(433, 548, 17, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(434, 549, 17, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(435, 550, 17, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(436, 551, 17, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(437, 552, 17, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(438, 553, 17, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(439, 554, 17, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(440, 555, 17, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(441, 556, 17, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(442, 557, 17, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(443, 558, 17, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(444, 559, 17, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(445, 560, 17, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(446, 561, 17, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(447, 562, 17, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(448, 563, 17, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(449, 564, 17, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(450, 565, 17, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(451, 566, 17, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(452, 567, 17, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(453, 568, 17, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(454, 569, 17, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(455, 570, 17, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(456, 571, 17, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(457, 572, 17, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(458, 573, 17, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(459, 574, 17, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(460, 575, 17, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(461, 576, 17, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(462, 577, 17, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(463, 578, 17, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(464, 579, 17, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(465, 580, 17, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(466, 581, 17, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(467, 582, 17, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(468, 583, 17, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(469, 584, 17, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(470, 585, 17, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(471, 586, 17, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(472, 587, 17, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(473, 588, 17, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(474, 589, 17, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(475, 590, 17, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(476, 591, 17, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(477, 592, 17, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(478, 593, 17, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(479, 594, 17, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(480, 595, 17, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(481, 596, 17, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(482, 597, 17, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(483, 598, 17, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(484, 599, 17, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(485, 600, 17, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(486, 601, 17, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(487, 602, 17, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(488, 603, 17, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(489, 604, 17, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(490, 605, 17, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(491, 606, 17, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(492, 607, 17, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(493, 608, 17, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(494, 609, 17, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(495, 610, 17, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(496, 611, 17, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(497, 612, 17, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(498, 613, 17, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(499, 614, 17, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(500, 615, 17, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(501, 616, 17, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(502, 617, 17, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(503, 618, 17, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(504, 619, 17, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(505, 620, 17, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(506, 621, 17, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(507, 622, 17, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(508, 623, 17, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(509, 624, 17, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(510, 625, 17, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(511, 626, 17, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(512, 627, 17, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(513, 628, 17, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(514, 629, 17, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1970-01-01', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(515, 630, 17, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(516, 631, 17, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(517, 632, 17, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(518, 633, 17, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1970-01-01', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(519, 634, 4, '333', '333', '333', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(520, 635, 16, '444', '444', '444', '', '', '0000-00-00', '', NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(521, 636, 18, 'Christian', 'Day', 'Lugatiman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(522, 637, 18, 'Fname', 'Mname', 'Lname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(523, 638, 18, 'Paul', 'Benjamin', 'Revote', 'female', 'Obrero', '2017-11-16', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(524, 639, 18, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(525, 640, 18, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(526, 641, 18, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(527, 642, 18, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(528, 643, 18, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(529, 644, 18, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(530, 645, 18, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(531, 646, 18, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(532, 647, 18, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(533, 648, 18, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(534, 649, 18, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(535, 650, 18, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(536, 651, 18, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(537, 652, 18, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(538, 653, 18, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(539, 654, 18, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(540, 655, 18, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(541, 656, 18, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(542, 657, 18, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(543, 658, 18, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(544, 659, 18, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(545, 660, 18, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(546, 661, 18, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(547, 662, 18, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(548, 663, 18, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(549, 664, 18, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(550, 665, 18, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(551, 666, 18, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(552, 667, 18, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(553, 668, 18, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(554, 669, 18, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(555, 670, 18, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(556, 671, 18, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(557, 672, 18, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(558, 673, 18, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(559, 674, 18, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(560, 675, 18, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(561, 676, 18, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(562, 677, 18, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(563, 678, 18, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(564, 679, 18, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(565, 680, 18, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(566, 681, 18, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(567, 682, 18, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(568, 683, 18, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(569, 684, 18, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(570, 685, 18, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(571, 686, 18, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(572, 687, 18, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(573, 688, 18, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(574, 689, 18, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(575, 690, 18, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(576, 691, 18, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(577, 692, 18, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(578, 693, 18, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(579, 694, 18, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(580, 695, 18, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(581, 696, 18, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(582, 697, 18, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(583, 698, 18, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(584, 699, 18, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(585, 700, 18, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(586, 701, 18, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(587, 702, 18, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(588, 703, 18, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(589, 704, 18, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(590, 705, 18, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(591, 706, 18, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(592, 707, 18, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(593, 708, 18, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(594, 709, 18, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(595, 710, 18, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(596, 711, 18, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(597, 712, 18, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(598, 713, 18, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(599, 714, 18, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(600, 715, 18, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `persons` (`id`, `userId`, `brgyId`, `firstName`, `midName`, `lastName`, `gender`, `address`, `dob`, `civilStatus`, `placeOfBirth`, `religion`, `nationality`, `highestEducationalAttainment`, `lastSchoolAttendance`, `numberOfYearsInSchool`, `occupationPriorToCBRAP`, `siblings`, `ordinalPosition`, `livingArrangements`, `monthlyIncome`, `skills`, `father`, `occupationFather`, `mother`, `occupationMother`, `spouse`, `occupationSpouse`, `spouseAddress`, `numberOfChildren`) VALUES
(601, 716, 18, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(602, 717, 18, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(603, 718, 18, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(604, 719, 18, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(605, 720, 18, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(606, 721, 18, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(607, 722, 18, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(608, 723, 18, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(609, 724, 18, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(610, 725, 18, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(611, 726, 18, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(612, 727, 18, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(613, 728, 18, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(614, 729, 18, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(615, 730, 18, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(616, 731, 18, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(617, 732, 18, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(618, 733, 18, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(619, 734, 18, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(620, 735, 18, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(621, 736, 18, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(622, 737, 19, 'Marvin', 'S', 'Lagmay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(623, 738, 19, 'Marvin', 'S', 'Lagmay Jr.', 'male', 'Mintal', '1990-11-16', 'Single', NULL, 'Others', NULL, 'College', NULL, NULL, 'Instructor', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(624, 739, 19, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(625, 740, 19, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(626, 741, 19, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(627, 742, 19, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(628, 743, 19, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(629, 744, 19, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(630, 745, 19, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(631, 746, 19, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(632, 747, 19, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(633, 748, 18, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(634, 749, 18, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(635, 750, 18, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(636, 751, 18, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(637, 752, 18, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(638, 753, 18, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(639, 754, 18, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(640, 755, 18, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(641, 756, 18, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(642, 757, 18, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(643, 758, 18, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(644, 759, 18, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(645, 760, 18, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(646, 761, 18, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(647, 762, 18, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(648, 763, 18, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(649, 764, 18, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(650, 765, 18, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(651, 766, 18, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(652, 767, 18, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(653, 768, 18, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(654, 769, 18, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(655, 770, 18, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(656, 771, 18, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(657, 772, 18, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(658, 773, 18, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(659, 774, 18, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(660, 775, 18, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(661, 776, 18, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(662, 777, 18, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(663, 778, 18, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(664, 779, 18, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(665, 780, 18, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(666, 781, 18, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(667, 782, 18, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(668, 783, 18, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(669, 784, 18, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(670, 785, 18, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(671, 786, 18, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(672, 787, 18, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(673, 788, 18, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(674, 789, 18, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(675, 790, 18, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(676, 791, 18, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(677, 792, 18, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(678, 793, 18, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(679, 794, 18, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(680, 795, 18, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(681, 796, 18, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(682, 797, 18, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(683, 798, 18, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(684, 799, 18, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(685, 800, 18, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(686, 801, 18, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(687, 802, 18, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(688, 803, 18, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(689, 804, 18, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(690, 805, 18, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(691, 806, 18, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(692, 807, 18, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(693, 808, 18, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(694, 809, 18, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(695, 810, 18, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(696, 811, 18, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(697, 812, 18, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(698, 813, 18, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(699, 814, 18, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(700, 815, 18, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(701, 816, 18, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(702, 817, 18, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(703, 818, 18, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(704, 819, 18, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(705, 820, 18, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(706, 821, 18, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(707, 822, 18, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(708, 823, 18, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(709, 824, 18, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(710, 825, 18, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(711, 826, 18, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(712, 827, 18, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(713, 828, 18, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(714, 829, 18, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(715, 830, 18, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(716, 831, 18, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(717, 832, 18, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(718, 833, 18, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(719, 834, 18, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(720, 835, 18, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(721, 836, 18, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(722, 837, 18, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(723, 838, 18, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(724, 839, 18, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(725, 840, 18, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(726, 841, 18, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(727, 842, 18, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(728, 843, 18, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(729, 844, 18, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(730, 845, 18, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(731, 846, 18, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(732, 847, 18, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(733, 848, 18, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(734, 849, 18, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(735, 850, 18, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(736, 851, 18, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(737, 852, 18, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(738, 853, 18, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(739, 854, 18, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(740, 855, 18, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(741, 856, 18, 'Daniella Marie', 'Reyes', 'Quinto', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(742, 857, 18, 'Joven Sr', 'Aquino', 'Alcantara', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(743, 858, 18, 'Krishna Mae', 'Alonzo', 'Anderson', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(744, 859, 18, 'Rose Mae', 'Arellano', 'Sotto', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(745, 860, 18, 'Anna Marie', 'Vien', 'Cuneta', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(746, 861, 18, 'Grace', 'Cortez', 'Guiterez', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(747, 862, 18, 'Karen Mae', 'Alfaro', 'Ramos', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(748, 863, 18, 'Nikki Jane', 'Aguilar', 'Fuentes', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(749, 864, 18, 'Billy Joe', 'Alcasid', 'Cortes', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(750, 865, 18, 'Benjie Sr', 'Morales', 'David', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(751, 866, 18, ' Alexandre L.', 'Pascual', 'ADLAWAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(752, 867, 18, ' Michelle R.', 'Pineda', 'ALBET', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(753, 868, 18, ' Marvin E.', 'Reyes', 'ALVARADO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(754, 869, 18, ' April Rose P.', 'Aquino', 'ALZATE', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(755, 870, 18, ' Vanessa Mae G.', 'Alonzo', 'ANTIMANO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(756, 871, 18, ' Janacel E.', 'Arellano', 'ANTON', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(757, 872, 18, ' Lucy Marie C.', 'Vien', 'AUSTERO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(758, 873, 18, ' Rhea Kassandra Y.', 'Cortez', 'BALDOZA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(759, 874, 18, ' Ana C.', 'Alfaro', 'BANTUGAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(760, 875, 18, ' Franzly T.', 'Aguilar', 'BARON', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(761, 876, 18, ' Lemmor T.', 'Alcasid', 'BENILAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(762, 877, 18, ' Stefanny O.', 'Morales', 'BRUA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(763, 878, 18, ' Jelly June M.', 'Pascual', 'CABEROS', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(764, 879, 18, ' Rogienna Marie J.', 'Pineda', 'CAMINERO', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(765, 880, 18, ' Lovella Rose Y.', 'Reyes', 'DAHOYLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(766, 881, 18, ' Clarisa T.', 'Aquino', 'DEBALOS', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(767, 882, 18, ' Wilfredo', 'Alonzo', 'DIONELA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(768, 883, 18, ' Zohn Denniel T.', 'Arellano', 'DIONISIO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(769, 884, 18, ' Ronilo L.', 'Vien', 'DUNGOG', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(770, 885, 18, ' Rhea Mae E.', 'Cortez', 'GALAS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(771, 886, 18, ' Alexis W.', 'Alfaro', 'GAMAD', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(772, 887, 18, ' Janelhet D.', 'Aguilar', 'GAMUROT', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(773, 888, 18, ' Angela E.', 'Alcasid', 'GARCIA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(774, 889, 18, ' Noreen L.', 'Morales', 'GUATNO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(775, 890, 18, ' Frederick N.', 'Pascual', 'JOPIA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(776, 891, 18, ' Daisy M.', 'Pineda', 'LAO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(777, 892, 18, ' Jenyrose G.', 'Reyes', 'LAPU-OS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(778, 893, 18, ' Farah May L.', 'Aquino', 'LEBOA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(779, 894, 18, ' Dailyn L.', 'Alonzo', 'LLANES', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(780, 895, 18, ' Othniel M.', 'Arellano', 'MARAAT', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(781, 896, 18, ' Leilanie B.', 'Vien', 'MAUG', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(782, 897, 18, ' Alexa Rainniel T.', 'Cortez', 'MEGRIÃ‘O', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(783, 898, 18, ' Kathleen Joy M.', 'Alfaro', 'OBENZA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(784, 899, 18, ' Jessa Joy C.', 'Aguilar', 'ODOG', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(785, 900, 18, ' Kristy P.', 'Alcasid', 'PASCUA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(786, 901, 18, ' Christian James B.', 'Morales', 'PIE', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(787, 902, 18, ' Mary Joy L.', 'Pascual', 'PRECILDA', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(788, 903, 18, ' Marimel R.', 'Pineda', 'RANCHES', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(789, 904, 18, ' Jimwhil L.', 'Reyes', 'RIO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(790, 905, 18, ' Paolo Dominic A.', 'Aquino', 'RODRIGUEZ', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(791, 906, 18, ' Carlie L.', 'Alonzo', 'RUBIA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(792, 907, 18, ' Iladio A.', 'Arellano', 'SABADO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(793, 908, 18, ' Vinna C.', 'Vien', 'SALIBAY', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(794, 909, 18, ' Aniceto Larry LR.', 'Cortez', 'SANCHEZ', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(795, 910, 18, ' Jemimah Clois G.', 'Alfaro', 'SANDIEGO', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(796, 911, 18, ' Judy Ann G.', 'Aguilar', 'SEMBRINO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(797, 912, 18, ' Novemie M.', 'Alcasid', 'SINANGOTE', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(798, 913, 18, ' Mary Grace D.', 'Morales', 'TAGALOG', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `persons` (`id`, `userId`, `brgyId`, `firstName`, `midName`, `lastName`, `gender`, `address`, `dob`, `civilStatus`, `placeOfBirth`, `religion`, `nationality`, `highestEducationalAttainment`, `lastSchoolAttendance`, `numberOfYearsInSchool`, `occupationPriorToCBRAP`, `siblings`, `ordinalPosition`, `livingArrangements`, `monthlyIncome`, `skills`, `father`, `occupationFather`, `mother`, `occupationMother`, `spouse`, `occupationSpouse`, `spouseAddress`, `numberOfChildren`) VALUES
(799, 914, 18, ' Mary Jane D.', 'Pascual', 'TAGALOG', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(800, 915, 18, ' Armand Rupert John P.', 'Pineda', 'TAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(801, 916, 18, ' Emmanuel M.', 'Reyes', 'TIPAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(802, 917, 18, ' Diocey L.', 'Aquino', 'TUANZON', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(803, 918, 18, ' Jevelyn I.', 'Alonzo', 'VILLARIN', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(804, 919, 18, ' Jameson T.', 'Arellano', 'YBAÃ‘EZ', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(805, 920, 18, ' April Jean C.', 'Vien', 'LAROGA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(806, 921, 18, ' Maryl S.', 'Cortez', 'MALABAD', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(807, 922, 18, ' Maythel P.', 'Alfaro', 'PAGUNSAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(808, 923, 18, ' Arce Joy S.', 'Aguilar', 'VILLAFLOR', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(809, 924, 18, ' Michelle Jean D.', 'Alcasid', 'CORSINO', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(810, 925, 18, ' Kristine Chariza G.', 'Morales', 'ACLAN', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(811, 926, 18, ' Rhea Vi D.', 'Pascual', 'AGOT', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(812, 927, 18, ' Lydia Rosalina R.', 'Pineda', 'BERMOY', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(813, 928, 18, ' Emielou G.', 'Reyes', 'BERSABAL', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(814, 929, 18, ' Jay Lloyd L.', 'Aquino', 'CA-AS', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(815, 930, 18, ' Angela Erna A.', 'Alonzo', 'CUALQUERA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(816, 931, 18, ' Juanito Paulo III M.', 'Arellano', 'DEITA', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(817, 932, 18, ' Regie Mae R.', 'Vien', 'GENERALAO', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Orthodoxy', NULL, 'High School', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(818, 933, 18, ' Jasmin O.', 'Cortez', 'MANTE', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'The Kingdom of Jesus Christ the Name Above Every Name', NULL, 'Vocational', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(819, 934, 18, ' Charis G.', 'Alfaro', 'ORAIZ', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Judaism', NULL, 'College', NULL, NULL, 'Tindera', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(820, 935, 18, ' Quinn Therese A.', 'Aguilar', 'PADILLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Hinduism', NULL, 'Elementary', NULL, NULL, 'Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(821, 936, 18, ' Desiree B.', 'Alcasid', 'PARANTAR', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Teacher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(822, 937, 18, ' Czarina Alexandria M.', 'Morales', 'POBLETE', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(823, 938, 18, ' Patrick Jayson L.', 'Pascual', 'RALLA', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'College', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(824, 939, 18, ' Charles Dwayne C.', 'Pineda', 'TUMALIP', 'female', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Elementary', NULL, NULL, 'Helper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(825, 940, 18, ' April Dawn M.', 'Reyes', 'BOSQUIT', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'High School', NULL, NULL, 'Clerk', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(826, 941, 18, ' Amarose Jayne G.', 'Aquino', 'BUSALLA', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Atheism ', NULL, 'Vocational', NULL, NULL, 'Housewife', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(827, 942, 18, ' Valerie D.', 'Alonzo', 'DE DIOS', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Jeepney Driver', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(828, 943, 18, ' Jacquelyn B.', 'Arellano', 'ESTEBAN', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(829, 944, 18, ' Keziah Suzaine W.', 'Vien', 'FRANCISCO', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(830, 945, 18, ' Vernie L.', 'Cortez', 'GILZA', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(831, 224, 2, 'USeP Admin', 'USeP Admin', 'USeP Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(832, 946, 20, 'Marvin', 'S', 'Lagmay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(833, 947, 20, 'Marvin', 'S', 'Lagmay Jr', 'female', 'Mintal', '1990-11-17', 'Single', NULL, 'Others', NULL, 'College', NULL, NULL, 'Instructor', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(834, 948, 20, 'Christian', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(835, 949, 20, 'Frankie VI', 'Mala', 'Labro', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Islam', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(836, 950, 20, 'Daniella', 'Barrios', 'Javilles', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Protestant', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(837, 951, 20, 'Krishna', 'Pacudan', 'Demafeliz', 'female', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'College', NULL, NULL, 'Researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(838, 952, 20, 'Vince Patrick', 'Tapar', 'Alferez', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Jesus Miracle Crusade International Ministry', NULL, 'College', NULL, NULL, 'Programmer', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(839, 953, 20, 'Joven Rey', 'Marquez', 'Anden', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Members Church of God International', NULL, 'College', NULL, NULL, 'Graphic Design', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(840, 954, 20, 'Christian Jr', 'Day', 'Lugatiman', 'male', 'Mintal, Davao City', '1969-12-31', 'Married', NULL, 'Most Holy Church of God in Christ Jesus', NULL, 'Vocational', NULL, NULL, 'Electrical Technician', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(841, 955, 20, 'Vince', 'Pascual', 'Alonte', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Philippine Independent Church', NULL, 'College', NULL, NULL, 'Teller', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(842, 956, 20, 'Frankie', 'Pineda', 'Baltazar', 'male', 'Mintal, Davao City', '1969-12-31', 'Single', NULL, 'Apostolic Catholic Church', NULL, 'Elementary', NULL, NULL, 'Tindero', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(843, 957, 20, 'Krishna', 'Alonzo', 'Smith', 'female', 'phase 1, corner st', '1985-12-25', 'Married', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'artist', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(844, 958, 20, 'alyhana marie', 'lauron', 'tee', 'female', 'elenita heights sub.,davao city', '2000-03-28', 'Single', NULL, 'Iglesia ni Cristo', NULL, 'High School', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(845, 959, 20, 'Edsan Colin ', 'Villanueva', 'Santander', 'male', 'Champaca ', '1989-08-12', 'Single', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'Brgy. Staff', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(846, 960, 20, 'Joan ', 'robles', 'catulong', 'female', 'm.a village new loon mintal davao city', '1979-02-19', 'Married', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, 'bns', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(847, 961, 20, 'Esmael', 'Pantollano', 'Cabalan', 'male', 'Bago Oshiro ', '2000-05-09', 'Single', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(848, 962, 20, 'Elvrey', 'Biboso', 'Sicat', 'female', 'Mintal', '1999-08-21', 'Single', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(849, 963, 20, 'Conchita ', 'Maturan', 'Bisnar', 'female', 'Golden Shower Street', '1961-11-18', 'Married', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'None', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(850, 964, 20, 'concepcion', 'brua', 'malino', 'female', 'p-9kumintang st.', '1969-12-12', 'Married', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, 'bhw', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(851, 965, 20, 'Erica', 'Sicat', 'Cale', 'female', 'Mintal, Davao City', '1999-08-21', 'Single', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(852, 966, 20, 'Frauline', 'Calle', 'Tan', 'female', 'Mintal, Davao City', '2006-10-03', 'Married', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(853, 967, 20, 'Thelma', 'Rasonabe', 'Magnanao', 'female', 'Santan St.', '2017-11-19', 'Single', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, 'Barangay staff', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(854, 968, 20, 'Maria', 'Taoy', 'Banzon', 'female', 'Tapay st', '1981-04-03', 'Single', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(855, 969, 20, 'Maricel', 'Ruzgal', 'Basio', 'female', '172 Rubia St.', '1978-08-02', 'Married', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'field researcher', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(856, 970, 20, '', '', '', 'female', '', '1980-06-15', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(857, 971, 20, 'Elvrey', 'Gwapa', 'Sicat', 'female', 'Mintal', '2017-11-17', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(858, 972, 20, 'jennifer', 'fernandez', 'Francisco', 'female', '', '1980-06-15', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(859, 973, 20, 'Dina', 'QuiÃ±ones', 'Basio', 'female', 'Santan st.,', '1974-06-25', 'Married', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, 'Bhw', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(860, 974, 20, 'dorylene', 'montefalcon', 'ventura', 'female', 'mintal davao city', '1979-06-22', 'Married', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, 'purok leader', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(861, 975, 20, 'annabelle', 'romero', 'enaldo', 'female', 'san francisco st.mintal davao city', '1971-06-30', 'Married', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'house keeper', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(862, 976, 20, 'embay', 'joson', 'reina', 'female', 'small vill.mintal', '1969-07-01', 'Married', NULL, 'Roman Catholic', NULL, 'High School', NULL, NULL, 'bhw', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(863, 977, 20, 'imelda', 'depillo', 'Ejandra', 'female', 'Maggie st Mintal', '1960-08-13', 'Married', NULL, 'Roman Catholic', NULL, 'College', NULL, NULL, 'BHW', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(864, 979, 20, 'xFname', 'xMname', 'xLname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(865, 980, 20, 'first_name', 'middle_name', 'last_name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(866, 981, 21, 'xFname', 'xMname', 'xLname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(867, 982, 21, '222', '222', '222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(868, 983, 21, '111', '111', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(869, 984, 20, 'xFname', 'xMname', 'xLname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(870, 985, 20, 'yFname', 'yMname', 'yLname', 'female', 'Address', '2018-01-26', 'Single', NULL, 'Roman Catholic', NULL, 'Elementary', NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '');

--
-- Triggers `persons`
--
DELIMITER $$
CREATE TRIGGER `name` AFTER INSERT ON `persons` FOR EACH ROW BEGIN
INSERT INTO drug_use_info (person_id, firstName, midName, lastName)
SELECT NEW.id, NEW.firstName, NEW.midName, new.lastName
FROM persons WHERE id=New.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update` AFTER UPDATE ON `persons` FOR EACH ROW BEGIN
UPDATE drug_use_info
INNER JOIN persons ON drug_use_info.person_id = persons.id
SET drug_use_info.firstName = persons.firstName,
drug_use_info.midName = persons.midName,
drug_use_info.lastName = persons.lastName
WHERE drug_use_info.person_id = persons.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `purok`
--

CREATE TABLE `purok` (
  `id` int(11) NOT NULL,
  `brgy_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `purok_leader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purok`
--

INSERT INTO `purok` (`id`, `brgy_id`, `name`, `purok_leader`) VALUES
(34, 20, '1', 0),
(35, 20, '2', 0),
(36, 20, '3', 0),
(37, 20, '4', 0),
(38, 20, '5', 0),
(39, 20, '6', 0),
(40, 20, '7', 0),
(41, 20, '8', 0),
(42, 20, '9', 0),
(43, 20, '10', 0),
(44, 20, '11', 0),
(45, 20, '12', 0),
(46, 20, '13', 0),
(47, 20, '14', 0),
(48, 20, '15', 0),
(49, 20, '16', 0),
(55, 20, '17', 0),
(56, 20, '18', 0),
(57, 20, '19', 0),
(58, 20, '20', 0),
(59, 20, '21', 0),
(60, 20, '22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `personName` varchar(100) NOT NULL,
  `serviceAvailed` varchar(100) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `barangayWorkerName` varchar(100) NOT NULL,
  `serviceResult` varchar(100) NOT NULL,
  `contactNumber` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `person_id`, `personName`, `serviceAvailed`, `worker_id`, `barangayWorkerName`, `serviceResult`, `contactNumber`, `date`) VALUES
(5, 104, ' Vernie L. GILZA', 'wawex', 1, 'Janrey Suarez', 'wawex', '123', '2017-10-31'),
(6, 103, ' Keziah Suzaine W. FRANCISCO', 'wwwwww', 2, 'Allen Lamparas', 'wwwww', '123', '2017-09-27'),
(7, 102, ' Jacquelyn B. ESTEBAN', 'essss', 1, 'Janrey Suarez', 'aw', '123', '2017-09-07'),
(8, 105, 'yFname yLname', 'MAONI', 1, 'Janrey ', 'MAONI', '121111', '2017-10-31'),
(9, 102, ' Jacquelyn B. ESTEBAN', 'WAW', 1, 'Janrey Suarez', 'WAW', '111', '2017-11-02'),
(10, 99, ' April Dawn M. BOSQUIT', 'aw', 2, 'Allen Lamparas', 'aw', '121', '2017-11-08'),
(11, 89, ' Angela Erna A. CUALQUERA', 'maoni', 3, 'Mao Ni', 'maoni', '123', '2017-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `receipt_no` varchar(100) NOT NULL,
  `date_transact` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_business`
--

CREATE TABLE `transaction_business` (
  `id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `accessId` int(11) NOT NULL,
  `brgyId` int(11) DEFAULT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `accessId`, `brgyId`, `firstname`, `lastname`, `username`, `password`) VALUES
(4, 2, NULL, 'Floyd', 'Matabilas', 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9'),
(7, 0, NULL, 'Benedict', 'Badilles', 'benbot', '9d73e9813c2f9fad62b7cac303e3434ff509b2f2ef886024afd2aa74bfc9300c'),
(8, 0, 9, 'Benedict', 'Badilles', 'benben', '3aca18d549f545fd9158ac7128e1ee5ef34658a7d01ca3b70c05808122aa5217');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `purok_id` int(11) DEFAULT NULL,
  `brgy_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `img_name` varchar(100) DEFAULT NULL,
  `img_extension` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blood_type` varchar(100) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `cell_no` varchar(100) DEFAULT NULL,
  `tell_no` varchar(100) DEFAULT NULL,
  `is_voter` varchar(100) DEFAULT NULL,
  `voter_id` varchar(100) DEFAULT NULL,
  `citizen_brgy_id` varchar(100) DEFAULT NULL,
  `residence_type` varchar(100) DEFAULT NULL,
  `cur_employed` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `cur_enrolled` varchar(100) DEFAULT NULL,
  `senior_citizen` varchar(100) DEFAULT NULL,
  `deceased` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`purok_id`, `brgy_id`, `id`, `img_name`, `img_extension`, `first_name`, `middle_name`, `last_name`, `gender`, `birthdate`, `address`, `status`, `blood_type`, `education`, `occupation`, `cell_no`, `tell_no`, `is_voter`, `voter_id`, `citizen_brgy_id`, `residence_type`, `cur_employed`, `pwd`, `cur_enrolled`, `senior_citizen`, `deceased`, `religion`) VALUES
(1, 2, 224, NULL, NULL, 'USeP Admin', 'USeP Admin', 'USeP Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 20, 984, NULL, NULL, 'xFname', 'xMname', 'xLname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 20, 985, NULL, NULL, 'yFname', 'yMname', 'yLname', 'Female', '2018-01-26', 'Address', 'Single', 'A+', 'Elementary', '', '', '', 'No', '', '', 'Owned', 'Yes', 'N/A', 'Yes', 'No', 'No', 'Roman Catholic');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `add_to_persons` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN
insert into persons (userId, brgyId, firstName, midName, lastName, gender, address, dob, civilStatus, religion, highestEducationalAttainment, occupationPriorToCBRAP)
select NEW.id, NEW.brgy_id, NEW.first_name, NEW.middle_name, NEW.last_name, NEW.gender, NEW.address, NEW.birthdate, NEW.status, NEW.religion, NEW.education, NEW.occupation
from user_info where id=NEW.id;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_level`
--
ALTER TABLE `access_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accesss_key` (`access_id`),
  ADD KEY `info_key` (`info_id`);

--
-- Indexes for table `barangay_info`
--
ALTER TABLE `barangay_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brgy_name` (`brgy_name`),
  ADD KEY `capt_key` (`info_cap`),
  ADD KEY `wad1_key` (`info_wad1`),
  ADD KEY `wad2_key` (`info_wad2`),
  ADD KEY `wad3_key` (`info_wad3`),
  ADD KEY `wad4_key` (`info_wad4`),
  ADD KEY `wad5_key` (`info_wad5`),
  ADD KEY `wad6_key` (`info_wad6`),
  ADD KEY `wad7_key` (`info_wad7`);

--
-- Indexes for table `barangay_workers`
--
ALTER TABLE `barangay_workers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_form_key` (`form_id`),
  ADD KEY `bus_type_key` (`type_id`),
  ADD KEY `purok_key1` (`purok_id`),
  ADD KEY `owner_key` (`info_id`);

--
-- Indexes for table `business_form`
--
ALTER TABLE `business_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_type`
--
ALTER TABLE `business_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checker`
--
ALTER TABLE `checker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_type`
--
ALTER TABLE `collection_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complainee` (`complainee_id`),
  ADD KEY `admin_key2` (`admin_id`);

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connectionSource` (`connectionSource`);

--
-- Indexes for table `drug_use_info`
--
ALTER TABLE `drug_use_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `fee_collection`
--
ALTER TABLE `fee_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_client` (`info_id`),
  ADD KEY `info_admin` (`admin_id`),
  ADD KEY `fee_type` (`fee_type_id`);

--
-- Indexes for table `fee_type`
--
ALTER TABLE `fee_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection` (`collection_id`),
  ADD KEY `brgy_key1` (`brgy_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_info_id` (`info_id`);

--
-- Indexes for table `non_barangay_members`
--
ALTER TABLE `non_barangay_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info` (`info_id`),
  ADD KEY `admin` (`admin_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `purok`
--
ALTER TABLE `purok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brgy_key` (`brgy_id`),
  ADD KEY `leader_key` (`purok_leader`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_id` (`info_id`),
  ADD KEY `admin_key` (`admin_id`);

--
-- Indexes for table `transaction_business`
--
ALTER TABLE `transaction_business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business` (`business_id`),
  ADD KEY `transaction` (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purok_key` (`purok_id`),
  ADD KEY `brgy_fk` (`brgy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_level`
--
ALTER TABLE `access_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `barangay_info`
--
ALTER TABLE `barangay_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `barangay_workers`
--
ALTER TABLE `barangay_workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `business_form`
--
ALTER TABLE `business_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `business_type`
--
ALTER TABLE `business_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `certification`
--
ALTER TABLE `certification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checker`
--
ALTER TABLE `checker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `collection_type`
--
ALTER TABLE `collection_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `drug_use_info`
--
ALTER TABLE `drug_use_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=976;
--
-- AUTO_INCREMENT for table `fee_collection`
--
ALTER TABLE `fee_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_type`
--
ALTER TABLE `fee_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=871;
--
-- AUTO_INCREMENT for table `purok`
--
ALTER TABLE `purok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction_business`
--
ALTER TABLE `transaction_business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `accesss_key` FOREIGN KEY (`access_id`) REFERENCES `access_level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `info_key` FOREIGN KEY (`info_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `bus_form_key` FOREIGN KEY (`form_id`) REFERENCES `business_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bus_type_key` FOREIGN KEY (`type_id`) REFERENCES `business_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_key` FOREIGN KEY (`info_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purok_key1` FOREIGN KEY (`purok_id`) REFERENCES `purok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `admin_key2` FOREIGN KEY (`admin_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `complainee_key` FOREIGN KEY (`complainee_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fee_type`
--
ALTER TABLE `fee_type`
  ADD CONSTRAINT `brgy_key1` FOREIGN KEY (`brgy_id`) REFERENCES `barangay_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `collection_key` FOREIGN KEY (`collection_id`) REFERENCES `collection_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `info_id2` FOREIGN KEY (`info_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purok`
--
ALTER TABLE `purok`
  ADD CONSTRAINT `brgy_key` FOREIGN KEY (`brgy_id`) REFERENCES `barangay_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `admin_key` FOREIGN KEY (`admin_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `info_key1` FOREIGN KEY (`info_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_business`
--
ALTER TABLE `transaction_business`
  ADD CONSTRAINT `business_key` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_key` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `brgy_fk` FOREIGN KEY (`brgy_id`) REFERENCES `barangay_info` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
