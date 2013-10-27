/*
SQLyog Ultimate v9.50 
MySQL - 5.6.14 : Database - db_mysqli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_mysqli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_mysqli`;

/*Table structure for table `emptable` */

DROP TABLE IF EXISTS `emptable`;

CREATE TABLE `emptable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `emptable` */

insert  into `emptable`(`id`,`name`,`address`,`salary`) values (1,'pusp','dhn','2000'),(2,'dhurba','dhn','3000');

/* Procedure structure for procedure `best_records` */

/*!50003 DROP PROCEDURE IF EXISTS  `best_records` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `best_records`()
BEGIN
	select * from emptable where salary > 2000;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `get_records` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_records` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `get_records`()
BEGIN
    select * from emptable;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
