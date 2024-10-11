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

-- Dumping structure for procedure dataprocess.getLMSNew
DELIMITER //
CREATE PROCEDURE `getLMSNew`(
	IN `cdate` VARCHAR(50),
	IN `empid` VARCHAR(50)
)
BEGIN
	DECLARE inc INT DEFAULT 0;
DROP TEMPORARY TABLE IF EXISTS temp_table;
CREATE TEMPORARY TABLE IF NOT EXISTS temp_table
(
/*
sdate 'DATE'=STR_TO_DATE(`date`, '%Y-%M-%D'),*/
sdate DATE,
title VARCHAR(20),
color VARCHAR(20)
); 
SET @color='Green'; 
SET @title=""; 
SET @firstDate= DATE_SUB(cdate, INTERVAL DAYOFMONTH(cdate)-1 DAY) ; 
SET @lastDate= LAST_DAY(cdate);
/*SELECT @firstDate,@lastDate ;

SELECT @firstDate,@lastDate ;

*/
SET @fDate=DATE_SUB(cdate, INTERVAL DAYOFMONTH(cdate)-1 DAY) ; SET @lastDate= LAST_DAY(cdate);

while @fDate <= @lastDate DO 
SET @color='Green';
SET @leaveCount=0;
SET @title='';
SELECT COUNT(*) INTO @leaveCount FROM usersleavemanagement WHERE @fdate BETWEEN fromDate AND toDate ;

if @leaveCount>0 then
SET @title='Leave';
SET @color='Yellow'; 
END if;

INSERT INTO temp_table (sdate ,title ,color) VALUES (@fDate, @title, @color);
SET @fDate=DATE_SUB(@fDate, INTERVAL -1 DAY); 

END while;

SELECT COUNT(*) INTO @proCou FROM usersholidayscalendar WHERE startDate BETWEEN DATE(@firstDate) AND DATE(@lastDate) ORDER BY startDate;
SET inc=0;

SET @stDate='';
SET @color='Orange';

WHILE inc <=@proCou DO
	SELECT startDate INTO @stDate FROM usersholidayscalendar WHERE startDate BETWEEN DATE(@firstDate) AND DATE(@lastDate) LIMIT inc,1;
	
UPDATE temp_table SET title='Holiday', color=@color WHERE sdate=@stDate ;
SET inc=inc+1;
END WHILE;

/* title emty ku lop update*/
UPDATE temp_table SET title='LOP' WHERE title='';

SELECT DATE_FORMAT(sdate , '%d/%m/%Y') AS sdate,title,color FROM temp_table  ;
/*SELECT  sdate,title,color FROM temp_table  ;*/
SELECT title,color,COUNT(*) FROM temp_table GROUP BY title,color;

DROP TEMPORARY TABLE IF EXISTS temp_table;
 END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
