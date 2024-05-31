-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Pokemon`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Pokemon` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Pokemon` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `pokemon_id` INT NULL,
  `name` VARCHAR(255) NOT NULL,
  `type1` VARCHAR(32) NOT NULL,
  `type2` VARCHAR(32) NULL,
  `hp` INT NOT NULL,
  `att` INT NOT NULL,
  `def` INT NOT NULL,
  `weather_boost` VARCHAR(129) NULL,
  `min_attacker` INT NULL,
  PRIMARY KEY (`ID`));


-- -----------------------------------------------------
-- Table `mydb`.`CP_Mapping`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CP_Mapping` ;

CREATE TABLE IF NOT EXISTS `mydb`.`CP_Mapping` (
  `cp_id` INT NOT NULL,
  `Pokemon_ID` INT NOT NULL,
  `lv` INT NOT NULL,
  `iv` INT NOT NULL,
  `cp` INT NOT NULL,
  INDEX `fk_CP_Mapping_user1_idx` (`Pokemon_ID` ASC) VISIBLE,
  PRIMARY KEY (`cp_id`));


-- -----------------------------------------------------
-- Table `mydb`.`skill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`skill` ;

CREATE TABLE IF NOT EXISTS `mydb`.`skill` (
  `skill_id` INT NOT NULL,
  `Pokemon_ID` INT NOT NULL,
  `skill_type` VARCHAR(45) NOT NULL,
  `name` VARCHAR(64) NOT NULL,
  `type` VARCHAR(32) NOT NULL,
  `ns_damage` INT NOT NULL,
  INDEX `fk_normal_skill_Pokemon1_idx` (`Pokemon_ID` ASC) VISIBLE,
  PRIMARY KEY (`skill_id`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
