-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: ihrarzt24
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_clinics`
--

DROP TABLE IF EXISTS `ia24at_clinics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_clinics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `is_member` tinyint(4) NOT NULL,
  `gmap_reference` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `avatar` text CHARACTER SET utf8mb4 NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `postal_code` int(10) unsigned NOT NULL,
  `locality` text CHARACTER SET utf8mb4 NOT NULL,
  `street` text CHARACTER SET utf8mb4 NOT NULL,
  `street_additional` text CHARACTER SET utf8mb4 NOT NULL,
  `coordinate_lat` double NOT NULL,
  `coordinate_lng` double NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `website` text CHARACTER SET utf8mb4 NOT NULL,
  `speciality` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `languages` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `insurance_private` tinyint(4) NOT NULL,
  `insurance_public` tinyint(4) NOT NULL DEFAULT '1',
  `must_feedback` tinyint(4) NOT NULL,
  `moodle` tinyint(4) NOT NULL,
  `text_description` text CHARACTER SET utf8mb4 NOT NULL,
  `text_more_for_patient` text CHARACTER SET utf8mb4 NOT NULL,
  `text_hospital_occupancy` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_clinics`
--

LOCK TABLES `ia24at_clinics` WRITE;
/*!40000 ALTER TABLE `ia24at_clinics` DISABLE KEYS */;
/*!40000 ALTER TABLE `ia24at_clinics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_config`
--

DROP TABLE IF EXISTS `ia24at_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_config`
--

LOCK TABLES `ia24at_config` WRITE;
/*!40000 ALTER TABLE `ia24at_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `ia24at_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctor_online_payment_settings`
--

DROP TABLE IF EXISTS `ia24at_doctor_online_payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctor_online_payment_settings` (
  `doctor_id` int(11) NOT NULL,
  `payment_method` int(1) DEFAULT NULL,
  `video_way` int(1) DEFAULT NULL,
  `per_minute` float DEFAULT NULL,
  `min_minute` int(2) DEFAULT NULL,
  `free_minute` int(2) DEFAULT NULL,
  `fixed_price` float DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctor_online_payment_settings`
--

LOCK TABLES `ia24at_doctor_online_payment_settings` WRITE;
/*!40000 ALTER TABLE `ia24at_doctor_online_payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ia24at_doctor_online_payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctor_online_settings`
--

DROP TABLE IF EXISTS `ia24at_doctor_online_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctor_online_settings` (
  `doctor_id` bigint(20) unsigned NOT NULL,
  `working_days` tinyint(3) unsigned NOT NULL,
  `working_hours_start` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `working_hours_end` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `calendar_cell` int(10) unsigned NOT NULL,
  `termin_default_length` int(10) unsigned NOT NULL,
  `regular_termin_on` tinyint(3) unsigned NOT NULL,
  `lunch_start` time NOT NULL,
  `lunch_end` time NOT NULL,
  `private_hours_start` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `private_hours_end` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `max_advance_booking` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `min_cancel_before` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `holiday` text NOT NULL,
  `practic` text NOT NULL,
  `manual` text NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctor_online_settings`
--

LOCK TABLES `ia24at_doctor_online_settings` WRITE;
/*!40000 ALTER TABLE `ia24at_doctor_online_settings` DISABLE KEYS */;
INSERT INTO `ia24at_doctor_online_settings` VALUES (154,5,'1|19:00,2|19:00,3|19:00,1|-,2|-,3|-,4|-,5|-,6|-,7|-','1|22:00,2|22:00,3|22:00,1|-,2|-,3|-,4|-,5|-,6|-,7|-',30,30,1,'20:00:00','20:30:00','1|-,2|-,3|-,4|-,5|-,6|-,7|-','1|-,2|-,3|-,4|-,5|-,6|-,7|-','','','','','');
/*!40000 ALTER TABLE `ia24at_doctor_online_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctor_online_text_settings`
--

DROP TABLE IF EXISTS `ia24at_doctor_online_text_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctor_online_text_settings` (
  `doctor_id` int(11) NOT NULL,
  `send_after_booking_title` text,
  `send_after_booking_text` text,
  `send_after_booking_subtext` text,
  `hour_before_appointment` int(2) DEFAULT NULL,
  `send_before_appointment_title` text,
  `send_before_appointment_text` text,
  `send_before_appointment_subtext` text,
  `hour_after_appointment` int(2) DEFAULT NULL,
  `send_after_appointment_title` text,
  `send_after_appointment_text` text,
  `send_after_appointment_subtext` text,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctor_online_text_settings`
--

LOCK TABLES `ia24at_doctor_online_text_settings` WRITE;
/*!40000 ALTER TABLE `ia24at_doctor_online_text_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ia24at_doctor_online_text_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctor_settings`
--

DROP TABLE IF EXISTS `ia24at_doctor_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctor_settings` (
  `doctor_id` bigint(20) unsigned NOT NULL,
  `working_days` tinyint(3) unsigned NOT NULL,
  `working_hours_start` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `working_hours_end` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `calendar_cell` int(10) unsigned NOT NULL,
  `termin_default_length` int(10) unsigned NOT NULL,
  `regular_termin_on` tinyint(3) unsigned NOT NULL,
  `lunch_start` time NOT NULL,
  `lunch_end` time NOT NULL,
  `private_hours_start` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `private_hours_end` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `max_advance_booking` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `min_cancel_before` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `holiday` text,
  `practic` text,
  `manual` text,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctor_settings`
--

LOCK TABLES `ia24at_doctor_settings` WRITE;
/*!40000 ALTER TABLE `ia24at_doctor_settings` DISABLE KEYS */;
INSERT INTO `ia24at_doctor_settings` VALUES (148,5,'1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-',15,30,0,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-','0 days','0 days',NULL,NULL,NULL),(118,5,'9','17',15,30,0,'00:00:00','00:00:00','','','','',NULL,NULL,NULL),(140,5,'1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-',15,30,0,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-','0 days','0 days',NULL,NULL,NULL),(151,5,'1|09:00,2|09:00,3|09:00,4|09:00,5|09:00,6|-,7|-','1|17:00,2|16:00,3|16:00,4|17:00,5|16:00,6|-,7|-',30,30,1,'12:00:00','14:00:00','1|15:00,2|14:00,3|15:00,4|15:00,5|15:00,6|-,7|-','1|16:00,2|15:00,3|16:00,4|16:00,5|16:00,6|-,7|-','14','','','',''),(149,5,'1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-',15,30,0,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-','0 days','0 days',NULL,NULL,NULL),(150,5,'1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-',15,30,0,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-','0 days','0 days',NULL,NULL,NULL),(100,5,'1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-',15,30,1,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-','0 days','0 days',NULL,NULL,NULL),(152,5,'1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-',15,30,0,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-7|-','1|-,2|-,3|-,4|-,5|-,6|-7|-','0 days','0 days',NULL,NULL,NULL),(153,5,'1|-,2|-,3|-,4|-,5|-,6|-,7|-','1|-,2|-,3|-,4|-,5|-,6|-,7|-',15,30,0,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-,7|-','1|-,2|-,3|-,4|-,5|-,6|-,7|-','0 days','0 days',NULL,NULL,NULL),(154,5,'1|-,2|-,3|-,4|-,5|-,6|-,7|-','1|-,2|-,3|-,4|-,5|-,6|-,7|-',15,30,0,'00:00:00','00:00:00','1|-,2|-,3|-,4|-,5|-,6|-,7|-','1|-,2|-,3|-,4|-,5|-,6|-,7|-','0 days','0 days',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ia24at_doctor_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctor_termin_settings`
--

DROP TABLE IF EXISTS `ia24at_doctor_termin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctor_termin_settings` (
  `doctor_id` bigint(20) unsigned NOT NULL,
  `afterwards_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_closing` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_signature` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reminder_email_subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reminder_email_body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reminder_email_closing` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `followup_email_subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `followup_email_body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `followup_email_closing` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reminder_time` varchar(255) CHARACTER SET latin1 NOT NULL,
  `reminder_time_wrapper` tinyint(3) unsigned NOT NULL,
  `followup_time` varchar(255) CHARACTER SET latin1 NOT NULL,
  `followup_time_wrapper` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctor_termin_settings`
--

LOCK TABLES `ia24at_doctor_termin_settings` WRITE;
/*!40000 ALTER TABLE `ia24at_doctor_termin_settings` DISABLE KEYS */;
INSERT INTO `ia24at_doctor_termin_settings` VALUES (151,'','','','','','','Booking Reminder','Just a quick reminder!','Notes: Here comes the closing notes			','Booking followup','Just a quick followup!     ','Notes: Here comes the closing notes   ','2',1,'2',1);
/*!40000 ALTER TABLE `ia24at_doctor_termin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctor_termins`
--

DROP TABLE IF EXISTS `ia24at_doctor_termins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctor_termins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auto_termin` tinyint(4) NOT NULL,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `ready` tinyint(3) unsigned NOT NULL,
  `repetitive` tinyint(4) unsigned NOT NULL,
  `mask` tinyint(3) unsigned NOT NULL,
  `mask_event_id` tinyint(3) unsigned NOT NULL,
  `allday` tinyint(3) unsigned NOT NULL,
  `period` int(11) unsigned NOT NULL,
  `day` tinyint(3) unsigned NOT NULL,
  `insurance_private` tinyint(3) unsigned NOT NULL,
  `insurance_public` tinyint(3) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `text_patient` text CHARACTER SET utf8mb4 NOT NULL,
  `text_notes` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctor_termins`
--

LOCK TABLES `ia24at_doctor_termins` WRITE;
/*!40000 ALTER TABLE `ia24at_doctor_termins` DISABLE KEYS */;
INSERT INTO `ia24at_doctor_termins` VALUES (66,0,151,0,1,0,0,0,7,1,1,1,'2015-10-26 14:00:00','2015-10-26 14:15:00','',''),(227,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 10:00:00','2017-11-17 10:30:00','',''),(226,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 09:30:00','2017-11-17 10:00:00','',''),(225,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 09:00:00','2017-11-17 09:30:00','',''),(224,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 16:30:00','2017-11-16 17:00:00','',''),(223,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 16:00:00','2017-11-16 16:30:00','',''),(222,1,151,1,1,0,0,0,7,4,1,0,'2017-11-16 15:30:00','2017-11-16 16:00:00','',''),(221,1,151,1,1,0,0,0,7,4,1,0,'2017-11-16 15:00:00','2017-11-16 15:30:00','',''),(220,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 14:30:00','2017-11-16 15:00:00','',''),(219,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 14:00:00','2017-11-16 14:30:00','',''),(218,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 11:30:00','2017-11-16 12:00:00','',''),(217,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 11:00:00','2017-11-16 11:30:00','',''),(216,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 10:30:00','2017-11-16 11:00:00','',''),(215,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 10:00:00','2017-11-16 10:30:00','',''),(214,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 09:30:00','2017-11-16 10:00:00','',''),(213,1,151,1,1,0,0,0,7,4,1,1,'2017-11-16 09:00:00','2017-11-16 09:30:00','',''),(178,0,151,0,0,0,0,0,7,2,0,0,'2016-03-08 07:30:00','2016-03-08 07:45:00','',''),(212,1,151,1,1,0,0,0,7,3,1,0,'2017-11-15 15:30:00','2017-11-15 16:00:00','',''),(211,1,151,1,1,0,0,0,7,3,1,0,'2017-11-15 15:00:00','2017-11-15 15:30:00','',''),(210,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 14:30:00','2017-11-15 15:00:00','',''),(209,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 14:00:00','2017-11-15 14:30:00','',''),(208,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 11:30:00','2017-11-15 12:00:00','',''),(207,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 11:00:00','2017-11-15 11:30:00','',''),(206,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 10:30:00','2017-11-15 11:00:00','',''),(205,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 10:00:00','2017-11-15 10:30:00','',''),(204,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 09:30:00','2017-11-15 10:00:00','',''),(203,1,151,1,1,0,0,0,7,3,1,1,'2017-11-15 09:00:00','2017-11-15 09:30:00','',''),(202,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 15:30:00','2017-11-14 16:00:00','',''),(201,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 15:00:00','2017-11-14 15:30:00','',''),(200,1,151,1,1,0,0,0,7,2,1,0,'2017-11-14 14:30:00','2017-11-14 15:00:00','',''),(199,1,151,1,1,0,0,0,7,2,1,0,'2017-11-14 14:00:00','2017-11-14 14:30:00','',''),(198,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 11:30:00','2017-11-14 12:00:00','',''),(197,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 11:00:00','2017-11-14 11:30:00','',''),(196,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 10:30:00','2017-11-14 11:00:00','',''),(195,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 10:00:00','2017-11-14 10:30:00','',''),(194,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 09:30:00','2017-11-14 10:00:00','',''),(193,1,151,1,1,0,0,0,7,2,1,1,'2017-11-14 09:00:00','2017-11-14 09:30:00','',''),(192,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 16:30:00','2017-11-13 17:00:00','',''),(191,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 16:00:00','2017-11-13 16:30:00','',''),(190,1,151,1,1,0,0,0,7,1,1,0,'2017-11-13 15:30:00','2017-11-13 16:00:00','',''),(189,1,151,1,1,0,0,0,7,1,1,0,'2017-11-13 15:00:00','2017-11-13 15:30:00','',''),(188,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 14:30:00','2017-11-13 15:00:00','',''),(187,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 14:00:00','2017-11-13 14:30:00','',''),(186,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 11:30:00','2017-11-13 12:00:00','',''),(185,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 11:00:00','2017-11-13 11:30:00','',''),(184,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 10:30:00','2017-11-13 11:00:00','',''),(183,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 10:00:00','2017-11-13 10:30:00','',''),(182,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 09:30:00','2017-11-13 10:00:00','',''),(181,1,151,1,1,0,0,0,7,1,1,1,'2017-11-13 09:00:00','2017-11-13 09:30:00','',''),(179,0,151,1,0,1,139,1,7,5,0,0,'2017-05-05 10:30:00','2017-05-05 11:00:00','',''),(180,0,151,1,0,1,124,1,7,4,0,0,'2017-05-18 09:00:00','2017-05-18 09:30:00','',''),(228,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 10:30:00','2017-11-17 11:00:00','',''),(229,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 11:00:00','2017-11-17 11:30:00','',''),(230,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 11:30:00','2017-11-17 12:00:00','',''),(231,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 14:00:00','2017-11-17 14:30:00','',''),(232,1,151,1,1,0,0,0,7,5,1,1,'2017-11-17 14:30:00','2017-11-17 15:00:00','',''),(233,1,151,1,1,0,0,0,7,5,1,0,'2017-11-17 15:00:00','2017-11-17 15:30:00','',''),(234,1,151,1,1,0,0,0,7,5,1,0,'2017-11-17 15:30:00','2017-11-17 16:00:00','','');
/*!40000 ALTER TABLE `ia24at_doctor_termins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctor_text_settings`
--

DROP TABLE IF EXISTS `ia24at_doctor_text_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctor_text_settings` (
  `doctor_id` int(11) NOT NULL,
  `send_after_booking_title` text,
  `send_after_booking_text` text,
  `send_after_booking_subtext` text,
  `hour_before_appointment` int(2) DEFAULT NULL,
  `send_before_appointment_title` text,
  `send_before_appointment_text` text,
  `send_before_appointment_subtext` text,
  `hour_after_appointment` int(2) DEFAULT NULL,
  `send_after_appointment_title` text,
  `send_after_appointment_text` text,
  `send_after_appointment_subtext` text,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctor_text_settings`
--

LOCK TABLES `ia24at_doctor_text_settings` WRITE;
/*!40000 ALTER TABLE `ia24at_doctor_text_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ia24at_doctor_text_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctors`
--

DROP TABLE IF EXISTS `ia24at_doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint(20) unsigned DEFAULT NULL,
  `clinic_id` bigint(20) unsigned NOT NULL,
  `is_member` tinyint(4) NOT NULL,
  `gmap_reference` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `avatar` text CHARACTER SET utf8mb4 NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `postal_code` int(10) unsigned NOT NULL,
  `locality` text CHARACTER SET utf8mb4 NOT NULL,
  `street` text CHARACTER SET utf8mb4 NOT NULL,
  `street_additional` text CHARACTER SET utf8mb4 NOT NULL,
  `coordinate_lat` double NOT NULL,
  `coordinate_lng` double NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `website` text CHARACTER SET utf8mb4 NOT NULL,
  `speciality` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `languages` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `insurance_private` tinyint(4) NOT NULL,
  `insurance_public` tinyint(4) NOT NULL DEFAULT '1',
  `must_feedback` tinyint(4) NOT NULL,
  `moodle` tinyint(4) NOT NULL,
  `text_description` text CHARACTER SET utf8mb4 NOT NULL,
  `text_vet` text CHARACTER SET utf8mb4 NOT NULL,
  `text_more_for_patient` text CHARACTER SET utf8mb4 NOT NULL,
  `text_membership` text CHARACTER SET utf8mb4 NOT NULL,
  `text_hospital_occupancy` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ia24_reference` (`doctor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctors`
--

LOCK TABLES `ia24at_doctors` WRITE;
/*!40000 ALTER TABLE `ia24at_doctors` DISABLE KEYS */;
INSERT INTO `ia24at_doctors` VALUES (1,151,0,1,'','mk@cyomed.com','3d6c4b7b9165a4c53f33acbfc4ea7cc9','','docjai09','',0,'0',0,'','','',0,0,'0','','','',0,1,0,0,'Ihr Hausarzt rund um alles.','Facharzt für Allgemeinmedizin\nAllergologie','Urlaub vom 20.12.2017 bis 05.01.2017','Marburger Bund\nHartmannbund',''),(2,152,0,1,'','danyun.lei@gmail.com','f91e15dbec69fc40f81f0876e7009648','','d.','lei',0,'0',0,'','','',0,0,'0','','','',0,1,0,0,'','','','',''),(3,153,0,1,'','alexeybez@yahoo.com','5dd51113856956e6d9cc84d7834600fc','','alexeybez@yahoo.com','',0,'0',0,'','','test',0,0,'0','','','',0,1,0,0,'test','test','test','test',''),(4,154,0,1,'','mk@cyomed.com','3d6c4b7b9165a4c53f33acbfc4ea7cc9','','Michael','Karbach',0,'Dr. med.',0,'','','Dusseldorf',0,0,'+492114231523','','','',0,1,0,0,'','','','','');
/*!40000 ALTER TABLE `ia24at_doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_doctors_invoice`
--

DROP TABLE IF EXISTS `ia24at_doctors_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_doctors_invoice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int(10) unsigned NOT NULL,
  `invoice_num` varchar(255) NOT NULL,
  `activate` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_doctors_invoice`
--

LOCK TABLES `ia24at_doctors_invoice` WRITE;
/*!40000 ALTER TABLE `ia24at_doctors_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ia24at_doctors_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_feedbacks`
--

DROP TABLE IF EXISTS `ia24at_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_feedbacks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `patient_id` bigint(20) unsigned NOT NULL,
  `rating` double NOT NULL,
  `rating_treatment` double NOT NULL,
  `rating_waiting` double NOT NULL,
  `text` text CHARACTER SET utf8mb4 NOT NULL,
  `additional` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_feedbacks`
--

LOCK TABLES `ia24at_feedbacks` WRITE;
/*!40000 ALTER TABLE `ia24at_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ia24at_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_insurance_provider`
--

DROP TABLE IF EXISTS `ia24at_insurance_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_insurance_provider` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_insurance_provider`
--

LOCK TABLES `ia24at_insurance_provider` WRITE;
/*!40000 ALTER TABLE `ia24at_insurance_provider` DISABLE KEYS */;
INSERT INTO `ia24at_insurance_provider` VALUES (1,'1','Sonstige'),(2,'2','AOK'),(3,'3','DAK - Gesundheit'),(4,'4','BARMER GEK'),(5,'5','Techniker Krankenkasse'),(6,'6','HEK - Hanseatische Krankenkasse'),(7,'7','hkk'),(8,'8','KKH - Kaufmännische Krankenkasse'),(9,'9','BIG direkt gesund'),(10,'10','IKK Brandenburg und Berlin'),(11,'11','IKK classic'),(12,'12','IKK gesund plus'),(13,'13','IKK Nord'),(14,'14','IKK Südwest'),(15,'15','Vereinigte BKK'),(16,'16','Continentale Betriebskrankenkasse'),(17,'17','hkk Erste Gesundheit'),(18,'18','Knappschaft'),(19,'19','atlas BKK ahlmann'),(20,'20','Audi BKK'),(21,'21','BAHN-BKK'),(22,'22','Bertelsmann BKK'),(23,'23','BKK 24'),(24,'24','BKK A.T.U'),(25,'25','BKK Achenbach Buschhutten'),(26,'26','BKK advita'),(27,'27','BKK Aesculap'),(28,'28','BKK Akzo Nobel'),(29,'29','BKK B. Braun Melsungen AG'),(30,'30','BKK Basell'),(31,'31','BKK Beiersdorf AG'),(32,'32','BKK BJB'),(33,'33','BKK BPW Bergische Achsen KG'),(34,'34','BKK Braun-Gillette'),(35,'35','BKK DEMAG KRAUSS-MAFFEI'),(36,'36','BKK der G. M. PFAFF AG'),(37,'37','BKK der MTU Friedrichshafen'),(38,'38','BKK der Thüringer Energieversorgung'),(39,'39','BKK Deutsche Bank AG'),(40,'40','BKK Diakonie'),(41,'41','BKK ESSANELLE'),(42,'42','BKK EUREGIO'),(43,'43','BKK EWE'),(44,'44','BKK exklusiv'),(45,'45','BKK Faber-Castell &amp; Partner'),(46,'46','BKK firmus'),(47,'47','BKK Freudenberg'),(48,'48','BKK Gildemeister Seidensticker ww'),(49,'49','BKK GRILLO-WERKE AG'),(50,'50','BKK Groz-Beckert'),(51,'51','BKK HENSCHEL Plus'),(52,'52','BKK Herford Minden Ravensberg'),(53,'53','BKK Herkules'),(54,'54','BKK IHV'),(55,'55','BKK KARL MAYER'),(56,'56','BKK Kassana'),(57,'57','BKK KBA'),(58,'58','BKK KEVAG KOBLENZ'),(59,'59','BKK Krones'),(60,'60','BKK Linde'),(61,'61','BKK MAHLE'),(62,'62','BKK MEDICUS'),(63,'63','BKK Melitta Plus'),(64,'64','BKK MEM'),(65,'65','BKK MERCK'),(66,'66','BKK Miele'),(67,'67','BKK Mobil Oil'),(68,'68','BKK Pfalz'),(69,'69','BKK PHOENIX'),(70,'70','BKK PricewaterhouseCoopers'),(71,'71','BKK Publik'),(72,'72','BKK Rieker.Ricosta.Weisser'),(73,'73','BKK RWE'),(74,'74','BKK Salzgitter'),(75,'75','BKK Scheufelen'),(76,'76','BKK Schleswig-Holstein'),(77,'77','BKK Schwarzwald-Baar-Heuberg'),(78,'78','BKK STADT AUGSBURG'),(79,'79','BKK Technoform'),(80,'80','BKK Textilgruppe Hof'),(81,'81','BKK VDN'),(82,'82','BKK VerbundPlus'),(83,'83','BKK Verkehrsbau Union (VBU)'),(84,'84','BKK VICTORIA - D.A.S.'),(85,'85','BKK VITAL'),(86,'86','BKK vor Ort'),(87,'87','BKK Voralb'),(88,'88','BKK Werra-Meissner'),(89,'89','BKK Wirtschaft &amp; Finanzen'),(90,'90','BKK Würth'),(91,'91','BKK ZF &amp; Partner'),(92,'92','BKK_DürkoppAdler'),(93,'93','BMW BKK'),(94,'94','Bosch BKK'),(95,'95','Brandenburgische BKK'),(96,'96','Daimler BKK'),(97,'97','Debeka BKK'),(98,'98','Deutsche BKK'),(99,'99','DIE BERGISCHE KRANKENKASSE'),(100,'100','Die Schwenninger Betriebskrankenkasse'),(101,'101','E.ON BKK'),(102,'102','energie-BKK'),(103,'103','Ernst &amp; Young BKK'),(104,'104','ESSO BKK'),(105,'105','HEAG BKK'),(106,'106','Heimat Krankenkasse'),(107,'107','Metzinger BKK'),(108,'108','mhplus Betriebskrankenkasse'),(109,'109','Novitas BKK'),(110,'110','pronova BKK'),(111,'111','R+V BKK'),(112,'112','Salus BKK'),(113,'113','SECURVITA BKK'),(114,'114','Shell BKK/LIFE'),(115,'115','SIEMAG BKK'),(116,'116','SBK'),(117,'117','SKD BKK'),(118,'118','Südzucker-BKK'),(119,'119','TUI BKK'),(120,'120','Vaillant BKK'),(121,'121','Wieland BKK'),(122,'122','WMF BKK');
/*!40000 ALTER TABLE `ia24at_insurance_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_languages`
--

DROP TABLE IF EXISTS `ia24at_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(5) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `native` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_languages`
--

LOCK TABLES `ia24at_languages` WRITE;
/*!40000 ALTER TABLE `ia24at_languages` DISABLE KEYS */;
INSERT INTO `ia24at_languages` VALUES (1,'ab','Abkhaz','аҧ??уа бызшәа, аҧ??шәа'),(2,'aa','Afar','Afaraf'),(3,'af','Afrikaans','Afrikaans'),(4,'ak','Akan','Akan'),(5,'sq','Albanian','Shqip'),(6,'am','Amharic','አማርኛ'),(7,'ar','Arabic','العربية'),(8,'an','Aragonese','aragonés'),(9,'hy','Armenian','Հայերեն'),(10,'as','Assamese','অসমীয়া'),(11,'av','Avaric','авар мацӀ, магӀарул мацӀ'),(12,'ae','Avestan','avesta'),(13,'ay','Aymara','aymar aru'),(14,'az','Azerbaijani','azərbaycan dili'),(15,'bm','Bambara','bamanankan'),(16,'ba','Bashkir','башҡорт теле'),(17,'eu','Basque','euskara, euskera'),(18,'be','Belarusian','белару??ка?? мова'),(19,'bn','Bengali, Ba','বাংলা'),(20,'bh','Bihari','भोजप???री'),(21,'bi','Bislama','Bislama'),(22,'bs','Bosnian','bosanski jezik'),(23,'br','Breton','brezhoneg'),(24,'bg','Bulgarian','българ??ки език'),(25,'my','Burmese','ဗမာစာ'),(26,'ca','Catalan, Valencian','català, valencià'),(27,'ch','Chamorro','Chamoru'),(28,'ce','Chechen','нохчийн мотт'),(29,'ny','Chichewa, Chewa, Ny','chiCheŵa, chinyanja'),(30,'zh','Chinese','中文 (Zh??ngwén), 汉语, 漢語'),(31,'cv','Chuvash','чӑваш чӗлхи'),(32,'kw','Cornish','Kernewek'),(33,'co','Corsican','corsu, lingua corsa'),(34,'cr','Cree','ᓀ??????ᔭ?????????'),(35,'hr','Croatian','hrvatski jezik'),(36,'cs','Czech','??eština, ??eský jazyk'),(37,'da','Danish','dansk'),(38,'dv','Divehi, Dhivehi, Maldi','ދިވެހި'),(39,'nl','Dutch','Nederlands, Vlaams'),(40,'dz','Dzongkha','རྫོང་???'),(41,'en','English','English'),(42,'eo','Esperanto','Esperanto'),(43,'et','Estonian','eesti, eesti keel'),(44,'ee','Ewe','Eʋegbe'),(45,'fo','Faroese','føroyskt'),(46,'fj','Fijian','vosa Vakaviti'),(47,'fi','Finnish','suomi, suomen kieli'),(48,'fr','French','français, langue française'),(49,'ff','Fula, Fulah, Pulaar, P','Fulfulde, Pulaar, Pular'),(50,'gl','Galician','galego'),(51,'ka','Georgian','ქ???რთული'),(52,'de','German','Deutsch'),(53,'el','Greek (mod','ελληνικά'),(54,'gn','Guaraní','Avañe\'ẽ'),(55,'gu','Gujarati','ગ???જરાતી'),(56,'ht','Haitian, Haitian Cr','Kreyòl ayisyen'),(57,'ha','Hausa','(Hausa) هَو??سَ'),(58,'he','Hebrew (mod','עברית'),(59,'hz','Herero','Otjiherero'),(60,'hi','Hindi','हिन???दी, हिंदी'),(61,'ho','Hiri Motu','Hiri Motu'),(62,'hu','Hungarian','magyar'),(63,'ia','Interlingua','Interlingua'),(64,'id','Indonesian','Bahasa Indonesia'),(65,'ie','Interlingue','Originally called Occidental; then Interlingue after WWII'),(66,'ga','Irish','Gaeilge'),(67,'ig','Igbo','Asụsụ Igbo'),(68,'ik','Inupiaq','Iñupiaq, Iñupiatun'),(69,'io','Ido','Ido'),(70,'is','Icelandic','??slenska'),(71,'it','Italian','italiano'),(72,'iu','Inuktitut','???ᓄᒃᑎ???ᑦ'),(73,'ja','Japanese','日本語 (??????ん???)'),(74,'jv','Javanese','basa Jawa'),(75,'kl','Kalaallisut, Greenla','kalaallisut, kalaallit oqaasii'),(76,'kn','Kannada','ಕನ???ನಡ'),(77,'kr','Kanuri','Kanuri'),(78,'ks','Kashmiri','कश???मीरी, كشميري‎'),(79,'kk','Kazakh','қазақ тілі'),(80,'km','Khmer','???្មែរ, ??????មរភាសា, ភាសា???្មែរ'),(81,'ki','Kikuyu, Gi','Gĩkũyũ'),(82,'rw','Kinyarwanda','Ikinyarwanda'),(83,'ky','Kyrgyz','Кыргызча, Кыргыз тили'),(84,'kv','Komi','коми кыв'),(85,'kg','Kongo','Kikongo'),(86,'ko','Korean','한국어, 조선어'),(87,'ku','Kurdish','Kurdî, كوردی‎'),(88,'kj','Kwanyama, Kuan','Kuanyama'),(89,'la','Latin','latine, lingua latina'),(90,'lb','Luxembourgish, Letzeburg','Lëtzebuergesch'),(91,'lg','Ganda','Luganda'),(92,'li','Limburgish, Limburgan, Limbu','Limburgs'),(93,'ln','Lingala','Lingála'),(94,'lo','Lao','ພາສາລາວ'),(95,'lt','Lithuanian','lietuvių kalba'),(96,'lu','Luba-Katanga','Tshiluba'),(97,'lv','Latvian','latviešu valoda'),(98,'gv','Manx','Gaelg, Gailck'),(99,'mk','Macedonian','македон??ки јазик'),(100,'mg','Malagasy','fiteny malagasy'),(101,'ms','Malay','bahasa Melayu, بهاس ملايو‎'),(102,'ml','Malayalam','മലയാളം'),(103,'mt','Maltese','Malti'),(104,'mi','M??ori','te reo M??ori'),(105,'mr','Marathi (Mar??ṭhī)','मराठी'),(106,'mh','Marshallese','Kajin M̧ajeļ'),(107,'mn','Mongolian','монгол'),(108,'na','Nauru','Ekakairũ Naoero'),(109,'nv','Navajo, Na','Diné bizaad, Dinékʼehǰí'),(110,'nd','Northern Ndebele','isiNdebele'),(111,'ne','Nepali','नेपाली'),(112,'ng','Ndonga','Owambo'),(113,'nb','Norwegian Bokmål','Norsk bokmål'),(114,'nn','Norwegian Nynorsk','Norsk nynorsk'),(115,'no','Norwegian','Norsk'),(116,'ii','Nuosu','ꆈꌠ꒿ Nuosuhxop'),(117,'nr','Southern Ndebele','isiNdebele'),(118,'oc','Occitan','occitan, lenga d\'òc'),(119,'oj','Ojibwe, Oj','???ᓂᔑᓈ???ᒧ??????'),(120,'cu','Old Church Slavonic, Church Slavonic, Old Bulgarian','ѩзыкъ ??ловѣнь??къ'),(121,'om','Oromo','Afaan Oromoo'),(122,'or','Oriya','ଓଡ଼ିଆ'),(123,'os','Ossetian, Oss','ирон æвзаг'),(124,'pa','Panjabi, Pun','ਪੰਜਾਬੀ, پنجابی‎'),(125,'pi','P??li','पाऴि'),(126,'fa','Persian (Fa','??ارسی'),(127,'pl','Polish','język polski, polszczyzna'),(128,'ps','Pashto, Pu','پښتو'),(129,'pt','Portuguese','português'),(130,'qu','Quechua','Runa Simi, Kichwa'),(131,'rm','Romansh','rumantsch grischun'),(132,'rn','Kirundi','Ikirundi'),(133,'ro','Romanian','limba română'),(134,'ru','Russian','ру????кий ??зык'),(135,'sa','Sanskrit (Sa???skṛta)','संस???कृतम???'),(136,'sc','Sardinian','sardu'),(137,'sd','Sindhi','सिन???धी, سنڌي، سندھی‎'),(138,'se','Northern Sami','Davvisámegiella'),(139,'sm','Samoan','gagana fa\'a Samoa'),(140,'sg','Sango','yângâ tî sängö'),(141,'sr','Serbian','??рп??ки језик'),(142,'gd','Scottish Gaelic, Ga','Gàidhlig'),(143,'sn','Shona','chiShona'),(144,'si','Sinhala, Sinha','සිංහල'),(145,'sk','Slovak','sloven??ina, slovenský jazyk'),(146,'sl','Slovene','slovenski jezik, slovenš??ina'),(147,'so','Somali','Soomaaliga, af Soomaali'),(148,'st','Southern Sotho','Sesotho'),(149,'es','Spanish, Casti','español, castellano'),(150,'su','Sundanese','Basa Sunda'),(151,'sw','Swahili','Kiswahili'),(152,'ss','Swati','SiSwati'),(153,'sv','Swedish','Svenska'),(154,'ta','Tamil','தமிழ???'),(155,'te','Telugu','తెల???గ???'),(156,'tg','Tajik','тоҷикӣ, toğikī, تاجیکی‎'),(157,'th','Thai','ไทย'),(158,'ti','Tigrinya','ት???ርኛ'),(159,'bo','Tibetan Standard, Tibetan, Cen','བོད་ཡིག'),(160,'tk','Turkmen','Türkmen, Түркмен'),(161,'tl','Tagalog','Wikang Tagalog, ???ᜒᜃᜅ᜔ ᜆᜄᜎᜓᜄ᜔'),(162,'tn','Tswana','Setswana'),(163,'to','Tonga (Tonga Isla','faka Tonga'),(164,'tr','Turkish','Türkçe'),(165,'ts','Tsonga','Xitsonga'),(166,'tt','Tatar','татар теле, tatar tele'),(167,'tw','Twi','Twi'),(168,'ty','Tahitian','Reo Tahiti'),(169,'ug','Uyghur, Ui','Uyƣurqə, ئۇيغۇرچە‎'),(170,'uk','Ukrainian','україн??ька мова'),(171,'ur','Urdu','اردو'),(172,'uz','Uzbek','O‘zbek, Ўзбек, أۇزب??ك‎'),(173,'ve','Venda','Tshivenḓa'),(174,'vi','Vietnamese','Tiếng Việt'),(175,'vo','Volapük','Volapük'),(176,'wa','Walloon','walon'),(177,'cy','Welsh','Cymraeg'),(178,'wo','Wolof','Wollof'),(179,'fy','Western Frisian','Frysk'),(180,'xh','Xhosa','isiXhosa'),(181,'yi','Yiddish','ייִדיש'),(182,'yo','Yoruba','Yorùbá'),(183,'za','Zhuang, Ch','Saɯ cueŋƅ, Saw cuengh'),(184,'zu','Zulu','isiZulu');
/*!40000 ALTER TABLE `ia24at_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_patients`
--

DROP TABLE IF EXISTS `ia24at_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `avatar` text CHARACTER SET utf8mb4 NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `postal_code` int(10) unsigned NOT NULL,
  `locality` text CHARACTER SET utf8mb4 NOT NULL,
  `street` text CHARACTER SET utf8mb4 NOT NULL,
  `street_additional` text CHARACTER SET utf8mb4 NOT NULL,
  `location_lat` double NOT NULL,
  `location_lng` double NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `languages` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `insurance` tinyint(4) NOT NULL DEFAULT '1',
  `insurance_provider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `moodle` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_patients`
--

LOCK TABLES `ia24at_patients` WRITE;
/*!40000 ALTER TABLE `ia24at_patients` DISABLE KEYS */;
INSERT INTO `ia24at_patients` VALUES (1,'t@ia24at.de','e2fc714c4727ee9395f324cd2e7f331f','','Max','Mustafa',2,'Mr.',0,'','','',0,0,'1234567890123','',2,'2',0);
/*!40000 ALTER TABLE `ia24at_patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_reservations`
--

DROP TABLE IF EXISTS `ia24at_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_reservations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` bigint(20) unsigned NOT NULL,
  `patient_id` bigint(20) unsigned NOT NULL,
  `termin_id` bigint(20) NOT NULL,
  `accept` tinyint(3) unsigned NOT NULL,
  `request` enum('0','1','2') CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `read` tinyint(3) unsigned NOT NULL,
  `archived` tinyint(3) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `gender` tinyint(3) unsigned NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `insurance` tinyint(3) unsigned NOT NULL,
  `insurance_provider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `treatment` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `return_visitor` tinyint(3) unsigned NOT NULL,
  `text_patient` text CHARACTER SET utf8mb4 NOT NULL,
  `text_notes` text CHARACTER SET utf8mb4 NOT NULL,
  `text_patient_notes` text CHARACTER SET utf8mb4 NOT NULL,
  `text_doctor_answer` text CHARACTER SET utf8mb4 NOT NULL,
  `wait` int(1) DEFAULT NULL,
  `wait_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_reservations`
--

LOCK TABLES `ia24at_reservations` WRITE;
/*!40000 ALTER TABLE `ia24at_reservations` DISABLE KEYS */;
INSERT INTO `ia24at_reservations` VALUES (1,151,706,182,0,'0',0,0,0,'2017-11-13 09:30:00','2017-11-13 10:00:00','kaldasch@arcor.de',1,'Michael','Kaldasch','+4921193077972',1,'107','0',1,'','','Hi, this is test appointment','',NULL,NULL),(2,154,706,0,1,'0',0,0,0,'2017-11-12 00:00:00','0000-00-00 00:00:00','kaldasch@arcor.de',1,'Michael','Kaldasch','+4921193077972',2,'1','',0,'','','','',1,0),(3,154,706,0,0,'0',0,0,0,'2017-11-14 00:00:00','0000-00-00 00:00:00','kaldasch@arcor.de',1,'Michael','Kaldasch','+4921193077972',2,'1','',0,'','','','',1,0),(4,154,706,0,0,'0',0,0,0,'2017-11-14 00:00:00','0000-00-00 00:00:00','kaldasch@arcor.de',1,'Michael','Kaldasch','+4921193077972',2,'1','',0,'','','','',1,0),(5,154,706,0,0,'0',0,0,0,'2017-11-14 00:00:00','0000-00-00 00:00:00','kaldasch@arcor.de',1,'Michael','Kaldasch','+4921193077972',2,'1','',0,'','','','',1,0),(6,154,706,0,0,'0',0,0,0,'2017-11-14 00:00:00','0000-00-00 00:00:00','kaldasch@arcor.de',1,'Michael','Kaldasch','+4921193077972',2,'1','',0,'','','','',1,0),(7,154,706,0,1,'0',0,0,0,'2017-11-14 00:00:00','0000-00-00 00:00:00','kaldasch@arcor.de',1,'Michael','Kaldasch','+4921193077972',2,'1','',0,'','','','',1,0);
/*!40000 ALTER TABLE `ia24at_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_speciality`
--

DROP TABLE IF EXISTS `ia24at_speciality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_speciality` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_speciality`
--

LOCK TABLES `ia24at_speciality` WRITE;
/*!40000 ALTER TABLE `ia24at_speciality` DISABLE KEYS */;
INSERT INTO `ia24at_speciality` VALUES (1,'1','Zahnarzt'),(2,'2','Allgemeinarzt / Hausarzt'),(3,'3','Frauenarzt / Gynäkologe'),(4,'4','HNO-Arzt'),(5,'5','Hautarzt / Dermatologe'),(6,'6','Augenarzt'),(7,'7','Orthopäde'),(8,'8','Psychotherapeut'),(9,'9','Urologe'),(10,'10','Plastische / Ästhetische Chirurgie'),(11,'11','Neurologe'),(12,'12','Kieferorthopäde'),(13,'13','Kinderzahnarzt'),(14,'14','Gefäßchirurg'),(15,'15','Mund-Kiefer-Gesichtschirurg'),(16,'17','Oralchirurg'),(17,'18','Radiologie'),(18,'19','Homöopath'),(19,'20','Internist'),(20,'21','Psychiater'),(21,'22','Allergologe'),(22,'23','Facharzt für Venenleiden'),(23,'24','Isopathe'),(24,'25','Anästhesist'),(25,'26','Heilpraktiker'),(26,'27','Traditionelle chinesische Medizin'),(27,'28','Akupunkteur'),(28,'29','Psychosomatiker'),(29,'30','Implantologe'),(30,'31','Pflanzenheilkunde'),(31,'32','Massage'),(32,'33','Physiotherapeut'),(33,'34','Kinderarzt'),(34,'35','Kardiologe'),(35,'36','Kinderwunsch / Reproduktionsmedizin'),(36,'37','Diabetologe'),(37,'38','Chirurg'),(38,'39','Refraktive Chirurgie / Augenoperationen'),(39,'40','ästhetische Medizin'),(40,'41','Ergotherapie'),(41,'42','Schmerztherapie'),(42,'43','Pneumologe / Lungenfacharzt'),(43,'45','Hausbesuch'),(44,'46','Neurochirurg'),(45,'47','Wirbelsäulenchirurg'),(46,'48','MRT-Diagnostik'),(47,'60','Nuklearmedizin'),(48,'62','Heilpraktiker für Psychotherapie'),(49,'63','Facharzt für rehabilitative und physikalische Medizin'),(50,'64','Gastroenterologe'),(51,'65','Hypnosetherapeut'),(52,'66','Bioresonanztherapie'),(53,'67','Naturheilkunde'),(54,'68','Andrologie'),(55,'69','Proktologie / Erkrankungen des Enddarms'),(56,'70','Endokrinologie'),(57,'71','Geriatrie / Altersheilkunde'),(58,'73','Rheumatologie'),(59,'74','Schlafmedizin'),(60,'75','Präventivmedizin'),(61,'76','Sportmedizin'),(62,'77','Osteologie'),(63,'78','Ernährungsmedizin'),(64,'79','Anthroposophische Medizin'),(65,'80','Komplementäre Onkologie'),(66,'81','Logopädie'),(67,'82','Psychologe'),(68,'83','Psychologischer Psychotherapeut'),(69,'84','Laserheilkunde'),(70,'85','Unfallchirurgie'),(71,'86','Orthopädie und Unfallchirurgie'),(72,'87','Durchgangsarzt');
/*!40000 ALTER TABLE `ia24at_speciality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia24at_speciality_treatment`
--

DROP TABLE IF EXISTS `ia24at_speciality_treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia24at_speciality_treatment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `speciality_code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=333 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia24at_speciality_treatment`
--

LOCK TABLES `ia24at_speciality_treatment` WRITE;
/*!40000 ALTER TABLE `ia24at_speciality_treatment` DISABLE KEYS */;
INSERT INTO `ia24at_speciality_treatment` VALUES (1,'1','1','Akute Zahnschmerzen'),(2,'1','24','Beratung: Implantat'),(3,'1','4','Beratung: Zahnersatz'),(4,'1','26','Bleaching/Zahnaufhellung '),(5,'1','320','CEREC-Verfahren'),(6,'1','136','Ersttermin'),(7,'1','46','Funktionsdiagnostik/-therapie'),(8,'1','2','Füllungen'),(9,'1','142','Implantat'),(10,'1','240','Kiefergelenksbeschwerden'),(11,'1','143','Kindersprechstunde'),(12,'1','5','Kontrolluntersuchung'),(13,'1','45','Laserbehandlung'),(14,'1','165','Notfallsprechstunde'),(15,'1','47','Orale Chirurgie'),(16,'1','43','Parodontologie'),(17,'1','6','Professionelle Zahnreinigung'),(18,'1','41','Prophylaxe'),(19,'1','7','Sonstige Behandlung'),(20,'1','302','Sprechstunde'),(21,'1','25','Weisheitszahnproblematik'),(22,'1','3','Wurzelbehandlung/Endodontie'),(23,'1','42','Zahnschmuck'),(24,'1','44','Ästhetische Zahnheilkunde'),(25,'2','185','Check Up'),(26,'2','181','Chirotherapie'),(27,'2','186','EKG'),(28,'2','187','Ersttermin'),(29,'2','15','Sonstige Behandlung'),(30,'2','166','Sprechstunde'),(31,'3','68','3D Ultraschall'),(32,'3','8','Akute Beschwerden/Notfall'),(33,'3','80','Alternative Heilmethoden/ Akupunktur'),(34,'3','293','Ambulante Chemotherapie'),(35,'3','58','Ambulante Operationen'),(36,'3','307','Beckenbodenprobleme'),(37,'3','56','Beratung: Verhütung'),(38,'3','182','Empfängnisregelung Beratung'),(39,'3','137','Ersttermin'),(40,'3','59','Geschlechtskrankheiten'),(41,'3','9','Gespräch'),(42,'3','183','Halbjahreskontrolluntersuchung'),(43,'3','49','Hormonbehandlung'),(44,'3','140','Impfung'),(45,'3','48','Kinderwunsch'),(46,'3','10','Kontrolluntersuchung'),(47,'3','11','Krebsvorsorge '),(48,'3','157','Nachsorge'),(49,'3','160','Notfallsprechstunde'),(50,'3','285','OP-Termin'),(51,'3','275','Polyzystisches Ovarialsyndrom'),(52,'3','57','Reisemedizin'),(53,'3','12','Schwangeren Erstuntersuchung '),(54,'3','13','Schwangerschaftsvorsorge '),(55,'3','14','Sonstige Behandlung'),(56,'3','168','Sprechstunde'),(57,'3','174','Teenager Sprechstunde'),(58,'3','175','Vorgespräche OP'),(59,'4','52','Allergiediagnostik'),(60,'4','94','Alternative Heilmethoden/ Akupunktur'),(61,'4','51','Ambulante Operationen'),(62,'4','53','Beratung: Hörgeräte'),(63,'4','131','Ersttermin'),(64,'4','84','Hördiagnostik/ Hörtest'),(65,'4','83','Hörgeräte: Versorgung und Kontrolle'),(66,'4','150','Kontrolle'),(67,'4','87','Krebsvorsorge'),(68,'4','162','Notfallsprechstunde'),(69,'4','55','Plastische Chirurgie'),(70,'4','54','Reisemedizin'),(71,'4','82','Riech- und Geschmackstörung'),(72,'4','85','Schnarchtherapie'),(73,'4','50','Schwindeltherapie/ Tinitus'),(74,'4','16','Sonstige Behandlung'),(75,'4','169','Sprechstunde'),(76,'4','81','Stimm- und Sprachstörung'),(77,'4','86','Tauchtauglichkeit'),(78,'5','65','Aknetherapie'),(79,'5','62','Allergiediagnostik'),(80,'5','120','Allergietest'),(81,'5','63','Ambulante Operationen'),(82,'5','78','Beratung: Haarausfall'),(83,'5','125','Ersttermin'),(84,'5','67','Haut- und Geschlechtskrankheiten'),(85,'5','145','Kontrolle'),(86,'5','64','Kosmetische Behandlung: Fruchtsäurepeeling'),(87,'5','61','Krebsvorsorge'),(88,'5','60','Laserbehandlung'),(89,'5','159','Notfallsprechstunde'),(90,'5','79','Photodynamische Therapier/ Lichttherapie'),(91,'5','66','Reisemedizin'),(92,'5','17','Sonstige Behandlung'),(93,'6','72','Ambulante Operationen'),(94,'6','73','Beratung: Diabetes mellitus'),(95,'6','70','Beratung: Kontaktlinsen'),(96,'6','126','Ersttermin'),(97,'6','76','Kontaktlinsen: Anpassung und Kontrolle'),(98,'6','146','Kontrolle'),(99,'6','75','Kosmetische Chirurgie'),(100,'6','69','Laserbehandlung'),(101,'6','74','Refraktive Chirurgie'),(102,'6','77','Reisemedizin'),(103,'6','71','Sehtest'),(104,'6','18','Sonstige Behandlung'),(105,'6','167','Sprechstunde'),(106,'7','101','Alternative Heilmethoden/ Akupunktur'),(107,'7','104','Ambulante Operationen'),(108,'7','133','Ersttermin'),(109,'7','99','Ostheoporose'),(110,'7','98','Schmerztherapie'),(111,'7','19','Sonstige Behandlung'),(112,'7','100','Sportmedizinische Untersuchung'),(113,'7','171','Sprechstunde'),(114,'7','102','Stoßwellentherapie'),(115,'7','103','Säuglings- und Kinderorthopädie'),(116,'7','294','Taping'),(117,'8','309','Burnout'),(118,'8','271','Ersttermin'),(119,'8','317','Gestalttherapie'),(120,'8','270','Kognitive Verhaltenstherapie'),(121,'8','318','Paartherapie'),(122,'9','109','Ambulante Operationen'),(123,'9','122','Blasenspiegelung (Frau)'),(124,'9','123','Blasenspiegelung (Mann)'),(125,'9','265','Circumcision'),(126,'9','105','Erektionsstörungen'),(127,'9','135','Ersttermin'),(128,'9','106','Fruchtbarkeitsuntersuchung/ -behandlung'),(129,'9','110','Geschlechtskrankheiten'),(130,'9','138','Harnröhrenabstrich'),(131,'9','113','Hämorrhoiden'),(132,'9','112','Kinderurologie'),(133,'9','308','Kontinenzprobleme'),(134,'9','155','Krebsvorsorge'),(135,'9','107','Medizinische Vorhautentfernung'),(136,'9','156','Metabolic Balance'),(137,'9','164','Notfallsprechstunde'),(138,'9','111','Prostatadiagnostik'),(139,'9','21','Sonstige Behandlung'),(140,'9','172','Sprechstunde'),(141,'9','264','Vasektomie'),(142,'9','176','Vorsorge'),(143,'9','108','Vorsorgeuntersuchung Mann'),(144,'10','199','Armstraffung'),(145,'10','200','Augenlidstraffung'),(146,'10','201','Bauchdeckenstraffung'),(147,'10','202','Bodylifting'),(148,'10','203','Botulinumtoxin'),(149,'10','205','Brustreduktion beim Mann'),(150,'10','89','Brustvergrößerung/ -verkleinerung'),(151,'10','206','Faltenunterspritzung'),(152,'10','93','Gesichtslifting/ facelifting'),(153,'10','207','Haartransplantation'),(154,'10','88','Handchirurgie'),(155,'10','208','Implantat- wechsel'),(156,'10','209','Kinnkorrektur'),(157,'10','90','Liposuktion/ Fettabsaugen'),(158,'10','210','Lippenvergrösserung'),(159,'10','91','Narbenentfernung'),(160,'10','211','Nasenkorrektur'),(161,'10','212','Ohrenkorrektur'),(162,'10','233','Penisverlängerung'),(163,'10','95','Permanent Make-Up'),(164,'10','97','Phlebologie'),(165,'10','213','Profilkorrektur'),(166,'10','214','Schamlippenverkleinerung'),(167,'10','92','Schweißdrüsenentfernung'),(168,'10','22','Sonstige Behandlung'),(169,'10','215','Stirnlifting / Brauenlifting'),(170,'10','96','Unfallchirurgie'),(171,'11','23','Sonstige Behandlung'),(172,'12','20','Sonstige Behandlung'),(173,'13','239','Ersttermin'),(174,'13','304','Kontrolluntersuchung'),(175,'13','303','Schmerzfall'),(176,'13','301','Sprechstunde'),(177,'14','128','Ersttermin'),(178,'14','147','Kontrolle'),(179,'15','178','Sprechstunde'),(180,'17','238','Orale Chirurgie'),(181,'18','221','CT'),(182,'18','224','Duplex-Sonographie'),(183,'18','114','Kinderradiologie'),(184,'18','227','Mammographie'),(185,'18','234','MRT-Diagnostik'),(186,'18','226','Röntgen'),(187,'18','115','Sonstige Behandlungen'),(188,'18','223','Ultraschall-Sonographie'),(189,'19','261','Homöopathische Therapie'),(190,'20','124','Check Up'),(191,'20','177','EKG'),(192,'20','306','Ergometrie'),(193,'20','132','Ersttermin'),(194,'20','139','Impfung'),(195,'20','151','Kontrolle'),(196,'20','163','Notfallsprechstunde'),(197,'20','170','Sprechstunde'),(198,'20','305','Tauchtauglichkeit'),(199,'21','217','Ersttermin'),(200,'22','119','Allergietest'),(201,'22','218','Bioresonanz'),(202,'22','121','Ersttermin'),(203,'22','144','Kontrolle'),(204,'22','153','Krebsvorsorge'),(205,'22','158','Notfallsprechstunde'),(206,'23','129','Ersttermin'),(207,'23','148','Kontrolle'),(208,'23','154','Krebsvorsorge'),(209,'23','161','Notfallsprechstunde'),(210,'24','251','Biokybernetische Medizin'),(211,'25','252','Anästhesist'),(212,'26','33','Allergien'),(213,'26','34','Autoimmunerkrankungen'),(214,'26','118','Beratung'),(215,'26','27','Beschwerden des Bewegungsapparats'),(216,'26','36','Diabetes'),(217,'26','28','Entgiftung und Ausleitungstherapie'),(218,'26','290','Ersttermin'),(219,'26','130','Ersttermin'),(220,'26','39','Gewichtsreduktion'),(221,'26','149','Kontrolle'),(222,'26','37','Kopfschmerzen und Migräne'),(223,'26','38','Menstruations- und Wechseljahrsbeschwerden'),(224,'26','32','Nahrungsmittelunverträglichkeiten'),(225,'26','35','Neurodermitis'),(226,'26','29','Schmerzsyndrome'),(227,'26','31','Stoffwechselerkrankungen'),(228,'26','30','Verdauungsstörungen'),(229,'32','310','Massagetherapie'),(230,'27','241','chinesische Kräutertherapie'),(231,'27','289','Ersttermin'),(232,'27','242','Traditionelle Chinesische Medizin'),(233,'28','237','Akupunktur'),(234,'29','311','Ersttermin'),(235,'30','180','Chirurgie'),(236,'30','141','Implantat'),(237,'30','179','Laserbehandlung'),(238,'30','173','Sprechstunde'),(239,'31','313','Ayurveda'),(240,'31','312','Traditionelle Chinesische Medizin'),(241,'31','314','traditionelle Phythotherapie'),(242,'33','191','Krankengymnastik'),(243,'33','195','Lymphdrainagen'),(244,'33','192','Manuelle Therapie'),(245,'33','196','Massagen'),(246,'33','193','Osteopathie'),(247,'33','197','Physikalische Therapie'),(248,'33','194','Sportphysiotherapie'),(249,'34','184','kindersprechstunde'),(250,'35','236','Sprechstunde'),(251,'36','188','Kinderwunsch'),(252,'37','272','Diabetes mellitus'),(253,'37','127','Ersttermin'),(254,'38','340','ACP/PRP-Behandlungen'),(255,'38','338','Ambulante Operationen'),(256,'38','345','arthroskopische Gelenkchirurgie'),(257,'38','342','Endoprothetik (Hüft- und Kniegelenke)'),(258,'38','330','Ersttermin'),(259,'38','198','Ersttermin'),(260,'38','339','Extrakorporale Stoßwellentherapie'),(261,'38','332','Fußchirurgie'),(262,'38','334','Handchirurgie'),(263,'38','333','Hernienchirurgie'),(264,'38','341','Hyaloronsäurebehandlung (Arthrosebehandlung)'),(265,'38','336','Kassenärztliche chirurgische / unfallchirurgische Sprechstunde'),(266,'38','337','Kassenärztliche chirurgische / unfallchirurgische Sprechstunde'),(267,'38','335','Kniechirurgie'),(268,'38','344','Proktologie'),(269,'38','346','Sonographische Diagnostik'),(270,'38','343','Stationäre Operationen'),(271,'39','288','Ersttermin'),(272,'40','229','Botox'),(273,'40','228','Faltenunterspritzung'),(274,'40','230','G-Punkt-Unterspritzung'),(275,'40','284','Hyaluronsäure'),(276,'40','283','Laserbehandlung'),(277,'41','235','Ergotherapie'),(278,'42','253','Schmerztherapie'),(279,'43','266','Ersttermin'),(280,'45','189','Sonstige Behandlung'),(281,'46','190','Ersttermin'),(282,'47','216','Ersttermin'),(283,'48','282','Ellenbogen-MRT'),(284,'48','220','Gynäkologisches MRT'),(285,'48','278','Knie-MRT'),(286,'48','281','MRT der Hände'),(287,'48','279','MRT der Hüfte'),(288,'48','219','Neuro-MRT'),(289,'48','280','Schulter-MRT'),(290,'48','276','Schädel-MRT'),(291,'48','277','Wirbelsäulen-MRT'),(292,'60','324','Ersttermin'),(293,'62','247','Atemtherapie'),(294,'62','248','Gesprächstherapie'),(295,'62','245','Hypnose'),(296,'62','249','NLP (Neurolinguistisches Programmieren)'),(297,'62','243','Psychotherapie'),(298,'62','244','Singtherapie'),(299,'62','246','Stimmtherapie'),(300,'63','250','Sprechstunde'),(301,'64','257','Darmspiegelung'),(302,'64','254','Ersttermine'),(303,'64','256','Magenballon'),(304,'64','255','Magenspiegelung'),(305,'65','258','Hypnose'),(306,'65','259','Raucherentwöhnung'),(307,'66','260','Bioresonanztherapie'),(308,'67','295','Akupunktur'),(309,'67','300','Allergien'),(310,'67','299','Dorn- / Breußtherapie'),(311,'67','296','Fußreflexzonenmassage'),(312,'67','297','Irisdiagnose'),(313,'67','263','Schmerztherapie'),(314,'67','298','Triggerpunktmassage'),(315,'67','262','Tumortherapie'),(316,'69','267','Ersttermin'),(317,'70','268','Ersttermin'),(318,'71','269','First appointment'),(319,'73','274','Arthrose'),(320,'73','273','Osteoporose'),(321,'74','322','Ersttermin'),(322,'76','326','Sportmedizinische Beratung'),(323,'77','287','Ersttermin'),(324,'78','286','Ersttermin'),(325,'79','291','Ersttermin'),(326,'80','292','Ersttermin'),(327,'81','316','Ersttermin'),(328,'82','319','Ersttermin'),(329,'83','321','Ersttermin'),(330,'84','323','Ersttermine'),(331,'85','331','Ersttermin'),(332,'87','325','Arbeits-/Kita-, Schul- und Wegeunfälle');
/*!40000 ALTER TABLE `ia24at_speciality_treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-17 16:45:13
