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
if (isset($_GET['trainer_level'])) {
    $_SESSION['trainer_level']=$_GET['trainer_level'];
    $trainer_level=$_GET['trainer_level'];
}
elseif (isset($_SESSION['trainer_level']))
{
    $trainer_level = $_SESSION['trainer_level'];
}
else {
    $trainer_level = 40;
}

// *** id ***
if (isset($_GET['id']))
{
    $_SESSION['id'] = $_GET["id"];
    $id = $_GET["id"];
}
elseif (isset($_SESSION['id']))
{
    $id = $_SESSION['id'];
}
else {
    // error
}

// *** id ***
if (isset($_GET['op_id']))
{
    $_SESSION['op_id'] = $_GET["op_id"];
    $op_id = $_GET["op_id"];
}
elseif (isset($_SESSION['op_id']))
{
    $op_id = $_SESSION['op_id'];
}
else {
    // error
}

// *** qm ***
if (isset($_GET['qm']))
{
    $_SESSION['qm'] = $_GET["qm"];
    $qm = $_GET["qm"];
}
elseif (isset($_SESSION['qm']))
{
    $qm = $_SESSION['qm'];
}
else {
    // error
}

// *** oqm ***
if (isset($_GET['oqm']))
{
    $_SESSION['oqm'] = $_GET["oqm"];
    $oqm = $_GET["oqm"];
}
elseif (isset($_SESSION['oqm']))
{
    $oqm = $_SESSION['oqm'];
}
else {
    // error
}

// *** ss ***
if (isset($_GET['ss']))
{
    $_SESSION['ss'] = $_GET["ss"];
    $ss = $_GET["ss"];
}
elseif (isset($_SESSION['ss']))
{
    $ss = $_SESSION['ss'];
}
else {
    // error
}

// *** oss ***
if (isset($_GET['oss']))
{
    $_SESSION['oss'] = $_GET["oss"];
    $oss = $_GET["oss"];
}
elseif (isset($_SESSION['oss']))
{
    $oss = $_SESSION['oss'];
}
else {
    // error
}

//constants
$width=80;
$height=80;

require_once('utils.php');


?>