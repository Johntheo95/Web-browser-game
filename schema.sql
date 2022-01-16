DROP TABLE IF EXISTS `pieceboard`;


CREATE TABLE `pieceboard` (
  `x` TINYINT(1) NOT NULL,
  `y` TINYINT(1) NOT NULL,
  `piece_color` ENUM('W','B') DEFAULT NULL,
  `piece_height` ENUM('T','S') DEFAULT NULL,
  `piece_center` ENUM('H','F') DEFAULT NULL,
  `piece_shape` ENUM('C','SQ') DEFAULT NULL,
 PRIMARY KEY (`y`,`x`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;



 

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `x` TINYINT(1) NOT NULL,
  `y` TINYINT(1) NOT NULL,
  `piece_color` ENUM('W','B') DEFAULT NULL,
  `piece_height` ENUM('T','S') DEFAULT NULL,
  `piece_center` ENUM('H','F') DEFAULT NULL,
  `piece_shape` ENUM('C','SQ') DEFAULT NULL,
 PRIMARY KEY (`y`,`x`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT  INTO `board`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) VALUES 
(1,1,'','','',''),
(1,2,'','','',''),
(1,3,'','','',''),
(1,4,'','','',''),
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
  `x` TINYINT(1) NOT NULL,
  `y` TINYINT(1) NOT NULL,
  `piece_color` ENUM('W','B') DEFAULT NULL,
  `piece_height` ENUM('T','S') DEFAULT NULL,
  `piece_center` ENUM('H','F') DEFAULT NULL,
  `piece_shape` ENUM('C','SQ') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;






DROP TABLE IF EXISTS `board_empty`;

CREATE TABLE `board_empty` (
  `x` TINYINT(1) NOT NULL,
  `y` TINYINT(1) NOT NULL,
  `piece_color` ENUM('W','B') DEFAULT NULL,
  `piece_height` ENUM('T','S') DEFAULT NULL,
  `piece_center` ENUM('H','F') DEFAULT NULL,
  `piece_shape` ENUM('C','SQ') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `board_empty` */

INSERT  INTO `board_empty`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) VALUES 
(1,1,'','','',''),
(1,2,'','','',''),
(1,3,'','','',''),
(1,4,'','','',''),
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







DROP TABLE IF EXISTS `pieceboard_empty`;

CREATE TABLE `pieceboard_empty` (
  `x` TINYINT(1) NOT NULL,
  `y` TINYINT(1) NOT NULL,
  `piece_color` ENUM('W','B') DEFAULT NULL,
  `piece_height` ENUM('T','S') DEFAULT NULL,
  `piece_center` ENUM('H','F') DEFAULT NULL,
  `piece_shape` ENUM('C','SQ') DEFAULT NULL,
  PRIMARY KEY (`y`,`x`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `pieceboard_empty` */

INSERT  INTO `pieceboard_empty`(`x`,`y`,`piece_color`,`piece_height`,`piece_center`,`piece_shape`) VALUES 
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
  `username` VARCHAR(20) DEFAULT NULL,
  `player_turn` ENUM('FIRST','SECOND') NOT NULL,
  `token` VARCHAR(100) DEFAULT NULL,
  `last_action` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`player_turn`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `game_status`;




/*CHECK p_turn need to change, CHECK IF D WAS DRAW */
CREATE TABLE `game_status` (
  `status` ENUM('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` ENUM('FIRST','SECOND') DEFAULT NULL,
  `result` ENUM('FIRST','SECOND','DRAW') DEFAULT NULL,
  `last_change` TIMESTAMP NULL DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT INTO `game_status` VALUES ('not active',NULL,NULL,'2022-1-8 18:04:52');
INSERT INTO `players` VALUES (NULL,'FIRST',NULL,NULL),(NULL,'SECOND',NULL,NULL);





DROP PROCEDURE IF EXISTS `clean_board`;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_board`()
BEGIN
	REPLACE INTO board SELECT * FROM board_empty;
	UPDATE `players` SET username=NULL, token=NULL;
    UPDATE `game_status` SET `status`='not active', `p_turn`=NULL, `result`=NULL;
    END ;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `clean_pieceboard`;
DELIMITER ;;

 CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_pieceboard`()
BEGIN
	REPLACE INTO pieceboard SELECT * FROM pieceboard_empty;
	
    END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `move_piece`;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `move_piece`(x1 TINYINT,y1 TINYINT,x2 TINYINT,y2 TINYINT)
BEGIN
	DECLARE p_color, p_height, p_center, p_shape VARCHAR(45);
	
	
	
	SELECT   piece_color,piece_height,piece_center,piece_shape INTO p_color,p_height,p_center,p_shape FROM `pieceboard` WHERE X=x1 AND Y=y1;
	
	UPDATE board
	SET piece_color=p_color,piece_height=p_height,piece_center=p_center,piece_shape=p_shape
	WHERE X=x2 AND Y=y2;
	
	UPDATE pieceboard
	SET piece_color=NULL,piece_height=NULL,piece_center=NULL,piece_shape=NULL
	WHERE X=x1 AND Y=y1;
	
	
	
	
    END ;;
DELIMITER ;






DELIMITER ;;
 CREATE DEFINER=`root`@`localhost`TRIGGER `game_status_update` BEFORE UPDATE ON `game_status` 
    FOR EACH ROW BEGIN
		SET NEW.last_change = NOW();
    END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `changeplayer`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changeplayer` (player VARCHAR(15))
BEGIN
	DECLARE player_turn VARCHAR(15);
	SELECT player INTO player_turn;
	UPDATE game_status SET p_turn = IF(player_turn='FIRST','SECOND','FIRST');
	
    END ;;
DELIMITER ;

