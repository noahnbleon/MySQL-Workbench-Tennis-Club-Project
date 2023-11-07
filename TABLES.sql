-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cs_g1p1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cs_g1p1
-- -----------------------------------------------------
USE `cs_g1p1` ;

-- -----------------------------------------------------
-- Table `cs_g1p1`.`TennisClub`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`TennisClub` (
  `clubID` INT NOT NULL AUTO_INCREMENT,
  `clubName` VARCHAR(50) NOT NULL,
  `clubAddress` VARCHAR(100) NOT NULL,
  `clubEmail` VARCHAR(50) NOT NULL,
  `clubPhone` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`clubID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Member` (
  `memberID` INT NOT NULL AUTO_INCREMENT,
  `memberFName` VARCHAR(25) NOT NULL,
  `memberLName` VARCHAR(25) NOT NULL,
  `memberEmail` VARCHAR(50) NOT NULL,
  `memberPhone` VARCHAR(18) NULL,
  `memberType` ENUM('annual', 'monthly', 'quarterly', 'inactive') NOT NULL,
  `dateJoined` DATE NOT NULL,
  PRIMARY KEY (`memberID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Court`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Court` (
  `courtID` INT NOT NULL AUTO_INCREMENT,
  `TennisClub_clubID` INT NOT NULL,
  `courtName` VARCHAR(50) NOT NULL,
  `courtType` ENUM('clay', 'grass', 'hard') NOT NULL,
  PRIMARY KEY (`courtID`),
  UNIQUE INDEX `courtNumber_UNIQUE` (`courtName` ASC) VISIBLE,
  INDEX `fk_Court_TennisClub_idx` (`TennisClub_clubID` ASC) VISIBLE,
  CONSTRAINT `fk_Court_TennisClub`
    FOREIGN KEY (`TennisClub_clubID`)
    REFERENCES `cs_g1p1`.`TennisClub` (`clubID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Coach`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Coach` (
  `coachID` INT NOT NULL AUTO_INCREMENT,
  `TennisClub_clubID` INT NOT NULL,
  `coachFullName` VARCHAR(50) NOT NULL,
  `qualifications` VARCHAR(255) NULL,
  `specialties` VARCHAR(255) NULL,
  `availability` VARCHAR(255) NULL,
  PRIMARY KEY (`coachID`),
  INDEX `fk_Coach_TennisClub_idx` (`TennisClub_clubID` ASC) VISIBLE,
  CONSTRAINT `fk_Coach_TennisClub`
    FOREIGN KEY (`TennisClub_clubID`)
    REFERENCES `cs_g1p1`.`TennisClub` (`clubID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Tournament`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Tournament` (
  `tournamentID` INT NOT NULL AUTO_INCREMENT,
  `TennisClub_clubID` INT NOT NULL,
  `tournamentName` VARCHAR(80) NOT NULL,
  `tournamentType` ENUM('singles', 'doubles', 'mixed doubles') NOT NULL,
  `matchesDesc` VARCHAR(360) NULL,
  `tournDate` DATE NULL,
  PRIMARY KEY (`tournamentID`),
  INDEX `fk_Tournament_TennisClub_idx` (`TennisClub_clubID` ASC) VISIBLE,
  CONSTRAINT `fk_Tournament_TennisClub`
    FOREIGN KEY (`TennisClub_clubID`)
    REFERENCES `cs_g1p1`.`TennisClub` (`clubID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`ProShop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`ProShop` (
  `shopName` VARCHAR(50) NOT NULL,
  `TennisClub_clubID` INT NOT NULL,
  PRIMARY KEY (`shopName`),
  INDEX `fk_ProShop_TennisClub_idx` (`TennisClub_clubID` ASC) VISIBLE,
  CONSTRAINT `fk_ProShop_TennisClub`
    FOREIGN KEY (`TennisClub_clubID`)
    REFERENCES `cs_g1p1`.`TennisClub` (`clubID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Booking` (
  `bookingID` INT NOT NULL AUTO_INCREMENT,
  `Member_memberID` INT NOT NULL,
  `Court_courtID` INT NOT NULL,
  `bookingDate` DATE NOT NULL,
  `bookingStartTime` TIME NOT NULL,
  `bookingEndTime` TIME NOT NULL,
  `bookingType` ENUM('singles', 'doubles') NOT NULL,
  PRIMARY KEY (`bookingID`),
  INDEX `fk_Booking_Member_idx` (`Member_memberID` ASC) VISIBLE,
  INDEX `fk_Booking_Courts_idx` (`Court_courtID` ASC) VISIBLE,
  CONSTRAINT `fk_Booking_Member`
    FOREIGN KEY (`Member_memberID`)
    REFERENCES `cs_g1p1`.`Member` (`memberID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Booking_Court`
    FOREIGN KEY (`Court_courtID`)
    REFERENCES `cs_g1p1`.`Court` (`courtID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`TrainingSession`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`TrainingSession` (
  `sessionID` INT NOT NULL AUTO_INCREMENT,
  `Coach_coachID` INT NOT NULL,
  `Member_memberID` INT NOT NULL,
  `sessionDate` DATE NOT NULL,
  `sessionTime` TIME NOT NULL,
  `sessionType` ENUM('beginner', 'intermediate', 'advanced') NULL,
  PRIMARY KEY (`sessionID`),
  INDEX `fk_TrainingSession_Coach_idx` (`Coach_coachID` ASC) VISIBLE,
  INDEX `fk_TrainingSession_Member_idx` (`Member_memberID` ASC) VISIBLE,
  UNIQUE INDEX `idx_coach_datetime` (`Coach_coachID` ASC, `sessionDate` ASC, `sessionTime` ASC) VISIBLE,
  UNIQUE INDEX `idx_member_datetime` (`Member_memberID` ASC, `sessionDate` ASC, `sessionTime` ASC) VISIBLE,
  CONSTRAINT `fk_TrainingSession_Coach`
    FOREIGN KEY (`Coach_coachID`)
    REFERENCES `cs_g1p1`.`Coach` (`coachID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TrainingSession_Member`
    FOREIGN KEY (`Member_memberID`)
    REFERENCES `cs_g1p1`.`Member` (`memberID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`TournPlayer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`TournPlayer` (
  `playerID` INT NOT NULL AUTO_INCREMENT,
  `Member_memberID` INT NOT NULL,
  `Tournament_tournamentID` INT NOT NULL,
  `playerEntryDate` DATE NOT NULL,
  PRIMARY KEY (`playerID`),
  INDEX `fk_TournPlayer_Member_idx` (`Member_memberID` ASC) INVISIBLE,
  INDEX `fk_TournPlayer_Tournament_idx` (`Tournament_tournamentID` ASC) INVISIBLE,
  UNIQUE INDEX `idx_member_tournament` (`Member_memberID` ASC, `Tournament_tournamentID` ASC) INVISIBLE,
  CONSTRAINT `fk_TournPlayer_Member`
    FOREIGN KEY (`Member_memberID`)
    REFERENCES `cs_g1p1`.`Member` (`memberID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TournPlayer_Tournament`
    FOREIGN KEY (`Tournament_tournamentID`)
    REFERENCES `cs_g1p1`.`Tournament` (`tournamentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Employee` (
  `employeeID` INT NOT NULL AUTO_INCREMENT,
  `TennisClub_clubID` INT NOT NULL,
  `employeeFName` VARCHAR(25) NOT NULL,
  `employeeLName` VARCHAR(25) NOT NULL,
  `employeeSalary` INT NOT NULL,
  `managerID` INT NULL,
  PRIMARY KEY (`employeeID`),
  INDEX `fk_Employee_TennisClub_idx` (`TennisClub_clubID` ASC) VISIBLE,
  INDEX `fk_Employee_Employee_idx` (`managerID` ASC) VISIBLE,
  CONSTRAINT `fk_Employee_TennisClub`
    FOREIGN KEY (`TennisClub_clubID`)
    REFERENCES `cs_g1p1`.`TennisClub` (`clubID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Employee`
    FOREIGN KEY (`managerID`)
    REFERENCES `cs_g1p1`.`Employee` (`employeeID`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Department` (
  `deptName` VARCHAR(50) NOT NULL,
  `Employee_employeeID` INT NOT NULL,
  `deptEmail` VARCHAR(50) NULL,
  `deptPhone` VARCHAR(18) NULL,
  PRIMARY KEY (`deptName`),
  INDEX `fk_Department_Employee_idx` (`Employee_employeeID` ASC) VISIBLE,
  CONSTRAINT `fk_Department_Employee`
    FOREIGN KEY (`Employee_employeeID`)
    REFERENCES `cs_g1p1`.`Employee` (`employeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`ProShopItem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`ProShopItem` (
  `itemID` INT NOT NULL AUTO_INCREMENT,
  `ProShop_shopName` VARCHAR(50) NOT NULL,
  `itemName` VARCHAR(50) NOT NULL,
  `itemType` VARCHAR(40) NULL,
  `supplier` VARCHAR(50) NOT NULL,
  `salePrice` DECIMAL(10,2) NULL,
  `stockQuantity` INT NOT NULL,
  PRIMARY KEY (`itemID`),
  INDEX `fk_ProShopItem_ProShop_idx` (`ProShop_shopName` ASC) INVISIBLE,
  CONSTRAINT `fk_ProShopItem_ProShop`
    FOREIGN KEY (`ProShop_shopName`)
    REFERENCES `cs_g1p1`.`ProShop` (`shopName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cs_g1p1`.`Billing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cs_g1p1`.`Billing` (
  `billingID` INT NOT NULL AUTO_INCREMENT,
  `Member_memberID` INT NOT NULL,
  `ProShopItem_itemID` INT NULL,
  `invoiceDate` DATE NULL,
  `amount` DECIMAL(10,2) NOT NULL,
  `status` VARCHAR(180) NULL,
  PRIMARY KEY (`billingID`),
  INDEX `fk_Billing_Member_idx` (`Member_memberID` ASC) VISIBLE,
  INDEX `fk_Billing_ProShopItem_idx` (`ProShopItem_itemID` ASC) VISIBLE,
  CONSTRAINT `fk_Billing_Member`
    FOREIGN KEY (`Member_memberID`)
    REFERENCES `cs_g1p1`.`Member` (`memberID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Billing_ProShopItem`
    FOREIGN KEY (`ProShopItem_itemID`)
    REFERENCES `cs_g1p1`.`ProShopItem` (`itemID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;






# in case of issue:
DROP TABLE Billing, Booking, Coach, Court, Department, Employee, Member, ProShop, ProShopItem, TennisClub, Tournament, TournPlayer, TrainingSession;
