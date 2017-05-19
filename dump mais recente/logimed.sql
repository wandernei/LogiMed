-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: logimed
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lote` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `peso` int(11) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `tipodescarte_id` int(8) DEFAULT NULL,
  `flag_esgotado` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tipodescarte_id` (`tipodescarte_id`),
  CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`tipodescarte_id`) REFERENCES `tipo_descarte` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote`
--

LOCK TABLES `lote` WRITE;
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
INSERT INTO `lote` VALUES (1,308,412,'7617',62,1,1),(2,308,412,'7617',62,2,1),(3,980,599,'7698',2,3,0),(4,397,948,'2019',32,4,0),(5,227,157,'2326',92,5,0),(6,817,357,'9393',9,1,1),(7,415,736,'5020',91,2,1),(8,384,432,'1675',57,3,1),(9,694,758,'4160',45,4,0),(10,302,523,'8642',39,5,0),(11,348,255,'690',35,1,0),(12,157,866,'5934',14,2,1),(13,723,798,'8330',20,3,1),(14,93,718,'2362',94,4,1),(15,774,237,'318',-14,5,1),(16,526,758,'103',1,1,0),(17,655,442,'2322',-17,2,1),(18,972,143,'8931',44,3,0),(19,40,440,'8341',-22,4,1),(20,486,891,'7537',89,5,0),(21,857,782,'8955',-4,1,0),(22,465,534,'7917',-12,2,1),(23,445,189,'1048',23,3,0),(24,534,210,'7553',-2,4,1),(25,418,905,'397',30,5,1);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_descarte`
--

DROP TABLE IF EXISTS `tipo_descarte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_descarte` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(1) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_descarte`
--

LOCK TABLES `tipo_descarte` WRITE;
/*!40000 ALTER TABLE `tipo_descarte` DISABLE KEYS */;
INSERT INTO `tipo_descarte` VALUES (1,'A','Potencialmente Infectantes'),(2,'B','Químicos'),(3,'C','Rejeitos Radioativos'),(4,'D','Resíduos Comuns'),(5,'E','Perfurocortantes');
/*!40000 ALTER TABLE `tipo_descarte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportadora`
--

DROP TABLE IF EXISTS `transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transportadora` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nome` varchar(55) NOT NULL,
  `preco` varchar(100) NOT NULL,
  `avaliacao` int(2) DEFAULT NULL,
  `zonaatendimento_id` int(8) NOT NULL,
  `habilitado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `zonaatendimento_id` (`zonaatendimento_id`),
  CONSTRAINT `transportadora_ibfk_1` FOREIGN KEY (`zonaatendimento_id`) REFERENCES `zona_atendimento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadora`
--

LOCK TABLES `transportadora` WRITE;
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
INSERT INTO `transportadora` VALUES (1,'Alfred','1.99',8,1,1),(2,'Adipiscing Lacus Ut Incorporated','886.70',9,1,1),(3,'Tincidunt Tempus Corp.','139.33',6,2,0),(4,'Dolor Sit Amet Corp.','541.00',2,3,1),(5,'Rutrum Lorem Corporation','992.67',1,4,1),(6,'Scelerisque Scelerisque PC','322.91',5,5,1),(7,'Imperdiet Consulting','371.25',3,1,0),(8,'Tempor Augue Ac Corporation','392.44',4,2,0),(9,'Ultrices Corporation','859.75',5,3,1),(10,'Risus Industries','163.62',2,4,1),(11,'Et Inc.','83.55',7,5,0),(12,'Pede Ac Urna Foundation','282.88',3,1,1),(13,'Nunc Risus Varius Corporation','86.51',2,2,0),(14,'Felis Ullamcorper Ltd','418.64',7,3,0),(15,'Tellus Suspendisse Industries','436.65',4,4,0),(16,'Id Blandit At LLP','777.78',4,5,0),(17,'Dolor Dolor Tempus Institute','716.00',5,1,1),(18,'Lacinia Sed Inc.','559.68',0,2,0),(19,'Quam Dignissim Pharetra Incorporated','880.55',0,3,0);
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona_atendimento`
--

DROP TABLE IF EXISTS `zona_atendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona_atendimento` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_atendimento`
--

LOCK TABLES `zona_atendimento` WRITE;
/*!40000 ALTER TABLE `zona_atendimento` DISABLE KEYS */;
INSERT INTO `zona_atendimento` VALUES (1,'NORTE'),(2,'SUL'),(3,'LESTE'),(4,'OESTE'),(5,'CENTRO');
/*!40000 ALTER TABLE `zona_atendimento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-19 15:27:50
