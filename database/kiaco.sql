-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: kiaco
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `addedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cartID`),
  KEY `username` (`username`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'CloudHouz','Durock POM (10pcs)',3,400.00,'2024-11-09 12:41:11'),(2,'CloudHouz','KTT Sea Salt Lemon (10pcs)',3,140.00,'2024-11-09 12:41:14'),(3,'CloudHouz','Gateron Pro Yellow (10pcs)',2,140.00,'2024-11-09 12:41:16'),(4,'CloudHouz','Durock POM (10pcs)',3,400.00,'2024-11-09 12:51:18'),(5,'CloudHouz','Gateron Pro Yellow (10pcs)',3,140.00,'2024-11-09 12:51:20'),(6,'Flygon12','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 12:56:25'),(7,'Flygon12','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 12:56:27'),(8,'Flygon12','GMK Remen Keycaps',3,1750.00,'2024-11-09 12:56:27'),(9,'Flygon12','Akko V3 Pro CB (45pcs)',3,620.00,'2024-11-09 12:56:33'),(10,'Gev Alexia Mariveles','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:01:45'),(11,'Gev Alexia Mariveles','GMK Remen Keycaps',3,1750.00,'2024-11-09 13:01:45'),(12,'Gev Alexia Mariveles','Akko V3 Pro CB (45pcs)',3,620.00,'2024-11-09 13:01:45'),(13,'Gev Alexia Mariveles','Aula F75',2,3000.00,'2024-11-09 13:01:45'),(14,'Gev Alexia Mariveles','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:01:49'),(15,'Gev Alexia Mariveles','GMK Remen Keycaps',3,1750.00,'2024-11-09 13:01:49'),(16,'Gev Alexia Mariveles','Akko V3 Pro CB (45pcs)',3,620.00,'2024-11-09 13:01:49'),(17,'Gev Alexia Mariveles','Aula F75',2,3000.00,'2024-11-09 13:01:49'),(18,'Gev Alexia Mariveles','Switch Puller',2,55.00,'2024-11-09 13:01:49'),(19,'Gev Alexia Mariveles','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:01:54'),(20,'Gev Alexia Mariveles','GMK Remen Keycaps',3,1750.00,'2024-11-09 13:01:54'),(21,'Gev Alexia Mariveles','Akko V3 Pro CB (45pcs)',3,620.00,'2024-11-09 13:01:54'),(22,'Gev Alexia Mariveles','Aula F75',2,3000.00,'2024-11-09 13:01:54'),(23,'Gev Alexia Mariveles','Switch Puller',2,55.00,'2024-11-09 13:01:54'),(24,'Gev Alexia Mariveles','Full Keeb Mod',1,250.00,'2024-11-09 13:01:54'),(25,'Gev Alexia Mariveles','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:02:04'),(26,'Gev Alexia Mariveles','GMK Remen Keycaps',3,1750.00,'2024-11-09 13:02:04'),(27,'Gev Alexia Mariveles','Akko V3 Pro CB (45pcs)',3,620.00,'2024-11-09 13:02:04'),(28,'Gev Alexia Mariveles','Aula F75',2,3000.00,'2024-11-09 13:02:04'),(29,'Gev Alexia Mariveles','Switch Puller',2,55.00,'2024-11-09 13:02:04'),(30,'Gev Alexia Mariveles','Full Keeb Mod',1,250.00,'2024-11-09 13:02:04'),(31,'Gev Alexia Mariveles','WOMIER SK65',3,6000.00,'2024-11-09 13:02:04'),(32,'Cyabear','Akko MU01 JOL',3,7299.00,'2024-11-09 13:02:53'),(33,'Cyabear','Akko MU01 JOL',3,7299.00,'2024-11-09 13:02:57'),(34,'Cyabear','Switch Puller',2,55.00,'2024-11-09 13:02:57'),(35,'CloudHouz','Akko MU01 JOL',2,7299.00,'2024-11-09 13:03:30'),(36,'CloudHouz','Akko MU01 JOL',2,7299.00,'2024-11-09 13:03:33'),(37,'CloudHouz','AULA LEOBOG Hi75',2,2400.00,'2024-11-09 13:03:33'),(38,'Gev Alexia Mariveles','Durock POM (10pcs)',3,400.00,'2024-11-09 13:04:21'),(39,'Gev Alexia Mariveles','Gateron Pro Yellow (10pcs)',3,140.00,'2024-11-09 13:04:23'),(40,'Gev Alexia Mariveles','Gateron Pro Yellow (10pcs)',2,140.00,'2024-11-09 13:04:32'),(41,'Gev Alexia Mariveles','KTT Sea Salt Lemon (10pcs)',4,140.00,'2024-11-09 13:04:35'),(42,'Gev Alexia Mariveles','Akko V3 Piano Pro (45pcs)',3,630.00,'2024-11-09 13:04:37'),(43,'Gev Alexia Mariveles','Akko V3 Piano Pro (45pcs)',5,630.00,'2024-11-09 13:04:40'),(44,'Gev Alexia Mariveles','GMK Kaiju Keycaps',2,2500.00,'2024-11-09 13:06:06'),(45,'Cyabear','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:06:45'),(46,'Cyabear','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:06:47'),(47,'Cyabear','Akko Macaw Keycaps',3,2600.00,'2024-11-09 13:06:47'),(48,'CloudHouz','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:14:01'),(49,'CloudHouz','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:14:04'),(50,'CloudHouz','GMK Remen Keycaps',2,1750.00,'2024-11-09 13:14:04'),(51,'CloudHouz','GMK Kaiju Keycaps',3,2500.00,'2024-11-09 13:14:10'),(52,'CloudHouz','GMK Remen Keycaps',2,1750.00,'2024-11-09 13:14:10'),(53,'CloudHouz','Weikav Stars80',2,5500.00,'2024-11-09 13:14:10'),(54,'Flygon12','Akko MU01 JOL',3,7299.00,'2024-11-09 13:16:21'),(55,'CloudHouz','Aula F75',2,3000.00,'2024-11-09 13:19:52'),(56,'CloudHouz','Aula F75',2,3000.00,'2024-11-09 13:19:54'),(57,'CloudHouz','WOMIER SK65',2,6000.00,'2024-11-09 13:19:54'),(58,'CloudHouz','Aula F75',2,3000.00,'2024-11-09 13:19:56'),(59,'CloudHouz','WOMIER SK65',2,6000.00,'2024-11-09 13:19:56'),(60,'CloudHouz','Akko MU01 JOL',2,7299.00,'2024-11-09 13:19:56'),(61,'CloudHouz','Aula F75',2,3000.00,'2024-11-09 13:20:00'),(62,'CloudHouz','WOMIER SK65',2,6000.00,'2024-11-09 13:20:00'),(63,'CloudHouz','Akko MU01 JOL',2,7299.00,'2024-11-09 13:20:00'),(64,'CloudHouz','GMK Kaiju Keycaps',2,2500.00,'2024-11-09 13:20:00'),(65,'CloudHouz','Full Keeb Mod',1,250.00,'2024-11-09 13:22:28');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` text,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'CloudHouz','zakidawa2003@gmail.com','09815201078','27 Prawn, Seaside Subd, Matina Aplaya, Davao City','$2b$10$AnMcfyC4CEKqks6lMB89H.jabqgXeecLOvWJrqfNtQYQ/q6Vp15i2'),(5,'Cyabear','cyabear1234@gmail.com','09815202019','Osaka, Japan','$2b$10$qkDMJ1rLXEybtMyeLw3gKeBCW1OLoqf35O1nGRkw7mrMVA0fQMpqq'),(6,'mochi','kiamochi@gmail.com','09881234512','NewMarket, Canada','$2b$10$nw3u0LN/WlgmJu.qx.pAWeq.fvp8OHjhIPP/ub2NEZ66pmR4a8QmG'),(7,'Flygon12','flygontrapinch24@gmail.com','09123456121','Pallet Town, Japan','$2b$10$TdH8iKj6b9QVopOzylb6fOTtXscYbWjW9lRbG2JggoSICwpb0NjrO'),(8,'Gev Alexia Mariveles','gaMariveles@mcm.edu.ph','09812345184','Matina Aplaya, Davao City','$2b$10$AV6nuS.ROnXtZ3JKmUpMDuj.7FD3hLtRsye6nO9CiscXOUjkMObcC'),(10,'Zaki James Maynard Dawa','cyabearf@gmail.com','09673452298','Apo Phase 1, Kid City','$2b$10$znXP56fAruRYu8ahtNjg9.vPFIgArPPk0Le.c1oLK.dAPgyJQWsYy'),(11,'Duff Bastasa','duffgwapo@gmail.com','09123512354','Samal, Davao','$2b$10$/4EW5g.4R7lWSbNREXFcTO2CFO4NJX8hykxgloo1hCPSAFIfGm38O'),(12,'kdnarsolis','kanarsolis@gmail.com','09664892572','Tagum City','$2b$10$u/KycHWoZWQZSsp9JlkYoOskTmRc2M3F0vswPuDZLr7.CPL03WJUi'),(13,'daniel','dnarsolis@gmail.com','09664623141','Davao City','$2b$10$Ug33146X2Xh9KJSeQbJFeeaU9t08kayY9JIEn9CmUxmB8O5ttet8e');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `OrderItemID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `Quantity` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `OrderID` (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,34,2,2600.00,'Akko Macaw Keycaps'),(2,34,1,110.00,'Screwdriver Set'),(3,35,2,2600.00,'Akko Macaw Keycaps'),(4,35,1,110.00,'Screwdriver Set'),(5,36,3,620.00,'Akko V3 Pro CB (45pcs)'),(6,36,4,8600.00,'Keychron Q3 BWR'),(7,37,1,2400.00,'AULA LEOBOG Hi75'),(8,37,3,7299.00,'Akko MU01 JOL'),(9,37,1,3300.00,'Weikav Lucky65 V2'),(10,38,6,140.00,'KTT Sea Salt Lemon (10pcs)'),(11,38,1,400.00,'Keycap Puller'),(12,38,1,20.00,'Keeb Solder/Desolder & (Millmax)'),(13,39,6,140.00,'KTT Sea Salt Lemon (10pcs)'),(14,39,1,400.00,'Keycap Puller'),(15,39,1,20.00,'Keeb Solder/Desolder & (Millmax)'),(16,40,3,55.00,'Switch Puller'),(17,40,2,7299.00,'Akko MU01 JOL'),(18,40,1,8600.00,'Keychron Q3 BWR'),(19,41,1,60.00,'Keeb Cleaning'),(20,41,2,20.00,'Keeb Solder/Desolder & (Millmax)'),(21,41,1,25.00,'Stab Mod'),(22,41,2,1350.00,'GMK Soy Milk Keycaps'),(23,42,2,20.00,'Keeb Solder/Desolder & (Millmax)'),(24,42,2,2500.00,'GMK Kaiju Keycaps'),(25,42,2,2600.00,'Akko Macaw Keycaps'),(26,42,3,5500.00,'Weikav Stars80'),(27,43,2,20.00,'Keeb Solder/Desolder & (Millmax)'),(28,43,2,2500.00,'GMK Kaiju Keycaps'),(29,43,2,2600.00,'Akko Macaw Keycaps'),(30,43,3,5500.00,'Weikav Stars80'),(31,44,3,2500.00,'GMK Kaiju Keycaps'),(32,44,1,2600.00,'Akko Macaw Keycaps'),(33,44,1,2900.00,'GMK Honor Keycaps'),(34,44,2,400.00,'Durock POM (10pcs)'),(35,45,3,300.00,'Krytox GPL 205g0'),(36,45,1,110.00,'Screwdriver Set'),(37,45,1,400.00,'Keycap Puller'),(38,45,3,620.00,'Akko V3 Pro CB (45pcs)'),(39,46,3,7299.00,'Akko MU01 JOL'),(40,46,3,2400.00,'AULA LEOBOG Hi75'),(41,46,2,2500.00,'GMK Kaiju Keycaps'),(42,47,3,2500.00,'GMK Kaiju Keycaps'),(43,47,3,2600.00,'Akko Macaw Keycaps'),(44,48,3,2500.00,'GMK Kaiju Keycaps'),(45,48,3,2600.00,'Akko Macaw Keycaps');
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `OrderDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `TotalAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (34,'CloudHouz','2024-11-09 04:19:28',5310.00),(35,'CloudHouz','2024-11-09 04:19:48',5310.00),(36,'Flygon12','2024-11-09 04:22:44',36260.00),(37,'daniel','2024-11-09 04:43:44',27597.00),(38,'CloudHouz','2024-11-09 05:04:56',1260.00),(39,'CloudHouz','2024-11-09 05:07:26',1260.00),(40,'Cyabear','2024-11-09 11:20:11',23363.00),(41,'Flygon12','2024-11-09 11:24:00',2825.00),(42,'Gev Alexia Mariveles','2024-11-09 11:44:53',26740.00),(43,'Gev Alexia Mariveles','2024-11-09 11:49:05',26740.00),(44,'CloudHouz','2024-11-09 11:55:16',13800.00),(45,'Flygon12','2024-11-09 11:58:09',3270.00),(46,'CloudHouz','2024-11-09 12:07:07',34097.00),(47,'Cyabear','2024-11-09 13:07:01',15300.00),(48,'Cyabear','2024-11-09 13:10:02',15300.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL,
  `PaymentStatus` varchar(20) DEFAULT 'Pending',
  `PaymentDate` datetime NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,45,3270.00,'Cash on Delivery','Pending','2024-11-09 11:58:09'),(2,46,34097.00,'Cash on Delivery','Pending','2024-11-09 12:07:07'),(3,47,15300.00,'Cash on Delivery','Pending','2024-11-09 13:07:01'),(4,48,15300.00,'GCash','Pending','2024-11-09 13:10:02');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-09 21:27:30
