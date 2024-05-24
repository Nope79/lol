-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cc
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `idCarrera` int NOT NULL AUTO_INCREMENT,
  `carrera` varchar(15) NOT NULL,
  `clave` varchar(1) NOT NULL,
  PRIMARY KEY (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,'SistemasComp','1'),(2,'SistemasAut','2'),(3,'SistemasElec','3'),(4,'GestionEmp','4'),(5,'Gastronomia','5'),(6,'Ambiental','6'),(7,'Industrial','7'),(8,'Semiconductores','8');
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes` (
  `idDocente` int NOT NULL AUTO_INCREMENT,
  `clave` int NOT NULL,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`idDocente`),
  UNIQUE KEY `clave` (`clave`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,9831,'Nancy Carolina Quintana'),(2,3784,'Luis German Gutierrez'),(3,4983,'Maria Trinidad Pimente Villegas'),(4,7777,'German Guzman'),(5,5218,'Fernando Jose Martinez'),(6,6653,'Evaristo Lopez Guerrero'),(7,8392,'Victor Ayala Ramirez'),(8,1234,'Juan Manuel Lopez Almanza'),(9,4321,'Cesar Isaac Quintino Aguilera');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestasoftware`
--

DROP TABLE IF EXISTS `encuestasoftware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuestasoftware` (
  `id` int NOT NULL AUTO_INCREMENT,
  `control` varchar(9) NOT NULL,
  `software` varchar(20) NOT NULL,
  `dia` int NOT NULL,
  `mes` varchar(20) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestasoftware`
--

LOCK TABLES `encuestasoftware` WRITE;
/*!40000 ALTER TABLE `encuestasoftware` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuestasoftware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `idMateria` int NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `idCarrera` int NOT NULL,
  PRIMARY KEY (`idMateria`),
  KEY `fk_materias_carreras1_idx` (`idCarrera`),
  KEY `carrera` (`nombre`),
  CONSTRAINT `fk_materias_carreras1` FOREIGN KEY (`idCarrera`) REFERENCES `carreras` (`idCarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Logica de Programacion',1),(2,'Fundamentos de Programacion',1),(3,'Programacion Orientada a Objetos',1),(4,'Estructura de Datos',1),(5,'Sistemas Operativos',1),(6,'Topicos Avanzados de Programacion',1),(7,'Lenguajes y Automatas',1),(8,'Fundamentos de Bases de Datos',1),(9,'Taller de Sistemas Operativos',1),(10,'Mecanica de Fluidos',2),(11,'Motores de combustion interna',2),(12,'Fundamentos de dibujo',2),(13,'Mecanica de materiales',2),(14,'Gestion del capital humano',4),(15,'Mercadotecnia',4),(16,'Gestion estrategica',4),(17,'Estadistica Inferencial I',4),(18,'Diodos y transmisores',3),(19,'Desarrollo digital con VHDL',3),(20,'Microcontroladores',3),(21,'Tecnologias de automatizacion',3),(22,'Nutricion y dietetica',5),(23,'Panaderia I',5),(24,'Cocteleria',5),(25,'Fisica en gastronomia',5),(26,'Dibujo asistido por computadora',6),(27,'Fisicoquimica',6),(28,'Microbiologia',6),(29,'Diseño de experimentos ambientales',6),(30,'Control estadistico de calidad',7),(31,'Ergonomia',7),(32,'Estudio del trabajo I',7),(33,'Gestion de costos',7),(34,'Diodos y Transistores',8),(35,'Electromagnetismo',8),(36,'Comunicaciones digitales',8),(37,'Teoria electromagnetica',8);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `idRegistro` int NOT NULL AUTO_INCREMENT,
  `control` varchar(9) NOT NULL,
  `year` int NOT NULL,
  `mes` varchar(10) NOT NULL,
  `dia` int NOT NULL,
  `entrada` time NOT NULL,
  `salida` time NOT NULL,
  `duracion` time NOT NULL,
  `maquina` int NOT NULL,
  PRIMARY KEY (`idRegistro`),
  KEY `control` (`control`,`year`,`mes`,`dia`,`entrada`,`salida`,`duracion`),
  KEY `maquina` (`maquina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resgistros_at`
--

DROP TABLE IF EXISTS `resgistros_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resgistros_at` (
  `idRegistro` int NOT NULL AUTO_INCREMENT,
  `aula` varchar(3) NOT NULL,
  `alumnos` int NOT NULL,
  `comentario` varchar(200) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `year` int NOT NULL,
  `mes` int NOT NULL,
  `dia` int NOT NULL,
  `idCarrera` int NOT NULL,
  `idDocente` int NOT NULL,
  `idMateria` int NOT NULL,
  PRIMARY KEY (`idRegistro`),
  KEY `docente` (`aula`),
  KEY `registro` (`fecha_registro`),
  KEY `year` (`year`,`mes`,`dia`),
  KEY `fk_aulas_carreras_idx` (`idCarrera`),
  KEY `fk_aulas_docentes1_idx` (`idDocente`),
  KEY `fk_aulas_materias1_idx` (`idMateria`),
  CONSTRAINT `fk_aulas_carreras` FOREIGN KEY (`idCarrera`) REFERENCES `carreras` (`idCarrera`),
  CONSTRAINT `fk_aulas_docentes1` FOREIGN KEY (`idDocente`) REFERENCES `docentes` (`idDocente`),
  CONSTRAINT `fk_aulas_materias1` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resgistros_at`
--

LOCK TABLES `resgistros_at` WRITE;
/*!40000 ALTER TABLE `resgistros_at` DISABLE KEYS */;
/*!40000 ALTER TABLE `resgistros_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software` (
  `idSoftware` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idSoftware`),
  UNIQUE KEY `idSoftware_UNIQUE` (`idSoftware`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
INSERT INTO `software` VALUES (1,'Mysql'),(2,'Codeblocks'),(3,'Chrome'),(4,'Visual Studio Code'),(5,'Word'),(6,'Raptor'),(7,'DevC++'),(8,'Netbeans'),(9,'AndroidStudio'),(10,'JFlap'),(11,'Power Point'),(12,'Virtual Box');
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uso-software`
--

DROP TABLE IF EXISTS `uso-software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uso-software` (
  `idSoftware` int NOT NULL,
  `idRegistro` int NOT NULL,
  PRIMARY KEY (`idSoftware`,`idRegistro`),
  KEY `fk_software_has_aulas_aulas1_idx` (`idRegistro`),
  KEY `fk_software_has_aulas_software1_idx` (`idSoftware`),
  CONSTRAINT `fk_software_has_aulas_aulas1` FOREIGN KEY (`idRegistro`) REFERENCES `resgistros_at` (`idRegistro`),
  CONSTRAINT `fk_software_has_aulas_software1` FOREIGN KEY (`idSoftware`) REFERENCES `software` (`idSoftware`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uso-software`
--

LOCK TABLES `uso-software` WRITE;
/*!40000 ALTER TABLE `uso-software` DISABLE KEYS */;
/*!40000 ALTER TABLE `uso-software` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 17:51:27
