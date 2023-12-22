CREATE DATABASE  IF NOT EXISTS `226d123` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `226d123`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 226d123.e2.mars-hosting.com    Database: 226d123
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.34-MariaDB-1:10.3.34+maria~bionic-log

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `usr_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usr_username` varchar(50) NOT NULL,
  `usr_password` varchar(60) CHARACTER SET utf8 NOT NULL,
  `usr_fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `usr_email` varchar(100) NOT NULL,
  `cou_id` int(11) unsigned DEFAULT NULL,
  `ava_id` int(11) unsigned DEFAULT NULL,
  `usr_is_deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `usr_username_UNIQUE` (`usr_username`),
  UNIQUE KEY `usr_email_UNIQUE` (`usr_email`),
  KEY `fk_users_countries_idx` (`cou_id`),
  KEY `fk_users_avatars1_idx` (`ava_id`),
  CONSTRAINT `fk_users_avatars1` FOREIGN KEY (`ava_id`) REFERENCES `avatars` (`ava_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_countries1` FOREIGN KEY (`cou_id`) REFERENCES `countries` (`cou_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-22 23:50:19
