/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.20-log : Database - freightsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`freightsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `freightsystem`;

/*Table structure for table `companyuser` */

DROP TABLE IF EXISTS `companyuser`;

CREATE TABLE `companyuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '登录账户',
  `password` char(40) DEFAULT NULL COMMENT '登录密码',
  `perms` varchar(20) DEFAULT NULL,
  `companyname` varchar(26) DEFAULT NULL COMMENT '公司名',
  `principal` varchar(20) DEFAULT NULL COMMENT '法定责任人',
  `moneydeposit` int(11) DEFAULT NULL COMMENT '保证金',
  `companyaddress` varchar(50) DEFAULT NULL COMMENT '公司地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `companyuser` */

insert  into `companyuser`(`id`,`username`,`password`,`perms`,`companyname`,`principal`,`moneydeposit`,`companyaddress`) values (1,'1234567','698d51a19d8a121ce581499d7b701668',NULL,'绑德货运','刘明',20000,'北京市海淀路'),(2,'1239382','698d51a19d8a121ce581499d7b701668',NULL,'邦德货运','马原',10000,'上海市骆冰路');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
