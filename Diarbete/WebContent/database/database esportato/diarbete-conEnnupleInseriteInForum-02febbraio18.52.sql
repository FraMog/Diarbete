-- MySQL dump 10.16  Distrib 10.1.10-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: diarbete
-- ------------------------------------------------------
-- Server version	10.1.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consiglioalimentare`
--

DROP TABLE IF EXISTS `consiglioalimentare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consiglioalimentare` (
  `titolo` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descrizione` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consiglioalimentare`
--

LOCK TABLES `consiglioalimentare` WRITE;
/*!40000 ALTER TABLE `consiglioalimentare` DISABLE KEYS */;
/*!40000 ALTER TABLE `consiglioalimentare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dottore`
--

DROP TABLE IF EXISTS `dottore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dottore` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `src` varchar(100) DEFAULT NULL,
  `ambito` varchar(100) DEFAULT NULL,
  `specializzazione` varchar(100) DEFAULT NULL,
  `curriculum` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dottore`
--

LOCK TABLES `dottore` WRITE;
/*!40000 ALTER TABLE `dottore` DISABLE KEYS */;
INSERT INTO `dottore` VALUES ('utente@utente.it','pass','nome','nome','nome','nome','nome','nome','nome');
/*!40000 ALTER TABLE `dottore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `regione` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataEvento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `provincia` varchar(100) NOT NULL,
  `comune` varchar(100) NOT NULL,
  `indirizzo` varchar(256) NOT NULL,
  `descrizione` varchar(256) NOT NULL,
  `src` varchar(100) NOT NULL,
  `titolo` varchar(100) NOT NULL,
  `dottorePubblicante` varchar(100) NOT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`),
  KEY `evento_dottore_fk` (`dottorePubblicante`),
  CONSTRAINT `evento_dottore_fk` FOREIGN KEY (`dottorePubblicante`) REFERENCES `dottore` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messaggioforum`
--

DROP TABLE IF EXISTS `messaggioforum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messaggioforum` (
  `titoloPost` varchar(100) NOT NULL,
  `dataPubblicazionePost` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dataInserimentoRisposta` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` varchar(256) NOT NULL,
  `autoreRispostaDottore` varchar(100) DEFAULT NULL,
  `autoreRispostaPaziente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`titoloPost`,`dataPubblicazionePost`,`dataInserimentoRisposta`),
  KEY `messaggioforum_dottore_fk` (`autoreRispostaDottore`),
  KEY `messaggioforum_paziente_fk` (`autoreRispostaPaziente`),
  CONSTRAINT `messaggioforum_ibfk_1` FOREIGN KEY (`autoreRispostaDottore`) REFERENCES `dottore` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messaggioforum_ibfk_2` FOREIGN KEY (`autoreRispostaPaziente`) REFERENCES `paziente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messaggioforum_ibfk_3` FOREIGN KEY (`titoloPost`, `dataPubblicazionePost`) REFERENCES `postforum` (`titolo`, `dataInserimento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messaggioforum`
--

LOCK TABLES `messaggioforum` WRITE;
/*!40000 ALTER TABLE `messaggioforum` DISABLE KEYS */;
INSERT INTO `messaggioforum` VALUES (' vds','2017-01-31 18:40:24','2017-01-31 18:40:24','fdd',NULL,'fracesco@studente.it'),('d','2017-01-31 19:06:19','2017-01-31 19:06:19','d',NULL,'fracesco@studente.it'),('d','2017-01-31 19:06:57','2017-01-31 19:06:57','d',NULL,'fracesco@studente.it'),('d','2017-01-31 19:06:57','2017-02-02 14:31:04','Sei un calc',NULL,'utente@utente.it'),('d','2017-02-02 15:06:51','2017-02-02 15:06:51','s',NULL,'fracesco@studente.it'),('d','2017-02-02 15:06:51','2017-02-02 15:31:34','ddd',NULL,'utente@utente.it'),('d','2017-02-02 17:02:33','2017-02-02 17:02:33','d',NULL,'fracesco@studente.it'),('d','2017-02-02 17:02:42','2017-02-02 17:02:42','d',NULL,'fracesco@studente.it'),('d','2017-02-02 17:02:50','2017-02-02 17:02:50','d',NULL,'fracesco@studente.it'),('d','2017-02-02 17:13:58','2017-02-02 17:13:58','d',NULL,'fracesco@studente.it'),('d','2017-02-02 17:21:35','2017-02-02 17:21:35','d',NULL,'fracesco@studente.it'),('dd','2017-02-02 17:14:22','2017-02-02 17:14:22','sdf',NULL,'fracesco@studente.it'),('dfdgdfdd','2017-02-02 17:21:26','2017-02-02 17:21:26','d',NULL,'fracesco@studente.it'),('dfdsfs','2017-02-02 17:24:11','2017-02-02 17:24:11','sdfdsfs',NULL,'fracesco@studente.it'),('dfdsfsd','2017-02-02 17:24:31','2017-02-02 17:24:31','sdfsdfs',NULL,'fracesco@studente.it'),('f','2017-02-02 15:07:11','2017-02-02 15:07:11','d',NULL,'fracesco@studente.it'),('fdgfdg','2017-02-02 17:24:02','2017-02-02 17:24:02','dfgfdgf',NULL,'fracesco@studente.it'),('fdgfdggfgfgfdgdfdfgfdgfdgfdgfdgfdgfgdfdsfsdfffddgfdfdgfdgff','2017-02-02 17:14:46','2017-02-02 17:14:46','dsf',NULL,'fracesco@studente.it'),('fdgfgfd','2017-01-31 18:09:12','2017-01-31 18:09:12','dfgdfgfgf',NULL,'fracesco@studente.it'),('nuova disc','2017-02-02 15:31:53','2017-02-02 15:31:53','nuova disc',NULL,'fracesco@studente.it'),('nuovo','2017-02-02 15:01:50','2017-02-02 15:01:50','chissa che succede',NULL,'fracesco@studente.it'),('nuovo','2017-02-02 15:02:27','2017-02-02 15:02:27','chissa che succede',NULL,'fracesco@studente.it'),('nuovosad','2017-02-02 15:04:05','2017-02-02 15:04:05','chissa che succedesdf',NULL,'fracesco@studente.it'),('nuovosad2','2017-02-02 15:05:00','2017-02-02 15:05:00','chissa che succedesdf',NULL,'fracesco@studente.it'),('nuovosad2','2017-02-02 15:05:00','2017-02-02 15:19:03','dg',NULL,'utente@utente.it'),('s','2017-02-02 17:23:38','2017-02-02 17:23:38','s',NULL,'fracesco@studente.it'),('sdfds','2017-02-02 17:24:41','2017-02-02 17:24:41','dsfsdf',NULL,'fracesco@studente.it'),('sdfds','2017-02-02 17:24:41','2017-02-02 17:38:45','cf',NULL,'utente@utente.it'),('sdfds','2017-02-02 17:24:41','2017-02-02 17:48:02','sasdfds',NULL,'utente@utente.it'),('ssfsdsd','2017-02-02 17:14:09','2017-02-02 17:14:09','d',NULL,'fracesco@studente.it');
/*!40000 ALTER TABLE `messaggioforum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paziente`
--

DROP TABLE IF EXISTS `paziente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paziente` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `src` varchar(100) DEFAULT NULL,
  `descrizione` varchar(256) DEFAULT NULL,
  `tipoDiabete` int(1) DEFAULT NULL,
  `dataDiNascita` date DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paziente`
--

LOCK TABLES `paziente` WRITE;
/*!40000 ALTER TABLE `paziente` DISABLE KEYS */;
INSERT INTO `paziente` VALUES ('fracesco@studente.it','pass','fra','fra','fra','src','desc',0,'2017-01-30'),('utente@utente.it','pass','nome','nome','nome','nome','nome',9,'2017-02-02');
/*!40000 ALTER TABLE `paziente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postforum`
--

DROP TABLE IF EXISTS `postforum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postforum` (
  `titolo` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `autorePost` varchar(100) NOT NULL,
  `argomento` varchar(100) NOT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`),
  KEY `postforum_paziente_fk` (`autorePost`),
  CONSTRAINT `postforum_paziente_fk` FOREIGN KEY (`autorePost`) REFERENCES `paziente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postforum`
--

LOCK TABLES `postforum` WRITE;
/*!40000 ALTER TABLE `postforum` DISABLE KEYS */;
INSERT INTO `postforum` VALUES (' vds','2017-01-31 18:40:24','fracesco@studente.it','fddfg'),('d','2017-01-31 19:06:19','fracesco@studente.it','d'),('d','2017-01-31 19:06:57','fracesco@studente.it','d'),('d','2017-02-02 15:06:51','fracesco@studente.it','s'),('d','2017-02-02 17:02:33','fracesco@studente.it','d'),('d','2017-02-02 17:02:42','fracesco@studente.it','d'),('d','2017-02-02 17:02:50','fracesco@studente.it','d'),('d','2017-02-02 17:13:58','fracesco@studente.it','d'),('d','2017-02-02 17:21:35','fracesco@studente.it','d'),('dd','2017-02-02 17:14:22','fracesco@studente.it','sdf'),('dfdgdfdd','2017-02-02 17:21:26','fracesco@studente.it','d'),('dfdsfs','2017-02-02 17:24:11','fracesco@studente.it','sdfsdfsf'),('dfdsfsd','2017-02-02 17:24:31','fracesco@studente.it','dsfds'),('f','2017-02-02 15:07:11','fracesco@studente.it','d'),('fdgfdg','2017-02-02 17:24:02','fracesco@studente.it','fdgdfg'),('fdgfdggfgfgfdgdfdfgfdgfdgfdgfdgfdgfgdfdsfsdfffddgfdfdgfdgff','2017-02-02 17:14:46','fracesco@studente.it','fdd'),('fdgfgfd','2017-01-31 18:09:12','fracesco@studente.it','fdgfgf'),('nuova disc','2017-02-02 15:31:53','fracesco@studente.it','nuova disc'),('nuovo','2017-02-02 15:01:50','fracesco@studente.it','topic'),('nuovo','2017-02-02 15:02:27','fracesco@studente.it','topic'),('nuovosad','2017-02-02 15:04:05','fracesco@studente.it','topicdsfs'),('nuovosad2','2017-02-02 15:05:00','fracesco@studente.it','topicdsfs'),('s','2017-02-02 17:23:38','fracesco@studente.it','sdfsdfdfdsfdfdfdssdfdddfdffgdgfdggfdfgdfgdfgdfgfdgfhgksjdsjdkkskdkdkjfjkfnjdsfndsjnfnsdfndsnfkdsfnds'),('sdfds','2017-02-02 17:24:41','fracesco@studente.it','sdfsd'),('ssfsdsd','2017-02-02 17:14:09','fracesco@studente.it','d');
/*!40000 ALTER TABLE `postforum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ricetta`
--

DROP TABLE IF EXISTS `ricetta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ricetta` (
  `titolo` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descrizione` varchar(256) NOT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ricetta`
--

LOCK TABLES `ricetta` WRITE;
/*!40000 ALTER TABLE `ricetta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ricetta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoreglicemico`
--

DROP TABLE IF EXISTS `valoreglicemico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valoreglicemico` (
  `pazienteDiAppartenenza` varchar(100) NOT NULL,
  `giorno` date NOT NULL,
  `valore` int(11) NOT NULL,
  PRIMARY KEY (`pazienteDiAppartenenza`,`giorno`),
  CONSTRAINT `valoriglicemici_paziente_fk` FOREIGN KEY (`pazientediappartenenza`) REFERENCES `paziente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoreglicemico`
--

LOCK TABLES `valoreglicemico` WRITE;
/*!40000 ALTER TABLE `valoreglicemico` DISABLE KEYS */;
/*!40000 ALTER TABLE `valoreglicemico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'diarbete'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-02 18:54:30
