$(function () {
	
	draw_empty_board();
	fill_board();
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
	//$.ajax({url: "quarto.php/board/", method: 'get', success: fill_board_by_data });
	
}

function fill_board_by_data(data,t1,t2) {
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.piece!=null)?o.piece_color + o.piece_height:'';
		var im = (o.piece!=null)?'<img class="piece" src="images/'+c+'.png">':'';
		$(id).addClass(o.b_color+'_square').html(im);
		
		
	}
}