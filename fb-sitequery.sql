/*
SQLyog Community
MySQL - 11.5.2-MariaDB : Database - qbcoreframework_1843d4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qbcoreframework_1843d4` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;

USE `qbcoreframework_1843d4`;

/*Table structure for table `website` */

CREATE TABLE `website` (
  `citizenid` varchar(11) NOT NULL,
  `online` tinyint(1) NOT NULL DEFAULT 0,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`citizenid`,`online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
