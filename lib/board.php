

<?php
function show_board() {

	 global $mysqli;
	
	$sql = 'select * from pieceboard';
	$st = $mysqli->prepare($sql);

	$st->execute();
	$res = $st->get_result();

	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
}



?>