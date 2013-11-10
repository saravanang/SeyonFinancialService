SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `dinfindb` ;
USE `dinfindb` ;

-- -----------------------------------------------------
-- Table `dinfindb`.`APPBRANCODE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dinfindb`.`APPBRANCODE` (
  `ABC_ID` CHAR(5) NOT NULL ,
  `ABC_CODE` VARCHAR(10) NULL ,
  `ABC_NAME` VARCHAR(45) NULL ,
  `ABC_STATUS` CHAR NULL ,
  `ABC_DATEINS` DATETIME NULL ,
  `ABC_DATEUPD` DATETIME NULL ,
  `ABC_ADDEDBY` VARCHAR(25) NULL ,
  `ABC_UPDATEDBY` VARCHAR(25) NULL ,
  PRIMARY KEY (`ABC_ID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dinfindb`.`APPBRANDET`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dinfindb`.`APPBRANDET` (
  `ABD_BRANCHID` CHAR(5) NULL ,
  `ABD_ADDRESS1` VARCHAR(50) NULL ,
  `ABD_ADDRESS2` VARCHAR(50) NULL ,
  `ABD_ADDRESS3` VARCHAR(50) NULL ,
  `ABD_AREACODE` CHAR(5) NULL ,
  `ABD_CITYCODE` CHAR(5) NULL ,
  `ABD_CONTRYCODE` CHAR(5) NULL ,
  `ABD_MAINPHONE` INT(15) NULL ,
  `ABD_ALTPHONE` INT(15) NULL ,
  `ABD_CUSPHONE` INT(15) NULL ,
  `ABD_TOLLFPHONE` INT(15) NULL ,
  `ABD_STATUS` CHAR NULL ,
  `ABD_STRDATE` DATETIME NULL ,
  `ABD_ENDDATE` DATETIME NULL ,
  `ABD_DATEINS` DATETIME NULL ,
  `ABD_DATEUPD` DATETIME NULL ,
  `ABD_ADDEDBY` VARCHAR(25) NULL ,
  `ABD_UPDATEDBY` VARCHAR(25) NULL ,
  INDEX `ABR_ABD_BRANCHID_idx` (`ABD_BRANCHID` ASC) ,
  CONSTRAINT `ABR_ABD_BRANCHID`
    FOREIGN KEY (`ABD_BRANCHID` )
    REFERENCES `dinfindb`.`APPBRANCODE` (`ABC_ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dinfindb`.`APPEMPROLE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dinfindb`.`APPEMPROLE` (
  `AER_ID` CHAR(5) NOT NULL ,
  `AER_CODE` CHAR(5) NOT NULL ,
  `AER_NAME` VARCHAR(45) NULL ,
  `AER_DATEINST` DATETIME NULL ,
  `AER_DATEUPD` DATETIME NULL ,
  `AER_ADDEDBY` VARCHAR(25) NULL ,
  `AER_UPDATEDBY` VARCHAR(25) NULL ,
  PRIMARY KEY (`AER_ID`, `AER_CODE`) )
ENGINE = InnoDB;


CREATE USER `root`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;