-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost      Database: <dbname>
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
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) CHARACTER SET latin1 NOT NULL,
  `lname` varchar(45) CHARACTER SET latin1 NOT NULL,
  `phone` char(12) COLLATE latin1_general_ci DEFAULT 'xxx-xxx-xxxx',
  `email` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `address1` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `address2` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `zip` mediumint(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zip` (`zip`),
  CONSTRAINT `zip` FOREIGN KEY (`zip`) REFERENCES `Zipcodes` (`zip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1062 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1031,'Imelda','Holcomb','937-484-2402','dolor@necenim.com','8350 Adipiscing Rd.','',31775),(1032,'Teagan','Crane','263-915-6116','risus@in.com','139 Lacardio Ave','',26034),(1033,'Destiny','Russell','361-305-1439','non@gravida.edu','9135 Magna. Street','963-6955 Lacinia Road',22009),(1034,'Marsden','Dillard','821-151-2410','semper.et@nullaIntincidunt.com','4270 Aliquam Street','',26034),(1035,'Slade','Fowler','752-248-5096','tellus.imperdiet@quisturpisvitae.com','4368 Surwink venue','Apt 428',04106),(1037,'Sydney','Guy','578-796-5277','ornare@velitdui.ca','Ap #249-3884 Elit St.','5786 Interdum. Road',26034),(1038,'Jessamine','Hall','330-338-1589','jahll@ovbc.edu','8738 Ohio Av.','',43920),(1039,'Maryam','Tyler','754-715-7082','malesuada.malesuada@idsapienCras.com','2376 Leo, Ave','',99812),(1040,'Cailin','Lamb','673-849-8970','clamb@tinder.com','9481 Road','',26034),(1041,'Aimee','Wilson','330-386-2464','amywilson@turpis.com','16160 Cannons Mills Rd.','',43920),(1042,'Colorado','Soto','996-590-7892','ut@Fuscemilorem.com','Ap #658-6927 Sociis Rd.','Ap #774-5804 Quis, Rd.',26034),(1043,'Eliana','Witt','439-978-0537','ultrices.mauris@purusgravida.com','Lucus St.','',43210),(1044,'Lee','Clemons','685-288-2021','Integer@lobortis.net','3085 Neil Ave.','',43201),(1045,'Ferris','Stevens','434-012-9560','ac@libero.org','Ap #248-3742 Nullam Av.','P.O. Box 827, 9442 Risus. Street',90210),(1046,'Margaret','Harding','787-095-7706','Proin.dolor.Nulla@enim.net','6978 Northest. Ave','',73561),(1047,'Suki','Holden','071-229-5461','sholden@une.edu','11 Hills Beach Rd.','Decary Hall 123',04005),(1048,'Anastasia','Gillespie','067-183-8599','condimentum.eget.volutpat@Duis.com','6615 Leo. St.','',26034),(1049,'Yetta','Foley','692-366-9700','non.dui.nec@diamloremauctor.ca','2206 Montes, Rd.','Ap 537',56760),(1050,'Uriel','Richards','140-598-3289','massa@fringilla.edu','4231 Iaculis Road','Ap #305',98591),(1051,'Sage','Norris','677-467-0246','magna.Sed@Etiam.org','3747 Odio Rd.','P.O. Box 537, 8986 Ac Road',00613),(1052,'Neil','Alvarado','920-541-0563','feugiat.placerat@NullafacilisiSed.coom','5994 Sit Ave','',26034),(1053,'Tanisha','Finch','813-263-7292','magna@iaculis.edu','3816 Imperdiet Rd.','',22723),(1054,'Idola','Bradford','655-053-3758','Etiam.laoreet.libero@blandit.net','508 Enim, Rd.','P.O. Box 264',24522),(1055,'Ciara','Diaz','620-470-8510','ipsum.Curabitur@maurissagittis.edu','887-3371 At Street','492-3463 Fermentum Rd.',26034),(1056,'Rudyard','Chan','369-193-1499','adipiscing.lobortis@id.com','Ap #409 Varius Av.','Apt 209',24879),(1057,'Malachi','Chaney','054-717-3988','lorem@ornareInfaucibus.ca','817 Tincidunt. St.','Ap #206',08217),(1058,'Baker','Foreman','047-985-7110','luctus.et@rutrum.ca','P.O. Box 430, 5374 Arcu Av.','',60041),(1059,'Meredith','Browning','309-527-0273','lorem.auctor.quis@Maurisvestibulum.com','1071 Leo Rd.','',13418),(1060,'Ian','Mooney','946-576-3910','at@imperdiet.com','74501 Suspendisse St.','P.O. Box 895',26034),(1061,'Cosmo','Krammer','207-602-9483','cosmo@gmail.com','239839 State St.','',04106);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-16  8:26:17
