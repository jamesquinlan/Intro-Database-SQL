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
-- Table structure for table `Manufacturers`
--

DROP TABLE IF EXISTS `Manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Manufacturers` (
  `manufacturer_id` int(3) NOT NULL DEFAULT '0',
  `manufacturer` varchar(38) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturers`
--

LOCK TABLES `Manufacturers` WRITE;
/*!40000 ALTER TABLE `Manufacturers` DISABLE KEYS */;
INSERT INTO `Manufacturers` VALUES (16,'Accurite',''),(18,'Dalen Products',''),(19,'Artline',''),(23,'Bird Watcher\'s Digest',''),(24,'Becks',''),(27,'Audubon Entities',''),(30,'Shake-Away',''),(34,'First Nature',''),(37,'STI Smart Solar Inc.',''),(38,'Clark Collection',''),(39,'Lucy Hammet Bingo Games',''),(43,'Brushtech Brushes',''),(49,'No-No Feeder',''),(50,'Happy Bird Corporation',''),(52,'Mark Feldstein',''),(57,'Purple Martin Conservation Association',''),(59,'Mosquito Dunks Summit Chemical',''),(60,'Roger Eddy',''),(62,'Sapphire Labs',''),(64,'White Mountain Puzzles',''),(67,'Stackpole Books',''),(68,'Songbird Essentials',''),(69,'Allied Precision',''),(70,'Ancient Graffiti',''),(71,'Arundale',''),(72,'Aspects',''),(74,'Rodale Books',''),(75,'Farm Innovators',''),(76,'Perky Pet',''),(79,'Best For Birds',''),(80,'Best-1',''),(81,'Better Birdwatching',''),(86,'Birdola Products',''),(88,'Brome Bird Care',''),(90,'C&S Products',''),(91,'Care Free Enzymes',''),(92,'Chuck-A-Nut Products',''),(93,'Droll Yankees, Inc.',''),(95,'Ecological Laboratories',''),(101,'Fit & Fill Funnel',''),(103,'Gadjit',''),(106,'Harper Collins Publishers',''),(107,'Havahart',''),(108,'Havegard Products',''),(109,'Heath',''),(110,'Heritage Farms',''),(111,'Homestead',''),(112,'Hookery',''),(113,'Hyde',''),(115,'K&H Manufacturing',''),(120,'Music of the Spheres',''),(124,'Naturescapes Music',''),(125,'Opus',''),(129,'Houghton Mifflin Peterson Books',''),(130,'Pine Tree Farms, Inc.',''),(131,'Premier Designs',''),(132,'Rainbow Gardman',''),(133,'Random House',''),(135,'Rogers & Kirkwood',''),(139,'Vortex Optics Sheltered Wings',''),(145,'Spring Star',''),(147,'Stokes',''),(148,'Bird Abode Supergourds',''),(151,'Thayer Birding Software',''),(154,'Vari-Crafts',''),(155,'Verdant Brands',''),(157,'Von Holtzbrink Publishers',''),(158,'Wildlife Accessories',''),(160,'Wild Republic',''),(162,'Willow Creek Press',''),(163,'Window Alert',''),(166,'Woodlink',''),(167,'Maine Line Products',''),(168,'Workman Publishing',''),(169,'Animelodies',''),(171,'Magnetic Bookmark',''),(172,'Maslowski Productions',''),(177,'Kyjen Company',''),(178,'Magnet Works, Ltd.',''),(179,'Poop-Off',''),(181,'Unipeck of America',''),(183,'Evergreen Enterprises',''),(184,'Late For The Sky',''),(185,'American Expedition',''),(188,'Backyard Birding Solutions',''),(191,'Cedar Creek Products',''),(193,'Easton Publishing',''),(194,'Fiddler\'s Elbow',''),(195,'John Feith- Birds, Birds, Birds',''),(196,'JPI',''),(197,'Martin Paul',''),(200,'Squirrel Stopper',''),(204,'Sunflower Food & Spice Company',''),(206,'Bird-X Inc',''),(208,'Achla Designs',''),(209,'Echo Valley',''),(213,'Scoot Products',''),(215,'Timbuktu Outdoors',''),(217,'Bamboo Accents',''),(221,'Cohasset Gifts',''),(222,'Home Bazaar Inc.',''),(224,'Chronicle Books',''),(226,'Master Vision',''),(227,'Wingscapes',''),(228,'Birdhouse Spy Cam',''),(233,'Schrodt',''),(234,'Outset Media Games',''),(235,'Rosso\'s International',''),(236,'Nelson Products Company',''),(238,'Unipet',''),(240,'Outside Inside',''),(243,'Hiatt Manufacturing',''),(244,'Penguin Group',''),(246,'Nite Guard',''),(248,'Cole\'s Wild Bird Products Co',''),(249,'Conant Custom Brass',''),(251,'Waterford Press',''),(252,'Cast Paper Art',''),(255,'Cobane Studio LLC',''),(257,'Celtic Sunrise',''),(259,'Tripar',''),(260,'Woodstock Chimes',''),(261,'Bird B Gone Inc.',''),(264,'Hi-Look Inc.',''),(265,'In The Breeze',''),(268,'Steven M. Lewers Earth Sky Water',''),(272,'Impact Photographics',''),(274,'Away with Geese',''),(275,'Toysmith',''),(277,'Exhart',''),(278,'Adventure Publications Inc',''),(279,'Classic Brands LLC',''),(280,'Maine Bucket Co',''),(281,'Regal Art & Gift',''),(282,'Atlas Gloves',''),(283,'Blubandoo Incorporated',''),(288,'Coyne\'s Company',''),(290,'Woodstream',''),(291,'Easy Arrangers',''),(292,'Pop\'s Hummingbird Swings',''),(293,'Kay Home Products',''),(295,'Princeton University Press',''),(296,'Perseus Books Group',''),(298,'Bite-Lite Candle',''),(304,'West Coast Design Studios',''),(306,'Alice\'s Cottage',''),(307,'Frog Log',''),(309,'Flying Colors',''),(310,'Brushart',''),(312,'Switchables',''),(313,'DZI Handmade Designs',''),(314,'PineBush',''),(316,'Panacea',''),(317,'Noppadol Paothong Photography',''),(318,'ABC Bird Tape',''),(321,'Glassmasters',''),(322,'Sleepytime Press',''),(323,'Bees N Things',''),(324,'Nature\'s Way',''),(325,'Elegant Garden Design',''),(326,'Wildlife Sciences',''),(327,'Loofah Art',''),(328,'Deck-Guard',''),(329,'Toland Home and Garden',''),(331,'Luvali Convertibles',''),(333,'Bonide',''),(334,'Good Directions',''),(335,'Sloggers',''),(336,'Hugs Pet Products',''),(337,'Squirrel Solutions',''),(338,'Wild Delight',''),(340,'Scholastic Books',''),(341,'Carson Optical',''),(342,'Handy Camel',''),(344,'Couronne Co.',''),(345,'Russco III',''),(346,'Burley Clay Products',''),(348,'Wow Factor Lighting',''),(349,'Moultrie',''),(350,'Byer of Maine',''),(352,'Grape Memories',''),(353,'That\'s Yours',''),(354,'Bird Cage Press',''),(355,'River\'s Edge Products',''),(356,'Tree-Free Greetings',''),(357,'Peaceful Valley Productions',''),(358,'Pacific Merchants',''),(359,'Counter Art',''),(360,'Design Toscano',''),(362,'DWK Corporation',''),(363,'Muckaluck Enterprises, LLC',''),(364,'Wine Away',''),(365,'Vintage Concepts',''),(366,'Gift Essentials',''),(367,'Wine Gift Essentials',''),(368,'Zee\'s Creations',''),(369,'Haley\'s Corker',''),(370,'Vinturi',''),(371,'Quick Reference Publishing',''),(373,'Giftcraft',''),(374,'Finders Forum Inc',''),(375,'GreenWay Traps',''),(376,'Headwind Products',''),(377,'Vacu Vin',''),(378,'Wellspring',''),(379,'M-Dog LLC',''),(380,'Private Preserve',''),(381,'Streamline',''),(382,'FlashPoint Candle',''),(383,'Carson Home Accents',''),(384,'TDI Brands',''),(385,'California Home and Garden',''),(386,'Three Star',''),(387,'Earthly Way',''),(388,'F.M. Brown\'s Sons Inc.',''),(389,'Sunset Vista Designs Co., Inc.',''),(390,'Wine Hook Unique Solutionz, Inc',''),(391,'Wine-Tapa',''),(392,'North West Enterprises',''),(393,'LaMi Products',''),(394,'SunGuard',''),(395,'Texas A&M Press',''),(396,'Navajo Incorporated',''),(397,'Precision Pours Inc',''),(398,'Franco\'s Cocktail Mixes',''),(399,'Kolder',''),(400,'Pro Bar',''),(401,'Big Mouth Inc.',''),(402,'Twang',''),(403,'Fred and Friends',''),(404,'Grimm, Inc.',''),(405,'Independent Publishers Group',''),(406,'Farfalli',''),(407,'Liquor Essentials',''),(408,'Primeware Inc',''),(409,'The Nuttery',''),(410,'Vagnbys',''),(411,'Vincadi',''),(412,'Stovall Products',''),(413,'Hachette Book Group USA',''),(414,'Govino',''),(415,'Sterling Publishing',''),(416,'Bella Vita',''),(417,'Fineline Settings',''),(418,'Dog Gone Smart',''),(419,'Plastec',''),(420,'Gibbons Innovations',''),(421,'Little Giants',''),(422,'Beer Greetings',''),(423,'Chef Craft',''),(424,'Desert Steel',''),(425,'LipLidz',''),(426,'LS Arts Inc',''),(427,'Jay Bags','www.jaybags.com'),(428,'95 and Sunny',''),(429,'Fresh Brands',''),(430,'Jildi LLC',''),(431,'CapaBunga',''),(432,'Soireehome',''),(433,'Cork Pops',''),(434,'Beer Cap Traps',''),(435,'Cristar',''),(436,'Winerest USA','');
/*!40000 ALTER TABLE `Manufacturers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-16  8:26:24
