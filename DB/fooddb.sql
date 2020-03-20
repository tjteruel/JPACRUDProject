-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema nutritionDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `nutritionDB` ;

-- -----------------------------------------------------
-- Schema nutritionDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nutritionDB` DEFAULT CHARACTER SET utf8 ;
USE `nutritionDB` ;

-- -----------------------------------------------------
-- Table `food`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `food` ;

CREATE TABLE IF NOT EXISTS `food` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS nutritionuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'nutritionuser'@'localhost' IDENTIFIED BY 'nutritionuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'nutritionuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `food`
-- -----------------------------------------------------
START TRANSACTION;
USE `nutritionDB`;
INSERT INTO `food` (`id`, `name`) VALUES (1, 'chicken');

COMMIT;

