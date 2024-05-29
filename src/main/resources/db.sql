-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: portalacademico
-- ------------------------------------------------------
-- Server version	8.0.36
drop database portalacademico;
create database portalacademico;
use portalacademico;

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
-- Table structure for table `_subject`
--

DROP TABLE IF EXISTS `_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) NOT NULL,
  `weekly_hours` int DEFAULT NULL,
  `total_hours` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_subject`
--

LOCK TABLES `_subject` WRITE;
/*!40000 ALTER TABLE `_subject` DISABLE KEYS */;
INSERT INTO `_subject` VALUES (1,'Programacion',8,256),(2,'Entornos de Desarrollo',3,96),(3,'Bases de Datos',6,192),(4,'Formacion y Orientacion Laboral',3,96),(5,'Lenguaje de Marcas',4,128),(6,'Sistemas Informaticos',6,192),(7,'Montaje y mantimientos de equipos',6,106),(8,'Sistemas operativos monopuestos',8,140),(9,'Implantacion de sistemas operativos',8,256),(10,'Planificacion y administracion de redes',6,192),(11,'Fundamentos de hardware',8,256),(12,'Prácticas',18,180);
/*!40000 ALTER TABLE `_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accenture`
--

DROP TABLE IF EXISTS `accenture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accenture` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_key_user_id` (`user_id`),
  CONSTRAINT `foreign_key_accenture_userId` FOREIGN KEY (`id`) REFERENCES `user_obj` (`id`),
  CONSTRAINT `foreign_key_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_obj` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accenture`
--

LOCK TABLES `accenture` WRITE;
/*!40000 ALTER TABLE `accenture` DISABLE KEYS */;
/*!40000 ALTER TABLE `accenture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` varchar(10) NOT NULL,
  `teacher_id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `day` varchar(10) NOT NULL,
  `hour` varchar(10) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_key_appointment_teacherId` (`teacher_id`),
  KEY `foreign_key_appointment_studentId` (`student_id`),
  CONSTRAINT `foreign_key_appointment_studentId` FOREIGN KEY (`student_id`) REFERENCES `user_obj` (`id`),
  CONSTRAINT `foreign_key_appointment_teacherId` FOREIGN KEY (`teacher_id`) REFERENCES `user_obj` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES ('J5_1',1,NULL,'23','17:00','Despacho de Jon'),('J5_10',10,NULL,'23','17:00','Despacho de Laura'),('J5_11',11,NULL,'23','17:00','Despacho de Ramon'),('J5_12',12,NULL,'23','17:00','Despacho de David'),('J5_13',13,NULL,'23','17:00','Despacho de Lucia'),('J5_14',14,NULL,'23','17:00','Despacho de Maria'),('J5_15',15,NULL,'23','17:00','Despacho de Rosa'),('J5_16',16,NULL,'23','17:00','Despacho de Jose'),('J5_17',17,NULL,'23','17:00','Despacho de Mariam'),('J5_18',18,NULL,'23','17:00','Despacho de Pablo'),('J5_19',19,NULL,'23','17:00','Despacho de Moises'),('J5_2',2,NULL,'23','17:00','Despacho de Victor'),('J5_20',20,NULL,'23','17:00','Despacho de Lucia'),('J5_21',21,NULL,'23','17:00','Despacho de Lorena'),('J5_22',22,NULL,'23','17:00','Despacho de Fernando'),('J5_3',3,NULL,'23','17:00','Despacho de Luciano'),('J5_4',4,NULL,'23','17:00','Despacho de Rigoberto'),('J5_5',5,NULL,'23','17:00','Despacho de Marta'),('J5_6',6,NULL,'23','17:00','Despacho de Sonia'),('J5_7',7,NULL,'23','17:00','Despacho de Francisco'),('J5_8',8,NULL,'23','17:00','Despacho de Marco'),('J5_9',9,NULL,'23','17:00','Despacho de Guillermo'),('J6_1',1,NULL,'23','18:00','Despacho de Jon'),('J6_10',10,NULL,'23','18:00','Despacho de Laura'),('J6_11',11,NULL,'23','18:00','Despacho de Ramon'),('J6_12',12,NULL,'23','18:00','Despacho de David'),('J6_13',13,NULL,'23','18:00','Despacho de Lucia'),('J6_14',14,NULL,'23','18:00','Despacho de Maria'),('J6_15',15,NULL,'23','18:00','Despacho de Rosa'),('J6_16',16,NULL,'23','18:00','Despacho de Jose'),('J6_17',17,NULL,'23','18:00','Despacho de Mariam'),('J6_18',18,NULL,'23','18:00','Despacho de Pablo'),('J6_19',19,NULL,'23','18:00','Despacho de Moises'),('J6_2',2,NULL,'23','18:00','Despacho de Victor'),('J6_20',20,NULL,'23','18:00','Despacho de Lucia'),('J6_21',21,NULL,'23','18:00','Despacho de Lorena'),('J6_22',22,NULL,'23','18:00','Despacho de Fernando'),('J6_3',3,NULL,'23','18:00','Despacho de Luciano'),('J6_4',4,NULL,'23','18:00','Despacho de Rigoberto'),('J6_5',5,NULL,'23','18:00','Despacho de Marta'),('J6_6',6,NULL,'23','18:00','Despacho de Sonia'),('J6_7',7,NULL,'23','18:00','Despacho de Francisco'),('J6_8',8,NULL,'23','18:00','Despacho de Marco'),('J6_9',9,NULL,'23','18:00','Despacho de Guillermo'),('J7_1',1,NULL,'23','19:00','Despacho de Jon'),('J7_10',10,NULL,'23','19:00','Despacho de Laura'),('J7_11',11,NULL,'23','19:00','Despacho de Ramon'),('J7_12',12,NULL,'23','19:00','Despacho de David'),('J7_13',13,NULL,'23','19:00','Despacho de Lucia'),('J7_14',14,NULL,'23','19:00','Despacho de Maria'),('J7_15',15,NULL,'23','19:00','Despacho de Rosa'),('J7_16',16,NULL,'23','19:00','Despacho de Jose'),('J7_17',17,NULL,'23','19:00','Despacho de Mariam'),('J7_18',18,NULL,'23','19:00','Despacho de Pablo'),('J7_19',19,NULL,'23','19:00','Despacho de Moises'),('J7_2',2,NULL,'23','19:00','Despacho de Victor'),('J7_20',20,NULL,'23','19:00','Despacho de Lucia'),('J7_21',21,NULL,'23','19:00','Despacho de Lorena'),('J7_22',22,NULL,'23','19:00','Despacho de Fernando'),('J7_3',3,NULL,'23','19:00','Despacho de Luciano'),('J7_4',4,NULL,'23','19:00','Despacho de Rigoberto'),('J7_5',5,NULL,'23','19:00','Despacho de Marta'),('J7_6',6,NULL,'23','19:00','Despacho de Sonia'),('J7_7',7,NULL,'23','19:00','Despacho de Francisco'),('J7_8',8,NULL,'23','19:00','Despacho de Marco'),('J7_9',9,NULL,'23','19:00','Despacho de Guillermo'),('L5_1',1,NULL,'20','17:00','Despacho de Jon'),('L5_10',10,NULL,'20','17:00','Despacho de Laura'),('L5_11',11,NULL,'20','17:00','Despacho de Ramon'),('L5_12',12,NULL,'20','17:00','Despacho de David'),('L5_13',13,NULL,'20','17:00','Despacho de Lucia'),('L5_14',14,NULL,'20','17:00','Despacho de Maria'),('L5_15',15,NULL,'20','17:00','Despacho de Rosa'),('L5_16',16,NULL,'20','17:00','Despacho de Jose'),('L5_17',17,NULL,'20','17:00','Despacho de Mariam'),('L5_18',18,NULL,'20','17:00','Despacho de Pablo'),('L5_19',19,NULL,'20','17:00','Despacho de Moises'),('L5_2',2,NULL,'20','17:00','Despacho de Victor'),('L5_20',20,NULL,'20','17:00','Despacho de Lucia'),('L5_21',21,NULL,'20','17:00','Despacho de Lorena'),('L5_22',22,NULL,'20','17:00','Despacho de Fernando'),('L5_3',3,NULL,'20','17:00','Despacho de Luciano'),('L5_4',4,NULL,'20','17:00','Despacho de Rigoberto'),('L5_5',5,NULL,'20','17:00','Despacho de Marta'),('L5_6',6,NULL,'20','17:00','Despacho de Sonia'),('L5_7',7,NULL,'20','17:00','Despacho de Francisco'),('L5_8',8,NULL,'20','17:00','Despacho de Marco'),('L5_9',9,NULL,'20','17:00','Despacho de Guillermo'),('L6_1',1,NULL,'20','18:00','Despacho de Jon'),('L6_10',10,NULL,'20','18:00','Despacho de Laura'),('L6_11',11,NULL,'20','18:00','Despacho de Ramon'),('L6_12',12,NULL,'20','18:00','Despacho de David'),('L6_13',13,NULL,'20','18:00','Despacho de Lucia'),('L6_14',14,NULL,'20','18:00','Despacho de Maria'),('L6_15',15,NULL,'20','18:00','Despacho de Rosa'),('L6_16',16,NULL,'20','18:00','Despacho de Jose'),('L6_17',17,NULL,'20','18:00','Despacho de Mariam'),('L6_18',18,NULL,'20','18:00','Despacho de Pablo'),('L6_19',19,NULL,'20','18:00','Despacho de Moises'),('L6_2',2,25,'20','18:00','Despacho de Victor'),('L6_20',20,NULL,'20','18:00','Despacho de Lucia'),('L6_21',21,NULL,'20','18:00','Despacho de Lorena'),('L6_22',22,NULL,'20','18:00','Despacho de Fernando'),('L6_3',3,NULL,'20','18:00','Despacho de Luciano'),('L6_4',4,NULL,'20','18:00','Despacho de Rigoberto'),('L6_5',5,NULL,'20','18:00','Despacho de Marta'),('L6_6',6,NULL,'20','18:00','Despacho de Sonia'),('L6_7',7,NULL,'20','18:00','Despacho de Francisco'),('L6_8',8,NULL,'20','18:00','Despacho de Marco'),('L6_9',9,NULL,'20','18:00','Despacho de Guillermo'),('L7_1',1,NULL,'20','19:00','Despacho de Jon'),('L7_10',10,NULL,'20','19:00','Despacho de Laura'),('L7_11',11,NULL,'20','19:00','Despacho de Ramon'),('L7_12',12,NULL,'20','19:00','Despacho de David'),('L7_13',13,NULL,'20','19:00','Despacho de Lucia'),('L7_14',14,NULL,'20','19:00','Despacho de Maria'),('L7_15',15,NULL,'20','19:00','Despacho de Rosa'),('L7_16',16,NULL,'20','19:00','Despacho de Jose'),('L7_17',17,NULL,'20','19:00','Despacho de Mariam'),('L7_18',18,NULL,'20','19:00','Despacho de Pablo'),('L7_19',19,NULL,'20','19:00','Despacho de Moises'),('L7_2',2,NULL,'20','19:00','Despacho de Victor'),('L7_20',20,NULL,'20','19:00','Despacho de Lucia'),('L7_21',21,NULL,'20','19:00','Despacho de Lorena'),('L7_22',22,NULL,'20','19:00','Despacho de Fernando'),('L7_3',3,NULL,'20','19:00','Despacho de Luciano'),('L7_4',4,NULL,'20','19:00','Despacho de Rigoberto'),('L7_5',5,NULL,'20','19:00','Despacho de Marta'),('L7_6',6,NULL,'20','19:00','Despacho de Sonia'),('L7_7',7,NULL,'20','19:00','Despacho de Francisco'),('L7_8',8,NULL,'20','19:00','Despacho de Marco'),('L7_9',9,NULL,'20','19:00','Despacho de Guillermo'),('M5_1',1,NULL,'21','17:00','Despacho de Jon'),('M5_10',10,NULL,'21','17:00','Despacho de Laura'),('M5_11',11,NULL,'21','17:00','Despacho de Ramon'),('M5_12',12,NULL,'21','17:00','Despacho de David'),('M5_13',13,NULL,'21','17:00','Despacho de Lucia'),('M5_14',14,NULL,'21','17:00','Despacho de Maria'),('M5_15',15,NULL,'21','17:00','Despacho de Rosa'),('M5_16',16,NULL,'21','17:00','Despacho de Jose'),('M5_17',17,NULL,'21','17:00','Despacho de Mariam'),('M5_18',18,NULL,'21','17:00','Despacho de Pablo'),('M5_19',19,NULL,'21','17:00','Despacho de Moises'),('M5_2',2,NULL,'21','17:00','Despacho de Victor'),('M5_20',20,NULL,'21','17:00','Despacho de Lucia'),('M5_21',21,NULL,'21','17:00','Despacho de Lorena'),('M5_22',22,NULL,'21','17:00','Despacho de Fernando'),('M5_3',3,NULL,'21','17:00','Despacho de Luciano'),('M5_4',4,NULL,'21','17:00','Despacho de Rigoberto'),('M5_5',5,NULL,'21','17:00','Despacho de Marta'),('M5_6',6,NULL,'21','17:00','Despacho de Sonia'),('M5_7',7,NULL,'21','17:00','Despacho de Francisco'),('M5_8',8,NULL,'21','17:00','Despacho de Marco'),('M5_9',9,NULL,'21','17:00','Despacho de Guillermo'),('M6_1',1,NULL,'21','18:00','Despacho de Jon'),('M6_10',10,NULL,'21','18:00','Despacho de Laura'),('M6_11',11,NULL,'21','18:00','Despacho de Ramon'),('M6_12',12,NULL,'21','18:00','Despacho de David'),('M6_13',13,NULL,'21','18:00','Despacho de Lucia'),('M6_14',14,NULL,'21','18:00','Despacho de Maria'),('M6_15',15,NULL,'21','18:00','Despacho de Rosa'),('M6_16',16,NULL,'21','18:00','Despacho de Jose'),('M6_17',17,NULL,'21','18:00','Despacho de Mariam'),('M6_18',18,NULL,'21','18:00','Despacho de Pablo'),('M6_19',19,NULL,'21','18:00','Despacho de Moises'),('M6_2',2,NULL,'21','18:00','Despacho de Victor'),('M6_20',20,NULL,'21','18:00','Despacho de Lucia'),('M6_21',21,NULL,'21','18:00','Despacho de Lorena'),('M6_22',22,NULL,'21','18:00','Despacho de Fernando'),('M6_3',3,NULL,'21','18:00','Despacho de Luciano'),('M6_4',4,NULL,'21','18:00','Despacho de Rigoberto'),('M6_5',5,NULL,'21','18:00','Despacho de Marta'),('M6_6',6,NULL,'21','18:00','Despacho de Sonia'),('M6_7',7,NULL,'21','18:00','Despacho de Francisco'),('M6_8',8,NULL,'21','18:00','Despacho de Marco'),('M6_9',9,NULL,'21','18:00','Despacho de Guillermo'),('M7_1',1,NULL,'21','19:00','Despacho de Jon'),('M7_10',10,NULL,'21','19:00','Despacho de Laura'),('M7_11',11,NULL,'21','19:00','Despacho de Ramon'),('M7_12',12,NULL,'21','19:00','Despacho de David'),('M7_13',13,NULL,'21','19:00','Despacho de Lucia'),('M7_14',14,NULL,'21','19:00','Despacho de Maria'),('M7_15',15,NULL,'21','19:00','Despacho de Rosa'),('M7_16',16,NULL,'21','19:00','Despacho de Jose'),('M7_17',17,NULL,'21','19:00','Despacho de Mariam'),('M7_18',18,NULL,'21','19:00','Despacho de Pablo'),('M7_19',19,NULL,'21','19:00','Despacho de Moises'),('M7_2',2,NULL,'21','19:00','Despacho de Victor'),('M7_20',20,NULL,'21','19:00','Despacho de Lucia'),('M7_21',21,NULL,'21','19:00','Despacho de Lorena'),('M7_22',22,NULL,'21','19:00','Despacho de Fernando'),('M7_3',3,NULL,'21','19:00','Despacho de Luciano'),('M7_4',4,NULL,'21','19:00','Despacho de Rigoberto'),('M7_5',5,NULL,'21','19:00','Despacho de Marta'),('M7_6',6,NULL,'21','19:00','Despacho de Sonia'),('M7_7',7,NULL,'21','19:00','Despacho de Francisco'),('M7_8',8,NULL,'21','19:00','Despacho de Marco'),('M7_9',9,NULL,'21','19:00','Despacho de Guillermo'),('V5_1',1,NULL,'24','17:00','Despacho de Jon'),('V5_10',10,NULL,'24','17:00','Despacho de Laura'),('V5_11',11,NULL,'24','17:00','Despacho de Ramon'),('V5_12',12,NULL,'24','17:00','Despacho de David'),('V5_13',13,NULL,'24','17:00','Despacho de Lucia'),('V5_14',14,NULL,'24','17:00','Despacho de Maria'),('V5_15',15,NULL,'24','17:00','Despacho de Rosa'),('V5_16',16,NULL,'24','17:00','Despacho de Jose'),('V5_17',17,NULL,'24','17:00','Despacho de Mariam'),('V5_18',18,NULL,'24','17:00','Despacho de Pablo'),('V5_19',19,NULL,'24','17:00','Despacho de Moises'),('V5_2',2,NULL,'24','17:00','Despacho de Victor'),('V5_20',20,NULL,'24','17:00','Despacho de Lucia'),('V5_21',21,NULL,'24','17:00','Despacho de Lorena'),('V5_22',22,NULL,'24','17:00','Despacho de Fernando'),('V5_3',3,NULL,'24','17:00','Despacho de Luciano'),('V5_4',4,NULL,'24','17:00','Despacho de Rigoberto'),('V5_5',5,NULL,'24','17:00','Despacho de Marta'),('V5_6',6,NULL,'24','17:00','Despacho de Sonia'),('V5_7',7,NULL,'24','17:00','Despacho de Francisco'),('V5_8',8,NULL,'24','17:00','Despacho de Marco'),('V5_9',9,NULL,'24','17:00','Despacho de Guillermo'),('V6_1',1,NULL,'24','18:00','Despacho de Jon'),('V6_10',10,NULL,'24','18:00','Despacho de Laura'),('V6_11',11,NULL,'24','18:00','Despacho de Ramon'),('V6_12',12,NULL,'24','18:00','Despacho de David'),('V6_13',13,NULL,'24','18:00','Despacho de Lucia'),('V6_14',14,NULL,'24','18:00','Despacho de Maria'),('V6_15',15,NULL,'24','18:00','Despacho de Rosa'),('V6_16',16,NULL,'24','18:00','Despacho de Jose'),('V6_17',17,NULL,'24','18:00','Despacho de Mariam'),('V6_18',18,NULL,'24','18:00','Despacho de Pablo'),('V6_19',19,NULL,'24','18:00','Despacho de Moises'),('V6_2',2,NULL,'24','18:00','Despacho de Victor'),('V6_20',20,NULL,'24','18:00','Despacho de Lucia'),('V6_21',21,NULL,'24','18:00','Despacho de Lorena'),('V6_22',22,NULL,'24','18:00','Despacho de Fernando'),('V6_3',3,NULL,'24','18:00','Despacho de Luciano'),('V6_4',4,NULL,'24','18:00','Despacho de Rigoberto'),('V6_5',5,NULL,'24','18:00','Despacho de Marta'),('V6_6',6,NULL,'24','18:00','Despacho de Sonia'),('V6_7',7,NULL,'24','18:00','Despacho de Francisco'),('V6_8',8,NULL,'24','18:00','Despacho de Marco'),('V6_9',9,NULL,'24','18:00','Despacho de Guillermo'),('V7_1',1,NULL,'24','19:00','Despacho de Jon'),('V7_10',10,NULL,'24','19:00','Despacho de Laura'),('V7_11',11,NULL,'24','19:00','Despacho de Ramon'),('V7_12',12,NULL,'24','19:00','Despacho de David'),('V7_13',13,NULL,'24','19:00','Despacho de Lucia'),('V7_14',14,NULL,'24','19:00','Despacho de Maria'),('V7_15',15,NULL,'24','19:00','Despacho de Rosa'),('V7_16',16,NULL,'24','19:00','Despacho de Jose'),('V7_17',17,NULL,'24','19:00','Despacho de Mariam'),('V7_18',18,NULL,'24','19:00','Despacho de Pablo'),('V7_19',19,NULL,'24','19:00','Despacho de Moises'),('V7_2',2,NULL,'24','19:00','Despacho de Victor'),('V7_20',20,NULL,'24','19:00','Despacho de Lucia'),('V7_21',21,NULL,'24','19:00','Despacho de Lorena'),('V7_22',22,NULL,'24','19:00','Despacho de Fernando'),('V7_3',3,NULL,'24','19:00','Despacho de Luciano'),('V7_4',4,NULL,'24','19:00','Despacho de Rigoberto'),('V7_5',5,NULL,'24','19:00','Despacho de Marta'),('V7_6',6,NULL,'24','19:00','Despacho de Sonia'),('V7_7',7,NULL,'24','19:00','Despacho de Francisco'),('V7_8',8,NULL,'24','19:00','Despacho de Marco'),('V7_9',9,NULL,'24','19:00','Despacho de Guillermo'),('X5_1',1,NULL,'22','17:00','Despacho de Jon'),('X5_10',10,NULL,'22','17:00','Despacho de Laura'),('X5_11',11,NULL,'22','17:00','Despacho de Ramon'),('X5_12',12,NULL,'22','17:00','Despacho de David'),('X5_13',13,NULL,'22','17:00','Despacho de Lucia'),('X5_14',14,NULL,'22','17:00','Despacho de Maria'),('X5_15',15,NULL,'22','17:00','Despacho de Rosa'),('X5_16',16,NULL,'22','17:00','Despacho de Jose'),('X5_17',17,NULL,'22','17:00','Despacho de Mariam'),('X5_18',18,NULL,'22','17:00','Despacho de Pablo'),('X5_19',19,NULL,'22','17:00','Despacho de Moises'),('X5_2',2,NULL,'22','17:00','Despacho de Victor'),('X5_20',20,NULL,'22','17:00','Despacho de Lucia'),('X5_21',21,NULL,'22','17:00','Despacho de Lorena'),('X5_22',22,NULL,'22','17:00','Despacho de Fernando'),('X5_3',3,NULL,'22','17:00','Despacho de Luciano'),('X5_4',4,NULL,'22','17:00','Despacho de Rigoberto'),('X5_5',5,NULL,'22','17:00','Despacho de Marta'),('X5_6',6,NULL,'22','17:00','Despacho de Sonia'),('X5_7',7,NULL,'22','17:00','Despacho de Francisco'),('X5_8',8,NULL,'22','17:00','Despacho de Marco'),('X5_9',9,NULL,'22','17:00','Despacho de Guillermo'),('X6_1',1,NULL,'22','18:00','Despacho de Jon'),('X6_10',10,NULL,'22','18:00','Despacho de Laura'),('X6_11',11,NULL,'22','18:00','Despacho de Ramon'),('X6_12',12,NULL,'22','18:00','Despacho de David'),('X6_13',13,NULL,'22','18:00','Despacho de Lucia'),('X6_14',14,NULL,'22','18:00','Despacho de Maria'),('X6_15',15,NULL,'22','18:00','Despacho de Rosa'),('X6_16',16,NULL,'22','18:00','Despacho de Jose'),('X6_17',17,NULL,'22','18:00','Despacho de Mariam'),('X6_18',18,NULL,'22','18:00','Despacho de Pablo'),('X6_19',19,NULL,'22','18:00','Despacho de Moises'),('X6_2',2,NULL,'22','18:00','Despacho de Victor'),('X6_20',20,NULL,'22','18:00','Despacho de Lucia'),('X6_21',21,NULL,'22','18:00','Despacho de Lorena'),('X6_22',22,NULL,'22','18:00','Despacho de Fernando'),('X6_3',3,NULL,'22','18:00','Despacho de Luciano'),('X6_4',4,NULL,'22','18:00','Despacho de Rigoberto'),('X6_5',5,NULL,'22','18:00','Despacho de Marta'),('X6_6',6,NULL,'22','18:00','Despacho de Sonia'),('X6_7',7,NULL,'22','18:00','Despacho de Francisco'),('X6_8',8,NULL,'22','18:00','Despacho de Marco'),('X6_9',9,NULL,'22','18:00','Despacho de Guillermo'),('X7_1',1,NULL,'22','19:00','Despacho de Jon'),('X7_10',10,NULL,'22','19:00','Despacho de Laura'),('X7_11',11,NULL,'22','19:00','Despacho de Ramon'),('X7_12',12,NULL,'22','19:00','Despacho de David'),('X7_13',13,NULL,'22','19:00','Despacho de Lucia'),('X7_14',14,NULL,'22','19:00','Despacho de Maria'),('X7_15',15,NULL,'22','19:00','Despacho de Rosa'),('X7_16',16,NULL,'22','19:00','Despacho de Jose'),('X7_17',17,NULL,'22','19:00','Despacho de Mariam'),('X7_18',18,NULL,'22','19:00','Despacho de Pablo'),('X7_19',19,NULL,'22','19:00','Despacho de Moises'),('X7_2',2,NULL,'22','19:00','Despacho de Victor'),('X7_20',20,NULL,'22','19:00','Despacho de Lucia'),('X7_21',21,NULL,'22','19:00','Despacho de Lorena'),('X7_22',22,NULL,'22','19:00','Despacho de Fernando'),('X7_3',3,NULL,'22','19:00','Despacho de Luciano'),('X7_4',4,NULL,'22','19:00','Despacho de Rigoberto'),('X7_5',5,NULL,'22','19:00','Despacho de Marta'),('X7_6',6,NULL,'22','19:00','Despacho de Sonia'),('X7_7',7,NULL,'22','19:00','Despacho de Francisco'),('X7_8',8,NULL,'22','19:00','Despacho de Marco'),('X7_9',9,NULL,'22','19:00','Despacho de Guillermo');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `acronime` varchar(5) DEFAULT NULL,
  `description_course` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Desarrollo de aplicaciones Multiplataforma','DAM','La competencia general de este título consiste en desarrollar, implantar, documentar y mantener aplicaciones informáticas multiplataforma, utilizando tecnologías y entornos de desarrollo específicos, garantizando el acceso a los datos de forma segura y cumpliendo los criterios de «usabilidad» y calidad exigidas en los estándares establecidos.'),(2,'Desarrollo de Aplicaciones Web','DAW','La competencia general de este título consiste en desarrollar, implantar, y mantener aplicaciones web, con independencia del modelo empleado y utilizando tecnologías específicas, garantizando el acceso a los datos de forma segura y cumpliendo los criterios de accesibilidad, usabilidad y calidad exigidas en los estándares establecidos.'),(3,'Administración de sistemas informáticos y redes','ASIR','La competencia general de este título consiste en instalar, configurar y mantener sistemas microinformáticos, aislados o en red, así como redes locales en pequeños entornos, asegurando su funcionalidad y aplicando los protocolos de calidad, seguridad y respeto al medio ambiente establecidos.');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_subject`
--

DROP TABLE IF EXISTS `course_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_subject` (
  `course_id` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`subject_id`),
  KEY `foreign_key_idSubject` (`subject_id`),
  CONSTRAINT `foreign_key_idCourse` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `foreign_key_idSubject` FOREIGN KEY (`subject_id`) REFERENCES `_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_subject`
--

LOCK TABLES `course_subject` WRITE;
/*!40000 ALTER TABLE `course_subject` DISABLE KEYS */;
INSERT INTO `course_subject` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(3,3),(1,4),(2,4),(3,4),(1,5),(2,5),(1,6),(2,6),(3,6),(3,9),(3,10),(3,11),(1,12),(2,12),(3,12);
/*!40000 ALTER TABLE `course_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials`
--

LOCK TABLES `credentials` WRITE;
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` VALUES (1,'jon@gmail.com','$2a$10$JgcLiA0DonrhMyyQj3w.U.rKCsGPFLntCBzguLpJDH6nvRek1I5Le'),(2,'victorCesur@cesurformacion.com','$2a$10$rqjQSe7URnzLlnO/tcZj.eS8Z3rnBzgu0dqsbaSkFo/4GDNQln76m'),(3,'luciano@yahoo.com','$2a$10$4ba1di0N6oXENsPpogAYAuicQSgSCmRWOCB/EIcQw8JXEuaF7PlBK'),(4,'rigobert@yahoo.es','$2a$10$bFfvVh9xq8bpC/HVmsq2ael7f9BsOoVPhIgsJ9voewhw7vL1Athpa'),(5,'Marta@hotmail.com','$2a$10$0qOvOB897HwUHZDrzsxX4ORsBfT0dNg6g.VmgeWvh9wI2ArL.zvRa'),(6,'soniaMon@gmail.com','$2a$10$Fjhzw1Wjt7nd9hqMrete1OTOtFuP1lLKphsrfWVOv4ANP31RChUi.'),(7,'Francisco@gmail.com','$2a$10$JPLdWVEyoNhQhlaU8MsNvOmIVPgVuvv4W0TA6f5.jKihNpGK8knXq'),(8,'marco.rivera@gmail.com','$2a$10$GVhNjO9qMhDGPg.m6A6K7.wgrXKR8kpSUvs2.Ts/EVF.mTO6UoGfe'),(9,'guille@yahoo.es','$2a$10$rkNrx7AVnB1HgEcFRhyAU.FQ/wmjOlbyk13WoSWzC5DyAMBcwGaDK'),(10,'laura.rodriguez@outlook.com','$2a$10$nsFn7WlAVWYk.J400a3MqeX3fDCNRgyWPAlPzYXswRFAxzQJVlYD6'),(11,'ramon@gmail.es','$2a$10$CJqxxqcjHTc77ZSKhtUUqeyoXbiaZQMB9dzZvcDbnZmEt/XNS3L3u'),(12,'david.torres@gmail.com','$2a$10$yVG6hkHnfxX0CjCA1ACtmudpqvxvAdESHWWIT5AokGkmhWOBUWFsm'),(13,'lucia@yahoo.es','$2a$10$0cfXiCE/1Sr5vBoVoQSDauWq8ZrvjBaE/DBSpu5NCWhgCIxfd1msC'),(14,'maria.garcia@hotmail.com','$2a$10$O/gWDiKLyOxChwoulVT.Q.Ad40wWtT5UwkjZGuy7gHB0tusRR5riK'),(15,'rrcastro@hotmail.com','$2a$10$gHN0/ptYuLs2Z3HfUhL43uZNBiHze1sqmgdjoKxb4c3RKoI3uU0Wi'),(16,'jose.martin@outlook.com','$2a$10$bUXDAbjmLDw292XWDiLbwueyzMMux/pHG2uOaUm2FkfQvyIMklFxm'),(17,'mariam@cpifp.io','$2a$10$TPGXBFxX8rCDQlIYHIpGTuVuJEZCNx.o1LjUrYLeUHGwTXsCnLPqG'),(18,'pablo.hernandez@gmail.com','$2a$10$zFk9uXUsqxSGzX.7KXvI/.XYYbNSvdSqvwAgWbY1nsEbM/05zCbh2'),(19,'moi@cpifp.io','$2a$10$Facmvf0RDUxts/zze6Neqe7GCjdWvAxJ5IgcfYKGn1ulgNKvAVtdK'),(20,'lucia.diaz@yahoo.com','$2a$10$b133JhplwK0lG6z7Z3BOJeN.XnzJiLjj.Z1EGHPIvE8EMm41vmooO'),(21,'lorenaDoc@gmail.com','$2a$10$6tYROejoBQbaj5yO7NnxUe96iPfQ7wl2VWf/q3QyMeNaeYoezCEMW'),(22,'fernando.santos@hotmail.com','$2a$10$iGfUJDCvZF8SsrcrCNtAdudRCR0RaJibromJ.7SQDWTCfyaqq8u7C'),(23,'Laura@gmail.com','$2a$10$GuYsBZYvEDr18OapLN58WuqjriUtoz/SIiB4n3hhxUCWShszjvYCu'),(24,'Tania@gmail.com','$2a$10$CQE2rHI0O21C2AOD3nsi/uYBfIDidxajgGFnnqd3yzrDhsOmcLuCe'),(25,'js@gmail.com','$2a$10$CFEKVZsA2WwR0N/7um1vGerOdAtvTVfElnB5xeHOYCwHKnJsy3Krq'),(26,'jgc@gmail.com','$2a$10$jx8meGYE32t7SzAMOER/n.zx4tcoDbTALveYPlLpKlnIBj/mbis8.'),(27,'cvl@gmail.com','$2a$10$XQfH4ACrVCCyMxdR0nDDluu0kaoXthcnZBgaZdKLqbolKnmuM0Ck6'),(28,'fsh@gmail.com','$2a$10$SfBM2aHof3TTenFW9UYpDu8emOfnI3WHIJtxZQHZAK52t7IdRV5A6'),(29,'ppp@gmail.com','$2a$10$jw03h3AU7xx3Ko6KOkZ3Oumei2cI5scbO48t7bbHqVOORpwpiWaqW'),(30,'rss@gmail.com','$2a$10$5OG4zPm67kSxjt7XVMQAweg5XDlHAmzRhCqFTn.GcSCOX34OglHRS'),(31,'grs@gmail.com','$2a$10$9a788fBTr/PToMfIm2wkyu6xcP2SlFDxcm/KCk4ZYlHjK9xL67Va6'),(32,'vrs@gmail.com','$2a$10$D92Jh9LM4R4xBtNkt2psKuVVKp0wOgZRfBXmT0mcxn59ksdXPeoN.'),(33,'jaa@gmail.com','$2a$10$M75.kGWhu3n1AH1EWP43ieLCEJd3W3gzbPRE1VUMpdyCRzgmYVxMi'),(34,'chc@hotmail.com','$2a$10$NoLQFMZXc2YnGm42/LEOAeHuC0owp/U/Whr2sTWo6LhiYgyLsQMim'),(35,'vag@gmail.com','$2a$10$VVk5CkvDoW9RkXZ6ChkvGekqTNjrUMYZMpfq9TLB5T9Qtfp0Ywozm'),(36,'yaa@gmail.com','$2a$10$oVetW625f4sPxcoQzKxem.z9pl/vG69Kn.9Cjz.Orhhx1WKN5zODO'),(37,'yepe@gmail.com','$2a$10$xGT23hkCD3azLFDUy1QqzuZ9eb9DO2yzDx38Kz4UG83/J8kSrrnG2'),(38,'fisicoGOD@gmail.com','$2a$10$I1/5v17rH2RtwXHvgvULtuxhnxMEXLEVLaixAAEdWiCBTjsarc1nq');
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `teacher` int NOT NULL,
  `student` int NOT NULL,
  `subject_id` int NOT NULL,
  `grade` decimal(4,2) DEFAULT NULL,
  `grade_description` varchar(50) DEFAULT NULL,
  KEY `foreign_key_userTypeTeacher` (`teacher`),
  KEY `foreign_key_userTypeStudent` (`student`),
  CONSTRAINT `foreign_key_userTypeStudent` FOREIGN KEY (`student`) REFERENCES `user_obj` (`id`),
  CONSTRAINT `foreign_key_userTypeTeacher` FOREIGN KEY (`teacher`) REFERENCES `user_obj` (`id`),
  CONSTRAINT `check_grade` CHECK (((`grade` >= 0) and (`grade` <= 10)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,25,1,NULL,NULL),(1,25,2,NULL,NULL),(1,25,3,NULL,NULL),(1,25,4,NULL,NULL),(1,25,5,NULL,NULL),(1,25,6,NULL,NULL),(1,25,12,NULL,NULL),(2,25,1,NULL,NULL),(2,25,2,NULL,NULL),(2,25,3,NULL,NULL),(2,25,4,NULL,NULL),(2,25,5,NULL,NULL),(2,25,6,NULL,NULL),(2,25,12,NULL,NULL),(1,26,1,NULL,NULL),(1,26,2,NULL,NULL),(1,26,3,NULL,NULL),(1,26,4,NULL,NULL),(1,26,5,NULL,NULL),(1,26,6,NULL,NULL),(1,26,12,NULL,NULL),(2,26,1,NULL,NULL),(2,26,2,NULL,NULL),(2,26,3,NULL,NULL),(2,26,4,NULL,NULL),(2,26,5,NULL,NULL),(2,26,6,NULL,NULL),(2,26,12,NULL,NULL),(3,27,1,NULL,NULL),(3,27,2,NULL,NULL),(3,27,3,NULL,NULL),(3,27,4,NULL,NULL),(3,27,5,NULL,NULL),(3,27,6,NULL,NULL),(3,27,12,NULL,NULL),(4,27,1,NULL,NULL),(4,27,2,NULL,NULL),(4,27,3,NULL,NULL),(4,27,4,NULL,NULL),(4,27,5,NULL,NULL),(4,27,6,NULL,NULL),(4,27,12,NULL,NULL),(1,28,1,NULL,NULL),(1,28,2,NULL,NULL),(1,28,3,NULL,NULL),(1,28,4,NULL,NULL),(1,28,5,NULL,NULL),(1,28,6,NULL,NULL),(1,28,12,NULL,NULL),(2,28,1,NULL,NULL),(2,28,2,NULL,NULL),(2,28,3,NULL,NULL),(2,28,4,NULL,NULL),(2,28,5,NULL,NULL),(2,28,6,NULL,NULL),(2,28,12,NULL,NULL),(5,29,3,NULL,NULL),(5,29,4,NULL,NULL),(5,29,6,NULL,NULL),(5,29,9,NULL,NULL),(5,29,10,NULL,NULL),(5,29,11,NULL,NULL),(5,29,12,NULL,NULL),(6,29,3,NULL,NULL),(6,29,4,NULL,NULL),(6,29,6,NULL,NULL),(6,29,9,NULL,NULL),(6,29,10,NULL,NULL),(6,29,11,NULL,NULL),(6,29,12,NULL,NULL),(7,30,1,NULL,NULL),(7,30,2,NULL,NULL),(7,30,3,NULL,NULL),(7,30,4,NULL,NULL),(7,30,5,NULL,NULL),(7,30,6,NULL,NULL),(7,30,12,NULL,NULL),(8,30,1,NULL,NULL),(8,30,2,NULL,NULL),(8,30,3,NULL,NULL),(8,30,4,NULL,NULL),(8,30,5,NULL,NULL),(8,30,6,NULL,NULL),(8,30,12,NULL,NULL),(9,31,1,NULL,NULL),(9,31,2,NULL,NULL),(9,31,3,NULL,NULL),(9,31,4,NULL,NULL),(9,31,5,NULL,NULL),(9,31,6,NULL,NULL),(9,31,12,NULL,NULL),(10,31,1,NULL,NULL),(10,31,2,NULL,NULL),(10,31,3,NULL,NULL),(10,31,4,NULL,NULL),(10,31,5,NULL,NULL),(10,31,6,NULL,NULL),(10,31,12,NULL,NULL),(11,32,1,NULL,NULL),(11,32,2,NULL,NULL),(11,32,3,NULL,NULL),(11,32,4,NULL,NULL),(11,32,5,NULL,NULL),(11,32,6,NULL,NULL),(11,32,12,NULL,NULL),(12,32,1,NULL,NULL),(12,32,2,NULL,NULL),(12,32,3,NULL,NULL),(12,32,4,NULL,NULL),(12,32,5,NULL,NULL),(12,32,6,NULL,NULL),(12,32,12,NULL,NULL),(11,33,1,NULL,NULL),(11,33,2,NULL,NULL),(11,33,3,NULL,NULL),(11,33,4,NULL,NULL),(11,33,5,NULL,NULL),(11,33,6,NULL,NULL),(11,33,12,NULL,NULL),(12,33,1,NULL,NULL),(12,33,2,NULL,NULL),(12,33,3,NULL,NULL),(12,33,4,NULL,NULL),(12,33,5,NULL,NULL),(12,33,6,NULL,NULL),(12,33,12,NULL,NULL),(19,34,3,NULL,NULL),(19,34,4,NULL,NULL),(19,34,6,NULL,NULL),(19,34,9,NULL,NULL),(19,34,10,NULL,NULL),(19,34,11,NULL,NULL),(19,34,12,NULL,NULL),(20,34,3,NULL,NULL),(20,34,4,NULL,NULL),(20,34,6,NULL,NULL),(20,34,9,NULL,NULL),(20,34,10,NULL,NULL),(20,34,11,NULL,NULL),(20,34,12,NULL,NULL),(19,35,3,NULL,NULL),(19,35,4,NULL,NULL),(19,35,6,NULL,NULL),(19,35,9,NULL,NULL),(19,35,10,NULL,NULL),(19,35,11,NULL,NULL),(19,35,12,NULL,NULL),(20,35,3,NULL,NULL),(20,35,4,NULL,NULL),(20,35,6,NULL,NULL),(20,35,9,NULL,NULL),(20,35,10,NULL,NULL),(20,35,11,NULL,NULL),(20,35,12,NULL,NULL),(21,36,1,NULL,NULL),(21,36,2,NULL,NULL),(21,36,3,NULL,NULL),(21,36,4,NULL,NULL),(21,36,5,NULL,NULL),(21,36,6,NULL,NULL),(21,36,12,NULL,NULL),(22,36,1,NULL,NULL),(22,36,2,NULL,NULL),(22,36,3,NULL,NULL),(22,36,4,NULL,NULL),(22,36,5,NULL,NULL),(22,36,6,NULL,NULL),(22,36,12,NULL,NULL),(21,37,1,NULL,NULL),(21,37,2,NULL,NULL),(21,37,3,NULL,NULL),(21,37,4,NULL,NULL),(21,37,5,NULL,NULL),(21,37,6,NULL,NULL),(21,37,12,NULL,NULL),(22,37,1,NULL,NULL),(22,37,2,NULL,NULL),(22,37,3,NULL,NULL),(22,37,4,NULL,NULL),(22,37,5,NULL,NULL),(22,37,6,NULL,NULL),(22,37,12,NULL,NULL),(7,38,1,NULL,NULL),(7,38,2,NULL,NULL),(7,38,3,NULL,NULL),(7,38,4,NULL,NULL),(7,38,5,NULL,NULL),(7,38,6,NULL,NULL),(7,38,12,NULL,NULL),(8,38,1,NULL,NULL),(8,38,2,NULL,NULL),(8,38,3,NULL,NULL),(8,38,4,NULL,NULL),(8,38,5,NULL,NULL),(8,38,6,NULL,NULL),(8,38,12,NULL,NULL);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship`
--

DROP TABLE IF EXISTS `internship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship` (
  `tutor` int DEFAULT NULL,
  `student` int DEFAULT NULL,
  `grade` decimal(4,2) DEFAULT NULL,
  KEY `fk_prac_tutor` (`tutor`),
  KEY `fk_prac_student` (`student`),
  CONSTRAINT `fk_prac_student` FOREIGN KEY (`student`) REFERENCES `user_obj` (`id`),
  CONSTRAINT `fk_prac_tutor` FOREIGN KEY (`tutor`) REFERENCES `user_obj` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship`
--

LOCK TABLES `internship` WRITE;
/*!40000 ALTER TABLE `internship` DISABLE KEYS */;
INSERT INTO `internship` VALUES (23,25,NULL),(24,26,NULL),(23,27,NULL),(24,28,NULL),(23,29,NULL),(24,30,NULL),(23,31,NULL),(24,32,NULL),(23,33,NULL),(24,34,NULL),(23,35,NULL),(24,36,NULL),(23,37,NULL),(24,38,NULL);
/*!40000 ALTER TABLE `internship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `caption` longtext,
  `content` longtext NOT NULL,
  `img_url` longtext,
  `caption_img` longtext,
  `date_new` timestamp NULL DEFAULT NULL,
  `id_school` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreing_key_news` (`id_school`),
  CONSTRAINT `foreing_key_news` FOREIGN KEY (`id_school`) REFERENCES `school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Cesur detecta una alta demanda de formación en informática','Son alumnos del ciclo de grado Superior en Desarrollo de Aplicaciones Multiplataforma','Cesur ha detectado una alta demanda de formación en líneas relacionadas con la informática.<br/><br/>\n    Hace unos días se celebraba el día internacional de la informática, concretamente el 9 de diciembre, en honor al nacimiento de Grace Murray Hopper, pionera en el mundo de las Ciencias de la Computación. La informática ha influenciado en el avance de la transmisión de datos e información, manteniendo a personas de cualquier parte del mundo conectadas entre sí.<br/><br/>\n    Los estudios en torno a la informática son de los más demandados no solo a nivel académico, sino también en el ámbito laboral debido a las nuevas tecnologías que están en auge y en constante evolución. De hecho, la Informática es la tercera familia profesional con más estudiantes matriculados, después de Sanidad, y Administración y Gestión, según las estadísticas del alumnado de FP del curso 2021-2022, publicadas recientemente por el MEFP.<br/><br/>\n    El Desarrollador de Aplicaciones Web (DAW) se destaca como un experto en la creación y optimización de aplicaciones informáticas específicamente diseñadas para entornos web. Este profesional, ya sea como empleado en empresas públicas o privadas o como trabajador independiente, se especializa en programación web, abordando lenguajes como PHP, JavaScript, entre otros.<br/><br/>\n    Desarrollo de Aplicaciones Multiplataforma (DAM) abarca una gama más amplia de plataformas, incluyendo aplicaciones para dispositivos móviles y ordenadores. Aunque comparten una base común, DAM se enfoca más intensamente en el desarrollo de aplicaciones móviles a partir del segundo año de formación, utilizando herramientas específicas y continuando con el uso de JAVA.','../images/imagenNoticiaCesur.png','Centro de Cesur. / CESUR','2024-05-29 18:55:47',1),(2,'Estudiante del IES Pablo Picasso, segundos clasificados en un campeonato de talento empresarial','Los estudiantes tienen la posibilidad de especializarse en disciplinas altamente demandadas, como ciberseguridad y \"cloud computing\"','Tres estudiantes del instituto Pablo Picasso de la capital han quedado segundos clasificados en un campeonato sobre talento empresarial celebrado en Madrid. Se trata de los jóvenes Javier de la Torre, Jonathan Ruiz y Pablo Jiménez, que han participado en la II edición de Business Talent, un campeonato educativo organizado por Herbalife Nutrition y Praxis MMT. Son alumnos del ciclo Superior de Desarrollo de Aplicaciones Multiplataforma y durante el curso han estado desarrollando en clase con su profesor de Empresa e Iniciativa Emprendedora David Nicolás Ros este proyecto que ha merecido un segundo premio.<br/><br/>\n    En primer lugar, han resultado ganadores Iria Piñeiro, Ismael Martínez, Jorge Fernández y Sara Gómez, alumnos del IES A Guía de Vigo; mientras que en tercer puesto han quedado tres alumnos de la Universidad de Vigo.<br/><br/>\n    El profesor David Nicolás Ros explicó que este curso incluyó el simulador empresarial de Business Talent para hacer la materia de Empresa «lo más práctica posible». Y encontró en este grupo de alumnos, que se denominaron a sí mismos RSS, una muy buena disposición a trabajar en el proyecto. Después de pasar por octavos, cuartos y semifinales se clasificaron para la final nacional. Han quedado segundo de España, pero campeones de su grupo de simulación. El profesor destacó que, incluso cuando estaban en las prácticas de empresa, «seguían tomándose el trabajo muy en serio».','../images/imagenNoticiaPabloPicasso1.png','De izquierda a derecha, los alumnos Jonathan Ruiz Oliva, Pablo Jiménez Aguayo y Javier de la Torre Barranco, con su profesor de Empresa e Iniciativa Emprendedora David Nicolás Ros. SUR','2024-05-29 18:55:47',2),(3,'Juan rescata a Fernando de la mafia del IES Belén','Un acto heróico que marcó un antes y un después en los estudiantes','Juan Esteban Arboleda, un estudiante del Ciclo de Grado Superior en Diseño de Aplicaciones Multiplataforma ha realizado una azaña inolvidable para todos los estudiantes y personal del centro.<br/><br/>\n    Su compañero de clase, Fernando, se vio forzado hace unos años a enrolarse en la mafia más peligrosa de la región, la temida mafia del IES Belén. Este, ahogado por las deudas y en acto de desespero, decidió ir y pedir ayuda a estos.<br/><br/>\n    Para su mala suerte, estos tenían otros planes para él hasta que su compañero Juan, con el corazón en la mano, salvó a su amigo de las garras de la mafia.','../images/imagenNoticiaBelen1.png','Juan, icono actual del IES Belén','2024-05-29 18:55:47',3),(4,'Charla de Ciberseguridad','Son alumnos del master de ciberseguridad explicando a sus compañeros de FP','Como fruto del grupo de trabajo del CEP de Málaga titulado «PROTGT: Por un mundo más ciberseguro»  que ha sido conformado por profesorado del curso de CE en Ciberseguridad del CPIFP Alan Turing, la Residencia Escolar Andalucía y el IES La Orden se ha celebrado en nuestro Centro el Taller de Concienciación en Ciberseguridad titulado «(In)seguridad en nuestros datos» que ha sido preparado e impartido en dos turnos por nuestro alumnado del CE en Ciberseguridad.<br/><br/>\n    Asistieron más de 100 alumnos/as repartidos entre los cursos de 1º DAM, 1º DAW y 1º ASIR de nuestro centro así como alumnado de la etapa de formación profesional de la Residencia Escolar Andalucía y del IES La Orden.<br/><br/>\n    El alumnado asistente pudo comprobar de manera práctica e interactiva la relativa facilidad con la que los atacantes pueden hacerse con nuestros datos, así como herramientas para evitarlo basándose principalmente en el uso de hábitos ciberseguros.<br/><br/>\n    Nuestros visitantes de Huelva que eran en su mayoría del Ciclo Superior de Integración Social pudieron contar también con una pequeña charla a cargo de Inmaculada Reina, Marta Ariza y Francisco Javier Alcántara del CPFPE Remedios Rojo con las posibilidades e Itinerarios formativos que ofrece Empleo para ayudar a personas en situaciones desfavorecidas.','../images/noticiaAlanTuring.jpg','','2024-05-29 18:55:47',4),(5,'Semana Ignaciana y Fiestas Patronales 2024','Semana de fiesta llena de juegos, concursos y eventos especiales','Un año hicimos coincidir en fecha la Semana Ignaciana y las que son ya nuestras 49ª Fiestas Patronales, cercanos a la fiesta de San José. Así se está haciendo desde el COVID. En esta ocasión, a nivel de EDUCSI se ha vuelto a pedir la celebración de la Semana Ignaciana en toda España desde el 11 de marzo.<br/><br/>\n    Por ello, como eje central e importante estos días para mostrar nuestra identidad, desde Pastoral se dispondrá de una Carpa Ignaciana donde poder conocer la vida de San Ignacio de una manera lúdica. Se complementarán con actividades festivas desde el martes 12 con el pregón de bachillerato y las prolongamos hasta el viernes día 15.<br/><br/>\n    El martes 12 a las 13:30h se realiza el pregón de Bachillerato. Y el miércoles a las 11h se realizará una introducción a las Fiestas Patronales y Semana Ignaciana por parte del profesor jesuita del centro Crisanto Abeso y el coordinador de Pastoral, Antonio J. Reyes antes de vivir el cañonazo de inicio de los días de fiesta.','../images/sanJoseNoticia.jpg','','2024-05-29 18:55:47',5),(6,'El Instituto Celebra su Primer Festival de Innovación y Tecnología','Un evento que acercó a los alumnos a las últimas novedades tecnológicas.','El Instituto CESUR se convirtió en el epicentro de la innovación y la tecnología este fin de semana, al celebrar su primer Festival de Innovación y Tecnología. Este evento, que reunió a estudiantes, profesores y expertos del sector, fue una plataforma vibrante para exhibir proyectos de vanguardia y promover la educación STEM (Ciencia, Tecnología, Ingeniería y Matemáticas).<br/><br/>\n    El torneo, organizado por el Departamento de Educación Física en colaboración con el Consejo de Estudiantes, contó con más de 50 participantes de todos los niveles académicos. Los competidores se enfrentaron en diversas categorías que incluían desde trucos básicos hasta presentaciones coreografiadas que deslumbraron a la audiencia.<br/><br/>\n    La gran final, celebrada en el gimnasio del instituto, fue un verdadero espectáculo. Los finalistas, seleccionados tras intensas rondas preliminares, demostraron un dominio impresionante del trompo, realizando trucos como el \"volcán\", el \"columpio\" y el \"caminante\". El jurado, compuesto por profesores y exalumnos expertos en el arte del trompo, tuvo una difícil tarea para decidir el ganador.','https://th.bing.com/th/id/OIP.WG6EV6fMekJbGhlYQup4-wHaEH?rs=1&pid=ImgDetMain','Evento tecnológico','2024-05-29 18:55:47',1),(7,'Torneo de Trompos Revoluciona el Instituto','Una jornada llena de sorpresas, expectación y muchos premios','El Instituto Pablo Picasso fue el escenario de un evento sin precedentes el pasado fin de semana, cuando se llevó a cabo el primer Torneo de Trompos de la institución. La competición, que atrajo a estudiantes, padres y profesores por igual, se convirtió en una celebración de destreza, creatividad y espíritu comunitario.<br/><br/>\n    El festival contó con una amplia variedad de actividades, incluyendo exposiciones de proyectos estudiantiles, competencias tecnológicas y talleres interactivos. Más de 30 proyectos fueron presentados por los estudiantes de diferentes niveles, destacando creaciones como robots autónomos, aplicaciones móviles para la gestión sostenible de recursos y prototipos de energías renovables.<br/><br/>\n    La competencia de robótica fue uno de los puntos culminantes del festival. Equipos de estudiantes compitieron en desafíos que pusieron a prueba sus habilidades en programación y diseño mecánico.','https://th.bing.com/th/id/OIP.GBafUQycOAEt34nzbt5BoQHaEH?rs=1&pid=ImgDetMain','Ganador del torneo','2024-05-29 18:55:47',2),(8,'Matanza en el IES Belen.','Un individuo deja a 10 muertos y otros 5 heridos de gravedad durante un examen','El dia 27 de mayo de 2024, mientras los alumnos estaban realizando un examen de programacion entre las doce y las tres de la tarde de dicho dia, un individuo de identidad desconocida se presentó en el aula y empezó a masacrar a los alumnos para luego darse a la fuga. Durante su breve intervención en el centro, muchos testigos de clases contiguas alegan haber escuchado a una voz femenina gritando: \"Si no habeis practicado los mapas, no lo vais a poder sacar\".<br/><br/>\n    Tras preguntar a varios de los presentes durante dicho acto se ha conseguido la descripción del fugado. Una mujer de entre treinta y cuarenta años con pelo negro y gafas rojas. Se ruega que si se avista a esta persona se avise a las autoridades.','../images/imagenNoticiaBelen2.jpg','','2024-05-29 18:55:47',3),(9,'El Instituto Alan Turing Inaugura un Laboratorio de Inteligencia Artificial de Última Generación','Un proyecto que marca un antes y un despues en el desarrollo de IAs en nuestro país','El Instituto Alan Turing ha dado un importante paso hacia el futuro de la educación tecnológica con la inauguración de su nuevo Laboratorio de Inteligencia Artificial (IA) de última generación. Este proyecto, que ha sido posible gracias a una colaboración con varias empresas tecnológicas líderes, tiene como objetivo proporcionar a los estudiantes las herramientas y el conocimiento necesarios para destacarse en el campo de la IA y la ciencia de datos.<br/><br/>\n    El nuevo laboratorio está equipado con tecnología de punta, incluyendo servidores de alto rendimiento, estaciones de trabajo avanzadas y software especializado en aprendizaje automático y análisis de datos. Los estudiantes ahora tienen acceso a recursos que les permiten realizar proyectos complejos, desde el desarrollo de algoritmos de aprendizaje profundo hasta la creación de aplicaciones de IA prácticas.','https://th.bing.com/th/id/OIP.ec6cf0uqubzwatGdFm8SKAHaEE?rs=1&pid=ImgDetMain','','2024-05-29 18:55:47',4),(10,'El Instituto San José Lanza un Programa Pionero de Sostenibilidad Ambiental','Una iniciativa para acercar a los alumnos hacia el problema medioambiental actual','El Instituto San José ha dado un paso significativo hacia la educación ambiental con el lanzamiento de su innovador Programa de Sostenibilidad Ambiental. Este proyecto, que involucra a toda la comunidad educativa, tiene como objetivo concienciar a los estudiantes sobre la importancia de la conservación del medio ambiente y fomentar prácticas sostenibles dentro y fuera del aula.<br/><br/>\n    El programa incluye una serie de iniciativas que abarcan desde la creación de un huerto escolar ecológico hasta la implementación de un sistema de reciclaje en todas las instalaciones del instituto. Los estudiantes participan activamente en talleres sobre compostaje, reducción de residuos y energía renovable, impartidos por expertos en medio ambiente.<br/><br/>\n    Uno de los proyectos más destacados es la instalación de paneles solares en el techo del edificio principal, lo que permitirá al instituto generar una parte de su energía de manera limpia y sostenible. Además, se han colocado puntos de recarga para bicicletas eléctricas en el aparcamiento del centro, fomentando el uso de medios de transporte alternativos y sostenibles.','https://www.rosario3.com/__export/1629172974999/sites/rosario3/img/2021/08/17/aula_sustentable_def.jpg_1192065467.jpg','','2024-05-29 18:55:47',5);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_school`
--

DROP TABLE IF EXISTS `news_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_school` (
  `id_school` int NOT NULL,
  `id_new` int NOT NULL,
  PRIMARY KEY (`id_school`,`id_new`),
  KEY `foreign_key_idnew` (`id_new`),
  CONSTRAINT `foreign_key_idnew` FOREIGN KEY (`id_new`) REFERENCES `news` (`id`),
  CONSTRAINT `foreign_key_new_school` FOREIGN KEY (`id_school`) REFERENCES `school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_school`
--

LOCK TABLES `news_school` WRITE;
/*!40000 ALTER TABLE `news_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) NOT NULL,
  `tel` char(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `secretarySchedule` varchar(40) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  `mapLink` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'Cesur Málaga Este','+34952598720','info@cesurformacion.com','08:00-14:00','Málaga','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10757.374130614628!2d-4.372041717464043!3d36.71808277803187!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd7259120bfc4db3%3A0xec0ecedd8dc61902!2sCESUR%20M%C3%A1laga%20Este%20Formaci%C3%B3n%20Profesional!5e0!3m2!1ses!2ses!4v1715334512514!5m2!1ses!2ses'),(2,'IES Pablo Picasso','+34951298666','info@fpiespablopicasso.es','8:30-14:30','Málaga','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6395.717928363966!2d-4.455162806420868!3d36.725948300000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f70c3d574e37%3A0x67343146876c734b!2sIES%20Pablo%20Picasso!5e0!3m2!1ses!2ses!4v1715335018709!5m2!1ses!2ses'),(3,'IES Belén','+34951298425','29010201.edu@juntadeandalucia.es','08:15-14:45','Málaga','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3199.124902411609!2d-4.459761523439527!3d36.69553637227712!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f9dee2ea3131%3A0xe00a7d745fb8b2e3!2sIES%20Bel%C3%A9n!5e0!3m2!1ses!2ses!4v1715335056310!5m2!1ses!2ses'),(4,'CPIFP Alan Turing','+34951040449','29020231.info@g.educaand.es','09:00-14:00','Málaga','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3197.2394272377824!2d-4.554430616275409!3d36.740823696739334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f10963ce0f3d%3A0x310ae7d4bb2e8f7b!2sCPIFP%20Alan%20Turing!5e0!3m2!1ses!2ses!4v1715335096355!5m2!1ses!2ses'),(5,'IES San José','+34952305100','sanjose@fundacionloyola.es','09:00-13:00','Málaga','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60854.997797710945!2d-4.459410649332534!3d36.715431468654785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f711c56e8bed%3A0x6de2361e88593aeb!2sColegio%20Diocesano%20San%20Jos%C3%A9%20Obrero!5e0!3m2!1ses!2ses!4v1715335137121!5m2!1ses!2ses');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_course`
--

DROP TABLE IF EXISTS `school_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_course` (
  `school_id` int NOT NULL,
  `course_id` int NOT NULL,
  KEY `fk_school_course_school_id` (`school_id`),
  KEY `fk_school_course_course_id` (`course_id`),
  CONSTRAINT `fk_school_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `fk_school_course_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_course`
--

LOCK TABLES `school_course` WRITE;
/*!40000 ALTER TABLE `school_course` DISABLE KEYS */;
INSERT INTO `school_course` VALUES (1,1),(1,2),(1,3),(2,1),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1);
/*!40000 ALTER TABLE `school_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subject`
--

DROP TABLE IF EXISTS `teacher_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_subject` (
  `user_id` int NOT NULL,
  `subject_id` int NOT NULL,
  KEY `fk_user_id_teacher_subject` (`user_id`),
  KEY `fk_subject_id_teacher_subject` (`subject_id`),
  CONSTRAINT `fk_subject_id_teacher_subject` FOREIGN KEY (`subject_id`) REFERENCES `_subject` (`id`),
  CONSTRAINT `fk_user_id_teacher_subject` FOREIGN KEY (`user_id`) REFERENCES `user_obj` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subject`
--

LOCK TABLES `teacher_subject` WRITE;
/*!40000 ALTER TABLE `teacher_subject` DISABLE KEYS */;
INSERT INTO `teacher_subject` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,3),(4,4),(4,5),(4,6),(5,3),(5,4),(5,6),(6,9),(6,10),(6,11),(7,1),(7,2),(7,3),(8,4),(8,5),(8,6),(9,1),(9,2),(9,3),(10,4),(10,5),(10,6),(11,1),(11,2),(11,3),(12,4),(12,5),(12,6),(13,3),(13,4),(13,6),(14,9),(14,10),(14,11),(15,1),(15,2),(15,3),(16,4),(16,5),(16,6),(17,1),(17,2),(17,3),(18,4),(18,5),(18,6),(19,3),(19,4),(19,6),(20,9),(20,10),(20,11),(21,1),(21,2),(21,3),(22,4),(22,5),(22,6);
/*!40000 ALTER TABLE `teacher_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_obj`
--

DROP TABLE IF EXISTS `user_obj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_obj` (
  `id` int NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_surname` varchar(255) NOT NULL,
  `birthDate` date NOT NULL,
  `dnie` char(9) NOT NULL,
  `user_type` varchar(3) DEFAULT '01',
  `school_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dnie` (`dnie`),
  KEY `foreign_key_course_id` (`course_id`),
  KEY `foreign_key_school_id` (`school_id`),
  CONSTRAINT `foreign_key_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `foreign_key_id` FOREIGN KEY (`id`) REFERENCES `credentials` (`id`),
  CONSTRAINT `foreign_key_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_obj`
--

LOCK TABLES `user_obj` WRITE;
/*!40000 ALTER TABLE `user_obj` DISABLE KEYS */;
INSERT INTO `user_obj` VALUES (1,'Jon','Garcia Gimenez','1985-04-29','83745924U','02',1,1),(2,'Victor','Rivaldo Azpilicueta','1986-10-21','Z7539006W','02',1,1),(3,'Luciano','Morentes Ruiz','1989-01-02','60566746H','02',1,2),(4,'Rigoberto','Velazquez Ruiz','1985-01-01','Z6740559T','02',1,2),(5,'Marta','Cardona Severo','1987-12-22','74475917P','02',1,3),(6,'Sonia','Montero Silvina','1983-12-22','61274427N','02',1,3),(7,'Francisco','Perez Trabuco','1982-11-12','98736410L','02',2,1),(8,'Marco','Rivera González','1990-05-23','51587689T','02',2,1),(9,'Guillermo','Huertas Romero','1990-05-01','47739814W','02',3,1),(10,'Laura','Rodríguez Sánchez','1992-11-05','15805637Z','02',3,1),(11,'Ramon','Pepito Porras','1991-05-01','X3873655H','02',3,2),(12,'David','Torres Ramírez','1983-02-28','50072435D','02',3,2),(13,'Lucia','Montiel Peña','1990-03-09','82335304L','02',3,3),(14,'Maria','García Fernández','1991-08-17','66927674C','02',3,3),(15,'Rosa','Rivas Castro','1985-05-01','75047168P','02',4,1),(16,'Jose','Martin Domínguez','1987-12-30','80427671Y','02',4,1),(17,'Mariam','Davila Rivas','1980-10-01','81851351D','02',4,2),(18,'Pablo','Hernández Jiménez','1994-06-10','34912595K','02',4,2),(19,'Moises','Navarro Peral','1985-05-01','45754439X','02',4,3),(20,'Lucia','Díaz Ruiz','1989-04-18','53021104D','02',4,3),(21,'Lorena','Montiel Frias','1987-03-19','68797512G','02',5,1),(22,'Fernando','Santos Morales','1986-09-25','27065670Y','02',5,1),(23,'Laura','Gasset Vargas','1990-04-23','12345678A','03',NULL,NULL),(24,'Tania','La Rubia Alvarez','1995-04-29','09876543D','03',NULL,NULL),(25,'John','Souls','2002-02-02','76638561P','01',1,1),(26,'Juanito','Garcia Jimenez','2002-02-02','07491898Q','01',1,1),(27,'Celia','Villalobos Lobos','2001-02-02','41222682N','01',1,2),(28,'Francisco ','Sanchez Hernandez','1992-02-02','52532320K','01',1,1),(29,'Pedro','Pedroz Pedrog','1995-02-02','68144624V','01',1,3),(30,'Roberto','Sanderson','1995-02-18','29254264N','01',2,1),(31,'Gracia','Rusharoot','1997-02-01','13685592V','01',3,1),(32,'Vida','Rishamon','1994-12-09','87553532F','01',3,2),(33,'Juan','Antonio','1995-12-02','06146078H','01',3,2),(34,'Costa','Hernandez Crucero','1994-12-02','68606121L','01',4,3),(35,'Victoria ','Antigona','2003-02-01','20252481S','01',4,3),(36,'Yesus','Albert','1994-06-05','17160282M','01',5,1),(37,'yeppeee','yeeeepe','1954-12-05','69765908P','01',5,1),(38,'Albert','Einsetin','1994-12-02','86162965C','01',2,1);
/*!40000 ALTER TABLE `user_obj` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_subjects` AFTER INSERT ON `user_obj` FOR EACH ROW BEGIN
		DECLARE teacher_id INT;
		DECLARE subjectBuilder INT;
		DECLARE done INT DEFAULT 0;
		DECLARE done2 INT DEFAULT 0;
		
		DECLARE teacher_cursor CURSOR FOR 
			SELECT id 
			FROM user_obj 
			WHERE course_id = NEW.course_id AND school_id = NEW.school_id AND user_type = "02";
		
		DECLARE subject_cursor CURSOR FOR 
			SELECT subject_id 
			FROM course_subject 
			WHERE course_id = NEW.course_id;

		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

		IF NEW.user_type = '01' THEN
			OPEN teacher_cursor;
				teacher_loop: LOOP
					FETCH teacher_cursor INTO teacher_id;
					IF done THEN
						LEAVE teacher_loop;
					END IF;
					
					SET done2 = 0; -- Reset the second handler flag
					
					BEGIN
						DECLARE CONTINUE HANDLER FOR NOT FOUND SET done2 = 1;
						
						OPEN subject_cursor;
						
						subject_loop: LOOP
							FETCH subject_cursor INTO subjectBuilder;
							IF done2 THEN
								LEAVE subject_loop;
							END IF;
							
							INSERT INTO GRADES (teacher, student, subject_id, grade) 
							VALUES (teacher_id, NEW.id, subjectBuilder, NULL);
						END LOOP subject_loop;
						
						CLOSE subject_cursor;
					END;
					
				END LOOP teacher_loop;
			CLOSE teacher_cursor;
		END IF;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tutorias` AFTER INSERT ON `user_obj` FOR EACH ROW begin
		if new.user_type = "02" then
        INSERT INTO appointment values 
			(CONCAT('L5_', NEW.id), NEW.id, NULL, "20", "17:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('M5_', NEW.id), NEW.id, NULL, "21", "17:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('X5_', NEW.id), NEW.id, NULL, "22", "17:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('J5_', NEW.id), NEW.id, NULL, "23", "17:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('V5_', NEW.id), NEW.id, NULL, "24", "17:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('L6_', NEW.id), NEW.id, NULL, "20", "18:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('M6_', NEW.id), NEW.id, NULL, "21", "18:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('X6_', NEW.id), NEW.id, NULL, "22", "18:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('J6_', NEW.id), NEW.id, NULL, "23", "18:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('V6_', NEW.id), NEW.id, NULL, "24", "18:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('L7_', NEW.id), NEW.id, NULL, "20", "19:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('M7_', NEW.id), NEW.id, NULL, "21", "19:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('X7_', NEW.id), NEW.id, NULL, "22", "19:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('J7_', NEW.id), NEW.id, NULL, "23", "19:00", CONCAT("Despacho de ", New.user_name)),
            (CONCAT('V7_', NEW.id), NEW.id, NULL, "24", "19:00", CONCAT("Despacho de ", New.user_name));
        end if;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `internship` AFTER INSERT ON `user_obj` FOR EACH ROW begin
		declare tutor1 int;
		declare tutor2 int;
		declare tutorInsert int;
		if new.user_type = "01" then
			set tutor1 = (select id from user_obj where user_type = "03" order by id limit 0,1);
			set tutor2 = (select id from user_obj where user_type = "03" order by id limit 1,1);
			if new.id % 2 = 0 then
				set tutorInsert = tutor2;
			else
				set tutorInsert = tutor1;
			end if;
			
			insert into internship values(tutorInsert, new.id, null);
		end if;
	end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'portalacademico'
--

--
-- Dumping routines for database 'portalacademico'
--
/*!50003 DROP FUNCTION IF EXISTS `checkIfExistsUserCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkIfExistsUserCredentials`(user_email varchar(255), user_pass varchar(255)) RETURNS tinyint(1)
    NO SQL
begin
		declare isInTable bool;

		if (select id from credentials where email = user_email and pass = user_pass) then
			set isInTable := true;
		else
			set isInTable := false;
		end if;

		return isInTable;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `checkIfSchoolExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkIfSchoolExists`(school varchar(100), location varchar(50)) RETURNS tinyint(1)
    NO SQL
begin
		declare isInTable bool;
		
		if (select id from school where school_name = school and loc = location) then
			set isInTable := true;
		else 
			set isInTable := false;
		end if;
		
		return isInTable;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `checkIfStudentExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkIfStudentExists`(user_dnie varchar(10)) RETURNS tinyint(1)
    NO SQL
begin
		declare isInTable bool;
		
		if (select id from student where id = (select id from user_obj where dnie = user_dnie)) then
			set isInTable := true;
		else 
			set isInTable := false;
		end if;
		
		return isInTable;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `checkIfSubjectExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkIfSubjectExists`(sub varchar(255)) RETURNS tinyint(1)
    NO SQL
begin
		declare isInTable bool;
		
		if (select id from _subject where subject_name = sub) then
			set isInTable := true;
		else 
			set isInTable := false;
		end if;
		
		return isInTable;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAllCoursesFromTeacherId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getAllCoursesFromTeacherId`(teacherId int) RETURNS longtext CHARSET utf8mb4
    NO SQL
begin
		declare courseId int;
		declare courseName varchar(255) default "";
		declare coursesList longtext default "";
		declare done bool default false;
		declare coursesIds cursor for select course_id from user_obj where id = teacherId;
		declare continue handler for not found set done = true;
		open coursesIds;
		set coursesList := "";
		loopingCourses: loop
			fetch coursesIds into courseId;
			if done = true then
				leave loopingCourses;
			end if;
			set courseName := (select course_name from course where id = courseId);
			set coursesList = CONCAT(courseName,";",coursesList);
		end loop;
		return coursesList;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getAllStudentsByTeacherId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getAllStudentsByTeacherId`(teacherId int) RETURNS longtext CHARSET utf8mb4
    NO SQL
begin
		declare studentId int;
		declare studentName, studentSurname varchar(255);
		declare fullname longtext default "";
		declare namesList longtext default "";
		declare done bool default false;
		declare studentsId cursor for select student from grades where teacher = teacherId;
		declare continue handler for not found set done = true;
		open studentsId;
		loopingIds: loop
			fetch studentsId into studentId;
			if done = true then
				leave loopingIds;
			end if;
			set studentName := (select user_name from user_obj where id = studentId);
			set studentSurname := (select user_surname from user_obj where id = studentId);
			set fullname := concat(studentName, " ", studentSurname);
			set namesList := concat(fullname, ";", namesList);
		end loop;
		return namesList;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertNew`(titleInput longtext, captionInput longtext, contentInput longtext, imgUrl longtext, captionImg longtext, id_school_inp int)
begin
			insert into news (title, caption, content, img_url, caption_img, date_new, id_school) values (titleInput, captionInput, contentInput, imgUrl, captionImg , current_timestamp(), id_school_inp);
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertSchool` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertSchool`(school_name varchar(100), tel_input char(12), email_input varchar(255), secretarySchedule_input varchar(40), location_input varchar(50), mapLink longtext)
begin
		declare isInTable bool;
		set isInTable := (select checkIfSchoolExists(school_name, location_input));
		if not isInTable then
			insert into school(school_name, tel, email, secretarySchedule, loc, mapLink) values (school_name, tel_input, email_input, secretarySchedule_input, location_input, mapLink);
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertSubject` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertSubject`(sub_name varchar(255), wHours int, tHours int)
begin
		declare isInTable bool;
		set isInTable := (select checkIfSubjectExists(sub_name));
		if not isInTable then
			insert into  _subject (subject_name, weekly_hours, total_hours) values (sub_name, wHours, tHours);
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser`(user_name_input varchar(255), user_surname_input varchar(255), birthDate_input date, dnie_input char(9), user_type varchar(3) , user_email varchar(255), user_pass varchar(255), school_id int, course_id int)
begin
		declare user_id int;
		declare credentials_exists bool;
		
		set credentials_exists := (select checkIfExistsUserCredentials(user_email, user_pass));
		
		
		if credentials_exists then 
			set user_id := (select id from credentials where email = user_email and pass = user_pass);
			insert into user_obj values (user_id, user_name_input, user_surname_input, birthDate_input, dnie_input, user_type, school_id, course_id);
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUserCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUserCredentials`(user_email varchar(255), user_pass varchar(255))
begin
		declare isInTable bool;
		set isInTable = (select checkIfExistsUserCredentials(user_email, user_pass));

		if not isInTable then
			insert into credentials (email, pass) values (user_email, user_pass);
		end if;  

	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 21:51:56
