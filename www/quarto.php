<?php
require_once "../lib/dbconnect.php";
require_once "../lib/board.php";
require_once "../lib/game.php";
require_once "../lib/users.php";

$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
$input = json_decode(file_get_contents('php://input'),true);
if($input==null) {
    $input=[];
}
if(isset($_SERVER['HTTP_X_TOKEN'])) {
    $input['token']=$_SERVER['HTTP_X_TOKEN'];
} else {
    $input['token']='';
}

switch ($r=array_shift($request)) {
    case 'board' : 
        switch ($b=array_shift($request)) {
            case '':
                //added input
            case null: handle_board($method,$input);
                        break;
                        //maybe needs token
            case 'piece': handle_piece($method, $request[0],$request[1],$input);
                        break;
			case 'pieceboard': handle_pieceboard();
                        break;
			//case 'resetboard': handle_resetboard();
                     //   break;
			case 'resetpieceboard': handle_resetpieceboard();
                        break;
            }
			
			
            break;
    case 'status': 
			if(sizeof($request)==0) {handle_status($method);}
			else {header("HTTP/1.1 404 Not Found");}
			break;
	case 'players': handle_player($method, $request,$input);
			    break;

    default:  header("HTTP/1.1 404 Not Found");
                        exit;
}


//now has token
function handle_piece($method, $x,$y,$input) {
	if($method=='GET') {
		//not used
            show_piece($x,$y);
        } else if ($method=='PUT') {
            //a token must be given as a parameter also
			move_piece($x,$y,$input['x'],$input['y'],$input['token']);
        }    	
        
    
}




//check if token needed
//need  another one for pieceboard
//added input
function handle_board($method,$input) {
    if($method=='GET') {
            show_board($input);
    } else if ($method=='POST') {
            reset_board();
            //added this 
            show_board($input);
    } else {
        header('HTTP/1.1405 Method Not Allowed');
    }
    
}


//get/post methods not recognised
function handle_pieceboard() {
	
	show_pieceboard();
}	


//check this against 
function handle_resetpieceboard(){
    global $mysqli;
    $sql = 'UPDATE players SET username=NULL, token=NULL,player_turn=NULL';
	$st = $mysqli->prepare($sql);
	$st->execute();

   
}






//BEFORE MERGE HERE 


function handle_player($method, $p,$input) {
    switch ($b=array_shift($p)) {
	
    case 'SECOND':
		case 'FIRST': handle_user($method, $b,$input);
					break;
		default: header("HTTP/1.1 404 Not Found");
				 print json_encode(['errormesg'=>"Player $b not found."]);
                 break;
	}
}
  



function handle_status($method) {
    if($method=='GET') {
        show_status();
        
    } else {
        header('HTTP/1.1 405 Method Not Allowed');
    }

}

   


   
   ?>