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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `idEmployee` int NOT NULL AUTO_INCREMENT,
  `avatarUrl` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `sex` bit(1) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `position` varchar(45) NOT NULL,
  `company` varchar(100) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `currentJob` bit(1) NOT NULL,
  `school` varchar(100) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `language` varchar(45) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `salaryOffer` decimal(10,0) NOT NULL,
  `positionOffer` varchar(100) NOT NULL,
  `idUser` int NOT NULL,
  PRIMARY KEY (`idEmployee`),
  KEY `id_employee_user_idx` (`idUser`),
  CONSTRAINT `id_employee_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636906307/kw9wteh2opxeuxqyrej3.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636907234/eizmdkdexxb4czsnymmi.pdf','0984381617','2000-10-17',_binary '\0','Foreigner','Phạm Văn Hai, Phường 5, Tân Bình TPHCM','Trưởng phòng','FPT Telecom','IT',_binary '\0','Đại học Mở TPHCM','Đại Học','Vietnamese','Speaking English fluently',2,'Trưởng phòng',1),(2,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636906933/rpstdo5r3xhv20yr3afk.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636906936/l0drnm7jpzo0m2kpjbwf.pdf','0965213551','2000-07-12',_binary '','Local VietNamese','18 Đông Hưng Thuận, Quận 12 TPHCM','Experienced(non-manager)','FPT Telecom','IT',_binary '','Đại học Mở TPHCM','Đại Học','English','Speaking English fluently, Excel skills',3,'Manager',9),(3,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636907211/eust6yebvc4dhhswlrxr.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636907214/sfsnpaadh59zzszsrafv.jpg','0373952891','2000-11-09',_binary '','Local VietNamese','Nguyễn Kiệm, Gò Vấp TPHCM','Fresher/Entry level','Công ty TNHH MTV Giải Pháp Công Nghệ Phần Mềm SoftOne','IT & QA',_binary '\0','Đại học Mở TPHCM','Đại Học','English','Phân tích dữ liệu, Lập trình khá',2,'Manager',10),(4,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636908871/g1m7vknxpkn5ysd8tgwv.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636908873/yuarfnds4hrnkhpqo8cw.pdf','0984381617','2000-10-17',_binary '\0','Foreigner','Phạm Văn Hai, Tân Bình TPHCM','Fresher/Entry level','ASIM','Công Nghệ Thông Tin',_binary '','Đại Học Mở','Đại Học','French','Speaking English fluently, Working team, Leader',3,'Nhân viên',11),(5,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636949250/xoaixiv9c7lttmtoyirw.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636949253/vehfopjigxhx0yqlmght.pdf','0984381617','2000-10-17',_binary '\0','Foreigner','Phạm Văn Hai, Tân Bình TPHCM','Fresher/Entry level','ASIM','Khoa Học Máy Tính',_binary '','Đại Học Mở TPHCM','Đại Học','English','Speaking English fluently, Working team, Leader',2,'Nhân viên',13),(6,'https://res.cloudinary.com/dd58hrv0h/image/upload/v1636951259/hkseagf7vuuh2ytea4me.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636951261/d76rdniaihrmgpnxt7dc.pdf','0984381617','2000-10-17',_binary '\0','Foreigner','Phạm Văn Hai, Tân Bình TPHCM','Fresher/Entry level','ASIM','Khoa Học Máy Tính',_binary '','Đại Học Mở TPHCM','Đại Học','Chinese','Speaking English fluently, Working team, Leader',2,'Nhân viên',14);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 18:19:00
