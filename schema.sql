
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

INSERT  into `board`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) values 
(1,1,'','','',''),
(2,1,'','','',''),
(3,1,'','','',''),
(4,1,'','','',''),
(2,1,'','','',''),
(2,2,'','','',''),
(2,3,'','','',''),
(2,4,'','','',''),
(3,1,'','','',''),
(3,2,'','','',''),
(3,3,'','','',''),
(3,4,'','','',''),
(4,1,'','','',''),
(4,2,'','','',''),
(4,3,'','','',''),
(4,4,'','','','');

INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','1','W','T','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','2','B','T','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','3','W','T','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','4','B','T','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','1','W','T','F','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','2','B','T','F','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','3','W','T','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','4','B','T','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('3','1','W','S','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('3','2','B','S','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('3','3','W','S','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('3','4','B','S','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('4','1','W','S','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('4','2','B','S','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('4','3','W','S','F','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('4','4','B','S','F','C');




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

INSERT  into `pieceboard_empty`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) values 
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




DROP TABLE IF EXISTS `players`;
/* piece_color changed to player_turn
change the  order in frond of username the player_turn
 */

CREATE TABLE `players` (
  `username` varchar(20) DEFAULT NULL,
  `player_turn` enum('FIRST','SECOND') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`player_turn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `game_status`;




/*CHECK p_turn need to change, CHECK IF D WAS DRAW */
CREATE TABLE `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` enum('FIRST','SECOND') DEFAULT NULL,
  `result` enum('FIRST','SECOND','DRAW') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `game_status` VALUES ('not active',NULL,NULL,'2022-1-8 18:04:52');
INSERT INTO `players` VALUES (NULL,'FIRST',NULL,NULL),(NULL,'SECOND',NULL,NULL);






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











DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_board`()
BEGIN
	replace into board select * from board_empty;
	update `players` set username=null, token=null;
    update `game_status` set `status`='not active', `p_turn`=null, `result`=null;
    END ;;
DELIMITER ;



DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `move_piece`(x1 tinyint,y1 tinyint,x2 tinyint,y2 tinyint)
BEGIN
	declare  p, Whosturn char;
	
	select  piece, player_turn into p, Whosturn FROM `board` WHERE X=x1 AND Y=y1;
	
	update board
	set piece=p, player_turn=Whosturn
	where x=x2 and y=y2;
	
	UPDATE board
	SET piece=null,player_turn=null
	WHERE X=x1 AND Y=y1;
	update game_status set p_turn=if(Whosturn='FIRST','SECOND','FIRST');
	
    END ;;
DELIMITER ;






DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_move`()
BEGIN
SELECT * FROM
board B1 INNER JOIN board B2
WHERE B1.x=2 AND B1.y=2
AND (B2.`player_turn` IS NULL OR B2.`player_turn`<>B1.`player_turn`)
AND B1.x=B2.x AND B1.y<B2.y AND (B2.y-B1.y)<=2 ;
    END ;;
DELIMITER ;