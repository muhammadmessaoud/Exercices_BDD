-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sqllix
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `absorber`
--

DROP TABLE IF EXISTS `absorber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `absorber` (
  `num_potion` int NOT NULL,
  `num_habitant` int NOT NULL,
  `date_a` datetime NOT NULL,
  `quantite` int DEFAULT NULL,
  PRIMARY KEY (`num_potion`,`num_habitant`,`date_a`),
  KEY `num_habitant` (`num_habitant`),
  CONSTRAINT `absorber_ibfk_1` FOREIGN KEY (`num_habitant`) REFERENCES `habitant` (`num_habitant`),
  CONSTRAINT `absorber_ibfk_2` FOREIGN KEY (`num_potion`) REFERENCES `potion` (`num_potion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absorber`
--

LOCK TABLES `absorber` WRITE;
/*!40000 ALTER TABLE `absorber` DISABLE KEYS */;
INSERT INTO `absorber` VALUES (1,2,'2052-02-20 00:00:00',2),(1,7,'2052-02-18 00:00:00',3),(1,7,'2052-04-03 00:00:00',1),(1,8,'2052-02-20 00:00:00',2),(1,8,'2052-08-18 00:00:00',3),(1,10,'2052-11-26 00:00:00',2),(1,13,'2052-06-06 00:00:00',2),(1,15,'2052-04-03 00:00:00',2),(1,16,'2052-08-18 00:00:00',1),(2,7,'2052-06-06 00:00:00',1),(2,7,'2052-07-18 00:00:00',3),(2,7,'2052-10-23 00:00:00',4),(2,8,'2052-11-26 00:00:00',2),(2,12,'2052-02-18 00:00:00',4),(2,13,'2052-04-03 00:00:00',5),(3,7,'2052-02-20 00:00:00',1),(3,7,'2052-09-20 00:00:00',5),(3,8,'2052-06-06 00:00:00',4),(3,10,'2052-04-03 00:00:00',4),(3,10,'2052-08-18 00:00:00',2),(3,13,'2052-10-23 00:00:00',1),(4,1,'2052-09-20 00:00:00',2),(4,7,'2052-08-18 00:00:00',2),(4,13,'2052-10-23 00:00:00',3),(4,15,'2052-05-05 00:00:00',2),(5,1,'2052-05-10 00:00:00',4),(5,1,'2052-06-07 00:00:00',2),(5,2,'2052-05-10 00:00:00',1),(5,7,'2052-07-17 00:00:00',1),(5,13,'2052-11-26 00:00:00',2),(5,16,'2052-11-26 00:00:00',2);
/*!40000 ALTER TABLE `absorber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `code_cat` char(3) NOT NULL,
  `nom_categ` varchar(30) DEFAULT NULL,
  `superficie` int DEFAULT NULL,
  `nb_points` int DEFAULT NULL,
  PRIMARY KEY (`code_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES ('BCN','Bouclier de Centurion',NULL,6),('BDN','Bouclier de Décurion',NULL,4),('BLE','Bouclier de Légionnaire',NULL,3),('BLT','Bouclier de Légat',NULL,10),('CCN','Casque de Centurion',NULL,3),('CDN','Casque de Décurion',NULL,2),('CLE','Casque de Légionnaire',NULL,1),('CLT','Casque de Légat',NULL,4);
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabriquer`
--

DROP TABLE IF EXISTS `fabriquer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabriquer` (
  `num_potion` int NOT NULL,
  `num_habitant` int NOT NULL,
  PRIMARY KEY (`num_potion`,`num_habitant`),
  KEY `num_habitant` (`num_habitant`),
  CONSTRAINT `fabriquer_ibfk_1` FOREIGN KEY (`num_habitant`) REFERENCES `habitant` (`num_habitant`),
  CONSTRAINT `fabriquer_ibfk_2` FOREIGN KEY (`num_potion`) REFERENCES `potion` (`num_potion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabriquer`
--

LOCK TABLES `fabriquer` WRITE;
/*!40000 ALTER TABLE `fabriquer` DISABLE KEYS */;
INSERT INTO `fabriquer` VALUES (2,2),(5,2),(3,3),(1,4),(4,4),(5,4),(4,6);
/*!40000 ALTER TABLE `fabriquer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitant`
--

DROP TABLE IF EXISTS `habitant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitant` (
  `num_habitant` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `num_qualite` int DEFAULT NULL,
  `num_village` int DEFAULT NULL,
  PRIMARY KEY (`num_habitant`),
  KEY `num_qualite` (`num_qualite`),
  KEY `num_village` (`num_village`),
  CONSTRAINT `habitant_ibfk_1` FOREIGN KEY (`num_qualite`) REFERENCES `qualite` (`num_qualite`),
  CONSTRAINT `habitant_ibfk_2` FOREIGN KEY (`num_village`) REFERENCES `village` (`num_village`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitant`
--

LOCK TABLES `habitant` WRITE;
/*!40000 ALTER TABLE `habitant` DISABLE KEYS */;
INSERT INTO `habitant` VALUES (1,'Abraracourcix',65,1,1),(2,'Amnésix',56,2,7),(3,'Barometrix',68,2,3),(4,'Panoramix',79,2,1),(5,'Assurantourix',53,3,1),(6,'Zérozérosix',75,2,4),(7,'Astérix',35,4,1),(8,'Bellodalix',32,4,7),(9,'Cétyounix',32,4,4),(10,'Homéopatix',48,5,6),(11,'Obélix',38,6,1),(12,'Plantaquatix',30,5,5),(13,'Moralélastix',67,1,2),(14,'Pneumatix',26,7,1),(15,'Pronostix',35,4,5),(16,'Goudurix',38,4,2),(17,'Océanix',40,5,5),(18,'Asdepix',53,1,5),(19,'Eponine',48,8,2),(20,'Falbala',26,9,1),(21,'Gélatine',65,NULL,6),(22,'Fanzine',21,NULL,3);
/*!40000 ALTER TABLE `habitant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potion`
--

DROP TABLE IF EXISTS `potion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `potion` (
  `num_potion` int NOT NULL AUTO_INCREMENT,
  `lib_potion` varchar(40) DEFAULT NULL,
  `formule` varchar(30) DEFAULT NULL,
  `constituant_principal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num_potion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potion`
--

LOCK TABLES `potion` WRITE;
/*!40000 ALTER TABLE `potion` DISABLE KEYS */;
INSERT INTO `potion` VALUES (1,'Potion Magique n°1','NULL','Gui'),(2,'Potion Magique n°2','4V3C2VA','Vin'),(3,'Potion Magique n°3','2C1B','Calva'),(4,'Potion Zen','NULL','Jus de Betterave'),(5,'Potion Anti Douleur','5C3J1T','Calva');
/*!40000 ALTER TABLE `potion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `num_province` int NOT NULL AUTO_INCREMENT,
  `nom_province` varchar(30) DEFAULT NULL,
  `nom_gouverneur` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num_province`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Armorique','Garovirus'),(2,'Averne','Nenpeuplus'),(3,'Aquitaine','Yenaplus');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualite`
--

DROP TABLE IF EXISTS `qualite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualite` (
  `num_qualite` int NOT NULL AUTO_INCREMENT,
  `lib_qualite` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num_qualite`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualite`
--

LOCK TABLES `qualite` WRITE;
/*!40000 ALTER TABLE `qualite` DISABLE KEYS */;
INSERT INTO `qualite` VALUES (1,'Chef'),(2,'Druide'),(3,'Barde'),(4,'Guerrier'),(5,'Chasseur'),(6,'Livreurs de menhirs'),(7,'Facteur'),(8,'Poissonnière'),(9,'Serveuse');
/*!40000 ALTER TABLE `qualite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resserre`
--

DROP TABLE IF EXISTS `resserre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resserre` (
  `num_resserre` int NOT NULL AUTO_INCREMENT,
  `nom_resserre` varchar(30) DEFAULT NULL,
  `superficie` int DEFAULT NULL,
  `num_village` int DEFAULT NULL,
  PRIMARY KEY (`num_resserre`),
  KEY `num_village` (`num_village`),
  CONSTRAINT `resserre_ibfk_1` FOREIGN KEY (`num_village`) REFERENCES `village` (`num_village`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resserre`
--

LOCK TABLES `resserre` WRITE;
/*!40000 ALTER TABLE `resserre` DISABLE KEYS */;
INSERT INTO `resserre` VALUES (1,'Albinus',720,4),(2,'Vercingetorix',500,6),(3,'Sintrof',895,1);
/*!40000 ALTER TABLE `resserre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trophee`
--

DROP TABLE IF EXISTS `trophee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trophee` (
  `num_trophee` int NOT NULL AUTO_INCREMENT,
  `date_prise` datetime DEFAULT NULL,
  `code_cat` char(3) DEFAULT NULL,
  `num_preneur` int DEFAULT NULL,
  `num_resserre` int DEFAULT NULL,
  PRIMARY KEY (`num_trophee`),
  KEY `code_cat` (`code_cat`),
  KEY `num_resserre` (`num_resserre`),
  KEY `num_preneur` (`num_preneur`),
  CONSTRAINT `trophee_ibfk_1` FOREIGN KEY (`code_cat`) REFERENCES `categorie` (`code_cat`),
  CONSTRAINT `trophee_ibfk_2` FOREIGN KEY (`num_resserre`) REFERENCES `resserre` (`num_resserre`),
  CONSTRAINT `trophee_ibfk_3` FOREIGN KEY (`num_preneur`) REFERENCES `habitant` (`num_habitant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trophee`
--

LOCK TABLES `trophee` WRITE;
/*!40000 ALTER TABLE `trophee` DISABLE KEYS */;
/*!40000 ALTER TABLE `trophee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `village`
--

DROP TABLE IF EXISTS `village`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `village` (
  `num_village` int NOT NULL AUTO_INCREMENT,
  `nom_village` varchar(30) DEFAULT NULL,
  `nb_huttes` int DEFAULT NULL,
  `num_province` int DEFAULT NULL,
  PRIMARY KEY (`num_village`),
  KEY `num_province` (`num_province`),
  CONSTRAINT `village_ibfk_1` FOREIGN KEY (`num_province`) REFERENCES `province` (`num_province`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `village`
--

LOCK TABLES `village` WRITE;
/*!40000 ALTER TABLE `village` DISABLE KEYS */;
INSERT INTO `village` VALUES (1,'Aquilona',52,1),(2,'Lutèce',25,2),(3,'Aginum',33,3),(4,'Calendes Aqua',42,2),(5,'Condate',38,1),(6,'Gergovie',55,3),(7,'Aquae Calidae',35,2);
/*!40000 ALTER TABLE `village` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sqllix'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 13:05:30
