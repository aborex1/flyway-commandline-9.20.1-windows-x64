-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'zwM3ckuxS7wD0eVfUVTKYaObToKaSBPP',1,'2023-07-10 00:31:40','2023-07-10 00:31:40','2023-07-10 00:31:40'),(2,2,'Hlg44fvcCaKMHVSBItTMWJEchiDSMcI4',1,'2023-07-10 00:31:40','2023-07-10 00:31:40','2023-07-10 00:31:40');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2028-07-10 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(2,'Make your Breakfast','2028-07-10 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(3,'The best Organic','2028-07-10 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(4,'Bring nature into your home','2028-07-10 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(5,'Delivered to your home','2028-07-10 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(6,'Save 17% on Oganic Juice','2028-07-10 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(7,'Everyday Fresh & Clean with Our Products','2028-07-10 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(8,'The best Organic Products Online','2028-07-10 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(9,'Everyday Fresh with Our Products','2028-07-10 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(10,'100% guaranteed all Fresh items','2028-07-10 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(11,'Special grocery sale off this month','2028-07-10 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1),(12,'Enjoy 15% OFF for all vegetable and fruit','2028-07-10 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2023-07-10 00:31:41','2023-07-10 00:31:41',1);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Optio quo cupiditate ut quaerat ullam soluta non. Laborum in tempora facere voluptatem aliquid eaque officiis. Vel voluptatem nam dicta ut. Consectetur ratione similique itaque at animi autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(2,'Fashion',0,'Dolor ipsum pariatur quas fugit sint non ducimus ex. Eius porro a iusto quia. Quisquam et ratione iusto ipsam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(3,'Electronic',0,'Ipsam dolores quae repellat minima vel voluptatem qui. Iusto deserunt quae corporis ullam cum. Sit quos quos voluptatem et et debitis ut. Iusto et rerum qui laboriosam ut tempore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(4,'Commercial',0,'Veritatis ipsam nihil fugiat autem quas itaque officiis. Vel nihil hic et qui aut. Enim et error numquam omnis. Ut voluptas ut repellat nam ut distinctio.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-07-10 00:31:40','2023-07-10 00:31:40');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2023-07-10 00:31:29','2023-07-10 00:31:29');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(2,'EUR','€',0,2,1,0,0.84,'2023-07-10 00:31:29','2023-07-10 00:31:29'),(3,'VND','₫',0,0,2,0,23203,'2023-07-10 00:31:29','2023-07-10 00:31:29');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Mrs. Caterina Schumm PhD','customer@botble.com','+12349966113','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',1,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','38758'),(2,'Mrs. Caterina Schumm PhD','customer@botble.com','+16288352603','GS','Wyoming','Friesenborough','7847 Goldner Ranch',1,0,'2023-07-10 00:31:36','2023-07-10 00:31:36','76296'),(3,'Maximo Sporer','vendor@botble.com','+18039666579','MK','Indiana','Hilpertton','35780 Estelle Trafficway',2,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','80982'),(4,'Maximo Sporer','vendor@botble.com','+15858699017','HT','Tennessee','Port Hiramstad','124 Verona Port Suite 206',2,0,'2023-07-10 00:31:36','2023-07-10 00:31:36','35527-6477'),(5,'Imani Mueller','ivonrueden@example.net','+19543077586','MQ','New Hampshire','Schmidtborough','202 Schneider Skyway',3,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','76490-7460'),(6,'Diana Aufderhar','berenice49@example.com','+15345888473','BY','Oregon','North Tatyana','915 Hilpert Ridges Suite 689',4,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','57806-5288'),(7,'Caleigh Brekke','carol.schultz@example.com','+18634461195','KN','Utah','Brauliomouth','573 Isabell Harbors',5,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','44569'),(8,'Agnes Hermiston Sr.','leonora33@example.org','+14258433596','GU','Colorado','South Kaleigh','57363 Cole Wall Apt. 306',6,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','49748-7141'),(9,'Dr. Kole Mayert Jr.','anastacio99@example.org','+12312550465','CC','Tennessee','New Ethaborough','702 Brandy Park',7,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','38891'),(10,'Roscoe Kiehn','chanelle88@example.org','+18325146889','VG','Kentucky','Port Jessie','758 Wilfredo Mountain',8,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','05274-8085'),(11,'Dr. Daren Mann','dagmar99@example.com','+19722615406','PY','New Jersey','Denesikchester','32082 Stehr Divide',9,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','67503'),(12,'Viva Rau III','labadie.austen@example.org','+19722712911','IL','North Carolina','Lowemouth','90345 Emmerich Knolls',10,1,'2023-07-10 00:31:36','2023-07-10 00:31:36','61870-4843');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Mrs. Caterina Schumm PhD','customer@botble.com','$2y$10$a9Uz8kwlGPuKkPoZSrRamed89UlNniBLZjucS.MT1PsM2kPNHfLLq','customers/7.jpg','1991-06-30','+19034397317',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:36','2023-07-10 07:31:36',NULL,'activated',0,NULL),(2,'Maximo Sporer','vendor@botble.com','$2y$10$wkezoMvR8OSUH7eqPzyHJOskDxSE6GXdw2H8jGMuPI99bAwrly/oq','customers/5.jpg','1976-06-18','+17402129464',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:43','2023-07-10 07:31:36',NULL,'activated',1,'2023-07-10 07:31:43'),(3,'Imani Mueller','ivonrueden@example.net','$2y$10$Uv5UfixxpFIaJvVSm21QSeZ0iLG5FgpHh10wAvevH2UzK8Vbj9OCS','customers/1.jpg','1996-06-18','+12036230785',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:43','2023-07-10 07:31:36',NULL,'activated',1,'2023-07-10 07:31:43'),(4,'Diana Aufderhar','berenice49@example.com','$2y$10$GYFySKVjCc18cm7zQNiqMOviJckXHisZQt/WEZtfkOk7ta6sT5qQ6','customers/2.jpg','1974-06-27','+19802200516',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:43','2023-07-10 07:31:36',NULL,'activated',1,'2023-07-10 07:31:43'),(5,'Caleigh Brekke','carol.schultz@example.com','$2y$10$vMh9M02xbRqgCO5E7.ylYO1QvG3ll6PO2KvdsPWKQOiaFxySHb9Ci','customers/3.jpg','1996-06-25','+14049423522',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:44','2023-07-10 07:31:36',NULL,'activated',1,'2023-07-10 07:31:44'),(6,'Agnes Hermiston Sr.','leonora33@example.org','$2y$10$wuOYWE29JSFe.orJjZv.T.Xd/MkRGb4Cwz.U4cZTlGK0e2VO8XKE6','customers/4.jpg','1994-06-21','+12482905315',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:44','2023-07-10 07:31:36',NULL,'activated',1,'2023-07-10 07:31:44'),(7,'Dr. Kole Mayert Jr.','anastacio99@example.org','$2y$10$Z/v9Hxe0z3qMpbPkj1HsBurHqUiVs7QlMotdFeS30.UCH3p5OokDG','customers/5.jpg','2002-06-21','+14233024757',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:36','2023-07-10 07:31:36',NULL,'activated',0,NULL),(8,'Roscoe Kiehn','chanelle88@example.org','$2y$10$OjNaWWJya4OeKsDhGPmKz.Ec.AJ/8DajPgKUQ5nVlaWnK/CBglO4y','customers/6.jpg','1977-06-12','+13204942160',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:44','2023-07-10 07:31:36',NULL,'activated',1,'2023-07-10 07:31:44'),(9,'Dr. Daren Mann','dagmar99@example.com','$2y$10$r8IWV2fyR50j.FZAZS0Jt.iAroHXjt3MmpI15jlz7Ik9UjdKsQD16','customers/7.jpg','1990-07-08','+15407095933',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:36','2023-07-10 07:31:36',NULL,'activated',0,NULL),(10,'Viva Rau III','labadie.austen@example.org','$2y$10$k1/NKRA6r9exBGERcswCu.vHDJXGXinbw2olDNwXRT3R7zmM.H/A.','customers/8.jpg','2002-06-11','+18207738046',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:44','2023-07-10 07:31:36',NULL,'activated',1,'2023-07-10 07:31:44');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,225.25,10,4),(2,1,79.5,8,5),(3,14,102.34,12,1),(4,21,99.12,15,3),(5,11,75.4,6,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2023-08-19 00:00:00','published','2023-07-10 00:31:37','2023-07-10 00:31:37'),(2,'Flash sale 2','2023-08-13 00:00:00','published','2023-07-10 00:31:37','2023-07-10 00:31:37'),(3,'Flash sale 3','2023-08-09 00:00:00','published','2023-07-10 00:31:37','2023-07-10 00:31:37'),(4,'Flash sale 4','2023-08-27 00:00:00','published','2023-07-10 00:31:37','2023-07-10 00:31:37'),(5,'Flash sale 5','2023-08-18 00:00:00','published','2023-07-10 00:31:37','2023-07-10 00:31:37');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(1,2,'2 Year',10,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(1,3,'3 Year',20,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(2,4,'4GB',0,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(2,5,'8GB',10,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(2,6,'16GB',20,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(3,7,'Core i5',0,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(3,8,'Core i7',10,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(3,9,'Core i9',20,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(4,10,'128GB',0,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(4,11,'256GB',10,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(4,12,'512GB',20,9999,0,'2023-07-10 00:31:42','2023-07-10 00:31:42');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-07-10 00:31:42','2023-07-10 00:31:42'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-07-10 00:31:42','2023-07-10 00:31:42');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',26,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1-1.jpg',1,265.00,265.00,0.00,0.00,265.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(2,1,'Botble\\Ecommerce\\Models\\Product',73,'All Natural Italian-Style Chicken Meatballs',NULL,'products/18-1.jpg',1,126.00,126.00,0.00,0.00,126.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(3,2,'Botble\\Ecommerce\\Models\\Product',36,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',3,48.00,144.00,0.00,0.00,144.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(4,3,'Botble\\Ecommerce\\Models\\Product',41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',2,118.00,236.00,0.00,0.00,236.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(5,4,'Botble\\Ecommerce\\Models\\Product',27,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',2,265.00,530.00,0.00,0.00,530.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(6,5,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',1,116.00,116.00,0.00,0.00,116.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(7,6,'Botble\\Ecommerce\\Models\\Product',27,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',1,265.00,265.00,0.00,0.00,265.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(8,7,'Botble\\Ecommerce\\Models\\Product',51,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11-1.jpg',2,116.00,232.00,0.00,0.00,232.00,'[]','2023-07-10 00:31:44','2023-07-10 00:31:44'),(9,8,'Botble\\Ecommerce\\Models\\Product',34,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3-1.jpg',3,296.00,888.00,0.00,0.00,888.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(10,9,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',2,116.00,232.00,0.00,0.00,232.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(11,10,'Botble\\Ecommerce\\Models\\Product',57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13-1.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(12,10,'Botble\\Ecommerce\\Models\\Product',67,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16-1.jpg',3,126.00,378.00,0.00,0.00,378.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(13,11,'Botble\\Ecommerce\\Models\\Product',59,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',2,119.00,238.00,0.00,0.00,238.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(14,12,'Botble\\Ecommerce\\Models\\Product',71,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',2,111.00,222.00,0.00,0.00,222.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(15,13,'Botble\\Ecommerce\\Models\\Product',38,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',3,48.00,144.00,0.00,0.00,144.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(16,14,'Botble\\Ecommerce\\Models\\Product',44,'Encore Seafoods Stuffed Alaskan',NULL,'products/8-1.jpg',3,118.00,354.00,0.00,0.00,354.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(17,15,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',2,116.00,232.00,0.00,0.00,232.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(18,15,'Botble\\Ecommerce\\Models\\Product',52,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(19,16,'Botble\\Ecommerce\\Models\\Product',30,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',2,443.00,886.00,0.00,0.00,886.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(20,16,'Botble\\Ecommerce\\Models\\Product',57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13-1.jpg',2,130.00,260.00,0.00,0.00,260.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(21,17,'Botble\\Ecommerce\\Models\\Product',40,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',2,55.00,110.00,0.00,0.00,110.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(22,18,'Botble\\Ecommerce\\Models\\Product',37,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5-1.jpg',2,48.00,96.00,0.00,0.00,96.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(23,19,'Botble\\Ecommerce\\Models\\Product',53,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',1,116.00,116.00,0.00,0.00,116.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(24,20,'Botble\\Ecommerce\\Models\\Product',83,'Chen Watermelon (Digital)',NULL,'products/21.jpg',3,118.00,354.00,0.00,0.00,354.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(25,21,'Botble\\Ecommerce\\Models\\Product',47,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9-1.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(26,22,'Botble\\Ecommerce\\Models\\Product',49,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10.jpg',2,431.00,862.00,0.00,0.00,862.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(27,23,'Botble\\Ecommerce\\Models\\Product',88,'Colorful Banana',NULL,'products/23-1.jpg',1,127.00,127.00,0.00,0.00,127.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(28,24,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',1,265.00,265.00,0.00,0.00,265.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(29,24,'Botble\\Ecommerce\\Models\\Product',60,'Organic Frozen Triple Berry Blend',NULL,'products/14-1.jpg',3,119.00,357.00,0.00,0.00,357.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(30,25,'Botble\\Ecommerce\\Models\\Product',68,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16-2.jpg',1,126.00,126.00,0.00,0.00,126.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(31,26,'Botble\\Ecommerce\\Models\\Product',40,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',1,55.00,55.00,0.00,0.00,55.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(32,27,'Botble\\Ecommerce\\Models\\Product',49,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10.jpg',2,431.00,862.00,0.00,0.00,862.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(33,27,'Botble\\Ecommerce\\Models\\Product',57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13-1.jpg',1,130.00,130.00,0.00,0.00,130.00,'[]','2023-07-10 00:31:45','2023-07-10 00:31:45'),(34,28,'Botble\\Ecommerce\\Models\\Product',63,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',1,119.00,119.00,0.00,0.00,119.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(35,29,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',3,265.00,795.00,0.00,0.00,795.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(36,29,'Botble\\Ecommerce\\Models\\Product',75,'Simply Lemonade with Raspberry Juice',NULL,'products/19-1.jpg',2,117.00,234.00,0.00,0.00,234.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(37,30,'Botble\\Ecommerce\\Models\\Product',36,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',1,48.00,48.00,0.00,0.00,48.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(38,31,'Botble\\Ecommerce\\Models\\Product',67,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16-1.jpg',3,126.00,378.00,0.00,0.00,378.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(39,32,'Botble\\Ecommerce\\Models\\Product',34,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3-1.jpg',3,296.00,888.00,0.00,0.00,888.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(40,33,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',1,116.00,116.00,0.00,0.00,116.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(41,34,'Botble\\Ecommerce\\Models\\Product',62,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',1,119.00,119.00,0.00,0.00,119.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(42,35,'Botble\\Ecommerce\\Models\\Product',79,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20.jpg',2,115.00,230.00,0.00,0.00,230.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(43,36,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',1,265.00,265.00,0.00,0.00,265.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(44,37,'Botble\\Ecommerce\\Models\\Product',38,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',1,48.00,48.00,0.00,0.00,48.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(45,38,'Botble\\Ecommerce\\Models\\Product',38,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',3,48.00,144.00,0.00,0.00,144.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(46,39,'Botble\\Ecommerce\\Models\\Product',44,'Encore Seafoods Stuffed Alaskan',NULL,'products/8-1.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(47,39,'Botble\\Ecommerce\\Models\\Product',81,'Chen Watermelon (Digital)',NULL,'products/21.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(48,40,'Botble\\Ecommerce\\Models\\Product',49,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10.jpg',1,431.00,431.00,0.00,0.00,431.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(49,41,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(50,42,'Botble\\Ecommerce\\Models\\Product',56,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(51,43,'Botble\\Ecommerce\\Models\\Product',71,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',2,111.00,222.00,0.00,0.00,222.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(52,44,'Botble\\Ecommerce\\Models\\Product',35,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',3,90.00,270.00,0.00,0.00,270.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(53,45,'Botble\\Ecommerce\\Models\\Product',48,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(54,46,'Botble\\Ecommerce\\Models\\Product',66,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16.jpg',2,126.00,252.00,0.00,0.00,252.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(55,47,'Botble\\Ecommerce\\Models\\Product',84,'Chen Watermelon (Digital)',NULL,'products/21.jpg',3,118.00,354.00,0.00,0.00,354.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(56,48,'Botble\\Ecommerce\\Models\\Product',45,'Encore Seafoods Stuffed Alaskan',NULL,'products/8.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-07-10 00:31:46','2023-07-10 00:31:46'),(57,49,'Botble\\Ecommerce\\Models\\Product',86,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',1,128.00,128.00,0.00,0.00,128.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47'),(58,50,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',3,265.00,795.00,0.00,0.00,795.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47'),(59,50,'Botble\\Ecommerce\\Models\\Product',63,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',3,119.00,357.00,0.00,0.00,357.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47'),(60,51,'Botble\\Ecommerce\\Models\\Product',33,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',1,296.00,296.00,0.00,0.00,296.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47'),(61,52,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',1,116.00,116.00,0.00,0.00,116.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47'),(62,53,'Botble\\Ecommerce\\Models\\Product',31,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2-1.jpg',1,443.00,443.00,0.00,0.00,443.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47'),(63,54,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47'),(64,55,'Botble\\Ecommerce\\Models\\Product',61,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',1,119.00,119.00,0.00,0.00,119.00,'[]','2023-07-10 00:31:47','2023-07-10 00:31:47');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,391.00,0.00,0.00,0.00,'1','default',NULL,NULL,391.00,NULL,1,'completed','2023-07-10 00:31:44','2023-07-06 16:31:44','2023-07-10 00:31:44'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,144.00,0.00,0.00,0.00,'1','default',NULL,NULL,144.00,NULL,2,'completed','2023-07-10 00:31:44','2023-06-25 00:31:44','2023-07-10 00:31:44'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,236.00,0.00,0.00,0.00,'1','default',NULL,NULL,236.00,NULL,3,'completed','2023-07-10 00:31:44','2023-06-26 16:31:44','2023-07-10 00:31:44'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,530.00,0.00,0.00,0.00,'1','default',NULL,NULL,530.00,NULL,4,'completed','2023-07-10 00:31:44','2023-07-06 20:31:44','2023-07-10 00:31:44'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,116.00,0.00,0.00,0.00,'1','default',NULL,NULL,116.00,NULL,5,'completed','2023-07-10 00:31:44','2023-06-27 08:31:44','2023-07-10 00:31:44'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,265.00,0.00,0.00,0.00,'1','default',NULL,NULL,265.00,NULL,6,'completed','2023-07-10 00:31:44','2023-07-04 00:31:44','2023-07-10 00:31:44'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,232.00,0.00,0.00,0.00,'1','default',NULL,NULL,232.00,NULL,7,'completed','2023-07-10 00:31:44','2023-07-08 12:31:44','2023-07-10 00:31:44'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,888.00,0.00,0.00,0.00,'1','default',NULL,NULL,888.00,NULL,8,'completed','2023-07-10 00:31:45','2023-07-04 08:31:45','2023-07-10 00:31:45'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,232.00,0.00,0.00,0.00,'1','default',NULL,NULL,232.00,NULL,9,'completed','2023-07-10 00:31:45','2023-07-02 22:31:45','2023-07-10 00:31:45'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,768.00,0.00,0.00,0.00,'1','default',NULL,NULL,768.00,NULL,10,'completed','2023-07-10 00:31:45','2023-07-04 16:31:45','2023-07-10 00:31:45'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,238.00,0.00,0.00,0.00,'1','default',NULL,NULL,238.00,NULL,11,'pending',NULL,'2023-06-28 00:31:45','2023-07-10 00:31:45'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,222.00,0.00,0.00,0.00,'1','default',NULL,NULL,222.00,NULL,12,'completed','2023-07-10 00:31:45','2023-07-06 00:31:45','2023-07-10 00:31:45'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,144.00,0.00,0.00,0.00,'1','default',NULL,NULL,144.00,NULL,13,'completed','2023-07-10 00:31:45','2023-07-07 12:31:45','2023-07-10 00:31:45'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,354.00,0.00,0.00,0.00,'1','default',NULL,NULL,354.00,NULL,14,'completed','2023-07-10 00:31:45','2023-07-01 06:31:45','2023-07-10 00:31:45'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,580.00,0.00,0.00,0.00,'1','default',NULL,NULL,580.00,NULL,15,'completed','2023-07-10 00:31:45','2023-06-28 18:31:45','2023-07-10 00:31:45'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,1146.00,0.00,0.00,0.00,'1','default',NULL,NULL,1146.00,NULL,16,'completed','2023-07-10 00:31:45','2023-06-29 12:31:45','2023-07-10 00:31:45'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,110.00,0.00,0.00,0.00,'1','default',NULL,NULL,110.00,NULL,17,'completed','2023-07-10 00:31:45','2023-06-29 12:31:45','2023-07-10 00:31:45'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,96.00,0.00,0.00,0.00,'1','default',NULL,NULL,96.00,NULL,18,'pending',NULL,'2023-07-03 12:31:45','2023-07-10 00:31:45'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,116.00,0.00,0.00,0.00,'1','default',NULL,NULL,116.00,NULL,19,'completed','2023-07-10 00:31:45','2023-07-05 16:31:45','2023-07-10 00:31:45'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,354.00,0.00,0.00,0.00,'1','default',NULL,NULL,354.00,NULL,20,'completed','2023-07-10 00:31:45','2023-07-04 14:31:45','2023-07-10 00:31:45'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,348.00,0.00,0.00,0.00,'1','default',NULL,NULL,348.00,NULL,21,'completed','2023-07-10 00:31:45','2023-07-01 00:31:45','2023-07-10 00:31:45'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,862.00,0.00,0.00,0.00,'1','default',NULL,NULL,862.00,NULL,22,'completed','2023-07-10 00:31:45','2023-07-03 00:31:45','2023-07-10 00:31:45'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,127.00,0.00,0.00,0.00,'1','default',NULL,NULL,127.00,NULL,23,'completed','2023-07-10 00:31:45','2023-07-06 00:31:45','2023-07-10 00:31:45'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,622.00,0.00,0.00,0.00,'1','default',NULL,NULL,622.00,NULL,24,'completed','2023-07-10 00:31:45','2023-07-09 02:31:45','2023-07-10 00:31:45'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,126.00,0.00,0.00,0.00,'1','default',NULL,NULL,126.00,NULL,25,'completed','2023-07-10 00:31:45','2023-07-05 10:31:45','2023-07-10 00:31:45'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,55.00,0.00,0.00,0.00,'1','default',NULL,NULL,55.00,NULL,26,'completed','2023-07-10 00:31:45','2023-07-07 12:31:45','2023-07-10 00:31:45'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,992.00,0.00,0.00,0.00,'1','default',NULL,NULL,992.00,NULL,27,'completed','2023-07-10 00:31:45','2023-07-05 00:31:45','2023-07-10 00:31:45'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,119.00,0.00,0.00,0.00,'1','default',NULL,NULL,119.00,NULL,28,'completed','2023-07-10 00:31:46','2023-07-02 12:31:45','2023-07-10 00:31:46'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,1029.00,0.00,0.00,0.00,'1','default',NULL,NULL,1029.00,NULL,29,'completed','2023-07-10 00:31:46','2023-07-04 18:31:46','2023-07-10 00:31:46'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,48.00,0.00,0.00,0.00,'1','default',NULL,NULL,48.00,NULL,30,'pending',NULL,'2023-07-03 06:31:46','2023-07-10 00:31:46'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,378.00,0.00,0.00,0.00,'1','default',NULL,NULL,378.00,NULL,31,'completed','2023-07-10 00:31:46','2023-07-07 18:31:46','2023-07-10 00:31:46'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,888.00,0.00,0.00,0.00,'1','default',NULL,NULL,888.00,NULL,32,'completed','2023-07-10 00:31:46','2023-07-07 08:31:46','2023-07-10 00:31:46'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,116.00,0.00,0.00,0.00,'1','default',NULL,NULL,116.00,NULL,33,'completed','2023-07-10 00:31:46','2023-07-06 00:31:46','2023-07-10 00:31:46'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,119.00,0.00,0.00,0.00,'1','default',NULL,NULL,119.00,NULL,34,'completed','2023-07-10 00:31:46','2023-07-04 00:31:46','2023-07-10 00:31:46'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,230.00,0.00,0.00,0.00,'1','default',NULL,NULL,230.00,NULL,35,'completed','2023-07-10 00:31:46','2023-07-05 08:31:46','2023-07-10 00:31:46'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,265.00,0.00,0.00,0.00,'1','default',NULL,NULL,265.00,NULL,36,'completed','2023-07-10 00:31:46','2023-07-04 18:31:46','2023-07-10 00:31:46'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,48.00,0.00,0.00,0.00,'1','default',NULL,NULL,48.00,NULL,37,'pending',NULL,'2023-07-04 04:31:46','2023-07-10 00:31:46'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,144.00,0.00,0.00,0.00,'1','default',NULL,NULL,144.00,NULL,38,'completed','2023-07-10 00:31:46','2023-07-06 00:31:46','2023-07-10 00:31:46'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,236.00,0.00,0.00,0.00,'1','default',NULL,NULL,236.00,NULL,39,'pending',NULL,'2023-07-08 12:31:46','2023-07-10 00:31:46'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,431.00,0.00,0.00,0.00,'1','default',NULL,NULL,431.00,NULL,40,'completed','2023-07-10 00:31:46','2023-07-06 00:31:46','2023-07-10 00:31:46'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,348.00,0.00,0.00,0.00,'1','default',NULL,NULL,348.00,NULL,41,'completed','2023-07-10 00:31:46','2023-07-06 16:31:46','2023-07-10 00:31:46'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,390.00,0.00,0.00,0.00,'1','default',NULL,NULL,390.00,NULL,42,'completed','2023-07-10 00:31:46','2023-07-05 20:31:46','2023-07-10 00:31:46'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,222.00,0.00,0.00,0.00,'1','default',NULL,NULL,222.00,NULL,43,'pending',NULL,'2023-07-08 18:31:46','2023-07-10 00:31:46'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,270.00,0.00,0.00,0.00,'1','default',NULL,NULL,270.00,NULL,44,'completed','2023-07-10 00:31:46','2023-07-07 16:31:46','2023-07-10 00:31:46'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,348.00,0.00,0.00,0.00,'1','default',NULL,NULL,348.00,NULL,45,'completed','2023-07-10 00:31:46','2023-07-08 00:31:46','2023-07-10 00:31:46'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,252.00,0.00,0.00,0.00,'1','default',NULL,NULL,252.00,NULL,46,'completed','2023-07-10 00:31:46','2023-07-08 16:31:46','2023-07-10 00:31:46'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Dr. Kole Mayert Jr.','',NULL,'anastacio99@example.org','+12312550465','702 Brandy Park, New Ethaborough, Tennessee, CC',NULL,354.00,0.00,0.00,0.00,'1','default',NULL,NULL,354.00,NULL,47,'completed','2023-07-10 00:31:46','2023-07-09 16:31:46','2023-07-10 00:31:46'),(48,'Botble\\Ecommerce\\Models\\Order',48,'INV-48','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,118.00,0.00,0.00,0.00,'1','default',NULL,NULL,118.00,NULL,48,'completed','2023-07-10 00:31:46','2023-07-08 00:31:46','2023-07-10 00:31:46'),(49,'Botble\\Ecommerce\\Models\\Order',49,'INV-49','Dr. Daren Mann','',NULL,'dagmar99@example.com','+19722615406','32082 Stehr Divide, Denesikchester, New Jersey, PY',NULL,128.00,0.00,0.00,0.00,'1','default',NULL,NULL,128.00,NULL,49,'completed','2023-07-10 00:31:47','2023-07-08 06:31:46','2023-07-10 00:31:47'),(50,'Botble\\Ecommerce\\Models\\Order',50,'INV-50','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,1152.00,0.00,0.00,0.00,'1','default',NULL,NULL,1152.00,NULL,50,'pending',NULL,'2023-07-08 16:31:47','2023-07-10 00:31:47'),(51,'Botble\\Ecommerce\\Models\\Order',51,'INV-51','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,296.00,0.00,0.00,0.00,'1','default',NULL,NULL,296.00,NULL,51,'completed','2023-07-10 00:31:47','2023-07-08 12:31:47','2023-07-10 00:31:47'),(52,'Botble\\Ecommerce\\Models\\Order',52,'INV-52','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,116.00,0.00,0.00,0.00,'1','default',NULL,NULL,116.00,NULL,52,'completed','2023-07-10 00:31:47','2023-07-08 20:31:47','2023-07-10 00:31:47'),(53,'Botble\\Ecommerce\\Models\\Order',53,'INV-53','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,443.00,0.00,0.00,0.00,'1','default',NULL,NULL,443.00,NULL,53,'completed','2023-07-10 00:31:47','2023-07-09 10:31:47','2023-07-10 00:31:47'),(54,'Botble\\Ecommerce\\Models\\Order',54,'INV-54','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,348.00,0.00,0.00,0.00,'1','default',NULL,NULL,348.00,NULL,54,'pending',NULL,'2023-07-09 12:31:47','2023-07-10 00:31:47'),(55,'Botble\\Ecommerce\\Models\\Order',55,'INV-55','Mrs. Caterina Schumm PhD','',NULL,'customer@botble.com','+12349966113','50983 Clementina Rapid Apt. 619, Lake Sincere, Nevada, MD',NULL,119.00,0.00,0.00,0.00,'1','default',NULL,NULL,119.00,NULL,55,'completed','2023-07-10 00:31:47','2023-07-09 18:31:47','2023-07-10 00:31:47');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',1,'38891','shipping_address'),(2,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',2,'38891','shipping_address'),(3,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',3,'38891','shipping_address'),(4,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',4,'38758','shipping_address'),(5,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',5,'38758','shipping_address'),(6,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',6,'38758','shipping_address'),(7,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',7,'38758','shipping_address'),(8,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',8,'67503','shipping_address'),(9,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',9,'67503','shipping_address'),(10,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',10,'38758','shipping_address'),(11,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',11,'38758','shipping_address'),(12,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',12,'38758','shipping_address'),(13,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',13,'67503','shipping_address'),(14,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',14,'67503','shipping_address'),(15,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',15,'67503','shipping_address'),(16,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',16,'38758','shipping_address'),(17,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',17,'38758','shipping_address'),(18,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',18,'38891','shipping_address'),(19,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',19,'38891','shipping_address'),(20,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',20,'38891','shipping_address'),(21,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',21,'38758','shipping_address'),(22,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',22,'38758','shipping_address'),(23,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',23,'38758','shipping_address'),(24,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',24,'67503','shipping_address'),(25,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',25,'67503','shipping_address'),(26,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',26,'38891','shipping_address'),(27,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',27,'38891','shipping_address'),(28,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',28,'38891','shipping_address'),(29,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',29,'38758','shipping_address'),(30,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',30,'38758','shipping_address'),(31,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',31,'38758','shipping_address'),(32,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',32,'67503','shipping_address'),(33,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',33,'67503','shipping_address'),(34,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',34,'67503','shipping_address'),(35,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',35,'67503','shipping_address'),(36,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',36,'67503','shipping_address'),(37,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',37,'67503','shipping_address'),(38,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',38,'67503','shipping_address'),(39,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',39,'67503','shipping_address'),(40,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',40,'67503','shipping_address'),(41,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',41,'67503','shipping_address'),(42,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',42,'67503','shipping_address'),(43,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',43,'67503','shipping_address'),(44,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',44,'38891','shipping_address'),(45,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',45,'38891','shipping_address'),(46,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',46,'38891','shipping_address'),(47,'Dr. Kole Mayert Jr.','+12312550465','anastacio99@example.org','CC','Tennessee','New Ethaborough','702 Brandy Park',47,'38891','shipping_address'),(48,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',48,'67503','shipping_address'),(49,'Dr. Daren Mann','+19722615406','dagmar99@example.com','PY','New Jersey','Denesikchester','32082 Stehr Divide',49,'67503','shipping_address'),(50,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',50,'38758','shipping_address'),(51,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',51,'38758','shipping_address'),(52,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',52,'38758','shipping_address'),(53,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',53,'38758','shipping_address'),(54,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',54,'38758','shipping_address'),(55,'Mrs. Caterina Schumm PhD','+12349966113','customer@botble.com','MD','Nevada','Lake Sincere','50983 Clementina Rapid Apt. 619',55,'38758','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-07-06 16:31:44','2023-07-06 16:31:44'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-07-06 16:31:44','2023-07-06 16:31:44'),(3,'confirm_payment','Payment was confirmed (amount $391.00) by %user_name%',0,1,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-06-25 00:31:44','2023-06-25 00:31:44'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-06-25 00:31:44','2023-06-25 00:31:44'),(7,'confirm_payment','Payment was confirmed (amount $144.00) by %user_name%',0,2,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-06-26 16:31:44','2023-06-26 16:31:44'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-06-26 16:31:44','2023-06-26 16:31:44'),(11,'confirm_payment','Payment was confirmed (amount $236.00) by %user_name%',0,3,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-07-06 20:31:44','2023-07-06 20:31:44'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-07-06 20:31:44','2023-07-06 20:31:44'),(15,'confirm_payment','Payment was confirmed (amount $530.00) by %user_name%',0,4,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-06-27 08:31:44','2023-06-27 08:31:44'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-06-27 08:31:44','2023-06-27 08:31:44'),(20,'confirm_payment','Payment was confirmed (amount $116.00) by %user_name%',0,5,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-07-04 00:31:44','2023-07-04 00:31:44'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-07-04 00:31:44','2023-07-04 00:31:44'),(24,'confirm_payment','Payment was confirmed (amount $265.00) by %user_name%',0,6,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-07-08 12:31:44','2023-07-08 12:31:44'),(28,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-07-08 12:31:44','2023-07-08 12:31:44'),(29,'confirm_payment','Payment was confirmed (amount $232.00) by %user_name%',0,7,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(30,'create_shipment','Created shipment for order',0,7,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-07-04 08:31:45','2023-07-04 08:31:45'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-07-04 08:31:45','2023-07-04 08:31:45'),(33,'confirm_payment','Payment was confirmed (amount $888.00) by %user_name%',0,8,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(36,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-07-02 22:31:45','2023-07-02 22:31:45'),(37,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-07-02 22:31:45','2023-07-02 22:31:45'),(38,'confirm_payment','Payment was confirmed (amount $232.00) by %user_name%',0,9,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(39,'create_shipment','Created shipment for order',0,9,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-07-04 16:31:45','2023-07-04 16:31:45'),(41,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-07-04 16:31:45','2023-07-04 16:31:45'),(42,'confirm_payment','Payment was confirmed (amount $768.00) by %user_name%',0,10,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(43,'create_shipment','Created shipment for order',0,10,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(45,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-06-28 00:31:45','2023-06-28 00:31:45'),(46,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-06-28 00:31:45','2023-06-28 00:31:45'),(47,'create_shipment','Created shipment for order',0,11,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-07-06 00:31:45','2023-07-06 00:31:45'),(50,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-07-06 00:31:45','2023-07-06 00:31:45'),(51,'confirm_payment','Payment was confirmed (amount $222.00) by %user_name%',0,12,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(52,'create_shipment','Created shipment for order',0,12,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(53,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-07-07 12:31:45','2023-07-07 12:31:45'),(54,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-07-07 12:31:45','2023-07-07 12:31:45'),(55,'confirm_payment','Payment was confirmed (amount $144.00) by %user_name%',0,13,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(56,'create_shipment','Created shipment for order',0,13,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(57,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-07-01 06:31:45','2023-07-01 06:31:45'),(59,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-07-01 06:31:45','2023-07-01 06:31:45'),(60,'confirm_payment','Payment was confirmed (amount $354.00) by %user_name%',0,14,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(61,'create_shipment','Created shipment for order',0,14,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-06-28 18:31:45','2023-06-28 18:31:45'),(64,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-06-28 18:31:45','2023-06-28 18:31:45'),(65,'confirm_payment','Payment was confirmed (amount $580.00) by %user_name%',0,15,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(66,'create_shipment','Created shipment for order',0,15,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-06-29 12:31:45','2023-06-29 12:31:45'),(68,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-06-29 12:31:45','2023-06-29 12:31:45'),(69,'confirm_payment','Payment was confirmed (amount $1,146.00) by %user_name%',0,16,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(70,'create_shipment','Created shipment for order',0,16,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-06-29 12:31:45','2023-06-29 12:31:45'),(72,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-06-29 12:31:45','2023-06-29 12:31:45'),(73,'confirm_payment','Payment was confirmed (amount $110.00) by %user_name%',0,17,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(74,'create_shipment','Created shipment for order',0,17,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-07-03 12:31:45','2023-07-03 12:31:45'),(76,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-07-03 12:31:45','2023-07-03 12:31:45'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-07-05 16:31:45','2023-07-05 16:31:45'),(79,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-07-05 16:31:45','2023-07-05 16:31:45'),(80,'confirm_payment','Payment was confirmed (amount $116.00) by %user_name%',0,19,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(81,'create_shipment','Created shipment for order',0,19,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-07-04 14:31:45','2023-07-04 14:31:45'),(84,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-07-04 14:31:45','2023-07-04 14:31:45'),(85,'confirm_payment','Payment was confirmed (amount $354.00) by %user_name%',0,20,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(86,'create_shipment','Created shipment for order',0,20,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-07-01 00:31:45','2023-07-01 00:31:45'),(89,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-07-01 00:31:45','2023-07-01 00:31:45'),(90,'confirm_payment','Payment was confirmed (amount $348.00) by %user_name%',0,21,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(91,'create_shipment','Created shipment for order',0,21,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-07-03 00:31:45','2023-07-03 00:31:45'),(93,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-07-03 00:31:45','2023-07-03 00:31:45'),(94,'confirm_payment','Payment was confirmed (amount $862.00) by %user_name%',0,22,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(95,'create_shipment','Created shipment for order',0,22,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-07-06 00:31:45','2023-07-06 00:31:45'),(98,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-07-06 00:31:45','2023-07-06 00:31:45'),(99,'confirm_payment','Payment was confirmed (amount $127.00) by %user_name%',0,23,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(100,'create_shipment','Created shipment for order',0,23,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(101,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-07-09 02:31:45','2023-07-09 02:31:45'),(102,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-07-09 02:31:45','2023-07-09 02:31:45'),(103,'confirm_payment','Payment was confirmed (amount $622.00) by %user_name%',0,24,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(104,'create_shipment','Created shipment for order',0,24,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(105,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-07-05 10:31:45','2023-07-05 10:31:45'),(107,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-07-05 10:31:45','2023-07-05 10:31:45'),(108,'confirm_payment','Payment was confirmed (amount $126.00) by %user_name%',0,25,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(109,'create_shipment','Created shipment for order',0,25,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-07-07 12:31:45','2023-07-07 12:31:45'),(112,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-07-07 12:31:45','2023-07-07 12:31:45'),(113,'confirm_payment','Payment was confirmed (amount $55.00) by %user_name%',0,26,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(114,'create_shipment','Created shipment for order',0,26,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(115,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-07-05 00:31:45','2023-07-05 00:31:45'),(117,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-07-05 00:31:45','2023-07-05 00:31:45'),(118,'confirm_payment','Payment was confirmed (amount $992.00) by %user_name%',0,27,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(119,'create_shipment','Created shipment for order',0,27,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(120,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45'),(121,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-07-02 12:31:45','2023-07-02 12:31:45'),(122,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-07-02 12:31:45','2023-07-02 12:31:45'),(123,'confirm_payment','Payment was confirmed (amount $119.00) by %user_name%',0,28,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(124,'create_shipment','Created shipment for order',0,28,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(125,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-07-04 18:31:46','2023-07-04 18:31:46'),(127,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-07-04 18:31:46','2023-07-04 18:31:46'),(128,'confirm_payment','Payment was confirmed (amount $1,029.00) by %user_name%',0,29,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(129,'create_shipment','Created shipment for order',0,29,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(130,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-07-03 06:31:46','2023-07-03 06:31:46'),(132,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-07-03 06:31:46','2023-07-03 06:31:46'),(133,'create_shipment','Created shipment for order',0,30,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(134,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-07-07 18:31:46','2023-07-07 18:31:46'),(136,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-07-07 18:31:46','2023-07-07 18:31:46'),(137,'confirm_payment','Payment was confirmed (amount $378.00) by %user_name%',0,31,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(138,'create_shipment','Created shipment for order',0,31,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(139,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-07-07 08:31:46','2023-07-07 08:31:46'),(140,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-07-07 08:31:46','2023-07-07 08:31:46'),(141,'confirm_payment','Payment was confirmed (amount $888.00) by %user_name%',0,32,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(142,'create_shipment','Created shipment for order',0,32,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(143,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-07-06 00:31:46','2023-07-06 00:31:46'),(145,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-07-06 00:31:46','2023-07-06 00:31:46'),(146,'confirm_payment','Payment was confirmed (amount $116.00) by %user_name%',0,33,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(147,'create_shipment','Created shipment for order',0,33,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(148,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(149,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-07-04 00:31:46','2023-07-04 00:31:46'),(150,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-07-04 00:31:46','2023-07-04 00:31:46'),(151,'confirm_payment','Payment was confirmed (amount $119.00) by %user_name%',0,34,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(152,'create_shipment','Created shipment for order',0,34,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(153,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-07-05 08:31:46','2023-07-05 08:31:46'),(154,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-07-05 08:31:46','2023-07-05 08:31:46'),(155,'confirm_payment','Payment was confirmed (amount $230.00) by %user_name%',0,35,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(156,'create_shipment','Created shipment for order',0,35,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(157,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-07-04 18:31:46','2023-07-04 18:31:46'),(158,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-07-04 18:31:46','2023-07-04 18:31:46'),(159,'confirm_payment','Payment was confirmed (amount $265.00) by %user_name%',0,36,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(160,'create_shipment','Created shipment for order',0,36,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(161,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(162,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-07-04 04:31:46','2023-07-04 04:31:46'),(163,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-07-04 04:31:46','2023-07-04 04:31:46'),(164,'create_shipment','Created shipment for order',0,37,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(165,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-07-06 00:31:46','2023-07-06 00:31:46'),(166,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-07-06 00:31:46','2023-07-06 00:31:46'),(167,'confirm_payment','Payment was confirmed (amount $144.00) by %user_name%',0,38,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(168,'create_shipment','Created shipment for order',0,38,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-07-08 12:31:46','2023-07-08 12:31:46'),(170,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-07-08 12:31:46','2023-07-08 12:31:46'),(171,'create_shipment','Created shipment for order',0,39,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(172,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-07-06 00:31:46','2023-07-06 00:31:46'),(174,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-07-06 00:31:46','2023-07-06 00:31:46'),(175,'confirm_payment','Payment was confirmed (amount $431.00) by %user_name%',0,40,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(176,'create_shipment','Created shipment for order',0,40,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(177,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(178,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-07-06 16:31:46','2023-07-06 16:31:46'),(179,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-07-06 16:31:46','2023-07-06 16:31:46'),(180,'confirm_payment','Payment was confirmed (amount $348.00) by %user_name%',0,41,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(181,'create_shipment','Created shipment for order',0,41,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(182,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-07-05 20:31:46','2023-07-05 20:31:46'),(183,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-07-05 20:31:46','2023-07-05 20:31:46'),(184,'confirm_payment','Payment was confirmed (amount $390.00) by %user_name%',0,42,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(185,'create_shipment','Created shipment for order',0,42,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(186,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(187,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-07-08 18:31:46','2023-07-08 18:31:46'),(188,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-07-08 18:31:46','2023-07-08 18:31:46'),(189,'create_shipment','Created shipment for order',0,43,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2023-07-07 16:31:46','2023-07-07 16:31:46'),(191,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2023-07-07 16:31:46','2023-07-07 16:31:46'),(192,'confirm_payment','Payment was confirmed (amount $270.00) by %user_name%',0,44,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(193,'create_shipment','Created shipment for order',0,44,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(194,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2023-07-08 00:31:46','2023-07-08 00:31:46'),(195,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2023-07-08 00:31:46','2023-07-08 00:31:46'),(196,'confirm_payment','Payment was confirmed (amount $348.00) by %user_name%',0,45,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(197,'create_shipment','Created shipment for order',0,45,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(198,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2023-07-08 16:31:46','2023-07-08 16:31:46'),(199,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2023-07-08 16:31:46','2023-07-08 16:31:46'),(200,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,46,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(201,'create_shipment','Created shipment for order',0,46,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(202,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(203,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2023-07-09 16:31:46','2023-07-09 16:31:46'),(204,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2023-07-09 16:31:46','2023-07-09 16:31:46'),(205,'confirm_payment','Payment was confirmed (amount $354.00) by %user_name%',0,47,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(206,'create_shipment','Created shipment for order',0,47,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(207,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,47,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(208,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2023-07-08 00:31:46','2023-07-08 00:31:46'),(209,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2023-07-08 00:31:46','2023-07-08 00:31:46'),(210,'confirm_payment','Payment was confirmed (amount $118.00) by %user_name%',0,48,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(211,'create_shipment','Created shipment for order',0,48,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46'),(212,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2023-07-08 06:31:46','2023-07-08 06:31:46'),(213,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2023-07-08 06:31:46','2023-07-08 06:31:46'),(214,'confirm_payment','Payment was confirmed (amount $128.00) by %user_name%',0,49,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(215,'create_shipment','Created shipment for order',0,49,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(216,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2023-07-08 16:31:47','2023-07-08 16:31:47'),(217,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2023-07-08 16:31:47','2023-07-08 16:31:47'),(218,'create_shipment','Created shipment for order',0,50,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(219,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,50,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(220,'create_order_from_seeder','Order is created from the checkout page',NULL,51,NULL,'2023-07-08 12:31:47','2023-07-08 12:31:47'),(221,'confirm_order','Order was verified by %user_name%',0,51,NULL,'2023-07-08 12:31:47','2023-07-08 12:31:47'),(222,'confirm_payment','Payment was confirmed (amount $296.00) by %user_name%',0,51,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(223,'create_shipment','Created shipment for order',0,51,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(224,'create_order_from_seeder','Order is created from the checkout page',NULL,52,NULL,'2023-07-08 20:31:47','2023-07-08 20:31:47'),(225,'confirm_order','Order was verified by %user_name%',0,52,NULL,'2023-07-08 20:31:47','2023-07-08 20:31:47'),(226,'confirm_payment','Payment was confirmed (amount $116.00) by %user_name%',0,52,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(227,'create_shipment','Created shipment for order',0,52,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(228,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,52,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(229,'create_order_from_seeder','Order is created from the checkout page',NULL,53,NULL,'2023-07-09 10:31:47','2023-07-09 10:31:47'),(230,'confirm_order','Order was verified by %user_name%',0,53,NULL,'2023-07-09 10:31:47','2023-07-09 10:31:47'),(231,'confirm_payment','Payment was confirmed (amount $443.00) by %user_name%',0,53,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(232,'create_shipment','Created shipment for order',0,53,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(233,'create_order_from_seeder','Order is created from the checkout page',NULL,54,NULL,'2023-07-09 12:31:47','2023-07-09 12:31:47'),(234,'confirm_order','Order was verified by %user_name%',0,54,NULL,'2023-07-09 12:31:47','2023-07-09 12:31:47'),(235,'create_shipment','Created shipment for order',0,54,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(236,'create_order_from_seeder','Order is created from the checkout page',NULL,55,NULL,'2023-07-09 18:31:47','2023-07-09 18:31:47'),(237,'confirm_order','Order was verified by %user_name%',0,55,NULL,'2023-07-09 18:31:47','2023-07-09 18:31:47'),(238,'confirm_payment','Payment was confirmed (amount $119.00) by %user_name%',0,55,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(239,'create_shipment','Created shipment for order',0,55,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(240,'update_status','Order confirmed by %user_name%',0,4,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(241,'update_status','Order confirmed by %user_name%',0,6,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(242,'update_status','Order confirmed by %user_name%',0,8,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(243,'update_status','Order confirmed by %user_name%',0,10,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(244,'update_status','Order confirmed by %user_name%',0,13,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47'),(245,'update_status','Order confirmed by %user_name%',0,14,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(246,'update_status','Order confirmed by %user_name%',0,19,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(247,'update_status','Order confirmed by %user_name%',0,20,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(248,'update_status','Order confirmed by %user_name%',0,22,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(249,'update_status','Order confirmed by %user_name%',0,24,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(250,'update_status','Order confirmed by %user_name%',0,25,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(251,'update_status','Order confirmed by %user_name%',0,26,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(252,'update_status','Order confirmed by %user_name%',0,27,NULL,'2023-07-10 00:31:48','2023-07-10 00:31:48'),(253,'update_status','Order confirmed by %user_name%',0,28,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(254,'update_status','Order confirmed by %user_name%',0,29,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(255,'update_status','Order confirmed by %user_name%',0,32,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(256,'update_status','Order confirmed by %user_name%',0,33,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(257,'update_status','Order confirmed by %user_name%',0,36,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(258,'update_status','Order confirmed by %user_name%',0,40,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(259,'update_status','Order confirmed by %user_name%',0,42,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(260,'update_status','Order confirmed by %user_name%',0,46,NULL,'2023-07-10 00:31:49','2023-07-10 00:31:49'),(261,'update_status','Order confirmed by %user_name%',0,47,NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50'),(262,'update_status','Order confirmed by %user_name%',0,52,NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,265.00,0.00,'[]',NULL,26,'Seeds of Change Organic Quinoe (Digital)','products/1-1.jpg',713.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','digital',10,NULL),(2,1,1,126.00,0.00,'[]',NULL,73,'All Natural Italian-Style Chicken Meatballs','products/18-1.jpg',631.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','physical',0,NULL),(3,2,3,48.00,0.00,'[]',NULL,36,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',2235.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','digital',1,NULL),(4,3,2,118.00,0.00,'[]',NULL,41,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1482.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','physical',0,NULL),(5,4,2,265.00,0.00,'[]',NULL,27,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',1426.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','digital',2,NULL),(6,5,1,116.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',741.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','physical',0,NULL),(7,6,1,265.00,0.00,'[]',NULL,27,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',713.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','digital',2,NULL),(8,7,2,116.00,0.00,'[]',NULL,51,'Nestle Original Coffee-Mate Coffee Creamer','products/11-1.jpg',1482.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','physical',0,NULL),(9,8,3,296.00,0.00,'[]',NULL,34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3-1.jpg',2661.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(10,9,2,116.00,0.00,'[]',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',1128.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',6,NULL),(11,10,3,130.00,0.00,'[]',NULL,57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13-1.jpg',1839.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',0,NULL),(12,10,3,126.00,0.00,'[]',NULL,67,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16-1.jpg',2067.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(13,11,2,119.00,0.00,'[]',NULL,59,'Organic Frozen Triple Berry Blend','products/14.jpg',1106.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(14,12,2,111.00,0.00,'[]',NULL,71,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',1000.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',2,NULL),(15,13,3,48.00,0.00,'[]',NULL,38,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',2235.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',1,NULL),(16,14,3,118.00,0.00,'[]',NULL,44,'Encore Seafoods Stuffed Alaskan','products/8-1.jpg',2433.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(17,15,2,116.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1482.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(18,15,3,116.00,0.00,'[]',NULL,52,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',2223.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(19,16,2,443.00,0.00,'[]',NULL,30,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1572.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(20,16,2,130.00,0.00,'[]',NULL,57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13-1.jpg',1226.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',6,NULL),(21,17,2,55.00,0.00,'[]',NULL,40,'Chobani Complete Vanilla Greek','products/6.jpg',1374.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(22,18,2,48.00,0.00,'[]',NULL,37,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',1490.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',10,NULL),(23,19,1,116.00,0.00,'[]',NULL,53,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',741.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(24,20,3,118.00,0.00,'[]',NULL,83,'Chen Watermelon (Digital)','products/21.jpg',1950.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',7,NULL),(25,21,3,116.00,0.00,'[]',NULL,47,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9-1.jpg',1692.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',9,NULL),(26,22,2,431.00,0.00,'[]',NULL,49,'Haagen-Dazs Caramel Cone Ice Cream','products/10.jpg',1010.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(27,23,1,127.00,0.00,'[]',NULL,88,'Colorful Banana','products/23-1.jpg',850.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(28,24,1,265.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',713.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',6,NULL),(29,24,3,119.00,0.00,'[]',NULL,60,'Organic Frozen Triple Berry Blend','products/14-1.jpg',1659.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(30,25,1,126.00,0.00,'[]',NULL,68,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16-2.jpg',689.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(31,26,1,55.00,0.00,'[]',NULL,40,'Chobani Complete Vanilla Greek','products/6.jpg',687.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(32,27,2,431.00,0.00,'[]',NULL,49,'Haagen-Dazs Caramel Cone Ice Cream','products/10.jpg',1010.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(33,27,1,130.00,0.00,'[]',NULL,57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13-1.jpg',613.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','digital',5,NULL),(34,28,1,119.00,0.00,'[]',NULL,63,'Organic Frozen Triple Berry Blend','products/14.jpg',553.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','physical',0,NULL),(35,29,3,265.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',2139.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',9,NULL),(36,29,2,117.00,0.00,'[]',NULL,75,'Simply Lemonade with Raspberry Juice','products/19-1.jpg',1680.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(37,30,1,48.00,0.00,'[]',NULL,36,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',745.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',7,NULL),(38,31,3,126.00,0.00,'[]',NULL,67,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16-1.jpg',2067.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(39,32,3,296.00,0.00,'[]',NULL,34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3-1.jpg',2661.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(40,33,1,116.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',741.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(41,34,1,119.00,0.00,'[]',NULL,62,'Organic Frozen Triple Berry Blend','products/14.jpg',553.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(42,35,2,115.00,0.00,'[]',NULL,79,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',1726.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(43,36,1,265.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',713.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',6,NULL),(44,37,1,48.00,0.00,'[]',NULL,38,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',745.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',3,NULL),(45,38,3,48.00,0.00,'[]',NULL,38,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',2235.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',4,NULL),(46,39,1,118.00,0.00,'[]',NULL,44,'Encore Seafoods Stuffed Alaskan','products/8-1.jpg',811.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(47,39,1,118.00,0.00,'[]',NULL,81,'Chen Watermelon (Digital)','products/21.jpg',650.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',8,NULL),(48,40,1,431.00,0.00,'[]',NULL,49,'Haagen-Dazs Caramel Cone Ice Cream','products/10.jpg',505.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(49,41,3,116.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',2223.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(50,42,3,130.00,0.00,'[]',NULL,56,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',1839.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',0,NULL),(51,43,2,111.00,0.00,'[]',NULL,71,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',1000.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',1,NULL),(52,44,3,90.00,0.00,'[]',NULL,35,'Foster Farms Takeout Crispy Classic','products/4.jpg',2616.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(53,45,3,116.00,0.00,'[]',NULL,48,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',1692.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',8,NULL),(54,46,2,126.00,0.00,'[]',NULL,66,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16.jpg',1378.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(55,47,3,118.00,0.00,'[]',NULL,84,'Chen Watermelon (Digital)','products/21.jpg',1950.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','digital',2,NULL),(56,48,1,118.00,0.00,'[]',NULL,45,'Encore Seafoods Stuffed Alaskan','products/8.jpg',811.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(57,49,1,128.00,0.00,'[]',NULL,86,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',619.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','physical',0,NULL),(58,50,3,265.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',2139.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','digital',8,NULL),(59,50,3,119.00,0.00,'[]',NULL,63,'Organic Frozen Triple Berry Blend','products/14.jpg',1659.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','physical',0,NULL),(60,51,1,296.00,0.00,'[]',NULL,33,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',887.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','physical',0,NULL),(61,52,1,116.00,0.00,'[]',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',564.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','digital',4,NULL),(62,53,1,443.00,0.00,'[]',NULL,31,'All Natural Italian-Style Chicken Meatballs','products/2-1.jpg',786.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','physical',0,NULL),(63,54,3,116.00,0.00,'[]',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',1692.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','digital',6,NULL),(64,55,1,119.00,0.00,'[]',NULL,61,'Organic Frozen Triple Berry Blend','products/14.jpg',553.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',7,'1','default','pending',391.00,0.00,0.00,NULL,NULL,0.00,391.00,1,NULL,1,NULL,'rFyDm70sX9213JHcJMrrjPvu5VyGF',1,'2023-07-06 16:31:44','2023-07-10 00:31:44',2),(2,'#10000002',7,'1','default','pending',144.00,0.00,0.00,NULL,NULL,0.00,144.00,1,NULL,1,NULL,'16BpXbRAarR2em28xLaLPmKvgvJkk',2,'2023-06-25 00:31:44','2023-07-10 00:31:44',7),(3,'#10000003',7,'1','default','pending',236.00,0.00,0.00,NULL,NULL,0.00,236.00,1,NULL,1,NULL,'Domt4PZpIyp70CK4oMCTf1Hkq0pb0',3,'2023-06-26 16:31:44','2023-07-10 00:31:44',4),(4,'#10000004',1,'1','default','completed',530.00,0.00,0.00,NULL,NULL,0.00,530.00,1,NULL,1,'2023-07-10 00:31:47','3owbeuLcc2m15Lh0MgSY4inkVNeRn',4,'2023-07-06 20:31:44','2023-07-10 00:31:47',2),(5,'#10000005',1,'1','default','pending',116.00,0.00,0.00,NULL,NULL,0.00,116.00,1,NULL,1,NULL,'2yzbNWoeDV6asGGuGvSuF0nBsJFzA',5,'2023-06-27 08:31:44','2023-07-10 00:31:44',1),(6,'#10000006',1,'1','default','completed',265.00,0.00,0.00,NULL,NULL,0.00,265.00,1,NULL,1,'2023-07-10 00:31:47','xiaElU8PvaAKZu0qS4YABUdM3EowD',6,'2023-07-04 00:31:44','2023-07-10 00:31:47',2),(7,'#10000007',1,'1','default','pending',232.00,0.00,0.00,NULL,NULL,0.00,232.00,1,NULL,1,NULL,'vTjmQub2SQdnrlgrsVPuHXyBcmwma',7,'2023-07-08 12:31:44','2023-07-10 00:31:44',1),(8,'#10000008',9,'1','default','completed',888.00,0.00,0.00,NULL,NULL,0.00,888.00,1,NULL,1,'2023-07-10 00:31:47','EzaZGuX2GwS68KsUZd8rxwLv9BgGE',8,'2023-07-04 08:31:45','2023-07-10 00:31:47',5),(9,'#10000009',9,'1','default','pending',232.00,0.00,0.00,NULL,NULL,0.00,232.00,1,NULL,1,NULL,'MWfeC4ycjAFjyNe46snqBSwn7oMZQ',9,'2023-07-02 22:31:45','2023-07-10 00:31:45',6),(10,'#10000010',1,'1','default','completed',768.00,0.00,0.00,NULL,NULL,0.00,768.00,1,NULL,1,'2023-07-10 00:31:47','3sbIrYx2rySUXe8GU9gpDfBT7eIpA',10,'2023-07-04 16:31:45','2023-07-10 00:31:47',4),(11,'#10000011',1,'1','default','completed',238.00,0.00,0.00,NULL,NULL,0.00,238.00,1,NULL,1,'2023-07-10 00:31:45','FGo6iZMAOc6no9hoa5iBKO51thJNS',11,'2023-06-28 00:31:45','2023-07-10 00:31:45',2),(12,'#10000012',1,'1','default','pending',222.00,0.00,0.00,NULL,NULL,0.00,222.00,1,NULL,1,NULL,'HvG86QzEDGiMF6tRGZfzUkKV3Gn2r',12,'2023-07-06 00:31:45','2023-07-10 00:31:45',6),(13,'#10000013',9,'1','default','completed',144.00,0.00,0.00,NULL,NULL,0.00,144.00,1,NULL,1,'2023-07-10 00:31:47','hLET5RXfAA74sH1j4GGp1RqeHdw4E',13,'2023-07-07 12:31:45','2023-07-10 00:31:47',7),(14,'#10000014',9,'1','default','completed',354.00,0.00,0.00,NULL,NULL,0.00,354.00,1,NULL,1,'2023-07-10 00:31:48','UpXS6iFfXTCfmFbEs0AieQDC2v1hm',14,'2023-07-01 06:31:45','2023-07-10 00:31:48',5),(15,'#10000015',9,'1','default','pending',580.00,0.00,0.00,NULL,NULL,0.00,580.00,1,NULL,1,NULL,'217WBLqNsRUv0psWlD3oAI8fjYYJO',15,'2023-06-28 18:31:45','2023-07-10 00:31:45',1),(16,'#10000016',1,'1','default','pending',1146.00,0.00,0.00,NULL,NULL,0.00,1146.00,1,NULL,1,NULL,'Xt8CfAfsEHDfABVDpgBKsjbvux94X',16,'2023-06-29 12:31:45','2023-07-10 00:31:45',4),(17,'#10000017',1,'1','default','pending',110.00,0.00,0.00,NULL,NULL,0.00,110.00,1,NULL,1,NULL,'U1klZ6IQT6wYgC31CU6DYi7hXoPkV',17,'2023-06-29 12:31:45','2023-07-10 00:31:45',3),(18,'#10000018',7,'1','default','pending',96.00,0.00,0.00,NULL,NULL,0.00,96.00,1,NULL,1,NULL,'zznphPR64KpovNv76akuf4gaQFaUM',18,'2023-07-03 12:31:45','2023-07-10 00:31:45',7),(19,'#10000019',7,'1','default','completed',116.00,0.00,0.00,NULL,NULL,0.00,116.00,1,NULL,1,'2023-07-10 00:31:48','4ayxABpAGuGmeEVAwcfO5L4iF3XKc',19,'2023-07-05 16:31:45','2023-07-10 00:31:48',1),(20,'#10000020',7,'1','default','completed',354.00,0.00,0.00,NULL,NULL,0.00,354.00,1,NULL,1,'2023-07-10 00:31:48','wtsrkDKCEWezc4NvIqJSy8sIjtixF',20,'2023-07-04 14:31:45','2023-07-10 00:31:48',5),(21,'#10000021',1,'1','default','pending',348.00,0.00,0.00,NULL,NULL,0.00,348.00,1,NULL,1,NULL,'iAgp3Tl6huyJhNd7l6MiUeZ56sX5U',21,'2023-07-01 00:31:45','2023-07-10 00:31:45',6),(22,'#10000022',1,'1','default','completed',862.00,0.00,0.00,NULL,NULL,0.00,862.00,1,NULL,1,'2023-07-10 00:31:48','Mu6lZYGKtW8DF05g8rpynYAx2vlF2',22,'2023-07-03 00:31:45','2023-07-10 00:31:48',4),(23,'#10000023',1,'1','default','pending',127.00,0.00,0.00,NULL,NULL,0.00,127.00,1,NULL,1,NULL,'CRlHLthGBB021W8EaPR7sBIaTqdEX',23,'2023-07-06 00:31:45','2023-07-10 00:31:45',7),(24,'#10000024',9,'1','default','completed',622.00,0.00,0.00,NULL,NULL,0.00,622.00,1,NULL,1,'2023-07-10 00:31:48','h6OYBL1lqn9asNob4Cc5E9KE3MbwW',24,'2023-07-09 02:31:45','2023-07-10 00:31:48',2),(25,'#10000025',9,'1','default','completed',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,'2023-07-10 00:31:48','4mGwvG4KGd6T38icbslX4KDxCuAeU',25,'2023-07-05 10:31:45','2023-07-10 00:31:48',4),(26,'#10000026',7,'1','default','completed',55.00,0.00,0.00,NULL,NULL,0.00,55.00,1,NULL,1,'2023-07-10 00:31:48','ECdFcxNXX9VmaWwt0LBmIRKl3XyJO',26,'2023-07-07 12:31:45','2023-07-10 00:31:48',3),(27,'#10000027',7,'1','default','completed',992.00,0.00,0.00,NULL,NULL,0.00,992.00,1,NULL,1,'2023-07-10 00:31:48','6gXZaNmZ2agKNvmEaXCVwYLIBSv0n',27,'2023-07-05 00:31:45','2023-07-10 00:31:48',4),(28,'#10000028',7,'1','default','completed',119.00,0.00,0.00,NULL,NULL,0.00,119.00,1,NULL,1,'2023-07-10 00:31:49','SD38HhBnmQlg6VefQ8PVUVA47Jn8O',28,'2023-07-02 12:31:45','2023-07-10 00:31:49',2),(29,'#10000029',1,'1','default','completed',1029.00,0.00,0.00,NULL,NULL,0.00,1029.00,1,NULL,1,'2023-07-10 00:31:49','6fAxSEW1YwNPs66pDHkKStxxsD8sq',29,'2023-07-04 18:31:46','2023-07-10 00:31:49',2),(30,'#10000030',1,'1','default','completed',48.00,0.00,0.00,NULL,NULL,0.00,48.00,1,NULL,1,'2023-07-10 00:31:46','LCGqoiJDzTiSbTavDsoIHwB2tZwcY',30,'2023-07-03 06:31:46','2023-07-10 00:31:46',7),(31,'#10000031',1,'1','default','pending',378.00,0.00,0.00,NULL,NULL,0.00,378.00,1,NULL,1,NULL,'vSB1sbZ8etJNUPpV3YD9lU5AF2dEF',31,'2023-07-07 18:31:46','2023-07-10 00:31:46',4),(32,'#10000032',9,'1','default','completed',888.00,0.00,0.00,NULL,NULL,0.00,888.00,1,NULL,1,'2023-07-10 00:31:49','2x8KSmCkRoKmMDmKdHqfCWVT5RvdQ',32,'2023-07-07 08:31:46','2023-07-10 00:31:49',5),(33,'#10000033',9,'1','default','completed',116.00,0.00,0.00,NULL,NULL,0.00,116.00,1,NULL,1,'2023-07-10 00:31:49','X96izExsHRXUex6Bd1PMBJ3Yf0CTA',33,'2023-07-06 00:31:46','2023-07-10 00:31:49',1),(34,'#10000034',9,'1','default','pending',119.00,0.00,0.00,NULL,NULL,0.00,119.00,1,NULL,1,NULL,'gDx074ZZ5tHcFQkaggGAr8g41FqSU',34,'2023-07-04 00:31:46','2023-07-10 00:31:46',2),(35,'#10000035',9,'1','default','pending',230.00,0.00,0.00,NULL,NULL,0.00,230.00,1,NULL,1,NULL,'HqpXJFXZ78wh19u3Psd39rAPvAAsZ',35,'2023-07-05 08:31:46','2023-07-10 00:31:46',4),(36,'#10000036',9,'1','default','completed',265.00,0.00,0.00,NULL,NULL,0.00,265.00,1,NULL,1,'2023-07-10 00:31:49','r1euv95cDV1MgYbgMmySAtPmMBsg2',36,'2023-07-04 18:31:46','2023-07-10 00:31:49',2),(37,'#10000037',9,'1','default','pending',48.00,0.00,0.00,NULL,NULL,0.00,48.00,1,NULL,1,NULL,'r4GKgMOYrNDGjDd5w8GxzWZ0RbBBt',37,'2023-07-04 04:31:46','2023-07-10 00:31:46',7),(38,'#10000038',9,'1','default','pending',144.00,0.00,0.00,NULL,NULL,0.00,144.00,1,NULL,1,NULL,'J6onjP3sTaXLijSXWFkN9QQHqnj1b',38,'2023-07-06 00:31:46','2023-07-10 00:31:46',7),(39,'#10000039',9,'1','default','completed',236.00,0.00,0.00,NULL,NULL,0.00,236.00,1,NULL,1,'2023-07-10 00:31:46','304xVIzICZmqxuf51x8E00RuDeVri',39,'2023-07-08 12:31:46','2023-07-10 00:31:46',5),(40,'#10000040',9,'1','default','completed',431.00,0.00,0.00,NULL,NULL,0.00,431.00,1,NULL,1,'2023-07-10 00:31:49','aqDnErlYybHfUhvEFHnhDB4ZUqShT',40,'2023-07-06 00:31:46','2023-07-10 00:31:49',4),(41,'#10000041',9,'1','default','pending',348.00,0.00,0.00,NULL,NULL,0.00,348.00,1,NULL,1,NULL,'sE7Pl2dmjJZjY0aOOEPqGEsQUVsft',41,'2023-07-06 16:31:46','2023-07-10 00:31:46',1),(42,'#10000042',9,'1','default','completed',390.00,0.00,0.00,NULL,NULL,0.00,390.00,1,NULL,1,'2023-07-10 00:31:49','poQqCGMSNeVYRuiG797uX7RGwhKzS',42,'2023-07-05 20:31:46','2023-07-10 00:31:49',4),(43,'#10000043',9,'1','default','pending',222.00,0.00,0.00,NULL,NULL,0.00,222.00,1,NULL,1,NULL,'Oz3XmMgc8IF1nIxQW79kXKgGK6HU3',43,'2023-07-08 18:31:46','2023-07-10 00:31:46',6),(44,'#10000044',7,'1','default','pending',270.00,0.00,0.00,NULL,NULL,0.00,270.00,1,NULL,1,NULL,'2aWg7NWbjQMoPMWLE1OviQBrpcPm6',44,'2023-07-07 16:31:46','2023-07-10 00:31:46',1),(45,'#10000045',7,'1','default','pending',348.00,0.00,0.00,NULL,NULL,0.00,348.00,1,NULL,1,NULL,'dfy8Y9MlCTqH9jWxVJphNfZhU5O4Q',45,'2023-07-08 00:31:46','2023-07-10 00:31:46',6),(46,'#10000046',7,'1','default','completed',252.00,0.00,0.00,NULL,NULL,0.00,252.00,1,NULL,1,'2023-07-10 00:31:49','UMIqDQ32kIWt317dxkBxHCAuzHFng',46,'2023-07-08 16:31:46','2023-07-10 00:31:49',4),(47,'#10000047',7,'1','default','completed',354.00,0.00,0.00,NULL,NULL,0.00,354.00,1,NULL,1,'2023-07-10 00:31:50','1svDGBTW2La2LnJHkPg3r6Pdu3Gy0',47,'2023-07-09 16:31:46','2023-07-10 00:31:50',5),(48,'#10000048',9,'1','default','pending',118.00,0.00,0.00,NULL,NULL,0.00,118.00,1,NULL,1,NULL,'9JAO4VzEpb1OzEXT3PbATiACDpyol',48,'2023-07-08 00:31:46','2023-07-10 00:31:46',5),(49,'#10000049',9,'1','default','pending',128.00,0.00,0.00,NULL,NULL,0.00,128.00,1,NULL,1,NULL,'I4TOBAnWu811LidONssyqtpiVaHUF',49,'2023-07-08 06:31:46','2023-07-10 00:31:47',1),(50,'#10000050',1,'1','default','completed',1152.00,0.00,0.00,NULL,NULL,0.00,1152.00,1,NULL,1,'2023-07-10 00:31:47','B2MF7LdLFXDGgkq4lCYJZyZl7XXFU',50,'2023-07-08 16:31:47','2023-07-10 00:31:47',2),(51,'#10000051',1,'1','default','pending',296.00,0.00,0.00,NULL,NULL,0.00,296.00,1,NULL,1,NULL,'f4Zj1lKi8HzCn5VHdonJBJLqb9UPD',51,'2023-07-08 12:31:47','2023-07-10 00:31:47',5),(52,'#10000052',1,'1','default','completed',116.00,0.00,0.00,NULL,NULL,0.00,116.00,1,NULL,1,'2023-07-10 00:31:50','MkbBcuqrO7fNH7ZxbmNCyDRjam7Az',52,'2023-07-08 20:31:47','2023-07-10 00:31:50',6),(53,'#10000053',1,'1','default','pending',443.00,0.00,0.00,NULL,NULL,0.00,443.00,1,NULL,1,NULL,'kCoxTsX8bOe69dFuJgAXOSxKR2HyY',53,'2023-07-09 10:31:47','2023-07-10 00:31:47',4),(54,'#10000054',1,'1','default','pending',348.00,0.00,0.00,NULL,NULL,0.00,348.00,1,NULL,1,NULL,'lAWSXp8ixqhceSN4fWtTT35L8KFZK',54,'2023-07-09 12:31:47','2023-07-10 00:31:47',6),(55,'#10000055',1,'1','default','pending',119.00,0.00,0.00,NULL,NULL,0.00,119.00,1,NULL,1,NULL,'HokC4x66DxBczmeMbUxsjg6NQ2BU3',55,'2023-07-09 18:31:47','2023-07-10 00:31:47',2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2023-07-10 00:31:31','2023-07-10 00:31:31',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2023-07-10 00:31:31','2023-07-10 00:31:31',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2023-07-10 00:31:31','2023-07-10 00:31:31');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2023-07-10 00:31:31','2023-07-10 00:31:31'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2023-07-10 00:31:31','2023-07-10 00:31:31');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (3,18),(5,6),(5,7),(6,9),(7,11),(8,4),(9,3),(10,14),(10,22),(10,23),(11,8),(11,15),(11,17),(11,19),(12,1),(12,2),(12,12),(12,16),(12,20),(13,21),(13,24),(14,5),(14,10),(14,13);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,5),(1,8),(1,11),(1,15),(1,16),(1,17),(1,20),(1,21),(1,22),(2,2),(2,4),(2,9),(2,10),(2,12),(2,14),(2,18),(2,19),(2,23),(2,24),(3,1),(3,6),(3,7),(3,13);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,14),(1,15),(1,20),(2,10),(2,15),(2,18),(2,19),(3,6),(3,13),(3,14),(3,19),(4,2),(4,10),(4,13),(5,6),(5,18),(5,19),(5,24),(6,1),(6,3),(6,7),(6,15),(7,8),(7,15),(7,19),(7,22),(8,7),(8,11),(8,13),(9,2),(9,6),(9,8),(9,16),(10,9),(10,14),(10,19),(10,23),(11,7),(11,13),(11,19),(11,23),(12,4),(12,17),(12,21),(12,22),(13,7),(13,14),(13,15),(13,22),(14,5),(14,12),(14,19),(14,23),(15,12),(15,13),(15,14),(15,22),(16,15),(16,17),(16,18),(16,24),(17,4),(17,9),(17,15),(17,18),(18,1),(18,17),(18,22),(18,23),(19,4),(19,13),(19,22),(19,23),(20,6),(20,8),(20,11),(20,22),(21,12),(21,16),(21,17),(21,18),(22,4),(22,12),(22,19),(22,21),(23,7),(23,9),(23,10),(23,12),(24,7),(24,16),(24,20),(24,22);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(4,26,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(5,27,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(6,27,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(7,28,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(8,28,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(9,29,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(10,29,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(11,36,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(12,36,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(13,37,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(14,37,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(15,38,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(16,38,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(17,39,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(18,39,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(19,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(20,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(21,47,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(22,47,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(23,48,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(24,48,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:34\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:34','2023-07-10 00:31:34'),(25,56,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(26,56,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(27,57,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(28,57,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(29,58,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(30,58,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(31,69,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(32,69,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(33,70,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(34,70,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(35,71,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(36,71,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(37,81,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(38,81,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(39,82,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(40,82,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(41,83,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(42,83,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(43,84,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(44,84,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(45,85,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35'),(46,85,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-07-10 07:31:35\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-07-10 00:31:35','2023-07-10 00:31:35');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,14),(2,21),(3,7);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(2,'New','#00c9a7','published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(3,'Sale','#fe9931','published','2023-07-10 00:31:31','2023-07-10 00:31:31');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,3),(2,3),(2,5),(3,1),(3,4),(3,6),(4,1),(4,2),(5,1),(5,2),(6,1),(6,4),(6,5),(7,3),(7,6),(8,2),(8,4),(8,6),(9,1),(9,3),(9,4),(10,2),(10,4),(11,1),(11,2),(11,3),(12,1),(12,2),(12,6),(13,2),(13,4),(13,5),(14,3),(14,4),(15,1),(15,3),(15,4),(16,3),(16,4),(17,2),(17,4),(17,5),(18,2),(18,4),(18,6),(19,1),(19,6),(20,2),(20,3),(21,1),(21,2),(21,6),(22,1),(22,5),(22,6),(23,4),(23,5),(23,6),(24,2),(24,3),(24,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(2,'Bags',NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(3,'Shoes',NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(4,'Clothes',NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31'),(5,'Hand bag',NULL,'published','2023-07-10 00:31:31','2023-07-10 00:31:31');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (11,1,6),(15,1,8),(51,1,26),(53,1,27),(73,1,37),(75,1,38),(87,1,44),(97,1,49),(99,1,50),(103,1,52),(109,1,55),(127,1,64),(129,1,65),(131,1,66),(21,2,11),(33,2,17),(43,2,22),(65,2,33),(77,2,39),(79,2,40),(85,2,43),(95,2,48),(101,2,51),(107,2,54),(119,2,60),(9,3,5),(13,3,7),(17,3,9),(35,3,18),(37,3,19),(39,3,20),(45,3,23),(57,3,29),(59,3,30),(61,3,31),(63,3,32),(69,3,35),(71,3,36),(83,3,42),(89,3,45),(93,3,47),(111,3,56),(117,3,59),(123,3,62),(3,4,2),(5,4,3),(7,4,4),(23,4,12),(47,4,24),(55,4,28),(81,4,41),(115,4,58),(125,4,63),(1,5,1),(19,5,10),(25,5,13),(27,5,14),(29,5,15),(31,5,16),(41,5,21),(49,5,25),(67,5,34),(91,5,46),(105,5,53),(113,5,57),(121,5,61),(133,5,67),(4,6,2),(6,6,3),(10,6,5),(20,6,10),(28,6,14),(36,6,18),(40,6,20),(54,6,27),(62,6,31),(64,6,32),(66,6,33),(74,6,37),(76,6,38),(88,6,44),(90,6,45),(112,6,56),(120,6,60),(122,6,61),(126,6,63),(128,6,64),(16,7,8),(18,7,9),(30,7,15),(34,7,17),(42,7,21),(44,7,22),(46,7,23),(48,7,24),(52,7,26),(56,7,28),(60,7,30),(72,7,36),(82,7,41),(86,7,43),(98,7,49),(102,7,51),(106,7,53),(118,7,59),(124,7,62),(8,8,4),(12,8,6),(14,8,7),(32,8,16),(80,8,40),(92,8,46),(100,8,50),(110,8,55),(116,8,58),(130,8,65),(132,8,66),(134,8,67),(2,9,1),(22,9,11),(38,9,19),(68,9,34),(70,9,35),(84,9,42),(94,9,47),(96,9,48),(104,9,52),(108,9,54),(114,9,57),(24,10,12),(26,10,13),(50,10,25),(58,10,29),(78,10,39);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,1,0),(5,29,1,0),(6,30,2,1),(7,31,2,0),(8,32,2,0),(9,33,3,1),(10,34,3,0),(11,35,4,1),(12,36,5,1),(13,37,5,0),(14,38,5,0),(15,39,5,0),(16,40,6,1),(17,41,7,1),(18,42,7,0),(19,43,8,1),(20,44,8,0),(21,45,8,0),(22,46,9,1),(23,47,9,0),(24,48,9,0),(25,49,10,1),(26,50,11,1),(27,51,11,0),(28,52,11,0),(29,53,11,0),(30,54,12,1),(31,55,12,0),(32,56,13,1),(33,57,13,0),(34,58,13,0),(35,59,14,1),(36,60,14,0),(37,61,14,0),(38,62,14,0),(39,63,14,0),(40,64,15,1),(41,65,15,0),(42,66,16,1),(43,67,16,0),(44,68,16,0),(45,69,17,1),(46,70,17,0),(47,71,17,0),(48,72,18,1),(49,73,18,0),(50,74,19,1),(51,75,19,0),(52,76,19,0),(53,77,19,0),(54,78,19,0),(55,79,20,1),(56,80,20,0),(57,81,21,1),(58,82,21,0),(59,83,21,0),(60,84,21,0),(61,85,21,0),(62,86,22,1),(63,87,23,1),(64,88,23,0),(65,89,23,0),(66,90,24,1),(67,91,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-07-10',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-143-A0',0,19,0,1,1,1,0,0,265,NULL,NULL,NULL,19.00,13.00,17.00,713.00,NULL,15387,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-188-A0',0,17,0,1,1,4,0,0,443,NULL,NULL,NULL,17.00,19.00,20.00,786.00,NULL,145690,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-137-A0',0,14,0,1,1,3,0,0,296,NULL,NULL,NULL,12.00,11.00,14.00,887.00,NULL,193208,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-144-A0',0,15,0,1,1,1,0,0,90,66.6,NULL,NULL,11.00,15.00,10.00,872.00,NULL,64187,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(5,'Blue Diamond Almonds Lightly (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-128-A0',0,11,0,1,1,4,0,0,48,NULL,NULL,NULL,13.00,15.00,17.00,745.00,NULL,61992,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,7,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-114-A0',0,13,0,1,1,3,0,0,55,NULL,NULL,NULL,15.00,14.00,15.00,687.00,NULL,176459,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-124-A0',0,18,0,1,1,6,0,0,118,NULL,NULL,NULL,12.00,19.00,17.00,741.00,NULL,120846,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-141-A0',0,18,0,1,1,2,0,0,118,93.22,NULL,NULL,16.00,13.00,19.00,811.00,NULL,151168,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(9,'Gorton’s Beer Battered Fish Fillets (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-111-A0',0,19,0,1,1,4,0,0,116,NULL,NULL,NULL,18.00,16.00,11.00,564.00,NULL,129816,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,6,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-103-A0',0,15,0,1,1,6,0,0,431,NULL,NULL,NULL,12.00,18.00,17.00,505.00,NULL,33385,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-100-A0',0,18,0,1,1,7,0,0,116,NULL,NULL,NULL,15.00,20.00,18.00,741.00,NULL,124824,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-185-A0',0,17,0,1,1,5,0,0,125,102.5,NULL,NULL,15.00,12.00,18.00,723.00,NULL,79535,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-124-A0',0,11,0,1,1,6,0,0,130,NULL,NULL,NULL,15.00,18.00,15.00,613.00,NULL,62958,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-197-A0',0,17,0,1,1,2,0,0,119,NULL,NULL,NULL,19.00,14.00,20.00,553.00,NULL,66399,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-104-A0',0,12,0,1,1,7,0,0,111,NULL,NULL,NULL,13.00,11.00,16.00,583.00,NULL,163927,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,6,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-178-A0',0,12,0,1,1,2,0,0,126,105.84,NULL,NULL,19.00,20.00,20.00,689.00,NULL,143240,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-151-A0',0,15,0,1,1,3,0,0,111,NULL,NULL,NULL,12.00,19.00,16.00,500.00,NULL,199195,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,6,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-158-A0',0,10,0,1,1,3,0,0,126,NULL,NULL,NULL,10.00,15.00,19.00,631.00,NULL,4953,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-176-A0',0,18,0,1,1,1,0,0,117,NULL,NULL,NULL,14.00,13.00,19.00,840.00,NULL,9739,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-114-A0',0,18,0,1,1,7,0,0,115,89.7,NULL,NULL,11.00,18.00,12.00,863.00,NULL,105748,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(21,'Chen Watermelon (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-178-A0',0,12,0,1,1,4,0,0,118,NULL,NULL,NULL,13.00,14.00,18.00,650.00,NULL,180829,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,5,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-158-A0',0,18,0,1,1,3,0,0,128,NULL,NULL,NULL,13.00,14.00,19.00,619.00,NULL,84513,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-200-A0',0,18,0,1,1,7,0,0,127,NULL,NULL,NULL,16.00,15.00,14.00,850.00,NULL,140892,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,7,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-150-A0',0,20,0,1,1,4,0,0,119,88.06,NULL,NULL,18.00,19.00,17.00,812.00,NULL,150016,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(25,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-143-A0',0,19,0,1,0,1,1,0,265,NULL,NULL,NULL,19.00,13.00,17.00,713.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(26,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-143-A0-A1',0,19,0,1,0,1,1,0,265,NULL,NULL,NULL,19.00,13.00,17.00,713.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(27,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-143-A0-A2',0,19,0,1,0,1,1,0,265,NULL,NULL,NULL,19.00,13.00,17.00,713.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(28,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-143-A0-A3',0,19,0,1,0,1,1,0,265,NULL,NULL,NULL,19.00,13.00,17.00,713.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(29,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-143-A0-A4',0,19,0,1,0,1,1,0,265,NULL,NULL,NULL,19.00,13.00,17.00,713.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(30,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-188-A0',0,17,0,1,0,4,1,0,443,NULL,NULL,NULL,17.00,19.00,20.00,786.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(31,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-188-A0-A1',0,17,0,1,0,4,1,0,443,NULL,NULL,NULL,17.00,19.00,20.00,786.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(32,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-188-A0-A2',0,17,0,1,0,4,1,0,443,NULL,NULL,NULL,17.00,19.00,20.00,786.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(33,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-137-A0',0,14,0,1,0,3,1,0,296,NULL,NULL,NULL,12.00,11.00,14.00,887.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-137-A0-A1',0,14,0,1,0,3,1,0,296,NULL,NULL,NULL,12.00,11.00,14.00,887.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(35,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-144-A0',0,15,0,1,0,1,1,0,90,66.6,NULL,NULL,11.00,15.00,10.00,872.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(36,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-128-A0',0,11,0,1,0,4,1,0,48,NULL,NULL,NULL,13.00,15.00,17.00,745.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(37,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-128-A0-A1',0,11,0,1,0,4,1,0,48,NULL,NULL,NULL,13.00,15.00,17.00,745.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(38,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-128-A0-A2',0,11,0,1,0,4,1,0,48,NULL,NULL,NULL,13.00,15.00,17.00,745.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(39,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-128-A0-A3',0,11,0,1,0,4,1,0,48,NULL,NULL,NULL,13.00,15.00,17.00,745.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(40,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-114-A0',0,13,0,1,0,3,1,0,55,NULL,NULL,NULL,15.00,14.00,15.00,687.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-124-A0',0,18,0,1,0,6,1,0,118,NULL,NULL,NULL,12.00,19.00,17.00,741.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-124-A0-A1',0,18,0,1,0,6,1,0,118,NULL,NULL,NULL,12.00,19.00,17.00,741.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(43,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-141-A0',0,18,0,1,0,2,1,0,118,93.22,NULL,NULL,16.00,13.00,19.00,811.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(44,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-141-A0-A1',0,18,0,1,0,2,1,0,118,86.14,NULL,NULL,16.00,13.00,19.00,811.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(45,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-141-A0-A2',0,18,0,1,0,2,1,0,118,82.6,NULL,NULL,16.00,13.00,19.00,811.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-111-A0',0,19,0,1,0,4,1,0,116,NULL,NULL,NULL,18.00,16.00,11.00,564.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(47,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-111-A0-A1',0,19,0,1,0,4,1,0,116,NULL,NULL,NULL,18.00,16.00,11.00,564.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(48,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-111-A0-A2',0,19,0,1,0,4,1,0,116,NULL,NULL,NULL,18.00,16.00,11.00,564.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(49,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-103-A0',0,15,0,1,0,6,1,0,431,NULL,NULL,NULL,12.00,18.00,17.00,505.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-100-A0',0,18,0,1,0,7,1,0,116,NULL,NULL,NULL,15.00,20.00,18.00,741.00,NULL,0,'2023-07-10 00:31:34','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(51,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-100-A0-A1',0,18,0,1,0,7,1,0,116,NULL,NULL,NULL,15.00,20.00,18.00,741.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(52,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-100-A0-A2',0,18,0,1,0,7,1,0,116,NULL,NULL,NULL,15.00,20.00,18.00,741.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(53,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-100-A0-A3',0,18,0,1,0,7,1,0,116,NULL,NULL,NULL,15.00,20.00,18.00,741.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(54,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-185-A0',0,17,0,1,0,5,1,0,125,102.5,NULL,NULL,15.00,12.00,18.00,723.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(55,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-185-A0-A1',0,17,0,1,0,5,1,0,125,91.25,NULL,NULL,15.00,12.00,18.00,723.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(56,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-124-A0',0,11,0,1,0,6,1,0,130,NULL,NULL,NULL,15.00,18.00,15.00,613.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-124-A0-A1',0,11,0,1,0,6,1,0,130,NULL,NULL,NULL,15.00,18.00,15.00,613.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(58,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-124-A0-A2',0,11,0,1,0,6,1,0,130,NULL,NULL,NULL,15.00,18.00,15.00,613.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(59,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-197-A0',0,17,0,1,0,2,1,0,119,NULL,NULL,NULL,19.00,14.00,20.00,553.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(60,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-197-A0-A1',0,17,0,1,0,2,1,0,119,NULL,NULL,NULL,19.00,14.00,20.00,553.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(61,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-197-A0-A2',0,17,0,1,0,2,1,0,119,NULL,NULL,NULL,19.00,14.00,20.00,553.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(62,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-197-A0-A3',0,17,0,1,0,2,1,0,119,NULL,NULL,NULL,19.00,14.00,20.00,553.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(63,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-197-A0-A4',0,17,0,1,0,2,1,0,119,NULL,NULL,NULL,19.00,14.00,20.00,553.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(64,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-104-A0',0,12,0,1,0,7,1,0,111,NULL,NULL,NULL,13.00,11.00,16.00,583.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-104-A0-A1',0,12,0,1,0,7,1,0,111,NULL,NULL,NULL,13.00,11.00,16.00,583.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(66,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-178-A0',0,12,0,1,0,2,1,0,126,105.84,NULL,NULL,19.00,20.00,20.00,689.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(67,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-178-A0-A1',0,12,0,1,0,2,1,0,126,93.24,NULL,NULL,19.00,20.00,20.00,689.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(68,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-2.jpg\"]','HS-178-A0-A2',0,12,0,1,0,2,1,0,126,107.1,NULL,NULL,19.00,20.00,20.00,689.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(69,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-151-A0',0,15,0,1,0,3,1,0,111,NULL,NULL,NULL,12.00,19.00,16.00,500.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(70,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-151-A0-A1',0,15,0,1,0,3,1,0,111,NULL,NULL,NULL,12.00,19.00,16.00,500.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(71,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-151-A0-A2',0,15,0,1,0,3,1,0,111,NULL,NULL,NULL,12.00,19.00,16.00,500.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(72,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-158-A0',0,10,0,1,0,3,1,0,126,NULL,NULL,NULL,10.00,15.00,19.00,631.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(73,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-158-A0-A1',0,10,0,1,0,3,1,0,126,NULL,NULL,NULL,10.00,15.00,19.00,631.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(74,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-176-A0',0,18,0,1,0,1,1,0,117,NULL,NULL,NULL,14.00,13.00,19.00,840.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(75,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-176-A0-A1',0,18,0,1,0,1,1,0,117,NULL,NULL,NULL,14.00,13.00,19.00,840.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(76,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-176-A0-A2',0,18,0,1,0,1,1,0,117,NULL,NULL,NULL,14.00,13.00,19.00,840.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(77,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-176-A0-A3',0,18,0,1,0,1,1,0,117,NULL,NULL,NULL,14.00,13.00,19.00,840.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(78,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-176-A0-A4',0,18,0,1,0,1,1,0,117,NULL,NULL,NULL,14.00,13.00,19.00,840.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(79,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-114-A0',0,18,0,1,0,7,1,0,115,89.7,NULL,NULL,11.00,18.00,12.00,863.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(80,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-114-A0-A1',0,18,0,1,0,7,1,0,115,101.2,NULL,NULL,11.00,18.00,12.00,863.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(81,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-178-A0',0,12,0,1,0,4,1,0,118,NULL,NULL,NULL,13.00,14.00,18.00,650.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(82,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-178-A0-A1',0,12,0,1,0,4,1,0,118,NULL,NULL,NULL,13.00,14.00,18.00,650.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(83,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-178-A0-A2',0,12,0,1,0,4,1,0,118,NULL,NULL,NULL,13.00,14.00,18.00,650.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(84,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-178-A0-A3',0,12,0,1,0,4,1,0,118,NULL,NULL,NULL,13.00,14.00,18.00,650.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(85,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-178-A0-A4',0,12,0,1,0,4,1,0,118,NULL,NULL,NULL,13.00,14.00,18.00,650.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(86,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-158-A0',0,18,0,1,0,3,1,0,128,NULL,NULL,NULL,13.00,14.00,19.00,619.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(87,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-200-A0',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,16.00,15.00,14.00,850.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(88,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-200-A0-A1',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,16.00,15.00,14.00,850.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(89,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-200-A0-A2',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,16.00,15.00,14.00,850.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(90,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-150-A0',0,20,0,1,0,4,1,0,119,88.06,NULL,NULL,18.00,19.00,17.00,812.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(91,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-150-A0-A1',0,20,0,1,0,4,1,0,119,99.96,NULL,NULL,18.00,19.00,17.00,812.00,NULL,0,'2023-07-10 00:31:35','2023-07-10 00:31:44','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,5,2,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(2,7,11,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(3,5,12,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(4,9,1,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(5,3,5,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(6,5,9,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(7,10,5,3.00,'Clean & perfect source code','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(8,2,4,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\"]'),(9,3,7,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(10,9,11,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/19.jpg\"}'),(11,5,24,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(13,1,1,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\"]'),(14,10,11,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(15,6,2,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(16,1,5,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(17,9,17,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(19,7,10,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(20,4,8,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(21,3,3,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-07-10 00:31:36','2023-07-10 00:31:36','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/12.jpg\"}'),(22,10,23,5.00,'Clean & perfect source code','published','2023-07-10 00:31:36','2023-07-10 00:31:36','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/19.jpg\"}'),(23,6,11,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/9.jpg\"}'),(24,2,6,1.00,'Clean & perfect source code','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\"]'),(25,1,4,5.00,'Clean & perfect source code','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(26,3,12,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\"]'),(27,8,24,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(30,9,16,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-07-10 00:31:36','2023-07-10 00:31:36','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/9.jpg\"}'),(31,10,16,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(32,9,10,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(33,1,24,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\"]'),(34,7,24,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(35,5,1,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(36,10,9,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(37,3,20,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(38,3,10,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(39,10,21,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\"]'),(40,10,17,4.00,'Best ecommerce CMS online store!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(41,7,2,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(42,4,17,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(43,6,12,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(44,2,3,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\"]'),(45,5,4,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(47,10,13,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(48,4,23,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(49,3,21,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\"]'),(51,6,9,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(52,8,14,1.00,'Good app, good backup service and support. Good documentation.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(53,6,22,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(56,10,1,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(57,4,16,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(60,2,17,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(61,4,14,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\"]'),(62,8,13,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(63,1,10,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\"]'),(64,7,15,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(66,10,22,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(67,5,3,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(71,3,18,1.00,'Clean & perfect source code','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(72,8,18,3.00,'Good app, good backup service and support. Good documentation.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(74,5,8,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(75,9,3,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(79,7,14,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(80,7,9,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(82,1,9,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\"]'),(83,10,20,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/12.jpg\"}'),(84,3,4,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/4.jpg\"]'),(88,7,5,5.00,'Clean & perfect source code','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\"]'),(89,10,8,2.00,'Best ecommerce CMS online store!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(90,4,5,1.00,'Good app, good backup service and support. Good documentation.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(92,9,9,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/2.jpg\"]'),(93,4,6,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\"]'),(94,4,3,5.00,'Good app, good backup service and support. Good documentation.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(97,3,6,2.00,'Best ecommerce CMS online store!','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(98,3,2,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(99,8,22,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-07-10 00:31:36','2023-07-10 00:31:36','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-07-06 16:31:44','2023-07-06 16:31:44','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-07-08 08:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-06-25 00:31:44','2023-06-25 00:31:44','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-07-08 08:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-06-26 16:31:44','2023-06-26 16:31:44','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-07-08 08:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-07-06 20:31:44','2023-07-06 20:31:44','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-07-08 10:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-06-27 08:31:44','2023-06-27 08:31:44','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-07-08 10:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-07-04 00:31:44','2023-07-04 00:31:44','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-07-08 12:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\ACL\\Models\\User'),(15,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-07-08 12:31:44','2023-07-08 12:31:44','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-07-08 12:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(17,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-07-04 08:31:45','2023-07-04 08:31:45','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-07-08 14:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-07-02 22:31:45','2023-07-02 22:31:45','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-07-08 14:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-07-04 16:31:45','2023-07-04 16:31:45','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-07-08 16:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(25,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-06-28 00:31:45','2023-06-28 00:31:45','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-07-08 16:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(27,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,11,11,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(28,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(29,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-07-06 00:31:45','2023-07-06 00:31:45','Botble\\ACL\\Models\\User'),(30,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-07-08 16:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(31,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-07-07 12:31:45','2023-07-07 12:31:45','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-07-08 18:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-07-01 06:31:45','2023-07-01 06:31:45','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-07-08 18:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(36,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(37,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-06-28 18:31:45','2023-06-28 18:31:45','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-07-08 18:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-06-29 12:31:45','2023-06-29 12:31:45','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-07-08 20:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-06-29 12:31:45','2023-06-29 12:31:45','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-07-08 20:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-07-03 12:31:45','2023-07-03 12:31:45','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-07-08 22:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(45,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-07-05 16:31:45','2023-07-05 16:31:45','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-07-08 22:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(48,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-07-04 14:31:45','2023-07-04 14:31:45','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-07-08 22:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-07-01 00:31:45','2023-07-01 00:31:45','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-07-09 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(53,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2023-07-03 00:31:45','2023-07-03 00:31:45','Botble\\ACL\\Models\\User'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-07-09 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-07-06 00:31:45','2023-07-06 00:31:45','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-07-09 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(58,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2023-07-09 02:31:45','2023-07-09 02:31:45','Botble\\ACL\\Models\\User'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-07-09 02:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(61,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2023-07-05 10:31:45','2023-07-05 10:31:45','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-07-09 02:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(64,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-07-07 12:31:45','2023-07-07 12:31:45','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-07-09 04:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(67,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-07-05 00:31:45','2023-07-05 00:31:45','Botble\\ACL\\Models\\User'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-07-09 04:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,27,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2023-07-02 12:31:45','2023-07-02 12:31:45','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-07-09 04:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2023-07-04 18:31:46','2023-07-04 18:31:46','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-07-09 06:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(75,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(76,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-07-03 06:31:46','2023-07-03 06:31:46','Botble\\ACL\\Models\\User'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-07-09 06:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(78,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,30,30,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(79,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(80,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-07-07 18:31:46','2023-07-07 18:31:46','Botble\\ACL\\Models\\User'),(81,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-07-09 06:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(82,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-07-07 08:31:46','2023-07-07 08:31:46','Botble\\ACL\\Models\\User'),(83,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-07-09 08:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(84,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(85,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-07-06 00:31:46','2023-07-06 00:31:46','Botble\\ACL\\Models\\User'),(86,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-07-09 08:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(88,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-07-04 00:31:46','2023-07-04 00:31:46','Botble\\ACL\\Models\\User'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-07-09 08:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(90,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2023-07-05 08:31:46','2023-07-05 08:31:46','Botble\\ACL\\Models\\User'),(91,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-07-09 08:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(92,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-07-04 18:31:46','2023-07-04 18:31:46','Botble\\ACL\\Models\\User'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-07-09 10:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,36,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(95,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2023-07-04 04:31:46','2023-07-04 04:31:46','Botble\\ACL\\Models\\User'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-07-09 10:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(97,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-07-06 00:31:46','2023-07-06 00:31:46','Botble\\ACL\\Models\\User'),(98,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-07-09 12:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(99,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-07-08 12:31:46','2023-07-08 12:31:46','Botble\\ACL\\Models\\User'),(100,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-07-09 12:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(102,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2023-07-06 00:31:46','2023-07-06 00:31:46','Botble\\ACL\\Models\\User'),(103,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2023-07-09 12:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(104,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(105,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2023-07-06 16:31:46','2023-07-06 16:31:46','Botble\\ACL\\Models\\User'),(106,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2023-07-09 14:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(107,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2023-07-05 20:31:46','2023-07-05 20:31:46','Botble\\ACL\\Models\\User'),(108,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2023-07-09 14:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(109,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,42,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(110,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2023-07-08 18:31:46','2023-07-08 18:31:46','Botble\\ACL\\Models\\User'),(111,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2023-07-09 14:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(112,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2023-07-07 16:31:46','2023-07-07 16:31:46','Botble\\ACL\\Models\\User'),(113,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2023-07-09 16:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(114,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2023-07-08 00:31:46','2023-07-08 00:31:46','Botble\\ACL\\Models\\User'),(115,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2023-07-09 16:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(116,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2023-07-08 16:31:46','2023-07-08 16:31:46','Botble\\ACL\\Models\\User'),(117,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2023-07-09 16:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,46,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(119,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2023-07-09 16:31:46','2023-07-09 16:31:46','Botble\\ACL\\Models\\User'),(120,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,47,47,'2023-07-09 16:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(121,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,47,47,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(122,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2023-07-08 00:31:46','2023-07-08 00:31:46','Botble\\ACL\\Models\\User'),(123,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,48,48,'2023-07-09 18:31:46','2023-07-10 00:31:46','Botble\\ACL\\Models\\User'),(124,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2023-07-08 06:31:46','2023-07-08 06:31:46','Botble\\ACL\\Models\\User'),(125,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,49,49,'2023-07-09 18:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(126,'create_from_order','Shipping was created from order %order_id%',0,50,50,'2023-07-08 16:31:47','2023-07-08 16:31:47','Botble\\ACL\\Models\\User'),(127,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,50,50,'2023-07-09 20:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(128,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,50,50,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(129,'create_from_order','Shipping was created from order %order_id%',0,51,51,'2023-07-08 12:31:47','2023-07-08 12:31:47','Botble\\ACL\\Models\\User'),(130,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,51,51,'2023-07-09 20:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(131,'create_from_order','Shipping was created from order %order_id%',0,52,52,'2023-07-08 20:31:47','2023-07-08 20:31:47','Botble\\ACL\\Models\\User'),(132,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,52,52,'2023-07-09 20:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(133,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,52,52,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(134,'create_from_order','Shipping was created from order %order_id%',0,53,53,'2023-07-09 10:31:47','2023-07-09 10:31:47','Botble\\ACL\\Models\\User'),(135,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,53,53,'2023-07-09 22:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(136,'create_from_order','Shipping was created from order %order_id%',0,54,54,'2023-07-09 12:31:47','2023-07-09 12:31:47','Botble\\ACL\\Models\\User'),(137,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,54,54,'2023-07-09 22:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User'),(138,'create_from_order','Shipping was created from order %order_id%',0,55,55,'2023-07-09 18:31:47','2023-07-09 18:31:47','Botble\\ACL\\Models\\User'),(139,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,55,55,'2023-07-09 22:31:47','2023-07-10 00:31:47','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,1344.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','JJD001877463','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:44',NULL,NULL,NULL),(2,2,NULL,2235.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','JJD0065777944','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-20 07:31:44',NULL,NULL,NULL),(3,3,NULL,1482.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','JJD0097100034','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-14 07:31:44',NULL,NULL,NULL),(4,4,NULL,1426.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','JJD0019069907','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-17 07:31:44','2023-07-10 07:31:44',NULL,NULL),(5,5,NULL,741.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','JJD0028028855','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-20 07:31:44',NULL,NULL,NULL),(6,6,NULL,713.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:44','2023-07-10 00:31:44','JJD0026906592','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:44','2023-07-10 07:31:44',NULL,NULL),(7,7,NULL,1482.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0072095417','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-12 07:31:45',NULL,NULL,NULL),(8,8,NULL,2661.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0065010486','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-11 07:31:45','2023-07-10 07:31:45',NULL,NULL),(9,9,NULL,1128.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0082911928','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-20 07:31:45',NULL,NULL,NULL),(10,10,NULL,3906.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD002498753','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-20 07:31:45','2023-07-10 07:31:45',NULL,NULL),(11,11,NULL,1106.00,NULL,NULL,'','delivered',238.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0058301228','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-16 07:31:45','2023-07-10 07:31:45',NULL,NULL),(12,12,NULL,1000.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0033165623','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-11 07:31:45',NULL,NULL,NULL),(13,13,NULL,2235.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0089610345','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:45','2023-07-10 07:31:45',NULL,NULL),(14,14,NULL,2433.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0014371189','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-17 07:31:45','2023-07-10 07:31:45',NULL,NULL),(15,15,NULL,3705.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD004021843','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-15 07:31:45',NULL,NULL,NULL),(16,16,NULL,2798.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD003687239','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-16 07:31:45',NULL,NULL,NULL),(17,17,NULL,1374.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0023444832','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-18 07:31:45',NULL,NULL,NULL),(18,18,NULL,1490.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0041753766','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-14 07:31:45',NULL,NULL,NULL),(19,19,NULL,741.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0052046137','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-12 07:31:45','2023-07-10 07:31:45',NULL,NULL),(20,20,NULL,1950.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0030143835','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-15 07:31:45','2023-07-10 07:31:45',NULL,NULL),(21,21,NULL,1692.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0049825438','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-11 07:31:45',NULL,NULL,NULL),(22,22,NULL,1010.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0057404637','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-20 07:31:45','2023-07-10 07:31:45',NULL,NULL),(23,23,NULL,850.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0065456793','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:45',NULL,NULL,NULL),(24,24,NULL,2372.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0060715624','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-14 07:31:45','2023-07-10 07:31:45',NULL,NULL),(25,25,NULL,689.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD006518552','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-16 07:31:45','2023-07-10 07:31:45',NULL,NULL),(26,26,NULL,687.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD004026196','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:45','2023-07-10 07:31:45',NULL,NULL),(27,27,NULL,1623.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:45','2023-07-10 00:31:45','JJD0017541282','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-16 07:31:45','2023-07-10 07:31:45',NULL,NULL),(28,28,NULL,553.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0046019520','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-15 07:31:46','2023-07-10 07:31:46',NULL,NULL),(29,29,NULL,3819.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0074775363','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-12 07:31:46','2023-07-10 07:31:46',NULL,NULL),(30,30,NULL,745.00,NULL,NULL,'','delivered',48.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0071279347','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:46','2023-07-10 07:31:46',NULL,NULL),(31,31,NULL,2067.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD001702450','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-19 07:31:46',NULL,NULL,NULL),(32,32,NULL,2661.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0051661863','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-14 07:31:46','2023-07-10 07:31:46',NULL,NULL),(33,33,NULL,741.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0061293611','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-11 07:31:46','2023-07-10 07:31:46',NULL,NULL),(34,34,NULL,553.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0057228815','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-19 07:31:46',NULL,NULL,NULL),(35,35,NULL,1726.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0027064169','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-15 07:31:46',NULL,NULL,NULL),(36,36,NULL,713.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0056120153','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:46','2023-07-10 07:31:46',NULL,NULL),(37,37,NULL,745.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0068273968','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-18 07:31:46',NULL,NULL,NULL),(38,38,NULL,2235.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0044215143','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-19 07:31:46',NULL,NULL,NULL),(39,39,NULL,1461.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD004596577','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-18 07:31:46','2023-07-10 07:31:46',NULL,NULL),(40,40,NULL,505.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0031209795','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-11 07:31:46','2023-07-10 07:31:46',NULL,NULL),(41,41,NULL,2223.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0033882856','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-14 07:31:46',NULL,NULL,NULL),(42,42,NULL,1839.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0071363628','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-18 07:31:46','2023-07-10 07:31:46',NULL,NULL),(43,43,NULL,1000.00,NULL,NULL,'','approved',222.00,'pending','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0079183902','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-18 07:31:46',NULL,NULL,NULL),(44,44,NULL,2616.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0090944690','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-16 07:31:46',NULL,NULL,NULL),(45,45,NULL,1692.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0091785085','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:46',NULL,NULL,NULL),(46,46,NULL,1378.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0037550711','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-17 07:31:46','2023-07-10 07:31:46',NULL,NULL),(47,47,NULL,1950.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0071212933','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-11 07:31:46','2023-07-10 07:31:46',NULL,NULL),(48,48,NULL,811.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:46','2023-07-10 00:31:46','JJD0022210700','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-12 07:31:46',NULL,NULL,NULL),(49,49,NULL,619.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','JJD0013906733','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-19 07:31:47',NULL,NULL,NULL),(50,50,NULL,3798.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','JJD0067983572','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-16 07:31:47','2023-07-10 07:31:47',NULL,NULL),(51,51,NULL,887.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','JJD0099565494','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-13 07:31:47',NULL,NULL,NULL),(52,52,NULL,564.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','JJD0096461844','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-17 07:31:47','2023-07-10 07:31:47',NULL,NULL),(53,53,NULL,786.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','JJD0073114077','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-16 07:31:47',NULL,NULL,NULL),(54,54,NULL,1692.00,NULL,NULL,'','approved',348.00,'pending','pending',0.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','JJD0082663909','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-18 07:31:47',NULL,NULL,NULL),(55,55,NULL,553.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-07-10 00:31:47','2023-07-10 00:31:47','JJD0022162734','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-07-14 07:31:47',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-07-10 00:31:36','2023-07-10 00:31:36');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-07-10 00:31:36','2023-07-10 00:31:36');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2023-07-10 00:31:36','2023-07-10 00:31:36');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-07-10 00:31:35','2023-07-10 00:31:35'),(2,'None',0.000000,2,'published','2023-07-10 00:31:35','2023-07-10 00:31:35'),(3,'Import Tax',15.000000,3,'published','2023-07-10 00:31:35','2023-07-10 00:31:35');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(2,'Payment',1,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(3,'Order &amp; Returns',2,'published','2023-07-10 00:31:41','2023-07-10 00:31:41');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-07-10 00:31:41','2023-07-10 00:31:41'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-07-10 00:31:41','2023-07-10 00:31:41');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,NULL,'e04278876ec92be4cf083e76dd71ef70',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,NULL,'dc1eb6cecbe30a554c9553a709771cde',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,NULL,'73cf857a6e0717b9cfb92f1ba6b1fa31',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,NULL,'ee2dd93d5e844b88b7a14374ddc56f6b',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,NULL,'874b310d6b4e04beacd616b58ea57ad7',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,NULL,'df23fca1b271acd14fa2533412868288',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,NULL,'c71b4ff721d2f47dd9542ec7d61c101d',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,NULL,'e721ea3d9f98c656979870c5dc3786a2',1,'Botble\\Menu\\Models\\MenuLocation'),(9,NULL,'72ab0463f1bf84c96aedad2373a39569',1,'Botble\\Menu\\Models\\Menu'),(10,NULL,'b4ab2bd6377bb9502ed72955a6b79875',2,'Botble\\Menu\\Models\\MenuLocation'),(11,NULL,'d78aba57942ed8a31b92b5e97ecdfdc5',2,'Botble\\Menu\\Models\\Menu'),(12,NULL,'b6cec2a4b0fd5493efc81e30b022db6f',3,'Botble\\Menu\\Models\\Menu'),(13,NULL,'fecea513a8df5128a892ac468bdd5d42',4,'Botble\\Menu\\Models\\Menu'),(14,NULL,'46d5a6f86ce51e75b6553e7c31b286c7',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',1307,'product-categories/icon-1.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(2,0,'icon-10','icon-10',1,'image/png',1307,'product-categories/icon-10.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(3,0,'icon-11','icon-11',1,'image/png',1307,'product-categories/icon-11.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(4,0,'icon-12','icon-12',1,'image/png',1307,'product-categories/icon-12.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(5,0,'icon-13','icon-13',1,'image/png',1307,'product-categories/icon-13.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(6,0,'icon-14','icon-14',1,'image/png',1307,'product-categories/icon-14.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(7,0,'icon-2','icon-2',1,'image/png',1307,'product-categories/icon-2.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(8,0,'icon-3','icon-3',1,'image/png',1307,'product-categories/icon-3.png','[]','2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(9,0,'icon-4','icon-4',1,'image/png',1307,'product-categories/icon-4.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(10,0,'icon-5','icon-5',1,'image/png',1307,'product-categories/icon-5.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(11,0,'icon-6','icon-6',1,'image/png',1307,'product-categories/icon-6.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(12,0,'icon-7','icon-7',1,'image/png',1307,'product-categories/icon-7.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(13,0,'icon-8','icon-8',1,'image/png',1307,'product-categories/icon-8.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(14,0,'icon-9','icon-9',1,'image/png',1307,'product-categories/icon-9.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(15,0,'image-1','image-1',1,'image/png',1307,'product-categories/image-1.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(16,0,'image-10','image-10',1,'image/png',1307,'product-categories/image-10.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(17,0,'image-11','image-11',1,'image/png',1307,'product-categories/image-11.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(18,0,'image-12','image-12',1,'image/png',1307,'product-categories/image-12.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(19,0,'image-13','image-13',1,'image/png',1307,'product-categories/image-13.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(20,0,'image-14','image-14',1,'image/png',1307,'product-categories/image-14.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(21,0,'image-15','image-15',1,'image/png',1307,'product-categories/image-15.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(22,0,'image-2','image-2',1,'image/png',1307,'product-categories/image-2.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(23,0,'image-3','image-3',1,'image/png',1307,'product-categories/image-3.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(24,0,'image-4','image-4',1,'image/png',1307,'product-categories/image-4.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(25,0,'image-5','image-5',1,'image/png',1307,'product-categories/image-5.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(26,0,'image-6','image-6',1,'image/png',1307,'product-categories/image-6.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(27,0,'image-7','image-7',1,'image/png',1307,'product-categories/image-7.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(28,0,'image-8','image-8',1,'image/png',1307,'product-categories/image-8.png','[]','2023-07-10 00:31:30','2023-07-10 00:31:30',NULL),(29,0,'image-9','image-9',1,'image/png',1307,'product-categories/image-9.png','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(30,0,'1-1','1-1',2,'image/jpeg',2165,'products/1-1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(31,0,'1','1',2,'image/jpeg',2165,'products/1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(32,0,'10-1','10-1',2,'image/jpeg',2165,'products/10-1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(33,0,'10','10',2,'image/jpeg',2165,'products/10.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(34,0,'11-1','11-1',2,'image/jpeg',2165,'products/11-1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(35,0,'11','11',2,'image/jpeg',2165,'products/11.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(36,0,'12-1','12-1',2,'image/jpeg',2165,'products/12-1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(37,0,'12','12',2,'image/jpeg',2165,'products/12.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(38,0,'13-1','13-1',2,'image/jpeg',2165,'products/13-1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(39,0,'13','13',2,'image/jpeg',2165,'products/13.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(40,0,'14-1','14-1',2,'image/jpeg',2165,'products/14-1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(41,0,'14','14',2,'image/jpeg',2165,'products/14.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(42,0,'15-1','15-1',2,'image/jpeg',2165,'products/15-1.jpg','[]','2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(43,0,'15','15',2,'image/jpeg',2165,'products/15.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(44,0,'16-1','16-1',2,'image/jpeg',2165,'products/16-1.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(45,0,'16-2','16-2',2,'image/jpeg',2165,'products/16-2.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(46,0,'16-3','16-3',2,'image/jpeg',2165,'products/16-3.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(47,0,'16-4','16-4',2,'image/jpeg',2165,'products/16-4.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(48,0,'16-5','16-5',2,'image/jpeg',2165,'products/16-5.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(49,0,'16-6','16-6',2,'image/jpeg',2165,'products/16-6.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(50,0,'16','16',2,'image/jpeg',2165,'products/16.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(51,0,'17-1','17-1',2,'image/jpeg',2165,'products/17-1.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(52,0,'17','17',2,'image/jpeg',2165,'products/17.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(53,0,'18-1','18-1',2,'image/jpeg',2165,'products/18-1.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(54,0,'18','18',2,'image/jpeg',2165,'products/18.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(55,0,'19-1','19-1',2,'image/jpeg',2165,'products/19-1.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(56,0,'19','19',2,'image/jpeg',2165,'products/19.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(57,0,'2-1','2-1',2,'image/jpeg',2165,'products/2-1.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(58,0,'2','2',2,'image/jpeg',2165,'products/2.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(59,0,'20-1','20-1',2,'image/jpeg',2165,'products/20-1.jpg','[]','2023-07-10 00:31:32','2023-07-10 00:31:32',NULL),(60,0,'20','20',2,'image/jpeg',2165,'products/20.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(61,0,'21-1','21-1',2,'image/jpeg',2165,'products/21-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(62,0,'21','21',2,'image/jpeg',2165,'products/21.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(63,0,'22-1','22-1',2,'image/jpeg',2165,'products/22-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(64,0,'22','22',2,'image/jpeg',2165,'products/22.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(65,0,'23-1','23-1',2,'image/jpeg',2165,'products/23-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(66,0,'23','23',2,'image/jpeg',2165,'products/23.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(67,0,'24-1','24-1',2,'image/jpeg',2165,'products/24-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(68,0,'24','24',2,'image/jpeg',2165,'products/24.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(69,0,'3-1','3-1',2,'image/jpeg',2165,'products/3-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(70,0,'3','3',2,'image/jpeg',2165,'products/3.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(71,0,'4-1','4-1',2,'image/jpeg',2165,'products/4-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(72,0,'4','4',2,'image/jpeg',2165,'products/4.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(73,0,'5-1','5-1',2,'image/jpeg',2165,'products/5-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(74,0,'5','5',2,'image/jpeg',2165,'products/5.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(75,0,'6-1','6-1',2,'image/jpeg',2165,'products/6-1.jpg','[]','2023-07-10 00:31:33','2023-07-10 00:31:33',NULL),(76,0,'6','6',2,'image/jpeg',2165,'products/6.jpg','[]','2023-07-10 00:31:34','2023-07-10 00:31:34',NULL),(77,0,'7-1','7-1',2,'image/jpeg',2165,'products/7-1.jpg','[]','2023-07-10 00:31:34','2023-07-10 00:31:34',NULL),(78,0,'7','7',2,'image/jpeg',2165,'products/7.jpg','[]','2023-07-10 00:31:34','2023-07-10 00:31:34',NULL),(79,0,'8-1','8-1',2,'image/jpeg',2165,'products/8-1.jpg','[]','2023-07-10 00:31:34','2023-07-10 00:31:34',NULL),(80,0,'8','8',2,'image/jpeg',2165,'products/8.jpg','[]','2023-07-10 00:31:34','2023-07-10 00:31:34',NULL),(81,0,'9-1','9-1',2,'image/jpeg',2165,'products/9-1.jpg','[]','2023-07-10 00:31:34','2023-07-10 00:31:34',NULL),(82,0,'9','9',2,'image/jpeg',2165,'products/9.jpg','[]','2023-07-10 00:31:34','2023-07-10 00:31:34',NULL),(83,0,'1','1',3,'image/jpeg',2165,'customers/1.jpg','[]','2023-07-10 00:31:35','2023-07-10 00:31:35',NULL),(84,0,'2','2',3,'image/jpeg',2165,'customers/2.jpg','[]','2023-07-10 00:31:35','2023-07-10 00:31:35',NULL),(85,0,'3','3',3,'image/jpeg',2165,'customers/3.jpg','[]','2023-07-10 00:31:35','2023-07-10 00:31:35',NULL),(86,0,'4','4',3,'image/jpeg',2165,'customers/4.jpg','[]','2023-07-10 00:31:35','2023-07-10 00:31:35',NULL),(87,0,'5','5',3,'image/jpeg',2165,'customers/5.jpg','[]','2023-07-10 00:31:35','2023-07-10 00:31:35',NULL),(88,0,'6','6',3,'image/jpeg',2165,'customers/6.jpg','[]','2023-07-10 00:31:36','2023-07-10 00:31:36',NULL),(89,0,'7','7',3,'image/jpeg',2165,'customers/7.jpg','[]','2023-07-10 00:31:36','2023-07-10 00:31:36',NULL),(90,0,'8','8',3,'image/jpeg',2165,'customers/8.jpg','[]','2023-07-10 00:31:36','2023-07-10 00:31:36',NULL),(91,0,'9','9',3,'image/jpeg',2165,'customers/9.jpg','[]','2023-07-10 00:31:36','2023-07-10 00:31:36',NULL),(92,0,'1','1',4,'image/png',3187,'flash-sales/1.png','[]','2023-07-10 00:31:36','2023-07-10 00:31:36',NULL),(93,0,'2','2',4,'image/png',2392,'flash-sales/2.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(94,0,'3','3',4,'image/png',2392,'flash-sales/3.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(95,0,'4','4',4,'image/png',2392,'flash-sales/4.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(96,0,'5','5',4,'image/png',2392,'flash-sales/5.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(97,0,'1-1','1-1',5,'image/png',10577,'sliders/1-1.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(98,0,'1-2','1-2',5,'image/png',10577,'sliders/1-2.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(99,0,'1-3','1-3',5,'image/png',2697,'sliders/1-3.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(100,0,'2-1','2-1',5,'image/png',4556,'sliders/2-1.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(101,0,'2-2','2-2',5,'image/png',4556,'sliders/2-2.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(102,0,'2-3','2-3',5,'image/png',2697,'sliders/2-3.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(103,0,'3-1','3-1',5,'image/png',10577,'sliders/3-1.png','[]','2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(104,0,'3-2','3-2',5,'image/png',10577,'sliders/3-2.png','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(105,0,'4-1','4-1',5,'image/png',10577,'sliders/4-1.png','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(106,0,'4-2','4-2',5,'image/png',10577,'sliders/4-2.png','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(107,0,'4-3','4-3',5,'image/png',2697,'sliders/4-3.png','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(108,0,'5-1','5-1',5,'image/png',5213,'sliders/5-1.png','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(109,0,'5-2','5-2',5,'image/png',5213,'sliders/5-2.png','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(110,0,'banner-1','banner-1',5,'image/png',12801,'sliders/banner-1.png','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(111,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',2165,'sliders/thumbnail-1.jpg','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(112,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',2165,'sliders/thumbnail-2.jpg','[]','2023-07-10 00:31:38','2023-07-10 00:31:38',NULL),(113,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',2165,'sliders/thumbnail-3.jpg','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(114,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',2165,'sliders/thumbnail-4.jpg','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(115,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',2165,'sliders/thumbnail-5.jpg','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(116,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',2165,'sliders/thumbnail-6.jpg','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(117,0,'1','1',6,'image/png',2165,'news/1.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(118,0,'10','10',6,'image/png',2165,'news/10.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(119,0,'11','11',6,'image/png',2165,'news/11.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(120,0,'2','2',6,'image/png',2165,'news/2.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(121,0,'3','3',6,'image/png',2165,'news/3.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(122,0,'4','4',6,'image/png',2165,'news/4.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(123,0,'5','5',6,'image/png',2165,'news/5.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(124,0,'6','6',6,'image/png',2165,'news/6.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(125,0,'7','7',6,'image/png',2165,'news/7.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(126,0,'8','8',6,'image/png',2165,'news/8.png','[]','2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(127,0,'9','9',6,'image/png',2165,'news/9.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(128,0,'1','1',7,'image/png',3010,'promotion/1.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(129,0,'10','10',7,'image/png',2722,'promotion/10.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(130,0,'11','11',7,'image/png',2722,'promotion/11.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(131,0,'12','12',7,'image/png',2722,'promotion/12.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(132,0,'2','2',7,'image/png',3010,'promotion/2.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(133,0,'3','3',7,'image/png',3010,'promotion/3.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(134,0,'4','4',7,'image/png',2266,'promotion/4.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(135,0,'5','5',7,'image/png',3847,'promotion/5.png','[]','2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(136,0,'6','6',7,'image/png',3847,'promotion/6.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(137,0,'7','7',7,'image/png',2905,'promotion/7.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(138,0,'8','8',7,'image/png',1926,'promotion/8.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(139,0,'9','9',7,'image/png',2722,'promotion/9.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(140,0,'app-store','app-store',8,'image/jpeg',1064,'general/app-store.jpg','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(141,0,'category-1','category-1',8,'image/png',231,'general/category-1.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(142,0,'clock','clock',8,'image/png',5056,'general/clock.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(143,0,'credit-card','credit-card',8,'image/png',1716,'general/credit-card.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(144,0,'facebook','facebook',8,'image/png',646,'general/facebook.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(145,0,'favicon','favicon',8,'image/png',3890,'general/favicon.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(146,0,'google-play','google-play',8,'image/jpeg',1064,'general/google-play.jpg','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(147,0,'header-bg','header-bg',8,'image/png',16995,'general/header-bg.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(148,0,'home-6','home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(149,0,'icon-1','icon-1',8,'image/png',2024,'general/icon-1.png','[]','2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(150,0,'icon-2','icon-2',8,'image/png',3531,'general/icon-2.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(151,0,'icon-3','icon-3',8,'image/png',2344,'general/icon-3.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(152,0,'icon-4','icon-4',8,'image/png',2314,'general/icon-4.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(153,0,'icon-5','icon-5',8,'image/png',2853,'general/icon-5.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(154,0,'instagram','instagram',8,'image/png',2586,'general/instagram.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(155,0,'loading','loading',8,'image/gif',25062,'general/loading.gif','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(156,0,'login-1','login-1',8,'image/png',3099,'general/login-1.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(157,0,'logo','logo',8,'image/png',16457,'general/logo.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(158,0,'newsletter-background-image','newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(159,0,'newsletter-image','newsletter-image',8,'image/png',3997,'general/newsletter-image.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(160,0,'open-graph-image','open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(161,0,'paper-plane','paper-plane',8,'image/png',5119,'general/paper-plane.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(162,0,'payment-methods','payment-methods',8,'image/png',268,'general/payment-methods.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(163,0,'pinterest','pinterest',8,'image/png',2128,'general/pinterest.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(164,0,'twitter','twitter',8,'image/png',1759,'general/twitter.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(165,0,'youtube','youtube',8,'image/png',1083,'general/youtube.png','[]','2023-07-10 00:31:42','2023-07-10 00:31:42',NULL),(166,0,'1','1',9,'image/png',1307,'stores/1.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(167,0,'10','10',9,'image/png',1307,'stores/10.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(168,0,'11','11',9,'image/png',1307,'stores/11.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(169,0,'12','12',9,'image/png',1307,'stores/12.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(170,0,'13','13',9,'image/png',1307,'stores/13.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(171,0,'14','14',9,'image/png',1307,'stores/14.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(172,0,'15','15',9,'image/png',1307,'stores/15.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(173,0,'16','16',9,'image/png',1307,'stores/16.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(174,0,'17','17',9,'image/png',1307,'stores/17.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(175,0,'2','2',9,'image/png',1307,'stores/2.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(176,0,'3','3',9,'image/png',1307,'stores/3.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(177,0,'4','4',9,'image/png',1307,'stores/4.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(178,0,'5','5',9,'image/png',1307,'stores/5.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(179,0,'6','6',9,'image/png',1307,'stores/6.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(180,0,'7','7',9,'image/png',1307,'stores/7.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(181,0,'8','8',9,'image/png',1307,'stores/8.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL),(182,0,'9','9',9,'image/png',1307,'stores/9.png','[]','2023-07-10 00:31:43','2023-07-10 00:31:43',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2023-07-10 00:31:29','2023-07-10 00:31:29',NULL),(2,0,'products','products',0,'2023-07-10 00:31:31','2023-07-10 00:31:31',NULL),(3,0,'customers','customers',0,'2023-07-10 00:31:35','2023-07-10 00:31:35',NULL),(4,0,'flash-sales','flash-sales',0,'2023-07-10 00:31:36','2023-07-10 00:31:36',NULL),(5,0,'sliders','sliders',0,'2023-07-10 00:31:37','2023-07-10 00:31:37',NULL),(6,0,'news','news',0,'2023-07-10 00:31:39','2023-07-10 00:31:39',NULL),(7,0,'promotion','promotion',0,'2023-07-10 00:31:40','2023-07-10 00:31:40',NULL),(8,0,'general','general',0,'2023-07-10 00:31:41','2023-07-10 00:31:41',NULL),(9,0,'stores','stores',0,'2023-07-10 00:31:42','2023-07-10 00:31:42',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-07-10 00:31:44','2023-07-10 00:31:44'),(2,2,'header-navigation','2023-07-10 00:31:44','2023-07-10 00:31:44');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-07-10 00:31:44','2023-07-10 00:31:44');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-07-10 00:31:44','2023-07-10 00:31:44'),(2,'Header menu','header-menu','published','2023-07-10 00:31:44','2023-07-10 00:31:44'),(3,'Product categories','product-categories','published','2023-07-10 00:31:44','2023-07-10 00:31:44'),(4,'Information','information','published','2023-07-10 00:31:44','2023-07-10 00:31:44'),(5,'Company','company','published','2023-07-10 00:31:44','2023-07-10 00:31:44');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-07-10 00:31:31','2023-07-10 00:31:31'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-07-10 00:31:34','2023-07-10 00:31:34'),(68,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-07-10 00:31:37','2023-07-10 00:31:37'),(69,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-07-10 00:31:37','2023-07-10 00:31:37'),(70,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-07-10 00:31:37','2023-07-10 00:31:37'),(71,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-07-10 00:31:37','2023-07-10 00:31:37'),(72,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-07-10 00:31:37','2023-07-10 00:31:37'),(73,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-07-10 00:31:39','2023-07-10 00:31:39'),(74,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-07-10 00:31:39','2023-07-10 00:31:39'),(75,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-07-10 00:31:39','2023-07-10 00:31:39'),(76,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-07-10 00:31:39','2023-07-10 00:31:39'),(77,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-07-10 00:31:39','2023-07-10 00:31:39'),(78,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-07-10 00:31:39','2023-07-10 00:31:39'),(79,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-07-10 00:31:39','2023-07-10 00:31:39'),(80,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2023-07-10 00:31:40','2023-07-10 00:31:40'),(81,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2023-07-10 00:31:40','2023-07-10 00:31:40'),(82,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(83,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(84,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(85,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(86,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(87,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(88,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(89,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(90,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(91,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(92,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(93,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(94,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(95,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(96,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(97,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(98,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(99,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(100,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(101,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(102,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(103,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(104,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(105,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2023-07-10 00:31:41','2023-07-10 00:31:41'),(106,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2023-07-10 00:31:44','2023-07-10 00:31:44'),(107,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2023-07-10 00:31:44','2023-07-10 00:31:44'),(108,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2023-07-10 00:31:44','2023-07-10 00:31:44'),(109,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2023-07-10 00:31:44','2023-07-10 00:31:44'),(110,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2023-07-10 00:31:44','2023-07-10 00:31:44'),(111,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',6,'Botble\\Marketplace\\Models\\Store','2023-07-10 00:31:44','2023-07-10 00:31:44'),(112,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',7,'Botble\\Marketplace\\Models\\Store','2023-07-10 00:31:44','2023-07-10 00:31:44');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2020_11_18_150916_ads_create_ads_table',2),(29,'2021_12_02_035301_add_ads_translations_table',2),(30,'2023_04_17_062645_add_open_in_new_tab',2),(31,'2015_06_29_025744_create_audit_history',3),(32,'2015_06_18_033822_create_blog_table',4),(33,'2021_02_16_092633_remove_default_value_for_author_type',4),(34,'2021_12_03_030600_create_blog_translations',4),(35,'2022_04_19_113923_add_index_to_table_posts',4),(36,'2016_06_17_091537_create_contacts_table',5),(37,'2020_03_05_041139_create_ecommerce_tables',6),(38,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(39,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(40,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(41,'2021_02_18_073505_update_table_ec_reviews',6),(42,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(43,'2021_03_10_025153_change_column_tax_amount',6),(44,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(45,'2021_04_28_074008_ecommerce_create_product_label_table',6),(46,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(47,'2021_06_28_153141_correct_slugs_data',6),(48,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(49,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(50,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(51,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(52,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(53,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(54,'2021_11_23_071403_correct_languages_for_product_variations',6),(55,'2021_11_28_031808_add_product_tags_translations',6),(56,'2021_12_01_031123_add_featured_image_to_ec_products',6),(57,'2022_01_01_033107_update_table_ec_shipments',6),(58,'2022_02_16_042457_improve_product_attribute_sets',6),(59,'2022_03_22_075758_correct_product_name',6),(60,'2022_04_19_113334_add_index_to_ec_products',6),(61,'2022_04_28_144405_remove_unused_table',6),(62,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(63,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(64,'2022_06_16_095633_add_index_to_some_tables',6),(65,'2022_06_30_035148_create_order_referrals_table',6),(66,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(67,'2022_08_14_032836_create_ec_order_returns_table',6),(68,'2022_08_14_033554_create_ec_order_return_items_table',6),(69,'2022_08_15_040324_add_billing_address',6),(70,'2022_08_30_091114_support_digital_products_table',6),(71,'2022_09_13_095744_create_options_table',6),(72,'2022_09_13_104347_create_option_value_table',6),(73,'2022_10_05_163518_alter_table_ec_order_product',6),(74,'2022_10_12_041517_create_invoices_table',6),(75,'2022_10_12_142226_update_orders_table',6),(76,'2022_10_13_024916_update_table_order_returns',6),(77,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(78,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(79,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(80,'2022_11_19_041643_add_ec_tax_product_table',6),(81,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(82,'2022_12_17_041532_fix_address_in_order_invoice',6),(83,'2022_12_26_070329_create_ec_product_views_table',6),(84,'2023_01_04_033051_fix_product_categories',6),(85,'2023_01_09_050400_add_ec_global_options_translations_table',6),(86,'2023_01_10_093754_add_missing_option_value_id',6),(87,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(88,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(89,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(90,'2023_02_27_095752_remove_duplicate_reviews',6),(91,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(92,'2023_04_21_082427_create_ec_product_categorizables_table',6),(93,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(94,'2023_05_17_025812_fix_invoice_issue',6),(95,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(96,'2023_05_27_144611_fix_exchange_rate_setting',6),(97,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(98,'2023_06_30_042512_create_ec_order_tax_information_table',6),(99,'2018_07_09_221238_create_faq_table',7),(100,'2021_12_03_082134_create_faq_translations',7),(101,'2016_10_03_032336_create_languages_table',8),(102,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(103,'2021_12_03_075608_create_page_translations',9),(104,'2023_07_06_011444_create_slug_translations_table',9),(105,'2019_11_18_061011_create_country_table',10),(106,'2021_12_03_084118_create_location_translations',10),(107,'2021_12_03_094518_migrate_old_location_data',10),(108,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(109,'2022_01_16_085908_improve_plugin_location',10),(110,'2022_08_04_052122_delete_location_backup_tables',10),(111,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(112,'2021_07_06_030002_create_marketplace_table',11),(113,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(114,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(115,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(116,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(117,'2021_12_06_031304_update_table_mp_customer_revenues',11),(118,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(119,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(120,'2022_11_02_071413_add_more_info_for_store',11),(121,'2022_11_02_080444_add_tax_info',11),(122,'2023_02_01_062030_add_store_translations',11),(123,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(124,'2023_02_17_023648_fix_store_prefix',11),(125,'2017_10_24_154832_create_newsletter_table',12),(126,'2017_05_18_080441_create_payment_tables',13),(127,'2021_03_27_144913_add_customer_type_into_table_payments',13),(128,'2021_05_24_034720_make_column_currency_nullable',13),(129,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(130,'2021_10_19_020859_update_metadata_field',13),(131,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(132,'2022_07_07_153354_update_charge_id_in_table_payments',13),(133,'2017_07_11_140018_create_simple_slider_table',14),(134,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,3,4,530.00,0.00,530.00,0.00,'USD',NULL,'2023-07-07 02:31:47','2023-07-07 02:31:47',0,'add-amount'),(2,3,6,265.00,0.00,265.00,530.00,'USD',NULL,'2023-07-06 12:31:47','2023-07-06 12:31:47',0,'add-amount'),(3,6,8,888.00,0.00,888.00,0.00,'USD',NULL,'2023-07-05 12:31:47','2023-07-05 12:31:47',0,'add-amount'),(4,5,10,768.00,0.00,768.00,0.00,'USD',NULL,'2023-07-07 06:31:47','2023-07-07 06:31:47',0,'add-amount'),(5,10,13,144.00,0.00,144.00,0.00,'USD',NULL,'2023-07-01 20:31:47','2023-07-01 20:31:47',0,'add-amount'),(6,6,14,354.00,0.00,354.00,888.00,'USD',NULL,'2023-06-28 18:31:48','2023-06-28 18:31:48',0,'add-amount'),(7,2,19,116.00,0.00,116.00,0.00,'USD',NULL,'2023-07-06 16:31:48','2023-07-06 16:31:48',0,'add-amount'),(8,6,20,354.00,0.00,354.00,1242.00,'USD',NULL,'2023-06-27 18:31:48','2023-06-27 18:31:48',0,'add-amount'),(9,5,22,862.00,0.00,862.00,768.00,'USD',NULL,'2023-06-28 12:31:48','2023-06-28 12:31:48',0,'add-amount'),(10,3,24,622.00,0.00,622.00,795.00,'USD',NULL,'2023-07-03 18:31:48','2023-07-03 18:31:48',0,'add-amount'),(11,5,25,126.00,0.00,126.00,1630.00,'USD',NULL,'2023-07-05 16:31:48','2023-07-05 16:31:48',0,'add-amount'),(12,4,26,55.00,0.00,55.00,0.00,'USD',NULL,'2023-07-05 12:31:48','2023-07-05 12:31:48',0,'add-amount'),(13,5,27,992.00,0.00,992.00,1756.00,'USD',NULL,'2023-06-19 00:31:48','2023-06-19 00:31:48',0,'add-amount'),(14,3,28,119.00,0.00,119.00,1417.00,'USD',NULL,'2023-07-07 14:31:49','2023-07-07 14:31:49',0,'add-amount'),(15,3,29,1029.00,0.00,1029.00,1536.00,'USD',NULL,'2023-07-07 12:31:49','2023-07-07 12:31:49',0,'add-amount'),(16,6,32,888.00,0.00,888.00,1596.00,'USD',NULL,'2023-07-01 18:31:49','2023-07-01 18:31:49',0,'add-amount'),(17,2,33,116.00,0.00,116.00,116.00,'USD',NULL,'2023-06-20 04:31:49','2023-06-20 04:31:49',0,'add-amount'),(18,3,36,265.00,0.00,265.00,2565.00,'USD',NULL,'2023-06-09 04:31:49','2023-06-09 04:31:49',0,'add-amount'),(19,5,40,431.00,0.00,431.00,2748.00,'USD',NULL,'2023-07-06 14:31:49','2023-07-06 14:31:49',0,'add-amount'),(20,5,42,390.00,0.00,390.00,3179.00,'USD',NULL,'2023-07-02 20:31:49','2023-07-02 20:31:49',0,'add-amount'),(21,5,46,252.00,0.00,252.00,3569.00,'USD',NULL,'2023-05-31 20:31:49','2023-05-31 20:31:49',0,'add-amount'),(22,6,47,354.00,0.00,354.00,2484.00,'USD',NULL,'2023-05-31 00:31:50','2023-05-31 00:31:50',0,'add-amount'),(23,8,52,116.00,0.00,116.00,0.00,'USD',NULL,'2023-06-13 12:31:50','2023-06-13 12:31:50',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,53.00,232.00,'USD','','{\"name\":\"Jailyn Goyette\",\"number\":\"+14046329680\",\"full_name\":\"Tyson Lueilwitz\",\"description\":\"Heaven Kirlin\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50',NULL),(2,2,0.00,19.00,179.00,'USD','','{\"name\":\"Jailyn Goyette\",\"number\":\"+14046329680\",\"full_name\":\"Tyson Lueilwitz\",\"description\":\"Heaven Kirlin\"}',NULL,0,'processing',NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50',NULL),(3,3,0.00,213.00,2830.00,'USD','','{\"name\":\"Lesly Volkman\",\"number\":\"+12605371918\",\"full_name\":\"Mr. Philip Conroy I\",\"description\":\"Francesca Kuhn PhD\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50',NULL),(4,3,0.00,260.00,2617.00,'USD','','{\"name\":\"Lesly Volkman\",\"number\":\"+12605371918\",\"full_name\":\"Mr. Philip Conroy I\",\"description\":\"Francesca Kuhn PhD\"}',NULL,0,'processing',NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50',NULL),(5,4,0.00,6.00,55.00,'USD','','{\"name\":\"Vada Schuppe\",\"number\":\"+19209735148\",\"full_name\":\"Jadon Beer\",\"description\":\"Zelda Boehm\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50',NULL),(6,4,0.00,6.00,49.00,'USD','','{\"name\":\"Vada Schuppe\",\"number\":\"+19209735148\",\"full_name\":\"Jadon Beer\",\"description\":\"Zelda Boehm\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50',NULL),(7,5,0.00,681.00,3821.00,'USD','','{\"name\":\"Bart Gorczany\",\"number\":\"+13856629507\",\"full_name\":\"Prof. Dereck Jenkins\",\"description\":\"Ahmad Gottlieb\"}',NULL,0,'completed',NULL,'2023-07-10 00:31:50','2023-07-10 00:31:50',NULL),(8,5,0.00,168.00,3140.00,'USD','','{\"name\":\"Bart Gorczany\",\"number\":\"+13856629507\",\"full_name\":\"Prof. Dereck Jenkins\",\"description\":\"Ahmad Gottlieb\"}',NULL,0,'completed',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL),(9,5,0.00,598.00,2972.00,'USD','','{\"name\":\"Bart Gorczany\",\"number\":\"+13856629507\",\"full_name\":\"Prof. Dereck Jenkins\",\"description\":\"Ahmad Gottlieb\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL),(10,6,0.00,294.00,2838.00,'USD','','{\"name\":\"Donald Dickinson\",\"number\":\"+17868295474\",\"full_name\":\"Ulises Orn\",\"description\":\"Prof. Ellie Adams DVM\"}',NULL,0,'completed',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL),(11,6,0.00,551.00,2544.00,'USD','','{\"name\":\"Donald Dickinson\",\"number\":\"+17868295474\",\"full_name\":\"Ulises Orn\",\"description\":\"Prof. Ellie Adams DVM\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL),(12,8,0.00,13.00,116.00,'USD','','{\"name\":\"Mr. Tremayne Barton\",\"number\":\"+14706822562\",\"full_name\":\"Sylvan Schaefer Jr.\",\"description\":\"Dr. Dedric Vandervort\"}',NULL,0,'completed',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL),(13,8,0.00,5.00,103.00,'USD','','{\"name\":\"Mr. Tremayne Barton\",\"number\":\"+14706822562\",\"full_name\":\"Sylvan Schaefer Jr.\",\"description\":\"Dr. Dedric Vandervort\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL),(14,10,0.00,29.00,144.00,'USD','','{\"name\":\"Selena Rippin\",\"number\":\"+16196596573\",\"full_name\":\"Elise Sauer\",\"description\":\"Micah Kulas\"}',NULL,0,'processing',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL),(15,10,0.00,28.00,115.00,'USD','','{\"name\":\"Selena Rippin\",\"number\":\"+16196596573\",\"full_name\":\"Elise Sauer\",\"description\":\"Micah Kulas\"}',NULL,0,'pending',NULL,'2023-07-10 00:31:51','2023-07-10 00:31:51',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','jaida26@example.com','+14849760505','640 Wisoky Cliffs','IO','Colorado','West Griffin',2,'stores/1.png','Ipsam cumque nobis dolore dolorum et rerum velit.','Doloribus voluptates rerum consequatur praesentium ut. Magnam expedita tempora explicabo sit. Voluptas quidem sed harum dolores.','published',NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44',NULL,NULL),(2,'Global Office','elbert62@example.com','+15394962741','397 Emard Roads Suite 168','LA','Illinois','Lake Cathrine',3,'stores/2.png','Aut sed natus nesciunt aut.','Aperiam soluta quis earum dolores. Dolor suscipit deserunt vitae dicta ut voluptate quam. Facilis maiores architecto numquam id.','published',NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44',NULL,NULL),(3,'Young Shop','christy.king@example.org','+12763622532','9990 Justice Stream','ZA','Hawaii','Marqueschester',4,'stores/3.png','Est doloribus quod est ea.','Commodi doloribus laborum et earum earum aut. Excepturi esse facilis amet aspernatur aut.','published',NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44',NULL,NULL),(4,'Global Store','alvis.hilpert@example.org','+16789659528','9840 Emmie Drives Apt. 720','BB','New Mexico','Mohrberg',5,'stores/4.png','Sed quia pariatur architecto ex.','Quia incidunt laborum earum ipsa expedita. Culpa est eos eum aut libero earum.','published',NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44',NULL,NULL),(5,'Robert’s Store','samantha00@example.com','+16034977376','2674 Cronin Shores Apt. 428','JE','Massachusetts','East Elsie',6,'stores/5.png','Error dicta numquam rerum explicabo.','Ex quaerat commodi odio quasi. Qui ut sequi fugiat numquam. Reprehenderit temporibus vitae natus nihil et quasi nesciunt.','published',NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44',NULL,NULL),(6,'Stouffer','durward10@example.org','+12796776281','828 McLaughlin Station','KH','New York','Marianomouth',8,'stores/6.png','Est laboriosam et commodi veniam vitae.','Est minus sed tempora veniam. Autem quae unde similique eos officiis atque.','published',NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44',NULL,NULL),(7,'StarKist','alvena.stamm@example.net','+15593227625','902 Wyman Ramp','CZ','Wisconsin','Jeffreyton',10,'stores/7.png','Debitis non sit omnis est esse.','Exercitationem blanditiis at iure nobis consectetur voluptatem et. Laboriosam natus rerum ut aut.','published',NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,160.00,0.00,232.00,'$2y$10$q2ToQjw2GLOuZQdq8I6Ysesfe7U.W3h24ivUn3JhLVcHSDUYZF5mK','{\"name\":\"Jailyn Goyette\",\"number\":\"+14046329680\",\"full_name\":\"Tyson Lueilwitz\",\"description\":\"Heaven Kirlin\"}','2023-07-10 00:31:43','2023-07-10 00:31:50','bank_transfer',NULL),(2,3,2357.00,0.00,2830.00,'$2y$10$/j829DIoOSGnqVvh1vqmA.vYIw6IAvcfersuhjgORYsYBkZNx.TMm','{\"name\":\"Lesly Volkman\",\"number\":\"+12605371918\",\"full_name\":\"Mr. Philip Conroy I\",\"description\":\"Francesca Kuhn PhD\"}','2023-07-10 00:31:43','2023-07-10 00:31:50','bank_transfer',NULL),(3,4,43.00,0.00,55.00,'$2y$10$GpmBfTnnugvotNW2U6a.cudQ.WwCwtnJJMZGoSEyNEPM1qQb6N8h.','{\"name\":\"Vada Schuppe\",\"number\":\"+19209735148\",\"full_name\":\"Jadon Beer\",\"description\":\"Zelda Boehm\"}','2023-07-10 00:31:44','2023-07-10 00:31:50','bank_transfer',NULL),(4,5,2374.00,0.00,3821.00,'$2y$10$PyS1c6CfXz4.ljDIdIp94ewRUUlNXi40w5EtWkS.4lErt5DdQDRXC','{\"name\":\"Bart Gorczany\",\"number\":\"+13856629507\",\"full_name\":\"Prof. Dereck Jenkins\",\"description\":\"Ahmad Gottlieb\"}','2023-07-10 00:31:44','2023-07-10 00:31:51','bank_transfer',NULL),(5,6,1993.00,0.00,2838.00,'$2y$10$ao256EffZz2SA4bbnHx5suHcMbx8DrDV.WPwn9mp/qRq61FZiMWgC','{\"name\":\"Donald Dickinson\",\"number\":\"+17868295474\",\"full_name\":\"Ulises Orn\",\"description\":\"Prof. Ellie Adams DVM\"}','2023-07-10 00:31:44','2023-07-10 00:31:51','bank_transfer',NULL),(6,8,98.00,0.00,116.00,'$2y$10$BXtXidObSSrMMy7HyZyDVuFs0jQnGm8.NSjpHPf9QyohSXjM3wv42','{\"name\":\"Mr. Tremayne Barton\",\"number\":\"+14706822562\",\"full_name\":\"Sylvan Schaefer Jr.\",\"description\":\"Dr. Dedric Vandervort\"}','2023-07-10 00:31:44','2023-07-10 00:31:51','bank_transfer',NULL),(7,10,87.00,0.00,144.00,'$2y$10$8j5Lod/sFm56KN9QBMmmF.p8K.ScIJm/ffATHp5eMuLIKKocMAv4y','{\"name\":\"Selena Rippin\",\"number\":\"+16196596573\",\"full_name\":\"Elise Sauer\",\"description\":\"Micah Kulas\"}','2023-07-10 00:31:44','2023-07-10 00:31:52','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(7,'About us','<p>Alice could only see her. She is such a neck as that! No, no! You\'re a serpent; and there\'s no use going back to the Gryphon. \'I\'ve forgotten the little passage: and THEN--she found herself at last the Gryphon hastily. \'Go on with the other ladder?--Why, I hadn\'t drunk quite so much!\' Alas! it was very like having a game of croquet she was a very truthful child; \'but little girls eat eggs quite as safe to stay with it as well say,\' added the Queen. \'Well, I can\'t get out at the great wonder.</p><p>Pigeon. \'I can tell you how it was quite impossible to say it any longer than that,\' said the Gryphon, the squeaking of the trial.\' \'Stupid things!\' Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' said the Queen. \'Never!\' said the Pigeon in a tone of great curiosity. \'Soles and eels, of course,\' said the Dodo. Then they all cheered. Alice thought decidedly uncivil. \'But perhaps it was very fond of pretending to be lost: away went Alice like the look of it had some kind of.</p><p>Mock Turtle. Alice was beginning to end,\' said the Rabbit hastily interrupted. \'There\'s a great thistle, to keep herself from being broken. She hastily put down her flamingo, and began staring at the great puzzle!\' And she began fancying the sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came in with a soldier on each side to guard him; and near the King eagerly, and he went on.</p><p>I to do?\' said Alice. \'It goes on, you know,\' said the King said gravely, \'and go on crying in this way! Stop this moment, I tell you!\' But she did not look at all what had become of you? I gave her answer. \'They\'re done with a yelp of delight, which changed into alarm in another minute there was a good many voices all talking together: she made out the answer to shillings and pence. \'Take off your hat,\' the King said to herself, for she had never had to be sure! However, everything is queer.</p>',1,NULL,'right-sidebar',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(9,'Terms &amp; Conditions','<p>Just then she walked on in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure I have ordered\'; and she thought it would,\' said the Mock Turtle, suddenly dropping his voice; and Alice looked all round the rosetree; for, you see, Miss, this here ought to go and take it away!\' There was no \'One, two, three, and away,\' but they were trying which word sounded best. Some of the what?\' said the Mock Turtle with a sigh. \'I only took the watch and looked at poor Alice, who was a body.</p><p>I shall only look up in great disgust, and walked a little timidly: \'but it\'s no use denying it. I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a little bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went in. The door led right into a line along the sea-shore--\' \'Two lines!\' cried the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in the book,\' said the.</p><p>I ought to have got into the garden. Then she went on growing, and, as the soldiers had to be seen: she found a little glass table. \'Now, I\'ll manage better this time,\' she said to the Mock Turtle Soup is made from,\' said the Queen, who were giving it a bit, if you like!\' the Duchess sang the second verse of the Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with its head, it WOULD twist itself round and round the court with a pair of the room.</p><p>Alice hastily replied; \'only one doesn\'t like changing so often, of course you don\'t!\' the Hatter was the fan she was not even room for YOU, and no one else seemed inclined to say \'Drink me,\' but the Gryphon went on, half to herself, as she went on. \'Would you tell me,\' said Alice, looking down at her feet in the air. \'--as far out to the garden at once; but, alas for poor Alice! when she next peeped out the verses on his spectacles. \'Where shall I begin, please your Majesty!\' the soldiers.</p>',1,NULL,'default',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(10,'Returns &amp; Exchanges','<p>No, it\'ll never do to come down the chimney as she was now about a whiting to a lobster--\' (Alice began to cry again. \'You ought to have no idea what you\'re doing!\' cried Alice, with a sigh: \'he taught Laughing and Grief, they used to it in with a kind of sob, \'I\'ve tried every way, and the Queen in front of them, and the sound of a tree. \'Did you say things are \"much of a procession,\' thought she, \'what would become of me?\' Luckily for Alice, the little golden key, and when she got to grow.</p><p>Alice, (she had grown up,\' she said to Alice. \'Only a thimble,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon went on. Her listeners were perfectly quiet till she got back to yesterday, because I was going to begin at HIS time of life. The King\'s argument was, that you think you might do very well to say whether the blows hurt it or not. So she called softly after it, \'Mouse dear! Do come back and see after some executions I have to ask his.</p><p>Alice, and she sat on, with closed eyes, and feebly stretching out one paw, trying to box her own courage. \'It\'s no business there, at any rate: go and get in at all?\' said the March Hare interrupted in a low trembling voice, \'--and I hadn\'t mentioned Dinah!\' she said to herself that perhaps it was very uncomfortable, and, as the March Hare. \'Yes, please do!\' pleaded Alice. \'And where HAVE my shoulders got to? And oh, I wish you could see this, as she could, and waited till she had never seen.</p><p>Alice, surprised at this, she came suddenly upon an open place, with a soldier on each side to guard him; and near the entrance of the party were placed along the sea-shore--\' \'Two lines!\' cried the Mouse, who was trembling down to look about her pet: \'Dinah\'s our cat. And she\'s such a wretched height to rest herself, and fanned herself with one eye; but to open her mouth; but she remembered how small she was ready to sink into the darkness as hard as he spoke. \'A cat may look at all this.</p>',1,NULL,'default',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(11,'Shipping &amp; Delivery','<p>Alice was beginning to get through was more and more sounds of broken glass. \'What a number of cucumber-frames there must be!\' thought Alice. \'I\'ve so often read in the house, and the other side of the words have got into the garden door. Poor Alice! It was high time you were never even spoke to Time!\' \'Perhaps not,\' Alice replied very politely, \'if I had not the smallest notice of her sister, who was talking. \'How CAN I have to turn round on its axis--\' \'Talking of axes,\' said the Hatter.</p><p>Duchess. \'Everything\'s got a moral, if only you can have no answers.\' \'If you can\'t be Mabel, for I know all the jurymen are back in their mouths--and they\'re all over with diamonds, and walked off; the Dormouse go on for some time without hearing anything more: at last in the same thing as a lark, And will talk in contemptuous tones of the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice. \'I\'ve so often read in the trial one way up as the question was.</p><p>Alice and all the children she knew, who might do something better with the Gryphon. \'Do you play croquet?\' The soldiers were silent, and looked at the White Rabbit, jumping up and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall have somebody to talk nonsense. The Queen\'s argument was, that if something wasn\'t done about it in a trembling voice:-- \'I passed by his garden, and marked, with one finger, as he shook both his shoes on. \'--and just take.</p><p>Lobster Quadrille, that she hardly knew what she did, she picked up a little shriek and a crash of broken glass. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Lory positively refused to tell them something more. \'You promised to tell me your history, you know,\' the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the children she knew, who might do very well to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse.</p>',1,NULL,'default',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(12,'Privacy Policy','<p>As she said to the Gryphon. \'Well, I can\'t remember,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was close behind it was certainly English. \'I don\'t know what they\'re about!\' \'Read them,\' said the Gryphon said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t put it more clearly,\' Alice replied in a frightened tone. \'The Queen of Hearts, he stole those.</p><p>She soon got it out loud. \'Thinking again?\' the Duchess said after a few minutes, and she grew no larger: still it had grown to her that she had hurt the poor little thing howled so, that he had a large pool all round the table, half hoping that they would go, and broke off a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it, and behind it when she got into a cucumber-frame, or something of the tale was something like this:-- \'Fury.</p><p>Her first idea was that you never to lose YOUR temper!\' \'Hold your tongue!\' added the Queen. An invitation from the shock of being all alone here!\' As she said this, she came upon a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I should say what you mean,\' said Alice. \'You must be,\' said the Cat. \'I don\'t know one,\' said Alice. \'Call it what you mean,\' the March Hare. \'It was the Duchess\'s cook. She carried the pepper-box in her pocket, and pulled out a history of the.</p><p>Alice, (she had kept a piece of it had gone. \'Well! I\'ve often seen a cat without a cat! It\'s the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as she was walking by the officers of the baby?\' said the Mock Turtle said with some curiosity. \'What a curious plan!\' exclaimed Alice. \'That\'s very important,\' the King say in a few minutes that she had grown in the house opened, and a scroll of parchment in the pictures of him), while the Dodo.</p>',1,NULL,'default',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-07-10 00:31:40','2023-07-10 00:31:40');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'GGRCBPOS18','stripe',NULL,391.00,1,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'WB7MYDCETI','paypal',NULL,144.00,2,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'2VMXYUACT6','paystack',NULL,236.00,3,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'FB0RL32RDK','paypal',NULL,530.00,4,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'NTAIQMA6AQ','sslcommerz',NULL,116.00,5,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'L5WOUXXTHZ','mollie',NULL,265.00,6,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'8NCS09KQ2S','paystack',NULL,232.00,7,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:44','2023-07-10 00:31:44','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'KQAJAU0P1K','stripe',NULL,888.00,8,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'IIWHVPUPCM','razorpay',NULL,232.00,9,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'X4KMGVDLMV','sslcommerz',NULL,768.00,10,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'FPNZ5EEGMC','cod',NULL,238.00,11,'pending','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'6EF6EYTONQ','paypal',NULL,222.00,12,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'VSVFUIMQME','paypal',NULL,144.00,13,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'4NG1LERARM','stripe',NULL,354.00,14,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'JHTIKLXVW7','razorpay',NULL,580.00,15,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'GAUWOVQALL','mollie',NULL,1146.00,16,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'AHER3FHTDI','sslcommerz',NULL,110.00,17,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'IZERMFMABW','bank_transfer',NULL,96.00,18,'pending','confirm',7,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'2BDA4IXVSB','stripe',NULL,116.00,19,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'YLZVYMOU8Q','sslcommerz',NULL,354.00,20,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'FWZNGY52VA','stripe',NULL,348.00,21,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'RCE2KRWU6N','stripe',NULL,862.00,22,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'IMTCGJD12C','paystack',NULL,127.00,23,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'6SJIW8PGNL','razorpay',NULL,622.00,24,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'FETHEIXO66','razorpay',NULL,126.00,25,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'ZPEOQZOLVB','paystack',NULL,55.00,26,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'W0YE4BQPBJ','stripe',NULL,992.00,27,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:45','2023-07-10 00:31:45','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'MWHC0EVRWB','razorpay',NULL,119.00,28,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'KXP1HBQAYC','paystack',NULL,1029.00,29,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'P5IF89QUOG','cod',NULL,48.00,30,'pending','confirm',1,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'IE84QQ9YYQ','paypal',NULL,378.00,31,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'YOTMJXSEDC','stripe',NULL,888.00,32,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'7QL6UIVT8I','stripe',NULL,116.00,33,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'LJCTZHQ343','paypal',NULL,119.00,34,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'SG8XL8GR3F','razorpay',NULL,230.00,35,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'A2DGDGC1QX','mollie',NULL,265.00,36,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'ACLTDCQC5Y','bank_transfer',NULL,48.00,37,'pending','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'HO0IVPNUB4','mollie',NULL,144.00,38,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'9ORNMIKUIA','bank_transfer',NULL,236.00,39,'pending','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'FL06WOGOJM','sslcommerz',NULL,431.00,40,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'XJ6VOWLVUS','stripe',NULL,348.00,41,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'AC0OT60XXU','stripe',NULL,390.00,42,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'PXBU6WFBPZ','cod',NULL,222.00,43,'pending','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'SDE8NOQMGL','razorpay',NULL,270.00,44,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'P7POUQUUSP','mollie',NULL,348.00,45,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'TPDKDWWVQD','razorpay',NULL,252.00,46,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'SPDRERY8LQ','stripe',NULL,354.00,47,'completed','confirm',7,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'OXKXUYHTXG','paypal',NULL,118.00,48,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:46','2023-07-10 00:31:46','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'YBWYMBDK7E','stripe',NULL,128.00,49,'completed','confirm',9,NULL,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'ACIHY2JQUD','bank_transfer',NULL,1152.00,50,'pending','confirm',1,NULL,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\Ecommerce\\Models\\Customer',NULL),(51,'USD',0,'OLJHBAYL5G','razorpay',NULL,296.00,51,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\Ecommerce\\Models\\Customer',NULL),(52,'USD',0,'VZGODAFZXZ','sslcommerz',NULL,116.00,52,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\Ecommerce\\Models\\Customer',NULL),(53,'USD',0,'CALL3BLBY3','stripe',NULL,443.00,53,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\Ecommerce\\Models\\Customer',NULL),(54,'USD',0,'HQLJGS9OVL','cod',NULL,348.00,54,'pending','confirm',1,NULL,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\Ecommerce\\Models\\Customer',NULL),(55,'USD',0,'1ZTBJLK7FT','paypal',NULL,119.00,55,'completed','confirm',1,NULL,NULL,'2023-07-10 00:31:47','2023-07-10 00:31:47','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(4,1),(1,2),(3,2),(2,3),(4,3),(2,4),(4,4),(1,5),(3,5),(1,6),(4,6),(1,7),(4,7),(1,8),(3,8),(1,9),(3,9),(2,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',465,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',2494,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',2152,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',1670,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',253,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',1503,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',223,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',684,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',255,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',471,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',916,NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (2,1,'2023-07-10 00:31:40','2023-07-10 00:31:40');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2023-07-10 00:31:40','2023-07-10 00:31:40');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-07-10 00:31:29'),(2,'api_layer_api_key','',NULL,'2023-07-10 00:31:29'),(5,'language_hide_default','1',NULL,NULL),(6,'language_switcher_display','list',NULL,NULL),(7,'language_display','all',NULL,NULL),(8,'language_hide_languages','[]',NULL,NULL),(9,'ecommerce_store_name','Nest',NULL,NULL),(10,'ecommerce_store_phone','18006268',NULL,NULL),(11,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(12,'ecommerce_store_state','Singapore',NULL,NULL),(13,'ecommerce_store_city','Singapore',NULL,NULL),(14,'ecommerce_store_country','SG',NULL,NULL),(15,'media_random_hash','9ede2789c54944d3cb773165dbf0a9a0',NULL,NULL),(16,'permalink-botble-blog-models-post','blog',NULL,NULL),(17,'permalink-botble-blog-models-category','blog',NULL,NULL),(18,'payment_cod_status','1',NULL,NULL),(19,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(20,'payment_bank_transfer_status','1',NULL,NULL),(21,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(22,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(23,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(24,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(25,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(26,'simple_slider_using_assets','0',NULL,NULL),(27,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(28,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(29,'theme','nest',NULL,NULL),(30,'admin_favicon','general/favicon.png',NULL,NULL),(31,'admin_logo','general/logo.png',NULL,NULL),(32,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(33,'theme-nest-seo_description','Nest is an attractive Laravel multivendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(34,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(35,'theme-nest-favicon','general/favicon.png',NULL,NULL),(36,'theme-nest-logo','general/logo.png',NULL,NULL),(37,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(38,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(39,'theme-nest-hotline','1900 - 888',NULL,NULL),(40,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(41,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(42,'theme-nest-homepage_id','1',NULL,NULL),(43,'theme-nest-blog_page_id','5',NULL,NULL),(44,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(45,'theme-nest-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(46,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(47,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(48,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(49,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(50,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(51,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(52,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(53,'theme-nest-number_of_products_per_page','12',NULL,NULL),(54,'theme-nest-preloader_enabled','yes',NULL,NULL),(55,'theme-nest-preloader_version','v2',NULL,NULL),(56,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(57,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(58,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(59,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-07-10 00:31:39','2023-07-10 00:31:39'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-07-10 00:31:39','2023-07-10 00:31:39');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2023-07-10 00:31:39','2023-07-10 00:31:39'),(2,'Home slider 2','home-slider-2',NULL,'published','2023-07-10 00:31:39','2023-07-10 00:31:39'),(3,'Home slider 3','home-slider-3',NULL,'published','2023-07-10 00:31:39','2023-07-10 00:31:39'),(4,'Home slider 4','home-slider-4',NULL,'published','2023-07-10 00:31:39','2023-07-10 00:31:39'),(5,'Home slider 5','home-slider-5',NULL,'published','2023-07-10 00:31:39','2023-07-10 00:31:39'),(6,'Home slider 6','home-slider-6',NULL,'published','2023-07-10 00:31:39','2023-07-10 00:31:39'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2023-07-10 00:31:39','2023-07-10 00:31:39');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-07-10 00:31:29','2023-07-10 00:31:29'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-07-10 00:31:29','2023-07-10 00:31:29'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-07-10 00:31:29','2023-07-10 00:31:29'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-07-10 00:31:29','2023-07-10 00:31:29'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-07-10 00:31:29','2023-07-10 00:31:29'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-07-10 00:31:29','2023-07-10 00:31:29'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-07-10 00:31:29','2023-07-10 00:31:29'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-07-10 00:31:31','2023-07-10 00:31:31'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-07-10 00:31:31','2023-07-10 00:31:31'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-07-10 00:31:31','2023-07-10 00:31:31'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-07-10 00:31:31','2023-07-10 00:31:31'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-07-10 00:31:31','2023-07-10 00:31:31'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-07-10 00:31:31','2023-07-10 00:31:31'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2023-07-10 00:31:34','2023-07-10 00:31:34'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-07-10 00:31:40','2023-07-10 00:31:40'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-07-10 00:31:40','2023-07-10 00:31:40'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-07-10 00:31:40','2023-07-10 00:31:40'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-07-10 00:31:40','2023-07-10 00:31:40'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-07-10 00:31:40','2023-07-10 00:31:40'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-07-10 00:31:40','2023-07-10 00:31:40'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2023-07-10 00:31:40','2023-07-10 00:31:40'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-07-10 00:31:44','2023-07-10 00:31:44'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-07-10 00:31:44','2023-07-10 00:31:44'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-07-10 00:31:44','2023-07-10 00:31:44'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-07-10 00:31:44','2023-07-10 00:31:44'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2023-07-10 00:31:44','2023-07-10 00:31:44'),(94,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2023-07-10 00:31:44','2023-07-10 00:31:44'),(95,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2023-07-10 00:31:44','2023-07-10 00:31:44');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-07-10 00:31:40','2023-07-10 00:31:40'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-07-10 00:31:40','2023-07-10 00:31:40');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$hkfn9500oA8m.p7z/3/UMuWilXSiFhHm/gtbhEQa3ur8PVREz829q',NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40','Super','Admin','botble',NULL,1,1,NULL,NULL),(2,'user@botble.com',NULL,'$2y$10$IQDr4agw.fOD5dGhjWDk6.i1r055dVhYB2Lp7peHCWzYrMVCao3hS',NULL,'2023-07-10 00:31:40','2023-07-10 00:31:40','Normal','Admin','admin',NULL,0,0,'{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-07-10 00:31:41','2023-07-10 00:31:41'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2023-07-10 00:31:41','2023-07-10 00:31:41');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10 14:32:10