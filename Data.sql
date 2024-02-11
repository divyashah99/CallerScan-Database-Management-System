-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: callerscan
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `blocklist`
--

DROP TABLE IF EXISTS `blocklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocklist` (
  `BlockID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `BlockedUserID` int NOT NULL,
  `BlockDate` date DEFAULT NULL,
  `Reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BlockID`),
  KEY `UserID` (`UserID`),
  KEY `BlockedUserID` (`BlockedUserID`),
  CONSTRAINT `blocklist_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `blocklist_ibfk_2` FOREIGN KEY (`BlockedUserID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocklist`
--

LOCK TABLES `blocklist` WRITE;
/*!40000 ALTER TABLE `blocklist` DISABLE KEYS */;
INSERT INTO `blocklist` VALUES (1,1,31,'1991-10-20','Inappropriate Content'),(2,2,32,'1981-12-16','Inappropriate Content'),(3,3,33,'2009-07-04','Harassment or Spam'),(4,4,34,'1998-08-30','Stalking or Cyberbullying'),(5,5,35,'1975-05-15','Inappropriate Content'),(6,6,36,'1970-06-09','Harassment or Spam'),(7,7,37,'1986-01-01','Stalking or Cyberbullying'),(8,8,38,'2008-10-05','Stalking or Cyberbullying'),(9,9,39,'1982-10-06','Inappropriate Content'),(10,10,40,'1986-02-08','Harassment or Spam'),(11,11,41,'2023-08-24','Harassment or Spam'),(12,12,42,'2011-06-03','Inappropriate Content'),(13,13,43,'1979-04-02','Harassment or Spam'),(14,14,44,'2006-11-29','Harassment or Spam'),(15,15,45,'1984-06-20','Stalking or Cyberbullying'),(16,16,46,'1986-03-12','Harassment or Spam'),(17,17,47,'2019-08-07','Harassment or Spam'),(18,18,48,'1998-03-07','Stalking or Cyberbullying'),(19,19,49,'2019-08-15','Stalking or Cyberbullying'),(20,20,50,'2022-06-10','Harassment or Spam'),(21,21,51,'1995-08-23','Stalking or Cyberbullying'),(22,22,52,'1988-01-22','Harassment or Spam'),(23,23,53,'2021-06-04','Harassment or Spam'),(24,24,54,'1971-11-19','Stalking or Cyberbullying'),(25,25,55,'1982-03-07','Stalking or Cyberbullying'),(26,26,56,'2003-08-27','Unwanted Commercial Calls'),(27,27,57,'2013-03-04','Stalking or Cyberbullying'),(28,28,58,'1992-02-05','Harassment or Spam'),(29,29,59,'2011-10-20','Unwanted Commercial Calls'),(30,30,60,'1975-02-09','Stalking or Cyberbullying');
/*!40000 ALTER TABLE `blocklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `Business_User_ID` int DEFAULT NULL,
  `IndustryType` varchar(100) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  KEY `Business_User_ID` (`Business_User_ID`),
  CONSTRAINT `business_ibfk_1` FOREIGN KEY (`Business_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (51,'Retail','61244'),(52,'E-commerce','75427-5579'),(53,'Healthcare','34737-7974'),(54,'Travel and Transportation','94097-4134'),(55,'Entertainment','24017-1241'),(56,'Education','00902-4322'),(57,'Personal Care and Beauty','42803'),(58,'Fitness and Wellness','93657-7433'),(59,'Harris','36834'),(60,'Real Estate','34342'),(61,'Retail','4918'),(62,'E-commerce','71186-4741'),(63,'Healthcare','53791-8139'),(64,'Travel and Transportation','99197-6021'),(65,'Entertainment','63894-1934'),(66,'Education','8235'),(67,'Personal Care and Beauty','33422-8913'),(68,'Fitness and Wellness','16077-4021'),(69,'Harris','58501-1213'),(70,'Real Estate','47391'),(71,'Retail','89907'),(72,'E-commerce','01366-8669'),(73,'Healthcare','64761-2396'),(74,'Travel and Transportation','99655-4917'),(75,'Entertainment','28649-0721'),(76,'Education','56539-0142'),(77,'Personal Care and Beauty','03724-9428'),(78,'Fitness and Wellness','24686-0861'),(79,'Harris','62985'),(80,'Real Estate','20922'),(81,'Retail','70402'),(82,'E-commerce','75365-8951'),(83,'Healthcare','25012'),(84,'Travel and Transportation','46822'),(85,'Entertainment','85355-1709'),(86,'Education','11807'),(87,'Personal Care and Beauty','86486-0843'),(88,'Fitness and Wellness','68105-4645'),(89,'Personal Care and Beauty','25092'),(90,'Fitness and Wellness','63001-2283'),(91,'Personal Care and Beauty','91927-5741'),(92,'Fitness and Wellness','31469-9620'),(93,'Personal Care and Beauty','98454-2776'),(94,'Fitness and Wellness','36587'),(95,'Personal Care and Beauty','49287'),(96,'Fitness and Wellness','96676-7382'),(97,'Personal Care and Beauty','15061'),(98,'Fitness and Wellness','13177'),(99,'Personal Care and Beauty','28346-4969'),(100,'Fitness and Wellness','39198-3127');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calllog`
--

DROP TABLE IF EXISTS `calllog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calllog` (
  `CallLogID` int NOT NULL AUTO_INCREMENT,
  `CallerUserID` int NOT NULL,
  `ReceiverUserID` int NOT NULL,
  `CallDateTime` datetime DEFAULT NULL,
  `CallDuration` int DEFAULT NULL,
  `CallType` varchar(20) DEFAULT NULL,
  `Call_Log_BlockID` int DEFAULT NULL,
  PRIMARY KEY (`CallLogID`),
  KEY `CallerUserID` (`CallerUserID`),
  KEY `ReceiverUserID` (`ReceiverUserID`),
  KEY `Call_Log_BlockID` (`Call_Log_BlockID`),
  CONSTRAINT `calllog_ibfk_1` FOREIGN KEY (`CallerUserID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `calllog_ibfk_2` FOREIGN KEY (`ReceiverUserID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `calllog_ibfk_3` FOREIGN KEY (`Call_Log_BlockID`) REFERENCES `blocklist` (`BlockID`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calllog`
--

LOCK TABLES `calllog` WRITE;
/*!40000 ALTER TABLE `calllog` DISABLE KEYS */;
INSERT INTO `calllog` VALUES (1,31,1,'2001-09-12 15:37:28',1743,'incoming call',1),(2,32,2,'2017-05-06 00:54:36',514,'missed call',2),(3,33,3,'2004-09-28 20:34:29',1153,'incoming call',3),(4,34,4,'2016-04-19 04:28:08',366,'incoming call',4),(5,35,5,'2003-09-20 18:51:53',2207,'missed call',5),(6,36,6,'1991-12-20 14:36:41',2824,'outgoing call',6),(7,37,7,'2009-10-14 22:21:24',1504,'missed call',7),(8,38,8,'1982-10-02 03:07:15',462,'incoming call',8),(9,39,9,'1981-07-18 08:36:42',1768,'missed call',9),(10,40,10,'2013-05-06 02:35:37',2986,'incoming call',10),(11,41,11,'2002-10-23 03:47:58',1765,'missed call',11),(12,42,12,'1986-06-21 00:59:37',624,'missed call',12),(13,43,13,'1970-08-23 06:49:08',1231,'incoming call',13),(14,44,14,'1989-10-18 12:07:57',2828,'incoming call',14),(15,45,15,'2014-02-03 13:17:18',1254,'outgoing call',15),(16,46,16,'1983-06-03 20:56:39',2289,'incoming call',16),(17,47,17,'2000-04-29 12:52:37',1549,'missed call',17),(18,48,18,'2003-02-12 12:41:22',2241,'outgoing call',18),(19,49,19,'1978-09-05 16:06:03',1826,'missed call',19),(20,50,20,'1987-12-20 21:05:38',1777,'incoming call',20),(21,51,21,'1983-12-15 19:17:34',135,'outgoing call',21),(22,52,22,'1997-01-22 13:11:27',1742,'outgoing call',22),(23,53,23,'2010-10-31 10:06:07',746,'outgoing call',23),(24,54,24,'2009-12-01 04:19:51',2023,'outgoing call',24),(25,55,25,'2000-11-11 09:14:27',2879,'incoming call',25),(26,56,26,'2010-01-15 03:39:42',2959,'outgoing call',26),(27,57,27,'1999-12-10 00:18:00',505,'missed call',27),(28,58,28,'1991-05-19 14:04:00',2025,'missed call',28),(29,59,29,'1998-07-27 15:23:06',2912,'outgoing call',29),(30,60,30,'2015-12-22 02:12:31',489,'outgoing call',30),(31,31,1,'2023-11-11 11:38:23',490,'outgoing call',1),(32,32,2,'2023-11-11 11:38:23',491,'outgoing call',2),(33,33,3,'2023-11-11 11:38:23',492,'outgoing call',3),(34,34,4,'2023-11-11 11:38:23',493,'outgoing call',4),(35,35,5,'2023-11-11 11:38:23',494,'outgoing call',5),(36,36,6,'2023-11-11 11:38:23',495,'outgoing call',6),(37,37,7,'2023-11-11 11:38:23',496,'outgoing call',7),(38,38,8,'2023-11-11 11:38:23',497,'outgoing call',8),(39,39,9,'2023-11-11 11:38:23',498,'outgoing call',9),(40,40,10,'2023-11-11 11:38:23',499,'outgoing call',10),(41,41,11,'2023-11-11 11:38:23',500,'outgoing call',11),(42,42,12,'2023-11-11 11:38:23',501,'outgoing call',12),(43,43,13,'2023-11-11 11:38:23',502,'outgoing call',13),(44,44,14,'2023-11-11 11:38:23',503,'outgoing call',14),(45,45,15,'2023-11-11 11:38:23',504,'outgoing call',15),(46,46,16,'2023-11-11 11:38:23',505,'outgoing call',16),(47,47,17,'2023-11-11 11:38:23',506,'outgoing call',17),(48,48,18,'2023-11-11 11:38:23',507,'outgoing call',18),(49,49,19,'2023-11-11 11:38:23',508,'outgoing call',19),(50,50,20,'2023-11-11 11:38:23',509,'outgoing call',20),(51,51,21,'2023-11-11 11:38:23',510,'outgoing call',21),(52,52,22,'2023-11-11 11:38:23',511,'outgoing call',22),(53,53,23,'2023-11-11 11:38:23',512,'outgoing call',23),(54,54,24,'2023-11-11 11:38:23',513,'outgoing call',24),(55,55,25,'2023-11-11 11:38:23',514,'outgoing call',25),(56,56,26,'2023-11-11 11:38:23',515,'outgoing call',26),(57,57,27,'2023-11-11 11:38:23',516,'outgoing call',27),(58,58,28,'2023-11-11 11:38:23',517,'outgoing call',28),(59,59,29,'2023-11-11 11:38:23',518,'outgoing call',29),(60,60,30,'2023-11-11 11:38:23',519,'outgoing call',30),(61,61,1,'2023-11-11 11:38:23',520,'outgoing call',NULL),(62,62,2,'2023-11-11 11:38:23',521,'outgoing call',NULL),(63,63,3,'2023-11-11 11:38:23',522,'outgoing call',NULL),(64,64,4,'2023-11-11 11:38:23',523,'outgoing call',NULL),(65,65,5,'2023-11-11 11:38:23',524,'outgoing call',NULL),(66,66,6,'2023-11-11 11:38:23',525,'outgoing call',NULL),(67,67,7,'2023-11-11 11:38:23',526,'outgoing call',NULL),(68,68,8,'2023-11-11 11:38:23',527,'outgoing call',NULL),(69,69,9,'2023-11-11 11:38:23',528,'outgoing call',NULL),(70,70,10,'2023-11-11 11:38:23',529,'outgoing call',NULL),(71,71,11,'2023-11-11 11:38:23',530,'outgoing call',NULL),(72,72,12,'2023-11-11 11:38:23',531,'outgoing call',NULL),(73,73,13,'2023-11-11 11:38:23',532,'outgoing call',NULL),(74,74,14,'2023-11-11 11:38:23',533,'outgoing call',NULL),(75,75,15,'2023-11-11 11:38:23',534,'outgoing call',NULL),(76,76,16,'2023-11-11 11:38:23',535,'outgoing call',NULL),(77,77,17,'2023-11-11 11:38:23',536,'outgoing call',NULL),(78,78,18,'2023-11-11 11:38:23',537,'outgoing call',NULL),(79,79,19,'2023-11-11 11:38:23',538,'outgoing call',NULL),(80,80,20,'2023-11-11 11:38:23',539,'outgoing call',NULL),(81,81,21,'2023-11-11 11:38:23',540,'outgoing call',NULL),(82,82,22,'2023-11-11 11:38:23',541,'outgoing call',NULL),(83,83,23,'2023-11-11 11:38:23',542,'outgoing call',NULL),(84,84,24,'2023-11-11 11:38:23',543,'outgoing call',NULL),(85,85,25,'2023-11-11 11:38:23',544,'outgoing call',NULL),(86,86,26,'2023-11-11 11:38:23',545,'outgoing call',NULL),(87,87,27,'2023-11-11 11:38:23',546,'outgoing call',NULL),(88,88,28,'2023-11-11 11:38:23',547,'outgoing call',NULL),(89,89,29,'2023-11-11 11:38:23',548,'outgoing call',NULL),(90,90,30,'2023-11-11 11:38:23',549,'outgoing call',NULL),(91,91,1,'2023-11-11 11:38:23',550,'outgoing call',NULL),(92,92,2,'2023-11-11 11:38:23',551,'outgoing call',NULL),(93,93,3,'2023-11-11 11:38:23',552,'outgoing call',NULL),(94,94,4,'2023-11-11 11:38:23',553,'outgoing call',NULL),(95,95,5,'2023-11-11 11:38:23',554,'outgoing call',NULL),(96,96,6,'2023-11-11 11:38:23',555,'outgoing call',NULL),(97,97,7,'2023-11-11 11:38:23',556,'outgoing call',NULL),(98,98,8,'2023-11-11 11:38:23',557,'outgoing call',NULL),(99,99,9,'2023-11-11 11:38:23',558,'outgoing call',NULL),(100,100,10,'2023-11-11 11:38:23',559,'outgoing call',NULL),(101,77,11,'2023-11-11 11:38:23',560,'outgoing call',NULL),(102,78,12,'2023-11-11 11:38:23',561,'outgoing call',NULL),(103,79,13,'2023-11-11 11:38:23',562,'outgoing call',NULL),(104,80,14,'2023-11-11 11:38:23',563,'outgoing call',NULL),(105,81,15,'2023-11-11 11:38:23',564,'outgoing call',NULL),(106,82,16,'2023-11-11 11:38:23',565,'outgoing call',NULL),(107,83,17,'2023-11-11 11:38:23',566,'outgoing call',NULL),(108,84,18,'2023-11-11 11:38:23',567,'outgoing call',NULL),(109,85,19,'2023-11-11 11:38:23',568,'outgoing call',NULL),(110,86,20,'2023-11-11 11:38:23',569,'outgoing call',NULL),(111,87,21,'2023-11-11 11:38:23',570,'outgoing call',NULL),(112,88,22,'2023-11-11 11:38:23',571,'outgoing call',NULL),(113,89,23,'2023-11-11 11:38:23',572,'outgoing call',NULL),(114,90,24,'2023-11-11 11:38:23',573,'outgoing call',NULL),(115,91,25,'2023-11-11 11:38:23',574,'outgoing call',NULL),(116,92,26,'2023-11-11 11:38:23',575,'outgoing call',NULL),(117,93,27,'2023-11-11 11:38:23',576,'outgoing call',NULL),(118,94,28,'2023-11-11 11:38:23',577,'outgoing call',NULL),(119,95,29,'2023-11-11 11:38:23',578,'outgoing call',NULL),(120,96,30,'2023-11-11 11:38:23',579,'outgoing call',NULL),(121,97,1,'2023-11-11 11:38:23',580,'outgoing call',NULL),(122,98,2,'2023-11-11 11:38:23',581,'outgoing call',NULL),(123,99,3,'2023-11-11 11:38:23',582,'outgoing call',NULL),(124,100,4,'2023-11-11 11:38:23',583,'outgoing call',NULL),(125,98,5,'2023-11-11 11:38:23',584,'outgoing call',NULL),(126,99,6,'2023-11-11 11:38:23',585,'outgoing call',NULL),(127,100,7,'2023-11-11 11:38:23',586,'outgoing call',NULL),(128,98,8,'2023-11-11 11:38:23',587,'outgoing call',NULL),(129,99,9,'2023-11-11 11:38:23',588,'outgoing call',NULL),(130,100,10,'2023-11-11 11:38:23',589,'outgoing call',NULL),(131,98,11,'2023-11-11 11:38:23',590,'outgoing call',NULL),(132,99,12,'2023-11-11 11:38:23',591,'outgoing call',NULL),(133,100,13,'2023-11-11 11:38:23',592,'outgoing call',NULL),(134,98,14,'2023-11-11 11:38:23',593,'outgoing call',NULL);
/*!40000 ALTER TABLE `calllog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_email`
--

DROP TABLE IF EXISTS `contact_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_email` (
  `ContactEmail` varchar(255) NOT NULL,
  `Contact_ID` int NOT NULL,
  PRIMARY KEY (`ContactEmail`),
  KEY `Contact_ID` (`Contact_ID`),
  CONSTRAINT `contact_email_ibfk_1` FOREIGN KEY (`Contact_ID`) REFERENCES `contacts` (`Contact_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_email`
--

LOCK TABLES `contact_email` WRITE;
/*!40000 ALTER TABLE `contact_email` DISABLE KEYS */;
INSERT INTO `contact_email` VALUES ('nona.orn@yahoo.com',1),('yhowell@yahoo.com',1),('jkautzer@boyer.com',2),('roma.schroeder@yahoo.com',2),('bruen.jessica@maggio.net',3),('khand@hickle.com',3),('armstrong.kiarra@conroy.com',4),('sanford37@hotmail.com',4),('adriel.labadie@yahoo.com',5),('judy18@hotmail.com',5),('koby.batz@gmail.com',6),('pabshire@jacobsonrussel.org',6),('ernser.nyasia@yahoo.com',7),('roob.laura@sauerfeil.biz',7),('berenice.huels@hotmail.com',8),('cremin.adelia@yahoo.com',8),('moen.agustina@yahoo.com',9),('ydoyle@maggio.com',9),('nikolaus.jarod@hotmail.com',10),('ptrantow@hotmail.com',10),('amber.baumbach@gmail.com',11),('zhalvorson@hotmail.com',11),('brooks.casper@hotmail.com',12),('lacey.turner@bashirian.com',12),('hermann.cummings@hotmail.com',13),('volkman.ewell@davis.com',13),('christ42@yahoo.com',14),('dicki.sigmund@yahoo.com',14),('annamae.maggio@gmail.com',15),('prutherford@hotmail.com',15),('macy08@skiles.info',16),('nnienow@kuvalis.com',16),('cesar80@runte.com',17),('litzy.halvorson@bernier.com',17),('casimir07@yahoo.com',18),('uledner@gmail.com',18),('anne.auer@hotmail.com',19),('norma.buckridge@dietrich.org',19),('janis.stokes@kihn.com',20),('tabitha37@yahoo.com',20),('brakus.mireille@hotmail.com',21),('victoria.shields@gmail.com',22),('blick.minerva@crookspagac.org',23),('friesen.jeffry@weber.net',24),('andre.simonis@gmail.com',25),('schimmel.maureen@ferry.com',26),('tbatz@hotmail.com',27),('maeve.vonrueden@bechtelar.info',28),('gretchen.turcotte@lebsack.com',29),('bryce23@hotmail.com',30);
/*!40000 ALTER TABLE `contact_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `Contact_ID` int NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(255) DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  `ContactsUser_ID` int NOT NULL,
  PRIMARY KEY (`Contact_ID`),
  KEY `ContactsUser_ID` (`ContactsUser_ID`),
  CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`ContactsUser_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Heath Bode','(980)891-2177x985',1),(2,'Jayde Cole','1-106-614-3753',2),(3,'Germaine Nolan','1-534-529-3658x023',3),(4,'Daphnee Johnson','178-920-4715',4),(5,'Lonny Hand','557.906.8566',5),(6,'Dr. Rodrigo Ledner I','206-686-7521x5320',6),(7,'Ali Jakubowski','967-254-0844',7),(8,'Roberto Miller','(441)104-1342x49462',8),(9,'Samanta Cruickshank','1-977-659-0715x08652',9),(10,'Clementina Conn','1-909-068-3414x509',10),(11,'Kaden Jakubowski','1-191-602-5139',11),(12,'Cynthia Gerhold','523.722.0723',12),(13,'Macie Veum','+24(9)5776653347',13),(14,'Mrs. Glenna Streich PhD','+12(6)7435493635',14),(15,'Prof. Alec Hintz MD','166-662-9273',15),(16,'Jordy Blick','598.601.2470',1),(17,'Mrs. Alda Frami MD','(921)450-3849x22622',2),(18,'Hoyt Steuber','271-458-9125x451',3),(19,'Frances Zemlak','1-316-140-1086x57506',4),(20,'Ivory Schuster','924-480-2527x3480',5),(21,'Dahlia Huel','275.105.1575x557',6),(22,'Prof. Guadalupe McDermott PhD','1-604-137-3246x493',7),(23,'Arnaldo Murazik MD','(449)456-2257x6686',8),(24,'Kelli Trantow I','507.588.5593x74879',9),(25,'Dr. Katarina Schumm','1-694-498-1635',10),(26,'Torrey Lueilwitz Jr.','(301)532-7464x8821',11),(27,'Jeremy Bruen','543.283.2623',12),(28,'Fae Corkery','(864)343-3482x79690',13),(29,'Dr. Dorthy Ritchie PhD','554.650.3808',14),(30,'Adriel Hagenes','123-775-6503x04875',15);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationName` varchar(255) NOT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `Contact_ID` int NOT NULL,
  PRIMARY KEY (`Contact_ID`,`LocationName`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Contact_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('70016 Friesen Divide Suite 891',-47.475818,157.601462,1),('3390 Kassulke Glens Suite 585',15.855951,21.757200,2),('339 Mathilde Wells Suite 791',75.780405,73.051845,3),('250 Horace Parkway Suite 981',-83.971096,-79.391348,4),('497 Yazmin Locks Suite 808',64.698839,-159.317918,5),('54478 Jerrell Glen Suite 746',71.127107,115.083155,6),('47588 Veronica View',-13.793332,176.999657,7),('01686 Larson Ports Apt. 444',41.669997,32.671377,8),('547 Kris Plaza Apt. 411',32.274700,-110.553726,9),('5900 Emard Skyway',14.621956,36.499373,10),('1471 Powlowski Knolls',70.732065,175.612343,11),('486 Isac Fords Suite 727',77.944986,130.346842,12),('3243 Roger Glens',-27.200530,-176.757968,13),('5827 Alex Road',41.399320,144.609281,14),('7480 O\'Hara Canyon',-82.917609,-52.132797,15),('751 Satterfield Stream Apt. 060',-33.422903,-110.245079,16),('3143 Gleason Lake Apt. 496',-60.310117,7.609765,17),('8037 Aufderhar Crossroad',78.163987,-35.172218,18),('537 Adrain Land',86.878311,-127.257256,19),('571 Lubowitz Drive',-46.513803,-41.198509,20),('97258 Dino Hills',31.903951,-129.569175,21),('0832 Laurel Estate Apt. 704',59.002730,142.928014,22),('5389 Kihn Land Apt. 312',-64.265756,57.964182,23),('532 Rowan Village Suite 484',-75.887805,75.834210,24),('6691 Arlo Rest Apt. 485',53.005204,-93.998715,25),('5794 Mossie Alley Apt. 706',-11.335558,-59.385171,26),('5457 Wendy Hills Suite 048',-59.090342,80.633718,27),('8539 Witting Trail',-62.658772,-47.917558,28),('2397 Cullen Crescent',-19.775255,-116.623249,29),('327 Gibson Lights Apt. 174',-58.901102,-58.133961,30);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `LoginHistoryID` int NOT NULL AUTO_INCREMENT,
  `LoginDateTime` datetime DEFAULT NULL,
  `LogoutDateTime` datetime DEFAULT NULL,
  `IPAddress` varchar(15) DEFAULT NULL,
  `DeviceInformation` varchar(255) DEFAULT NULL,
  `Login_User_ID` int NOT NULL,
  PRIMARY KEY (`LoginHistoryID`),
  KEY `Login_User_ID` (`Login_User_ID`),
  CONSTRAINT `login_history_ibfk_1` FOREIGN KEY (`Login_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
INSERT INTO `login_history` VALUES (1,'2004-04-20 16:58:42','2007-09-03 03:27:21','164.100.27.149','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.812.0 Safari/5362',1),(2,'2018-05-07 01:13:45','1981-05-24 02:14:08','223.19.9.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.831.0 Safari/5361',2),(3,'2014-03-17 06:56:50','2010-04-22 04:20:37','199.176.86.45','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5332 (KHTML, like Gecko) Chrome/13.0.837.0 Safari/5332',3),(4,'2012-03-08 01:01:17','1997-08-15 21:05:11','101.109.59.212','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_5) AppleWebKit/5341 (KHTML, like Gecko) Chrome/13.0.814.0 Safari/5341',4),(5,'1985-08-04 17:01:06','1983-01-08 19:25:01','57.190.80.157','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_8) AppleWebKit/5312 (KHTML, like Gecko) Chrome/14.0.888.0 Safari/5312',5),(6,'2020-01-07 02:34:59','1984-11-19 20:13:21','102.25.89.54','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_8) AppleWebKit/5311 (KHTML, like Gecko) Chrome/15.0.899.0 Safari/5311',6),(7,'2020-12-20 22:31:54','1986-03-10 02:55:21','178.83.63.140','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_4) AppleWebKit/5330 (KHTML, like Gecko) Chrome/14.0.880.0 Safari/5330',7),(8,'2009-01-24 01:12:09','1988-04-05 13:24:18','23.205.87.224','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_7) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.875.0 Safari/5361',8),(9,'2007-05-30 02:36:26','1974-09-08 11:04:07','239.18.214.106','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5352 (KHTML, like Gecko) Chrome/13.0.836.0 Safari/5352',9),(10,'2021-05-28 07:26:04','2017-09-25 22:38:43','186.18.135.0','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_2) AppleWebKit/5331 (KHTML, like Gecko) Chrome/13.0.808.0 Safari/5331',10),(11,'1984-06-06 23:24:22','1990-02-22 11:25:17','180.89.97.6','Mozilla/5.0 (Windows 98) AppleWebKit/5330 (KHTML, like Gecko) Chrome/15.0.820.0 Safari/5330',11),(12,'1971-10-04 06:55:26','2014-04-13 00:20:42','185.70.250.39','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5351 (KHTML, like Gecko) Chrome/14.0.813.0 Safari/5351',12),(13,'1982-06-03 11:50:18','2002-09-20 08:56:26','157.215.91.127','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/5321 (KHTML, like Gecko) Chrome/13.0.881.0 Safari/5321',13),(14,'1981-05-16 01:19:08','1973-04-30 00:27:09','205.34.76.47','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5352 (KHTML, like Gecko) Chrome/15.0.855.0 Safari/5352',14),(15,'1997-02-15 08:04:29','1996-07-19 07:16:48','58.70.228.92','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5340 (KHTML, like Gecko) Chrome/15.0.884.0 Safari/5340',15),(16,'1971-12-30 10:14:08','1989-06-23 10:32:59','148.60.119.0','Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5351 (KHTML, like Gecko) Chrome/15.0.838.0 Safari/5351',16),(17,'1992-11-28 12:27:45','2019-03-17 11:20:53','229.242.147.218','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5350 (KHTML, like Gecko) Chrome/14.0.842.0 Safari/5350',17),(18,'2003-10-10 03:20:33','2022-07-24 17:04:40','79.229.181.20','Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5332 (KHTML, like Gecko) Chrome/15.0.821.0 Safari/5332',18),(19,'1994-05-01 17:54:45','2019-12-26 23:49:08','86.58.61.228','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5332 (KHTML, like Gecko) Chrome/13.0.876.0 Safari/5332',19),(20,'1989-10-29 21:33:17','1982-09-20 22:06:12','95.208.157.201','Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5310 (KHTML, like Gecko) Chrome/15.0.870.0 Safari/5310',20),(21,'2006-01-26 07:13:56','1995-11-06 15:41:11','137.242.54.54','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7) AppleWebKit/5340 (KHTML, like Gecko) Chrome/15.0.838.0 Safari/5340',21),(22,'2018-09-07 22:35:23','2003-05-13 04:55:28','144.50.6.106','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5311 (KHTML, like Gecko) Chrome/14.0.845.0 Safari/5311',22),(23,'1980-07-28 14:07:54','1986-02-10 14:08:13','166.97.1.207','Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.879.0 Safari/5311',23),(24,'2004-01-03 19:16:15','1970-02-07 03:39:28','241.217.239.77','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_7) AppleWebKit/5351 (KHTML, like Gecko) Chrome/15.0.807.0 Safari/5351',24),(25,'2011-06-13 05:13:01','2009-03-15 08:15:55','40.49.56.13','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_3) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.811.0 Safari/5361',25),(26,'2010-06-07 21:03:57','1985-08-09 09:26:49','231.113.117.112','Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/14.0.833.0 Safari/5331',26),(27,'1993-01-18 04:09:09','1984-10-10 08:35:18','209.17.132.121','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_9) AppleWebKit/5322 (KHTML, like Gecko) Chrome/15.0.886.0 Safari/5322',27),(28,'1989-01-08 22:57:17','1973-03-09 09:50:25','68.21.109.241','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5350 (KHTML, like Gecko) Chrome/14.0.849.0 Safari/5350',28),(29,'1971-06-21 16:13:05','1983-05-18 13:23:21','60.143.238.23','Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.843.0 Safari/5311',29),(30,'2016-04-07 19:53:34','2010-05-31 22:33:06','9.171.209.185','Mozilla/5.0 (Windows CE) AppleWebKit/5360 (KHTML, like Gecko) Chrome/13.0.840.0 Safari/5360',30),(31,'2004-04-20 16:58:42','2007-09-03 03:27:21','164.100.27.149','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.812.0 Safari/5362',1),(32,'2018-05-07 01:13:45','1981-05-24 02:14:08','223.19.9.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.831.0 Safari/5361',2),(33,'2014-03-17 06:56:50','2010-04-22 04:20:37','199.176.86.45','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5332 (KHTML, like Gecko) Chrome/13.0.837.0 Safari/5332',3),(34,'2012-03-08 01:01:17','1997-08-15 21:05:11','101.109.59.212','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_5) AppleWebKit/5341 (KHTML, like Gecko) Chrome/13.0.814.0 Safari/5341',4),(35,'1985-08-04 17:01:06','1983-01-08 19:25:01','57.190.80.157','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_8) AppleWebKit/5312 (KHTML, like Gecko) Chrome/14.0.888.0 Safari/5312',5),(36,'2020-01-07 02:34:59','1984-11-19 20:13:21','102.25.89.54','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_8) AppleWebKit/5311 (KHTML, like Gecko) Chrome/15.0.899.0 Safari/5311',6),(37,'2020-12-20 22:31:54','1986-03-10 02:55:21','178.83.63.140','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_4) AppleWebKit/5330 (KHTML, like Gecko) Chrome/14.0.880.0 Safari/5330',7),(38,'2009-01-24 01:12:09','1988-04-05 13:24:18','23.205.87.224','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_7) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.875.0 Safari/5361',8),(39,'2007-05-30 02:36:26','1974-09-08 11:04:07','239.18.214.106','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5352 (KHTML, like Gecko) Chrome/13.0.836.0 Safari/5352',9),(40,'2021-05-28 07:26:04','2017-09-25 22:38:43','186.18.135.0','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_2) AppleWebKit/5331 (KHTML, like Gecko) Chrome/13.0.808.0 Safari/5331',10),(41,'1984-06-06 23:24:22','1990-02-22 11:25:17','180.89.97.6','Mozilla/5.0 (Windows 98) AppleWebKit/5330 (KHTML, like Gecko) Chrome/15.0.820.0 Safari/5330',11),(42,'1971-10-04 06:55:26','2014-04-13 00:20:42','185.70.250.39','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5351 (KHTML, like Gecko) Chrome/14.0.813.0 Safari/5351',12),(43,'1982-06-03 11:50:18','2002-09-20 08:56:26','157.215.91.127','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/5321 (KHTML, like Gecko) Chrome/13.0.881.0 Safari/5321',13),(44,'1981-05-16 01:19:08','1973-04-30 00:27:09','205.34.76.47','Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5352 (KHTML, like Gecko) Chrome/15.0.855.0 Safari/5352',14),(45,'1997-02-15 08:04:29','1996-07-19 07:16:48','58.70.228.92','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5340 (KHTML, like Gecko) Chrome/15.0.884.0 Safari/5340',15),(46,'1971-12-30 10:14:08','1989-06-23 10:32:59','148.60.119.0','Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5351 (KHTML, like Gecko) Chrome/15.0.838.0 Safari/5351',16),(47,'1992-11-28 12:27:45','2019-03-17 11:20:53','229.242.147.218','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5350 (KHTML, like Gecko) Chrome/14.0.842.0 Safari/5350',17),(48,'2003-10-10 03:20:33','2022-07-24 17:04:40','79.229.181.20','Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5332 (KHTML, like Gecko) Chrome/15.0.821.0 Safari/5332',17),(49,'1994-05-01 17:54:45','2019-12-26 23:49:08','86.58.61.228','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5332 (KHTML, like Gecko) Chrome/13.0.876.0 Safari/5332',17),(50,'1989-10-29 21:33:17','1982-09-20 22:06:12','95.208.157.201','Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5310 (KHTML, like Gecko) Chrome/15.0.870.0 Safari/5310',17),(51,'2006-01-26 07:13:56','1995-11-06 15:41:11','137.242.54.54','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7) AppleWebKit/5340 (KHTML, like Gecko) Chrome/15.0.838.0 Safari/5340',17),(52,'2018-09-07 22:35:23','2003-05-13 04:55:28','144.50.6.106','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5311 (KHTML, like Gecko) Chrome/14.0.845.0 Safari/5311',17),(53,'1980-07-28 14:07:54','1986-02-10 14:08:13','166.97.1.207','Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.879.0 Safari/5311',17),(54,'2004-01-03 19:16:15','1970-02-07 03:39:28','241.217.239.77','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_7) AppleWebKit/5351 (KHTML, like Gecko) Chrome/15.0.807.0 Safari/5351',17),(55,'2011-06-13 05:13:01','2009-03-15 08:15:55','40.49.56.13','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_3) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.811.0 Safari/5361',17),(56,'2010-06-07 21:03:57','1985-08-09 09:26:49','231.113.117.112','Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/14.0.833.0 Safari/5331',17),(57,'1993-01-18 04:09:09','1984-10-10 08:35:18','209.17.132.121','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_9) AppleWebKit/5322 (KHTML, like Gecko) Chrome/15.0.886.0 Safari/5322',17),(58,'1989-01-08 22:57:17','1973-03-09 09:50:25','68.21.109.241','Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5350 (KHTML, like Gecko) Chrome/14.0.849.0 Safari/5350',17),(59,'1971-06-21 16:13:05','1983-05-18 13:23:21','60.143.238.23','Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.843.0 Safari/5311',17),(60,'2016-04-07 19:53:34','2010-05-31 22:33:06','9.171.209.185','Mozilla/5.0 (Windows CE) AppleWebKit/5360 (KHTML, like Gecko) Chrome/13.0.840.0 Safari/5360',17);
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participation` (
  `P_SpamID` int NOT NULL,
  `P_User_ID` int NOT NULL,
  `P_ActivityID` int NOT NULL,
  PRIMARY KEY (`P_SpamID`,`P_User_ID`),
  KEY `P_User_ID` (`P_User_ID`),
  KEY `P_ActivityID` (`P_ActivityID`),
  CONSTRAINT `participation_ibfk_1` FOREIGN KEY (`P_SpamID`) REFERENCES `spam` (`SpamID`) ON DELETE CASCADE,
  CONSTRAINT `participation_ibfk_2` FOREIGN KEY (`P_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `participation_ibfk_3` FOREIGN KEY (`P_ActivityID`) REFERENCES `useractivity` (`ActivityID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participation`
--

LOCK TABLES `participation` WRITE;
/*!40000 ALTER TABLE `participation` DISABLE KEYS */;
INSERT INTO `participation` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30);
/*!40000 ALTER TABLE `participation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `Personal_User_ID` int DEFAULT NULL,
  KEY `Personal_User_ID` (`Personal_User_ID`),
  CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`Personal_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_notification`
--

DROP TABLE IF EXISTS `profile_view_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_view_notification` (
  `NotificationId` int NOT NULL AUTO_INCREMENT,
  `NotificationDateTime` datetime DEFAULT NULL,
  `NotificationMessage` text,
  `ProfileViewID` int NOT NULL,
  PRIMARY KEY (`NotificationId`),
  KEY `ProfileViewID` (`ProfileViewID`),
  CONSTRAINT `profile_view_notification_ibfk_1` FOREIGN KEY (`ProfileViewID`) REFERENCES `profileview` (`ProfileViewID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_notification`
--

LOCK TABLES `profile_view_notification` WRITE;
/*!40000 ALTER TABLE `profile_view_notification` DISABLE KEYS */;
INSERT INTO `profile_view_notification` VALUES (1,'2005-08-28 17:52:45','Your profile has been viewed by Kailey Bogan',1),(2,'1996-02-22 03:35:15',NULL,2),(3,'2005-06-18 14:43:50',NULL,3),(4,'1980-07-21 14:13:21','Your profile has been viewed by Rick Connelly Jr.',4),(5,'1991-09-21 07:43:01',NULL,5),(6,'1998-06-04 13:38:30',NULL,6),(7,'1970-07-24 16:12:57','Your profile has been viewed by Noble Nader',7),(8,'1992-02-23 05:26:39',NULL,8),(9,'2019-11-18 09:29:53',NULL,9),(10,'2009-05-28 05:00:01','Your profile has been viewed by Florida Kshlerin',10),(11,'1980-07-14 17:02:32',NULL,11),(12,'2002-12-15 07:18:19',NULL,12),(13,'2013-01-16 17:16:23','Your profile has been viewed by Prof. Forrest Bruen II',13),(14,'2010-03-15 15:33:01',NULL,14),(15,'1973-04-16 01:10:50',NULL,15),(16,'2016-09-28 11:12:36','Your profile has been viewed by Loren Dickinson MD',16),(17,'2008-09-24 22:14:06',NULL,17),(18,'1989-05-29 13:23:50',NULL,18),(19,'1995-03-01 00:22:33','Your profile has been viewed by Alphonso Oberbrunner',19),(20,'1991-02-01 18:28:07',NULL,20);
/*!40000 ALTER TABLE `profile_view_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profileview`
--

DROP TABLE IF EXISTS `profileview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profileview` (
  `ProfileViewID` int NOT NULL AUTO_INCREMENT,
  `ViewerUserID` int NOT NULL,
  `ProfileUserID` int NOT NULL,
  `ViewDateTime` datetime DEFAULT NULL,
  `IsSecretMode` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ProfileViewID`),
  KEY `ViewerUserID` (`ViewerUserID`),
  KEY `ProfileUserID` (`ProfileUserID`),
  CONSTRAINT `profileview_ibfk_1` FOREIGN KEY (`ViewerUserID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `profileview_ibfk_2` FOREIGN KEY (`ProfileUserID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profileview`
--

LOCK TABLES `profileview` WRITE;
/*!40000 ALTER TABLE `profileview` DISABLE KEYS */;
INSERT INTO `profileview` VALUES (1,1,30,'2013-08-21 13:32:48',0),(2,2,31,'2002-05-28 05:17:37',1),(3,3,32,'2007-10-08 22:26:48',1),(4,4,33,'1987-10-05 20:31:14',0),(5,5,34,'2000-10-28 09:21:29',1),(6,6,35,'1971-09-16 17:21:33',1),(7,7,36,'2020-03-31 12:54:49',0),(8,8,37,'2023-09-30 15:52:40',1),(9,9,38,'2018-11-01 04:46:59',1),(10,10,39,'2010-11-06 06:02:20',0),(11,11,40,'1981-01-22 12:58:23',1),(12,12,41,'1983-03-31 08:19:14',1),(13,13,42,'2008-02-25 01:14:48',0),(14,14,43,'1985-07-18 06:44:45',1),(15,15,44,'1986-09-25 01:29:55',1),(16,16,45,'1974-01-17 02:05:45',0),(17,17,46,'1975-06-27 14:12:01',1),(18,18,47,'2003-09-17 06:46:14',1),(19,19,48,'1981-04-01 16:10:12',0),(20,20,49,'1977-05-18 21:36:55',1),(21,1,30,'2013-08-21 13:32:48',0),(22,20,31,'2002-05-28 05:17:37',1),(23,20,32,'2007-10-08 22:26:48',1),(24,4,33,'1987-10-05 20:31:14',0),(25,20,34,'2000-10-28 09:21:29',1),(26,20,35,'1971-09-16 17:21:33',1),(27,7,36,'2020-03-31 12:54:49',0),(28,20,37,'2023-09-30 15:52:40',1),(29,20,38,'2018-11-01 04:46:59',1),(30,10,39,'2010-11-06 06:02:20',0),(31,11,40,'1981-01-22 12:58:23',1),(32,12,41,'1983-03-31 08:19:14',1),(33,13,42,'2008-02-25 01:14:48',0),(34,14,43,'1985-07-18 06:44:45',1),(35,15,44,'1986-09-25 01:29:55',1),(36,16,45,'1974-01-17 02:05:45',0),(37,17,46,'1975-06-27 14:12:01',1),(38,18,47,'2003-09-17 06:46:14',1),(39,19,48,'1981-04-01 16:10:12',0),(40,20,49,'1977-05-18 21:36:55',1);
/*!40000 ALTER TABLE `profileview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spam`
--

DROP TABLE IF EXISTS `spam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spam` (
  `SpamID` int NOT NULL AUTO_INCREMENT,
  `ReportedPhoneNumber` varchar(20) DEFAULT NULL,
  `Reason` text,
  `ReportDate` date DEFAULT NULL,
  PRIMARY KEY (`SpamID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spam`
--

LOCK TABLES `spam` WRITE;
/*!40000 ALTER TABLE `spam` DISABLE KEYS */;
INSERT INTO `spam` VALUES (1,'880-704-1100','Misleading Information','2013-10-28'),(2,'1-206-968-3140x7257','Spoofed Caller ID','2004-10-08'),(3,'+46(8)5305437963','Telemarketing','2013-11-07'),(4,'207-666-6026x10467','Scam','1982-02-08'),(5,'1-360-681-8122x611','Scam','2020-05-21'),(6,'097.162.3207','Phishing Attempt','1983-03-28'),(7,'+00(4)8175757578','Telemarketing','1971-08-01'),(8,'(210)217-6771x6340','Robocall','2008-10-03'),(9,'081-898-8868','Automated Message','1982-12-25'),(10,'1-143-743-8654x53026','Fraudulent Activity','1983-07-05'),(11,'+39(1)2906158263','Fraudulent Activity','1970-04-19'),(12,'(038)898-8939','Spoofed Caller ID','1971-09-29'),(13,'221.720.2042','Misleading Information','2020-09-23'),(14,'2069916887','Scam','1975-07-01'),(15,'2196183981','Phishing Attempt','2005-12-19'),(16,'368-962-6070x366','Telemarketing','1972-03-08'),(17,'(920)728-5048x8097','Misleading Information','2009-07-18'),(18,'941.866.4848','Automated Message','1970-04-03'),(19,'(261)993-4515','Automated Message','2001-07-02'),(20,'168-501-0678x798','Phishing Attempt','1970-04-24'),(21,'698-926-6769','Automated Message','1976-11-28'),(22,'4621325155','Inappropriate Content','1994-03-20'),(23,'017.801.2602x69342','Automated Message','1977-08-27'),(24,'1743051623','Harassment','1994-07-08'),(25,'(851)923-2954x817','Phishing Attempt','1990-12-02'),(26,'296.757.6034','Scam','2007-05-25'),(27,'987.941.9431x181','Robocall','1999-02-22'),(28,'620-056-3951','Unwanted Communication','2017-10-16'),(29,'850-979-1054x319','Spoofed Caller ID','1987-08-04'),(30,'1-991-184-8165','Inappropriate Content','2010-10-17');
/*!40000 ALTER TABLE `spam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `SubscriptionID` int NOT NULL AUTO_INCREMENT,
  `SubscriptionStartDate` date DEFAULT NULL,
  `Subscription_User_ID` int NOT NULL,
  `SubscriptionTypeID` int NOT NULL,
  `SubscriptionEndDate` date DEFAULT NULL,
  PRIMARY KEY (`SubscriptionID`),
  KEY `Subscription_User_ID` (`Subscription_User_ID`),
  KEY `SubscriptionTypeID` (`SubscriptionTypeID`),
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`Subscription_User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`SubscriptionTypeID`) REFERENCES `subscriptiontype` (`SubscriptionTypeID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'2009-05-07',1,1,'2009-05-07'),(2,'1974-05-23',2,2,'1974-06-23'),(3,'2008-12-03',3,3,'2009-12-03'),(4,'1991-05-07',4,1,'1991-05-07'),(5,'2023-02-28',5,2,'2023-03-28'),(6,'2014-03-08',6,3,'2015-03-08'),(7,'1998-12-22',7,1,'1998-12-22'),(8,'2022-04-06',8,2,'2022-05-06'),(9,'1970-11-04',9,3,'1971-11-04'),(10,'1980-03-03',10,1,'1980-03-03'),(11,'2016-03-01',11,2,'2016-04-01'),(12,'2004-07-03',12,3,'2005-07-03'),(13,'1988-08-01',13,1,'1988-08-01'),(14,'1981-02-14',14,2,'1981-03-14'),(15,'1983-05-10',15,3,'1984-05-10'),(16,'2013-03-31',16,1,'2013-03-31'),(17,'2012-02-06',17,2,'2012-03-06'),(18,'1991-01-24',18,3,'1992-01-24'),(19,'1978-12-29',19,1,'1978-12-29'),(20,'1988-06-29',20,2,'1988-07-29'),(21,'1978-05-07',21,3,'1979-05-07'),(22,'1989-03-17',22,1,'1989-03-17'),(23,'2000-08-19',23,2,'2000-09-19'),(24,'1977-09-13',24,3,'1978-09-13'),(25,'1977-01-31',25,1,'1977-01-31'),(26,'1988-07-03',26,2,'1988-08-03'),(27,'1972-05-25',27,3,'1973-05-25'),(28,'1988-07-31',28,1,'1988-07-31'),(29,'1971-08-06',29,2,'1971-09-06'),(30,'1979-01-04',30,3,'1980-01-04'),(31,'1986-06-04',31,1,'1986-06-04'),(32,'1993-11-02',32,1,'1993-11-02'),(33,'2001-04-02',33,1,'2001-04-02'),(34,'2008-08-31',34,1,'2008-08-31'),(35,'2016-01-30',35,1,'2016-01-30'),(36,'2023-06-30',36,1,'2023-06-30'),(37,'2023-06-29',37,1,'2023-06-29'),(38,'2023-06-28',38,1,'2023-06-28'),(39,'2023-06-27',39,1,'2023-06-27'),(40,'2023-06-26',40,2,'2023-07-26'),(41,'2023-06-25',41,2,'2023-07-25'),(42,'2023-06-24',42,2,'2023-07-24'),(43,'2023-06-23',43,2,'2023-07-23'),(44,'2023-06-22',44,2,'2023-07-22'),(45,'2023-06-21',45,2,'2023-07-21'),(46,'2023-06-20',46,2,'2023-07-20'),(47,'2023-06-19',47,2,'2023-07-19'),(48,'2023-06-18',48,2,'2023-07-18'),(49,'2023-06-17',49,2,'2023-07-17'),(50,'2023-06-16',50,2,'2023-07-16'),(51,'2023-06-15',51,3,'2024-06-15'),(52,'2023-06-14',52,3,'2024-06-14'),(53,'2023-06-13',53,3,'2024-06-13'),(54,'2023-06-12',54,3,'2024-06-12'),(55,'2023-06-11',55,3,'2024-06-11'),(56,'2023-06-10',56,3,'2024-06-10'),(57,'2023-06-09',57,3,'2024-06-09'),(58,'2023-06-08',58,3,'2024-06-08'),(59,'2023-06-07',59,3,'2024-06-07'),(60,'2023-06-06',60,3,'2024-06-06'),(61,'2023-06-05',61,3,'2024-06-05'),(62,'2023-06-04',62,3,'2024-06-04'),(63,'2023-06-03',63,3,'2024-06-03'),(64,'2023-06-02',64,3,'2024-06-02'),(65,'2023-06-01',65,3,'2024-06-01'),(66,'2023-05-31',66,3,'2024-05-31'),(67,'2023-05-30',67,3,'2024-05-30'),(68,'2023-05-29',68,2,'2023-06-29'),(69,'2023-05-28',69,2,'2023-06-28'),(70,'2023-05-27',70,2,'2023-06-27'),(71,'2023-05-26',71,2,'2023-06-26'),(72,'2023-05-25',72,2,'2023-06-25'),(73,'2023-05-24',73,2,'2023-06-24'),(74,'2023-05-23',74,3,'2024-05-23'),(75,'2023-05-22',75,3,'2024-05-22'),(76,'2023-05-21',76,3,'2024-05-21'),(77,'2023-05-20',77,3,'2024-05-20'),(78,'2023-05-19',78,3,'2024-05-19'),(79,'2023-05-18',79,3,'2024-05-18'),(80,'2023-05-17',80,3,'2024-05-17'),(81,'2023-05-16',81,3,'2024-05-16'),(82,'2023-05-15',82,3,'2024-05-15'),(83,'2023-05-14',83,2,'2023-06-14'),(84,'2023-05-13',84,2,'2023-06-13'),(85,'2023-05-12',85,2,'2023-06-12'),(86,'2023-05-11',86,2,'2023-06-11'),(87,'2023-05-10',87,2,'2023-06-10'),(88,'2023-05-09',88,2,'2023-06-09'),(89,'2023-05-08',89,3,'2024-05-08'),(90,'2023-05-07',90,3,'2024-05-07'),(91,'2023-05-06',91,3,'2024-05-06'),(92,'2023-05-05',92,3,'2024-05-05'),(93,'2023-05-04',93,3,'2024-05-04'),(94,'2023-05-03',94,3,'2024-05-03'),(95,'2023-05-02',95,3,'2024-05-02'),(96,'2023-05-01',96,3,'2024-05-01'),(97,'2023-04-30',97,3,'2024-04-30'),(98,'2023-04-29',98,1,'2023-04-29'),(99,'2023-04-28',99,1,'2023-04-28'),(100,'2023-04-27',100,1,'2023-04-27');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptiontype`
--

DROP TABLE IF EXISTS `subscriptiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptiontype` (
  `SubscriptionTypeID` int NOT NULL AUTO_INCREMENT,
  `SubscriptionTypeName` enum('Free','Annual','Monthly') NOT NULL,
  `SubscriptionTypePrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`SubscriptionTypeID`),
  CONSTRAINT `subscriptiontype_chk_1` CHECK ((((`SubscriptionTypeName` = _utf8mb4'Free') and (`SubscriptionTypePrice` = 0)) or ((`SubscriptionTypeName` = _utf8mb4'Annual') and (`SubscriptionTypePrice` = 110)) or ((`SubscriptionTypeName` = _utf8mb4'Monthly') and (`SubscriptionTypePrice` = 10))))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptiontype`
--

LOCK TABLES `subscriptiontype` WRITE;
/*!40000 ALTER TABLE `subscriptiontype` DISABLE KEYS */;
INSERT INTO `subscriptiontype` VALUES (1,'Free',0.00),(2,'Monthly',10.00),(3,'Annual',110.00);
/*!40000 ALTER TABLE `subscriptiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `ContactNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Kailey Bogan','(625)672-0068x08558'),(2,'Dr. Stanford Huels V','005.597.0515x97864'),(3,'Brenna Monahan DDS','950.091.3755'),(4,'Rick Connelly Jr.','101.262.2594x7834'),(5,'Candido Sipes','1-063-895-4367'),(6,'Alice Berge','372.815.1415'),(7,'Noble Nader','+76(3)9802284144'),(8,'Carmela Barton PhD','632-039-9447x313'),(9,'Mr. Alejandrin Bosco','724-344-2562'),(10,'Florida Kshlerin','1-991-236-5762x588'),(11,'Vickie Gutmann','220-668-5025'),(12,'Lora Wolf MD','207-989-0451'),(13,'Prof. Forrest Bruen II','1-426-702-0165x9881'),(14,'Jedidiah Davis','1-906-047-6774x8338'),(15,'Leonie Fahey','(752)762-6537x23418'),(16,'Loren Dickinson MD','370.992.2484'),(17,'Dr. Athena Wyman V','971-438-5698x675'),(18,'Efren Willms','(462)543-3328x1829'),(19,'Alphonso Oberbrunner','05776698698'),(20,'Jovani Schowalter','(633)018-9674x1939'),(21,'Mathilde Rodriguez','336.313.1340x2942'),(22,'Prof. Destiny Raynor','(345)309-1781x3581'),(23,'Ricky Romaguera DVM','232-606-2595'),(24,'Leonie Rempel','(430)868-7734x679'),(25,'Ceasar Carter','09260062844'),(26,'Avery Hahn','621.962.7289'),(27,'Jettie Abbott','608-343-1545x0368'),(28,'Ofelia Hoppe IV','(648)502-6936x48639'),(29,'Dorian Thompson','1-173-086-0338x96508'),(30,'Madge Mitchell','715.222.2669x1006'),(31,'Marshall Farrell V','1-757-600-9721'),(32,'Clay West PhD','1-756-983-0947x670'),(33,'Kaitlyn Dooley','(664)841-2278x923'),(34,'Miss Amber Luettgen','(557)784-5753x19034'),(35,'Allie Blick','213.308.6459x8103'),(36,'Lottie Collins','555.316.5646x108'),(37,'Ryleigh Grant','08332967050'),(38,'Mrs. Angelita Williamson Sr.','382-808-0704'),(39,'Prof. Chance Dickinson DVM','1-493-161-6814x0392'),(40,'Ivory Streich','1-028-778-9203'),(41,'Edgar Turner Sr.','(140)507-9850x114'),(42,'Laverna Cassin','517-856-2070x24553'),(43,'Miss Shawna Hackett','(493)094-4164x18768'),(44,'Beatrice Muller','+47(2)7237817447'),(45,'Tressie Keeling','1-827-449-9126'),(46,'Lucius Langworth','03943800959'),(47,'Mr. Mustafa Lehner II','(918)028-7142x31775'),(48,'Miss Myriam Kreiger MD','821-720-2367x9430'),(49,'Ms. Rebeca Langosh IV','1-583-644-9813x4022'),(50,'Ms. Brisa Rau','+76(1)8030402702'),(51,'Danielle Doyle','041.939.4317x401'),(52,'Dr. Jordon Hilpert','343.248.1077'),(53,'Mr. Danny Ziemann Jr.','09249368932'),(54,'Dr. King Brekke V','776-541-6063'),(55,'Gino Shanahan','(930)479-7817x43118'),(56,'Josefina Hyatt','00407054242'),(57,'Camren Connelly','1-680-769-5545x04523'),(58,'Aliza Ruecker','+48(8)4076703131'),(59,'Geoffrey Schinner','443-689-9410x288'),(60,'Dr. Rahsaan Bashirian','677-130-8402x3599'),(61,'Selena Ruecker','(932)526-5266'),(62,'Darrel Pouros','008-648-8234x940'),(63,'Mrs. Carole Terry Sr.','1-376-306-0693'),(64,'Prof. Kurtis Hahn I','(435)169-2944x0182'),(65,'Dr. Mohamed Zboncak','+13(2)0396828657'),(66,'Ernestine McKenzie','+57(2)1168061369'),(67,'Yvette O\'Reilly','090.255.2188'),(68,'Ross Bradtke','311-091-6065x37629'),(69,'Luella Runte','+54(7)7833958362'),(70,'Wilmer Mayer','(908)791-7794x06057'),(71,'Jody Stehr','(195)370-8933'),(72,'Garth Prohaska II','(142)217-9163'),(73,'Mr. Grant Morar','00941196352'),(74,'Brad Dooley','241.862.1633x74780'),(75,'Markus Christiansen PhD','1-554-463-0360'),(76,'Gerda Bahringer','04446007284'),(77,'Carlotta Shields','229-540-9328'),(78,'Mr. Matt Krajcik V','710-951-9785x28184'),(79,'Marcelina Stanton I','478-345-3475x1816'),(80,'Emily McKenzie','1-854-166-0034x521'),(81,'Toby Haley','889-878-4314'),(82,'Ashlynn Prohaska','380-529-1301x2107'),(83,'Mr. Merl Bailey','1-819-893-5446'),(84,'Joe Schultz Sr.','1-235-154-9942x7812'),(85,'Hassie Stanton','(046)785-6846x2850'),(86,'Brandi King','+88(6)6781765266'),(87,'Miss Alexa Bradtke','08039696776'),(88,'Abbie Friesen','(158)360-5253'),(89,'Mr. Landen Baumbach IV','728.359.1950'),(90,'Justen Ritchie V','981.775.4970x461'),(91,'Richie Harber','(197)864-6704x63526'),(92,'Cassidy Glover','(297)821-7697x255'),(93,'Willy Runolfsdottir','1-166-793-5487'),(94,'Ed Fadel','1-959-789-2206'),(95,'Maye Lueilwitz','195.825.1870'),(96,'Dr. Hiram Block','1-415-591-0631'),(97,'Keith Beahan','933-234-8621x206'),(98,'Marlin Davis','(937)569-3589'),(99,'Carrie Rau','219.883.2420x7116'),(100,'Izabella Waelchi','139.430.1617x79970');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_email`
--

DROP TABLE IF EXISTS `user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_email` (
  `EmailAddress` varchar(255) NOT NULL,
  `User_ID` int NOT NULL,
  PRIMARY KEY (`EmailAddress`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `user_email_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_email`
--

LOCK TABLES `user_email` WRITE;
/*!40000 ALTER TABLE `user_email` DISABLE KEYS */;
INSERT INTO `user_email` VALUES ('ed\'amore@gmail.com',1),('rmurphy@yahoo.com',1),('casper.devante@breitenbergfeeney.info',2),('rbaumbach@streich.biz',2),('giovanni54@gmail.com',3),('qkirlin@gmail.com',3),('herman.kuhn@yahoo.com',4),('jaskolski.dasia@adams.com',4),('afton.waters@gmail.com',5),('cormier.mozell@gmail.com',5),('hickle.evie@hotmail.com',6),('quitzon.rogelio@gmail.com',6),('kayleigh03@gmail.com',7),('monte.thiel@yahoo.com',7),('damion.hamill@hotmail.com',8),('kolby.gulgowski@yahoo.com',8),('justina.murazik@yahoo.com',9),('osauer@hotmail.com',9),('layne.lueilwitz@labadie.com',10),('mschoen@turner.biz',10),('lsenger@conroy.biz',11),('xbailey@wuckertwalker.biz',11),('fay.goldner@gmail.com',12),('katharina09@hotmail.com',12),('jerod51@toy.com',13),('loyce.welch@kub.com',13),('josiane29@gmail.com',14),('sporer.kurt@gleichnermorar.com',14),('jamir.cassin@hotmail.com',15),('yundt.makayla@wilderman.com',15),('herzog.darryl@yahoo.com',16),('price.schuppe@yahoo.com',16),('adelbert50@hotmail.com',17),('inolan@yahoo.com',17),('hahn.vincent@gmail.com',18),('tbailey@ferrycummerata.org',18),('enrique.trantow@hotmail.com',19),('lowell07@hotmail.com',19),('ashton.mayert@gmail.com',20),('jocelyn51@gmail.com',20),('leland.king@wiza.com',21),('vida.aufderhar@hotmail.com',21),('izaiah49@wolffkreiger.info',22),('niko.ruecker@hotmail.com',22),('sbergnaum@barton.com',23),('xstehr@quitzon.com',23),('khackett@gmail.com',24),('lloyd.doyle@yahoo.com',24),('brent73@gmail.com',25),('isaias.schroeder@konopelski.com',25),('gorczany.toy@gmail.com',26),('vernie28@yahoo.com',26),('gbradtke@luettgendeckow.com',27),('hermiston.price@hayes.com',27),('ebert.deron@balistreri.com',28),('littel.erling@gottliebratke.com',28),('jackie56@yahoo.com',29),('zboncak.amiya@yahoo.com',29),('bogisich.lee@hotmail.com',30),('champlin.lilla@gmail.com',30),('bailey.idella@hand.com',31),('kathryn92@gmail.com',31),('connelly.randi@kuhlman.net',32),('ycole@yahoo.com',32),('georgianna.nitzsche@steuber.biz',33),('nlarkin@conroy.com',33),('anita.okuneva@gibson.net',34),('mills.lilla@balistrericonnelly.com',34),('hklein@hotmail.com',35),('ywalker@hotmail.com',35),('kirlin.josiah@feil.info',36),('rebekah.wehner@gmail.com',36),('lane.o\'connell@wunschfritsch.com',37),('pedro.harber@lowe.com',37),('edmond45@grahamlangworth.com',38),('moore.trent@christiansendamore.biz',38),('arlo62@gmail.com',39),('harmony.zemlak@hellerwilderman.com',39),('dickens.devonte@lemke.info',40),('lamar38@gmail.com',40),('abernathy.jake@hotmail.com',41),('schroeder.clementine@hotmail.com',41),('maggio.priscilla@gmail.com',42),('rhett.mayer@yahoo.com',42),('hickle.tressie@osinski.com',43),('nitzsche.eldred@volkmanstanton.com',43),('tyra37@yahoo.com',44),('zcruickshank@trompoberbrunner.info',44),('eudora94@yahoo.com',45),('qbaumbach@yahoo.com',45),('crooks.erica@kreiger.org',46),('meda.kohler@yahoo.com',46),('lilla53@rogahn.com',47),('lzemlak@beerlehner.com',47),('feffertz@gmail.com',48),('wgoodwin@gmail.com',48),('eloy89@hane.biz',49),('jazmyn.eichmann@yahoo.com',49),('iebert@hotmail.com',50),('o\'connell.esta@monahan.net',50),('aliza90@kirlin.org',51),('wintheiser.betsy@yahoo.com',52),('buckridge.manuela@champlinlesch.net',53),('theodore.ziemann@batzschumm.com',54),('lucious31@gmail.com',55),('yhilll@yahoo.com',56),('mona10@blanda.org',57),('xconnelly@pollichgoldner.com',58),('ablick@hagenes.org',59),('thomas88@flatley.com',60),('kuhn.nelle@hotmail.com',61),('bpowlowski@yahoo.com',62),('darius.windler@yahoo.com',63),('rbailey@prosaccobayer.com',64),('phammes@murazikveum.com',65),('adriana.eichmann@reichelkassulke.com',66),('zryan@gmail.com',67),('ivory86@watersgoodwin.com',68),('orlo.heidenreich@jacobs.com',69),('annamarie95@yahoo.com',70),('ehirthe@hotmail.com',71),('feest.eloise@yahoo.com',72),('andres.buckridge@ondricka.com',73),('jeramy89@yahoo.com',74),('gladyce.kohler@yahoo.com',75),('bayer.ismael@cruickshank.com',76),('palma.heaney@olson.com',77),('rosella00@hotmail.com',78),('tsanford@boehm.com',79),('schmitt.domenica@labadiepowlowski.com',80),('feest.hudson@yahoo.com',81),('larson.eva@gmail.com',82),('edwin81@langosh.org',83),('clifford30@yahoo.com',84),('crona.coy@gmail.com',85),('lamont.gulgowski@yahoo.com',86),('gust.rice@altenwerthbarton.com',87),('erich47@hyatt.com',88),('mathias87@yahoo.com',89),('ystroman@weissnat.com',90),('cale20@gmail.com',91),('hfeest@yahoo.com',92),('candelario37@hotmail.com',93),('hipolito.schimmel@yahoo.com',94),('wortiz@blanda.com',95),('gboyer@gmail.com',96),('diego.kozey@yahoo.com',97),('gaylord.robyn@rempel.net',98),('jarod.hermann@gmail.com',99),('arnoldo48@macejkovic.org',100);
/*!40000 ALTER TABLE `user_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useractivity`
--

DROP TABLE IF EXISTS `useractivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useractivity` (
  `ActivityID` int NOT NULL AUTO_INCREMENT,
  `UserActivity_Timestamp` datetime DEFAULT NULL,
  `ActivityDetails` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ActivityID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useractivity`
--

LOCK TABLES `useractivity` WRITE;
/*!40000 ALTER TABLE `useractivity` DISABLE KEYS */;
INSERT INTO `useractivity` VALUES (1,'1976-10-11 03:43:32','Marked Message as Spam'),(2,'1998-04-17 23:55:17','Reported Telemarketing Call'),(3,'1996-07-26 19:16:01','Identified Scam Activity'),(4,'2017-11-20 15:14:31','Identified Phishing Attempt'),(5,'1971-09-29 16:52:53','Marked Message as Spam'),(6,'1973-09-30 11:28:52','Received Spam Call'),(7,'1994-03-17 21:53:38','Identified Scam Activity'),(8,'1992-11-22 12:57:19','Received Spam Call'),(9,'1972-05-08 11:19:13','Blocked a Spam User'),(10,'1991-08-03 14:15:48','Reported a Spam Call'),(11,'1980-03-30 11:41:01','Marked Message as Spam'),(12,'1975-12-10 18:32:55','Detected Robocall'),(13,'1992-04-15 04:43:03','Reported a Spam Call'),(14,'1986-04-25 00:56:59','Received Spam Call'),(15,'1994-06-10 15:34:49','Reported Telemarketing Call'),(16,'1997-11-07 00:13:22','Received Spam Call'),(17,'1986-10-07 07:53:34','Identified Scam Activity'),(18,'1987-05-11 22:18:11','Blocked a Spam User'),(19,'1987-12-10 01:54:44','Reported Telemarketing Call'),(20,'2008-12-27 22:05:15','Detected Robocall'),(21,'2018-01-12 06:50:06','Reported a Spam Call'),(22,'1979-04-18 23:39:35','Marked Message as Spam'),(23,'1993-09-21 20:10:22','Identified Phishing Attempt'),(24,'1995-06-18 01:12:53','Received Spam Call'),(25,'2007-12-31 07:34:34','Blocked a Spam User'),(26,'2001-08-20 21:34:21','Detected Robocall'),(27,'2012-10-04 21:24:32','Detected Robocall'),(28,'1971-06-24 22:03:08','Detected Robocall'),(29,'2022-06-20 13:48:56','Reported a Spam Call'),(30,'2016-02-10 07:08:28','Identified Phishing Attempt');
/*!40000 ALTER TABLE `useractivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrating`
--

DROP TABLE IF EXISTS `userrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrating` (
  `RatingID` int NOT NULL AUTO_INCREMENT,
  `Review` text,
  `Rating` int DEFAULT NULL,
  `UserRatingTimeStamp` datetime DEFAULT NULL,
  `RatedCallerID` int NOT NULL,
  `User_ID` int NOT NULL,
  PRIMARY KEY (`RatingID`),
  KEY `User_ID` (`User_ID`),
  KEY `RatedCallerID` (`RatedCallerID`),
  CONSTRAINT `userrating_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE,
  CONSTRAINT `userrating_ibfk_2` FOREIGN KEY (`RatedCallerID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrating`
--

LOCK TABLES `userrating` WRITE;
/*!40000 ALTER TABLE `userrating` DISABLE KEYS */;
INSERT INTO `userrating` VALUES (1,'I\'m highly satisfied with the timely and professional service you provided',3,'1999-08-13 21:07:25',70,40),(2,'You were very helpful and knowledgeable. A pleasure to work with',1,'2009-06-19 14:35:12',71,41),(3,'We experienced connectivity issues during our call. Let\'s work on it.',0,'2022-03-29 23:55:19',72,42),(4,'We experienced connectivity issues during our call. Let\'s work on it.',0,'2009-02-01 05:04:50',73,43),(5,'We experienced connectivity issues during our call. Let\'s work on it.',4,'1975-02-25 08:21:10',74,44),(6,'We experienced connectivity issues during our call. Let\'s work on it.',3,'2016-11-21 14:10:57',75,45),(7,'We experienced connectivity issues during our call. Let\'s work on it.',3,'2003-08-19 12:39:28',76,46),(8,'We experienced connectivity issues during our call. Let\'s work on it.',3,'1987-11-06 20:09:39',77,47),(9,'We experienced connectivity issues during our call. Let\'s work on it.',3,'2018-05-22 08:28:50',78,48),(10,'You were very helpful and knowledgeable. A pleasure to work with',5,'1977-07-04 18:21:49',79,49),(11,'You were very helpful and knowledgeable. A pleasure to work with',0,'2001-12-31 11:38:18',80,50),(12,'We experienced connectivity issues during our call. Let\'s work on it.',0,'1990-08-03 19:33:28',81,51),(13,'We experienced connectivity issues during our call. Let\'s work on it.',2,'2019-11-25 04:22:50',82,52),(14,'We experienced connectivity issues during our call. Let\'s work on it.',0,'1992-09-11 03:32:39',83,53),(15,'I\'m highly satisfied with the timely and professional service you provided',5,'2011-02-08 20:20:03',84,54),(16,'I\'m highly satisfied with the timely and professional service you provided',0,'2021-05-04 07:47:43',85,55),(17,'I\'m highly satisfied with the timely and professional service you provided',1,'1981-04-12 06:06:52',86,56),(18,'We experienced connectivity issues during our call. Let\'s work on it.',1,'1992-11-21 11:17:19',87,57),(19,'You were very helpful and knowledgeable. A pleasure to work with',0,'1986-02-14 01:52:08',88,58),(20,'You were very helpful and knowledgeable. A pleasure to work with',0,'2008-12-13 19:38:37',89,59),(21,'You were very helpful and knowledgeable. A pleasure to work with',0,'1972-09-15 00:44:36',90,60),(22,'We experienced connectivity issues during our call. Let\'s work on it.',5,'2014-12-26 07:28:16',91,61),(23,'You were very helpful and knowledgeable. A pleasure to work with',5,'1993-07-18 20:19:16',92,62),(24,'We experienced connectivity issues during our call. Let\'s work on it.',0,'1978-07-11 09:36:52',93,63),(25,'You were very helpful and knowledgeable. A pleasure to work with',3,'1977-03-07 08:26:28',94,64),(26,'I\'m highly satisfied with the timely and professional service you provided',4,'2004-02-03 02:32:09',95,65),(27,'I\'m highly satisfied with the timely and professional service you provided',3,'1986-01-02 03:37:15',96,66),(28,'I\'m highly satisfied with the timely and professional service you provided',2,'1977-02-12 11:39:39',97,67),(29,'We experienced connectivity issues during our call. Let\'s work on it.',1,'2008-07-04 03:16:28',98,68),(30,'You were very helpful and knowledgeable. A pleasure to work with',3,'2013-10-21 18:20:52',99,69),(31,'I\'m highly satisfied with the timely and professional service you provided',3,'1999-08-13 21:07:25',1,40),(32,'You were very helpful and knowledgeable. A pleasure to work with',1,'2009-06-19 14:35:12',2,41),(33,'We experienced connectivity issues during our call. Let\'s work on it.',0,'2022-03-29 23:55:19',3,42),(34,'We experienced connectivity issues during our call. Let\'s work on it.',0,'2009-02-01 05:04:50',4,43),(35,'We experienced connectivity issues during our call. Let\'s work on it.',4,'1975-02-25 08:21:10',5,44),(36,'We experienced connectivity issues during our call. Let\'s work on it.',3,'2016-11-21 14:10:57',6,45),(37,'We experienced connectivity issues during our call. Let\'s work on it.',3,'2003-08-19 12:39:28',7,46),(38,'We experienced connectivity issues during our call. Let\'s work on it.',3,'1987-11-06 20:09:39',8,47),(39,'We experienced connectivity issues during our call. Let\'s work on it.',3,'2018-05-22 08:28:50',9,48),(40,'You were very helpful and knowledgeable. A pleasure to work with',5,'1977-07-04 18:21:49',10,49),(41,'You were very helpful and knowledgeable. A pleasure to work with',0,'2001-12-31 11:38:18',11,50),(42,'We experienced connectivity issues during our call. Let\'s work on it.',0,'1990-08-03 19:33:28',12,51),(43,'We experienced connectivity issues during our call. Let\'s work on it.',2,'2019-11-25 04:22:50',13,52),(44,'We experienced connectivity issues during our call. Let\'s work on it.',0,'1992-09-11 03:32:39',14,53),(45,'I\'m highly satisfied with the timely and professional service you provided',5,'2011-02-08 20:20:03',15,54);
/*!40000 ALTER TABLE `userrating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 17:51:42
