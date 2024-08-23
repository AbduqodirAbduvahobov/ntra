-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: ntra
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
                       `id` int NOT NULL AUTO_INCREMENT,
                       `title` varchar(255) DEFAULT NULL,
                       `description` text COMMENT 'Content of the post',
                       `user_id` int DEFAULT NULL,
                       `status_id` int DEFAULT NULL,
                       `branch_id` int DEFAULT NULL,
                       `price` float DEFAULT NULL,
                       `rooms` int DEFAULT NULL,
                       `created_at` timestamp NULL DEFAULT NULL,
                       `address` varchar(255) DEFAULT NULL,
                       `updated_at` timestamp NULL DEFAULT NULL,
                       PRIMARY KEY (`id`),
                       KEY `ads_ibfk_1` (`user_id`),
                       KEY `ads_ibfk_3` (`branch_id`),
                       KEY `ads_ibfk_2` (`status_id`),
                       CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
                       CONSTRAINT `ads_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
                       CONSTRAINT `ads_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (9,'Title','Ijaraga beriladi',5,1,1,300,3,'2024-08-20 18:08:18','Toshkent',NULL),(10,'4-xonali','Ijaraga beriladi',5,1,1,500,5,'2024-08-20 18:12:42','Chorsu',NULL),(11,'3-xonali','Ijaraga beriladi',5,1,1,1000,5,'2024-08-20 18:14:49','Toshkent',NULL),(12,'Ijaraga beriladi','5-xonali',5,1,1,500,7,'2024-08-21 06:21:23','Chorsu',NULL),(13,'fads','afsd',5,1,1,23,22,'2024-08-21 06:54:17','Chorsu',NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_image`
--

DROP TABLE IF EXISTS `ads_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_image` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `ads_id` int DEFAULT NULL,
                             `name` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id`),
                             KEY `fk_ads_image_ads` (`ads_id`),
                             CONSTRAINT `fk_ads_image_ads` FOREIGN KEY (`ads_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_image`
--

LOCK TABLES `ads_image` WRITE;
/*!40000 ALTER TABLE `ads_image` DISABLE KEYS */;
INSERT INTO `ads_image` VALUES (2,9,'66c4db9243aa7___Screenshot from 2024-08-08 11-56-44.png'),(3,10,'66c4dc9ad68a7___Screenshot from 2024-08-17 14-40-54.png'),(4,11,'66c4dd1926cc2___Screenshot from 2024-08-08 11-56-44.png'),(5,12,'66c58763d7e7c___Screenshot from 2024-08-21 11-20-12.png'),(6,13,'66c58f1917d97___Screenshot from 2024-08-21 11-20-12.png');
/*!40000 ALTER TABLE `ads_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(255) DEFAULT NULL,
                          `address` varchar(255) DEFAULT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Farg\'ona','Farg\'ona, Farg\'ona 1','2024-08-10 05:24:44'),(2,'Farg\'ona','Farg\'ona, Farg\'ona 1','2024-08-10 05:26:06'),(3,'Farg\'ona','Farg\'ona, Farg\'ona 1','2024-08-10 05:28:13'),(4,'Farg\'ona','Farg\'ona, Farg\'ona 1','2024-08-10 05:32:16'),(5,'Farg\'ona','Farg\'ona, Farg\'ona 1','2024-08-10 09:22:44');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Active',NULL),(2,'Active','2024-08-10 05:32:16'),(3,'Active','2024-08-10 09:22:44');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_pk` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'Abdurashid','Junior','male','+993134262','2024-08-08 14:50:22','2024-08-08 15:50:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-21 12:54:33
