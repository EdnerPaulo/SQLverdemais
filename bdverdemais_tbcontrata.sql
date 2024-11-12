-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdverdemais
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tbcontrata`
--

DROP TABLE IF EXISTS `tbcontrata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcontrata` (
  `fk_Fornecedor__Pk_id_fornecedor` int DEFAULT NULL,
  `fk_Gerente_de_Unidade_Pk_id_gerente` int DEFAULT NULL,
  KEY `FK_tbContrata_1` (`fk_Fornecedor__Pk_id_fornecedor`),
  KEY `FK_tbContrata_2` (`fk_Gerente_de_Unidade_Pk_id_gerente`),
  CONSTRAINT `FK_tbContrata_1` FOREIGN KEY (`fk_Fornecedor__Pk_id_fornecedor`) REFERENCES `tbfornecedor` (`_Pk_id_fornecedor`) ON DELETE RESTRICT,
  CONSTRAINT `FK_tbContrata_2` FOREIGN KEY (`fk_Gerente_de_Unidade_Pk_id_gerente`) REFERENCES `tbgerente_de_unidade` (`Pk_id_gerente`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcontrata`
--

LOCK TABLES `tbcontrata` WRITE;
/*!40000 ALTER TABLE `tbcontrata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcontrata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 19:55:05
