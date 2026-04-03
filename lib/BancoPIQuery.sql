-- MySQL Workbench Forward Engineering (corrigido)

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PIBD
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PIBD` DEFAULT CHARACTER SET utf8;
USE `PIBD`;

-- -----------------------------------------------------
-- Table Sensor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sensor` (
  `idSensor` INT NOT NULL AUTO_INCREMENT,
  `NomeSensor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSensor`)
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table LogsPHR
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LogsPHR` (
  `idLogsPHR` INT NOT NULL AUTO_INCREMENT,
  `Leitura` INT NOT NULL,
  `Lote` INT NOT NULL,
  `DataLog` DATE NOT NULL,
  `HoraLog` TIME NULL,
  `Sensor_idSensor` INT NOT NULL,
  PRIMARY KEY (`idLogsPHR`, `Sensor_idSensor`),
  INDEX `fk_LogsPHR_Sensor1_idx` (`Sensor_idSensor`),
  CONSTRAINT `fk_LogsPHR_Sensor1`
    FOREIGN KEY (`Sensor_idSensor`)
    REFERENCES `Sensor` (`idSensor`)
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table LogDia
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LogDia` (
  `idLogDia` INT NOT NULL AUTO_INCREMENT,
  `Leitura` INT NOT NULL,
  `Lote` INT NOT NULL,
  `DataLog` DATE NOT NULL,
  `HoraLog` TIME NOT NULL,
  `LogDiacol` VARCHAR(45) NOT NULL,
  `Sensor_idSensor` INT NOT NULL,
  PRIMARY KEY (`idLogDia`, `Sensor_idSensor`),
  INDEX `fk_LogDia_Sensor_idx` (`Sensor_idSensor`),
  CONSTRAINT `fk_LogDia_Sensor`
    FOREIGN KEY (`Sensor_idSensor`)
    REFERENCES `Sensor` (`idSensor`)
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table Usuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `Email` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table Maquinas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Maquinas` (
  `idMaquinas` INT NOT NULL AUTO_INCREMENT,
  `Maquina` VARCHAR(45) NOT NULL,
  `Sensor_idSensor` INT NOT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idMaquinas`, `Sensor_idSensor`, `Usuario_idUsuario`),
  INDEX `fk_Maquinas_Sensor1_idx` (`Sensor_idSensor`),
  INDEX `fk_Maquinas_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Maquinas_Sensor1`
    FOREIGN KEY (`Sensor_idSensor`)
    REFERENCES `Sensor` (`idSensor`),
  CONSTRAINT `fk_Maquinas_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `Usuario` (`idUsuario`)
) ENGINE=InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;