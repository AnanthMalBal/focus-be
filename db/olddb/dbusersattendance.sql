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

-- Dumping structure for table dataprocess.usersattendance
CREATE TABLE IF NOT EXISTS `usersattendance` (
  `attendanceId` varchar(50) NOT NULL,
  `leaveId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `employeeId` varchar(50) NOT NULL,
  `markedBy` varchar(50) DEFAULT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `holidayName` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `markedTime` date DEFAULT NULL,
  `approvedTime` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `approvalStatus` varchar(50) DEFAULT NULL,
  `ipAddress` varchar(50) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `tamper` varchar(200) DEFAULT NULL,
  `eventTrack` mediumtext,
  `lockStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`attendanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dataprocess.usersattendance: ~0 rows (approximately)
INSERT INTO `usersattendance` (`attendanceId`, `leaveId`, `employeeId`, `markedBy`, `approvedBy`, `symbol`, `mode`, `holidayName`, `date`, `markedTime`, `approvedTime`, `status`, `approvalStatus`, `ipAddress`, `comments`, `tamper`, `eventTrack`, `lockStatus`) VALUES
	('AT1684434601107', '101', '10504', NULL, NULL, 'Sunday', 'working', NULL, '2024-08-06 19:14:50', '2024-08-06', '2024-08-07 19:14:54', NULL, 'Approved', NULL, NULL, NULL, NULL, NULL),
	('AT1684434601109', '102', '10504', NULL, NULL, 'Sunday', 'working', NULL, '2024-08-05 19:14:50', '2024-08-05', '2024-08-07 19:14:54', NULL, 'Approved', NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
