-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Joshua
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Joshua
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Joshua` DEFAULT CHARACTER SET utf8 ;
USE `Joshua` ;

-- -----------------------------------------------------
-- Table `Joshua`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Joshua`.`Student` (
  `idStudent` INT NOT NULL,
  `Student_name` VARCHAR(45) NULL,
  `Age` VARCHAR(45) NULL,
  `Grade` VARCHAR(10) NULL,
  `idSubject` VARCHAR(45) NULL,
  PRIMARY KEY (`idStudent`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Joshua`.`Teacher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Joshua`.`Teacher` (
  `idTeacher` INT NOT NULL,
  `Teacher_name` VARCHAR(45) NULL,
  `Qualification` VARCHAR(20) NULL,
  PRIMARY KEY (`idTeacher`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Joshua`.`Subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Joshua`.`Subject` (
  `idSubject` INT NOT NULL,
  `Subject_name` VARCHAR(45) NULL,
  `idTeacher` VARCHAR(45) NULL,
  PRIMARY KEY (`idSubject`),
  CONSTRAINT `idTeacher`
    FOREIGN KEY ()
    REFERENCES `Joshua`.`Teacher` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Joshua`.`Student_has_Subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Joshua`.`Student_has_Subject` (
  `Student_idStudent` INT NOT NULL,
  `Subject_idSubject` INT NOT NULL,
  PRIMARY KEY (`Student_idStudent`, `Subject_idSubject`),
  INDEX `fk_Student_has_Subject_Subject1_idx` (`Subject_idSubject` ASC) VISIBLE,
  INDEX `fk_Student_has_Subject_Student1_idx` (`Student_idStudent` ASC) VISIBLE,
  CONSTRAINT `fk_Student_has_Subject_Student1`
    FOREIGN KEY (`Student_idStudent`)
    REFERENCES `Joshua`.`Student` (`idStudent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Student_has_Subject_Subject1`
    FOREIGN KEY (`Subject_idSubject`)
    REFERENCES `Joshua`.`Subject` (`idSubject`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
