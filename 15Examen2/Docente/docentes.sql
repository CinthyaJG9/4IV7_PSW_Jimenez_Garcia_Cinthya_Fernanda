-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema docente
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema docente
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `docente` DEFAULT CHARACTER SET latin1 ;
USE `docente` ;

-- -----------------------------------------------------
-- Table `docente`.`cedomaquina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`cedomaquina` (
  `idcedomaquina` INT(11) NOT NULL,
  `tipoedo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcedomaquina`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`cestadoreporte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`cestadoreporte` (
  `idcestadoreporte` INT(11) NOT NULL,
  `tipoedoreporte` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcestadoreporte`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`cgrupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`cgrupo` (
  `idCgrupo` INT(11) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCgrupo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`cmarca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`cmarca` (
  `idCmarca` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCmarca`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`cprioridad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`cprioridad` (
  `idcprioridad` INT(11) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcprioridad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`cprivilegio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`cprivilegio` (
  `idCprivilegio` INT(11) NOT NULL,
  `tipoPrivilegio` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCprivilegio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`crol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`crol` (
  `idCrol` INT(11) NOT NULL,
  `tipoRol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCrol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`mcpu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`mcpu` (
  `idMcpu` INT(11) NOT NULL,
  `descripcion` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idMcpu`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`mconfiguracion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`mconfiguracion` (
  `idmconfiguracion` INT(11) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmconfiguracion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`laboratorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`laboratorio` (
  `idLaboratorio` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`idLaboratorio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`mmouse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`mmouse` (
  `idMmouse` INT(11) NOT NULL,
  `descripcion` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idMmouse`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`mteclado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`mteclado` (
  `idmteclado` INT(11) NOT NULL,
  `descripcion` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idmteclado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`dequipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`dequipo` (
  `idDequipo` INT(11) NOT NULL,
  `id_Mcpu` INT(11) NOT NULL,
  `id_teclado` INT(11) NOT NULL,
  `id_mouse` INT(11) NOT NULL,
  `id_marca` INT(11) NOT NULL,
  `id_monitor` INT(11) NULL DEFAULT NULL,
  `id_edoequipo` INT(11) NULL DEFAULT NULL,
  `id_lab` INT(11) NULL DEFAULT NULL,
  `id_config` INT(11) NULL DEFAULT NULL,
  `problema` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`idDequipo`),
  INDEX `id_Mcpu_idx` (`id_Mcpu` ASC) VISIBLE,
  INDEX `id_teclado_idx` (`id_teclado` ASC) VISIBLE,
  INDEX `id_mouse_idx` (`id_mouse` ASC) VISIBLE,
  INDEX `id_marca_idx` (`id_marca` ASC) VISIBLE,
  INDEX `id_equiposerial_idx` (`id_monitor` ASC) VISIBLE,
  INDEX `id_edoequipo_idx` (`id_edoequipo` ASC) VISIBLE,
  INDEX `id_lab_idx` (`id_lab` ASC) VISIBLE,
  INDEX `id_config_idx` (`id_config` ASC) VISIBLE,
  CONSTRAINT `id_Mcpu`
    FOREIGN KEY (`id_Mcpu`)
    REFERENCES `docente`.`mcpu` (`idMcpu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_config`
    FOREIGN KEY (`id_config`)
    REFERENCES `docente`.`mconfiguracion` (`idmconfiguracion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_edoequipo`
    FOREIGN KEY (`id_edoequipo`)
    REFERENCES `docente`.`cedomaquina` (`idcedomaquina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_equiposerial`
    FOREIGN KEY (`id_monitor`)
    REFERENCES `docente`.`mcpu` (`idMcpu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_lab`
    FOREIGN KEY (`id_lab`)
    REFERENCES `docente`.`laboratorio` (`idLaboratorio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_marca`
    FOREIGN KEY (`id_marca`)
    REFERENCES `docente`.`cmarca` (`idCmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_mouse`
    FOREIGN KEY (`id_mouse`)
    REFERENCES `docente`.`mmouse` (`idMmouse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_teclado`
    FOREIGN KEY (`id_teclado`)
    REFERENCES `docente`.`mteclado` (`idmteclado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`docentereal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`docentereal` (
  `num_empleado` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `appat` VARCHAR(45) NOT NULL,
  `apmat` VARCHAR(45) NOT NULL,
  `sexo` VARCHAR(1) NOT NULL,
  `fechanacimiento` DATETIME NOT NULL,
  `docenterealcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`num_empleado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`persona` (
  `boleta` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `appat` VARCHAR(45) NULL DEFAULT NULL,
  `apmat` VARCHAR(45) NULL DEFAULT NULL,
  `sexo` VARCHAR(1) NULL DEFAULT NULL,
  `fechanacimiento` DATETIME NULL DEFAULT NULL,
  `id_grupo` INT(11) NULL DEFAULT NULL,
  `num_empleado` INT(11) NULL DEFAULT NULL,
  `id_persona` INT(11) NOT NULL,
  `user` VARCHAR(45) NULL DEFAULT NULL,
  `pass` VARCHAR(45) NULL DEFAULT NULL,
  `id_rol` INT(11) NULL DEFAULT NULL,
  `id_privilegio` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  INDEX `id_grupo_idx` (`id_grupo` ASC) VISIBLE,
  INDEX `id_rol_idx` (`id_rol` ASC) VISIBLE,
  INDEX `id_privilegio_idx` (`id_privilegio` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`dreporte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`dreporte` (
  `idreporte` INT(11) NULL DEFAULT NULL,
  `fecha` DATETIME NOT NULL,
  `hora` DATETIME NOT NULL,
  `id_equipo` INT(11) NULL DEFAULT NULL,
  `id_persona` INT(11) NULL DEFAULT NULL,
  `id_edoreporte` INT(11) NULL DEFAULT NULL,
  `id_reporte` INT(11) NULL DEFAULT NULL,
  `id_eer` INT(11) NULL DEFAULT NULL,
  `id_dreporte` VARCHAR(45) NOT NULL,
  `id_prioridad` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dreporte`),
  INDEX `id_equipo_idx` (`id_equipo` ASC) VISIBLE,
  INDEX `id_persona_idx` (`id_persona` ASC) VISIBLE,
  INDEX `id_prioridad_idx` (`id_prioridad` ASC) VISIBLE,
  CONSTRAINT `id_equipo`
    FOREIGN KEY (`id_equipo`)
    REFERENCES `docente`.`dequipo` (`idDequipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_persona`
    FOREIGN KEY (`id_persona`)
    REFERENCES `docente`.`persona` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`eequiposreportados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`eequiposreportados` (
  `ideequiposreportados` INT(11) NOT NULL,
  `id_equipo` INT(11) NOT NULL,
  PRIMARY KEY (`ideequiposreportados`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`ereportespersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`ereportespersona` (
  `idEreportesPersona` INT(11) NOT NULL,
  `id_persona` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEreportesPersona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `docente`.`mreporte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `docente`.`mreporte` (
  `idMreporte` INT(11) NOT NULL,
  `cantidad_repeticiones` INT(11) NOT NULL,
  PRIMARY KEY (`idMreporte`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
