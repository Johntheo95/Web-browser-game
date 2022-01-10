/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - project_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `project_db`;

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece_height` enum('T','S') DEFAULT NULL,
  `piece_center` enum('H','F') DEFAULT NULL,
  `piece_shape` enum('C','SQ') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `board` */

insert  into `board`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) values 
(1,1,'','','',''),
(2,1,'','','',''),
(3,1,'','','',''),
(4,1,'','','',''),
(1,2,'','','',''),
(2,2,'','','',''),
(3,2,'','','',''),
(4,2,'','','',''),
(1,3,'','','',''),
(2,3,'','','',''),
(3,3,'','','',''),
(4,3,'','','',''),
(1,4,'','','',''),
(2,4,'','','',''),
(3,4,'','','',''),
(4,4,'','','','');

/*Table structure for table `board2` */

DROP TABLE IF EXISTS `board2`;

CREATE TABLE `board2` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `b_color` enum('B','W') NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece` enum('K','Q','R','B','N','P') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `board2` */

insert  into `board2`(`x`,`y`,`b_color`,`piece_color`,`piece`) values 
(1,1,'B','W','R'),
(2,1,'W','W','N'),
(3,1,'B','W','B'),
(4,1,'W','W','Q'),
(5,1,'B','W','K'),
(6,1,'W','W','B'),
(7,1,'B','W','N'),
(8,1,'W','W','R'),
(1,2,'W','W','P'),
(2,2,'B','W','P'),
(3,2,'W','W','P'),
(4,2,'B','W','P'),
(5,2,'W','W','P'),
(6,2,'B','W','P'),
(7,2,'W','W','P'),
(8,2,'B','W','P'),
(1,3,'B',NULL,NULL),
(2,3,'W',NULL,NULL),
(3,3,'B',NULL,NULL),
(4,3,'W',NULL,NULL),
(5,3,'B',NULL,NULL),
(6,3,'W',NULL,NULL),
(7,3,'B',NULL,NULL),
(8,3,'W',NULL,NULL),
(1,4,'W',NULL,NULL),
(2,4,'B',NULL,NULL),
(3,4,'W',NULL,NULL),
(4,4,'B',NULL,NULL),
(5,4,'W',NULL,NULL),
(6,4,'B',NULL,NULL),
(7,4,'W',NULL,NULL),
(8,4,'B',NULL,NULL),
(1,5,'B',NULL,NULL),
(2,5,'W',NULL,NULL),
(3,5,'B',NULL,NULL),
(4,5,'W',NULL,NULL),
(5,5,'B',NULL,NULL),
(6,5,'W',NULL,NULL),
(7,5,'B',NULL,NULL),
(8,5,'W',NULL,NULL),
(1,6,'W',NULL,NULL),
(2,6,'B',NULL,NULL),
(3,6,'W',NULL,NULL),
(4,6,'B',NULL,NULL),
(5,6,'W',NULL,NULL),
(6,6,'B',NULL,NULL),
(7,6,'W',NULL,NULL),
(8,6,'B',NULL,NULL),
(1,7,'B','B','P'),
(2,7,'W','B','P'),
(3,7,'B','B','P'),
(4,7,'W','B','P'),
(5,7,'B','B','P'),
(6,7,'W','B','P'),
(7,7,'B','B','P'),
(8,7,'W','B','P'),
(1,8,'W','B','R'),
(2,8,'B','B','N'),
(3,8,'W','B','B'),
(4,8,'B','B','Q'),
(5,8,'W','B','K'),
(6,8,'B','B','B'),
(7,8,'W','B','N'),
(8,8,'B','B','R');

/*Table structure for table `board_empty` */

DROP TABLE IF EXISTS `board_empty`;

CREATE TABLE `board_empty` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece_height` enum('T','S') DEFAULT NULL,
  `piece_center` enum('H','F') DEFAULT NULL,
  `piece_shape` enum('C','SQ') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `board_empty` */

insert  into `board_empty`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) values 
(1,1,'','','',''),
(2,1,'','','',''),
(3,1,'','','',''),
(4,1,'','','',''),
(1,2,'','','',''),
(2,2,'','','',''),
(3,2,'','','',''),
(4,2,'','','',''),
(1,3,'','','',''),
(2,3,'','','',''),
(3,3,'','','',''),
(4,3,'','','',''),
(1,4,'','','',''),
(2,4,'','','',''),
(3,4,'','','',''),
(4,4,'','','','');

/*Table structure for table `pieceboard` */

DROP TABLE IF EXISTS `pieceboard`;

CREATE TABLE `pieceboard` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece_height` enum('T','S') DEFAULT NULL,
  `piece_center` enum('H','F') DEFAULT NULL,
  `piece_shape` enum('C','SQ') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pieceboard` */

insert  into `pieceboard`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) values 
(1,1,'W','T','H','C'),
(2,1,'W','T','F','C'),
(3,1,'W','S','H','C'),
(4,1,'W','S','F','SQ'),
(1,2,'B','T','H','C'),
(2,2,'B','T','F','C'),
(3,2,'B','S','H','C'),
(4,2,'B','S','F','SQ'),
(1,3,'W','T','H','SQ'),
(2,3,'W','T','F','SQ'),
(3,3,'W','S','H','SQ'),
(4,3,'W','S','F','C'),
(1,4,'B','T','H','SQ'),
(2,4,'B','T','F','SQ'),
(3,4,'B','S','H','SQ'),
(4,4,'B','S','F','C'),
(1,5,'W','S','H','C'),
(2,5,'B','S','H','C'),
(1,6,'W','S','H','SQ'),
(2,6,'B','S','H','SQ'),
(1,7,'W','S','F','SQ'),
(2,7,'B','S','F','SQ'),
(1,8,'W','S','F','C'),
(2,8,'B','S','F','C');

/*Table structure for table `pieceboard_empty` */

DROP TABLE IF EXISTS `pieceboard_empty`;

CREATE TABLE `pieceboard_empty` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece_height` enum('T','S') DEFAULT NULL,
  `piece_center` enum('H','F') DEFAULT NULL,
  `piece_shape` enum('C','SQ') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pieceboard_empty` */

insert  into `pieceboard_empty`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) values 
(1,1,'W','T','H','C'),
(2,1,'W','T','F','C'),
(3,1,'W','S','H','C'),
(4,1,'W','S','F','SQ'),
(1,2,'B','T','H','C'),
(2,2,'B','T','F','C'),
(3,2,'B','S','H','C'),
(4,2,'B','S','F','SQ'),
(1,3,'W','T','H','SQ'),
(2,3,'W','T','F','SQ'),
(3,3,'W','S','H','SQ'),
(4,3,'W','S','F','C'),
(1,4,'B','T','H','SQ'),
(2,4,'B','T','F','SQ'),
(3,4,'B','S','H','SQ'),
(4,4,'B','S','F','C');

/* Procedure structure for procedure `clean_board` */

/*!50003 DROP PROCEDURE IF EXISTS  `clean_board` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_board`()
BEGIN
	replace into board select * from board_empty;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `clean_pieceboard` */

/*!50003 DROP PROCEDURE IF EXISTS  `clean_pieceboard` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_pieceboard`()
BEGIN
	replace into pieceboard select * from pieceboard_empty;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `move_piece` */

/*!50003 DROP PROCEDURE IF EXISTS  `move_piece` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `move_piece`(x1 TINYINT,y1 TINYINT,x2 TINYINT,y2 TINYINT)
BEGIN
	DECLARE p_color, p_height, p_center, p_shape varchar(45);
	
	
	
	SELECT   piece_color,piece_height,piece_center,piece_shape INTO p_color,p_height,p_center,p_shape FROM `pieceboard` WHERE X=x1 AND Y=y1;
	
	UPDATE board
	SET piece_color=p_color,piece_height=p_height,piece_center=p_center,piece_shape=p_shape
	WHERE X=x2 AND Y=y2;
	
	UPDATE pieceboard
	SET piece_color=NULL,piece_height=NULL,piece_center=NULL,piece_shape=NULL
	WHERE X=x1 AND Y=y1;
	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `move_piecess` */

/*!50003 DROP PROCEDURE IF EXISTS  `move_piecess` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `move_piecess`(x1 TINYINT,y1 TINYINT,x2 TINYINT,y2 TINYINT)
BEGIN
	DECLARE `piece_height`,p_color, p_height, p_center, p_shape varchar(45);
	
	
	
	SELECT   piece_color,piece_height,piece_center,piece_shape INTO p_color,p_height,p_center,p_shape FROM `pieceboard` WHERE X=x1 AND Y=y1;
	
	UPDATE board
	SET piece_color=p_color,piece_height=p_height,piece_center=p_center,piece_shape=p_shape
	WHERE X=x2 AND Y=y2;
	
	UPDATE pieceboard
	SET piece_color=NULL,piece_height=NULL,piece_center=NULL,piece_shape=NULL
	WHERE X=x1 AND Y=y1;
	
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
