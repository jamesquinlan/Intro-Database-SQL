-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: unemath.com    Database: unemath_quinlan
-- ------------------------------------------------------
-- Server version	5.5.51-38.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderDetails` (
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`order`,`product`),
  KEY `product` (`product`),
  CONSTRAINT `order` FOREIGN KEY (`order`) REFERENCES `Orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product` FOREIGN KEY (`product`) REFERENCES `Products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDetails`
--

LOCK TABLES `OrderDetails` WRITE;
/*!40000 ALTER TABLE `OrderDetails` DISABLE KEYS */;
INSERT INTO `OrderDetails` VALUES (1,3801,1),(1,7358,1),(1,11734,2),(2,2200,1),(2,2695,1),(3,11581,2),(4,10760,1),(5,4512,2),(6,6293,1),(7,6480,1),(8,6411,2),(9,3017,1),(9,8136,3),(9,9911,1),(10,8144,1),(10,11495,1),(11,5522,1),(12,3764,1),(13,3656,1),(14,2940,2),(15,2591,1),(15,9862,2),(16,6281,2),(17,5841,1),(18,3901,1),(18,11884,2),(19,9079,2),(19,9920,1),(20,2767,1),(20,2942,2),(21,9872,2),(22,2541,2),(22,2591,1),(22,9272,2),(23,5841,1),(23,6261,2),(23,11884,2),(24,3901,1),(24,9079,2),(25,9920,1),(26,2767,1),(27,10165,1),(28,11203,2),(29,7553,1),(30,6435,1),(31,9900,1),(32,7747,2),(33,4685,1),(34,6866,1),(35,8305,1),(35,11671,1),(36,11157,2),(37,11381,1),(38,9597,1),(38,11170,1),(39,2881,1),(40,4500,1),(41,11315,1),(42,3201,1),(42,7596,1),(42,7720,2),(43,3897,1),(44,9991,1),(45,2658,1),(46,1021,1),(47,3875,1),(48,5802,1),(49,1625,1),(50,8586,1),(51,3287,1),(52,9302,1),(53,2799,1),(54,4013,1),(54,4617,1),(55,9290,2),(56,10829,1),(57,8926,1),(58,9966,1),(59,6115,1),(60,11499,1),(61,1986,1),(62,4151,1),(63,5659,1),(64,6939,1),(65,9195,1),(66,3899,1),(67,8582,1),(67,10693,1),(68,7667,1),(69,4561,2),(70,4626,2),(71,7042,1),(72,3533,1),(73,3231,2),(74,2658,1),(74,6270,1),(74,10065,1),(74,10190,1),(74,11352,1),(75,4232,1),(76,3434,1),(77,8426,1),(78,3533,1),(79,3231,2),(80,10190,1),(81,1352,1),(81,2655,1),(81,6273,1),(82,3434,1),(82,4232,1),(82,10065,1),(83,8425,1),(84,10165,1),(85,11203,2),(86,7553,1),(87,6435,1),(87,7747,2),(87,9900,1),(88,4685,4),(89,6866,3),(89,8305,1),(90,11671,1),(91,2940,1),(92,9862,1),(93,2591,1),(94,6281,1),(95,5841,1),(95,11884,1),(96,3901,1),(96,9079,1),(96,9920,1),(97,2767,1),(98,1003,1),(99,1010,1),(100,1005,1),(101,1001,2),(102,1004,2),(103,1009,1),(104,1002,2),(105,1010,1),(106,1001,1),(107,1008,1),(108,1003,1),(108,1953,1),(108,4534,1),(108,6345,1),(109,1004,2),(109,1958,1),(110,1016,1),(110,1955,1),(111,1007,1),(111,1955,1);
/*!40000 ALTER TABLE `OrderDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-16  8:26:22