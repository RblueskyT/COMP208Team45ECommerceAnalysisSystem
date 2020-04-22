-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: Commodity
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estimate`
--

DROP TABLE IF EXISTS `estimate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estimate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `profit` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate`
--

LOCK TABLES `estimate` WRITE;
/*!40000 ALTER TABLE `estimate` DISABLE KEYS */;
INSERT INTO `estimate` VALUES (1,'2020-09-27',233.1672757864),(2,'2020-09-28',233.700916171074),(3,'2020-09-29',234.233021736145),(4,'2020-09-30',234.763383865356),(5,'2020-10-01',235.292166471481),(6,'2020-10-02',235.819175839424),(7,'2020-10-03',236.344695091248);
/*!40000 ALTER TABLE `estimate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `profit` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (1,'2018-01-02',249.001),(2,'2018-01-03',248.004),(3,'2018-01-04',247.009),(4,'2018-01-05',246.016),(5,'2018-01-06',245.025),(6,'2018-01-07',244.036),(7,'2018-01-08',243.049),(8,'2018-01-09',242.064),(9,'2018-01-10',241.081),(10,'2018-01-11',240.1),(11,'2018-01-12',239.121),(12,'2018-01-13',238.144),(13,'2018-01-14',237.169),(14,'2018-01-15',236.196),(15,'2018-01-16',235.225),(16,'2018-01-17',234.256),(17,'2018-01-18',233.289),(18,'2018-01-19',232.324),(19,'2018-01-20',231.361),(20,'2018-01-21',230.4),(21,'2018-01-22',229.441),(22,'2018-01-23',228.484),(23,'2018-01-24',227.529),(24,'2018-01-25',226.576),(25,'2018-01-26',225.625),(26,'2018-01-27',224.676),(27,'2018-01-28',223.729),(28,'2018-01-29',222.784),(29,'2018-01-30',221.841),(30,'2018-01-31',220.9),(31,'2018-02-01',219.961),(32,'2018-02-02',219.024),(33,'2018-02-03',218.089),(34,'2018-02-04',217.156),(35,'2018-02-05',216.225),(36,'2018-02-06',215.296),(37,'2018-02-07',214.369),(38,'2018-02-08',213.444),(39,'2018-02-09',212.521),(40,'2018-02-10',211.6),(41,'2018-02-11',210.681),(42,'2018-02-12',209.764),(43,'2018-02-13',208.849),(44,'2018-02-14',207.936),(45,'2018-02-15',207.025),(46,'2018-02-16',206.116),(47,'2018-02-17',205.209),(48,'2018-02-18',204.304),(49,'2018-02-19',203.401),(50,'2018-02-20',202.5),(51,'2018-02-21',201.601),(52,'2018-02-22',200.704),(53,'2018-02-23',199.809),(54,'2018-02-24',198.916),(55,'2018-02-25',198.025),(56,'2018-02-26',197.136),(57,'2018-02-27',196.249),(58,'2018-02-28',195.364),(59,'2018-03-01',194.481),(60,'2018-03-02',193.6),(61,'2018-03-03',192.721),(62,'2018-03-04',191.844),(63,'2018-03-05',190.969),(64,'2018-03-06',190.096),(65,'2018-03-07',189.225),(66,'2018-03-08',188.356),(67,'2018-03-09',187.489),(68,'2018-03-10',186.624),(69,'2018-03-11',185.761),(70,'2018-03-12',184.9),(71,'2018-03-13',184.041),(72,'2018-03-14',183.184),(73,'2018-03-15',182.329),(74,'2018-03-16',181.476),(75,'2018-03-17',180.625),(76,'2018-03-18',179.776),(77,'2018-03-19',178.929),(78,'2018-03-20',178.084),(79,'2018-03-21',177.241),(80,'2018-03-22',176.4),(81,'2018-03-23',175.561),(82,'2018-03-24',174.724),(83,'2018-03-25',173.889),(84,'2018-03-26',173.056),(85,'2018-03-27',172.225),(86,'2018-03-28',171.396),(87,'2018-03-29',170.569),(88,'2018-03-30',169.744),(89,'2018-03-31',168.921),(90,'2018-04-01',168.1),(91,'2018-04-02',167.281),(92,'2018-04-03',166.464),(93,'2018-04-04',165.649),(94,'2018-04-05',164.836),(95,'2018-04-06',164.025),(96,'2018-04-07',163.216),(97,'2018-04-08',162.409),(98,'2018-04-09',161.604),(99,'2018-04-10',160.801),(100,'2018-04-11',160),(101,'2018-04-12',159.201),(102,'2018-04-13',158.404),(103,'2018-04-14',157.609),(104,'2018-04-15',156.816),(105,'2018-04-16',156.025),(106,'2018-04-17',155.236),(107,'2018-04-18',154.449),(108,'2018-04-19',153.664),(109,'2018-04-20',152.881),(110,'2018-04-21',152.1),(111,'2018-04-22',151.321),(112,'2018-04-23',150.544),(113,'2018-04-24',149.769),(114,'2018-04-25',148.996),(115,'2018-04-26',148.225),(116,'2018-04-27',147.456),(117,'2018-04-28',146.689),(118,'2018-04-29',145.924),(119,'2018-04-30',145.161),(120,'2018-05-01',144.4),(121,'2018-05-02',143.641),(122,'2018-05-03',142.884),(123,'2018-05-04',142.129),(124,'2018-05-05',141.376),(125,'2018-05-06',140.625),(126,'2018-05-07',139.876),(127,'2018-05-08',139.129),(128,'2018-05-09',138.384),(129,'2018-05-10',137.641),(130,'2018-05-11',136.9),(131,'2018-05-12',136.161),(132,'2018-05-13',135.424),(133,'2018-05-14',134.689),(134,'2018-05-15',133.956),(135,'2018-05-16',133.225),(136,'2018-05-17',132.496),(137,'2018-05-18',131.769),(138,'2018-05-19',131.044),(139,'2018-05-20',130.321),(140,'2018-05-21',129.6),(141,'2018-05-22',128.881),(142,'2018-05-23',128.164),(143,'2018-05-24',127.449),(144,'2018-05-25',126.736),(145,'2018-05-26',126.025),(146,'2018-05-27',125.316),(147,'2018-05-28',124.609),(148,'2018-05-29',123.904),(149,'2018-05-30',123.201),(150,'2018-05-31',122.5),(151,'2018-06-01',121.801),(152,'2018-06-02',121.104),(153,'2018-06-03',120.409),(154,'2018-06-04',119.716),(155,'2018-06-05',119.025),(156,'2018-06-06',118.336),(157,'2018-06-07',117.649),(158,'2018-06-08',116.964),(159,'2018-06-09',116.281),(160,'2018-06-10',115.6),(161,'2018-06-11',114.921),(162,'2018-06-12',114.244),(163,'2018-06-13',113.569),(164,'2018-06-14',112.896),(165,'2018-06-15',112.225),(166,'2018-06-16',111.556),(167,'2018-06-17',110.889),(168,'2018-06-18',110.224),(169,'2018-06-19',109.561),(170,'2018-06-20',108.9),(171,'2018-06-21',108.241),(172,'2018-06-22',107.584),(173,'2018-06-23',106.929),(174,'2018-06-24',106.276),(175,'2018-06-25',105.625),(176,'2018-06-26',104.976),(177,'2018-06-27',104.329),(178,'2018-06-28',103.684),(179,'2018-06-29',103.041),(180,'2018-06-30',102.4),(181,'2018-07-01',101.761),(182,'2018-07-02',101.124),(183,'2018-07-03',100.489),(184,'2018-07-04',99.856),(185,'2018-07-05',99.225),(186,'2018-07-06',98.596),(187,'2018-07-07',97.969),(188,'2018-07-08',97.344),(189,'2018-07-09',96.721),(190,'2018-07-10',96.1),(191,'2018-07-11',95.481),(192,'2018-07-12',94.864),(193,'2018-07-13',94.249),(194,'2018-07-14',93.636),(195,'2018-07-15',93.025),(196,'2018-07-16',92.416),(197,'2018-07-17',91.809),(198,'2018-07-18',91.204),(199,'2018-07-19',90.601),(200,'2018-07-20',90),(201,'2018-07-21',89.401),(202,'2018-07-22',88.804),(203,'2018-07-23',88.209),(204,'2018-07-24',87.616),(205,'2018-07-25',87.025),(206,'2018-07-26',86.436),(207,'2018-07-27',85.849),(208,'2018-07-28',85.264),(209,'2018-07-29',84.681),(210,'2018-07-30',84.1),(211,'2018-07-31',83.521),(212,'2018-08-01',82.944),(213,'2018-08-02',82.369),(214,'2018-08-03',81.796),(215,'2018-08-04',81.225),(216,'2018-08-05',80.656),(217,'2018-08-06',80.089),(218,'2018-08-07',79.524),(219,'2018-08-08',78.961),(220,'2018-08-09',78.4),(221,'2018-08-10',77.841),(222,'2018-08-11',77.284),(223,'2018-08-12',76.729),(224,'2018-08-13',76.176),(225,'2018-08-14',75.625),(226,'2018-08-15',75.076),(227,'2018-08-16',74.529),(228,'2018-08-17',73.984),(229,'2018-08-18',73.441),(230,'2018-08-19',72.9),(231,'2018-08-20',72.361),(232,'2018-08-21',71.824),(233,'2018-08-22',71.289),(234,'2018-08-23',70.756),(235,'2018-08-24',70.225),(236,'2018-08-25',69.696),(237,'2018-08-26',69.169),(238,'2018-08-27',68.644),(239,'2018-08-28',68.121),(240,'2018-08-29',67.6),(241,'2018-08-30',67.081),(242,'2018-08-31',66.564),(243,'2018-09-01',66.049),(244,'2018-09-02',65.536),(245,'2018-09-03',65.025),(246,'2018-09-04',64.516),(247,'2018-09-05',64.009),(248,'2018-09-06',63.504),(249,'2018-09-07',63.001),(250,'2018-09-08',62.5),(251,'2018-09-09',62.001),(252,'2018-09-10',61.504),(253,'2018-09-11',61.009),(254,'2018-09-12',60.516),(255,'2018-09-13',60.025),(256,'2018-09-14',59.536),(257,'2018-09-15',59.049),(258,'2018-09-16',58.564),(259,'2018-09-17',58.081),(260,'2018-09-18',57.6),(261,'2018-09-19',57.121),(262,'2018-09-20',56.644),(263,'2018-09-21',56.169),(264,'2018-09-22',55.696),(265,'2018-09-23',55.225),(266,'2018-09-24',54.756),(267,'2018-09-25',54.289),(268,'2018-09-26',53.824),(269,'2018-09-27',53.361),(270,'2018-09-28',52.9),(271,'2018-09-29',52.441),(272,'2018-09-30',51.984),(273,'2018-10-01',51.529),(274,'2018-10-02',51.076),(275,'2018-10-03',50.625),(276,'2018-10-04',50.176),(277,'2018-10-05',49.729),(278,'2018-10-06',49.284),(279,'2018-10-07',48.841),(280,'2018-10-08',48.4),(281,'2018-10-09',47.961),(282,'2018-10-10',47.524),(283,'2018-10-11',47.089),(284,'2018-10-12',46.656),(285,'2018-10-13',46.225),(286,'2018-10-14',45.796),(287,'2018-10-15',45.369),(288,'2018-10-16',44.944),(289,'2018-10-17',44.521),(290,'2018-10-18',44.1),(291,'2018-10-19',43.681),(292,'2018-10-20',43.264),(293,'2018-10-21',42.849),(294,'2018-10-22',42.436),(295,'2018-10-23',42.025),(296,'2018-10-24',41.616),(297,'2018-10-25',41.209),(298,'2018-10-26',40.804),(299,'2018-10-27',40.401),(300,'2018-10-28',40),(301,'2018-10-29',39.601),(302,'2018-10-30',39.204),(303,'2018-10-31',38.809),(304,'2018-11-01',38.416),(305,'2018-11-02',38.025),(306,'2018-11-03',37.636),(307,'2018-11-04',37.249),(308,'2018-11-05',36.864),(309,'2018-11-06',36.481),(310,'2018-11-07',36.1),(311,'2018-11-08',35.721),(312,'2018-11-09',35.344),(313,'2018-11-10',34.969),(314,'2018-11-11',34.596),(315,'2018-11-12',34.225),(316,'2018-11-13',33.856),(317,'2018-11-14',33.489),(318,'2018-11-15',33.124),(319,'2018-11-16',32.761),(320,'2018-11-17',32.4),(321,'2018-11-18',32.041),(322,'2018-11-19',31.684),(323,'2018-11-20',31.329),(324,'2018-11-21',30.976),(325,'2018-11-22',30.625),(326,'2018-11-23',30.276),(327,'2018-11-24',29.929),(328,'2018-11-25',29.584),(329,'2018-11-26',29.241),(330,'2018-11-27',28.9),(331,'2018-11-28',28.561),(332,'2018-11-29',28.224),(333,'2018-11-30',27.889),(334,'2018-12-01',27.556),(335,'2018-12-02',27.225),(336,'2018-12-03',26.896),(337,'2018-12-04',26.569),(338,'2018-12-05',26.244),(339,'2018-12-06',25.921),(340,'2018-12-07',25.6),(341,'2018-12-08',25.281),(342,'2018-12-09',24.964),(343,'2018-12-10',24.649),(344,'2018-12-11',24.336),(345,'2018-12-12',24.025),(346,'2018-12-13',23.716),(347,'2018-12-14',23.409),(348,'2018-12-15',23.104),(349,'2018-12-16',22.801),(350,'2018-12-17',22.5),(351,'2018-12-18',22.201),(352,'2018-12-19',21.904),(353,'2018-12-20',21.609),(354,'2018-12-21',21.316),(355,'2018-12-22',21.025),(356,'2018-12-23',20.736),(357,'2018-12-24',20.449),(358,'2018-12-25',20.164),(359,'2018-12-26',19.881),(360,'2018-12-27',19.6),(361,'2018-12-28',19.321),(362,'2018-12-29',19.044),(363,'2018-12-30',18.769),(364,'2018-12-31',18.496),(365,'2019-01-01',18.225),(366,'2019-01-02',17.956),(367,'2019-01-03',17.689),(368,'2019-01-04',17.424),(369,'2019-01-05',17.161),(370,'2019-01-06',16.9),(371,'2019-01-07',16.641),(372,'2019-01-08',16.384),(373,'2019-01-09',16.129),(374,'2019-01-10',15.876),(375,'2019-01-11',15.625),(376,'2019-01-12',15.376),(377,'2019-01-13',15.129),(378,'2019-01-14',14.884),(379,'2019-01-15',14.641),(380,'2019-01-16',14.4),(381,'2019-01-17',14.161),(382,'2019-01-18',13.924),(383,'2019-01-19',13.689),(384,'2019-01-20',13.456),(385,'2019-01-21',13.225),(386,'2019-01-22',12.996),(387,'2019-01-23',12.769),(388,'2019-01-24',12.544),(389,'2019-01-25',12.321),(390,'2019-01-26',12.1),(391,'2019-01-27',11.881),(392,'2019-01-28',11.664),(393,'2019-01-29',11.449),(394,'2019-01-30',11.236),(395,'2019-01-31',11.025),(396,'2019-02-01',10.816),(397,'2019-02-02',10.609),(398,'2019-02-03',10.404),(399,'2019-02-04',10.201),(400,'2019-02-05',10),(401,'2019-02-06',9.801),(402,'2019-02-07',9.604),(403,'2019-02-08',9.409),(404,'2019-02-09',9.216),(405,'2019-02-10',9.025),(406,'2019-02-11',8.836),(407,'2019-02-12',8.649),(408,'2019-02-13',8.464),(409,'2019-02-14',8.281),(410,'2019-02-15',8.1),(411,'2019-02-16',7.921),(412,'2019-02-17',7.744),(413,'2019-02-18',7.569),(414,'2019-02-19',7.396),(415,'2019-02-20',7.225),(416,'2019-02-21',7.056),(417,'2019-02-22',6.889),(418,'2019-02-23',6.724),(419,'2019-02-24',6.561),(420,'2019-02-25',6.4),(421,'2019-02-26',6.241),(422,'2019-02-27',6.084),(423,'2019-02-28',5.929),(424,'2019-03-01',5.776),(425,'2019-03-02',5.625),(426,'2019-03-03',5.476),(427,'2019-03-04',5.329),(428,'2019-03-05',5.184),(429,'2019-03-06',5.041),(430,'2019-03-07',4.9),(431,'2019-03-08',4.761),(432,'2019-03-09',4.624),(433,'2019-03-10',4.489),(434,'2019-03-11',4.356),(435,'2019-03-12',4.225),(436,'2019-03-13',4.096),(437,'2019-03-14',3.969),(438,'2019-03-15',3.844),(439,'2019-03-16',3.721),(440,'2019-03-17',3.6),(441,'2019-03-18',3.481),(442,'2019-03-19',3.364),(443,'2019-03-20',3.249),(444,'2019-03-21',3.136),(445,'2019-03-22',3.025),(446,'2019-03-23',2.916),(447,'2019-03-24',2.809),(448,'2019-03-25',2.704),(449,'2019-03-26',2.601),(450,'2019-03-27',2.5),(451,'2019-03-28',2.401),(452,'2019-03-29',2.304),(453,'2019-03-30',2.209),(454,'2019-03-31',2.116),(455,'2019-04-01',2.025),(456,'2019-04-02',1.936),(457,'2019-04-03',1.849),(458,'2019-04-04',1.764),(459,'2019-04-05',1.681),(460,'2019-04-06',1.6),(461,'2019-04-07',1.521),(462,'2019-04-08',1.444),(463,'2019-04-09',1.369),(464,'2019-04-10',1.296),(465,'2019-04-11',1.225),(466,'2019-04-12',1.156),(467,'2019-04-13',1.089),(468,'2019-04-14',1.024),(469,'2019-04-15',0.961),(470,'2019-04-16',0.9),(471,'2019-04-17',0.841),(472,'2019-04-18',0.784),(473,'2019-04-19',0.729),(474,'2019-04-20',0.676),(475,'2019-04-21',0.625),(476,'2019-04-22',0.576),(477,'2019-04-23',0.529),(478,'2019-04-24',0.484),(479,'2019-04-25',0.441),(480,'2019-04-26',0.4),(481,'2019-04-27',0.361),(482,'2019-04-28',0.324),(483,'2019-04-29',0.289),(484,'2019-04-30',0.256),(485,'2019-05-01',0.225),(486,'2019-05-02',0.196),(487,'2019-05-03',0.169),(488,'2019-05-04',0.144),(489,'2019-05-05',0.121),(490,'2019-05-06',0.1),(491,'2019-05-07',0.081),(492,'2019-05-08',0.064),(493,'2019-05-09',0.049),(494,'2019-05-10',0.036),(495,'2019-05-11',0.025),(496,'2019-05-12',0.016),(497,'2019-05-13',0.009),(498,'2019-05-14',0.004),(499,'2019-05-15',0.001),(500,'2019-05-16',0),(501,'2019-05-17',0.001),(502,'2019-05-18',0.004),(503,'2019-05-19',0.009),(504,'2019-05-20',0.016),(505,'2019-05-21',0.025),(506,'2019-05-22',0.036),(507,'2019-05-23',0.049),(508,'2019-05-24',0.064),(509,'2019-05-25',0.081),(510,'2019-05-26',0.1),(511,'2019-05-27',0.121),(512,'2019-05-28',0.144),(513,'2019-05-29',0.169),(514,'2019-05-30',0.196),(515,'2019-05-31',0.225),(516,'2019-06-01',0.256),(517,'2019-06-02',0.289),(518,'2019-06-03',0.324),(519,'2019-06-04',0.361),(520,'2019-06-05',0.4),(521,'2019-06-06',0.441),(522,'2019-06-07',0.484),(523,'2019-06-08',0.529),(524,'2019-06-09',0.576),(525,'2019-06-10',0.625),(526,'2019-06-11',0.676),(527,'2019-06-12',0.729),(528,'2019-06-13',0.784),(529,'2019-06-14',0.841),(530,'2019-06-15',0.9),(531,'2019-06-16',0.961),(532,'2019-06-17',1.024),(533,'2019-06-18',1.089),(534,'2019-06-19',1.156),(535,'2019-06-20',1.225),(536,'2019-06-21',1.296),(537,'2019-06-22',1.369),(538,'2019-06-23',1.444),(539,'2019-06-24',1.521),(540,'2019-06-25',1.6),(541,'2019-06-26',1.681),(542,'2019-06-27',1.764),(543,'2019-06-28',1.849),(544,'2019-06-29',1.936),(545,'2019-06-30',2.025),(546,'2019-07-01',2.116),(547,'2019-07-02',2.209),(548,'2019-07-03',2.304),(549,'2019-07-04',2.401),(550,'2019-07-05',2.5),(551,'2019-07-06',2.601),(552,'2019-07-07',2.704),(553,'2019-07-08',2.809),(554,'2019-07-09',2.916),(555,'2019-07-10',3.025),(556,'2019-07-11',3.136),(557,'2019-07-12',3.249),(558,'2019-07-13',3.364),(559,'2019-07-14',3.481),(560,'2019-07-15',3.6),(561,'2019-07-16',3.721),(562,'2019-07-17',3.844),(563,'2019-07-18',3.969),(564,'2019-07-19',4.096),(565,'2019-07-20',4.225),(566,'2019-07-21',4.356),(567,'2019-07-22',4.489),(568,'2019-07-23',4.624),(569,'2019-07-24',4.761),(570,'2019-07-25',4.9),(571,'2019-07-26',5.041),(572,'2019-07-27',5.184),(573,'2019-07-28',5.329),(574,'2019-07-29',5.476),(575,'2019-07-30',5.625),(576,'2019-07-31',5.776),(577,'2019-08-01',5.929),(578,'2019-08-02',6.084),(579,'2019-08-03',6.241),(580,'2019-08-04',6.4),(581,'2019-08-05',6.561),(582,'2019-08-06',6.724),(583,'2019-08-07',6.889),(584,'2019-08-08',7.056),(585,'2019-08-09',7.225),(586,'2019-08-10',7.396),(587,'2019-08-11',7.569),(588,'2019-08-12',7.744),(589,'2019-08-13',7.921),(590,'2019-08-14',8.1),(591,'2019-08-15',8.281),(592,'2019-08-16',8.464),(593,'2019-08-17',8.649),(594,'2019-08-18',8.836),(595,'2019-08-19',9.025),(596,'2019-08-20',9.216),(597,'2019-08-21',9.409),(598,'2019-08-22',9.604),(599,'2019-08-23',9.801),(600,'2019-08-24',10),(601,'2019-08-25',10.201),(602,'2019-08-26',10.404),(603,'2019-08-27',10.609),(604,'2019-08-28',10.816),(605,'2019-08-29',11.025),(606,'2019-08-30',11.236),(607,'2019-08-31',11.449),(608,'2019-09-01',11.664),(609,'2019-09-02',11.881),(610,'2019-09-03',12.1),(611,'2019-09-04',12.321),(612,'2019-09-05',12.544),(613,'2019-09-06',12.769),(614,'2019-09-07',12.996),(615,'2019-09-08',13.225),(616,'2019-09-09',13.456),(617,'2019-09-10',13.689),(618,'2019-09-11',13.924),(619,'2019-09-12',14.161),(620,'2019-09-13',14.4),(621,'2019-09-14',14.641),(622,'2019-09-15',14.884),(623,'2019-09-16',15.129),(624,'2019-09-17',15.376),(625,'2019-09-18',15.625),(626,'2019-09-19',15.876),(627,'2019-09-20',16.129),(628,'2019-09-21',16.384),(629,'2019-09-22',16.641),(630,'2019-09-23',16.9),(631,'2019-09-24',17.161),(632,'2019-09-25',17.424),(633,'2019-09-26',17.689),(634,'2019-09-27',17.956),(635,'2019-09-28',18.225),(636,'2019-09-29',18.496),(637,'2019-09-30',18.769),(638,'2019-10-01',19.044),(639,'2019-10-02',19.321),(640,'2019-10-03',19.6),(641,'2019-10-04',19.881),(642,'2019-10-05',20.164),(643,'2019-10-06',20.449),(644,'2019-10-07',20.736),(645,'2019-10-08',21.025),(646,'2019-10-09',21.316),(647,'2019-10-10',21.609),(648,'2019-10-11',21.904),(649,'2019-10-12',22.201),(650,'2019-10-13',22.5),(651,'2019-10-14',22.801),(652,'2019-10-15',23.104),(653,'2019-10-16',23.409),(654,'2019-10-17',23.716),(655,'2019-10-18',24.025),(656,'2019-10-19',24.336),(657,'2019-10-20',24.649),(658,'2019-10-21',24.964),(659,'2019-10-22',25.281),(660,'2019-10-23',25.6),(661,'2019-10-24',25.921),(662,'2019-10-25',26.244),(663,'2019-10-26',26.569),(664,'2019-10-27',26.896),(665,'2019-10-28',27.225),(666,'2019-10-29',27.556),(667,'2019-10-30',27.889),(668,'2019-10-31',28.224),(669,'2019-11-01',28.561),(670,'2019-11-02',28.9),(671,'2019-11-03',29.241),(672,'2019-11-04',29.584),(673,'2019-11-05',29.929),(674,'2019-11-06',30.276),(675,'2019-11-07',30.625),(676,'2019-11-08',30.976),(677,'2019-11-09',31.329),(678,'2019-11-10',31.684),(679,'2019-11-11',32.041),(680,'2019-11-12',32.4),(681,'2019-11-13',32.761),(682,'2019-11-14',33.124),(683,'2019-11-15',33.489),(684,'2019-11-16',33.856),(685,'2019-11-17',34.225),(686,'2019-11-18',34.596),(687,'2019-11-19',34.969),(688,'2019-11-20',35.344),(689,'2019-11-21',35.721),(690,'2019-11-22',36.1),(691,'2019-11-23',36.481),(692,'2019-11-24',36.864),(693,'2019-11-25',37.249),(694,'2019-11-26',37.636),(695,'2019-11-27',38.025),(696,'2019-11-28',38.416),(697,'2019-11-29',38.809),(698,'2019-11-30',39.204),(699,'2019-12-01',39.601),(700,'2019-12-02',40),(701,'2019-12-03',40.401),(702,'2019-12-04',40.804),(703,'2019-12-05',41.209),(704,'2019-12-06',41.616),(705,'2019-12-07',42.025),(706,'2019-12-08',42.436),(707,'2019-12-09',42.849),(708,'2019-12-10',43.264),(709,'2019-12-11',43.681),(710,'2019-12-12',44.1),(711,'2019-12-13',44.521),(712,'2019-12-14',44.944),(713,'2019-12-15',45.369),(714,'2019-12-16',45.796),(715,'2019-12-17',46.225),(716,'2019-12-18',46.656),(717,'2019-12-19',47.089),(718,'2019-12-20',47.524),(719,'2019-12-21',47.961),(720,'2019-12-22',48.4),(721,'2019-12-23',48.841),(722,'2019-12-24',49.284),(723,'2019-12-25',49.729),(724,'2019-12-26',50.176),(725,'2019-12-27',50.625),(726,'2019-12-28',51.076),(727,'2019-12-29',51.529),(728,'2019-12-30',51.984),(729,'2019-12-31',52.441),(730,'2020-01-01',52.9),(731,'2020-01-02',53.361),(732,'2020-01-03',53.824),(733,'2020-01-04',54.289),(734,'2020-01-05',54.756),(735,'2020-01-06',55.225),(736,'2020-01-07',55.696),(737,'2020-01-08',56.169),(738,'2020-01-09',56.644),(739,'2020-01-10',57.121),(740,'2020-01-11',57.6),(741,'2020-01-12',58.081),(742,'2020-01-13',58.564),(743,'2020-01-14',59.049),(744,'2020-01-15',59.536),(745,'2020-01-16',60.025),(746,'2020-01-17',60.516),(747,'2020-01-18',61.009),(748,'2020-01-19',61.504),(749,'2020-01-20',62.001),(750,'2020-01-21',62.5),(751,'2020-01-22',63.001),(752,'2020-01-23',63.504),(753,'2020-01-24',64.009),(754,'2020-01-25',64.516),(755,'2020-01-26',65.025),(756,'2020-01-27',65.536),(757,'2020-01-28',66.049),(758,'2020-01-29',66.564),(759,'2020-01-30',67.081),(760,'2020-01-31',67.6),(761,'2020-02-01',68.121),(762,'2020-02-02',68.644),(763,'2020-02-03',69.169),(764,'2020-02-04',69.696),(765,'2020-02-05',70.225),(766,'2020-02-06',70.756),(767,'2020-02-07',71.289),(768,'2020-02-08',71.824),(769,'2020-02-09',72.361),(770,'2020-02-10',72.9),(771,'2020-02-11',73.441),(772,'2020-02-12',73.984),(773,'2020-02-13',74.529),(774,'2020-02-14',75.076),(775,'2020-02-15',75.625),(776,'2020-02-16',76.176),(777,'2020-02-17',76.729),(778,'2020-02-18',77.284),(779,'2020-02-19',77.841),(780,'2020-02-20',78.4),(781,'2020-02-21',78.961),(782,'2020-02-22',79.524),(783,'2020-02-23',80.089),(784,'2020-02-24',80.656),(785,'2020-02-25',81.225),(786,'2020-02-26',81.796),(787,'2020-02-27',82.369),(788,'2020-02-28',82.944),(789,'2020-02-29',83.521),(790,'2020-03-01',84.1),(791,'2020-03-02',84.681),(792,'2020-03-03',85.264),(793,'2020-03-04',85.849),(794,'2020-03-05',86.436),(795,'2020-03-06',87.025),(796,'2020-03-07',87.616),(797,'2020-03-08',88.209),(798,'2020-03-09',88.804),(799,'2020-03-10',89.401),(800,'2020-03-11',90),(801,'2020-03-12',90.601),(802,'2020-03-13',91.204),(803,'2020-03-14',91.809),(804,'2020-03-15',92.416),(805,'2020-03-16',93.025),(806,'2020-03-17',93.636),(807,'2020-03-18',94.249),(808,'2020-03-19',94.864),(809,'2020-03-20',95.481),(810,'2020-03-21',96.1),(811,'2020-03-22',96.721),(812,'2020-03-23',97.344),(813,'2020-03-24',97.969),(814,'2020-03-25',98.596),(815,'2020-03-26',99.225),(816,'2020-03-27',99.856),(817,'2020-03-28',100.489),(818,'2020-03-29',101.124),(819,'2020-03-30',101.761),(820,'2020-03-31',102.4),(821,'2020-04-01',103.041),(822,'2020-04-02',103.684),(823,'2020-04-03',104.329),(824,'2020-04-04',104.976),(825,'2020-04-05',105.625),(826,'2020-04-06',106.276),(827,'2020-04-07',106.929),(828,'2020-04-08',107.584),(829,'2020-04-09',108.241),(830,'2020-04-10',108.9),(831,'2020-04-11',109.561),(832,'2020-04-12',110.224),(833,'2020-04-13',110.889),(834,'2020-04-14',111.556),(835,'2020-04-15',112.225),(836,'2020-04-16',112.896),(837,'2020-04-17',113.569),(838,'2020-04-18',114.244),(839,'2020-04-19',114.921),(840,'2020-04-20',115.6),(841,'2020-04-21',116.281),(842,'2020-04-22',116.964),(843,'2020-04-23',117.649),(844,'2020-04-24',118.336),(845,'2020-04-25',119.025),(846,'2020-04-26',119.716),(847,'2020-04-27',120.409),(848,'2020-04-28',121.104),(849,'2020-04-29',121.801),(850,'2020-04-30',122.5),(851,'2020-05-01',123.201),(852,'2020-05-02',123.904),(853,'2020-05-03',124.609),(854,'2020-05-04',125.316),(855,'2020-05-05',126.025),(856,'2020-05-06',126.736),(857,'2020-05-07',127.449),(858,'2020-05-08',128.164),(859,'2020-05-09',128.881),(860,'2020-05-10',129.6),(861,'2020-05-11',130.321),(862,'2020-05-12',131.044),(863,'2020-05-13',131.769),(864,'2020-05-14',132.496),(865,'2020-05-15',133.225),(866,'2020-05-16',133.956),(867,'2020-05-17',134.689),(868,'2020-05-18',135.424),(869,'2020-05-19',136.161),(870,'2020-05-20',136.9),(871,'2020-05-21',137.641),(872,'2020-05-22',138.384),(873,'2020-05-23',139.129),(874,'2020-05-24',139.876),(875,'2020-05-25',140.625),(876,'2020-05-26',141.376),(877,'2020-05-27',142.129),(878,'2020-05-28',142.884),(879,'2020-05-29',143.641),(880,'2020-05-30',144.4),(881,'2020-05-31',145.161),(882,'2020-06-01',145.924),(883,'2020-06-02',146.689),(884,'2020-06-03',147.456),(885,'2020-06-04',148.225),(886,'2020-06-05',148.996),(887,'2020-06-06',149.769),(888,'2020-06-07',150.544),(889,'2020-06-08',151.321),(890,'2020-06-09',152.1),(891,'2020-06-10',152.881),(892,'2020-06-11',153.664),(893,'2020-06-12',154.449),(894,'2020-06-13',155.236),(895,'2020-06-14',156.025),(896,'2020-06-15',156.816),(897,'2020-06-16',157.609),(898,'2020-06-17',158.404),(899,'2020-06-18',159.201),(900,'2020-06-19',160),(901,'2020-06-20',160.801),(902,'2020-06-21',161.604),(903,'2020-06-22',162.409),(904,'2020-06-23',163.216),(905,'2020-06-24',164.025),(906,'2020-06-25',164.836),(907,'2020-06-26',165.649),(908,'2020-06-27',166.464),(909,'2020-06-28',167.281),(910,'2020-06-29',168.1),(911,'2020-06-30',168.921),(912,'2020-07-01',169.744),(913,'2020-07-02',170.569),(914,'2020-07-03',171.396),(915,'2020-07-04',172.225),(916,'2020-07-05',173.056),(917,'2020-07-06',173.889),(918,'2020-07-07',174.724),(919,'2020-07-08',175.561),(920,'2020-07-09',176.4),(921,'2020-07-10',177.241),(922,'2020-07-11',178.084),(923,'2020-07-12',178.929),(924,'2020-07-13',179.776),(925,'2020-07-14',180.625),(926,'2020-07-15',181.476),(927,'2020-07-16',182.329),(928,'2020-07-17',183.184),(929,'2020-07-18',184.041),(930,'2020-07-19',184.9),(931,'2020-07-20',185.761),(932,'2020-07-21',186.624),(933,'2020-07-22',187.489),(934,'2020-07-23',188.356),(935,'2020-07-24',189.225),(936,'2020-07-25',190.096),(937,'2020-07-26',190.969),(938,'2020-07-27',191.844),(939,'2020-07-28',192.721),(940,'2020-07-29',193.6),(941,'2020-07-30',194.481),(942,'2020-07-31',195.364),(943,'2020-08-01',196.249),(944,'2020-08-02',197.136),(945,'2020-08-03',198.025),(946,'2020-08-04',198.916),(947,'2020-08-05',199.809),(948,'2020-08-06',200.704),(949,'2020-08-07',201.601),(950,'2020-08-08',202.5),(951,'2020-08-09',203.401),(952,'2020-08-10',204.304),(953,'2020-08-11',205.209),(954,'2020-08-12',206.116),(955,'2020-08-13',207.025),(956,'2020-08-14',207.936),(957,'2020-08-15',208.849),(958,'2020-08-16',209.764),(959,'2020-08-17',210.681),(960,'2020-08-18',211.6),(961,'2020-08-19',212.521),(962,'2020-08-20',213.444),(963,'2020-08-21',214.369),(964,'2020-08-22',215.296),(965,'2020-08-23',216.225),(966,'2020-08-24',217.156),(967,'2020-08-25',218.089),(968,'2020-08-26',219.024),(969,'2020-08-27',219.961),(970,'2020-08-28',220.9),(971,'2020-08-29',221.841),(972,'2020-08-30',222.784),(973,'2020-08-31',223.729),(974,'2020-09-01',224.676),(975,'2020-09-02',225.625),(976,'2020-09-03',226.576),(977,'2020-09-04',227.529),(978,'2020-09-05',228.484),(979,'2020-09-06',229.441),(980,'2020-09-07',230.4),(981,'2020-09-08',231.361),(982,'2020-09-09',232.324),(983,'2020-09-10',233.289),(984,'2020-09-11',234.256),(985,'2020-09-12',235.225),(986,'2020-09-13',236.196),(987,'2020-09-14',237.169),(988,'2020-09-15',238.144),(989,'2020-09-16',239.121),(990,'2020-09-17',240.1),(991,'2020-09-18',241.081),(992,'2020-09-19',242.064),(993,'2020-09-20',243.049),(994,'2020-09-21',244.036),(995,'2020-09-22',245.025),(996,'2020-09-23',246.016),(997,'2020-09-24',247.009),(998,'2020-09-25',248.004),(999,'2020-09-26',249.001);
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 21:11:52
