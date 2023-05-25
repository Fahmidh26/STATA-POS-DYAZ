-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: aarsl
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.10.2

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
-- Table structure for table `acid_products`
--

DROP TABLE IF EXISTS `acid_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acid_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acid_products`
--

LOCK TABLES `acid_products` WRITE;
/*!40000 ALTER TABLE `acid_products` DISABLE KEYS */;
INSERT INTO `acid_products` VALUES (1,'Sulphuric Acid',1219,NULL,'2023-04-13 05:52:28');
/*!40000 ALTER TABLE `acid_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `production` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chalan` int DEFAULT NULL,
  `alluser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense` int DEFAULT NULL,
  `hr` int DEFAULT NULL,
  `adminuserrole` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` int DEFAULT NULL,
  `report` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','admin@gmail.com','2022-06-05 03:57:32','$2y$10$ALbMmGnqCeBflP.JT8LWNu/swsmervF2UFssUBA3QKo52c6CrA9Ye','01964870827','1','1','1','1','1','1','1','1',1,'1',1,1,'1',1,'1',1,'9GtEW9OJucolDYsLsyytEtDLYAg7Z4hJGQ1LSVSpPRxuxA2f1aJ1hhQwWIRE',NULL,'202207230834attachment_127807231.jfif','2022-06-05 03:57:32','2022-07-23 03:06:17'),(18,'Syed Ashiq','sashiq62@gmail.com',NULL,'$2y$10$HCO/Lzvdwf9qYIbZrO2j/u99S1K2IO88mn2Lp2n7akSRWBDO22AqK',NULL,'1','1','1','1','1','1','1','1',1,NULL,1,NULL,'1',1,NULL,2,NULL,NULL,NULL,'2023-03-25 05:04:51',NULL),(19,'Nazmul Haque Niaz','n.haque19@gmail.com',NULL,'$2y$10$FmhNsrIwyavujsBEjPo3JOEd1Co3C0hlTr.YLXAt8KW14Xrox4AO6',NULL,'1','1','1','1','1','1','1','1',1,NULL,1,NULL,'1',1,NULL,2,NULL,NULL,NULL,'2023-03-25 05:06:34',NULL),(25,'Test Sale','sales@aarslbd.com',NULL,'$2y$10$b8n4XZLM484L1wk2pO/lKeG3FdokCjlwqUM8j6/aR/D.Zr0IYN6ci',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'1',1,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,'2023-03-31 19:11:53',NULL),(26,'MD IKRAM','mdikram@aarslbd.com',NULL,'$2y$10$e7D6NDf1YG9XN2cs5eKhP.Tqa1y2PNPbUgEp42bUvIN1sDc489uYO',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,'2023-04-03 05:14:02',NULL),(28,'MD Jashim','mdjashim@aarslbd.com',NULL,'$2y$10$klsUJ.F3mn1jaa5PYPk.t.S84jbw/RFwyXLcIMIu.TE98Q1mR1sc.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,'2023-04-03 05:18:29',NULL),(30,'MD IMRAN','mdimran@aarslbd.com',NULL,'$2y$10$LtfXy.tri2TcBdZsmSKNseIKTjg.pOKi4ZQ3qth9iKt4ds0f9ph0m',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,'1',NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,'2023-04-03 05:22:12',NULL),(31,'MD SABBIR','mdsabbir@aarslbd.com',NULL,'$2y$10$1NU5YcTB96v.GO3dp.8lreb.Kj0aPswfI/Kyb77euIZvU6/6zxmhS',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,'1',NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,'2023-04-03 05:23:35',NULL),(33,'MD REZOAN','mdrezoan@aarslbd.com',NULL,'$2y$10$uUvvrFnX/rwpjvGWb75sSeGm8Nlw3vH.d.e3NK1bU3q56JeyIXeXi',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,'2023-04-03 05:32:22',NULL),(37,'MD F.BARI','mdfbari@aarslbd.com',NULL,'$2y$10$ygfZx/l7MSOZPMrLnes2u.cG6PVt3LYXmWApxacir6DLZUHdowA0C',NULL,'1','1','1',NULL,'1','1',NULL,'1',1,NULL,1,NULL,NULL,1,NULL,5,NULL,NULL,NULL,'2023-04-03 06:12:13',NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
INSERT INTO `banks` VALUES (5,'Payment','Shelby Mercado','40','Eos sequi illo omni',77,'2023-03-25 07:07:00',NULL);
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (14,'Sulphur','2023-03-22 04:40:01',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chalans`
--

DROP TABLE IF EXISTS `chalans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chalans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chalan_date` date NOT NULL,
  `chalan_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_driver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL,
  `rate` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `nbalance` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chalans`
--

LOCK TABLES `chalans` WRITE;
/*!40000 ALTER TABLE `chalans` DISABLE KEYS */;
INSERT INTO `chalans` VALUES (24,649,'Jensen Evans Inc','Aliquam quaerat dolo','2011-07-12','RSA29292286','In officia enim debi','Ratione iusto quaera',26,38000,988000,6752000,'2023-04-13 05:52:28',NULL);
/*!40000 ALTER TABLE `chalans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dea_cus` int DEFAULT NULL,
  `advance` float DEFAULT NULL,
  `delivery` float DEFAULT NULL,
  `due` float DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `rateType` varchar(255) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=654 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (646,'Friends Chemical','Dhaka','123456778','friends@chemical.com',1,1500,30,1470,41000,'EXW',56470000,'2023-04-06 08:18:30','2023-04-06 08:18:30'),(647,'Al Amin Chemical','Dhaka','12345678','alamin@gmail.com',1,100,20,80,3000,'FOB',240000,'2023-04-03 07:09:23','2023-04-03 07:09:23'),(648,'ZXL Industries','Dhaka','12345678','zxl@gmail.com',1,300,NULL,300,48000,'EXW',404800000,'2023-04-06 08:17:04','2023-04-06 08:17:04'),(649,'Ayesha Trading Corpor.','Dhaka','12345678','ayesha@gmail.com',1,300,66,234,38000,'EXW',6752000,'2023-04-13 05:52:28','2023-04-13 05:52:28'),(650,'Khadiza Enterprise','Dhaka','12344576','khadiza@gmail.com',1,100,10,90,300,'FOB',27000,'2023-03-28 05:51:33','2023-03-28 05:51:33'),(651,'Hamid','Dhaka','5432543524','hamid@gmail.com',1,100,10,90,500,'FOB',45000,'2023-03-28 05:51:10','2023-03-28 05:51:10'),(652,'HAMKO','Faridpur','+1 (973) 682-4163','mdikram@aarslbd.com',1,500,NULL,500,40000,'EXW',20000000,'2023-04-06 08:15:53','2023-04-06 08:15:53'),(653,'test@Dyaz',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_types`
--

DROP TABLE IF EXISTS `expense_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expenseType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_types`
--

LOCK TABLES `expense_types` WRITE;
/*!40000 ALTER TABLE `expense_types` DISABLE KEYS */;
INSERT INTO `expense_types` VALUES (1,'Fare','2023-01-31 03:47:47',NULL),(2,'Rent','2023-01-31 03:49:16',NULL),(3,'Travel Allowance','2023-03-31 19:17:03',NULL),(4,'Food Allowance','2023-03-31 19:18:11',NULL),(5,'Entertainment','2023-03-31 19:18:25',NULL),(6,'Bricks','2023-04-03 07:42:03',NULL),(7,'Cement','2023-04-03 07:42:12',NULL),(8,'Rod','2023-04-03 07:42:39',NULL),(9,'bricks','2023-04-03 08:01:26',NULL);
/*!40000 ALTER TABLE `expense_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expenseType_id` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (5,6,'2023-04-06',50000.00,'factory','5000 pcs','2023-04-06 17:57:21',NULL),(6,3,'2023-04-06',50.00,'head','Mr Niaz (Travel From Gulshan to SJIBL Progoti Sarani)','2023-04-06 17:58:05',NULL),(7,2,'2023-04-06',150000.00,'head','April Month 2023','2023-04-06 17:58:27',NULL),(8,7,'2023-04-06',12000.00,'factory','10 Bags Sha-Cement','2023-04-06 17:58:58',NULL);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_06_05_035221_create_sessions_table',1),(7,'2022_06_05_093510_create_admins_table',2),(8,'2022_06_08_050819_create_brands_table',3),(9,'2022_06_11_072712_create_sliders_table',4),(10,'2022_06_11_080003_create_sliders_table',5),(11,'2022_06_12_044009_create_categories_table',6),(12,'2022_06_12_044635_create_sub_categories_table',6),(13,'2022_06_12_101831_create_products_table',7),(14,'2022_06_12_102120_create_multi_imgs_table',7),(15,'2022_06_15_111136_create_carts_table',8),(16,'2022_06_18_051335_create_wishlists_table',9),(17,'2022_06_19_061429_create_coupons_table',10),(18,'2022_06_20_055345_create_ship_divisions_table',11),(19,'2022_06_20_082833_create_ship_districts_table',12),(20,'2022_06_21_050936_create_ship_states_table',13),(21,'2022_06_22_153813_create_shippings_table',14),(22,'2022_06_25_052407_create_oders_table',14),(23,'2022_06_25_075304_create_orders_table',15),(24,'2022_06_25_075738_create_order_items_table',15),(25,'2022_06_30_065319_create_site_settings_table',16),(26,'2022_06_30_110044_create_seos_table',17),(27,'2022_07_02_062717_create_reviews_table',18),(28,'2022_08_01_044732_create_locations_table',19),(29,'2022_12_17_142839_create_quotations_table',20),(30,'2022_12_18_071520_create_quotations_table',21),(31,'2022_12_18_083754_create_quotation_items_table',22),(32,'2022_12_21_072212_create_customers_table',22),(33,'2022_12_22_051900_create_quotation_items_table',23),(34,'2022_12_22_051908_create_quotations_table',23),(35,'2022_12_22_051920_create_customers_table',23),(36,'2022_12_22_062042_create_quotation_items_table',24),(37,'2023_01_10_060905_create_banks_table',25),(38,'2023_01_10_071658_create_suppliers_table',26),(39,'2023_01_10_111709_create_purchases_table',27),(40,'2023_01_10_111933_create_purchase_items_table',27),(41,'2023_01_10_114539_create_payment_items_table',27),(42,'2023_01_31_092320_create_expense_types_table',28),(43,'2023_01_31_095728_create_employees_table',29),(44,'2023_01_31_103138_create_designations_table',29),(45,'2023_02_25_093329_create_sulphur_stocks_table',30),(46,'2023_02_27_054051_create_productions_table',31),(47,'2023_02_27_092217_create_todays_productions_table',32),(48,'2023_03_01_052946_create_dealers_table',33),(49,'2023_03_01_091128_create_schedules_table',34),(50,'2023_03_02_094932_create_schedules_table',35),(51,'2023_03_02_113137_create_schedule_dates_table',36),(52,'2023_03_13_103924_create_sales_table',36),(53,'2023_03_13_103937_create_sales_items_table',36),(54,'2023_03_14_101450_create_sales_payment_items_table',37),(55,'2023_03_14_104021_create_acid_products_table',38),(56,'2023_03_15_085403_create_chalans_table',39),(57,'2023_03_22_061304_create_requisitions_table',40),(58,'2023_03_22_061552_create_requisition_types_table',41),(59,'2023_03_22_072837_create_requisitions_table',42),(60,'2023_03_29_095153_create_expenses_table',43);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_items`
--

DROP TABLE IF EXISTS `payment_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint unsigned NOT NULL,
  `bank_id` bigint unsigned NOT NULL,
  `b_paid_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_items_purchase_id_foreign` (`purchase_id`),
  CONSTRAINT `payment_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_items`
--

LOCK TABLES `payment_items` WRITE;
/*!40000 ALTER TABLE `payment_items` DISABLE KEYS */;
INSERT INTO `payment_items` VALUES (63,70,5,13.00,'2023-04-09 23:09:33','2023-04-09 23:09:33'),(64,71,5,78.00,'2023-04-09 23:18:35','2023-04-09 23:18:35');
/*!40000 ALTER TABLE `payment_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `productions`
--

DROP TABLE IF EXISTS `productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productions`
--

LOCK TABLES `productions` WRITE;
/*!40000 ALTER TABLE `productions` DISABLE KEYS */;
INSERT INTO `productions` VALUES (12,179,'1','2023-03-27 10:53:10','2023-03-27 10:53:10'),(13,179,'5','2023-03-28 05:20:31','2023-03-28 05:20:31'),(14,181,'100','2023-03-28 05:37:46','2023-03-28 05:37:46'),(15,181,'300','2023-03-28 05:39:21','2023-03-28 05:39:21'),(16,181,'14','2023-04-03 07:19:27','2023-04-03 07:19:27'),(17,181,'14','2023-04-03 07:19:39','2023-04-03 07:19:39'),(18,181,'86','2023-04-03 07:48:07','2023-04-03 07:48:07'),(19,181,'15','2023-04-03 07:59:32','2023-04-03 07:59:32'),(20,179,'6','2023-04-03 07:59:32','2023-04-03 07:59:32'),(21,181,'20','2023-04-03 08:00:09','2023-04-03 08:00:09'),(22,179,'20','2023-04-03 08:00:09','2023-04-03 08:00:09'),(23,179,'60','2023-04-06 17:55:36','2023-04-06 17:55:36'),(24,181,'10','2023-04-06 17:55:36','2023-04-06 17:55:36');
/*!40000 ALTER TABLE `productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (182,'12','Sulphur Pellet','SP',1,0,'2023-02-26 00:12:52','2023-03-11 04:52:05'),(181,'12','Sulphur Flakes','SF',1,1455,'2023-02-26 00:12:33','2023-04-06 17:55:36'),(180,'12','Sulphur Granular','SG',1,0,'2023-02-26 00:12:09','2023-03-11 04:52:05'),(179,'12','Sulphur Lump','SL',1,0,'2023-02-26 00:11:44','2023-04-06 17:55:36');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_items`
--

DROP TABLE IF EXISTS `purchase_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `batch_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `rateType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_items`
--

LOCK TABLES `purchase_items` WRITE;
/*!40000 ALTER TABLE `purchase_items` DISABLE KEYS */;
INSERT INTO `purchase_items` VALUES (79,70,181,47,'Qui excepturi ut id',56.00,'FOB',2632.00,'2023-04-09 23:09:33','2023-04-09 23:09:33'),(80,71,179,12,'Molestias aute ipsa',7.00,'EXW',84.00,'2023-04-09 23:18:35','2023-04-09 23:18:35');
/*!40000 ALTER TABLE `purchase_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint unsigned NOT NULL,
  `chalan_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `ldate` date DEFAULT NULL,
  `boen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `besb` date DEFAULT NULL,
  `boed` date DEFAULT NULL,
  `track` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_total` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `purchase_discount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_flat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_vat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_paid_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (70,2,'Est modi tenetur ex','2023-04-10',NULL,'Sint quo corporis i','2015-06-02','1982-04-16','Facere adipisicing s','1989-06-02',2632.00,2566.00,NULL,'66',NULL,'13','2553','L/C Opened','2023-04-09 23:09:33',NULL),(71,2,'Dolore suscipit dolo','2023-04-01','1984-05-06','Et magna laudantium','1978-01-02','1982-04-17','Laborum laudantium',NULL,84.00,62.00,NULL,'22',NULL,'78','-16','L/C Opened','2023-04-09 23:18:35',NULL);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation_items`
--

DROP TABLE IF EXISTS `quotation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotation_items_quotation_id_foreign` (`quotation_id`),
  CONSTRAINT `quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation_items`
--

LOCK TABLES `quotation_items` WRITE;
/*!40000 ALTER TABLE `quotation_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `auth_id` bigint unsigned NOT NULL,
  `invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `discount_percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_flat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` int DEFAULT NULL,
  `due_amount` int DEFAULT NULL,
  `total_discount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisition_types`
--

DROP TABLE IF EXISTS `requisition_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisition_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `requisitionType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisition_types`
--

LOCK TABLES `requisition_types` WRITE;
/*!40000 ALTER TABLE `requisition_types` DISABLE KEYS */;
INSERT INTO `requisition_types` VALUES (2,'Water Pump','2023-03-28 05:14:52',NULL),(3,'Shaft','2023-03-28 05:15:01',NULL),(4,'Metal Sheet','2023-03-28 05:15:08',NULL),(5,'Almirah','2023-03-28 05:16:20',NULL),(6,'SS Pipe','2023-04-03 07:35:42',NULL),(7,'Pump','2023-04-03 07:36:37',NULL);
/*!40000 ALTER TABLE `requisition_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitions`
--

DROP TABLE IF EXISTS `requisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisitions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `requisitionType_id` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitions`
--

LOCK TABLES `requisitions` WRITE;
/*!40000 ALTER TABLE `requisitions` DISABLE KEYS */;
INSERT INTO `requisitions` VALUES (3,4,'2023-03-28',NULL,NULL,NULL,50000,'Unpaid','SS 316 10 MM,  8 feet / 4 feet','2023-03-28 05:19:12',NULL),(4,7,'2023-04-03',NULL,NULL,NULL,10000,'Unpaid','Water pump','2023-04-03 07:37:33',NULL),(5,7,'2023-04-03',NULL,NULL,NULL,12000,'Unpaid','10 HP Verticle Pump','2023-04-03 07:39:00',NULL),(6,6,'1997-10-25','moderate','local','head',2000,'Unpaid','Accusantium officia','2023-04-03 23:28:41',NULL),(7,4,'1994-08-01','moderate','local','factory',76,'Unpaid','Rerum impedit cum q','2023-04-04 07:01:40',NULL),(8,4,'1987-09-29','moderate','outside','head',52,'Unpaid','Esse voluptas fugia','2023-04-05 07:12:43',NULL),(9,6,'2023-04-07','emergency','outside','factory',20000,'Unpaid','SS 316 3MM OD | 10 Ft Height | 10 Pcs Pipe','2023-04-06 18:05:50',NULL),(10,4,'2023-04-08','minor','local','factory',50000,'Unpaid','10mm MS Metal Sheet | 8/4 Dimension | 50 Sqft','2023-04-06 18:07:13',NULL),(11,3,'2009-01-10','Minor','Outside Procurement','Head Office',24,'Unpaid','Nostrum est quasi co','2023-04-06 18:25:52',NULL);
/*!40000 ALTER TABLE `requisitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `sale_date` date NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_total` bigint NOT NULL,
  `grand_total` bigint NOT NULL,
  `discount_flat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_per` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_vat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_paid_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (45,652,'2023-04-06',NULL,20000000,20000000,NULL,NULL,NULL,'20000000','0','2023-04-06 08:15:53',NULL),(46,649,'2023-04-06',NULL,7600000,7600000,NULL,NULL,NULL,'7600000','0','2023-04-06 08:16:36',NULL),(47,648,'2023-04-06',NULL,4800000,4800000,NULL,NULL,NULL,'4800000','0','2023-04-06 08:17:04',NULL),(48,646,'2023-04-06',NULL,16400000,16400000,NULL,NULL,NULL,'16400000','0','2023-04-06 08:18:30',NULL);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_items`
--

DROP TABLE IF EXISTS `sales_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_id` bigint unsigned NOT NULL,
  `product_id` int NOT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `amount` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_items_sale_id_foreign` (`sales_id`),
  CONSTRAINT `sales_items_sale_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_items`
--

LOCK TABLES `sales_items` WRITE;
/*!40000 ALTER TABLE `sales_items` DISABLE KEYS */;
INSERT INTO `sales_items` VALUES (35,45,1,'500','E',4.00,20000000,'2023-04-06 08:15:53','2023-04-06 08:15:53'),(36,46,1,'200','E',3.00,7600000,'2023-04-06 08:16:36','2023-04-06 08:16:36'),(37,47,1,'100','E',4.00,4800000,'2023-04-06 08:17:04','2023-04-06 08:17:04'),(38,48,1,'400','E',4.00,16400000,'2023-04-06 08:18:30','2023-04-06 08:18:30');
/*!40000 ALTER TABLE `sales_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_payment_items`
--

DROP TABLE IF EXISTS `sales_payment_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_payment_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` bigint unsigned NOT NULL,
  `bank_id` bigint unsigned NOT NULL,
  `b_paid_amount` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_payment_items_sale_id_foreign` (`sale_id`),
  CONSTRAINT `sales_payment_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_payment_items`
--

LOCK TABLES `sales_payment_items` WRITE;
/*!40000 ALTER TABLE `sales_payment_items` DISABLE KEYS */;
INSERT INTO `sales_payment_items` VALUES (31,45,5,20000000,'2023-04-06 08:15:53','2023-04-06 08:15:53'),(32,46,5,7600000,'2023-04-06 08:16:36','2023-04-06 08:16:36'),(33,47,5,4800000,'2023-04-06 08:17:04','2023-04-06 08:17:04'),(34,48,5,16400000,'2023-04-06 08:18:30','2023-04-06 08:18:30');
/*!40000 ALTER TABLE `sales_payment_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `schedule_date` date DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `stock` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (43,'2023-04-08',652,10,1200,NULL,'2023-04-06 17:51:49','2023-04-06 17:51:49'),(44,'2023-04-08',649,10,1200,NULL,'2023-04-06 17:52:27','2023-04-06 17:52:27'),(45,'2023-04-08',648,10,1200,'23:54:00','2023-04-06 17:52:27','2023-04-06 17:52:27'),(46,'2023-04-08',646,10,1200,'23:55:00','2023-04-06 17:52:27','2023-04-06 17:52:27'),(47,'2023-04-09',649,10,1200,NULL,'2023-04-06 17:53:00','2023-04-06 17:53:00'),(48,'2023-04-09',652,10,1200,'23:54:00','2023-04-06 17:53:00','2023-04-06 17:53:00'),(49,'2023-04-07',652,10,1200,NULL,'2023-04-06 17:53:52','2023-04-06 17:53:52'),(50,'2023-04-07',649,10,1200,'23:55:00','2023-04-06 17:53:52','2023-04-06 17:53:52'),(51,'2023-04-07',648,10,1200,'14:53:00','2023-04-06 17:53:52','2023-04-06 17:53:52'),(52,'2023-04-07',646,10,1200,'23:57:00','2023-04-06 17:53:52','2023-04-06 17:53:52'),(53,'2023-04-10',649,10,1200,NULL,'2023-04-06 17:54:24','2023-04-06 17:54:24'),(54,'2023-04-10',652,10,1200,'15:54:00','2023-04-06 17:54:24','2023-04-06 17:54:24'),(55,'2023-04-10',648,10,1200,'23:57:00','2023-04-06 17:54:24','2023-04-06 17:54:24'),(56,'2023-04-10',646,10,1200,'13:54:00','2023-04-06 17:54:24','2023-04-06 17:54:24'),(57,'2023-04-07',652,10,1245,NULL,'2023-04-06 18:12:12','2023-04-06 18:12:12'),(58,'2023-04-07',649,56,1245,'03:12:00','2023-04-06 18:12:12','2023-04-06 18:12:12'),(59,'2023-04-07',649,10,1245,'00:13:00','2023-04-06 18:13:14','2023-04-06 18:13:14'),(60,'2023-04-13',649,78,1245,'12:52:00','2023-04-13 05:52:19','2023-04-13 05:52:19');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('1Mqutt61VMFAjSVqpEKTGIsvW0pf2XDjN85AmK9y',NULL,'143.110.222.166','Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoibktoTjZvd2tvc3pDbmlJVXBhRm5GVVQ4UGlZTWx0UTliZEVsMG1nMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682730412),('2L9n8P28vc8To85ObenBJg8XRte4GlFE196VyddC',NULL,'109.111.146.34','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOENkdjV3amdaQ3BLYTBwSzlSaXREaG1WMFY0N1ZWS3NROHdYeTJtdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682731879),('AaXE4mzdIqWDPEC5XyLYbaK4xFqbtfYTBL8uA6qb',NULL,'193.32.162.159','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YToyOntzOjY6Il90b2tlbiI7czo0MDoicWlMU0pNNkdPVTRDczRURGZSbVVQam5ySHBKUno5TFVQa3FoYXpCRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1682728138),('ASyu8x4mV9cPJtxsAEwXsellaVGbcdw02FBwqOwf',NULL,'143.110.222.166','Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnVlMDJnS2FSRlpBSEhzVGtWQ1FWVHVwT2lkVkwzOXdha292RW44MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682723243),('dhvHl2B7j7uk48oa5A5bGXHGsSqBPPEBPUpWvmLI',NULL,'216.218.206.67','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmF2ZGJqRmJ3S01TRFpxQ0xwQlQ3NW5RSUIwYThYclpNQ2NFZ3RQRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682735306),('EiaU8HShNZcabJgOVODpiTZfTbhAn9T7NJ2ji2dA',NULL,'179.43.163.132','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHVUQlI5OUdpRFcxUmw2R3ZCWW1pUkN5ejVXN2dzQ082TE9xd2hZcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682724954),('eLLMowjaryZK45hKZvTaWhwraWynyYJ1ZXYxr47s',NULL,'143.110.222.166','Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoidmtNTnBWQmk5ZHhieGJEYnhTV0ZFVDc2RkVMeVRXc3d0c21tems2cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682727210),('gxasQ4OVkSOlLQEBCwqf5iiHwQ4LHIAJCEzs2izr',NULL,'178.251.104.143','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkNvT0xlcTZBQmZSdW1HRUFWQWRMckg4djR6MHZZa21xYjR2b252ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682740053),('ifVOHdb5ftu75TzRQPCEkD5oolqMa8IzjYz8ZQ9U',NULL,'179.43.177.243','Hello World','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGp5eW4zbW4zNGNTemVOUzdFT3lSZ1dRYXFOTGg5b0MzdkhLU1ZsbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682741973),('jmlXLmZX15XxzOq1CbVRYC47o1lgw66iR7d4eXT2',NULL,'205.210.31.50','','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkc5VDBDVzc4Q3p4REZFOG9kTWJZa1FieFpYZ3BmaDlhc1ZRZVRkayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9jaGFzZS5maW5jaGNvbXBhbnkuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1682724923),('kUjBlFOKTymmT2pdeS6iWi5czFzW6LADWzOZN2Ep',NULL,'40.77.167.197','Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmF1clBibHVSY3M3V0RwQWw4M1M2VE9IV3BiWmdmQzV4b25aRGtSWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9jaGFzZS5maW5jaGNvbXBhbnkuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1682728412),('KZ3AJRpJbMI6cniDQq0017efVHpPnELXepaUuXPU',NULL,'194.55.224.203','Linux Gnu (cow)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEgwSE9ScWozRmRQUngxb1FJQXVFNE8yTWgxS01ZN0ZxVEhITHRYbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682741344),('LFosEuQaaUQkmnIt5WYkMe4EJcyN4uv4lWEzLGKf',NULL,'179.43.163.132','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFFaR0s3Tnc1ZzFYYTFKTWc2a1VRTEF1dUl6dTRVUjNWZ05wbEhheCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682734325),('mBI9IBKgzhtg01zMVtTgfGqIyvEb1cPTBP6HSgaQ',NULL,'143.110.222.166','Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoickNscWJUd2lpT09LNG9odEgwQU80RllaT3NGSXlqMjh0MWhWMFY5cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682735047),('n5roa2x1CTHoGdv9jCbwbM9lfkVKkoQk7lO5rL4Z',NULL,'124.156.223.97','\'Mozilla/5.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmYxcDRzcTZvWjJ5VTN5Q1RZUzM5NXFKZnFKTFlOWlE3MzNDVGE4USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682737897),('oxlP0Ls0YIjTJ6EPEk3zYAN4BJwI1VfylNsHnXDm',NULL,'193.32.162.159','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1lJcEd2Z1ZoVFdhb2FkQ1I5TmRkbGFtMWhkbFNSUUdSSU1oZUwxUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1682737465),('PFTht5gl4L5Q1nKgCdphdPIa5jrofdtLLpRf5x6k',NULL,'193.32.162.159','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YToyOntzOjY6Il90b2tlbiI7czo0MDoiRmJxNGZCamVnZkR0V1VIcDE0UjIzSjFUWlc4ZnAyeVBobjJaMHlOSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1682742741),('tCPKzvgEJuXMIMcNdMlzdMguDzdn9kIRIJ82o590',NULL,'223.247.179.42','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUhXNDhLbHAwbFpGRXRUYlZ0MTlQWGY5SUMwWUpUWGlWYURTSll3SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682724662),('uvPFM9n9NZaLEYK72b4Ji8ke2e77LRqbQdwiSOjX',1,'103.230.63.86','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYkxyZVhobHNxMEZXVWtYaDVzVDl4MGdSOWxqanYzQnZlbnFJb1NTSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxOToicGFzc3dvcmRfaGFzaF9hZG1pbiI7czo2MDoiJDJ5JDEwJEFMYk1tR25xQ2VCZmxQLkpUOExXTnUvc3dzbWVydkYyVUZzc1VCQTNRS281MmM2Q3JBOVllIjt9',1682743129),('vLECzNA3qbzOrF5QHBOSu5L05b8hLwjsOKGoBXBV',NULL,'179.43.177.243','Hello World','YTozOntzOjY6Il90b2tlbiI7czo0MDoibTJJQ0gyd2Fma0t2UzRKbUZKeUZ0Sk55R3pVdGE2c2ZXZHlLNUVubSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682737384),('wCldOUw1n0fNVgMafl8NgdW6dkKOLdtH5mogMQcn',NULL,'143.110.222.166','Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEVJMWRHSkd5cEp0NlpsSkpaQ1VYS2R2WFB5ZkVOb24yY3g0ZDlhQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682738260),('xpNtJwRQB84r4XF4LSy8aEfotlUej8eHpkBeQDc9',NULL,'143.110.222.166','Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRklBcVVPTm10V3FXRU1JU0pHbkwzVDZWY0pKbnAyOU1HRlpTbkxmZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1682740721);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subTitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `startingPrice` int DEFAULT NULL,
  `slideStyle` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `subcategory_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (2,'Dubai Chemicals','Dubai, UAE','3873821314','dubai@chemicals.com',NULL,'Dubai','Dubai','1234',NULL,'2023-03-28 05:00:37',NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todays_productions`
--

DROP TABLE IF EXISTS `todays_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todays_productions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todays_productions`
--

LOCK TABLES `todays_productions` WRITE;
/*!40000 ALTER TABLE `todays_productions` DISABLE KEYS */;
INSERT INTO `todays_productions` VALUES (1,'Sulphuric Acid','0','2023-02-27 03:43:52','2023-02-27 03:43:52'),(17,'Sulphuric Acid','45','2023-04-06 17:55:45','2023-04-06 17:55:45');
/*!40000 ALTER TABLE `todays_productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_seen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-29  4:40:10
