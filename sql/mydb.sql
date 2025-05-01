-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: erspythondb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add employees',7,'add_employees'),(26,'Can change employees',7,'change_employees'),(27,'Can delete employees',7,'delete_employees'),(28,'Can view employees',7,'view_employees'),(29,'Can add empeducation',8,'add_empeducation'),(30,'Can change empeducation',8,'change_empeducation'),(31,'Can delete empeducation',8,'delete_empeducation'),(32,'Can view empeducation',8,'view_empeducation'),(33,'Can add empexperience',9,'add_empexperience'),(34,'Can change empexperience',9,'change_empexperience'),(35,'Can delete empexperience',9,'delete_empexperience'),(36,'Can view empexperience',9,'view_empexperience');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_ersapp_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_ersapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `ersapp_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'ersapp','customuser'),(8,'ersapp','empeducation'),(9,'ersapp','empexperience'),(7,'ersapp','employees'),(5,'sessions','session');
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
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-09 08:52:12.155017'),(2,'contenttypes','0002_remove_content_type_name','2024-05-09 08:52:12.211475'),(3,'auth','0001_initial','2024-05-09 08:52:12.456153'),(4,'auth','0002_alter_permission_name_max_length','2024-05-09 08:52:12.521274'),(5,'auth','0003_alter_user_email_max_length','2024-05-09 08:52:12.536235'),(6,'auth','0004_alter_user_username_opts','2024-05-09 08:52:12.545787'),(7,'auth','0005_alter_user_last_login_null','2024-05-09 08:52:12.553365'),(8,'auth','0006_require_contenttypes_0002','2024-05-09 08:52:12.563416'),(9,'auth','0007_alter_validators_add_error_messages','2024-05-09 08:52:12.580857'),(10,'auth','0008_alter_user_username_max_length','2024-05-09 08:52:12.590829'),(11,'auth','0009_alter_user_last_name_max_length','2024-05-09 08:52:12.598930'),(12,'auth','0010_alter_group_name_max_length','2024-05-09 08:52:12.614888'),(13,'auth','0011_update_proxy_permissions','2024-05-09 08:52:12.626855'),(14,'auth','0012_alter_user_first_name_max_length','2024-05-09 08:52:12.635613'),(15,'ersapp','0001_initial','2024-05-09 08:52:12.891536'),(16,'admin','0001_initial','2024-05-09 08:52:12.997346'),(17,'admin','0002_logentry_remove_auto_add','2024-05-09 08:52:13.013303'),(18,'admin','0003_logentry_add_action_flag_choices','2024-05-09 08:52:13.025271'),(19,'ersapp','0002_alter_customuser_user_type','2024-05-09 08:52:13.036486'),(20,'ersapp','0003_alter_customuser_user_type_employees','2024-05-09 08:52:13.149543'),(21,'ersapp','0004_alter_employees_admin','2024-05-09 08:52:13.845169'),(22,'ersapp','0005_employees_address_employees_empcode_and_more','2024-05-09 08:52:13.947118'),(23,'ersapp','0006_alter_customuser_user_type_empeducation_and_more','2024-05-09 08:52:14.084110'),(24,'ersapp','0007_alter_customuser_user_type_alter_employees_admin','2024-05-09 08:52:14.881964'),(25,'ersapp','0008_alter_customuser_user_type','2024-05-09 08:52:14.896926'),(26,'sessions','0001_initial','2024-05-09 08:52:14.934038'),(27,'ersapp','0009_alter_customuser_user_type_alter_empeducation_empid','2024-05-09 09:10:00.111234'),(28,'ersapp','0010_alter_empexperience_empid','2024-05-09 09:30:42.767381'),(29,'ersapp','0011_alter_customuser_user_type_alter_employees_empcode','2024-05-14 12:35:03.786895'),(30,'ersapp','0012_alter_customuser_user_type_alter_employees_empcode','2024-05-15 05:26:26.606978');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2ujkaoanj4nk4ll9781k5us2k3s1oums','.eJxVjMsOwiAQRf-FtSHDYwp16d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZngeL0u0VKD247yHdqt1mmua3LFOWuyIN2eZ0zPy-H-3dQqddv7UYHg_ZDLBEYC3q01haPmUbtKKNhUJ7BgcqagHxCikaDKgbYOGDx_gDJAzc2:1s77Sl:BwyuYSx0V8DkU-2jwSWdj7kbwT4_9nuZfzAKaqR17os','2024-05-29 05:46:03.505726'),('6dovmtq13vsdsiacsmn90aw2m2pzb7h1','.eJxVjDsOwyAQBe9CHSFgAywp0-cMiM86OIlAMnYV5e62JRdO-2bmfZkPy1z80mnyY2Y3ptjlvMWQ3lR3kF-hPhtPrc7TGPmu8IN2_miZPvfD_TsooZetBnRE0VqrDZCJUgbQZKXNSM4oAQZBkHZiIFBKg0KxsSRQIl7RuIH9VrftNkM:1s4zrz:E3K2PziidrLgMNTqVPlHxaPYDc-cBnih3-8IvstQR0g','2024-05-23 09:15:19.502699'),('djn5ob9bk6n6f5hz7nqq1j61zy3v6wke','.eJxVjEsOAiEQBe_C2pDu8JF26d4zEKBBRg0kw8zKeHdDMgvdvqp6b-HDvlW_j7z6hcVFoBan3zGG9MxtEn6Edu8y9batS5RTkQcd8tY5v66H-3dQw6izVkCBVGGtIxVS2WEJnAsgGgOEoAgxOZd1VCo6sNai4XIGJkYwLD5f_ZE3dw:1uAVYq:YZ1-oV30FzfGlEGzUFU213vXPrPg3WFe1Uk9kDKv1dk','2025-05-15 15:10:52.213770'),('qmxstnygpscvwn7nn9cb0pfol4pa0o9k','.eJxVjDkOwjAUBe_iGllZ7Nifkp4zRP4bCSBbipMKcXeIlALaNzPvZca0rdO4VVnGmc3ZtM6cfkdM9JC8E76nfCuWSl6XGe2u2INWey0sz8vh_h1MqU7fWrgZGGLg1g8-hj4qSEtOnOsoiCYMDQA0EVSxj0QKSdF7wtA5ZOrN-wMORDjA:1s7FRc:9Fo4lM86R6TzKM1tbL2Cn3tgnClEMBoFp7BFrIt02nc','2024-05-29 14:17:24.942460');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ersapp_customuser`
--

DROP TABLE IF EXISTS `ersapp_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ersapp_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_pic` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ersapp_customuser`
--

LOCK TABLES `ersapp_customuser` WRITE;
/*!40000 ALTER TABLE `ersapp_customuser` DISABLE KEYS */;
INSERT INTO `ersapp_customuser` VALUES (1,'pbkdf2_sha256$1000000$QsoCFSoq4xnD11ym0qBTsr$tlg4e0f1jvP+q/CCbUNSZSN/cuYeVLVAje1fCfw35gI=','2025-05-01 14:53:43.516417',1,'admin','Kushyanth','Pothineni','admin@gmail.com',1,1,'2024-05-09 08:53:42.133508','1','media/profile_pic/user.png'),(4,'pbkdf2_sha256$720000$Vql9gooihdDi42TKTxNKbO$lhrdCDdS40rgibcwgOOHUjBWM78VBXvhzWP/x8Rnay0=','2024-05-14 12:31:43.365898',0,'rahul123','Kushyanth','Pothineni','rahul@gmail.com',0,1,'2024-05-09 09:07:45.664987','2','media/profile_pic/doctors-1_TfCrWTc.jpg'),(5,'pbkdf2_sha256$390000$WHsVYOCy2DQ4IsmQb0pdac$2nTHLK+7sLALBfX9KfT7Lx6ffGEqKvZezl1S22CoS/Y=','2024-05-15 05:58:39.815771',0,'test@123','Test','Sample','test@gmail.com',0,1,'2024-05-14 12:32:38.972712','2','media/profile_pic/complain_YUGU5fT.png'),(7,'pbkdf2_sha256$390000$hISWsZb5jGL2RrDeeeWK7G$KsXZg5UR/gXLI87He/NZ93Iu044sXEJ0PwUflN8Y76E=','2024-05-15 05:55:14.280868',0,'yug123','Yug','Kaushik ','yug@gmail.com',0,1,'2024-05-15 04:40:45.957358','2','media/profile_pic/complain.png'),(8,'pbkdf2_sha256$390000$65Mpnwnc31ZUwe5vto5lbD$SF8A1Fa4UE8KidRLCWMIuCDZx7wBcGc3PikE4PqKiVI=','2024-05-15 05:55:36.573397',0,'moni123','Monika','Singh','moni@gmail.com',0,1,'2024-05-15 05:08:15.576322','2','media/profile_pic/complain_BKxYNmU.png'),(11,'pbkdf2_sha256$390000$akwmLORMUlpBxnMHoq2Ixc$cbDqrOpiDYCrKnL0N50CMs70lSGVbx5LHROn8LHyPMg=',NULL,0,'rash123','Rashmi','Singh','rash@gmail.com',0,1,'2024-05-15 05:23:23.763975','2','media/profile_pic/complain_5o7XHpt.png'),(12,'pbkdf2_sha256$390000$HLeJXpHFsGKKj2B11F9S41$cQbjFUwxcVj+SvfBjsX2rjk5/wFzKdU+8MjIuuo3KNM=','2024-05-15 05:27:24.371043',0,'radha123','Radha','Singh','rasdha@gmail.com',0,1,'2024-05-15 05:27:15.578985','2','media/profile_pic/complain_oUjxxzv.png'),(13,'pbkdf2_sha256$390000$zYUD3PUVilbN3dz2zUiQxp$9oQzbGzFy/FZ/z2q/DA4YBl/Wz4A+oCxaK80zyWD1uU=','2024-05-15 05:56:36.493909',0,'lalit123','Lalit','Kaur','lalit@gmail.com',0,1,'2024-05-15 05:56:29.051893','2','media/profile_pic/complain_x81k8fe.png'),(14,'pbkdf2_sha256$1000000$M4LVn9mbEA0HuDKnDbpvaI$M9kfGmvZMfz3SMGNb+6IKYUFyGVnVKLL9AOjcM+QNFQ=','2025-05-01 15:10:52.204389',0,'kushyanth','Kushyanth','Pothineni','rahul12@gmail.com',0,1,'2024-05-15 11:38:19.152514','2','media/profile_pic/complain_pXeUaIR.png');
/*!40000 ALTER TABLE `ersapp_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ersapp_customuser_groups`
--

DROP TABLE IF EXISTS `ersapp_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ersapp_customuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ersapp_customuser_groups_customuser_id_group_id_a9db8431_uniq` (`customuser_id`,`group_id`),
  KEY `ersapp_customuser_groups_group_id_a7684892_fk_auth_group_id` (`group_id`),
  CONSTRAINT `ersapp_customuser_gr_customuser_id_aa3daa11_fk_ersapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `ersapp_customuser` (`id`),
  CONSTRAINT `ersapp_customuser_groups_group_id_a7684892_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ersapp_customuser_groups`
--

LOCK TABLES `ersapp_customuser_groups` WRITE;
/*!40000 ALTER TABLE `ersapp_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ersapp_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ersapp_customuser_user_permissions`
--

DROP TABLE IF EXISTS `ersapp_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ersapp_customuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ersapp_customuser_user_p_customuser_id_permission_f16a29f9_uniq` (`customuser_id`,`permission_id`),
  KEY `ersapp_customuser_us_permission_id_141adcf6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `ersapp_customuser_us_customuser_id_b37a492c_fk_ersapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `ersapp_customuser` (`id`),
  CONSTRAINT `ersapp_customuser_us_permission_id_141adcf6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ersapp_customuser_user_permissions`
--

LOCK TABLES `ersapp_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `ersapp_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ersapp_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ersapp_empeducation`
--

DROP TABLE IF EXISTS `ersapp_empeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ersapp_empeducation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `CoursePG` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `SchoolCollegePG` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `YearPassingPG` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `PercentagePG` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `CourseGra` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `SchoolCollegeGra` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `YearPassingGra` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `PercentageGra` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `CourseSSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `SchoolCollegeSSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `YearPassingSSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `PercentageSSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `CourseHSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `SchoolCollegeHSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `YearPassingHSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `PercentageHSC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `creationdate` datetime(6) NOT NULL,
  `empid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ersapp_empeducation_empid_id_13f24be0_fk_ersapp_customuser_id` (`empid_id`),
  CONSTRAINT `ersapp_empeducation_empid_id_13f24be0_fk_ersapp_customuser_id` FOREIGN KEY (`empid_id`) REFERENCES `ersapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ersapp_empeducation`
--

LOCK TABLES `ersapp_empeducation` WRITE;
/*!40000 ALTER TABLE `ersapp_empeducation` DISABLE KEYS */;
INSERT INTO `ersapp_empeducation` VALUES (3,'MBA','SMU','2018','70','B.Tech','GBTU','2015','80','PCM','Test','2010','74','PCM','ABC','2008','70','2024-05-10 13:16:19.633406',4),(6,'M.Com','GBTI','2018','75','B.Com','RKGIT','2014','89','PCM','TVN','2010','78','Science','TVN','2008','69','2024-05-15 04:57:15.034468',7),(7,'M.Pharma','HIT','2010','89','B.Pharma','HIT','2006','78','PCM','KJLI','2005','68','Science ','KJLI','2003','49','2024-05-15 05:11:03.820038',8),(8,'jhg','jh','g','gjh','gjh','gjhg','jhgjh','gjhg','jhgg','jgj','hgjh','gjhg','jhg','jhg','uyt','u','2024-05-15 05:27:37.248359',12),(9,'M.Tech','KJIT','2019','78','B.Tech','KJIT','2017','81','PCM','LPU','2012','78','Science','LPU','2010','85','2024-05-15 05:48:36.317118',5),(10,'Mtech','LPU','2024','78','BtECH','LPU','2021','75','PCM','Sunrise public school','2017','74','PCM','Sunrise Public school','2015','85','2024-05-15 11:40:34.442987',14);
/*!40000 ALTER TABLE `ersapp_empeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ersapp_empexperience`
--

DROP TABLE IF EXISTS `ersapp_empexperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ersapp_empexperience` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Employer1Name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer1Designation` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer1CTC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer1WorkDuration` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer2Name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer2Designation` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer2CTC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer2WorkDuration` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer3Name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer3Designation` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer3CTC` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Employer3WorkDuration` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `creationdate` datetime(6) NOT NULL,
  `empid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ersapp_empexperience_empid_id_cf83d2ca_fk_ersapp_customuser_id` (`empid_id`),
  CONSTRAINT `ersapp_empexperience_empid_id_cf83d2ca_fk_ersapp_customuser_id` FOREIGN KEY (`empid_id`) REFERENCES `ersapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ersapp_empexperience`
--

LOCK TABLES `ersapp_empexperience` WRITE;
/*!40000 ALTER TABLE `ersapp_empexperience` DISABLE KEYS */;
INSERT INTO `ersapp_empexperience` VALUES (4,'HKL Pvt','Accountant','15000','2 years','KLT Pvt Ltd','Accountant','10000','3 Years','NA','NA','NA','NA','2024-05-15 05:05:59.891735',7),(5,'KIT Pvt Ltd','Senior Developer','20000','2 Years','JIKL','Developer','18000','3 years','NA','NA','NA','NA','2024-05-15 05:51:24.069317',5),(6,'TCS','Tester','3.5 LPA','Currently Working','','','','','','','','','2024-05-15 11:41:15.104172',14);
/*!40000 ALTER TABLE `ersapp_empexperience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ersapp_employees`
--

DROP TABLE IF EXISTS `ersapp_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ersapp_employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobilenumber` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `empcode` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `empdept` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `empdesignation` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `joiningdate` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ersapp_employees_admin_id_558adbc6_uniq` (`admin_id`),
  CONSTRAINT `ersapp_employees_admin_id_558adbc6_fk_ersapp_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `ersapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ersapp_employees`
--

LOCK TABLES `ersapp_employees` WRITE;
/*!40000 ALTER TABLE `ersapp_employees` DISABLE KEYS */;
INSERT INTO `ersapp_employees` VALUES (3,'7897979878','Male','2024-05-09 09:07:46.310459','2025-05-01 11:06:03.755010',4,'L-890 Gauri Apartment\r\n                 \r\n                ','EMP1','IT','Software Developer','0'),(4,'64646464','Female','2024-05-14 12:32:39.950736','2024-05-15 05:42:12.312812',5,'0-900\r\n                 \r\n                \r\n                 \r\n                ','EMP2','HR','HR','0'),(6,'1234567895','Male','2024-05-15 04:40:46.232151','2024-05-15 04:43:55.495278',7,'H-809\r\n                 \r\n                ','EMP12','Account','Junior Accountant','0'),(7,'8978978979','Male','2024-05-15 05:08:15.819151','2025-05-01 14:59:02.590013',8,'0','samsung','0','0','0'),(11,'8974788554','0','2024-05-15 05:27:15.765737','2025-05-01 14:59:13.383014',12,'0','superrr','0','0','0'),(12,'6487987465','0','2024-05-15 05:56:29.284854','2025-05-01 14:59:22.442113',13,'0','simu','0','0','0'),(13,'1425365241','Male','2024-05-15 11:38:19.388280','2025-05-01 14:46:34.686485',14,'New Delhi India\r\n                 \r\n                \r\n                 \r\n                \r\n                 \r\n                ','745963210','Software','Tester','0');
/*!40000 ALTER TABLE `ersapp_employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 20:46:24
