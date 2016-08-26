<?php
// this will be included at the very start of every page

// session
require_once('host.php');
session_start([
    'cookie_lifetime' => 86400,
    'read_and_close'  => true,
	'cache_limiter' => 'private',
]);

if (isset($_SESSION['host'])) {
    $host = $_SESSION['host'];
}

require_once('utils.php');


?>