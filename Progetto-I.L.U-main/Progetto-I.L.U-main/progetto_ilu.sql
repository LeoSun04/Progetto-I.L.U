-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 02, 2023 alle 12:14
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progetto ilu`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `admin`
--

CREATE TABLE `admin` (
  `Id admin` int(11) NOT NULL,
  `Tipo admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `disponibilità tutor`
--

CREATE TABLE `disponibilità tutor` (
  `Id tutor` int(11) NOT NULL,
  `Giorno` varchar(255) NOT NULL,
  `Orario inizio` time NOT NULL,
  `Orario fine` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `materia`
--

CREATE TABLE `materia` (
  `Id tutor` int(11) NOT NULL,
  `Materia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `messaggi`
--

CREATE TABLE `messaggi` (
  `id messaggio` int(11) NOT NULL,
  `id mittente` int(11) NOT NULL,
  `id destinatario` int(11) NOT NULL,
  `messaggio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `recensioni`
--

CREATE TABLE `recensioni` (
  `Id tutor` int(11) NOT NULL,
  `Voto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `richieste`
--

CREATE TABLE `richieste` (
  `Id richiesta` int(11) NOT NULL,
  `Id richiedente` int(11) NOT NULL,
  `Id ricevente` int(11) NOT NULL,
  `data` date NOT NULL,
  `ora inizio` time NOT NULL,
  `ora fine` time NOT NULL,
  `Stato richiesta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `segnalazioni`
--

CREATE TABLE `segnalazioni` (
  `Id segnalazione` int(11) NOT NULL,
  `Id segnalatore` int(11) NOT NULL,
  `Id segnalato` int(11) NOT NULL,
  `Motivazione` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `studente`
--

CREATE TABLE `studente` (
  `Id utente` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Cognome` varchar(255) NOT NULL,
  `Classe` int(11) NOT NULL,
  `Indirizzo` varchar(255) NOT NULL,
  `Sesso` varchar(255) NOT NULL,
  `Data nascita` date NOT NULL,
  `Diplomato` tinyint(1) NOT NULL,
  `Email scolastica` varchar(255) NOT NULL,
  `Email di recupero` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `ticket`
--

CREATE TABLE `ticket` (
  `Id ticket` int(11) NOT NULL,
  `Id richiedente` int(11) NOT NULL,
  `Materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `tutor`
--

CREATE TABLE `tutor` (
  `Id tutor` int(11) NOT NULL,
  `Zona geografica` varchar(255) NOT NULL,
  `Tipologia` varchar(255) NOT NULL,
  `Numero di telefono` varchar(255) NOT NULL,
  `Descrizione` varchar(255) NOT NULL,
  `Disponibilità` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `admin`
--
ALTER TABLE `admin`
  ADD KEY `Id admin` (`Id admin`);

--
-- Indici per le tabelle `disponibilità tutor`
--
ALTER TABLE `disponibilità tutor`
  ADD KEY `Id tutor` (`Id tutor`);

--
-- Indici per le tabelle `materia`
--
ALTER TABLE `materia`
  ADD KEY `Id tutor` (`Id tutor`);

--
-- Indici per le tabelle `messaggi`
--
ALTER TABLE `messaggi`
  ADD PRIMARY KEY (`id messaggio`);

--
-- Indici per le tabelle `recensioni`
--
ALTER TABLE `recensioni`
  ADD KEY `Id tutor` (`Id tutor`);

--
-- Indici per le tabelle `richieste`
--
ALTER TABLE `richieste`
  ADD PRIMARY KEY (`Id richiesta`);

--
-- Indici per le tabelle `segnalazioni`
--
ALTER TABLE `segnalazioni`
  ADD PRIMARY KEY (`Id segnalazione`);

--
-- Indici per le tabelle `studente`
--
ALTER TABLE `studente`
  ADD PRIMARY KEY (`Id utente`);

--
-- Indici per le tabelle `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Id ticket`);

--
-- Indici per le tabelle `tutor`
--
ALTER TABLE `tutor`
  ADD KEY `Id tutor` (`Id tutor`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `messaggi`
--
ALTER TABLE `messaggi`
  MODIFY `id messaggio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `richieste`
--
ALTER TABLE `richieste`
  MODIFY `Id richiesta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `segnalazioni`
--
ALTER TABLE `segnalazioni`
  MODIFY `Id segnalazione` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `studente`
--
ALTER TABLE `studente`
  MODIFY `Id utente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `ticket`
--
ALTER TABLE `ticket`
  MODIFY `Id ticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Id admin`) REFERENCES `studente` (`Id utente`);

--
-- Limiti per la tabella `disponibilità tutor`
--
ALTER TABLE `disponibilità tutor`
  ADD CONSTRAINT `disponibilità tutor_ibfk_1` FOREIGN KEY (`Id tutor`) REFERENCES `tutor` (`Id tutor`);

--
-- Limiti per la tabella `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`Id tutor`) REFERENCES `tutor` (`Id tutor`);

--
-- Limiti per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  ADD CONSTRAINT `recensioni_ibfk_1` FOREIGN KEY (`Id tutor`) REFERENCES `tutor` (`Id tutor`);

--
-- Limiti per la tabella `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `tutor_ibfk_1` FOREIGN KEY (`Id tutor`) REFERENCES `studente` (`Id utente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
