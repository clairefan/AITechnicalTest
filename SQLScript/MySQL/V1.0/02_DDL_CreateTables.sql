CREATE TABLE demoweb_user(
    UserID int auto_increment primary key,
    UserName nvarchar(50) unique,
    Password nvarchar(50) ,
    Sex char(1),
    Birthday datetime,
    Phone nvarchar(20)  ,
    Email nvarchar(100),
    EmployeeID nvarchar(20) ,
    Activity int    
)ENGINE = InnoDB;

CREATE TABLE `aitest`.`demoweb_category` (
  `categoryid` VARCHAR(10) NOT NULL,
  `categoryname` VARCHAR(45) NULL,
  `parentid` VARCHAR(10) NULL,
  `createdtime` DATETIME NULL,
  `modifiedtime` DATETIME NULL,
  PRIMARY KEY (`categoryid`))
ENGINE = InnoDB;

CREATE TABLE `aitest`.`demoweb_product` (
  `productid` VARCHAR(10) NOT NULL,
  `productname` VARCHAR(45) NULL,
  `price` DOUBLE NULL,
  `categoryid` VARCHAR(10) NULL,
  `description` TEXT(2000) NULL,
  `available` INT(1) NULL,
  PRIMARY KEY (`productid`),
  INDEX `categoryid_idx` (`categoryid` ASC),
  CONSTRAINT `categoryid`
    FOREIGN KEY (`categoryid`)
    REFERENCES `aitest`.`demoweb_category` (`categoryid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;
    
    CREATE TABLE `aitest`.`demoweb_role` (
  `roleid` INT auto_increment NOT NULL,
  `rolename` VARCHAR(45) NULL,
  `description` TEXT(2000) NULL,
  `createdtime` DATETIME NULL,
  `modifiedtime` DATETIME NULL,
  PRIMARY KEY (`roleid`))
  ENGINE = InnoDB;
  
   CREATE TABLE `aitest`.`demoweb_permission` (
  `permissionid` INT auto_increment NOT NULL,
  `permissionname` VARCHAR(45) NULL,
  `description` TEXT(2000) NULL,
  `createdtime` DATETIME NULL,
  `modifiedtime` DATETIME NULL,
  PRIMARY KEY (`permissionid`))
  ENGINE = InnoDB;
  
  CREATE TABLE `aitest`.`demoweb_user_role` (
  `id` INT auto_increment NOT NULL,
  `userid` INT NOT NULL,
  `roleid` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `userid_idx` (`userid` ASC),
  INDEX `roleid_idx` (`roleid` ASC),
  CONSTRAINT `roleid`
    FOREIGN KEY (`roleid`)
    REFERENCES `aitest`.`demoweb_role` (`roleid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `userid`
    FOREIGN KEY (`userid`)
    REFERENCES `aitest`.`demoweb_user` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE TABLE `demoweb_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `permissionid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid_idx` (`roleid`),
  KEY `permission_idx` (`permissionid`),
  CONSTRAINT `permissionid` FOREIGN KEY (`permissionid`) REFERENCES `demoweb_permission` (`permissionid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `roleid2` FOREIGN KEY (`roleid`) REFERENCES `demoweb_role` (`roleid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB;
