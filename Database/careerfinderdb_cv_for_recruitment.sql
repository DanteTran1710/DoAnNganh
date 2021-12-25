-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: careerfinderdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `cv_for_recruitment`
--

DROP TABLE IF EXISTS `cv_for_recruitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv_for_recruitment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cv` varchar(100) NOT NULL,
  `idEmployee` int NOT NULL,
  `idCompany` int NOT NULL,
  `idRecruitment` int NOT NULL,
  `state` varchar(45) NOT NULL,
  `createdDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cv_employee_idx` (`idEmployee`),
  KEY `id_cv_company_idx` (`idCompany`),
  CONSTRAINT `id_cv_company` FOREIGN KEY (`idCompany`) REFERENCES `employer` (`idEmployer`),
  CONSTRAINT `id_cv_employee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_for_recruitment`
--

LOCK TABLES `cv_for_recruitment` WRITE;
/*!40000 ALTER TABLE `cv_for_recruitment` DISABLE KEYS */;
INSERT INTO `cv_for_recruitment` VALUES (1,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636779715/zoc9wmwurl139oz3x19u.jpg',1,5,38,'decline','2015-12-12'),(2,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636908873/yuarfnds4hrnkhpqo8cw.pdf',4,5,41,'received','2015-11-22'),(3,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636949253/vehfopjigxhx0yqlmght.pdf',5,1,51,'received','2015-10-17'),(4,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636949253/vehfopjigxhx0yqlmght.pdf',5,2,54,'decline','2015-10-01'),(5,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636951261/d76rdniaihrmgpnxt7dc.pdf',6,2,54,'decline','2015-12-31');
/*!40000 ALTER TABLE `cv_for_recruitment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-25 16:04:22
