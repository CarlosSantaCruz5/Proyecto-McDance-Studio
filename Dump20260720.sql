-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: mcdancestudiodb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DNI` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Telefono` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nivel` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UsuarioId` int NOT NULL,
  `CursoId` int DEFAULT NULL,
  `MontoPago` decimal(10,2) NOT NULL DEFAULT '0.00',
  `FechaVencimiento` date DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `Activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `IX_Alumnos_UsuarioId` (`UsuarioId`),
  KEY `FK_Alumnos_Cursos` (`CursoId`),
  CONSTRAINT `FK_Alumnos_Cursos` FOREIGN KEY (`CursoId`) REFERENCES `cursos` (`Id`) ON DELETE SET NULL,
  CONSTRAINT `FK_Alumnos_Usuarios_UsuarioId` FOREIGN KEY (`UsuarioId`) REFERENCES `usuarios` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (9,'PASTOR APONTE, LUZ ROSALY BEATRIZ','70091515','986986986','Intermedio',12,NULL,0.00,'2026-07-09','2026-06-09',1),(10,'RUIZ ACUÑA, JHERAMY ANTHONY','71285456','986548532','Inicial',13,NULL,0.00,'2026-07-09','2026-06-09',1),(11,'SALAZAR MAGALLAN, GIANMARCO ALEJANDRO','73251254','915245548','Básico',14,7,200.00,'2026-07-09','2026-06-09',1),(12,'GARCIA PEREZ, MARIA FERNANDA','71000001','981000001','Intermedio',15,7,200.00,'2026-07-15','2026-06-15',1),(13,'CHAVEZ ROJAS, LUIS ALBERTO','71000002','981000002','Intermedio',16,7,200.00,'2026-07-15','2026-06-15',1),(14,'QUISPE MAMANI, CARLOS ANDRES','71000003','981000003','Intermedio',17,7,200.00,'2026-07-16','2026-06-16',1),(15,'FLORES SALAZAR, ANDREA LIZETH','71000004','981000004','Intermedio',18,7,200.00,'2026-07-16','2026-06-16',1),(16,'RODRIGUEZ LOPEZ, JORGE LUIS','71000005','981000005','Intermedio',19,7,200.00,'2026-07-17','2026-06-17',1),(17,'SANCHEZ DIAZ, MATIAS DANIEL','72000001','982000001','Básico',20,31,280.00,'2026-07-15','2026-06-15',1),(18,'RAMIREZ TORRES, VALENTINA','72000002','982000002','Básico',21,31,280.00,'2026-07-15','2026-06-15',1),(19,'MENDOZA CASTRO, THIAGO ALONSO','72000003','982000003','Básico',22,31,280.00,'2026-07-16','2026-06-16',1),(20,'CRUZ VARGAS, CAMILA ISABEL','72000004','982000004','Básico',23,31,280.00,'2026-07-16','2026-06-16',1),(21,'HUAMAN RUIZ, SEBASTIAN OMAR','72000005','982000005','Básico',24,31,280.00,'2026-07-17','2026-06-17',1),(22,'CASTILLO ROMERO, LUCIA SOFIA','73000001','983000001','Básico',25,20,150.00,'2026-07-15','2026-06-15',1),(23,'FERNANDEZ SILVA, DIEGO MARTIN','73000002','983000002','Básico',26,20,150.00,'2026-07-15','2026-06-15',1),(24,'GUTIERREZ PAZ, VALERIA INES','73000003','983000003','Básico',27,20,150.00,'2026-07-16','2026-06-16',1),(25,'REYES CORDERO, JOAQUIN ALONSO','73000004','983000004','Básico',28,20,150.00,'2026-07-16','2026-06-16',1),(26,'MORALES VEGA, DANIELA PAOLA','73000005','983000005','Básico',29,20,150.00,'2026-07-17','2026-06-17',1),(27,'ESPINOZA RIOS, VICTOR MANUEL','74000001','984000001','Básico',30,21,150.00,'2026-07-15','2026-06-15',1),(28,'NAVARRO LEON, CLAUDIA PATRICIA','74000002','984000002','Básico',31,21,150.00,'2026-07-15','2026-06-15',1),(29,'ALVARADO GIL, MIGUEL ANGEL','74000003','984000003','Básico',32,21,150.00,'2026-07-16','2026-06-16',1),(30,'CAMPOS LUNA, SILVIA MARIELA','74000004','984000004','Básico',33,21,150.00,'2026-07-16','2026-06-16',1),(31,'HERRERA CRUZ, ARTURO DAVID','74000005','984000005','Básico',34,21,150.00,'2026-07-17','2026-06-17',1),(32,'VASQUEZ PINO, MICAELA FERNANDA','75000001','985000001','Inicial',35,12,150.00,'2026-07-15','2026-06-15',1),(33,'SALAS VERA, ANTONELLA LUZ','75000002','985000002','Inicial',36,12,150.00,'2026-07-15','2026-06-15',1),(34,'CORDOVA REYES, MIA ISABELLA','75000003','985000003','Inicial',37,12,150.00,'2026-07-16','2026-06-16',1),(35,'PAREDES SOTO, LUCIANA GABRIELA','75000004','985000004','Inicial',38,12,150.00,'2026-07-16','2026-06-16',1),(36,'ARCE TAPIA, EMMA VALENTINA','75000005','985000005','Inicial',39,12,150.00,'2026-07-17','2026-06-17',1),(37,'LOZANO DELGADO, RENZO FABIAN','76000001','986000001','Básico',40,29,200.00,'2026-07-15','2026-06-15',1),(38,'VILLANUEVA PAZ, KARINA EDITH','76000002','986000002','Básico',41,29,200.00,'2026-07-15','2026-06-15',1),(39,'GUERRERO RIOS, HECTOR MANUEL','76000003','986000003','Básico',42,29,200.00,'2026-07-16','2026-06-16',1),(40,'PINEDA SILVA, ROSA ANGELICA','76000004','986000004','Básico',43,29,200.00,'2026-07-16','2026-06-16',1),(41,'BARRIOS LUNA, JULIO CESAR','76000005','986000005','Básico',44,29,200.00,'2026-07-17','2026-06-17',1),(42,'ZAVALA CORTEZ, DANIEL ALBERTO','77000001','987000001','Básico',45,34,200.00,'2026-07-15','2026-06-15',1),(43,'CORONEL VEGA, LAURA VANESSA','77000002','987000002','Básico',46,34,200.00,'2026-07-15','2026-06-15',1),(44,'MERINO SOTO, CHRISTIAN DAVID','77000003','987000003','Básico',47,34,200.00,'2026-07-16','2026-06-16',1),(45,'VILCA RAMIREZ, NATALY ROSARIO','77000004','987000004','Básico',48,34,200.00,'2026-07-16','2026-06-16',1),(46,'AGUILAR PEÑA, RAUL EDUARDO','77000005','987000005','Básico',49,34,200.00,'2026-07-17','2026-06-17',1),(47,'ESTRADA LEON, FELIX ANTONIO','78000001','988000001','Básico',50,38,200.00,'2026-07-15','2026-06-15',1),(48,'CALDERON VERA, BRENDA MILAGROS','78000002','988000002','Básico',51,38,200.00,'2026-07-15','2026-06-15',1),(49,'ROJAS CASTRO, OSCAR RENE','78000003','988000003','Básico',52,38,200.00,'2026-07-16','2026-06-16',1),(50,'MONTES RIVERA, KAREN JULISSA','78000004','988000004','Básico',53,38,200.00,'2026-07-16','2026-06-16',1),(51,'BARRERA PEREZ, MANUEL ALEJANDRO','78000005','988000005','Básico',54,38,200.00,'2026-07-17','2026-06-17',1),(52,'SAAVEDRA GOMEZ, GIAN PIERRE','79000001','989000001','Básico',55,27,200.00,'2026-07-15','2026-06-15',1),(53,'CABRERA RUIZ, MELISSA JANETH','79000002','989000002','Básico',56,27,200.00,'2026-07-15','2026-06-15',1),(54,'LOPEZ CHAVEZ, ALDO FABRICIO','79000003','989000003','Básico',57,27,200.00,'2026-07-16','2026-06-16',1),(55,'DELGADO NAVARRO, YESENIA BEATRIZ','79000004','989000004','Básico',58,27,200.00,'2026-07-16','2026-06-16',1),(56,'MEJIA FLORES, RUBEN DARIO','79000005','989000005','Básico',59,27,200.00,'2026-07-17','2026-06-17',1),(57,'CARRASCO MENDEZ, RICARDO JAVIER','80000001','980000001','Básico',60,42,200.00,'2026-07-15','2026-06-15',1),(58,'SANTANA CRUZ, ESTEFANY DIANA','80000002','980000002','Básico',61,42,200.00,'2026-07-15','2026-06-15',1),(59,'PAZ CASTILLO, BRUNO ALESSANDRO','80000003','980000003','Básico',62,42,200.00,'2026-07-16','2026-06-16',1),(60,'VARGAS ROMERO, CINDY MILENKA','80000004','980000004','Básico',63,42,200.00,'2026-07-16','2026-06-16',1),(61,'SALAZAR VILCA, DENIS ALONSO','80000005','980000005','Básico',64,42,200.00,'2026-07-17','2026-06-17',1),(62,'MEDINA TORRES, ARIANA FIORELLA','75856966','986588323','Básico',65,20,150.00,'2026-08-15','2026-07-15',1),(63,'CHOMBO HEREDIA, JUAN LUIS','40332943','981212353','Básico',66,20,150.00,'2026-08-19','2026-07-19',1),(64,'MAGUIÑA SANCHEZ, NICOLAS ARTURO','77541354','943992700','Inicial',67,37,200.00,'2026-08-19','2026-07-19',1);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencias` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `AlumnoId` int NOT NULL,
  `CursoId` int NOT NULL,
  `Fecha` datetime NOT NULL,
  `Estado` varchar(20) NOT NULL,
  `MotivoModificacion` varchar(255) DEFAULT NULL,
  `FechaHoraRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AlumnoId` (`AlumnoId`),
  KEY `CursoId` (`CursoId`),
  CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`AlumnoId`) REFERENCES `alumnos` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `asistencias_ibfk_2` FOREIGN KEY (`CursoId`) REFERENCES `cursos` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` VALUES (1,9,6,'2026-06-13 00:00:00','Asistió',NULL,NULL),(3,11,7,'2026-06-11 00:00:00','Falta',NULL,NULL),(4,11,7,'2026-06-09 00:00:00','Tardanza',NULL,NULL),(5,11,7,'2026-06-04 00:00:00','Asistió',NULL,NULL),(6,11,7,'2026-06-02 00:00:00','Asistió',NULL,NULL),(7,11,7,'2026-06-16 00:00:00','Tardanza',NULL,NULL),(8,32,12,'2026-06-12 00:00:00','Asistió',NULL,NULL),(9,33,12,'2026-06-12 00:00:00','Tardanza',NULL,NULL),(10,34,12,'2026-06-12 00:00:00','Asistió',NULL,NULL),(11,35,12,'2026-06-12 00:00:00','Asistió',NULL,NULL),(12,36,12,'2026-06-12 00:00:00','Asistió',NULL,NULL),(18,32,12,'2026-06-26 00:00:00','Asistió',NULL,NULL),(19,33,12,'2026-06-26 00:00:00','Asistió',NULL,NULL),(20,34,12,'2026-06-26 00:00:00','Asistió',NULL,NULL),(21,35,12,'2026-06-26 00:00:00','Asistió',NULL,NULL),(22,36,12,'2026-06-26 00:00:00','Asistió',NULL,NULL),(23,11,7,'2026-06-25 00:00:00','Asistió',NULL,'2026-06-24 21:18:03'),(24,12,7,'2026-06-25 00:00:00','Asistió',NULL,'2026-06-24 21:18:03'),(25,13,7,'2026-06-25 00:00:00','Asistió',NULL,'2026-06-24 21:18:03'),(26,14,7,'2026-06-25 00:00:00','Asistió',NULL,'2026-06-24 21:18:03'),(27,15,7,'2026-06-25 00:00:00','Asistió',NULL,'2026-06-24 21:18:03'),(28,16,7,'2026-06-25 00:00:00','Asistió',NULL,'2026-06-24 21:18:03'),(29,11,7,'2026-07-07 00:00:00','Tardanza',NULL,NULL),(30,12,7,'2026-07-07 00:00:00','Asistió',NULL,NULL),(31,13,7,'2026-07-07 00:00:00','Asistió',NULL,NULL),(32,14,7,'2026-07-07 00:00:00','Asistió',NULL,NULL),(33,15,7,'2026-07-07 00:00:00','Asistió',NULL,NULL),(34,16,7,'2026-07-07 00:00:00','Asistió',NULL,NULL),(35,22,20,'2026-07-18 00:00:00','Asistió',NULL,NULL),(36,23,20,'2026-07-18 00:00:00','Asistió',NULL,NULL),(37,24,20,'2026-07-18 00:00:00','Asistió',NULL,NULL),(38,25,20,'2026-07-18 00:00:00','Asistió',NULL,NULL),(39,26,20,'2026-07-18 00:00:00','Asistió',NULL,NULL),(40,62,20,'2026-07-18 00:00:00','Asistió',NULL,NULL),(41,52,27,'2026-07-13 00:00:00','Tardanza',NULL,NULL),(42,53,27,'2026-07-13 00:00:00','Asistió',NULL,NULL),(43,54,27,'2026-07-13 00:00:00','Asistió',NULL,NULL),(44,55,27,'2026-07-13 00:00:00','Asistió',NULL,NULL),(45,56,27,'2026-07-13 00:00:00','Asistió',NULL,NULL),(46,27,21,'2026-07-18 00:00:00','Asistió',NULL,NULL),(47,28,21,'2026-07-18 00:00:00','Asistió',NULL,NULL),(48,29,21,'2026-07-18 00:00:00','Asistió',NULL,NULL),(49,30,21,'2026-07-18 00:00:00','Asistió',NULL,NULL),(50,31,21,'2026-07-18 00:00:00','Asistió',NULL,NULL),(51,11,7,'2026-07-16 00:00:00','Asistió',NULL,NULL),(52,12,7,'2026-07-16 00:00:00','Asistió',NULL,NULL),(53,13,7,'2026-07-16 00:00:00','Asistió',NULL,NULL),(54,14,7,'2026-07-16 00:00:00','Asistió',NULL,NULL),(55,15,7,'2026-07-16 00:00:00','Asistió',NULL,NULL),(56,16,7,'2026-07-16 00:00:00','Asistió',NULL,NULL),(57,64,37,'2026-07-02 00:00:00','Asistió',NULL,NULL),(58,64,37,'2026-07-07 00:00:00','Tardanza',NULL,NULL),(59,64,37,'2026-07-09 00:00:00','Tardanza',NULL,NULL),(60,64,37,'2026-07-14 00:00:00','Falta',NULL,NULL),(62,64,37,'2026-07-21 00:00:00','Asistió',NULL,NULL),(63,64,37,'2026-07-16 00:00:00','Asistió',NULL,NULL);
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Disciplina` varchar(100) NOT NULL,
  `HoraInicio` time NOT NULL,
  `HoraFin` time NOT NULL,
  `Nivel` varchar(50) NOT NULL,
  `CupoMaximo` int NOT NULL,
  `Aula` varchar(50) NOT NULL,
  `InstructorId` int NOT NULL,
  `Dias` varchar(255) NOT NULL,
  `Activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `FK_Cursos_Instructores` (`InstructorId`),
  CONSTRAINT `FK_Cursos_Instructores` FOREIGN KEY (`InstructorId`) REFERENCES `instructores` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (6,'JiuJitsu (Niños)','12:00:00','13:00:00','Intermedio',15,'Salón Principal',14,'Martes, Miércoles, Sábado',1),(7,'Marinera Jóvenes','11:00:00','12:00:00','Intermedio',15,'Salón Principal',16,'Martes, Jueves',1),(8,'Marinera Kids','09:00:00','10:30:00','Intermedio',15,'Salón Principal',13,'Martes, Jueves',1),(9,'K-Pop','09:30:00','10:30:00','Intermedio',15,'Salón Principal',15,'Lunes, Domingo',1),(10,'Afro / Música Negra','08:00:00','09:00:00','Básico',15,'Salón Principal',9,'Lunes',1),(11,'Marinera Jóvenes','18:30:00','19:30:00','Inicial',15,'Salón Principal',14,'Miércoles, Jueves',1),(12,'Ballet Kids','16:00:00','17:00:00','Inicial',15,'Salón Principal',2,'Viernes',1),(13,'Coreo Kids','17:00:00','18:00:00','Básico',15,'Salón Principal',2,'Viernes',1),(14,'Versa Dance','18:00:00','20:00:00','Básico',15,'Salón Principal',2,'Viernes',1),(15,'Salsa Casino Intermedio','20:00:00','22:00:00','Intermedio',15,'Salón Principal',13,'Viernes',1),(16,'Ballet Kids','09:00:00','10:00:00','Inicial',15,'Salón Principal',2,'Sábado',1),(17,'Baile Moderno (Niños)','10:00:00','11:00:00','Básico',15,'Salón Principal',3,'Sábado',1),(18,'Marinera Babies','13:00:00','14:00:00','Inicial',15,'Salón Principal',3,'Sábado',1),(19,'MBM','14:00:00','15:30:00','Básico',15,'Salón Principal',6,'Sábado',1),(20,'K-Pop','15:30:00','17:00:00','Básico',15,'Salón Principal',14,'Sábado',1),(21,'Salsa Casino Básico','17:00:00','19:00:00','Básico',15,'Salón Principal',15,'Sábado',1),(22,'Sexy Dance','19:00:00','20:30:00','Básico',15,'Salón Principal',16,'Sábado',1),(23,'Caporales','20:30:00','22:00:00','Básico',15,'Salón Principal',17,'Sábado',1),(24,'Salsa y Bachata','13:30:00','15:30:00','Básico',15,'Salón Principal',18,'Domingo',1),(25,'Marinera Adulto','11:00:00','12:00:00','Básico',15,'Salón Principal',4,'Lunes, Miércoles',1),(26,'Salsa Noche','12:00:00','13:00:00','Básico',15,'Salón Principal',11,'Lunes, Miércoles',1),(27,'Danza Contemporánea','13:00:00','14:00:00','Básico',15,'Salón Principal',2,'Lunes, Miércoles',1),(28,'JiuJitsu (Adolescentes)','14:00:00','15:00:00','Intermedio',15,'Salón Principal',5,'Lunes, Miércoles',1),(29,'Afro / Música Negra','15:00:00','16:00:00','Básico',15,'Salón Principal',8,'Lunes, Miércoles',1),(30,'MBM','16:00:00','17:00:00','Básico',15,'Salón Principal',6,'Lunes, Miércoles',1),(31,'JiuJitsu (Niños)','17:00:00','18:00:00','Básico',15,'Salón Principal',5,'Lunes, Miércoles',1),(32,'K-Pop','19:30:00','20:30:00','Básico',15,'Salón Principal',7,'Lunes, Miércoles',1),(33,'JiuJitsu (Adultos)','21:00:00','22:00:00','Avanzado',15,'Salón Principal',5,'Lunes, Miércoles',1),(34,'Full Dance','08:00:00','09:00:00','Básico',15,'Salón Principal',9,'Martes, Jueves',1),(35,'Strong Dance','13:00:00','14:00:00','Básico',15,'Salón Principal',2,'Martes, Jueves',1),(36,'Marinera Adulto Mayor','14:00:00','15:00:00','Inicial',15,'Salón Principal',4,'Martes, Jueves',1),(37,'Salsa y Bachata (AM)','15:00:00','16:00:00','Básico',15,'Salón Principal',10,'Martes, Jueves',1),(38,'Bachata Noche','16:00:00','17:00:00','Básico',15,'Salón Principal',11,'Martes, Jueves',1),(39,'Marinera Kids','17:00:00','18:00:00','Básico',15,'Salón Principal',4,'Martes, Jueves',1),(40,'Marinera Jóvenes','19:30:00','20:30:00','Intermedio',15,'Salón Principal',4,'Martes, Jueves',1),(41,'Salsa B3 y B4','21:00:00','22:00:00','Intermedio',15,'Salón Principal',11,'Martes, Jueves',1),(42,'Fitness','09:00:00','10:00:00','Básico',15,'Salón Principal',12,'Miércoles, Viernes',1);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructores`
--

DROP TABLE IF EXISTS `instructores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructores` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `DNI` varchar(8) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Edad` int NOT NULL,
  `Activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructores`
--

LOCK TABLES `instructores` WRITE;
/*!40000 ALTER TABLE `instructores` DISABLE KEYS */;
INSERT INTO `instructores` VALUES (1,'78787878','Prueba Instructor','instructor1@mcdance.com',30,0),(2,'80000001','Solimar Silva','ssilva@mcdance.com',28,1),(3,'80000002','Caty Ortiz','cortiz@mcdance.com',32,1),(4,'80000003','Cesar Esquerre','cesquerre@mcdance.com',35,1),(5,'80000004','Angel Urbano','aurbano@mcdance.com',30,1),(6,'80000005','Wendell Gonzales','wgonzales@mcdance.com',27,1),(7,'80000006','Noelia Castro','ncastro@mcdance.com',26,1),(8,'80000007','Iris Barrera','ibarrera@mcdance.com',33,1),(9,'80000008','Chechi Yañez','cyanez@mcdance.com',31,1),(10,'80000009','Edinson Torres','etorres@mcdance.com',29,1),(11,'80000010','Yuly Salazar','ysalazar@mcdance.com',34,1),(12,'80000011','Melissa Vélez','mvelez@mcdance.com',28,1),(13,'80000012','Jeffersom Molero','jmolero@mcdance.com',32,1),(14,'80000013','Diago Borda','dborda@mcdance.com',25,1),(15,'80000014','Mario Bermudez','mbermudez@mcdance.com',36,1),(16,'80000015','Carol Carnero','ccarnero@mcdance.com',29,1),(17,'80000016','John Rengifo','jrengifo@mcdance.com',30,1),(18,'80000017','Miguel Yllescas','myllescas@mcdance.com',35,1),(19,'70421532','CANTON SEFERINO, LAMEC','cantonl@mcdance.com',38,1);
/*!40000 ALTER TABLE `instructores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `AlumnoId` int NOT NULL,
  `CursoId` int NOT NULL,
  `FechaHoraPago` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MontoPagado` decimal(18,2) NOT NULL,
  `ComprobantePath` varchar(255) DEFAULT NULL,
  `Activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `AlumnoId` (`AlumnoId`),
  KEY `CursoId` (`CursoId`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`AlumnoId`) REFERENCES `alumnos` (`Id`),
  CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`CursoId`) REFERENCES `cursos` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,9,6,'2026-06-18 16:30:37',150.00,NULL,0),(2,9,6,'2026-06-18 16:42:24',200.00,NULL,0),(3,9,6,'2026-06-18 16:46:11',158.00,NULL,0),(4,9,6,'2026-06-19 21:41:58',280.00,NULL,0),(5,11,7,'2026-06-23 10:58:38',200.00,NULL,0),(6,11,7,'2026-06-23 13:19:14',200.00,'/comprobantes/67e522df-6016-4e64-aab8-62fc19f4b85a_c1d1c507-f516-4035-8658-c755f31b2fb3.jpg',1),(7,62,20,'2026-07-15 22:21:58',150.00,NULL,1),(8,55,27,'2026-07-19 23:14:10',200.00,NULL,1),(9,64,37,'2026-07-20 00:13:44',200.00,NULL,1),(10,64,37,'2026-07-20 00:18:27',200.00,NULL,1);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Correo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Contrasena` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Rol` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (11,'admin@mcdance.com','$2a$11$zFnuQLiF6mrCGlltL5/kyejRpHpqt2Oq8uJRraxWv.N1nhL4m2Fru','Administrador'),(12,'luzpastor@gmail.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(13,'ruizj@mcdance.com','$2a$11$ToQv5x9VKD8s2btzKHgJ.eXxTuHFc4IWWRbmb0OnImKShuJ4tZPRK','Alumno'),(14,'correo1@mcdance.com','$2a$11$H8kx9P5odLxHQlJGZrlfA.by0A1Bd7YdeMb8zcHVeDpORaejsPQBi','Alumno'),(15,'alumno1@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(16,'alumno2@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(17,'alumno3@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(18,'alumno4@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(19,'alumno5@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(20,'alumno6@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(21,'alumno7@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(22,'alumno8@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(23,'alumno9@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(24,'alumno10@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(25,'alumno11@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(26,'alumno12@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(27,'alumno13@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(28,'alumno14@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(29,'alumno15@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(30,'alumno16@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(31,'alumno17@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(32,'alumno18@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(33,'alumno19@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(34,'alumno20@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(35,'alumno21@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(36,'alumno22@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(37,'alumno23@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(38,'alumno24@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(39,'alumno25@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(40,'alumno26@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(41,'alumno27@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(42,'alumno28@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(43,'alumno29@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(44,'alumno30@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(45,'alumno31@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(46,'alumno32@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(47,'alumno33@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(48,'alumno34@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(49,'alumno35@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(50,'alumno36@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(51,'alumno37@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(52,'alumno38@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(53,'alumno39@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(54,'alumno40@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(55,'alumno41@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(56,'alumno42@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(57,'alumno43@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(58,'alumno44@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(59,'alumno45@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(60,'alumno46@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(61,'alumno47@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(62,'alumno48@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(63,'alumno49@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(64,'alumno50@mcdance.com','$2a$11$wHXPZ51/c8ztNArYLWIYzeBI7KaAZZsPRGk6xD4q7m6IS0qhaQo32','Alumno'),(65,'amedina@mcdance.com','$2a$11$jgsbf5vk/Ajvjz8X2npvXeQ2Eac0li.2VvSvyDkLaX4ObH6ihC0EK','Alumno'),(66,'juanchombo@mcdancestudio.com','$2a$11$G1O9xQZ/Ly.OyLxWO.WVJujxDKPCCeOt83y.K7OcxQfLZ658/d8Ui','Alumno'),(67,'77541354@mail.isil.pe','$2a$11$RhOSA75Huhif2QjRfh4BFuxKkMmj6CRwo89DteaTmaX.AJw7qIIXO','Alumno');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mcdancestudiodb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-20 18:57:30
