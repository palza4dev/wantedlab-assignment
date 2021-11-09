-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: wanted
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'원티드랩'),(2,'Wantedlab'),(3,'OKAY.com'),(4,'이상한마케팅'),(5,'인포뱅크'),(6,'infobank'),(7,'아이씨그룹'),(8,'딤딤섬 대구점'),(9,'파운데이션엑스'),(10,'엣지랭크'),(11,'커넥티어'),(12,'자버(Jober)'),(13,'앨리스헬스케어'),(14,'(주)몬스터스튜디오'),(15,'SM Entertainment Japan'),(16,'株式会社SM Entertainment Japan'),(17,'쿠차'),(18,'ZMP'),(19,'株式会社ZMP'),(20,'몽키랩'),(21,'와이케이비앤씨'),(22,'코츠테크놀로지'),(23,'비고라이브'),(24,'크로싱'),(25,'트리노드'),(26,'와이즈키즈(wisekids)'),(27,'Obelab'),(28,'Foodpanda'),(29,'웹티즌'),(30,'마이셀럽스'),(31,'데이터얼라이언스(DataAlliance)'),(32,'쿼드자산운용'),(33,'쿼드자산운용'),(34,'주식회사 링크드코리아'),(35,'주렁주렁(zoolungzoolung)'),(36,'Amore Pacific_TEST'),(37,'Luna Marketing Group'),(38,'동신항운'),(39,'히숲'),(40,'COVENANT'),(41,'COVENANT'),(42,'젠틀파이'),(43,'아크로고스'),(44,'페르소나미디어'),(45,'Persona Media'),(46,'Rejoice Pregnancy'),(47,'The Wave'),(48,'CoCoon Foundation'),(49,'스트라다월드와이드(Strada)'),(50,'도빗(Dobbit)'),(51,'지란지교시큐리티'),(52,'캠퍼스멘토'),(53,'삼일제약'),(54,'제이에이치개발'),(55,'오케이코인코리아'),(56,'그릿연구소'),(57,'세계정부 世界政府'),(58,'투게더앱스'),(59,'Dream Agility'),(60,'Dream Agility'),(61,'대성시스템'),(62,'바이럴네이션'),(63,'오가나셀'),(64,'디토나인'),(65,'Haulio'),(66,'대상홀딩스(주) - existing'),(67,'만나씨이에이'),(68,'지오코리아(페루관광청)'),(69,'GEOCM Co.'),(70,'GEOCM'),(71,'KFC Korea'),(72,'까브드뱅(Cave de Vin)'),(73,'홈스토리생활'),(74,'아이엠에이치씨(IMHC)'),(75,'플라이트그래프-탈퇴'),(76,'YG PLUS'),(77,'우리말소프트'),(78,'아로마티카'),(79,'Private Organization'),(80,'스피링크'),(81,'Onion Ground'),(82,'브레이브팝스'),(83,'Bidalgo'),(84,'티엠씨케이'),(85,'(주) 휴톰-중복'),(86,'Chengbao'),(87,'헬프미'),(88,'(주) 새론다이내믹스'),(89,'마상소프트'),(90,'(주)아임블록'),(91,'(주)이모션글로벌-중복'),(92,'Altagram'),(93,'이베스트투자증권'),(94,'소굿마케팅'),(95,'Grab'),(96,'HK Yau'),(97,'더락포트컴퍼니코리아-중복'),(98,'휴마트컴퍼니'),(99,'디센터'),(100,'컬쳐히어로'),(101,'보비어스코리아'),(102,'베이글랩스'),(103,'Katalis Digital'),(104,'애디터(Additor)'),(105,'Avanade Asia Pte Ltd'),(106,'500V2'),(107,'플라이앤컴퍼니(푸드플라이)'),(108,'영우디지탈-중복'),(109,'Machipopo Inc.'),(110,'시니어벤처스');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_languages`
--

DROP TABLE IF EXISTS `companies_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_languages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `language_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_languages_company_id_8992652d_fk_companies_id` (`company_id`),
  KEY `companies_languages_language_id_d564d0b0_fk_languages_id` (`language_id`),
  CONSTRAINT `companies_languages_company_id_8992652d_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `companies_languages_language_id_d564d0b0_fk_languages_id` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_languages`
--

LOCK TABLES `companies_languages` WRITE;
/*!40000 ALTER TABLE `companies_languages` DISABLE KEYS */;
INSERT INTO `companies_languages` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,3),(17,17,1),(18,18,1),(19,19,3),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,2),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,2),(34,34,1),(35,35,1),(36,36,2),(37,37,2),(38,38,1),(39,39,1),(40,40,1),(41,41,2),(42,42,1),(43,43,1),(44,44,1),(45,45,2),(46,46,2),(47,47,2),(48,48,2),(49,49,1),(50,50,1),(51,51,1),(52,52,1),(53,53,1),(54,54,1),(55,55,1),(56,56,1),(57,57,1),(58,58,1),(59,59,1),(60,60,2),(61,61,1),(62,62,1),(63,63,1),(64,64,1),(65,65,2),(66,66,1),(67,67,1),(68,68,1),(69,69,2),(70,70,3),(71,71,1),(72,72,1),(73,73,1),(74,74,1),(75,75,1),(76,76,1),(77,77,1),(78,78,1),(79,79,2),(80,80,1),(81,81,1),(82,82,1),(83,83,1),(84,84,1),(85,85,1),(86,86,2),(87,87,1),(88,88,1),(89,89,1),(90,90,1),(91,91,1),(92,92,1),(93,93,1),(94,94,1),(95,95,2),(96,96,2),(97,97,1),(98,98,1),(99,99,1),(100,100,1),(101,101,1),(102,102,1),(103,103,2),(104,104,1),(105,105,2),(106,106,1),(107,107,1),(108,108,1),(109,109,2),(110,110,1);
/*!40000 ALTER TABLE `companies_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_tags`
--

DROP TABLE IF EXISTS `companies_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_tags_company_id_adbafb56_fk_companies_id` (`company_id`),
  KEY `companies_tags_tag_id_2e5a9619_fk_tags_id` (`tag_id`),
  CONSTRAINT `companies_tags_company_id_adbafb56_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `companies_tags_tag_id_2e5a9619_fk_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_tags`
--

LOCK TABLES `companies_tags` WRITE;
/*!40000 ALTER TABLE `companies_tags` DISABLE KEYS */;
INSERT INTO `companies_tags` VALUES (1,1,1),(2,1,4),(3,1,7),(4,2,2),(5,2,5),(6,2,8),(7,3,11),(8,3,14),(9,3,2),(10,4,16),(11,4,19),(12,4,22),(13,4,25),(14,5,16),(15,6,17),(16,7,28),(17,7,31),(18,7,34),(19,7,22),(20,8,37),(21,8,40),(22,8,43),(23,8,46),(24,9,49),(25,10,52),(26,10,55),(27,10,58),(28,10,28),(29,11,55),(30,11,61),(31,12,43),(32,12,7),(33,13,46),(34,13,52),(35,13,64),(36,14,67),(37,15,31),(38,15,55),(39,15,70),(40,16,33),(41,16,57),(42,16,72),(43,17,13),(44,17,52),(45,17,58),(46,18,73),(47,18,43),(48,18,61),(49,18,10),(50,19,75),(51,19,45),(52,19,63),(53,19,12),(54,20,76),(55,20,31),(56,20,34),(57,21,22),(58,21,40),(59,21,19),(60,22,64),(61,22,43),(62,23,46),(63,23,67),(64,24,61),(65,24,79),(66,24,64),(67,24,34),(68,25,76),(69,25,67),(70,25,64),(71,25,82),(72,26,28),(73,26,25),(74,26,82),(75,26,22),(76,27,19),(77,28,59),(78,29,34),(79,29,16),(80,29,76),(81,29,46),(82,30,43),(83,30,49),(84,30,37),(85,30,13),(86,31,13),(87,31,19),(88,31,55),(89,32,10),(90,32,31),(91,32,58),(92,32,40),(93,33,11),(94,33,32),(95,33,59),(96,33,41),(97,34,64),(98,34,19),(99,34,49),(100,35,79),(101,35,82),(102,35,85),(103,36,83),(104,36,14),(105,36,35),(106,36,20),(107,37,44),(108,37,86),(109,38,58),(110,39,55),(111,39,82),(112,39,76),(113,39,22),(114,40,73),(115,40,88),(116,41,74),(117,41,89),(118,42,85),(119,42,82),(120,42,1),(121,42,22),(122,43,70),(123,43,40),(124,43,13),(125,44,58),(126,44,46),(127,45,59),(128,45,47),(129,46,38),(130,46,80),(131,46,77),(132,46,2),(133,47,89),(134,48,59),(135,49,25),(136,49,22),(137,49,55),(138,49,46),(139,50,40),(140,50,85),(141,50,61),(142,51,58),(143,51,10),(144,51,73),(145,51,13),(146,52,40),(147,53,43),(148,53,37),(149,54,13),(150,54,16),(151,54,19),(152,54,22),(153,55,88),(154,55,16),(155,56,16),(156,57,70),(157,57,67),(158,57,55),(159,58,37),(160,58,73),(161,58,1),(162,58,34),(163,59,67),(164,60,68),(165,61,43),(166,61,67),(167,62,49),(168,62,19),(169,62,4),(170,62,58),(171,63,55),(172,63,28),(173,64,16),(174,64,40),(175,64,22),(176,65,89),(177,66,31),(178,67,70),(179,68,34),(180,68,82),(181,69,35),(182,69,83),(183,70,36),(184,70,84),(185,71,82),(186,71,67),(187,72,43),(188,72,73),(189,72,61),(190,73,76),(191,73,4),(192,74,1),(193,74,79),(194,74,67),(195,74,34),(196,75,79),(197,75,82),(198,75,25),(199,76,28),(200,76,7),(201,76,52),(202,77,46),(203,77,13),(204,77,10),(205,78,40),(206,79,11),(207,80,67),(208,80,25),(209,81,19),(210,81,43),(211,82,34),(212,83,88),(213,83,46),(214,84,28),(215,84,58),(216,84,67),(217,84,82),(218,85,22),(219,85,70),(220,86,11),(221,86,8),(222,86,68),(223,86,41),(224,87,58),(225,87,55),(226,87,7),(227,88,70),(228,88,22),(229,88,79),(230,88,40),(231,89,64),(232,90,16),(233,91,46),(234,91,61),(235,91,34),(236,92,16),(237,92,58),(238,93,28),(239,93,4),(240,94,25),(241,94,73),(242,94,52),(243,95,29),(244,96,80),(245,97,76),(246,98,7),(247,98,40),(248,99,40),(249,99,76),(250,100,55),(251,101,55),(252,101,49),(253,101,88),(254,101,1),(255,102,49),(256,102,85),(257,102,7),(258,103,44),(259,103,8),(260,103,20),(261,103,86),(262,104,55),(263,104,43),(264,105,50),(265,105,41),(266,105,71),(267,105,56),(268,106,55),(269,106,13),(270,107,40),(271,108,22),(272,108,70),(273,108,76),(274,108,55),(275,109,68),(276,109,74),(277,109,2),(278,109,5),(279,110,4),(280,110,61),(281,110,19);
/*!40000 ALTER TABLE `companies_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'company','company'),(8,'company','companylanguage'),(7,'company','companytag'),(4,'company','language'),(9,'company','relatedcompany'),(5,'company','tag'),(6,'company','taglanguage'),(1,'contenttypes','contenttype'),(2,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'company','0001_initial','2021-11-09 12:14:40.470045'),(2,'company','0002_relatedcompany','2021-11-09 12:14:40.794734'),(3,'contenttypes','0001_initial','2021-11-09 12:14:40.917112'),(4,'contenttypes','0002_remove_content_type_name','2021-11-09 12:14:41.105444'),(5,'sessions','0001_initial','2021-11-09 12:14:41.212884');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (2,'en'),(3,'ja'),(1,'ko');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_companies`
--

DROP TABLE IF EXISTS `related_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_companies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `related_company_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `related_companies_company_id_4a0ce1b9_fk_companies_id` (`company_id`),
  KEY `related_companies_related_company_id_b856e74a_fk_companies_id` (`related_company_id`),
  CONSTRAINT `related_companies_company_id_4a0ce1b9_fk_companies_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `related_companies_related_company_id_b856e74a_fk_companies_id` FOREIGN KEY (`related_company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_companies`
--

LOCK TABLES `related_companies` WRITE;
/*!40000 ALTER TABLE `related_companies` DISABLE KEYS */;
INSERT INTO `related_companies` VALUES (1,1,2),(2,2,1),(3,5,6),(4,6,5),(5,15,16),(6,16,15),(7,18,19),(8,19,18),(9,32,33),(10,33,32),(11,40,41),(12,41,40),(13,44,45),(14,45,44),(15,59,60),(16,60,59),(17,68,69),(18,68,70),(19,69,70),(20,69,68),(21,70,68);
/*!40000 ALTER TABLE `related_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'태그_4'),(2,'tag_4'),(3,'タグ_4'),(4,'태그_20'),(5,'tag_20'),(6,'タグ_20'),(7,'태그_16'),(8,'tag_16'),(9,'タグ_16'),(10,'태그_24'),(11,'tag_24'),(12,'タグ_24'),(13,'태그_27'),(14,'tag_27'),(15,'タグ_27'),(16,'태그_25'),(17,'tag_25'),(18,'タグ_25'),(19,'태그_6'),(20,'tag_6'),(21,'タグ_6'),(22,'태그_14'),(23,'tag_14'),(24,'タグ_14'),(25,'태그_9'),(26,'tag_9'),(27,'タグ_9'),(28,'태그_1'),(29,'tag_1'),(30,'タグ_1'),(31,'태그_23'),(32,'tag_23'),(33,'タグ_23'),(34,'태그_28'),(35,'tag_28'),(36,'タグ_28'),(37,'태그_22'),(38,'tag_22'),(39,'タグ_22'),(40,'태그_29'),(41,'tag_29'),(42,'タグ_29'),(43,'태그_2'),(44,'tag_2'),(45,'タグ_2'),(46,'태그_13'),(47,'tag_13'),(48,'タグ_13'),(49,'태그_8'),(50,'tag_8'),(51,'タグ_8'),(52,'태그_5'),(53,'tag_5'),(54,'タグ_5'),(55,'태그_11'),(56,'tag_11'),(57,'タグ_11'),(58,'태그_26'),(59,'tag_26'),(60,'タグ_26'),(61,'태그_21'),(62,'tag_21'),(63,'タグ_21'),(64,'태그_12'),(65,'tag_12'),(66,'タグ_12'),(67,'태그_19'),(68,'tag_19'),(69,'タグ_19'),(70,'태그_15'),(71,'tag_15'),(72,'タグ_15'),(73,'태그_10'),(74,'tag_10'),(75,'タグ_10'),(76,'태그_7'),(77,'tag_7'),(78,'タグ_7'),(79,'태그_30'),(80,'tag_30'),(81,'タグ_30'),(82,'태그_17'),(83,'tag_17'),(84,'タグ_17'),(85,'태그_18'),(86,'tag_18'),(87,'タグ_18'),(88,'태그_3'),(89,'tag_3'),(90,'タグ_3');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_languages`
--

DROP TABLE IF EXISTS `tags_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_languages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `language_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_languages_language_id_38a47762_fk_languages_id` (`language_id`),
  KEY `tags_languages_tag_id_88efa35a_fk_tags_id` (`tag_id`),
  CONSTRAINT `tags_languages_language_id_38a47762_fk_languages_id` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `tags_languages_tag_id_88efa35a_fk_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_languages`
--

LOCK TABLES `tags_languages` WRITE;
/*!40000 ALTER TABLE `tags_languages` DISABLE KEYS */;
INSERT INTO `tags_languages` VALUES (1,1,1),(2,2,2),(3,3,3),(4,1,4),(5,2,5),(6,3,6),(7,1,7),(8,2,8),(9,3,9),(10,1,10),(11,2,11),(12,3,12),(13,1,13),(14,2,14),(15,3,15),(16,1,16),(17,2,17),(18,3,18),(19,1,19),(20,2,20),(21,3,21),(22,1,22),(23,2,23),(24,3,24),(25,1,25),(26,2,26),(27,3,27),(28,1,28),(29,2,29),(30,3,30),(31,1,31),(32,2,32),(33,3,33),(34,1,34),(35,2,35),(36,3,36),(37,1,37),(38,2,38),(39,3,39),(40,1,40),(41,2,41),(42,3,42),(43,1,43),(44,2,44),(45,3,45),(46,1,46),(47,2,47),(48,3,48),(49,1,49),(50,2,50),(51,3,51),(52,1,52),(53,2,53),(54,3,54),(55,1,55),(56,2,56),(57,3,57),(58,1,58),(59,2,59),(60,3,60),(61,1,61),(62,2,62),(63,3,63),(64,1,64),(65,2,65),(66,3,66),(67,1,67),(68,2,68),(69,3,69),(70,1,70),(71,2,71),(72,3,72),(73,1,73),(74,2,74),(75,3,75),(76,1,76),(77,2,77),(78,3,78),(79,1,79),(80,2,80),(81,3,81),(82,1,82),(83,2,83),(84,3,84),(85,1,85),(86,2,86),(87,3,87),(88,1,88),(89,2,89),(90,3,90);
/*!40000 ALTER TABLE `tags_languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 21:19:07
