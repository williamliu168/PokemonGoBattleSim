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

?>