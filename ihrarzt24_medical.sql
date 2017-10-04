-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: ihrarzt24_medical
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
  `specialization1` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `taken_morning` int(5) NOT NULL,
  `taken_morning_time` varchar(10) NOT NULL,
  `taken_lunch` int(5) NOT NULL,
  `taken_lunch_time` varchar(10) NOT NULL,
  `taken_evening` int(5) NOT NULL,
  `taken_evening_time` varchar(10) NOT NULL,
  `appointment_date` date NOT NULL DEFAULT '0000-00-00',
  `emergency` int(10) NOT NULL,
  `document_date` date NOT NULL,
  `delete_status` int(11) NOT NULL,
  `discontinued_desc` text NOT NULL,
  `date_added` date NOT NULL DEFAULT '0000-00-00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `access_permission` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `bloodsugar` varchar(30) CHARACTER SET latin1 NOT NULL,
  `HbA1C` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rec_date` date NOT NULL,
  `rec_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `graph_generation` int(10) NOT NULL,
  `access_permission` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_sugar`
--

LOCK TABLES `blood_sugar` WRITE;
/*!40000 ALTER TABLE `blood_sugar` DISABLE KEYS */;
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
  `pain_intensity` varchar(255) NOT NULL,
  `pain_type` varchar(255) NOT NULL,
  `qualities` varchar(20) NOT NULL,
  `date_from` datetime NOT NULL,
  `time_from` varchar(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `x_position` varchar(255) NOT NULL,
  `y_position` varchar(255) NOT NULL,
  `access_permission` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `document_time` varchar(30) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casehistory`
--

LOCK TABLES `casehistory` WRITE;
/*!40000 ALTER TABLE `casehistory` DISABLE KEYS */;
INSERT INTO `casehistory` VALUES (1,601,149,'58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv','\ËMπ∞b√éH‹∏±rx≤y¿\À‡¢ö´Ä|M\◊hu\È5S6DLEn£y>6ê˛\Â\«ˇ\Ô	ø3áO\‰B\…]¢âÅ¨x/íàl\‡h\ŒpM.*[ΩÇ˙PF¯Æˆ4•g˛˚\"5@1’©∏ö\‹‚ºóïÙ8=∞ª\Ê46NÀ¢,¯/Ωjr\”cAX)≠04\“`\‰\»ÛÜ\‘.)®?zÉBV\\ÄàAM∫ìHEpY3êt;\“,ΩNA{\‰≥⁄ÅqA°¢-\Z	\”=lM\„°6’≠âô¸(û¯\\vU•ÜíCRsûÄ*.C\"Lí}5pf_ÛMè˙\Âi—ÜG\◊\\¨ø=\·5±K±t8nt¡j+\'\À?[jd\‰v ´X\Â`∑9\ŒsC\Ã\\\Á*vÜsgßâÆã~áá0˙õ®9¥\'y\Èm\«)\ÌR0 ∞\'\‡x∏\Ât$\…\rëG\Ÿ˚\Àm?¡k\¬\Ár˜4ö∫\ÀF','2017-04-12','13:45:00','2017-04-12 19:49:29','0000-00-00 00:00:00',0);
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
  `complain_scale` varchar(10) NOT NULL,
  `pain_intensity` varchar(10) NOT NULL,
  `pain_type` varchar(255) DEFAULT NULL,
  `pounding` enum('0','1') NOT NULL DEFAULT '0',
  `stabbing` enum('0','1') NOT NULL DEFAULT '0',
  `cramplike` enum('0','1') NOT NULL DEFAULT '0',
  `dull` enum('0','1') NOT NULL DEFAULT '0',
  `aching` enum('0','1') NOT NULL DEFAULT '0',
  `burning` enum('0','1') NOT NULL DEFAULT '0',
  `keyword` blob NOT NULL,
  `details` blob NOT NULL,
  `access_permission` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(10) NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `x_position` varchar(255) DEFAULT NULL,
  `y_position` varchar(255) DEFAULT NULL,
  `full_pos_image` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comnpain`
--

LOCK TABLES `comnpain` WRITE;
/*!40000 ALTER TABLE `comnpain` DISABLE KEYS */;
INSERT INTO `comnpain` VALUES (1,'3','7','chronic','0','0','0','1','0','0','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv',2,'2016-08-09 14:47:32','2017-04-14','19:31:29','2017-04-17 16:51:35',0,NULL,NULL,'./protected/uploads/patient/f8e1b03c5360d681eba378ca55c4bb59/d0da0912ee91d2ddacca0c64ccd6df3c.png',601,'role_patient',601),(2,'4','3','acute','1','0','1','0','0','0','1çV	ü\Ã.7\ÌÅ˝ˇ\„\Óˆ','1çV	ü\Ã.7\ÌÅ˝ˇ\„\Óˆ',2,'2016-08-12 18:31:57','2016-08-12','18:31:22','0000-00-00 00:00:00',0,NULL,NULL,'0',601,'role_patient',601),(3,'4','3','acute','0','0','0','0','0','0','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv',2,'2016-08-12 18:32:44','2016-08-12','18:31:22','0000-00-00 00:00:00',0,NULL,NULL,'0',601,'role_patient',601),(4,'1','0',NULL,'0','0','0','0','0','0','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv',2,'2017-04-07 16:18:15','2017-04-07','16:17:54','0000-00-00 00:00:00',0,NULL,NULL,'0',601,'role_patient',601),(5,'3','7','chronic','0','0','0','1','0','0','58≤\r\≈{ZP\‡\⁄Sv','58≤\r\≈{ZP\‡\⁄Sv',2,'2017-04-14 19:32:29','2017-04-14','19:31:29','0000-00-00 00:00:00',0,NULL,NULL,'./protected/uploads/patient/f8e1b03c5360d681eba378ca55c4bb59/23a379657512b808160942c099da9d27.png',601,'role_patient',601);
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
INSERT INTO `comnpain_files` VALUES (1,5,30);
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
  `image_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comnpain_pain_position`
--

LOCK TABLES `comnpain_pain_position` WRITE;
/*!40000 ALTER TABLE `comnpain_pain_position` DISABLE KEYS */;
INSERT INTO `comnpain_pain_position` VALUES (1,53.5,25.5,1,'0'),(2,55.5,28.5,2,'0'),(3,55.5,28.5,3,'0'),(4,179.5,106.5,3,'0'),(5,63.5,127.5,3,'0'),(7,48,157.5,5,'./protected/uploads/patient/f8e1b03c5360d681eba378ca55c4bb59/0b9f30a7a923fa72a972680f317c84c9.png');
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icd_code` blob NOT NULL,
  `title` blob NOT NULL,
  `description` blob NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses`
--

LOCK TABLES `diagnoses` WRITE;
/*!40000 ALTER TABLE `diagnoses` DISABLE KEYS */;
INSERT INTO `diagnoses` VALUES (1,601,149,'role_doctor','\‚\Õ6£?Ωó\ÿOA\Ázê˛y','RWVF1\Ÿ÷Ω#ºu\⁄i','a\·9É†Œü¡N\n»üÿß,','2017-04-07','15:37:49','2','',0,2,'2017-04-07 10:08:30','2017-04-12 22:32:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2017-04-13','2017-04-13',0,0),(2,601,149,'role_doctor','c\Àiv§\’jÑw{\ÂßÙ0k','é\Ó†\»\ DÛ_\‡ıùúT>≠|','™*\ÌÍµ¥wˆ≠lõÇ>M','2017-04-12','20:11:39','2','',0,2,'2017-04-12 14:43:32','2017-04-12 14:43:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2017-04-12','2017-04-12',0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses_files`
--

LOCK TABLES `diagnoses_files` WRITE;
/*!40000 ALTER TABLE `diagnoses_files` DISABLE KEYS */;
INSERT INTO `diagnoses_files` VALUES (2,601,0,1,17,'');
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `insurance_provider` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `patient_information` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `patient_dob` date NOT NULL,
  `checkoutno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `insuredno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pres_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `premisesno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `physicianno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reference_date` date DEFAULT NULL,
  `bvg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaccine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copayment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chemists_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `total_gross` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regulation1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `regulation2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `regulation3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `factor1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `factor2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `factor3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tax1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tax2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tax3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `check1` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check2` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check3` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check4` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check5` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check6` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check7` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check8` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `check9` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `doctor_information` text COLLATE utf8_unicode_ci NOT NULL,
  `medication_details` text COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accident` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accidentno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_type` int(11) NOT NULL,
  `priscriptiton_type` int(11) DEFAULT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `delete_status` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `question` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `input_type` varchar(50) NOT NULL,
  `option_count` int(10) NOT NULL,
  `option1` varchar(50) NOT NULL,
  `option2` varchar(50) NOT NULL,
  `option3` varchar(50) NOT NULL,
  `option4` varchar(50) NOT NULL,
  `option5` varchar(50) NOT NULL,
  `class` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `follow_up` varchar(100) NOT NULL,
  `Handelsname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `drug` varchar(255) NOT NULL,
  `atc_code` varchar(255) NOT NULL,
  `packsize` varchar(255) NOT NULL,
  `pzn` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0',
  `sickness` varchar(100) NOT NULL,
  `doc_comments` varchar(255) NOT NULL,
  `familydoctor` text,
  `doctorcheck` enum('1','2','0') NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eprescription`
--

LOCK TABLES `eprescription` WRITE;
/*!40000 ALTER TABLE `eprescription` DISABLE KEYS */;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `disease_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime NOT NULL,
  `dateofdeath` datetime NOT NULL,
  `effective_time` datetime NOT NULL,
  `relation_to_patient` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_permission` int(5) DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `document_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familyhistory`
--

LOCK TABLES `familyhistory` WRITE;
/*!40000 ALTER TABLE `familyhistory` DISABLE KEYS */;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heart_frequency`
--

LOCK TABLES `heart_frequency` WRITE;
/*!40000 ALTER TABLE `heart_frequency` DISABLE KEYS */;
INSERT INTO `heart_frequency` VALUES (1,601,601,'role_patient','100','100','90','2016-08-09','14:45:00',0,2,'2016-08-09 14:47:59','0000-00-00 00:00:00');
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
  `document_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `doc_reg_id` varchar(50) NOT NULL,
  `reply_message` blob NOT NULL,
  `reply_by` int(2) NOT NULL,
  `reply_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcumar`
--

LOCK TABLES `marcumar` WRITE;
/*!40000 ALTER TABLE `marcumar` DISABLE KEYS */;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
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
  `document_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
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
  `taken_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (1,0,601,601,'role_patient','&û\À˙\ŸCq\∆«¢,_@ö\«','58≤\r\≈{ZP\‡\⁄Sv','uø(aP.z\Œ\r¯uâ¸¶%','∫˛<ûÖ\·YÛhm\Í	',0,'0',0,'0',0,'0',0,'0','Daily',0,'2017-04-17','1970-01-01','2017-04-17','22:07:13','lrvûP\ KÙ)\0æ\…ﬂ£B∂','',0,0,0,0,0,'','2017-04-17','2017-04-17',0,'0000-00-00','00:00:00',2,0,0,'1970-01-01','0800,2000');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication_files`
--

LOCK TABLES `medication_files` WRITE;
/*!40000 ALTER TABLE `medication_files` DISABLE KEYS */;
INSERT INTO `medication_files` VALUES (1,1,29);
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
  `Valuename` varchar(50) NOT NULL,
  `InsertValue` varchar(10) NOT NULL,
  `active` int(10) NOT NULL,
  `vorne1` varchar(10) NOT NULL,
  `vorne2` varchar(10) NOT NULL,
  `vorne3` varchar(10) NOT NULL,
  `hinten1` varchar(10) NOT NULL,
  `hinten2` varchar(10) NOT NULL,
  `hinten3` varchar(10) NOT NULL,
  `access_permission` int(5) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_docs`
--

LOCK TABLES `patients_docs` WRITE;
/*!40000 ALTER TABLE `patients_docs` DISABLE KEYS */;
INSERT INTO `patients_docs` VALUES (1,601,0,'','Çí<YciYFàpgÇ›ôÛH¸l@™Ñg>¥\“}FK¬ò4',']\À`øE¶ß\È\€S¿\ÈX˛\‚$\ZM\≈LæØEÛ1\ÿLº°DHïùz€ó\Ãc6{]Y\”Cs','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"942e47481e66523572c8a3d905f11279.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/942e47481e66523572c8a3d905f11279.jpg\",\"raw_name\":\"942e47481e66523572c8a3d905f11279\",\"orig_name\":\"379999_276022299125202_1196307497_n.jpg\",\"client_name\":\"379999_276022299125202_1196307497_n.jpg\",\"file_ext\":\".jpg\",\"file_size\":53.51,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-07 09:51:29','2017-04-07 09:51:29'),(2,601,0,'','|rVmb\Î>¶\Óà\÷∞ˆÇ\∆Q$Ü\ﬂxü\”s_\'	Kb\Î','æH¢sBTiq\Ï@\ﬁb\÷\‹î\≈ö¿\’»ñ\‹\”ıÒvf=t/¿ö˝D\À\"á (\Ô*ArbÚFü¡	•\ŸéåÛ\ÊcS','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"56db8efd50bcaec241bcae75fe4bc250.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/56db8efd50bcaec241bcae75fe4bc250.jpg\",\"raw_name\":\"56db8efd50bcaec241bcae75fe4bc250\",\"orig_name\":\"16142787_376062409420209_6580299119384622114_n.jpg\",\"client_name\":\"16142787_376062409420209_6580299119384622114_n.jpg\",\"file_ext\":\".jpg\",\"file_size\":22.64,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-07 10:08:30','2017-04-07 10:08:30'),(3,601,0,'','ô¯\”\·∆ùö˛\‡P⁄ûë/pÜ\Êú`∂ÆíW\√`á?','*Ü€∂Q\Z!;éâY∫\Ë?\"','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"82751d9a8a8ff0569f4417ef19ac288e.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/82751d9a8a8ff0569f4417ef19ac288e.jpg\",\"raw_name\":\"82751d9a8a8ff0569f4417ef19ac288e\",\"orig_name\":\"bettina-1.jpg\",\"client_name\":\"bettina-1.jpg\",\"file_ext\":\".jpg\",\"file_size\":46.31,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 14:24:44','2017-04-12 14:24:44'),(4,149,0,'','˝\’\÷%ç∞\Ÿ\‘eÄ\·çrG¿\ÂF¨\ƒ\€”õI\Z≤\·wÇ','aLâé\\fÕÜ0ô&€É≥§','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"3e1b65774544bd1958f0a351872801d9.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/3e1b65774544bd1958f0a351872801d9.jpg\",\"raw_name\":\"3e1b65774544bd1958f0a351872801d9\",\"orig_name\":\"3_(1).jpg\",\"client_name\":\"3 (1).jpg\",\"file_ext\":\".jpg\",\"file_size\":59.32,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 14:59:57','2017-04-12 14:59:57'),(5,149,0,'','õt—ß≥\…\ÿF\”Uäjıísk\»˚A∑éy<ô\‰G•ña','\»Fç\÷=ù%òz Ç\È\n','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"b5a39ed1442eefe2ce2511a3717179cd.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/b5a39ed1442eefe2ce2511a3717179cd.jpg\",\"raw_name\":\"b5a39ed1442eefe2ce2511a3717179cd\",\"orig_name\":\"3.jpg\",\"client_name\":\"3.jpg\",\"file_ext\":\".jpg\",\"file_size\":59.32,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 14:59:57','2017-04-12 14:59:57'),(6,149,0,'','˘|6\ÌˆSKX\Ã∆°(4Ìõ∑ºFÂë≥fƒÄ•0vÜE5z','JΩn\÷\‹\Ê@%X´\…@|\Â','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"6ebf9375261a3e6fcce5b4233bb69832.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/6ebf9375261a3e6fcce5b4233bb69832.jpg\",\"raw_name\":\"6ebf9375261a3e6fcce5b4233bb69832\",\"orig_name\":\"4.jpg\",\"client_name\":\"4.jpg\",\"file_ext\":\".jpg\",\"file_size\":54.12,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 14:59:57','2017-04-12 14:59:57'),(7,117,0,'','\Áø7¥çí\›njGº˝êÄªNhÑ!∞ó\›JÄÉm•(','x°\nåç8ø|IoÚ¸tÛVd\'m\'[Çní<ã˛bWWq˛™\◊\€\È®Ñ˝%F(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"ff6132d8dffa25ef1204b39b8f4be1ef.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/ff6132d8dffa25ef1204b39b8f4be1ef.jpg\",\"raw_name\":\"ff6132d8dffa25ef1204b39b8f4be1ef\",\"orig_name\":\"12038148_10153631651005030_1930912546171161273_n.jpg\",\"client_name\":\"12038148_10153631651005030_1930912546171161273_n.jpg\",\"file_ext\":\".jpg\",\"file_size\":106.57,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 17:35:32','2017-04-12 17:35:32'),(8,149,0,'','ü\Ë\Œ\»\È=N¬öû™ú-\«y=øw\Ÿ õ\Ô\ﬁ\ÕXæÏ¶è;\»',']\À`øE¶ß\È\€S¿\ÈX˛\‚$\ZM\≈LæØEÛ1\ÿLº°DHïùz€ó\Ãc6{]Y\”Cs','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"0c99577b752b8f593b44a57faff945ca.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/0c99577b752b8f593b44a57faff945ca.jpg\",\"raw_name\":\"0c99577b752b8f593b44a57faff945ca\",\"orig_name\":\"379999_276022299125202_1196307497_n.jpg\",\"client_name\":\"379999_276022299125202_1196307497_n.jpg\",\"file_ext\":\".jpg\",\"file_size\":53.51,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:33:50','2017-04-12 18:33:50'),(9,149,0,'','Û\Óu≥\'ï\‰Æ\Êºo-±|\“\⁄ù\\ÃéæH\√˙=¸Xl','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"d190824d7e110e0681bd87c6fbfafb59.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/d190824d7e110e0681bd87c6fbfafb59.jpg\",\"raw_name\":\"d190824d7e110e0681bd87c6fbfafb59\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:33:50','2017-04-12 18:33:50'),(10,149,0,'','ù	\÷1\Íˆ™-\ÿ[ÚÕòâi†\·k\»~ü?πó\ƒ\ `¡]e\ÿa','æH¢sBTiq\Ï@\ﬁb\÷\‹î\≈ö¿\’»ñ\‹\”ıÒvf=t/¿ö˝D\À\"á (\Ô*ArbÚFü¡	•\ŸéåÛ\ÊcS','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"8a9726d76c69cdea84fb8eff070b5c7f.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/8a9726d76c69cdea84fb8eff070b5c7f.jpg\",\"raw_name\":\"8a9726d76c69cdea84fb8eff070b5c7f\",\"orig_name\":\"16142787_376062409420209_6580299119384622114_n.jpg\",\"client_name\":\"16142787_376062409420209_6580299119384622114_n.jpg\",\"file_ext\":\".jpg\",\"file_size\":22.64,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:33:50','2017-04-12 18:33:50'),(11,149,0,'','`‚´¶\“ﬂøDhò\‘uL/∫«∫/TÏÅè¨∏\‘#\◊\»','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"c349d34dfe37328a59896eb1c7651bdc.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/c349d34dfe37328a59896eb1c7651bdc.jpg\",\"raw_name\":\"c349d34dfe37328a59896eb1c7651bdc\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:37:34','2017-04-12 18:37:34'),(12,149,0,'','úô˛çë5\Œ\Ï<F\ƒ\Óaú™*å<á£o˘ˆ*\\\Ê&#v','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"a62e7ae6d16431050ba85aebc87ec0dc.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/a62e7ae6d16431050ba85aebc87ec0dc.jpg\",\"raw_name\":\"a62e7ae6d16431050ba85aebc87ec0dc\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:37:34','2017-04-12 18:37:34'),(13,149,0,'','ô!¢\¬Ò\”™\‚ïrá\∆A,7Züp˚\„g\»ˇg\—\€¡','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"f834370a2636ac098c73ac9518a9a698.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/f834370a2636ac098c73ac9518a9a698.jpg\",\"raw_name\":\"f834370a2636ac098c73ac9518a9a698\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:37:34','2017-04-12 18:37:34'),(14,117,0,'','^WuÆ\‰\Õ\Zi§œ¢\«\»›™Q\‡EÜpñ\Ó5Ò®Sµ&','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"f5b0cda5d8e7d349243591862cfc469d.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/f5b0cda5d8e7d349243591862cfc469d.jpg\",\"raw_name\":\"f5b0cda5d8e7d349243591862cfc469d\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:46:31','2017-04-12 18:46:31'),(15,117,0,'','GKFs^ÜX≥2Ωà‘§2;Ø\¬\—\—\≈U•¡\Íé\‹\Âf\Á¶','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"5470e02f598ed169013d79d506cdd544.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/5470e02f598ed169013d79d506cdd544.jpg\",\"raw_name\":\"5470e02f598ed169013d79d506cdd544\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 18:46:39','2017-04-12 18:46:39'),(16,601,0,'','∞Ä^îY\‡\‰X5`8’É\⁄˚D˙!\≈\’\Z•nàÚ°','\Ã1úîR2\≈R˝¡ª>™®K\÷\∆.m\Îük@\»\\Ä*\Ï©.¢\«1\ÍœîBüèÖ0°\◊∞zªı˘fN±2øÙ r\—E\Z(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"bd671c782d93445214a25ddc205e01a3.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/bd671c782d93445214a25ddc205e01a3.jpg\",\"raw_name\":\"bd671c782d93445214a25ddc205e01a3\",\"orig_name\":\"70bf5f017837cd89b7dbcfeb1a0c8d6e8d2d72d931e63a762a6aac0bd12f7498.jpg\",\"client_name\":\"70bf5f017837cd89b7dbcfeb1a0c8d6e8d2d72d931e63a762a6aac0bd12f7498.jpg\",\"file_ext\":\".jpg\",\"file_size\":29.99,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-12 22:30:31','2017-04-12 22:30:31'),(17,601,0,'','á÷û∑`\—lA»ÉL\»8öÇ\◊HR\…80°}\È{˝µºúRt','\Ã1úîR2\≈R˝¡ª>™®K\÷\∆.m\Îük@\»\\Ä*\Ï©.¢\«1\ÍœîBüèÖ0°\◊∞zªı˘fN±2øÙ r\—E\Z(\ÿ\Í\Õ\¬\œí\Ÿ\Ï(\ŸF','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"e38364639e34916fefd8b5a3f977f868.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/e38364639e34916fefd8b5a3f977f868.jpg\",\"raw_name\":\"e38364639e34916fefd8b5a3f977f868\",\"orig_name\":\"70bf5f017837cd89b7dbcfeb1a0c8d6e8d2d72d931e63a762a6aac0bd12f7498.jpg\",\"client_name\":\"70bf5f017837cd89b7dbcfeb1a0c8d6e8d2d72d931e63a762a6aac0bd12f7498.jpg\",\"file_ext\":\".jpg\",\"file_size\":29.99,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-04-12 22:32:03','2017-04-12 22:32:03'),(18,117,0,'',':\ÿùå^úaã©¶ç\ƒlMhg6a{˚H¡≤´\Õ\Â,\ÓpH','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"6065de3a68825aab6913b4987acc0306.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/e304c33076269fe13f67ba80a119df55\\/6065de3a68825aab6913b4987acc0306.jpg\",\"raw_name\":\"6065de3a68825aab6913b4987acc0306\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:03:35','2017-04-13 18:03:35'),(19,149,0,'','—πl_µé9πó\\˚êÖ@7µ\‹¯E“Ök$\ÿ\ÿ˝≥£9','¶mUΩ#rS\ŸÚi`\·B/Gç?`€ëÚΩüU®©\—Ÿ±$@ı@N4åπ)üCI1øAö\√','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"cb43ec33f65746b335d214adc06d56ea.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/cb43ec33f65746b335d214adc06d56ea.jpg\",\"raw_name\":\"cb43ec33f65746b335d214adc06d56ea\",\"orig_name\":\"HS_Arztpraxis_Erweiterung_Umbau-1.jpg\",\"client_name\":\"HS_Arztpraxis_Erweiterung_Umbau-1.jpg\",\"file_ext\":\".jpg\",\"file_size\":101.51,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:54:52','2017-04-13 18:54:52'),(20,149,0,'','\Â\ﬂ:÷üA?	M=fQ\n6#ô\—\Óa®q©\‡æbE+Ca','®¶ÛrîY™\ƒ\‹sÖ\∆]±úáµêó-{x\Ï4°Ù≠øà\‰ï\‰ \€\«7SØGI%∑\’','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"32f18a1c8cb7ea828dc3065b63d93de4.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/32f18a1c8cb7ea828dc3065b63d93de4.jpg\",\"raw_name\":\"32f18a1c8cb7ea828dc3065b63d93de4\",\"orig_name\":\"Arztpraxis-Dr-Warneck-Empfangsteke-1.jpg\",\"client_name\":\"Arztpraxis-Dr-Warneck-Empfangsteke-1.jpg\",\"file_ext\":\".jpg\",\"file_size\":215.26,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:54:52','2017-04-13 18:54:52'),(21,149,0,'','\◊%Q\Œf}∞NRHä∫‰Åß£\∆\n\‹)˛\" 10∏_','!6ãûLc0°ç1t\…<B\≈TbwôùAÑQ\»b∏f\’.P\›\◊\√ıY\‰A§8ÆwCB','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"686132d2707ebdf0ef0279e0c22dd5f5.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/686132d2707ebdf0ef0279e0c22dd5f5.jpg\",\"raw_name\":\"686132d2707ebdf0ef0279e0c22dd5f5\",\"orig_name\":\"IMG_6614-wz-e1460628855177-1024x681.jpg\",\"client_name\":\"IMG_6614-wz-e1460628855177-1024x681.jpg\",\"file_ext\":\".jpg\",\"file_size\":104.61,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:54:52','2017-04-13 18:54:52'),(22,149,0,'','Ä\"Wºî\„\÷ˆ%gbiº¢j˝xjc\◊@\È4Ûjº˙','®¶ÛrîY™\ƒ\‹sÖ\∆]±úáµêó-{x\Ï4°Ù≠øà\‰ï\‰ \€\«7SØGI%∑\’','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"c793aaa5e5ec709f20bb69633d100efb.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/c793aaa5e5ec709f20bb69633d100efb.jpg\",\"raw_name\":\"c793aaa5e5ec709f20bb69633d100efb\",\"orig_name\":\"Arztpraxis-Dr-Warneck-Empfangsteke-1.jpg\",\"client_name\":\"Arztpraxis-Dr-Warneck-Empfangsteke-1.jpg\",\"file_ext\":\".jpg\",\"file_size\":215.26,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:55:11','2017-04-13 18:55:11'),(23,149,0,'','\Èµ^éPê\\x√ü∏“¥$\·ò@hm cÙ£\≈ÒÒÄ','¶mUΩ#rS\ŸÚi`\·B/Gç?`€ëÚΩüU®©\—Ÿ±$@ı@N4åπ)üCI1øAö\√','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"eec70e3275c2a4169631271221df6382.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/eec70e3275c2a4169631271221df6382.jpg\",\"raw_name\":\"eec70e3275c2a4169631271221df6382\",\"orig_name\":\"HS_Arztpraxis_Erweiterung_Umbau-1.jpg\",\"client_name\":\"HS_Arztpraxis_Erweiterung_Umbau-1.jpg\",\"file_ext\":\".jpg\",\"file_size\":101.51,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:55:11','2017-04-13 18:55:11'),(24,149,0,'','\ŒF•>≈ùõ–°\≈g–¢\Áù\’\Ák1∞\“xÚ*4Ò?\0','!6ãûLc0°ç1t\…<B\≈TbwôùAÑQ\»b∏f\’.P\›\◊\√ıY\‰A§8ÆwCB','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"7dd3f4297c5d7cb645607602d06e4d95.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/7dd3f4297c5d7cb645607602d06e4d95.jpg\",\"raw_name\":\"7dd3f4297c5d7cb645607602d06e4d95\",\"orig_name\":\"IMG_6614-wz-e1460628855177-1024x681.jpg\",\"client_name\":\"IMG_6614-wz-e1460628855177-1024x681.jpg\",\"file_ext\":\".jpg\",\"file_size\":104.61,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:55:11','2017-04-13 18:55:11'),(25,149,0,'','i\·‹Åîd\¬¡\ﬂ<=\‡ê˜S¸∞\r∫x∫6\Óu¸˜å_ï','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"32541c823dd34f90e9ae0f45ca923431.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/32541c823dd34f90e9ae0f45ca923431.jpg\",\"raw_name\":\"32541c823dd34f90e9ae0f45ca923431\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:58:51','2017-04-13 18:58:51'),(26,149,0,'','2\ÿ…Ç\Í_sÛ¢`¨Aè^QπÜ‘çÚ\rÙ†òæêÙ3\”;É','\ﬁu.>\Ë—á\Ã\ﬁ˛2ÄÉBA\›=°≥ππ˜jR{¡¿∞\√\≈5†ñπ∫ΩÒ','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"fead6191c798f547be56c73932bf26a6.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/fead6191c798f547be56c73932bf26a6.jpg\",\"raw_name\":\"fead6191c798f547be56c73932bf26a6\",\"orig_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"client_name\":\"image-1123389-galleryV9-onpv-1123389.jpg\",\"file_ext\":\".jpg\",\"file_size\":102.18,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 18:59:40','2017-04-13 18:59:40'),(27,149,0,'','CD}Æ\";\Â©Y\\\Í/ô±L”æªNsÒ`$†ÉwhïAøîy','S\r\Ã\Œ\ÈW&ö2*\√)ùï>{','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"69b19a43f790b711514ad5ddb2b930c7.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/69b19a43f790b711514ad5ddb2b930c7.jpg\",\"raw_name\":\"69b19a43f790b711514ad5ddb2b930c7\",\"orig_name\":\"Desert.jpg\",\"client_name\":\"Desert.jpg\",\"file_ext\":\".jpg\",\"file_size\":826.11,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-13 19:01:47','2017-04-13 19:01:47'),(28,149,0,'','Àªyæ˛\≈!j\n?c\Ë[mGùo\"\–\ﬁ\»˙\Ÿ\‹\◊\Ó¸æ','[\√BH\“xB\‚¥2¡Ú≤','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"b8322ac824b070c9ceff2264d791f991.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/doctor\\/255e9194343e0569799e2ae9976214b8\\/b8322ac824b070c9ceff2264d791f991.jpg\",\"raw_name\":\"b8322ac824b070c9ceff2264d791f991\",\"orig_name\":\"Lighthouse.jpg\",\"client_name\":\"Lighthouse.jpg\",\"file_ext\":\".jpg\",\"file_size\":548.12,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',1,0,'2017-04-14 08:54:51','2017-04-14 08:54:51'),(29,601,0,'','\"∑≥/›øK\0äÄåÑ6E\0\‚D\È\‰\È\‘V w\nˆ)\Ê\Z','\rPY¥êjdÜc¸K2aN∏H','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"16131579e580bb655989d2b3fd210856.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/16131579e580bb655989d2b3fd210856.jpg\",\"raw_name\":\"16131579e580bb655989d2b3fd210856\",\"orig_name\":\"D03879441-p1.jpg\",\"client_name\":\"D03879441-p1.jpg\",\"file_ext\":\".jpg\",\"file_size\":87.2,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-04-17 16:50:35','2017-04-17 16:50:35'),(30,601,0,'','yàÕó \≈(1`;w\Î(\Ìã\\©OØµë\ÁäC\Ÿ!+\Â3','\—\‡\Õ	~æñ£Û:N\◊\0r5ˇg\\2\Ì¨t®¶\…:^\ƒ\ n','Æ˚rh\€L!±ß†C\·j)','jpg','{\"file_name\":\"7a4148683cbf38b8432745ea13478f5f.jpg\",\"file_type\":\"image\\/jpeg\",\"file_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/\",\"full_path\":\"\\/home\\/forge\\/default\\/public\\/protected\\/uploads\\/patient\\/f8e1b03c5360d681eba378ca55c4bb59\\/7a4148683cbf38b8432745ea13478f5f.jpg\",\"raw_name\":\"7a4148683cbf38b8432745ea13478f5f\",\"orig_name\":\"Erm\\u00fcdungsbruch.jpg\",\"client_name\":\"Erm\\u00fcdungsbruch.jpg\",\"file_ext\":\".jpg\",\"file_size\":270.3,\"is_image\":true,\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"\",\"image_size_str\":\"\"}',2,0,'2017-04-17 16:51:35','2017-04-17 16:51:35');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `vaccination` blob,
  `date` date NOT NULL,
  `Handelsname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
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
  `Praxis` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Datei_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Datei` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `document_date` date NOT NULL,
  `document_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rememberoption` int(5) NOT NULL,
  `access_permission` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `delete_status` int(11) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination`
--

LOCK TABLES `vaccination` WRITE;
/*!40000 ALTER TABLE `vaccination` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination_files`
--

LOCK TABLES `vaccination_files` WRITE;
/*!40000 ALTER TABLE `vaccination_files` DISABLE KEYS */;
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
  `user_role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_bmi`
--

LOCK TABLES `weight_bmi` WRITE;
/*!40000 ALTER TABLE `weight_bmi` DISABLE KEYS */;
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

-- Dump completed on 2017-10-04 20:55:02
