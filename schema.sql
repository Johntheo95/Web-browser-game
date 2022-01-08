CREATE TABLE `pieceboard` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece_height` enum('T','S') DEFAULT NULL,
  `piece_center` enum('H','F') DEFAULT NULL,
  `piece_shape` enum('C','SQ') DEFAULT NULL,
 PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



 
REATE TABLE `board` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `piece_color` enum('W','B') DEFAULT NULL,
  `piece_height` enum('T','S') DEFAULT NULL,
  `piece_center` enum('H','F') DEFAULT NULL,
  `piece_shape` enum('C','SQ') DEFAULT NULL,
 PRIMARY KEY (`y`,`x`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


NSERT INTO `board` VALUES (1,1,NULL,NULL,NULL,NULL),(1,2,NULL,NULL,NULL,NULL),(1,3,NULL,NULL,NULL,NULL),(1,4,NULL,NULL,NULL,NULL),
(2,1,NULL,NULL,NULL,NULL),(2,2,NULL,NULL,NULL,NULL),(2,3,NULL,NULL,NULL,NULL),(2,4,NULL,NULL,NULL,NULL),
(3,1,NULL,NULL,NULL,NULL),(3,2,NULL,NULL,NULL,NULL),(3,3,NULL,NULL,NULL,NULL),(3,4,NULL,NULL,NULL,NULL),
(4,1,NULL,NULL,NULL,NULL),(4,2,NULL,NULL,NULL,NULL),(4,3,NULL,NULL,NULL,NULL),(4,4,NULL,NULL,NULL,NULL);



INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','1','W','T','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','1','B','T','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','2','W','T','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','2','B','T','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','3','W','T','F','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','3','B','T','F','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','4','W','T','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','4','B','T','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','5','W','S','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','5','B','S','H','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','6','W','S','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','6','B','S','H','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','7','W','S','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','7','B','S','F','SQ');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('1','8','W','S','F','C');
INSERT INTO `pieceboard` (`x`, `y`, `piece_color`, `piece_height`, `piece_center`, `piece_shape`) VALUES('2','8','B','S','F','C');
