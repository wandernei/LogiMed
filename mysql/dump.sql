-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

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
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrega` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `lote_id` int(11) DEFAULT NULL,
  `TRANSPORTADORA_id` int(11) DEFAULT NULL,
  `entregue` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (1,610,977,1),(2,411,354,0),(3,866,738,0),(4,727,186,1),(5,699,19,1),(6,520,712,0),(7,916,196,1),(8,765,942,0),(9,271,301,0),(10,114,599,0),(11,127,865,0),(12,993,94,0),(13,696,962,0),(14,730,381,1),(15,2,415,0),(16,47,390,0),(17,869,279,0),(18,662,386,1),(19,43,820,1),(20,559,39,0),(21,869,253,0),(22,741,828,0),(23,502,828,0),(24,929,765,1),(25,987,753,0),(26,432,733,0),(27,316,947,0),(28,116,594,0),(29,132,795,0),(30,612,557,0),(31,521,807,0),(32,210,619,0),(33,307,716,1),(34,909,360,0),(35,25,323,1),(36,41,813,1),(37,579,591,0),(38,45,437,0),(39,8,101,0),(40,744,924,0),(41,34,894,1),(42,513,569,1),(43,256,74,0),(44,778,735,1),(45,536,413,1),(46,229,156,0),(47,927,974,0),(48,718,321,0),(49,408,785,1),(50,21,469,1),(51,241,815,1),(52,298,153,1),(53,506,40,1),(54,860,915,1),(55,967,500,0),(56,227,462,1),(57,262,474,1),(58,813,179,1),(59,189,839,1),(60,687,554,1),(61,707,848,1),(62,688,223,0),(63,723,292,1),(64,976,520,1),(65,247,229,0),(66,397,729,0),(67,164,551,1),(68,633,871,0),(69,349,430,0),(70,173,30,0),(71,194,231,0),(72,830,536,0),(73,518,840,0),(74,799,120,1),(75,768,431,1),(76,374,842,1),(77,891,719,1),(78,431,22,0),(79,301,803,0),(80,634,467,1),(81,986,739,1),(82,411,656,0),(83,644,579,1),(84,86,305,1),(85,269,831,1),(86,39,851,1),(87,120,858,1),(88,77,278,0),(89,154,718,0),(90,43,202,0),(91,322,853,1),(92,559,407,0),(93,600,586,0),(94,763,95,1),(95,664,720,1),(96,452,132,1),(97,955,701,1),(98,319,406,1),(99,57,224,1),(100,305,61,0);
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lote` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `tipo_descarte` int(11) DEFAULT NULL,
  `flag_esgotado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote`
--

LOCK TABLES `lote` WRITE;
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
INSERT INTO `lote` VALUES (1,308,412,7617,62,1,1),(2,308,412,7617,62,1,1),(3,980,599,7698,2,0,0),(4,397,948,2019,32,0,0),(5,227,157,2326,92,1,0),(6,817,357,9393,9,0,1),(7,415,736,5020,91,0,1),(8,384,432,1675,57,1,1),(9,694,758,4160,45,0,0),(10,302,523,8642,39,0,0),(11,348,255,690,35,0,0),(12,157,866,5934,14,1,1),(13,723,798,8330,20,1,1),(14,93,718,2362,94,1,1),(15,774,237,318,-14,1,1),(16,526,758,103,1,0,0),(17,655,442,2322,-17,1,1),(18,972,143,8931,44,0,0),(19,40,440,8341,-22,0,1),(20,486,891,7537,89,1,0),(21,857,782,8955,-4,0,0),(22,465,534,7917,-12,0,1),(23,445,189,1048,23,0,0),(24,534,210,7553,-2,1,1),(25,418,905,397,30,0,1);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportadora`
--

DROP TABLE IF EXISTS `transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transportadora` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `preco` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `zona_atendimento` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `habilitado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadora`
--

LOCK TABLES `transportadora` WRITE;
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
INSERT INTO `transportadora` VALUES (2,'Alfred','1.99',8,'PORTO ALEGRE',1),(3,'Adipiscing Lacus Ut Incorporated','R$886.70',9,'Cambiago',1),(4,'Tincidunt Tempus Corp.','R$139.33',6,'Lakewood',0),(5,'Dolor Sit Amet Corp.','R$541.00',2,'Bollnäs',1),(6,'Rutrum Lorem Corporation','R$992.67',1,'Oostkerk',1),(7,'Scelerisque Scelerisque PC','R$322.91',5,'McCallum',1),(8,'Imperdiet Consulting','R$371.25',3,'Leffinge',0),(9,'Tempor Augue Ac Corporation','R$392.44',4,'Herk-de-Stad',0),(10,'Ultrices Corporation','R$859.75',5,'Coelemu',1),(11,'Risus Industries','R$163.62',2,'Bonnyville Municipal District',1),(12,'Et Inc.','R$083.55',7,'Castelvecchio Calvisio',0),(13,'Pede Ac Urna Foundation','R$282.88',3,'Donosti',1),(14,'Nunc Risus Varius Corporation','R$086.51',2,'Preore',0),(15,'Felis Ullamcorper Ltd','R$418.64',7,'Maringá',0),(16,'Tellus Suspendisse Industries','R$436.65',4,'Brive-la-Gaillarde',0),(17,'Id Blandit At LLP','R$777.78',4,'Chile Chico',0),(18,'Dolor Dolor Tempus Institute','R$716.00',5,'Gondiya',1),(19,'Lacinia Sed Inc.','R$559.68',0,'Leval-Chaudeville',0),(20,'Quam Dignissim Pharetra Incorporated','R$880.55',0,'?skenderun',0),(21,'Hendrerit Neque Company','R$663.48',4,'Donosti',1),(23,'Ut Sem Nulla Corporation','R$371.76',2,'Jamoigne',0),(24,'Molestie Ltd','R$232.05',1,'Sant\'Elia a Pianisi',0),(25,'Cras Dolor Dolor LLC','R$897.08',3,'Rothesay',1),(26,'Donec Tincidunt Industries','R$184.57',3,'Tarnów',0),(27,'Semper Consulting','R$721.64',5,'Rotheux-RimiŽre',1),(28,'Magna Malesuada Foundation','R$369.46',1,'Hemel Hempstead',0),(29,'Odio Etiam Industries','R$659.47',8,'Marano Lagunare',1),(30,'Lectus Rutrum Urna Institute','R$341.00',10,'Val Rezzo',0),(31,'Felis Consulting','R$684.51',3,'Mysore',0),(32,'Tempus Risus PC','R$286.94',5,'Verzegnis',0),(33,'Et PC','R$872.50',8,'Moen',0),(34,'Mauris Eu Turpis Institute','R$496.07',7,'Bajardo',0),(35,'Nibh Lacinia Orci Company','R$117.40',3,'Monstreux',0),(36,'Non Sapien Molestie PC','R$500.40',8,'Nakusp',1),(37,'Scelerisque Neque Sed Corporation','R$163.46',0,'Sikar',1),(38,'Adipiscing Lacus Ut Inc.','R$700.28',0,'Lauder',1),(39,'Dolor Institute','R$657.53',1,'Thane',1),(40,'Scelerisque Associates','R$183.18',8,'Gonda',0),(41,'Porttitor Company','R$886.17',4,'Ravels',0),(42,'A Company','R$882.66',4,'Greymouth',1),(43,'Ligula Nullam Limited','R$963.27',5,'Rochester',1),(44,'Orci LLC','R$702.60',4,'Canora',1),(45,'Proin Mi Company','R$47.78',9,'Cressa',1),(46,'Orci Institute','R$353.92',0,'Merrickville-Wolford',1),(47,'Urna Ltd','R$069.78',3,'Gravataí',1),(48,'Neque LLC','R$501.74',2,'Campitello di Fassa',0),(49,'In Sodales Elit Foundation','R$785.32',2,'Andenne',0),(50,'Feugiat Nec LLP','R$069.11',10,'Montoggio',1),(51,'Euismod In Dolor Inc.','R$782.41',5,'Bangor',0),(52,'Dapibus Ligula Aliquam Incorporated','R$146.12',5,'Gonnosfanadiga',1),(53,'Rhoncus Nullam Velit LLP','R$149.26',7,'Zutphen',1),(54,'Et Ltd','R$787.06',8,'Smoky Lake',1),(55,'Dictum Phasellus Company','R$026.18',3,'Blankenberge',1),(56,'Sem Pellentesque Corp.','R$133.32',1,'Niort',0),(57,'Mauris Quis Turpis LLP','R$366.36',9,'Mesoraca',1),(58,'Quis Accumsan Convallis Consulting','R$642.00',7,'Monceau-Imbrechies',0),(59,'Molestie In Institute','R$696.31',8,'Quinchao',1),(60,'Ac Mi Consulting','R$529.57',4,'Autre-Eglise',1),(61,'Felis PC','R$294.94',10,'Körfez',1),(62,'Vulputate Mauris Consulting','R$031.97',5,'Hody',1),(63,'Rutrum Urna Nec LLP','R$267.05',4,'Velletri',1),(64,'Ac Sem Industries','R$691.80',4,'Rothes',0),(65,'Ac Mattis Corporation','R$225.96',4,'MŽlin',1),(66,'Nulla Facilisi Inc.','R$623.67',7,'Terneuzen',0),(67,'Non Inc.','R$073.42',3,'Adoni',1),(68,'Sem LLC','R$432.98',4,'Legal',1),(69,'Porttitor PC','R$161.30',0,'Lewiston',0),(70,'Amet Consulting','R$383.73',5,'Cockburn',1),(71,'Urna Nunc Consulting','R$195.59',4,'Ham-sur-Heure-Nalinnes',1),(72,'Fusce LLC','R$449.79',1,'Gmunden',0),(73,'Dictum PC','R$830.85',7,'Antey-Saint-Andrè',1),(74,'Laoreet Lectus Incorporated','R$634.87',10,'West Jordan',0),(75,'Non Hendrerit Id Corporation','R$474.99',1,'Machelen',0),(76,'Pulvinar Arcu Ltd','R$479.56',9,'Homburg',0),(77,'Euismod Est Arcu Inc.','R$313.11',7,'Jackson',1),(78,'Purus In Molestie Ltd','R$895.76',8,'Carnoustie',1),(79,'Non LLC','R$650.59',8,'P?ock',1),(80,'Velit Foundation','R$144.61',2,'Calbuco',1),(81,'Arcu Incorporated','R$173.99',4,'Laramie',0),(82,'Parturient Incorporated','R$305.84',6,'Desamparados',0),(83,'Nullam Velit Foundation','R$810.42',10,'Liévin',0),(84,'Consequat Associates','R$173.94',9,'Castelseprio',0),(85,'A Tortor Nunc Corp.','R$172.45',4,'Edam',1),(86,'Felis Industries','R$710.67',4,'Ragnies',1),(87,'Tincidunt Limited','R$336.33',6,'Napier',1),(88,'Integer Eu Lacus Associates','R$856.30',3,'Toronto',0),(89,'A Arcu Sed Company','R$107.57',6,'Scarborough',1),(90,'Leo Elementum Sem Institute','R$967.54',7,'Pocatello',0),(91,'Lectus Pede Corporation','R$308.34',2,'Loppem',1),(92,'Sagittis Corporation','R$331.39',10,'Panketal',0),(93,'Ut Pellentesque Foundation','R$557.15',5,'Barry',1),(94,'Neque Non PC','R$658.25',3,'Lafayette',1),(95,'Ultrices Posuere Foundation','R$804.48',4,'Treguaco',0),(96,'Augue Sed LLP','R$111.79',5,'Bo\'ness',0),(97,'Mollis Nec Cursus Limited','R$206.94',8,'Strasbourg',0),(98,'Class Aptent Taciti Institute','R$706.15',3,'Llandrindod Wells',0),(99,'Adipiscing Lacus PC','R$837.11',1,'LouveignŽ',0),(100,'Aenean Eget Associates','R$509.40',8,'Nijkerk',0);
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-18 19:42:00
