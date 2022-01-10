<?php
require_once "../lib/dbconnect.php";
require_once "../lib/board.php";

$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
$input = json_decode(file_get_contents('php://input'),true);




switch ($r=array_shift($request)) {
    case 'board' : 
        switch ($b=array_shift($request)) {
            case '':
            case null: handle_board($method);
                        break;
            case 'piece': handle_piece($method, $request[0],$request[1],$input);
                        break;
			case 'pieceboard': handle_pieceboard();
                        break;
			case 'resetboard': handle_resetboard();
                        break;
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

//need one for pieceboard

	
	
function handle_piece($method, $x,$y,$input) {
	if($method=='GET') {
		//not used
            show_piece($x,$y);
        } else if ($method=='PUT') {
            //a token must be given as a parameter also
			move_piece($x,$y,$input['x'],$input['y']);
        }    	
        
    
}

function handle_board($method) {
    if($method=='GET') {
			show_board();
			
    } else if ($method=='POST') {
            reset_board();
			
    }
}	
//get/post methods not recognised
function handle_pieceboard() {
	
	show_pieceboard();
}	
function handle_resetpieceboard(){
	
	reset_pieceboard();
}


?>