-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doumy_pro_cv
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `life_cv`
--

DROP TABLE IF EXISTS `life_cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `life_cv` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `design` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  `contact_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `personne_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `life_cv_contact_id_06c5b9df_fk_life_contact_id` (`contact_id`),
  KEY `life_cv_user_id_96658e0b_fk_auth_user_id` (`user_id`),
  KEY `life_cv_personne_id_9a99307e_fk_life_personne_id` (`personne_id`),
  CONSTRAINT `life_cv_contact_id_06c5b9df_fk_life_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `life_contact` (`id`),
  CONSTRAINT `life_cv_personne_id_9a99307e_fk_life_personne_id` FOREIGN KEY (`personne_id`) REFERENCES `life_personne` (`id`),
  CONSTRAINT `life_cv_user_id_96658e0b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-30 11:04:10
