<?php
// this will be included at the very start of every page

// 
require('host.php');
session_start([
    'cookie_lifetime' => 86400,
    'read_and_close'  => true,
]);
if (isset($_SESSION['host'])) {
    $host = $_SESSION['host'];
}
else echo "error: session object undefined..<br>";


?>