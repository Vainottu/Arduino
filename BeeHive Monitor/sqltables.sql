SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `Hives` (
  `HiveID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `HiveName` varchar(100) DEFAULT NULL,
  `HiveLocation` varchar(100) DEFAULT NULL,
  `HiveType` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `Measurements` (
  `MeasurementID` int(11) NOT NULL,
  `HiveID` int(11) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsideTemp` float DEFAULT NULL,
  `OutsideTemp` float DEFAULT NULL,
  `InsideHumidity` float DEFAULT NULL,
  `Sound` float DEFAULT NULL,
  `Weight` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

ALTER TABLE `Hives`
  ADD PRIMARY KEY (`HiveID`),
  ADD KEY `UserID` (`UserID`);


ALTER TABLE `Measurements`
  ADD PRIMARY KEY (`MeasurementID`),
  ADD KEY `HiveID` (`HiveID`);

ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`);

ALTER TABLE `Measurements`
  MODIFY `MeasurementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

