-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: haim3307_big-shop
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,POSTGRESQL' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "attributes"
--

DROP TABLE IF EXISTS "attributes";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "attributes" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "description" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "attributes"
--

LOCK TABLES "attributes" WRITE;
/*!40000 ALTER TABLE "attributes" DISABLE KEYS */;
INSERT INTO "attributes" VALUES (1,'foot_size','foot size','2018-04-25 21:48:59',NULL),(2,'color','color',NULL,NULL),(3,'size','size',NULL,NULL);
/*!40000 ALTER TABLE "attributes" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "brands"
--

DROP TABLE IF EXISTS "brands";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "brands" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "url" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "main_img" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "brands"
--

LOCK TABLES "brands" WRITE;
/*!40000 ALTER TABLE "brands" DISABLE KEYS */;
INSERT INTO "brands" VALUES (1,'adidas','adidas','Adidas.svg','2018-04-19 14:38:35',NULL),(2,'tommy hilfiger','tommy-hilfiger','Tommy_hilfig_vectorlogo.svg','2018-04-19 14:38:35',NULL),(3,'reebok','reebok','Reebok_logo.svg','2018-04-19 14:38:35',NULL),(4,'nike','nike','Logo_NIKE.svg','2018-04-19 14:38:35',NULL),(5,'american eagle','american-eagle','American_Eagle_Outfitters_text_logo.svg','2018-04-19 14:38:35',NULL);
/*!40000 ALTER TABLE "brands" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "categories"
--

DROP TABLE IF EXISTS "categories";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "categories" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "url" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "order" int(11) DEFAULT NULL,
  "img" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "categories_url_uindex" ("url")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "categories"
--

LOCK TABLES "categories" WRITE;
/*!40000 ALTER TABLE "categories" DISABLE KEYS */;
INSERT INTO "categories" VALUES (1,'workout','workout',2,'gym-1046961_640.jpg','2018-04-08 23:13:30','2018-06-23 20:45:39',NULL),(2,'playground','playground',3,'blur-1852927_640.jpg','2018-04-08 23:11:07','2018-06-23 20:45:39',NULL),(4,'camping','camping',4,'gongga-snow-mountain-2411069_640.jpg','2018-04-08 23:13:29','2018-06-23 20:45:39',NULL),(5,'accessories','accessories',5,'photography-569354_640.jpg','2018-04-03 21:49:42','2018-06-23 20:45:39',NULL),(11,'Gaming','gaming',1,'razer_wallpaper___gaming_gear_by_crissdesignhd-d56qnzo.jpg','2018-05-01 04:42:53','2018-06-23 20:45:39',NULL),(14,'Uncategorized','uncategorized',6,'5b2cfa6e0f0d0.png','2018-06-21 22:12:10','2018-06-23 20:45:39',NULL);
/*!40000 ALTER TABLE "categories" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "category_filter"
--

DROP TABLE IF EXISTS "category_filter";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "category_filter" (
  "id" int(10) unsigned NOT NULL,
  "category_id" int(10) unsigned NOT NULL,
  "filter_id" int(10) unsigned NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "categories_filters_category_id_foreign" ("category_id"),
  KEY "categories_filters_filter_id_foreign" ("filter_id"),
  CONSTRAINT "categories_filters_category_id_foreign" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
  CONSTRAINT "categories_filters_filter_id_foreign" FOREIGN KEY ("filter_id") REFERENCES "filters" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "category_filter"
--

LOCK TABLES "category_filter" WRITE;
/*!40000 ALTER TABLE "category_filter" DISABLE KEYS */;
/*!40000 ALTER TABLE "category_filter" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "contact_form"
--

DROP TABLE IF EXISTS "contact_form";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "contact_form" (
  "id" int(11) NOT NULL,
  "name" varchar(191) DEFAULT NULL,
  "email" varchar(191) DEFAULT NULL,
  "phone" varchar(191) DEFAULT NULL,
  "comment" varchar(500) DEFAULT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "contact_form"
--

LOCK TABLES "contact_form" WRITE;
/*!40000 ALTER TABLE "contact_form" DISABLE KEYS */;
INSERT INTO "contact_form" VALUES (1,'fdsfsd','f vcxvxcvx','cvcx','vxcvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv','2018-05-20 18:49:12','2018-05-20 18:49:12'),(2,'fdsfsd','f vcxvxcvx','cvcx','vxcvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv','2018-05-20 18:58:15','2018-05-20 18:58:15'),(3,'hgfhfghfg','bbbbbbbbbbbbbbbbbbbbbbb','vcbcvbcvbcvbcvb','bvcbcvbcvbcvbcvbcvb','2018-05-20 18:58:36','2018-05-20 18:58:36'),(4,'haim taragano','haim3307@gmail.com','+97253281118','kXASZcvbnm,./','2018-06-08 21:57:48','2018-06-08 21:57:48'),(5,'xzccccccccc','xxxxxxxxxx','xxc','xxxxxxxxxxxxx','2018-06-24 02:46:44','2018-06-24 02:46:44'),(6,'zzzzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzzzzz','zzzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzz','2018-06-24 02:47:08','2018-06-24 02:47:08'),(7,'zzzzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzzzzz','zzzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzz','2018-06-24 02:47:47','2018-06-24 02:47:47');
/*!40000 ALTER TABLE "contact_form" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "entities"
--

DROP TABLE IF EXISTS "entities";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "entities" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "table" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "model" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "base_url" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "img_path" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "entities"
--

LOCK TABLES "entities" WRITE;
/*!40000 ALTER TABLE "entities" DISABLE KEYS */;
INSERT INTO "entities" VALUES (1,'category','categories','Category','/shop/','/categories','2018-05-05 20:07:20',NULL),(2,'page','pages','Page','/','','2018-05-05 20:07:28',NULL),(3,'link','links','Link','',NULL,'2018-05-05 20:07:28',NULL),(4,'product','products','Product','/shop/{category-url}/','/products/{category-url}','2018-05-14 12:51:35',NULL);
/*!40000 ALTER TABLE "entities" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "filters"
--

DROP TABLE IF EXISTS "filters";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "filters" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "view" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "filters"
--

LOCK TABLES "filters" WRITE;
/*!40000 ALTER TABLE "filters" DISABLE KEYS */;
INSERT INTO "filters" VALUES (2,'color','color-filter','2018-04-22 20:22:26',NULL),(3,'shoe-size','shoe-size','2018-04-22 20:23:36',NULL);
/*!40000 ALTER TABLE "filters" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "links"
--

DROP TABLE IF EXISTS "links";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "links" (
  "id" int(11) NOT NULL,
  "title" varchar(100) DEFAULT NULL,
  "url" varchar(255) DEFAULT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "links"
--

LOCK TABLES "links" WRITE;
/*!40000 ALTER TABLE "links" DISABLE KEYS */;
INSERT INTO "links" VALUES (9,'google','https://www.google.co.il/','2018-05-05 23:17:44',NULL,NULL),(10,'amazon','https://amazon.com','2018-05-05 23:18:12',NULL,NULL),(11,'ccccccccccccc','ccccccccccccc','2018-05-27 13:27:57','2018-05-27 13:27:57',NULL),(12,'yahoo','https://www.yahoo.com/','2018-05-27 13:28:22','2018-05-27 13:28:22',NULL),(13,'vcxvxc','vcxvxc','2018-05-27 13:29:11','2018-05-27 13:29:11',NULL),(14,'cccccccccccccccccccccccccccccc','cccccccccccccccccccccccccccccc','2018-05-27 13:29:14','2018-05-27 13:29:14',NULL),(15,'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','2018-05-27 13:29:54','2018-05-27 13:29:54',NULL),(19,'vvvvvvvvvvvvvv','vvvvvvvvvvvvvvvvvxcvcv','2018-05-27 13:33:05','2018-05-27 13:33:05',NULL),(20,'vvvvvvvvvvvvvv','vvvvvvvvvvvvvvvc','2018-05-27 13:33:52','2018-05-27 13:33:52',NULL),(21,'My Cart','/cart','2018-06-09 14:40:12','2018-06-09 14:40:12',NULL),(22,'completed orders','/user/orders','2018-06-09 14:46:04','2018-06-09 14:57:22',NULL);
/*!40000 ALTER TABLE "links" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "menu_items"
--

DROP TABLE IF EXISTS "menu_items";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "menu_items" (
  "id" int(10) unsigned NOT NULL,
  "title" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "calc_url" varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "entity_id" int(10) unsigned NOT NULL,
  "order" int(2) DEFAULT NULL,
  "menu_id" int(10) unsigned NOT NULL,
  "entity_item_id" int(11) NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "menu_items_entity_id_foreign" ("entity_id"),
  KEY "menu_items_menu_id_foreign" ("menu_id"),
  CONSTRAINT "menu_items_entity_id_foreign" FOREIGN KEY ("entity_id") REFERENCES "entities" ("id"),
  CONSTRAINT "menu_items_menu_id_foreign" FOREIGN KEY ("menu_id") REFERENCES "menus" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "menu_items"
--

LOCK TABLES "menu_items" WRITE;
/*!40000 ALTER TABLE "menu_items" DISABLE KEYS */;
INSERT INTO "menu_items" VALUES (34,'shop','http://localhost:8000/shop',2,2,1,1,'2018-05-10 13:39:16','2019-04-04 19:47:40'),(36,'sale','http://localhost:8000/sale',2,3,1,2,'2018-05-10 13:39:29','2019-04-04 19:47:40'),(37,'deals','http://localhost:8000/deals',2,4,1,3,'2018-05-10 13:39:30','2019-04-04 19:47:40'),(39,'blog','http://localhost:8000/blog',2,6,1,5,'2018-05-10 13:39:32','2019-04-04 19:47:40'),(40,'contact us','http://localhost:8000/contact-us',2,8,1,6,'2018-05-10 13:39:33','2019-04-04 19:47:40'),(42,'about','http://localhost:8000/about',2,10,1,8,'2018-05-10 13:39:36','2019-04-04 19:47:40'),(47,'workout','http://localhost:8000/shop/workout',1,7,1,1,'2018-05-10 13:52:06','2019-04-04 19:47:40'),(55,'home','http://localhost:8000/home',2,1,1,9,'2018-05-14 14:46:47','2019-04-04 19:47:40'),(61,'google','https://www.google.co.il/',3,9,1,9,NULL,'2018-06-09 09:38:28'),(122,'My Cart','/cart',3,2,2,21,NULL,'2018-06-09 11:53:01'),(123,'home','http://localhost:8000/home',2,1,2,9,NULL,'2019-04-04 19:47:40'),(125,'completed orders','/user/orders',3,3,2,22,NULL,'2018-06-09 15:21:39'),(126,'contact us','http://localhost:8000/contact-us',2,5,2,6,NULL,'2019-04-04 19:47:40'),(127,'about','http://localhost:8000/about',2,4,2,8,NULL,'2019-04-04 19:47:40');
/*!40000 ALTER TABLE "menu_items" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "menus"
--

DROP TABLE IF EXISTS "menus";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "menus" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "url" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "menus"
--

LOCK TABLES "menus" WRITE;
/*!40000 ALTER TABLE "menus" DISABLE KEYS */;
INSERT INTO "menus" VALUES (1,'Main Nav','main-nav','2018-05-05 20:01:33',NULL,NULL),(2,'Footer Nav','footer-nav','2018-06-03 17:20:01',NULL,NULL);
/*!40000 ALTER TABLE "menus" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "migrations"
--

DROP TABLE IF EXISTS "migrations";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "migrations" (
  "id" int(10) unsigned NOT NULL,
  "migration" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "batch" int(11) NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "migrations"
--

LOCK TABLES "migrations" WRITE;
/*!40000 ALTER TABLE "migrations" DISABLE KEYS */;
INSERT INTO "migrations" VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_03_28_163125_create_categories_table',1),(4,'2018_03_28_163126_create_products_table',1),(5,'2018_04_02_094800_create_tags_table',2),(6,'2018_04_02_095201_create_trending_table',2),(7,'2018_04_02_124818_create_products_tags_table',3),(8,'2018_04_05_183436_create_sub_categories_table',4),(9,'2018_03_28_163127_create_products_table',5),(13,'2018_04_18_103053_create_filters_table',6),(17,'2018_04_19_170315_main_slide',10),(18,'2018_04_20_101526_create_roles_table',11),(19,'2018_04_20_105210_create_user_roles',12),(20,'2018_04_21_172520_create_brands_table',13),(21,'2018_04_22_232643_category_filter',14),(23,'2018_04_25_140010_create_attributes_table',15),(24,'2018_05_05_224129_dynamic_menus',16);
/*!40000 ALTER TABLE "migrations" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "order_lists"
--

DROP TABLE IF EXISTS "order_lists";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "order_lists" (
  "id" int(11) NOT NULL,
  "list" text,
  "user_id" int(10) unsigned DEFAULT NULL,
  "step" int(11) DEFAULT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "order_lists_users_id_fk" ("user_id"),
  CONSTRAINT "order_lists_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "order_lists"
--

LOCK TABLES "order_lists" WRITE;
/*!40000 ALTER TABLE "order_lists" DISABLE KEYS */;
INSERT INTO "order_lists" VALUES (10,'[{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":4},{\"item\":{\"title\":\"PlayStation 3\",\"price\":150,\"main_img\":\"5affcf1deda4d.jpg\",\"url\":\"playstation-3\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"xbox 360\",\"price\":260,\"main_img\":\"5b0fa965b4f45.png\",\"url\":\"xbox-360\",\"c_url\":\"gaming\"},\"quantity\":4},{\"item\":{\"title\":\"Xbox One\",\"price\":365,\"main_img\":\"5b0fabd9ec6a2.png\",\"url\":\"xbox-one\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',2,NULL,'2018-06-01 23:33:13','2018-06-01 23:33:13'),(11,'[{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":10},{\"item\":{\"title\":\"PlayStation 3\",\"price\":150,\"main_img\":\"5affcf1deda4d.jpg\",\"url\":\"playstation-3\",\"c_url\":\"gaming\"},\"quantity\":2},{\"item\":{\"title\":\"xbox 360\",\"price\":260,\"main_img\":\"5b0fa965b4f45.png\",\"url\":\"xbox-360\",\"c_url\":\"gaming\"},\"quantity\":8},{\"item\":{\"title\":\"Xbox One\",\"price\":365,\"main_img\":\"5b0fabd9ec6a2.png\",\"url\":\"xbox-one\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',2,NULL,'2018-06-01 23:33:23','2018-06-01 23:33:23'),(12,'[{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":4},{\"item\":{\"title\":\"PlayStation 3\",\"price\":150,\"main_img\":\"5affcf1deda4d.jpg\",\"url\":\"playstation-3\",\"c_url\":\"gaming\"},\"quantity\":2},{\"item\":{\"title\":\"xbox 360\",\"price\":260,\"main_img\":\"5b0fa965b4f45.png\",\"url\":\"xbox-360\",\"c_url\":\"gaming\"},\"quantity\":8},{\"item\":{\"title\":\"Xbox One\",\"price\":365,\"main_img\":\"5b0fabd9ec6a2.png\",\"url\":\"xbox-one\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',2,NULL,'2018-06-01 23:33:27','2018-06-01 23:33:27'),(13,'[{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":4},{\"item\":{\"title\":\"PlayStation 3\",\"price\":150,\"main_img\":\"5affcf1deda4d.jpg\",\"url\":\"playstation-3\",\"c_url\":\"gaming\"},\"quantity\":2},{\"item\":{\"title\":\"xbox 360\",\"price\":260,\"main_img\":\"5b0fa965b4f45.png\",\"url\":\"xbox-360\",\"c_url\":\"gaming\"},\"quantity\":8},{\"item\":{\"title\":\"Xbox One\",\"price\":365,\"main_img\":\"5b0fabd9ec6a2.png\",\"url\":\"xbox-one\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"}]',2,NULL,'2018-06-01 23:47:55','2018-06-01 23:47:55'),(14,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"Adjustable Utility Bench | SB-670\",\"price\":526.99,\"main_img\":\"product-16-800x800.png\",\"url\":\"adjustable-utility-bench\",\"c_url\":\"workout\"},\"quantity\":1}]',2,NULL,'2018-06-01 23:49:10','2018-06-01 23:49:10'),(15,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"}]',2,NULL,'2018-06-01 23:51:43','2018-06-01 23:51:43'),(16,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',2,NULL,'2018-06-01 23:54:19','2018-06-01 23:54:19'),(17,'[{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"Adjustable Utility Bench | SB-670\",\"price\":526.99,\"main_img\":\"product-16-800x800.png\",\"url\":\"adjustable-utility-bench\",\"c_url\":\"workout\"},\"quantity\":1},{\"item\":{\"title\":\"xbox 360\",\"price\":260,\"main_img\":\"5b0fa965b4f45.png\",\"url\":\"xbox-360\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 3\",\"price\":150,\"main_img\":\"5affcf1deda4d.jpg\",\"url\":\"playstation-3\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"Xbox One\",\"price\":365,\"main_img\":\"5b0fabd9ec6a2.png\",\"url\":\"xbox-one\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',4,NULL,'2018-06-02 15:56:27','2018-06-02 15:56:27'),(18,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"}]',4,NULL,'2018-06-05 21:50:33','2018-06-05 21:50:33'),(19,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":5},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":4},{\"item\":{\"title\":\"Adjustable Utility Bench | SB-670\",\"price\":526.99,\"main_img\":\"product-16-800x800.png\",\"url\":\"adjustable-utility-bench\",\"c_url\":\"workout\"},\"quantity\":4},{\"item\":{\"title\":\"ping pong bat\",\"price\":52.66,\"main_img\":\"ping-pong-1205609_640.jpg\",\"url\":\"ping-pong-bat\",\"c_url\":\"playground\"},\"quantity\":3}]',8,NULL,'2018-06-08 21:18:52','2018-06-08 21:18:52'),(20,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"Adjustable Utility Bench | SB-670\",\"price\":526.99,\"main_img\":\"product-16-800x800.png\",\"url\":\"adjustable-utility-bench\",\"c_url\":\"workout\"},\"quantity\":1},{\"item\":{\"title\":\"billiard board\",\"price\":880.99,\"main_img\":\"billiard-662828_640.jpg\",\"url\":\"billiard-board\",\"c_url\":\"playground\"},\"quantity\":1},{\"item\":{\"title\":\"xbox 360\",\"price\":260,\"main_img\":\"5b0fa965b4f45.png\",\"url\":\"xbox-360\",\"c_url\":\"gaming\"},\"quantity\":4}]',2,NULL,'2018-06-13 22:02:09','2018-06-13 22:02:09'),(21,'[{\"item\":{\"title\":\"Adjustable Utility Bench | SB-670\",\"price\":526.99,\"main_img\":\"product-16-800x800.png\",\"url\":\"adjustable-utility-bench\",\"c_url\":\"workout\"},\"quantity\":1},{\"item\":{\"title\":\"billiard board\",\"price\":880.99,\"main_img\":\"billiard-662828_640.jpg\",\"url\":\"billiard-board\",\"c_url\":\"playground\"},\"quantity\":1},{\"item\":{\"title\":\"ping pong bat\",\"price\":52.66,\"main_img\":\"ping-pong-1205609_640.jpg\",\"url\":\"ping-pong-bat\",\"c_url\":\"playground\"},\"quantity\":1}]',4,NULL,'2018-06-16 16:30:27','2018-06-16 16:30:27'),(22,'[{\"item\":{\"title\":\"Adjustable Utility Bench | SB-670\",\"price\":526.99,\"main_img\":\"product-16-800x800.png\",\"url\":\"adjustable-utility-bench\",\"c_url\":\"workout\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CLASSIC OLYMPIC PLATE\",\"price\":300.99,\"main_img\":\"product-22-800x800.png\",\"url\":\"classic-olympic-plate\",\"c_url\":\"workout\"},\"quantity\":\"1\"}]',4,NULL,'2018-06-26 07:16:19','2018-06-26 07:16:19'),(23,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":3},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"billiard board\",\"price\":880.99,\"main_img\":\"billiard-662828_640.jpg\",\"url\":\"billiard-board\",\"c_url\":\"playground\"},\"quantity\":1}]',2,NULL,'2018-07-18 19:23:00','2018-07-18 19:23:00'),(24,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"Xbox One\",\"price\":365,\"main_img\":\"5b0fabd9ec6a2.png\",\"url\":\"xbox-one\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',2,NULL,'2018-07-18 19:32:31','2018-07-18 19:32:31'),(25,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',11,1,'2018-07-18 20:01:21','2018-07-18 20:10:09'),(26,'[{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',11,1,'2018-07-18 20:13:40','2018-07-18 20:13:56'),(27,'[{\"item\":{\"title\":\"billiard board\",\"price\":880.99,\"main_img\":\"billiard-662828_640.jpg\",\"url\":\"billiard-board\",\"c_url\":\"playground\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"ping pong bat\",\"price\":52.66,\"main_img\":\"ping-pong-1205609_640.jpg\",\"url\":\"ping-pong-bat\",\"c_url\":\"playground\"},\"quantity\":1}]',11,NULL,'2018-07-18 20:22:19','2018-07-18 20:22:19'),(28,'[{\"item\":{\"title\":\"billiard board\",\"price\":880.99,\"main_img\":\"billiard-662828_640.jpg\",\"url\":\"billiard-board\",\"c_url\":\"playground\"},\"quantity\":5},{\"item\":{\"title\":\"stop watch\",\"price\":100.99,\"main_img\":\"product-5-800x800.png\",\"url\":\"stop-watch\",\"c_url\":\"accessories\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"CONVERTIBLE INSTANT TENT\",\"price\":125.99,\"main_img\":\"tant_large_green_yellow.png\",\"url\":\"convertible-instant-tent\",\"c_url\":\"camping\"},\"quantity\":\"1\"},{\"item\":{\"title\":\"PlayStation 4\",\"price\":1200,\"main_img\":\"5affce17dc4f6.jpg\",\"url\":\"playstation-4\",\"c_url\":\"gaming\"},\"quantity\":\"1\"}]',11,NULL,'2018-07-19 11:02:13','2018-07-19 11:02:13');
/*!40000 ALTER TABLE "order_lists" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "page_list_items"
--

DROP TABLE IF EXISTS "page_list_items";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "page_list_items" (
  "id" int(10) unsigned NOT NULL,
  "title" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "order" int(11) DEFAULT NULL,
  "page_list_id" int(10) unsigned NOT NULL,
  "entity_id" int(10) unsigned DEFAULT NULL,
  "entity_item_id" int(11) DEFAULT NULL,
  "options" text COLLATE utf8mb4_unicode_ci,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "entity_id" ("entity_id"),
  KEY "page_list_id" ("page_list_id"),
  CONSTRAINT "page_list_items_ibfk_1" FOREIGN KEY ("entity_id") REFERENCES "entities" ("id"),
  CONSTRAINT "page_list_items_ibfk_2" FOREIGN KEY ("page_list_id") REFERENCES "page_lists" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "page_list_items"
--

LOCK TABLES "page_list_items" WRITE;
/*!40000 ALTER TABLE "page_list_items" DISABLE KEYS */;
INSERT INTO "page_list_items" VALUES (1,'OUR BRAND',2,9,NULL,NULL,'{\"article\":{\"value\":\"<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the\\r\\n                                                                       moment, so blinded by desire.<\\/p> <p>That they cannot foresee the pain and trouble\\r\\n                                                                        that are bound to ensue; and equal blame belongs\\r\\n                                                                        to those who fail in their duty through weakness\\r\\n                                                                        of will.<\\/p> <p>Contrary to popular belief, Lorem Ipsum is not\\r\\n                                                                        simply random text. It has roots in a piece of\\r\\n                                                                        classical Latin literature from 45 BC, making it\\r\\n                                                                        over 2000 years old.<\\/p> <p>Richard McClintock, a Latin professor at\\r\\n                                                                        Hampden-Sydney College in Virginia, looked up\\r\\n                                                                        one of the more obscure Latin words,\\r\\n                                                                        consectetur, from a Lorem Ipsum passage, and\\r\\n                                                                        going through the cites of the word in classical\\r\\n                                                                        literature, discovered the undoubtable source.\\r\\n                                                                        Lorem Ipsum comes from sections 1.10.32 and\\r\\n                                                                        1.10.33 of \\u201cde Finibus Bonorum et Malorum\\\" (The\\r\\n                                                                        Extremes of Good and Evil) by Cicero, written in\\r\\n                                                                        45 BC.<\\/p>\",\"type\":\"t\"}}','2018-06-06 03:50:47','2018-06-24 00:01:39'),(2,'About US',1,9,NULL,NULL,'{\"article\":{\"value\":\"<p>A great About Us page helps builds trust between you and your customers. The more content you provide about you and your business,the more confident people will be when purchasing from your store.</p>\",\"type\":\"t\"}}','2018-06-06 03:50:47','2018-06-24 00:01:39'),(3,'01. WHO WE ARE',3,9,NULL,NULL,'{\"article\":{\"value\":\"<p>We have worked hard to\\r\\nsource, collect and edit\\r\\nthe best of British and\\r\\nIrish design<br>\\r\\ncarefully crafted things\\r\\nfor the home that are\\r\\ndesigned and made on\\r\\nthese shores.<\\/p>\",\"type\":\"t\"}}','2018-06-06 03:52:21','2018-06-24 00:01:39'),(4,'02. WHAT WE DO',4,9,NULL,NULL,'{\"article\":{\"value\":\"<p><span style=\\\"color: rgb(33, 37, 41); font-family: Coda, cursive; font-size: 15px;\\\">Our products are designed with thought to their purpose and are made carefully. They require skill and knowledge from the<\\/span><br style=\\\"margin: 0px; padding: 0px; font-family: Coda, cursive; color: rgb(33, 37, 41); font-size: 15px;\\\"><span style=\\\"color: rgb(33, 37, 41); font-family: Coda, cursive; font-size: 15px;\\\">designer and the maker.<\\/span><br><\\/p>\",\"type\":\"t\"}}','2018-06-06 03:55:18','2018-06-24 00:01:39'),(5,'WANT TO JOIN US?',5,9,NULL,NULL,'{\"article\":{\"value\":\"<p><p>We thrive in a culture of<\\/p><p>restlessness and innovation, which<\\/p><p>is why we are always on the lookout<\\/p><p>for talented and inspired people to<\\/p><p>join the team \\u2013 people who<\\/p><p>share our vision, who can make a<\\/p><p>difference and who want to be part<\\/p><p>of something big.<\\/p><\\/p>\",\"type\":\"t\"}}','2018-06-06 03:56:57','2018-06-24 00:01:39'),(6,'<p style=\"color:black;text-shadow: -4px 1px 5px grey;\">CLASSIC OLYMPIC PLATE</p>',1,5,4,27,'{\"slide_background\":{\"value\":\"pexels-photo-685534.jpeg\",\"type\":\"img\"},\"slide_description\":{\"value\":\"<span style=\\\"color:white;text-shadow: -4px 1px 5px grey;\\\"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ab accusamus aspernatur assumenda, atque beatae deserunt ducimus error esse et excepturi expedita facere illo ipsa iusto maiores non porro quidem, rerum sequi! Cumque dolore doloribus fugiat illo iure, labore laudantium numquam optio quia, recusandae, rem sint tempore tenetur. Aut, odit! <\\/span>\",\"type\":\"t\"}}','2018-05-14 17:08:01','2018-06-24 20:05:11'),(7,NULL,2,5,4,28,'{\"slide_background\":{\"value\":\"800px-Camping_on_Ranu_Kumbolo.jpg\",\"type\":\"img\"},\"slide_description\":{\"value\":\"<p style=\\\"\\\"><span style=\\\"font-size: 14.4px;\\\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ab accusamus aspernatur assumenda, atque beatae deserunt ducimus esse et excepturi expedita facere illo ipsa iusto maiores non porro quidem, rerum sequi! Cumque dolore doloribus fugiat illo iure, labore laudantium numquam optio quia, recusandae, rem sint tempore tenetur. Aut, odit!<\\/span><br><\\/p>\",\"type\":\"t\"}}','2018-05-14 17:08:01','2018-06-24 20:05:11'),(8,NULL,1,6,4,23,'{\"discount\":{\"value\":\"24\",\"type\":\"p\"},\"end_date\":{\"value\":\"2018-07-16 6:19 pm\",\"type\":\"d\"}}','2018-05-15 20:09:21','2018-06-06 03:06:06'),(9,NULL,4,6,4,26,'{\"discount\":{\"value\":\"10\",\"type\":\"p\"},\"end_date\":{\"value\":\"2018-07-18 4:05 am\",\"type\":\"d\"}}','2018-05-15 20:09:21','2018-06-06 03:06:07'),(10,NULL,3,6,4,27,'{\"discount\":{\"value\":80,\"type\":\"i\"},\"end_date\": {\"value\":\"2018-06-04 14:34:51\",\"type\":\"d\"}}','2018-05-15 20:09:21','2018-06-06 03:06:06'),(11,NULL,5,6,4,25,'{\"discount\":{\"value\":\"58\",\"type\":\"p\"},\"end_date\":{\"value\":\"2018-08-29 6:34 pm\",\"type\":\"d\"}}','2018-05-15 20:09:21','2018-06-06 03:06:07'),(13,NULL,6,6,4,24,'{\"discount\":{\"value\":100,\"type\":\"i\"},\"end_date\": {\"value\":\"2018-05-02 12:34:51\",\"type\":\"d\"}}','2018-05-15 20:09:21','2018-06-06 03:06:07'),(16,NULL,3,5,4,50,'{\"slide_background\":{\"value\":\"5b302327abf55.jpg\",\"type\":\"img\"},\"slide_description\":{\"value\":\"\",\"type\":\"t\"}}','2018-05-29 08:30:07','2018-06-24 20:05:11'),(44,'Xbox One',4,5,4,60,'{\"slide_background\":{\"value\":\"5b30231b67584.jpg\",\"type\":\"img\"},\"slide_description\":{\"value\":\"\",\"type\":\"t\"}}','2018-05-31 05:10:09','2018-06-24 20:05:11'),(63,'ADRESS OFFICE 1:',2,8,NULL,NULL,'{\"phone\":{\"value\":\"+0 123-456-7890\",\"type\":\"tel\"},\"email\":{\"value\":\"Info@Example.Com\",\"type\":\"email\"},\"adress\":{\"value\":\"<p>United States Of America, 125 Remsen St, Brooklyn<br><\\/p>\",\"type\":\"s\"},\"opening\":{\"value\":\"9:25 AM \\u2013 7:30 PM\",\"type\":\"s\"}}','2018-06-06 02:40:06','2018-06-24 17:35:46'),(64,'ADRESS OFFICE 2:',1,8,NULL,NULL,'{\"phone\":{\"value\":\"+0 123-456-7890\",\"type\":\"tel\"},\"email\":{\"value\":\"Info@Example.Com\",\"type\":\"email\"},\"adress\":{\"value\":\"<p>United States Of America, 125 Remsen St, Brooklyn<br><\\/p>\",\"type\":\"s\"},\"opening\":{\"value\":\"9:25 AM \\u2013 7:30 PM\",\"type\":\"s\"}}','2018-06-06 02:40:06','2018-06-24 17:35:46'),(65,'ADRESS OFFICE 3',3,8,NULL,NULL,'{\"phone\":{\"value\":\"+0 +0 123-456-7890\",\"type\":\"tel\"},\"email\":{\"value\":\"Info@Example.Com\",\"type\":\"email\"},\"adress\":{\"value\":\"United States Of America, 125 Remsen St, Brooklyn\",\"type\":\"s\"},\"opening\":{\"value\":\"9:25 AM \\u2013 7:30 PM\",\"type\":\"s\"}}','2018-06-06 02:59:05','2018-06-24 17:35:46'),(70,NULL,4,4,4,23,NULL,'2018-06-06 05:00:57','2018-07-25 09:06:02'),(71,NULL,3,4,4,25,NULL,'2018-06-06 05:01:25','2018-07-25 09:06:02'),(72,NULL,2,4,4,26,NULL,'2018-06-06 05:01:36','2018-07-25 09:06:02'),(75,NULL,NULL,7,4,25,'{\"discount\":{\"value\":\"24\",\"type\":\"p\"}}','2018-06-06 17:13:27','2018-06-06 17:20:03'),(76,NULL,NULL,7,4,50,'{\"discount\":{\"value\":\"30\",\"type\":\"p\"}}','2018-06-06 17:13:40','2018-06-06 17:20:19'),(77,NULL,NULL,7,4,60,'{\"discount\":{\"value\":\"20\",\"type\":\"p\"}}','2018-06-06 17:13:42','2018-06-06 17:20:26'),(78,NULL,NULL,7,4,27,'{\"discount\":{\"value\":\"45\",\"type\":\"p\"}}','2018-06-06 17:13:51','2018-06-06 17:20:34'),(79,NULL,NULL,7,4,28,'{\"discount\":{\"value\":\"68\",\"type\":\"p\"}}','2018-06-06 17:13:54','2018-06-06 17:20:42'),(80,'<p><br></p>',NULL,7,4,26,'{\"discount\":{\"value\":\"70\",\"type\":\"p\"}}','2018-06-06 17:14:26','2018-06-29 11:49:40'),(82,NULL,NULL,4,4,64,NULL,'2018-06-24 20:17:44','2018-06-24 20:17:44'),(83,'aaaa',NULL,6,4,57,'{\"discount\":{\"value\":\"22\",\"type\":\"p\"},\"end_date\":{\"value\":\"2018-06-30 8:21 pm\",\"type\":\"d\"}}','2018-06-27 13:51:07','2018-06-27 14:21:41');
/*!40000 ALTER TABLE "page_list_items" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "page_lists"
--

DROP TABLE IF EXISTS "page_lists";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "page_lists" (
  "id" int(10) unsigned NOT NULL,
  "title" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "url" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "img_path" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "entity_id" int(10) unsigned DEFAULT NULL,
  "page_id" int(11) DEFAULT NULL,
  "options_layout" varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "validate_layout" varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "max_items" int(11) DEFAULT NULL,
  "searchable" tinyint(4) DEFAULT '1',
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "page_lists_url_uindex" ("url"),
  KEY "page_id" ("page_id"),
  KEY "page_lists_entities_id_fk" ("entity_id"),
  CONSTRAINT "page_lists_entities_id_fk" FOREIGN KEY ("entity_id") REFERENCES "entities" ("id"),
  CONSTRAINT "page_lists_ibfk_1" FOREIGN KEY ("page_id") REFERENCES "pages" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "page_lists"
--

LOCK TABLES "page_lists" WRITE;
/*!40000 ALTER TABLE "page_lists" DISABLE KEYS */;
INSERT INTO "page_lists" VALUES (4,'featured','featured','',4,9,NULL,'',NULL,1,'2018-05-14 14:20:23',NULL),(5,'main slide','main_slide','head-slide\\backgrounds',NULL,9,'{\"slide_background\":{\"value\":\"\",\"type\":\"img\"},\"slide_description\":{\"value\":\"\",\"type\":\"t\"}}','{\"slide_title\":\"max:355\",\"slide_background\":\"image|nullable\",\"old_slide_background\":\"max:255\",\"slide_description\":\"max:1000\"}',NULL,1,'2018-05-14 17:06:45',NULL),(6,'deals','deals',NULL,4,3,'{\"discount\":{\"value\":\"\",\"type\":\"p\"},\"end_date\":{\"value\":\"\",\"type\":\"d\"}}',NULL,NULL,1,'2018-05-15 19:54:57',NULL),(7,'sales','sales',NULL,4,2,'{\"discount\":{\"value\":\"\",\"type\":\"p\"}}',NULL,NULL,1,'2018-05-31 12:40:37',NULL),(8,'contact us','contact-us',NULL,NULL,6,'{\"phone\":{\"value\":\"\",\"type\":\"tel\"},\"email\":{\"value\":\"\",\"type\":\"email\"},\"adress\":{\"value\":\"\",\"type\":\"s\"},\"opening\":{\"value\":\"\",\"type\":\"s\"}}',NULL,3,0,'2018-06-05 09:32:26',NULL),(9,'about','about',NULL,NULL,8,'{\"article\":{\"value\":\"\",\"type\":\"t\"}}',NULL,NULL,0,'2018-06-06 03:38:42',NULL);
/*!40000 ALTER TABLE "page_lists" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "pages"
--

DROP TABLE IF EXISTS "pages";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "pages" (
  "id" int(11) NOT NULL,
  "title" varchar(100) DEFAULT NULL,
  "url" varchar(255) NOT NULL,
  "content" longtext,
  "active" tinyint(4) DEFAULT '1',
  "is_core" tinyint(4) DEFAULT '0',
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "main_nav_url_uindex" ("url")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "pages"
--

LOCK TABLES "pages" WRITE;
/*!40000 ALTER TABLE "pages" DISABLE KEYS */;
INSERT INTO "pages" VALUES (1,'shop','shop',NULL,1,1,'2018-05-03 16:57:39','2018-05-03 16:57:40',NULL),(2,'sale','sale',NULL,1,1,'2018-05-03 17:00:04','2018-05-03 17:00:05',NULL),(3,'deals','deals',NULL,1,1,'2018-05-03 17:00:04','2018-05-03 17:00:05',NULL),(4,'brands','brands',NULL,0,1,'2018-05-03 17:00:04','2018-05-03 17:00:05',NULL),(5,'blog','blog',NULL,1,1,'2018-05-03 17:00:04','2018-05-03 17:00:05',NULL),(6,'contact us','contact-us',NULL,1,1,'2018-05-03 17:00:04','2018-05-03 17:00:05',NULL),(8,'about','about',NULL,1,1,'2018-05-03 17:00:04','2018-05-03 17:00:05',NULL),(9,'home','home',NULL,1,1,'2018-05-14 17:19:35',NULL,NULL),(15,'New Page','new-paheeeeezz','<p>fgfdgdfgzzzzzzzzzzzzzz</p>',1,0,'2018-05-13 15:46:10','2018-06-06 19:26:23',NULL),(16,'aaaaaaaaacxzczxdd','aaaaaaaaacxzczxdd','<p>ddzzzzgggsadsfsdfsdffds           f</p>',1,0,'2018-05-30 10:07:58','2018-06-24 03:01:06',NULL),(17,'aaaaaaaaa','aaaaaaaaaxx','<p>zzzzzzzzzzzzzzzzzzzzzzzzz</p>',1,0,'2018-05-30 10:13:21','2018-05-30 10:13:21',NULL),(18,'aaaaaaaaa','aaaaaaaaaxxcc','<p>zzzzzzzzzzzzzzzzzzzzzzzzz</p>',1,0,'2018-05-30 10:13:39','2018-05-30 10:13:39',NULL),(19,'vvvvvvvvvvvvvvvvvbbbbbbbbbbbbbbbbbbbb','a123','<p>cgggggggggg</p>',1,0,'2018-05-30 10:31:50','2018-05-30 12:38:13',NULL);
/*!40000 ALTER TABLE "pages" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "password_resets"
--

DROP TABLE IF EXISTS "password_resets";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "password_resets" (
  "email" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "token" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  KEY "password_resets_email_index" ("email")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "password_resets"
--

LOCK TABLES "password_resets" WRITE;
/*!40000 ALTER TABLE "password_resets" DISABLE KEYS */;
INSERT INTO "password_resets" VALUES ('haim3307@gmail.com','$2y$10$rSYXaliy4VdEq/ZpV0Af8.FKUfrDInlPQ0Z4orr6Bxq.ZDe5K78cy','2018-06-09 16:16:52');
/*!40000 ALTER TABLE "password_resets" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "post_categories"
--

DROP TABLE IF EXISTS "post_categories";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "post_categories" (
  "id" int(11) NOT NULL,
  "post_id" int(11) NOT NULL,
  "category_id" int(10) unsigned NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "post_categories_posts_id_fk" ("post_id"),
  KEY "post_categories_categories_id_fk" ("category_id"),
  CONSTRAINT "post_categories_categories_id_fk" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
  CONSTRAINT "post_categories_posts_id_fk" FOREIGN KEY ("post_id") REFERENCES "posts" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "post_categories"
--

LOCK TABLES "post_categories" WRITE;
/*!40000 ALTER TABLE "post_categories" DISABLE KEYS */;
INSERT INTO "post_categories" VALUES (1,1,1,'2018-06-19 22:08:21',NULL),(2,2,1,'2018-06-19 22:08:21',NULL),(3,3,1,'2018-06-19 22:08:21',NULL),(4,4,1,'2018-06-19 22:08:21',NULL),(5,5,1,'2018-06-19 22:08:21',NULL),(6,6,1,'2018-06-19 22:08:21',NULL),(7,7,1,'2018-06-19 22:08:21',NULL),(8,8,1,'2018-06-19 22:08:21',NULL),(9,1,2,'2018-06-19 22:09:07',NULL);
/*!40000 ALTER TABLE "post_categories" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "post_comments"
--

DROP TABLE IF EXISTS "post_comments";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "post_comments" (
  "id" int(11) NOT NULL,
  "comment" varchar(755) NOT NULL,
  "user_id" int(10) unsigned NOT NULL,
  "post_id" int(11) NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "post_comments_posts_id_fk" ("post_id"),
  KEY "post_comments_users_id_fk" ("user_id"),
  CONSTRAINT "post_comments_posts_id_fk" FOREIGN KEY ("post_id") REFERENCES "posts" ("id"),
  CONSTRAINT "post_comments_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "post_comments"
--

LOCK TABLES "post_comments" WRITE;
/*!40000 ALTER TABLE "post_comments" DISABLE KEYS */;
INSERT INTO "post_comments" VALUES (1,'fdsfsdfsdfsd',4,5,'2018-06-19 21:03:39','2018-06-19 21:03:39'),(2,'hisssssssssssssssssssssssss',4,2,'2018-06-19 21:45:02','2018-06-19 21:45:02'),(3,'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',4,6,'2018-06-19 21:45:25','2018-06-19 21:45:25'),(4,'cccccccccccccccccccccccccccccccccccccccccccccccccc',4,3,'2018-06-19 21:45:34','2018-06-19 21:45:34'),(5,'fdsfsdfsdfsd',4,5,'2018-06-19 21:03:39','2018-06-19 21:03:39'),(6,'cccccccccccccccccccccccccccccccccccccccccccccccccc',4,3,'2018-06-19 21:45:34','2018-06-19 21:45:34'),(7,'hisssssssssssssssssssssssss',4,2,'2018-06-19 21:45:02','2018-06-19 21:45:02'),(8,'gfdgdfgdfg',4,2,'2018-06-19 23:26:11','2018-06-19 23:26:11'),(9,'cool post',4,12,'2018-06-20 01:27:28','2018-06-20 01:27:28');
/*!40000 ALTER TABLE "post_comments" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "post_tag"
--

DROP TABLE IF EXISTS "post_tag";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "post_tag" (
  "id" int(11) NOT NULL,
  "post_id" int(11) NOT NULL,
  "tag_id" int(10) unsigned NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "posts_tags_tags_id_fk" ("tag_id"),
  KEY "posts_tags_posts_id_fk" ("post_id"),
  CONSTRAINT "posts_tags_posts_id_fk" FOREIGN KEY ("post_id") REFERENCES "posts" ("id"),
  CONSTRAINT "posts_tags_tags_id_fk" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "post_tag"
--

LOCK TABLES "post_tag" WRITE;
/*!40000 ALTER TABLE "post_tag" DISABLE KEYS */;
INSERT INTO "post_tag" VALUES (4,4,2,'2018-06-19 18:07:36',NULL),(5,5,2,'2018-06-19 18:07:36',NULL),(6,6,1,'2018-06-19 18:07:36',NULL),(8,8,1,'2018-06-19 18:07:36',NULL),(11,10,1,NULL,NULL),(13,9,1,NULL,NULL),(14,9,2,NULL,NULL),(19,3,3,NULL,NULL),(20,1,1,NULL,NULL),(21,1,2,NULL,NULL),(22,1,3,NULL,NULL),(23,1,4,NULL,NULL);
/*!40000 ALTER TABLE "post_tag" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "posts"
--

DROP TABLE IF EXISTS "posts";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "posts" (
  "id" int(11) NOT NULL,
  "title" varchar(255) DEFAULT NULL,
  "url" varchar(255) DEFAULT NULL,
  "main_img" varchar(255) NOT NULL,
  "article" longtext,
  "description" varchar(355) DEFAULT NULL,
  "user_id" int(10) unsigned NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "posts_url_uindex" ("url"),
  KEY "posts_users_id_fk" ("user_id"),
  CONSTRAINT "posts_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "posts"
--

LOCK TABLES "posts" WRITE;
/*!40000 ALTER TABLE "posts" DISABLE KEYS */;
INSERT INTO "posts" VALUES (1,'Understanding gym prices: what are you really paying …','understanding-gym-prices-what-are-you-really-paying','blog1.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2018-06-18 20:39:38','2018-06-24 03:13:55',NULL),(2,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout-1','blog2.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2018-06-12 20:39:40','2018-06-24 03:15:40',NULL),(3,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout-2','blog2.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2018-06-12 20:39:41','2018-06-24 03:15:46',NULL),(4,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout-3','blog2.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm, a muscle that separates your stomach from your chest. Normally, the diaphragm helps keep acid in our stomach. But if you have a hiatal hernia, acid can move up into your esophagus and cause symptoms of acid reflux disease.\r\n\r\nThese are other common risk factors for acid reflux disease:\r\n\r\nEating large meals or lying down right after a meal\r\nBeing overweight or obese\r\nEating a heavy meal and lying on your back or bending over at the waist\r\nSnacking close to bedtime\r\nEating certain foods, such as citrus, tomato, chocolate, mint, garlic, onions, or spicy or fatty foods\r\nDrinking certain beverages, such as alcohol, carbonated drinks, coffee, or tea\r\nSmoking \r\nBeing pregnant\r\nTaking aspirin, ibuprofen, certain muscle relaxers, or blood pressure medications','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2018-05-12 20:39:43',NULL,NULL),(5,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout-4','blog2.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm, a muscle that separates your stomach from your chest. Normally, the diaphragm helps keep acid in our stomach. But if you have a hiatal hernia, acid can move up into your esophagus and cause symptoms of acid reflux disease.\r\n\r\nThese are other common risk factors for acid reflux disease:\r\n\r\nEating large meals or lying down right after a meal\r\nBeing overweight or obese\r\nEating a heavy meal and lying on your back or bending over at the waist\r\nSnacking close to bedtime\r\nEating certain foods, such as citrus, tomato, chocolate, mint, garlic, onions, or spicy or fatty foods\r\nDrinking certain beverages, such as alcohol, carbonated drinks, coffee, or tea\r\nSmoking \r\nBeing pregnant\r\nTaking aspirin, ibuprofen, certain muscle relaxers, or blood pressure medications','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2017-10-12 20:39:44',NULL,NULL),(6,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout-5','blog2.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm, a muscle that separates your stomach from your chest. Normally, the diaphragm helps keep acid in our stomach. But if you have a hiatal hernia, acid can move up into your esophagus and cause symptoms of acid reflux disease.\r\n\r\nThese are other common risk factors for acid reflux disease:\r\n\r\nEating large meals or lying down right after a meal\r\nBeing overweight or obese\r\nEating a heavy meal and lying on your back or bending over at the waist\r\nSnacking close to bedtime\r\nEating certain foods, such as citrus, tomato, chocolate, mint, garlic, onions, or spicy or fatty foods\r\nDrinking certain beverages, such as alcohol, carbonated drinks, coffee, or tea\r\nSmoking \r\nBeing pregnant\r\nTaking aspirin, ibuprofen, certain muscle relaxers, or blood pressure medications','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2018-06-12 20:39:45',NULL,NULL),(7,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout-6','blog2.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2018-06-12 20:39:46','2018-06-24 03:14:25',NULL),(8,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout-7','blog2.jpg','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm, a muscle that separates your stomach from your chest. Normally, the diaphragm helps keep acid in our stomach. But if you have a hiatal hernia, acid can move up into your esophagus and cause symptoms of acid reflux disease.\r\n\r\nThese are other common risk factors for acid reflux disease:\r\n\r\nEating large meals or lying down right after a meal\r\nBeing overweight or obese\r\nEating a heavy meal and lying on your back or bending over at the waist\r\nSnacking close to bedtime\r\nEating certain foods, such as citrus, tomato, chocolate, mint, garlic, onions, or spicy or fatty foods\r\nDrinking certain beverages, such as alcohol, carbonated drinks, coffee, or tea\r\nSmoking \r\nBeing pregnant\r\nTaking aspirin, ibuprofen, certain muscle relaxers, or blood pressure medications','One common cause of acid reflux disease is a stomach abnormality called a hiatal hernia. This occurs when the upper part of the stomach and LES move above the diaphragm.',4,'2016-06-16 20:39:47',NULL,NULL),(9,'xzzzzzzzzzzzzzzzzzzzzzzzz','xzzzzzzzzzzzzzzzzzzzzzzzzz','default.png','<p>zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz</p>','<p>zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz</p>',4,'2018-06-20 01:20:28','2018-06-24 03:13:29',NULL),(10,'xzzzzzzzzzzzzzzzzzzzzzzzz','xzzzzzzzzzzzzzzzzzzzzzzzzzxcv','default.png','<p>zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz</p>','<p>zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz</p>',4,'2018-06-20 01:21:06','2018-06-24 03:13:19',NULL),(11,'xzzzzzzzzzzzzzzzzzzzzzzzz','xzzzzzzzzzzzzzzzzzzzzzzzzzxcvxxx','5b29ac2fcd4a9.png','<p>fdsftest!!!!!!!!!!!!!!!!!!!!!!!!!</p>','<p>zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz</p>',4,'2018-06-20 01:21:51','2018-06-20 01:21:52',NULL),(12,'ggggggg','gggggggdsfdsf','5b29acd9ef19e.png','<pre style=\"background-color:#263238;color:#c3cee3;font-family:\'Fira Code\';font-size:11.3pt;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusamus harum id ipsa molestias nostrum obcaecati perferendis provident quaerat quos ratione repellat, tempore velit! Explicabo inventore odit quidem quo. Ad aliquid amet deserunt ea eaque earum libero, perferendis possimus quas qui rem sapiente, sed, sit temporibus voluptate. Alias aliquid distinctio doloremque est eum fuga molestiae mollitia nulla omnis recusandae? Asperiores aspernatur aut consequuntur doloremque eaque eius eligendi exercitationem, iure laboriosam numquam officia perferendis quas repellat veniam veritatis! Amet cumque delectus deleniti expedita magnam molestiae nostrum odio, officiis optio repellendus sit voluptatum! A adipisci error illum magnam mollitia nam natus, obcaecati perferendis quis similique. Accusantium alias architecto deserunt dolorem eligendi explicabo laborum nihil quam quasi quo! Animi consequatur cum cumque eum illum in, iste, nisi nostrum quaerat quibusdam rem voluptatum! Ad alias aliquid architecto at atque aut autem blanditiis cumque cupiditate debitis deleniti ducimus eligendi enim eos esse exercitationem expedita harum iure nisi obcaecati odio odit officiis omnis pariatur porro quae quaerat quasi quia quibusdam quod, repellat unde vel, voluptate! Aperiam ea unde velit. Accusamus architecto aut autem blanditiis cupiditate, distinctio dolorum earum ex itaque libero, maxime molestias nesciunt nostrum odio praesentium provident quam quis quisquam sunt ut? Aspernatur assumenda consequatur culpa cupiditate, delectus eligendi est excepturi fuga illo iusto laboriosam magni nam nesciunt nostrum obcaecati officiis perspiciatis, placeat quia quisquam, rem repellat rerum sapiente temporibus totam unde velit veniam voluptatem. At blanditiis fugiat incidunt placeat unde. Accusamus, adipisci aliquam, aspernatur at consequatur debitis, deleniti dicta dignissimos et eveniet hic iure laborum magni natus necessitatibus neque nobis nulla qui quis sunt tempora totam unde velit! Quaerat quasi, rerum! Consequatur expedita labore nam quod vel. Aut, deleniti nostrum porro quod quos repellat reprehenderit sequi. Aperiam cupiditate doloremque doloribus eum nostrum officiis omnis ratione soluta ullam voluptatem! Architecto, assumenda error et facilis quia soluta tempore tenetur! Adipisci, blanditiis delectus distinctio ducimus error eveniet minima natus, nisi repellendus suscipit vel voluptas voluptatem! Aliquam architecto at atque consectetur cupiditate deserunt dolores ducimus, eligendi eos in, ipsam itaque, iusto laborum minus molestias neque nisi obcaecati odio quas quis quod sequi sit temporibus tenetur vel vero voluptas voluptate? At dicta doloremque dolores dolorum eius esse est et excepturi, nam, omnis possimus quam ratione saepe. Accusamus amet animi commodi cum dicta dignissimos ducimus et exercitationem impedit ipsam ipsum necessitatibus obcaecati odio officia pariatur quasi qui quibusdam quidem quos, rem reprehenderit rerum sit tempora tempore unde ut velit vero voluptate voluptates voluptatibus! Inventore ipsum labore magni quia rerum tempore vero. Aliquid assumenda eligendi harum impedit nulla quae repellendus sint ullam, voluptate. Ab aperiam assumenda at atque beatae dolores eos, esse est, iusto labore laudantium magnam maxime quia saepe sit tempora, ullam. Accusamus aspernatur aut eaque hic incidunt, laborum officiis rerum suscipit. Autem cumque doloremque ea eum ex expedita harum hic iure labore magnam maiores minima modi molestiae nam placeat quam quia quis quos, reiciendis sapiente tempora vitae, voluptatibus! Dolore iure molestias voluptates? Ab alias architecto, aspernatur assumenda aut beatae commodi consequatur corporis earum eius enim est eum expedita hic id ipsum iusto laboriosam magni maxime minima mollitia nulla numquam perspiciatis quidem quo reiciendis sequi soluta suscipit vel, vitae! A aliquid amet autem commodi cum, deserunt dolorum eius eum fuga in inventore laborum nostrum porro possimus ratione recusandae reiciendis similique tempore voluptas, voluptatibus. Architecto, deserunt dolorem eveniet iste libero necessitatibus nesciunt quisquam saepe soluta unde? Architecto distinctio dolorem incidunt ipsum non omnis placeat quisquam recusandae veniam voluptatem. Accusantium aliquid autem commodi culpa deserunt dignissimos, distinctio dolores doloribus eius est laboriosam magnam modi nesciunt optio perspiciatis quam qui quidem quisquam repudiandae rerum sed sequi tempore veniam. Accusamus adipisci blanditiis consequuntur culpa doloremque eveniet harum, illum magni nesciunt nihil pariatur quas saepe similique totam ullam, vel veniam. Autem commodi cumque illo quisquam? Aliquam aut dignissimos doloribus ex labore perferendis quae quas quidem tempora, velit? Dolor, magni, nemo. Amet aperiam cupiditate maxime modi possimus repudiandae soluta veniam. Eaque laudantium reprehenderit sed voluptatum? Accusamus adipisci aspernatur dicta dignissimos dolorem esse, expedita fugit harum hic, illum ipsam ipsum iste laborum modi molestiae nobis officiis pariatur, placeat quasi quod quos repellat reprehenderit rerum sunt vel? At autem eos est quos sunt. Iure laboriosam maxime veritatis. A dolor enim harum illum incidunt iusto sapiente similique sint voluptas!<br></pre>','<p>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</p>',4,'2018-06-20 01:24:41','2018-06-20 01:24:42',NULL);
/*!40000 ALTER TABLE "posts" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "product_description"
--

DROP TABLE IF EXISTS "product_description";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "product_description" (
  "id" int(11) NOT NULL,
  "product_id" int(10) unsigned NOT NULL,
  "long_description" longtext NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "product_description_product_id_uindex" ("product_id"),
  CONSTRAINT "product_description_products_id_fk" FOREIGN KEY ("product_id") REFERENCES "products" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "product_description"
--

LOCK TABLES "product_description" WRITE;
/*!40000 ALTER TABLE "product_description" DISABLE KEYS */;
INSERT INTO "product_description" VALUES (1,29,'<p><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer a</span></p><p><span style=\"font-size: 14.4px;\">dipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum do</span></p><p><span style=\"font-size: 14.4px;\">lor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet conse</span></p><p><span style=\"font-size: 14.4px;\">ctetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing eli</span></p><p><span style=\"font-size: 14.4px;\">t</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipi</span></p><p><span style=\"font-size: 14.4px;\">scing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><br></p>','2018-06-21 05:57:10','2018-06-21 05:57:10'),(4,28,'<p><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer a</span></p><p><span style=\"font-size: 14.4px;\">dipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum do</span></p><p><span style=\"font-size: 14.4px;\">lor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet conse</span></p><p><span style=\"font-size: 14.4px;\">ctetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing eli</span></p><p><span style=\"font-size: 14.4px;\">t</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipi</span></p><p><span style=\"font-size: 14.4px;\">scing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><br></p>','2018-06-21 06:00:45','2018-06-21 06:00:45'),(5,27,'<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer a</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">dipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum do</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">lor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet conse</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">ctetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing eli</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">t</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipi</span></p><p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">scing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span></p>','2018-06-21 06:03:56','2018-06-21 06:03:56'),(6,63,'<p><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer a</span></p><p><span style=\"font-size: 14.4px;\">dipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum do</span></p><p><span style=\"font-size: 14.4px;\">lor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet conse</span></p><p><span style=\"font-size: 14.4px;\">ctetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing eli</span></p><p><span style=\"font-size: 14.4px;\">t</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipi</span></p><p><span style=\"font-size: 14.4px;\">scing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><span style=\"font-size: 14.4px;\">Lorem ipsum dolor sit amet consectetuer adipiscing elit</span><br></p>','2018-06-21 06:15:01','2018-06-21 06:15:01'),(7,64,'<p>zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzcccccccccccccccccccccccccccccccccccccc</p>','2018-06-23 23:49:15','2018-06-23 23:49:15'),(8,60,'<p><span style=\"color: rgb(39, 39, 39); font-family: Arial; font-size: 12px; background-color: rgb(248, 248, 248);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><span style=\"background-color: rgb(248, 248, 248); color: rgb(39, 39, 39); font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><br></p>','2018-06-23 23:50:42','2018-06-23 23:50:42');
/*!40000 ALTER TABLE "product_description" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "product_images"
--

DROP TABLE IF EXISTS "product_images";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "product_images" (
  "id" int(11) NOT NULL,
  "product_id" int(10) unsigned NOT NULL,
  "name" varchar(355) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "product_images_products_id_fk" ("product_id"),
  CONSTRAINT "product_images_products_id_fk" FOREIGN KEY ("product_id") REFERENCES "products" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "product_images"
--

LOCK TABLES "product_images" WRITE;
/*!40000 ALTER TABLE "product_images" DISABLE KEYS */;
/*!40000 ALTER TABLE "product_images" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "product_reviews"
--

DROP TABLE IF EXISTS "product_reviews";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "product_reviews" (
  "id" int(11) NOT NULL,
  "description" varchar(750) NOT NULL,
  "rating" int(11) NOT NULL,
  "product_id" int(10) unsigned NOT NULL,
  "user_id" int(10) unsigned NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "product_reviews_products_id_fk" ("product_id"),
  KEY "product_reviews_users_id_fk" ("user_id"),
  CONSTRAINT "product_reviews_products_id_fk" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
  CONSTRAINT "product_reviews_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "product_reviews"
--

LOCK TABLES "product_reviews" WRITE;
/*!40000 ALTER TABLE "product_reviews" DISABLE KEYS */;
INSERT INTO "product_reviews" VALUES (11,'fdsfsdfsd',5,23,4,'2018-06-18 23:02:04','2018-06-18 23:02:04'),(12,'Great Product!!',5,27,4,'2018-06-18 23:30:09','2018-06-18 23:30:09'),(14,'cxzczxczxcz',5,28,4,'2018-06-19 00:22:25','2018-06-19 00:22:25'),(15,'cccccccccccccccccccccccccccccccxxxxxxxxxxxxxx',3,25,4,'2018-06-19 00:31:23','2018-06-19 00:31:23'),(16,'almost great!',3,24,4,'2018-06-19 00:31:57','2018-06-19 00:31:57'),(17,'fdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsdfdsfsdfsd',3,47,4,'2018-06-19 00:34:35','2018-06-19 00:34:35'),(18,'nice product',3,63,4,'2018-06-21 06:15:34','2018-06-21 06:15:34'),(19,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',5,50,10,'2018-06-22 20:47:30','2018-06-22 20:47:30');
/*!40000 ALTER TABLE "product_reviews" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "products"
--

DROP TABLE IF EXISTS "products";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "products" (
  "id" int(10) unsigned NOT NULL,
  "title" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "url" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "stock" int(11) DEFAULT NULL,
  "description" text COLLATE utf8mb4_unicode_ci NOT NULL,
  "price" double(50,2) NOT NULL,
  "prev_price" double(8,2) DEFAULT NULL,
  "main_img" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "rating" float DEFAULT '5',
  "extra" varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "brand_id" int(10) unsigned DEFAULT NULL,
  "category_id" int(10) unsigned NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "products_url_uindex" ("url"),
  KEY "products_brands_id_fk" ("brand_id"),
  KEY "products_categories_id_fk" ("category_id"),
  CONSTRAINT "products_brands_id_fk" FOREIGN KEY ("brand_id") REFERENCES "brands" ("id"),
  CONSTRAINT "products_categories_id_fk" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "products"
--

LOCK TABLES "products" WRITE;
/*!40000 ALTER TABLE "products" DISABLE KEYS */;
INSERT INTO "products" VALUES (23,'Adjustable Utility Bench | SB-670','adjustable-utility-bench',498,'Lorem ipsum dolor sit amet consectetuer adipiscing elit',526.99,NULL,'product-16-800x800.png',4.5,NULL,NULL,1,'2018-04-27 22:14:48','2018-06-01 09:20:35',NULL),(24,'ping pong bat','ping-pong-bat',497,'Lorem ipsum dolor sit amet consectetuer adipiscing elit',52.66,NULL,'ping-pong-1205609_640.jpg',5,NULL,NULL,2,'2018-04-19 16:56:37','2018-06-01 09:20:35',NULL),(25,'billiard board','billiard-board',498,'Lorem ipsum dolor sit amet consectetuer adipiscing elit',880.99,920.99,'billiard-662828_640.jpg',4.2,NULL,NULL,2,'2018-04-27 23:49:01','2018-06-01 09:20:35',NULL),(26,'stop watch','stop-watch',498,'Lorem ipsum dolor sit amet consectetuer adipiscing elit',100.99,NULL,'product-5-800x800.png',5,NULL,NULL,5,NULL,'2018-06-25 18:09:46',NULL),(27,'CLASSIC OLYMPIC PLATE','classic-olympic-plate',500,'Lorem ipsum dolor sit amet consectetuer adipiscing elit',300.99,NULL,'product-22-800x800.png',5,NULL,NULL,1,'2018-04-28 00:14:40','2018-06-21 06:03:56',NULL),(28,'CONVERTIBLE INSTANT TENT','convertible-instant-tent',494,'Lorem ipsum dolor sit amet consectetuer adipiscing elit',125.99,NULL,'tant_large_green_yellow.png',5,NULL,NULL,4,'2018-04-28 18:00:12','2018-06-01 09:20:35',NULL),(29,'Life Saver','life-saver',500,'Lorem ipsum dolor sit amet consectetuer adipiscing elit',15.99,18.99,'default.png',4.6,NULL,NULL,14,NULL,'2018-06-22 12:14:45',NULL),(47,'PlayStation 4','playstation-4',500,'<p>The best and the mode successful console in the world</p>',1200.00,NULL,'5affce17dc4f6.jpg',5,NULL,NULL,11,'2018-05-19 07:11:19','2018-05-19 07:11:19',NULL),(48,'PlayStation 3','playstation-3',500,'<span style=\"color: rgb(84, 110, 122); font-style: italic;\">The best and the <span style=\"background-color: rgb(255, 255, 0);\">most</span> successful console in the world</span>',150.00,NULL,'5affcf1deda4d.jpg',4.3,NULL,NULL,11,'2018-05-19 07:15:41','2018-05-19 07:15:41',NULL),(50,'xbox 360','xbox-360',497,'<blockquote class=\"blockquote\"><span style=\"font-family: Arial; font-size: 12px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span></blockquote>',260.00,NULL,'5b0fa965b4f45.png',4.1,NULL,NULL,11,'2018-05-21 03:18:39','2018-06-01 09:20:35',NULL),(51,'cxzczxczx','cxzczxczx',500,'<p>csafcdvxcvxc</p>',45353.00,NULL,'default.png',5,NULL,NULL,14,'2018-05-23 12:45:31','2018-06-23 00:02:50','2018-06-23 00:02:50'),(52,'Benchmark.js','benchmarkgfds',500,'<p>zzzzzzzzzzzzzzzzzzzz</p>',35443.00,NULL,'default.png',5,NULL,NULL,14,'2018-05-23 13:35:53','2018-06-23 00:19:04','2018-06-23 00:19:04'),(53,'Benchmark.js','benchmark-dsadasd',500,'<p>vxcvxcvxcvxcfdg</p>',55555.00,NULL,'default.png',3,NULL,NULL,14,'2018-05-23 17:51:24','2018-06-23 00:19:06','2018-06-23 00:19:06'),(55,'cccccccccccccccccccccccccccccccccccccccccccccccccc','cccccccccccccccccccccccccccccccccccccccccccccccccc',500,'<p>dsadasd</p>',4444.00,NULL,'5b0650b3c77e6.jpg',5,NULL,NULL,14,'2018-05-24 05:42:11','2018-06-22 12:14:45',NULL),(57,'Finrel','finrel',500,'<p>jgfjhgfjhg</p>',354.00,NULL,'5b06525e27a75.jpg',5,NULL,NULL,14,'2018-05-24 05:49:18','2018-06-22 12:14:45',NULL),(59,'zzzzzzzzzz','zzzzzzzzzz',500,'<p>dsaccccccc</p>',44.00,NULL,'5b0c33f0a46cf.jpg',5,NULL,NULL,14,'2018-05-28 16:53:04','2018-06-22 23:28:25','2018-06-22 23:28:25'),(60,'Xbox One','xbox-one',500,'<p><span style=\"color: rgb(39, 39, 39); font-family: Arial; font-size: 12px; background-color: rgb(248, 248, 248);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores beatae consectetur consequatur enim eos libero officiis quae recusandae repellendus sunt. Ad aliquam dolores dolorum est excepturi facilis, impedit officiis veniam!</span><br></p>',365.00,NULL,'5b0fabd9ec6a2.png',5,NULL,NULL,11,'2018-05-31 08:01:29','2018-05-31 08:01:30',NULL),(61,'ggggggg','ggggggg',NULL,'<p>hiiiiiiiiii</p>',21312.00,NULL,'5b23f1f3a3a80.jpg',5,NULL,NULL,14,'2018-06-15 17:05:55','2018-06-22 12:20:05','2018-06-21 21:15:18'),(62,'ggggggg','gggggggddd',532,'<p>zzzzzzzzzz</p>',72.00,NULL,'5b241de5db267.jpg',5,NULL,NULL,14,'2018-06-15 20:13:25','2018-06-22 12:20:05','2018-06-21 21:15:17'),(63,'4 Steps to An Even Better Upper Body Workout','4-steps-to-an-even-better-upper-body-workout',555,'<p>loremmmmmmmmmmmmmmmmmmmmmmmmmmm ipsum</p>',7777.00,NULL,'5b2b42658b938.jpg',5,NULL,NULL,14,'2018-06-21 06:15:01','2018-06-22 12:20:05','2018-06-21 21:14:12'),(64,'tags test','tags-test',66664,'<p>zzzzzzzzzzzzzzzzzzzzzz</p>',12345.00,NULL,'5b2edc7bcf9ab.jpg',5,NULL,NULL,14,'2018-06-23 23:49:15','2018-06-24 23:18:09','2018-06-24 23:18:09');
/*!40000 ALTER TABLE "products" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "products_tags"
--

DROP TABLE IF EXISTS "products_tags";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "products_tags" (
  "id" int(10) unsigned NOT NULL,
  "product_id" int(10) unsigned NOT NULL,
  "tag_id" int(10) unsigned NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "products_tags_product_id_foreign" ("product_id"),
  KEY "products_tags_tag_id_foreign" ("tag_id"),
  CONSTRAINT "products_tags_product_id_foreign" FOREIGN KEY ("product_id") REFERENCES "products" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT "products_tags_tag_id_foreign" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "products_tags"
--

LOCK TABLES "products_tags" WRITE;
/*!40000 ALTER TABLE "products_tags" DISABLE KEYS */;
INSERT INTO "products_tags" VALUES (2,25,1,'2018-04-27 21:06:32',NULL),(12,28,5,'2018-04-28 15:26:07',NULL),(13,24,1,'2018-04-28 16:37:30',NULL),(14,26,1,'2018-04-28 16:37:30',NULL),(42,23,1,NULL,NULL),(43,23,2,NULL,NULL),(44,23,3,NULL,NULL),(47,64,4,NULL,NULL),(48,64,1,NULL,NULL),(49,47,3,NULL,NULL),(50,47,1,NULL,NULL),(51,60,3,NULL,NULL),(52,60,2,NULL,NULL);
/*!40000 ALTER TABLE "products_tags" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "roles"
--

DROP TABLE IF EXISTS "roles";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "roles" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "description" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "roles"
--

LOCK TABLES "roles" WRITE;
/*!40000 ALTER TABLE "roles" DISABLE KEYS */;
INSERT INTO "roles" VALUES (3,'editor','edit and add products','2018-04-20 08:01:36',NULL),(5,'admin','manage site','2018-04-20 08:01:38',NULL),(8,'user','use site','2018-04-20 08:01:37',NULL);
/*!40000 ALTER TABLE "roles" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "tags"
--

DROP TABLE IF EXISTS "tags";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "tags" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  "url" varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "tags_name_uindex" ("name"),
  UNIQUE KEY "tags_url_uindex" ("url")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "tags"
--

LOCK TABLES "tags" WRITE;
/*!40000 ALTER TABLE "tags" DISABLE KEYS */;
INSERT INTO "tags" VALUES (1,'man','man','2018-04-02 07:03:16','2018-04-02 07:03:25',NULL),(2,'women','women','2018-04-02 07:03:20','2018-04-02 07:03:26',NULL),(3,'kids','kids','2018-04-02 07:03:21','2018-04-02 07:03:27',NULL),(4,'accessories','accessories','2018-04-02 07:03:22','2018-04-02 07:03:28',NULL),(5,'featured','featured','2018-04-12 07:23:39',NULL,NULL),(6,'gogo','gogo','2018-05-10 14:40:29','2018-05-10 14:40:29',NULL),(7,'test','test','2018-05-10 14:41:00','2018-05-10 14:41:00',NULL);
/*!40000 ALTER TABLE "tags" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "user_infos"
--

DROP TABLE IF EXISTS "user_infos";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "user_infos" (
  "id" int(11) NOT NULL,
  "first_name" varchar(191) DEFAULT NULL,
  "last_name" varchar(191) DEFAULT NULL,
  "user_id" int(11) unsigned NOT NULL,
  "phone" varchar(100) DEFAULT NULL,
  "country" varchar(255) DEFAULT NULL,
  "postal_code" varchar(30) DEFAULT NULL,
  "province" varchar(255) DEFAULT NULL,
  "city" varchar(255) DEFAULT NULL,
  "address" varchar(255) DEFAULT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "user_id" ("user_id"),
  CONSTRAINT "user_infos_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "user_infos"
--

LOCK TABLES "user_infos" WRITE;
/*!40000 ALTER TABLE "user_infos" DISABLE KEYS */;
INSERT INTO "user_infos" VALUES (2,'aaaa',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-23 02:58:50','2018-05-31 16:59:19'),(3,'avi','taragano',8,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-08 20:58:31','2018-06-08 20:58:37'),(4,'haim','taragano',4,'0532811182','?????','59647','Alabama','bat yam','hakarmel 23','2018-06-13 16:19:17','2018-07-24 09:00:21'),(5,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-22 20:05:56','2018-06-22 20:05:56'),(6,'haim','taragano',11,'0532811181','?????','59647','Alabama','bat yam','hakarmel 23','2018-07-19 09:24:11','2018-07-20 12:36:55');
/*!40000 ALTER TABLE "user_infos" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "user_roles"
--

DROP TABLE IF EXISTS "user_roles";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "user_roles" (
  "id" int(10) unsigned NOT NULL,
  "role_id" int(10) unsigned NOT NULL,
  "user_id" int(10) unsigned NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "user_roles_role_id_foreign" ("role_id"),
  KEY "user_roles_user_id_foreign" ("user_id"),
  CONSTRAINT "user_roles_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
  CONSTRAINT "user_roles_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "user_roles"
--

LOCK TABLES "user_roles" WRITE;
/*!40000 ALTER TABLE "user_roles" DISABLE KEYS */;
INSERT INTO "user_roles" VALUES (2,8,2,'2018-04-20 08:07:34',NULL),(3,3,3,'2018-04-20 08:07:35',NULL),(4,5,4,'2018-04-20 08:13:04',NULL);
/*!40000 ALTER TABLE "user_roles" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "users"
--

DROP TABLE IF EXISTS "users";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "users" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "email" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "profile_img" varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  "role_id" int(11) DEFAULT NULL,
  "password" varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  "remember_token" varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  "deleted_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "users_email_unique" ("email")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "users"
--

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
INSERT INTO "users" VALUES (1,'_','_','default.png',5,'_',NULL,'2018-04-20 11:10:35','2018-06-18 17:31:49',NULL),(2,'john brice','jhon11@brice.com','5b215c91586b5.png',8,'$2y$10$/kf3uOqA3YXExOSfO8fR0OFwyYMDIzygCZmF/IyRkUeqHhcwZ6eki','Hm3skxO4FXqLWddUaZXRIpPMOPifnOnVp19HlzC2Jxgkl5CEjJP46cWCBd0X','2018-04-20 10:13:57','2018-06-13 18:04:02',NULL),(3,'editor','edit@editor.com','default.png',3,'$2y$10$/kf3uOqA3YXExOSfO8fR0OFwyYMDIzygCZmF/IyRkUeqHhcwZ6eki','CHqu6GzRanC8vs4tQGbRyt48Fp9effkjSg8QgmwstYse0gRkMx34f7kVaoZF','2018-04-20 10:13:57','2018-06-08 20:18:49',NULL),(4,'haim taragano','haim3307@gmail.com','5b2840458b6f9.jpg',5,'$2y$10$/kf3uOqA3YXExOSfO8fR0OFwyYMDIzygCZmF/IyRkUeqHhcwZ6eki','G5N4QKcT29VHNpda9qhCZwayMvRlMXg5mBs3otsfiKOLGGZTPJfetJ0s8wu4','2018-04-13 23:54:23','2018-06-18 23:29:09',NULL),(5,'avi123456','avi123456@gmail.com','default.png',8,'957846213Ha',NULL,'2018-06-08 18:26:39','2018-06-08 20:36:08',NULL),(6,'h12345','ssm3307@gmail.com','default.png',3,'957846213Ha',NULL,'2018-06-08 20:13:44','2018-06-11 19:32:37',NULL),(7,'haim3308','haim3308@gmail.com','default.png',3,'$2y$10$xPXHfDFQUUkMvZf4rsP/uetWwnFSE/3bVlga18QUlh8NhJsCEf0uG',NULL,'2018-06-08 20:37:21','2018-06-24 04:12:56',NULL),(8,'avi123456','avi123457@gmail.com','default.png',8,'$2y$10$c3xgSNmD0vQ7K15bbnbVDef..v.VWNzRnVA10ujPnJ4p9qQJaLe1C','lONSo5yywjZ6zNRz1gb8NcF9gYdjBU2YWoAWlJrgevSpBPkwkCNgXwZkTCC6','2018-06-08 20:40:07','2018-06-23 00:29:41','2018-06-24 03:33:37'),(9,'shlomi editor','shlomi12345@gmail.com','default.png',3,'$2y$10$cYV31amtH/bNFewPViNTluY05.bV5daHl.iE//pzy5Y2upKvdE26.','YqT7SJdc07PVQwiqhlJxfbBczAPqCCc88T0cNsTVUZ2aebHlPuUSzibQxkR3','2018-06-22 19:39:41','2018-06-23 00:30:14',NULL),(10,'shlomi admin','shlomi_admin@gmail.com','5b2d56bae1df4.png',5,'$2y$10$Xt8qozGltdVJzkHCCwLx5.KFItVWmd3orMEHZnsQvYqKjCe4xasqm','Cv5VBAlepPU1vkLzr97c9jztdLY0ma3Et5hu4K30bzT5hvrF5QHA4dQIYab2','2018-06-22 19:48:38','2018-06-23 00:30:17',NULL),(11,'test','test@gmail.com','default.png',NULL,'$2y$10$egxg0715A4ViWH5aocxeDe6Cf4mnGAthoL1UxAU/naNhQzSnZFK8e','CbDFT8mHb8Dr2CIBSgazLijCl30F9fVkwDU4ekzBIa4dRwChef6mZXgmsmq1','2018-07-18 19:33:34','2018-07-18 19:33:34',NULL),(12,'haim taragano','shmuel3307@gmail.com','default.png',NULL,'$2y$10$E68iJICS5/F5.rDwBpT7CuQammZwEooLP7fM4DIIO9aekRwMfZy5S',NULL,'2018-10-12 09:24:19','2018-10-12 09:24:19',NULL);
/*!40000 ALTER TABLE "users" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "wish_list"
--

DROP TABLE IF EXISTS "wish_list";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "wish_list" (
  "id" int(11) NOT NULL,
  "product_id" int(11) DEFAULT NULL,
  "user_id" int(11) DEFAULT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "wish_list"
--

LOCK TABLES "wish_list" WRITE;
/*!40000 ALTER TABLE "wish_list" DISABLE KEYS */;
INSERT INTO "wish_list" VALUES (15,25,2,'2018-06-13 22:43:52','2018-06-13 22:43:52'),(22,51,4,'2018-06-23 00:01:35','2018-06-23 00:01:35'),(96,24,4,'2018-07-17 13:17:56','2018-07-17 13:17:56'),(108,47,4,'2018-07-17 19:46:18','2018-07-17 19:46:18'),(109,25,4,'2018-07-17 19:49:45','2018-07-17 19:49:45'),(126,26,2,'2018-07-18 10:14:10','2018-07-18 10:14:10'),(127,28,2,'2018-07-18 10:15:12','2018-07-18 10:15:12'),(130,50,2,'2018-07-18 10:19:53','2018-07-18 10:19:53'),(131,57,2,'2018-07-18 10:49:18','2018-07-18 10:49:18'),(132,24,11,'2018-07-19 10:03:19','2018-07-19 10:03:19');
/*!40000 ALTER TABLE "wish_list" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-05 20:40:54
