-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: cw
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Номер метки купюры',
  `year_produce` int NOT NULL COMMENT 'Год выпуска купюры',
  `number_produce` bigint unsigned NOT NULL COMMENT 'серийный номер купюры',
  `currency_type_id` int NOT NULL COMMENT 'Тип валюты',
  `citizen_chip_id_chip` bigint unsigned NOT NULL,
  `naminal_id` int NOT NULL,
  PRIMARY KEY (`id`,`currency_type_id`,`citizen_chip_id_chip`,`naminal_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_bills_currency_type1_idx` (`currency_type_id`),
  KEY `fk_bills_naminal1_idx` (`naminal_id`),
  KEY `fk_bills_citizen_chip1_idx` (`citizen_chip_id_chip`),
  CONSTRAINT `fk_bills_citizen_chip1` FOREIGN KEY (`citizen_chip_id_chip`) REFERENCES `citizen_chip` (`id_chip`),
  CONSTRAINT `fk_bills_currency_type1` FOREIGN KEY (`currency_type_id`) REFERENCES `currency_type` (`id`),
  CONSTRAINT `fk_bills_naminal1` FOREIGN KEY (`naminal_id`) REFERENCES `naminal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,1974,0,1,1,1),(2,1981,34011242,1,2,2),(3,1980,22,1,3,3),(4,2002,459924051,1,4,4),(5,1972,359347,1,5,5),(6,2015,4971597,1,6,6),(7,1978,7,1,7,7),(8,2013,270759367,1,8,8),(9,1999,4702612,1,9,1),(10,1977,318301,1,10,2),(11,2012,6206888,1,11,3),(12,1973,6076,1,12,4),(13,1976,5592,1,13,5),(14,1987,4,1,14,6),(15,2016,977,1,15,7),(16,1995,648579872,1,16,8),(17,2006,19318163,1,17,1),(18,2013,8277723,1,18,2),(19,1995,336915681,1,19,3),(20,2010,650,1,20,4),(21,2007,684285053,1,21,5),(22,1995,639822897,1,22,6),(23,2016,386234111,1,23,7),(24,1970,724085332,1,24,8),(25,1987,115794,1,25,1),(26,2003,31186952,1,26,2),(27,1991,9587,1,27,3),(28,2004,88112,1,28,4),(29,1992,12737074,1,29,5),(30,1986,5,1,30,6),(31,1983,454677,1,31,7),(32,2001,0,1,32,8),(33,2010,3437067,1,33,1),(34,2009,23,1,34,2),(35,2021,2478299,1,35,3),(36,1971,0,1,36,4),(37,1970,596239,1,37,5),(38,2016,480639996,1,38,6),(39,1997,33,1,39,7),(40,2007,7,1,40,8),(41,1990,659031283,1,41,1),(42,1987,80463490,1,42,2),(43,1997,928654,1,43,3),(44,2020,499655,1,44,4),(45,1978,757314561,1,45,5),(46,2001,44057,1,46,6),(47,2004,2,1,47,7),(48,1996,0,1,48,8),(49,1998,699707,1,49,1),(50,1979,0,1,50,2),(51,1985,40,1,1,3),(52,2004,75,1,2,4),(53,1990,3680583,1,3,5),(54,2010,749518,1,4,6),(55,2002,3,1,5,7),(56,1996,365971,1,6,8),(57,1997,4,1,7,1),(58,2018,598066878,1,8,2),(59,1977,0,1,9,3),(60,1986,9,1,10,4),(61,1991,6490266,1,11,5),(62,1977,12,1,12,6),(63,2014,1618,1,13,7),(64,1987,5287383,1,14,8),(65,2009,0,1,15,1),(66,1998,988487,1,16,2),(67,2003,460609206,1,17,3),(68,1991,7597316,1,18,4),(69,2008,3357328,1,19,5),(70,2004,11553,1,20,6),(71,2001,43491703,1,21,7),(72,1990,4,1,22,8),(73,1985,873,1,23,1),(74,1976,394,1,24,2),(75,1981,3687403,1,25,3),(76,2004,5,1,26,4),(77,1991,8102388,1,27,5),(78,2015,0,1,28,6),(79,1999,0,1,29,7),(80,2004,331554235,1,30,8),(81,1981,3421158,1,31,1),(82,2021,73726,1,32,2),(83,2014,29754886,1,33,3),(84,2015,733,1,34,4),(85,2013,350,1,35,5),(86,2014,0,1,36,6),(87,1976,77139,1,37,7),(88,2002,974983190,1,38,8),(89,1972,3,1,39,1),(90,2017,7615,1,40,2),(91,2018,991,1,41,3),(92,2013,151,1,42,4),(93,1990,49096249,1,43,5),(94,1995,83799592,1,44,6),(95,1999,8906,1,45,7),(96,2001,0,1,46,8),(97,2000,4011417,1,47,1),(98,2012,406832,1,48,2),(99,1972,60532938,1,49,3),(100,1972,562148,1,50,4),(101,1998,276318955,1,1,5),(102,2006,7726,1,2,6),(103,1978,794291418,1,3,7),(104,1976,0,1,4,8),(105,2000,20,1,5,1),(106,1985,9803811,1,6,2),(107,1992,36421,1,7,3),(108,1990,93,1,8,4),(109,1999,82807,1,9,5),(110,2006,5765503,1,10,6),(111,2015,3665089,1,11,7),(112,1970,597145043,1,12,8),(113,2002,294783607,1,13,1),(114,2009,6973680,1,14,2),(115,2007,321,1,15,3),(116,1987,47,1,16,4),(117,1974,858800,1,17,5),(118,1998,50862522,1,18,6),(119,2014,59403786,1,19,7),(120,2017,8,1,20,8),(121,1982,9265,1,21,1),(122,1994,3882,1,22,2),(123,1987,972,1,23,3),(124,2018,334,1,24,4),(125,1989,4614,1,25,5),(126,1994,0,1,26,6),(127,2011,66044274,1,27,7),(128,1984,685506727,1,28,8),(129,2021,640444,1,29,1),(130,1987,81,1,30,2),(131,2005,88222,1,31,3),(132,1996,8996,1,32,4),(133,2016,49326525,1,33,5),(134,1985,94940064,1,34,6),(135,1975,29797,1,35,7),(136,1998,30832674,1,36,8),(137,1991,848251905,1,37,1),(138,1997,0,1,38,2),(139,1970,0,1,39,3),(140,1982,90065,1,40,4),(141,2018,33776,1,41,5),(142,2010,479,1,42,6),(143,2013,20418,1,43,7),(144,1984,1,1,44,8),(145,2008,74836,1,45,1),(146,1980,58161666,1,46,2),(147,1970,949079879,1,47,3),(148,1971,44,1,48,4),(149,1994,55243776,1,49,5),(150,1991,251646204,1,50,6),(151,1973,5,1,1,7),(152,1975,7754,1,2,8),(153,1975,7019,1,3,1),(154,1977,10062,1,4,2),(155,2013,10697,1,5,3),(156,2011,0,1,6,4),(157,2008,97900,1,7,5),(158,2019,61,1,8,6),(159,1994,3357,1,9,7),(160,1993,5379600,1,10,8),(161,2003,959,1,11,1),(162,2002,5531503,1,12,2),(163,2000,945,1,13,3),(164,2015,1150143,1,14,4),(165,1982,310,1,15,5),(166,2007,53,1,16,6),(167,2015,846601,1,17,7),(168,1975,0,1,18,8),(169,1971,825,1,19,1),(170,2001,1,1,20,2),(171,2017,952194352,1,21,3),(172,1994,2268,1,22,4),(173,1986,3790,1,23,5),(174,2006,678,1,24,6),(175,2018,79905013,1,25,7),(176,1992,76,1,26,8),(177,2012,819628,1,27,1),(178,1974,25690,1,28,2),(179,1982,658463107,1,29,3),(180,1987,7038,1,30,4),(181,1995,6,1,31,5),(182,2021,33381708,1,32,6),(183,1976,83312236,1,33,7),(184,1979,6907,1,34,8),(185,2005,981341538,1,35,1),(186,2019,0,1,36,2),(187,2003,284,1,37,3),(188,2021,637183,1,38,4),(189,2013,64,1,39,5),(190,1985,0,1,40,6),(191,1982,2486,1,41,7),(192,1987,129,1,42,8),(193,2014,0,1,43,1),(194,2005,9,1,44,2),(195,1981,489989,1,45,3),(196,2001,5,1,46,4),(197,1981,844,1,47,5),(198,2001,38,1,48,6),(199,1997,5073,1,49,7),(200,1986,5,1,50,8),(201,1993,3721,1,1,1),(202,1973,846235683,1,2,2),(203,1981,41659,1,3,3),(204,1984,4325,1,4,4),(205,2006,8974,1,5,5),(206,2019,9235,1,6,6),(207,1971,8,1,7,7),(208,2008,5595610,1,8,8),(209,2018,51961632,1,9,1),(210,2021,695269,1,10,2),(211,2019,97847,1,11,3),(212,2019,0,1,12,4),(213,1979,2895665,1,13,5),(214,1997,6117237,1,14,6),(215,1977,734600,1,15,7),(216,1995,5,1,16,8),(217,2004,0,1,17,1),(218,2007,47489,1,18,2),(219,1996,51431820,1,19,3),(220,1977,27987451,1,20,4),(221,1979,698092050,1,21,5),(222,1985,718430,1,22,6),(223,2014,98439187,1,23,7),(224,1989,6,1,24,8),(225,2003,786,1,25,1),(226,1990,94,1,26,2),(227,1978,92725949,1,27,3),(228,1990,262,1,28,4),(229,2001,80622,1,29,5),(230,2017,47883,1,30,6),(231,1993,3959225,1,31,7),(232,1987,4633,1,32,8),(233,1975,912,1,33,1),(234,1986,183,1,34,2),(235,1991,708340,1,35,3),(236,1983,2810,1,36,4),(237,2001,781,1,37,5),(238,2017,413,1,38,6),(239,1978,6523,1,39,7),(240,2007,503,1,40,8),(241,2014,91,1,41,1),(242,2013,14021489,1,42,2),(243,1975,363381879,1,43,3),(244,1979,902054,1,44,4),(245,1981,97,1,45,5),(246,1981,857,1,46,6),(247,2020,84,1,47,7),(248,1987,57,1,48,8),(249,2000,0,1,49,1),(250,1995,46341562,1,50,2),(251,1982,518030,1,1,3),(252,1997,5,1,2,4),(253,1984,0,1,3,5),(254,2001,0,1,4,6),(255,1990,9248,1,5,7),(256,1979,5950,1,6,8),(257,2011,244318,1,7,1),(258,1973,2314,1,8,2),(259,2015,7447800,1,9,3),(260,2008,148418,1,10,4),(261,1991,148,1,11,5),(262,1980,31,1,12,6),(263,1976,2,1,13,7),(264,1973,50816,1,14,8),(265,1975,685711858,1,15,1),(266,1981,45299,1,16,2),(267,2001,0,1,17,3),(268,1983,5,1,18,4),(269,2004,21094229,1,19,5),(270,2016,709702,1,20,6),(271,2001,82469546,1,21,7),(272,1998,8993,1,22,8),(273,1978,644835710,1,23,1),(274,2014,21417,1,24,2),(275,1973,387912,1,25,3),(276,1983,922,1,26,4),(277,1972,3339,1,27,5),(278,2000,748293769,1,28,6),(279,2015,341,1,29,7),(280,1990,63,1,30,8),(281,2010,916311592,1,31,1),(282,1993,18176488,1,32,2),(283,2000,58706,1,33,3),(284,2002,1195,1,34,4),(285,1995,97025868,1,35,5),(286,2000,69,1,36,6),(287,1993,29794,1,37,7),(288,1982,7,1,38,8),(289,2008,0,1,39,1),(290,1995,584287899,1,40,2),(291,2003,6992553,1,41,3),(292,2013,71375418,1,42,4),(293,1986,38,1,43,5),(294,1978,8824,1,44,6),(295,2009,128090,1,45,7),(296,1978,136,1,46,8),(297,2010,8,1,47,1),(298,1990,2526703,1,48,2),(299,1991,772433,1,49,3),(300,1984,730,1,50,4);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_certificate`
--

DROP TABLE IF EXISTS `birth_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_certificate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number` bigint NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `patronymic` varchar(45) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `location_city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `citizens` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_certificate`
--

LOCK TABLES `birth_certificate` WRITE;
/*!40000 ALTER TABLE `birth_certificate` DISABLE KEYS */;
INSERT INTO `birth_certificate` VALUES (1,18092,'Efrain','Rath','Swaniawski','M','Rashadport','ullam'),(2,0,'Flo','Hilll','Abernathy','F','South Tyler','voluptatibus'),(3,4,'Cristobal','Thompson','Gislason','F','East Santino','minima'),(4,178350739,'Efrain','Windler','Stark','M','Pfannerstillfort','provident'),(5,99976509,'Laron','Hayes','Goyette','M','Port Junius','aliquid'),(6,7,'Tara','Morissette','Bins','F','South Pearlineport','nesciunt'),(7,3,'Karianne','O\'Hara','O\'Hara','F','New Christina','aut'),(8,56,'Maida','Gorczany','Hudson','M','Hayesfurt','nam'),(9,92502,'Alvera','Graham','Predovic','M','Daxchester','eveniet'),(10,865030738,'Lafayette','Zemlak','Ledner','F','East Hershelport','repellendus'),(11,4772602,'Clarabelle','Wunsch','Koepp','F','New Aronland','nemo'),(12,1,'Lori','Parker','O\'Connell','M','South Carlee','eaque'),(13,85294,'Grover','Shanahan','Stoltenberg','F','West Tristian','voluptatem'),(14,962781,'Jamarcus','Zemlak','Breitenberg','M','New Demetrisland','et'),(15,292437,'Coralie','O\'Connell','Wehner','F','Kozeyview','ipsum'),(16,4191,'Vern','Wisozk','Rosenbaum','F','Crooksbury','ipsa'),(17,8735658,'Tommie','Nitzsche','Kemmer','M','Croninstad','delectus'),(18,728165918,'Brandyn','Swift','Wiegand','M','East Jakeborough','repellat'),(19,6,'Gabriel','Spencer','Kutch','M','Gleasonmouth','ratione'),(20,250,'Mose','Walker','Schuster','F','South Aubree','optio'),(21,52,'Toney','Mertz','Fisher','M','Candacestad','quae'),(22,111344215,'Coty','Hansen','Howell','F','West Noelia','et'),(23,6498,'Reid','Rath','Krajcik','M','Port Sierra','praesentium'),(24,38226,'Jeramy','Bednar','Hane','F','Murazikville','autem'),(25,68626019,'Savanna','Will','Bogisich','M','Kavonville','iusto'),(26,885,'Suzanne','Gottlieb','Lehner','F','Susanamouth','sed'),(27,6968726,'Carole','Kutch','Stiedemann','F','Hobartville','quia'),(28,406,'Glen','Strosin','Keeling','F','West Juliannechester','impedit'),(29,99431191,'Eugenia','Spencer','Heathcote','M','South Ward','fugit'),(30,106,'Alison','Weimann','Smith','F','Port Calista','quasi'),(31,98,'Leopold','Zieme','Kuhlman','F','East Loritown','sunt'),(32,96911,'Maureen','Corwin','Bailey','F','Francesville','sequi'),(33,8,'Adah','O\'Reilly','Wilkinson','F','Theoberg','consequuntur'),(34,4210,'Veronica','Gulgowski','Senger','F','Mustafaview','aut'),(35,45,'Eddie','Mosciski','Tremblay','M','West Florineborough','omnis'),(36,661259074,'Emmanuel','Bruen','Barrows','F','Port Kennith','fugit'),(37,85048815,'Trent','Schulist','Kiehn','F','Krajcikville','omnis'),(38,4166,'Wilmer','Torp','Dare','F','Hermanland','veniam'),(39,19,'Anastacio','Marks','Nicolas','F','East Marjory','sit'),(40,1479537,'Wyatt','Altenwerth','Ondricka','M','Spencerborough','consequatur'),(41,725672406,'Jonas','Gutkowski','Grady','M','West Brianport','laborum'),(42,33559,'Yadira','Gulgowski','McCullough','M','East Chelsie','dolor'),(43,7774,'Marvin','Treutel','Goodwin','M','Rosalindaville','alias'),(44,901758,'Alisha','Howell','Williamson','F','East Kristianstad','perspiciatis'),(45,8882,'Kenna','Hyatt','Douglas','M','Alenatown','magni'),(46,1029560,'Kira','Kerluke','Dooley','M','Lindgrenland','quae'),(47,83158,'April','Sipes','Thiel','M','Port Tracyhaven','et'),(48,95,'Reuben','Mills','Bechtelar','M','Floyton','rem'),(49,94954651,'Korey','Bashirian','VonRueden','M','Binsland','impedit'),(50,101733912,'Chaya','Hauck','Roberts','F','Vivianfurt','consectetur'),(51,18092,'Efrain','Rath','Swaniawski','M','Rashadport','Russian Federation'),(52,18092,'Efrain','Rath','Swaniawski','M','Rashadport','Russian Federation'),(53,18092,'Efrain','Rath','Swaniawski','M','Rashadport','Russian Federation'),(54,18092,'Efrain','Rath','Swaniawski','M','Rashadport',NULL),(55,18092,'Efrain','Rath','Swaniawski','M','New York','USA');
/*!40000 ALTER TABLE `birth_certificate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_citizens` BEFORE INSERT ON `birth_certificate` FOR EACH ROW BEGIN
	if new.location_city = 'Moscow' then
		set NEW.citizens = COALESCE(NEW.citizens, 'Russian Federation');
	end if;
	if new.location_city = 'Kiev' then
		set NEW.citizens = COALESCE(NEW.citizens, 'Ukraine');
	end if;
	if new.location_city = 'New York' then
		set NEW.citizens = COALESCE(NEW.citizens, 'USA');
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `citizen_age`
--

DROP TABLE IF EXISTS `citizen_age`;
/*!50001 DROP VIEW IF EXISTS `citizen_age`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `citizen_age` AS SELECT 
 1 AS `citizen`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `citizen_chip`
--

DROP TABLE IF EXISTS `citizen_chip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen_chip` (
  `id_chip` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Номер чипа гражданина',
  `passport_citizens_id` bigint NOT NULL COMMENT 'Пасспорт гражданина',
  `birth_certificate_id` bigint NOT NULL COMMENT 'Свидетельство о рождении гражданина',
  `citizen_profile_id` bigint NOT NULL COMMENT 'Профиль гражданина',
  PRIMARY KEY (`id_chip`,`passport_citizens_id`,`birth_certificate_id`,`citizen_profile_id`),
  KEY `fk_citizen_passport_citizens1_idx` (`passport_citizens_id`),
  KEY `fk_citizen_birth_certificate1_idx` (`birth_certificate_id`),
  KEY `fk_citizen_chip_citizen_profile1_idx` (`citizen_profile_id`),
  CONSTRAINT `fk_citizen_birth_certificate` FOREIGN KEY (`birth_certificate_id`) REFERENCES `birth_certificate` (`id`),
  CONSTRAINT `fk_citizen_chip_citizen_profile` FOREIGN KEY (`citizen_profile_id`) REFERENCES `citizen_profile` (`id`),
  CONSTRAINT `fk_citizen_passport_citizens` FOREIGN KEY (`passport_citizens_id`) REFERENCES `passport_citizens` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_chip`
--

LOCK TABLES `citizen_chip` WRITE;
/*!40000 ALTER TABLE `citizen_chip` DISABLE KEYS */;
INSERT INTO `citizen_chip` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10),(11,11,11,11),(12,12,12,12),(13,13,13,13),(14,14,14,14),(15,15,15,15),(16,16,16,16),(17,17,17,17),(18,18,18,18),(19,19,19,19),(20,20,20,20),(21,21,21,21),(22,22,22,22),(23,23,23,23),(24,24,24,24),(25,25,25,25),(26,26,26,26),(27,27,27,27),(28,28,28,28),(29,29,29,29),(30,30,30,30),(31,31,31,31),(32,32,32,32),(33,33,33,33),(34,34,34,34),(35,35,35,35),(36,36,36,36),(37,37,37,37),(38,38,38,38),(39,39,39,39),(40,40,40,40),(41,41,41,41),(42,42,42,42),(43,43,43,43),(44,44,44,44),(45,45,45,45),(46,46,46,46),(47,47,47,47),(48,48,48,48),(49,49,49,49),(50,50,50,50);
/*!40000 ALTER TABLE `citizen_chip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen_profile`
--

DROP TABLE IF EXISTS `citizen_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Номер профиля гражданина',
  `residence_address` varchar(255) DEFAULT NULL COMMENT 'Адресс прописки',
  `phone` int unsigned DEFAULT NULL COMMENT 'Номер телефона',
  `neuro_vision_marks_id` int NOT NULL COMMENT 'Визуальный профиль составленный нейросетью',
  `neuro_gait_marks_id` int NOT NULL COMMENT 'Прфиль анализа походки составленный нейросетью',
  `neuro_voice_marks_id` int NOT NULL COMMENT 'Анализ голоса составленный нейросетью',
  `tracking_id` int NOT NULL COMMENT 'Метка слежения за местоположением гражданина',
  `photo_citizens_id` bigint NOT NULL,
  PRIMARY KEY (`id`,`neuro_vision_marks_id`,`neuro_gait_marks_id`,`neuro_voice_marks_id`,`tracking_id`,`photo_citizens_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_citizen_profile_neuro_vision_marks1_idx` (`neuro_vision_marks_id`),
  KEY `fk_citizen_profile_neuro_gait_marks1_idx` (`neuro_gait_marks_id`),
  KEY `fk_citizen_profile_neuro_voice_marks1_idx` (`neuro_voice_marks_id`),
  KEY `fk_citizen_profile_tracking1_idx` (`tracking_id`),
  KEY `fk_citizen_profile_photo_citizens1_idx` (`photo_citizens_id`),
  CONSTRAINT `fk_citizen_profile_neuro_gait_marks1` FOREIGN KEY (`neuro_gait_marks_id`) REFERENCES `neuro_gait_marks` (`id`),
  CONSTRAINT `fk_citizen_profile_neuro_vision_marks1` FOREIGN KEY (`neuro_vision_marks_id`) REFERENCES `neuro_vision_marks` (`id`),
  CONSTRAINT `fk_citizen_profile_neuro_voice_marks1` FOREIGN KEY (`neuro_voice_marks_id`) REFERENCES `neuro_voice_marks` (`id`),
  CONSTRAINT `fk_citizen_profile_photo_citizens1` FOREIGN KEY (`photo_citizens_id`) REFERENCES `photo_citizens` (`id`),
  CONSTRAINT `fk_citizen_profile_tracking1` FOREIGN KEY (`tracking_id`) REFERENCES `tracking` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_profile`
--

LOCK TABLES `citizen_profile` WRITE;
/*!40000 ALTER TABLE `citizen_profile` DISABLE KEYS */;
INSERT INTO `citizen_profile` VALUES (1,'347 Hilll Parks Suite 513\nHackettstad, WY 54424',1,1,1,1,1,1),(2,'465 Oberbrunner Inlet\nNorth Lonzomouth, MN 63442',128547,2,2,2,2,2),(3,'225 Elbert Meadow\nEstevanville, MI 44041-7755',418004,3,3,3,3,3),(4,'603 Damien Drives\nDaremouth, IA 68232-4632',745,4,4,4,4,4),(5,'523 Hessel Village Suite 445\nPort Rosemaryberg, DE 01618',4294967295,5,5,5,5,5),(6,'571 Ariane Lake Apt. 233\nNorth Kennith, MS 80838-9916',1,6,6,6,6,6),(7,'39756 Breitenberg Branch Apt. 364\nIgnacioland, VT 34646',340,7,7,7,7,7),(8,'770 Rempel Circles Apt. 149\nEast Dedricville, OR 64751',1,8,8,8,8,8),(9,'2700 Mya Track Apt. 880\nLurlinefort, NJ 12882-0754',964,9,9,9,9,9),(10,'1099 Vernon Square\nNew Sydnie, OH 44553-4046',45,10,10,10,10,10),(11,'03015 Keeling Pass\nEnolachester, OR 19074-6625',99176,11,11,11,11,11),(12,'64603 Hamill Ville Suite 020\nEbonyview, IN 73521-0661',86,12,12,12,12,12),(13,'12452 Lesly Locks\nElvietown, KY 83452-0239',0,13,13,13,13,13),(14,'79425 Eloisa Ferry Apt. 599\nAufderharview, WA 57240',888031,14,14,14,14,14),(15,'798 Jillian Knoll Apt. 116\nEast Bret, MA 73346-7032',264,15,15,15,15,15),(16,'64819 Jaskolski Corners Apt. 261\nNorth Jasperland, DC 40065',361,16,16,16,16,16),(17,'31048 Hassie Shore Suite 031\nLangland, GA 92507',1,17,17,17,17,17),(18,'450 Funk Mount Apt. 076\nSouth Kayleeville, IA 81695-6118',0,18,18,18,18,18),(19,'76392 Jimmy Junctions\nSchowalterhaven, TN 94893-3029',1,19,19,19,19,19),(20,'613 Deckow Port\nNew Horace, OK 52028-4512',1,20,20,20,20,20),(21,'8169 Reagan Common Suite 961\nLake Berylfort, IN 37689-7236',887050,21,21,21,21,21),(22,'59640 Osinski Village\nSouth Hannah, DE 66961-2467',363266,22,22,22,22,22),(23,'780 Leuschke Ways Suite 172\nJakubowskichester, DC 54208',0,23,23,23,23,23),(24,'8199 Lindgren Port\nBlickmouth, NH 23879-4001',1,24,24,24,24,24),(25,'51493 Murphy Ranch\nMillsville, PA 40109',83,25,25,25,25,25),(26,'677 Shields Brook\nGoldnerbury, PA 32017',439,26,26,26,26,26),(27,'94939 Trever Plaza Suite 866\nEast Minnie, FL 11560-8400',99,27,27,27,27,27),(28,'5470 Ullrich Turnpike\nBraedenchester, IL 33870-5863',0,28,28,28,28,28),(29,'499 Christiansen Crossroad\nWalshtown, NC 45821',52,29,29,29,29,29),(30,'377 Kuhic Burg\nHegmannton, SD 26149-9049',1,30,30,30,30,30),(31,'7631 Kuphal Pike Suite 626\nLake Coltenfort, NM 38216-0970',340,31,31,31,31,31),(32,'899 O\'Connell Ports\nNew Alvera, CT 33673',0,32,32,32,32,32),(33,'67161 Kassulke Drives\nNew Mariellestad, AZ 93765',731895,33,33,33,33,33),(34,'4575 Lorenza Club Suite 317\nSimport, OR 74490',0,34,34,34,34,34),(35,'0064 McKenzie Hills\nLake Jonathon, IN 95790-4247',344759,35,35,35,35,35),(36,'123 Rodrick Estates\nNorth Ericka, MD 10159-3136',537,36,36,36,36,36),(37,'437 Wilson Island Suite 794\nLake Karli, GA 57801',343,37,37,37,37,37),(38,'600 Libbie Freeway Suite 179\nWest Nasirfurt, ND 65811',0,38,38,38,38,38),(39,'1394 Alivia Creek Apt. 228\nNorth Chasity, PA 85115',0,39,39,39,39,39),(40,'406 Vandervort Trail Apt. 574\nAlexieville, KS 50978',95,40,40,40,40,40),(41,'3674 Antone Neck Suite 557\nLaneyhaven, AL 15549-4112',0,41,41,41,41,41),(42,'29033 McClure Flat\nJaneside, AZ 31191',97,42,42,42,42,42),(43,'39687 Heller Harbors Suite 346\nCorkeryland, CA 32701-5563',272300,43,43,43,43,43),(44,'420 Scarlett Shoal Apt. 357\nVandervortton, TX 72130',1,44,44,44,44,44),(45,'33818 Emmerich Squares Suite 756\nRansombury, PA 14823-2360',1,45,45,45,45,45),(46,'6962 Witting Fields\nEast Karina, RI 45279-6374',1,46,46,46,46,46),(47,'4141 Kuhn Crest\nLake Quintonmouth, WY 39046-5957',0,47,47,47,47,47),(48,'118 Emmett Wells\nHuelshaven, WV 19704',1,48,48,48,48,48),(49,'0892 Caitlyn Loaf Suite 485\nMichaleborough, SC 79425-8407',74,49,49,49,49,49),(50,'2353 Tyrel Mount Suite 310\nEast Devon, ND 65879-8324',42,50,50,50,50,50);
/*!40000 ALTER TABLE `citizen_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_type`
--

DROP TABLE IF EXISTS `currency_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` enum('Russian') NOT NULL COMMENT 'Страна валюты',
  `type` enum('RUR') NOT NULL COMMENT 'Тип валюты',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_UNIQUE` (`type`),
  UNIQUE KEY `contry_UNIQUE` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_type`
--

LOCK TABLES `currency_type` WRITE;
/*!40000 ALTER TABLE `currency_type` DISABLE KEYS */;
INSERT INTO `currency_type` VALUES (1,'Russian','RUR');
/*!40000 ALTER TABLE `currency_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finger_prints`
--

DROP TABLE IF EXISTS `finger_prints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finger_prints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_file` varchar(45) DEFAULT NULL COMMENT 'Ссылка на фаил ',
  `type_finger_id` int NOT NULL COMMENT 'Тип отпечатка',
  `citizen_profile_id` bigint NOT NULL COMMENT 'Кому из граждан пренадлежит отпечаток',
  PRIMARY KEY (`id`,`type_finger_id`,`citizen_profile_id`),
  KEY `fk_finger_prints_type_finger1_idx` (`type_finger_id`),
  KEY `fk_finger_prints_citizen_profile1_idx` (`citizen_profile_id`),
  CONSTRAINT `fk_finger_prints_citizen_profile1` FOREIGN KEY (`citizen_profile_id`) REFERENCES `citizen_profile` (`id`),
  CONSTRAINT `fk_finger_prints_type_finger1` FOREIGN KEY (`type_finger_id`) REFERENCES `type_finger` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finger_prints`
--

LOCK TABLES `finger_prints` WRITE;
/*!40000 ALTER TABLE `finger_prints` DISABLE KEYS */;
INSERT INTO `finger_prints` VALUES (1,'dolorem',1,1),(2,'sequi',2,2),(3,'cumque',3,3),(4,'atque',4,4),(5,'vel',5,5),(6,'ab',6,6),(7,'maxime',7,7),(8,'id',8,8),(9,'eligendi',9,9),(10,'voluptate',10,10),(11,'ullam',1,11),(12,'tenetur',2,12),(13,'soluta',3,13),(14,'dignissimos',4,14),(15,'necessitatibus',5,15),(16,'est',6,16),(17,'eaque',7,17),(18,'qui',8,18),(19,'quod',9,19),(20,'dolores',10,20),(21,'provident',1,21),(22,'molestiae',2,22),(23,'doloremque',3,23),(24,'ipsa',4,24),(25,'libero',5,25),(26,'tempore',6,26),(27,'veritatis',7,27),(28,'alias',8,28),(29,'a',9,29),(30,'dolor',10,30),(31,'unde',1,31),(32,'incidunt',2,32),(33,'sit',3,33),(34,'quia',4,34),(35,'qui',5,35),(36,'sint',6,36),(37,'et',7,37),(38,'hic',8,38),(39,'eius',9,39),(40,'qui',10,40),(41,'molestiae',1,41),(42,'pariatur',2,42),(43,'sed',3,43),(44,'eaque',4,44),(45,'at',5,45),(46,'et',6,46),(47,'consequatur',7,47),(48,'officiis',8,48),(49,'quia',9,49),(50,'ipsam',10,50);
/*!40000 ALTER TABLE `finger_prints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `location_for_trackers`
--

DROP TABLE IF EXISTS `location_for_trackers`;
/*!50001 DROP VIEW IF EXISTS `location_for_trackers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `location_for_trackers` AS SELECT 
 1 AS `tracker_number`,
 1 AS `city`,
 1 AS `district`,
 1 AS `house`,
 1 AS `street`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `locations_city_id` int NOT NULL,
  `locations_district_id` int NOT NULL,
  `locations_street_id` int NOT NULL,
  `locations_house_id` int NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Айди зоны',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_locations_locations_city1_idx` (`locations_city_id`),
  KEY `fk_locations_locations_district1_idx` (`locations_district_id`),
  KEY `fk_locations_locations_street1_idx` (`locations_street_id`),
  KEY `fk_locations_locations_house1_idx` (`locations_house_id`),
  CONSTRAINT `fk_locations_locations_city1` FOREIGN KEY (`locations_city_id`) REFERENCES `locations_city` (`id`),
  CONSTRAINT `fk_locations_locations_district1` FOREIGN KEY (`locations_district_id`) REFERENCES `locations_district` (`id`),
  CONSTRAINT `fk_locations_locations_house1` FOREIGN KEY (`locations_house_id`) REFERENCES `locations_house` (`id`),
  CONSTRAINT `fk_locations_locations_street1` FOREIGN KEY (`locations_street_id`) REFERENCES `locations_street` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,1,1,1,1),(2,2,2,2,2),(3,3,3,3,3),(4,4,4,4,4),(5,5,5,5,5),(6,6,6,6,6),(7,7,7,7,7),(8,8,8,8,8),(9,9,9,9,9),(10,10,10,10,10),(11,11,11,11,11),(12,12,12,12,12),(13,13,13,13,13),(14,14,14,14,14),(15,15,15,15,15),(16,16,16,16,16),(17,17,17,17,17),(18,18,18,18,18),(19,19,19,19,19),(20,20,20,20,20),(1,1,21,1,21),(2,2,22,2,22),(3,3,23,3,23),(4,4,24,4,24),(5,5,25,5,25),(6,6,26,6,26),(7,7,27,7,27),(8,8,28,8,28),(9,9,29,9,29),(10,10,30,10,30),(11,11,31,11,31),(12,12,32,12,32),(13,13,33,13,33),(14,14,34,14,34),(15,15,35,15,35),(16,16,36,16,36),(17,17,37,17,37),(18,18,38,18,38),(19,19,39,19,39),(20,20,40,20,40),(1,1,41,1,41),(2,2,42,2,42),(3,3,43,3,43),(4,4,44,4,44),(5,5,45,5,45),(6,6,46,6,46),(7,7,47,7,47),(8,8,48,8,48),(9,9,49,9,49),(10,10,50,10,50);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_city`
--

DROP TABLE IF EXISTS `locations_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ctity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_city`
--

LOCK TABLES `locations_city` WRITE;
/*!40000 ALTER TABLE `locations_city` DISABLE KEYS */;
INSERT INTO `locations_city` VALUES (1,'Port Joelleshire'),(2,'Kirstinville'),(3,'Schimmelfurt'),(4,'South Shawna'),(5,'East Otha'),(6,'Howellberg'),(7,'Zboncakshire'),(8,'Rathtown'),(9,'Kristinberg'),(10,'Port Braedenton'),(11,'Garnetview'),(12,'Leuschkemouth'),(13,'Ashlynnland'),(14,'Arneland'),(15,'Port Alexanderborough'),(16,'East Janick'),(17,'Boganview'),(18,'Hegmannburgh'),(19,'Meaganside'),(20,'South Darrelville'),(21,'Port Joelleshire'),(22,'Kirstinville'),(23,'Schimmelfurt'),(24,'South Shawna'),(25,'East Otha'),(26,'Howellberg'),(27,'Zboncakshire'),(28,'Rathtown'),(29,'Kristinberg'),(30,'Port Braedenton'),(31,'Garnetview'),(32,'Leuschkemouth'),(33,'Ashlynnland'),(34,'Arneland'),(35,'Port Alexanderborough'),(36,'East Janick'),(37,'Boganview'),(38,'Hegmannburgh'),(39,'Meaganside'),(40,'South Darrelville'),(41,'Garnetview'),(42,'Leuschkemouth'),(43,'Ashlynnland'),(44,'Arneland'),(45,'Port Alexanderborough'),(46,'East Janick'),(47,'Boganview'),(48,'Hegmannburgh'),(49,'Meaganside'),(50,'South Darrelville');
/*!40000 ALTER TABLE `locations_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_district`
--

DROP TABLE IF EXISTS `locations_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations_district` (
  `id` int NOT NULL AUTO_INCREMENT,
  `district` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_district`
--

LOCK TABLES `locations_district` WRITE;
/*!40000 ALTER TABLE `locations_district` DISABLE KEYS */;
INSERT INTO `locations_district` VALUES (1,'New'),(2,'Port'),(3,'Lake'),(4,'South'),(5,'Lake'),(6,'Port'),(7,'Port'),(8,'South'),(9,'East'),(10,'South'),(11,'Port'),(12,'New'),(13,'North'),(14,'South'),(15,'New'),(16,'North'),(17,'East'),(18,'East'),(19,'Port'),(20,'South'),(21,'New'),(22,'Port'),(23,'Lake'),(24,'South'),(25,'Lake'),(26,'Port'),(27,'Port'),(28,'South'),(29,'East'),(30,'South'),(31,'Port'),(32,'New'),(33,'North'),(34,'South'),(35,'New'),(36,'North'),(37,'East'),(38,'East'),(39,'Port'),(40,'South'),(41,'South'),(42,'New'),(43,'North'),(44,'South'),(45,'New'),(46,'North'),(47,'East'),(48,'East'),(49,'Port'),(50,'South');
/*!40000 ALTER TABLE `locations_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_house`
--

DROP TABLE IF EXISTS `locations_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations_house` (
  `id` int NOT NULL AUTO_INCREMENT,
  `house` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_house`
--

LOCK TABLES `locations_house` WRITE;
/*!40000 ALTER TABLE `locations_house` DISABLE KEYS */;
INSERT INTO `locations_house` VALUES (1,8264),(2,71387),(3,60633),(4,9730),(5,23059),(6,1380),(7,33),(8,613),(9,34488),(10,45),(11,556),(12,59614),(13,3440),(14,7826),(15,4542),(16,22159),(17,162),(18,608),(19,550),(20,2110),(21,8264),(22,71387),(23,60633),(24,9730),(25,23059),(26,1380),(27,33),(28,613),(29,34488),(30,45),(31,556),(32,59614),(33,3440),(34,7826),(35,4542),(36,22159),(37,162),(38,608),(39,550),(40,2110),(41,45),(42,59614),(43,3440),(44,7826),(45,4542),(46,22159),(47,162),(48,608),(49,550),(50,2110);
/*!40000 ALTER TABLE `locations_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_street`
--

DROP TABLE IF EXISTS `locations_street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations_street` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_street`
--

LOCK TABLES `locations_street` WRITE;
/*!40000 ALTER TABLE `locations_street` DISABLE KEYS */;
INSERT INTO `locations_street` VALUES (1,'Morar Track'),(2,'Brekke Valley'),(3,'Clifford Vista'),(4,'Fritsch Canyon'),(5,'Micah Shoal'),(6,'Tromp Flat'),(7,'Krista Manor'),(8,'Lind Stravenue'),(9,'Cornelius Tunnel'),(10,'Emard Street'),(11,'Harry Summit'),(12,'Liza Hill'),(13,'Hickle Rapid'),(14,'Novella Well'),(15,'Anne Rest'),(16,'Donna Port'),(17,'Tatum Stream'),(18,'Delfina Glen'),(19,'Alexzander Run'),(20,'Ledner Club'),(21,'Nikita Island'),(22,'Farrell Mews'),(23,'Stark Knoll'),(24,'Rick Haven'),(25,'Deontae Knoll'),(26,'VonRueden Glens'),(27,'Champlin Forest'),(28,'Danika Lane'),(29,'Dickens Station'),(30,'Jacky Squares'),(31,'Tromp Via'),(32,'Millie Glens'),(33,'Osinski Falls'),(34,'Reynolds Summit'),(35,'Norris Turnpike'),(36,'Crona Cliffs'),(37,'Jenkins Ville'),(38,'Margarett Street'),(39,'Hector Fields'),(40,'Mills Spur'),(41,'Jeremy Cliff'),(42,'Wyman Loop'),(43,'Daniel Route'),(44,'Bashirian Dale'),(45,'Pedro Forge'),(46,'Kohler Forks'),(47,'Krajcik Lane'),(48,'Kuphal Spring'),(49,'Brown Place'),(50,'Hoeger Expressway');
/*!40000 ALTER TABLE `locations_street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naminal`
--

DROP TABLE IF EXISTS `naminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `naminal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `naminal` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `naminal_UNIQUE` (`naminal`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naminal`
--

LOCK TABLES `naminal` WRITE;
/*!40000 ALTER TABLE `naminal` DISABLE KEYS */;
INSERT INTO `naminal` VALUES (1,10),(3,50),(4,100),(7,200),(8,500),(6,1000),(2,2000),(5,5000);
/*!40000 ALTER TABLE `naminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neuro_gait_marks`
--

DROP TABLE IF EXISTS `neuro_gait_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neuro_gait_marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `signature_link` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neuro_gait_marks`
--

LOCK TABLES `neuro_gait_marks` WRITE;
/*!40000 ALTER TABLE `neuro_gait_marks` DISABLE KEYS */;
INSERT INTO `neuro_gait_marks` VALUES (1,'http://swiftledner.biz/','1987-09-09 15:14:13','2015-10-04 03:19:44'),(2,'http://fay.com/','1974-01-28 00:53:44','2015-06-13 01:37:38'),(3,'http://www.greenholt.biz/','1984-07-06 13:17:58','2020-01-07 10:32:47'),(4,'http://www.feil.com/','1973-08-07 03:42:23','2015-10-15 10:38:18'),(5,'http://www.heaney.biz/','1993-03-24 00:39:35','2000-03-28 20:09:54'),(6,'http://rogahn.com/','1996-09-03 18:55:43','2007-04-05 01:40:54'),(7,'http://nitzsche.info/','2005-10-25 04:56:43','2000-05-08 22:03:54'),(8,'http://stantontoy.com/','2014-03-19 17:40:29','2002-11-12 03:51:14'),(9,'http://grady.info/','1991-03-19 21:31:40','2012-01-24 04:11:02'),(10,'http://www.bergstrom.biz/','1987-01-26 07:40:32','1976-09-21 14:29:18'),(11,'http://volkman.com/','2005-08-13 02:31:57','2018-03-11 08:39:22'),(12,'http://www.nitzschesteuber.biz/','2007-10-18 12:00:11','2006-06-17 01:52:19'),(13,'http://parisian.info/','2004-10-19 08:58:44','1994-09-02 04:45:26'),(14,'http://gleasonrohan.com/','2016-10-01 01:17:03','1996-01-11 16:36:24'),(15,'http://powlowskimacejkovic.com/','2000-11-18 14:19:58','2008-04-26 05:13:10'),(16,'http://wizabergstrom.com/','2017-09-30 18:13:31','1996-10-30 11:12:22'),(17,'http://schinner.com/','1973-08-22 09:21:26','1986-12-19 22:09:49'),(18,'http://www.mraztrantow.com/','1972-01-15 18:50:45','1981-08-18 12:53:20'),(19,'http://www.ullrich.com/','2018-06-12 19:32:47','1978-11-08 19:54:39'),(20,'http://pfeffer.com/','2004-08-11 14:03:53','1983-04-09 06:52:01'),(21,'http://brakus.com/','1986-04-29 01:36:56','2014-05-13 20:01:25'),(22,'http://www.kshlerin.info/','2020-12-30 17:35:54','2019-06-26 03:49:00'),(23,'http://www.botsford.info/','2002-01-14 14:32:18','2012-10-15 02:14:24'),(24,'http://wolffcassin.net/','2012-06-30 10:49:43','1999-02-05 08:45:21'),(25,'http://strosin.com/','1998-09-16 01:50:57','2002-06-06 23:46:36'),(26,'http://hauck.com/','2015-06-12 04:47:18','1992-02-11 19:07:56'),(27,'http://halvorson.com/','1998-11-18 01:09:40','1980-11-12 01:34:33'),(28,'http://www.connelly.com/','1991-03-24 12:31:29','2002-01-14 06:16:13'),(29,'http://schillerjast.com/','1987-07-19 16:09:18','2004-07-12 02:41:10'),(30,'http://www.sawayn.com/','1984-01-11 14:30:27','1977-05-20 23:25:16'),(31,'http://www.grant.net/','1992-08-15 17:43:50','2008-04-03 21:13:30'),(32,'http://terryferry.biz/','1973-08-29 14:31:52','1993-10-24 00:32:18'),(33,'http://www.willms.com/','1981-01-22 04:59:49','2003-11-29 08:37:30'),(34,'http://lebsack.com/','2015-07-23 11:05:17','2008-04-16 11:57:41'),(35,'http://klocko.com/','2008-03-12 06:19:41','1983-09-01 22:51:23'),(36,'http://altenwerth.com/','1995-10-18 00:34:54','2008-08-31 22:10:26'),(37,'http://hayeshessel.com/','2019-01-25 01:29:29','2001-08-18 20:39:13'),(38,'http://maggiokihn.com/','1977-01-03 05:03:36','1982-04-09 04:21:56'),(39,'http://cummeratamohr.com/','2017-01-04 14:04:58','1971-05-06 06:53:01'),(40,'http://www.trantowcasper.com/','1994-09-01 16:03:13','2005-05-11 10:46:47'),(41,'http://www.littel.info/','2014-06-28 01:05:48','1978-03-16 19:41:59'),(42,'http://www.fisher.com/','2001-07-28 05:52:25','1995-01-23 03:28:41'),(43,'http://www.flatleykris.com/','1978-07-10 21:38:07','1984-10-25 02:00:50'),(44,'http://russel.org/','1991-03-20 12:28:39','2000-07-03 11:24:51'),(45,'http://www.strackebins.com/','1973-06-07 05:27:03','2011-10-24 09:47:02'),(46,'http://www.jones.com/','2012-06-23 14:38:49','1974-07-03 13:10:10'),(47,'http://www.boganflatley.info/','1971-03-04 17:43:04','2001-08-25 01:58:39'),(48,'http://www.hoeger.com/','2002-03-15 04:51:37','2014-09-05 18:06:59'),(49,'http://www.wehner.com/','1979-11-30 11:23:15','1974-11-21 16:30:45'),(50,'http://dach.biz/','1978-12-20 01:39:34','1977-05-07 15:56:17');
/*!40000 ALTER TABLE `neuro_gait_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neuro_vision_marks`
--

DROP TABLE IF EXISTS `neuro_vision_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neuro_vision_marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `signature_link` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neuro_vision_marks`
--

LOCK TABLES `neuro_vision_marks` WRITE;
/*!40000 ALTER TABLE `neuro_vision_marks` DISABLE KEYS */;
INSERT INTO `neuro_vision_marks` VALUES (1,'http://stiedemann.com/','1993-04-17 06:57:46','2009-09-21 13:19:55'),(2,'http://collier.net/','1987-01-18 20:59:43','2004-10-17 03:46:35'),(3,'http://hamill.com/','1974-02-26 04:24:55','1987-08-04 11:06:59'),(4,'http://auer.org/','1999-04-10 06:38:29','2004-10-14 17:09:58'),(5,'http://stiedemann.info/','2001-10-25 19:40:58','2002-07-27 13:40:21'),(6,'http://www.breitenbergleuschke.net/','1988-11-01 04:18:42','1988-03-11 05:09:13'),(7,'http://von.com/','1979-05-08 17:01:27','2004-03-06 03:24:34'),(8,'http://koepp.com/','2017-10-31 02:09:15','2019-01-02 23:29:14'),(9,'http://www.king.net/','1993-02-25 01:45:45','1986-09-04 13:47:36'),(10,'http://www.maggio.com/','2007-05-16 03:54:02','1987-09-18 18:55:21'),(11,'http://www.hoegerlowe.com/','1971-11-25 01:55:28','1974-12-21 21:13:38'),(12,'http://ratke.com/','1985-10-05 05:16:11','1978-11-21 22:25:08'),(13,'http://www.yundt.com/','1981-10-30 21:16:31','1977-05-11 10:25:51'),(14,'http://www.uptonterry.info/','2007-03-25 03:50:19','2007-01-06 07:25:27'),(15,'http://kilbackziemann.com/','2003-02-11 12:33:36','1978-12-02 09:39:46'),(16,'http://www.daugherty.info/','1980-04-27 11:29:15','1970-11-14 11:11:28'),(17,'http://www.pfannerstill.com/','1993-08-19 15:46:38','1984-04-17 21:44:49'),(18,'http://www.bechtelarlittel.org/','1992-11-08 05:10:17','1972-04-25 20:48:58'),(19,'http://hahn.org/','1987-11-17 05:25:30','1971-07-07 22:13:25'),(20,'http://www.adamsheaney.com/','2001-07-30 04:26:13','1982-10-04 23:39:28'),(21,'http://www.oberbrunner.info/','1992-03-24 13:06:21','1999-09-15 19:01:09'),(22,'http://www.mayerpacocha.com/','1989-05-29 21:33:42','1979-12-02 23:06:24'),(23,'http://cassinwisoky.net/','1974-07-13 01:32:30','1998-10-05 05:24:03'),(24,'http://hirtheprohaska.biz/','1999-01-28 18:33:10','1971-03-31 06:19:06'),(25,'http://www.walter.org/','1989-03-11 22:36:10','2001-11-10 06:07:44'),(26,'http://www.koss.com/','1993-02-18 00:45:43','1971-12-06 16:17:54'),(27,'http://www.bashirian.com/','1981-03-21 17:00:26','1995-12-15 02:59:32'),(28,'http://www.tremblayhuel.com/','1988-10-24 20:58:17','2017-10-21 07:05:39'),(29,'http://ryan.com/','2013-09-02 11:35:16','2021-03-01 02:55:47'),(30,'http://schillerrempel.org/','2008-05-15 09:01:04','1987-09-18 20:53:22'),(31,'http://goyetterempel.org/','1980-02-20 10:55:04','2012-11-21 19:37:03'),(32,'http://www.wilkinson.com/','1999-01-22 09:36:19','2003-07-11 00:59:51'),(33,'http://will.org/','1981-10-25 22:34:26','1989-12-30 06:19:36'),(34,'http://eichmannsimonis.com/','2001-09-22 17:41:25','2010-09-16 15:43:03'),(35,'http://rohan.biz/','1974-09-02 16:49:09','2017-10-16 20:45:57'),(36,'http://www.moorecasper.com/','1990-09-12 23:01:40','1988-01-25 23:02:21'),(37,'http://kuvalis.com/','1971-04-09 14:35:19','2017-07-10 09:17:50'),(38,'http://kunde.com/','1977-06-02 10:48:52','1996-05-23 04:01:25'),(39,'http://bayer.com/','2006-06-13 18:00:05','1983-03-02 04:31:36'),(40,'http://www.oreilly.com/','1994-11-05 00:33:10','2001-02-05 10:52:43'),(41,'http://gulgowski.com/','1997-03-02 15:45:06','2009-10-16 21:55:21'),(42,'http://www.altenwerthgrant.biz/','1986-05-20 10:37:52','2000-07-15 07:24:54'),(43,'http://www.carter.com/','1999-01-23 03:09:12','2009-07-23 18:36:16'),(44,'http://www.pouros.com/','1986-11-22 19:24:29','1978-10-21 18:38:25'),(45,'http://daniel.info/','2019-02-13 21:42:04','2007-11-13 00:27:31'),(46,'http://www.zboncak.net/','2016-09-16 22:36:36','2012-03-30 05:37:27'),(47,'http://www.gleason.info/','1977-01-18 03:48:13','1975-07-27 02:00:10'),(48,'http://cartergoodwin.com/','2015-02-03 03:30:08','1994-04-06 12:00:41'),(49,'http://donnellykshlerin.com/','2003-07-14 03:43:06','1987-08-13 16:34:47'),(50,'http://swiftrippin.org/','1982-10-15 21:35:08','2011-03-05 07:54:22');
/*!40000 ALTER TABLE `neuro_vision_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neuro_voice_marks`
--

DROP TABLE IF EXISTS `neuro_voice_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neuro_voice_marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `signature_link` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neuro_voice_marks`
--

LOCK TABLES `neuro_voice_marks` WRITE;
/*!40000 ALTER TABLE `neuro_voice_marks` DISABLE KEYS */;
INSERT INTO `neuro_voice_marks` VALUES (1,'http://www.colelebsack.info/','1975-08-03 13:21:22','2014-12-15 08:11:00'),(2,'http://moore.com/','1998-11-04 23:30:25','1990-12-07 17:11:44'),(3,'http://www.zemlak.com/','2009-08-17 17:24:51','1979-10-12 04:56:27'),(4,'http://www.yost.biz/','2001-03-18 11:00:28','1972-12-13 23:37:08'),(5,'http://www.deckow.biz/','1995-05-21 05:02:57','2004-06-01 07:40:09'),(6,'http://stantondare.org/','1989-05-14 10:50:21','2015-05-17 14:03:13'),(7,'http://www.casperhand.net/','1973-10-26 15:59:49','1982-02-21 22:02:00'),(8,'http://swaniawski.org/','1991-07-09 05:43:23','1980-03-15 15:25:56'),(9,'http://www.leffler.com/','2007-05-24 17:08:56','1988-05-17 03:31:20'),(10,'http://www.tillmankris.com/','2001-09-25 03:28:11','2009-03-19 20:14:15'),(11,'http://reichel.com/','1982-12-29 14:29:56','1994-08-07 22:00:13'),(12,'http://jerde.com/','2018-09-01 16:32:35','2016-05-04 11:58:54'),(13,'http://www.legros.com/','1975-08-21 08:39:46','1980-12-08 02:43:43'),(14,'http://nicolasoconnell.org/','2004-04-01 15:52:17','2001-04-05 02:48:25'),(15,'http://hintzokon.biz/','2020-08-07 19:54:12','2014-03-06 07:50:37'),(16,'http://www.trantow.info/','2004-07-27 14:12:09','2020-07-24 06:16:33'),(17,'http://kreiger.biz/','1984-05-16 08:50:45','2004-01-23 07:34:01'),(18,'http://adams.biz/','2015-01-04 14:17:39','1980-06-28 03:20:40'),(19,'http://www.gutmann.com/','1970-01-07 19:08:54','1991-09-08 07:23:45'),(20,'http://www.ullrich.com/','1997-02-06 16:17:23','1995-05-22 00:05:26'),(21,'http://willms.com/','2014-01-06 22:53:36','2009-12-28 14:52:18'),(22,'http://marquardtframi.net/','2009-08-20 04:17:51','1978-07-22 04:53:35'),(23,'http://herzog.info/','1999-09-27 11:50:41','1983-07-10 10:45:50'),(24,'http://friesenwalker.com/','1978-06-30 19:36:44','2016-11-06 08:56:24'),(25,'http://www.kuvalis.info/','1983-12-03 17:31:48','1980-10-08 22:25:50'),(26,'http://hartmann.org/','2017-10-01 22:00:48','2001-12-03 20:41:43'),(27,'http://abshire.com/','1986-10-15 05:27:50','1995-10-31 06:48:05'),(28,'http://wyman.info/','1978-06-16 03:22:57','1981-07-24 03:17:00'),(29,'http://www.ziemannkub.com/','1983-09-02 10:22:33','2012-01-11 14:57:01'),(30,'http://www.price.com/','1983-08-18 14:35:20','2005-07-06 19:20:48'),(31,'http://waterszieme.org/','2003-02-26 01:40:04','1981-05-18 09:23:27'),(32,'http://mclaughlin.net/','1997-07-20 13:37:28','1981-06-16 09:51:49'),(33,'http://hartmannmurazik.net/','1997-09-30 18:29:24','2011-03-26 23:51:02'),(34,'http://goldner.com/','2004-12-26 00:32:56','2012-05-01 03:20:20'),(35,'http://www.keeling.biz/','1986-11-17 10:51:34','1979-09-30 17:40:47'),(36,'http://www.lueilwitz.com/','2001-05-20 19:50:11','1975-10-30 10:39:26'),(37,'http://www.ernser.com/','1976-10-04 08:42:42','1980-02-14 20:42:40'),(38,'http://kihn.com/','2005-10-20 02:35:45','2014-05-15 22:21:57'),(39,'http://www.heidenreich.com/','2015-08-23 01:41:35','2004-10-30 15:36:15'),(40,'http://www.carrollleuschke.com/','2002-07-10 03:08:30','1975-04-26 14:22:19'),(41,'http://sawayn.com/','2004-02-25 07:18:24','1979-07-19 03:52:59'),(42,'http://www.lesch.com/','1977-01-22 02:10:25','2016-10-28 22:18:09'),(43,'http://www.uptonschulist.com/','1993-09-09 01:00:49','2003-09-24 07:02:12'),(44,'http://abshirepowlowski.com/','1995-01-18 05:07:19','2017-11-30 19:06:06'),(45,'http://www.rennerkoelpin.com/','1970-11-13 13:05:43','2018-01-09 14:58:48'),(46,'http://barrowswilderman.net/','1979-07-24 03:44:41','2011-01-21 01:52:19'),(47,'http://www.cummings.com/','1984-10-20 01:01:08','1976-11-24 17:23:20'),(48,'http://www.fisher.net/','1995-12-03 07:51:47','1972-06-26 00:02:35'),(49,'http://www.rowe.com/','2019-05-05 15:57:27','1999-07-05 22:23:45'),(50,'http://larkin.info/','2009-09-20 03:25:09','1989-11-04 19:56:06');
/*!40000 ALTER TABLE `neuro_voice_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offenses_list`
--

DROP TABLE IF EXISTS `offenses_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offenses_list` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Номер дела правонарушителя',
  `act` int DEFAULT NULL COMMENT 'Статья по которой судили',
  `describe` text COMMENT 'Описание правонарушения',
  `citizen_profile_id` bigint NOT NULL COMMENT 'Совершивший правонарушение',
  PRIMARY KEY (`id`,`citizen_profile_id`),
  UNIQUE KEY `act_UNIQUE` (`act`),
  KEY `fk_offenses_list_citizen_profile1_idx` (`citizen_profile_id`),
  CONSTRAINT `fk_offenses_list_citizen_profile1` FOREIGN KEY (`citizen_profile_id`) REFERENCES `citizen_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offenses_list`
--

LOCK TABLES `offenses_list` WRITE;
/*!40000 ALTER TABLE `offenses_list` DISABLE KEYS */;
INSERT INTO `offenses_list` VALUES (1,4093,'Assumenda nisi sunt accusantium. Quos cupiditate eaque ut aut. Quia esse velit consectetur consequatur exercitationem rem ex voluptates.',1),(2,256747,'Et natus beatae ea aut dolores minus rem. Autem sed quod illum explicabo et itaque aut. Quis temporibus animi error eum. Provident soluta velit in quas sed illo a.',2),(3,80571316,'Nam voluptates dignissimos corporis blanditiis dolore harum dolorem vero. Laboriosam non facilis consequatur et et aperiam aut debitis. Quibusdam enim in ipsa cupiditate.',3),(4,436692,'Occaecati aut unde quo error unde. Dolorem et est quam omnis. Omnis eaque quo nam.\nEt aliquam qui ullam. Dolorem et incidunt alias sunt repellendus reprehenderit. Et nulla id autem illum delectus.',4),(5,41326,'Minus ducimus error ullam dignissimos quia. Sed earum earum molestiae accusantium. Sequi animi numquam mollitia rerum cupiditate soluta.',5),(6,83619201,'Recusandae facilis sunt provident reiciendis saepe. Asperiores atque quod maiores qui beatae tempora. Aut aut sunt inventore.',6),(7,9298493,'Accusamus ut et iure provident placeat earum aperiam. Quia et dolorem sed dolor voluptatem dolorum. Nulla illo autem consequatur quia. Quisquam ipsam quo qui unde.',7),(8,9,'Sunt debitis ea eum modi est quo rem. Non explicabo exercitationem quibusdam iusto maiores nihil doloremque. Reprehenderit vel facilis saepe.',8),(9,2272,'Earum enim voluptas dolores illo dicta qui. Aliquam omnis magni quae mollitia soluta. A perspiciatis est numquam facilis qui.',9),(10,88089,'Et facere nobis eligendi in. Quasi ducimus quis est qui blanditiis et. Dolorem illum itaque non neque minus ut suscipit. Est quia aut doloremque nostrum.',10),(11,10905,'Amet odit sit velit. Fuga debitis rem consequatur quos et quaerat animi. Animi voluptate enim ab qui labore et. Iure sunt qui fugiat et.',11),(12,77034480,'Alias cum qui voluptatibus quia cum eligendi non vero. Dolores deleniti qui inventore nihil. Debitis est quasi odit aut. Qui consequatur temporibus et assumenda.',12),(13,5104650,'Ut nesciunt sed aliquam. Provident iusto eius eaque praesentium.',13),(14,4604,'Consequatur dolor minima et voluptate. Sunt minima amet exercitationem voluptatem facilis ullam. Quae qui aliquid odio non consequatur sit adipisci.',14),(15,77,'Dignissimos doloremque sit rem voluptas. Odit porro expedita quia. Aliquam enim quaerat totam impedit sunt consectetur. Fugiat sed inventore debitis velit.',15),(16,247,'In et quaerat est nulla ad sed aut quibusdam. Qui asperiores fuga distinctio. Non voluptatum tempora iure occaecati ut excepturi.',16),(17,318674,'Dolorum qui ipsam molestiae recusandae deserunt. Sit animi sed ipsum recusandae quae quae error. Accusantium aut sunt quo possimus voluptatibus quaerat accusamus.',17),(18,456,'Possimus animi veniam quis illo quos. Itaque rerum sint dolorem quos est sint. Non sint quaerat totam quisquam aut. Illo distinctio repudiandae incidunt cum.',18),(19,71392,'Quas iusto nihil placeat ratione. Rerum ea nostrum quia. Et est mollitia qui deleniti tempore et fuga inventore.',19),(20,300,'Maiores et in explicabo dolores odio harum numquam aliquam. Tempore tenetur consequuntur nihil nihil. Illum quam quasi corporis sunt. Saepe iure aspernatur fuga occaecati.',20);
/*!40000 ALTER TABLE `offenses_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport_citizens`
--

DROP TABLE IF EXISTS `passport_citizens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passport_citizens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `passport_num` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `department_number` varchar(255) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `photo_citizens_id` bigint NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `patronymic` varchar(45) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `address_res` varchar(255) NOT NULL,
  `citizens` varchar(45) NOT NULL DEFAULT 'РФ',
  PRIMARY KEY (`id`,`photo_citizens_id`),
  UNIQUE KEY `passport_num_UNIQUE` (`passport_num`),
  KEY `fk_passport_citizens_photo_citizens1_idx` (`photo_citizens_id`),
  CONSTRAINT `fk_passport_citizens_photo_citizens1` FOREIGN KEY (`photo_citizens_id`) REFERENCES `photo_citizens` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport_citizens`
--

LOCK TABLES `passport_citizens` WRITE;
/*!40000 ALTER TABLE `passport_citizens` DISABLE KEYS */;
INSERT INTO `passport_citizens` VALUES (1,535531,'1987-11-14 15:45:39','292708896','2020-05-09 08:16:01',1,'Eva','Pacocha','Braden','F','4875 Edward Course\nWillhaven, NH 87865-5454','velit'),(2,23,'2013-08-28 10:28:17','4','1985-01-14 09:38:38',2,'Faye','Hammes','Ben','M','38855 Donny Expressway\nLake Randichester, ND 56991-8268','nemo'),(3,373032,'2005-05-18 13:44:34','','2016-07-02 03:28:02',3,'Elmer','Crooks','Jett','M','2561 Erdman Mountains Apt. 143\nTommieshire, WA 53471-1455','vel'),(4,76,'1995-05-07 19:07:48','67221051','2005-04-15 14:19:01',4,'Alfonzo','Maggio','Leonard','M','5994 Jacobson Crossing\nRayfort, VT 99211','mollitia'),(5,850,'2013-10-23 23:10:07','','1985-03-27 18:08:11',5,'Noble','Mayert','Kelvin','F','65784 Grimes Route Apt. 956\nBalistrerimouth, AZ 05070-2698','provident'),(6,5707,'2004-11-14 05:53:55','1225','1999-06-07 12:36:28',6,'Sandra','Heathcote','Casimir','F','98917 Keebler Common\nNew Danemouth, IL 81397-5195','aut'),(7,741231,'2017-02-01 13:34:00','521295','2010-02-18 03:24:37',7,'Deborah','Heller','Weston','F','36463 Jane Drive Suite 988\nJaimeport, WI 39601','totam'),(8,229033,'1998-01-23 22:00:39','59270867','2008-08-17 02:51:34',8,'Zora','Johns','Misael','M','903 Lowe Parkway\nFloychester, KY 90237','molestias'),(9,314,'2005-07-23 05:06:18','','1990-04-20 22:46:43',9,'Kavon','Gottlieb','Garland','M','5366 Ross Keys Suite 436\nRohanville, PA 88230','rerum'),(10,3,'1988-12-02 00:30:38','63645223','2009-10-17 20:37:05',10,'Graciela','Osinski','Matteo','F','7875 Ryan Extensions\nKirlinville, VA 91049','ut'),(11,61,'1972-12-27 05:43:38','2','1971-07-07 04:35:58',11,'Jabari','Murazik','Hipolito','M','21407 Grover Grove\nNew Lourdes, NV 56307','et'),(12,45290,'1971-02-21 02:32:21','749','1974-04-01 18:20:14',12,'Lorena','Boyle','Kendall','F','4613 Berneice Wells\nBodeview, WA 30451','quos'),(13,743844139,'1992-07-21 14:15:33','65955','2007-01-21 02:38:37',13,'Enid','Thiel','Jordon','M','290 Maximillian Cliffs\nJuvenalville, WV 92009-1548','et'),(14,4,'1984-10-05 12:16:26','9800','2004-09-25 17:03:03',14,'Raegan','Moore','Candido','M','95427 Legros Inlet Suite 485\nFriesenport, NY 92944','qui'),(15,171341871,'1991-06-25 18:11:06','','2010-06-08 07:29:03',15,'Rashad','Jakubowski','Nigel','M','0491 Jackie Crescent Apt. 181\nBeverlyside, NC 25522','sit'),(16,24,'2019-09-12 20:17:47','308210','2011-10-03 15:14:38',16,'Minnie','Kuhic','Vaughn','F','0271 Elvis Rapid Suite 725\nNew Wilfred, IA 29538-7574','placeat'),(17,551,'1982-07-04 08:08:02','406','2001-08-08 20:18:14',17,'Emilio','Langosh','Tre','F','88506 Pfannerstill Mountains Suite 612\nPort Angie, WY 12625-5075','earum'),(18,858850579,'2015-03-21 07:37:32','836497','2006-04-29 23:44:29',18,'Kay','Price','Amir','M','77380 Sipes Lodge\nKennachester, MT 05435','et'),(19,205,'1977-10-04 19:58:39','49947','2003-10-11 20:46:58',19,'Sheldon','Cartwright','Dylan','F','204 Fletcher Lights Apt. 277\nNew Niatown, MA 89445','illo'),(20,6559115,'1978-11-03 20:20:29','11404','2020-08-10 21:41:55',20,'Arnold','Greenfelder','Valentin','M','26712 Alec Street Suite 493\nPort Cassie, MS 85721','iste'),(21,0,'1988-03-18 06:20:09','70','1983-10-06 03:09:22',21,'Eli','Spinka','Emiliano','F','51615 Zulauf Burgs\nTurcotteland, WI 02065-2361','doloremque'),(22,455,'1990-03-14 10:20:27','5779','1970-10-27 13:12:40',22,'Max','Funk','Stephan','F','68367 Marcella Ports\nLake Jeanie, IA 13615','molestias'),(23,39340,'2012-09-04 16:56:05','7361174','2020-01-04 18:07:24',23,'Viola','Jerde','Chaim','F','1229 Korbin Summit\nSouth Marielle, NM 15843','omnis'),(24,84601276,'1988-04-10 22:31:41','','2018-06-28 05:33:41',24,'Retha','Kuphal','Bernardo','F','5826 Cummings Shore Suite 702\nNorth Beulah, AL 46856','perspiciatis'),(25,6131476,'2011-05-07 16:27:53','4516958','1980-10-25 11:07:50',25,'Jaclyn','Ward','Americo','M','366 Maryam Springs Suite 249\nPort Albinshire, IA 27075-9082','tempora'),(26,554903,'1984-09-11 22:56:45','638372','2001-02-25 23:48:55',26,'Keyshawn','Olson','Lance','F','9365 Ned Pine\nPort Taya, DE 54139-2891','voluptas'),(27,8,'1997-09-26 10:12:25','','1974-09-16 03:14:14',27,'Fermin','O\'Reilly','Oscar','M','42772 Sadie Point Apt. 777\nEast Madelynnfurt, MI 29330-5417','et'),(28,9,'1988-01-02 21:33:12','5371113','1975-03-09 23:19:06',28,'Shaniya','Bernier','Corbin','M','05072 Armstrong Crescent\nJacobistad, FL 20925-6108','excepturi'),(29,40595,'1981-09-20 21:05:54','373','1992-01-01 21:46:40',29,'Russel','Torphy','Javon','M','1786 Immanuel Well\nNew Aiyana, AL 40807-2623','aut'),(30,5832588,'1999-07-24 00:51:23','46455','2019-10-13 13:24:01',30,'Nichole','Haley','Porter','M','694 King Fort\nSamantafurt, OR 70507-8158','deserunt'),(31,85,'1997-12-09 18:38:14','929','1993-10-07 00:40:02',31,'Estelle','McCullough','Sammie','M','1112 Bradtke Trail\nSchinnermouth, CA 09753-3699','non'),(32,256490401,'2000-10-18 23:14:27','5380327','1971-10-01 18:16:20',32,'Ethelyn','Aufderhar','Earnest','M','908 Yasmeen Port\nBarbarachester, OH 26575-9866','similique'),(33,62799,'1990-09-12 11:07:55','9','2013-11-12 05:35:30',33,'Jana','Zulauf','Milan','F','170 Bergnaum Road Apt. 380\nSouth Rosarioshire, AR 46334','molestiae'),(34,40,'1996-04-16 20:43:16','421958519','2020-02-08 01:13:41',34,'Maxwell','Bergstrom','Isom','M','159 Treutel Skyway\nEmoryborough, OR 17534','consequatur'),(35,45112613,'2011-05-30 10:43:23','','2010-05-09 20:48:20',35,'Destin','Runolfsson','Isom','M','3279 Izaiah Forge\nHomenickhaven, MS 50492','mollitia'),(36,7759,'1998-02-20 12:23:40','85540190','1998-11-26 20:43:32',36,'Alexys','Muller','Andres','F','1064 Gerhard Trail Apt. 702\nWest Hollie, MT 66707-5515','non'),(37,498334165,'2015-04-15 20:46:45','98','2002-04-06 20:34:08',37,'Judy','Carroll','Buford','M','5512 Magdalena Mountain\nKosstown, KY 77384-5520','inventore'),(38,474,'2002-04-30 02:26:37','','1990-09-07 09:18:39',38,'Betsy','Keebler','Pietro','F','7846 Stroman Isle Apt. 460\nUriahmouth, AZ 23425-7999','doloremque'),(39,86077252,'2002-11-28 01:58:00','78685','1979-11-18 20:11:10',39,'Ebba','Ritchie','Conner','M','7318 Nikita Glen Apt. 168\nHilpertton, AL 22279','facilis'),(40,55346619,'1973-10-26 13:25:08','30478744','2018-08-19 09:27:39',40,'Roberta','Brakus','Alessandro','M','80344 Laurianne Tunnel\nRatkechester, TX 42545','pariatur'),(41,1215,'2011-11-15 00:31:06','6024','1970-04-08 11:18:31',41,'Theo','Boyle','Alberto','F','881 Hills Route\nGoldnerbury, AZ 94173-9771','laudantium'),(42,2896230,'1994-02-03 19:38:06','213672530','2019-02-12 22:50:50',42,'Adriana','Daniel','Noel','F','710 Ratke Meadows Apt. 988\nBeattyburgh, AZ 38945','non'),(43,9282295,'1976-08-15 16:37:06','89476','1988-10-08 01:14:50',43,'Santos','Fahey','Jerrold','M','0122 Burnice Streets Suite 092\nWest Erna, CT 69037-5585','labore'),(44,1937920,'2002-01-17 00:09:12','79011','2005-03-26 00:01:58',44,'Sally','O\'Hara','Deangelo','F','5819 Jan Cape Suite 714\nAnnabelport, AR 25329','tempora'),(45,5233858,'2017-08-19 09:27:23','1205047','1983-05-01 08:53:36',45,'Hermina','Kunze','Milo','F','693 Devan Fords\nSouth Shayne, MI 02475','et'),(46,57166,'1980-12-12 18:19:36','15','2018-02-03 00:08:55',46,'Hilton','Breitenberg','Gussie','F','118 Misael Passage Apt. 788\nAshlyside, IL 61079','enim'),(47,53012670,'1988-01-12 06:54:30','78','1996-03-20 12:15:43',47,'Reuben','Robel','Arnaldo','F','65293 Feeney Falls Suite 652\nLakinview, NY 65091','ab'),(48,83,'2003-08-10 12:45:50','62','2004-10-24 12:17:24',48,'Mckenna','Roberts','Eduardo','M','68599 Stroman Fork\nNorth Sydnibury, OK 47901','nihil'),(49,10642,'2007-02-26 15:46:13','66712479','2014-04-19 23:13:48',49,'Allan','Fadel','Alphonso','M','400 Rogahn Gardens Apt. 934\nStreichbury, AK 65451','ducimus'),(50,477689,'2017-11-22 12:53:20','9','1993-11-11 17:53:30',50,'Schuyler','Smith','Aaron','F','45501 Carroll Shore Apt. 544\nTatyanaport, NJ 68946-4256','eum');
/*!40000 ALTER TABLE `passport_citizens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_citizens`
--

DROP TABLE IF EXISTS `photo_citizens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo_citizens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `file_size` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_citizens`
--

LOCK TABLES `photo_citizens` WRITE;
/*!40000 ALTER TABLE `photo_citizens` DISABLE KEYS */;
INSERT INTO `photo_citizens` VALUES (1,'aut','2011-07-24 04:45:40',987),(2,'voluptas','2013-06-20 17:22:43',5061948),(3,'sit','1979-06-06 16:29:14',366671),(4,'inventore','2014-03-01 05:07:37',87),(5,'odio','1978-08-13 08:26:46',517947444),(6,'voluptates','1994-04-25 03:30:21',11830),(7,'ullam','1978-02-25 10:28:07',72531),(8,'magni','2009-10-20 14:14:09',25),(9,'debitis','2012-06-06 06:33:09',9324968),(10,'maiores','1974-06-28 04:19:23',3381),(11,'qui','1977-08-31 08:48:00',69875221),(12,'et','1993-07-29 17:26:09',8642),(13,'repellat','2011-02-14 15:52:12',20585860),(14,'consequatur','1985-07-14 03:42:54',0),(15,'enim','2010-07-14 07:00:22',93),(16,'sit','1992-10-11 00:12:04',665329458),(17,'quod','2011-07-03 23:04:03',90287013),(18,'occaecati','2006-08-07 10:07:02',85681369),(19,'nam','2015-10-30 00:15:32',81182574),(20,'nobis','2010-07-02 16:10:06',0),(21,'consequatur','1975-01-27 15:17:38',3),(22,'est','2015-02-23 08:14:16',466452305),(23,'consequatur','1973-01-19 01:51:01',862662),(24,'earum','1987-12-03 07:48:11',66),(25,'dolor','1972-02-14 04:39:49',7),(26,'molestias','1972-06-08 01:35:07',65729605),(27,'inventore','2017-03-21 20:15:53',0),(28,'alias','1984-05-07 12:52:12',3),(29,'et','2004-02-20 20:11:24',745086),(30,'aut','1976-10-01 22:30:28',680602943),(31,'nulla','1976-08-28 08:54:11',386780237),(32,'aut','1983-01-28 20:55:54',65),(33,'vero','2019-09-27 16:48:17',874254),(34,'quibusdam','1989-03-20 22:38:55',0),(35,'fugiat','2004-04-17 06:54:27',983527),(36,'consequatur','1993-11-06 14:51:10',0),(37,'commodi','2017-09-21 23:19:24',293978756),(38,'sit','1978-05-27 23:34:32',583956),(39,'eius','1984-11-01 23:26:55',95),(40,'et','2003-11-04 04:43:22',0),(41,'voluptas','2003-08-30 19:22:12',951462),(42,'facere','1993-04-08 01:41:08',454),(43,'qui','2019-09-06 23:54:12',5233),(44,'qui','2018-08-26 02:06:20',46912),(45,'sit','2015-09-13 23:00:19',8435255),(46,'quasi','2009-06-28 23:24:45',26775307),(47,'ab','2011-04-01 22:19:41',220),(48,'necessitatibus','1999-05-06 01:18:27',5314),(49,'culpa','2003-12-31 13:47:12',4),(50,'temporibus','2005-12-14 11:28:10',845771324);
/*!40000 ALTER TABLE `photo_citizens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор следения гражданина',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `locations_id` bigint NOT NULL COMMENT 'Локация нахождения',
  `gps_tracker_id` bigint NOT NULL COMMENT 'Номер gps трекера в чипе',
  PRIMARY KEY (`id`,`locations_id`),
  UNIQUE KEY `gps_tracker_id_UNIQUE` (`gps_tracker_id`),
  KEY `fk_tracking_locations1_idx` (`locations_id`),
  CONSTRAINT `fk_tracking_locations1` FOREIGN KEY (`locations_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,'1985-01-31 01:40:07','2015-09-04 21:41:02',1,0),(2,'1971-01-21 09:16:04','2013-11-24 01:50:59',2,4),(3,'1997-01-04 13:11:01','2018-01-04 09:23:46',3,6837),(4,'2017-09-29 18:24:04','2003-12-07 18:30:37',4,81),(5,'2019-02-25 22:34:31','1997-06-02 00:34:03',5,5129),(6,'1987-03-15 18:50:13','1993-02-25 14:31:07',6,2196),(7,'1992-05-30 20:47:20','1982-12-06 10:05:50',7,3808963),(8,'1985-07-09 17:20:48','2016-06-12 10:14:10',8,2530),(9,'1975-02-21 17:25:24','1999-04-29 09:39:06',9,1),(10,'1977-03-01 10:55:12','2007-09-02 22:13:30',10,21860062),(11,'1975-05-04 05:35:48','1985-12-16 00:19:28',11,189240890),(12,'1992-08-26 17:02:03','1980-11-11 11:58:18',12,469995364),(13,'1992-12-30 17:59:37','1985-05-29 19:14:05',13,86),(14,'1998-10-19 15:54:00','1982-04-27 13:39:28',14,987917903),(15,'1970-11-26 01:47:02','1988-11-24 22:25:57',15,282233230),(16,'2013-02-28 23:13:04','1977-12-17 08:54:05',16,87639465),(17,'2006-01-21 17:31:10','2019-03-08 16:48:47',17,3648244),(18,'1984-03-15 19:25:56','2003-07-30 14:03:30',18,3639376),(19,'2016-09-10 13:01:11','2015-05-15 04:43:27',19,188273),(20,'2008-12-18 08:21:54','1999-03-19 12:21:04',20,60070),(21,'1999-03-02 11:09:35','1995-02-02 14:57:04',21,6912),(22,'1988-06-29 03:10:41','2021-02-07 03:28:46',22,32),(23,'2015-11-18 08:08:27','1973-11-11 08:52:18',23,28721),(24,'2011-04-05 03:01:54','1978-02-17 10:16:35',24,4818),(25,'1992-12-15 14:28:31','2017-04-20 12:18:27',25,71033),(26,'1973-12-21 09:11:53','2013-12-03 08:13:18',26,16373),(27,'2015-05-10 11:15:06','1993-12-22 02:49:38',27,20573),(28,'1989-04-30 13:52:19','1984-08-20 21:46:50',28,828249934),(29,'1996-03-27 01:08:17','2008-11-10 17:10:22',29,18159),(30,'1980-03-17 13:26:07','1974-01-10 11:47:52',30,77902),(31,'1981-05-28 04:43:36','1994-06-14 10:07:20',31,632792222),(32,'1990-03-19 04:39:04','1976-05-07 17:11:05',32,2193770),(33,'2008-05-01 17:11:39','2012-06-04 20:36:02',33,103535055),(34,'2009-03-26 08:11:35','1985-11-02 08:24:46',34,2716),(35,'1996-04-11 14:27:29','2004-01-04 07:22:03',35,7626),(36,'1977-04-23 12:46:49','2020-01-17 21:35:41',36,660448019),(37,'2015-07-29 09:16:17','2008-06-12 05:12:53',37,534827173),(38,'1972-05-02 09:48:32','2020-09-21 12:22:20',38,636833),(39,'2010-12-13 18:50:42','2006-04-27 07:08:41',39,26258),(40,'2018-08-21 20:14:45','1983-08-29 19:40:43',40,303188231),(41,'2007-05-22 15:26:53','1997-04-03 12:08:17',41,21655682),(42,'1991-09-15 15:28:32','1982-12-04 19:39:27',42,2847),(43,'1990-05-01 19:10:29','2018-04-05 22:01:30',43,527),(44,'2018-09-05 16:20:41','1975-04-14 21:36:45',44,27400),(45,'1990-04-04 23:36:20','1986-12-30 07:59:50',45,31796986),(46,'1981-04-09 00:54:27','2012-11-23 09:03:54',46,78999),(47,'1973-01-20 15:21:10','2004-11-18 19:41:34',47,3),(48,'1978-04-12 05:45:41','2008-09-07 07:09:43',48,75223626),(49,'1987-09-19 12:06:43','2011-11-10 10:31:18',49,100641583),(50,'1981-09-14 14:59:31','1990-09-29 01:42:15',50,378332);
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_finger`
--

DROP TABLE IF EXISTS `type_finger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_finger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('L1','L2','L3','L4','L5','R1','R2','R3','R4','R5') NOT NULL COMMENT 'Отпечаток какого пальца',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_UNIQUE` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_finger`
--

LOCK TABLES `type_finger` WRITE;
/*!40000 ALTER TABLE `type_finger` DISABLE KEYS */;
INSERT INTO `type_finger` VALUES (5,'L1'),(7,'L2'),(2,'L3'),(4,'L4'),(8,'L5'),(6,'R1'),(9,'R2'),(10,'R3'),(3,'R4'),(1,'R5');
/*!40000 ALTER TABLE `type_finger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `citizen_age`
--

/*!50001 DROP VIEW IF EXISTS `citizen_age`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `citizen_age` AS select concat(`passport_citizens`.`firstname`,' ',`passport_citizens`.`lastname`) AS `citizen`,((year(curdate()) - year(`passport_citizens`.`date_of_birth`)) - (date_format(curdate(),'%m%d') < date_format(`passport_citizens`.`date_of_birth`,'%m%d'))) AS `age` from `passport_citizens` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `location_for_trackers`
--

/*!50001 DROP VIEW IF EXISTS `location_for_trackers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `location_for_trackers` AS select `tracking`.`id` AS `tracker_number`,(select `locations_city`.`ctity` from `locations_city` where (`locations`.`id` = `locations_city`.`id`)) AS `city`,(select `locations_district`.`district` from `locations_district` where (`locations`.`id` = `locations_district`.`id`)) AS `district`,(select `locations_house`.`house` from `locations_house` where (`locations`.`id` = `locations_house`.`id`)) AS `house`,(select `locations_street`.`street` from `locations_street` where (`locations`.`id` = `locations_street`.`id`)) AS `street` from (`tracking` left join `locations` on((`locations`.`id` = `tracking`.`locations_id`))) order by `tracking`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-11 13:12:33
