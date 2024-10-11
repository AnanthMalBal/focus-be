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

-- Dumping structure for table dataprocess.usersleavemanagement
CREATE TABLE IF NOT EXISTS `usersleavemanagement` (
  `leaveId` varchar(50) NOT NULL,
  `employeeId` varchar(50) NOT NULL,
  `noOfDays` double NOT NULL DEFAULT '0',
  `detectedLeave` double NOT NULL DEFAULT '0',
  `symbol` varchar(50) NOT NULL,
  `fromDate` datetime NOT NULL,
  `toDate` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  PRIMARY KEY (`leaveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dataprocess.usersleavemanagement: ~2 rows (approximately)
INSERT INTO `usersleavemanagement` (`leaveId`, `employeeId`, `noOfDays`, `detectedLeave`, `symbol`, `fromDate`, `toDate`, `status`, `reason`, `comments`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES
	('101', '10504', 1, 0, 'Leave', '2024-08-14 00:00:00', '2024-08-14 00:00:00', 'Approved', 'function', NULL, '10500', '2024-08-14 00:00:00', '10500', '2024-08-14 16:19:14'),
	('102', '10504', 1, 0, 'Leave', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 'Approved', 'hostpital', NULL, '10500', '2024-08-09 00:00:00', '10500', '2024-08-09 16:19:14');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
