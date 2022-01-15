

<?php

function move_piece($x,$y,$x2,$y2) {
	
	//if($token==null || $token=='') {
		//header("HTTP/1.1 400 Bad Request");
		//print json_encode(['errormesg'=>"token is not set."]);
		//exit;
	//}
	
	//$color = current_color($token);
	//if($color==null ) {
	//	header("HTTP/1.1 400 Bad Request");
		//print json_encode(['errormesg'=>"You are not a player of this game."]);
		//exit;
	//}
	//$status = read_status();
	//if($status['status']!='started') {
	//	header("HTTP/1.1 400 Bad Request");
		//print json_encode(['errormesg'=>"Game is not in action."]);
		//exit;
	//}
	//if($status['p_turn']!=$color) {
	//	header("HTTP/1.1 400 Bad Request");
		//print json_encode(['errormesg'=>"It is not your turn."]);
	//exit;

	//}
	
	$orig_board=read_board();
	$board=convert_board($orig_board);
	$orig_pieceboard=read_pieceboard();
	$pieceboard=convert_pieceboard($orig_pieceboard);
	//color was removed as a parameter must be added for player turn
	//also must get pieceboard as a parameter to check also for null cell
	$n = add_valid_moves_to_piece($board,$pieceboard,$x,$y,$x2,$y2);
	
	if($n==0) {
		header("HTTP/1.1 400 Bad Request");
		print json_encode(['errormesg'=>"This piece cannot move."]);
		exit;
	}
	else {
			do_move($x,$y,$x2,$y2);
			exit;
		
	}
	header("HTTP/1.1 400 Bad Request");
	print json_encode(['errormesg'=>"This move is illegal."]);
	exit;
}



function do_move($x,$y,$x2,$y2) {
	global $mysqli;
	$sql = 'call `move_piece`(?,?,?,?);';
	$st = $mysqli->prepare($sql);
	$st->bind_param('iiii',$x,$y,$x2,$y2 );
	$st->execute();

	header('Content-type: application/json');
	print json_encode(read_board(), JSON_PRETTY_PRINT);
}


function convert_board(&$orig_board) {
	$board=[];
	foreach($orig_board as $i=>&$row) {
		$board[$row['x']][$row['y']] = &$row;
	} 
	return($board);
}

function convert_pieceboard(&$orig_pieceboard) {
	$pieceboard=[];
	foreach($orig_pieceboard as $i=>&$row) {
		$pieceboard[$row['x']][$row['y']] = &$row;
	} 
	return($pieceboard);
}


function read_board() {
	global $mysqli;
	$sql = 'select * from board';
	$st = $mysqli->prepare($sql);
	$st->execute();
	$res = $st->get_result();
	return($res->fetch_all(MYSQLI_ASSOC));
}

function read_pieceboard() {
	global $mysqli;
	$sql = 'select * from pieceboard';
	$st = $mysqli->prepare($sql);
	$st->execute();
	$res = $st->get_result();
	return($res->fetch_all(MYSQLI_ASSOC));
}

function add_valid_moves_to_piece(&$board,&$pieceboard,$x,$y,$x2,$y2) {
	
	
	
	$v=check_victory($board);
	
	
	
	//flag=false
	$number_of_moves=0;
	
	
	if($board[$x2][$y2]['piece_color']==null) {
		
			//flag=true
		$number_of_moves=1;
		}
		
	if($pieceboard[$x][$y]['piece_color']==null){
			//flag=false
		$number_of_moves=0;
		}
	 
	if($v==1){
		$number_of_moves=0;
	}
	return($number_of_moves);
}
//not used
function show_piece($x,$y) {
	global $mysqli;
	
	$sql = 'select * from board where x=? and y=?';
	$st = $mysqli->prepare($sql);
	$st->bind_param('ii',$x,$y);
	$st->execute();
	$res = $st->get_result();
	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
}

function show_pieceboard() {

	 global $mysqli;
	
	$sql = 'select * from pieceboard';
	$st = $mysqli->prepare($sql);

	$st->execute();
	$res = $st->get_result();

	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
	}
	
	
	function show_board() {

	 global $mysqli;
	
	$sql = 'select * from board';
	$st = $mysqli->prepare($sql);

	$st->execute();
	$res = $st->get_result();

	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
}

function reset_board() {
	global $mysqli;
	
	$sql = 'call clean_board()';
	$mysqli->query($sql);
	show_board();
}

function reset_pieceboard() {
	global $mysqli;
	
	$sql = 'call clean_pieceboard()';
	$mysqli->query($sql);
	show_pieceboard();

}



function check_victory(&$board){
$counterd=0;
$counterdi=0;
$v=0;
$data_table=['piece_color','piece_height','piece_center','piece_shape'];
$cols=[0,0,0,0];

for($z=0;$z<3;$z++){
	$counterh=0;
	$counterdi=0;
	$cols=[0,0,0,0];
	$counterd=0;
	for($j=1;$j<5;$j++){
			
			$counterh=0;
		for($i=1;$i<5;$i++){
			
	if($j!=1){
		if($board[$i][$j-1][$data_table[$z]]!=null){
		if ($board[$i][$j][$data_table[$z]]==$board[$i][$j-1][$data_table[$z]]){
          $cols[$i-1]++;
		 
	foreach ($cols as &$value){
		if($value==3){
		$v=1;
		return($v);}
	}
                   	
		}
		}
		

		
	}
									   						
		if($i!=1){
			
	if(($i+$j)==5){

if($board[$i-1][$j+1][$data_table[$z]]!=null){
if ($board[$i][$j][$data_table[$z]]==$board[$i-1][$j+1][$data_table[$z]]){
     $counterdi++;
		if($counterdi==3){
			$v=1;
			return($v);}
}
	}
		}
			
			if($board[$i-1][$j][$data_table[$z]]!=null){
				if ($board[$i][$j][$data_table[$z]]==$board[$i-1][$j][$data_table[$z]]){
				$counterh++;
				if($counterh==3){
					$v=1;
					return($v);
				}
			      
			}
			
			}
		
		if($i==$j){
			if($board[$i-1][$j-1][$data_table[$z]]!=null){
			if ($board[$i][$j][$data_table[$z]]==$board[$i-1][$j-1][$data_table[$z]]){
				$counterd++;
			 if($counterd==3){
					$v=1;
					return($v);
				}
   	}
			}	
		}
						
				}
	
	         
			 
			 
			 }
}
     
       

		
}
			

return($v);
 
}
	

?>