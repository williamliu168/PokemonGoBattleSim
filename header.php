<?php
// this will be included at the very start of every page
// require_once('userdata.php');
require_once('host.php');

$db = new Db();

// session
session_start([
    'cookie_lifetime' => 86400
]);

// *** USERDATA ***
/*
if (isset($_SESSION['userdata'])) {
	echo 'userdata set in session<br>';
    $userdata = $_SESSION['userdata'];
}
else {
	echo 'userdata not set in session, creating a new one.<br>';
    $userdata = new Userdata();
    $userdata->done();    // done with db connection
    $_SESSION['userdata']=$userdata;
}*/

// *** HOST ***
if (isset($_SESSION['host'])) {
	echo 'host set in session<br>';
    $host = $_SESSION['host'];
}
else {
	echo 'host not set in session, creating a new one.<br>';
    $host = new Host($db);
    $_SESSION['host']=$host;
}

require_once('utils.php');


?>