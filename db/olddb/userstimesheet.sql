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

-- Dumping structure for table dataprocess.userstimesheet
CREATE TABLE IF NOT EXISTS `userstimesheet` (
  `timesheetId` varchar(50) NOT NULL,
  `attendanceId` varchar(50) NOT NULL,
  `approvedBy` varchar(50) DEFAULT NULL,
  `hoursBillable` bigint NOT NULL DEFAULT '0',
  `hoursNBNP` bigint NOT NULL DEFAULT '0',
  `hoursNBP` bigint NOT NULL DEFAULT '0',
  `hoursOTApproved` bigint NOT NULL DEFAULT '0',
  `hoursOTLocked` bit(1) NOT NULL DEFAULT b'0',
  `markedTime` datetime DEFAULT NULL,
  `approvedTime` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `tamper` varchar(200) DEFAULT NULL,
  `eventTrack` mediumtext,
  `lockStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`timesheetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dataprocess.userstimesheet: ~3 rows (approximately)
INSERT INTO `userstimesheet` (`timesheetId`, `attendanceId`, `approvedBy`, `hoursBillable`, `hoursNBNP`, `hoursNBP`, `hoursOTApproved`, `hoursOTLocked`, `markedTime`, `approvedTime`, `status`, `comments`, `tamper`, `eventTrack`, `lockStatus`) VALUES
	('TS0000000001', 'AT1684434601109', NULL, 0, 360, 0, 0, b'0', '2024-08-05 13:49:51', NULL, 'Marked', 'Leave', NULL, NULL, 'PayRoll'),
	('TS0000000002', 'AT1684434601109', NULL, 0, 360, 0, 0, b'0', '2024-08-05 13:49:51', NULL, '', 'Leave', NULL, NULL, ''),
	('TS1725379610522', 'AT1693336568077', NULL, 0, 0, 0, 0, b'0', '2024-09-03 21:36:50', NULL, NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
