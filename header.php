<?php
// this will be included at the very start of every page
require_once('host.php');

$db = new Db();		// realized that object pdo:: which owned by class Db cannot be stored in session (i.e., stored in $Host), so have to create a new Db every page view

// session
session_start([
    'cookie_lifetime' => 86400
]);

// *** HOST ***
if (isset($_SESSION['host'])) {
    $host = $_SESSION['host'];
}
else {
    $host = new Host($db);
    $_SESSION['host']=$host;
}

// *** trainerLevel ***
if (isset($_SESSION['trainer_level'])) {
    $trainer_level = $_SESSION['trainer_level'];
}
else {
}


require_once('utils.php');


?>