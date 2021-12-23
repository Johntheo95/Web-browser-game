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