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

-- Dumping structure for procedure dataprocess.getLMSLeave
DELIMITER //
CREATE PROCEDURE `getLMSLeave`(
	IN `empId` VARCHAR(50)
)
BEGIN

/*

will create temp tble
field key and value
key = approved 
value =approved leave
SELECT json_array(approvedLeaveBalance) as approvedLeave FROM usershrrecords WHERE employeeId="10504" AND employmentStatus="Active";
*/
/*SELECT JSON_OBJECT("description","ApprovedLeave",'Count', approvedLeaveBalance) AS ApprovedLeave  FROM usershrrecords WHERE employeeId="10504" AND employmentStatus="Active";

(GROUP_CONCAT("{",roomid ,":",roomno,"}")) 
json_array(GROUP_CONCAT("Desc", "ApprovedLeave",
*/
SELECT JSON_OBJECT("Description","ApprovedLeave","Count",approvedLeaveBalance) AS approvedLeaveBalance   FROM usershrrecords WHERE employeeId=empId AND employmentStatus="Active";

END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
