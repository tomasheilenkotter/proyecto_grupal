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
-- Table structure for table `clinicas`
--

DROP TABLE IF EXISTS `clinicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_clinica` varchar(255) NOT NULL,
  `direccion_clinica` varchar(255) NOT NULL,
  `pagina_clinica` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinicas`
--

LOCK TABLES `clinicas` WRITE;
/*!40000 ALTER TABLE `clinicas` DISABLE KEYS */;
INSERT INTO `clinicas` VALUES (1,'Agrupet Clínica Veterinaria','Simon Bolivar 2440','https://www.agrupetclinica.cl/agruplan/?gclid=Cj0KCQiAtbqdBhDvARIsAGYnXBOBQFwQTZWTmeFMwUsyrWMCfb3DmfLIaZFA3yLrx2qOhtAuJYmmWaUaArhrEALw_wcB'),(2,'Clínica Veterinaria San Cristóbal','Eliodoro Yañez 2274','https://www.veterinariasancristobal.cl/online/'),(3,'Veterinaria Tus Mascotas','Av. Francisco Bilbao 2049','https://www.tusmascotas.cl/'),(4,'Clínica Veterinaria NerVet','Alferez Real 1464','https://www.nervet.cl/'),(5,'Clínica Veterinaria Guthi Vet','Jaime Guzmán Errázuriz 3040','https://www.guthivet.cl/'),(6,'Veterinaria Municipal Las Condes','Nueva Bilbao 12600','https://www.lascondes.cl/servicios/mascotas/servicios.html'),(7,'Clínica Veterinaria Pasteur','Tomás Moro 710','https://www.veterinariapasteur.cl/'),(8,'Clínica Veterinaria S.O.S Animal','Pdte. Riesco 3058','https://veterinariasosanimal.cl/'),(9,'Veterinaria PetsMann','Coronel Pereira 180','https://petsmann.cl/'),(10,'Integravet','Latadia 5017','https://integravet.cl/'),(11,'Clínica Veterinaria La Reina','Valladolid 26','https://www.cvlareina.cl/'),(12,'Dr Chilet Veterinario','Echeñique 6785','https://www.drchilet.cl/'),(13,'Republica Animal','Echeñique 6401','http://www.republicaanimal.cl/'),(14,'Clínica Veterinaria Alemana','Larraín 6666','https://www.veterinaria.cl/'),(15,'Clínica Veterinaria Cafati & Aguilar','Francisco Bilbao 6261','https://clinica.veterinariacafati.cl/clinicaveterinariafull'),(16,'Pet Happy Casa Vitacura','Vitacura 9015','https://www.pethappy.cl/'),(17,'Clínica Veterinaria Nueva Costanera','Nueva Costanera 3110','https://www.veterinarianuevacostanera.cl/'),(18,'Centro Veterinario Tabancura','Pje. La Aurora 1648','http://www.cvtabancura.cl/'),(19,'Arf','Vitacura 7773','https://arf.cl/'),(20,'Clínica Veterinaria Dra Vergara','Tabancura 1714','https://clinica-veterinaria-dra-vergara.negocio.site/?utm_source=gmb&utm_medium=referral');
/*!40000 ALTER TABLE `clinicas` ENABLE KEYS */;
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
