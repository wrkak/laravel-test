-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: laravel-test
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Index','fa-bar-chart','/',NULL,NULL),(2,0,10,'Admin','fa-tasks','',NULL,'2019-06-25 03:26:58'),(3,2,11,'Users','fa-users','auth/users',NULL,'2019-06-25 03:26:59'),(4,2,12,'Roles','fa-user','auth/roles',NULL,'2019-06-25 03:26:59'),(5,2,13,'Permission','fa-ban','auth/permissions',NULL,'2019-06-25 03:26:59'),(6,2,14,'Menu','fa-bars','auth/menu',NULL,'2019-06-25 03:26:59'),(7,2,15,'Operation log','fa-history','auth/logs',NULL,'2019-06-25 03:26:59'),(8,0,2,'用户管理','fa-users','/users','2019-06-01 02:31:24','2019-06-01 06:18:20'),(9,0,4,'商品管理','fa-cubes','/products','2019-06-01 06:17:56','2019-06-15 02:49:40'),(10,0,8,'订单管理','fa-rmb','/orders','2019-06-12 09:12:12','2019-06-25 03:26:58'),(11,0,9,'优惠券管理','fa-tags','/coupon_codes','2019-06-13 09:53:37','2019-06-25 03:26:58'),(12,0,3,'类目管理','fa-bars','/categories','2019-06-15 02:49:34','2019-06-15 02:49:40'),(13,9,6,'众筹商品','fa-flag-checkered','/crowdfunding_products','2019-06-17 08:12:23','2019-06-17 08:13:54'),(14,9,5,'普通商品','fa-cubes','/products','2019-06-17 08:13:47','2019-06-17 08:13:54'),(15,9,7,'商品管理','fa-bolt','/seckill_products','2019-06-25 03:26:51','2019-06-25 03:26:58');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2019-06-01 02:47:33','2019-06-01 02:52:37'),(7,'商品管理','products','','/products*','2019-06-14 06:14:41','2019-06-14 06:18:14'),(8,'订单管理','orders','','/orders*','2019-06-14 06:15:27','2019-06-14 06:18:23'),(9,'优惠券管理','coupon_codes','','/coupon_codes*','2019-06-14 06:15:58','2019-06-14 06:18:31');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-05-31 10:29:46','2019-05-31 10:29:46'),(2,'运营','operator','2019-06-01 02:48:56','2019-06-01 02:48:56');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$FkSjZMy7bw0DwgNhEeMt8e9sUrzrWisor6aR.ZX4XAcf1a8FmVgRm','Administrator',NULL,NULL,'2019-05-31 10:29:46','2019-05-31 10:29:46'),(2,'operator','$2y$10$WRM30koBLXmSNq9Xjjg7o.TSqcGm2qFNJduooFLKMnwEPkovp7kJy','运营',NULL,NULL,'2019-06-01 02:49:44','2019-06-01 02:49:44');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-25  3:32:12
