-- MySQL dump 10.15  Distrib 10.0.21-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: form_builder
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `value` varchar(256) DEFAULT NULL,
  `del_flg` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (11,1,1,'test_text','a',1),(12,1,2,'test_number','0',1),(13,1,3,'test_phone','0',1),(14,1,4,'test_email','test@gmail.com',1),(15,1,1,'test_text','test',1),(16,1,2,'test_number','10',1),(17,1,3,'test_phone','777',1),(18,1,4,'test_email','a@gmail.com',1),(19,1,1,'test_text','a',1),(20,1,2,'test_number','0',1),(21,1,3,'test_phone','0',1),(22,1,4,'test_email','test@gmail.com',1),(23,1,1,'test_text','a',1),(24,1,2,'test_number','0',1),(25,1,3,'test_phone','0',1),(26,1,4,'test_email','test@gmail.com',1),(27,1,1,'test_text','a',1),(28,1,2,'test_number','0',1),(29,1,3,'test_phone','0',1),(30,1,4,'test_email','test@gmail.com',1),(31,1,1,'test_text','a',1),(32,1,2,'test_number','0',1),(33,1,3,'test_phone','0',1),(34,1,4,'test_email','test@gmail.com',1),(35,1,1,'test_text','a',1),(36,1,2,'test_number','0',1),(37,1,3,'test_phone','0',1),(38,1,4,'test_email','test@gmail.com',1),(39,1,1,'test_text','a',1),(40,1,2,'test_number','0',1),(41,1,3,'test_phone','0',1),(42,1,4,'test_email','test@gmail.com',1),(43,1,1,'test_text','a',1),(44,1,2,'test_number','0',1),(45,1,3,'test_phone','0',1),(46,1,4,'test_email','test@gmail.com',1),(47,1,1,'test_text','a',1),(48,1,2,'test_number','0',1),(49,1,3,'test_phone','0',1),(50,1,4,'test_email','test@gmail.com',1),(51,1,1,'test_text','a',1),(52,1,2,'test_number','0',1),(53,1,3,'test_phone','0',1),(54,1,4,'test_email','test@gmail.com',1),(55,1,1,'test_text','a',1),(56,1,2,'test_number','0',1),(57,1,3,'test_phone','0',1),(58,1,4,'test_email','test@gmail.com',1),(59,1,1,'test_text','a',1),(60,1,2,'test_number','0',1),(61,1,3,'test_phone','0',1),(62,1,4,'test_email','test@gmail.com',1),(63,1,1,'test_text','a',1),(64,1,2,'test_number','0',1),(65,1,3,'test_phone','0',1),(66,1,4,'test_email','test@gmail.com',1),(67,1,1,'test_text','a',1),(68,1,2,'test_number','0',1),(69,1,3,'test_phone','0',1),(70,1,4,'test_email','test@gmail.com',1),(71,1,1,'test_text','a',1),(72,1,2,'test_number','0',1),(73,1,3,'test_phone','0',1),(74,1,4,'test_email','test@gmail.com',1),(75,1,1,'test_text','a',1),(76,1,2,'test_number','0',1),(77,1,3,'test_phone','0',1),(78,1,4,'test_email','test@gmail.com',1),(79,1,1,'test_text','a',1),(80,1,2,'test_number','0',1),(81,1,3,'test_phone','0',1),(82,1,4,'test_email','test@gmail.com',1),(83,1,1,'test_text','a',1),(84,1,2,'test_number','0',1),(85,1,3,'test_phone','0',1),(86,1,4,'test_email','test@gmail.com',1),(87,1,1,'test_text','a',1),(88,1,2,'test_number','0',1),(89,1,3,'test_phone','0',1),(90,1,4,'test_email','test@gmail.com',1),(91,1,1,'test_text','田中',0),(92,1,3,'test_phone','01202222222',0),(93,1,2,'test_number','58',0),(94,1,4,'test_email','ojisan@gmail.com',0),(95,1,9,'test_textarea','おじさんです。\r\n58歳です。\r\nO型です。',0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22 20:11:28
