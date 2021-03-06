-- MySQL Script generated by MySQL Workbench
-- Tue Jan 28 01:27:20 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BookShop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BookShop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BookShop` DEFAULT CHARACTER SET utf8 ;
USE `BookShop` ;

-- -----------------------------------------------------
-- Table `BookShop`.`Administrator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BookShop`.`Administrator` (
  `adminID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`adminID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BookShop`.`Category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BookShop`.`Category` (
  `categoryID` INT NOT NULL,
  `categoryName` VARCHAR(45) NULL,
  PRIMARY KEY (`categoryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BookShop`.`Book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BookShop`.`Book` (
  `bookID` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  `description` VARCHAR(150) NOT NULL,
  `author` VARCHAR(45) NOT NULL,
  `publishHouse` VARCHAR(100) NOT NULL DEFAULT 'UNKNOWN',
  `avr_rating` INT,
  PRIMARY KEY (`bookID`),
  CONSTRAINT `bookcat`
    FOREIGN KEY (`bookID`)
    REFERENCES `BookShop`.`Category` (`categoryID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `bookadmin`
    FOREIGN KEY (`bookID`)
    REFERENCES `BookShop`.`Administrator` (`adminID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BookShop`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BookShop`.`Customer` (
  `castomerID` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`castomerID`),
  CONSTRAINT `custbook`
    FOREIGN KEY (`castomerID`)
    REFERENCES `BookShop`.`Book` (bookID)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BookShop`.`Feedback`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BookShop`.`Feedback` (
  `feedbackID` INT NOT NULL,
  `cusomerID` VARCHAR(45) NOT NULL,
  `bookID` VARCHAR(45) NOT NULL,
  `date` INT NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `rating` INT NOT NULL,
  PRIMARY KEY (`feedbackID`),
  UNIQUE INDEX `cusomerID_UNIQUE` (`cusomerID` ASC) VISIBLE,
  UNIQUE INDEX `bookID_UNIQUE` (`bookID` ASC) VISIBLE,
  UNIQUE INDEX `feedbackID_UNIQUE` (`feedbackID` ASC) VISIBLE,
  CONSTRAINT `feedbook`
    FOREIGN KEY (`feedbackID`)
    REFERENCES `BookShop`.`Book` (bookID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT ``
    FOREIGN KEY (`feedbackID`)
    REFERENCES `BookShop`.`Customer` (`castomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
