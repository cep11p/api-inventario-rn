-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: inventario
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB-1:10.4.21+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_data`
--

DROP TABLE IF EXISTS `audit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` blob DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_data_entry_id` (`entry_id`),
  CONSTRAINT `fk_audit_data_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_data`
--

LOCK TABLES `audit_data` WRITE;
/*!40000 ALTER TABLE `audit_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_entry`
--

DROP TABLE IF EXISTS `audit_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `duration` float DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `request_method` varchar(16) DEFAULT NULL,
  `ajax` int(1) NOT NULL DEFAULT 0,
  `route` varchar(255) DEFAULT NULL,
  `memory_max` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_route` (`route`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_entry`
--

LOCK TABLES `audit_entry` WRITE;
/*!40000 ALTER TABLE `audit_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_error`
--

DROP TABLE IF EXISTS `audit_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  `code` int(11) DEFAULT 0,
  `file` varchar(512) DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `trace` blob DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `emailed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_audit_error_entry_id` (`entry_id`),
  KEY `idx_file` (`file`(180)),
  KEY `idx_emailed` (`emailed`),
  CONSTRAINT `fk_audit_error_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_error`
--

LOCK TABLES `audit_error` WRITE;
/*!40000 ALTER TABLE `audit_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_javascript`
--

DROP TABLE IF EXISTS `audit_javascript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_javascript` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `origin` varchar(512) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_javascript_entry_id` (`entry_id`),
  CONSTRAINT `fk_audit_javascript_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_javascript`
--

LOCK TABLES `audit_javascript` WRITE;
/*!40000 ALTER TABLE `audit_javascript` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_javascript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_mail`
--

DROP TABLE IF EXISTS `audit_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `successful` int(11) NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` blob DEFAULT NULL,
  `html` blob DEFAULT NULL,
  `data` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_mail_entry_id` (`entry_id`),
  CONSTRAINT `fk_audit_mail_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_mail`
--

LOCK TABLES `audit_mail` WRITE;
/*!40000 ALTER TABLE `audit_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `model_id` varchar(255) NOT NULL,
  `field` varchar(255) DEFAULT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_audit_trail_entry_id` (`entry_id`),
  KEY `idx_audit_user_id` (`user_id`),
  KEY `idx_audit_trail_field` (`model`,`model_id`,`field`),
  KEY `idx_audit_trail_action` (`action`),
  CONSTRAINT `fk_audit_trail_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `audit_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail`
--

LOCK TABLES `audit_trail` WRITE;
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `idx-auth_assignment-user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Alimento'),(2,'Limpieza'),(3,'Otro');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante`
--

DROP TABLE IF EXISTS `comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_remito` varchar(45) NOT NULL,
  `fecha_inicial` date NOT NULL COMMENT 'Fecha de registro en el servidor\n',
  `fecha_emision` date NOT NULL COMMENT 'fecha que se emite el comprobate\n',
  `total` double DEFAULT NULL,
  `proveedorid` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nro_remito_UNIQUE` (`nro_remito`),
  KEY `fk_comprobante_proveedor1_idx` (`proveedorid`),
  CONSTRAINT `fk_comprobante_proveedor1` FOREIGN KEY (`proveedorid`) REFERENCES `proveedor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante`
--

LOCK TABLES `comprobante` WRITE;
/*!40000 ALTER TABLE `comprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito`
--

DROP TABLE IF EXISTS `deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `lugarid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egreso`
--

DROP TABLE IF EXISTS `egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egreso` (
  `fecha` date NOT NULL,
  `origen` varchar(100) DEFAULT NULL,
  `destino_nombre` varchar(100) NOT NULL,
  `destino_localidadid` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `nro_acta` varchar(20) DEFAULT NULL,
  `tipo_egresoid` int(11) DEFAULT NULL,
  `fecha_inicial` date NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suscrito` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tipoegresoid` (`tipo_egresoid`),
  CONSTRAINT `fk_tipoegresoid` FOREIGN KEY (`tipo_egresoid`) REFERENCES `tipo_egreso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egreso`
--

LOCK TABLES `egreso` WRITE;
/*!40000 ALTER TABLE `egreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `comprobanteid` int(11) NOT NULL,
  `productoid` int(11) NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `precio_unitario` double DEFAULT 0,
  `defectuoso` tinyint(1) DEFAULT 0,
  `egresoid` int(11) DEFAULT NULL,
  `depositoid` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `falta` tinyint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_comprobante_has_producto_producto1_idx` (`productoid`),
  KEY `fk_comprobante_has_producto_comprobante1_idx` (`comprobanteid`),
  KEY `fk_stock_egreso1_idx` (`egresoid`),
  KEY `fk_stock_deposito1_idx` (`depositoid`),
  CONSTRAINT `fk_comprobante_has_producto_comprobante1` FOREIGN KEY (`comprobanteid`) REFERENCES `comprobante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comprobante_has_producto_producto1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_egresoid` FOREIGN KEY (`egresoid`) REFERENCES `egreso` (`id`),
  CONSTRAINT `fk_stock_deposito1` FOREIGN KEY (`depositoid`) REFERENCES `deposito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (230,'1 2 3 listo'),(338,'1888'),(68,'3 arroyos'),(256,'3arroyos'),(289,'7up'),(319,'Abbott'),(254,'Aceitera general deheza'),(234,'Adams'),(33,'Ades'),(314,'Agua mate'),(283,'Aguaribay malbec 2013'),(85,'Aguila'),(196,'Aguila chocolate amargo 70'),(148,'Alcaraz'),(251,'Alfajores jorgito'),(291,'Algabo'),(17,'Alicante'),(217,'Allegro'),(263,'Alma mora'),(36,'Amanda'),(159,'Ametller origen'),(92,'Amodil'),(361,'Andresito'),(1,'Arcor'),(274,'Arlistan'),(145,'Aro'),(27,'Baggio'),(13,'Bagley'),(185,'Bagley argentina sa'),(86,'Bahia'),(308,'Baltika'),(309,'Bazooka'),(41,'Bc'),(54,'Bc la campagnola'),(94,'Beepure'),(228,'Billiken'),(67,'Bimbo'),(271,'Bodega la rural'),(262,'Bon o bon'),(276,'Bon squa'),(340,'Bonchia'),(349,'Bonte'),(158,'Boutique chips'),(320,'Breviss'),(354,'Briosh'),(209,'Cabana mico'),(295,'Cabreiroa'),(44,'Cachafaz'),(111,'Cada dia agd'),(190,'Cameleon'),(103,'Campari'),(101,'Canuelas'),(126,'Capitan del espacio'),(315,'Caracas'),(107,'Carefour'),(192,'Carilo sa'),(12,'Carrefour'),(336,'Castell'),(73,'Cbse'),(72,'Celusal'),(187,'Cepita'),(318,'Cereal fort'),(169,'Cereal mix'),(327,'Cerealitas'),(297,'Chocolatory'),(298,'Chuker'),(69,'Cica'),(213,'Cif'),(40,'Citric'),(5,'Coca cola'),(293,'Coca cola company'),(248,'Coca cola life'),(242,'Coca loca'),(240,'Cocinero'),(264,'Coconut merchant'),(337,'Cofler'),(99,'Colonial'),(130,'Conciencia'),(282,'Congys'),(110,'Cooperativa'),(244,'Costa del sol'),(238,'Cotapa'),(310,'Coto'),(35,'Cruz de malta'),(300,'Cumana'),(173,'Cunnington'),(330,'Cutex'),(236,'D ulcere de lecce'),(218,'Dada'),(25,'Dahi'),(197,'Danica dorada'),(19,'Danone'),(220,'Danone argentina'),(132,'De la panaderia'),(146,'Deluxe bla bla'),(157,'Dhum crack'),(3,'Dia'),(53,'Dicomere'),(287,'Dieter meier'),(123,'Don marcos'),(64,'Don satur'),(45,'Dona magdalena'),(261,'Donsatur'),(225,'Doritos'),(28,'Dos anclas'),(168,'Dos hermanos'),(82,'Dove'),(286,'Dulcor'),(96,'Ecosan'),(118,'Egran'),(89,'El brocal'),(152,'El chucupal'),(356,'El turista'),(59,'Emeth'),(138,'Equal'),(204,'Equal sweet'),(114,'Especias el castillo'),(229,'Estancia el placer'),(120,'Evercrisp'),(302,'Exeter'),(352,'Express light'),(21,'Exquisita'),(129,'Fantasia'),(269,'Fecoapi'),(122,'Fel fort'),(323,'Felfort'),(78,'Felices las vacas'),(239,'Ferrero'),(194,'Fincas el renuevo'),(267,'Flow cereal'),(112,'For van'),(223,'Franui'),(258,'Fronterita'),(177,'Full mix semillado'),(32,'Gallo'),(250,'Gallo snacks'),(253,'Gatorade'),(128,'Genser'),(83,'Gomes da costa'),(7,'Granix'),(165,'Granja del sol'),(90,'Great value'),(353,'Greating'),(359,'Green mills'),(115,'Grimaldi'),(154,'Hamlet'),(9,'Havanna'),(48,'Heineken'),(215,'Heinz'),(10,'Hellmann s'),(224,'Hellmans light'),(93,'Herbalife'),(119,'Hero'),(265,'High altitude'),(357,'Hilerer'),(37,'Hileret'),(116,'Hojaldre'),(193,'Hojalmar'),(233,'Hojalmar s a'),(175,'Ibope'),(16,'Ilolay'),(166,'Imperial'),(313,'Indelma'),(260,'Integra'),(98,'Isenbeck'),(347,'Jaserenisima'),(343,'Johnson s'),(241,'Jorgito'),(328,'Juan valdez'),(24,'Jumbo'),(71,'Kellogg s'),(292,'Kinder'),(84,'Kmd mexico'),(4,'Knorr'),(117,'Kokis'),(150,'Kolynos'),(182,'Kraus'),(322,'La anonima'),(348,'La banda'),(14,'La campagnola'),(311,'La litoralena'),(75,'La merced'),(113,'La morenita'),(216,'La parmesana'),(55,'La paulina'),(2,'La serenisima'),(312,'La serenissima'),(106,'La tranquilina'),(305,'La vie claire'),(137,'La virginia'),(237,'Lagarde'),(210,'Lapataia'),(277,'Latitud 33'),(249,'Le fit'),(188,'Le q'),(47,'Ledesma'),(227,'Leiva'),(131,'Levite'),(51,'Lia'),(243,'Liebig'),(22,'Lucchetti'),(345,'Luchetti'),(280,'Lunaris'),(46,'Macrobiotica'),(195,'Maggi'),(275,'Maizena'),(285,'Makarona'),(294,'Manao'),(61,'Manaos'),(39,'Manfrey'),(191,'Mani king'),(284,'Marbella'),(350,'Margadan'),(203,'Marian arytza'),(259,'Marinezzi'),(174,'Marinozzi'),(324,'Marolio'),(332,'Masseube'),(88,'Matarazzo'),(87,'Mauri'),(306,'Menoyo'),(135,'Merengo'),(38,'Milka'),(56,'Milkaut'),(160,'Milkout'),(164,'Misky'),(186,'Mk organic'),(183,'Mogul extreme'),(30,'Molino canuelas'),(62,'Molto'),(133,'Mondelez argentina s a'),(344,'Mondelēz international'),(304,'Moneda'),(355,'Monster'),(97,'Montecarlo'),(231,'Montesitos'),(121,'Morixe'),(23,'Natura'),(91,'Naturalmente granix'),(79,'Nature valley'),(18,'Nescafe'),(172,'Nesquik'),(11,'Nestle'),(290,'News'),(167,'Nobleza gaucha'),(60,'Noel'),(207,'Nosugar'),(278,'Ns'),(201,'Nutella'),(232,'Nutra sem'),(171,'Nutree'),(358,'Oblita'),(102,'Oddis nuts'),(77,'Okebon'),(317,'Old pulteney'),(288,'Onza de oro'),(31,'Oreo'),(70,'Orieta'),(179,'Oro lee s'),(134,'Palmesano'),(279,'Palmolive'),(161,'Pantene'),(321,'Par nor'),(144,'Pastarroz'),(346,'Patagonia berries'),(50,'Paty'),(143,'Pepsi'),(156,'Pergola'),(127,'Pindapoy'),(331,'Pipore'),(339,'Plusbelle'),(351,'Pond s'),(104,'Powerade'),(341,'Pozo'),(299,'Produit thailandais'),(58,'Pureza'),(272,'Pyros'),(20,'Quaker'),(307,'Quilmes'),(296,'Ravana'),(333,'Real'),(199,'Red spoon'),(281,'Regidiet'),(65,'Rexona'),(125,'Ricediex'),(26,'Riera'),(325,'Roland'),(81,'Rosamonte'),(136,'Royal'),(109,'S p'),(95,'Sabores de lo natural'),(342,'San bernardo'),(219,'San cor'),(235,'San ignacio'),(181,'San telmo'),(6,'Sancor'),(170,'Savencia'),(151,'Savora'),(268,'Schatzi'),(42,'Schweppes'),(155,'Semix'),(15,'Ser'),(189,'Serenisima'),(221,'Seven up'),(163,'Shimy'),(49,'Silk'),(335,'Sin culpa'),(245,'Smams'),(105,'Sol pampeano'),(142,'Solo'),(198,'Soriano'),(329,'Speed unlimited'),(80,'Sprite'),(252,'St wendeler'),(301,'Suave'),(208,'Sucaryl'),(141,'Tafi'),(34,'Tang'),(8,'Taragui'),(74,'Terrabusi'),(211,'Tholem'),(180,'Tia maruca'),(222,'Tiqle'),(360,'Tofi'),(270,'Tommy hilfiger'),(255,'Tonadita'),(139,'Tostitos'),(124,'Tratenfu'),(212,'Traviata'),(29,'Tregar'),(100,'Trever'),(205,'Trini'),(214,'Trio'),(162,'Tutti'),(176,'Ultratech'),(153,'Union'),(273,'Valcalin'),(266,'Valente'),(200,'Vauquita'),(57,'Vegetalex'),(257,'Veggieland'),(226,'Verdeflor'),(76,'Veronica'),(43,'Villa del sur'),(147,'Villa san remo'),(184,'Villavicencio'),(303,'Ville vicencio'),(334,'Virgen'),(108,'Wakas'),(246,'Wav'),(316,'Weekly'),(206,'Whey'),(140,'Wilde'),(326,'Yancanelo'),(66,'Yin yang'),(247,'Ying yang'),(178,'Yo pro'),(63,'Yogs'),(202,'Yogurisimo'),(52,'Zafran'),(149,'Zucoa');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('bedezign\\yii2\\audit\\migrations\\m150626_000001_create_audit_entry',1634569281),('bedezign\\yii2\\audit\\migrations\\m150626_000002_create_audit_data',1634569286),('bedezign\\yii2\\audit\\migrations\\m150626_000003_create_audit_error',1634569289),('bedezign\\yii2\\audit\\migrations\\m150626_000004_create_audit_trail',1634569294),('bedezign\\yii2\\audit\\migrations\\m150626_000005_create_audit_javascript',1634569296),('bedezign\\yii2\\audit\\migrations\\m150626_000006_create_audit_mail',1634569299),('bedezign\\yii2\\audit\\migrations\\m150714_000001_alter_audit_data',1634569300),('bedezign\\yii2\\audit\\migrations\\m170126_000001_alter_audit_mail',1634569302),('m000000_000000_base',1634569278),('m140209_132017_init',1634569461),('m140403_174025_create_account_table',1634569465),('m140504_113157_update_tables',1634569468),('m140504_130429_create_token_table',1634569473),('m140506_102106_rbac_init',1634569559),('m140830_171933_fix_ip_field',1634569475),('m140830_172703_change_account_table_name',1634569476),('m141222_110026_update_ip_field',1634569479),('m141222_135246_alter_username_length',1634569479),('m150614_103145_update_social_account_table',1634569481),('m150623_212711_fix_username_notnull',1634569481),('m151218_234654_add_timezone_to_profile',1634569481),('m160929_103127_add_last_login_at_to_user_table',1634569482),('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1634569559),('m180523_151638_rbac_updates_indexes_without_prefix',1634569561),('m200409_110543_rbac_update_mssql_trigger',1634569561),('m200603_152906_marca',1634569304),('m200603_153857_categoria',1634569305),('m200609_165710_comprobante',1634569308),('m200611_151142_inventario',1634569311),('m200611_163245_inventario',1634569312),('m200616_172923_marca',1634569312),('m200619_150926_comprobante',1634569312),('m200626_133414_egreso',1634569312),('m200715_123534_tipoEgreso',1634569313),('m200715_124531_fk_egreso_tipoegresoid',1634569317),('m200717_123548_egreso_fecha_inicial',1634569317),('m200717_131116_egreso_id_autoincrement',1634569326),('m200724_130248_producto_activo',1634569326),('m200731_152727_egreso_suscrito',1634569327);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `unidad_valor` varchar(4) DEFAULT NULL,
  `unidad_medidaid` int(11) NOT NULL,
  `marcaid` int(11) NOT NULL,
  `categoriaid` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `fk_producto_unidad_medida_idx` (`unidad_medidaid`),
  KEY `fk_producto_marca1_idx` (`marcaid`),
  KEY `fk_producto_categoria1_idx` (`categoriaid`),
  CONSTRAINT `fk_producto_categoria1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_marca1` FOREIGN KEY (`marcaid`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_unidad_medida` FOREIGN KEY (`unidad_medidaid`) REFERENCES `unidad_medida` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cuit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_account`
--

LOCK TABLES `social_account` WRITE;
/*!40000 ALTER TABLE `social_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_egreso`
--

DROP TABLE IF EXISTS `tipo_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_egreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_egreso`
--

LOCK TABLES `tipo_egreso` WRITE;
/*!40000 ALTER TABLE `tipo_egreso` DISABLE KEYS */;
INSERT INTO `tipo_egreso` VALUES (1,'Modulo'),(2,'Bulto');
/*!40000 ALTER TABLE `tipo_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_medida`
--

DROP TABLE IF EXISTS `unidad_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_medida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `simbolo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_medida`
--

LOCK TABLES `unidad_medida` WRITE;
/*!40000 ALTER TABLE `unidad_medida` DISABLE KEYS */;
INSERT INTO `unidad_medida` VALUES (1,'Kilogramo','kg'),(2,'Gramo','gr'),(3,'Litro','lt'),(4,'Mililitro','ml'),(5,'Unidad','un'),(6,'Centimetros cúbicos','cm3');
/*!40000 ALTER TABLE `unidad_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@desarrollohumano.gov.ar','$2y$10$z9tntOU5jwOoQXhf93p6Wu6TMaJPX3H9OOrr9NQoUy7VJBPg6QFJ6','kfWLAPwd8ahvdtwAfzyR5rVQ8pF1dOr_',1634570048,NULL,NULL,'172.21.0.4',1634570049,1634643228,0,1634643228);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-19 11:46:34
