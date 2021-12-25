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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `userRole` varchar(45) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'thanh17@gmail.com','thanh','$2a$10$QELCoQqTj0XLODEFdTpCXeM0DaMOacVDXawmNHJi3xFHdMDNld8V2','Thanh','Tan','ROLE_EMPLOYEE'),(2,'tanthah.17@gmail.com','com1','$2a$10$zFE6kmG5amfyvGn8A2/0XeULLimR08D/hWd2A4FucMyBnV3.5iODu','Thanh','Tan','ROLE_EMPLOYER'),(3,'com2@gmail.com','com2','$2a$10$WcwB6Jo8lLsW4o1BjJrpd.J2ZyReTn90R2yD.ZVXCv6hiw5/VEb9W','Duyen','Ha','ROLE_EMPLOYER'),(4,'com3@gmail.com','com3','$2a$10$6J6zOS.LwPI3N64qQiuhDuTc1yO1wlrobzROqA5K9SV7dJsqU2SRO','Duyen','Ho','ROLE_EMPLOYER'),(5,'com4@gmail.com','com4','$2a$10$I8T5QyAx8iDkI5Fp0xwXfeXdCoKQIQYhe414ifLzNZdLhCxFmWmgm','Lam','Truc','ROLE_EMPLOYER'),(6,'com5@gmai.com','com5','$2a$10$9dPLjwuJ3YUPOen4vxvmNOUyInDfXl6mxUPwZ8SM5tf78nXPUhb.6','Ngan','Nguyen','ROLE_EMPLOYER'),(7,'com6@gmail.com','com6','$2a$10$EfzhXn3PoA7lwtfHQcX9KOEyb2AtO6uCgkSmpRCFQoPR.gde.8cHq','Trang','Quynh','ROLE_EMPLOYER'),(8,'com7@gmail.com','com7','$2a$10$6MOGfavnd25fVyZji9j.P.gsyDS09gte1YPi.gfCWS7L854xL7Fh.','Thy','Anh','ROLE_EMPLOYER'),(9,'quynhtrang@gmail.com','trangkem','$2a$10$ovUmNeHhBDE099ZXR6nchutriVbPTzWJi1najhiR4TERpeZGZh9WK','Trang','Quynh','ROLE_EMPLOYEE'),(10,'anhthy@gmail.com','anhthy','$2a$10$g0EeJNZioS1E/2QMBzt6WO4f1RPQ4aysSiaJmkEsTCPLJeP0myiA.','Thy','Anh','ROLE_EMPLOYEE'),(11,'t17@gmail.com','user1','$2a$10$L15DFqz6zikavIMnpls3buR/SXJ9wgkUuv7DJ0AmpXaqN1c.xktr.','Thanh','Tan','ROLE_EMPLOYEE'),(12,'thanh@gmail.com','thahtran','$2a$10$vbTqNtXJFCBKZ.IkrrpewerOC48btehEqENvhSMGOdAvIKfeYhaVS','Thanh','Tran','ROLE_ADMIN'),(13,'thanh17@gmail.com','thanhtan17','$2a$10$7TV0C7OQxMLEP5l72vbk/ereMYhMMOEsPMIieT/npRLdnb2wpng62','Thanh','Tran','ROLE_EMPLOYEE'),(14,'tanthanh@gmail.com','tanthanh','$2a$10$9qrVEmDlBvibi9ufCOfuxO8RZn56aDQGdtV6DE1muiJN0sxybBZbq','Thanh','Tan','ROLE_EMPLOYEE'),(15,'t@gmail.com','tt17','$2a$10$Zt1jbusv9cy9USVt0V96EOK4V.xQ5CHQX9uIqopjFtuD37f3KF8/e','Thanh','Tan','ROLE_EMPLOYEE');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-25 16:04:21
