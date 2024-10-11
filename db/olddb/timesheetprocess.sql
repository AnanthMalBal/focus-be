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


-- Dumping database structure for dataprocesswithdata
CREATE DATABASE IF NOT EXISTS `dataprocesswithdata` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dataprocesswithdata`;

-- Dumping structure for table dataprocesswithdata.timesheetprocess
CREATE TABLE IF NOT EXISTS `timesheetprocess` (
  `processId` varchar(50) NOT NULL,
  `processName` varchar(50) DEFAULT NULL,
  `billType` varchar(50) NOT NULL DEFAULT 'None',
  `billable` bit(1) NOT NULL DEFAULT b'1',
  `entryType` varchar(50) NOT NULL DEFAULT 'None',
  `skillSet` varchar(50) DEFAULT NULL,
  `minutes` bigint NOT NULL DEFAULT '0',
  `displayOrder` int NOT NULL DEFAULT '1',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`processId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table dataprocesswithdata.timesheetprocess: ~42 rows (approximately)
INSERT INTO `timesheetprocess` (`processId`, `processName`, `billType`, `billable`, `entryType`, `skillSet`, `minutes`, `displayOrder`, `status`, `description`) VALUES
	('Break_1', 'Break 1', 'NBP', b'1', 'System', NULL, 50, 37, b'1', NULL),
	('Break_2', 'Break 2', 'NBP', b'1', 'System', NULL, 40, 38, b'1', NULL),
	('ClientFeedbackAnalysis', 'Client Feedback Analysis', 'NBP', b'1', 'Manual', NULL, 0, 12, b'1', NULL),
	('ClientMeeting', 'Client Meeting', 'NBP', b'1', 'Manual', NULL, 0, 16, b'1', NULL),
	('DailyStatusReviewMeeting', 'Daily status review meeting', 'NBP', b'1', 'Manual', NULL, 0, 19, b'1', NULL),
	('DatabaseConnIssue', 'Database conn. Issue', 'NBP', b'1', 'Manual', NULL, 0, 26, b'1', NULL),
	('DoubtClarification', 'Doubt Clarification', 'NBP', b'1', 'Manual', NULL, 0, 15, b'1', NULL),
	('EarlyGoing', 'Early Going', 'NBNP', b'0', 'Manual', NULL, 0, 32, b'1', NULL),
	('FinalValidation', 'Final Validation', 'B', b'1', 'Manual', NULL, 0, 6, b'1', NULL),
	('HR_Admin_Support', 'HR Admin Support', 'NBP', b'1', 'Manual', NULL, 0, 29, b'1', NULL),
	('IdleNoWork', 'Idle No Work', 'NBP', b'1', 'Manual', NULL, 0, 29, b'1', NULL),
	('InputPreparation', 'Input Preparation', 'B', b'1', 'Manual', NULL, 0, 4, b'1', NULL),
	('InternetProblem', 'Internet Problem', 'NBP', b'1', 'Manual', NULL, 0, 27, b'1', NULL),
	('IT_Support', 'IT Support', 'NBP', b'1', 'Manual', NULL, 0, 29, b'1', NULL),
	('KnowledgeTransfer', 'Knowledge Transfer', 'NBP', b'1', 'Manual', NULL, 0, 35, b'1', NULL),
	('LateComing', 'Late Coming', 'NBNP', b'0', 'Manual', NULL, 0, 30, b'1', NULL),
	('Meeting', 'Meeting', 'NBP', b'1', 'Manual', NULL, 0, 36, b'1', NULL),
	('MeetingWithLeaders', 'Meeting with Leaders', 'NBP', b'1', 'Manual', NULL, 0, 18, b'1', NULL),
	('NewSpecUpdateMeeting', 'New Spec. Update meeting', 'NBP', b'1', 'Manual', NULL, 0, 20, b'1', NULL),
	('OnlineQC', 'Online QC', 'NBP', b'1', 'Manual', NULL, 0, 13, b'1', NULL),
	('Permission', 'Permission', 'NBNP', b'0', 'Manual', NULL, 0, 33, b'1', NULL),
	('PGY_AT', 'PGY_AT', 'B', b'1', 'Manual', NULL, 0, 9, b'1', NULL),
	('PowerFailure', 'Power Failure', 'NBP', b'1', 'Manual', NULL, 0, 28, b'1', NULL),
	('ProcessTraining', 'Process Training', 'NBP', b'1', 'Manual', NULL, 0, 11, b'1', NULL),
	('Production', 'Production', 'B', b'1', 'System', 'Production', 0, 1, b'1', NULL),
	('Production_Manual', 'Production Manual Entry', 'B', b'1', 'Manual', NULL, 0, 1, b'1', NULL),
	('ProjectManagement', 'Project Management', 'NBP', b'1', 'Manual', NULL, 0, 29, b'1', NULL),
	('ProjectTraining_NBP', 'Project Training', 'NBP', b'1', 'Manual', NULL, 0, 10, b'1', NULL),
	('QA', 'Quality Assurance Manual Entry', 'B', b'1', 'Manual', NULL, 0, 2, b'1', NULL),
	('QC', 'Quality Control Manual Entry', 'B', b'1', 'Manual', NULL, 0, 3, b'1', NULL),
	('QCFeedbackMeeting', 'QC Feedback meeting', 'NBP', b'1', 'Manual', NULL, 0, 21, b'1', NULL),
	('QualityAssurance', 'Quality Assurance', 'B', b'1', 'System', 'QualityAssurance', 0, 2, b'1', NULL),
	('QualityControl', 'Quality Control', 'B', b'1', 'System', 'QualityControl', 0, 3, b'1', NULL),
	('QualityReviewTask', 'Quality Review Task', 'B', b'1', 'Manual', NULL, 0, 8, b'1', NULL),
	('Rework', 'Rework', 'B', b'1', 'Manual', NULL, 0, 7, b'1', NULL),
	('RoadTypeClassification', 'Road Type Classification', 'B', b'1', 'Manual', NULL, 0, 5, b'1', NULL),
	('SoftwareIssue', 'Software Issue', 'NBP', b'1', 'Manual', NULL, 0, 25, b'1', NULL),
	('StatusUpdate', 'Status Update', 'NBP', b'1', 'Manual', NULL, 0, 22, b'1', NULL),
	('SystemProblem', 'System Problem', 'NBP', b'1', 'Manual', NULL, 0, 24, b'1', NULL),
	('TeamManagement', 'Team Management(TL)', 'NBP', b'1', 'Manual', NULL, 0, 23, b'1', NULL),
	('TeamMeeting', 'Team Meeting', 'NBP', b'1', 'Manual', NULL, 0, 17, b'1', NULL),
	('TechnicalSupport', 'Technical Support', 'NBP', b'1', 'Manual', NULL, 0, 14, b'1', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
