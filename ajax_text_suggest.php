<?php
require_once('header.php');

$list = $host->data->pokemon_names;

$keyword = isset($_POST['keyword']) ? strtolower($_POST['keyword']) : "";
if(IsNullOrEmptyString($keyword))
{
    exit;
}

foreach ($list as $item) {
    if (strpos($item,$keyword)!==false)
    {
        $pokemon_name = str_replace($_POST['keyword'], '<b>'.$_POST['keyword'].'</b>', $item);
        echo '<li onclick="set_item(\''.str_replace("'", "\'", $item).'\')">'.$pokemon_name.'</li>';
    }
}
?>