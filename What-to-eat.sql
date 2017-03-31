CREATE TABLE `food` (
`FOODID` int(11) NOT NULL,
`FOODNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`USER` int(11) NULL DEFAULT NULL,
`USERID` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`FOODID`) ,
INDEX `FK_e53385l3fiqeb48979mhoopbg` (`USER`),
INDEX `FK_wjk0wx6ub6asqh63ocjihtx4` (`USERID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

CREATE TABLE `foodstyle` (
`FOODSTYLEID` int(11) NOT NULL,
`STYLENAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`FOODSTYLEID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

CREATE TABLE `foodtype` (
`FOODTYPEID` int(11) NOT NULL,
`TYPENAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`FOODTYPEID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

CREATE TABLE `stylelink` (
`STYLELINKID` int(11) NOT NULL,
`FOOD` int(11) NULL DEFAULT NULL,
`FOODSTYLE` int(11) NULL DEFAULT NULL,
`FOODID` int(11) NULL DEFAULT NULL,
`FOODSTYLEID` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`STYLELINKID`) ,
INDEX `FK_eowqee6l6cx7gr958nkwromal` (`FOOD`),
INDEX `FK_i80w5hskfvs6s1t0hdhlsib1w` (`FOODSTYLE`),
INDEX `FK_9ujhjyo5ihcwxqj0k1hgd02ju` (`FOODID`),
INDEX `FK_9gihhhi6ni50wux4qaeyh1qav` (`FOODSTYLEID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

CREATE TABLE `typelink` (
`TYPELINKID` int(11) NOT NULL,
`FOOD` int(11) NULL DEFAULT NULL,
`FOODTYPE` int(11) NULL DEFAULT NULL,
`FOODID` int(11) NULL DEFAULT NULL,
`FOODTYPEID` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`TYPELINKID`) ,
INDEX `FK_9rf8tavx3x5jfvyvnmgkva9x3` (`FOOD`),
INDEX `FK_jch6ny94xakuivplh1q2pbsyn` (`FOODTYPE`),
INDEX `FK_51exv2j9fft1takna9tk9g9pl` (`FOODID`),
INDEX `FK_3y740x301fqt5q3l08lomfisv` (`FOODTYPEID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

CREATE TABLE `user` (
`USERID` int(11) NOT NULL,
`PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`USERNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`USERID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci


ALTER TABLE `food` ADD CONSTRAINT `FK_e53385l3fiqeb48979mhoopbg` FOREIGN KEY (`USER`) REFERENCES `user` (`USERID`);
ALTER TABLE `food` ADD CONSTRAINT `FK_wjk0wx6ub6asqh63ocjihtx4` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`);
ALTER TABLE `stylelink` ADD CONSTRAINT `FK_9gihhhi6ni50wux4qaeyh1qav` FOREIGN KEY (`FOODSTYLEID`) REFERENCES `foodstyle` (`FOODSTYLEID`);
ALTER TABLE `stylelink` ADD CONSTRAINT `FK_9ujhjyo5ihcwxqj0k1hgd02ju` FOREIGN KEY (`FOODID`) REFERENCES `food` (`FOODID`);
ALTER TABLE `stylelink` ADD CONSTRAINT `FK_eowqee6l6cx7gr958nkwromal` FOREIGN KEY (`FOOD`) REFERENCES `food` (`FOODID`);
ALTER TABLE `stylelink` ADD CONSTRAINT `FK_i80w5hskfvs6s1t0hdhlsib1w` FOREIGN KEY (`FOODSTYLE`) REFERENCES `foodstyle` (`FOODSTYLEID`);
ALTER TABLE `typelink` ADD CONSTRAINT `FK_3y740x301fqt5q3l08lomfisv` FOREIGN KEY (`FOODTYPEID`) REFERENCES `foodtype` (`FOODTYPEID`);
ALTER TABLE `typelink` ADD CONSTRAINT `FK_51exv2j9fft1takna9tk9g9pl` FOREIGN KEY (`FOODID`) REFERENCES `food` (`FOODID`);
ALTER TABLE `typelink` ADD CONSTRAINT `FK_9rf8tavx3x5jfvyvnmgkva9x3` FOREIGN KEY (`FOOD`) REFERENCES `food` (`FOODID`);
ALTER TABLE `typelink` ADD CONSTRAINT `FK_jch6ny94xakuivplh1q2pbsyn` FOREIGN KEY (`FOODTYPE`) REFERENCES `foodtype` (`FOODTYPEID`);
