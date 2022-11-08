
CREATE TABLE IF NOT EXISTS `usnepalgroup`.`LOCATION` (
  `location_id` INT NOT NULL,
  `city` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `state` VARCHAR(2) NULL,
  `zipcode` INT NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`location_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `usnepalgroup`.`POISITON` (
  `position_id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `education` VARCHAR(45) NULL,
  `min_salary` DECIMAL(9,2) NULL,
  `max_salary` DECIMAL(9,2) NULL,
  PRIMARY KEY (`position_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `usnepalgroup`.`EMPLOYEE` (
  `ssn` VARCHAR(10) NOT NULL,
  `last_name` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `hire_date` DATE NULL,
  `salary` DECIMAL(9,2) NULL,
  `gender` VARCHAR(45) NULL,
  `preformance` VARCHAR(45) CHARACTER SET 'armscii8' NULL,
  `location_id` INT NULL, 
  `positiong_id` INT NULL,
  PRIMARY KEY (`ssn`),
  INDEX `position_id_idx` (`positiong_id` ASC) VISIBLE,
  INDEX `location_id_idx` (`location_id` ASC) VISIBLE,
  CONSTRAINT `location_id`
    FOREIGN KEY (`location_id`)
    REFERENCES `usnepalgroup`.`LOCATION` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `position_id`
    FOREIGN KEY (`positiong_id`)
    REFERENCES `usnepalgroup`.`POISITON` (`position_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
