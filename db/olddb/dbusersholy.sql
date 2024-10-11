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

-- Dumping structure for table dataprocess.usersholidayscalendar
CREATE TABLE IF NOT EXISTS `usersholidayscalendar` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `holiday` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `year` int NOT NULL,
  `symbol` varchar(50) NOT NULL DEFAULT '0',
  `zoneArea` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_user_holidays_calendar_countrys` (`country`),
  CONSTRAINT `FK_user_holidays_calendar_countrys` FOREIGN KEY (`country`) REFERENCES `countrys` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=1673199594910 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dataprocess.usersholidayscalendar: ~18 rows (approximately)
INSERT INTO `usersholidayscalendar` (`autoId`, `holiday`, `country`, `startDate`, `endDate`, `year`, `symbol`, `zoneArea`, `createdBy`, `createdDate`, `status`) VALUES
	(1, 'Krishna Jayanthi', 'Asia/Kolkata', '2024-08-26', '2024-08-26', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(2, 'INDEPENDENCE DAY', 'Asia/Kolkata', '2024-08-15', '2024-08-15', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(3, 'Sunday', 'Asia/Kolkata', '2024-08-04', '2024-08-04', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(4, 'Sunday', 'Asia/Kolkata', '2024-08-11', '2024-08-11', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(5, 'Sunday', 'Asia/Kolkata', '2024-08-18', '2024-08-18', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(6, 'Sunday', 'Asia/Kolkata', '2024-08-25', '2024-08-25', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(7, 'Saturday', 'Asia/Kolkata', '2024-08-03', '2024-08-03', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(8, 'Saturday', 'Asia/Kolkata', '2024-08-10', '2024-08-10', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(9, 'Saturday', 'Asia/Kolkata', '2024-08-17', '2024-08-17', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(10, 'Saturday', 'Asia/Kolkata', '2024-08-24', '2024-08-24', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(11, 'Saturday', 'Asia/Kolkata', '2024-08-31', '2024-08-31', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(12, 'Saturday', 'Asia/Kolkata', '2024-09-07', '2024-09-07', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(13, 'Saturday', 'Asia/Kolkata', '2024-09-14', '2024-09-14', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(14, 'Saturday', 'Asia/Kolkata', '2024-09-21', '2024-09-21', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(15, 'Saturday', 'Asia/Kolkata', '2024-09-28', '2024-09-28', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(16, 'Sunday', 'Asia/Kolkata', '2024-09-01', '2024-09-01', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(17, 'Sunday', 'Asia/Kolkata', '2024-09-08', '2024-09-08', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(18, 'Sunday', 'Asia/Kolkata', '2024-09-15', '2024-09-15', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(19, 'Sunday', 'Asia/Kolkata', '2024-09-22', '2024-09-22', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(20, 'Sunday', 'Asia/Kolkata', '2024-09-29', '2024-09-29', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1'),
	(21, 'Miladi Nabi', 'Asia/Kolkata', '2024-09-16', '2024-09-16', 2024, 'Holiday', 'Chennai', NULL, NULL, b'1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
