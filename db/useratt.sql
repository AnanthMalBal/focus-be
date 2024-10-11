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
  `attendanceId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaveId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeeId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `markedBy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approvedBy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holidayName` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `markedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approvedTime` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approvalStatus` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamper` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventTrack` longtext COLLATE utf8mb4_unicode_ci,
  `lockStatus` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`attendanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dataprocess.usersattendance: ~5 rows (approximately)
INSERT INTO `usersattendance` (`attendanceId`, `leaveId`, `employeeId`, `markedBy`, `approvedBy`, `symbol`, `mode`, `holidayName`, `date`, `markedTime`, `approvedTime`, `status`, `approvalStatus`, `ipAddress`, `comments`, `tamper`, `eventTrack`, `lockStatus`) VALUES
	('AT1726138875033', NULL, '15007', NULL, NULL, 'P4', 'None', NULL, '2024-09-11 04:31:15', '2024-09-11 04:31:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AT1726138875034', NULL, '15007', NULL, NULL, 'P6', 'None', NULL, '2024-09-12 16:31:15', '2024-09-12 16:31:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AT1726405537494', NULL, '15007', NULL, NULL, 'P6', 'None', NULL, '2024-09-15 18:35:37', '2024-09-15 18:35:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AT1726482482272', NULL, '15007', NULL, NULL, 'P6', 'None', NULL, '2024-09-16 15:58:02', '2024-09-16 15:58:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AT1727258095571', NULL, '15007', NULL, NULL, 'P6', 'None', NULL, '2024-09-25 15:33:19', '2024-09-25 15:33:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
