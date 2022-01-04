-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: localhost    Database: registro
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `comunas`
--

DROP TABLE IF EXISTS `comunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunas`
--

LOCK TABLES `comunas` WRITE;
/*!40000 ALTER TABLE `comunas` DISABLE KEYS */;
INSERT INTO `comunas` VALUES (1,'Arica',1),(2,'Camarones',1),(3,'Putre',1),(4,'General Lagos',1),(5,'Iquique',1),(6,'Camiña',1),(7,'Colchane',1),(8,'Huara',1),(9,'Pica',1),(10,'Pozo Almonte',1),(11,'Alto Hospicio',1),(12,'Antofagasta',2),(13,'Mejillones',2),(14,'Sierra Gorda',2),(15,'Taltal',2),(16,'Calama',2),(17,'Ollagüe',2),(18,'San Pedro de Atacama',2),(19,'Tocopilla',2),(20,'Mar’a Elena',2),(21,'Copiapó',3),(22,'Caldera',3),(23,'Tierra Amarilla',3),(24,'Chañaral',3),(25,'Diego de Almagro',3),(26,'Vallenar',3),(27,'Alto del Carmen',3),(28,'Freirina',3),(29,'Huasco',3),(30,'La Serena',4),(31,'Coquimbo',4),(32,'Andacollo',4),(33,'La Higuera',4),(34,'Paiguano',4),(35,'Vicuña',4),(36,'Illapel',4),(37,'Canela',4),(38,'Los Vilos',4),(39,'Salamanca',4),(40,'Ovalle',4),(41,'Combarbalá',4),(42,'Monte Patria',4),(43,'Punitaqui',4),(44,'Río Hurtado',4),(45,'Valparaíso',5),(46,'Casablanca',5),(47,'Concón',5),(48,'Juan Fernández',5),(49,'Puchuncaví',5),(50,'Quilpué',5),(51,'Quintero',5),(52,'Villa Alemana',5),(53,'Viña del Mar',5),(54,'Isla de Pascua',5),(55,'Los Andes',5),(56,'Calle Larga',5),(57,'Rinconada',5),(58,'San Esteban',5),(59,'La Ligua',5),(60,'Cabildo',5),(61,'Papudo',5),(62,'Petorca',5),(63,'Zapallar',5),(64,'Quillota',5),(65,'Calera',5),(66,'Hijuelas',5),(67,'La Cruz',5),(68,'Limache',5),(69,'Nogales',5),(70,'Olmué',5),(71,'San Antonio',5),(72,'Algarrobo',5),(73,'Cartagena',5),(74,'El Quisco',5),(75,'El Tabo',5),(76,'Santo Domingo',5),(77,'San Felipe',5),(78,'Catemu',5),(79,'Llaillay',5),(80,'Panquehue',5),(81,'Putaendo',5),(82,'Santa María',5),(83,'Rancagua',6),(84,'Codegua',6),(85,'Coinco',6),(86,'Coltauco',6),(87,'Doñihue',6),(88,'Graneros',6),(89,'Las Cabras',6),(90,'Machal’',6),(91,'Malloa',6),(92,'Mostazal',6),(93,'Olivar',6),(94,'Peumo',6),(95,'Pichidegua',6),(96,'Quinta de Tilcoco',6),(97,'Rengo',6),(98,'Requínoa',6),(99,'San Vicente',6),(100,'Pichilemu',6),(101,'La Estrella',6),(102,'Litueche',6),(103,'Marchihue',6),(104,'Navidad',6),(105,'Paredones',6),(106,'San Fernando',6),(107,'Chépica',6),(108,'Chimbarongo',6),(109,'Lolol',6),(110,'Nancagua',6),(111,'Palmilla',6),(112,'Peralillo',6),(113,'Placilla',6),(114,'Pumanque',6),(115,'Santa Cruz',6),(116,'Talca',7),(117,'Constitución',7),(118,'Curepto',7),(119,'Empedrado',7),(120,'Maule',7),(121,'Pelarco',7),(122,'Pencahue',7),(123,'Río Claro',7),(124,'San Clemente',7),(125,'San Rafael',7),(126,'Cauquenes',7),(127,'Chanco',7),(128,'Pelluhue',7),(129,'Curicó',7),(130,'Hualañé',7),(131,'Licantén',7),(132,'Molina',7),(133,'Rauco',7),(134,'Romeral',7),(135,'Sagrada Familia',7),(136,'Teno',7),(137,'Vichuquén',7),(138,'Linares',7),(139,'Colbœn',7),(140,'Longaví',7),(141,'Parral',7),(142,'Retiro',7),(143,'San Javier',7),(144,'Villa Alegre',7),(145,'Yerbas Buenas',7),(146,'Concepción',8),(147,'Coronel',8),(148,'Chiguayante',8),(149,'Florida',8),(150,'Hualqui',8),(151,'Lota',8),(152,'Penco',8),(153,'San Pedro de la Paz',8),(154,'Santa Juana',8),(155,'Talcahuano',8),(156,'Tomé',8),(157,'Hualpén',8),(158,'Lebu',8),(159,'Arauco',8),(160,'Cañete',8),(161,'Contulmo',8),(162,'Curanilahue',8),(163,'LosÁlamos',8),(164,'Tirúa',8),(165,'Los Ángeles',8),(166,'Antuco',8),(167,'Cabrero',8),(168,'Laja',8),(169,'Mulchén',8),(170,'Nacimiento',8),(171,'Negrete',8),(172,'Quilaco',8),(173,'Quilleco',8),(174,'San Rosendo',8),(175,'Santa Bárbara',8),(176,'Tucapel',8),(177,'Yumbel',8),(178,'Alto Biobío',8),(179,'Chillán',8),(180,'Bulnes',8),(181,'Cobquecura',8),(182,'Coelemu',8),(183,'Coihueco',8),(184,'Chillán Viejo',8),(185,'El Carmen',8),(186,'Ninhue',8),(187,'Ñiquén',8),(188,'Pemuco',8),(189,'Pinto',8),(190,'Portezuelo',8),(191,'Quillón',8),(192,'Quirihue',8),(193,'Ránquil',8),(194,'San Carlos',8),(195,'San Fabián',8),(196,'San Ignacio',8),(197,'San Nicolás',8),(198,'Treguaco',8),(199,'Yungay',8),(200,'Temuco',9),(201,'Carahue',9),(202,'Cunco',9),(203,'Curarrehue',9),(204,'Freire',9),(205,'Galvarino',9),(206,'Gorbea',9),(207,'Lautaro',9),(208,'Loncoche',9),(209,'Melipeuco',9),(210,'Nueva Imperial',9),(211,'Padre Las Casas',9),(212,'Perquenco',9),(213,'Pitrufquén',9),(214,'Pucón',9),(215,'Saavedra',9),(216,'Teodoro Schmidt',9),(217,'Toltén',9),(218,'Vilcún',9),(219,'Villarrica',9),(220,'Cholchol',9),(221,'Angol',9),(222,'Collipulli',9),(223,'Curacautín',9),(224,'Ercilla',9),(225,'Lonquimay',9),(226,'Los Sauces',9),(227,'Lumaco',9),(228,'Purén',9),(229,'Renaico',9),(230,'Traiguén',9),(231,'Victoria',9),(232,'Valdivia',10),(233,'Corral',10),(234,'Futrono',10),(235,'La Unión',10),(236,'Lago Ranco',10),(237,'Lanco',10),(238,'Los Lagos',10),(239,'Máfil',10),(240,'Mariquina',10),(241,'Paillaco',10),(242,'Panguipulli',10),(243,'Río Bueno',10),(244,'Puerto Montt',10),(245,'Calbuco',10),(246,'Cochamó',10),(247,'Fresia',10),(248,'Frutillar',10),(249,'Los Muermos',10),(250,'Llanquihue',10),(251,'Maullín',10),(252,'Puerto Varas',10),(253,'Castro',10),(254,'Ancud',10),(255,'Chonchi',10),(256,'Curaco de Vélez',10),(257,'Dalcahue',10),(258,'Puqueldón',10),(259,'Queilén',10),(260,'Quellón',10),(261,'Quemchi',10),(262,'Quinchao',10),(263,'Osorno',10),(264,'Puerto Octay',10),(265,'Purranque',10),(266,'Puyehue',10),(267,'Río Negro',10),(268,'San Juan de la Costa',10),(269,'San Pablo',10),(270,'Chaitén',10),(271,'Futaleufú',10),(272,'Hualaihué',10),(273,'Palena',10),(274,'Coihaique',11),(275,'Lago Verde',11),(276,'Aisén',11),(277,'Cisnes',11),(278,'Guaitecas',11),(279,'Cochrane',11),(280,'O\'Higgins',11),(281,'Tortel',11),(282,'Chile Chico',11),(283,'Río Ibañez',11),(284,'Punta Arenas',12),(285,'Laguna Blanca',12),(286,'Río Verde',12),(287,'San Gregorio',12),(288,'Cabo de Hornos',12),(289,'Antártica',12),(290,'Porvenir',12),(291,'Primavera',12),(292,'Timaukel',12),(293,'Natales',12),(294,'Torres del Paine',12),(295,'Santiago',13),(296,'Cerrillos',13),(297,'Cerro Navia',13),(298,'Conchalí',13),(299,'El Bosque',13),(300,'Estación Central',13),(301,'Huechuraba',13),(302,'Independencia',13),(303,'La Cisterna',13),(304,'La Florida',13),(305,'La Granja',13),(306,'La Pintana',13),(307,'La Reina',13),(308,'Las Condes',13),(309,'Lo Barnechea',13),(310,'Lo Espejo',13),(311,'Lo Prado',13),(312,'Macul',13),(313,'Maipœ',13),(314,'Ñuñoa',13),(315,'Pedro Aguirre Cerda',13),(316,'Peñalolén',13),(317,'Providencia',13),(318,'Pudahuel',13),(319,'Quilicura',13),(320,'Quinta Normal',13),(321,'Recoleta',13),(322,'Renca',13),(323,'San Joaquín',13),(324,'San Miguel',13),(325,'San Ramón',13),(326,'Vitacura',13),(327,'Puente Alto',13),(328,'Pirque',13),(329,'San José de Maipo',13),(330,'Colina',13),(331,'Lampa',13),(332,'Tiltil',13),(333,'San Bernardo',13),(334,'Buin',13),(335,'Calera de Tango',13),(336,'Paine',13),(337,'Melipilla',13),(338,'Alhué',13),(339,'Curacaví',13),(340,'María Pinto',13),(341,'San Pedro',13),(342,'Talagante',13),(343,'El Monte',13),(344,'Isla de Maipo',13),(345,'Padre Hurtado',13),(346,'Peñaflor',13);
/*!40000 ALTER TABLE `comunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (1,'Tarapacá'),(2,'Antofagasta'),(3,'Atacama'),(4,'Coquimbo'),(5,'Valparaíso'),(6,'Libertador B. O\'Higgins'),(7,'Maule'),(8,'Bíobío'),(9,'La araucanía'),(10,'Los Lagos'),(11,'Aisén del Gral. C. Ibáñez del Campo'),(12,'Magallanes y de La Antártica Chilena'),(13,'Metropolitana de Santiago');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `DNI` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Nombres` varchar(120) DEFAULT NULL,
  `comuna_id` int DEFAULT NULL,
  `user` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `nivel` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1111-1','Jorge',319,'admin','admin',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'registro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 12:26:34
