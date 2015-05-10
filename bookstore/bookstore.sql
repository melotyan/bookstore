# Host: localhost  (Version: 5.6.14)
# Date: 2015-05-05 21:20:12
# Generator: MySQL-Front 5.3  (Build 4.43)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "book"
#

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `primaryprice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `newprice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `publishhouse` varchar(50) NOT NULL DEFAULT '',
  `publisdate` date NOT NULL DEFAULT '0000-00-00',
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "book"
#

INSERT INTO `book` VALUES (12,'java ee','computer science','liang',200,56,45,'bupt','2015-05-06','upload/1430830835217.png','good java book');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('1','1','1','18106692042','1'),('2','2','2011212090','2','2'),('admin','admin','admin',NULL,NULL);

#
# Structure for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  KEY `userId` (`userId`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "order"
#


#
# Structure for table "order_detail"
#

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `recordId` int(11) NOT NULL DEFAULT '0',
  `bookid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`recordId`,`bookid`),
  KEY `order_detail_ibfk_1` (`bookid`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book` (`Id`),
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`recordId`) REFERENCES `order` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "order_detail"
#


#
# Structure for table "cart"
#

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `bookid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `amount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`bookid`,`userid`),
  KEY `userid` (`userid`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "cart"
#

