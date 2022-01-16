var me={token:null,player_turn:null};
var game_status={};
var board={};
var last_update=new Date().getTime();
var timer=null;




$(function () {
	
	draw_empty_board();
	fill_board();
    fill_pieceboard();

	$('#Quarto_login').click( login_to_game);
	$('#do_move').click( do_move);
	
	
	$('#reset').click( reset_board);
	// with old button $('#quarto_reset').click( reset_board); 
	$('#move_div').hide();
	game_status_update();
	
});


function draw_empty_board() {
	
	var t='<table id="quarto_table">';
	for(var i=4;i>0;i--) {
		t += '<tr>';
		for(var j=1;j<5;j++) {
			t += '<td class="quarto_square" id="square_'+j+'_'+i+'">' + j +','+i+'</td>'; 
		}
		t+='</tr>';
	}
	t+='</table>';
	
	$('#Quarto_board').html(t);
	
	var tb='<table id="quarto_table">';
	for(var i=4;i>0;i--) {
		tb += '<tr>';
		for(var j=1;j<5;j++) {
			tb += '<td class="quarto_squareb" id="squareb_'+j+'_'+i+'">' + j +','+i+'</td>'; 
		}
		tb+='</tr>';
	}
	tb+='</table>';
	
	$('#Piece_board').html(tb);
	
}





function fill_board() {
	console.log("called fill_board");
	$.ajax({url: "quarto.php/board/", headers: {"X-Token": me.token}, method: 'get', success : fill_board_by_data });
	
}

function fill_pieceboard() {
	console.log("called fill_pieceboard");
	
	$.ajax({url: "quarto.php/board/pieceboard",headers: {"X-Token": me.token}, method: 'get', success : fill_pieceboard_by_data });
	
}


function fill_board_by_data(data,t1,t2) {

	for(var i=0;i<data.length;i++) {
		var o = data[i];
		console.log("called fill_board_by_data");
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.piece_color!='')?o.piece_color + o.piece_height + o.piece_center + o.piece_shape:'';
		var im = (o.piece_color!='')?'<img class="piece" src="images/'+c+'.jpg">':'';
		$(id).html(im);


		
	}

		
}


function fill_pieceboard_by_data(data,t1,t2) {
	console.log("called fill_pieceboard_by_data");
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#squareb_'+ o.x +'_' + o.y;
		var c = (o.piece_color!=null)?o.piece_color + o.piece_height + o.piece_center + o.piece_shape:'';
		var im = (o.piece_color!=null)?'<img class="piece" src="images/'+c+'.jpg">':'';
		$(id).html(im);//remove addClass or change for background icon
		
		//CHECK THIS ONE 
        if(me.player_turn!=null && game_status.p_turn==me.player_turn) {
			$('#move_div').show(1000);
		} else {
			$('#move_div').hide(1000);
		}
		
	}
}

//ADDED FROM HERE
function login_to_game() {
	if($('#username').val()=='') {
		alert('You have to set a username');
		return;
	}
	var Whosturn = $('#pturn').val();
	//dont need because was used for black chess player
	//draw_empty_board();
	//console.log("draw_empty_board ok");
	//fill_board(); //need to ender Whosturn?
	//console.log("fill_board ok");

	$.ajax({url: "quarto.php/players/"+ Whosturn,
			method: 'PUT',
			dataType: "json",
			headers: {"X-Token": me.token},
			contentType: 'application/json',
			data: JSON.stringify( {username: $('#username').val(), player_turn: Whosturn}),
			success: login_result,
			error: login_error});
}

function login_result(data) {
	me = data[0];
	$('#game_initializer').hide();
	update_info();
	game_status_update();
}

function login_error(data,y,z,c) {
	var x = data.responseJSON;
	alert(x.errormesg);
}

function game_status_update() {
	clearTimeout(timer);
	$.ajax({url: "quarto.php/status/", success: update_status, headers: {"X-Token": me.token} });
	console.log("game_status_update");
	
		
}



//check this with the do_move fucntion to chage the player turn and div hide and show
function update_status(data) {
	last_update=new Date().getTime();
	var game_stat_old = game_status;
	game_status=data[0];
	//if(game_status.staus= "")
	update_info();
	console.log("update_info from updatestatus");
	clearTimeout(timer);
	if(game_status.p_turn==me.player_turn &&  me.player_turn!=null) {
		x=0;
		// do play
		if(game_stat_old.p_turn!=game_status.p_turn) {
			fill_board();
			fill_pieceboard();
		}
		$('#move_div').show(1000);
		timer=setTimeout(function() { game_status_update();}, 12000);
	} else {
		// must wait for something
		$('#move_div').hide(1000);
		timer=setTimeout(function() { game_status_update();}, 4000);
	}
 	
}

function update_info(){
	$('#game_info').html("I am Player: "+me.player_turn+", my name is "+me.username +'<br>Token='+me.token+'<br>Game state: '+game_status.status+', '+ game_status.p_turn+' must play now.');
	console.log("update_info from update_info");
}



	








	function do_move() {
	var s = $('#the_move').val();
	
	var a = s.trim().split(/[ ]+/);
	if(a.length!=4) {
		alert('Must give 4 numbers');
		return;
	}
	console.log("called do_move");
	$.ajax({url: "quarto.php/board/piece/"+a[0]+'/'+a[1], 
			method: 'PUT',
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify( {x: a[2], y: a[3]}),
			headers: {"X-Token": me.token},
			success: move_result,});
}


//data maybe not needed

//added data in functions
function move_result(data){
	console.log("now in the move_result")
	//this needs data?
	fill_board();
	fill_pieceboard();
	game_status_update();

	

}


/*  OLD ONE CHANGE IT
function reset_board() {
	$.ajax({url: "quarto.php/board/", headers: {"X-Token": me.token}, method: 'POST',  success: fill_board_by_data });
	$('#move_div').hide();
	$('#game_initializer').show(2000);  <---- MAYBE THIS IS NEED
    }
*/
function reset_board() {
	//token removed must be added  X-Token added should work
	$.ajax({url: "quarto.php/board/",headers: {"X-Token": me.token}, method: 'POST',  success: fill_board_by_data });
	$.ajax({url: "quarto.php/board/resetpieceboard", headers: {"X-Token": me.token},method: 'POST',  success: fill_pieceboard_by_data });
	$('#game_initializer').show();
	
		
		
}