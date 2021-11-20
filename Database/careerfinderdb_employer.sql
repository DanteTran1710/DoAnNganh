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
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `idEmployer` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `orientation` varchar(200) NOT NULL,
  `companyName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `companyImg` varchar(100) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `idUser` int NOT NULL,
  PRIMARY KEY (`idEmployer`),
  KEY `id_employer_user_idx` (`idUser`),
  CONSTRAINT `id_employer_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'asim@gmail.com','091 575 79 19','Together we create the future','ASIM Telecommunications JSC (ASIM Telecom)','4th Floor, Vinashin building, Lot CC1, Phapvan-Tuhiep, Hoangmai, Hanoi','Công ty cổ phần viễn thông ASIM (ASIM Telecom) là nhà phát triển Mạng di động Local, mạng di động thứ 8 của Việt Nam.','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636822142/o6crsmkroryrbhbhm3zx.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636822144/hnh7gvvi4j4bi46nuq2t.jpg',_binary '\0',2),(2,'camgemeni@gmail.com','028 3997 8100','Capgemini is committed to helping you achieve your potential. Together, we’ll determine the career path that will take you as far as you want to go.','Capgemini Vietnam','Centre Point, 106 Nguyen Van Troi','At Capgemini, exciting careers and a stimulating workplace come with a great sense of belonging. We invest in creating an environment where the most talented, qualified people want to be – and stay.\r\n\r\nWith more than 300 offices in 30 countries around the globe, we are one of the world’s largest providers of Consulting, Outsourcing and Technology Services.\r\nAt Capgemini, you have the opportunity to:\r\n\r\n• Benefit from merit-based promotion, determined by your performance, skills and willingness to take on greater responsibility.\r\n• Make important contacts, working with top experts and making the most of our buddy system. Your coaches and mentors will work with you to help you reach your potential.\r\n• Build your knowledge base through a wide range of training and experiences.\r\n• Contribute to a global team that acts with passion, commitment and integrity.\r\n\r\nYou enjoy a challenge? You have a thirst for knowledge and a desire to be one of the best? Then benefit from the Capgemini culture. At Capgemini, we draw on each other’s capacities and experiences, to inspire and motivate one another.','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636817683/afdqt5jbrocartwthmpa.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636817687/n3ybx3jieqmrihjvenix.jpg',_binary '\0',3),(3,'cityclinic@gmail.com','028 7300 3223','CarePlus is a 100% foreign owned clinic chain with three international standard clinics in Ho Chi Minh City and we are an associate of Singapore Medical Group.','Cityclinic Viet Name Company','Tan Binh (Head Office): 107 Tan Hao, Ward 13, District Tan Binh','We offer uniquely patient-centric, high quality, affordable outpatient healthcare services for individuals and corporates.\r\nBest in class professionals and modern equipment are available in our clinics, covering a multitude of specialties (Pediatrics, Internal Medicine, Obstetrics & Gynecology, Cardiology, Hepatology & Gastroenterology, Dental Care, Ophthalmology, Ear-Nose-Throat, Minor Surgery, Pulmonology, Dermatology, Family Medicine, Emergency Care, etc.) and services (Health Screening, Imaging & Laboratory Diagnostics, Vaccination, Lifestyle & Health Advisory, etc.).','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636817942/jend4tacunjmfqlip0xb.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636817944/loy7e48aflpjfk0dw82k.jpg',_binary '\0',4),(4,'lazada@gmail.com','+84 (08) 3942 1188','FAST - SATISFIED - SUITABLE','Lazada Vietnam','Saigon Center Building, Tower 2, Level 19 67 Le Loi Street, Ben Nghe Ward, District 1, Ho Chi Minh City, Vietnam','Launched in 2012, Lazada is the number one online shopping and selling destination in Southeast Asia – present in Indonesia, Malaysia, the Philippines, Singapore, Thailand and Vietnam. As the pioneer of the eCommerce ecosystem in Southeast Asia, Lazada helps more than 80,000 local and international sellers as well as 2,500 brands serve the 560 million consumers in the region through its marketplace platform, supported by a wide range of tailored marketing, data, and service solutions. With over 80 million SKUs available, Lazada offers the widest range of products in categories ranging from consumer electronics to household goods, toys, fashion, sports equipment and groceries. Focused on delivering an excellent customer experience, it offers multiple payment methods including cash-on-delivery, comprehensive customer care and hassle-free returns through its own first- and last-mile delivery arm supported by 80+ logistics partners. Lazada Group is majority owned by Alibaba Group Holding Limited (NYSE:BABA).','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636818260/kkcx5mbhlvtc5q3d2hrw.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636818263/pgkstxznnwvqfbzg7op3.jpg',_binary '\0',5),(5,'fpt@gmail.com','+84 24 3562 6000','We welcome candidates with ambition and desire to work in a dynamic, creative and professional international environment  Together we create the future','FPT Software','FPT Tower, 10 Pham Van Bach Street, Dich Vong Ward, Cau Giay District, Hanoi, Vietnam.','FPT Software - the Software Powerhouse\r\n• Vietnam\'s largest and one of the fastest growing software outsourcing companies.\r\n• Over 6,000 software outsourcing projects and a total volume of 2.5 million man-days in the last 10 years.\r\n• A broad presence in diverse global markets.\r\n• Specialist in shaping world-class networks of global delivery centers.','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636820336/bpcj6vbwaj27h8teg3wf.png','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636820340/mlp1ddlfdtad8clchcvr.jpg',_binary '\0',6),(6,'garena@gmail.com','HR Department on website garena.sg','\"Aim to change people\'s lives by providing great experiments with Internet based services\"','Garena Vietnam','Lotte Tower | Ba Dinh District | Hanoi, Vietnam','This mission leads us to be the pioneer in e-sports and one of few technology companies providing e-payment & e-commerce platforms. Some key factors about us:\r\nOne of fastest-growing technology companies in Vietnam.\r\nFound 2009 and reached 5,000+ employees.\r\n50 Point of Customer Service nationwide besides 3 offices in Hanoi, Ho Chi Minh and Danang cities\r\nwww.seagroup.com','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636822096/vew7rs6iho69psozgsmj.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636822099/id1mzn0lwx8huz0jqesx.jpg',_binary '\0',7),(7,'cocacola@gmail.com','028 3896 1000','Coca Cola Beverages Vietnam Ltd. started its operation in 1994. It has plants in Ha Noi, Da Nang and Ho Chi Minh City. Ho Chi Minh City is the company\'s head office.','Coca-Cola Beverages Vietnam Ltd.','485 Ha Noi Highway, Linh Trung Ward, Thu Duc Dist, HCM','Coca Cola Beverages Vietnam Ltd. is a 100% foreign-invested company. It is a subsidiary of the Bottling Investments Group (BIG) which is 100% owned and operated within The Coca Cola Company. BIG was established in 2004 with the purpose of building sustainable bottling businesses around the world. Today, BIG operates on four continents with one of the largest and most geographically diverse footprints, operating bottlers in countries around the world including Germany, China, Brazil and India.\r\nBesides the world\'s most famous brand, Coca Cola, Coca Cola Beverages Vietnam also produces Fanta, Sprite, Minute Maid Splash (juice), Samurai (energy drink), Dasani (purified water), Nutriboost (fruit milk) and Schweppes (soda water, tonic).','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636820821/clht6mb6wpvjtvziebd9.jpg','https://res.cloudinary.com/dd58hrv0h/image/upload/v1636820823/xj9tudmkkkeewe81wbf7.png',_binary '\0',8);
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
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
