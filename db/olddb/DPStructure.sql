-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.34 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table data_process.accessprivilege
CREATE TABLE IF NOT EXISTS `accessprivilege` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `preAuthorize` varchar(50) NOT NULL,
  `roleId` varchar(50) NOT NULL,
  `requestName` varchar(50) NOT NULL,
  `requestPath` varchar(50) NOT NULL,
  `serviceName` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_accessprivilege_roles` (`roleId`),
  CONSTRAINT `FK_accessprivilege_roles` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3679 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.app_schedulers
CREATE TABLE IF NOT EXISTS `app_schedulers` (
  `schedulerId` varchar(50) NOT NULL,
  `batchName` varchar(50) NOT NULL,
  `batchTime` varchar(50) NOT NULL,
  `batchStatus` varchar(50) NOT NULL,
  `batchEvent` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `eventTrack` mediumtext,
  `executedBy` varchar(50) DEFAULT NULL,
  `lastExecutionTime` datetime DEFAULT NULL,
  `nextScheduledTime` datetime DEFAULT NULL,
  `retry` varchar(500) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`schedulerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.assets
CREATE TABLE IF NOT EXISTS `assets` (
  `assetId` varchar(50) NOT NULL,
  `assetName` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`assetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.assets_brand
CREATE TABLE IF NOT EXISTS `assets_brand` (
  `brandId` varchar(50) NOT NULL,
  `brandName` varchar(50) DEFAULT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.channel_messages
CREATE TABLE IF NOT EXISTS `channel_messages` (
  `messageId` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `messageName` varchar(50) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `media` varchar(20) NOT NULL,
  `producerId` varchar(50) NOT NULL,
  `scheduledDate` varchar(50) DEFAULT NULL,
  `expiryDate` varchar(50) DEFAULT NULL,
  `dataMapTemplateName` varchar(100) DEFAULT NULL,
  `nextDeliveryDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `textHTML` bit(1) DEFAULT b'1',
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.citys
CREATE TABLE IF NOT EXISTS `citys` (
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.core_data_attachments
CREATE TABLE IF NOT EXISTS `core_data_attachments` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `priority` varchar(50) NOT NULL DEFAULT 'Normal',
  `dataURN` varchar(50) DEFAULT NULL,
  `divisionId` varchar(50) DEFAULT NULL,
  `trace` varchar(50) DEFAULT 'YetToTrace',
  `duplicateCount` int NOT NULL DEFAULT '0',
  `successCount` int NOT NULL DEFAULT '0',
  `failureCount` int NOT NULL DEFAULT '0',
  `totalCount` int NOT NULL DEFAULT '0',
  `description` mediumtext,
  `receivedWorkUnits` mediumtext,
  `duration` double NOT NULL DEFAULT '0',
  `incomingId` varchar(50) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileSize` bigint NOT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.core_incoming_data
CREATE TABLE IF NOT EXISTS `core_incoming_data` (
  `incomingId` varchar(50) NOT NULL,
  `media` varchar(50) NOT NULL,
  `candidateEmail` varchar(50) DEFAULT NULL,
  `subject` mediumtext,
  `description` longtext,
  `sentTime` bigint NOT NULL,
  `portal` varchar(50) DEFAULT NULL,
  `readerInstance` varchar(50) NOT NULL,
  `incomingStatus` varchar(20) NOT NULL DEFAULT 'New',
  `producerId` varchar(50) DEFAULT NULL,
  `propertyId` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `uniqueId` varchar(50) DEFAULT NULL,
  `bulkAttachment` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`incomingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table data_process.countrys
CREATE TABLE IF NOT EXISTS `countrys` (
  `country` varchar(20) NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `displayOrder` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.data-extractor-pattern
CREATE TABLE IF NOT EXISTS `data-extractor-pattern` (
  `autoId` int NOT NULL,
  `dataFilters` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fromColonColonTo` varchar(100) DEFAULT NULL,
  `regExFor` varchar(100) DEFAULT NULL,
  `regExForOrder` int DEFAULT NULL,
  `regExpression` varchar(100) DEFAULT NULL,
  `sentenceCaps` bit(1) DEFAULT b'0',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.districts
CREATE TABLE IF NOT EXISTS `districts` (
  `district` varchar(50) NOT NULL,
  `districtName` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`district`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for procedure data_process.getReportDeliveryCompleted
DELIMITER //
CREATE PROCEDURE `getReportDeliveryCompleted`(
	IN `isCount` BIT,
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50),
	IN `queueId` VARCHAR(50),
	IN `statusId` TINYTEXT,
	IN `_page` INT,
	IN `_pageSize` INT

)
BEGIN

SET @selectCountPart = 'Select Count(OD.receivedDate) As total';

SET @roadName   = 'JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , ''$.roadName'')) As roadTypeClassification, ';

SET @selectPart = CONCAT( 'Select Distinct OD.receivedDate, OP.projectName, OD.workUnitId, OC.countryName, OD.wuMiles, ', @roadName);
SET @selectPart = CONCAT( @selectPart, 'OT.statusId, ORN.reason, OT.remarks, U.userName, OT.processedDate, OQ.queueName ' );

SET @fromPart   = ' FROM operational_task OT, operational_data OD, operational_reason ORN, operational_resource_group OG, ' ;
SET @fromPart   = CONCAT (@fromPart, 'operational_resource_project OP, operational_subcountry OC, users U, operational_queue OQ');

SET @wherePart  = ' WHERE OD.projectId = OP.projectId AND OT.dataId = OD.dataId AND OD.groupId = OG.groupId  AND ORN.reasonId = OT.reasonId';
SET @wherePart  = CONCAT(@wherePart, ' AND OD.subCountry = OC.country AND OT.processedBy = U.employeeId AND OQ.queueId = OT.queueId');
SET @wherePart  = CONCAT(@wherePart, ' AND OT.statusId = ''', statusId ,''' AND OT.queueId Like ''', queueId ,'''');

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

SET @filter = '';

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

IF divisionId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OG.divisionId = ''', divisionId, '''');
END IF;

IF groupId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.groupId = ''', groupId, '''');
END IF;

IF fromDate IS NOT NULL AND toDate IS NOT NULL THEN
	SET @filter = CONCAT (@filter, ' AND OT.processedDate Between ''', fromDate, ''' AND ''', toDate, '''' );
END IF;

IF isCount = 1 THEN
	SET @FinalSQL = CONCAT(@selectCountPart, @fromPart, @wherePart, @filter);
END IF;

SET @pagination = CONCAT( ' LIMIT ', _page, ',', _pageSize);

IF isCount = 0 THEN
	SET @FinalSQL = CONCAT(@selectPart, @fromPart, @wherePart, @filter , @pagination);
END IF;

PREPARE stmt FROM @FinalSQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportDeliveryCountry
DELIMITER //
CREATE PROCEDURE `getReportDeliveryCountry`(
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50)






































































,
	IN `queueId` VARCHAR(50),
	IN `statusId` VARCHAR(50)

)
    NO SQL
BEGIN

DECLARE lastRows INT DEFAULT 1;
DECLARE startRows INT DEFAULT 0;
DECLARE _country VARCHAR(50) DEFAULT NULL;
DECLARE _priority VARCHAR(50) DEFAULT NULL;

SET @SelectTempTable = CONCAT('`wu_subcountry_' , loggedInUser, '_', projectId, '`' );
SET @TempTable = CONCAT('DROP TABLE IF EXISTS ' , @SelectTempTable );
		
PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @TempTable = CONCAT('CREATE TABLE IF NOT EXISTS ' , @SelectTempTable, ' ( ' );
SET @TempTable = CONCAT(@TempTable, '`sNo` INT DEFAULT 0,  `subCountry` varchar(50) DEFAULT NULL,');
SET @TempTable = CONCAT(@TempTable, '`priority` varchar(50) DEFAULT NULL,  `wuMiles` FLOAT DEFAULT 0);');

PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @selectMilesPart = 'Select IFNULL(SUM(OD.wuMiles), 0) As wuMiles InTo @wuMiles ' ;
SET @fromPart   = 'FROM operational_task OT, operational_data OD, operational_resource_group OG ' ;
SET @wherePart  = CONCAT('Where OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OT.statusId In (', statusId, ') AND OT.queueId In (', queueId , ') ');

SET @filter = '';

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

IF divisionId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OG.divisionId = ''', divisionId, '''');
END IF;

IF groupId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.groupId = ''', groupId, '''');
END IF;

SET @wuMilesQry    = '';
SET @dateQry       = CONCAT(' AND OT.processedDate BETWEEN ''', fromDate, ''' AND ''', toDate, '''');
SET @preWuMilesQry = CONCAT(@selectMilesPart,  @fromPart, @wherePart, @filter, @dateQry);
SET @preInsertQry  = CONCAT( 'Insert InTo ', @SelectTempTable, '(sNo, subCountry, priority, wuMiles) Values (' );

SELECT COUNT(*) INTO lastRows FROM Operational_SubCountry OC WHERE OC.status = 1 ;
SET startRows = 0;
WHILE startRows < lastRows DO

	SELECT OC.country, OC.priority INTO _country, _priority FROM Operational_SubCountry OC WHERE OC.status = 1 ORDER BY OC.country LIMIT startRows, 1;
	SET startRows = startRows + 1;
	
	SET @wuMilesQry = CONCAT(@preWuMilesQry, ' AND OD.subCountry = ''' , _country, '''');
	SET @InsertQry  = CONCAT(@preInsertQry , startRows, ',''', _country, ''',''',_priority ,''',', @wuMiles, ')');
	
	PREPARE stmt FROM @wuMilesQry;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	PREPARE stmt FROM @InsertQry;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
		
END WHILE;

SET @FinalSelect = CONCAT( 'Select sNo, subCountry, priority, CAST(wuMiles AS DECIMAL(12,3)) As wuMiles From ',  @SelectTempTable);
PREPARE stmt FROM @FinalSelect;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @TempTable = CONCAT('DROP TABLE IF EXISTS ' , @SelectTempTable );
PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportDeliveryMonthly
DELIMITER //
CREATE PROCEDURE `getReportDeliveryMonthly`(
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50)






























































,
	IN `queueId` VARCHAR(50),
	IN `statusId` VARCHAR(50)
)
BEGIN

DECLARE lastRows INT DEFAULT 1;
DECLARE startRows INT DEFAULT 0;

DECLARE startDTRows INT DEFAULT 0;

DECLARE _roadId VARCHAR(50) DEFAULT NULL;
DECLARE _deliveryDate VARCHAR(50) DEFAULT NULL;
DECLARE _roadQry TEXT DEFAULT NULL;

SET @SelectTempTable = CONCAT('`wu_monthly_report_' , loggedInUser, '_', projectId, '`' );
SET @TempTable = CONCAT('DROP TABLE IF EXISTS ' , @SelectTempTable );
		
PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @FinalSelect = 'deliveryDay, DATE_FORMAT(deliveryDate,''%b/%d/%Y'') As deliveryDate, CAST(wuMiles AS DECIMAL(12,3)) As wuMiles, ';

SET @TempTable = CONCAT('CREATE TABLE IF NOT EXISTS ' , @SelectTempTable, ' ( ' );
SET @TempTable = CONCAT(@TempTable, '`loggedInUser` varchar(50) DEFAULT NULL,  `projectId` varchar(50) DEFAULT NULL,');
SET @TempTable = CONCAT(@TempTable, '`deliveryDay` varchar(50) DEFAULT NULL,  `deliveryDate` varchar(50) DEFAULT NULL, `wuMiles` FLOAT DEFAULT 0,');

SET @TempEndPart = '`wuCount` INT DEFAULT 0);';

SELECT COUNT(*) INTO lastRows FROM Operational_Road_Type ORT WHERE ORT.projectId = projectId ;

SET startRows = 0;

WHILE startRows < lastRows DO

	SELECT roadId INTO _roadId FROM Operational_Road_Type ORT WHERE ORT.projectId = projectId ORDER BY ORT.roadId LIMIT startRows, 1;
	
	SET @TempTable = CONCAT(@TempTable, '`', _roadId, '` FLOAT DEFAULT 0, ');
	SET @FinalSelect = CONCAT(@FinalSelect, 'CAST(', _roadId ,' AS DECIMAL(12,3)) As ', _roadId, ', ');
	SET startRows = startRows + 1;
	
END WHILE;

SET @FinalSelect = CONCAT(@FinalSelect, 'wuCount, '' '' As Remarks ');
SET @TempTable   = CONCAT(@TempTable, @TempEndPart);

PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @InsertQuery = CONCAT( 'Insert InTo ', @SelectTempTable, '(loggedInUser, projectId, deliveryDay, deliveryDate) ' );

SET @InsertQuery = CONCAT( @InsertQuery, ' Select ''',loggedInUser ,''',','''', projectId ,''', DAYNAME(a.Date) As DeliveryDay, a.Date As DeliveryDate From (select curdate() - INTERVAL (a.a + (10 * b.a) + (100 * c.a) + (1000 * d.a) ) DAY as Date from (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as a cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as b cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as c cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as d) a where a.Date between ''',fromDate,''' AND ''', toDate,''' ORDER By DeliveryDate Asc ;');


PREPARE stmt FROM @InsertQuery;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET startRows=0;

SET @selectMilesPart = 'Select IFNULL(SUM(OD.wuMiles), 0) As wuMiles ' ;
SET @selectWUPart = 'Select COUNT(OD.workUnitId) As wuCount ' ;

SET @fromPart   = 'FROM operational_task OT, operational_data OD, operational_resource_group OG ' ;
SET @wherePart  = CONCAT('Where OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OT.statusId In (', statusId, ') AND OT.queueId In (', queueId , ') ');

SET @filter = '';

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

IF divisionId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OG.divisionId = ''', divisionId, '''');
END IF;

IF groupId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.groupId = ''', groupId, '''');
END IF;


SET @milesQry = CONCAT(@selectMilesPart, ' InTo @wuMiles ', @fromPart, @wherePart, @filter);
SET @wuQry    = CONCAT(@selectWUPart,    ' InTo @wuCount ', @fromPart, @wherePart, @filter);

SET @lastDTRows = '';
SET @WUTable  = CONCAT('SELECT COUNT(*) InTo @lastDTRows FROM ', @SelectTempTable , ' WHERE projectId = ''', projectId, '''');

PREPARE stmt FROM @WUTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET startDTRows = 0;
SET @deliveryDate  = '';
SET @roadQry = '';

WHILE startDTRows < @lastDTRows DO

	SET @WUTable = CONCAT('Select WUT.deliveryDate INTO @deliveryDate FROM ', @SelectTempTable ,' WUT ORDER BY WUT.deliveryDate LIMIT ', startDTRows, ', 1;');
	
	PREPARE stmt FROM @WUTable;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	SET @dateQry  = CONCAT(' AND OT.processedDate BETWEEN ''', @deliveryDate, ' 00:00:00'' AND ''', @deliveryDate, ' 23:59:59''');
	
	SET startRows = 0;
	SET @wuMilesRT = '';
	WHILE startRows < lastRows DO
		
		SELECT roadId INTO _roadId FROM Operational_Road_Type ORT WHERE ORT.projectId = projectId ORDER BY ORT.roadId LIMIT startRows, 1;
		
		SET @roadQry = CONCAT(@selectMilesPart, ' InTo @wuMilesRT ' , @fromPart, @wherePart);
		SET @roadQry = CONCAT(@roadQry, ' AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,''$.roadId'')) = ''', _roadId, ''' ');
		SET @roadQry = CONCAT(@roadQry, @filter , @dateQry , ';');
			
		PREPARE stmt FROM @roadQry;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
		
		SET @WUTable = CONCAT ('Update ', @SelectTempTable , ' SET ', _roadId ,' = ', @wuMilesRT , ' Where deliveryDate = ''', @deliveryDate, '''');
				
		PREPARE stmt FROM @WUTable;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;	
		
		SET startRows = startRows + 1;
		
	END WHILE;
		
	SET @milesQuery = CONCAT(@milesQry, @dateQry);
	SET @wuQuery =    CONCAT(@wuQry,    @dateQry);
	
	PREPARE stmt FROM @milesQuery;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	PREPARE stmt FROM @wuQuery;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	SET @WUTable = CONCAT('Update ', @SelectTempTable , ' SET wuMiles = ', @wuMiles , ', wuCount = ', @wuCount ,' Where deliveryDate = ''', @deliveryDate, ''';');

	PREPARE stmt FROM @WUTable;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	SET startDTRows = startDTRows + 1;
	
END WHILE;

SET @SelectTempTable = CONCAT( 'SELECT ', @FinalSelect, ' From ',  @SelectTempTable);
PREPARE stmt FROM @SelectTempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @SelectTempTable = CONCAT('`wu_monthly_report_' , loggedInUser, '_', projectId, '`' );
SET @TempTable = CONCAT('DROP TABLE IF EXISTS ' , @SelectTempTable );
		
PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportDeliveryOverAll
DELIMITER //
CREATE PROCEDURE `getReportDeliveryOverAll`(
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50)
)
BEGIN


DECLARE lastDTRows INT DEFAULT 0;
DECLARE startDTRows INT DEFAULT 0;

DROP TABLE IF EXISTS wu_delivery_overall;
CREATE TABLE IF NOT EXISTS wu_delivery_overall (
	`SNo` INT DEFAULT 0,
	`loggedInUser` varchar(50) DEFAULT NULL,  
	`projectId` 	varchar(50) DEFAULT NULL,
	`ReceivedDate` varchar(50) DEFAULT NULL, 
	`TotalReceivedMiles` FLOAT DEFAULT 0,
	`ProdCompletedMiles` FLOAT DEFAULT 0,
	`ProdPendingMiles` FLOAT DEFAULT 0,
	`QCCompletedMiles` FLOAT DEFAULT 0,
	`QCPendingMiles` FLOAT DEFAULT 0,
	`DeliveredMiles` FLOAT DEFAULT 0,
	`OnHoldMiles` FLOAT DEFAULT 0,
	`Difference` FLOAT DEFAULT 0,
	`Status` VARCHAR(50) DEFAULT NULL,
	`BPSPlannedCompletionDate` VARCHAR(50) DEFAULT NULL,
	`ActualCompletedDate` VARCHAR(50) DEFAULT NULL);

SET @InsertQuery = 'Insert InTo wu_delivery_overall (loggedInUser, projectId, ReceivedDate) ' ;

SET @InsertQuery = CONCAT( @InsertQuery, ' Select ''',loggedInUser ,''',','''', projectId ,''', a.Date As ReceivedDate From (select curdate() - INTERVAL (a.a + (10 * b.a) + (100 * c.a) + (1000 * d.a) ) DAY as Date from (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as a cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as b cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as c cross join (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) as d) a where a.Date between ''',fromDate,''' AND ''', toDate,''' ORDER By ReceivedDate Asc ;');

PREPARE stmt FROM @InsertQuery;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SELECT COUNT(*) InTo lastDTRows FROM wu_delivery_overall WHERE projectId = projectId AND loggedInUser = loggedInUser;

WHILE startDTRows < lastDTRows DO

	SET @WUTable = CONCAT('Select WUT.ReceivedDate INTO @receivedDate FROM wu_delivery_overall WUT ORDER BY WUT.ReceivedDate LIMIT ', startDTRows, ', 1;');
	
	PREPARE stmt FROM @WUTable;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @totalMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.queueId In ('Group') AND OD.receivedDate = @receivedDate;

	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @prodCompMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.statusId = 'Completed' AND OT.queueId = 'Production' 
	AND OD.receivedDate = @receivedDate ;

	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @prodMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.statusId In ('Ready', 'InProgress') AND OT.queueId In 
	('Production','ProductionTeam', 'Group') AND OD.receivedDate = @receivedDate ;

	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @qcCompMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.statusId = 'Completed' AND OT.queueId In (
	'QualityControl')	AND OD.receivedDate = @receivedDate ;

	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @qcMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.statusId In ('Ready', 'InProgress') AND OT.queueId In 
	('QualityControl','QualityControlTeam')	AND OD.receivedDate = @receivedDate ;

	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @dlCompMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.statusId In ('Ready', 'InProgress', 'Hold') AND OT.queueId = 'ReadyForDelivery' 
	AND OD.receivedDate = @receivedDate ;

	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @holdMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.statusId In ('Ready', 'InProgress', 'Hold') AND OT.queueId In ('Production', 	
	'QualityControl') AND OD.receivedDate = @receivedDate ;
	
	SELECT CAST(IFNULL((@totalMiles - (@dlCompMiles + @holdMiles)), 0) AS DECIMAL(12,3)) INTO @difference;
	
	SELECT CASE WHEN @totalMiles > 0 AND @difference = 0 THEN 'Completed' WHEN @totalMiles > 0 AND @difference > 0 THEN 'In Progress' ELSE 'No Input' END INTO @status ;
	
	SET startDTRows = startDTRows + 1;
	
	Update wu_delivery_overall Set SNo = startDTRows, TotalReceivedMiles = @totalMiles, ProdCompletedMiles = @prodCompMiles, ProdPendingMiles = @prodMiles, 
	QCCompletedMiles = @qcCompMiles, QCPendingMiles = @qcMiles , DeliveredMiles = @dlCompMiles, OnHoldMiles = @holdMiles, Difference = @difference, `Status` = @status  
	WHERE projectId = projectId AND loggedInUser = loggedInUser AND ReceivedDate = @receivedDate;
	
	
	
END WHILE;
SELECT SNo, ReceivedDate, 
CAST(IFNULL(TotalReceivedMiles, 0) AS DECIMAL(12,3)) TotalReceivedMiles, 
CAST(IFNULL(ProdCompletedMiles, 0) AS DECIMAL(12,3)) ProdCompletedMiles, 
CAST(IFNULL(ProdPendingMiles, 0) AS DECIMAL(12,3)) ProdPendingMiles, 
CAST(IFNULL(QCCompletedMiles, 0) AS DECIMAL(12,3)) QCCompletedMiles, 
CAST(IFNULL(QCPendingMiles, 0) AS DECIMAL(12,3)) QCPendingMiles, 
CAST(IFNULL(DeliveredMiles, 0) AS DECIMAL(12,3)) DeliveredMiles, 
CAST(IFNULL(OnHoldMiles, 0) AS DECIMAL(12,3)) OnHoldMiles, 
CAST(IFNULL(Difference, 0) AS DECIMAL(12,3)) Difference, 
Status, '' As BPSPlannedCompletionDate, '' As ActualCompletedDate FROM wu_delivery_overall;

DELETE FROM wu_delivery_overall;
END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportDeliverySummary
DELIMITER //
CREATE PROCEDURE `getReportDeliverySummary`(
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50)
)
BEGIN

DECLARE lastRows INT DEFAULT 0;
DECLARE startRows INT DEFAULT 0;

DECLARE _roadId VARCHAR(50) DEFAULT NULL;
DECLARE _roadName VARCHAR(50) DEFAULT NULL;
DECLARE sumWU INT DEFAULT 0;

SELECT COUNT(*) INTO lastRows FROM Operational_Road_Type ORT WHERE ORT.projectId = projectId ;

SET startRows=0;

WHILE startRows < lastRows DO
	SELECT roadId, roadName INTO _roadId, _roadName FROM Operational_Road_Type ORT WHERE ORT.projectId = projectId ORDER BY ORT.roadId LIMIT startRows, 1;
		
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumWU FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'DeliveryToClient' AND OT.statusId = 'Completed' AND OT.allotedDate Between fromDate AND toDate;
	
	INSERT INTO projectstatussummary (loggedInUser, projectId, RoadId, RoadType, ReceivedMiles) VALUES (loggedInUser, projectId, _roadId, _roadName, sumWU);
	
	SET startRows = startRows + 1;
	
END WHILE;

SELECT RoadType, ReceivedMiles FROM projectstatussummary;
DELETE FROM projectstatussummary;
END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportDeliveryTotal
DELIMITER //
CREATE PROCEDURE `getReportDeliveryTotal`(
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50)
)
BEGIN

DECLARE lastDTRows INT DEFAULT 0;
DECLARE startDTRows INT DEFAULT 0;

DROP TABLE IF EXISTS wu_delivery_total;
CREATE TABLE IF NOT EXISTS wu_delivery_total (
	`SNo` INT DEFAULT 0,
	`loggedInUser` varchar(50) DEFAULT NULL,  
	`projectId` 	varchar(50) DEFAULT NULL,
	`ReceivedMonth` varchar(50) DEFAULT NULL, 
	`TotalReceivedMiles` FLOAT DEFAULT 0);

SET @InsertQuery = 'Insert InTo wu_delivery_total (loggedInUser, projectId, ReceivedMonth) ' ;

SET @InsertQuery = CONCAT( @InsertQuery, ' Select ''',loggedInUser ,''',','''', projectId ,''', 
DATE_FORMAT(m1, ''%M %Y'') AS ReceivedMonth FROM ( select (''',fromDate ,''' - INTERVAL DAYOFMONTH(''',fromDate,''')-1 DAY) 
+ INTERVAL m MONTH as m1 FROM ( select @rownum:=@rownum+1 as m FROM 
(select 1 union select 2 union select 3 union select 4) t1,
(select 1 union select 2 union select 3 union select 4) t2,
(select 1 union select 2 union select 3 union select 4) t3,
(select 1 union select 2 union select 3 union select 4) t4,
(select @rownum:=-1) t0 ) d1 ) d2 where m1<= ''', toDate ,''' ORDER BY m1 ');

PREPARE stmt FROM @InsertQuery;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SELECT COUNT(*) InTo lastDTRows FROM wu_delivery_total WHERE projectId = projectId AND loggedInUser = loggedInUser;

WHILE startDTRows < lastDTRows DO

	SET @WUTable = CONCAT('Select WUT.ReceivedMonth INTO @receivedMonth FROM wu_delivery_total WUT LIMIT ', startDTRows, ', 1;');
	
	PREPARE stmt FROM @WUTable;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	SELECT STR_TO_DATE(CONCAT('01 ', @receivedMonth), '%d %M %Y') InTo @startDate;
	SELECT LAST_DAY(@startDate) InTo @endDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO @totalMiles FROM operational_task OT, operational_data OD, operational_resource_group OG
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND OT.queueId = 'ReadyForDelivery' AND OD.ReceivedDate BETWEEN @startDate AND @endDate;
	
	SET startDTRows = startDTRows + 1;
	
	Update wu_delivery_total Set SNo = startDTRows, TotalReceivedMiles = @totalMiles WHERE projectId = projectId AND loggedInUser = loggedInUser 
	AND ReceivedMonth = @receivedMonth;	
	
	
END WHILE;
SELECT SNo, ReceivedMonth, CAST(IFNULL(TotalReceivedMiles, 0) AS DECIMAL(12,3)) TotalReceivedMiles FROM wu_delivery_total;
DELETE FROM wu_delivery_total;

END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportProjectStatus
DELIMITER //
CREATE PROCEDURE `getReportProjectStatus`(
	IN `isCount` BIT,
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50),
	IN `_page` INT,
	IN `_pageSize` INT


)
    SQL SECURITY INVOKER
BEGIN

DECLARE _ROWCOUNT INT DEFAULT 0;
DECLARE altId VARCHAR(50);
DECLARE dtId VARCHAR(50);
DECLARE _BatchNo VARCHAR(50);
DECLARE _DoneBy VARCHAR(50); 
DECLARE _AllottedDate DATETIME;
DECLARE _CompletedDate DATETIME; 
DECLARE _CompletedMiles VARCHAR(50); 
DECLARE _TimeTaken VARCHAR(50);
DECLARE _EstimatedTime VARCHAR(50); 
DECLARE _Efficiency VARCHAR(50); 
DECLARE _Status VARCHAR(50); 
DECLARE _Reason VARCHAR(100); 
DECLARE _Remarks VARCHAR(500); 
DECLARE _TeamName VARCHAR(50); 

DELETE FROM ProjectStatus WHERE loggedInUser = loggedInUser ;
 
SET @selectCountPart = 'Select Count(OD.receivedDate) As total' ;

SET @roadName = 'JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,''$.roadName'')) As roadTypeClassification, ';

SET @insertINTO = 'Insert INTO ProjectStatus (rowNo, loggedInUser, AllocationId, DataId, Department, Division, GroupName, Project, ReceivedDate, WorkUnitId, SubCountry, RoadType, WUMiles, Remarks) ';

SET @selectPart = CONCAT( @insertINTO, ' Select 0, ''', loggedInUser ,''', OT.allocationId, OD.dataId, DT.departmentName, ');
SET @selectPart = CONCAT( @selectPart, 'DN.divisionName, OG.groupName, OP.projectName, ');
SET @selectPart = CONCAT( @selectPart, 'OD.receivedDate, OD.workUnitId, OC.countryName,', @roadName, ' CAST(OD.wuMiles AS DECIMAL(12,4)) wuMiles, OT.remarks ');

SET @fromPart = ' FROM operational_task OT, operational_data OD, operational_reason ORN, operational_resource_group OG, ' ;
SET @fromPart = CONCAT (@fromPart, 'operational_resource_department DT, operational_resource_division DN, operational_resource_project OP, ');
SET @fromPart = CONCAT (@fromPart, 'operational_subcountry OC, users U, operational_queue OQ');

SET @wherePart = ' WHERE OD.projectId = OP.projectId AND OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND ORN.reasonId = OT.reasonId';
SET @wherePart = CONCAT(@wherePart, ' AND OD.subCountry = OC.country AND OT.allotedTo = U.employeeId AND OQ.queueId = OT.queueId AND DN.divisionId = OG.divisionId');
SET @wherePart = CONCAT(@wherePart, ' AND DT.departmentId = DN.departmentId AND OT.queueId = ''Group''');

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

SET @filter = '';

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

IF divisionId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OG.divisionId = ''', divisionId, '''');
END IF;

IF groupId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.groupId = ''', groupId, '''');
END IF;

IF fromDate IS NOT NULL AND toDate IS NOT NULL THEN
	SET @filter = CONCAT (@filter, ' AND OT.allotedDate Between ''', fromDate, ''' AND ''', toDate, '''' );
END IF;

IF isCount = 1 THEN
	SET @FinalSQL = CONCAT(@selectCountPart, @fromPart, @wherePart, @filter);
END IF;

SET @pagination = CONCAT( ' LIMIT ', _page, ',', _pageSize);

IF isCount = 0 THEN
	SET @FinalSQL = CONCAT(@selectPart, @fromPart, @wherePart, @filter,@pagination);
END IF;

PREPARE stmt FROM @FinalSQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

IF isCount = 0 THEN
	SET _ROWCOUNT = _page ;
	
	WHILE EXISTS (SELECT dataId FROM ProjectStatus WHERE loggedInUser = loggedInUser AND rowNo = 0) DO
	SET @datId=0;	
	SELECT dataId INTO @datId FROM ProjectStatus WHERE loggedInUser = loggedInUser AND rowNo = 0 Limit 1;

	SET @pdCount=0;
	SELECT COUNT(*) INTO @pdCount FROM Operational_Task OT,  Users PU where	 OT.processedBy = PU.employeeId AND OT.dataId = @datId AND OT.queueId = 'Production' Limit 1;
		IF @pdCount > 0 THEN	
			SELECT CONCAT(PU.userName, ' (', PU.userId, ')'), OT.allotedDate, OT.processedDate, '', 
			JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.production.actualTime')), JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.production.estimatedTime')),
			CAST(((JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.production.estimatedTime'))/JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.production.actualTime')))*100) 
			AS DECIMAL(12,1)), OT.statusId, RN.reason, OT.remarks, OGT.groupName
			INTO _DoneBy, _AllottedDate, _CompletedDate, _CompletedMiles , _TimeTaken , _EstimatedTime , _Efficiency, _Status, _Reason, _Remarks, _TeamName  
			FROM Operational_Task OT, Operational_Data OD, Users PU, Operational_Reason RN, operational_resource_group OGT
			WHERE 
			OT.dataId = OD.dataId AND OT.teamId = OGT.groupId AND OT.processedBy = PU.employeeId AND RN.reasonId = OT.reasonId AND 
			OT.dataId = @datId AND OT.queueId = 'Production' Limit 1;
			
			SET _ROWCOUNT = _ROWCOUNT+1;
			
			Update ProjectStatus SET rowNo = _ROWCOUNT, PDDoneBy = _DoneBy, PDAllottedDate = _AllottedDate, PDCompletedDate = _CompletedDate,
			PDCompletedMiles = _CompletedMiles, PDTimeTaken = _TimeTaken , PDEstimatedTime = _EstimatedTime, PDEfficiency = _Efficiency,
			PDStatus = _Status, PDReason = _Reason, PDRemarks = _Remarks, PDTeam = _TeamName Where DataId = @datId;
	
			SET @qcCount=0;
			SELECT COUNT(*) INTO @qcCount FROM Operational_Task OT, Operational_Data OD, Users PU, Operational_Reason RN WHERE OT.dataId = OD.dataId AND OT.processedBy = PU.employeeId 
			AND RN.reasonId = OT.reasonId AND OT.dataId = @datId AND OT.queueId = 'QualityControl' Limit 1;
			IF @qcCount > 0 THEN		
				SELECT CONCAT(PU.userName, ' (', PU.userId, ')'), OT.allotedDate, OT.processedDate, '', 
				JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.qualityControl.actualTime')), 
				JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.qualityControl.estimatedTime')),
				CAST(((JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.qualityControl.estimatedTime'))/JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , '$.benchMark.qualityControl.actualTime')))*100) AS DECIMAL(12,1)), OT.statusId, RN.reason, OT.remarks, OGT.groupName
				INTO 
				_DoneBy, _AllottedDate, _CompletedDate, _CompletedMiles , _TimeTaken , _EstimatedTime , _Efficiency, _Status, _Reason, _Remarks, _TeamName 
				FROM Operational_Task OT, Operational_Data OD, Users PU, Operational_Reason RN, operational_resource_group OGT
				WHERE 
				OT.dataId = OD.dataId AND OT.teamId = OGT.groupId AND OT.processedBy = PU.employeeId AND RN.reasonId = OT.reasonId 
				AND OT.dataId = @datId AND OT.queueId = 'QualityControl' Limit 1;
				
				Update ProjectStatus SET QCDoneBy = _DoneBy, QCAllottedDate = _AllottedDate, QCCompletedDate = _CompletedDate,
				QCCompletedMiles = _CompletedMiles, QCTimeTaken = _TimeTaken , QCEstimatedTime = _EstimatedTime, QCEfficiency = _Efficiency,
				QCStatus = _Status, QCReason = _Reason, QCRemarks = _Remarks, QCTeam = _TeamName Where DataId = @datId AND rowNo = _ROWCOUNT;
	
				SET @qaCount=0;
				SELECT COUNT(*) INTO @qaCount FROM Operational_Task OT, Operational_Data OD, Users PU, Operational_Reason RN where	OT.dataId = OD.dataId 
				AND OT.processedBy = PU.employeeId AND OT.dataId = @datId AND OT.queueId = 'QualityAssurance' Limit 1;
				IF @qaCount > 0 THEN		
					
					SELECT CONCAT(PU.userName, ' (', PU.userId, ')'), OT.allotedDate, OT.processedDate, OD.batchId, OT.statusId, OT.remarks, OGT.groupName 
					INTO _DoneBy, _AllottedDate, _CompletedDate, _BatchNo, _Status, _Remarks, _TeamName 
					FROM Operational_Task OT, Operational_Data OD, Users PU, operational_resource_group OGT
					WHERE 
					OT.dataId = OD.dataId AND OT.teamId = OGT.groupId AND OT.processedBy = PU.employeeId AND OT.dataId = @datId AND OT.queueId = 'QualityAssurance' Limit 1;
					
					Update ProjectStatus SET QADoneBy = _DoneBy, QAAllottedDate = _AllottedDate, QACompletedDate = _CompletedDate, QABatchNumber = _BatchNo,
					QAStatus = _Status, QARemarks = _Remarks, QATeam = _TeamName Where DataId = @datId AND rowNo = _ROWCOUNT;
					
					SELECT OT.statusId, OT.processedDate INTO _Status, _CompletedDate FROM Operational_Task OT
					WHERE OT.dataId = @datId AND OT.queueId = 'DeliveryToClient' Limit 1;
					
					Update ProjectStatus SET DeliveryStatus = _Status, DeliveredDate = _CompletedDate  Where DataId = @datId AND rowNo = _ROWCOUNT;
				END IF ;		
			END IF ;	
		ELSE
			SET _ROWCOUNT = _ROWCOUNT+1;
			Update ProjectStatus SET rowNo = _ROWCOUNT  Where DataId = @datId;
		END IF ;		
	END WHILE ;
	 
	SELECT * FROM ProjectStatus ; 
END IF;

DELETE FROM ProjectStatus WHERE loggedInUser = loggedInUser ;
END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportProjectSummary
DELIMITER //
CREATE PROCEDURE `getReportProjectSummary`(
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50)
)
BEGIN

DECLARE lastRows INT;
DECLARE startRows INT;

DECLARE _roadId VARCHAR(50) DEFAULT NULL;
DECLARE _roadName VARCHAR(50) DEFAULT NULL;
DECLARE sumWU FLOAT;
DECLARE sumPDYet FLOAT;
DECLARE sumPDTeamYet FLOAT;
DECLARE sumPDInProgress FLOAT;
DECLARE sumPDCompleted FLOAT;

DECLARE sumQATeamYet FLOAT;
DECLARE sumQATeamCompleted FLOAT;
DECLARE sumQAYet FLOAT;
DECLARE sumQAInProgress FLOAT;
DECLARE sumQACompleted FLOAT;

DECLARE sumQCYet FLOAT;
DECLARE sumQCTeamYet FLOAT;
DECLARE sumQCInProgress FLOAT;
DECLARE sumQCCompleted FLOAT;

DECLARE sumDlyYet FLOAT;
DECLARE sumDlyNotYet FLOAT;
DECLARE sumHold FLOAT;

SELECT COUNT(*) INTO lastRows FROM Operational_Road_Type ORT WHERE ORT.projectId = projectId ;

SET startRows=0;

WHILE startRows < lastRows DO
	SELECT roadId, roadName INTO _roadId, _roadName FROM Operational_Road_Type ORT WHERE ORT.projectId = projectId ORDER BY ORT.roadId LIMIT startRows, 1;
		
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumWU FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'Group' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumPDCompleted FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'Production' AND OT.statusId = 'Completed' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumPDInProgress FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'Production' AND OT.statusId = 'InProgress' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumPDYet FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'Production' AND OT.statusId = 'Ready' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumPDTeamYet FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'ProductionTeam' AND OT.statusId = 'Ready' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQCCompleted FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityControl' AND OT.statusId = 'Completed' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQCInProgress FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityControl' AND OT.statusId = 'InProgress' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQCYet FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityControl' AND OT.statusId = 'Ready' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQCTeamYet FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityControlTeam' AND OT.statusId = 'Ready' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQAInProgress FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityAssurance' AND OT.statusId = 'InProgress' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQACompleted FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityAssurance' AND OT.statusId = 'Completed' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQAYet FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityAssurance' AND OT.statusId = 'Ready' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQATeamYet FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityAssuranceTeam' AND OT.statusId = 'Ready' AND OD.receivedDate Between fromDate AND toDate;
		
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumDlyYet FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'ReadyForDelivery' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumHold FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'HoldQueue' AND OD.receivedDate Between fromDate AND toDate;
	
	SELECT CAST(IFNULL(SUM(OD.wuMiles), 0) AS DECIMAL(12,3)) INTO sumQATeamCompleted FROM operational_task OT, operational_data OD, operational_resource_group OG 
	WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId 
	AND OT.queueId = 'QualityAssuranceTeam' AND OT.statusId = 'Completed' AND OT.nextAllocationId IS NOT NULL AND OT.nextAllocationId In (SELECT OT.allocationId FROM operational_task OT, 
	operational_data OD, operational_resource_group OG WHERE OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OD.projectId = projectId 
	AND JSON_UNQUOTE(JSON_EXTRACT( OD.roadType,'$.roadId')) = _roadId AND OT.queueId = 'ReadyForDelivery' AND OD.receivedDate Between fromDate AND toDate);
		

	INSERT INTO projectstatussummary (loggedInUser, projectId, RoadId, RoadType, ReceivedMiles, ProdCompletedMiles, ProdInProgressMiles, ProdYetToStartMiles
	, QCCompletedMiles, QCInProgressMiles, QCYetToStartMiles, QACompletedMiles, QAInProgressMiles, QAYetToStartMiles, DeliveredMiles, OnHoldMiles, UndeliveredMiles) VALUES 
	(loggedInUser, projectId, _roadId, _roadName, sumWU, sumPDCompleted, sumPDInProgress, (sumPDYet+sumPDTeamYet), sumQCCompleted, sumQCInProgress, 
	(sumQCYet + sumQCTeamYet), (sumQACompleted+ sumQATeamCompleted), sumQAInProgress, (sumQAYet + sumQATeamYet) , sumDlyYet , sumHold, (sumWU - sumDlyYet));
	
	SET startRows = startRows + 1;
	
END WHILE;

SELECT RoadType, CAST(ReceivedMiles AS DECIMAL(12,3)) ReceivedMiles, CAST(ProdCompletedMiles AS DECIMAL(12,3)) ProdCompletedMiles, CAST(ProdInProgressMiles AS DECIMAL(12,3)) ProdInProgressMiles, CAST(ProdYetToStartMiles  AS DECIMAL(12,3)) ProdYetToStartMiles, CAST(QCCompletedMiles AS DECIMAL(12,3)) QCCompletedMiles, CAST(QCInProgressMiles AS DECIMAL(12,3)) QCInProgressMiles, CAST(QCYetToStartMiles AS DECIMAL(12,3)) QCYetToStartMiles, CAST(QACompletedMiles AS DECIMAL(12,3)) QACompletedMiles, CAST(QAInProgressMiles AS DECIMAL(12,3)) QAInProgressMiles, CAST(QAYetToStartMiles AS DECIMAL(12,3)) QAYetToStartMiles, CAST(DeliveredMiles AS DECIMAL(12,3)) DeliveredMiles, CAST(OnHoldMiles AS DECIMAL(12,3)) OnHoldMiles, CAST(UndeliveredMiles AS DECIMAL(12,3)) UndeliveredMiles FROM projectstatussummary;


DELETE FROM projectstatussummary;
END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportWebUploadStatus
DELIMITER //
CREATE PROCEDURE `getReportWebUploadStatus`(
	IN `isCount` BIT,
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50),
	IN `roadTypeList` VARCHAR(500),
	IN `roadTypeListSize` INT


,
	IN `_page` INT,
	IN `_pageSize` INT







)
BEGIN

DECLARE roadType TEXT DEFAULT NULL;
DECLARE roadTypelen INT DEFAULT NULL;
DECLARE roadTypeVal TEXT DEFAULT NULL;
DECLARE roadTypes TEXT DEFAULT '';
DECLARE cw_condition TEXT DEFAULT '';
DECLARE cw_true TEXT DEFAULT '';
DECLARE iter INT DEFAULT 0;
DECLARE roadQuery VARCHAR(2000) DEFAULT '';

iterator:
LOOP
	
	IF iter > roadTypeListSize OR CHAR_LENGTH(TRIM(roadTypeList)) = 0 OR roadTypeList IS NULL THEN
   	LEAVE iterator;
  	END IF;
  	
	SET roadType 	 = SUBSTRING_INDEX(roadTypeList, ',', 1);
	SET roadTypelen = CHAR_LENGTH(roadType);
	SET roadTypeVal   = TRIM(roadType);
		
	SET cw_condition = CONCAT ( 'STRCMP( JSON_EXTRACT( OD.roadType , ''$.roadTypeList[', iter ,'].roadId'') ,', CONCAT('''"', roadTypeVal ,'"'')') );
	SET cw_true = CONCAT ('JSON_UNQUOTE(JSON_EXTRACT(OD.roadType , ''$.roadTypeList[', iter ,'].miles''))'); 
	
	SET roadQuery = CONCAT(roadQuery, 'CAST(', cw_true, ' AS DECIMAL(10,3)) As ', roadTypeVal, ', ');
	
	SET roadTypeList = INSERT(roadTypeList ,1,roadTypelen + 1,'');
	
	SET iter = iter + 1;

END LOOP;


SET @roadName = 'JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , ''$.roadName'')) As roadTypeClassification, ';

SET @selectPart = CONCAT( 'Select OD.receivedDate, OG.groupName, OP.projectName, OD.workUnitId, OC.countryName, OD.wuMiles, ', @roadName, roadQuery, 'OD.remarks');
SET @selectCountPart = 'Select Count(OD.receivedDate) As total';
SET @fromPart  = ' FROM operational_data OD, operational_resource_group OG, operational_resource_project OP, operational_subcountry OC';
SET @wherePart = ' WHERE OD.projectId = OP.projectId AND OD.groupId = OG.groupId AND OD.subCountry = OC.country';
SET @pagination = CONCAT( ' LIMIT ', _page, ',', _pageSize);

SET @filter = '';

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

IF divisionId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OG.divisionId = ''', divisionId, '''');
END IF;

IF groupId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.groupId = ''', groupId, '''');
END IF;

IF fromDate IS NOT NULL AND toDate IS NOT NULL THEN
	SET @filter = CONCAT (@filter, ' AND OD.receivedDate Between ''', fromDate, ''' AND ''', toDate, '''' );
END IF;

IF isCount = 0 THEN
	SET @FinalSQL = CONCAT(@selectPart, @fromPart, @wherePart, @filter , @pagination);
END IF;

IF isCount = 1 THEN
	SET @FinalSQL = CONCAT(@selectCountPart, @fromPart, @wherePart, @filter);
END IF;

PREPARE stmt FROM @FinalSQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportWorkUnitHold
DELIMITER //
CREATE PROCEDURE `getReportWorkUnitHold`(
	IN `isCount` BIT,
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50),
	IN `queueId` VARCHAR(50),
	IN `statusId` TINYTEXT,
	IN `_page` INT,
	IN `_pageSize` INT









)
BEGIN

SET @selectCountPart = 'Select Count(OD.receivedDate) As total';

SET @roadName   = 'JSON_UNQUOTE(JSON_EXTRACT( OD.roadType , ''$.roadName'')) As roadTypeClassification, ';

SET @selectPart = CONCAT( 'Select Distinct OD.receivedDate, OP.projectName, OD.workUnitId, OC.countryName, OD.wuMiles, ', @roadName);
SET @selectPart = CONCAT( @selectPart, 'OT.statusId, ORN.reason, OT.remarks, U.userName, OT.allotedDate, OQ.queueName ' );

SET @fromPart   = ' FROM operational_task OT, operational_data OD, operational_reason ORN, operational_resource_group OG, ' ;
SET @fromPart   = CONCAT (@fromPart, 'operational_resource_project OP, operational_subcountry OC, users U, operational_queue OQ');

SET @wherePart  = ' WHERE OD.projectId = OP.projectId AND OT.dataId = OD.dataId AND OD.groupId = OG.groupId  AND ORN.reasonId = OT.reasonId';
SET @wherePart  = CONCAT(@wherePart, ' AND OD.subCountry = OC.country AND OT.allotedTo = U.employeeId AND OQ.queueId = OT.queueId');
SET @wherePart  = CONCAT(@wherePart, ' AND OT.statusId = ''', statusId ,''' AND OT.queueId Like ''', queueId ,'''');

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

SET @filter = '';

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

IF divisionId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OG.divisionId = ''', divisionId, '''');
END IF;

IF groupId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.groupId = ''', groupId, '''');
END IF;

IF fromDate IS NOT NULL AND toDate IS NOT NULL THEN
	SET @filter = CONCAT (@filter, ' AND OT.allotedDate Between ''', fromDate, ''' AND ''', toDate, '''' );
END IF;

IF isCount = 1 THEN
	SET @FinalSQL = CONCAT(@selectCountPart, @fromPart, @wherePart, @filter);
END IF;

SET @pagination = CONCAT( ' LIMIT ', _page, ',', _pageSize);

IF isCount = 0 THEN
	SET @FinalSQL = CONCAT(@selectPart, @fromPart, @wherePart, @filter , @pagination);
END IF;

PREPARE stmt FROM @FinalSQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END//
DELIMITER ;

-- Dumping structure for procedure data_process.getReportWorkUnitHoldReason
DELIMITER //
CREATE PROCEDURE `getReportWorkUnitHoldReason`(
	IN `fromDate` DATETIME,
	IN `toDate` DATETIME,
	IN `loggedInUser` VARCHAR(50),
	IN `divisionId` VARCHAR(50),
	IN `groupId` VARCHAR(50),
	IN `projectId` VARCHAR(50)






































































,
	IN `queueId` VARCHAR(50),
	IN `statusId` VARCHAR(50)








)
    NO SQL
BEGIN

DECLARE lastRows INT DEFAULT 1;
DECLARE startRows INT DEFAULT 0;
DECLARE _reasonId VARCHAR(100) DEFAULT NULL;
DECLARE _reason VARCHAR(100) DEFAULT NULL;

SET @SelectTempTable = CONCAT('`wu_hold_reason_' , loggedInUser, '_', projectId, '`' );
SET @TempTable = CONCAT('DROP TABLE IF EXISTS ' , @SelectTempTable );
		
PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @TempTable = CONCAT('CREATE TABLE IF NOT EXISTS ' , @SelectTempTable, ' ( ' );
SET @TempTable = CONCAT(@TempTable, '`sNo` INT DEFAULT 0,  `reason` varchar(100) DEFAULT NULL,');
SET @TempTable = CONCAT(@TempTable, '`wuCount` INT DEFAULT 0,  `wuMiles` FLOAT DEFAULT 0);');

PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @selectMilesPart = 'Select IFNULL(SUM(OD.wuMiles), 0) As wuMiles InTo @wuMiles ' ;
SET @selectWUPart = 'Select COUNT(OD.workUnitId) As wuCount InTo @wuCount ' ;
SET @fromPart   = 'FROM operational_task OT, operational_data OD, operational_resource_group OG ' ;
SET @wherePart  = CONCAT('Where OT.dataId = OD.dataId AND OD.groupId = OG.groupId AND OT.statusId In (', statusId, ') AND OT.queueId In (', queueId , ') ');

SET @filter = '';

IF projectId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.projectId = ''', projectId, '''');
END IF;

IF divisionId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OG.divisionId = ''', divisionId, '''');
END IF;

IF groupId <> '' THEN
	SET @filter = CONCAT (@filter, ' AND OD.groupId = ''', groupId, '''');
END IF;

SET @wuMilesQry    = '';
SET @wuCountQry    = '';
SET @dateQry       = CONCAT(' AND OT.allotedDate BETWEEN ''', fromDate, ''' AND ''', toDate, '''');
SET @preWuMilesQry = CONCAT(@selectMilesPart,  @fromPart, @wherePart, @filter, @dateQry);
SET @PreWuCountQry = CONCAT(@selectWUPart   ,  @fromPart, @wherePart, @filter, @dateQry);
SET @preInsertQry  = CONCAT( 'Insert InTo ', @SelectTempTable, '(sNo, reason, wuCount, wuMiles) Values (' );

SELECT COUNT(*) INTO lastRows FROM Operational_Reason ORN, operational_resource_project RP WHERE ORN.status = 1 AND ORN.divisionId = RP.divisionId AND RP.projectId = projectId ;
SET startRows = 0;
SET @Final = '';
WHILE startRows < lastRows DO

	SELECT ORN.reasonId, REPLACE(ORN.reason, '''', '''''') INTO _reasonId, _reason FROM Operational_Reason ORN, operational_resource_project RP WHERE ORN.status = 1 AND ORN.divisionId = RP.divisionId AND RP.projectId = projectId ORDER BY ORN.displayOrder ASC LIMIT startRows, 1;
	SET startRows = startRows + 1;
	
	SET @wuCountQry = CONCAT(@PreWuCountQry, ' AND OT.reasonId = ''' , _reasonId, ''';');
	SET @wuMilesQry = CONCAT(@preWuMilesQry, ' AND OT.reasonId = ''' , _reasonId, ''';');
	SET @InsertQry  = CONCAT(@preInsertQry , startRows, ',''', _reason, ''',',@wuCount ,',', @wuMiles, ');');
	
	PREPARE stmt FROM @wuCountQry;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	PREPARE stmt FROM @wuMilesQry;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
	PREPARE stmt FROM @InsertQry;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
	
END WHILE;

SET @FinalSelect = CONCAT( 'Select sNo, reason, wuCount, CAST(wuMiles AS DECIMAL(12,3)) As wuMiles From ',  @SelectTempTable);
PREPARE stmt FROM @FinalSelect;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @TempTable = CONCAT('DROP TABLE IF EXISTS ' , @SelectTempTable );
PREPARE stmt FROM @TempTable;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END//
DELIMITER ;

-- Dumping structure for procedure data_process.getTimesheetApproval
DELIMITER //
CREATE PROCEDURE `getTimesheetApproval`(
	IN `searchTerm` VARCHAR(50),
	IN `employeeList` TEXT,
	IN `fromDate` VARCHAR(50),
	IN `toDate` VARCHAR(50)
)
BEGIN
		
	DECLARE aDate VARCHAR(50);
	DECLARE iterDate DATE;
	DECLARE iterToDate DATE;
	DECLARE likeSearchTerm VARCHAR(50);
	DECLARE equalSearchTerm VARCHAR(50);
	DECLARE Filter VARCHAR(50);

	SET @tUser = 'Select u.employeeId, u.userId, u.userName, u.lastName, h.employmentStatus, ' ;
	SET @tReportTo = 'rep.userId reportToId, rep.userName reportToName, rep.lastName reportToLastName, ' ;
	SET @tDepartment = 'rdep.departmentId, rdep.departmentName, ' ;
	SET @tDivision = 'rd.divisionId, rd.divisionName, ' ;
	SET @tGroup = 'rgp.groupId, rgp.groupName, ' ;
	SET @tTeam = 'rtm.groupId teamId, rtm.groupName teamName ' ;
	SET @tableName1 = ' From users u, users rep, usershrrecords h, userstimesheet ut, usersattendance ua, operational_resource_group rgp, ';
	SET @tableName2 = 'operational_resource_group rtm, operational_resource_department rdep , operational_resource_division rd ';
	SET @tableLink1 = 'Where ua.attendanceId = ut.attendanceId And u.reportingTo = rep.employeeId And ua.employeeId = u.employeeId And h.employeeId = u.employeeId ';
	SET @tableLink2 = 'And u.departmentId = rdep.departmentId And u.divisionId = rd.divisionId And u.groupId = rgp.groupId And u.teamId = rtm.groupId And u.employeeId In (';
	SET @groupBy    = ' Group By u.employeeId';
	
	IF( searchTerm IS NOT NULL AND searchTerm <> '') THEN
		SET likeSearchTerm = CONCAT (' Like ''%', searchTerm, '%''');
		SET equalSearchTerm = CONCAT (' = ''', searchTerm, '''');
		SET @Filter = ' And (';
		SET @Filter = CONCAT(@Filter, 'u.userId', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'u.userName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'u.lastName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'rep.userName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'rep.lastName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'rdep.departmentName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'rd.divisionName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'rgp.groupName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'rtm.groupName', likeSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'ut.status', equalSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'ua.status', equalSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'ua.symbol', equalSearchTerm, ' Or ' );
		SET @Filter = CONCAT(@Filter, 'h.employmentStatus', equalSearchTerm, ' ) ' );
	END IF;
	
	SET @tDate ='';
	
	SET iterDate = DATE(fromDate);
	SET iterToDate = DATE_ADD(toDate, INTERVAL 1 DAY );
	
	WHILE( iterDate < iterToDate) DO
	
		SET @tempDate = CONCAT(iterDate, ' 00:00:00');
		SET @asDate = CONCAT( DAY(iterDate) ,'/', MONTH(iterDate));
		SET @tDate = CONCAT (@tDate, ', MAX(CASE WHEN ua.date = ''', @tempDate, ''' THEN CONCAT( ua.date, ''#'', ut.hoursBillable, ''#'', (ut.hoursNBP + ut.hoursNBNP), ''#'', ut.hoursOTApproved, ''#'', ua.status , ''#'', ua.symbol, ''#'', ua.mode , ''#'', ut.status, ''#'', ut.lockStatus, ''#'', ut.timesheetId, ''#'', ut.comments ) END ) AS ''', @asDate, ''''); 
		SET iterDate = DATE_ADD(iterDate, INTERVAL 1 DAY );
	END WHILE ;
	
SET @FinalSQL = CONCAT(@tUser, @tReportTo, @tDepartment, @tDivision, @tGroup, @tTeam, @tDate, @tableName1, @tableName2, @tableLink1, @tableLink2, employeeList , ')');

IF( searchTerm IS NOT NULL AND searchTerm <> '') THEN
	SET @FinalSQL = CONCAT(@FinalSQL, @Filter);
END IF;

SET @FinalSQL = CONCAT(@FinalSQL, @groupBy);

PREPARE stmt FROM @FinalSQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END//
DELIMITER ;

-- Dumping structure for procedure data_process.getUserSkillSetMatrix
DELIMITER //
CREATE PROCEDURE `getUserSkillSetMatrix`(
	IN `employeeIds` TEXT
)
BEGIN
SET @SQL = NULL;

SELECT 
    GROUP_CONCAT(DISTINCT CONCAT(' (CASE WHEN (SUM(CASE WHEN UR.roleId= ''',roleId, ''' THEN 1 ELSE 0 END) > 0) THEN ''', roleId , ':true'' ELSE ''', roleId ,':false'' END ) AS ', roleId) )
   
INTO @SQL
FROM roles WHERE roleType ='SkillSet' AND isEffortSkill = 1 AND status = 1 AND displayOrder > 0 AND displayOrder < 5 Order By displayOrder ASC ;

SET @SQLSECOND = NULL;

SELECT 
    GROUP_CONCAT(DISTINCT CONCAT(' (CASE WHEN (SUM(CASE WHEN UR.roleId= ''',roleId, ''' THEN 1 ELSE 0 END) > 0) THEN ''', roleId , ':true'' ELSE ''', roleId ,':false'' END ) AS ', roleId) )
   
INTO @SQLSECOND
FROM roles WHERE roleType ='SkillSet' AND isEffortSkill = 1 AND status = 1 AND displayOrder > 4 AND displayOrder < 10 Order By displayOrder ASC ;


IF (@SQLSECOND IS NOT NULL) THEN
SET @SQL = CONCAT(@SQL, ',' , @SQLSECOND);
END IF;


SET @SQL = CONCAT('SELECT UR.employeeId, U.userId, U.userName, DP.departmentId, DP.departmentName, RD.divisionId, RD.divisionName, GP.groupId, GP.groupName, TM.groupId AS teamId, TM.groupName AS teamName, UR.userRoleType, ', 
						@SQL,
						' FROM usersroles UR, operational_resource_department DP, operational_resource_division RD, operational_resource_group GP, operational_resource_group TM, users U Where UR.userRoleType =''SkillSet''', 
						' AND UR.employeeId = U.employeeId AND GP.devSkill = 1 AND U.departmentId = DP.departmentId AND U.divisionId = RD.divisionId AND U.groupId = GP.groupId AND U.teamId = TM.groupId AND UR.employeeId In (',
						employeeIds ,
						') GROUP BY UR.employeeId');


PREPARE stmt FROM @SQL;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END//
DELIMITER ;

-- Dumping structure for procedure data_process.getWorkUnitsStatus
DELIMITER //
CREATE PROCEDURE `getWorkUnitsStatus`(
	IN `employeeIds` TEXT




)
BEGIN

IF employeeIds <> 'EDRAdmin' THEN

SET @Comma = ', ';
SET @B = 'Select CONCAT(U.userName,'' ('' ,U.userId, '')'' ) As userName, ';

SET @G = CONCAT(@B ,'(Select CONCAT(''Group:Ready:'' , Count(*)) From Operational_Task T1 Where T1.currentEvent = ''Default'' And T1.queueId = ''Group'' And T1.statusId = ''Ready'' And T1.allotedTo = ',employeeIds, ') As GReady', @Comma);

SET @G = CONCAT(@G, '(Select CONCAT(''Group:Assigned:'' , Count(*)) From Operational_Task T2 Where T2.currentEvent = ''Default'' And T2.queueId = ''Group'' And T2.statusId = ''Assigned'' And T2.processedBy = ',employeeIds, ') As GAssigned', @Comma);

SET @PT = CONCAT('(Select CONCAT(''ProductionTeam:Ready:'' , Count(*)) From Operational_Task T3 Where T3.currentEvent = ''Default'' And T3.queueId = ''ProductionTeam'' And T3.statusId = ''Ready'' And T3.allotedTo = ',employeeIds, ') As PTReady', @Comma);

SET @PT = CONCAT(@PT, '(Select CONCAT(''ProductionTeam:Assigned:'' , Count(*)) From Operational_Task T4 Where T4.currentEvent = ''Default'' And T4.queueId = ''ProductionTeam'' And T4.statusId = ''Assigned'' And T4.processedBy = ',employeeIds, ') As PTAssigned', @Comma);

SET @P = CONCAT('(Select CONCAT(''Production:Ready:'' , Count(*)) From Operational_Task T5 Where T5.currentEvent = ''Default'' And T5.queueId = ''Production'' And T5.statusId = ''Ready'' And T5.allotedTo = ',employeeIds, ') As PReady', @Comma);

SET @P = CONCAT(@P, '(Select CONCAT(''Production:In Progress:'' , Count(*)) From Operational_Task T6 Where T6.queueId = ''Production'' And T6.statusId = ''InProgress'' And T6.processedBy = ',employeeIds, ') As PInProgress', @Comma);

SET @P = CONCAT(@P, '(Select CONCAT(''Production:Completed:'' , Count(*)) From Operational_Task T7 Where T7.queueId = ''Production'' And T7.statusId = ''Completed'' And T7.processedBy = ',employeeIds, ') As PCompleted', @Comma);

SET @P = CONCAT(@P, '(Select CONCAT(''Production:Hold:'' , Count(*)) From Operational_Task T7H Where T7H.queueId = ''Production'' And T7H.statusId = ''Hold'' And T7H.processedBy = ',employeeIds, ') As PHold', @Comma);
 
SET @QCT = CONCAT('(Select CONCAT(''QualityControlTeam:Ready:'' , Count(*)) From Operational_Task T8 Where T8.currentEvent = ''Default'' And T8.queueId = ''QualityControlTeam'' And T8.statusId = ''Ready'' And T8.allotedTo = ',employeeIds, ') As QCTReady', @Comma);

SET @QCT = CONCAT(@QCT, '(Select CONCAT(''QualityControlTeam:Assigned:'' , Count(*)) From Operational_Task T9 Where T9.currentEvent = ''Default'' And T9.queueId = ''QualityControlTeam'' And T9.statusId = ''Assigned'' And T9.processedBy = ',employeeIds, ') As QCTAssigned', @Comma);

SET @QC = CONCAT('(Select CONCAT(''QualityControl:Ready:'' , Count(*)) From Operational_Task T10 Where T10.currentEvent = ''Default'' And T10.queueId = ''QualityControl'' And T10.statusId = ''Ready'' And T10.allotedTo = ',employeeIds, ') As QCReady', @Comma);

SET @QC = CONCAT(@QC, '(Select CONCAT(''QualityControl:In Progress:'' , Count(*)) From Operational_Task T11 Where T11.queueId = ''QualityControl'' And T11.statusId = ''InProgress'' And T11.processedBy = ',employeeIds, ') As QCInProgress', @Comma);

SET @QC = CONCAT(@QC, '(Select CONCAT(''QualityControl:Completed:'' , Count(*)) From Operational_Task T12 Where T12.queueId = ''QualityControl'' And T12.statusId = ''Completed'' And T12.processedBy = ',employeeIds, ') As QCCompleted', @Comma);

SET @QAT = CONCAT('(Select CONCAT(''QualityAssuranceTeam:Ready:'', Count(*)) From Operational_Task T13 Where T13.currentEvent = ''Default'' And T13.queueId = ''QualityAssuranceTeam'' And T13.statusId = ''Ready'' And T13.allotedTo = ',employeeIds, ') As QATReady', @Comma);

SET @QAT = CONCAT(@QAT, '(Select CONCAT(''QualityAssuranceTeam:Assigned:'' , Count(*)) From Operational_Task T14 Where T14.currentEvent = ''Default'' And T14.queueId = ''QualityAssuranceTeam'' And T14.statusId = ''Assigned'' And T14.processedBy = ',employeeIds, ') As QATAssigned', @Comma);

SET @QA = CONCAT('(Select CONCAT(''QualityAssurance:Ready:'' , Count(*)) From Operational_Task T15 Where T15.currentEvent = ''Default'' And T15.queueId = ''QualityAssurance'' And T15.statusId = ''Ready'' And T15.allotedTo = ',employeeIds, ') As QAReady', @Comma);

SET @QA = CONCAT(@QA, '(Select CONCAT(''QualityAssurance:In Progress:'' , Count(*)) From Operational_Task T16 Where T16.queueId = ''QualityAssurance'' And T16.statusId = ''InProgress'' And T16.processedBy = ',employeeIds, ') As QAInProgress', @Comma);

SET @QA = CONCAT(@QA, '(Select CONCAT(''QualityAssurance:Completed:'' , Count(*)) From Operational_Task T17 Where T17.queueId = ''QualityAssurance'' And T17.statusId = ''Completed'' And T17.processedBy = ',employeeIds, ') As QACompleted', @Comma);

SET @RFD = CONCAT('(Select CONCAT(''ReadyForDelivery:Ready:'' , Count(*)) From Operational_Task T18 Where T18.currentEvent = ''Default'' And T18.queueId = ''ReadyForDelivery'' And T18.statusId = ''Ready'' And T18.allotedTo = ',employeeIds, ') As RFDReady', @Comma);

SET @RFD = CONCAT(@RFD, '(Select CONCAT(''ReadyForDelivery:Assigned:'' , Count(*)) From Operational_Task T19 Where T19.currentEvent = ''Default'' And T19.queueId = ''ReadyForDelivery'' And T19.statusId = ''Assigned'' And T19.processedBy = ',employeeIds, ') As RFDAssigned', @Comma);

SET @DTC = CONCAT('(Select CONCAT(''DeliveryToClient:Ready:'' , Count(*)) From Operational_Task T20 Where T20.currentEvent = ''Default'' And T20.queueId = ''DeliveryToClient'' And T20.statusId = ''Ready'' And T20.allotedTo = ',employeeIds, ') As DTCReady', @Comma);

SET @DTC = CONCAT(@DTC, '(Select CONCAT(''DeliveryToClient:Assigned:'' , Count(*)) From Operational_Task T21 Where T21.currentEvent = ''Default'' And T21.queueId = ''DeliveryToClient'' And T21.statusId = ''Assigned'' And T21.processedBy = ',employeeIds, ') As DTCAssigned', @Comma);

SET @HLD = CONCAT('(Select CONCAT(''HoldQueue:Ready:'' , Count(*)) From Operational_Task T22 Where T22.currentEvent = ''Default'' And T22.queueId = ''HoldQueue'' And T22.statusId = ''Ready'' And T22.allotedTo = ',employeeIds, ') As HLDReady', @Comma);

SET @HLD = CONCAT(@HLD, '(Select CONCAT(''HoldQueue:Assigned:'' , Count(*)) From Operational_Task T23 Where T23.currentEvent = ''Default'' And T23.queueId = ''HoldQueue'' And T23.statusId = ''Assigned'' And T23.processedBy = ',employeeIds, ') As HLDAssigned');


SET @Emp = CONCAT(' From Users U Where U.employeeId In (',employeeIds, ')');

SET @Final = CONCAT(@G, @PT, @P, @QCT, @QC, @QAT, @QA, @RFD, @DTC, @HLD, @Emp);
PREPARE stmt FROM @Final;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END IF;
END//
DELIMITER ;

-- Dumping structure for table data_process.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `menuId` varchar(10) NOT NULL,
  `parentId` varchar(10) DEFAULT NULL,
  `menuName` varchar(50) DEFAULT NULL COMMENT 'title in Metronic',
  `cssClassIcon` varchar(100) DEFAULT NULL COMMENT 'icon in Metronic',
  `actionURL` varchar(200) DEFAULT NULL COMMENT 'page in Metronic',
  `cssClass` varchar(100) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL COMMENT 'root in Metronic',
  `alignment` varchar(50) NOT NULL DEFAULT 'left',
  `toggle` varchar(50) DEFAULT 'click',
  `translate` varchar(50) DEFAULT NULL,
  `bullet` varchar(50) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.menurole
CREATE TABLE IF NOT EXISTS `menurole` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `menuId` varchar(50) NOT NULL,
  `producerId` varchar(50) NOT NULL DEFAULT 'PRD000001',
  `roleId` varchar(50) NOT NULL,
  PRIMARY KEY (`autoId`),
  KEY `FK_mamenurole_mamenu` (`menuId`),
  KEY `FK_mamenurole_producers` (`producerId`),
  KEY `FK_mamenurole_roles` (`roleId`),
  CONSTRAINT `FK_mamenurole_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB AUTO_INCREMENT=1067 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `messageId` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `messageName` varchar(50) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `media` varchar(20) NOT NULL,
  `producerId` varchar(50) NOT NULL,
  `dataMapTemplateName` varchar(100) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `textHTML` bit(1) DEFAULT b'1',
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.old_accessprivilege
CREATE TABLE IF NOT EXISTS `old_accessprivilege` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `preAuthorize` varchar(50) NOT NULL,
  `roleId` varchar(50) NOT NULL,
  `requestName` varchar(50) NOT NULL,
  `requestPath` varchar(50) NOT NULL,
  `serviceName` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_accessprivilege_roles` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=1398 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_allocation_group
CREATE TABLE IF NOT EXISTS `operational_allocation_group` (
  `allotmentId` varchar(50) NOT NULL,
  `groupId` varchar(50) DEFAULT NULL,
  `production` varchar(50) NOT NULL,
  `qualityControl` varchar(50) NOT NULL,
  `qualityAssurance` varchar(50) NOT NULL,
  `readyForDelivery` varchar(50) NOT NULL,
  `deliveryToClient` varchar(50) NOT NULL,
  PRIMARY KEY (`allotmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_data
CREATE TABLE IF NOT EXISTS `operational_data` (
  `dataId` varchar(50) NOT NULL,
  `batchId` varchar(50) DEFAULT NULL,
  `dataURN` varchar(50) DEFAULT NULL,
  `allotmentId` varchar(50) DEFAULT NULL,
  `roadType` text,
  `workUnitId` varchar(50) DEFAULT NULL,
  `wuMiles` float DEFAULT NULL,
  `subCountry` varchar(50) DEFAULT NULL,
  `groupId` varchar(50) DEFAULT NULL,
  `receivedDate` datetime DEFAULT NULL,
  `projectId` varchar(50) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`dataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_miles_percent
CREATE TABLE IF NOT EXISTS `operational_miles_percent` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `projectId` varchar(50) NOT NULL,
  `roadId` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `units` varchar(50) NOT NULL DEFAULT 'Mins/Mile',
  `benchMark` int NOT NULL DEFAULT '0',
  `production` double NOT NULL DEFAULT '0',
  `qualityControl` double NOT NULL DEFAULT '0',
  `qualityAssurance` double NOT NULL DEFAULT '0',
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=10178 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_po_detail
CREATE TABLE IF NOT EXISTS `operational_po_detail` (
  `poDetailId` varchar(50) NOT NULL,
  `approvedLimit` double DEFAULT NULL,
  `deliveredWork` double DEFAULT NULL,
  `onHoldWork` double DEFAULT NULL,
  `pendingWork` double DEFAULT NULL,
  `receivedInput` double DEFAULT NULL,
  PRIMARY KEY (`poDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_po_limit
CREATE TABLE IF NOT EXISTS `operational_po_limit` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `poDetailId` varchar(50) NOT NULL,
  `poNumber` varchar(50) NOT NULL,
  `poLimit` double NOT NULL DEFAULT '0',
  `poDate` datetime NOT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_process
CREATE TABLE IF NOT EXISTS `operational_process` (
  `dataURN` varchar(50) NOT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`dataURN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_process_producers
CREATE TABLE IF NOT EXISTS `operational_process_producers` (
  `producerId` varchar(50) NOT NULL,
  `dataURN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_queue
CREATE TABLE IF NOT EXISTS `operational_queue` (
  `queueId` varchar(50) NOT NULL,
  `queueName` varchar(50) DEFAULT NULL,
  `shortName` varchar(3) DEFAULT NULL,
  `level` int DEFAULT '0',
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `reAllocate` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`queueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_queue_skill_role
CREATE TABLE IF NOT EXISTS `operational_queue_skill_role` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `queueId` varchar(50) NOT NULL,
  `roleId` varchar(100) NOT NULL,
  `roleSkill` varchar(100) DEFAULT NULL,
  `editable` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_queue_status_reason
CREATE TABLE IF NOT EXISTS `operational_queue_status_reason` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `queueId` varchar(50) NOT NULL,
  `statusId` varchar(50) NOT NULL DEFAULT 'Ready',
  `reasonId` varchar(100) NOT NULL DEFAULT 'NoReason',
  `nextQueueId` varchar(50) DEFAULT NULL,
  `displayOrder` int NOT NULL DEFAULT '1',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_reason
CREATE TABLE IF NOT EXISTS `operational_reason` (
  `reasonId` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `divisionId` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`reasonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_resource_department
CREATE TABLE IF NOT EXISTS `operational_resource_department` (
  `departmentId` varchar(50) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_resource_division
CREATE TABLE IF NOT EXISTS `operational_resource_division` (
  `divisionId` varchar(50) NOT NULL,
  `divisionName` varchar(50) NOT NULL,
  `departmentId` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`divisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_resource_group
CREATE TABLE IF NOT EXISTS `operational_resource_group` (
  `groupId` varchar(50) NOT NULL,
  `groupName` varchar(50) DEFAULT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `devSkill` bit(1) NOT NULL DEFAULT b'1',
  `type` varchar(50) NOT NULL,
  `divisionId` varchar(50) NOT NULL,
  `parentGroupId` varchar(50) DEFAULT NULL,
  `reportingTo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_resource_project
CREATE TABLE IF NOT EXISTS `operational_resource_project` (
  `projectId` varchar(50) NOT NULL,
  `projectName` varchar(50) NOT NULL,
  `divisionId` varchar(50) NOT NULL,
  `displayOrder` int DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `template` text,
  `mode` varchar(50) NOT NULL DEFAULT 'Info',
  `templateUploadDate` datetime DEFAULT NULL,
  `clientName` varchar(50) DEFAULT NULL,
  `projectType` varchar(50) DEFAULT NULL,
  `projectManagerId` varchar(50) DEFAULT 'EDRAdmin',
  `poNumber` varchar(50) DEFAULT NULL,
  `poDated` varchar(50) DEFAULT NULL,
  `billingCycle` varchar(50) DEFAULT NULL,
  `projectStatus` varchar(50) DEFAULT NULL,
  `deliverables` varchar(50) DEFAULT NULL,
  `modeOfDelivery` varchar(50) DEFAULT NULL,
  `inputReceivingMode` varchar(50) DEFAULT NULL,
  `inputType` varchar(50) DEFAULT NULL,
  `displayInOtherUIProjectList` varchar(50) DEFAULT NULL,
  `totalProjectedWorkVolume` varchar(50) DEFAULT NULL,
  `unitsOfMeasurement` varchar(50) DEFAULT NULL,
  `receivedWorkVolume` varchar(50) DEFAULT NULL,
  `estimatedTotalHours` varchar(50) DEFAULT NULL,
  `plannedNoOfResources` varchar(50) DEFAULT NULL,
  `noOfDaysRequiredToComplete` varchar(50) DEFAULT NULL,
  `bpsStartDate` varchar(50) DEFAULT NULL,
  `bpsPlannedCompletionDate` varchar(50) DEFAULT NULL,
  `clientExpectedCompletionDate` varchar(50) DEFAULT NULL,
  `actualCompletedDate` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_road_type
CREATE TABLE IF NOT EXISTS `operational_road_type` (
  `roadId` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `projectId` varchar(50) NOT NULL,
  `poDetailId` varchar(50) DEFAULT NULL,
  `roadName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `roadMap` varchar(1000) DEFAULT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`roadId`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_road_type_bkp
CREATE TABLE IF NOT EXISTS `operational_road_type_bkp` (
  `roadId` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `projectId` varchar(50) NOT NULL,
  `roadName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `roadMap` varchar(1000) DEFAULT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`roadId`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_status
CREATE TABLE IF NOT EXISTS `operational_status` (
  `statusId` varchar(50) NOT NULL,
  `statusName` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_subcountry
CREATE TABLE IF NOT EXISTS `operational_subcountry` (
  `country` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `priority` varchar(50) NOT NULL DEFAULT 'Medium',
  `status` bit(1) NOT NULL DEFAULT b'0',
  `displayOrder` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_subcountry_mapping
CREATE TABLE IF NOT EXISTS `operational_subcountry_mapping` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `projectId` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=8436 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.operational_task
CREATE TABLE IF NOT EXISTS `operational_task` (
  `allocationId` varchar(50) NOT NULL,
  `nextAllocationId` varchar(50) DEFAULT NULL,
  `processId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dataId` varchar(50) NOT NULL,
  `groupId` varchar(50) DEFAULT NULL,
  `teamId` varchar(50) DEFAULT NULL,
  `queueId` varchar(50) NOT NULL,
  `allotedTo` varchar(50) DEFAULT NULL,
  `currentEvent` varchar(50) NOT NULL DEFAULT 'YetToStart',
  `statusId` varchar(50) DEFAULT NULL,
  `allotedDate` datetime NOT NULL,
  `processedBy` varchar(50) DEFAULT NULL,
  `processedDate` datetime DEFAULT NULL,
  `reasonId` varchar(50) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `eventTrack` mediumtext,
  `remarks` mediumtext,
  PRIMARY KEY (`allocationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.portlets
CREATE TABLE IF NOT EXISTS `portlets` (
  `portletId` varchar(50) NOT NULL,
  `portletName` varchar(50) NOT NULL,
  `portletBeanName` varchar(50) NOT NULL,
  `portletTemplatePath` varchar(100) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.portletsroles
CREATE TABLE IF NOT EXISTS `portletsroles` (
  `prAutoId` int NOT NULL AUTO_INCREMENT,
  `portletId` varchar(50) NOT NULL,
  `roleId` varchar(50) NOT NULL,
  `status` bit(1) DEFAULT b'1',
  `displayOrder` int NOT NULL,
  PRIMARY KEY (`prAutoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.portletsusers
CREATE TABLE IF NOT EXISTS `portletsusers` (
  `ptAutoId` bigint NOT NULL AUTO_INCREMENT,
  `displayOrder` int NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `employeeId` varchar(50) DEFAULT NULL,
  `portletId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ptAutoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.producers
CREATE TABLE IF NOT EXISTS `producers` (
  `producerId` varchar(50) NOT NULL,
  `producerType` varchar(50) NOT NULL DEFAULT 'Producer',
  `producerName` varchar(50) DEFAULT NULL,
  `pwdExpiryDays` datetime DEFAULT NULL,
  `domainContext` varchar(100) DEFAULT NULL,
  `employeeId` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `isPrimary` bit(1) DEFAULT b'0',
  `emailId` varchar(50) DEFAULT NULL,
  `mobileNo` varchar(15) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `whatsAppNo` varchar(15) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `registrationDate` varchar(20) DEFAULT NULL,
  `customerStatus` varchar(25) DEFAULT 'Pending',
  PRIMARY KEY (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.producersattachments
CREATE TABLE IF NOT EXISTS `producersattachments` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `producerId` varchar(50) DEFAULT NULL,
  `documentStatus` varchar(50) DEFAULT NULL,
  `documentDesc` varchar(100) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(50) DEFAULT NULL,
  `uploadFileSize` bigint NOT NULL,
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.producerscollabrate
CREATE TABLE IF NOT EXISTS `producerscollabrate` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `producerId` varchar(50) NOT NULL,
  `collabraterId` varchar(50) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `modifiedBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.producersproperty
CREATE TABLE IF NOT EXISTS `producersproperty` (
  `autoId` varchar(50) NOT NULL,
  `producerId` varchar(50) NOT NULL,
  `groupName` varchar(50) NOT NULL,
  `enumKey` varchar(50) NOT NULL,
  `property` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `media` varchar(50) NOT NULL,
  `mediaMode` varchar(50) NOT NULL,
  `mediaType` varchar(50) NOT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.projectstatus
CREATE TABLE IF NOT EXISTS `projectstatus` (
  `rowNo` int DEFAULT NULL,
  `loggedInUser` varchar(50) DEFAULT NULL,
  `AllocationId` varchar(50) DEFAULT NULL,
  `DataId` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Division` varchar(50) DEFAULT NULL,
  `GroupName` varchar(50) DEFAULT NULL,
  `Project` varchar(50) DEFAULT NULL,
  `ReceivedDate` varchar(50) DEFAULT NULL,
  `WorkUnitId` varchar(50) DEFAULT NULL,
  `SubCountry` varchar(50) DEFAULT NULL,
  `RoadType` varchar(100) DEFAULT NULL,
  `WUMiles` varchar(50) DEFAULT NULL,
  `Remarks` varchar(500) DEFAULT NULL,
  `PDDoneBy` varchar(50) DEFAULT NULL,
  `PDTeam` varchar(50) DEFAULT NULL,
  `PDAllottedDate` varchar(50) DEFAULT NULL,
  `PDCompletedDate` varchar(50) DEFAULT NULL,
  `PDCompletedMiles` varchar(50) DEFAULT NULL,
  `PDTimeTaken` varchar(50) DEFAULT NULL,
  `PDEstimatedTime` varchar(50) DEFAULT NULL,
  `PDEfficiency` varchar(50) DEFAULT NULL,
  `PDStatus` varchar(50) DEFAULT NULL,
  `PDReason` varchar(50) DEFAULT NULL,
  `PDRemarks` varchar(500) DEFAULT NULL,
  `QCDoneBy` varchar(50) DEFAULT NULL,
  `QCTeam` varchar(50) DEFAULT NULL,
  `QCAllottedDate` varchar(50) DEFAULT NULL,
  `QCCompletedDate` varchar(50) DEFAULT NULL,
  `QCCompletedMiles` varchar(50) DEFAULT NULL,
  `QCTimeTaken` varchar(50) DEFAULT NULL,
  `QCEstimatedTime` varchar(50) DEFAULT NULL,
  `QCEfficiency` varchar(50) DEFAULT NULL,
  `QCStatus` varchar(50) DEFAULT NULL,
  `QCReason` varchar(50) DEFAULT NULL,
  `QCRemarks` varchar(500) DEFAULT NULL,
  `QADoneBy` varchar(50) DEFAULT NULL,
  `QATeam` varchar(50) DEFAULT NULL,
  `QAAllottedDate` varchar(50) DEFAULT NULL,
  `QACompletedDate` varchar(50) DEFAULT NULL,
  `QABatchNumber` varchar(50) DEFAULT NULL,
  `QAStatus` varchar(50) DEFAULT NULL,
  `QARemarks` varchar(500) DEFAULT NULL,
  `DeliveryStatus` varchar(50) DEFAULT NULL,
  `DeliveredDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.projectstatussummary
CREATE TABLE IF NOT EXISTS `projectstatussummary` (
  `loggedInUser` varchar(50) DEFAULT NULL,
  `projectId` varchar(50) DEFAULT NULL,
  `RoadId` varchar(50) DEFAULT NULL,
  `RoadType` varchar(50) DEFAULT NULL,
  `ReceivedMiles` float DEFAULT NULL,
  `ProdCompletedMiles` float DEFAULT NULL,
  `ProdInProgressMiles` float DEFAULT NULL,
  `ProdYetToStartMiles` float DEFAULT NULL,
  `QCCompletedMiles` float DEFAULT NULL,
  `QCInProgressMiles` float DEFAULT NULL,
  `QCYetToStartMiles` float DEFAULT NULL,
  `QAInProgressMiles` float DEFAULT NULL,
  `QACompletedMiles` float DEFAULT NULL,
  `QAYetToStartMiles` float DEFAULT NULL,
  `DeliveredMiles` float DEFAULT NULL,
  `OnHoldMiles` float DEFAULT NULL,
  `UndeliveredMiles` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `roleId` varchar(50) NOT NULL,
  `roleLevel` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `divisionId` varchar(50) DEFAULT NULL,
  `isDevSkill` bit(1) NOT NULL DEFAULT b'0',
  `isEffortSkill` bit(1) NOT NULL DEFAULT b'0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `isAdmin` bit(1) NOT NULL DEFAULT b'0',
  `hierarchy` varchar(50) NOT NULL COMMENT 'TopLevel - A , SubTopLevel - AA to AZ, \\\\\\\\r\\\\\\\\nNextLevel - B, SubNextLevel - BA to BZ and soon\\\\\\\\r\\\\\\\\nBottomLevel - Z\\\\\\\\r\\\\\\\\n',
  `displayOrder` int NOT NULL,
  `roleType` varchar(50) NOT NULL DEFAULT 'Role',
  `producerId` varchar(50) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  `roleLongName` varchar(50) NOT NULL,
  `roleShortName` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.sequence
CREATE TABLE IF NOT EXISTS `sequence` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `producerId` varchar(50) NOT NULL,
  `sequenceId` int NOT NULL,
  `sequenceKey` varchar(50) NOT NULL,
  `format` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.states
CREATE TABLE IF NOT EXISTS `states` (
  `state` varchar(50) NOT NULL,
  `country` varchar(20) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.task_delivery_mode
CREATE TABLE IF NOT EXISTS `task_delivery_mode` (
  `modeId` varchar(50) NOT NULL,
  `modeName` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`modeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.task_delivery_type
CREATE TABLE IF NOT EXISTS `task_delivery_type` (
  `deliveryId` varchar(50) NOT NULL,
  `deliveryTypeName` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`deliveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.task_units_measurements
CREATE TABLE IF NOT EXISTS `task_units_measurements` (
  `unitId` varchar(50) NOT NULL,
  `unitName` varchar(50) NOT NULL,
  `displayOrder` int NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`unitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for procedure data_process.test_report
DELIMITER //
CREATE PROCEDURE `test_report`()
BEGIN
  DECLARE var1 VARCHAR(50);
  DECLARE var2 VARCHAR(50);
  DECLARE bDone INT ;
  DECLARE curs CURSOR FOR SELECT teamId, allocationId FROM operational_task WHERE queueId = 'ProductionTeam' ;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET bDone = 1;
  
  OPEN curs;
  Reading_Orgs: LOOP
  FETCH curs INTO var1, var2;
  
  IF bDone = 1 THEN
     LEAVE Reading_Orgs;
  END IF;
    
  Update operational_task Set teamId = var1 WHERE queueId = 'Group' And nextAllocationId = var2 ;
  END LOOP;
  
  CLOSE curs;
END//
DELIMITER ;

-- Dumping structure for procedure data_process.test_report1
DELIMITER //
CREATE PROCEDURE `test_report1`()
BEGIN
  DECLARE var1 VARCHAR(50);
  DECLARE var2 VARCHAR(50);
  DECLARE bDone INT ;
  DECLARE curs CURSOR FOR SELECT groupId, reportingTo FROM operational_resource_group WHERE reportingTo In (SELECT distinct allotedTo FROM operational_task WHERE queueId = 'ProductionTeam'); 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET bDone = 1;
  
  OPEN curs;
  Reading_Orgs: LOOP
  FETCH curs INTO var1, var2;
  
  IF bDone = 1 THEN
     LEAVE Reading_Orgs;
  END IF;
    
  Update operational_task Set teamId = var1 WHERE queueId = 'ProductionTeam' And allotedTo = var2 ;
  END LOOP;
  
  CLOSE curs;
END//
DELIMITER ;

-- Dumping structure for table data_process.timesheetprocess
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

-- Data exporting was unselected.

-- Dumping structure for table data_process.timesheetprocessproject
CREATE TABLE IF NOT EXISTS `timesheetprocessproject` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `processId` varchar(50) NOT NULL,
  `projectId` varchar(50) DEFAULT NULL,
  `displayOrder` int NOT NULL DEFAULT '1',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_timesheetprocessproject_timesheetprocess` (`processId`),
  KEY `FK_timesheetprocessproject_operational_resource_project` (`projectId`),
  CONSTRAINT `FK_timesheetprocessproject_operational_resource_project` FOREIGN KEY (`projectId`) REFERENCES `operational_resource_project` (`projectId`),
  CONSTRAINT `FK_timesheetprocessproject_timesheetprocess` FOREIGN KEY (`processId`) REFERENCES `timesheetprocess` (`processId`)
) ENGINE=InnoDB AUTO_INCREMENT=975 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.users
CREATE TABLE IF NOT EXISTS `users` (
  `employeeId` varchar(50) NOT NULL,
  `producerId` varchar(50) DEFAULT NULL,
  `parentProducerId` varchar(50) DEFAULT NULL,
  `userType` varchar(50) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `folderToken` varchar(50) DEFAULT NULL,
  `userName` varchar(50) DEFAULT '0',
  `lastName` varchar(50) DEFAULT NULL,
  `fatherName` varchar(50) DEFAULT NULL,
  `spouseName` varchar(50) DEFAULT NULL,
  `userPwd` varchar(100) DEFAULT NULL,
  `userPwdModFlag` bit(1) DEFAULT b'0',
  `userPwdModDate` datetime DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `martial` varchar(50) DEFAULT NULL,
  `bloodGroup` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `userStatus` varchar(50) DEFAULT 'Pending',
  `token` varchar(200) DEFAULT NULL,
  `tokenExpiryDate` datetime DEFAULT NULL,
  `country` varchar(20) NOT NULL DEFAULT 'IN',
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  `projectId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `groupId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `teamId` varchar(50) DEFAULT NULL,
  `reportingTo` varchar(50) DEFAULT NULL,
  `departmentId` varchar(50) DEFAULT NULL,
  `divisionId` varchar(50) DEFAULT NULL,
  `loginRFDB_BPS` varchar(50) DEFAULT NULL,
  `trainingBatch` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employeeId`),
  KEY `FK_users_producers` (`producerId`),
  KEY `FK_users_country` (`country`),
  CONSTRAINT `FK_users_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersattachments
CREATE TABLE IF NOT EXISTS `usersattachments` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `employeeId` varchar(50) DEFAULT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadResourceHandler` varchar(50) NOT NULL DEFAULT 'Default',
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileSize` bigint NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_userattachments_users` (`employeeId`),
  CONSTRAINT `FK_userattachments_users` FOREIGN KEY (`employeeId`) REFERENCES `users` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersattendance
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
  `markedTime` datetime DEFAULT NULL,
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

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersdailylog
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
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=494927 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersholidayscalendar
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

-- Data exporting was unselected.

-- Dumping structure for table data_process.usershrrecords
CREATE TABLE IF NOT EXISTS `usershrrecords` (
  `autoId` varchar(50) NOT NULL,
  `employeeId` varchar(50) NOT NULL COMMENT 'Users',
  `dateOfJoin` datetime DEFAULT NULL,
  `infoAPL` varchar(50) DEFAULT NULL,
  `employmentStatus` varchar(50) DEFAULT NULL,
  `idCardEDR` varchar(50) DEFAULT NULL,
  `lastDesignation` varchar(50) DEFAULT NULL,
  `lastEmployer` varchar(50) DEFAULT NULL,
  `experienceInEDR` float DEFAULT '0',
  `experienceOutEDR` float DEFAULT '0',
  `fromNoticePeriod` datetime DEFAULT NULL,
  `toNoticePeriod` datetime DEFAULT NULL,
  `lastWorkDay` datetime DEFAULT NULL,
  `accountNo` varchar(50) DEFAULT NULL COMMENT 'BankAccounts',
  `bankName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ' COMMENT 'BankAccounts',
  `bankBranch` varchar(50) DEFAULT NULL COMMENT 'BankAccounts',
  `ifscCode` varchar(50) DEFAULT NULL COMMENT 'BankAccounts',
  `aadharNo` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `esicNo` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `panNo` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `providentFund` varchar(50) DEFAULT NULL COMMENT 'TaxInfo',
  `uanNo` varchar(50) DEFAULT ' ' COMMENT 'TaxInfo',
  `highestGraduate` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'EducationalInfo',
  `institution` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `year` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `markGrade` varchar(50) DEFAULT ' ' COMMENT 'EducationalInfo',
  `isApprentice` bit(1) NOT NULL DEFAULT b'0' COMMENT 'EducationalInfo',
  `isFileCreated` bit(1) NOT NULL DEFAULT b'0' COMMENT 'EducationalInfo',
  `isOfferIssued` bit(1) NOT NULL DEFAULT b'0' COMMENT 'EducationalInfo',
  `longLeaveFromDate` datetime DEFAULT NULL COMMENT 'EducationalInfo',
  `longLeaveToDate` datetime DEFAULT NULL COMMENT 'EducationalInfo',
  `longLeaveReason` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `recruitmentType` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `costToCompany` varchar(50) DEFAULT NULL COMMENT 'EducationalInfo',
  `vaccinateInfo` varchar(50) DEFAULT NULL,
  `approvedLeaveBalance` double DEFAULT '0',
  `leaveBalanceFlag` bit(1) NOT NULL DEFAULT b'1',
  `leaveBalanceDate` datetime DEFAULT NULL,
  `esiEligible` bit(1) NOT NULL DEFAULT b'0',
  `resignedFAndF` bit(1) NOT NULL DEFAULT b'0',
  `lastDrawnSalary` varchar(50) DEFAULT NULL,
  `nativeDistrict` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersitassets
CREATE TABLE IF NOT EXISTS `usersitassets` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `employeeId` varchar(50) DEFAULT NULL,
  `assetId` varchar(50) DEFAULT NULL,
  `serialNo` varchar(50) DEFAULT NULL,
  `brandId` varchar(50) DEFAULT NULL,
  `givenDate` datetime DEFAULT NULL,
  `receivedDate` datetime DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersitrecords
CREATE TABLE IF NOT EXISTS `usersitrecords` (
  `autoId` varchar(50) NOT NULL,
  `employeeId` varchar(50) NOT NULL,
  `workMode` varchar(50) DEFAULT NULL,
  `broadBandAccount` varchar(50) DEFAULT NULL,
  `broadBandBy` varchar(50) DEFAULT NULL,
  `internetPlan` varchar(50) DEFAULT NULL,
  `ispName` varchar(50) DEFAULT NULL,
  `staticIPAddress` varchar(50) DEFAULT NULL,
  `staticWhiteList` bit(1) NOT NULL DEFAULT b'0',
  `systemToHome` bit(1) NOT NULL DEFAULT b'0',
  `isDowngraded` bit(1) NOT NULL DEFAULT b'0',
  `downGradedPlan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersleavemanagement
CREATE TABLE IF NOT EXISTS `usersleavemanagement` (
  `leaveId` varchar(50) NOT NULL,
  `employeeId` varchar(50) NOT NULL,
  `noOfDays` double NOT NULL DEFAULT '0',
  `detectedLeave` double NOT NULL DEFAULT '0',
  `symbol` varchar(50) NOT NULL,
  `fromDate` datetime NOT NULL,
  `toDate` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  PRIMARY KEY (`leaveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.userslog
CREATE TABLE IF NOT EXISTS `userslog` (
  `autoId` int NOT NULL AUTO_INCREMENT,
  `employeeId` varchar(50) NOT NULL DEFAULT '0',
  `userLoginTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userLogoutTime` datetime DEFAULT '0000-00-00 00:00:00',
  `ipAddress` varchar(50) NOT NULL DEFAULT '0',
  `fetchBlock` bit(1) DEFAULT b'0',
  PRIMARY KEY (`autoId`),
  KEY `FK_LogUser_User_idx` (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersmedia
CREATE TABLE IF NOT EXISTS `usersmedia` (
  `mediaId` varchar(50) NOT NULL,
  `employeeId` varchar(50) NOT NULL,
  `mediaType` varchar(20) NOT NULL,
  `emailId` varchar(50) DEFAULT NULL,
  `personalEmailId` varchar(50) DEFAULT NULL,
  `mobileNo` varchar(20) DEFAULT NULL,
  `alternateMobile` varchar(20) DEFAULT NULL,
  `emergencyContactNo` varchar(20) DEFAULT NULL,
  `communicationAddress` varchar(500) DEFAULT NULL,
  `permanentAddress` varchar(500) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersresourceproject
CREATE TABLE IF NOT EXISTS `usersresourceproject` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `employeeId` varchar(50) NOT NULL,
  `projectId` varchar(50) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.usersroles
CREATE TABLE IF NOT EXISTS `usersroles` (
  `autoId` bigint NOT NULL AUTO_INCREMENT,
  `employeeId` varchar(50) NOT NULL,
  `roleId` varchar(50) NOT NULL,
  `userRoleType` varchar(50) DEFAULT 'Default',
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=21360 DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.userstimesheet
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

-- Data exporting was unselected.

-- Dumping structure for table data_process.wu_delivery_overall
CREATE TABLE IF NOT EXISTS `wu_delivery_overall` (
  `SNo` int DEFAULT '0',
  `loggedInUser` varchar(50) DEFAULT NULL,
  `projectId` varchar(50) DEFAULT NULL,
  `ReceivedDate` varchar(50) DEFAULT NULL,
  `TotalReceivedMiles` float DEFAULT '0',
  `ProdCompletedMiles` float DEFAULT '0',
  `ProdPendingMiles` float DEFAULT '0',
  `QCCompletedMiles` float DEFAULT '0',
  `QCPendingMiles` float DEFAULT '0',
  `DeliveredMiles` float DEFAULT '0',
  `OnHoldMiles` float DEFAULT '0',
  `Difference` float DEFAULT '0',
  `Status` varchar(50) DEFAULT NULL,
  `BPSPlannedCompletionDate` varchar(50) DEFAULT NULL,
  `ActualCompletedDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

-- Dumping structure for table data_process.wu_delivery_total
CREATE TABLE IF NOT EXISTS `wu_delivery_total` (
  `SNo` int DEFAULT '0',
  `loggedInUser` varchar(50) DEFAULT NULL,
  `projectId` varchar(50) DEFAULT NULL,
  `ReceivedMonth` varchar(50) DEFAULT NULL,
  `TotalReceivedMiles` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
