$(function () {
	
	draw_empty_board();
	fill_board();
	fill_pieceboard();
	$('#do_move').click( do_move);
	$('#reset').click( reset_board);
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
	
	$.ajax({url: "quarto.php/board/", method: 'get', success : fill_board_by_data });
	
}
function fill_pieceboard() {
	console.log("called fill_pieceboard");
	
	$.ajax({url: "quarto.php/board/pieceboard", method: 'get', success : fill_pieceboard_by_data });
	
}

function fill_pieceboard_by_data(data,t1,t2) {
	console.log("called fill_pieceboard_by_data");
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#squareb_'+ o.x +'_' + o.y;
		var c = (o.piece_color!=null)?o.piece_color + o.piece_height + o.piece_center + o.piece_shape:'';
		var im = (o.piece_color!=null)?'<img class="piece" src="images/'+c+'.jpg">':'';
		$(id).addClass(o.b_color+'_square').html(im);
		
		
	}
}

function fill_board_by_data(data,t1,t2) {
	
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		console.log("called fill_board_by_data");
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.piece_color!='')?o.piece_color + o.piece_height + o.piece_center + o.piece_shape:'';
		var im = (o.piece_color!='')?'<img class="piece" src="images/'+c+'.jpg">':'';
		$(id).addClass(o.b_color+'_square').html(im);
		
		
	}
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
			success: move_result,});
	
}
//data maybe not needed
function move_result(data){
	fill_board();
	fill_pieceboard();
}

function reset_board() {
	//token removed must be added
	$.ajax({url: "quarto.php/board/", method: 'POST',  success: fill_board_by_data });
	$.ajax({url: "quarto.php/board/resetpieceboard", method: 'POST',  success: fill_pieceboard_by_data });
	
}