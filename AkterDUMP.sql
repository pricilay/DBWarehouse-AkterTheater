-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: cs100.seattleu.edu    Database: mm_cpsc5910team05
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `AUDITORIUM`
--

DROP TABLE IF EXISTS `AUDITORIUM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUDITORIUM` (
  `AuditoriumID` varchar(5) NOT NULL,
  `NumberOfSeat` int(11) DEFAULT NULL,
  `TheaterID` int(11) NOT NULL,
  `AuditoriumName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AuditoriumID`,`TheaterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUDITORIUM`
--

LOCK TABLES `AUDITORIUM` WRITE;
/*!40000 ALTER TABLE `AUDITORIUM` DISABLE KEYS */;
INSERT INTO `AUDITORIUM` VALUES ('1',211,1,'dui'),('10',159,1,'ipsum'),('11',129,2,'eu'),('12',223,2,'vestibulum'),('13',182,2,'ligula'),('14',228,2,'morbi'),('15',247,2,'aliquet'),('16',146,2,'nisi'),('17',194,2,'dictumst'),('18',176,2,'maecenas'),('19',166,2,'tellus'),('2',163,1,'consectetuer'),('20',185,2,'auctor'),('21',211,3,'diam'),('22',187,3,'euismod'),('23',220,3,'ut'),('24',157,3,'massa'),('25',138,3,'non'),('26',140,3,'fusce'),('27',159,3,'id'),('28',214,3,'nam'),('29',192,3,'aliquam'),('3',128,1,'nunc'),('30',237,3,'natoque'),('4',159,1,'non'),('5',197,1,'integer'),('6',198,1,'dui'),('7',171,1,'consequat'),('8',208,1,'morbi'),('9',136,1,'eu');
/*!40000 ALTER TABLE `AUDITORIUM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOKING`
--

DROP TABLE IF EXISTS `BOOKING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BOOKING` (
  `BookingID` int(11) DEFAULT NULL,
  `MemberID` int(11) DEFAULT NULL,
  `ScheduleID` int(11) DEFAULT NULL,
  `BookTime` text,
  `PaymentMethod` text,
  `Status` text,
  `TotalPrice` text,
  `EmpID` int(11) DEFAULT NULL,
  `NumOfSeat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOKING`
--

LOCK TABLES `BOOKING` WRITE;
/*!40000 ALTER TABLE `BOOKING` DISABLE KEYS */;
INSERT INTO `BOOKING` VALUES (1,1028,204,'2019-03-16','diners-club-carte-blanche','Billed','',902,3),(2,1005,203,'2019-03-27','diners-club-us-ca','Billed','',913,3),(3,1002,244,'2019-03-14','diners-club-carte-blanche','Billed','',928,3),(4,NULL,247,'2019-02-21','diners-club-international','Billed','99',926,3),(5,NULL,222,'2019-03-29','jcb','Billed','94',919,3),(6,NULL,221,'2019-03-05','jcb','Billed','33',916,3),(7,NULL,227,'2019-01-23','switch','Billed','20',918,3),(8,NULL,227,'2019-01-19','jcb','Billed','31',919,3),(9,NULL,211,'2019-03-18','jcb','Billed','92',923,3),(10,1010,231,'2019-03-25','jcb','Billed','',914,3),(11,1007,212,'2019-03-02','china-unionpay','Billed','',903,3),(12,1029,232,'2019-01-24','bankcard','Billed','',921,3),(13,1027,260,'2019-02-20','switch','Billed','',929,3),(14,1004,212,'2019-01-05','diners-club-carte-blanche','Billed','',917,3),(15,1010,248,'2019-02-27','diners-club-carte-blanche','Pending','',905,3),(16,1003,235,'2019-01-08','jcb','Billed','',902,3),(17,1003,217,'2019-03-08','jcb','Billed','',904,3),(18,1008,227,'2019-03-13','jcb','Billed','',911,1),(19,NULL,252,'2019-03-14','visa-electron','Billed','45',930,1),(20,NULL,204,'2019-03-15','americanexpress','Pending','94',915,1),(21,NULL,223,'2019-03-04','jcb','Billed','89',921,1),(22,NULL,218,'2019-01-28','switch','Billed','20',918,1),(23,NULL,212,'2019-02-26','diners-club-enroute','Billed','95',915,1),(24,NULL,232,'2019-03-25','jcb','Billed','20',920,1),(25,NULL,211,'2019-03-05','jcb','Billed','50',921,1),(26,NULL,204,'2019-03-21','mastercard','Billed','83',922,1),(27,NULL,226,'2019-03-19','jcb','Billed','73',914,1),(28,NULL,233,'2019-03-23','maestro','Billed','20',914,1),(29,NULL,207,'2019-03-23','jcb','Billed','73',926,1),(30,NULL,212,'2019-02-26','laser','Billed','54',927,1),(31,NULL,236,'2019-01-03','bankcard','Billed','20',926,1),(32,NULL,209,'2019-01-07','solo','Billed','41',907,1),(33,NULL,244,'2019-02-11','diners-club-enroute','Billed','20',921,1),(34,NULL,209,'2019-03-07','jcb','Billed','99',920,1),(35,NULL,222,'2019-01-09','visa-electron','Billed','79',921,1),(36,NULL,219,'2019-01-28','jcb','Billed','54',920,1),(37,1012,253,'2019-03-10','jcb','Billed','',922,1),(38,1022,257,'2019-03-19','americanexpress','Billed','',902,1),(39,1019,235,'2019-02-28','laser','Billed','',923,1),(40,1028,247,'2019-01-03','bankcard','Billed','',913,1),(41,1011,219,'2019-01-26','jcb','Billed','',920,1),(42,1011,219,'2019-02-18','jcb','Billed','',925,2),(43,1022,251,'2019-02-27','jcb','Billed','',912,2),(44,1007,259,'2019-03-10','switch','Billed','',915,2),(45,1006,217,'2019-03-13','mastercard','Billed','',902,2),(46,1029,214,'2019-01-09','china-unionpay','Billed','',903,2),(47,1024,215,'2019-02-28','jcb','Billed','',921,2),(48,1027,224,'2019-01-22','jcb','Billed','',909,2),(49,1001,225,'2019-03-02','maestro','Billed','',911,2),(50,1030,248,'2019-03-08','china-unionpay','Billed','',925,2),(51,1025,225,'2019-03-08','solo','Billed','',901,2),(52,1017,225,'2019-03-27','jcb','Billed','',903,2),(53,1008,251,'2019-02-05','jcb','Billed','',907,2),(54,NULL,236,'2019-01-31','jcb','Billed','63',906,2),(55,NULL,240,'2019-03-22','visa-electron','Billed','68',901,2),(56,NULL,236,'2019-02-24','jcb','Pending','35',924,2),(57,NULL,259,'2019-01-02','diners-club-carte-blanche','Pending','85',917,2),(58,NULL,234,'2019-02-24','jcb','Billed','37',912,2),(59,NULL,201,'2019-03-21','diners-club-enroute','Billed','20',921,2),(60,NULL,252,'2019-03-24','jcb','Billed','13',905,2),(61,NULL,210,'2019-01-27','bankcard','Billed','87',902,2),(62,NULL,219,'2019-01-16','laser','Pending','44',901,2),(63,NULL,210,'2019-02-23','bankcard','Billed','66',909,2),(64,NULL,204,'2019-03-06','jcb','Billed','97',924,2),(65,NULL,230,'2019-03-28','instapayment','Billed','96',921,2),(66,NULL,201,'2019-01-25','visa-electron','Billed','36',916,2),(67,1008,247,'2019-02-02','visa','Billed','',906,1),(68,1028,227,'2019-01-22','americanexpress','Billed','',901,1),(69,1015,210,'2019-02-14','jcb','Billed','',927,1),(70,1001,239,'2019-03-02','bankcard','Billed','',917,1),(71,1019,211,'2020-03-27','laser','Billed','',930,1),(72,1004,257,'2020-01-14','china-unionpay','Billed','',908,1),(73,1013,227,'2020-01-17','maestro','Billed','',927,1),(74,1004,215,'2020-02-19','bankcard','Billed','',901,1),(75,1024,216,'2020-02-11','americanexpress','Billed','',902,1),(76,1006,239,'2020-01-16','switch','Billed','',901,1),(77,1025,241,'2020-01-05','jcb','Billed','',930,1),(78,1028,237,'2020-03-01','jcb','Billed','',907,1),(79,1029,201,'2020-02-23','jcb','Pending','',930,1),(80,1002,206,'2020-01-01','visa','Billed','',907,1),(81,1020,241,'2020-03-10','mastercard','Billed','',920,1),(82,1014,224,'2020-02-13','americanexpress','Billed','',913,1),(83,1024,217,'2020-03-26','visa-electron','Billed','',930,1),(84,1006,248,'2020-03-01','diners-club-enroute','Billed','',908,1),(85,NULL,219,'2020-03-21','bankcard','Billed','73',921,1),(86,NULL,243,'2020-02-21','bankcard','Billed','64',910,1),(87,NULL,217,'2020-01-15','jcb','Billed','16',911,1),(88,NULL,234,'2020-02-15','visa-electron','Billed','95',906,1),(89,NULL,235,'2020-03-04','jcb','Billed','45',909,1),(90,NULL,219,'2020-01-16','jcb','Billed','20',923,2),(91,NULL,245,'2020-01-17','mastercard','Billed','18',923,2),(92,NULL,210,'2020-02-04','china-unionpay','Billed','69',930,2),(93,NULL,232,'2020-01-10','switch','Billed','64',919,2),(94,NULL,217,'2020-03-08','diners-club-enroute','Billed','20',917,2),(95,NULL,210,'2020-02-11','jcb','Billed','26',912,2),(96,NULL,205,'2020-02-25','instapayment','Billed','94',928,2),(97,NULL,226,'2020-03-18','americanexpress','Billed','93',927,2),(98,NULL,241,'2020-03-01','americanexpress','Billed','93',913,2),(99,1004,220,'2020-02-16','mastercard','Billed','',907,2),(100,1005,229,'2020-01-28','americanexpress','Billed','',908,2),(101,1020,226,'2020-01-21','visa','Billed','',904,2),(102,1008,257,'2020-03-02','mastercard','Billed','',920,2),(103,1022,249,'2020-02-27','jcb','Billed','',916,2),(104,1009,257,'2020-01-26','diners-club-enroute','Billed','',910,2),(105,1011,219,'2020-02-15','jcb','Billed','',901,2),(106,1012,202,'2020-03-29','americanexpress','Billed','',914,2),(107,1017,237,'2020-01-24','americanexpress','Billed','',927,2),(108,1030,255,'2020-01-22','diners-club-carte-blanche','Billed','',912,2),(109,1024,249,'2020-03-04','jcb','Billed','',909,2),(110,1014,232,'2020-01-22','diners-club-carte-blanche','Billed','',930,2),(111,1001,231,'2020-03-28','jcb','Billed','',928,2),(112,1027,220,'2020-03-07','diners-club-enroute','Billed','',908,2),(113,1014,232,'2020-02-28','jcb','Billed','',916,2),(114,1002,244,'2020-03-24','jcb','Billed','',912,2),(115,1016,226,'2020-02-18','visa-electron','Billed','',908,5),(116,1013,220,'2020-01-30','diners-club-us-ca','Billed','',914,5),(117,1026,224,'2020-02-05','maestro','Billed','',930,5),(118,NULL,229,'2020-02-28','mastercard','Billed','14',913,5),(119,NULL,207,'2020-02-18','diners-club-us-ca','Billed','20',915,5),(120,NULL,256,'2020-03-21','laser','Billed','93',918,5),(121,NULL,215,'2020-02-28','china-unionpay','Billed','15',925,5),(122,NULL,241,'2020-03-15','jcb','Billed','70',913,5),(123,NULL,220,'2020-01-04','americanexpress','Billed','20',924,5),(124,NULL,234,'2020-03-20','jcb','Billed','30',920,5),(125,NULL,225,'2020-02-23','mastercard','Billed','18',916,5),(126,NULL,209,'2020-03-27','jcb','Billed','44',925,5),(127,NULL,242,'2020-03-13','jcb','Billed','19',902,5),(128,NULL,202,'2020-02-25','jcb','Billed','75',903,5),(129,1011,221,'2020-01-17','laser','Billed','',910,5),(130,1011,238,'2020-02-24','jcb','Billed','',923,5),(131,1029,249,'2020-02-26','jcb','Billed','',905,2),(132,1014,222,'2020-02-27','jcb','Billed','',927,2),(133,1017,251,'2020-02-05','jcb','Billed','',913,2),(134,1020,241,'2020-01-23','jcb','Billed','',923,2),(135,1008,201,'2020-01-19','jcb','Billed','',920,2),(136,1030,225,'2020-03-20','diners-club-carte-blanche','Billed','',923,2),(137,1027,201,'2020-02-23','instapayment','Billed','',901,2),(138,1015,256,'2020-02-07','diners-club-international','Billed','',915,2),(139,1014,249,'2020-02-01','maestro','Billed','',904,2),(140,1023,204,'2020-01-16','mastercard','Billed','',918,2),(141,1005,236,'2020-01-03','jcb','Billed','',913,2),(142,1028,213,'2020-02-09','jcb','Pending','',909,2),(143,1013,222,'2019-11-09','mastercard','Billed','',909,2),(144,1001,260,'2019-09-24','jcb','Billed','',914,2),(145,1003,218,'2020-01-25','mastercard','Billed','',925,2),(146,1002,206,'2019-07-01','jcb','Billed','',912,2),(147,1015,257,'2019-11-12','diners-club-enroute','Billed','',926,2),(148,1002,235,'2020-01-09','maestro','Billed','',916,2),(149,1001,232,'2019-04-27','jcb','Billed','',909,2),(150,1004,239,'2019-09-17','jcb','Billed','',928,2),(151,1013,227,'2019-09-01','diners-club-carte-blanche','Billed','',930,2),(152,1002,246,'2019-03-25','jcb','Billed','',924,2),(153,1027,228,'2019-11-09','diners-club-us-ca','Billed','',911,2),(154,1001,228,'2019-11-09','diners-club-us-ca','Billed','',911,2),(155,NULL,208,'2019-09-06','mastercard','Billed','28',919,2),(156,NULL,215,'2019-10-26','jcb','Billed','87',926,2),(157,NULL,239,'2019-03-13','jcb','Billed','32',930,2),(158,NULL,219,'2019-06-02','jcb','Billed','52',907,1),(159,NULL,240,'2019-09-06','visa-electron','Billed','20',906,1),(160,NULL,255,'2019-10-07','jcb','Billed','18',929,1),(161,NULL,234,'2019-05-31','jcb','Billed','64',905,1),(162,NULL,201,'2019-07-15','jcb','Billed','30',921,1),(163,NULL,252,'2019-07-14','maestro','Billed','63',901,1),(164,NULL,201,'2019-05-16','jcb','Billed','84',926,1),(165,NULL,215,'2019-07-21','jcb','Billed','20',925,1),(166,NULL,237,'2019-04-08','jcb','Billed','44',930,1),(167,NULL,215,'2019-10-18','jcb','Billed','73',927,1),(168,NULL,201,'2019-06-02','diners-club-us-ca','Billed','74',929,1),(169,NULL,218,'2020-01-25','jcb','Billed','37',923,1),(170,NULL,215,'2019-11-18','jcb','Billed','61',906,1),(171,NULL,226,'2019-06-07','switch','Billed','59',920,1),(172,NULL,249,'2020-01-27','switch','Billed','48',909,1),(173,NULL,240,'2020-02-10','jcb','Pending','68',923,1),(174,NULL,256,'2020-01-07','maestro','Billed','20',902,1),(175,NULL,234,'2019-04-03','diners-club-carte-blanche','Billed','64',920,1),(176,NULL,253,'2019-07-09','jcb','Billed','90',902,1),(177,NULL,222,'2019-05-30','maestro','Billed','97',918,1),(178,NULL,211,'2020-01-14','visa-electron','Billed','62',905,1),(179,NULL,228,'2019-05-29','maestro','Billed','20',911,1),(180,NULL,221,'2019-06-22','china-unionpay','Billed','58',913,1),(181,NULL,254,'2019-05-20','bankcard','Billed','68',930,1),(182,NULL,226,'2019-09-04','jcb','Billed','56',919,1),(183,NULL,221,'2019-09-04','visa','Billed','89',913,1),(184,NULL,219,'2019-11-19','jcb','Billed','23',902,1),(185,NULL,205,'2019-09-26','switch','Billed','59',915,1),(186,NULL,206,'2019-10-21','jcb','Billed','20',923,1),(187,NULL,252,'2019-07-03','jcb','Billed','20',930,1),(188,NULL,219,'2019-03-26','visa-electron','Billed','52',918,1),(189,NULL,229,'2019-06-12','bankcard','Billed','18',921,1),(190,NULL,239,'2019-08-02','americanexpress','Billed','86',910,1),(191,NULL,214,'2019-10-08','laser','Billed','17',912,1),(192,NULL,208,'2019-06-19','diners-club-carte-blanche','Billed','20',918,1),(193,NULL,256,'2019-08-18','instapayment','Billed','57',907,1),(194,NULL,253,'2019-04-20','china-unionpay','Billed','53',930,1),(195,NULL,221,'2019-03-18','jcb','Billed','78',914,1),(196,NULL,204,'2019-07-25','jcb','Billed','83',915,1),(197,NULL,215,'2020-02-12','china-unionpay','Pending','36',926,1),(198,NULL,260,'2019-04-18','maestro','Billed','89',906,1),(199,NULL,227,'2020-02-08','visa-electron','Pending','34',921,1),(200,NULL,223,'2019-08-11','jcb','Billed','68',910,1);
/*!40000 ALTER TABLE `BOOKING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOKING_DETAIL`
--

DROP TABLE IF EXISTS `BOOKING_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BOOKING_DETAIL` (
  `DetailID` int(11) DEFAULT NULL,
  `SeatNumber` int(11) DEFAULT NULL,
  `BookingID` int(11) DEFAULT NULL,
  `Status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOKING_DETAIL`
--

LOCK TABLES `BOOKING_DETAIL` WRITE;
/*!40000 ALTER TABLE `BOOKING_DETAIL` DISABLE KEYS */;
INSERT INTO `BOOKING_DETAIL` VALUES (1,13,139,'pending'),(2,3,15,'pending'),(3,21,117,'pending'),(4,21,60,'pending'),(5,62,175,'pending'),(6,71,21,'Succeed'),(7,90,106,'Succeed'),(8,33,179,'Succeed'),(9,25,13,'Succeed'),(10,53,16,'Succeed'),(11,30,30,'Succeed'),(12,85,169,'Succeed'),(13,64,180,'Succeed'),(14,29,61,'Succeed'),(15,7,119,'Succeed'),(16,99,10,'Succeed'),(17,61,144,'Succeed'),(18,7,32,'Succeed'),(19,35,9,'Succeed'),(20,42,158,'Succeed'),(21,10,70,'Succeed'),(22,78,6,'Succeed'),(23,2,143,'Succeed'),(24,96,147,'Succeed'),(25,63,4,'Succeed'),(26,70,155,'Succeed'),(27,87,159,'Succeed'),(28,69,18,'Succeed'),(29,77,183,'Succeed'),(30,18,38,'Succeed'),(31,48,147,'Succeed'),(32,66,42,'Succeed'),(33,8,31,'Succeed'),(34,16,182,'Succeed'),(35,92,12,'Succeed'),(36,73,64,'Succeed'),(37,25,77,'Succeed'),(38,84,128,'Succeed'),(39,84,179,'Succeed'),(40,73,28,'Succeed'),(41,94,55,'Succeed'),(42,45,194,'Succeed'),(43,43,145,'Succeed'),(44,29,122,'Succeed'),(45,16,106,'Succeed'),(46,94,167,'Succeed'),(47,61,44,'Succeed'),(48,99,23,'Succeed'),(49,25,63,'Succeed'),(50,86,76,'Succeed'),(51,40,92,'Succeed'),(52,41,91,'Succeed'),(53,27,120,'Succeed'),(54,95,64,'Succeed'),(55,67,63,'Succeed'),(56,8,112,'Succeed'),(57,80,56,'Succeed'),(58,18,53,'Succeed'),(59,55,183,'Declined'),(60,95,25,'Declined'),(61,88,164,'Declined'),(62,71,35,'Declined'),(63,39,37,'Declined'),(64,2,105,'Declined'),(65,53,72,'Succeed'),(66,74,45,'Succeed'),(67,84,106,'Succeed'),(68,23,97,'Succeed'),(69,56,26,'Succeed'),(70,53,40,'Succeed'),(71,41,180,'Succeed'),(72,54,49,'Succeed'),(73,40,121,'Succeed'),(74,47,83,'Succeed'),(75,80,51,'Succeed'),(76,3,158,'Succeed'),(77,70,134,'Succeed'),(78,43,192,'Succeed'),(79,100,179,'Succeed'),(80,46,175,'Succeed'),(81,67,102,'Succeed'),(82,12,123,'Succeed'),(83,21,101,'Succeed'),(84,43,87,'Succeed'),(85,66,198,'Succeed'),(86,27,154,'Succeed'),(87,59,27,'Succeed'),(88,94,23,'Succeed'),(89,5,76,'Succeed'),(90,45,30,'Succeed'),(91,81,158,'Succeed'),(92,72,192,'Succeed'),(93,10,5,'Succeed'),(94,86,31,'Succeed'),(95,17,192,'Succeed'),(96,53,4,'Succeed'),(97,40,114,'Succeed'),(98,20,158,'Succeed'),(99,91,90,'Succeed'),(100,4,50,'Succeed'),(101,74,11,'Succeed'),(102,51,6,'Succeed'),(103,8,116,'Succeed'),(104,60,79,'Succeed'),(105,12,59,'Succeed'),(106,64,73,'Succeed'),(107,58,188,'Succeed'),(108,13,67,'Succeed'),(109,53,188,'Succeed'),(110,83,140,'Succeed'),(111,67,20,'Succeed'),(112,40,84,'Succeed'),(113,12,7,'Succeed'),(114,29,93,'Succeed'),(115,47,106,'Succeed'),(116,1,126,'Succeed'),(117,67,2,'Succeed'),(118,70,87,'Succeed'),(119,14,51,'Succeed'),(120,95,110,'Succeed'),(121,6,11,'Succeed'),(122,10,125,'Succeed'),(123,64,182,'Succeed'),(124,39,166,'Succeed'),(125,14,161,'Succeed'),(126,12,199,'Succeed'),(127,87,12,'Succeed'),(128,89,83,'Succeed'),(129,17,94,'Succeed'),(130,15,79,'Succeed'),(131,85,189,'Succeed'),(132,35,21,'Succeed'),(133,14,188,'Succeed'),(134,1,158,'Succeed'),(135,17,95,'Succeed'),(136,13,70,'Succeed'),(137,51,46,'Succeed'),(138,9,167,'Succeed'),(139,84,105,'Succeed'),(140,25,149,'Succeed'),(141,56,132,'Succeed'),(142,4,101,'Succeed'),(143,56,123,'Succeed'),(144,98,123,'Succeed'),(145,79,134,'Succeed'),(146,29,69,'Succeed'),(147,13,104,'Succeed'),(148,40,81,'Succeed'),(149,78,63,'Succeed'),(150,30,53,'Succeed'),(151,84,144,'Succeed'),(152,91,129,'Succeed'),(153,44,73,'Succeed'),(154,77,84,'Succeed'),(155,48,75,'Succeed'),(156,94,84,'Succeed'),(157,58,182,'Succeed'),(158,75,130,'Succeed'),(159,39,18,'Succeed'),(160,61,20,'Succeed'),(161,1,96,'Succeed'),(162,73,58,'Succeed'),(163,28,143,'Succeed'),(164,96,120,'Succeed'),(165,55,60,'Succeed'),(166,17,24,'Succeed'),(167,80,64,'Succeed'),(168,62,15,'Succeed'),(169,23,179,'Succeed'),(170,66,44,'Succeed'),(171,64,97,'Succeed'),(172,45,56,'Succeed'),(173,82,120,'Succeed'),(174,95,98,'Succeed'),(175,58,11,'Succeed'),(176,38,110,'Succeed'),(177,71,12,'Succeed'),(178,65,56,'Succeed'),(179,6,128,'Succeed'),(180,80,144,'Succeed'),(181,44,83,'Succeed'),(182,18,159,'Succeed'),(183,98,164,'Succeed'),(184,87,12,'Succeed'),(185,65,83,'Succeed'),(186,37,117,'Succeed'),(187,52,181,'Succeed'),(188,66,177,'Succeed'),(189,28,139,'Succeed'),(190,79,28,'Succeed'),(191,1,44,'Succeed'),(192,81,18,'Succeed'),(193,91,80,'Succeed'),(194,47,50,'Succeed'),(195,92,29,'Succeed'),(196,76,12,'Succeed'),(197,14,45,'Succeed'),(198,22,123,'Succeed'),(199,74,187,'Succeed'),(200,48,10,'Succeed'),(201,91,8,'Succeed'),(202,35,41,'Succeed'),(203,57,154,'Succeed'),(204,19,64,'Succeed'),(205,81,184,'Succeed'),(206,12,162,'Succeed'),(207,21,39,'Succeed'),(208,47,110,'Succeed'),(209,38,127,'Succeed'),(210,75,151,'Succeed'),(211,62,126,'Succeed'),(212,42,139,'Succeed'),(213,51,186,'Succeed'),(214,25,124,'Succeed'),(215,93,8,'Succeed'),(216,6,192,'Succeed'),(217,12,23,'Succeed'),(218,45,57,'Succeed'),(219,24,52,'Succeed'),(220,5,132,'Succeed'),(221,31,47,'Succeed'),(222,62,15,'Succeed'),(223,14,189,'Succeed'),(224,30,172,'refunded'),(225,34,111,'refunded'),(226,37,190,'refunded'),(227,42,15,'refunded'),(228,89,33,'refunded'),(229,1,45,'refunded'),(230,22,76,'refunded'),(231,42,143,'refunded'),(232,9,103,'Succeed'),(233,25,67,'Succeed'),(234,50,132,'Succeed'),(235,16,73,'Succeed'),(236,63,21,'Succeed'),(237,31,89,'Succeed'),(238,48,46,'Succeed'),(239,52,48,'refunded'),(240,49,137,'refunded'),(241,74,59,'refunded'),(242,21,93,'refunded'),(243,91,199,'refunded'),(244,28,90,'refunded'),(245,66,15,'refunded'),(246,9,143,'Succeed'),(247,36,150,'Succeed'),(248,79,1,'Succeed'),(249,38,12,'Succeed'),(250,45,186,'Succeed');
/*!40000 ALTER TABLE `BOOKING_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `EmpID` int(11) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` text,
  `Gender` text,
  `Phone` text,
  `SSN` text,
  `Salary (monthly)` int(11) DEFAULT NULL,
  `EmergencyContactName` text,
  `EmergencyContactPhone` text,
  `BaseTheaterID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (901,'Bibbye','Scutching','bscutching0@admin.ch','Female','404-245-9170','695-28-0136',2436,'Bibbye Scutching','329-773-4165',3),(902,'Janeta','Biddiss','jbiddiss1@weibo.com','Female','326-481-0701','341-55-4601',1435,'Janeta Biddiss','109-192-2735',3),(903,'Tamarah','Grierson','tgrierson2@1688.com','Female','615-986-4446','711-24-0053',3552,'Tamarah Grierson','944-742-4702',2),(904,'Amandy','Pavlik','apavlik3@theglobeandmail.com','Female','779-981-3129','740-01-2002',2988,'Amandy Pavlik','465-772-1761',2),(905,'Laurie','Baker','lbaker4@amazonaws.com','Male','449-919-2398','267-30-2757',3050,'Laurie Baker','313-948-8391',3),(906,'Peyton','Helbeck','phelbeck5@abc.net.au','Male','247-608-4782','562-90-6207',2355,'Peyton Helbeck','746-717-0153',3),(907,'Shawn','Hun','shun6@mtv.com','Female','490-559-0234','520-94-3825',2387,'Shawn Hun','852-962-0196',2),(908,'Avictor','Bonniface','abonniface7@umich.edu','Male','398-311-9742','212-26-8485',4962,'Avictor Bonniface','411-573-3018',3),(909,'Kristien','Frounks','kfrounks8@shareasale.com','Female','742-923-3182','190-66-3032',4093,'Kristien Frounks','615-530-9322',2),(910,'Rem','Tibbits','rtibbits9@wikispaces.com','Male','201-679-2523','626-97-6377',3120,'Rem Tibbits','178-589-7109',3),(911,'Salomo','Cranney','scranneya@theglobeandmail.com','Male','853-858-1281','138-87-1129',3372,'Salomo Cranney','912-971-4683',1),(912,'Leonard','Eayrs','leayrsb@twitpic.com','Male','469-926-6410','156-48-6844',4163,'Leonard Eayrs','892-282-2635',3),(913,'Gaile','Howieson','ghowiesonc@skyrock.com','Male','317-889-7590','796-40-3062',1350,'Gaile Howieson','683-771-1060',2),(914,'Callida','Desborough','cdesboroughd@loc.gov','Female','355-524-4305','211-99-6852',3062,'Callida Desborough','341-527-0808',2),(915,'Standford','Winspeare','swinspearee@tmall.com','Male','410-408-0379','691-02-3931',1438,'Standford Winspeare','514-388-8722',1),(916,'Paddy','Kencott','pkencottf@google.de','Male','763-479-5160','783-20-3339',4271,'Paddy Kencott','692-873-3534',2),(917,'Findlay','Howford','fhowfordg@pinterest.com','Male','496-242-4676','111-74-9363',2304,'Findlay Howford','356-790-9880',2),(918,'Seymour','Rihosek','srihosekh@opensource.org','Male','482-820-0162','469-64-8503',1200,'Seymour Rihosek','289-754-6715',3),(919,'Felisha','Cowpe','fcowpei@123-reg.co.uk','Female','175-127-8875','227-28-8466',755,'Felisha Cowpe','428-483-8069',1),(920,'Brooke','Lamborne','blambornej@gmpg.org','Male','771-404-9967','747-75-2669',1004,'Brooke Lamborne','406-230-8569',1),(921,'Jeri','Pickworth','jpickworthk@fc2.com','Female','731-187-2693','769-49-3949',3455,'Jeri Pickworth','957-710-7176',2),(922,'Allin','Clews','aclewsl@uol.com.br','Male','894-216-2492','339-42-4031',1286,'Allin Clews','543-207-5818',2),(923,'Kori','Rawsthorne','krawsthornem@hatena.ne.jp','Female','310-648-7269','306-87-4827',812,'Kori Rawsthorne','783-488-8093',3),(924,'Merrick','McIlvaney','mmcilvaneyn@opera.com','Male','497-152-0383','299-59-5903',4240,'Merrick McIlvaney','132-952-9513',3),(925,'Nero','Craig','ncraigo@hhs.gov','Male','302-153-1494','104-19-6702',1720,'Nero Craig','343-976-7135',2),(926,'Roanna','Collerd','rcollerdp@amazon.com','Female','179-232-0060','167-08-0859',1295,'Roanna Collerd','637-800-1430',2),(927,'Daphna','Avrashin','davrashinq@wikipedia.org','Female','123-820-8436','608-81-2521',2862,'Daphna Avrashin','350-908-4845',3),(928,'Nita','Griston','ngristonr@dot.gov','Female','594-529-9863','636-46-2290',3918,'Nita Griston','430-953-4521',1),(929,'Rayshell','Tilsley','rtilsleys@yelp.com','Female','992-218-2141','570-28-5216',1015,'Rayshell Tilsley','669-560-1277',1),(930,'Merell','O\'Regan','moregant@digg.com','Male','271-989-0805','757-68-6992',3897,'Merell O\'Regan','243-998-2278',3);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOOD_LIST`
--

DROP TABLE IF EXISTS `FOOD_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FOOD_LIST` (
  `FoodID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `UnitRetailPrice` varchar(45) DEFAULT NULL,
  `UnitWholeSalesPrice` varchar(45) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FoodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOD_LIST`
--

LOCK TABLES `FOOD_LIST` WRITE;
/*!40000 ALTER TABLE `FOOD_LIST` DISABLE KEYS */;
INSERT INTO `FOOD_LIST` VALUES (1,'Pretzel ','$3.90 ','$1.06 ',4),(2,'Candy ','$1.43 ','$4.18 ',4),(3,'Popcorn - Cheese','$2.95 ','$2.82 ',1),(4,'Ice cream cone ','$2.48 ','$3.09 ',5),(5,'Hotdog','$4.58 ','$1.37 ',4),(6,'Chocolate bars ','$2.33 ','$1.63 ',4),(7,'Nachos ','$3.72 ','$2.96 ',5),(8,'Popcorn - Butter ','$2.88 ','$1.95 ',1),(9,'Ice cream cups ','$3.16 ','$1.72 ',1),(10,'Popcorn - Caramel ','$2.53 ','$4.05 ',2),(11,'Pepsi','$1.26 ','$2.24 ',3),(12,'Milk shake ','$2.96 ','$4.39 ',2),(13,'Chicken fingers ','$4.49 ','$3.56 ',4),(14,'Mountain Dew ','$1.80 ','$3.78 ',4),(15,'Chicken wings ','$4.87 ','$1.91 ',4),(16,'Sprite','$1.48 ','$3.59 ',4),(17,'French Fries ','$4.33 ','$1.75 ',1),(18,'Tacos ','$3.22 ','$1.46 ',2),(19,'Quesadilla ','$3.96 ','$2.28 ',4),(20,'Coca Cola','$2.82 ','$2.28 ',2);
/*!40000 ALTER TABLE `FOOD_LIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOOD_SOLD`
--

DROP TABLE IF EXISTS `FOOD_SOLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FOOD_SOLD` (
  `FoodSoldID` int(11) DEFAULT NULL,
  `FoodId` int(11) DEFAULT NULL,
  `IsMember` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `TheaterID` int(11) DEFAULT NULL,
  `SoldTime` text,
  `SoldDate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOD_SOLD`
--

LOCK TABLES `FOOD_SOLD` WRITE;
/*!40000 ALTER TABLE `FOOD_SOLD` DISABLE KEYS */;
INSERT INTO `FOOD_SOLD` VALUES (1,16,0,3,52.56,3,'10:35 PM','2019-04-27'),(2,7,1,4,96.38,1,'2:50 PM','2019-03-22'),(3,17,1,3,53.51,3,'7:31 PM','2019-03-02'),(4,9,1,3,73.8,3,'8:30 PM','2019-07-17'),(5,6,1,2,2.22,3,'8:40 PM','2020-02-10'),(6,14,0,1,35.59,1,'6:52 PM','2019-03-03'),(7,14,1,3,33.3,3,'9:05 PM','2019-07-24'),(8,3,1,5,80.45,2,'1:36 PM','2019-11-29'),(9,12,1,5,85.47,3,'3:02 PM','2019-10-01'),(10,10,0,2,4.36,3,'11:18 PM','2019-10-01'),(11,11,1,5,42.3,1,'11:36 AM','2019-05-26'),(12,19,0,3,38.82,2,'7:22 PM','2019-11-13'),(13,15,0,3,12.4,2,'6:43 PM','2019-05-17'),(14,19,0,2,83.12,2,'6:47 PM','2019-09-18'),(15,7,1,3,69.45,1,'11:29 AM','2019-06-12'),(16,2,0,2,46.15,1,'1:30 PM','2019-11-09'),(17,14,1,4,52.78,2,'9:32 PM','2019-08-11'),(18,2,1,4,11.68,3,'3:53 PM','2019-03-07'),(19,2,1,2,89.29,3,'3:54 PM','2019-11-01'),(20,12,0,2,62.79,2,'1:08 PM','2020-01-19'),(21,20,0,4,20.67,1,'2:13 PM','2019-10-29'),(22,2,1,3,72.3,2,'11:53 AM','2019-10-15'),(23,15,0,5,70.25,1,'9:51 PM','2020-02-16'),(24,19,1,4,66.28,3,'3:41 PM','2019-11-29'),(25,14,0,4,94.5,2,'2:09 PM','2019-11-14'),(26,5,0,1,10.92,1,'1:51 PM','2020-01-25'),(27,11,0,5,24.92,2,'7:28 PM','2019-08-21'),(28,16,1,1,90.71,2,'10:51 PM','2019-08-13'),(29,10,0,1,33.63,3,'9:16 PM','2019-05-24'),(30,3,0,4,2.06,2,'8:28 PM','2019-07-13'),(31,15,1,4,82.71,2,'2:04 PM','2020-02-09'),(32,5,1,1,26.31,1,'8:41 PM','2019-05-28'),(33,13,0,5,46.01,2,'6:37 PM','2019-08-19'),(34,12,0,1,30.04,2,'12:56 PM','2019-03-27'),(35,10,0,4,71.24,2,'6:34 PM','2019-06-25'),(36,14,1,4,4.2,3,'2:30 PM','2019-03-21'),(37,6,0,1,58.62,2,'5:18 PM','2019-02-28'),(38,17,1,1,16.6,3,'6:28 PM','2019-03-29'),(39,11,1,2,86.66,3,'2:08 PM','2019-11-07'),(40,6,1,3,2.86,3,'5:36 PM','2020-02-17'),(41,17,1,4,52.67,2,'10:52 PM','2019-05-05'),(42,18,1,3,42.27,3,'8:06 PM','2019-02-28'),(43,12,1,3,2.77,1,'4:25 PM','2019-12-19'),(44,6,0,3,25.29,1,'12:01 PM','2019-10-14'),(45,20,0,4,96.77,2,'8:23 PM','2019-04-24'),(46,6,1,2,96.77,3,'3:58 PM','2019-11-04'),(47,9,0,2,96.77,3,'11:36 PM','2020-02-09'),(48,16,0,5,47.6,3,'6:17 PM','2019-11-06'),(49,8,0,4,46.73,1,'9:49 PM','2019-05-28'),(50,19,0,4,10.15,2,'3:40 PM','2019-05-25'),(51,16,0,4,49.63,2,'11:03 AM','2019-12-03'),(52,10,0,2,13.08,2,'11:19 PM','2019-03-02'),(53,15,0,4,51.23,3,'11:25 PM','2019-06-27'),(54,7,1,5,48.06,3,'8:24 PM','2019-07-26'),(55,18,0,1,66.46,1,'8:25 PM','2019-11-04'),(56,15,0,3,14.78,1,'10:54 PM','2019-04-16'),(57,12,1,3,82.58,2,'2:31 PM','2019-10-04'),(58,18,0,4,80.52,2,'7:43 PM','2019-07-01'),(59,4,0,5,2.3,2,'10:51 PM','2019-05-20'),(60,20,1,2,26.04,3,'9:59 PM','2019-05-17'),(61,17,1,4,94.68,2,'1:21 PM','2019-07-30'),(62,10,1,5,51.89,2,'11:41 AM','2019-08-26'),(63,7,0,4,2.3,1,'9:10 PM','2019-03-24'),(64,19,1,1,94.83,3,'10:40 PM','2019-12-31'),(65,16,0,4,87.44,1,'6:09 PM','2020-01-23'),(66,20,1,5,29.57,3,'3:48 PM','2020-01-23'),(67,19,0,3,98.18,1,'4:44 PM','2019-10-17'),(68,14,0,5,25.76,1,'7:25 PM','2020-02-22'),(69,4,0,5,37.83,2,'4:06 PM','2019-05-13'),(70,11,1,4,33.02,3,'2:01 PM','2019-08-09'),(71,18,0,4,2.28,1,'8:31 PM','2020-02-15'),(72,5,1,4,9.94,2,'2:20 PM','2019-04-04'),(73,7,1,2,51.76,2,'5:17 PM','2020-01-08'),(74,19,1,5,94.98,1,'12:39 PM','2020-02-17'),(75,10,0,5,54.14,1,'3:23 PM','2019-09-17'),(76,19,1,5,2.33,1,'5:07 PM','2019-09-01'),(77,20,0,5,37.14,1,'10:55 PM','2019-11-02'),(78,2,0,4,1.93,1,'2:40 PM','2019-09-07'),(79,7,1,3,33.4,3,'11:19 AM','2019-12-27'),(80,16,0,2,80.39,1,'3:42 PM','2019-08-17');
/*!40000 ALTER TABLE `FOOD_SOLD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOOD_STOCK`
--

DROP TABLE IF EXISTS `FOOD_STOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FOOD_STOCK` (
  `FoodID` int(11) DEFAULT NULL,
  `TheaterID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `LastOrderDate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOD_STOCK`
--

LOCK TABLES `FOOD_STOCK` WRITE;
/*!40000 ALTER TABLE `FOOD_STOCK` DISABLE KEYS */;
INSERT INTO `FOOD_STOCK` VALUES (1,2,40,'4/20/2019'),(2,3,54,'5/27/2019'),(3,3,27,'7/3/2019'),(4,3,95,'4/23/2019'),(5,3,36,'4/5/2019'),(6,1,71,'9/17/2019'),(7,2,68,'8/10/2019'),(8,2,79,'6/23/2019'),(9,3,30,'2/4/2020'),(10,3,48,'9/16/2019'),(11,1,50,'2/4/2020'),(12,1,65,'7/6/2019'),(13,1,35,'2/5/2020'),(14,3,93,'8/25/2019'),(15,3,29,'12/5/2019'),(16,1,63,'7/11/2019'),(17,1,78,'11/17/2019'),(18,1,50,'9/30/2019'),(19,1,89,'5/13/2019'),(20,1,83,'7/15/2019');
/*!40000 ALTER TABLE `FOOD_STOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOOD_SUPPLIER`
--

DROP TABLE IF EXISTS `FOOD_SUPPLIER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FOOD_SUPPLIER` (
  `SupplierID` int(11) DEFAULT NULL,
  `SupplierName` text,
  `ContactPerson` text,
  `email` text,
  `Phone` text,
  `Address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOD_SUPPLIER`
--

LOCK TABLES `FOOD_SUPPLIER` WRITE;
/*!40000 ALTER TABLE `FOOD_SUPPLIER` DISABLE KEYS */;
INSERT INTO `FOOD_SUPPLIER` VALUES (1,'ornare imperdiet','Wynne Stonard','wstonard0@chicagotribune.com','140-487-2515','526 Caliangt Pass'),(2,'tellus nulla','Tymon Vale','tvale1@omniture.com','538-458-9083','2722 Barby Street'),(3,'felis sed','Felipe Victory','fvictory2@infoseek.co.jp','774-333-8288','76 Scoville Trail'),(4,'eleifend quam','Marius Daborn','mdaborn3@hubpages.com','833-599-2635','70 La Follette Place'),(5,'duis aliquam','Law Durgan','ldurgan4@facebook.com','455-930-7481','4 Vermont Avenue');
/*!40000 ALTER TABLE `FOOD_SUPPLIER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEMBERS`
--

DROP TABLE IF EXISTS `MEMBERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEMBERS` (
  `LName` text,
  `FName` text,
  `PhoneNum` text,
  `Address` text,
  `BDate` text,
  `BdatePromo` int(11) DEFAULT NULL,
  `PackageID` int(11) DEFAULT NULL,
  `StartDate` text,
  `Status` int(11) DEFAULT NULL,
  `NextActiveDate` int(11) DEFAULT NULL,
  `BaseCinema` int(11) DEFAULT NULL,
  `UserName` text,
  `Password` text,
  `MemberID` int(11) DEFAULT NULL,
  `Email` text,
  `Neighborhood` text,
  `Gender` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEMBERS`
--

LOCK TABLES `MEMBERS` WRITE;
/*!40000 ALTER TABLE `MEMBERS` DISABLE KEYS */;
INSERT INTO `MEMBERS` VALUES ('Swatland','Stan','956-270-3497','5706 Vernon Lane','2000-06-15',0,2,'9/28/19',1,0,1,'Stan Swatland','lGpQWML',1002,'sswatland1@ox.ac.uk','Bellevue','Female'),('Adne','Hamid','234-242-5077','908 Talisman Avenue','1994-06-11',0,8,'11/22/19',1,0,1,'Hamid Adne','dtO15NqV',1012,'hadneb@360.cn','Seattle','Male'),('Caitlin','Ana','158-957-4324','12 Steensland Parkway','1990-10-02',0,8,'1/3/20',1,0,2,'Ana Caitlin','F3ECRpEg4mM',1028,'acaitlinr@zdnet.com','Seattle','Female'),('Gudge','Lidia','500-928-4302','47 Glendale Avenue','1989-01-10',1,1,'11/4/19',1,0,1,'Lidia Gudge','WXOMUWcR',1013,'lgudgec@unc.edu','Kirkland','Female'),('McKue','Nicoline','325-587-7186','261 Gale Place','1987-03-17',1,9,'12/13/19',1,0,1,'Nicoline McKue','Md6erSp',1009,'nmckue8@japanpost.jp','Seattle','Male'),('Blethyn','Chad','295-567-0782','15 Mendota Hill','1986-12-18',0,10,'10/23/19',1,0,3,'Chad Blethyn','mObS3Z3fLA',1016,'cblethynf@fda.gov','Redmond','Female'),('Abbay','Sonny','363-119-5410','77774 Springview Avenue','1986-05-28',0,7,'9/27/19',1,0,1,'Sonny Abbay','f9KhUZmuV',1027,'sabbayq@csmonitor.com','Seattle','Female'),('Kitchinham','Heall','318-889-2636','14490 Twin Pines Street','1983-09-25',0,4,'11/18/19',1,0,1,'Heall Kitchinham','KXejuMUZfny',1024,'hkitchinhamn@constantcontact.com','Udistrict','Female'),('Clery','Ida','673-741-1484','6227 Warner Center','1982-02-22',0,6,'11/19/19',1,0,2,'Ida Clery','GmEvYc',1026,'icleryp@sun.com','Renton','Female'),('Bottleson','Britta','992-916-1623','10 Bunting Crossing','1981-03-06',0,9,'12/9/19',1,0,3,'Britta Bottleson','Gr9942VrJ',1020,'bbottlesonj@mozilla.org','Redmond','Female'),('Roderigo','Milena','980-714-5955','6091 Westport Street','1979-01-31',0,3,'1/28/20',1,0,2,'Milena Roderigo','LlbuGr',1010,'mroderigo9@yandex.ru','Seattle','Male'),('Harby','Winna','757-397-7705','42 Sullivan Pass','1975-11-09',0,9,'7/19/19',1,0,3,'Winna Harby','KNVdwu1C9',1029,'wharbys@eepurl.com','Seattle','Female'),('Raisher','Jarrid','213-960-4241','50113 Dakota Road','1974-08-03',0,8,'1/12/20',1,0,3,'Jarrid Raisher','AiDoJcQR',1008,'jraisher7@uiuc.edu','Seattle','Male'),('Kienzle','Devondra','734-356-6639','1349 Morrow Place','1974-07-06',1,4,'11/22/19',2,0,1,'Devondra Kienzle','vBOceD7',1017,'dkienzleg@netvibes.com','Redmond','Male'),('McKeag','Nance','803-364-0230','63 Crest Line Avenue','1974-03-01',0,3,'10/16/19',2,0,1,'Nance McKeag','PBCHIT3',1023,'nmckeagm@goodreads.com','Udistrict','Female'),('Gouge','Blaire','938-648-6412','4 Hoepker Center','1972-08-22',0,8,'7/3/19',2,0,1,'Blaire Gouge','gSSIyb7',1018,'bgougeh@cornell.edu','Redmond','Female'),('Klees','Iris','486-100-0881','48 Sloan Plaza','1972-01-16',0,5,'11/18/19',2,0,2,'Iris Klees','MCjMu9oV',1005,'iklees4@reference.com','Bellevue','Male'),('Harbisher','Colleen','344-900-7392','80 Center Drive','1964-05-15',0,2,'10/22/19',2,0,1,'Colleen Harbisher','yZ8R0a1Ps',1011,'charbishera@thetimes.co.uk','Seattle','Male'),('Huxtable','Cazzie','989-229-9139','44985 Anderson Way','1961-09-26',1,10,'12/26/19',2,0,2,'Cazzie Huxtable','69p7vLAPfFg',1021,'chuxtablek@ucoz.ru','Udistrict','Female'),('Bodham','Deni','847-718-6562','73 Leroy Pass','1959-09-30',0,1,'9/7/19',2,0,2,'Deni Bodham','pgCKmD',1001,'dbodham0@tinypic.com','Bellevue','Male'),('Henningham','Suellen','924-316-1721','7 Leroy Drive','1959-03-01',1,7,'8/1/19',2,0,3,'Suellen Henningham','wyu9dZh',1007,'shenningham6@harvard.edu','Seattle','Male'),('Mueller','Kailey','562-460-9182','67078 Ludington Trail','1958-03-12',1,2,'1/19/20',3,0,1,'Kailey Mueller','apZ0IM4T2',1022,'kmuellerl@usnews.com','Udistrict','Male'),('Fihelly','Alfie','592-511-2366','2 Daystar Circle','1954-04-11',1,3,'10/12/19',3,0,1,'Alfie Fihelly','mG7pjb',1019,'afihellyi@irs.gov','Redmond','Female'),('Stubbin','Chevalier','166-854-9305','85681 Londonderry Avenue','1950-04-15',1,4,'7/19/19',3,0,2,'Chevalier Stubbin','HueEydKu6Rd',1015,'cstubbine@nps.gov','Redmond','Female'),('Samter','Minni','323-301-7856','0 Dayton Alley','1949-12-07',0,4,'11/6/19',3,0,1,'Minni Samter','kwvEDt32B',1004,'msamter3@go.com','Bellevue','Female'),('Hancox','Adelind','731-903-9997','22 Cascade Point','1946-12-15',1,5,'10/30/19',3,0,3,'Adelind Hancox','75yckLf',1030,'ahancoxt@pcworld.com','Seattle','Female'),('Willoway','Odelle','853-907-6275','4024 Grayhawk Way','1946-12-01',1,1,'7/15/19',3,0,2,'Odelle Willoway','Lx7FioxkWd',1014,'owillowayd@pbs.org','Kirkland','Female'),('Batistelli','Kennie','660-778-5023','585 Hollow Ridge Alley','1946-07-12',1,6,'7/18/19',3,0,1,'Kennie Batistelli','z2OHKCtePGR',1006,'kbatistelli5@deliciousdays.com','Seattle','Male'),('Collerd','Quinta','866-725-2816','17460 Summerview Hill','1945-01-31',1,5,'8/17/19',3,0,2,'Quinta Collerd','J99GkfIso3',1025,'qcollerdo@globo.com','Shoreline','Male'),('Reven','Erna','556-781-1943','9 Talisman Pass','1944-04-26',1,3,'8/18/19',3,0,1,'Erna Reven','vwxmql3Xvy3',1003,'ereven2@istockphoto.com','Bellevue','Female');
/*!40000 ALTER TABLE `MEMBERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEMBERSHIP_PACKAGE`
--

DROP TABLE IF EXISTS `MEMBERSHIP_PACKAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEMBERSHIP_PACKAGE` (
  `PackageID` int(11) DEFAULT NULL,
  `RepresentiveMemeber` text,
  `PayCreditCardNumber` double DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `NextActiveDate` int(11) DEFAULT NULL,
  `NumberOfMember` int(11) DEFAULT NULL,
  `MonthlyFee` int(11) DEFAULT NULL,
  `BillingDate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEMBERSHIP_PACKAGE`
--

LOCK TABLES `MEMBERSHIP_PACKAGE` WRITE;
/*!40000 ALTER TABLE `MEMBERSHIP_PACKAGE` DISABLE KEYS */;
INSERT INTO `MEMBERSHIP_PACKAGE` VALUES (1,'Edan Minear',5.10875e15,1,0,3,30,'02/20/20'),(2,'Teodorico Lightwood',5.02043e16,1,0,3,30,'02/11/20'),(3,'Stefa Graser',6.37452e15,1,0,4,35,'02/15/20'),(4,'Guenna Shemilt',5.61013e15,1,0,4,35,'02/01/20'),(5,'Harriette Emmitt',6.33319e18,1,0,3,30,'02/11/20'),(6,'Helyn Olivari',3.53848e15,1,0,2,25,'02/15/20'),(7,'Saw Huggons',3.53523e15,1,0,2,25,'02/15/20'),(8,'Therine Ipwell',3.57872e15,1,0,4,35,'02/01/20'),(9,'Shirl Capitano',5.43783e15,1,0,3,30,'02/20/20'),(10,'Nanette Hurn',3.57871e15,1,0,2,25,'02/03/20');
/*!40000 ALTER TABLE `MEMBERSHIP_PACKAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MOVIE`
--

DROP TABLE IF EXISTS `MOVIE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVIE` (
  `MovieID` int(11) DEFAULT NULL,
  `MovieName` text,
  `Status` text,
  `ReleaseDate` text,
  `Rating` double DEFAULT NULL,
  `Genre` text,
  `Director` text,
  `Actor` text,
  `IMDbRating` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MOVIE`
--

LOCK TABLES `MOVIE` WRITE;
/*!40000 ALTER TABLE `MOVIE` DISABLE KEYS */;
INSERT INTO `MOVIE` VALUES (111,'ACADEMY DINOSAUR','','02/22/20',2.7,'Comedy','Romy Advani','Myrilla Segges',6.9),(112,'BANGER PINOCCHIO','','02/07/20',3.5,'Drama','Danit Court','Desmond Carleman',9.7),(113,'BAREFOOT MANCHURIAN','','07/28/19',2.9,'Action|Adventure|Drama|War','Constanta Camies','Alissa Ruppelin',9),(114,'CASPER DRAGONFLY','','04/25/19',4.2,'Drama|Romance','Janean Odam','Cammy Gomersall',5.8),(115,'DAY UNFAITHFUL','','08/25/19',3.5,'Comedy|Drama','Noel Terbrug','Shaughn Breming',5.9),(116,'KANE EXORCIST\"\"','','02/21/20',9,'Film-Noir|Horror|Thriller','Ed Arnowitz','Joly Cattow',1.6),(117,'KICK SAVANNAH','','01/23/20',9.6,'Horror','Drusilla Lean','Bryce Deverick',9.2),(118,'LAWRENCE LOVE','','12/26/19',8.6,'Documentary','Shoshanna Blakeslee','Ambur Addyman',7.3),(119,'LEAGUE HELLFIGHTERS','','01/05/20',3.6,'Comedy|Drama','Ilene Hamflett','Lindie Pawden',1.4),(120,'LEATHERNECKS DWARFS','','11/27/19',1.1,'Action|Comedy','Cobbie Ashdown','Denver Chaplin',1.3);
/*!40000 ALTER TABLE `MOVIE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NOSHOW`
--

DROP TABLE IF EXISTS `NOSHOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NOSHOW` (
  `NoshowID` int(11) DEFAULT NULL,
  `MembershipID` int(11) DEFAULT NULL,
  `NoShowDate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NOSHOW`
--

LOCK TABLES `NOSHOW` WRITE;
/*!40000 ALTER TABLE `NOSHOW` DISABLE KEYS */;
INSERT INTO `NOSHOW` VALUES (1,1008,'3/23/2019'),(2,1026,'7/31/2019'),(3,1030,'6/28/2019'),(4,1029,'6/22/2019'),(5,1030,'7/27/2019'),(6,1025,'12/4/2019'),(7,1005,'12/7/2019'),(8,1017,'1/26/2020'),(9,1017,'9/13/2019'),(10,1018,'5/18/2019'),(11,1026,'10/29/2019'),(12,1028,'12/7/2019'),(13,1005,'7/28/2019'),(14,1019,'10/5/2019'),(15,1023,'5/9/2019'),(16,1016,'9/14/2019'),(17,1012,'2/28/2019'),(18,1003,'9/6/2019'),(19,1026,'10/18/2019'),(20,1013,'4/14/2019'),(21,1002,'5/25/2019'),(22,1022,'7/18/2019'),(23,1001,'3/23/2019'),(24,1022,'4/28/2019'),(25,1023,'12/6/2019'),(26,1020,'12/28/2019'),(27,1027,'4/16/2019'),(28,1026,'7/12/2019'),(29,1026,'12/28/2019'),(30,1021,'8/20/2019'),(31,1006,'5/18/2019'),(32,1018,'6/26/2019'),(33,1020,'3/10/2019'),(34,1017,'5/28/2019'),(35,1011,'3/22/2019'),(36,1025,'6/30/2019'),(37,1005,'10/8/2019'),(38,1027,'11/30/2019'),(39,1004,'11/27/2019'),(40,1011,'9/26/2019');
/*!40000 ALTER TABLE `NOSHOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REFUND`
--

DROP TABLE IF EXISTS `REFUND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REFUND` (
  `RefundID` int(11) DEFAULT NULL,
  `RefundDate` text,
  `BookingID` int(11) DEFAULT NULL,
  `Status` text,
  `NumberOfAldultSeat` int(11) DEFAULT NULL,
  `NumberOfStudentSeat` int(11) DEFAULT NULL,
  `RefundAmount` int(11) DEFAULT NULL,
  `EmpID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REFUND`
--

LOCK TABLES `REFUND` WRITE;
/*!40000 ALTER TABLE `REFUND` DISABLE KEYS */;
INSERT INTO `REFUND` VALUES (1,'10/21/19',132,'refunded',2,1,50,926),(2,'11/15/19',122,'refunded',1,0,20,915),(3,'5/28/19',68,'refunded',2,1,49,914),(4,'7/22/19',84,'refunded',3,0,48,924),(5,'8/21/19',192,'refunded',2,0,51,911),(6,'5/9/19',139,'refunded',3,0,91,927),(7,'5/23/19',145,'refunded',1,0,15,906),(8,'11/27/19',63,'pending',2,0,38,927),(9,'12/9/19',10,'pending',2,0,20,930),(10,'3/26/19',11,'pending',3,0,20,918),(11,'2/15/20',15,'pending',5,0,60,913),(12,'4/16/19',125,'pending',1,0,26,928),(13,'1/16/20',161,'check-in',1,0,20,929),(14,'3/6/19',25,'check-in',1,0,84,905),(15,'3/29/19',30,'check-in',2,0,20,916);
/*!40000 ALTER TABLE `REFUND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCHEDULES`
--

DROP TABLE IF EXISTS `SCHEDULES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCHEDULES` (
  `ScheduleID` int(11) DEFAULT NULL,
  `MovieID` int(11) DEFAULT NULL,
  `TheaterID` int(11) DEFAULT NULL,
  `AuditoriumID` int(11) DEFAULT NULL,
  `AiringDate` text,
  `AiringTime` text,
  `MyUnknownColumn` text,
  `MyUnknownColumn_[0]` text,
  `MyUnknownColumn_[1]` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCHEDULES`
--

LOCK TABLES `SCHEDULES` WRITE;
/*!40000 ALTER TABLE `SCHEDULES` DISABLE KEYS */;
INSERT INTO `SCHEDULES` VALUES (201,127,2,2,'2020-02-14','12:11','','',''),(202,127,2,4,'2020-02-14','15:10','','',''),(203,127,1,6,'2020-02-14','12:50','','',''),(204,127,3,6,'2020-02-14','19:18','','',''),(205,127,2,9,'2020-02-14','14:33','','',''),(206,140,2,6,'2020-01-20','19:38','','',''),(207,140,2,8,'2019-04-07','17:39','','',''),(208,127,2,3,'2020-02-14','23:52','','',''),(209,127,3,7,'2020-02-14','18:07','','',''),(210,127,2,6,'2020-02-14','22:17','','',''),(211,127,2,7,'2020-02-14','23:37','','',''),(212,127,1,9,'2020-02-14','14:38','','',''),(213,140,3,10,'2019-05-26','15:05','','',''),(214,113,1,7,'2019-06-23','12:52','','',''),(215,125,2,3,'2020-02-14','12:22','','',''),(216,121,2,7,'2020-02-14','14:09','','',''),(217,121,1,9,'2020-02-14','15:15','','',''),(218,121,3,7,'2020-02-14','14:25','','',''),(219,121,2,5,'2020-02-14','23:45','','',''),(220,138,1,7,'2019-08-14','23:43','','',''),(221,135,3,4,'2019-12-07','11:00','','',''),(222,139,2,6,'2019-09-03','11:34','','',''),(223,132,3,3,'2019-12-17','22:45','','',''),(224,128,2,6,'2019-10-14','18:40','','',''),(225,123,1,7,'2020-02-12','11:22','','',''),(226,129,1,3,'2019-12-24','11:55','','',''),(227,129,3,6,'2019-12-24','14:46','','',''),(228,129,1,9,'2019-12-24','18:43','','',''),(229,129,2,5,'2019-12-24','17:49','','',''),(230,129,2,9,'2019-12-24','13:43','','',''),(231,129,3,2,'2019-08-09','23:46','','',''),(232,138,3,10,'2019-10-31','15:04','','',''),(233,128,1,9,'2019-08-27','12:05','','',''),(234,118,2,9,'2020-01-21','10:26','','',''),(235,129,2,5,'2019-06-24','21:40','','',''),(236,137,2,9,'2019-04-21','19:54','','',''),(237,116,3,7,'2020-01-02','19:08','','',''),(238,131,2,3,'2020-02-21','19:13','','',''),(239,118,3,8,'2019-11-27','12:49','','',''),(240,115,3,8,'2019-10-15','13:09','','',''),(241,123,2,5,'2019-11-28','12:00','','',''),(242,121,3,8,'2020-01-18','22:41','','',''),(243,111,1,6,'2019-08-20','20:14','','',''),(244,131,1,4,'2019-03-07','13:41','','',''),(245,124,1,4,'2019-12-05','10:00','','',''),(246,136,3,9,'2020-02-02','23:02','','',''),(247,112,3,1,'2019-11-12','18:44','','',''),(248,119,2,1,'2020-02-02','12:12','','',''),(249,140,1,5,'2019-11-26','13:19','','',''),(250,133,2,8,'2019-06-06','15:52','','',''),(251,136,3,10,'2019-11-15','20:33','','',''),(252,120,3,7,'2020-01-01','14:25','','',''),(253,125,1,6,'2020-01-17','14:59','','',''),(254,118,1,5,'2019-09-18','18:57','','',''),(255,124,2,6,'2019-04-02','21:01','','',''),(256,119,1,2,'2019-09-13','12:56','','',''),(257,132,1,9,'2019-11-29','15:55','','',''),(258,120,3,3,'2019-07-28','19:07','','',''),(259,123,1,4,'2019-10-26','13:04','','',''),(260,136,1,2,'2019-12-14','13:30','','','');
/*!40000 ALTER TABLE `SCHEDULES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `THEATER`
--

DROP TABLE IF EXISTS `THEATER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `THEATER` (
  `TheaterID` int(11) DEFAULT NULL,
  `TheaterName` text,
  `Phone` text,
  `Address` text,
  `ManagerID` int(11) DEFAULT NULL,
  `NumberOfRoom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `THEATER`
--

LOCK TABLES `THEATER` WRITE;
/*!40000 ALTER TABLE `THEATER` DISABLE KEYS */;
INSERT INTO `THEATER` VALUES (1,'AktorSeattle','494-919-6908','461 Prairie Rose Street',901,10),(2,'AktorUdistrict','100-483-5034','15 Jana Road',902,10),(3,'AktorBellevue','783-575-0936','61616 Mandrake Hill',903,10);
/*!40000 ALTER TABLE `THEATER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WATCHING_HISTORY`
--

DROP TABLE IF EXISTS `WATCHING_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WATCHING_HISTORY` (
  `RecordID` int(11) DEFAULT NULL,
  `MovieID` int(11) DEFAULT NULL,
  `WatchTime` text,
  `WatchDate` text,
  `MemberID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WATCHING_HISTORY`
--

LOCK TABLES `WATCHING_HISTORY` WRITE;
/*!40000 ALTER TABLE `WATCHING_HISTORY` DISABLE KEYS */;
INSERT INTO `WATCHING_HISTORY` VALUES (1,112,'7:26 PM','8/14/19',1009),(2,116,'6:55 PM','9/10/19',1008),(3,118,'10:53 PM','9/29/19',1022),(4,126,'10:45 AM','6/18/19',1010),(5,136,'8:00 PM','2/13/20',1026),(6,126,'11:59 AM','9/29/19',1008),(7,116,'12:52 PM','1/11/20',1009),(8,122,'11:21 AM','11/13/19',1023),(9,111,'6:58 PM','10/3/19',1029),(10,123,'7:49 PM','5/20/19',1015),(11,141,'9:50 PM','2/5/20',1022),(12,116,'4:01 PM','4/22/19',1024),(13,113,'9:29 PM','8/10/19',1029),(14,129,'2:47 PM','4/29/19',1022),(15,138,'6:17 PM','3/23/19',1013),(16,121,'12:18 PM','3/9/19',1015),(17,117,'9:45 PM','12/30/19',1030),(18,140,'12:42 PM','6/14/19',1007),(19,136,'2:53 PM','4/16/19',1002),(20,115,'3:39 PM','1/30/20',1030),(21,128,'2:20 PM','12/12/19',1011),(22,111,'4:03 PM','11/27/19',1029),(23,122,'7:44 PM','5/4/19',1016),(24,115,'11:21 AM','6/25/19',1004),(25,131,'11:55 PM','11/20/19',1010),(26,115,'9:05 PM','8/10/19',1011),(27,126,'12:12 PM','12/8/19',1030),(28,117,'10:51 PM','3/16/19',1008),(29,141,'11:23 AM','8/15/19',1001),(30,121,'8:00 PM','7/12/19',1003),(31,137,'10:07 PM','1/31/20',1004),(32,126,'2:45 PM','3/12/19',1009),(33,121,'5:33 PM','6/16/19',1017),(34,112,'3:42 PM','9/18/19',1022),(35,119,'3:57 PM','9/13/19',1022),(36,138,'1:03 PM','10/13/19',1003),(37,130,'10:14 PM','3/17/19',1012),(38,133,'6:08 PM','5/18/19',1015),(39,126,'10:12 AM','2/4/20',1020),(40,141,'7:38 PM','9/5/19',1013),(41,137,'11:43 PM','6/28/19',1008),(42,117,'10:23 PM','3/7/19',1029),(43,141,'12:34 PM','10/4/19',1013),(44,125,'6:12 PM','1/26/20',1020),(45,132,'6:59 PM','6/13/19',1008),(46,133,'10:50 AM','1/18/20',1019),(47,117,'3:53 PM','1/25/20',1007),(48,111,'6:52 PM','9/26/19',1005),(49,112,'11:51 PM','1/9/20',1003),(50,125,'3:30 PM','11/21/19',1026),(51,141,'6:37 PM','6/7/19',1023),(52,133,'11:43 AM','6/23/19',1022),(53,114,'5:49 PM','12/15/19',1021),(54,134,'8:33 PM','12/12/19',1004),(55,126,'7:08 PM','2/27/19',1017),(56,139,'6:11 PM','6/3/19',1011),(57,113,'8:45 PM','4/1/19',1025),(58,139,'10:29 PM','12/1/19',1010),(59,140,'1:34 PM','11/17/19',1001),(60,124,'11:15 PM','10/3/19',1023),(61,115,'10:31 AM','2/2/20',1020),(62,136,'1:09 PM','3/28/19',1029),(63,138,'10:38 AM','12/18/19',1005),(64,118,'11:08 PM','2/12/20',1004),(65,128,'12:36 PM','3/8/19',1019),(66,116,'12:07 PM','12/24/19',1002),(67,117,'7:13 PM','4/11/19',1013),(68,121,'4:13 PM','3/25/19',1003),(69,139,'5:42 PM','7/23/19',1001),(70,122,'11:36 PM','11/3/19',1008),(71,122,'1:59 PM','3/8/19',1024),(72,123,'11:44 AM','8/30/19',1013),(73,135,'9:59 PM','6/27/19',1001),(74,115,'10:21 AM','6/25/19',1012),(75,111,'1:05 PM','2/16/20',1017),(76,128,'7:37 PM','9/1/19',1030),(77,132,'4:50 PM','10/8/19',1022),(78,132,'12:57 PM','8/12/19',1009),(79,137,'11:16 AM','10/26/19',1005),(80,131,'12:48 PM','7/7/19',1012),(81,124,'11:38 AM','9/16/19',1004),(82,128,'4:40 PM','3/1/19',1003),(83,136,'8:15 PM','10/14/19',1023),(84,120,'7:31 PM','7/14/19',1024),(85,121,'3:12 PM','8/4/19',1030),(86,138,'6:36 PM','6/24/19',1011),(87,122,'4:54 PM','9/20/19',1013),(88,111,'2:22 PM','7/30/19',1020),(89,139,'7:26 PM','1/28/20',1009),(90,125,'10:58 AM','7/18/19',1023),(91,131,'4:08 PM','4/27/19',1016),(92,114,'2:01 PM','11/25/19',1018),(93,112,'6:06 PM','12/8/19',1003),(94,131,'10:42 AM','3/31/19',1013),(95,135,'1:58 PM','6/12/19',1025),(96,118,'6:24 PM','6/2/19',1021),(97,129,'8:29 PM','4/2/19',1018),(98,135,'9:14 PM','12/31/19',1009),(99,132,'8:23 PM','9/13/19',1013),(100,111,'9:05 PM','8/27/19',1007);
/*!40000 ALTER TABLE `WATCHING_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-02 17:20:16
