-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bankmanagementsystem
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `formno` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `father_name` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('2234','ayushman','senior','01-May-2024','Male','aaa@gmail.com','Married','deljhi','dlehi','123456','delhi'),('314','akshay','lakshay','10-Jun-2024','Male','aks@gmail.com','Unmarried','delhi','mumbai','401105','gia'),('314','akshay','lakshay','10-Jun-2024','Male','aks@gmail.com','Unmarried','delhi','mumbai','401105','gia'),('7760','amit','sumit','06-Jun-2019','Male','amit@gmail.com','Married','akola','akola','456321','mahaarshtra'),('131','amit','sumit','04-Jun-2018','null','amit@gmail.com','Married','akola','akola','456321','mahar'),('5943','amit','adarsh','12-May-2014','null','aa@gmail.com','Unmarried','bhopal','bhopal','1234678','bhopal'),('5784','Aditya','Ramesh','30-Nov-2001','Male','honeysoni.ars@gmail.com','Unmarried','A','Mumbai','401107','Maharashtra'),('7456','Aditya','R','01-Nov-2000','Male','ars@gmail.com','Unmarried','A','Mumbai','401107','Mah');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-07 19:30:44
