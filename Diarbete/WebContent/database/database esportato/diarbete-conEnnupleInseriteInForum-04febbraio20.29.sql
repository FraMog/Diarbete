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
INSERT INTO `dottore` VALUES ('dottore@utente.it','pass','nome','nome','nome','nome','nome','nome','nome');
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
  `descrizione` varchar(1024) NOT NULL,
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
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-04 19:21:48','2013-04-04 10:32:34','dfd','fdg','sdgf','sfd','d_2017-02-04202148.59_evlarge.jpg','d','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-04 19:11:07','2014-03-02 12:34:54','sdfds','dsfsd','sddsf','sdfsd','dfdsf_2017-02-04201107.413_newEvento.png','dfdsf','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-03 18:34:38','2015-11-04 12:45:32','dfsd','dsfsdf','dfsdf','dsfsfd\r\nfdg\r\nddd','dfs_2017-02-03193438.105_eve.jpg','dfs','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-04 16:38:39','2015-11-03 12:43:23','gfh','fgfh','gfhf','gh','dggf_2017-02-04173839.473_eve.jpg','dggf','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-04 11:58:12','2032-11-03 11:32:32','ev','ev','ev','ev\r\nento','ev_2017-02-04125812.754_eve.jpg','ev','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-04 18:55:10','2014-05-04 11:32:12','evento','evento','evento','evento','evento_2017-02-04195510.596_eve.jpg','evento','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-03 17:42:49','2016-04-16 11:45:34','fdg','fdgd','fdgdf','fgdf','ffdgf_2017-02-03184249.715_eve.jpg','ffdgf','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-03 19:04:50','2016-04-05 11:43:32','prov','comune','indir','desc','titolo_2017-02-03200450.617_eve.jpg','titolo','dottore@utente.it');
INSERT INTO `evento` VALUES ('Abruzzo','2017-02-03 18:39:07','2022-04-30 21:55:43','fdgf','dfgdg','dfgdg','fgdgf\r\nfggfd','v_2017-02-03193907.167_eve.jpg','v','dottore@utente.it');
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
INSERT INTO `messaggioforum` VALUES (' vds','2017-01-31 18:40:24','2017-01-31 18:40:24','fdd',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('a','2017-02-03 22:52:26','2017-02-03 22:52:26','a',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-01-31 19:06:19','2017-01-31 19:06:19','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-01-31 19:06:57','2017-01-31 19:06:57','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-01-31 19:06:57','2017-02-02 14:31:04','Sei un calc',NULL,'utente@utente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-02 15:06:51','2017-02-02 15:06:51','s',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-02 15:06:51','2017-02-02 15:31:34','ddd',NULL,'utente@utente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-02 17:02:33','2017-02-02 17:02:33','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-02 17:02:42','2017-02-02 17:02:42','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-02 17:02:50','2017-02-02 17:02:50','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-02 17:13:58','2017-02-02 17:13:58','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-02 17:21:35','2017-02-02 17:21:35','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:50:34','2017-02-03 22:50:34','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:51:09','2017-02-03 22:51:09','s',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:52:36','2017-02-03 22:52:36','t',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:56:30','2017-02-03 22:56:30','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:56:45','2017-02-03 22:56:45','f',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:57:08','2017-02-03 22:57:08','f',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:57:17','2017-02-03 22:57:17','r',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:57:28','2017-02-03 22:57:28','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('d','2017-02-03 22:58:04','2017-02-03 22:58:04','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dd','2017-02-02 17:14:22','2017-02-02 17:14:22','sdf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('df','2017-02-03 22:57:40','2017-02-03 22:57:40','f',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfd','2017-02-03 22:58:30','2017-02-03 22:58:30','dfds',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfdf','2017-02-03 19:12:09','2017-02-03 19:12:09','fdgf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfdf','2017-02-03 22:58:48','2017-02-03 22:58:48','dsfsd',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfdgdfdd','2017-02-02 17:21:26','2017-02-02 17:21:26','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfdsf','2017-02-03 22:58:38','2017-02-03 22:58:38','sdfdf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfdsfs','2017-02-03 22:52:06','2017-02-03 22:52:06','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfdsfsd','2017-02-02 17:24:31','2017-02-02 17:24:31','sdfsdfs',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('dfs','2017-02-03 22:58:22','2017-02-03 22:58:22','sdfs',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('f','2017-02-02 15:07:11','2017-02-02 15:07:11','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('f','2017-02-03 19:12:18','2017-02-03 19:12:18','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('f','2017-02-03 22:50:50','2017-02-03 22:50:50','f',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('f','2017-02-03 22:53:00','2017-02-03 22:53:00','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('f','2017-02-03 22:58:14','2017-02-03 22:58:14','f',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('fdgfdg','2017-02-02 17:24:02','2017-02-02 17:24:02','dfgfdgf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('fdgfdggfgfgfdgdfdfgfdgfdgfdgfdgfdgfgdfdsfsdfffddgfdfdgfdgff','2017-02-02 17:14:46','2017-02-02 17:14:46','dsf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('fdgfgfd','2017-01-31 18:09:12','2017-01-31 18:09:12','dfgdfgfgf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('fdgfgfd','2017-01-31 18:09:12','2017-02-02 18:53:53','bu',NULL,'utente@utente.it');
INSERT INTO `messaggioforum` VALUES ('fdgfgfd','2017-02-03 22:50:19','2017-02-03 22:50:19','df',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('fg','2017-02-03 22:57:53','2017-02-03 22:57:53','fd',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('nuova disc','2017-02-02 15:31:53','2017-02-02 15:31:53','nuova disc',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('nuovo','2017-02-02 15:01:50','2017-02-02 15:01:50','chissa che succede',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('nuovo','2017-02-02 15:02:27','2017-02-02 15:02:27','chissa che succede',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('nuovosad','2017-02-02 15:04:05','2017-02-02 15:04:05','chissa che succedesdf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('nuovosad2','2017-02-02 15:05:00','2017-02-02 15:05:00','chissa che succedesdf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('nuovosad2','2017-02-02 15:05:00','2017-02-02 15:19:03','dg',NULL,'utente@utente.it');
INSERT INTO `messaggioforum` VALUES ('post','2017-02-03 22:52:19','2017-02-03 22:52:19','d',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('prova messaggio','2017-02-03 17:53:44','2017-02-03 17:53:44','text',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('s','2017-02-02 17:23:38','2017-02-02 17:23:38','s',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('sd','2017-02-03 22:58:58','2017-02-03 22:58:58','sd',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('sdfds','2017-02-02 17:24:41','2017-02-02 17:24:41','dsfsdf',NULL,'fracesco@studente.it');
INSERT INTO `messaggioforum` VALUES ('sdfds','2017-02-02 17:24:41','2017-02-02 17:38:45','cf',NULL,'utente@utente.it');
INSERT INTO `messaggioforum` VALUES ('sdfds','2017-02-02 17:24:41','2017-02-02 17:48:02','sasdfds',NULL,'utente@utente.it');
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
INSERT INTO `paziente` VALUES ('fracesco@studente.it','pass','fra','fra','fra','src','desc',0,'2017-01-30');
INSERT INTO `paziente` VALUES ('utente@utente.it','pass','nome','nome','nome','nome','nome',9,'2017-02-02');
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
INSERT INTO `postforum` VALUES (' vds','2017-01-31 18:40:24','fracesco@studente.it','fddfg');
INSERT INTO `postforum` VALUES ('a','2017-02-03 22:52:26','fracesco@studente.it','a');
INSERT INTO `postforum` VALUES ('d','2017-01-31 19:06:19','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-01-31 19:06:57','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-02 15:06:51','fracesco@studente.it','s');
INSERT INTO `postforum` VALUES ('d','2017-02-02 17:02:33','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-02 17:02:42','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-02 17:02:50','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-02 17:13:58','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-02 17:21:35','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:50:34','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:51:09','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:52:36','fracesco@studente.it','s');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:56:30','fracesco@studente.it','s');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:56:45','fracesco@studente.it','s');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:57:08','fracesco@studente.it','s');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:57:17','fracesco@studente.it','f');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:57:28','fracesco@studente.it','r');
INSERT INTO `postforum` VALUES ('d','2017-02-03 22:58:04','fracesco@studente.it','f');
INSERT INTO `postforum` VALUES ('dd','2017-02-02 17:14:22','fracesco@studente.it','sdf');
INSERT INTO `postforum` VALUES ('df','2017-02-03 22:57:40','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('dfd','2017-02-03 22:58:30','fracesco@studente.it','dsf');
INSERT INTO `postforum` VALUES ('dfdf','2017-02-03 19:12:09','fracesco@studente.it','sdfsdfdfdsfdfdfdssdfdddfdffgdgfdggfdfgdfgdfgdfgfdgfhgksjdsjdkkskdkdkjfjkfnjdsfndsjnfnsdfndsnfkdsfnds');
INSERT INTO `postforum` VALUES ('dfdf','2017-02-03 22:58:48','fracesco@studente.it','sdfdf');
INSERT INTO `postforum` VALUES ('dfdgdfdd','2017-02-02 17:21:26','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('dfdsf','2017-02-03 22:58:38','fracesco@studente.it','sdfsd');
INSERT INTO `postforum` VALUES ('dfdsfs','2017-02-03 22:52:06','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('dfdsfsd','2017-02-02 17:24:31','fracesco@studente.it','dsfds');
INSERT INTO `postforum` VALUES ('dfs','2017-02-03 22:58:22','fracesco@studente.it','sfd');
INSERT INTO `postforum` VALUES ('f','2017-02-02 15:07:11','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('f','2017-02-03 19:12:18','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('f','2017-02-03 22:50:50','fracesco@studente.it','f');
INSERT INTO `postforum` VALUES ('f','2017-02-03 22:53:00','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('f','2017-02-03 22:58:14','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('fdgfdg','2017-02-02 17:24:02','fracesco@studente.it','fdgdfg');
INSERT INTO `postforum` VALUES ('fdgfdggfgfgfdgdfdfgfdgfdgfdgfdgfdgfgdfdsfsdfffddgfdfdgfdgff','2017-02-02 17:14:46','fracesco@studente.it','fdd');
INSERT INTO `postforum` VALUES ('fdgfgfd','2017-01-31 18:09:12','fracesco@studente.it','fdgfgf');
INSERT INTO `postforum` VALUES ('fdgfgfd','2017-02-03 22:50:19','fracesco@studente.it','d');
INSERT INTO `postforum` VALUES ('fg','2017-02-03 22:57:53','fracesco@studente.it','fd');
INSERT INTO `postforum` VALUES ('nuova disc','2017-02-02 15:31:53','fracesco@studente.it','nuova disc');
INSERT INTO `postforum` VALUES ('nuovo','2017-02-02 15:01:50','fracesco@studente.it','topic');
INSERT INTO `postforum` VALUES ('nuovo','2017-02-02 15:02:27','fracesco@studente.it','topic');
INSERT INTO `postforum` VALUES ('nuovosad','2017-02-02 15:04:05','fracesco@studente.it','topicdsfs');
INSERT INTO `postforum` VALUES ('nuovosad2','2017-02-02 15:05:00','fracesco@studente.it','topicdsfs');
INSERT INTO `postforum` VALUES ('post','2017-02-03 22:52:19','fracesco@studente.it','dsfds');
INSERT INTO `postforum` VALUES ('prova messaggio','2017-02-03 17:53:44','fracesco@studente.it','text');
INSERT INTO `postforum` VALUES ('s','2017-02-02 17:23:38','fracesco@studente.it','sdfsdfdfdsfdfdfdssdfdddfdffgdgfdggfdfgdfgdfgdfgfdgfhgksjdsjdkkskdkdkjfjkfnjdsfndsjnfnsdfndsnfkdsfnds');
INSERT INTO `postforum` VALUES ('sd','2017-02-03 22:58:58','fracesco@studente.it','sd');
INSERT INTO `postforum` VALUES ('sdfds','2017-02-02 17:24:41','fracesco@studente.it','sdfsd');
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

-- Dump completed on 2017-02-04 20:28:17
