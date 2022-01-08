<?php
$host='localhost';
$db = 'project_db';
$user='root';
$pass='';




if(gethostname()=='users.iee.ihu.gr') {
	$mysqli = new mysqli($host, $user, $pass, $db,null,'/home/staff/asidirop/mysql/run/mysql.sock');
} else {
        $mysqli = new mysqli('localhost',$user,null,$db);
		
}

if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . 
    $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

?>