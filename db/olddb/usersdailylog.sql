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

-- Dumping structure for table dataprocess.usersdailylog
CREATE TABLE IF NOT EXISTS `usersdailylog` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `projectId` varchar(50) NOT NULL,
  `processId` varchar(50) NOT NULL,
  `timesheetId` varchar(50) NOT NULL,
  `allocationId` varchar(50) DEFAULT NULL,
  `taskEvent` varchar(50) DEFAULT NULL,
  `actualTime` bigint NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `remarks` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT (_utf8mb4''),
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dataprocess.usersdailylog: ~1 rows (approximately)
INSERT INTO `usersdailylog` (`autoId`, `projectId`, `processId`, `timesheetId`, `allocationId`, `taskEvent`, `actualTime`, `status`, `remarks`, `description`) VALUES
	(1, 'ProFoc0001', 'Focus001', 'TS0000000001', NULL, NULL, 200, 'pending', NULL, 'TimeSheet Update');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
