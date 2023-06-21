CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `id_medico` int DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  `id_convenio` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `n_carteira` int DEFAULT NULL,
  `especialidade` varchar(255) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`id_consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1,1,1,67,'2021-12-15','09:00:00',12345,'Cardiologia',150),(2,2,2,68,'2018-06-20','14:30:00',23456,'Dermatologia',120),(3,3,3,69,'2019-03-10','10:45:00',34567,'Pediatria',100),(4,4,4,70,'2017-09-05','16:15:00',45678,'Ginecologia',180),(5,5,5,71,'2020-08-25','11:30:00',56789,'Ortopedia',200),(6,6,1,72,'2016-05-12','08:45:00',12345,'Cardiologia',150),(7,7,6,73,'2022-01-05','13:00:00',67890,'Oftalmologia',160),(8,8,7,74,'2017-07-18','15:20:00',78901,'Dermatologia',120),(9,9,8,75,'2018-04-03','09:30:00',89012,'Pediatria',100),(10,10,9,76,'2019-11-28','17:00:00',90123,'Ginecologia',180),(11,11,10,77,'2015-03-21','10:15:00',10123,'Ortopedia',200),(12,12,11,78,'2016-08-14','11:45:00',11234,'Cardiologia',150),(13,13,12,79,'2017-02-09','14:00:00',12345,'Dermatologia',120),(14,14,13,80,'2018-09-27','16:30:00',13456,'Pediatria',100),(15,15,14,81,'2019-07-04','08:30:00',14567,'Ginecologia',180),(16,16,15,82,'2020-11-16','12:00:00',15678,'Oftalmologia',160),(17,17,16,83,'2021-04-08','14:45:00',16789,'Dermatologia',120),(18,18,17,84,'2016-10-02','16:10:00',17890,'Pediatria',100),(19,19,18,85,'2017-12-19','10:45:00',18901,'Ginecologia',180),(20,20,19,86,'2018-05-07','13:20:00',19012,'Ortopedia',200);
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenios` (
  `id_convenio` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int DEFAULT NULL,
  `nome_convenio` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `tempo_carencia` date DEFAULT NULL,
  PRIMARY KEY (`id_convenio`),
  UNIQUE KEY `cnpj_UNIQUE` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios`
--

LOCK TABLES `convenios` WRITE;
/*!40000 ALTER TABLE `convenios` DISABLE KEYS */;
INSERT INTO `convenios` VALUES (67,1,'Saúde+','12345678901236','2023-06-16'),(68,2,'Plano Vida Saudável','23456789012345','2023-07-16'),(69,3,'Assistência Médica Total','34567890123456','2023-06-01'),(70,4,'Seguro Saúde Integral','45678901234567','2023-08-15'),(71,5,'Saúde Prime','56789012345678','2023-07-01'),(72,6,'Plano Bem-Estar','67890123456789','2023-06-16'),(73,7,'Saúde+','12345678901734','2023-06-16'),(74,8,'Plano Vida Saudável 2','23456789012346','2023-07-16'),(75,9,'Assistência Médica Total 2','34567890123457','2023-06-01'),(76,10,'Seguro Saúde Integral 2','45678901234568','2023-08-15'),(77,11,'Saúde Prime','56789012345679','2023-07-01'),(78,12,'Plano Bem-Estar','67890123456780','2023-06-16'),(79,13,'Saúde+','12345678901235','2023-06-16'),(80,14,'Plano Vida Saudável','23456789012347','2023-07-16'),(81,15,'Assistência Médica Total 3','34567890123458','2023-06-01'),(82,16,'Seguro Saúde Integral 3','45678901234569','2023-08-15'),(83,17,'Saúde Prime 2','56789012345670','2023-07-01'),(84,18,'Plano Bem-Estar 2','67890123456781','2023-06-16'),(85,19,'Saúde+ 2','12345678901237','2023-06-16'),(86,20,'Plano Vida Saudável 3','23456789012348','2023-07-16'),(87,21,'Assistência Médica Total 4','34567890123459','2023-06-01'),(88,22,'Seguro Saúde Integral 4','45678901234570','2023-08-15');
/*!40000 ALTER TABLE `convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro_internacao`
--

DROP TABLE IF EXISTS `enfermeiro_internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro_internacao` (
  `id_enfermeiro_internacao` int NOT NULL AUTO_INCREMENT,
  `id_enfermeiro` int DEFAULT NULL,
  `id_internacao` int DEFAULT NULL,
  PRIMARY KEY (`id_enfermeiro_internacao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro_internacao`
--

LOCK TABLES `enfermeiro_internacao` WRITE;
/*!40000 ALTER TABLE `enfermeiro_internacao` DISABLE KEYS */;
INSERT INTO `enfermeiro_internacao` VALUES (1,1,3),(2,2,1),(3,3,5),(4,4,2),(5,5,4);
/*!40000 ALTER TABLE `enfermeiro_internacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiros`
--

DROP TABLE IF EXISTS `enfermeiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiros` (
  `id_enfermeiro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `cre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_enfermeiro`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `cre_UNIQUE` (`cre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiros`
--

LOCK TABLES `enfermeiros` WRITE;
/*!40000 ALTER TABLE `enfermeiros` DISABLE KEYS */;
INSERT INTO `enfermeiros` VALUES (1,'João da Silva','123.456.789-00','12345-SP'),(2,'Maria Santos','987.654.321-00','54321-RJ'),(3,'Pedro Oliveira','111.222.333-00','98765-MG'),(4,'Ana Costa','555.666.777-00','24680-RS'),(5,'Lucas Souza','888.999.000-00','13579-BA');
/*!40000 ALTER TABLE `enfermeiros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id_especialidade` int NOT NULL AUTO_INCREMENT,
  `especialidade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'Pediatria'),(2,'Clínica Geral'),(3,'Gastrenterologia'),(4,'Dermatologia'),(5,'Cardiologia'),(6,'Oncologia'),(7,'Neurologia'),(8,'Psiquiatria'),(9,'Ortopedia'),(10,'Oftalmologia');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacoes`
--

DROP TABLE IF EXISTS `internacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacoes` (
  `id_internacao` int NOT NULL AUTO_INCREMENT,
  `dt_entrada` date DEFAULT NULL,
  `dt_prevista` date DEFAULT NULL,
  `dt_alta` date DEFAULT NULL,
  `procedimento` varchar(255) DEFAULT NULL,
  `id_enfermeiro_internacao` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `id_quarto` int DEFAULT NULL,
  `id_paciente` int DEFAULT NULL,
  PRIMARY KEY (`id_internacao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacoes`
--

LOCK TABLES `internacoes` WRITE;
/*!40000 ALTER TABLE `internacoes` DISABLE KEYS */;
INSERT INTO `internacoes` VALUES (1,'2023-01-01','2023-01-05','2023-01-10','Cirurgia Cardíaca',5,16,8,10),(2,'2023-02-01','2023-02-05','2023-02-10','Tratamento de Fratura',2,12,4,20),(3,'2023-03-01','2023-03-05','2023-03-10','Cirurgia de Apendicite',8,17,9,6),(4,'2023-04-01','2023-04-05','2023-04-10','Tratamento de Pneumonia',11,4,16,18),(5,'2023-05-01','2023-05-05','2023-05-10','Cirurgia de Catarata',7,9,3,15);
/*!40000 ALTER TABLE `internacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `id_medicamento` int NOT NULL AUTO_INCREMENT,
  `medicamento` varchar(255) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `instrucao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Paracetamol',100,'Tomar 1 comprimido a cada 6 horas'),(2,'Amoxicilina',50,'Tomar 1 cápsula de 500mg a cada 8 horas'),(3,'Dipirona',80,'Tomar 1 comprimido de 500mg em caso de dor'),(4,'Omeprazol',30,'Tomar 1 cápsula de 20mg antes do café da manhã'),(5,'Dexametasona',60,'Tomar 1 comprimido de 4mg pela manhã e outro à noite');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_especialidades`
--

DROP TABLE IF EXISTS `medico_especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_especialidades` (
  `id_medico_especialidade` int NOT NULL AUTO_INCREMENT,
  `id_medico` int DEFAULT NULL,
  `id_especialidade` int DEFAULT NULL,
  PRIMARY KEY (`id_medico_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_especialidades`
--

LOCK TABLES `medico_especialidades` WRITE;
/*!40000 ALTER TABLE `medico_especialidades` DISABLE KEYS */;
INSERT INTO `medico_especialidades` VALUES (1,19,6),(2,6,8),(3,17,9),(4,13,5),(5,7,7),(6,10,4),(7,9,2),(8,8,1),(9,3,10),(10,20,3),(16,1,1),(17,2,2),(18,3,3),(19,4,4),(20,5,5),(21,11,6),(22,12,7),(23,14,8),(24,15,9),(25,16,10);
/*!40000 ALTER TABLE `medico_especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `em_atividade` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_medico`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Dr. Carlos Silva','123.456.789-00','12.345.678-9','(11) 1111-1111','carlos.silva@hospital.com','Residente',0),(2,'Dr. Paula Santos','234.567.890-11','23.456.789-0','(11) 2222-2222','paula.santos@hospital.com','Generalista',0),(3,'Dr. Marcelo Alves','345.678.901-22','34.567.890-1','(11) 3333-3333','marcelo.alves@hospital.com','Especialista',1),(4,'Dra. Fernanda Oliveira','456.789.012-33','45.678.901-2','(11) 4444-4444','fernanda.oliveira@hospital.com','Generalista',1),(5,'Dra. Maria Silva','567.890.123-44','56.789.012-3','(11) 5555-5555','maria.silva@hospital.com','Especialista',1),(6,'Dr. João Souza','678.901.234-55','67.890.123-4','(11) 6666-6666','joao.souza@hospital.com','Residente',1),(7,'Dr. Bruno Santos','789.012.345-66','78.901.234-5','(11) 7777-7777','bruno.santos@hospital.com','Generalista',1),(8,'Dr. Rodrigo Mendes','890.123.456-77','89.012.345-6','(11) 8888-8888','rodrigo.mendes@hospital.com','Residente',1),(9,'Dra. Ana Oliveira','901.234.567-88','90.123.456-7','(11) 9999-9999','ana.oliveira@hospital.com','Especialista',1),(10,'Dr. Luiz Felipe','012.345.678-99','01.234.567-8','(11) 0000-0000','luiz.felipe@hospital.com','Generalista',1),(11,'Dr. Ricardo Martins','123.456.789-01','12.345.678-0','(11) 1010-1010','ricardo.martins@hospital.com','Residente',1),(12,'Dra. Camila Almeida','234.567.890-12','23.456.789-1','(11) 2020-2020','camila.almeida@hospital.com','Especialista',1),(13,'Dr. Marcos Ferreira','345.678.901-23','34.567.890-2','(11) 3030-3030','marcos.ferreira@hospital.com','Generalista',1),(14,'Dra. Juliana Lima','456.789.012-34','45.678.901-3','(11) 4040-4040','juliana.lima@hospital.com','Especialista',1),(15,'Dr. André Santos','567.890.123-45','56.789.012-4','(11) 5050-5050','andre.santos@hospital.com','Residente',1),(16,'Dra. Renata Silva','678.901.234-56','67.890.123-5','(11) 6060-6060','renata.silva@hospital.com','Especialista',1),(17,'Dr. Eduardo Souza','789.012.345-67','78.901.234-6','(11) 7070-7070','eduardo.souza@hospital.com','Especialista',1),(18,'Dra. Larissa Oliveira','890.123.456-78','89.012.345-7','(11) 8080-8080','larissa.oliveira@hospital.com','Residente',1),(19,'Dr. Rafael Mendes','901.234.567-89','90.123.456-8','(11) 9090-9090','rafael.mendes@hospital.com','Generalista',1),(20,'Dr. Gabriel Alves','012.345.678-90','01.234.567-9','(11) 0101-0101','gabriel.alves@hospital.com','Generalista',1);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente_convenios`
--

DROP TABLE IF EXISTS `paciente_convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente_convenios` (
  `id_paciente_convenio` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int DEFAULT NULL,
  `id_convenio` int DEFAULT NULL,
  PRIMARY KEY (`id_paciente_convenio`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente_convenios`
--

LOCK TABLES `paciente_convenios` WRITE;
/*!40000 ALTER TABLE `paciente_convenios` DISABLE KEYS */;
INSERT INTO `paciente_convenios` VALUES (1,1,67),(2,2,68),(3,3,69),(4,4,70),(5,5,71),(6,6,72),(7,7,73),(8,8,74),(9,9,75),(10,10,76),(11,11,77),(12,12,78),(13,13,79),(14,14,80),(15,15,81),(16,16,82),(17,17,83),(18,18,84),(19,19,85),(20,20,86);
/*!40000 ALTER TABLE `paciente_convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Maria Silva','1990-01-15','Rua A, 123','123.456.789-00','12.345.678-9','(11) 1111-1111','maria.silva@gmail.com'),(2,'João Santos','1985-05-20','Avenida B, 456','234.567.890-11','23.456.789-0','(11) 2222-2222','joao.santos@gmail.com'),(3,'Ana Oliveira','1992-07-10','Rua C, 789','345.678.901-22','34.567.890-1','(11) 3333-3333','ana.oliveira@gmail.com'),(4,'Pedro Souza','1988-03-25','Avenida D, 012','456.789.012-33','45.678.901-2','(11) 4444-4444','pedro.souza@gmail.com'),(5,'Lucas Almeida','1995-09-12','Rua E, 345','567.890.123-44','56.789.012-3','(11) 5555-5555','lucas.almeida@gmail.com'),(6,'Camila Lima','1987-11-08','Avenida F, 678','678.901.234-55','67.890.123-4','(11) 6666-6666','camila.lima@gmail.com'),(7,'Paulo Santos','1993-02-18','Rua G, 901','789.012.345-66','78.901.234-5','(11) 7777-7777','paulo.santos@gmail.com'),(8,'Julia Fernandes','1989-06-05','Avenida H, 234','890.123.456-77','89.012.345-6','(11) 8888-8888','julia.fernandes@gmail.com'),(9,'Gabriel Rodrigues','1991-04-30','Rua I, 567','901.234.567-88','90.123.456-7','(11) 9999-9999','gabriel.rodrigues@gmail.com'),(10,'Mariana Oliveira','1994-08-22','Avenida J, 890','012.345.678-99','01.234.567-8','(11) 0000-0000','mariana.oliveira@gmail.com'),(11,'Rafael Costa','1986-12-02','Rua K, 123','123.456.789-11','12.345.678-0','(11) 1234-5678','rafael.costa@gmail.com'),(12,'Carolina Barbosa','1997-10-07','Avenida L, 456','234.567.890-22','23.456.789-1','(11) 2345-6789','carolina.barbosa@gmail.com'),(13,'Felipe Fernandes','1984-02-28','Rua M, 789','345.678.901-33','34.567.890-2','(11) 3456-7890','felipe.fernandes@gmail.com'),(14,'Larissa Rodrigues','1996-09-15','Avenida N, 012','456.789.012-44','45.678.901-3','(11) 4567-8901','larissa.rodrigues@gmail.com'),(15,'Bruno Alves','1983-03-20','Rua O, 345','567.890.123-55','56.789.012-4','(11) 5678-9012','bruno.alves@gmail.com'),(16,'Isabela Lima','1998-07-10','Avenida P, 678','678.901.234-66','67.890.123-5','(11) 6789-0123','isabela.lima@gmail.com'),(17,'Thiago Santos','1981-11-25','Rua Q, 901','789.012.345-77','78.901.234-6','(11) 7890-1234','thiago.santos@gmail.com'),(18,'Luana Fernandes','1990-05-18','Avenida R, 234','890.123.456-88','89.012.345-7','(11) 8901-2345','luana.fernandes@gmail.com'),(19,'Felipe Oliveira','1987-09-12','Rua S, 567','901.234.567-99','90.123.456-8','(11) 9012-3456','felipe.oliveira@gmail.com'),(20,'Gabriela Santos','1992-01-30','Avenida T, 890','012.345.678-00','01.234.567-9','(11) 0123-4567','gabriela.santos@gmail.com'),(21,'Matheus Almeida','1989-08-22','Rua U, 123','173.456.789-11','12.345.678-0','(11) 1234-5678','matheus.almeida@gmail.com'),(22,'Amanda Barbosa','1994-02-07','Avenida V, 456','234.567.850-22','23.456.789-1','(11) 2345-6789','amanda.barbosa@gmail.com');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartos`
--

DROP TABLE IF EXISTS `quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quartos` (
  `id_quarto` int NOT NULL AUTO_INCREMENT,
  `numero` int DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_quarto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartos`
--

LOCK TABLES `quartos` WRITE;
/*!40000 ALTER TABLE `quartos` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita_medicamento`
--

DROP TABLE IF EXISTS `receita_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita_medicamento` (
  `id_receita_medicamento` int NOT NULL AUTO_INCREMENT,
  `id_receita` int DEFAULT NULL,
  `id_medicamento` int DEFAULT NULL,
  PRIMARY KEY (`id_receita_medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita_medicamento`
--

LOCK TABLES `receita_medicamento` WRITE;
/*!40000 ALTER TABLE `receita_medicamento` DISABLE KEYS */;
INSERT INTO `receita_medicamento` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,1),(7,7,2),(8,8,3),(9,9,4),(10,10,5);
/*!40000 ALTER TABLE `receita_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receitas`
--

DROP TABLE IF EXISTS `receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receitas` (
  `id_receita` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `id_consulta` int DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `medicamento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_receita`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitas`
--

LOCK TABLES `receitas` WRITE;
/*!40000 ALTER TABLE `receitas` DISABLE KEYS */;
INSERT INTO `receitas` VALUES (1,1,2,3,'2022-01-05','Paracetamol'),(2,2,4,1,'2021-06-12','Amoxicilina'),(3,3,6,2,'2022-03-20','Dipirona'),(4,4,8,5,'2021-09-18','Omeprazol'),(5,5,10,4,'2022-05-30','Dexametasona'),(6,6,12,7,'2021-02-08','Paracetamol'),(7,7,14,6,'2022-07-14','Amoxicilina'),(8,8,16,9,'2021-11-25','Dipirona'),(9,9,18,8,'2022-08-02','Omeprazol'),(10,10,20,10,'2022-10-15','Dexametasona');
/*!40000 ALTER TABLE `receitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-21 12:20:11
