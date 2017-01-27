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
  PRIMARY KEY (`titoloPost`,`dataPubblicazionePost`),
  KEY `messaggioforum_dottore_fk` (`autoreRispostaDottore`),
  KEY `messaggioforum_paziente_fk` (`autoreRispostaPaziente`),
  CONSTRAINT `messaggioforum_dottore_fk` FOREIGN KEY (`autoreRispostaDottore`) REFERENCES `dottore` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messaggioforum_paziente_fk` FOREIGN KEY (`autoreRispostaPaziente`) REFERENCES `paziente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messaggioforum_postforum_fk` FOREIGN KEY (`titoloPost`, `dataPubblicazionePost`) REFERENCES `postforum` (`titolo`, `dataInserimento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messaggioforum`
--

LOCK TABLES `messaggioforum` WRITE;
/*!40000 ALTER TABLE `messaggioforum` DISABLE KEYS */;
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

-- Dump completed on 2017-01-27 17:25:35
