-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: DhakaBusRoutes
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buses` (
  `BusID` int(11) NOT NULL,
  `BusName` varchar(255) DEFAULT NULL,
  `Schedule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (1,'Midline Bus','Every 30 minutes'),(2,'Nogor Poribohon','Every 15 minutes'),(3,'Alif Poribohon','Every 15 minutes'),(4,'BRTC','No Schedule'),(5,'Dhakar Chaka','Every 30 minutes'),(6,'Bikash Poribohon','Every 30 minutes'),(7,'Dhaka Transport','Every 15 minutes'),(8,'ATCL','Hourly'),(9,'Bihanga Paribahan','Every 15 minutes'),(10,'Ramjan Paribahan','Every 30 minutes'),(11,'TURAAG Poribahan','Every 15 minutes'),(12,'Transilva','Hourly'),(13,'Sunbeam Bus','No Schedule'),(14,'Silver Star','Every 30 minutes'),(15,'Rajacity Bus','Every 30 minutes'),(16,'Malancha','Every 15 minutes'),(17,'Rainbow Bus','Hourly'),(18,'Dreamliner','Every 30 minutes'),(19,'Happy Travel','Every 15 minutes'),(20,'Royal Travel','Every 30 minutes'),(21,'City Rider','Every 30 minutes'),(22,'Sunset Express','Every 15 minutes'),(23,'Greenway Bus','Hourly'),(24,'Golden Express','Every 30 minutes'),(25,'Silver Arrow','Every 30 minutes'),(26,'Star Express','Every 15 minutes'),(27,'Dynamic Bus','Every 30 minutes'),(28,'Commuter Bus','Every 30 minutes'),(29,'Metro Rider','Hourly'),(30,'Dream Bus','Every 15 minutes');
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busstops`
--

DROP TABLE IF EXISTS `busstops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busstops` (
  `StopID` int(11) NOT NULL,
  `StopName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busstops`
--

LOCK TABLES `busstops` WRITE;
/*!40000 ALTER TABLE `busstops` DISABLE KEYS */;
INSERT INTO `busstops` VALUES (1,'Gabtoli'),(2,'Mohammadpur'),(3,'Dhanmondi'),(4,'Jigatala'),(5,'Science Lab'),(6,'Shahbag'),(7,'Bangla Motor'),(8,'Paltan'),(9,'Motijheel'),(10,'Gulistan'),(11,'Farmgate'),(12,'Karwan Bazar'),(13,'Tejgaon'),(14,'Mohakhali'),(15,'Banani'),(16,'Uttara'),(17,'Airport'),(18,'Mirpur'),(19,'Pallabi'),(20,'Agargaon'),(21,'Kamalapur'),(22,'Badda'),(23,'Malibagh'),(24,'Lalbagh'),(25,'Moghbazar'),(26,'New Market'),(27,'Shyamoli'),(28,'Kallyanpur'),(29,'Kuril Bishwa Road'),(30,'Basundhara'),(31,'Khilgaon'),(32,'Shyampur'),(33,'Demra'),(34,'Mirhajaribagh'),(35,'Gandaria'),(36,'Siddikbazar'),(37,'Shantinagar'),(38,'Wari'),(39,'Hatirjheel'),(40,'Panthapath'),(41,'AsadGate'),(42,'Khamarbari'),(43,'Jahangir Gate'),(44,'Wireless'),(45,'Gulshan 1'),(46,'Badda Link Road'),(47,'Uttor Badda'),(48,'Shahjadpur'),(49,'Bashtola'),(50,'Notun Bajar'),(51,'Bashundhara'),(52,'Jamuna Future Park'),(53,'Kuril Biswa Road');
/*!40000 ALTER TABLE `busstops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busstopsmapping`
--

DROP TABLE IF EXISTS `busstopsmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busstopsmapping` (
  `BusID` int(11) NOT NULL,
  `StopID` int(11) NOT NULL,
  PRIMARY KEY (`BusID`,`StopID`),
  KEY `StopID` (`StopID`),
  CONSTRAINT `busstopsmapping_ibfk_1` FOREIGN KEY (`BusID`) REFERENCES `buses` (`BusID`),
  CONSTRAINT `busstopsmapping_ibfk_2` FOREIGN KEY (`StopID`) REFERENCES `busstops` (`StopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busstopsmapping`
--

LOCK TABLES `busstopsmapping` WRITE;
/*!40000 ALTER TABLE `busstopsmapping` DISABLE KEYS */;
INSERT INTO `busstopsmapping` VALUES (1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(2,1),(2,3),(2,5),(3,3),(3,6),(3,9),(4,2),(4,41),(4,42),(4,43),(4,44),(4,45),(4,46),(4,47),(4,48),(4,49),(4,50),(4,51),(4,52),(4,53),(5,3),(5,6),(5,7),(6,3),(6,5),(6,7),(7,4),(7,6),(7,8),(8,1),(8,7),(8,10),(9,3),(9,9),(9,11),(10,2),(10,5),(10,7),(11,3),(11,5),(11,6),(12,3),(12,6),(12,7),(13,2),(13,4),(13,8),(14,3),(14,6),(14,9),(15,3),(15,7),(15,10),(16,4),(16,8),(16,12),(17,3),(17,6),(17,11),(18,2),(18,4),(18,8),(19,3),(19,9),(19,12),(20,2),(20,5),(20,7);
/*!40000 ALTER TABLE `busstopsmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faretable`
--

DROP TABLE IF EXISTS `faretable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faretable` (
  `FareID` int(11) NOT NULL,
  `BusID` int(11) DEFAULT NULL,
  `SourceStopID` int(11) DEFAULT NULL,
  `DestinationStopID` int(11) DEFAULT NULL,
  `Fare` int(11) DEFAULT NULL,
  PRIMARY KEY (`FareID`),
  KEY `BusID` (`BusID`),
  KEY `SourceStopID` (`SourceStopID`),
  KEY `DestinationStopID` (`DestinationStopID`),
  CONSTRAINT `faretable_ibfk_1` FOREIGN KEY (`BusID`) REFERENCES `buses` (`BusID`),
  CONSTRAINT `faretable_ibfk_2` FOREIGN KEY (`SourceStopID`) REFERENCES `busstops` (`StopID`),
  CONSTRAINT `faretable_ibfk_3` FOREIGN KEY (`DestinationStopID`) REFERENCES `busstops` (`StopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faretable`
--

LOCK TABLES `faretable` WRITE;
/*!40000 ALTER TABLE `faretable` DISABLE KEYS */;
INSERT INTO `faretable` VALUES (3,2,1,3,30),(4,3,2,4,35),(5,4,1,2,22),(6,4,2,4,30),(7,5,2,4,32),(8,5,3,6,28),(9,6,1,3,27),(10,6,4,6,31),(11,7,2,4,24),(12,7,3,6,29),(13,8,1,2,19),(14,8,2,3,24),(15,9,1,3,29),(16,9,3,5,26),(17,10,2,4,28),(18,10,4,6,30),(19,11,1,2,21),(20,4,2,41,10),(21,4,2,42,10),(22,4,2,43,10),(23,4,2,14,15),(24,4,2,44,15),(25,4,2,45,20),(26,4,2,46,25),(27,4,2,47,25),(28,4,2,48,25),(29,4,2,49,30),(30,4,2,50,30),(31,4,2,51,35),(32,4,2,52,40),(33,1,2,3,8),(34,1,2,4,10),(35,1,2,5,15),(36,1,2,6,15),(37,1,2,7,20),(38,1,2,8,20),(39,1,2,9,25),(40,11,3,53,45);
/*!40000 ALTER TABLE `faretable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-23 11:23:45
