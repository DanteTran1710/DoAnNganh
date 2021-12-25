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
-- Table structure for table `category_job`
--

DROP TABLE IF EXISTS `category_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_job` (
  `idCategory` int NOT NULL AUTO_INCREMENT,
  `nameJob` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_job`
--

LOCK TABLES `category_job` WRITE;
/*!40000 ALTER TABLE `category_job` DISABLE KEYS */;
INSERT INTO `category_job` VALUES (1,'An toàn lao động'),(2,'Bác sĩ'),(3,'Bán hàng'),(4,'Bảo hiểm'),(5,'Bất động sản'),(6,'Bảo trì/ Sửa chữa'),(7,'Cấp quản lý điều hành'),(8,'Chứng khoán'),(9,'Cơ khí'),(10,'Công nghệ cao'),(11,'Dầu khí'),(12,'Dệt may'),(13,'Dịch vụ khách hàng'),(14,'Dược sĩ/ Dược phẩm'),(15,'Giáo dục/ Đào tạo'),(16,'Hành chánh/ Thư ký'),(17,'Hoạch định/Dự án'),(18,'In ấn/ Xuất bản'),(19,'Internet/ Online Media'),(20,'IT'),(21,'Kế toán/ Kiểm toán'),(22,'Kiến trúc/ Thiết kế nội thất'),(23,'Marketing'),(24,'Mỹ thuật/Nghệ thuật/Thiết kế'),(25,'Ngân hàng'),(26,'Nhà hàng/ Khách sạn'),(27,'Nhân sự'),(28,'Nông/Lâm'),(29,'Pháp lý'),(30,'QA/QC'),(31,'Quảng cáo'),(32,'Sản xuất'),(33,'Tài chính/ Đầu tư'),(34,'Thời trang'),(35,'Thời vụ/ ngắn hạn'),(36,'Thực phẩm & Đồ uống'),(37,'Truyền hình/Truyền thông/ Báo chí'),(38,'Tư vấn viên'),(39,'Vận chuyển/ Giao nhận'),(40,'Viễn thông'),(41,'Xây dựng'),(42,'Y sĩ/ Hộ lý'),(43,'Y tế/ Chăm sóc sức khỏe'),(44,'Điện tử');
/*!40000 ALTER TABLE `category_job` ENABLE KEYS */;
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
