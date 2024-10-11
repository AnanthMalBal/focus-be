-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.35 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dataprocess
CREATE DATABASE IF NOT EXISTS `dataprocess` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dataprocess`;

-- Dumping structure for table dataprocess.usershrrecords
CREATE TABLE IF NOT EXISTS `usershrrecords` (
  `autoId` varchar(50) NOT NULL,
  `employeeId` varchar(50) NOT NULL COMMENT 'Users',
  `dateOfJoin` datetime DEFAULT NULL,
  `infoAPL` varchar(50) DEFAULT NULL,
  `employmentStatus` varchar(50) DEFAULT NULL,
  `idCardEDR` varchar(50) DEFAULT NULL,
  `lastDesignation` varchar(50) DEFAULT NULL,
  `lastEmployer` varchar(50) DEFAULT NULL,
  `experienceInEDR` float DEFAULT '0',
  `experienceOutEDR` float DEFAULT '0',
  `fromNoticePeriod` datetime DEFAULT NULL,
  `toNoticePeriod` datetime DEFAULT NULL,
  `lastWorkDay` datetime DEFAULT NULL,
  `accountNo` varchar(50) DEFAULT NULL COMMENT 'BankAccounts',
  `bankName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ' COMMENT 'BankAccounts',
  `bankBranch` varchar(50) DEFAULT NULL COMMENT 'BankAccounts',
  `ifscCode` varchar(50) DEFAULT NULL COMMENT 'BankAccounts',
  `aadharNo` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `esicNo` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `panNo` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `providentFund` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `uanNo` varchar(50) DEFAULT ' ' COMMENT 'TaxInfo',
  `highestGraduate` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'EducationalInfo',
  `institution` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `year` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `markGrade` varchar(50) DEFAULT ' ' COMMENT 'EducationalInfo',
  `isApprentice` bit(1) NOT NULL DEFAULT b'0' COMMENT 'EducationalInfo',
  `isFileCreated` bit(1) NOT NULL DEFAULT b'0' COMMENT 'EducationalInfo',
  `isOfferIssued` bit(1) NOT NULL DEFAULT b'0' COMMENT 'EducationalInfo',
  `longLeaveFromDate` datetime DEFAULT NULL COMMENT 'EducationalInfo',
  `longLeaveToDate` datetime DEFAULT NULL COMMENT 'EducationalInfo',
  `longLeaveReason` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `recruitmentType` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `costToCompany` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `vaccinateInfo` varchar(50) DEFAULT NULL,
  `approvedLeaveBalance` double DEFAULT '0',
  `leaveBalanceFlag` bit(1) NOT NULL DEFAULT b'1',
  `leaveBalanceDate` datetime DEFAULT NULL,
  `esiEligible` bit(1) NOT NULL DEFAULT b'0',
  `resignedFAndF` bit(1) NOT NULL DEFAULT b'0',
  `lastDrawnSalary` varchar(50) DEFAULT NULL,
  `nativeDistrict` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dataprocess.usershrrecords: ~1,507 rows (approximately)
INSERT INTO `usershrrecords` (`autoId`, `employeeId`, `dateOfJoin`, `infoAPL`, `employmentStatus`, `idCardEDR`, `lastDesignation`, `lastEmployer`, `experienceInEDR`, `experienceOutEDR`, `fromNoticePeriod`, `toNoticePeriod`, `lastWorkDay`, `accountNo`, `bankName`, `bankBranch`, `ifscCode`, `aadharNo`, `esicNo`, `panNo`, `providentFund`, `uanNo`, `highestGraduate`, `institution`, `year`, `markGrade`, `isApprentice`, `isFileCreated`, `isOfferIssued`, `longLeaveFromDate`, `longLeaveToDate`, `longLeaveReason`, `recruitmentType`, `costToCompany`, `vaccinateInfo`, `approvedLeaveBalance`, `leaveBalanceFlag`, `leaveBalanceDate`, `esiEligible`, `resignedFAndF`, `lastDrawnSalary`, `nativeDistrict`) VALUES
	('10504', '10504', '2007-04-05 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'DEEE', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield1stDose', 3, b'1', NULL, b'0', b'0', NULL, 'Chennai'),
	('10507', '10507', '2008-02-18 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'Bsc, Degree', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield1stDose', 10, b'1', NULL, b'0', b'0', NULL, 'Chennai'),
	('10509', '10509', '2007-05-03 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'BCA', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield1stDose', 9, b'1', NULL, b'0', b'0', NULL, 'Kancheepuram'),
	('10521', '10521', '2008-02-28 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'B.COM ', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield2ndDose', 10, b'1', NULL, b'0', b'0', NULL, 'Chengalpattu'),
	('10531', '10531', '2008-09-15 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'BA History', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield2ndDose', 10, b'1', NULL, b'0', b'0', NULL, 'Chengalpattu'),
	('11002', '11002', '2007-03-01 00:00:00', 'true', 'Active', '25575', 'mmjkkk', 'nbhhjhh', 10, 6, '2021-12-09 00:00:00', '2021-12-21 00:00:00', '2021-12-09 00:00:00', '2256655', 'hhh ', 'jjj', '55663255562', '552245202322301', '25255555555', '32555855558555', 'cbhnnn88y669987 ', '3256666666666', 'DME', 'nnhjk', '2012', ' 256', b'0', b'0', b'0', NULL, NULL, 'NotApplicable', 'New_Joiner', NULL, 'CoviShield1stDose', 10, b'1', NULL, b'0', b'0', '256696', 'Kancheepuram'),
	('11502', '11502', '2010-05-17 00:00:00', NULL, 'Active', 'kgjhunn', 'jjjj', 'gghjjjkk', 6, 5, '2021-12-10 00:00:00', '2021-12-16 00:00:00', '2021-12-08 00:00:00', '256623566', 'jjhhujkkkj', 'kkjkkk', '56825566', '565555245554556', '2254545225', '35678888989', 'cvvghbhh35522465', '345678906778', 'B.A Economics', 'nhhn', '2015', ' 562', b'0', b'0', b'0', NULL, NULL, 'NotApplicable', 'New_Joiner', NULL, 'Novaccinated', 8, b'1', NULL, b'0', b'0', '24532', 'Chennai'),
	('15355', '15355', '2018-11-12 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'BE-Civil Engineering', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield1stDose', 7, b'1', NULL, b'0', b'0', NULL, 'Chennai'),
	('15364', '15364', '2018-11-17 00:00:00', NULL, 'Under_Notice_Period', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'BE-CSE', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'Novaccinated', 6, b'1', NULL, b'0', b'0', NULL, 'Chennai'),
	('15452', '15452', '2019-01-04 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'Diploma Civil Engineering', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield2ndDose', 8, b'1', NULL, b'0', b'0', NULL, 'Chennai'),
	('15454', '15454', '2019-01-04 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'Diploma in civil engineering', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'CoviShield1stDose', 8, b'1', NULL, b'0', b'0', NULL, 'Chennai'),
	('16025', '16025', '2021-04-09 00:00:00', NULL, 'Active', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, ' ', 'B.E', NULL, NULL, ' ', b'0', b'0', b'0', NULL, NULL, NULL, 'New_Joiner', NULL, 'Covaxin1stDose', 10, b'1', NULL, b'0', b'0', NULL, 'Chennai'),
	('16848', '16848', '2022-06-02 00:00:00', '', 'Under_Notice_Period', '', '', '', 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', b'0', b'0', b'0', NULL, NULL, 'NotApplicable', 'New_Joiner', '', '', NULL, b'1', NULL, b'0', b'0', '', NULL),
	('16879', '16879', '2022-06-06 00:00:00', '', 'Active_But_Long_Leave', '', '', '', 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', b'0', b'0', b'0', NULL, NULL, 'NotApplicable', 'New_Joiner', '', '', NULL, b'1', NULL, b'0', b'0', '', NULL),
	('17004', '17004', '2022-07-11 00:00:00', '', 'Abscond', '', '', '', 0, 0, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', b'0', b'0', b'0', NULL, NULL, 'NotApplicable', 'New_Joiner', '', '', NULL, b'1', NULL, b'0', b'0', '', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
