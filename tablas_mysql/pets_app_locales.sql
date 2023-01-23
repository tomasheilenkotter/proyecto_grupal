CREATE DATABASE  IF NOT EXISTS `pets_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pets_app`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: pets_app
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_local` varchar(255) NOT NULL,
  `direccion_local` varchar(255) NOT NULL,
  `pagina_local` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
INSERT INTO `locales` VALUES (1,'Peces de Ciudad Bar Restaurant','Condell 1333','https://www.instagram.com/pecesdeciudad_bar/?hl=es'),(2,'La Popular Infante','José Manuel Infante 1232','https://www.lapopularpizzaypan.cl/'),(3,'Lusitano','Condell 1414','https://www.lusitano.cl/'),(4,'Galpón Italia','Av. Italia 1175','https://bargalpon.cl/'),(5,'Tio Tomate','Av. Italia 975','https://tio-tomate.negocio.site/'),(6,'Jardín Mallinkdrot','Av. Las Condes 8392','https://www.jardinmallinkrodt.cl/'),(7,'Mandarin Oriental','Av. Kennedy 4601','https://www.mandarinoriental.com/en/'),(8,'Soler','Los Militares 5934','https://pedidos.soler.cl/'),(9,'Puerto del Alto','Av. Kennedy 9001','https://www.puertodelalto.cl/'),(10,'Bar La Virgen','Presidente Riesco 5330','https://barlavirgen.cl/sucursales/las-condes/'),(11,'La Copa Feliz','Av. Echeñique 6315','https://lacopafeliz.cl/'),(12,'Café Patio La Esquina','Simón Bolívar 6597','https://www.instagram.com/patiolaesquina/?hl=es-la'),(13,'La Fuente Reina','Av. Echeñique 8540','https://www.lafuentereina.cl/'),(14,'Chevere y Bakan','Carlos Ossandon 1635','https://www.chevereybakan.cl/'),(15,'El Duo','Av. Larrain 6367','https://elduorestaurant.cl/'),(16,'Caoba','Alonso de Córdova 4156','https://caobabar.cl/'),(17,'Arca','Nueva Costanera 3986','https://arcabar.cl/'),(18,'LagerHaus Vitacura','Av. Vitacura 3285','https://www.lagerhaus.cl/vitacura'),(19,'Mazaccone','Gerónimo de Alderete 1603','https://www.instagram.com/mazaccone/?hl=es'),(20,'Romaria','Vitacura 3396, Casa 9','https://www.romaria.cl/');
/*!40000 ALTER TABLE `locales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 23:20:25
