-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ecas
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `alladmin`
--

DROP TABLE IF EXISTS `alladmin`;
/*!50001 DROP VIEW IF EXISTS `alladmin`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `alladmin` AS SELECT 
 1 AS `AdminNo`,
 1 AS `StaffNo`,
 1 AS `AdminName`,
 1 AS `AdminPassword`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allcommodity`
--

DROP TABLE IF EXISTS `allcommodity`;
/*!50001 DROP VIEW IF EXISTS `allcommodity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allcommodity` AS SELECT 
 1 AS `CommodityNo`,
 1 AS `CommodityName`,
 1 AS `Price`,
 1 AS `CommodityType`,
 1 AS `StockQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allcustomer`
--

DROP TABLE IF EXISTS `allcustomer`;
/*!50001 DROP VIEW IF EXISTS `allcustomer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allcustomer` AS SELECT 
 1 AS `CustomerNo`,
 1 AS `CustomerGender`,
 1 AS `CustomerAge`,
 1 AS `CustomerCity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `alldataanalyst`
--

DROP TABLE IF EXISTS `alldataanalyst`;
/*!50001 DROP VIEW IF EXISTS `alldataanalyst`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `alldataanalyst` AS SELECT 
 1 AS `AnalystNo`,
 1 AS `StaffNo`,
 1 AS `AnalystName`,
 1 AS `AnalystPassword`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allrecord`
--

DROP TABLE IF EXISTS `allrecord`;
/*!50001 DROP VIEW IF EXISTS `allrecord`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allrecord` AS SELECT 
 1 AS `RecordNo`,
 1 AS `PurchaseTime`,
 1 AS `CustomerNo`,
 1 AS `CommodityNo`,
 1 AS `UnitPrice`,
 1 AS `Quantity`,
 1 AS `TotalPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allreport`
--

DROP TABLE IF EXISTS `allreport`;
/*!50001 DROP VIEW IF EXISTS `allreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allreport` AS SELECT 
 1 AS `ReportNo`,
 1 AS `ReportTitle`,
 1 AS `ReportType`,
 1 AS `ReportText`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allsafetyspecialist`
--

DROP TABLE IF EXISTS `allsafetyspecialist`;
/*!50001 DROP VIEW IF EXISTS `allsafetyspecialist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allsafetyspecialist` AS SELECT 
 1 AS `SafetyNo`,
 1 AS `StaffNo`,
 1 AS `SafetyName`,
 1 AS `SafetyPassword`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allsalesmanager`
--

DROP TABLE IF EXISTS `allsalesmanager`;
/*!50001 DROP VIEW IF EXISTS `allsalesmanager`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allsalesmanager` AS SELECT 
 1 AS `ManagerNo`,
 1 AS `StaffNo`,
 1 AS `ManagerName`,
 1 AS `ManagerPassword`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allstaff`
--

DROP TABLE IF EXISTS `allstaff`;
/*!50001 DROP VIEW IF EXISTS `allstaff`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allstaff` AS SELECT 
 1 AS `StaffNo`,
 1 AS `StaffName`,
 1 AS `StaffAge`,
 1 AS `StaffGender`,
 1 AS `StaffPosition`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodity` (
  `CommodityNo` varchar(5) NOT NULL,
  `CommodityName` varchar(255) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `CommodityType` varchar(30) NOT NULL,
  `StockQuantity` int(11) NOT NULL,
  PRIMARY KEY (`CommodityNo`),
  UNIQUE KEY `CommodityNo` (`CommodityNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity`
--

LOCK TABLES `commodity` WRITE;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` VALUES ('A0001','Beats Solo3 Headphones',179,'Electronics',300),('A0002','Lenovo Chromebook C330',330,'Electronics',50),('A0003','Innopure Vitamin C Tablets 1000mg',13,'Health',300),('A0004','Adidas Men\'s Entrada',31,'Clothing',600),('A0005','Converse Hi-Top Trainers',130,'Shoes',140),('A0006','Canon EOX 4000D Camera',312,'Electronics',50),('A0007','10PCS Dustproof Face Mask',9,'Health',2000),('A0008','Method Ginger Twist Hand Wash',8,'Health',150),('A0009','Under Armour Pursuit 2 Running',81,'Shoes',130),('A0010','HIKARO Women\'s Short',20,'Clothing',170);
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerNo` varchar(10) NOT NULL,
  `CustomerGender` char(1) NOT NULL,
  `CustomerAge` int(11) DEFAULT NULL,
  `CustomerCity` varchar(30) NOT NULL,
  PRIMARY KEY (`CustomerNo`),
  UNIQUE KEY `CustomerNo` (`CustomerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('A01','F',26,'Birmingham'),('A02','M',NULL,'Manchester'),('A03','F',30,'Liverpool'),('A04','F',20,'Bristol'),('A05','M',32,'Swansea'),('A06','F',38,'Glasgow');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataanalyst`
--

DROP TABLE IF EXISTS `dataanalyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataanalyst` (
  `AnalystNo` varchar(5) NOT NULL,
  `StaffNo` varchar(5) NOT NULL,
  `AnalystName` varchar(30) NOT NULL,
  `AnalystPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`AnalystNo`),
  UNIQUE KEY `AnalystNo` (`AnalystNo`),
  UNIQUE KEY `StaffNo` (`StaffNo`),
  UNIQUE KEY `AnalystPassword` (`AnalystPassword`),
  CONSTRAINT `dataanalyst_ibfk_1` FOREIGN KEY (`StaffNo`) REFERENCES `tradingcompanystaff` (`StaffNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataanalyst`
--

LOCK TABLES `dataanalyst` WRITE;
/*!40000 ALTER TABLE `dataanalyst` DISABLE KEYS */;
INSERT INTO `dataanalyst` VALUES ('DA001','40001','Sara Legge','DAsl12345'),('DA002','40002','Keisha Wilson','DAkw67890'),('DA003','40003','Sania Padilla','DAsp54321');
/*!40000 ALTER TABLE `dataanalyst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databaseadministrator`
--

DROP TABLE IF EXISTS `databaseadministrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databaseadministrator` (
  `AdminNo` varchar(5) NOT NULL,
  `StaffNo` varchar(5) NOT NULL,
  `AdminName` varchar(30) NOT NULL,
  `AdminPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`AdminNo`),
  UNIQUE KEY `AdminNo` (`AdminNo`),
  UNIQUE KEY `StaffNo` (`StaffNo`),
  UNIQUE KEY `AdminPassword` (`AdminPassword`),
  CONSTRAINT `databaseadministrator_ibfk_1` FOREIGN KEY (`StaffNo`) REFERENCES `tradingcompanystaff` (`StaffNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databaseadministrator`
--

LOCK TABLES `databaseadministrator` WRITE;
/*!40000 ALTER TABLE `databaseadministrator` DISABLE KEYS */;
INSERT INTO `databaseadministrator` VALUES ('DBA01','20001','Bill Webber','DBAbw12345'),('DBA02','20002','Charley Petty','DBAcp67890');
/*!40000 ALTER TABLE `databaseadministrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safetyspecialist`
--

DROP TABLE IF EXISTS `safetyspecialist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safetyspecialist` (
  `SafetyNo` varchar(5) NOT NULL,
  `StaffNo` varchar(5) NOT NULL,
  `SafetyName` varchar(30) NOT NULL,
  `SafetyPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`SafetyNo`),
  UNIQUE KEY `SafetyNo` (`SafetyNo`),
  UNIQUE KEY `StaffNo` (`StaffNo`),
  UNIQUE KEY `SafetyPassword` (`SafetyPassword`),
  CONSTRAINT `safetyspecialist_ibfk_1` FOREIGN KEY (`StaffNo`) REFERENCES `tradingcompanystaff` (`StaffNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safetyspecialist`
--

LOCK TABLES `safetyspecialist` WRITE;
/*!40000 ALTER TABLE `safetyspecialist` DISABLE KEYS */;
INSERT INTO `safetyspecialist` VALUES ('SS001','30001','Bogdan Hoffman','SSbh12345'),('SS002','30002','Edward Metcalfe','SSem67890');
/*!40000 ALTER TABLE `safetyspecialist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesmanager`
--

DROP TABLE IF EXISTS `salesmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesmanager` (
  `ManagerNo` varchar(5) NOT NULL,
  `StaffNo` varchar(5) NOT NULL,
  `ManagerName` varchar(30) NOT NULL,
  `ManagerPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`ManagerNo`),
  UNIQUE KEY `ManagerNo` (`ManagerNo`),
  UNIQUE KEY `StaffNo` (`StaffNo`),
  UNIQUE KEY `ManagerPassword` (`ManagerPassword`),
  CONSTRAINT `salesmanager_ibfk_1` FOREIGN KEY (`StaffNo`) REFERENCES `tradingcompanystaff` (`StaffNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesmanager`
--

LOCK TABLES `salesmanager` WRITE;
/*!40000 ALTER TABLE `salesmanager` DISABLE KEYS */;
INSERT INTO `salesmanager` VALUES ('SM001','10001','Vlad Bird','SMvb12345'),('SM002','10002','Archie Grey','SMag67890'),('SM003','10003','Jaden Bell','SMjb54321');
/*!40000 ALTER TABLE `salesmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesreport`
--

DROP TABLE IF EXISTS `salesreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesreport` (
  `ReportNo` varchar(5) NOT NULL,
  `ReportTitle` varchar(255) NOT NULL,
  `ReportType` char(1) NOT NULL,
  `ReportText` text NOT NULL,
  PRIMARY KEY (`ReportNo`),
  UNIQUE KEY `ReportNo` (`ReportNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesreport`
--

LOCK TABLES `salesreport` WRITE;
/*!40000 ALTER TABLE `salesreport` DISABLE KEYS */;
INSERT INTO `salesreport` VALUES ('RA001','Sample Report','A','This is just a sample report.'),('RA002','Sample Report 2','M','This is the second sample report.'),('RA003','Report Written by Data Analyst','M','This is a sample report written by data analyst.');
/*!40000 ALTER TABLE `salesreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingrecord`
--

DROP TABLE IF EXISTS `shoppingrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingrecord` (
  `RecordNo` varchar(20) NOT NULL,
  `PurchaseTime` datetime NOT NULL,
  `CustomerNo` varchar(10) NOT NULL,
  `CommodityNo` varchar(5) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  PRIMARY KEY (`RecordNo`),
  UNIQUE KEY `RecordNo` (`RecordNo`),
  KEY `CustomerNo` (`CustomerNo`),
  KEY `CommodityNo` (`CommodityNo`),
  CONSTRAINT `shoppingrecord_ibfk_1` FOREIGN KEY (`CustomerNo`) REFERENCES `customer` (`CustomerNo`),
  CONSTRAINT `shoppingrecord_ibfk_2` FOREIGN KEY (`CommodityNo`) REFERENCES `commodity` (`CommodityNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingrecord`
--

LOCK TABLES `shoppingrecord` WRITE;
/*!40000 ALTER TABLE `shoppingrecord` DISABLE KEYS */;
INSERT INTO `shoppingrecord` VALUES ('SR001','2020-02-19 09:23:30','A01','A0001',179,1,179),('SR002','2020-02-19 09:23:30','A01','A0002',330,1,330),('SR003','2020-03-01 14:11:12','A02','A0003',13,4,52),('SR004','2020-04-02 00:00:00','A03','A0002',330,1,330),('SR005','2020-01-22 20:12:07','A04','A0002',330,2,660),('SR006','2020-04-15 19:07:26','A06','A0007',9,10,90),('SR007','2019-08-21 20:25:04','A05','A0010',20,2,40),('SR008','2019-12-20 23:11:02','A03','A0005',130,1,130),('SR009','2020-04-15 19:07:26','A06','A0004',31,3,93),('SR010','2019-11-22 16:14:25','A03','A0008',6,3,18);
/*!40000 ALTER TABLE `shoppingrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tradingcompanystaff`
--

DROP TABLE IF EXISTS `tradingcompanystaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradingcompanystaff` (
  `StaffNo` varchar(5) NOT NULL,
  `StaffName` varchar(30) NOT NULL,
  `StaffAge` int(11) NOT NULL DEFAULT '20',
  `StaffGender` char(1) NOT NULL,
  `StaffPosition` varchar(30) NOT NULL,
  PRIMARY KEY (`StaffNo`),
  UNIQUE KEY `StaffNo` (`StaffNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tradingcompanystaff`
--

LOCK TABLES `tradingcompanystaff` WRITE;
/*!40000 ALTER TABLE `tradingcompanystaff` DISABLE KEYS */;
INSERT INTO `tradingcompanystaff` VALUES ('10001','Vlad Bird',49,'M','Sales Manager'),('10002','Archie Grey',38,'M','Sales Manager'),('10003','Jaden Bell',40,'F','Sales Manager'),('20001','Bill Webber',26,'M','Database Administrator'),('20002','Charley Petty',30,'F','Database Administrator'),('30001','Bogdan Hoffman',26,'M','Safety Specialist'),('30002','Edward Metcalfe',33,'M','Safety Specialist'),('40001','Sara Legge',24,'F','Data Analyst'),('40002','Keisha Wilson',28,'F','Data Analyst'),('40003','Sania Padilla',29,'F','Data Analyst');
/*!40000 ALTER TABLE `tradingcompanystaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `alladmin`
--

/*!50001 DROP VIEW IF EXISTS `alladmin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alladmin` AS select `databaseadministrator`.`AdminNo` AS `AdminNo`,`databaseadministrator`.`StaffNo` AS `StaffNo`,`databaseadministrator`.`AdminName` AS `AdminName`,`databaseadministrator`.`AdminPassword` AS `AdminPassword` from `databaseadministrator` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allcommodity`
--

/*!50001 DROP VIEW IF EXISTS `allcommodity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allcommodity` AS select `commodity`.`CommodityNo` AS `CommodityNo`,`commodity`.`CommodityName` AS `CommodityName`,`commodity`.`Price` AS `Price`,`commodity`.`CommodityType` AS `CommodityType`,`commodity`.`StockQuantity` AS `StockQuantity` from `commodity` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allcustomer`
--

/*!50001 DROP VIEW IF EXISTS `allcustomer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allcustomer` AS select `customer`.`CustomerNo` AS `CustomerNo`,`customer`.`CustomerGender` AS `CustomerGender`,`customer`.`CustomerAge` AS `CustomerAge`,`customer`.`CustomerCity` AS `CustomerCity` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alldataanalyst`
--

/*!50001 DROP VIEW IF EXISTS `alldataanalyst`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alldataanalyst` AS select `dataanalyst`.`AnalystNo` AS `AnalystNo`,`dataanalyst`.`StaffNo` AS `StaffNo`,`dataanalyst`.`AnalystName` AS `AnalystName`,`dataanalyst`.`AnalystPassword` AS `AnalystPassword` from `dataanalyst` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allrecord`
--

/*!50001 DROP VIEW IF EXISTS `allrecord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allrecord` AS select `shoppingrecord`.`RecordNo` AS `RecordNo`,`shoppingrecord`.`PurchaseTime` AS `PurchaseTime`,`shoppingrecord`.`CustomerNo` AS `CustomerNo`,`shoppingrecord`.`CommodityNo` AS `CommodityNo`,`shoppingrecord`.`UnitPrice` AS `UnitPrice`,`shoppingrecord`.`Quantity` AS `Quantity`,`shoppingrecord`.`TotalPrice` AS `TotalPrice` from `shoppingrecord` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allreport`
--

/*!50001 DROP VIEW IF EXISTS `allreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allreport` AS select `salesreport`.`ReportNo` AS `ReportNo`,`salesreport`.`ReportTitle` AS `ReportTitle`,`salesreport`.`ReportType` AS `ReportType`,`salesreport`.`ReportText` AS `ReportText` from `salesreport` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allsafetyspecialist`
--

/*!50001 DROP VIEW IF EXISTS `allsafetyspecialist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allsafetyspecialist` AS select `safetyspecialist`.`SafetyNo` AS `SafetyNo`,`safetyspecialist`.`StaffNo` AS `StaffNo`,`safetyspecialist`.`SafetyName` AS `SafetyName`,`safetyspecialist`.`SafetyPassword` AS `SafetyPassword` from `safetyspecialist` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allsalesmanager`
--

/*!50001 DROP VIEW IF EXISTS `allsalesmanager`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allsalesmanager` AS select `salesmanager`.`ManagerNo` AS `ManagerNo`,`salesmanager`.`StaffNo` AS `StaffNo`,`salesmanager`.`ManagerName` AS `ManagerName`,`salesmanager`.`ManagerPassword` AS `ManagerPassword` from `salesmanager` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allstaff`
--

/*!50001 DROP VIEW IF EXISTS `allstaff`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allstaff` AS select `tradingcompanystaff`.`StaffNo` AS `StaffNo`,`tradingcompanystaff`.`StaffName` AS `StaffName`,`tradingcompanystaff`.`StaffAge` AS `StaffAge`,`tradingcompanystaff`.`StaffGender` AS `StaffGender`,`tradingcompanystaff`.`StaffPosition` AS `StaffPosition` from `tradingcompanystaff` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-22 21:27:29
