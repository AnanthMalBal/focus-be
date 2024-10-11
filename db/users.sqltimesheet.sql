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

-- Dumping data for table dataprocess.userstimesheet: ~14 rows (approximately)
INSERT INTO `userstimesheet` (`timesheetId`, `attendanceId`, `approvedBy`, `hoursBillable`, `hoursNBNP`, `hoursNBP`, `hoursOTApproved`, `hoursOTLocked`, `markedTime`, `approvedTime`, `status`, `comments`, `tamper`, `eventTrack`, `lockStatus`) VALUES
	('TS0000000001', 'AT1684434601109', NULL, 0, 360, 0, 0, b'0', '2024-08-05 13:49:51', NULL, 'Marked', 'Leave', NULL, NULL, 'PayRoll'),
	('TS0000000002', 'AT1684434601109', NULL, 0, 360, 0, 0, b'0', '2024-08-05 13:49:51', NULL, '', 'Leave', NULL, NULL, ''),
	('TS1725445135329', 'AT1725445135329', NULL, 0, 0, 0, 0, b'0', '2024-09-04 15:48:55', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1725900891527', 'AT1725900891527', NULL, 0, 0, 0, 0, b'0', '2024-09-09 22:24:51', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1725948235459', 'AT1725948235459', NULL, 0, 0, 0, 0, b'0', '2024-09-10 11:33:55', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726036308088', 'AT1726036308088', NULL, 0, 0, 0, 0, b'0', '2024-09-11 12:01:48', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726138875034', 'AT1726138875034', NULL, 0, 0, 0, 0, b'0', '2024-09-12 16:31:15', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726206251210', 'AT1726206251210', NULL, 0, 0, 0, 0, b'0', '2024-09-13 11:14:11', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726405537494', 'AT1726405537494', NULL, 0, 0, 0, 0, b'0', '2024-09-15 18:35:37', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726479435382', 'AT1726479435382', NULL, 0, 0, 0, 0, b'0', '2024-09-16 15:07:15', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726479769276', 'AT1726479769276', NULL, 0, 0, 0, 0, b'0', '2024-09-16 15:12:49', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726480692283', 'AT1726480692283', NULL, 0, 0, 0, 0, b'0', '2024-09-16 15:28:12', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1726482482272', 'AT1726482482272', NULL, 0, 0, 0, 0, b'0', '2024-09-16 15:58:02', NULL, NULL, NULL, NULL, NULL, NULL),
	('TS1727258095571', 'AT1727258095571', NULL, 0, 0, 0, 0, b'0', '2024-09-25 15:24:55', NULL, NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
