

<?php

require_once "../lib/dbconnect.php";


echo "This line from php....";

$sql = "select * from pieceboard";
$st = $mysqli->prepare($sql);
$st->execute();
$res = $st->get_result();
$res = $st->get_result();

	header('Content-type: application/json');
		print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);

?>