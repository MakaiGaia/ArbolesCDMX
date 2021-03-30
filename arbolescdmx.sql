-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: arbolescdmx
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `archivos`
--

DROP TABLE IF EXISTS `archivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archivos` (
  `idIdentificacion` int NOT NULL AUTO_INCREMENT,
  `idCliente` int NOT NULL,
  `ine` binary(1) NOT NULL,
  `domicilio` varchar(20) NOT NULL,
  PRIMARY KEY (`idIdentificacion`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivos`
--

LOCK TABLES `archivos` WRITE;
/*!40000 ALTER TABLE `archivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `archivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archprivados`
--

DROP TABLE IF EXISTS `archprivados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archprivados` (
  `idArchivo` int NOT NULL AUTO_INCREMENT,
  `id_folioPrivado` int NOT NULL,
  `archivo` binary(1) NOT NULL,
  PRIMARY KEY (`idArchivo`),
  KEY `id_folioPrivado` (`id_folioPrivado`),
  CONSTRAINT `archprivados_ibfk_1` FOREIGN KEY (`id_folioPrivado`) REFERENCES `solprivada` (`id_folioPriv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archprivados`
--

LOCK TABLES `archprivados` WRITE;
/*!40000 ALTER TABLE `archprivados` DISABLE KEYS */;
/*!40000 ALTER TABLE `archprivados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archpublicos`
--

DROP TABLE IF EXISTS `archpublicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archpublicos` (
  `idArchivo` int NOT NULL AUTO_INCREMENT,
  `id_folioPub` int NOT NULL,
  `idCliente` int NOT NULL,
  `foto` binary(1) NOT NULL,
  PRIMARY KEY (`idArchivo`),
  KEY `idCliente` (`idCliente`),
  KEY `id_folioPub` (`id_folioPub`),
  CONSTRAINT `archpublicos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `archpublicos_ibfk_2` FOREIGN KEY (`id_folioPub`) REFERENCES `solpublica` (`id_foliPub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archpublicos`
--

LOCK TABLES `archpublicos` WRITE;
/*!40000 ALTER TABLE `archpublicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `archpublicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `edad` int NOT NULL,
  `telCelular` int NOT NULL,
  `correo` varchar(30) NOT NULL,
  `identOficial` int NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_servPu` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `telCelular` int NOT NULL,
  `correo` varchar(30) NOT NULL,
  `puesto` varchar(30) NOT NULL,
  PRIMARY KEY (`id_servPu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos` (
  `idPermiso` int NOT NULL AUTO_INCREMENT,
  `id_folioPrivado` int NOT NULL,
  `idCliente` int NOT NULL,
  `permiso` binary(1) NOT NULL,
  `planos` binary(1) NOT NULL,
  `regManifestacion` binary(1) NOT NULL,
  PRIMARY KEY (`idPermiso`),
  KEY `id_folioPrivado` (`id_folioPrivado`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_folioPrivado`) REFERENCES `solprivada` (`id_folioPriv`),
  CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solprivada`
--

DROP TABLE IF EXISTS `solprivada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solprivada` (
  `id_folioPriv` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `dimensiones` varchar(20) NOT NULL,
  `fauna` varchar(50) NOT NULL,
  `referenciaPago` int NOT NULL,
  `foto` int NOT NULL,
  PRIMARY KEY (`id_folioPriv`),
  KEY `foto` (`foto`),
  CONSTRAINT `solprivada_ibfk_1` FOREIGN KEY (`foto`) REFERENCES `archprivados` (`idArchivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solprivada`
--

LOCK TABLES `solprivada` WRITE;
/*!40000 ALTER TABLE `solprivada` DISABLE KEYS */;
/*!40000 ALTER TABLE `solprivada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solpublica`
--

DROP TABLE IF EXISTS `solpublica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solpublica` (
  `id_foliPub` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `dimensiones` varchar(20) NOT NULL,
  `fauna` varchar(50) NOT NULL,
  `foto` int NOT NULL,
  PRIMARY KEY (`id_foliPub`),
  KEY `foto` (`foto`),
  CONSTRAINT `solpublica_ibfk_1` FOREIGN KEY (`foto`) REFERENCES `archpublicos` (`idArchivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solpublica`
--

LOCK TABLES `solpublica` WRITE;
/*!40000 ALTER TABLE `solpublica` DISABLE KEYS */;
/*!40000 ALTER TABLE `solpublica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tramiteprivado`
--

DROP TABLE IF EXISTS `tramiteprivado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tramiteprivado` (
  `idTramite` int NOT NULL AUTO_INCREMENT,
  `id_folioPr` int NOT NULL,
  `id_serviP` int NOT NULL,
  `idCliente` int NOT NULL,
  `autorizacion` varchar(20) NOT NULL,
  `estatus` varchar(20) NOT NULL,
  `prioridad` varchar(10) NOT NULL,
  PRIMARY KEY (`idTramite`),
  KEY `id_folioPr` (`id_folioPr`),
  KEY `id_serviP` (`id_serviP`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `tramiteprivado_ibfk_1` FOREIGN KEY (`id_folioPr`) REFERENCES `solprivada` (`id_folioPriv`),
  CONSTRAINT `tramiteprivado_ibfk_2` FOREIGN KEY (`id_serviP`) REFERENCES `empleado` (`id_servPu`),
  CONSTRAINT `tramiteprivado_ibfk_3` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramiteprivado`
--

LOCK TABLES `tramiteprivado` WRITE;
/*!40000 ALTER TABLE `tramiteprivado` DISABLE KEYS */;
/*!40000 ALTER TABLE `tramiteprivado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tramitepublico`
--

DROP TABLE IF EXISTS `tramitepublico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tramitepublico` (
  `idTramite` int NOT NULL AUTO_INCREMENT,
  `id_folioPu` int NOT NULL,
  `id_serviP` int NOT NULL,
  `idCliente` int NOT NULL,
  `autorizacion` varchar(20) NOT NULL,
  `estatus` varchar(20) NOT NULL,
  `prioridad` varchar(10) NOT NULL,
  PRIMARY KEY (`idTramite`),
  KEY `id_folioPu` (`id_folioPu`),
  KEY `id_serviP` (`id_serviP`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `tramitepublico_ibfk_1` FOREIGN KEY (`id_folioPu`) REFERENCES `solpublica` (`id_foliPub`),
  CONSTRAINT `tramitepublico_ibfk_2` FOREIGN KEY (`id_serviP`) REFERENCES `empleado` (`id_servPu`),
  CONSTRAINT `tramitepublico_ibfk_3` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramitepublico`
--

LOCK TABLES `tramitepublico` WRITE;
/*!40000 ALTER TABLE `tramitepublico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tramitepublico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 12:33:34
