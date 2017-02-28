CREATE DATABASE IF NOT EXISTS diarbete;

CREATE TABLE if not exists diarbete.`dottore` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `src` varchar(100) DEFAULT NULL,
  `ambito` varchar(100) DEFAULT NULL,
  `specializzazione` varchar(100) DEFAULT NULL,
  `curriculum` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`email`)
);

CREATE TABLE if not exists diarbete.`paziente` (
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
);

CREATE TABLE if not exists diarbete.`consiglioalimentare` (
  `titolo` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descrizione` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`)
);


CREATE TABLE if not exists diarbete.`evento` (
  `regione` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataEvento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `provincia` varchar(100) NOT NULL,
  `comune` varchar(100) NOT NULL,
  `indirizzo` varchar(256) NOT NULL,
  `descrizione` varchar(2048) NOT NULL,
  `src` varchar(100) NOT NULL,
  `titolo` varchar(100) NOT NULL,
  `dottorePubblicante` varchar(100) NOT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`),
  KEY `evento_dottore_fk` (`dottorePubblicante`),
  FOREIGN KEY (`dottorePubblicante`) REFERENCES `dottore` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
);




CREATE TABLE if not exists diarbete.`postforum` (
  `titolo` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `autorePost` varchar(100) NOT NULL,
  `argomento` varchar(2048) NOT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`),
  KEY `postforum_paziente_fk` (`autorePost`),
  FOREIGN KEY (`autorePost`) REFERENCES `paziente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE if not exists diarbete.`messaggioforum` (
  `titoloPost` varchar(100) NOT NULL,
  `dataPubblicazionePost` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dataInserimentoRisposta` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` varchar(2048) NOT NULL,
  `autoreRispostaDottore` varchar(100) DEFAULT NULL,
  `autoreRispostaPaziente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`titoloPost`,`dataPubblicazionePost`, `dataInserimentoRisposta`),
  KEY `messaggioforum_dottore_fk` (`autoreRispostaDottore`),
  KEY `messaggioforum_paziente_fk` (`autoreRispostaPaziente`),
  FOREIGN KEY (`autoreRispostaDottore`) REFERENCES `dottore` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`autoreRispostaPaziente`) REFERENCES `paziente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`titoloPost`, `dataPubblicazionePost`) REFERENCES `postforum` (`titolo`, `dataInserimento`) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE if not exists diarbete.`ricetta` (
  `titolo` varchar(100) NOT NULL,
  `dataInserimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descrizione` varchar(256) NOT NULL,
  PRIMARY KEY (`titolo`,`dataInserimento`)
);


CREATE TABLE if not exists diarbete.`valoreglicemico` (
  `pazienteDiAppartenenza` varchar(100) NOT NULL,
  `giorno` date NOT NULL,
  `mattina` int ,
  `pomeriggio` int,
  `sera` int,
  PRIMARY KEY (`pazienteDiAppartenenza`,`giorno`),
  FOREIGN KEY (`pazientediappartenenza`) REFERENCES `paziente` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
);