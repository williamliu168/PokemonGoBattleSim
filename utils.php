<?php

function generateRandomGuestName($data) {
	$result='guest_';
	$all_names=$data->get_all_pokemon_names();
	$result .= $all_names[array_rand($all_names)];
	$result .= rand(0,9);
	$result .= rand(0,9);
	$result .= rand(0,9);
	return $result;
}

function IsNullOrEmptyString($word){
    if (isset($word))
    {
        return trim($word)==='';
    }
    else{
        return false;
    }
}

// taken from: http://webdevrefinery.com/forums/topic/11040-health-bar/
function hpbar($current, $max) {
    $percent = round(($current/$max)*100);
    if ($percent >= 50) {
        $color = 'rgb(139,238,132)';
    }
    if ($percent >= 20 && $percent <= 50) {
        $color = 'rgb(215,174,111)';
    }
    if ($percent <= 20) {
        $color = 'rgb(164,72,72)';
    }
    return "<div class='hpbar' style='border-radius: 10px; -webkit-box-shadow: inset 0 2px 5px #AAA; border: 1px solid; background: #FFF; width: 100px; height: 7px;'><div style='width: " . $percent . "%; background-color: " . $color . "; border-radius: 10px; height: 5px;'></div></div>";
}

// taken from: http://webdevrefinery.com/forums/topic/11040-health-bar/
function color($current, $max) {
    $percent = round(($current/$max)*100);

    $green = round(($percent*255)/100);
    $red = 255-$green;
    if ($percent < 0) {
    $rgb = "rgb(255, 0, 00)";
    }
    return "rgb(" . $red . ", " . $green . ", 00)";
}


?>