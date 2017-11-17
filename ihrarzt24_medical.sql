-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: ihrarzt24_medical
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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `specialization1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 NOT NULL,
  `taken_morning` int(5) NOT NULL,
  `taken_morning_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `taken_lunch` int(5) NOT NULL,
  `taken_lunch_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `taken_evening` int(5) NOT NULL,
  `taken_evening_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `appointment_date` date NOT NULL DEFAULT '0000-00-00',
  `emergency` int(10) NOT NULL,
  `document_date` date NOT NULL,
  `delete_status` int(11) NOT NULL,
  `discontinued_desc` text CHARACTER SET latin1 NOT NULL,
  `date_added` date NOT NULL DEFAULT '0000-00-00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `access_permission` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_sugar`
--

DROP TABLE IF EXISTS `blood_sugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_sugar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bloodsugar` varchar(30) CHARACTER SET latin1 NOT NULL,
  `HbA1C` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rec_date` date NOT NULL,
  `rec_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `graph_generation` int(10) NOT NULL,
  `access_permission` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_sugar`
--

LOCK TABLES `blood_sugar` WRITE;
/*!40000 ALTER TABLE `blood_sugar` DISABLE KEYS */;
INSERT INTO `blood_sugar` VALUES (1,706,706,'role_patient','87','5','2017-10-05','22:20:00',0,2,'2017-10-05 20:32:05','0000-00-00 00:00:00'),(2,706,706,'role_patient','89','5.2','2017-05-16','22:20:00',0,2,'2017-10-05 20:32:21','0000-00-00 00:00:00'),(3,706,706,'role_patient','91','5.1','2016-09-05','22:20:00',0,2,'2017-10-05 20:32:38','0000-00-00 00:00:00'),(4,706,706,'role_patient','93','5,1','2016-11-20','19:42:48',0,2,'2017-11-16 19:43:21','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `blood_sugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodymap`
--

DROP TABLE IF EXISTS `bodymap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodymap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pain_intensity` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pain_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `qualities` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_from` datetime NOT NULL,
  `time_from` varchar(10) CHARACTER SET latin1 NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(50) CHARACTER SET latin1 NOT NULL,
  `patient_id` int(11) NOT NULL,
  `x_position` varchar(255) CHARACTER SET latin1 NOT NULL,
  `y_position` varchar(255) CHARACTER SET latin1 NOT NULL,
  `access_permission` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodymap`
--

LOCK TABLES `bodymap` WRITE;
/*!40000 ALTER TABLE `bodymap` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodymap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casehistory`
--

DROP TABLE IF EXISTS `casehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casehistory` (
  `id` double NOT NULL AUTO_INCREMENT,
  `patient_id` double DEFAULT NULL,
  `doctor_id` double DEFAULT NULL,
  `symptom_current_history` blob,
  `vegetative_anamnese` blob,
  `pre_existing_conditions` blob,
  `drug_history` blob,
  `allergies` blob,
  `related_products` blob,
  `family_history` blob,
  `social_history` blob,
  `attending_physicians` blob,
  `general_findings` blob,
  `head_and_neck` blob,
  `thorax_and_lungs` blob,
  `heart_circulation_blood_vessels` blob,
  `abdomen` blob,
  `motion_apparatus` blob,
  `nervous_system` blob,
  `maintenance_state` blob,
  `other_findings` blob,
  `bodylocations` blob NOT NULL,
  `remarks` blob NOT NULL,
  `case_history_details` blob,
  `document_date` date DEFAULT NULL,
  `document_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casehistory`
--

LOCK TABLES `casehistory` WRITE;
/*!40000 ALTER TABLE `casehistory` DISABLE KEYS */;
INSERT INTO `casehistory` VALUES (1,706,151,'58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','¥®vÑ\…uÛå\0 ªÇ∫\œ“πÑ∞=é/BæHßF!\Œ˜aÆï^◊∑l2Ω¨∞\Ôç\ÁÇ?ÄÒ•\…π\÷¸\Âø\∆!/Ùò\\C¶æ\⁄UbÜsmz\‹\Ÿ≥ı}\ruŒáçzNõ\”~Éô¿f','2017-09-20','22:43:20','2017-10-05 22:44:17','0000-00-00 00:00:00',0),(2,706,151,'58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','2017-10-19','21:05:27','2017-10-19 21:12:20','0000-00-00 00:00:00',0),(3,706,151,':Ú:≠©Úgú<rz\·†','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','è2b\Î\ÁÒ´Ä\ËA7ˇ≤','ø1/üûû´\–2RkáoÜuÅ2ôc©èå{íßd„∏≤qóí≤Eö\Œh¨ˇÙ˜nπ¯3ˇ¶\·MûÚ\ƒX¯µEE¬É\Õ4Ö\Ár(ìÖ†',',üˇz∫\ÎÄ1§n\‡î\Á¡','à[ÅpB“∏\Ëyè\ÿÚè4A˘\·\⁄\‡˘aû\Œ\r\ÿ\„e∆∞|\Ë˘\"l\»}4\÷yä∑-\œ3Ωı¨éª\≈Mí\’óñ\'Ü´q\Œ\0a\„vô\'≈øöë','2017-10-27','21:20:49','2017-10-27 21:23:33','0000-00-00 00:00:00',0),(4,706,151,'58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','2017-10-31','14:19:34','2017-10-31 14:20:11','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `casehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comnpain`
--

DROP TABLE IF EXISTS `comnpain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comnpain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complain_scale` varchar(10) CHARACTER SET latin1 NOT NULL,
  `pain_intensity` varchar(10) CHARACTER SET latin1 NOT NULL,
  `pain_type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pounding` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `stabbing` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `cramplike` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `dull` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `aching` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `burning` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `keyword` blob NOT NULL,
  `details` blob NOT NULL,
  `access_permission` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `x_position` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `y_position` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `full_pos_image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(50) CHARACTER SET latin1 NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comnpain`
--

LOCK TABLES `comnpain` WRITE;
/*!40000 ALTER TABLE `comnpain` DISABLE KEYS */;
INSERT INTO `comnpain` VALUES (1,'3','6','acute','0','0','1','0','0','0','π>I\◊œ≥ãrú¥2`c\„m','Òk\‰6∂ãß†\‡1\Õsµ\ÌÛiKΩ*\”[Ò9˘',1,'2017-10-05 22:22:22','2017-10-27','20:55:30','2017-10-27 18:59:43',0,NULL,NULL,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/37817e7a4ce769a9fbab5372390482f5.png',706,'role_patient',706),(2,'4','7','acute','0','1','1','0','0','1','≈àÄ∏ˆ\ƒ\r\ÊGc%OYjõ4ÆríùÕîñR\…x\…˚e','\Ìµ\¬\›7¸`\…√™2µ»∫Ñ\n',2,'2017-10-10 16:43:57','2017-10-10','16:42:28','0000-00-00 00:00:00',0,NULL,NULL,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/f260fa60dd40a0d2f7a69e3153663558.png',706,'role_patient',706),(3,'10','5','acute','1','1','0','0','0','1','4´‹´é±\„v(®˚\'\"','T0	’èq\Íû˛OO´\È˜l)x≠°TÊºÅrı\È4»∑~Dª\„{yDîîıj⁄≥',2,'2017-10-16 11:20:09','2017-10-16','11:15:49','0000-00-00 00:00:00',0,NULL,NULL,'0',710,'role_patient',710),(4,'5','0',NULL,'0','0','0','0','0','0','@<Fuˆˆ¯\‚Ø€ÜR\Ï&ºï','yHg\„8§µq\ÿV⁄ï\Zøy',2,'2017-10-22 19:18:34','2017-10-22','19:09:29','0000-00-00 00:00:00',0,NULL,NULL,'0',710,'role_patient',710),(5,'3','6','acute','0','0','1','0','0','0','π>I\◊œ≥ãrú¥2`c\„m','Òk\‰6∂ãß†\‡1\Õsµ\ÌÛiKΩ*\”[Ò9˘',2,'2017-10-27 20:59:12','2017-10-27','20:55:30','0000-00-00 00:00:00',0,NULL,NULL,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/29ca6c0b113fcc7d10907d849c1be4e6.png',706,'role_patient',706),(6,'5','6','acute','','','','','','','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv',2,'2017-11-09 19:40:46','2009-11-20','19:40:33','0000-00-00 00:00:00',0,NULL,NULL,'',706,'role_patient',706),(7,'5','3','acute','','','','','','','1çV	ü\Ã.7\ÌÅ˝ˇ\„\Óˆ','ˆ,∂\‹\‰`_¿0ï\‡,± ≠',2,'2017-11-13 05:09:25','2013-11-20','07:09:12','0000-00-00 00:00:00',0,NULL,NULL,'',706,'role_patient',706),(8,'5','1','acute','','','','','','','ùs!\ní©\nnÙ\Ô6wêç\ﬂ\›','@<Fuˆˆ¯\‚Ø€ÜR\Ï&ºï',2,'2017-11-13 05:14:22','2013-11-20','07:09:46','0000-00-00 00:00:00',0,NULL,NULL,'',706,'role_patient',706),(9,'5','3','acute','','','','','','','1çV	ü\Ã.7\ÌÅ˝ˇ\„\Óˆ','@<Fuˆˆ¯\‚Ø€ÜR\Ï&ºï',2,'2017-11-14 17:59:26','2014-11-20','19:59:13','0000-00-00 00:00:00',0,NULL,NULL,'',714,'role_patient',714),(10,'5','1','acute','','','','','','','1çV	ü\Ã.7\ÌÅ˝ˇ\„\Óˆ','@<Fuˆˆ¯\‚Ø€ÜR\Ï&ºï',2,'2017-11-14 18:02:07','2014-11-20','20:01:49','0000-00-00 00:00:00',0,NULL,NULL,'',706,'role_patient',706);
/*!40000 ALTER TABLE `comnpain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comnpain_files`
--

DROP TABLE IF EXISTS `comnpain_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comnpain_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comnpain_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comnpain_files`
--

LOCK TABLES `comnpain_files` WRITE;
/*!40000 ALTER TABLE `comnpain_files` DISABLE KEYS */;
INSERT INTO `comnpain_files` VALUES (1,2,8);
/*!40000 ALTER TABLE `comnpain_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comnpain_pain_position`
--

DROP TABLE IF EXISTS `comnpain_pain_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comnpain_pain_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x_position` float NOT NULL,
  `y_position` float NOT NULL,
  `comnpain_id` int(11) NOT NULL,
  `image_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comnpain_pain_position`
--

LOCK TABLES `comnpain_pain_position` WRITE;
/*!40000 ALTER TABLE `comnpain_pain_position` DISABLE KEYS */;
INSERT INTO `comnpain_pain_position` VALUES (1,164.5,121.67,1,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/e90de9ad102a3eb312e8d8c00a665381.png'),(2,55.5,90.13,2,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/3e779059c1a26cf471ed83d286db21d1.png'),(3,59.5,147.3,2,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/268acfa043e2deedf110f7f55d02328d.png'),(4,33.5,198.56,2,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/28cb3242a9587cb66b1e3a5900de6f92.png'),(5,35.5,261.64,2,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/1cfc567c860e8470dd567c4254c96fa1.png'),(7,62,171.02,3,'0'),(10,55.5,119.7,5,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/928d4d4db487678aa6d9a3a9b05741a8.png'),(11,63.5,123.64,5,'./protected/uploads/patient/b68496834b43070aa5f37de58391e3e9/fb6e4e48f50e38c30ea5b4c350bbef2a.png'),(12,91.5,119,6,'0'),(13,91,72.5,6,'0'),(14,97.5,190.5,7,'0'),(15,271.5,183,7,'0'),(16,70,102.5,9,'./protected/uploads/patient/3538b2060dc57b185a0450e0da531b76/702ff71c9263e75296a3c88c75d2a1e3.png'),(17,249,106.5,9,'./protected/uploads/patient/3538b2060dc57b185a0450e0da531b76/09747dd89a25e8f2e1b218a7e349b6c3.png'),(18,101,95.5,10,'./protected/uploads/patient/3538b2060dc57b185a0450e0da531b76/3f7d03b821d9827df7cea2de90f38071.png'),(19,246.5,90.5,10,'./protected/uploads/patient/3538b2060dc57b185a0450e0da531b76/3152c0c457933980fa9ee435add4f9ea.png');
/*!40000 ALTER TABLE `comnpain_pain_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnoses`
--

DROP TABLE IF EXISTS `diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnoses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icd_code` blob NOT NULL,
  `title` blob NOT NULL,
  `description` blob NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 NOT NULL,
  `document` text CHARACTER SET latin1 NOT NULL,
  `allergy` int(5) NOT NULL,
  `access_permission` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_confirmed` datetime NOT NULL,
  `date_emergency` datetime NOT NULL,
  `country_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `entry_from` int(5) NOT NULL,
  `delete_status` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses`
--

LOCK TABLES `diagnoses` WRITE;
/*!40000 ALTER TABLE `diagnoses` DISABLE KEYS */;
INSERT INTO `diagnoses` VALUES (1,706,706,'role_patient','∫¸i…õ5≥\”\Ãoïú','≠.v˝ñê9a>M\»A\ÿ;\Z™Å\Ÿ˛MH1yt˘°Øl','ï.U8`ñœÄ4òq\„˝\Î\‘\"4¿2\÷-ª$ƒç9M[≥ˇp†Q\⁄ÛqC(‡ªõ»∫˛\Á¿tè∫√®zqf\«','2017-10-05','22:20:15','0','',1,2,'2017-10-05 20:23:23','2017-10-25 00:51:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2017-10-25','2017-10-25',0,0),(2,706,706,'role_patient','^c@\rˇô3pΩ\ÈQô','¬ßπ_Xg\«9µ¡\Ë\·C•öR£π\⁄z\«∆´ß\“-?%@\ﬂX>l£P\ÿ\∆YÇq^ˇÄdü∂V\»','ÑK\œÙ›ä∂}Z;¶¥\·ê','2017-10-27','20:55:30','0','',0,2,'2017-10-27 19:00:49','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',55,'2017-10-02','2017-10-09',1,0),(3,706,706,'role_patient','©©ù\"\ÏbÄ)â{q∑mE','t\∆\”\’˚¥Ä\”wzV_X∆à^F6\›Iiç	Í£ôOpco),\’\Œ]cÀök\¬b.\€&Q','y¥t$<NE3\0\“wY\‡g','2017-11-12','09:52:42','0','',0,1,'2017-11-12 08:53:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2017-11-12','2017-11-12',0,0),(4,706,154,'role_doctor','3°ä≤\“gõ,K≠1í{','4o/(\Ó\Ô\÷Q\…6\œ18ï1zµz$üÒÅÆ/55∞É\√$˝Ú£†1€¨\ƒp7K´','}\‹w\»räÖéˆ\⁄Ü\’,\ÔèF@˚0\‘\√Òˇ´í£\¬a™','2017-11-12','09:59:14','1','',0,1,'2017-11-12 09:01:24','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2017-11-12','2017-11-12',0,0),(5,706,706,'role_patient','	eù<pIÖ\»S¯òS \ﬂ\‡','ü<y\"Ú´ì\÷7î1\€\‡¯®=¡	y\ﬂ\ÁJ\nR\'\Ô˛à\”nQ7å\Óhñ\ÔJˆ-Aû\ƒ$ª7§q~Ç¡\Ìïo5µüµ','g;Ω,vú´2\‚™?JìK','2013-11-20','07:14:42','','',1,2,'2017-11-13 05:15:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'1970-01-01','1970-01-01',0,0),(6,706,706,'role_patient','%d\Á≠\‹\Ál`ïwú,(L\ƒ\Ê','∑Ö[˘l\n/	˚Ä≠]ñWŸÇ˛≠\Â[~D\Œ.Ézh:\\\À','Úû.~\◊.@ªjh®/\Óï','2013-11-20','07:41:15','','',1,2,'2017-11-13 05:42:37','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'1970-01-01','1970-01-01',0,0),(7,706,706,'role_patient','%d\Á≠\‹\Ál`ïwú,(L\ƒ\Ê','∑Ö[˘l\n/	˚Ä≠]ñWŸÇ˛≠\Â[~D\Œ.Ézh:\\\À','Ä~ÃÅzP\ﬁx„®¥D&~\√','2014-11-20','07:28:56','','',1,2,'2017-11-14 05:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'1970-01-01','1970-01-01',0,0),(8,714,714,'role_patient','Ù\‡{\‚\€~pﬁ∏\¬Hï∂Kb','\‰\√¬çµ#Å?\€Ìπµ@®\¬˘\›Ø0e%äf|Ä\0ˇ:\rÛCÑÙ≤∞Omå\Œ\Óû','\√<X\Ã˚G≠\….∑Q\Í	','2014-11-20','20:09:32','','',1,2,'2017-11-14 18:09:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'1970-01-01','1970-01-01',0,0),(9,709,154,'role_doctor','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','2017-11-15','18:24:01','1','',0,1,'2017-11-15 17:24:13','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2017-11-15','2017-11-15',0,0);
/*!40000 ALTER TABLE `diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnoses_files`
--

DROP TABLE IF EXISTS `diagnoses_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnoses_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_name` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses_files`
--

LOCK TABLES `diagnoses_files` WRITE;
/*!40000 ALTER TABLE `diagnoses_files` DISABLE KEYS */;
INSERT INTO `diagnoses_files` VALUES (1,706,0,1,12,''),(2,706,0,1,13,''),(3,706,0,1,14,''),(5,0,0,7,25,''),(6,0,0,8,27,'');
/*!40000 ALTER TABLE `diagnoses_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_prescription`
--

DROP TABLE IF EXISTS `doctor_prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_prescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `insurance_provider` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `patient_information` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `patient_dob` date NOT NULL,
  `checkoutno` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `insuredno` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pres_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `premisesno` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `physicianno` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reference_date` date DEFAULT NULL,
  `bvg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `aid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `duty` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `copayment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `chemists_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_gross` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `regulation1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `regulation2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `regulation3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `factor1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `factor2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `factor3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tax1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tax2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tax3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `check1` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check2` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check3` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check4` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check5` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check6` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check7` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check8` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check9` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `doctor_information` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medication_details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `accident` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `accidentno` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_type` int(11) NOT NULL,
  `priscriptiton_type` int(11) DEFAULT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_prescription`
--

LOCK TABLES `doctor_prescription` WRITE;
/*!40000 ALTER TABLE `doctor_prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elfinder_files`
--

DROP TABLE IF EXISTS `elfinder_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elfinder_files` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(7) unsigned NOT NULL,
  `owner_regid` varchar(256) NOT NULL,
  `owner_is_doctor` enum('1','0') NOT NULL DEFAULT '0',
  `parent_id` int(7) unsigned NOT NULL,
  `name` varchar(256) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `phash` varchar(256) NOT NULL,
  `volumeid` varchar(256) NOT NULL,
  `mime` varchar(256) NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_name` (`parent_id`,`name`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elfinder_files`
--

LOCK TABLES `elfinder_files` WRITE;
/*!40000 ALTER TABLE `elfinder_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `elfinder_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epres_answers`
--

DROP TABLE IF EXISTS `epres_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epres_answers` (
  `epres_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ques_id` int(11) NOT NULL,
  `answer` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epres_answers`
--

LOCK TABLES `epres_answers` WRITE;
/*!40000 ALTER TABLE `epres_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `epres_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epres_medicine`
--

DROP TABLE IF EXISTS `epres_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epres_medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `sickness` varchar(255) NOT NULL,
  `medicine` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epres_medicine`
--

LOCK TABLES `epres_medicine` WRITE;
/*!40000 ALTER TABLE `epres_medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `epres_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epres_questions`
--

DROP TABLE IF EXISTS `epres_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epres_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 NOT NULL,
  `input_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option_count` int(10) NOT NULL,
  `option1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option3` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option4` varchar(50) CHARACTER SET latin1 NOT NULL,
  `option5` varchar(50) CHARACTER SET latin1 NOT NULL,
  `class` varchar(25) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epres_questions`
--

LOCK TABLES `epres_questions` WRITE;
/*!40000 ALTER TABLE `epres_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `epres_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eprescription`
--

DROP TABLE IF EXISTS `eprescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eprescription` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `follow_up` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Handelsname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `drug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `atc_code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `packsize` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pzn` varchar(255) CHARACTER SET latin1 NOT NULL,
  `manufacturer` varchar(255) CHARACTER SET latin1 NOT NULL,
  `comments` varchar(255) CHARACTER SET latin1 NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0',
  `sickness` varchar(100) CHARACTER SET latin1 NOT NULL,
  `doc_comments` varchar(255) CHARACTER SET latin1 NOT NULL,
  `familydoctor` text CHARACTER SET latin1,
  `doctorcheck` enum('1','2','0') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `document_time` varchar(255) DEFAULT NULL,
  `document_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprescription`
--

LOCK TABLES `eprescription` WRITE;
/*!40000 ALTER TABLE `eprescription` DISABLE KEYS */;
INSERT INTO `eprescription` VALUES (1,'yes','TEST','Abatacept','L04AA24','34','','MIII','TEST',709,1,1,'','','154','1','2017-11-15 14:41:03','0000-00-00 00:00:00','15:40:19','2017-11-15');
/*!40000 ALTER TABLE `eprescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familyhistory`
--

DROP TABLE IF EXISTS `familyhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familyhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `disease_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime NOT NULL,
  `dateofdeath` datetime NOT NULL,
  `effective_time` datetime NOT NULL,
  `relation_to_patient` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_permission` int(5) DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `document_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familyhistory`
--

LOCK TABLES `familyhistory` WRITE;
/*!40000 ALTER TABLE `familyhistory` DISABLE KEYS */;
INSERT INTO `familyhistory` VALUES (1,706,706,'role_patient','Stroke','2017-10-27','M','1932-08-17 00:00:00','2004-02-17 00:00:00','2017-10-27 21:05:50','relationship_father',2,'2017-10-27','20:55:30','2017-10-27 19:05:50',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `familyhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heart_frequency`
--

DROP TABLE IF EXISTS `heart_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heart_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rr_sys` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rr_dia` varchar(30) CHARACTER SET latin1 NOT NULL,
  `puls` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rec_date` date NOT NULL,
  `rec_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `graph_generation` int(10) NOT NULL,
  `access_permission` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heart_frequency`
--

LOCK TABLES `heart_frequency` WRITE;
/*!40000 ALTER TABLE `heart_frequency` DISABLE KEYS */;
INSERT INTO `heart_frequency` VALUES (1,601,601,'role_patient','100','100','90','2016-08-09','14:45:00',0,2,'2016-08-09 14:47:59','0000-00-00 00:00:00'),(2,684,684,'role_patient','124','76','65','2017-01-01','11:53:00',0,2,'2017-05-04 09:54:39','0000-00-00 00:00:00'),(3,684,684,'role_patient','132','76','76','2017-02-01','11:53:00',0,2,'2017-05-04 09:54:58','0000-00-00 00:00:00'),(4,684,684,'role_patient','145','87','74','2017-03-07','11:53:00',0,2,'2017-05-04 09:55:22','0000-00-00 00:00:00'),(5,684,684,'role_patient','137','81','75','2017-04-19','11:53:00',0,2,'2017-05-04 09:55:42','2017-05-04 00:00:00'),(6,684,684,'role_patient','114','56','76','2017-05-04','11:53:00',0,2,'2017-05-04 09:56:09','2017-05-04 00:00:00'),(7,696,696,'role_patient','110','80','62','2017-05-22','20:52:00',0,0,'2017-05-22 18:54:34','0000-00-00 00:00:00'),(8,648,648,'role_patient','180','80','65','2017-09-06','18:49:00',0,2,'2017-09-06 17:03:26','0000-00-00 00:00:00'),(9,684,684,'role_patient','123','64','67','2017-09-14','20:09:00',0,2,'2017-09-14 18:09:49','0000-00-00 00:00:00'),(10,684,684,'role_patient','134','77','75','2017-09-12','20:09:00',0,2,'2017-09-14 18:10:00','0000-00-00 00:00:00'),(11,684,684,'role_patient','113','64','64','2017-09-01','20:09:00',0,2,'2017-09-14 18:10:10','0000-00-00 00:00:00'),(12,706,706,'role_patient','132','64','62','2017-10-05','22:20:00',0,2,'2017-10-05 20:30:01','0000-00-00 00:00:00'),(13,706,706,'role_patient','123','66','65','2017-09-05','22:20:00',0,2,'2017-10-05 20:30:18','0000-00-00 00:00:00'),(14,706,706,'role_patient','144','67','74','2017-07-03','22:20:00',0,2,'2017-10-05 20:30:56','0000-00-00 00:00:00'),(15,706,706,'role_patient','132','76','77','2017-04-04','22:20:00',0,2,'2017-10-05 20:31:19','0000-00-00 00:00:00'),(16,706,706,'role_patient','127','76','82','2017-01-03','22:20:00',0,2,'2017-10-05 20:31:42','0000-00-00 00:00:00'),(17,714,714,'role_patient','rewr','rer','rererer','2015-11-20','08:00:53',0,2,'2017-11-15 06:01:05','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `heart_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iconsult`
--

DROP TABLE IF EXISTS `iconsult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iconsult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `keyword` blob NOT NULL,
  `message` blob NOT NULL,
  `reply_message_patient` blob NOT NULL,
  `reply_message_patient_date` date NOT NULL,
  `date` date NOT NULL,
  `document_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `document_extension` varchar(10) CHARACTER SET latin1 NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `doc_reg_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `rememberoption` int(5) NOT NULL,
  `access_permission` int(5) NOT NULL,
  `question_status` int(2) NOT NULL,
  `delete_status` int(11) NOT NULL,
  `familydoctor` text CHARACTER SET latin1,
  `doctorcheck` enum('0','1','2') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iconsult`
--

LOCK TABLES `iconsult` WRITE;
/*!40000 ALTER TABLE `iconsult` DISABLE KEYS */;
/*!40000 ALTER TABLE `iconsult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iconsult_files`
--

DROP TABLE IF EXISTS `iconsult_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iconsult_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iconsult_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iconsult_files`
--

LOCK TABLES `iconsult_files` WRITE;
/*!40000 ALTER TABLE `iconsult_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `iconsult_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iconsult_patient_replies`
--

DROP TABLE IF EXISTS `iconsult_patient_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iconsult_patient_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iconsult_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doc_reg_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `reply_message` blob NOT NULL,
  `reply_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iconsult_patient_replies`
--

LOCK TABLES `iconsult_patient_replies` WRITE;
/*!40000 ALTER TABLE `iconsult_patient_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `iconsult_patient_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iconsult_replies`
--

DROP TABLE IF EXISTS `iconsult_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iconsult_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iconsult_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doc_reg_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `reply_message` blob NOT NULL,
  `reply_by` int(2) NOT NULL,
  `reply_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iconsult_replies`
--

LOCK TABLES `iconsult_replies` WRITE;
/*!40000 ALTER TABLE `iconsult_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `iconsult_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcumar`
--

DROP TABLE IF EXISTS `marcumar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcumar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `lower_limit` varchar(30) CHARACTER SET latin1 NOT NULL,
  `upper_limit` varchar(30) CHARACTER SET latin1 NOT NULL,
  `INR` varchar(30) CHARACTER SET latin1 NOT NULL,
  `quick` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rec_date` date NOT NULL,
  `rec_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `graph_generation` int(10) NOT NULL,
  `access_permission` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcumar`
--

LOCK TABLES `marcumar` WRITE;
/*!40000 ALTER TABLE `marcumar` DISABLE KEYS */;
INSERT INTO `marcumar` VALUES (1,706,706,'','','2.4','31','2017-10-27','20:55:00',0,2,'2017-10-27 19:04:13','0000-00-00 00:00:00','role_patient');
/*!40000 ALTER TABLE `marcumar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_condition`
--

DROP TABLE IF EXISTS `medical_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` blob NOT NULL,
  `description` blob NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `befindlichkeit` varchar(10) CHARACTER SET latin1 NOT NULL,
  `schmerzen` varchar(10) CHARACTER SET latin1 NOT NULL,
  `document_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `document_extension` varchar(10) CHARACTER SET latin1 NOT NULL,
  `pain_character` varchar(100) CHARACTER SET latin1 NOT NULL,
  `pain_date` date NOT NULL,
  `pain_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_permission` int(5) NOT NULL,
  `delete_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_condition`
--

LOCK TABLES `medical_condition` WRITE;
/*!40000 ALTER TABLE `medical_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_condition_files`
--

DROP TABLE IF EXISTS `medical_condition_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_condition_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medical_condition_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_condition_files`
--

LOCK TABLES `medical_condition_files` WRITE;
/*!40000 ALTER TABLE `medical_condition_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_condition_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memory_enable` int(5) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` blob NOT NULL,
  `atc_code` blob NOT NULL,
  `substance` blob NOT NULL,
  `dose_rate` blob NOT NULL,
  `taken_morning` int(5) NOT NULL,
  `taken_morning_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `taken_lunch` int(5) NOT NULL,
  `taken_lunch_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `taken_evening` int(5) NOT NULL,
  `taken_evening_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `taken_night` int(5) NOT NULL,
  `taken_night_time` varchar(10) CHARACTER SET latin1 NOT NULL,
  `repeating_periods` varchar(50) CHARACTER SET latin1 NOT NULL,
  `prescribed` int(5) NOT NULL,
  `prescribed_on` date DEFAULT NULL,
  `taken_since` date NOT NULL DEFAULT '0000-00-00',
  `document_date` date NOT NULL,
  `document_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comments` blob NOT NULL,
  `way_of_application` text CHARACTER SET latin1 NOT NULL,
  `iv` int(5) NOT NULL,
  `po` int(5) NOT NULL,
  `sc` int(5) NOT NULL,
  `im` int(5) NOT NULL,
  `delete_status` int(11) NOT NULL,
  `discontinued_desc` text CHARACTER SET latin1 NOT NULL,
  `date_added` date NOT NULL DEFAULT '0000-00-00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `reminderoption` int(5) NOT NULL,
  `reminderdate` date NOT NULL,
  `remindertime` time NOT NULL,
  `access_permission` int(5) NOT NULL,
  `taking_regularly` int(5) NOT NULL,
  `taking_needed` int(5) NOT NULL,
  `bis_to` date NOT NULL,
  `taken_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (1,0,706,706,'role_patient','âsî\Œs\ZéL\«6N§\Z','58≤\r\≈{ZP\‡\⁄Sv','8¿\‰üΩvmı\'∂_#≥¶','s°+J¨ıÒhq[D¯@ˆˇ',0,'0',0,'0',0,'0',0,'0','',0,'2017-10-05','1970-01-01','2017-10-05','22:20:15','\‚]≠ñ zkÜ\„fßFò<ı\€=≥ï\«˙±ß,\"z≠Ú…ÉÑ%3H˜ÉÛfﬂ¢eüy','',0,0,0,0,0,'','2017-10-05','2017-10-05',0,'0000-00-00','00:00:00',2,0,0,'1970-01-01',''),(2,0,706,706,'role_patient','&û\À˙\ŸCq\∆«¢,_@ö\«','2T:6D\‹3\È3YLü∂\ﬁ','uø(aP.z\Œ\r¯uâ¸¶%','∫˛<ûÖ\·YÛhm\Í	',0,'0',0,'0',0,'0',0,'0','',0,'2017-10-05','1970-01-01','2017-10-05','22:20:15','≥&Üˆ≥¶X\ÃD\÷A\‡\'˛=âP~\…4≥\›g\\+\‰∏˛H5\÷','',0,0,0,0,0,'','2017-10-05','2017-10-05',0,'0000-00-00','00:00:00',2,0,0,'1970-01-01',''),(3,0,706,706,'role_patient','>}é\◊\ÿO^(Ñ\–\n2â\Ÿ\n','x»π˜ôC† \nîº\‚','í§W?!\Ì»ÆI\‚(·§ügw','s°+J¨ıÒhq[D¯@ˆˇ',0,'',0,'',0,'',0,'','Daily',1,'2017-10-10','2017-10-11','2017-10-27','20:55:30','±ÀöçCO¥\0h~ﬁ≥ñ','',0,0,0,0,0,'','2017-10-27','0000-00-00',0,'0000-00-00','00:00:00',2,0,0,'9999-12-31','0800'),(4,0,714,714,'role_patient','1çV	ü\Ã.7\ÌÅ˝ˇ\„\Óˆ','=Ù´d\ƒ\ÿ~4eM≤D°Dl','ÄÃìq\r\r\Ã\‹6(\Óæ(I\Ã','√π3wñÚsXM6B',0,'',0,'',0,'',0,'','Every 3 day',0,'2014-11-20','0000-00-00','2014-11-20','21:51:22','nb˛==7ÿÖ{ÇpØS\ƒ¸','',0,0,0,0,0,'','2017-11-14','0000-00-00',0,'0000-00-00','00:00:00',2,0,0,'1970-01-01','00:10'),(5,0,709,709,'role_patient','','®ô5eéçùÒëU £6','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv',0,'',0,'',0,'',0,'','0',0,NULL,'0000-00-00','0000-00-00','','','',0,0,0,0,0,'','2017-11-15','0000-00-00',0,'0000-00-00','00:00:00',0,0,0,'0000-00-00','');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication_files`
--

DROP TABLE IF EXISTS `medication_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medication_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication_files`
--

LOCK TABLES `medication_files` WRITE;
/*!40000 ALTER TABLE `medication_files` DISABLE KEYS */;
INSERT INTO `medication_files` VALUES (1,1,2),(2,2,3);
/*!40000 ALTER TABLE `medication_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painspots`
--

DROP TABLE IF EXISTS `painspots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `painspots` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Image` int(10) NOT NULL,
  `Valuename` varchar(50) CHARACTER SET latin1 NOT NULL,
  `InsertValue` varchar(10) CHARACTER SET latin1 NOT NULL,
  `active` int(10) NOT NULL,
  `vorne1` varchar(10) CHARACTER SET latin1 NOT NULL,
  `vorne2` varchar(10) CHARACTER SET latin1 NOT NULL,
  `vorne3` varchar(10) CHARACTER SET latin1 NOT NULL,
  `hinten1` varchar(10) CHARACTER SET latin1 NOT NULL,
  `hinten2` varchar(10) CHARACTER SET latin1 NOT NULL,
  `hinten3` varchar(10) CHARACTER SET latin1 NOT NULL,
  `access_permission` int(5) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painspots`
--

LOCK TABLES `painspots` WRITE;
/*!40000 ALTER TABLE `painspots` DISABLE KEYS */;
/*!40000 ALTER TABLE `painspots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients_docs`
--

DROP TABLE IF EXISTS `patients_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `document_name` blob NOT NULL,
  `document_caption` blob NOT NULL,
  `document_category` blob NOT NULL,
  `document_extension` varchar(30) NOT NULL,
  `p_file_data` longtext NOT NULL,
  `access_permission` int(2) NOT NULL,
  `delete_status` int(2) NOT NULL,
  `cdate` datetime NOT NULL,
  `mdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_docs`
--

LOCK TABLES `patients_docs` WRITE;
/*!40000 ALTER TABLE `patients_docs` DISABLE KEYS */;
INSERT INTO `patients_docs` VALUES (1,706,0,'','°§P\“\’^\ÿAN	F\ŸŸ∑\«Ûµ\'HxºÛ`†\Îa´>\”','$å/\Ã\‡\∆,à∑ôD†\‘Zn;Ω8\ \¬S5y\Z	\Á#','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"8ee3784fb23169bc7faeaa0216486476.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/8ee3784fb23169bc7faeaa0216486476.jpg\",\"raw_name\":\"8ee3784fb23169bc7faeaa0216486476\",\"orig_name\":\"2016-05-20_12.31_.34_.jpg\",\"client_name\":\"2016-05-20 12.31_.34_.jpg\",\"file_ext\":\".jpg\",\"file_size\":633.49,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-05 20:20:03','2017-10-05 20:20:03'),(2,706,0,'','\È,ZöîOI\È‘ã7$ îU´\Î(daÖõô˜‘å¶e\·','≠≈ó,¨I8˘xBêØsóVx,\‰nlrcrUΩ][)','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"036e891188b3abc8dbed19a4074592f0.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/036e891188b3abc8dbed19a4074592f0.jpg\",\"raw_name\":\"036e891188b3abc8dbed19a4074592f0\",\"orig_name\":\"pantoprazol40.png.jpg\",\"client_name\":\"pantoprazol40.png.jpg\",\"file_ext\":\".jpg\",\"file_size\":72.67,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-10-05 20:25:41','2017-10-05 20:25:41'),(3,706,0,'','\„°\Ã∞\ﬂ\›I ãQ\‘\n\ﬂu\'pg\Ó\0}¿\Ÿ^ñ∑\„∑H','\rPY¥êjdÜc¸K2aN∏H','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"54ac775b79a0c4c33087d4a054ef28ec.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/54ac775b79a0c4c33087d4a054ef28ec.jpg\",\"raw_name\":\"54ac775b79a0c4c33087d4a054ef28ec\",\"orig_name\":\"D03879441-p1.jpg\",\"client_name\":\"D03879441-p1.jpg\",\"file_ext\":\".jpg\",\"file_size\":87.2,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-10-05 20:28:03','2017-10-05 20:28:03'),(4,706,0,'','\Ão\¬\nÒ\Î;m¸i\ƒ&\◊B\ÔG˝w<©0»õ\‚`ò\‚≥˝dû','ˆıY\ÈWl-Åä¨\À\ﬂ˙r(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"b30705444b68c89f43720f3a6b9e1cd1.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/b30705444b68c89f43720f3a6b9e1cd1.jpg\",\"raw_name\":\"b30705444b68c89f43720f3a6b9e1cd1\",\"orig_name\":\"DI30239-20121025.jpg\",\"client_name\":\"DI30239-20121025.jpg\",\"file_ext\":\".jpg\",\"file_size\":137.31,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-10-05 20:35:55','2017-10-05 20:35:55'),(5,151,0,'','ÑëäÖ∂)òïÚ(2æ488tàÚ¯ºñê/B∫F','Mã\\Ω:öÄì¢ö§\ÔÇÛx','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"441b2a9dcd0cda7caacd2caf01af966b.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/441b2a9dcd0cda7caacd2caf01af966b.jpg\",\"raw_name\":\"441b2a9dcd0cda7caacd2caf01af966b\",\"orig_name\":\"7_Arzt_klein.jpg\",\"client_name\":\"7_Arzt_klein.jpg\",\"file_ext\":\".jpg\",\"file_size\":866.14,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-05 20:42:23','2017-10-05 20:42:23'),(6,151,0,'','*Q#≤\›TÚÛÇVhk¸úX8)X\›\Ó≥\„z>Y;Bìˇß','îD\¬\nNHµ\ÕWr.>\“\⁄\œdY($x*Ò∑π>D\Ï(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"1d3751edc7cf518171476f17f058ec27.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/1d3751edc7cf518171476f17f058ec27.jpg\",\"raw_name\":\"1d3751edc7cf518171476f17f058ec27\",\"orig_name\":\"11d739e76e40993fec938304c350010f.jpg\",\"client_name\":\"11d739e76e40993fec938304c350010f.jpg\",\"file_ext\":\".jpg\",\"file_size\":105.48,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-05 20:53:55','2017-10-05 20:53:55'),(7,151,0,'','ÉÛûâö˜\—u®Fóß\‡\rµE\‰ó˛∞§ç&4\Â∫ärë','æ\Âòåmqò7•óe5CD\Ë^C\ÿpLuèz^©úPË±é[\”\Íˆ˙˘\À`0Fe{U','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"12ea28f87430aa81c145d3c1f8dec1c4.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/12ea28f87430aa81c145d3c1f8dec1c4.jpg\",\"raw_name\":\"12ea28f87430aa81c145d3c1f8dec1c4\",\"orig_name\":\"psychotherapie-zentrum-koeln-raum1.jpg\",\"client_name\":\"psychotherapie-zentrum-koeln-raum1.jpg\",\"file_ext\":\".jpg\",\"file_size\":141.78,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-05 20:53:55','2017-10-05 20:53:55'),(8,706,0,'','\…6ú§≠)∞.6ºÙ∏A™qèÉ∫ãÜ\n ù˙ˇZ8FüS','≠≈ó,¨I8˘xBêØsóVx,\‰nlrcrUΩ][)','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"e989c7b9238ede1aeed594ef86c1f8d6.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/e989c7b9238ede1aeed594ef86c1f8d6.jpg\",\"raw_name\":\"e989c7b9238ede1aeed594ef86c1f8d6\",\"orig_name\":\"pantoprazol40.png.jpg\",\"client_name\":\"pantoprazol40.png.jpg\",\"file_ext\":\".jpg\",\"file_size\":72.67,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-10-10 14:43:57','2017-10-10 14:43:57'),(9,151,0,'','ÖD@ì\Î\Œf\ÌáR6™1G\·\„ûÛ+4[	vré0\‹\›^el','≠%í\⁄ Å\œg∞\ÌV∫1[\√','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"59411ed701eb903e84c84db887d7c668.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/59411ed701eb903e84c84db887d7c668.jpg\",\"raw_name\":\"59411ed701eb903e84c84db887d7c668\",\"orig_name\":\"Benali.jpg\",\"client_name\":\"Benali.jpg\",\"file_ext\":\".jpg\",\"file_size\":2.5,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-12 23:28:49','2017-10-12 23:28:49'),(10,151,0,'','ÁîîÉ\’rW\ﬂ\ŸS\…%ÇØ\À@⁄©Hã<˝∂\‡^\«\ÔΩ\Ë{m','›π\‰V\–~7#\\ÃàØΩ{˙(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"82bda757e306f9a9e280872955bf114e.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/82bda757e306f9a9e280872955bf114e.jpg\",\"raw_name\":\"82bda757e306f9a9e280872955bf114e\",\"orig_name\":\"fotolia_15820049.jpg\",\"client_name\":\"fotolia_15820049.jpg\",\"file_ext\":\".jpg\",\"file_size\":16.22,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-19 16:26:13','2017-10-19 16:26:13'),(11,151,0,'','rn5ª∑&\0˚\‰+Æ`ŸúNp\–\€O*Üë›ÄO\Ïmé','ì\‚O=\ÊTV\‰e£ù\"\⁄\ÿrbÚFü¡	•\ŸéåÛ\ÊcS','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"b16ea5ace00ef79dd277407cf023d0f5.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/b16ea5ace00ef79dd277407cf023d0f5.jpg\",\"raw_name\":\"b16ea5ace00ef79dd277407cf023d0f5\",\"orig_name\":\"110209_zwecker.jpg\",\"client_name\":\"110209_zwecker.jpg\",\"file_ext\":\".jpg\",\"file_size\":37.93,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-24 10:35:58','2017-10-24 10:35:58'),(12,706,0,'','s\‡\›_¬óJ\Ïr\Á\œ\”\ŸZ+Ô¢Ög\Õ=\◊Jrvé\Ë\"CB','\“\‰s§bDIo\ÁA8m˙û\0ÀÇ©¥´Ü5\¬ˆ\‡-≤Ø','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"8d3b38f9d2ffcf14cd2f2cc35f23bc08.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/8d3b38f9d2ffcf14cd2f2cc35f23bc08.jpg\",\"raw_name\":\"8d3b38f9d2ffcf14cd2f2cc35f23bc08\",\"orig_name\":\"ctangioherz3d.jpg\",\"client_name\":\"ctangioherz3d.jpg\",\"file_ext\":\".jpg\",\"file_size\":8.51,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-10-25 00:49:34','2017-10-25 00:49:34'),(13,706,0,'','\\F¿RAo0òm°z\ §ûr¡\√˜é\‹ ì•\„\’\Z\≈','¡ùÕáÜÄ-1a†L\Í\”y&','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"aa56ea1a17228f9f0e881c3f2a776952.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/aa56ea1a17228f9f0e881c3f2a776952.jpg\",\"raw_name\":\"aa56ea1a17228f9f0e881c3f2a776952\",\"orig_name\":\"3067.jpg\",\"client_name\":\"3067.jpg\",\"file_ext\":\".jpg\",\"file_size\":5.83,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-10-25 00:49:54','2017-10-25 00:49:54'),(14,706,0,'','\⁄ÙL∞ﬂ¨b¡Ω)R\‘\Ó£P\‹Ò\Ê¶\‚\Îo\≈t˛FÄé','dDGì\«b†gÅ\nûW\ﬁE6','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"5555d82106f8829cbb5276d3fd8613d3.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/5555d82106f8829cbb5276d3fd8613d3.png\",\"raw_name\":\"5555d82106f8829cbb5276d3fd8613d3\",\"orig_name\":\"ekg.png\",\"client_name\":\"ekg.png\",\"file_ext\":\".png\",\"file_size\":1186.69,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-10-25 00:51:00','2017-10-25 00:51:00'),(15,151,0,'','\÷\¬ˆ°Íéì˘π3™\ﬁ\ÏO\œˇs\‘r±oRUπ\◊','ÿÅEjn\"ó>!\r†¸\›','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"14786cb64cc16c4ece90fd01f213346a.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/14786cb64cc16c4ece90fd01f213346a.png\",\"raw_name\":\"14786cb64cc16c4ece90fd01f213346a\",\"orig_name\":\"logo320.png\",\"client_name\":\"logo320.png\",\"file_ext\":\".png\",\"file_size\":19.14,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-25 08:24:05','2017-10-25 08:24:05'),(16,706,0,'','$`Bn\‡å≤Xˆy8“∞ôH&\‚û{∞@\’\∆–∑\Â<Ò','\”\‹ºîc\À¸≠XFäõ\»','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"2aecbfcb4e3a06b689cf246e9b0646f1.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/2aecbfcb4e3a06b689cf246e9b0646f1.png\",\"raw_name\":\"2aecbfcb4e3a06b689cf246e9b0646f1\",\"orig_name\":\"micha.png\",\"client_name\":\"micha.png\",\"file_ext\":\".png\",\"file_size\":184.1,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-25 18:33:01','2017-10-25 18:33:01'),(17,706,0,'','oY\Î≤˝m{∏πfë\€˛4SyBa\–3a´é\€@\Ën>p','\”\‹ºîc\À¸≠XFäõ\»','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"2f2bfe3935be396129279907c7b7fa63.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/2f2bfe3935be396129279907c7b7fa63.png\",\"raw_name\":\"2f2bfe3935be396129279907c7b7fa63\",\"orig_name\":\"micha.png\",\"client_name\":\"micha.png\",\"file_ext\":\".png\",\"file_size\":184.1,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-25 18:33:02','2017-10-25 18:33:02'),(18,706,0,'',',4òV#®õ\n †∂`dÙ≤ê†B°+ä\÷wBÆ˝2Ü','°§P\“\’^\ÿAN	F\ŸŸ∑\«Ûµ\'HxºÛ`†\Îa´>\”ﬂ¨F)s\∆\Ô!PóÆ\ÕŒ¥','Æ˚rh\€L!±ß†C\·j)','jpeg','{\"file_name\":\"9941bdf86065aea3a5f6284533bff071.jpeg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/9941bdf86065aea3a5f6284533bff071.jpeg\",\"raw_name\":\"9941bdf86065aea3a5f6284533bff071\",\"orig_name\":\"8ee3784fb23169bc7faeaa0216486476.jpeg\",\"client_name\":\"8ee3784fb23169bc7faeaa0216486476.jpeg\",\"file_ext\":\".jpeg\",\"file_size\":633.49,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-30 16:51:10','2017-10-30 16:51:10'),(19,151,0,'','\’\„\∆¸\Zòâı\ÕÙV\‚\'!\√\ƒ_Æ\Ô\Îú}˘B$_åÃêÄ','°§P\“\’^\ÿAN	F\ŸŸ∑\«Ûµ\'HxºÛ`†\Îa´>\”ﬂ¨F)s\∆\Ô!PóÆ\ÕŒ¥','Æ˚rh\€L!±ß†C\·j)','jpeg','{\"file_name\":\"ebdb66e41b28b1068169bba9cb1b17d5.jpeg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/ebdb66e41b28b1068169bba9cb1b17d5.jpeg\",\"raw_name\":\"ebdb66e41b28b1068169bba9cb1b17d5\",\"orig_name\":\"8ee3784fb23169bc7faeaa0216486476.jpeg\",\"client_name\":\"8ee3784fb23169bc7faeaa0216486476.jpeg\",\"file_ext\":\".jpeg\",\"file_size\":633.49,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-30 16:51:55','2017-10-30 16:51:55'),(20,706,0,'','-R=´êf‘¥^¡Q7n=M≤\nØ5˘yIÅdòK','oY\Î≤˝m{∏πfë\€˛4SyBa\–3a´é\€@\Ën>pø^âb\„%¥Å\ƒ◊Å\rF','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"ff71f37f7754c1943133737c2935cb80.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/ff71f37f7754c1943133737c2935cb80.png\",\"raw_name\":\"ff71f37f7754c1943133737c2935cb80\",\"orig_name\":\"2f2bfe3935be396129279907c7b7fa63.png\",\"client_name\":\"2f2bfe3935be396129279907c7b7fa63.png\",\"file_ext\":\".png\",\"file_size\":184.1,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-10-30 16:55:07','2017-10-30 16:55:07'),(21,153,0,'','Ãô∂[{\ÌV	+_à°\“GçuÄÑÜQçuﬁ¥Ç˜˚è','\À%]ìº¡7—áÉq≥\Ëø\≈7\È\Ïï1è˘\Œ`∏à\¬#(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"ea149fb7783fa0c9814a96fc7d2108de.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/9a589ecf90ec0579658f95c50023cc4a\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/9a589ecf90ec0579658f95c50023cc4a\\/ea149fb7783fa0c9814a96fc7d2108de.jpg\",\"raw_name\":\"ea149fb7783fa0c9814a96fc7d2108de\",\"orig_name\":\"15592ad79370af89dd80329fb7139bd1.jpg\",\"client_name\":\"15592ad79370af89dd80329fb7139bd1.jpg\",\"file_ext\":\".jpg\",\"file_size\":866.14,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-01 02:40:05','2017-11-01 02:40:05'),(22,154,0,'','\¬\Âê\‹vô“ú¥\È\‰q+]\‡Z£¥Qá6\‹\Â(I','\‘ÛÜ8\„¶l\Ô⁄ÅLß\Ë\Ëë^±MˇÉÜ}LX—ì[2\Ë\ÌIï≠ÖR)§;\Œ\Ó','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"d99e72cae3a065076098d7edc955ef2f.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/d99e72cae3a065076098d7edc955ef2f.png\",\"raw_name\":\"d99e72cae3a065076098d7edc955ef2f\",\"orig_name\":\"Patient_profile_\\u2013_Passwort_\\u2013_1.png\",\"client_name\":\"Patient profile \\u2013 Passwort \\u2013 1.png\",\"file_ext\":\".png\",\"file_size\":125.29,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-11 20:09:57','2017-11-11 20:09:57'),(23,154,0,'','áÄ\›:Å¸ú\Ê®≥@ﬂíê™.r\Â˚oÁßò…åÇõ','fÙâ|\Ï8ÆKsKïßkY@','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"c5a5ab96b1998dba5e706f1654722435.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/c5a5ab96b1998dba5e706f1654722435.jpg\",\"raw_name\":\"c5a5ab96b1998dba5e706f1654722435\",\"orig_name\":\"drmeier.jpg\",\"client_name\":\"drmeier.jpg\",\"file_ext\":\".jpg\",\"file_size\":43.93,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-12 08:57:25','2017-11-12 08:57:25'),(24,706,0,'','≠aÅn\–L~l®≠/,ü\Í\Ÿ…¶\“\ﬂå*ï:˘','ò˜âı©\«\Î\›3¥ØŸú>Z:','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"085c19632ea544d6cff62106d8275df2.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/085c19632ea544d6cff62106d8275df2.jpg\",\"raw_name\":\"085c19632ea544d6cff62106d8275df2\",\"orig_name\":\"prescription.jpg\",\"client_name\":\"prescription.jpg\",\"file_ext\":\".jpg\",\"file_size\":392.98,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-12 09:01:24','2017-11-12 09:01:24'),(25,706,0,'','8¯\ŒR+;]w¶àN	¯aÖ}ª©ä\ÍØˆ¸\œNÑ','ªßAà£w\ÎKêÅNë;ú\’','Æ˚rh\€L!±ß†C\·j)','jpeg','{\"file_name\":\"12e54111fad7e792642c8e3278beaac1.jpeg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/3538b2060dc57b185a0450e0da531b76\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/3538b2060dc57b185a0450e0da531b76\\/12e54111fad7e792642c8e3278beaac1.jpeg\",\"raw_name\":\"12e54111fad7e792642c8e3278beaac1\",\"orig_name\":\"image.jpeg\",\"client_name\":\"image.jpeg\",\"file_ext\":\".jpeg\",\"file_size\":307.56,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-14 04:29:18','2017-11-14 04:29:18'),(26,714,0,'','\„≥\‰em^\÷9∫\≈$|\Œ_\Ì\· \»ÜÇip≥ëKxoh','Cw\ZÖ!\Ÿ⁄¨Fy\›\ÊcD\Âñﬁç¯wA {\Ï\⁄l\Ì\—e–ë}ê ˛◊Ü¡B%ä´Ò/ˇg\\2\Ì¨t®¶\…:^\ƒ\ n','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"183ee1e64363c14c7e9ff833f96d2996.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/a5571e5d09cfe9ed6ab96a5d118d1250\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/a5571e5d09cfe9ed6ab96a5d118d1250\\/183ee1e64363c14c7e9ff833f96d2996.jpg\",\"raw_name\":\"183ee1e64363c14c7e9ff833f96d2996\",\"orig_name\":\"16114795_1241716539250190_3990440755527517266_n.jpg\",\"client_name\":\"16114795_1241716539250190_3990440755527517266_n.jpg\",\"file_ext\":\".jpg\",\"file_size\":75.67,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-14 16:57:24','2017-11-14 16:57:24'),(27,714,0,'','Y\Ì• ÜÛ≤òÙ¡2úpÄ{˚ﬁë\„,Eı$=\›ôTH±ü','ªßAà£w\ÎKêÅNë;ú\’','Æ˚rh\€L!±ß†C\·j)','jpeg','{\"file_name\":\"152dc9a11f969992866e4104d6611f49.jpeg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/3538b2060dc57b185a0450e0da531b76\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/3538b2060dc57b185a0450e0da531b76\\/152dc9a11f969992866e4104d6611f49.jpeg\",\"raw_name\":\"152dc9a11f969992866e4104d6611f49\",\"orig_name\":\"image.jpeg\",\"client_name\":\"image.jpeg\",\"file_ext\":\".jpeg\",\"file_size\":302.52,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-14 17:09:54','2017-11-14 17:09:54'),(28,714,0,'','\»\Ô¯Ääme¿\»2-ÿÇaóí^Ñ!,E\√Jt/\Œ','\”\»ï©ë˜5≤Ú]I±_m¸\Ê]¯©	EIL§UJ8ˇ8Xl\ÎA∂\œŒã\Â\r\ﬁ\"Œ∂C©vy´Æ\Œ“ô*˙\≈Ò\Ê\Óx62]\"7Ñ”Øn\\\’\0¿','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"e6156fc3aafd8cb333c9a08a52063c72.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/a5571e5d09cfe9ed6ab96a5d118d1250\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/a5571e5d09cfe9ed6ab96a5d118d1250\\/e6156fc3aafd8cb333c9a08a52063c72.png\",\"raw_name\":\"e6156fc3aafd8cb333c9a08a52063c72\",\"orig_name\":\"Terminmodul_(eAppointment)_submenu_-_PAYMENT_FOR_ONLINE_APPOINTMENTS-1.png\",\"client_name\":\"Terminmodul (eAppointment) submenu - PAYMENT FOR ONLINE APPOINTMENTS-1.png\",\"file_ext\":\".png\",\"file_size\":172.82,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-11-15 04:50:17','2017-11-15 04:50:17'),(29,709,0,'','){†µ\¬¯IˇSá\÷o\⁄v?öq:\–\·I*5∑Ö\œÚ','∆º,Ûxê•\Ï\·úõvH\‹ﬂ°}\…\ÿ(I\”|ùL}_®T','Æ˚rh\€L!±ß†C\·j)','jpeg','{\"file_name\":\"b8423ec62c2b60803d1ee653302a4427.jpeg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/87c496ed1759e7a5781a805f11bb59ba\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/87c496ed1759e7a5781a805f11bb59ba\\/b8423ec62c2b60803d1ee653302a4427.jpeg\",\"raw_name\":\"b8423ec62c2b60803d1ee653302a4427\",\"orig_name\":\"pexels-photo-164516.jpeg\",\"client_name\":\"pexels-photo-164516.jpeg\",\"file_ext\":\".jpeg\",\"file_size\":2210.79,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-15 14:38:55','2017-11-15 14:38:55'),(30,154,0,'','òUÕú∑\ ,pz¯õhÜ\„ãqùæ™~πû\rkµ\–iÛ','\◊\'¿|òcû \Zƒ∫CÅP\'','Æ˚rh\€L!±ß†C\·j)','png','{\"file_name\":\"45babe44a237896a6ab669c35fd0e10e.png\",\"file_type\":\"image\\/png\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/doctor\\/7b61fac2cddd45021784391b38ec8873\\/45babe44a237896a6ab669c35fd0e10e.png\",\"raw_name\":\"45babe44a237896a6ab669c35fd0e10e\",\"orig_name\":\"att-globe.png\",\"client_name\":\"att-globe.png\",\"file_ext\":\".png\",\"file_size\":16.65,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-17 14:44:53','2017-11-17 14:44:53'),(31,706,0,'','D¶∑6/z`Üqº©Úâ≠áD\"l$={\‰i—ø<ı','ÑëäÖ∂)òïÚ(2æ488tàÚ¯ºñê/B∫F(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"f176a54ddc6a2fa6f4b9afc35736549d.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/\",\"full_path\":\"\\/home\\/forge\\/demo.aimedis.com\\/public\\/protected\\/uploads\\/patient\\/b68496834b43070aa5f37de58391e3e9\\/f176a54ddc6a2fa6f4b9afc35736549d.jpg\",\"raw_name\":\"f176a54ddc6a2fa6f4b9afc35736549d\",\"orig_name\":\"441b2a9dcd0cda7caacd2caf01af966b.jpg\",\"client_name\":\"441b2a9dcd0cda7caacd2caf01af966b.jpg\",\"file_ext\":\".jpg\",\"file_size\":866.14,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-11-17 14:46:02','2017-11-17 14:46:02');
/*!40000 ALTER TABLE `patients_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients_files`
--

DROP TABLE IF EXISTS `patients_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `document_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `document_caption` blob NOT NULL,
  `document_extension` varchar(30) CHARACTER SET latin1 NOT NULL,
  `access_permission` int(2) NOT NULL,
  `delete_status` int(2) NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_files`
--

LOCK TABLES `patients_files` WRITE;
/*!40000 ALTER TABLE `patients_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_docs`
--

DROP TABLE IF EXISTS `user_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `document_name` blob NOT NULL,
  `document_caption` blob NOT NULL,
  `document_category` blob NOT NULL,
  `document_extension` varchar(30) NOT NULL,
  `p_file_data` text NOT NULL,
  `access_permission` int(2) NOT NULL,
  `delete_status` int(2) NOT NULL,
  `cdate` datetime NOT NULL,
  `mdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_docs`
--

LOCK TABLES `user_docs` WRITE;
/*!40000 ALTER TABLE `user_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccination`
--

DROP TABLE IF EXISTS `vaccination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaccination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vaccination` blob,
  `date` date NOT NULL,
  `Handelsname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Tetanus` int(5) NOT NULL,
  `Diphtherie` int(5) NOT NULL,
  `Perstussis` int(5) NOT NULL,
  `Poliomyeltis` int(5) NOT NULL,
  `HepatitisA` int(5) NOT NULL,
  `HepatitisB` int(5) NOT NULL,
  `MMR` int(5) NOT NULL,
  `Varizellen` int(5) NOT NULL,
  `Meningokokken` int(5) NOT NULL,
  `Pneumokokken` int(5) NOT NULL,
  `Rotavirus` int(5) NOT NULL,
  `Influenza` int(5) NOT NULL,
  `Pertussis` int(5) NOT NULL,
  `Cholera` int(5) NOT NULL,
  `FSME` int(5) NOT NULL,
  `HepatatisA` int(5) NOT NULL,
  `HPV` int(5) NOT NULL,
  `JapanischeEnzephalitis` int(5) NOT NULL,
  `Tollwut` int(5) NOT NULL,
  `Typhus` int(5) NOT NULL,
  `Gelbfieber` int(5) NOT NULL,
  `Zoster` int(5) NOT NULL,
  `FreierImpfeintrag1` int(5) NOT NULL,
  `FreierImpfeintrag2` int(5) NOT NULL,
  `FreierImpfeintrag3` int(5) NOT NULL,
  `FreierImpfeintrag4` int(5) NOT NULL,
  `Praxis` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Datei_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Datei` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rememberoption` int(5) NOT NULL,
  `access_permission` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination`
--

LOCK TABLES `vaccination` WRITE;
/*!40000 ALTER TABLE `vaccination` DISABLE KEYS */;
INSERT INTO `vaccination` VALUES (1,706,706,'role_patient','ÉG0	*Ry∫J5≥\·ı)','2014-11-11','Begripal',0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tropeninstitut UKD','0','0','2017-10-05','22:20:15',0,2,'2017-10-05 20:34:51',0,'2017-10-25 01:53:01'),(2,706,706,'role_patient','58≤\r\≈{ZP\‡\⁄Sv','2019-04-09','Twinrix',0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dr. X','0','0','2017-10-27','20:55:30',0,2,'2017-10-27 19:04:53',0,'0000-00-00 00:00:00'),(3,714,714,'role_patient',NULL,'2014-11-20','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','2014-11-20','22:01:23',0,2,'2017-11-14 20:01:42',0,'0000-00-00 00:00:00'),(4,714,714,'role_patient','√π3wñÚsXM6B','2015-11-20','a',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'a','0','0','2015-11-20','07:47:36',0,2,'2017-11-15 05:48:05',0,'2017-11-15 04:50:17');
/*!40000 ALTER TABLE `vaccination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccination_files`
--

DROP TABLE IF EXISTS `vaccination_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaccination_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vaccination_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination_files`
--

LOCK TABLES `vaccination_files` WRITE;
/*!40000 ALTER TABLE `vaccination_files` DISABLE KEYS */;
INSERT INTO `vaccination_files` VALUES (1,1,4),(2,4,28);
/*!40000 ALTER TABLE `vaccination_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_bmi`
--

DROP TABLE IF EXISTS `weight_bmi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_bmi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(30) CHARACTER SET latin1 NOT NULL,
  `weight` varchar(30) CHARACTER SET latin1 NOT NULL,
  `bmi` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rec_date` date NOT NULL,
  `rec_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `graph_generation` int(10) NOT NULL,
  `access_permission` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_bmi`
--

LOCK TABLES `weight_bmi` WRITE;
/*!40000 ALTER TABLE `weight_bmi` DISABLE KEYS */;
INSERT INTO `weight_bmi` VALUES (1,706,706,'role_patient','178','91','28.72','2017-10-05','22:20:00',0,2,'2017-10-05 20:32:57','0000-00-00 00:00:00'),(2,712,712,'role_patient','170.18','85','29.35','2017-10-15','19:33:00',0,2,'2017-10-15 17:37:19','0000-00-00 00:00:00'),(3,714,0,'','1.77','75','23.94','2015-11-20','08:10:25',0,2,'2017-11-15 06:11:09','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `weight_bmi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-17 16:45:32
