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
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) NOT NULL,
  `CategoryDescription` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Keycaps - Set A',NULL),(2,'Keycaps - Set B',NULL),(3,'Keycaps',NULL),(4,'Switches',NULL),(5,'Switches',NULL),(6,'Compact Keyboards',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
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
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'CloudHouz','zakidawa2003@gmail.com','09815201078','27 Prawn, Seaside Subd, Matina Aplaya, Davao City','$2b$10$AnMcfyC4CEKqks6lMB89H.jabqgXeecLOvWJrqfNtQYQ/q6Vp15i2'),(5,'Cyabear','cyabear1234@gmail.com','09815202019','Osaka, Japan','$2b$10$qkDMJ1rLXEybtMyeLw3gKeBCW1OLoqf35O1nGRkw7mrMVA0fQMpqq'),(6,'mochi','kiamochi@gmail.com','09881234512','NewMarket, Canada','$2b$10$nw3u0LN/WlgmJu.qx.pAWeq.fvp8OHjhIPP/ub2NEZ66pmR4a8QmG'),(7,'Flygon12','flygontrapinch24@gmail.com','09123456121','Pallet Town, Japan','$2b$10$TdH8iKj6b9QVopOzylb6fOTtXscYbWjW9lRbG2JggoSICwpb0NjrO'),(8,'Gev Alexia Mariveles','gaMariveles@mcm.edu.ph','09812345184','Matina Aplaya, Davao City','$2b$10$AV6nuS.ROnXtZ3JKmUpMDuj.7FD3hLtRsye6nO9CiscXOUjkMObcC');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customization`
--

DROP TABLE IF EXISTS `customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customization` (
  `CustomizationID` int NOT NULL AUTO_INCREMENT,
  `OrderItemID` int DEFAULT NULL,
  `SwitchType` varchar(100) DEFAULT NULL,
  `KeycapType` varchar(100) DEFAULT NULL,
  `AdditionalCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CustomizationID`),
  KEY `OrderItemID` (`OrderItemID`),
  CONSTRAINT `customization_ibfk_1` FOREIGN KEY (`OrderItemID`) REFERENCES `orderitem` (`OrderItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customization`
--

LOCK TABLES `customization` WRITE;
/*!40000 ALTER TABLE `customization` DISABLE KEYS */;
/*!40000 ALTER TABLE `customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `TotalAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
  `ProductID` int DEFAULT NULL,
  `Quantity` int NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `PaymentStatus` varchar(50) DEFAULT NULL,
  `PaymentDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PaymentID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `Description` text,
  `CategoryID` int DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `StockQuantity` int NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Kaiju Keycaps','Kaiju keycaps are vibrant, monster-themed keycaps inspired by Japanese kaiju films, adding a bold, eye-catching touch to mechanical keyboards.',1,2500.00,20),(2,'Akko Macaw Keycaps','Akko Macaw keycaps are vibrant, tropical-inspired keycaps with a striking blue and yellow color scheme, resembling the colors of the macaw parrot. They add a lively, exotic touch to mechanical keyboards.',1,2600.00,20),(3,'GMK Remen Keycaps',' Remen Keycaps feature a Japanese Kaminarimon design in a Cherry profile. Made from durable PBT plastic with dye-sublimated legends, these keycaps are compatible with MX switches, perfect for enhancing the aesthetic of any mechanical keyboard',1,1750.00,20),(4,'GMK Honor Keycaps','The GMK Honor PBT keycaps feature a Cherry profile and are crafted using dye-sublimation for vibrant legends. Compatible with various layouts, including 61, 64, 68, 71, 84, 87, 98, 104, and 108 keys, these keycaps are ideal for customizing and enhancing the look of your mechanical keyboard.',1,1200.00,20),(5,'GMK Soy Milk Keycaps','The SOY MILK keycaps set includes 141 PBT keycaps in a MOA profile with five-sided heat sublimation. Compatible with Gateron and Cherry MX switches, it fits keyboards from 60 to 108 keys, offering a stylish upgrade for your mechanical keyboard',1,1350.00,20),(6,'Akko V3 Pro Cream Black Switches','The Akko V3 Pro Cream Black Switches offer a smooth, tactile typing experience with a balanced actuation force. Designed for durability and performance, these switches are ideal for gamers and typists seeking a premium mechanical keyboard feel.',2,620.00,20),(7,'Akko V3 Piano Pro Switch','Akko V3 Piano Pro Switch features a smooth and linear design, providing a quiet typing experience with consistent keystrokes. Ideal for both gaming and typing, these switches are engineered for durability and enhanced performance.',2,620.00,20),(8,'Durock POM Linear','Durock POM Linear Keyboard Switch offers a smooth, quiet keystroke with minimal resistance, making it ideal for fast-paced gaming and typing. Crafted from durable POM material, these switches provide a premium feel and long-lasting performance.',2,400.00,25),(9,'KTT Sea Salt Lemon','KTT Sea Salt Lemon Linear Switch is a smooth, 3-pin mechanical switch designed for a seamless typing experience. Each switch supports SMD LEDs and comes in a pack of 10, making them perfect for customizing your mechanical keyboard with a fresh, vibrant feel.',2,140.00,25),(10,'Gateron Pro Yellow','\nGateron Pro Yellow Full Milky Switches offer a smooth, linear feel with a medium actuation force, ideal for both gaming and typing. Featuring a milky casing for improved light diffusion, these switches provide a satisfying typing experience with enhanced durability.',2,140.00,20);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `ServiceID` int NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(255) NOT NULL,
  `ServiceDescription` text,
  `ServicePrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceorder`
--

DROP TABLE IF EXISTS `serviceorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceorder` (
  `ServiceOrderID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  `ServiceDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ServicePrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ServiceOrderID`),
  KEY `OrderID` (`OrderID`),
  KEY `ServiceID` (`ServiceID`),
  CONSTRAINT `serviceorder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`),
  CONSTRAINT `serviceorder_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceorder`
--

LOCK TABLES `serviceorder` WRITE;
/*!40000 ALTER TABLE `serviceorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-07 18:53:21
