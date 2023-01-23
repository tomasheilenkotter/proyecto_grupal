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
-- Table structure for table `peluquerias`
--

DROP TABLE IF EXISTS `peluquerias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peluquerias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_peluqueria` varchar(255) NOT NULL,
  `direccion_peluqueria` varchar(255) NOT NULL,
  `pagina_peluqueria` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peluquerias`
--

LOCK TABLES `peluquerias` WRITE;
/*!40000 ALTER TABLE `peluquerias` DISABLE KEYS */;
INSERT INTO `peluquerias` VALUES (1,'Club de Perros y Gatos Los Leones','Los Leones 220','https://clubdeperrosygatos.negocio.site/'),(2,'Peluquería Canina y Felina Providencia Mis Salchichas','Antonio Varas 1414 95','https://www.facebook.com/peluqueriacaninaprovidenciamissalchichas'),(3,'Mundo Peludo Spa','Av. Providencia 2594, local 409','https://linktr.ee/mundopeludoesteticacl'),(4,'La Pandillita','Tobalaba 1511','https://www.instagram.com/lapandillitacl/?hl=es'),(5,'Q\' Mascotas Chile','Av. Providencia 1685','https://qmascotas.cl/'),(6,'Mon Petit\'s - Estetica Canina y Felina','IV Centenario 455','https://www.instagram.com/peluqueriamonpetits/?hl=es'),(7,'Veterinaria y Peluquería - PetsMann','Coronel Pereira 180','https://petsmann.cl/'),(8,'My Can Peluqueria y Tienda De Mascotas','Av. Las Condes 9236','https://www.instagram.com/mycan.cl/?igshid=YmMyMTA2M2Y%3D'),(9,'Paws Pet Store','Av. Apoquindo 7122','https://www.pawspetstore.cl/?utm_source=maps&utm_medium=organic&utm_campaign=seo-local'),(10,'Milu Pet','Pdte. Riesco 3198, local B','https://milupet.cl/'),(11,'La Pet-Luqueria','Príncipe de Gales 7434','http://www.lapetluqueria.cl/'),(12,'Tree Pet Store','Av. Alcalde Fernando Castillo Velasco 7059','https://www.treepet.cl/'),(13,'REPUBLICA ANIMAL','Av. Echeñique 6401','http://www.republicaanimal.cl/'),(14,'Clinica Veterinaria MedVet','Av. Ossa 1778','https://veterinariamedvet.cl/'),(15,'PetBlanco','Av. Alcalde Fernando Castillo Velasco 8751, Local 31','https://petblanco.cl/'),(16,'MatildeBoutique','Av. Pdte. Kennedy 8324','https://matildeboutique.cl/sample-page/'),(17,'Doggys Style','Av Vitacura 6724 local, A04','https://www.instagram.com/doggysstylepeluqueriacanina/?utm_source=ig_profile_share&igshid=1gn6ikerm6n0d'),(18,'PATITAS Y COLITAS Pet & Spa','Candelaria Goyenechea 3820, local 164','https://patitas-y-colitas-pet-spa.negocio.site/?utm_source=gmb&utm_medium=referral'),(19,'Arf','Av. Vitacura 7773','https://arf.cl/peluqueria/'),(20,'Pet Happy','Av. Vitacura 4607','https://www.pethappy.cl/');
/*!40000 ALTER TABLE `peluquerias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 23:20:24
