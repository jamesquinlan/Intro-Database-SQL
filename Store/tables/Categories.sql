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
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `category_id` int(4) NOT NULL DEFAULT '0',
  `category` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (0,'No Category'),(12,'Unknown 1'),(29,'Unknown 2'),(42,'NEW PRODUCTS'),(100,'Animal Deterrents and Traps'),(103,'Bat Products'),(106,'Heaters and DeIcers'),(107,'Bird Baths and Waterers'),(108,'Bird Deterrents'),(110,'Bird Feeders'),(113,'Bird Houses'),(114,'Body and Neck Coolers'),(115,'Bookmarks'),(116,'Books'),(117,'Brushes'),(118,'Butterfly'),(119,'Caged Bird'),(120,'Calendars'),(122,'Candle & Candle Holder'),(124,'Cat Products'),(125,'CDs and DVDs'),(128,'Clocks'),(129,'Coffee and Tea'),(130,'Cutting Boards'),(131,'Displays'),(132,'Dog Products'),(133,'Door Mats and Door Stops'),(134,'Drippers, Misters, Water Movers'),(135,'Containers'),(136,'Flags'),(137,'Flashlights'),(138,'Human Food'),(139,'Fountain Products'),(140,'Fruit and Jelly Feeders'),(141,'Games'),(142,'Outside Ornaments'),(143,'Figurines, Cloth Items, etc.'),(144,'Greeting Cards'),(145,'Hats'),(147,'Hummingbird Feeders '),(148,'Hummingbird Nectar'),(149,'Insect Control and Repellents'),(150,'Inside Art'),(151,'Unknown 3'),(152,'Jewelry'),(153,'Kitchen Accessories'),(154,'Ladybug Items'),(155,'Magnets'),(157,'Meal Worm Feeders'),(158,'Cups and Mugs'),(159,'Nesting Material'),(160,'Nightlights'),(161,'Optics, Cameras, Bird Calls'),(162,'Oriole Feeders'),(163,'Oriole Nectar and Jelly'),(164,'Paper & Stationary Products'),(166,'Photo Frame'),(167,'Pond Products'),(168,'Posters'),(169,'Baffles and Predator Guards'),(170,'Purple Martin'),(171,'Puzzles'),(173,'Weather and Rain Products'),(175,'Seed Trays and Saucers'),(176,'Cakes and Plugs'),(177,'Scoops and Funnels'),(178,'Signs'),(179,'Solar Bird Feeders'),(180,'Squirrel Resistant'),(181,'Squirrel Lovers'),(182,'Suet/Seed Log/Cake Feeders'),(183,'Sun Catchers'),(185,'Thermometers'),(186,'Nesting Boxes'),(187,'Amphibians and Reptiles'),(190,'Wind Chimes'),(193,'Wind Garden Products'),(194,'Accessories'),(195,'Water Feature Accessories'),(196,'Mounting Hardware'),(198,'Window Bird Feeders'),(199,'Thistle Feeders'),(200,'Seed Feeders'),(201,'Peanut/Peanut Butter Feeders'),(202,'Tissue Boxes'),(203,'Travel and Novelty Items'),(204,'Bug Houses'),(205,'Owl'),(206,'Household Cleaners'),(207,'Ornaments'),(211,'Buckets Heated and Non'),(213,'Christmas'),(214,'Bird Feeder Kits'),(215,'Lawn Care'),(218,'Recycled Feeders'),(219,'John Deere'),(221,'Bird House Kits'),(222,'Cardinals'),(223,'Bluebirds'),(224,'Hummingbirds'),(225,'Clingers'),(226,'Orioles'),(227,'Goldfinches'),(228,'Kids'),(229,'Outside Cleaners'),(230,'Solar Bird Baths'),(231,'Decorative Solar'),(232,'Eco-Friendly'),(233,'Horse'),(234,'Loon'),(235,'Patriotic / 4th of July'),(236,'Halloween'),(237,'Thanksgiving'),(238,'Valentine\'s Day'),(239,'Miscellaneous Holiday/Celebrations'),(240,'Easter'),(241,'Peanuts and Peanut Butter'),(242,'Seed'),(243,'Computer Items'),(244,'Gloves'),(245,'T-Shirts'),(246,'Lights'),(247,'Stones and Plaques'),(248,'Ant Moats'),(249,'Mealworms and Grubs'),(250,'Bird Bath Cleaner'),(251,'Bird Feeder Cleaner'),(252,'Bird House Cleaner'),(253,'Stakes'),(254,'Heated Bird Baths'),(255,'Squirrel-Resistant Feeders '),(256,'Sea Life'),(257,'House Standard Flags'),(258,'Garden Flags'),(259,'Spring'),(260,'Summer'),(261,'Autumn'),(262,'Winter'),(263,'Wood Duck'),(264,'Playing Cards'),(265,'Formerly Barnstorm'),(266,'Formerly Bobbo Inc'),(267,'Formerly Fisher Wildlife'),(268,'Formerly Looker'),(269,'Lodge'),(270,'Unknown 4'),(271,'Unknown 5'),(272,'Unknown 6'),(275,'Unknown 7'),(276,'Formerly Blue Handworks'),(277,'Bees'),(278,'Bereavement'),(370,'20 For 20'),(400,'Unknown 8'),(401,'Chill Sticks'),(402,'Cork Screws & Stoppers'),(403,'Wine Bottle Chillers'),(404,'Wine Glass Markers'),(408,'Unknown 9'),(409,'Unknown 10'),(410,'Apparel & Beauty'),(411,'Cosmetic Items'),(412,'Jewerly'),(413,'Decorative'),(414,'Cork Holders'),(415,'Glass Holders'),(416,'Inside Ornaments'),(417,'Multiple Wine Bottle Racks'),(418,'Single Wine Bottle Holders'),(419,'Wall Art'),(420,'Kitchen Items'),(421,'Bowls'),(422,'Cups'),(423,'Hot Pads'),(424,'Napkins'),(425,'Plates & Trays'),(426,'Scrubbers'),(427,'Shot Glasses'),(428,'Spoon Surface Savers'),(429,'Towels'),(430,'Wine Glasses'),(431,'Practical Use'),(432,'Bottle Caddy Bags'),(433,'Nightlights'),(434,'Note Cards'),(435,'Totes'),(436,'Outdoor Decorative'),(437,'Door Mats'),(438,'Flags'),(439,'Garden Stakes'),(440,'Mailbox Covers'),(441,'Outside Ornaments'),(442,'Weather & Rain Products'),(443,'Father\'s Day Specials'),(500,'WBC'),(501,'WBU'),(502,'Made In the USA'),(1000,'Aerators'),(1001,'Wine Savers & Preservers'),(1002,'Vacuum'),(1003,'Vacuum & More'),(1004,'Wine Bottle Holders'),(1005,'Unique Metalwear'),(1006,'DWK Hand-Painted'),(1007,'DWK Hand-Painted, Sets'),(1008,'Office, Den or Library'),(1009,'Ladies Shoe'),(1010,'Team Sports'),(1011,'Wine Racks'),(1012,'Rustic Outdoor Wine Racks'),(1013,'Wine Caddy\'s'),(1014,'Coasters'),(1015,'Absorbent Stone'),(1016,'Hardboard'),(1017,'Artistic & Funny'),(1018,'Stone Car'),(1019,'Single Tumbled Tile'),(1020,'Coaster Holders'),(1021,'Wine Bottle Stoppers'),(1022,'Handmade Glass'),(1023,'Solid Pewter'),(1024,'Assortments with FREE Displays'),(1025,'Popular Sellers'),(1026,'Team Sports & Special order'),(1027,'Coming Soon'),(1028,'Wine Accessories'),(1029,'Stain Remover'),(1030,'Wine Glass Charms'),(1031,'Wine Cooling & Serving'),(1032,'Crocks, Chillers, Tubs & More'),(1033,'Tabletop'),(1034,'Cheese Servers'),(1035,'Cheese Servers & Knives'),(1036,'Food-Safe Parchments'),(1037,'Wine Glasses, On-The-Go'),(1038,'Wine Glasses, Long Stem'),(1039,'Unique Wine Glasses'),(1040,'Wine Glasses, Hand Painted'),(1041,'Napkins'),(1042,'Tumbled Tile Trivets'),(1043,'Food Serving'),(1044,'Reversible Placemats'),(1045,'Paper Placemats'),(1046,'Salad Servers'),(1047,'Cutting Boards'),(1048,'Wine Lover Gifts'),(1049,'Stained Glass'),(1050,'Bags & Tags'),(1051,'Corked Carrier'),(1052,'Burlap Wine Bags & Holiday Tags'),(1053,'Cloth Wine Caddy Gift Bags'),(1054,'Wine Towels'),(1055,'Mini Wine Bottles, Funny Sayings'),(1056,'Cork Holders'),(1057,'Gift Sets'),(1058,'Playing Cards'),(1059,'Puzzles'),(1060,'Games'),(1061,'Wine Signs'),(1062,'Wall Art & Repurposed Bottle Chandeliers'),(1063,'Custom & Personalized Viniatures'),(1064,'BlueHandworks'),(1065,'Wine Lover Outdoor Items'),(1066,'Garden & House Flags'),(1067,'Garden Flags, House Flags & Door Mats'),(1068,'Books'),(1069,'Connoisseur\'s Collection'),(1070,'Customization'),(1071,'Custom & Personalized Viniatures'),(1072,'Wedding Viniatures'),(1073,'Glasses, Aerators & Vacuum'),(1074,'Caddys, Sacks & Aerators'),(1075,'Haley\'s Corker & Bottle Top Glass Holder'),(1076,'Coasters'),(1078,'Bar and Party'),(1407,'Unknown 11'),(2104,'Unknown 12'),(2130,'Thermal Insulated Bags'),(2148,'Unknown 14');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-16  8:26:26
