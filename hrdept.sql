-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdept
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `acct`
--

DROP TABLE IF EXISTS `acct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acct` (
  `acct_id` int NOT NULL AUTO_INCREMENT,
  `ctc` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`acct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acct`
--

LOCK TABLES `acct` WRITE;
/*!40000 ALTER TABLE `acct` DISABLE KEYS */;
INSERT INTO `acct` VALUES (1,'2000','20000','2024-11-23 12:13:34'),(2,'2000','20000','2024-11-23 12:14:45'),(3,'2000','20000','2024-11-23 12:15:25'),(4,'2000','20000','2024-11-23 12:16:54'),(5,'2000','20000','2024-11-23 12:18:29'),(6,'2000','20000','2024-11-23 12:18:43'),(7,'2000','20000','2024-11-23 12:20:47'),(8,'2000','20000','2024-11-23 17:26:23'),(9,'2000','20000','2024-11-23 17:27:43'),(10,'2000','20000','2024-11-23 17:29:14'),(11,'2000','20000','2024-11-23 17:32:37'),(12,'2000','20000','2024-11-23 17:35:19'),(13,'2000','20000','2024-11-23 17:35:45'),(14,'2000','20000','2024-11-23 17:36:32'),(15,'2000','20000','2024-11-23 17:39:12'),(16,'2000','20000','2024-11-23 17:42:50'),(17,'2000','20000','2024-11-23 17:44:34'),(18,'2000','20000','2024-11-23 17:46:42'),(19,'2000','20000','2024-11-23 17:50:26'),(20,'2000','20000','2024-11-23 17:50:52'),(21,'2000','20000','2024-11-23 17:52:28'),(22,'2000','20000','2024-11-23 18:20:54'),(23,'2000','20000','2024-11-23 18:21:16'),(24,'2000','20000','2024-11-23 18:33:39');
/*!40000 ALTER TABLE `acct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (4,'tx','tx'),(5,'tx','tx'),(6,'tx','tx'),(7,'tx','tx'),(8,'tx','tx'),(9,'tx','tx'),(10,'tx','tx'),(11,'tx','tx'),(12,'tx','tx'),(13,'tx','tx'),(14,'tx','tx');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `empid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `acct_id` int DEFAULT NULL,
  `Address_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`empid`),
  KEY `fk_address_idx` (`Address_id`),
  KEY `FK420eds8qx24buhynde9si4kue` (`acct_id`),
  CONSTRAINT `FK420eds8qx24buhynde9si4kue` FOREIGN KEY (`acct_id`) REFERENCES `acct` (`acct_id`),
  CONSTRAINT `fk_address` FOREIGN KEY (`Address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (4,NULL,NULL,4,NULL),(5,NULL,NULL,5,NULL),(6,NULL,NULL,6,NULL),(7,NULL,NULL,7,NULL),(8,NULL,NULL,8,NULL),(9,NULL,16,9,7),(10,NULL,17,10,8),(11,NULL,18,11,9),(12,NULL,21,12,10),(13,NULL,23,13,11),(14,'Pinak',24,14,12);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(45) DEFAULT NULL,
  `p_duration` varchar(45) DEFAULT NULL,
  `p_to` timestamp NULL DEFAULT NULL,
  `p_from` timestamp NULL DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  PRIMARY KEY (`project id`),
  KEY `FK1oprk83dp65yq0ui4bcn4rjtm` (`emp_id`),
  CONSTRAINT `FK1oprk83dp65yq0ui4bcn4rjtm` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL),(10,'p001','1 year',NULL,NULL,NULL),(11,'p001','1 year',NULL,NULL,NULL),(12,'p001','1 year',NULL,NULL,NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hrdept'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 14:12:11
