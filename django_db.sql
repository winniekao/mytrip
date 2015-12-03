-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: localhost    Database: django_db
-- ------------------------------------------------------
-- Server version	5.6.22

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(22,'Can add user',8,'add_user'),(23,'Can change user',8,'change_user'),(24,'Can delete user',8,'delete_user'),(25,'Can add migration history',9,'add_migrationhistory'),(26,'Can change migration history',9,'change_migrationhistory'),(27,'Can delete migration history',9,'delete_migrationhistory'),(28,'Can add local',10,'add_local'),(29,'Can change local',10,'change_local'),(30,'Can delete local',10,'delete_local'),(31,'Can add trip',11,'add_trip'),(32,'Can change trip',11,'change_trip'),(33,'Can delete trip',11,'delete_trip'),(40,'Can add trip_ location',14,'add_trip_location'),(41,'Can change trip_ location',14,'change_trip_location'),(42,'Can delete trip_ location',14,'delete_trip_location'),(43,'Can add trip_ perform',15,'add_trip_perform'),(44,'Can change trip_ perform',15,'change_trip_perform'),(45,'Can delete trip_ perform',15,'delete_trip_perform'),(46,'Can add collect',16,'add_collect'),(47,'Can change collect',16,'change_collect'),(48,'Can delete collect',16,'delete_collect'),(49,'Can add user social auth',17,'add_usersocialauth'),(50,'Can change user social auth',17,'change_usersocialauth'),(51,'Can delete user social auth',17,'delete_usersocialauth'),(52,'Can add nonce',18,'add_nonce'),(53,'Can change nonce',18,'change_nonce'),(54,'Can delete nonce',18,'delete_nonce'),(55,'Can add association',19,'add_association'),(56,'Can change association',19,'change_association'),(57,'Can delete association',19,'delete_association'),(58,'Can add point of interest',20,'add_pointofinterest'),(59,'Can change point of interest',20,'change_pointofinterest'),(60,'Can delete point of interest',20,'delete_pointofinterest'),(61,'Can add facebook user',21,'add_facebookuser'),(62,'Can change facebook user',21,'change_facebookuser'),(63,'Can delete facebook user',21,'delete_facebookuser'),(64,'Can add facebook like',22,'add_facebooklike'),(65,'Can change facebook like',22,'change_facebooklike'),(66,'Can delete facebook like',22,'delete_facebooklike'),(67,'Can add facebook profile',23,'add_facebookprofile'),(68,'Can change facebook profile',23,'change_facebookprofile'),(69,'Can delete facebook profile',23,'delete_facebookprofile'),(70,'Can add open graph share',24,'add_opengraphshare'),(71,'Can change open graph share',24,'change_opengraphshare'),(72,'Can delete open graph share',24,'delete_opengraphshare');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$tjhRCs1MC6bW$UY9IaqOKzEz7vYYV5SlgQBwRcQlovaZTFNp3qhWsQ7I=','2015-03-17 14:07:19',1,'root','怡','何','koibadkid@gmail.com',1,1,'2014-05-06 16:07:27'),(2,'pbkdf2_sha256$12000$inBZBYQQJDys$5M8ImVCOMbeP+TsvQ5/oiDMlsRZDd0IydFjdfMCB0s0=','2014-12-10 01:02:43',0,'WenTai','Wen','Tai','a0912808302@gmail.com',0,1,'2014-12-10 01:02:43'),(3,'pbkdf2_sha256$20000$bFtNyqx73yMF$JkLFfrb5trSX3aqhbUGZNkGR9boQruM0i1ln3E/fCho=','2015-06-15 21:28:24',1,'koi','','','koibadkid@gmail.com',1,1,'2014-12-16 20:23:22');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-05-08 15:15:57',1,8,'1','daven',2,'Changed email.'),(2,'2014-05-08 15:16:02',1,8,'1','daven',2,'No fields changed.'),(3,'2014-07-05 10:06:28',1,11,'1','Trip object',1,''),(4,'2014-07-07 08:40:55',1,11,'2','Trip object',1,''),(5,'2014-07-07 09:26:38',1,11,'3','Trip object',1,''),(6,'2014-07-07 09:26:47',1,11,'3','Trip object',3,''),(7,'2014-07-09 07:02:11',1,11,'1','Trip object',1,''),(8,'2014-07-09 07:30:20',1,11,'2','Trip object',1,''),(9,'2014-12-28 21:13:40',1,20,'2','PointOfInterest object',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(8,'user','mytrip','user'),(9,'migration history','south','migrationhistory'),(10,'local','mytrip','local'),(11,'trip','mytrip','trip'),(14,'trip_ location','mytrip','trip_location'),(15,'trip_ perform','mytrip','trip_perform'),(16,'collect','mytrip','collect'),(17,'user social auth','social_auth','usersocialauth'),(18,'nonce','social_auth','nonce'),(19,'association','social_auth','association'),(20,'point of interest','mytrip','pointofinterest'),(21,'facebook user','django_facebook','facebookuser'),(22,'facebook like','django_facebook','facebooklike'),(23,'facebook profile','django_facebook','facebookprofile'),(24,'open graph share','django_facebook','opengraphshare');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_facebook_facebooklike`
--

DROP TABLE IF EXISTS `django_facebook_facebooklike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_facebook_facebooklike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `facebook_id` bigint(20) NOT NULL,
  `name` longtext,
  `category` longtext,
  `created_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_facebook_facebooklike_user_id_66275397ab6bf3c9_uniq` (`user_id`,`facebook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_facebook_facebooklike`
--

LOCK TABLES `django_facebook_facebooklike` WRITE;
/*!40000 ALTER TABLE `django_facebook_facebooklike` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_facebook_facebooklike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_facebook_facebookprofile`
--

DROP TABLE IF EXISTS `django_facebook_facebookprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_facebook_facebookprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_me` longtext,
  `facebook_id` bigint(20) DEFAULT NULL,
  `access_token` longtext,
  `facebook_name` varchar(255) DEFAULT NULL,
  `facebook_profile_url` longtext,
  `website_url` longtext,
  `blog_url` longtext,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `raw_data` longtext,
  `facebook_open_graph` tinyint(1) DEFAULT NULL,
  `new_token_required` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `facebook_id` (`facebook_id`),
  CONSTRAINT `user_id_refs_id_4c1dfef6e9656a8b` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_facebook_facebookprofile`
--

LOCK TABLES `django_facebook_facebookprofile` WRITE;
/*!40000 ALTER TABLE `django_facebook_facebookprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_facebook_facebookprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_facebook_facebookuser`
--

DROP TABLE IF EXISTS `django_facebook_facebookuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_facebook_facebookuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `facebook_id` bigint(20) NOT NULL,
  `name` longtext,
  `gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_facebook_facebookuser_user_id_4785a804f621fb03_uniq` (`user_id`,`facebook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_facebook_facebookuser`
--

LOCK TABLES `django_facebook_facebookuser` WRITE;
/*!40000 ALTER TABLE `django_facebook_facebookuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_facebook_facebookuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_facebook_open_graph_share`
--

DROP TABLE IF EXISTS `django_facebook_open_graph_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_facebook_open_graph_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action_domain` varchar(255) NOT NULL,
  `facebook_user_id` bigint(20) NOT NULL,
  `share_dict` longtext,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `error_message` longtext,
  `last_attempt` datetime DEFAULT NULL,
  `retry_count` int(11) DEFAULT NULL,
  `share_id` varchar(255) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `removed_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_facebook_open_graph_share_6340c63c` (`user_id`),
  KEY `django_facebook_open_graph_share_37ef4eb4` (`content_type_id`),
  KEY `django_facebook_open_graph_share_96511a37` (`created_at`),
  CONSTRAINT `content_type_id_refs_id_10066b215c3b7c3e` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_a8453bb40192e2e` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_facebook_open_graph_share`
--

LOCK TABLES `django_facebook_open_graph_share` WRITE;
/*!40000 ALTER TABLE `django_facebook_open_graph_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_facebook_open_graph_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0229xrys9h73i194fiub4mzg2fhewygy','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2015-07-13 16:25:18'),('0fkq1l4nbdvkfpbxyh0elx1sb6ag60te','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2014-08-30 16:29:01'),('0hvan8xsee0t549kgncrawgswcc3dfrp','MGJkY2EyNTA4OWZhNzMyOTAxNjg2ZGM1N2Y5NTYzZWQwMWZmYzdhZDp7InVzZXJfaWQiOiJtcDIwNWEifQ==','2015-03-30 02:59:16'),('0i9qopezj25no8jwos56et3ciftklk4a','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-08-20 15:14:12'),('0oy8y3625odce344prbs0qp4r378rhoh','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2015-05-26 12:27:14'),('13nu0spuezqh64bbftz94j3q7u42ejsz','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-08-25 10:54:52'),('1dn94534doyrf8hvihk71xwk4w1qxxow','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2015-01-20 16:41:40'),('1grp8bfj1sbsqin51sfmszm155h1t8oh','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-12-02 17:52:22'),('1pm7h700cj33ekimmzn0rcl1fvjvk3x9','NTQ4OTc0MGY5MGY5NjdiOTFjMDFkZjRiYTczZmZjZTc5NDY4ODRmZDp7InVzZXJfaWQiOiJ3aW5uaWUifQ==','2015-06-29 21:12:41'),('1s8r44nv3mfyedegnwk4ygqq1jggcfko','MjEyNWQwMmZiYWFkZDZiMDhkZTg3NDUyNTMwYjllZjQ4YzYwMzI4Njp7InVzZXJfaWQiOiJqZXJld2FuZyJ9','2015-07-01 01:09:15'),('2417g2jda2cs1r78hdnmejv2dmbj1zh3','OWRkNDllNjA3MWM4NzVlMzdlMjJhYTZmZGE1ODA1NmUzZTg5ZjczNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyMjI1OTc2OGM5MWMxMWFjZTY1N2QyZTA5MDkzYmZkYjIxNmMzZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2015-06-29 21:37:08'),('25cqrpulpybrjj7i1cr7srtz0o9stxma','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-29 14:11:02'),('296faupzgw5nc817u6rt614ubxqua5f2','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-03-31 14:09:05'),('2i37cvaaxfvuqcvqcz4jo6pcpmem3nks','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-08-07 12:09:58'),('2jl31u59czg89spdzfi8gb39hubu3bcu','NzViMGQ5NWEzY2VkOTk2MjY4M2I5YTRiNDU3M2Q5NDNiYzU1MjRmYzp7InVzZXJfaWQiOiJrb2kiLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2015-01-01 17:24:30'),('2x3x22rochsmlll669zm2d07qcuefev3','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-10-12 07:06:40'),('3lbon2pnnl34g3y17oplhx5otx1c6q6s','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-06-03 05:52:26'),('3lrsacinwlj09ikdwatmcauomjh4eujc','MTg3MGVlOWNhMDJiNTkwNGYyMzMxNjA0MzY2NGI0MDUyYzA4NjhlNjp7InVzZXJfaWQiOiJ0ZXN0In0=','2014-10-28 17:09:25'),('3qf332wzio8yhdd7zrti501lzb9hnwbd','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-08-28 13:16:34'),('3rud1x14zouc3yhppx78l8whzic0nqus','NzViMGQ5NWEzY2VkOTk2MjY4M2I5YTRiNDU3M2Q5NDNiYzU1MjRmYzp7InVzZXJfaWQiOiJrb2kiLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2014-08-10 06:49:20'),('44or73805nqixysksgcmar9rj4kl27l6','ZDI0ZmJiNThiOTg4MmUwMzQxNDY3MDEwZGUzNjJiYjQ3NzNjMjAyMTp7InVzZXJfaWQiOiJyYXlhdm4ifQ==','2015-01-12 18:21:58'),('4gudv4qigszchoq27g8pdhli4qmjp1ua','YmNkNWY4ZGU0MDI5YjIzZDJlODM0YWE3NWI0YzU2ZDFkZDY4ODQ3Nzp7ImZhY2Vib29rX3N0YXRlIjoic1ZqVm5xVUZtdXpuQmpPTUNFcWUwaE1QamwzWXJXb2gifQ==','2014-12-23 21:43:30'),('56swzm0f5fj37847au15xi6gmvuc4aw7','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-09-24 06:46:06'),('5c52165bitwavwtilmgvjnvm1bwnej5f','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-08-18 15:57:00'),('5jnxmjuoqdf9qjsddogj7hyw3j8xoikp','Njg3YWQyNjRlYWMzYjM2Mzk5ODZlNWNjZjc3NzBlZTNkMGRiNDg2YTqAAn1xAVUHdXNlcl9pZHECWAMAAABrb2lxA3Mu','2014-12-28 15:21:59'),('5z4lh2yukq0b4er2vx82ud0dzimc15rf','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-09-30 03:37:10'),('61aywm05oyhj0314i23f39mzaoapt5a5','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2014-12-10 00:10:36'),('6jsptbner0ksorbl1h1yuelpuwcm49hx','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-07-22 15:49:07'),('6kkb534inlp9qz3wjf34yn32i22wfpwf','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2015-01-04 13:34:37'),('6svfxhdgzzg9rukf9160bonybtr3gyg0','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-23 06:18:06'),('701ovbn00izadpyjbfwi4vujkpmgt9ik','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-10-15 08:18:24'),('7giqbhukt6vqbfl8tpub2hafjfx1c7wi','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-10-28 15:33:44'),('87xuixwrbsjn4q3j3ufcgz53oknwfxmd','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-09-07 16:33:51'),('9f0xpcgn38162c6t2jza20kvw34ik8yn','MGIwYWE0NjBlMDE2Y2E1M2FmZThjMjExNWFjNDczMWM3NGIxZDRlYTp7InVzZXJfaWQiOiJ2aXZpIn0=','2015-02-04 22:17:56'),('9jx8y4vn1gfubnxhze6cpjlqcy49l4gy','YTQ1ZWViYzUyMmM0NWZlNTY5ZDFlNGI4ZDRjZjFhNjUzNjNiYzk5ZDqAAn1xAShVDmZhY2Vib29rX3N0YXRlWCAAAABmcUo0ZDU0YWRYbjh6QUlWOUlteW9tMkx5a284VnRjOFUQcGFydGlhbF9waXBlbGluZXECfXEDKFUGa3dhcmdzcQR9cQUoVQh1c2VybmFtZXEGWAQAAAByb290VQN1aWRxB1gPAAAAODgzMDczMjM4MzcwMDk4cQhVBmlzX25ld3EJiVUIcmVzcG9uc2VxCn1xCyhYCgAAAGZpcnN0X25hbWVYAwAAAOaAoVgJAAAAbGFzdF9uYW1lWAMAAADkvZVYCAAAAHZlcmlmaWVkiFgEAAAAbmFtZVgGAAAA5L2V5oChcQxYBgAAAGxvY2FsZVgFAAAAemhfVFdYBgAAAGdlbmRlclgEAAAAbWFsZVUHZXhwaXJlc3ENVQc1MTgwMjU4WAUAAABlbWFpbFgTAAAAa29pYmFka2lkQGdtYWlsLmNvbXEOVQxhY2Nlc3NfdG9rZW5xD1XZQ0FBR2x2RjNhNGlVQkFPVFpCaThzd051dEZkUHBMTE93eWE1QnB0bHMwUk1HdFNJcGdXVjNvd0l6QmVaQlB6aWN3N3RqeGs2dHBiZ0pjekNyWWc2M3BGMGZqaUtkVUF4MHdydXdXdUJMVkNsUUNRWkFRTVEzWVFsd0pBd1pBSGRxWFZsbHZwZ1pCTkhsdmQzWkNlVjh6WXF1UFh2bFk1clV4MGZaQzBTS3dRV1JTaHdwVk5wQkVJWkJreE1rTlN4TnBEZXRrY21CMG9FV0ZuM0JtbmtFUjZkWFgIAAAAYmlydGhkYXlYCgAAADA0LzIyLzE5OTNYBAAAAGxpbmtYPAAAAGh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9hcHBfc2NvcGVkX3VzZXJfaWQvODgzMDczMjM4MzcwMDk4L1gIAAAAdGltZXpvbmVLCFgMAAAAdXBkYXRlZF90aW1lWBgAAAAyMDE0LTExLTIxVDExOjM0OjM3KzAwMDBYAgAAAGlkaAh1VQhmYWNlYm9va3EQiFUEdXNlcnERfXESKFUCcGtxE4oBAVUFY3R5cGVxFIoBBHVVC3NvY2lhbF91c2VycRV9cRYoaBOKAQJoFIoBEXVVB2JhY2tlbmRxF2Nzb2NpYWxfYXV0aC5iYWNrZW5kcy5mYWNlYm9vawpGYWNlYm9va0JhY2tlbmQKcRgpgXEZfXEaYlUPbmV3X2Fzc29jaWF0aW9ucRuJVQdkZXRhaWxzcRx9cR0oaAZoDFUIZnVsbG5hbWVxHmgMVQlsYXN0X25hbWVxH1gDAAAA5L2VVQVlbWFpbHEgaA5VCmZpcnN0X25hbWVxIVgDAAAA5oChdXVoF2gQVQRhcmdzcSIpVQRuZXh0cSNLCHV1Lg==','2014-12-24 11:37:37'),('a9s7ucgsf3ffdgg78v7oc8kcnyq8zend','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-08-07 06:55:51'),('anu6ufe5jqx10lre87vse7p7x88hvcoj','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-11-23 17:03:22'),('asrhyzh9sukwthdvb2stor01jh7ijw9j','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-09 16:19:47'),('azrpqgy15j49n22lae7mzdnno97tc6ne','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-16 13:10:22'),('b26cyh3sc67xiojabe00e4716qvrpfry','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-01 00:06:26'),('b2ligri3wj32dg62gn1qvvkh8fedx7lx','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-12-10 00:16:48'),('c3g756k001tkty6l368qtojl8f9umic2','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-08-07 06:59:53'),('c404e46tk9jj6soiizz1f5xeznc11lg1','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-08-19 13:40:45'),('c4aod8iblhxnpufp0nchwxyfv3szsozy','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-11-05 17:49:24'),('clw2911g354ow1x0bw73t0ofh4omswe5','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-12-09 23:55:01'),('dceatmnwo11a9mb22hu5to8ptn1i5hmk','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-05-27 17:20:36'),('du7ccaykgfrlqsce8dnx4bngva1y64og','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-28 02:00:01'),('eehk1qtptt6jv84dsb0evfu43zcpdfbr','Y2VmZTA5NDk5YmI2NDQ3NjhiZDBjODM2ODdmOTA4YmQxODU4OGM0Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyMjI1OTc2OGM5MWMxMWFjZTY1N2QyZTA5MDkzYmZkYjIxNmMzZjUiLCJ1c2VyX2lkIjoia29pIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2015-06-22 01:03:57'),('envyf2zu77texuq07re5xmvhn75jbk1z','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-23 14:45:17'),('eub5672yrbvapksdhhc13kh93hn8heth','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-05 22:24:48'),('fahyi0fp5i22fh3r5m5qwkck27cvfbfj','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2014-11-11 20:08:56'),('fravx05re6an0abnir0b85fiot8an8du','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-08-12 08:31:19'),('gbb23kkijpf7uouw4zi9h205o0rul33x','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-06-30 17:26:39'),('glasnqbuw39epxatko87aoqkkzsxhd7o','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-06-22 14:54:48'),('h2nukwoleu4wtgq9dgqysz67oq53xl81','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-28 02:39:34'),('h9874ymntreyyyov9etkgo57dgv2fmag','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-12-20 23:11:55'),('hl402i2hjt53s7flvxebs6ogug105ooc','ZDI0ZmJiNThiOTg4MmUwMzQxNDY3MDEwZGUzNjJiYjQ3NzNjMjAyMTp7InVzZXJfaWQiOiJyYXlhdm4ifQ==','2015-01-12 18:24:25'),('htf4m4usavprxqrju7w2mrnjjjx76o5s','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-06-23 16:48:50'),('hvpae06aia1k8qssla8kq4nq1szn3o8b','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2015-01-10 23:09:49'),('hzvsxjuhhmw3n8lxvdwzwdrj9o3lvj9p','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2015-06-21 16:32:07'),('i4rj2df3jarrzwrh9evowm2j9h8m71j9','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-10-15 04:09:40'),('iepdrxkigner4bgo0763l6frpma2go7j','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-07-28 14:02:55'),('iiom73mwk4ikzot0n8ickbvfudjbrnvg','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-03-29 12:04:59'),('itgb8pmbmio1okwz8rex200bd3q0zw59','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2014-12-02 13:58:58'),('iwb8nvbr67zzqdz3zry3y81qmxc6b2rr','OWM5NDlmNGQyNzNhY2MwMGQ3NzVmNzFlNmY2M2M1YTlhNzk4MGM1NTqAAn1xAVUOZmFjZWJvb2tfc3RhdGVYIAAAADRQeXBPTDU1SERiYWE2b3hJaDFYWkIxRFdjN08yS000cy4=','2014-12-24 09:52:40'),('j8hiqvbx2j2dz5wwd11fnrvufibayf9k','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-08-28 13:07:17'),('jahmn8276drme2kn4frlyfu4bfpcpnx1','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-12-10 00:17:52'),('jayuyh6rvpuxim7eomptfdoymu6zfuul','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-05-22 15:12:15'),('juaa7jb7dzanpyl2y7mmghfs64yb7jgi','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2014-09-21 13:44:24'),('jx2iw6gdsn02wylz7btsv8leda1x12nq','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-07-26 04:22:36'),('kll945l0wth8jc0framv6ee92ayakz83','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-09-29 10:40:10'),('l7bfklza06xsvvfl6kqjo3w36v64e0q2','NzA3OGY5ZGI3NGZjMjM4NjIwMDhkODMzZTNkODQ1NmE0YjY1MjM2NjqAAn1xAShVDmZhY2Vib29rX3N0YXRlWCAAAABCUlhFNUhiVmVkSmo0NW9yR0xnbDdVTUg4YVh3YTllTVUQcGFydGlhbF9waXBlbGluZXECfXEDKFUGa3dhcmdzcQR9cQUoVQh1c2VybmFtZXEGWAQAAAByb290VQN1aWRxB1gPAAAAODgzMDczMjM4MzcwMDk4cQhVBmlzX25ld3EJiVUIcmVzcG9uc2VxCn1xCyhYCgAAAGZpcnN0X25hbWVYAwAAAOaAoVgJAAAAbGFzdF9uYW1lWAMAAADkvZVYCAAAAHZlcmlmaWVkiFgEAAAAbmFtZVgGAAAA5L2V5oChcQxYBgAAAGxvY2FsZVgFAAAAemhfVFdYBgAAAGdlbmRlclgEAAAAbWFsZVUHZXhwaXJlc3ENVQc1MTgzNTgyWAUAAABlbWFpbFgTAAAAa29pYmFka2lkQGdtYWlsLmNvbXEOVQxhY2Nlc3NfdG9rZW5xD1XZQ0FBR2x2RjNhNGlVQkFOMjhFWERyQ2IySUVlWkN5MWpLbTE4R2k2WDBmZFpCcW9NTUZKSHQ3OGFZb3Q5c1pDb0d0cWtZYzZFOFpCd3ptNDVJSVF4SE5JeXdOTXd2eHNDVzJncWZWU0haQWxMNFRwbzRaQVh1aDhLaG9CeFkzNG9sYjhtT1hndmMxQmFDWkFKaHNHWUFrZmQzdmdDTW96NDNzczJtaldtV2pCT3JLb0xUOENkRjRIM0lockdrQjRWTGFKU2FuWkEyUHBrcXh5UGxkelRNc3JMUVgIAAAAYmlydGhkYXlYCgAAADA0LzIyLzE5OTNYBAAAAGxpbmtYPAAAAGh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9hcHBfc2NvcGVkX3VzZXJfaWQvODgzMDczMjM4MzcwMDk4L1gIAAAAdGltZXpvbmVLCFgMAAAAdXBkYXRlZF90aW1lWBgAAAAyMDE0LTExLTIxVDExOjM0OjM3KzAwMDBYAgAAAGlkaAh1VQhmYWNlYm9va3EQiFUEdXNlcnERfXESKFUCcGtxE4oBAVUFY3R5cGVxFIoBBHVVC3NvY2lhbF91c2VycRV9cRYoaBOKAQJoFIoBEXVVB2JhY2tlbmRxF2Nzb2NpYWxfYXV0aC5iYWNrZW5kcy5mYWNlYm9vawpGYWNlYm9va0JhY2tlbmQKcRgpgXEZfXEaYlUPbmV3X2Fzc29jaWF0aW9ucRuJVQdkZXRhaWxzcRx9cR0oaAZoDFUIZnVsbG5hbWVxHmgMVQlsYXN0X25hbWVxH1gDAAAA5L2VVQVlbWFpbHEgaA5VCmZpcnN0X25hbWVxIVgDAAAA5oChdXVoF2gQVQRhcmdzcSIpVQRuZXh0cSNLCHV1Lg==','2014-12-24 10:42:13'),('la7xmcmrwtwjqbxmra6420lhud3clyet','MzMzM2Y0MWM4MzBhNjVlODBlOTQyOTA2NTU4ZjNjODg1MjQ1MGY3ZTp7InVzZXJfaWQiOiJrb2kiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-11-14 00:30:29'),('lneu66erppicoah4bwomfmmqparwktjh','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-12-08 14:01:55'),('loxh8sbk0eeatjo7lzqsqnrjbfj01d41','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2015-08-01 15:25:40'),('lrj77mkfo7ryswq3p11tjv7v75rh2utn','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-06 21:59:08'),('m7wnjo1oy9ulz28t7us2pg1axulh7dd4','MzkyNGI2NGU5NGRjNTViMTA3YjJkMTQ5MDE3YTcxMzU1MzU1NWU3OTp7InVzZXJfaWQiOiJtaWdhd3UifQ==','2015-04-05 22:23:38'),('mibbix04cd6jo0mnqedve4r0ictyzoib','MGIwYWE0NjBlMDE2Y2E1M2FmZThjMjExNWFjNDczMWM3NGIxZDRlYTp7InVzZXJfaWQiOiJ2aXZpIn0=','2015-01-13 13:48:01'),('mkagwr4l32ob5vaqepnh19jrauv6t91q','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-09-08 03:17:31'),('mnktr6xp69yxwvvm0hg5qxrjajkf9l4x','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-06-30 00:09:09'),('mw2031pgbkr5sp82ej4vvu9nmhzyb431','YTcxZDY3MjE1M2FmMTI0MTAwYzY5NWZjNGQ4ZmQ2ZjcxNGY4M2Q5NTp7InVzZXJfaWQiOiIxMTExIn0=','2015-01-13 13:49:21'),('n968npvk1dmnfeewrugu8kxaak4k8h7f','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-16 22:04:08'),('nzwxic87o4egl9t3i1hckdyjldcnbt7e','YjBkM2Y2NTRlNWRiMzI3MDUwZTdhNWRhNzhiNDU5OWU3YTFlZjMzYjp7InVzZXJfaWQiOiJIb3l1bmdjaGVuIn0=','2015-03-05 08:56:56'),('osxzlezrcut9i0ugw0vv7msorzegmyqj','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-12-20 15:51:11'),('ouk539vqsg1ghcg6ikvsbnzd1t3p4uld','MTBjYjBiMWM3MTU1MTk1NzJjZmE5MTFmYzlmZWQzMzNhNTQ1YjM0NTp7ImZhY2Vib29rX3N0YXRlIjoiSEFqZWNXYmVpRmo0bzd2U1RyVGlCR3JBYktaejZTczYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2014-12-09 21:16:29'),('ovdbxbdxjwn4x7qaa25uqx6o7ty7nbzj','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-12-02 17:00:05'),('p9mv34evorx7ns8z9zrbevgttfhpqykh','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2015-09-29 15:20:16'),('pan3asfwgeu443xqu329n16hswqt90wq','MGIwYWE0NjBlMDE2Y2E1M2FmZThjMjExNWFjNDczMWM3NGIxZDRlYTp7InVzZXJfaWQiOiJ2aXZpIn0=','2014-11-14 01:24:11'),('piys1qjd3zccvjn9qy4vvgk6aksgol8v','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-11-23 16:59:03'),('pjobuvpnft2avgmfu6btikoqmxo76pr7','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2015-01-28 18:29:43'),('pppcs1eabwxrngqyyfy5vrc29hr9o5gs','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-06 11:36:02'),('pxzh0rr3kl186qcbgdxdbxxrgytovd23','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-06 15:45:27'),('q0vry3vbc9ml5fvza5udtptvsu1rt3i5','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2015-01-12 19:53:26'),('qjwcwtrk1h7bzzx3a7ez2eg0ov9749mv','Yzg0OWQyN2M1ZGM5NmE4NDIyNTljYTYxNGQ2Yzk3M2RlNDVjODExYzp7InVzZXJfaWQiOiJyaWNreSJ9','2014-11-25 17:04:18'),('qzvry0mn3q979p93gwog90n1gspuog51','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-08-12 14:46:27'),('r54x5h293jjl059kaoxasrbpazvcebmw','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2014-12-20 13:18:34'),('rke48bbm12zurc8gsx5s3xr1v00krufr','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2015-05-26 19:17:44'),('rnlggrdxv15ekz9d2tam0ztk3nciinj5','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-09-08 15:34:35'),('s65nmy4692olrw5wwrfy01pr640k8lvm','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-10-15 09:04:12'),('sj1jl24kz7bsaxzslv3ytqw6a373ictz','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-08-14 11:28:52'),('ss0p6305h1c0h161efnw7hti773lqzu7','OWY3ZTZhZmU1NmFkYjE2ZDVhZThjOTc3MjQ4NDViNDc0YzEzZmJmNjp7InVzZXJfaWQiOiJkYXZlbiJ9','2014-09-09 03:48:01'),('t2u6kluyi92soz5ya3urmmxdyt2a347p','MzMzM2Y0MWM4MzBhNjVlODBlOTQyOTA2NTU4ZjNjODg1MjQ1MGY3ZTp7InVzZXJfaWQiOiJrb2kiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-02-06 16:43:09'),('t437pjgkj4c2s6s9bog4ifeyuhc00fki','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-11-11 20:37:22'),('t5v2dhweoudn7yp85do1yp8jev4v7v9k','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-09-28 06:14:35'),('tqd6hloyg1qerycq7ywddrqrz2m0u0l0','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-09-30 04:27:09'),('u2wv4i7z02i5usmyl0c2m106le57fz1d','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-10-30 21:49:12'),('u6cmaefjldnyqzn5xj4x7qrw729t5a2l','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-07-25 15:03:27'),('uhvb8a6mnhzkmle4y13hpgdm50cwgnof','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2015-05-30 20:15:48'),('uje45tzjomolgvry1snny4fx791cp3kf','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-01-12 15:46:10'),('umyead2wx8xl2kd7yn1pj2wvcarenqo4','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-12-22 16:41:27'),('uq2zi2a0o3c8iei61m3i7c7ofyxxbj08','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-08-28 13:19:10'),('uudhx70tl3o3qn07y48fvwbj6wtna8dx','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-09-29 08:15:58'),('v1e77eh93vatmgco9a49ec6x40cepi5o','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-07-23 17:37:50'),('vhjpdh5gs32u84nw0tqb7dy3fv6lmgih','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-09-16 01:55:06'),('vz863wd8hpoa08wdnfjiot35d07q6zgk','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2014-12-22 14:28:20'),('w52abkb9996e7avlg3p3p8ujlg3w5zo0','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-06-22 12:13:37'),('wovdoq8kabzjyx01mo3bc3ifikh0qra7','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-09-15 13:52:15'),('xbpray0p6xwr628v4goq47vamjuy96vh','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-10-13 15:33:00'),('xc23wpw7wz2trv7uny99nx7wajdyy8fw','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-12-23 16:04:09'),('xc3tfts2td2xmekcxhey8owdg1p0j41j','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-12-31 17:49:32'),('xjwaz6kggzr1potsvxa1dgk2k5miu6qx','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2015-01-01 17:14:20'),('xlc1m6c1o292q9doqsgmggjghdxa4r5o','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2015-01-28 19:21:39'),('xuvxtputv7gtx6fs4cyc7rqwslgt61wf','MDJmNTM4NTZhOGJjZThjZmNiOTlhMThiOGYwYTVkODRlNWVlM2FkYjp7ImZhY2Vib29rX3N0YXRlIjoiTWdaazQ3T0E0WW1Sa1ZXeVM4cHNucXhBU01nNzZ1ZXYifQ==','2014-12-16 18:07:34'),('xy6snwvng5tbal35yd4wkl6b24wgeihz','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-12-22 16:43:35'),('y4qdbyvc7ke8tzwrp2m3zm622mdqg7ia','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2015-03-03 10:08:20'),('yka2a5ngm1u479z7twrpzs8yraq7v7lv','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-10-19 13:36:14'),('yx3h77kt5g277zaw4oh71x8apu17j4cq','NzVmNjQxOGMyODgyMTYyMGM1MzA2Y2RjNDFmOTFmNjQ1ZGI5MjY3Njp7InVzZXJfaWQiOiJrb2kifQ==','2014-09-06 10:07:42'),('yzo3ogyrql63qxu43x41f71w4rg1azde','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-10-15 02:13:55'),('z1fqhtrdrej4hqgfiy9hfx0xd3r8nnbn','MGQ5NzIwOWM2OGQyYmJkYWM3OGU5NDMyZGIwM2U0ZjhkMzgyYWI0ZTp7InVzZXJfaWQiOiJ3aW5uaWVrYW8ifQ==','2015-06-30 13:33:24'),('zcgot55uoz8thmdh47k9joixlf258td6','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-12-05 19:30:23'),('zfvo9gzyldhyxbe3xx4dm8u07g78cnve','OGE4ZGFiMTk4MjJlNzI0NjkxNDRiMzY1MTRlYTIzYTU3MjE4N2IyMjp7fQ==','2014-09-29 08:26:03'),('zkfcnpufi7cxqlaggulvm6v19veo4ejf','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-06-03 06:22:54'),('zrz8xb19q16frnv45bfzh2vz8o4ulyxn','Y2UyM2NhNDhmNTFhMzlhZjc1N2YxMmVmN2JkNGY4YTY0OTM5NTRkNDp7InVzZXJfaWQiOiI5OTg4MDA5OSJ9','2015-01-15 14:59:47'),('zyb5wp22qllkxxprfgelojpwtblprmwm','NmFhZDBhMjc1ZmZmZThiNDM2ZTZlM2RkZjU4ZGMwZDEyYTdkNWI3Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-06-06 09:43:17');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `local_id` int(11) NOT NULL,
  `longitude` decimal(12,8) NOT NULL,
  `latitude` decimal(12,8) NOT NULL,
  `local_name` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`local_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (1,121.51516500,25.03598900,'Affiliated Experimental Elementary School of University of Taipei'),(2,121.51832000,25.03235400,'『萬有全』金華火腿'),(3,25.03367800,121.51569400,'台灣菸酒股份有限公司門市'),(4,25.03625200,121.52473700,'青島豆漿店'),(5,25.03148600,121.51717500,'Pizza Hut'),(6,121.52071600,25.00920700,'Mos Burger'),(7,121.51380500,25.03660400,'臺北市立大學'),(8,121.50958050,25.03224730,'台北植物園'),(9,121.51217000,25.03119300,'市立建國中學紅樓'),(10,121.50958100,25.03224700,'台北植物園'),(11,121.51582300,25.03217400,'老熊牛肉麵店'),(12,121.51491700,25.03748000,'中央氣象局'),(13,121.51708300,25.03514000,'爭鮮外帶壽司'),(14,121.51404100,25.01033600,'野宴日式炭火焼肉'),(15,121.50570300,25.04292900,'鍋爸涮涮鍋'),(16,121.53286200,25.05450700,'Mos Burger'),(17,121.53293200,25.05658700,'慶泰大飯店'),(18,121.53981000,25.05940200,'羊肉湯鍋-車庫羊肉爐'),(19,121.51974300,25.00860600,'永和圖書館'),(20,121.51708100,25.04792400,'大戶屋'),(21,121.51371500,25.00746100,'永和佳佳香鍋貼'),(22,121.51615600,25.00847100,'潮州肉圓'),(23,121.53124100,25.06239200,'Subway'),(24,121.51703100,25.03247400,'統一星巴克南海門市'),(25,121.52055800,25.00870800,'國父紀念館'),(26,121.57481400,24.98691300,'政治大學電算中心'),(27,121.57584300,24.98623300,'National Chengchi University'),(28,121.57607400,24.98815000,'JuicyBun就是棒'),(29,121.59764370,25.08148790,'清白里'),(30,121.59548000,25.08441000,'MOS BURGER'),(31,121.59350700,25.08384000,'四面八方'),(32,121.60167000,25.08590000,'内湖大溝渓親水歩道'),(33,121.52088900,25.00826500,'McDonald'),(34,25.03572020,121.51480010,'巴斯家'),(35,25.03553830,121.51462080,'抓魚的溪'),(36,0.00000000,0.00000000,'hahaha '),(37,-73.96324400,40.77943700,'The Metropolitan Museum of Art'),(38,121.54405000,25.04614100,'國賓影城@台北微風廣場'),(39,25.04575990,121.54297360,'PIXNET'),(40,25.05562050,121.53444980,'元氣煲湯'),(41,121.51370200,25.03541500,'台北市立教育大學'),(42,121.51808730,25.00575250,'福和里'),(43,121.49131820,25.04354660,'Taipei'),(44,121.51349100,25.03555300,'7-Eleven'),(45,121.51499100,25.03803400,'一女中(公園)'),(46,121.51513600,25.03677500,'一女中(公園)'),(47,121.58604600,25.03847800,'福德街'),(48,121.51612700,25.01553000,'世界豆漿大王'),(49,121.51380500,25.03660400,'University of Taipei'),(50,121.53200700,25.01592400,'罌粟花泰式料理'),(51,121.53333300,25.01498600,'茉莉二手書店台大店'),(52,121.53584780,25.03000900,'Daan Forest Park'),(53,121.54359900,25.03284400,'MRT Daan Station'),(54,121.58466900,25.03738500,'奉天宮'),(55,121.56596300,25.04114600,'MRT Taipei City Hall Station'),(56,121.55889890,25.03818890,'Zhongshan Park'),(57,121.57035400,25.03276500,'Xiangshan station'),(58,121.53620000,25.05762200,'Hotel Cozzi'),(59,121.53427700,25.05812700,'英属蓋曼群島商家庭伝媒股彬有限公司城邦分公司'),(60,121.53460600,25.05773700,'詩肯柚木'),(61,121.56282200,25.04313700,'起初文創'),(62,121.51423500,25.03745300,'觀測坪'),(63,121.51491500,25.03636100,'市立大學附小'),(64,121.51831800,25.00761900,'謝政璋皮膚科'),(65,121.51871800,25.00735000,'媽咪里拉手工餅乾專賣店'),(66,121.51731800,25.00671300,'KGI'),(67,121.51835800,25.00741000,'50 Lan'),(68,121.51491700,25.03748000,'Central Weather Bereau'),(69,121.51580300,25.03357000,'国立台湾博物館南門園区'),(70,121.53946000,25.02648200,'Mini Bar'),(71,121.51407300,25.04616700,'Starbucks Coffee'),(72,121.23421700,25.07965140,'Taiwan Taoyuan International Airport'),(73,121.21487900,25.01299400,'Taiwan High Speed Rail'),(74,121.51725500,25.03102000,'本味拉面'),(75,25.03715140,121.51429450,'此此次'),(76,25.03708600,121.51428420,'自動'),(77,121.54991700,25.05083300,'Taipei Arena'),(78,121.30692700,24.98998400,'豆先生咖啡館'),(79,121.30680200,24.98965200,'Playa'),(80,25.05002760,121.54908660,'麥當當'),(81,25.00672610,121.51880470,'我家'),(82,121.51429250,25.03713300,'測試'),(83,121.51428550,25.03711120,'測試'),(84,121.51460530,25.03592980,'lab503'),(85,121.51444150,25.03611890,'一整天滿滿的阿福QQ'),(86,121.51464640,25.03583710,'lab503'),(87,121.51464380,25.03584630,'澳門上空'),(88,121.51463370,25.03584820,'威尼斯酒店'),(89,121.51464210,25.03586150,'威尼斯賭場'),(90,121.51461970,25.03587160,'主教山小堂'),(91,121.51463570,25.03587500,'澳門塔'),(92,121.51462880,25.03586150,'大三巴牌坊'),(93,121.51463070,25.03586330,'青洲飯店'),(94,121.51463830,25.03585420,'議事亭前地'),(95,121.51463080,25.03585710,'龍環葡韻博物館'),(96,121.52708670,25.03844200,'公車上Ya'),(97,121.58570710,25.03788390,'床'),(98,121.51468720,25.03699780,'梅田展望台'),(99,121.51479830,25.03688540,'關西機場'),(100,121.51471310,25.03691820,'清水寺'),(101,121.51457790,25.03590590,'澳門港式餐廳'),(102,121.50789090,25.03485700,'甘泉魚麵'),(103,121.54878400,25.01988600,'Hépíng High School'),(104,120.29927500,22.62498100,'Central Park'),(105,120.26930900,22.62235200,'哨船街'),(106,120.26643300,22.61973300,'西子灣'),(107,120.26694000,22.61887700,'舊英國領事館'),(108,120.28302000,22.62603800,'大溝頂純旗魚丸'),(109,120.29628860,22.63112740,'駁二藝術特區'),(110,120.29630400,22.63123000,'佳適旅舍-六合館'),(111,120.30171600,22.61095800,'高雄市圖書總館'),(112,120.30391500,22.61638900,'Chez Alexandre 亞力的家法式薄餅小館'),(113,121.56541770,25.03296940,'Taipei'),(114,121.58667300,25.03890900,'Fude Elementary School'),(115,121.57665640,25.03547590,'捷運象山站'),(116,121.57532860,25.03433110,'象山'),(117,121.57532860,25.03433110,'福德街'),(118,121.51349580,25.03684500,'熱舞社辦'),(119,121.51843200,25.04620000,'你好@台北'),(120,121.51450090,25.03617590,'316!!!'),(121,121.51453280,25.03620020,'３１６'),(122,121.53997560,25.03842460,'車車'),(123,121.56148010,25.04137710,'大逃殺'),(124,121.56140930,25.03996980,'熱舞社社辦'),(125,121.52264640,25.03635880,'OuO'),(126,121.51770170,25.04469130,'utaipei'),(127,121.51487500,25.04641600,'三井3C電腦連鎖超市-台北NOVA店'),(128,120.95439540,23.96968190,'埔里'),(129,120.60393260,23.75938580,'國道三號'),(130,120.54458300,23.60712100,'古坑服務区小客車停車場一'),(131,120.43665650,23.36014780,'白河'),(132,120.31091980,22.68004960,'高雄'),(133,120.30194000,22.66916700,'Kaohsiung Arena'),(134,121.52739060,25.03843120,'北一女'),(135,120.30420800,22.64849200,'松江市場'),(136,106.53483790,38.79459520,'East Asia'),(137,121.52810600,25.03827050,'西門電影街'),(138,121.51764180,25.04496820,'中正堂外'),(139,121.51742230,25.04482180,'麥當勞'),(140,121.51469450,25.03617430,'G315'),(141,121.51470590,25.03617690,'ㄘ'),(142,121.51472280,25.03620140,'測試'),(143,121.51459690,25.03624010,'市立大學殺小'),(144,121.51428260,25.03709950,'中正機場'),(145,121.53369970,24.99587140,'景新'),(146,121.53376300,24.99529140,'景新'),(147,121.53398300,25.04850200,'台北犁記餅店- 門市部'),(148,121.51890000,25.00746400,'功學社音樂中心 永和音樂教室 '),(149,121.51342420,25.03691190,'熱舞社社辦外'),(150,121.51562530,25.03464250,'學校出發'),(151,121.52500200,25.08424400,'MRT Jiantan Station'),(152,121.54180440,25.13797260,'文化體育館'),(153,121.54907100,25.12688250,'下山260'),(154,121.52504570,25.09226430,'士林夜市'),(155,121.51459730,25.03586330,'熊貓動物園'),(156,121.51460820,25.03587880,'青城山'),(157,121.51460090,25.03586560,'四川小吃'),(158,121.51480440,25.03696430,'武漢'),(159,121.51481170,25.03698660,'土耳其'),(160,121.51480550,25.03698220,'長城'),(161,121.51480210,25.03694000,'廬山'),(162,121.51480950,25.03692460,'武漢 西班牙街'),(163,121.53205800,25.04429200,'希望廣場停車場'),(164,121.51444540,25.03571660,'g503'),(165,121.51458370,25.03585510,'g503'),(166,121.56426300,25.04024870,'淺草寺'),(167,121.51417670,25.03622180,'公誠三'),(168,121.51882560,25.00674560,'我家'),(169,121.54210700,25.05833500,'國立台北大學育樂館'),(170,120.19131550,23.70571100,'永泰輪胎'),(171,121.51469640,25.03611270,'捷運'),(172,121.51451190,25.03593370,'g508'),(173,121.51637000,25.05492000,'Ho Tai Hotel'),(174,121.51753900,25.03590750,'home'),(175,121.51427840,25.03597250,'home'),(176,121.46249130,25.01214120,'新北耶誕城ˊˇˋ'),(177,121.51358710,25.03705430,'誠品生活館'),(178,121.56083680,25.04399600,'Songshan Culture and Creative Park'),(179,121.58572450,25.03786180,'摩斯'),(180,121.51462280,25.03597770,'華山文創'),(181,121.49844400,25.03794400,'華西街台南擔仔麵'),(182,120.55177550,24.18581880,'高速公路上'),(183,120.77858470,23.66359110,'忘憂森林'),(184,120.76236700,23.67971600,'銀杏森林咖啡簡餐'),(185,120.78201030,23.70529060,'內湖國小'),(186,120.78044100,23.71261700,'內湖國小'),(187,120.77504190,23.72866120,'小半天風味餐'),(188,120.74911000,23.73172400,'小半天風味餐坊'),(189,120.75811200,23.72665600,'Shima Park'),(190,120.74565750,23.75433960,'35甕仔雞'),(191,120.60132200,24.28157900,'熊厚呷塩酥鶏'),(192,121.51032860,25.28426710,'北海岸'),(193,121.51033110,25.28426320,'北海岸'),(194,121.50708100,25.05411600,'Yanping Riverside Park'),(195,121.53427110,25.01235310,'阿剛泰式'),(196,121.51587230,25.03390500,'University of Taipei'),(197,121.51514070,25.03446680,'University of Taipei'),(198,121.48678090,25.05166440,'閑閑的海'),(199,120.28801780,22.72192920,'高雄小港機場'),(200,120.28796680,22.72195970,'高雄小港機場'),(201,120.28797430,22.72195740,'成田國際機場'),(202,121.25377210,24.93582640,'溫暖的辦公室'),(203,121.57473400,24.98790300,'50嵐政大店'),(204,120.70044970,24.08543230,'南投'),(205,121.46893310,24.99061890,'南亞夜市'),(206,121.22929590,24.95372330,'東興國中'),(207,121.22929590,24.95372330,'卡卡尼亞'),(208,121.56730140,25.03982020,'微風松高'),(209,121.56360320,25.04303590,'捷運'),(210,121.31374650,24.98057730,'att4fun'),(211,121.37232230,24.94514420,'台北大學'),(212,121.37232690,24.94514010,'台北大學'),(213,121.37323140,24.94250720,'北大'),(214,121.53361000,25.06294600,'Hsing Tian Kong'),(215,121.23447180,24.95780070,'Taoyuan City'),(216,113.91848080,22.30804700,'Hong Kong International Airport'),(217,114.22896400,22.71794700,'Longgang Central City'),(218,114.38254100,23.08412200,'Huicheng'),(219,121.25233430,24.93522750,'機器腳踏車修護乙級'),(220,121.22843310,24.95252220,'桃園創新'),(221,121.62225120,25.04176240,'新竹市北區長安街3號'),(222,121.77028710,24.82651770,'幾米公園'),(223,121.77029570,24.82651380,'悠悅風民宿'),(224,121.77229100,24.82714600,'樂山溫泉拉麵'),(225,121.77242120,24.82724180,'宜蘭餅'),(226,121.77026290,24.82650500,'悠悅風'),(227,121.76819640,24.67630160,'羅東夜市'),(228,121.62496100,24.66979300,'蔥仔寮體驗農場'),(229,121.28238390,25.07520570,'香港迪士尼樂園'),(230,120.30996700,22.68831500,'瓦城泰國料理'),(231,121.65482500,25.20916400,'知味郷玉米'),(232,120.53915210,22.90304050,'Korea-梨花女子大學'),(233,121.71121000,25.14044800,'九如営養三明治'),(234,120.33253850,22.67265050,'雅座'),(235,120.27378410,22.65156020,'壽山下'),(236,121.76838020,24.67749030,'羅東夜市'),(237,121.67461300,24.98080600,'九寮坡農莊'),(238,120.26393970,22.85865670,'我家'),(239,120.53618900,23.60832300,'古坑服務區'),(240,120.77849500,24.34926700,'天空之城'),(241,121.46715090,25.03210150,'大遠百鼎泰豐'),(242,121.17060800,24.83919000,'藍鷹高爾夫球場'),(243,121.17690000,24.84495100,'Nuowa Elementary School'),(244,121.17008200,24.83963000,'藍鷹高爾夫球場停車場'),(245,120.49531000,23.98631300,'菜堂'),(246,120.49728100,23.97900700,'打廉農薬行'),(247,120.50053610,23.98481450,'高雄港'),(248,120.50053920,23.98481980,'屏東枋寮'),(249,135.49906740,34.67395260,'Shinsaibashi'),(250,120.50010880,22.68453930,'柏發機車行'),(251,121.53705460,24.96177280,'新店的瑠公圳小路'),(252,121.54497670,25.02503210,'竹子湖'),(253,126.99920430,37.56269390,'忠武路公寓式酒店'),(254,126.97702540,37.56236850,'Sogong-dong'),(255,126.98372550,37.56145400,'明洞商圈'),(256,126.98657540,37.56423510,'明洞教堂'),(257,126.98326960,37.56147480,'漢城華僑國小'),(258,126.98822700,37.55116900,'N Seoul Tower'),(259,120.96359540,23.96763510,'埔里胡國雄古早麵'),(260,120.92704200,23.94138100,'紙教堂'),(261,120.86878100,23.85557500,'明湖水庫'),(262,120.69757660,23.47323000,'阿里山隙頂'),(263,120.79592230,23.67412330,'溪頭自然教育園區'),(264,120.79079950,23.67296980,'溪頭大學池'),(265,120.79381500,23.66339300,'溪頭自然教育園區空中廊道'),(266,120.79777700,23.66112700,'渓頭自然教育園区神木'),(267,121.51715700,25.00342400,'Yonghe Elementary School'),(268,121.51367800,25.00550000,'北海帝王蟹'),(269,120.68528470,24.14942000,'一中街'),(270,120.64656320,24.25240050,'台中高鐵'),(271,129.08736160,35.23216830,'一個酒吧꿀 통'),(272,120.33093210,22.72844520,'親愛的家'),(273,120.33118090,22.72837050,'家門口'),(274,120.33421350,22.72630960,'阿羅哈客運'),(275,129.06004000,35.15454400,'西面 LOTTERIA'),(276,121.51717990,25.04468030,'台北麥當勞'),(277,121.55143900,24.86375500,'烏來老街'),(278,129.00910050,35.09330360,'甘川洞'),(279,121.55122100,24.84761900,'烏来瀑布'),(280,129.03159650,35.09947520,'南浦洞'),(281,121.54995330,24.86189010,'烏來湯館'),(282,121.54999050,24.86188410,'烏來湯館'),(283,121.51616850,25.05033220,'台北火車站'),(284,121.82714800,25.08893700,'侯硐'),(285,121.77655100,25.04259000,'十分老街'),(286,121.73874200,25.02576700,'平溪老街(石底老街)'),(287,121.56547000,22.04758000,'東清灣'),(288,120.71275390,24.09581470,'大甲鎮瀾宮'),(289,120.19586990,22.99209390,'星象商旅'),(290,120.71224200,24.15003500,'肯德基KFC-太平中山餐廳'),(291,120.33951500,22.59450800,'麗登精品汽車旅館'),(292,121.26869970,25.09245350,'小迷路只田間小路'),(293,121.46000300,25.12719770,'關渡大橋'),(294,121.44577040,25.16841940,'淡水老街'),(295,120.34580950,22.59658300,'台南北門'),(296,121.65228000,24.66793800,'三星田媽媽蔥蒜美食館'),(297,121.42327460,25.02307110,'漁人碼頭'),(298,120.97516070,24.82434700,'空'),(299,120.60832800,24.17961300,'東海大學實習農牧場'),(300,120.91209940,23.86547270,'Sun Moon Lake National Scenic Area'),(301,120.67902100,24.14210800,'第二市場'),(302,121.22257130,23.09894020,'Dapo Pond'),(303,121.25606400,24.96295100,'Age-Pottery'),(304,121.01787000,24.98414200,'永安海濱樂園'),(305,121.52193400,25.03473100,'Chiang Kai‑shek Memorial Hall'),(306,120.72783550,24.14467200,'勤益科大'),(307,120.66002300,24.09639400,'1233'),(308,121.38953900,25.03522500,'Chang Gung University'),(309,121.56243000,25.04849500,'bossini 京華城'),(310,121.30971630,25.00458790,'虎頭山-環保公園'),(311,127.87958760,26.68528410,'Yamakawa'),(312,121.32525580,24.97020220,'中壢中正公園'),(313,121.02299530,24.77297820,'成田空港'),(314,120.96759860,24.79584890,'成田空港'),(315,120.96767550,24.79568990,'2015/5/15 成田空港'),(316,120.96769920,24.79575750,'搭NEX到新宿'),(317,120.96772700,24.79572500,'新宿御苑前-Shinjuku City Hotel N.U.T.S'),(318,120.96766820,24.79582420,'吉祥寺'),(319,120.96766020,24.79582870,'思い出橫丁'),(320,120.96768800,24.79577240,'Day.2'),(321,121.51707700,25.04898000,'Taipei Bus Station'),(322,120.34370170,23.24698050,'台南高鐵'),(323,141.67705800,42.81030400,'駅レンタカー北海道 新千歳空港'),(324,140.74011730,42.90899500,'知櫻'),(325,140.68542900,42.84571400,'Hilton Niseko Village Hotel');
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytripApp_collect`
--

DROP TABLE IF EXISTS `mytripApp_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytripApp_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid_id` int(11) NOT NULL,
  `ctrip_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mytripApp_collect_userid_id_2d294514889bc38f_uniq` (`userid_id`,`ctrip_id`),
  KEY `mytripApp_collect_936913d1` (`userid_id`),
  KEY `mytripApp_collect_5e6b0383` (`ctrip_id`),
  CONSTRAINT `ctrip_id_refs_trip_id_5760697dc2f42fc1` FOREIGN KEY (`ctrip_id`) REFERENCES `mytripApp_trip` (`trip_id`),
  CONSTRAINT `userid_id_refs_idnum_72f7222d40882115` FOREIGN KEY (`userid_id`) REFERENCES `mytripApp_user` (`idnum`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytripApp_collect`
--

LOCK TABLES `mytripApp_collect` WRITE;
/*!40000 ALTER TABLE `mytripApp_collect` DISABLE KEYS */;
INSERT INTO `mytripApp_collect` VALUES (1,1,14),(13,1,29),(12,1,33),(2,1,44),(14,1,67),(4,2,1),(11,2,12),(5,2,30),(10,2,33),(3,2,43),(9,2,44),(6,2,45),(17,25,30),(8,25,44),(7,25,46),(16,32,115),(15,82,12);
/*!40000 ALTER TABLE `mytripApp_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytripApp_count`
--

DROP TABLE IF EXISTS `mytripApp_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytripApp_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytripApp_count`
--

LOCK TABLES `mytripApp_count` WRITE;
/*!40000 ALTER TABLE `mytripApp_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `mytripApp_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytripApp_trip`
--

DROP TABLE IF EXISTS `mytripApp_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytripApp_trip` (
  `uid_id_id` int(11) NOT NULL DEFAULT '1',
  `trip_id` int(11) NOT NULL,
  `trip_name` varchar(100) NOT NULL,
  `trip_date` date NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`trip_id`),
  KEY `mytripApp_trip_9c66bcf9` (`uid_id_id`),
  CONSTRAINT `uid_id_id_refs_idnum_7a81d8832ead7d5f` FOREIGN KEY (`uid_id_id`) REFERENCES `mytripApp_user` (`idnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytripApp_trip`
--

LOCK TABLES `mytripApp_trip` WRITE;
/*!40000 ALTER TABLE `mytripApp_trip` DISABLE KEYS */;
INSERT INTO `mytripApp_trip` VALUES (2,1,'市北逛逛','2014-07-09',0,1),(2,2,'市北三日遊','2014-07-09',0,0),(2,3,'android.widget.EditText@4112e408','2014-07-22',0,0),(2,4,'android.widget.EditText@41130180','2014-07-22',0,0),(2,5,'樂華逛逛','2014-07-22',0,0),(2,6,'7/24政大meeting','2014-07-24',0,0),(2,7,'7/24政大meeting','2014-07-24',0,0),(2,8,'7-24政大Meeting','2014-07-24',0,0),(2,9,'政大Meeting','2014-07-24',0,0),(2,10,'7-26巴斯家烤肉','2014-07-26',0,0),(1,11,'嗨','2014-07-27',0,0),(1,12,'jiang ','2014-07-29',0,2),(1,13,'jiang','2014-07-29',0,0),(2,14,'碩士專題','2014-07-31',0,1),(2,15,'車','2014-08-14',0,0),(2,16,'浴火重生','2014-10-16',0,0),(2,17,'新的哦哦哦哦哦','2014-10-28',0,0),(1,18,'wendai借我測試','2014-10-28',0,0),(1,19,'我在宿舍','2014-10-28',0,0),(2,20,'Rick演講','2014-10-28',0,0),(2,21,'test','2014-10-31',0,0),(10,22,'Trip還有名字喔?','2014-10-31',0,0),(1,23,'公館','2014-10-31',0,0),(2,24,'繼續測試','2014-11-08',0,0),(11,25,'我家','2014-11-09',0,0),(12,26,'sna','2014-11-11',0,0),(1,27,'at Starbucks ','2014-11-11',0,0),(10,28,'借我測試','2014-11-17',0,0),(1,29,'我的蛋塔-澳門','2014-11-17',0,1),(1,30,'最後的畢業旅行','2014-11-17',0,2),(1,31,'高雄','2014-11-20',0,0),(2,32,'新的','2014-12-01',0,0),(2,33,'回家','2014-12-06',0,2),(18,34,'新der','2014-12-07',0,0),(32,35,'台北','2014-12-14',0,0),(33,36,'韓國自由行','2014-12-15',0,0),(33,37,'沖繩','2014-12-15',0,0),(2,38,'專題發表','2014-12-16',0,0),(34,39,'cisco','2014-12-17',0,0),(35,40,'和平高中','2014-12-17',0,0),(34,41,'旅遊大亨','2014-12-17',0,0),(34,42,'戴雯你好你好','2014-12-18',0,0),(2,43,'體育課','2014-12-19',0,1),(1,44,'四川-火車旅行','2014-12-19',0,3),(2,45,'發表','2014-12-20',0,1),(25,46,'啦啦啦啦','2014-12-20',0,1),(1,47,'專題','2014-12-20',0,0),(2,48,'gg','2014-12-20',0,0),(37,49,'yy','2014-12-20',0,0),(38,50,'第一次日本行','2014-12-20',0,0),(10,51,'北區舞展O u O','2014-12-21',0,0),(40,52,'Off','2014-12-22',0,0),(41,53,'風櫃斗','2014-12-22',0,0),(32,54,'20141223藍鷹高爾夫球','2014-12-22',0,0),(10,55,'是冬至耶','2014-12-23',0,0),(42,56,'2014-12 沖繩','2014-12-23',0,0),(43,57,'setgc duh','2014-12-24',0,0),(10,58,'Christmasˊˇˋ','2014-12-25',0,0),(17,59,'測試','2014-12-28',0,0),(48,60,'高雄','2014-12-29',0,0),(49,61,'1111','2014-12-30',0,0),(10,62,'2014的最後一天ˊˇˋ','2014-12-31',0,0),(52,63,'台南一日遊','2015-01-01',0,0),(35,64,'Ilan','2015-01-01',0,0),(53,65,'tt','2015-01-01',0,0),(54,66,'台北','2015-01-01',0,0),(1,67,'one day in 南投','2015-01-02',0,1),(57,68,'台中自然之旅','2015-01-02',0,0),(58,69,'咩了','2015-01-02',0,0),(58,70,'陽明山、小油坑','2015-01-02',0,0),(60,71,'最早在','2015-01-03',0,0),(32,72,'回台北','2015-01-03',0,0),(62,73,'103.01.03','2015-01-03',0,0),(63,74,'臺北遊','2015-01-04',0,0),(10,75,'2015元旦連假','2015-01-04',0,0),(65,76,'南投','2015-01-04',0,0),(64,77,'踏草尋梅','2015-01-05',0,0),(66,78,'relax','2015-01-06',0,0),(69,79,'基隆','2015-01-07',0,0),(71,80,'內灣','2015-01-08',0,0),(72,81,'瑋志打排球','2015-01-09',0,0),(72,82,'耍廢','2015-01-09',0,0),(50,83,'日本四國行','2015-01-09',0,0),(73,84,'測試','2015-01-09',0,0),(77,85,'宜蘭閑閑之旅','2015-01-10',0,0),(78,86,'ok','2015-01-10',0,0),(79,87,'臺北 北京','2015-01-12',0,0),(80,88,'花蓮','2015-01-12',0,0),(81,89,'2015♣東京春季巡遊記','2015-01-12',0,0),(86,90,'高雄 台南兩日遊','2015-01-14',0,0),(33,91,'日本自由行','2015-01-15',0,0),(87,92,'學校生活','2015-01-15',0,0),(88,93,'女孩的京阪初體驗','2015-01-15',0,0),(89,94,'Taipei','2015-01-15',0,0),(90,95,'關西6日人遊','2015-01-16',0,0),(91,96,'華麗二人組之冬季京都','2015-01-16',0,0),(87,97,'散散心','2015-01-17',0,0),(92,98,'天空步道','2015-01-17',0,0),(92,99,'而','2015-01-17',0,0),(93,100,'夜市','2015-01-18',0,0),(94,101,'鹿港','2015-01-18',0,0),(87,102,'享受美食','2015-01-18',0,0),(95,103,'2015日本北九州','2015-01-19',0,0),(96,104,'泰','2015-01-19',0,0),(97,105,'131泡湯草莓賞櫻','2015-01-19',0,0),(10,106,'放寒假了ya','2015-01-19',0,0),(98,107,'天龍','2015-01-19',0,0),(2,108,'展','2015-01-22',0,0),(99,109,'沖繩','2015-01-22',0,0),(10,110,'別讓魔術不開心','2015-01-24',0,0),(34,111,'everyday since spring break','2015-01-25',0,0),(101,112,'2015- Tokyo','2015-01-26',0,0),(62,113,'0212','2015-01-27',0,0),(62,114,'0124','2015-01-27',0,0),(32,115,'香港','2015-01-27',0,1),(102,116,'20150320東京','2015-02-01',0,0),(105,117,'新竹西大發','2015-02-07',0,0),(1,118,'六人行-宜蘭','2015-02-11',0,0),(108,119,'香港澳門','2015-02-15',0,0),(108,120,'韓國','2015-02-15',0,0),(108,121,'泰國普吉島','2015-02-15',0,0),(108,122,'2012香港澳門','2015-02-15',0,0),(108,123,'澎湖','2015-02-15',0,0),(108,124,'小琉球','2015-02-15',0,0),(108,125,'大陸福州','2015-02-15',0,0),(108,126,'高雄義大','2015-02-15',0,0),(108,127,'臺中新社','2015-02-15',0,0),(108,128,'阿里山','2015-02-15',0,0),(108,129,'宜蘭太平山','2015-02-15',0,0),(108,130,'日月潭','2015-02-15',0,0),(114,131,'20140124峨媚之旅','2015-02-15',0,0),(116,132,'高雄行','2015-02-16',0,0),(117,133,'戈人','2015-02-17',0,0),(118,134,'I love  korea','2015-02-18',0,0),(119,135,'2015走走春','2015-02-19',0,0),(2,136,'壽山','2015-02-19',0,0),(120,137,'2015過年','2015-02-19',0,0),(121,138,'宏明的廚房','2015-02-20',0,0),(122,139,'旅行','2015-02-20',0,0),(125,140,'Kyoto','2015-02-22',0,0),(126,141,'嘖嘖 ㄗ','2015-02-23',0,0),(128,142,'小歐島內出走','2015-02-26',0,0),(127,143,'松山菸廠','2015-02-27',0,0),(129,144,'228之旅','2015-02-27',0,0),(130,145,'Focus','2015-02-27',0,0),(131,146,'日本-大阪/京都行','2015-02-28',0,0),(132,147,'Friends ','2015-02-28',0,0),(133,148,'台中公園','2015-02-28',0,0),(134,149,'zuo&zu','2015-03-03',0,0),(137,150,'高雄行','2015-03-06',0,0),(138,151,'1040307花蓮','2015-03-07',0,0),(139,152,'京站響食','2015-03-08',0,0),(139,153,'鼎泰豐','2015-03-08',0,0),(140,154,'大潤發','2015-03-08',0,0),(142,155,'東京賞櫻草津溫泉自由行','2015-03-09',0,0),(135,156,'香港','2015-03-11',0,0),(143,157,'一點','2015-03-13',0,0),(67,158,'123','2015-03-13',0,0),(2,159,'哦’','2015-03-14',0,0),(144,160,'九州-豪斯登堡','2015-03-16',0,0),(145,161,'２０１４環島','2015-03-16',0,0),(146,162,'台中行','2015-03-17',0,0),(147,163,'2015.05.13-2015.05.17大阪自由行','2015-03-18',0,0),(148,164,'東京初次自由行','2015-03-18',0,0),(149,165,'東京櫻之旅','2015-03-19',0,0),(150,166,'新加坡','2015-03-19',0,0),(32,167,'20150320藍鷹高爾夫球','2015-03-20',0,0),(151,168,'梅山之與茶有約','2015-03-20',0,0),(152,169,'環島旅行','2015-03-20',0,0),(153,170,'蜜月日本行','2015-03-21',0,0),(154,171,'台中','2015-03-21',0,0),(155,172,'台南文化藝文之旅-2日','2015-03-22',0,0),(156,173,'201503阪奈京初體驗','2015-03-22',0,0),(32,174,'20150323東部之旅','2015-03-23',0,0),(67,175,'出發往Banker’s Coffee','2015-03-23',0,0),(158,176,'南投自由行','2015-03-23',0,0),(158,177,'2015.03.24','2015-03-24',0,0),(159,178,'海芋季','2015-03-24',0,0),(1,179,'首爾釜山小畢旅','2015-03-28',0,0),(161,180,'京阪7天6夜','2015-03-28',0,0),(162,181,'永靖','2015-03-28',0,0),(32,182,'20150330溪頭','2015-03-30',0,0),(10,183,'阿里山ˊˇˋ','2015-03-31',0,0),(163,184,'宜蘭之旅','2015-03-31',0,0),(164,185,'台北2天1日遊','2015-04-01',0,0),(1,186,'蘭嶼蘭門','2015-04-03',0,0),(166,187,'小粉紅之旅','2015-04-04',0,0),(167,188,'客家大院','2015-04-04',0,0),(168,189,'媽祖進香','2015-04-08',0,0),(168,190,'大甲鎮瀾宮媽祖往新港遶境進香','2015-04-08',0,0),(169,191,'郊遊','2015-04-08',0,0),(170,192,'高雄夜問','2015-04-10',0,0),(171,193,'北京','2015-04-10',0,0),(172,194,'小旅行','2015-04-11',0,0),(173,195,'0410-3天2夜','2015-04-11',0,0),(174,196,'掃墓','2015-04-12',0,0),(175,197,'test','2015-04-14',0,0),(176,198,'陽明山水泡湯','2015-04-14',0,0),(177,199,'大屯山','2015-04-15',0,0),(178,200,'test','2015-04-15',0,0),(179,201,'彰化VS鹿港&臺灣玻璃館','2015-04-15',0,0),(180,202,'北門一日遊','2015-04-16',0,0),(182,203,'503','2015-04-16',0,0),(183,204,'日本','2015-04-16',0,0),(184,205,'h','2015-04-17',0,0),(185,206,'2015印度行','2015-04-17',0,0),(186,207,'東遊記','2015-04-17',0,0),(187,208,'w1','2015-04-17',0,0),(188,209,'小魚窩','2015-04-18',0,0),(190,210,'台北','2015-04-18',0,0),(191,211,'岡山輕旅遊','2015-04-18',0,0),(194,212,'目標九份','2015-04-18',0,0),(176,213,'宜蘭松羅步道','2015-04-19',0,0),(195,214,'前打釣手','2015-04-23',0,0),(196,215,'韓','2015-04-23',0,0),(197,216,'愉珠區2015春季曼谷行','2015-04-23',0,0),(201,217,'家','2015-04-25',0,0),(202,218,'京阪神4日遊','2015-04-26',0,0),(203,219,'5/1 部門苗栗油桐花&螢火蟲之旅','2015-04-27',0,0),(204,220,'日月潭','2015-05-01',0,0),(205,221,'菲律賓長攤島','2015-05-03',0,0),(205,222,'香港','2015-05-03',0,0),(206,223,'能登假期','2015-05-04',0,0),(207,224,'2015.4.23-27 日本黑部立山5日自助','2015-05-05',0,0),(208,225,'野柳','2015-05-06',0,0),(210,226,'宜蘭行','2015-05-06',0,0),(211,227,'關山親水公園','2015-05-06',0,0),(208,228,'內壢','2015-05-09',0,0),(212,229,'2015沖繩之旅','2015-05-12',0,0),(213,230,'q','2015-05-14',0,0),(214,231,'503','2015-05-14',0,0),(215,232,'一個人冒險的苗栗大山火車之旅','2015-05-15',0,0),(216,233,'台中1日','2015-05-15',0,0),(217,234,'高雄之旅','2015-05-15',0,0),(218,235,'2015-05-16~05-27沖繩遊','2015-05-17',0,0),(2,236,'打','2015-05-17',0,0),(2,237,'打槍槍 不要~','2015-05-17',0,0),(220,238,'105/05/23-27','2015-05-19',0,0),(221,239,'東京','2015-05-21',0,0),(222,240,'環島','2015-05-21',0,0),(221,241,'2015/05/15~5/19 經典東京五日','2015-05-22',0,0),(223,242,'南投','2015-05-23',0,0),(208,243,'台北','2015-05-24',0,0),(225,244,'舊金山','2015-05-28',0,0),(226,245,'20150528台北','2015-05-28',0,0),(227,246,'start','2015-05-31',0,0),(228,247,'澳門','2015-06-01',0,0),(229,248,'瑞，德，比','2015-06-03',0,0),(2,249,'日本','2015-06-06',0,0);
/*!40000 ALTER TABLE `mytripApp_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytripApp_trip_location`
--

DROP TABLE IF EXISTS `mytripApp_trip_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytripApp_trip_location` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `tid_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `lid_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `dtime` datetime NOT NULL,
  `transport` int(11) NOT NULL DEFAULT '0',
  `place` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `mytripApp_trip_location_a91c3c5c` (`tid_id`),
  KEY `mytripApp_trip_location_2903a524` (`lid_id`),
  CONSTRAINT `lid_id_refs_local_id_4c2428ddac0dd368` FOREIGN KEY (`lid_id`) REFERENCES `local` (`local_id`),
  CONSTRAINT `tid_id_refs_trip_id_5303bd283891ca7c` FOREIGN KEY (`tid_id`) REFERENCES `mytripApp_trip` (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytripApp_trip_location`
--

LOCK TABLES `mytripApp_trip_location` WRITE;
/*!40000 ALTER TABLE `mytripApp_trip_location` DISABLE KEYS */;
INSERT INTO `mytripApp_trip_location` VALUES (1,1,'1_1_10.jpg',10,'SomeThing','2014-07-15 00:00:00',0,0),(2,2,'2_2_22.jpg',22,'SomeThing','2014-07-16 00:00:00',0,0),(3,1,'3_1_14.jpg',14,'SomeThing','2014-07-16 00:00:00',0,0),(4,1,'4_1_23.jpg',23,'SomeThing','2014-07-18 00:00:00',0,0),(5,2,'5_2_24.jpg',24,'SomeThing','2014-07-21 00:00:00',0,0),(6,5,'/No',25,'SomeThing','2014-07-22 00:00:00',0,0),(7,5,'7_5_19.jpg',19,'SomeThing','2014-07-23 00:00:00',0,0),(8,5,'/No',26,'SomeThing','2014-07-24 00:00:00',0,0),(9,5,'9_5_26.jpg',26,'SomeThing','2014-07-24 00:00:00',0,0),(10,8,'10_8_27.jpg',27,'SomeThing','2014-07-24 00:00:00',0,0),(11,9,'11_9_27.jpg',27,'SomeThing','2014-07-24 00:00:00',0,0),(12,9,'12_9_27.jpg',27,'SomeThing','2014-07-24 00:00:00',0,0),(13,9,'13_9_27.jpg',27,'SomeThing','2014-07-24 00:00:00',0,0),(14,9,'14_9_27.jpg',27,'SomeThing','2014-07-24 00:00:00',0,0),(15,9,'15_9_28.jpg',28,'SomeThing','2014-07-24 00:00:00',0,0),(16,10,'16_10_29.jpg',29,'SomeThing','2014-07-26 00:00:00',0,0),(17,10,'17_10_30.jpg',30,'SomeThing','2014-07-26 00:00:00',0,0),(18,1,'18_1_31.jpg',31,'SomeThing','2014-07-26 00:00:00',0,0),(19,10,'19_10_32.jpg',32,'SomeThing','2014-07-26 00:00:00',0,0),(20,10,'20_10_33.jpg',33,'SomeThing','2014-07-28 00:00:00',0,0),(21,10,'21_10_34.jpg',34,'SomeThing','2014-07-29 00:00:00',0,0),(22,10,'22_10_34.jpg',34,'SomeThing','2014-07-29 00:00:00',0,0),(23,10,'23_10_35.jpg',35,'SomeThing','2014-07-29 00:00:00',0,0),(24,12,'24_12_36.jpg',36,'SomeThing','2014-07-29 00:00:00',0,0),(25,12,'25_12_37.jpg',37,'SomeThing','2014-07-30 00:00:00',0,0),(26,12,'26_12_37.jpg',37,'SomeThing','2014-07-30 00:00:00',0,0),(27,1,'27_1_38.jpg',38,'SomeThing','2014-07-31 00:00:00',0,0),(28,14,'28_14_39.jpg',39,'SomeThing','2014-07-31 00:00:00',0,0),(29,2,'29_2_40.jpg',40,'SomeThing','2014-08-08 00:00:00',0,0),(30,2,'30_2_41.jpg',41,'SomeThing','2014-08-12 00:00:00',0,0),(31,15,'31_15_42.jpg',42,'SomeThing','2014-08-14 00:00:00',0,0),(32,15,'32_15_42.jpg',42,'SomeThing','2014-08-14 00:00:00',0,0),(33,15,'33_15_42.jpg',42,'SomeThing','2014-08-14 00:00:00',0,0),(34,16,'34_16_43.jpg',43,'121.4913182','2014-10-16 00:00:00',0,0),(35,16,'35_16_43.jpg',43,'121.4913182','2014-10-16 00:00:00',0,0),(36,16,'36_16_43.jpg',43,'121.4913182','2014-10-16 00:00:00',0,0),(37,16,'37_16_43.jpg',43,'121.4913182','2014-10-16 00:00:00',0,0),(38,16,'38_16_43.jpg',43,'121.4913182','2014-10-16 03:58:54',0,0),(39,16,'39_16_43.jpg',43,'121.4913182','2014-10-16 09:52:49',0,0),(40,2,'/No',7,'安安你好','2014-10-25 04:33:10',0,0),(41,2,'/No',7,'安安','2014-10-25 04:39:18',0,0),(42,2,'/No',7,'Debug','2014-10-25 04:40:51',0,0),(43,2,'/No',7,'Debug','2014-10-25 04:41:57',0,0),(44,2,'/No',7,'安安 ㄢ','2014-10-25 04:42:28',0,0),(45,2,'/No',7,'安安','2014-10-25 04:43:07',0,0),(46,2,'/No',7,'安安','2014-10-25 04:47:52',0,0),(47,2,'47_2_7.jpg',7,'安安','2014-10-25 04:48:45',0,0),(48,3,'48_3_7.jpg',7,'安安','2014-10-25 04:50:15',0,0),(49,3,'49_3_7.jpg',7,'安安想睡','2014-10-25 04:51:00',0,0),(50,3,'50_3_7.jpg',7,'安安想睡','2014-10-25 04:51:20',0,0),(51,1,'51_1_7.jpg',7,'安安想睡','2014-10-25 04:51:48',0,0),(52,16,'52_16_43.jpg',43,'QQ','2014-10-27 02:47:05',0,0),(53,16,'53_16_43.jpg',43,'ㄆㄆ','2014-10-27 02:52:48',0,0),(54,16,'54_16_43.jpg',43,'安安','2014-10-27 02:57:20',0,0),(55,16,'55_16_43.jpg',43,'按安安','2014-10-27 02:58:00',0,0),(56,16,'/No',43,' 按安安按安安','2014-10-27 03:01:57',0,0),(57,16,'57_16_43.jpg',43,'皚皚皚皚皚皚皚皚皚皚','2014-10-27 03:02:43',0,0),(58,16,'/No',43,' ','2014-10-27 03:38:44',0,0),(59,16,'59_16_43.jpg',43,'AA','2014-10-27 03:54:11',0,0),(60,16,'60_16_43.jpg',43,'按愛皚皚皚皚皚皚皚皚','2014-10-27 01:52:37',0,0),(61,17,'/No',43,'測試新的哦哦哦哦哦','2014-10-28 01:02:12',0,0),(62,17,'62_17_43.jpg',43,'測試新的哦哦哦哦哦','2014-10-28 01:03:37',0,0),(63,18,'63_18_43.jpg',43,'嗨','2014-10-28 01:06:12',0,0),(64,19,'64_19_43.jpg',43,'ya','2014-10-28 04:17:19',0,0),(65,19,'/No',44,' try it ','2014-10-28 04:25:31',0,0),(66,16,'66_16_43.jpg',43,'唉','2014-10-28 04:48:02',0,0),(67,19,'67_19_43.jpg',43,'其實在上國語教學','2014-10-28 11:43:55',0,0),(68,18,'68_18_43.jpg',43,'漸漸','2014-10-28 12:57:35',0,0),(69,20,'69_20_43.jpg',43,'酪梨壽司','2014-10-28 04:05:56',0,0),(70,20,'70_20_43.jpg',43,'酪梨壽司','2014-10-28 04:06:25',0,0),(71,17,'71_17_7.jpg',7,'測試喔','2014-10-28 04:18:34',0,0),(72,19,'72_19_43.jpg',43,'Hi ','2014-10-28 04:49:38',0,0),(73,19,'73_19_43.jpg',43,'dorm test','2014-10-28 07:28:38',0,0),(74,17,'74_17_43.jpg',43,'安安','2014-10-28 08:24:50',0,0),(75,17,'75_17_43.jpg',43,'買安琪！！！','2014-10-28 08:31:01',0,0),(76,17,'76_17_44.jpg',44,'買安琪！！！','2014-10-28 08:31:37',0,0),(77,17,'77_17_43.jpg',43,'hi','2014-10-29 03:43:11',0,0),(78,17,'78_17_7.jpg',7,'sleep','2014-10-29 04:30:04',0,0),(79,16,'79_16_45.jpg',45,'唉','2014-10-29 04:33:38',0,0),(80,1,'80_1_46.jpg',46,'夢幻風格','2014-10-31 12:30:17',0,0),(81,22,'81_22_47.jpg',47,'halloween!!','2014-10-31 01:23:01',0,0),(82,22,'82_22_47.jpg',47,'好雷哦ˊˇˋ','2014-10-31 01:30:46',0,0),(83,17,'83_17_48.jpg',48,'吃宵夜','2014-10-31 03:31:42',0,0),(84,22,'84_22_49.jpg',49,'有人在拍畢業照耶ˊˇˋ','2014-10-31 10:36:20',0,0),(85,22,'85_22_49.jpg',49,'耶通識課！！','2014-10-31 11:02:34',0,0),(86,23,'86_23_50.jpg',50,'找不到TJB ','2014-10-31 11:06:56',0,0),(87,23,'87_23_51.jpg',51,'找不到TJB ','2014-10-31 11:07:52',0,0),(88,23,'88_23_49.jpg',49,'數教法','2014-10-31 02:23:44',0,0),(89,22,'/89_22_52.jpg',52,'不用練舞QQ','2014-11-02 08:37:38',0,0),(90,22,'/90_22_53.jpg',53,'不用練舞QQ','2014-11-02 08:40:07',0,0),(91,17,'/91_17_49.jpg',49,'00','2014-11-03 01:19:10',0,0),(92,17,'92_17_43.jpg',43,'000','2014-11-03 01:22:34',0,0),(93,17,'93_17_43.jpg',43,'0000','2014-11-03 01:23:54',0,0),(94,17,'/94_17_43.jpg',43,'00','2014-11-03 01:27:56',0,0),(95,17,'95_17_43.jpg',43,'00','2014-11-03 01:29:20',0,0),(96,22,'96_22_54.jpg',54,'不用練舞嗚嗚','2014-11-03 01:45:21',0,0),(97,22,'/97_22_43.jpg',43,'有貓貓OuO','2014-11-03 02:10:50',0,0),(98,22,'98_22_43.jpg',43,'有貓貓OuO','2014-11-03 02:10:50',0,0),(99,22,'99_22_54.jpg',54,'sleepˊˇˋ','2014-11-03 02:31:04',0,0),(100,22,'/100_22_55.jpg',55,'天冷冷的動網OuO','2014-11-03 07:35:05',0,0),(101,22,'/101_22_56.jpg',56,'haha','2014-11-04 09:41:08',0,0),(102,22,'/102_22_43.jpg',43,'覺得老了嗚嗚','2014-11-04 09:45:24',0,0),(103,22,'/103_22_57.jpg',57,'等車車','2014-11-05 08:46:08',0,0),(104,22,'/104_22_43.jpg',43,'系排finishˊˇˋ','2014-11-05 08:55:13',0,0),(105,17,'105_17_58.jpg',58,'按安安','2014-11-07 10:32:58',0,0),(106,17,'106_17_59.jpg',59,'安安','2014-11-07 10:42:24',0,0),(107,17,'107_17_60.jpg',60,'嗨','2014-11-07 10:46:38',0,0),(108,22,'108_22_61.jpg',61,'Ya','2014-11-07 07:34:28',0,0),(109,11,'/No',62,' 何怡做的喔～～','2014-11-08 12:13:41',0,0),(110,11,'110_11_45.jpg',45,'XD明天要面試了','2014-11-08 12:14:33',0,0),(111,19,'111_19_63.jpg',63,'dorm','2014-11-08 12:15:50',0,0),(112,19,'112_19_63.jpg',63,'測試','2014-11-08 12:19:11',0,0),(113,17,'113_17_64.jpg',64,'測一下啊','2014-11-08 12:47:21',0,0),(114,24,'114_24_65.jpg',65,'繼續測吧','2014-11-08 12:51:39',0,0),(115,24,'115_24_66.jpg',66,'繼續，','2014-11-08 12:51:57',0,0),(116,17,'116_17_43.jpg',43,'而','2014-11-08 01:05:37',0,0),(117,17,'117_17_43.jpg',43,'安安','2014-11-08 01:08:50',0,0),(118,17,'118_17_43.jpg',43,'哦','2014-11-08 01:09:09',0,0),(119,17,'119_17_43.jpg',43,'嗯','2014-11-08 01:09:23',0,0),(120,17,'120_17_43.jpg',43,' 安安','2014-11-08 02:45:24',0,0),(121,17,'121_17_43.jpg',43,' ','2014-11-08 02:49:02',0,0),(122,17,'122_17_43.jpg',43,' ','2014-11-08 02:52:27',0,0),(123,17,'123_17_43.jpg',43,' ','2014-11-08 03:18:00',0,0),(124,17,'124_17_43.jpg',43,' ','2014-11-08 03:36:32',0,0),(125,24,'125_24_43.jpg',43,' 我不要啊','2014-11-08 03:43:32',0,0),(126,17,'126_17_43.jpg',43,' ','2014-11-08 11:38:02',0,0),(127,22,'127_22_43.jpg',43,' volley ball','2014-11-08 09:00:21',0,0),(128,22,'128_22_54.jpg',54,' 831ˊˇˋ','2014-11-08 09:02:03',0,0),(129,19,'129_19_49.jpg',49,' New layout','2014-11-08 11:10:14',0,0),(130,18,'130_18_45.jpg',45,' test2','2014-11-08 11:11:15',0,0),(131,17,'131_17_64.jpg',64,' pppppp','2014-11-08 11:35:28',0,0),(132,17,'132_17_67.jpg',67,' ccccc','2014-11-08 23:39:46',0,0),(133,19,'133_19_68.jpg',68,' tt','2014-11-08 23:47:44',0,0),(134,19,'134_19_62.jpg',62,' #dorm','2014-11-09 03:29:44',0,0),(135,12,'135_12_63.jpg',63,' #fall','2014-11-09 03:31:04',0,0),(136,25,'136_25_69.jpg',69,' 是哦','2014-11-09 16:54:36',0,0),(137,22,'/No',54,' ˊˇˋ','2014-11-09 17:33:05',0,0),(138,22,'138_22_70.jpg',70,' 唸書書嗚嗚ˊˇˋ','2014-11-09 19:07:49',0,0),(139,18,'/139_18_49.jpg',49,' 資訊教育','2014-11-10 14:34:29',0,0),(140,18,'/140_18_49.jpg',49,' 你如何成為一個人 你的人生  現在教育是否只是培養知識技術 你讀的知識真的是對的嗎？？有去確認嗎？','2014-11-10 14:40:28',0,0),(141,17,'/No',43,' ','2014-11-10 15:20:10',0,0),(142,17,'/No',63,' 安','2014-11-10 15:20:26',0,0),(143,17,'143_17_41.jpg',41,' ','2014-11-10 15:20:38',0,0),(144,22,'/144_22_43.jpg',43,' 資結OuO','2014-11-10 21:28:58',0,0),(145,17,'145_17_43.jpg',43,' ','2014-11-11 02:30:16',0,0),(146,13,'/146_13_49.jpg',49,' f','2014-11-11 10:54:14',0,0),(147,13,'/147_13_49.jpg',49,' #昭尉','2014-11-11 17:02:13',0,0),(148,26,'/No',49,' 上課ing','2014-11-11 17:05:50',0,0),(149,27,'149_27_71.jpg',71,' #sister ','2014-11-11 18:31:47',0,0),(150,22,'/150_22_49.jpg',49,' 線代!!','2014-11-11 20:27:49',0,0),(151,22,'/151_22_43.jpg',43,' 線代！！','2014-11-11 21:23:54',0,0),(152,18,'152_18_41.jpg',41,' 數學教材教法','2014-11-14 14:03:34',0,0),(153,17,'153_17_72.jpg',72,' 接機','2014-11-15 19:02:45',0,0),(154,17,'154_17_73.jpg',73,' 接老姐&男友','2014-11-15 20:08:06',0,0),(155,18,'/155_18_74.jpg',74,' 還好的','2014-11-15 20:19:33',0,0),(156,17,'156_17_67.jpg',67,' 累累der','2014-11-15 21:59:40',0,0),(157,17,'157_17_75.jpg',75,' 安安','2014-11-15 23:35:43',0,0),(158,17,'/No',63,' 嗚嗚','2014-11-15 23:35:57',0,0),(159,17,'/No',76,' 安安','2014-11-15 23:37:07',0,0),(160,17,'160_17_77.jpg',77,' 嗨','2014-11-16 11:27:15',0,0),(161,27,'/No',78,' ','2014-11-16 12:29:23',0,0),(162,27,'162_27_79.jpg',79,' 純打地點會 有bug','2014-11-16 12:30:48',0,0),(163,17,'/No',80,' ya','2014-11-16 12:56:46',0,0),(164,17,'164_17_81.jpg',81,' 抬槓','2014-11-16 20:18:21',0,0),(165,17,'/No',82,' 安安','2014-11-16 21:16:47',0,0),(166,17,'/No',49,' ','2014-11-16 21:17:02',0,0),(167,17,'/No',83,' ','2014-11-16 21:18:46',0,0),(168,17,'/168_17_49.jpg',49,' 測試thumb','2014-11-17 02:32:26',0,0),(169,17,'169_17_49.jpg',49,' 測試thumb2','2014-11-17 02:35:25',0,0),(170,17,'170_17_49.jpg',49,' 測試3','2014-11-17 02:37:42',0,0),(171,27,'171_27_84.jpg',84,' #lab 認真好美：）','2014-11-17 11:35:25',0,0),(172,22,'/172_22_85.jpg',85,' 覺得嗚嗚','2014-11-17 15:09:29',0,0),(173,22,'173_22_49.jpg',49,' 測','2014-11-17 15:24:09',0,0),(174,28,'/174_28_49.jpg',49,' 測','2014-11-17 15:24:36',0,0),(175,17,'/175_17_43.jpg',43,' 測','2014-11-17 15:32:35',0,0),(176,17,'/176_17_43.jpg',43,' 測','2014-11-17 15:37:56',0,0),(177,17,'/177_17_43.jpg',43,' 測','2014-11-17 15:41:15',0,0),(178,17,'/178_17_43.jpg',43,' 測','2014-11-17 15:42:55',0,0),(179,17,'179_17_43.jpg',43,' 測','2014-11-17 15:48:41',0,0),(180,17,'180_17_43.jpg',43,' 惻惻呃諤諤設諤諤施捨','2014-11-17 15:49:23',0,0),(181,28,'181_28_43.jpg',43,' 測','2014-11-17 15:52:16',0,0),(182,28,'/182_28_43.jpg',43,' ㄘ','2014-11-17 15:52:43',0,0),(183,28,'/183_28_43.jpg',43,' ㄘ','2014-11-17 15:53:23',0,0),(184,17,'/184_17_43.jpg',43,' 呃','2014-11-17 15:59:25',0,0),(185,17,'185_17_43.jpg',43,' 呃','2014-11-17 16:00:55',0,0),(186,17,'/186_17_43.jpg',43,' 呃','2014-11-17 16:05:26',0,0),(187,17,'187_17_43.jpg',43,' 測','2014-11-17 16:08:28',0,0),(188,28,'/188_28_43.jpg',43,' 次','2014-11-17 16:11:38',0,0),(189,17,'189_17_43.jpg',43,' 測','2014-11-17 16:19:58',0,0),(190,17,'190_17_43.jpg',43,' 安安','2014-11-17 16:24:28',0,0),(191,17,'191_17_43.jpg',43,' 安安','2014-11-17 16:29:28',0,0),(192,28,'/192_28_43.jpg',43,' 次','2014-11-17 16:31:41',0,0),(193,17,'193_17_43.jpg',43,' 安安','2014-11-17 16:35:13',0,0),(194,17,'194_17_43.jpg',43,' 皚皚','2014-11-17 16:37:27',0,0),(195,17,'195_17_43.jpg',43,' 嗚嗚','2014-11-17 16:38:19',0,0),(196,28,'/196_28_43.jpg',43,' 皚皚','2014-11-17 16:40:19',0,0),(197,28,'/197_28_43.jpg',43,' 暗暗','2014-11-17 16:41:08',0,0),(198,17,'198_17_43.jpg',43,' 安安','2014-11-17 16:48:47',0,0),(199,28,'/199_28_43.jpg',43,' 唉','2014-11-17 16:51:55',0,0),(200,17,'200_17_43.jpg',43,' 安安','2014-11-17 17:00:12',0,0),(201,28,'/201_28_43.jpg',43,' 哀哀','2014-11-17 17:02:30',0,0),(202,22,'/202_22_43.jpg',43,' 煩','2014-11-17 17:02:55',0,0),(203,28,'/203_28_43.jpg',43,' ㄓ','2014-11-17 17:03:30',0,0),(204,17,'/204_17_43.jpg',43,' 安安','2014-11-17 17:09:52',0,0),(205,17,'/205_17_43.jpg',43,' 而','2014-11-17 17:29:54',0,0),(206,17,'206_17_43.jpg',43,' 而','2014-11-17 17:31:02',0,0),(207,28,'207_28_43.jpg',43,' 暗暗暗暗','2014-11-17 17:34:59',0,0),(208,28,'/208_28_43.jpg',43,' 愛愛愛哀哀','2014-11-17 17:35:25',0,0),(209,17,'/209_17_43.jpg',43,' pp','2014-11-17 17:41:04',0,0),(210,17,'/210_17_43.jpg',43,' oo','2014-11-17 17:42:57',0,0),(211,17,'/211_17_43.jpg',43,' aa','2014-11-17 17:49:43',0,0),(212,17,'/212_17_43.jpg',43,' aa','2014-11-17 17:50:45',0,0),(213,17,'/213_17_43.jpg',43,' ','2014-11-17 17:52:27',0,0),(214,17,'/214_17_43.jpg',43,' ppp','2014-11-17 17:58:36',0,0),(215,17,'/215_17_43.jpg',43,' p','2014-11-17 18:03:48',0,0),(216,17,'/216_17_43.jpg',43,' p','2014-11-17 18:14:36',0,0),(217,17,'217_17_43.jpg',43,' p','2014-11-17 18:17:01',0,0),(218,17,'/218_17_43.jpg',43,' p','2014-11-17 18:17:19',0,0),(219,17,'219_17_43.jpg',43,' P','2014-11-17 18:18:19',0,0),(220,17,'220_17_43.jpg',43,' iiii','2014-11-17 18:19:43',0,0),(221,17,'221_17_43.jpg',43,' ggg','2014-11-17 18:19:57',0,0),(222,17,'222_17_43.jpg',43,' 測試','2014-11-17 18:22:11',0,0),(223,22,'/223_22_43.jpg',43,' ppp','2014-11-17 18:23:11',0,0),(224,17,'224_17_43.jpg',43,' 而而','2014-11-17 18:23:26',0,0),(225,22,'/225_22_43.jpg',43,' jjj','2014-11-17 18:23:40',0,0),(226,22,'226_22_43.jpg',43,' hhh','2014-11-17 18:25:18',0,0),(227,22,'227_22_43.jpg',43,' tyt','2014-11-17 18:25:47',0,0),(228,22,'/228_22_43.jpg',43,' Bhutto','2014-11-17 18:27:03',0,0),(229,22,'/229_22_43.jpg',43,' ggg','2014-11-17 18:27:14',0,0),(230,22,'/230_22_43.jpg',43,' ll','2014-11-17 18:27:27',0,0),(231,22,'/231_22_43.jpg',43,' hhhhhhhhhh','2014-11-17 18:27:44',0,0),(232,22,'/232_22_43.jpg',43,' gg','2014-11-17 18:28:09',0,0),(233,22,'/233_22_43.jpg',43,' e','2014-11-17 18:28:56',0,0),(234,22,'234_22_43.jpg',43,' hh','2014-11-17 18:30:35',0,0),(235,22,'235_22_43.jpg',43,' aaa','2014-11-17 18:30:45',0,0),(236,22,'236_22_43.jpg',43,' yyy','2014-11-17 18:30:56',0,0),(237,17,'/237_17_43.jpg',43,' 安安','2014-11-17 18:33:34',0,0),(238,13,'/No',86,' test!','2014-11-17 19:59:03',0,0),(239,29,'239_29_87.jpg',87,' 久違的蔚藍','2014-11-17 20:02:18',0,0),(240,29,'240_29_88.jpg',88,' 唱歌宏亮，率性 /好多outlet ><','2014-11-17 20:07:24',0,0),(241,29,'241_29_89.jpg',89,' 未滿21 #我不能進去','2014-11-17 20:08:26',0,0),(242,29,'242_29_90.jpg',90,' 最高點 澄澈的天映照聖母的慈善 ','2014-11-17 20:14:22',0,0),(243,29,'243_29_91.jpg',91,' ','2014-11-17 20:18:12',0,0),(244,29,'244_29_92.jpg',92,' 澳門的必去景點','2014-11-17 20:19:28',0,0),(245,29,'245_29_93.jpg',93,' 好久不見啊！','2014-11-17 20:22:41',0,0),(246,29,'246_29_94.jpg',94,' 聽說叫噴水池 喜歡澳門的道路 歐式建築 ','2014-11-17 20:25:27',0,0),(247,29,'247_29_95.jpg',95,' 沊仔 典型的葡式別墅 有新人拍婚紗呢：）','2014-11-17 20:31:23',0,0),(248,22,'248_22_96.jpg',96,' 車車車','2014-11-17 21:06:51',0,0),(249,22,'249_22_97.jpg',97,' 家裡網路比較好ya','2014-11-17 22:55:20',0,0),(250,30,'250_30_98.jpg',98,' #大阪 夜景','2014-11-17 23:48:50',0,0),(251,30,'251_30_99.jpg',99,' ','2014-11-17 23:55:28',0,0),(252,30,'252_30_100.jpg',100,' ','2014-11-17 23:57:04',0,0),(253,30,'253_30_43.jpg',43,' ','2014-11-18 00:03:51',0,0),(254,22,'/254_22_49.jpg',49,' java！！','2014-11-18 10:03:33',0,0),(256,22,'/256_22_43.jpg',43,' 松山!!','2014-11-18 19:11:52',0,0),(257,18,'257_18_102.jpg',102,' ','2014-11-18 19:47:56',0,0),(258,17,'258_17_103.jpg',103,' 上課','2014-11-19 15:08:25',0,0),(259,17,'259_17_43.jpg',43,' 測試','2014-11-20 02:52:46',0,0),(261,31,'261_31_104.jpg',104,' ','2014-11-20 12:47:09',0,0),(262,31,'262_31_105.jpg',105,' 西子灣','2014-11-20 16:34:45',0,0),(263,31,'263_31_106.jpg',106,' ','2014-11-20 16:55:40',0,0),(264,31,'264_31_107.jpg',107,' ','2014-11-20 16:56:30',0,0),(265,22,'/265_22_49.jpg',49,' 練舞OuO','2014-11-20 17:59:14',0,0),(266,31,'/No',108,' ','2014-11-21 12:31:38',0,0),(267,31,'267_31_109.jpg',109,' Bonbo beeeee','2014-11-22 09:02:10',0,0),(268,31,'268_31_110.jpg',110,'  ','2014-11-22 09:09:56',0,0),(269,31,'269_31_110.jpg',110,' ','2014-11-22 09:13:05',0,0),(270,31,'270_31_111.jpg',111,' 氣質。圖書館','2014-11-22 13:29:14',0,0),(271,31,'/No',112,' 鬆餅*ω*','2014-11-22 14:12:23',0,0),(272,17,'/272_17_113.jpg',113,' 測試','2014-11-23 02:04:10',0,0),(273,17,'/273_17_113.jpg',113,' 測試t','2014-11-23 02:22:22',0,0),(274,17,'/274_17_113.jpg',113,' 測試t','2014-11-23 02:23:15',0,0),(275,17,'/275_17_113.jpg',113,' 測試t','2014-11-23 02:32:21',0,0),(276,17,'/276_17_113.jpg',113,' 測試t','2014-11-23 02:32:51',0,0),(277,17,'/277_17_113.jpg',113,' 測試t','2014-11-23 02:33:23',0,0),(278,22,'/278_22_114.jpg',114,' 整理房間','2014-11-23 13:22:48',0,0),(279,22,'/279_22_115.jpg',115,' 天氣好O u O','2014-11-23 16:30:14',0,0),(280,22,'/280_22_116.jpg',116,' 天氣好好OuO','2014-11-23 16:36:50',0,0),(281,22,'/281_22_117.jpg',117,' 太陽','2014-11-23 16:37:52',0,0),(282,17,'/282_17_113.jpg',113,' 安安','2014-11-23 17:17:03',0,0),(283,22,'/283_22_118.jpg',118,' 跳舞!!','2014-11-23 17:36:50',0,0),(284,22,'/284_22_119.jpg',119,' 等車車','2014-11-23 20:54:18',0,0),(285,12,'/285_12_49.jpg',49,' ','2014-11-24 08:24:58',0,0),(286,12,'/No',113,' ','2014-11-24 08:25:18',0,0),(287,12,'/No',113,' ','2014-11-24 08:25:50',0,0),(288,18,'/288_18_113.jpg',113,' warcraft ','2014-11-24 08:28:03',0,0),(289,22,'/289_22_120.jpg',120,' 一個人上動網嗚嗚','2014-11-24 14:00:17',0,0),(290,17,'/290_17_113.jpg',113,' 測試垃圾學校網路','2014-11-24 14:01:52',0,0),(291,17,'/291_17_49.jpg',49,' 惻惻我粗吳我還','2014-11-24 14:02:08',0,0),(292,22,'/292_22_121.jpg',121,' 動網兒～','2014-11-24 14:52:05',0,0),(293,17,'/No',113,' ','2014-11-24 18:53:43',0,0),(294,17,'/No',113,' ','2014-11-24 19:10:45',0,0),(295,17,'/295_17_113.jpg',113,' 000','2014-11-26 03:12:50',0,0),(296,22,'/296_22_122.jpg',122,' 搭車車','2014-11-26 21:22:04',0,0),(297,22,'/297_22_123.jpg',123,' 八三夭OuO','2014-11-30 18:03:27',0,0),(298,22,'/298_22_124.jpg',124,' 跳跳跳跳跳','2014-11-30 21:43:48',0,0),(299,22,'/299_22_113.jpg',113,' 好冷嗚嗚','2014-12-01 21:42:45',0,0),(300,22,'/300_22_125.jpg',125,' 冷冷冷','2014-12-02 22:41:47',0,0),(301,22,'/301_22_126.jpg',126,' yaya冠軍OuO','2014-12-03 21:24:04',0,0),(302,17,'/No',127,' ','2014-12-04 19:22:31',0,0),(303,22,'/303_22_49.jpg',49,' 跳舞','2014-12-04 19:58:57',0,0),(304,22,'/304_22_49.jpg',49,' 觀光通識耶ˊˇˋ','2014-12-05 09:19:45',0,0),(305,22,'/305_22_49.jpg',49,' 觀光通識part2 ya','2014-12-05 09:23:21',0,0),(306,33,'/306_33_128.jpg',128,' 吃早餐','2014-12-06 10:43:26',0,0),(307,33,'/307_33_129.jpg',129,' 斗六','2014-12-06 12:33:41',0,0),(308,33,'/308_33_130.jpg',130,' 休息','2014-12-06 12:58:59',0,0),(309,33,'/309_33_131.jpg',131,' 小路','2014-12-06 14:04:12',0,0),(310,33,'/310_33_132.jpg',132,' 到了','2014-12-06 16:04:52',0,0),(311,33,'/311_33_133.jpg',133,' 漢神巨蛋','2014-12-06 16:08:54',0,0),(312,22,'/312_22_134.jpg',134,' 北一路跑ˊˇˋ','2014-12-07 09:16:27',0,0),(313,33,'/313_33_135.jpg',135,' 該回去惹','2014-12-07 09:47:56',0,0),(314,34,'/No',136,' 哈哈','2014-12-07 13:03:11',0,0),(315,33,'/315_33_49.jpg',49,' 回宿舍','2014-12-07 17:25:05',0,0),(316,22,'/316_22_137.jpg',137,' 三夭簽唱會ˊˇˋ','2014-12-07 22:33:45',0,0),(317,22,'/317_22_113.jpg',113,' 雨好大!!','2014-12-09 19:46:41',0,0),(318,22,'/318_22_113.jpg',113,' 等公車耶!!','2014-12-10 22:30:10',0,0),(319,22,'/319_22_113.jpg',113,' 上學','2014-12-11 12:37:02',0,0),(320,22,'/320_22_49.jpg',49,' 小雞嗶嗶嗶ˊˇˋ','2014-12-12 10:57:10',0,0),(321,22,'/321_22_113.jpg',113,' Ya','2014-12-13 20:48:08',0,0),(322,22,'/322_22_56.jpg',56,' ya','2014-12-13 20:48:33',0,0),(323,22,'/323_22_138.jpg',138,' 跳舞耶','2014-12-14 22:09:14',0,0),(324,22,'/324_22_139.jpg',139,' 冰心雪糕第二件10元ˊˇˋ','2014-12-14 22:10:03',0,0),(325,22,'/325_22_139.jpg',139,' 冰心雪糕第二件10元ˊˇˋ','2014-12-14 22:10:10',0,0),(327,24,'/327_24_140.jpg',140,' 假的','2014-12-15 13:39:49',0,0),(328,24,'/328_24_141.jpg',141,' a','2014-12-15 13:40:46',0,0),(329,24,'/329_24_113.jpg',113,' ','2014-12-15 13:42:11',0,0),(330,24,'/330_24_113.jpg',113,' ','2014-12-15 13:44:50',0,0),(331,24,'/331_24_142.jpg',142,' 測試','2014-12-15 13:51:10',0,0),(332,24,'/332_24_63.jpg',63,' ','2014-12-15 13:52:52',0,0),(333,24,'/333_24_143.jpg',143,' 殺小','2014-12-15 17:10:00',0,0),(335,39,'/335_39_49.jpg',49,' not really doing anything during Cisco class','2014-12-17 15:33:46',0,0),(336,39,'/336_39_49.jpg',49,' clueless on how to change names on mytrip','2014-12-17 15:53:39',0,0),(337,40,'/337_40_103.jpg',103,' ','2014-12-17 16:11:22',0,0),(338,41,'/338_41_113.jpg',113,' ','2014-12-17 16:39:17',0,0),(339,22,'/339_22_113.jpg',113,' Ya','2014-12-17 22:25:13',0,0),(340,35,'/No',145,' ','2014-12-18 10:22:53',0,0),(341,35,'/341_35_146.jpg',146,' 景新','2014-12-18 11:11:51',0,0),(342,35,'/342_35_147.jpg',147,' 長安東路松江路口','2014-12-18 11:33:05',0,0),(343,22,'/343_22_49.jpg',49,' 是組語課OuO','2014-12-18 14:29:54',0,0),(344,35,'/No',148,' ','2014-12-18 16:50:24',0,0),(345,39,'/345_39_113.jpg',113,' complains with daven','2014-12-18 17:27:18',0,0),(346,42,'/346_42_113.jpg',113,' 戴雯好正好正','2014-12-18 17:30:33',0,0),(347,22,'/347_22_149.jpg',149,' 在社辦外吹風耍廢玩手機OuO','2014-12-18 20:04:13',0,0),(348,43,'/No',150,' 說明','2014-12-19 13:38:13',0,0),(349,43,'/349_43_151.jpg',151,' 轉紅五','2014-12-19 13:58:26',0,0),(350,43,'/350_43_152.jpg',152,' 看比賽','2014-12-19 15:19:54',0,0),(352,43,'/No',153,' 好擠','2014-12-19 16:44:55',0,0),(353,43,'/353_43_154.jpg',154,' 吃晚餐','2014-12-19 17:25:50',0,0),(355,44,'/355_44_155.jpg',155,' 你們怎麼可以這麼可愛<3','2014-12-20 00:59:52',0,0),(356,44,'/356_44_156.jpg',156,' 道家飄然 ，清淨無為','2014-12-20 01:03:00',0,0),(357,44,'/357_44_157.jpg',157,' 湯圓最好吃了！！','2014-12-20 01:04:03',0,0),(359,44,'/359_44_113.jpg',113,' ','2014-12-20 03:34:24',0,0),(360,44,'/360_44_158.jpg',158,' ','2014-12-20 03:34:40',0,0),(361,44,'/361_44_159.jpg',159,' ','2014-12-20 03:35:36',0,0),(362,44,'/362_44_160.jpg',160,' 萬里長城','2014-12-20 03:36:51',0,0),(363,44,'/363_44_161.jpg',161,' ','2014-12-20 03:37:25',0,0),(364,44,'/364_44_162.jpg',162,' ','2014-12-20 03:38:45',0,0),(365,35,'/365_35_163.jpg',163,' ','2014-12-20 10:55:46',0,0),(366,45,'/366_45_164.jpg',164,' 專題發表','2014-12-20 11:05:38',0,0),(367,46,'/367_46_113.jpg',113,' ','2014-12-20 11:16:34',0,0),(368,46,'/No',44,' ','2014-12-20 11:16:51',0,0),(369,46,'/369_46_49.jpg',49,' 好正','2014-12-20 11:17:51',0,0),(370,45,'/370_45_49.jpg',49,' us','2014-12-20 11:27:17',0,0),(371,45,'/371_45_49.jpg',49,' ya','2014-12-20 11:36:48',0,0),(372,45,'/372_45_49.jpg',49,' hi','2014-12-20 11:46:41',0,0),(373,45,'/373_45_41.jpg',41,' hey','2014-12-20 11:54:31',0,0),(374,45,'/374_45_49.jpg',49,' hi','2014-12-20 12:02:38',0,0),(377,45,'/377_45_41.jpg',41,' test','2014-12-20 12:16:24',0,0),(378,45,'/378_45_41.jpg',41,' ray','2014-12-20 12:25:02',0,0),(379,45,'/379_45_165.jpg',165,' 學姐好正','2014-12-20 12:45:56',0,0),(380,49,'/380_49_113.jpg',113,' ','2014-12-20 12:55:14',0,0),(384,22,'/384_22_49.jpg',49,' 最後練習ˊˇˋ','2014-12-20 17:57:14',0,0),(385,22,'/385_22_167.jpg',167,' 妹妹好可愛OuO','2014-12-20 17:58:35',0,0),(389,22,'/385_22_169.jpg',169,' 到了!!','2014-12-21 10:06:13',0,0),(390,53,'/No',170,' ','2014-12-22 12:28:58',0,0),(391,53,'/384_53_136.jpg',136,' 冬至拜地基主','2014-12-22 12:30:32',0,0),(392,53,'/385_53_136.jpg',136,' 兔杯','2014-12-22 13:27:10',0,0),(393,53,'/386_53_136.jpg',136,' 無線充電','2014-12-22 13:28:16',0,0),(394,53,'/No',136,' ','2014-12-22 13:29:07',0,0),(395,42,'/385_42_113.jpg',113,' updated！ Now I can turn pictures!','2014-12-22 17:55:48',0,0),(396,42,'/386_42_113.jpg',113,' 123123drink','2014-12-22 18:15:00',0,0),(398,54,'/387_54_136.jpg',136,' 第7洞','2014-12-23 08:58:25',0,0),(399,54,'/388_54_136.jpg',136,' 第八洞','2014-12-23 09:13:10',0,0),(400,54,'/389_54_136.jpg',136,' 第九洞','2014-12-23 09:25:57',0,0),(401,54,'/390_54_136.jpg',136,' 第十洞','2014-12-23 09:36:13',0,0),(402,54,'/391_54_136.jpg',136,' 第十一洞','2014-12-23 09:50:58',0,0),(403,54,'/392_54_136.jpg',136,' 第十二洞','2014-12-23 10:04:49',0,0),(404,54,'/393_54_136.jpg',136,' 第十三洞','2014-12-23 10:15:56',0,0),(405,54,'/394_54_136.jpg',136,' 第十四洞','2014-12-23 10:37:28',0,0),(406,54,'/395_54_136.jpg',136,' 第十五洞','2014-12-23 10:54:40',0,0),(407,54,'/396_54_136.jpg',136,' 第十六洞','2014-12-23 11:12:59',0,0),(408,55,'/396_55_171.jpg',171,' 超短短髮OuO','2014-12-23 11:23:10',0,0),(409,55,'/397_55_49.jpg',49,' 學校攤位滿載而歸ˊˇˋ','2014-12-23 11:24:09',0,0),(410,54,'/398_54_136.jpg',136,' 第十七洞','2014-12-23 11:29:04',0,0),(411,54,'/399_54_136.jpg',136,' 第十八洞','2014-12-23 11:39:43',0,0),(412,42,'/400_42_113.jpg',113,' SNA checkpoint 2','2014-12-23 13:05:25',0,0),(413,54,'/401_54_113.jpg',113,' 樹林','2014-12-23 14:05:40',0,0),(418,48,'/No',113,' ','2014-12-24 11:51:24',0,0),(419,58,'/403_58_113.jpg',113,' 做布朗尼！！','2014-12-25 12:17:38',0,0),(420,58,'/404_58_174.jpg',174,' chocolateˊˇˋ','2014-12-25 13:47:41',0,0),(421,58,'/405_58_175.jpg',175,' 完成OuO','2014-12-25 13:48:57',0,0),(422,58,'/406_58_176.jpg',176,' 聖誕樹耶','2014-12-25 19:32:52',0,0),(423,58,'/407_58_177.jpg',177,' 好大好大的樹OuO','2014-12-26 10:25:48',0,0),(424,22,'/408_22_178.jpg',178,' 章魚燒欸','2014-12-27 22:17:46',0,0),(425,24,'/409_24_113.jpg',113,' ','2014-12-28 21:35:36',0,0),(426,58,'/410_58_179.jpg',179,' 交換禮物:-) ','2014-12-29 03:25:53',0,0),(427,41,'/411_41_113.jpg',113,' playstation 20th anniversary','2014-12-29 14:34:13',0,0),(429,42,'/412_42_49.jpg',49,' the night before presentation','2014-12-29 18:12:02',0,0),(430,41,'/413_41_180.jpg',180,' play station!','2014-12-29 18:28:02',0,0),(434,61,'/410_61_49.jpg',49,' tst','2014-12-30 13:47:33',0,0),(435,42,'/411_42_113.jpg',113,' projects presentation is finally over!','2014-12-30 20:19:09',0,0),(436,42,'/412_42_113.jpg',113,' ready for new year! 2015 here we come！','2014-12-31 18:41:23',0,0),(437,65,'/413_65_181.jpg',181,' yy','2015-01-01 15:02:10',0,0),(438,65,'/414_65_181.jpg',181,' ','2015-01-01 15:02:21',0,0),(440,67,'/No',182,' ','2015-01-02 06:57:10',0,0),(441,67,'/416_67_183.jpg',183,' ','2015-01-02 10:36:08',0,0),(442,67,'/417_67_184.jpg',184,' ','2015-01-02 10:53:35',0,0),(443,67,'/418_67_185.jpg',185,' ','2015-01-02 12:05:11',0,0),(444,67,'/419_67_186.jpg',186,' ','2015-01-02 12:07:04',0,0),(446,67,'/No',188,' 無菜單料理','2015-01-02 13:37:05',0,0),(447,67,'/421_67_189.jpg',189,' 石碼公園','2015-01-02 14:03:59',0,0),(448,67,'/422_67_190.jpg',190,' 很熱門的店，不錯','2015-01-02 17:33:14',0,0),(451,72,'/423_72_191.jpg',191,' 清水服務區','2015-01-03 12:21:55',0,0),(452,75,'/424_75_192.jpg',192,' 出去玩ya','2015-01-04 14:31:05',0,0),(453,75,'/425_75_193.jpg',193,' ya!!','2015-01-04 14:32:21',0,0),(454,75,'/426_75_194.jpg',194,' 影子OuO','2015-01-04 14:46:30',0,0),(455,42,'/427_42_195.jpg',195,' 好吃好吃','2015-01-05 20:36:21',0,0),(456,42,'/428_42_197.jpg',197,' she looked retarded','2015-01-07 21:20:49',0,0),(457,81,'/429_81_49.jpg',49,' 瑋志束褲','2015-01-09 14:34:25',0,0),(460,88,'/No',113,' ','2015-01-12 23:46:44',0,0),(462,89,'/No',200,' ','2015-01-12 23:49:31',0,0),(463,89,'/No',201,' ','2015-01-12 23:50:12',0,0),(464,92,'/433_92_202.jpg',202,' 上班時來點小小的驚喜其實很快樂！','2015-01-15 12:30:51',0,0),(465,94,'/No',203,' Test','2015-01-15 19:29:04',0,0),(467,100,'/No',205,' ','2015-01-18 02:03:15',0,0),(468,97,'/436_97_206.jpg',206,' 一個人走走……其實很寂寞！','2015-01-18 12:31:40',0,0),(469,102,'/437_102_207.jpg',207,' 嗯……沒什麼，東西少，態度也不是很好，還會為自己店跟客人辯解，有夠不好的啦！','2015-01-18 23:47:01',0,0),(470,103,'/No',136,' 111','2015-01-19 00:41:33',0,0),(471,106,'/439_106_49.jpg',49,' unity哦','2015-01-19 16:31:32',0,0),(473,106,'/440_106_208.jpg',208,' 吃冰www','2015-01-21 21:06:50',0,0),(474,108,'/441_108_209.jpg',209,' 前往','2015-01-22 14:32:00',0,0),(475,42,'/442_42_210.jpg',210,' this one is suppose to be the day before yesterday where we were supposed to see The Night At the Museum but ended up eating afternoon tea','2015-01-22 15:02:52',0,0),(476,110,'/443_110_213.jpg',213,' 李明老師凹嗚','2015-01-25 19:14:18',0,0),(477,48,'/No',214,' ','2015-01-26 13:56:06',0,0),(479,114,'/445_114_215.jpg',215,' 枯樹幹上的春天','2015-01-27 07:13:21',0,0),(480,114,'/446_114_215.jpg',215,' 早開的櫻花','2015-01-27 07:14:07',0,0),(481,114,'/447_114_215.jpg',215,' 冬天已過 春天不遠','2015-01-27 07:15:00',0,0),(482,115,'/448_115_216.jpg',216,' 香港機場','2015-01-27 12:28:22',0,0),(483,115,'/No',217,' ','2015-01-27 14:34:11',0,0),(484,115,'/No',218,' ','2015-01-27 15:28:50',0,0),(485,115,'/No',218,' ','2015-01-27 15:51:55',0,0),(486,17,'/452_17_113.jpg',113,' 測試','2015-02-09 16:40:30',0,0),(487,118,'/453_118_222.jpg',222,' 幾米-補打卡','2015-02-11 15:24:39',0,0),(489,118,'/455_118_224.jpg',224,' 泡腳+拉麵？ 哈哈','2015-02-11 16:52:13',0,0),(490,118,'/456_118_225.jpg',225,' 有人試吃在偷笑XD 排隊太長','2015-02-11 16:54:52',0,0),(491,118,'/457_118_224.jpg',224,' 足湯拉麵','2015-02-11 18:16:31',0,0),(492,118,'/458_118_226.jpg',226,' 附溫泉民宿','2015-02-11 20:46:37',0,0),(493,118,'/458_118_227.jpg',227,' ','2015-02-12 17:54:20',0,0),(494,118,'/459_118_228.jpg',228,' 蔥油餅+採蔥 ','2015-02-13 12:50:13',0,0),(495,119,'/460_119_229.jpg',229,' ','2015-02-15 16:56:26',0,0),(496,131,'/461_131_136.jpg',136,' 峨嵋大佛','2015-02-15 22:25:53',0,0),(497,132,'/462_132_136.jpg',136,' 700','2015-02-16 06:06:46',0,0),(501,106,'/463_106_231.jpg',231,' 烤玉米www','2015-02-17 14:01:49',0,0),(502,134,'/464_134_232.jpg',232,' 首爾我來了','2015-02-18 12:07:54',0,0),(503,135,'/No',233,' Bus stop','2015-02-19 11:00:48',0,0),(504,136,'/466_136_234.jpg',234,' ','2015-02-19 11:45:58',0,0),(505,136,'/No',235,' ','2015-02-19 12:45:56',0,0),(506,137,'/468_137_113.jpg',113,' ','2015-02-19 19:05:07',0,0),(507,137,'/469_137_113.jpg',113,' ','2015-02-19 19:05:58',0,0),(508,137,'/470_137_113.jpg',113,' ','2015-02-19 19:06:19',0,0),(509,137,'/471_137_113.jpg',113,' ','2015-02-19 19:06:34',0,0),(510,106,'/472_106_236.jpg',236,' 羅東ya','2015-02-21 18:11:39',0,0),(511,72,'/473_72_237.jpg',237,' ','2015-02-26 14:26:50',0,0),(513,143,'/No',113,' ','2015-02-27 00:33:55',0,0),(514,144,'/475_144_239.jpg',239,' ','2015-02-27 11:52:22',0,0),(516,144,'/477_144_240.jpg',240,' ','2015-02-27 14:30:08',0,0),(517,144,'/478_144_240.jpg',240,' ','2015-02-27 14:31:49',0,0),(519,140,'/478_140_72.jpg',72,' 出發香港','2015-03-02 07:57:39',0,0),(520,150,'/479_150_113.jpg',113,' ','2015-03-06 03:04:18',0,0),(522,167,'/480_167_242.jpg',242,' 第一洞','2015-03-20 07:13:05',0,0),(523,167,'/481_167_242.jpg',242,' 第二洞','2015-03-20 07:28:35',0,0),(524,167,'/482_167_136.jpg',136,' 第三洞','2015-03-20 07:44:06',0,0),(525,167,'/483_167_243.jpg',243,' 第四洞','2015-03-20 07:54:47',0,0),(526,167,'/484_167_242.jpg',242,' 第五洞','2015-03-20 08:13:44',0,0),(527,167,'/485_167_242.jpg',242,' 第六洞','2015-03-20 08:23:38',0,0),(528,167,'/486_167_242.jpg',242,' 第七洞','2015-03-20 08:44:52',0,0),(529,167,'/487_167_242.jpg',242,' 第八洞','2015-03-20 09:07:39',0,0),(530,167,'/488_167_242.jpg',242,' 第九洞','2015-03-20 09:22:51',0,0),(531,167,'/489_167_242.jpg',242,' 第十洞','2015-03-20 09:33:53',0,0),(532,167,'/490_167_242.jpg',242,' 第十一洞','2015-03-20 09:51:01',0,0),(533,167,'/491_167_242.jpg',242,' 第十二洞','2015-03-20 10:06:31',0,0),(534,167,'/492_167_242.jpg',242,' 第十三洞','2015-03-20 10:18:49',0,0),(535,167,'/493_167_244.jpg',244,' 第十四洞','2015-03-20 10:40:29',0,0),(536,167,'/494_167_242.jpg',242,' 第十五洞','2015-03-20 10:50:13',0,0),(537,167,'/495_167_136.jpg',136,' 第十六洞','2015-03-20 11:07:24',0,0),(538,167,'/496_167_242.jpg',242,' 第十七洞','2015-03-20 11:25:21',0,0),(539,167,'/497_167_242.jpg',242,' 第十八洞','2015-03-20 11:35:22',0,0),(540,161,'/498_161_136.jpg',136,' 佛光山下','2015-03-20 15:56:09',0,0),(541,169,'/No',245,' 哇!','2015-03-20 22:11:27',0,0),(542,169,'/No',246,' ','2015-03-20 22:13:25',0,0),(543,169,'/No',247,' ','2015-03-20 22:14:49',0,0),(544,169,'/No',248,' ','2015-03-20 22:15:22',0,0),(545,171,'/503_171_136.jpg',136,' 櫻花','2015-03-21 16:04:13',0,0),(547,170,'/No',250,' 是從噢噢','2015-03-23 14:42:31',0,0),(548,178,'/505_178_252.jpg',252,' ','2015-03-24 12:46:35',0,0),(549,179,'/506_179_253.jpg',253,' 有閣樓XD','2015-03-28 13:46:38',0,0),(550,179,'/507_179_254.jpg',254,' !','2015-03-28 14:31:46',0,0),(551,179,'/508_179_255.jpg',255,' ','2015-03-28 14:44:03',0,0),(552,179,'/509_179_256.jpg',256,' ','2015-03-28 15:07:46',0,0),(553,179,'/510_179_257.jpg',257,' 漢城華僑國小參訪','2015-03-28 16:52:46',0,0),(554,179,'/511_179_257.jpg',257,' 漢城華僑國小參訪','2015-03-28 16:53:22',0,0),(556,179,'/512_179_258.jpg',258,' 南山首爾塔 做公車喔～','2015-03-29 10:48:22',0,0),(557,182,'/513_182_259.jpg',259,' 中餐','2015-03-30 12:10:08',0,0),(558,182,'/514_182_260.jpg',260,' 紙教堂','2015-03-30 13:49:07',0,0),(559,182,'/515_182_261.jpg',261,' 日月潭往溪頭路上。','2015-03-30 15:31:27',0,0),(560,183,'/516_183_262.jpg',262,' 雲海OuO','2015-03-31 06:46:41',0,0),(561,182,'/517_182_263.jpg',263,' 溪頭住宿','2015-03-31 07:04:34',0,0),(562,182,'/518_182_264.jpg',264,' 溪頭大學池','2015-03-31 07:47:01',0,0),(563,182,'/519_182_265.jpg',265,' 空中走道','2015-03-31 08:54:30',0,0),(564,182,'/520_182_266.jpg',266,' 神木','2015-03-31 09:20:41',0,0),(565,184,'/521_184_267.jpg',267,' ','2015-03-31 11:12:26',0,0),(566,184,'/No',268,' ','2015-03-31 11:12:54',0,0),(567,184,'/No',268,' ','2015-03-31 11:13:03',0,0),(568,184,'/524_184_268.jpg',268,' qqq','2015-03-31 11:13:32',0,0),(569,183,'/525_183_269.jpg',269,' 不能說的秘密www','2015-03-31 17:55:40',0,0),(570,183,'/526_183_270.jpg',270,' 高鐵凹嗚','2015-03-31 20:45:50',0,0),(572,179,'/527_179_271.jpg',271,' with. lin  喝沒喝過的酒','2015-03-31 20:57:50',0,0),(573,185,'/528_185_272.jpg',272,' 該起床整理了!!','2015-04-01 04:18:31',0,0),(574,185,'/529_185_273.jpg',273,' ','2015-04-01 04:38:02',0,0),(575,185,'/530_185_274.jpg',274,' 到達坐車地點','2015-04-01 04:50:16',0,0),(576,185,'/531_185_113.jpg',113,' 終於到達台北','2015-04-01 09:56:39',0,0),(577,179,'/532_179_275.jpg',275,' 還不錯吃～','2015-04-01 10:10:47',0,0),(578,185,'/533_185_276.jpg',276,' 第一站吃麥當當><','2015-04-01 10:45:42',0,0),(579,185,'/534_185_277.jpg',277,' 搭烏來台車','2015-04-01 13:41:06',0,0),(580,179,'/535_179_278.jpg',278,' ','2015-04-01 14:05:42',0,0),(581,185,'/536_185_279.jpg',279,' 看瀑布到安娜貝爾吃冰喝茶２４０好貴','2015-04-01 14:26:13',0,0),(582,185,'/537_185_279.jpg',279,' 回程下雨了','2015-04-01 15:08:08',0,0),(583,179,'/538_179_280.jpg',280,' 逛街中','2015-04-01 15:34:33',0,0),(584,185,'/539_185_281.jpg',281,' 經過風吹雨打到達飯店','2015-04-01 15:56:25',0,0),(585,185,'/540_185_282.jpg',282,' 離開去平溪','2015-04-02 09:44:14',0,0),(586,185,'/541_185_283.jpg',283,' 往瑞芳前進','2015-04-02 11:48:37',0,0),(587,185,'/542_185_136.jpg',136,' 往平溪喔～','2015-04-02 12:46:46',0,0),(588,185,'/543_185_284.jpg',284,' 超多可愛貓咪','2015-04-02 14:00:15',0,0),(589,185,'/544_185_285.jpg',285,' 逛完瀑布累死了','2015-04-02 16:14:50',0,0),(590,185,'/545_185_286.jpg',286,' 放完天燈，希望願望實驗','2015-04-02 18:04:25',0,0),(591,186,'/546_186_287.jpg',287,' 我在蘭嶼 浮潛','2015-04-03 16:18:33',0,0),(593,195,'/547_195_289.jpg',289,' 第二天的住宿','2015-04-11 16:54:50',0,0),(594,180,'/548_180_72.jpg',72,' 準備出發','2015-04-14 08:05:39',0,0),(595,197,'/549_197_290.jpg',290,' 吃飯','2015-04-14 21:37:58',0,0),(596,198,'/550_198_113.jpg',113,' 先買個地瓜， 蘿蔔米粿泡完湯可慢慢享用','2015-04-14 22:03:10',0,0),(599,203,'/551_203_49.jpg',49,' 討論專題','2015-04-16 19:44:53',0,0),(600,206,'/552_206_113.jpg',113,' 行李','2015-04-17 16:57:33',0,0),(602,212,'/553_212_136.jpg',136,' ','2015-04-18 16:06:48',0,0),(603,212,'/554_212_292.jpg',292,' ','2015-04-18 16:27:03',0,0),(604,212,'/555_212_293.jpg',293,' ','2015-04-18 17:22:05',0,0),(605,212,'/556_212_294.jpg',294,' ','2015-04-18 17:40:36',0,0),(608,213,'/No',296,' 合菜看起來比較好吃，但量太大，只能點風味餐，普通，跟老闆娘商量加一西魯肉，OK','2015-04-19 13:09:58',0,0),(609,214,'/558_214_297.jpg',297,' ','2015-04-23 07:28:33',0,0),(610,215,'/559_215_298.jpg',298,' 空中','2015-04-23 21:23:30',0,0),(611,215,'/560_215_136.jpg',136,' test','2015-04-23 21:24:18',0,0),(612,218,'/561_218_299.jpg',299,' test','2015-04-26 22:06:51',0,0),(613,220,'/562_220_300.jpg',300,' 伊達邵民宿','2015-05-02 07:16:50',0,0),(614,220,'/563_220_300.jpg',300,' 凌晨五點的日月湖','2015-05-02 07:17:41',0,0),(615,220,'/564_220_300.jpg',300,' 隨心而動……慶祝母親節','2015-05-02 07:58:09',0,0),(616,226,'/No',301,' ','2015-05-06 17:04:20',0,0),(618,225,'/No',303,' ','2015-05-09 19:38:43',0,0),(619,225,'/567_225_304.jpg',304,' ','2015-05-10 16:31:40',0,0),(620,231,'/568_231_305.jpg',305,' 好吃','2015-05-14 20:31:46',0,0),(623,225,'/No',308,' ','2015-05-16 10:14:23',0,0),(624,237,'/No',309,' ','2015-05-17 15:35:01',0,0),(625,237,'/571_237_309.jpg',309,' 累累','2015-05-17 15:47:53',0,0),(626,225,'/572_225_310.jpg',310,' ','2015-05-17 16:33:58',0,0),(627,235,'/573_235_311.jpg',311,' Restaurant KAIRO','2015-05-17 18:25:03',0,0),(629,238,'/574_238_312.jpg',312,' 運動','2015-05-19 09:54:22',0,0),(639,242,'/575_242_136.jpg',136,' 成熟了','2015-05-23 11:43:44',0,0),(640,243,'/576_243_321.jpg',321,' ','2015-05-24 13:01:43',0,0),(641,245,'/577_245_322.jpg',322,' ','2015-05-28 14:26:58',0,0),(642,37,'/578_37_113.jpg',113,' 5/21~5/24 四天三夜之旅','2015-05-29 00:26:32',0,0),(643,234,'/579_234_136.jpg',136,' ','2015-05-31 23:49:51',0,0),(644,234,'/580_234_136.jpg',136,' ','2015-05-31 23:50:06',0,0),(645,234,'/581_234_136.jpg',136,' ','2015-05-31 23:50:19',0,0),(646,234,'/582_234_136.jpg',136,' ','2015-05-31 23:50:34',0,0),(647,234,'/583_234_136.jpg',136,' ','2015-05-31 23:50:46',0,0),(648,249,'/No',323,' ','2015-06-06 15:34:04',0,0),(649,249,'/585_249_324.jpg',324,' ','2015-06-07 09:19:22',0,0),(650,249,'/No',325,' ','2015-06-07 13:35:39',0,0),(651,249,'/587_249_325.jpg',325,' 晚宴','2015-06-07 16:31:34',0,0);
/*!40000 ALTER TABLE `mytripApp_trip_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytripApp_trip_perform`
--

DROP TABLE IF EXISTS `mytripApp_trip_perform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytripApp_trip_perform` (
  `tripid_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `modify_time` datetime NOT NULL,
  `permission` tinyint(1) NOT NULL,
  PRIMARY KEY (`tripid_id`),
  CONSTRAINT `tripid_id_refs_trip_id_74bc956716a5f1cf` FOREIGN KEY (`tripid_id`) REFERENCES `mytripApp_trip` (`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytripApp_trip_perform`
--

LOCK TABLES `mytripApp_trip_perform` WRITE;
/*!40000 ALTER TABLE `mytripApp_trip_perform` DISABLE KEYS */;
INSERT INTO `mytripApp_trip_perform` VALUES (1,'3','2014-12-19 21:27:46',1),(2,'3','2014-12-19 15:59:33',1),(3,'3','2014-12-19 22:40:27',1),(5,'3','2014-12-19 01:44:19',1),(6,'2','2014-09-13 06:47:24',1),(9,'1','2014-09-14 11:08:26',0),(10,'3','2014-12-17 20:35:26',1),(11,'1','2014-12-09 15:59:45',1),(12,'2','2014-12-21 13:36:34',0),(14,'1','2014-12-17 17:52:56',1),(17,'3','2014-12-18 17:08:16',1),(22,'2','2015-01-21 22:19:22',1),(27,'3','2014-12-09 04:04:40',1),(29,'2','2014-12-30 01:53:40',1),(30,'3','2014-12-19 23:58:24',1),(31,'2','2015-01-14 21:00:56',1),(33,'2','2014-12-29 19:53:38',1),(39,'1','2014-12-19 15:16:45',1),(41,'3','2014-12-29 18:40:20',1),(42,'3','2015-01-03 22:24:25',1),(43,'3','2015-01-06 01:12:19',1),(45,'3','2014-12-29 18:40:02',0),(46,'1','2015-07-14 14:12:45',1),(55,'1','2014-12-23 11:35:49',1),(67,'1','2015-01-06 16:45:25',1),(115,'1','2015-02-19 13:30:29',1),(249,'1','2015-06-07 16:33:02',1);
/*!40000 ALTER TABLE `mytripApp_trip_perform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytripApp_user`
--

DROP TABLE IF EXISTS `mytripApp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytripApp_user` (
  `user_id` varchar(30) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `idnum` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(75) NOT NULL,
  `check_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idnum`),
  UNIQUE KEY `mytripApp_user_user_id_2f1761d112417483_uniq` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytripApp_user`
--

LOCK TABLES `mytripApp_user` WRITE;
/*!40000 ALTER TABLE `mytripApp_user` DISABLE KEYS */;
INSERT INTO `mytripApp_user` VALUES ('daven','daven',1,'Daven','a0912808302@gmail.com','m6xzh3lh17'),('koi','koi',2,'何怡','koibadkid@gmail.com','s281bq73z9'),('user2','aaa',3,'user','a@yahoo.com',''),('user3','aaa',4,'user','a@yahoo.com',''),('sunshine711','711711711',5,'CindyHuang','sunshine10203@hotmail.com',''),('a','11',6,'a','a11@gmail.com',''),('jerewang','73128jere',7,'Chuan-Ju Wang','jerewang@gmail.com',''),('marcoweiwhite','a2852810',8,'marcow','marcoweiwhite@gmail.com','r00vk4qajq'),('test','test',9,'測試中','test@yahoo.com',''),('vivi','1005831',10,'楊子薇','vi83105@gmail.com','40x4fss8si'),('bijuli','joan0410',11,'bijuli','ux32vd@gmail.com','twdmdvzjos'),('ricky','qwe123',12,'ricky','ricky820617@yahoo.com.tw','0x3whqy374'),('koi2','koi',14,'何怡','koibadkid@gmail.com','sdhf15n7qn'),('koi3','koi',16,'何怡','koibadkid@gmail.com',NULL),('koi4','koi',17,'何怡','koibadkid@gmail.com','y0rlhysiel'),('koibadkid','0000',18,'何怡','koibadkid@gmail.com','jpvnpwfg8t'),('testacc','1234',19,'test','test@ggg.com',NULL),('testacc2','aaa',21,'000','0.com',NULL),('qwer123','000',22,'k','d.com',NULL),('000','000',23,'000','000.com',NULL),('0000','000',24,'000','000.com','8mdses66r1'),('winniekao','winnie0122',25,'高莞茜','winnie01221211@gmail.com','plb2mcc48g'),('test000','000',26,'kkk','.com','zatmtkwiup'),('666666','666666',27,'666666','982899917@qq.com','upjua1x357'),('Hoyungchen','79820313',32,'何永誠','daniel@ayetek.com.tw','8wmyxnfrz0'),('ye071231','76982227',33,'carol','ye071231@yahoo.com.tw','xal91of1m6'),('rayavn','rayavn',34,'avonyo','avoncheetah@yahoo.com.tw','lppicybn3o'),('HiKoiWenTai','hello',35,'youguess','ricky820617@yahoo.com.tw','0drlav2qcs'),('amani','c41585',37,'amani','kingofamani@gmail.com','pr12j37a70'),('smilefingers5','queer773',38,'Foi','smilefingers5@gmail.com','hej1vtbn2v'),('disc9562','jay828486',39,'林杰毅','disc9562@gmail.com','13y1q0vsso'),('jasontw08','asd77499h',40,'阿良','jasontw08@gmail.com','o2op4ccoxn'),('ami0529','615942',41,'Ami','f615942@yahoo.com.tw','i5lsoeuttj'),('Phoebe','ihc1208',42,'Phoebe','phoebe1208@gmail.com','nbe1kw8qz6'),('h0910056662','susan0125',43,'sue','h0910056662@gmail.com','rkwocl099u'),('1234','1234',44,'test','1234','44eh8i4uu4'),('purple1123','s3478y811123',45,'tzuling','purpleling@hotmail.com.tw','e9oq7ezhc2'),('csc','560827',46,'may','az4579843@yahoo.com.net','pb45j6cl7r'),('papa306','0306',47,'洪宙宏','papa306@yahoo.com.tw','xbi3t03ao2'),('jeff681116','700412',48,'Jeff.hsu','jeff681116@gmail.com','5si3xz97rf'),('1111','1111',49,'1111','1111','dsrnggwwb1'),('julian716','ft54072',50,'julian','julian716@gmail.com','3ofw99z32j'),('Dora0407','love0509',51,'Dora sung','dires0717@gmail.com','ddv9udb73r'),('wei0604','xji65p4jo3',52,'東方羅','wei0604@pchome.com.tw','7aebqdk27e'),('99880099','99880099',53,'poi','poi','t2ql0kc369'),('lynnchen18','com0nov',54,'Lynn Chen','lynnchen821105@gmail.com','w3rrll2l99'),('jc320','zhongli47',57,'jcchang','jcchang320@gmail.com','0dnp1h6x83'),('p71348','s82582361',58,'咩樂','s925022000@yahoo.com.tw','3pb71tipzr'),('acertie@gmail.com ','276027oo',59,'戴爾雅','acertie@gmail.com','lpwgxq2meq'),('tonao612','650714',60,'董哲訓','tona0804@kimo.com','ll0lgdgf4z'),('elsaliu','elsaliu6711',61,'elsa','elsaliu1167@gmail.com','ap7oiuur82'),('snagon3301','wl01841048',62,'Joyce','20003301@yahoo.com.tw','f82x8coiv7'),('smilesandy1221','Babyabby1221',63,'Abby','smilesandy1221@gmail.com','oryt24fdge'),('yeh','656511',64,'葉紫','yeh656511@yahoo.com.tw','b6ocyngsme'),('sf940663398','as19773398',65,'雙子星','sf94066@yahoo.com.tw','4w380jpwah'),('ya81113','0978397792',66,'林峰慶','ya81113@yahoo.com.tw','zyobit8orw'),('amy82222','hello2844250031',67,'黃華昭','amy82222@yahoo.com.tw','ppvkgejmax'),('pei_623','p01230630e',69,'pei','star83623@yahoo.com.tw','nh7y1bcg63'),('mark9017','90178966',70,'Mark','mark9017.tw@yahoo.com.tw','mtbfwdcns2'),('liang811215','zxc147',71,'kuo,chun.liang','liang811215@gmail.com','xtmfij856n'),('g501141','820720',72,'凌瑋志','g501141@gmail.com','o1ioznszfv'),('sky1014','sunny1019',73,'楊聖功','v3768933@gmail.com','fn1zp1iwrs'),('kaotsaining','20010502',74,'寧','kaotsaining@gmail.com','9293913nb6'),('ssaaue','saue11223110',77,'Cynthia','ssaaue@gmail.com','aa28pypkv9'),('exe2820654','t6123997',78,'TONY','exe2820654@yahoo.com','kczkgdzt6e'),('Jishuaishuai','Zyxlydf77jzp',79,'季忠平','topisee@gmail.com','3zpai4acnw'),('apple7272','wewe1127',80,'杜采蓉','apple7272.tw@yahoo.com.tw','ufp5ah8c05'),('love4322002','19860921',81,'ting','power2161@yahoo.com.tw','1z224ogw1x'),('fb883073238370098','890073832370388',82,'何怡','koibadkid@gmail.com',''),('fb859068324133028','820331423860958',83,'Wen Tai','a0912808302@gmail.com',''),('timetotroll','1234',84,'troll','troll@yahoo.com.tw',''),('fb743599395736004','400637593995347',85,'曲奕帆','tom8u4286@yahoo.com.tw',''),('a77225','9207023',86,'chen','ivy1988225@gmail.com','gb2g53grmo'),('Chuanli1206','king1103',87,'筱涓','chuanli1206@gmail.com','m7keryxe9p'),('sindy80922','a809222',88,'Lia Tsung','sindy80922@gmail.com','y7dhq9qvh4'),('fbukevin','rock1612',89,'Veck Hsiao','fbukevin@gmail.com','0zkd9v4dml'),('pink68','2xuialji',90,'pink68','681214@gmail.com','ranbkxpacc'),('Terrysun','roro0610',91,'孫小賢','terrysun2011@gmail.com','3s3mk9jyyg'),('woine.2020','fish52004',92,'woine','woine.2020@yahoo.com.tw','jp39mlan5d'),('x87099468','melonu01240925',93,'ching','x87099468@yahoo.com.tw','x7brvadfb7'),('s882420988','aysel',94,'Amy','100508006@nccu.edu.tw','cyny56hplt'),('j10100ki','95787788',95,'楊舜迪','j10100ki@hotmail.com','26ct7sw6wd'),('Cha','a110232',96,'Cha','cha0726cha@yahoo.com.tw','senr223k7o'),('faber','9110',97,'Faber Wen','faberwen@hotmail.com','zl39jbi4mv'),('pure','sp2005246',98,'華','purelockkimo@yahoo.com.tw','a0ivlenlpe'),('a58911207','LOVE0523',99,'小貓','a58911207@yahoo.com.tw','63zwrcse12'),('henrylin','ab961006',100,'林弘毅','henrylin1016@gmail.com','296xmqe96l'),('phoebe1208','ihc1208',101,'Phoebe','phoebe1208@gmail.com','v252dmlz67'),('tzuyu','0000',102,'tzuyu','directionto@yahoo.com.tw','w1kezw03d5'),('jocelyn','wj5822',103,'廖婉甄','k-wj@hotmail.com.tw','dd63vfk5xl'),('vpr603','vpr959',105,'Q寶寶','vpr603@yahoo.com.tw','ypai7ogtmv'),('huang74983@yahoo.com.tw','qWertyuiOp126',107,'莫名','huang74983@yahoo.com.tw','g7vvrfk85s'),('cnblue0310','cnblue0310',108,'瑞雯','puppy1835566@yahoo.com.tw','p23rxi9k84'),('round8737','sophia63',114,'邱雅莉','round8737@yahoo.com.tw','muhc8sh1zt'),('geminishin','shuo71612',115,'柯人碩','geminishin@hotmail.com','jpl4osn7nl'),('Apple','apple942030',116,'Apple','wseed.apple@gmail.com','z4ixegff7e'),('0978106358','456654123321',117,'馮雅玲','Sagittarius19781204@gmail.com','em0mz3aa9u'),('lomaycha ','Q0928402608',118,'Lin jolan','lomaycha@hotmail.com','h4k9gxgfvz'),('ivytsou','ivy5410',119,'ivy','ivytsou10@gmail.com','vixso9f39e'),('gutgill@yahoo.com.tw','19800616',120,'何小婉','gutgill@yahoo.com.tw','no0opmlc5t'),('adbbeaj','2aliiori',121,'董冀輝','dumeslam@hotmail.com','1lmyrab82h'),('amy15642','1234home',122,'amy','amy15642@gmail.com','33rj5uhian'),('chairco','05643982',125,'RogerChen','chairco@gmail.com','hxz8hear46'),('kkkoooiii2','0000',126,'Koi','koibadkid@gmail.com','gnmctlweng'),('Cutie Cutie','pippen22',127,'Angel','liangel26@gmail.com','kiz2r1grvt'),('blade19','be2266',128,'小歐','blade0619@gmail.com','zcnzsacwnn'),('tee0829','0918556462',129,'婷婷','tee0829@yahoo.com.tw','8my0uvnpvv'),('peiwen707','1234588',130,'Becky','peiwen707@hotmail.com','rapghvo4q8'),('ny0769','as000000',131,'Dora','ny0769@hotmail.com','g9eoqpzxi4'),('kimmy','a8614656',132,'Kimmy','a372806@yahoo.com.tw','nipsjgmc53'),('jackmoto','j85126',133,'Tatum','jackmoto31@gmail.com','goygp2sso4'),('xx05544tw','zxcvb123',134,'zuo','xx05544tw@gmail.com','vbirny2m6i'),('Queenie','1125',135,'Queenie','shihhan0219@gmail.com','p2hxs4dfgn'),('Apple67','005787',137,'Apple','wseed.apple@gmail.com','77qnm4ba2k'),('Ape','qazwsx',138,'大貓','ape.tw@hotmail.com','ignhohe2nm'),('c55721520','c55721',139,'林家羽','c55721920@gmail.com','79rpdsbc6p'),('asdf7708620','222222',140,'粘柏橙','c3760899@','24jh9cdgso'),('samsonchen3702','samson3702gtt',141,'Yimin','samsonchen3702@gmail.com','x06r5cxpv2'),('jocelyn5477','54771204',142,'jocelyn','s96917@gmail.com','wg7sb37t08'),('bear1004','freelife1004',143,'大笨熊','r791004r791004@gmail.com','7w6pye30xj'),('mp205a','122967755',144,'小蔡','mp205a@gmail.com','2okmjm9711'),('k6310228','k220029272',145,'琪','k6310228@yahoo.com.tw','x89amt3v1b'),('waterwu','613817',146,'water','waterwu613@yahoo.com.tw','hslf884xej'),('shinemei510','love0810',147,'Mei','shinemei510@gmail.com','ds7knf8hd3'),('wenhsuan203','s20120926',148,'Wang wen hsuan','wenhsuan203@yahoo.com.tw','k59zrl9yx8'),('ellietseng','eg0520',149,'ellie','rachare2001@yahoo.com.tw','gkgir7xdga'),('vicky','670217',150,'Vicjy Sung','vicky021770@gmail.com','d9txe6ktbg'),('cola5431','hahgr521',151,'小妖','cola5431@yahoo.com.tw','jau2vifq2n'),('sheila42674','mm123170',152,'如','sheila42674@hotmail.com','8jzwjlrv02'),('a5566443321','a167445',153,'吃貨女孩','a5566443321@yahoo.com.tw ','i6zwe99zdh'),('mylife88more','kiss8864',154,'綾','mylife88nmore@yahoo.com.tw','cw2j5d4egz'),('lovefann2002','skyblue',155,'jia hua','lovefann2002@hotmail.com','md8qs4gf56'),('Migawu','a0921297797',156,'Miga','winniewwc@gmail.com','zz9pxys3od'),('huangpc','pc)(%*157995',157,'huangpc','huangpc0319@163.com',NULL),('megacorina','corina0828',158,'吳小家','megacorina@gmail.com','vpx4lm2gt1'),('pata1105','p19871105',159,'Pata','patasure@gmail.com','nbfpzwizul'),('sunny629','love1021',161,'Sunny','yes5277@gmail.com','jrnxf9oxjo'),('juinru','91310098',162,'Albert','juinru@gmail.com','j400meqc3q'),('yuchen','ya0147',163,'Evan','yuchen0206@gmail.com','ezcklfet69'),('s1390525','sjoy1390525',164,'黃小晴','s1390525@gmail.com','j73azuthpk'),('yahui','ai1988',165,'Rima','elisyahsu@gmail.com','8e4j98sqc6'),('minnahu','19820822',166,'Minna','minnahu@yahoo.com.tw','09o8amyijw'),('yi_yan','1234',167,'yi_yan','lock.baby@msa.hinet.net','q09wn2cq70'),('jianjr7725','7725wannian772583',168,'黃','jianjr7725@yahoo.com.tw','dgv6zazpcq'),('yuchann','yu0822',169,'yuchann','a8963061@stmail.fju.edu.tw','isv3hvxty2'),('peggy042953','asdxc87213',170,'我愛北極','peggy042953@yahoo.com.tw','x7vrvvvgtt'),('Ethan','trv576438',171,'ethan','ethan952977@gmail.com','27d29dtplq'),('meilan','j6ao6x06',172,'sylvia','mei-lan892@hotmail.com','w50tv9lsc4'),('Beagle0917','walle3344',173,'洪小裕','beagle0917@gmail.com','z3sv7g3uk9'),('denischad650617','chad6885',174,'萬業隨身','denischad650617@msn.com','px4xamboqs'),('eve','trv104',175,'Evelyn','evelyn.yyang@yahoo.com','xj90cjkzdm'),('Erichome5598','rita5865',176,'Eric Chiang','erichome5598@gmail.com','jkcdrrh61r'),('ros092','ava521',177,'李小恩','ros092@pchome.com.tw','opd6rc2o6i'),('jo2000','2000',178,'YOKO','jo_yoko@Hotmail.com','hbtpiljdh9'),('typer7677','love760626',179,'Summer','typer7677@gmail.com','b6fr6nuanz'),('add449057','bj5520',180,'珍～誠～凱','add449057@yahoo.com.tw','6vse7chcwr'),('s21100116','zxcvbn123',182,'miao','s21100116@yahoo.com.tw','3dnhov3u11'),('zca78911cab','qq7709168412',183,'雯雯','zca78911cab@yahoo.com.tw','zojeob0q4m'),('yench1eh_0224','card58',184,'card58','wenner888@hotmail.com','s4ia2iwwkp'),('vivi0416','vivi0527',185,'達','vivi0416@hotmail.com','1e1stvf3ye'),('abullet','8087',186,'法國佬','abullet@pchome.com.tw','oawbsqdvui'),('jv0827','jvjv03',187,'Vera','jv0827@hotmail.com','nno1zhmqsl'),('a524178','a524178',188,'郭小宇','a0929524178@yahoo.com.tw','ye87i3ghf5'),('mei6789888','35363536',190,'michelle lo','mei6789888','7ccleye9ou'),('Angle52020@yahoo.com.tw','aa640116',191,'張雅慧','Angle52020@yahoo.com.tw','w96qsrequq'),('twin3957','zxcv0125',194,'twin','twin3957@yahoo.com.tw','qdanix2bze'),('joe81185','itd019',195,'徐光頭','it9413060019@gmail.com','d3sa0t8fkf'),('min','min',196,'min','lyntien@gmail.com','92peyll7l0'),('callabee','pz740628',197,'Calla','calla_0628@hotmail.com','v4gumjyxqf'),('huangpc0319','pc)(%*157995',200,'凱文','huangpc0319@163.com',NULL),('dddale830104','2u42u4',201,'睡美人','dddale830104@gmail.com','96klxnqpvy'),('morriswang','91305832',202,'mw','morriswang0328@gmail.com','55oyo2fq3a'),('mani210124','colin@210#',203,'Christina','mani210124@gmail.com','5k91z0llx1'),('iren1972@yahoo.com.tw','s222736',204,'宜珮','iren1972@yahoo.com.tw','kswqsup1ue'),('miss38','uio99811',205,'tammy','miss7209@gmail.com','5z17tgx6vb'),('voyager','ncc1701',206,'Voyager','voyager0328@gmail.com','7v6si71drr'),('ddbox','2040',207,'skye','kktt2040@gmail.com','67s0ponksj'),('ching','volley09220130',208,'Hui-Ching Chang','ching23025@gmail.com.tw','lxodmp9pkm'),('helen519','jill8899',210,'STEVEN','ts940124@gmail.com','unmm7wm1kg'),('qm432310','0428',211,'芊','qm432310@gmail.com','b4rfyxxdln'),('yj22c15','yj541502',212,'yuju','yj22c15@gmail.com','v3b1ji39ho'),('Ha','ariel340',213,'Ha','a0972183982','xh83z0cfkh'),('miao','miao',214,'miao','s21100116@yahoo.com.tw','g4nessjht8'),('star3a315155','YanRu123',215,'葛晏如','star015131@gmail.com','g1urxf0aln'),('chiumi001','asd456zxc',216,'希筱晶','chiumi001@hotmail.com','3352nyc7db'),('ven','des0927',217,'kg','d19850927@yahoo.com.tw','8rmir8k4wm'),('u8301008','martin001',218,'Martin','mr_wu_tw@yahoo.com.tw','d9bidrgoxe'),('Carrie','w94811106',220,'林慧如','a0922139103@gmail.com','3mdx71g93k'),('juicy8589','tt294111',221,'Joyce','juicy8589@yahoo.com.tw','cg3m80wcmq'),('show','1234',222,'show','show686868@gmail.com','n5m55plqpb'),('cch2260897','def456#!123',223,'黃振全','cch2260897@gmail.com','t3lpx25y3r'),('chiaosh@hotmail.com','a6688aa',224,' hiao','chiaosh@hotmail.com','1wtvrika00'),('tina880117','zz663362123',225,'王子庭','tina880117@yahoo.com.tw','9qawktle5y'),('gisllas','blues1007',226,'Chou po chin','ein58@yahoo.com.tw','9cwihxptx3'),('win1203','Fz25714889',227,'連小菲','cscd1915@gmail.com','zy5dvzohnj'),('Gozo93920','ll300322',228,'俏妞兒','gozo93920@yahoo.com.twgozo','cta449o7kt'),('arline1979@gmail.com','ha980904',229,'郭文羚','arline1979@gmail.com','qtn4z9c60x'),('winnie','1236',230,'winnie','uncreature0122@gmail.com','');
/*!40000 ALTER TABLE `mytripApp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_handle_693a924207fa6ae_uniq` (`handle`,`server_url`),
  KEY `social_auth_association_28e32fb0` (`issued`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_timestamp_3833ba21ef52524a_uniq` (`timestamp`,`salt`,`server_url`),
  KEY `social_auth_nonce_d7e6d55b` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_2f763109e2c4a1fb_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_6340c63c` (`user_id`),
  CONSTRAINT `user_id_refs_id_529c317860fa311b` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,2,'facebook','859068324133028','{\"access_token\": \"CAAGlvF3a4iUBAIYVSHItZA9RBH596I9YkHZCOaKOyWpvSoxJYZCnQep9LnUOKuE4smZB1xfUIL3ZB4tRlYA3qKqgdJgsEbwk22xtPVPpIyGvUygDiDJ2NUVAx0RdqYjI0m95yZBDUuQ4gDjB6N0mrKvDCtgSH1A5ZBiq2ZCO5LOAA98XqSZBgZCvyVo5YqtFwZB7MpKqxZAJg42CTmGkwtOoijbP\", \"expires\": \"5183998\", \"id\": \"859068324133028\"}'),(2,1,'facebook','883073238370098','{\"access_token\": \"CAAGlvF3a4iUBAGons8ZAPsNmobNunrzXSE0ZCCdtGDco4yKJ5u2ZA2y1kIQc6tOZBmYc6CWPPzlCxwjsZArehjZAZCSM43gophEuawPyxmX9fNxHma6g0kvtkjgWG0TmCn58CwrQfbcf4lLfZCs5lX98r3JZAiUQZBGUXqG2bIy6asTAO34jo9sa53k2rQ0XGKAcV9xAFsBKZCGrOiJbmkZB0S40\", \"expires\": \"5173233\", \"id\": \"883073238370098\"}');
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'mytrip','0001_initial','2014-05-13 16:30:37'),(2,'mytrip','0002_addlocal','2014-05-29 16:38:38'),(3,'mytrip','0003_add_mobile_column','2014-07-05 08:32:48'),(4,'mytrip','0004_auto__chg_field_local_latitude__chg_field_local_longitude','2014-07-07 04:14:37'),(5,'mytrip','0005_auto__chg_field_local_latitude__chg_field_local_longitude','2014-07-07 04:14:38'),(6,'mytrip','0006_auto__del_trip_perform__del_trip_location__del_trip','2014-07-09 06:59:00'),(7,'mytrip','0007_auto__add_trip','2014-07-09 07:00:14'),(8,'mytrip','0008_auto__add_trip_location','2014-07-09 07:03:58'),(9,'mytrip','0009_auto__add_trip_perform','2014-07-09 07:19:34'),(10,'mytrip','0010_auto__add_unique_user_user_id__chg_field_user_idnum','2014-07-10 05:14:52'),(11,'mytrip','0011_add_mobile_column','2014-11-19 10:19:35'),(12,'social_auth','0001_initial','2014-11-19 10:41:30'),(13,'social_auth','0002_auto__add_unique_nonce_timestamp_salt_server_url__add_unique_associati','2014-11-19 10:41:30'),(14,'mytrip','0012_auto__add_field_trip_likes','2014-11-27 22:35:24'),(18,'mytrip','0013_auto__add_field_trip_counts','2014-12-19 23:31:26'),(19,'mytrip','0014_auto__del_collect','2014-12-19 23:39:56'),(20,'mytrip','0015_auto__add_collect','2014-12-19 23:40:30'),(21,'mytrip','0016_auto__del_collect','2014-12-19 23:52:54'),(22,'mytrip','0017_auto__add_collect__add_unique_collect_userid_ctrip','2014-12-19 23:53:10'),(27,'mytrip','0018_auto__chg_field_trip_location_no','2014-12-21 00:13:04'),(28,'mytrip','0019_auto__chg_field_trip_location_no','2014-12-21 00:19:52'),(29,'mytrip','0020_auto__chg_field_trip_location_no','2014-12-21 00:20:37'),(30,'mytrip','0021_auto__add_field_trip_location_traffic','2014-12-23 23:26:35'),(31,'mytrip','0022_auto__add_pointofinterest','2014-12-28 20:23:22'),(32,'mytrip','0023_auto__del_pointofinterest','2015-01-10 13:23:26'),(33,'django_facebook','0001_initial','2015-01-10 13:40:46'),(34,'mytrip','0024_auto__del_field_trip_location_traffic__add_field_trip_location_transpo','2015-01-29 14:10:47');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-13 14:59:32
