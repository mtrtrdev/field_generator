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
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `type` enum('text','number','phone','email','submit','hidden','textarea','radio','checkbox','selectbox','etc') NOT NULL,
  `text` varchar(100) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `default_value` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `field_id` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `option` varchar(256) DEFAULT NULL COMMENT '選択、チェック',
  `require_flg` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,1,'text','お名前は？',1,'a','test_text','test_text_id','text_class','名前',NULL,0),(2,1,'number','年齢は？',3,'0','test_number','test_number_id','number_class','年齢',NULL,0),(3,1,'phone','電話番号は？',2,'0','test_phone','test_phone_id','phone_class','電話番号',NULL,0),(4,1,'email','メールアドレスは？',4,'test@gmail.com','test_email','test_email_id','email_class','メールアドレス',NULL,0),(5,1,'submit',NULL,10,'登録します','test_submit','test_submit_id','submit_class',NULL,NULL,0),(7,2,'text','名前は？',1,'a','test_text','test_text_id','text_class','名前',NULL,0),(8,2,'submit',NULL,5,'登録します','test_submit','test_submit_id','submit_class',NULL,NULL,0),(9,1,'textarea','コメント',5,NULL,'test_textarea','test_text_id','textarea_class',NULL,NULL,0),(10,1,'radio','性別は？',6,NULL,'test_radio','test_radio_id','radio_class','性別','[{\"name\":\"男性\",\"value\":\"1\",\"checked\":false},{\"name\":\"女性\",\"value\":\"2\",\"checked\":false},{\"name\":\"その他\",\"value\":\"3\",\"checked\":true}]',0),(11,1,'checkbox','送付先は？',7,NULL,'test_checkbox','test_checkbox_id','chekbox_class','送付先','[{\"name\":\"自宅\",\"value\":\"1\",\"checked\":false},{\"name\":\"勤務先\",\"value\":\"2\",\"checked\":true},{\"name\":\"その他\",\"value\":\"3\",\"checked\":false}]',0),(12,1,'selectbox','血液型は？',8,NULL,'test_select','test_select_id','select_class','血液型','[{\"name\":\"A型\",\"value\":\"1\",\"selected\":false},{\"name\":\"B型\",\"value\":\"2\",\"selected\":false},{\"name\":\"AB型\",\"value\":\"3\",\"selected\":true},{\"name\":\"O型\",\"value\":\"4\",\"selected\":false},{\"name\":\"A型\",\"value\":\"1\",\"selected\":false}]',0);
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
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
