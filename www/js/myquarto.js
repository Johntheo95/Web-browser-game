var me={token:null,player_turn:null};
var game_status={};
var board={};
var last_update=new Date().getTime();
var timer=null;




$(function () {
	
	draw_empty_board();
	fill_board();


	$('#Quarto_login').click( login_to_game);
	$('#quarto_reset').click( reset_board);
	
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
	console.log("I've been called1");
	
	$.ajax({url: "quarto.php/board/", method: 'get', success : fill_board_by_data });
	
}

function fill_board_by_data(data,t1,t2) {
	
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		console.log("I've been called2");
		var id = '#squareb_'+ o.x +'_' + o.y;
		var c = (o.piece_color!=null)?o.piece_color + o.piece_height + o.piece_center + o.piece_shape:'';
		var im = (o.piece_color!=null)?'<img class="piece" src="images/'+c+'.jpg">':'';
	    $(id).html(im);
		}
        
		
		/*CHECK THIS ONE 
        if(me.piece_color!=null && game_status.p_turn==me.piece_color) {
			$('#move_div').show(1000);
		} else {
			$('#move_div').hide(1000);
		}
		*/

}




//ADDED FROM HERE

/* */
function reset_board() {
	$.ajax({url: "quarto.php/board/", headers: {"X-Token": me.token}, method: 'POST',  success: fill_board_by_data });
	$('#move_div').hide();
	$('#game_initializer').show(2000);
    }



function login_to_game() {
	if($('#username').val()=='') {
		alert('You have to set a username');
		return;
	}
	var Whosturn = $('#pturn').val();
	draw_empty_board(Whosturn);
	fill_board();
	
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
	$.ajax({url: "quarto.php/status/", success: update_status,headers: {"X-Token": me.token} });
}

function update_status(data) {
	last_update=new Date().getTime();
	var game_stat_old = game_status;
	game_status=data[0];
	update_info();
	clearTimeout(timer);
	if(game_status.p_turn==me.player_turn &&  me.player_turn!=null) {
		x=0;
		// do play
		if(game_stat_old.p_turn!=game_status.p_turn) {
			fill_board();
		}
		$('#move_div').show(1000);
		timer=setTimeout(function() { game_status_update();}, 15000);
	} else {
		// must wait for something
		$('#move_div').hide(1000);
		timer=setTimeout(function() { game_status_update();}, 4000);
	}
 	
}

function update_info(){
	$('#game_info').html("I am Player: "+me.player_turn+", my name is "+me.username +'<br>Token='+me.token+'<br>Game state: '+game_status.status+', '+ game_status.p_turn+' must play now.');
	
	}

	
