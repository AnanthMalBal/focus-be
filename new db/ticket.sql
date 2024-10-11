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

-- Dumping structure for table dataprocess.tix_address
CREATE TABLE IF NOT EXISTS `tix_address` (
  `addressId` varchar(50) NOT NULL,
  `addressStreet` varchar(50) NOT NULL,
  `addressDistric` varchar(50) NOT NULL,
  `addressState` varchar(50) NOT NULL,
  `addressPincode` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dataprocess.tix_address: ~6 rows (approximately)
INSERT INTO `tix_address` (`addressId`, `addressStreet`, `addressDistric`, `addressState`, `addressPincode`, `status`) VALUES
	('AID100001', 'No : 41 Subramaniyapuram', 'Namakkal', 'TamilNadu', '637015', b'1'),
	('AID100002', 'No 21 VAC Nagar,Pugalur', 'Namakkal', 'TamilNadu', '637202', b'1'),
	('AID100003', 'No 19, 80 Feet Rdm', 'Karur', 'TamilNadu', '639002', b'1'),
	('AID100004', 'No 22/1 Belukurichi', 'Namakkal', 'TamilNadu', '637402', b'1'),
	('AID100005', 'No 45 Near HP Pertol Bunk ,Adayar', 'Chennai', 'TamilNadu', '600002', b'1'),
	('AID100006', 'SF56, Nellur', 'Guntur', 'Andra', '522001', b'1');

-- Dumping structure for table dataprocess.tix_answer
CREATE TABLE IF NOT EXISTS `tix_answer` (
  `answerId` varchar(50) NOT NULL,
  `answerName` varchar(500) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT ((_utf8mb4'b' / 1)),
  PRIMARY KEY (`answerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dataprocess.tix_answer: ~0 rows (approximately)

-- Dumping structure for table dataprocess.tix_category
CREATE TABLE IF NOT EXISTS `tix_category` (
  `categoryId` varchar(50) NOT NULL,
  `caegoryParentId` varchar(50) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dataprocess.tix_category: ~6 rows (approximately)
INSERT INTO `tix_category` (`categoryId`, `caegoryParentId`, `categoryName`, `status`) VALUES
	('CID1000001', 'CID1000001', 'Solar', b'1'),
	('CID1000002', 'CID1000002', 'RO', b'1'),
	('CID1000003', 'CID1000002', 'RO250LPH', b'1'),
	('CID1000004', 'CID1000002', 'RO500LPH', b'1'),
	('CID1000005', 'CID1000002', 'RO1000LPH', b'1'),
	('CID1000006', 'CID1000001', 'Inverter', b'1');

-- Dumping structure for table dataprocess.tix_cook_book
CREATE TABLE IF NOT EXISTS `tix_cook_book` (
  `cookId` varchar(50) NOT NULL,
  `productSupportId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `keywords` tinytext,
  `createdBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`cookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dataprocess.tix_cook_book: ~1 rows (approximately)
INSERT INTO `tix_cook_book` (`cookId`, `productSupportId`, `description`, `keywords`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('CB10001', 'P10001', 'solar', 'redlight Eroor Blink Sound ', '10504', '2024-09-22 16:34:47', '10504', '2024-09-22 16:34:54', b'1');

-- Dumping structure for table dataprocess.tix_customer
CREATE TABLE IF NOT EXISTS `tix_customer` (
  `customerId` varchar(50) NOT NULL,
  `customerName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobileNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customerAddressId` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`customerId`) USING BTREE,
  UNIQUE KEY `phoneNumber` (`mobileNumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dataprocess.tix_customer: ~6 rows (approximately)
INSERT INTO `tix_customer` (`customerId`, `customerName`, `mobileNumber`, `customerAddressId`, `createdBy`, `createdDate`, `status`) VALUES
	('CID10001', 'Muthu', '9884080613', 'AID100001', '10504', '2024-09-28 21:48:08', b'1'),
	('CID10002', 'Kalai', '9003925051', 'AID100002', '10504', '2024-09-28 21:48:11', b'1'),
	('CID10003', 'Tamil', '9790756096', 'AID100003', '10504', '2024-09-28 21:48:13', b'1'),
	('CID10004', 'Ravi', '9003925054', 'AID100004', '10504', '2024-09-28 21:48:14', b'1'),
	('CID10005', 'Arjun', '9003925059', 'AID100005', '10504', '2024-09-28 21:48:16', b'1'),
	('CID10006', 'Kumar', '9003925058', 'AID100006', '10504', '2024-09-28 21:48:18', b'1');

-- Dumping structure for table dataprocess.tix_incident
CREATE TABLE IF NOT EXISTS `tix_incident` (
  `incidentId` varchar(50) NOT NULL,
  `cookId` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `supportType` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`incidentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dataprocess.tix_incident: ~0 rows (approximately)

-- Dumping structure for table dataprocess.tix_question
CREATE TABLE IF NOT EXISTS `tix_question` (
  `questionId` varchar(50) NOT NULL,
  `categoryId` varchar(50) NOT NULL,
  `questionName` varchar(100) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dataprocess.tix_question: ~4 rows (approximately)
INSERT INTO `tix_question` (`questionId`, `categoryId`, `questionName`, `status`) VALUES
	('QID100001', 'CID1000001', 'Red Light', b'1'),
	('QID100002', 'CID1000001', 'Cable Cut', b'1'),
	('QID100003', 'CID1000001', 'Fire', b'1'),
	('QID100004', 'CID1000001', 'Display not show', b'1');

-- Dumping structure for table dataprocess.tix_ticket
CREATE TABLE IF NOT EXISTS `tix_ticket` (
  `ticketId` varchar(50) NOT NULL,
  `parentTicketId` varchar(50) NOT NULL,
  `customerId` varchar(50) DEFAULT NULL,
  `cookId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `productSupportId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `supportType` varchar(50) DEFAULT NULL,
  `ticketStatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `queueId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `assignedTo` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT ((_utf8mb4'b' / 1)),
  PRIMARY KEY (`ticketId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table dataprocess.tix_ticket: ~1 rows (approximately)
INSERT INTO `tix_ticket` (`ticketId`, `parentTicketId`, `customerId`, `cookId`, `productSupportId`, `supportType`, `ticketStatus`, `description`, `queueId`, `assignedTo`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('T10001', 'T10001', 'CID10005', 'CB10001', 'P10001', 'External', 'Open', 'Will Assigned', 'Group', '10504', NULL, NULL, NULL, NULL, b'1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
