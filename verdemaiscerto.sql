CREATE DATABASE  IF NOT EXISTS `bdverdemais` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdverdemais`;
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
-- Table structure for table `tbcliente`
--

DROP TABLE IF EXISTS `tbcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcliente` (
  `Pk_id_cliente` int NOT NULL,
  `Nome_Client` varchar(40) DEFAULT NULL,
  `email_Client` varchar(40) DEFAULT NULL,
  `historico_Client` varchar(40) DEFAULT NULL,
  `data_Client` date DEFAULT NULL,
  `telefone_Client` varchar(40) DEFAULT NULL,
  `endereco_Client` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Pk_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcliente`
--

LOCK TABLES `tbcliente` WRITE;
/*!40000 ALTER TABLE `tbcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcompra`
--

DROP TABLE IF EXISTS `tbcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcompra` (
  `fk_Cliente_Pk_id_cliente` int DEFAULT NULL,
  `fk_Produto_PK_id_produto` int DEFAULT NULL,
  KEY `FK_tbCompra_1` (`fk_Cliente_Pk_id_cliente`),
  KEY `FK_tbCompra_2` (`fk_Produto_PK_id_produto`),
  CONSTRAINT `FK_tbCompra_1` FOREIGN KEY (`fk_Cliente_Pk_id_cliente`) REFERENCES `tbcliente` (`Pk_id_cliente`) ON DELETE RESTRICT,
  CONSTRAINT `FK_tbCompra_2` FOREIGN KEY (`fk_Produto_PK_id_produto`) REFERENCES `tbproduto` (`PK_id_produto`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcompra`
--

LOCK TABLES `tbcompra` WRITE;
/*!40000 ALTER TABLE `tbcompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcompra` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tbcoordena`
--

DROP TABLE IF EXISTS `tbcoordena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcoordena` (
  `fk_Gerente_de_Unidade_Pk_id_gerente` int DEFAULT NULL,
  `fk_Funcionario_Pk_id_funcionario` int DEFAULT NULL,
  KEY `FK_tbCoordena_1` (`fk_Gerente_de_Unidade_Pk_id_gerente`),
  KEY `FK_tbCoordena_2` (`fk_Funcionario_Pk_id_funcionario`),
  CONSTRAINT `FK_tbCoordena_1` FOREIGN KEY (`fk_Gerente_de_Unidade_Pk_id_gerente`) REFERENCES `tbgerente_de_unidade` (`Pk_id_gerente`) ON DELETE RESTRICT,
  CONSTRAINT `FK_tbCoordena_2` FOREIGN KEY (`fk_Funcionario_Pk_id_funcionario`) REFERENCES `tbfuncionario` (`Pk_CPF`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcoordena`
--

LOCK TABLES `tbcoordena` WRITE;
/*!40000 ALTER TABLE `tbcoordena` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcoordena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbestoca`
--

DROP TABLE IF EXISTS `tbestoca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbestoca` (
  `fk_Produto_PK_id_produto` int DEFAULT NULL,
  `fk_Estoque_PK_id_produto` int DEFAULT NULL,
  KEY `FK_tbEstoca_1` (`fk_Produto_PK_id_produto`),
  KEY `FK_tbEstoca_2` (`fk_Estoque_PK_id_produto`),
  CONSTRAINT `FK_tbEstoca_1` FOREIGN KEY (`fk_Produto_PK_id_produto`) REFERENCES `tbproduto` (`PK_id_produto`) ON DELETE RESTRICT,
  CONSTRAINT `FK_tbEstoca_2` FOREIGN KEY (`fk_Estoque_PK_id_produto`) REFERENCES `tbestoque` (`PK_id_produto`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbestoca`
--

LOCK TABLES `tbestoca` WRITE;
/*!40000 ALTER TABLE `tbestoca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbestoca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbestoque`
--

DROP TABLE IF EXISTS `tbestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbestoque` (
  `PK_id_produto` int NOT NULL,
  `Nome_produto_Estoq` varchar(40) DEFAULT NULL,
  `quantidade_Estoq` int DEFAULT NULL,
  `localizacao_Estoq` varchar(40) DEFAULT NULL,
  `data_Estoq` date DEFAULT NULL,
  PRIMARY KEY (`PK_id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbestoque`
--

LOCK TABLES `tbestoque` WRITE;
/*!40000 ALTER TABLE `tbestoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbfornece`
--

DROP TABLE IF EXISTS `tbfornece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbfornece` (
  `fk_Produto_PK_id_produto` int DEFAULT NULL,
  `fk_Fornecedor__Pk_id_fornecedor` int DEFAULT NULL,
  KEY `FK_tbFornece_1` (`fk_Produto_PK_id_produto`),
  KEY `FK_tbFornece_2` (`fk_Fornecedor__Pk_id_fornecedor`),
  CONSTRAINT `FK_tbFornece_1` FOREIGN KEY (`fk_Produto_PK_id_produto`) REFERENCES `tbproduto` (`PK_id_produto`) ON DELETE RESTRICT,
  CONSTRAINT `FK_tbFornece_2` FOREIGN KEY (`fk_Fornecedor__Pk_id_fornecedor`) REFERENCES `tbfornecedor` (`_Pk_id_fornecedor`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbfornece`
--

LOCK TABLES `tbfornece` WRITE;
/*!40000 ALTER TABLE `tbfornece` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfornece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbfornecedor`
--

DROP TABLE IF EXISTS `tbfornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbfornecedor` (
  `_Pk_id_fornecedor` int NOT NULL,
  `Nome_Forn` varchar(40) DEFAULT NULL,
  `telefone_Forn` varchar(40) DEFAULT NULL,
  `email_Forn` varchar(40) DEFAULT NULL,
  `endereco_Forn` varchar(40) DEFAULT NULL,
  `Cnpj_cpf_Forn` varchar(40) DEFAULT NULL,
  `categoria_Forn` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`_Pk_id_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbfornecedor`
--

LOCK TABLES `tbfornecedor` WRITE;
/*!40000 ALTER TABLE `tbfornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbfuncionario`
--

DROP TABLE IF EXISTS `tbfuncionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbfuncionario` (
  `Pk_CPF` int NOT NULL,
  `Nome_Func` varchar(40) DEFAULT NULL,
  `cargo_Func` varchar(40) DEFAULT NULL,
  `data_nasc_Func` date DEFAULT NULL,
  `email_Func` varchar(40) DEFAULT NULL,
  `telefone_Func` varchar(40) DEFAULT NULL,
  `contratacao_Func` date DEFAULT NULL,
  `endereco_Func` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Pk_CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbfuncionario`
--

LOCK TABLES `tbfuncionario` WRITE;
/*!40000 ALTER TABLE `tbfuncionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbfuncionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbgerencia`
--

DROP TABLE IF EXISTS `tbgerencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbgerencia` (
  `fk_Estoque_PK_id_produto` int DEFAULT NULL,
  `fk_Funcionario_Pk_id_funcionario` int DEFAULT NULL,
  KEY `FK_tbGerencia_1` (`fk_Estoque_PK_id_produto`),
  KEY `FK_tbGerencia_2` (`fk_Funcionario_Pk_id_funcionario`),
  CONSTRAINT `FK_tbGerencia_1` FOREIGN KEY (`fk_Estoque_PK_id_produto`) REFERENCES `tbestoque` (`PK_id_produto`) ON DELETE RESTRICT,
  CONSTRAINT `FK_tbGerencia_2` FOREIGN KEY (`fk_Funcionario_Pk_id_funcionario`) REFERENCES `tbfuncionario` (`Pk_CPF`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbgerencia`
--

LOCK TABLES `tbgerencia` WRITE;
/*!40000 ALTER TABLE `tbgerencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbgerencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbgerente_de_unidade`
--

DROP TABLE IF EXISTS `tbgerente_de_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbgerente_de_unidade` (
  `Pk_id_gerente` int NOT NULL,
  `Nome_Ger` varchar(40) DEFAULT NULL,
  `telefone_Ger` varchar(40) DEFAULT NULL,
  `email_Ger` varchar(40) DEFAULT NULL,
  `Setor_Ger` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Pk_id_gerente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbgerente_de_unidade`
--

LOCK TABLES `tbgerente_de_unidade` WRITE;
/*!40000 ALTER TABLE `tbgerente_de_unidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbgerente_de_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproduto`
--

DROP TABLE IF EXISTS `tbproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbproduto` (
  `PK_id_produto` int NOT NULL,
  `Nome_Prod` varchar(40) DEFAULT NULL,
  `Data_de_val_Prod` date DEFAULT NULL,
  `Preco_de_Compra_Prod` float DEFAULT NULL,
  `Quantidade_Prod` int DEFAULT NULL,
  PRIMARY KEY (`PK_id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproduto`
--

LOCK TABLES `tbproduto` WRITE;
/*!40000 ALTER TABLE `tbproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbsupervisiona`
--

DROP TABLE IF EXISTS `tbsupervisiona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbsupervisiona` (
  `fk_Estoque_PK_id_produto` int DEFAULT NULL,
  `fk_Gerente_de_Unidade_Pk_id_gerente` int DEFAULT NULL,
  KEY `FK_tbSupervisiona_1` (`fk_Estoque_PK_id_produto`),
  KEY `FK_tbSupervisiona_2` (`fk_Gerente_de_Unidade_Pk_id_gerente`),
  CONSTRAINT `FK_tbSupervisiona_1` FOREIGN KEY (`fk_Estoque_PK_id_produto`) REFERENCES `tbestoque` (`PK_id_produto`) ON DELETE RESTRICT,
  CONSTRAINT `FK_tbSupervisiona_2` FOREIGN KEY (`fk_Gerente_de_Unidade_Pk_id_gerente`) REFERENCES `tbgerente_de_unidade` (`Pk_id_gerente`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbsupervisiona`
--

LOCK TABLES `tbsupervisiona` WRITE;
/*!40000 ALTER TABLE `tbsupervisiona` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbsupervisiona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 20:20:23
