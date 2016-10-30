<?php include_once 'header.php'; ?>
<html>

<body>
	<a href="index.php">Home</a>
	<h2>Formulas and Assumptions(F&A)</h2>

	<p>
		This page explains the F&A that the simulator currently uses. 
		Many data are taken from external sites and links are provided, but copy of those data are still provided on this site. The copies are either generated from our database or represents what is current in the code. 
		This way, you can easily tell whether any of our information is wrong or outdated, so to decide whether to trust the result of the simulation, and whether to report the bug to us. 
	</p>
	<p>The F&A used are gathered from the web and finalized as described below. If you disagree with anything, you are more than welcome to bring it up, to make the simulation as accurate as possible.</p>

	<h3>The basics</h3>
	<ul>
		<li><a href="https://www.reddit.com/r/pokemongodev/comments/4t59t1/decoded_game_master_protobuf_file_v01_all_pokemon/">Lots of information</a> were decoded, including <a href="">quick_moves_table</a> (page to be made), <a href="">special_moves_table</a> (page to be made)</li>
		<li><a href="http://bulbapedia.bulbagarden.net/wiki/Same-type_attack_bonus">STAB</a> is a 1.25 multiplier</li>
		<li><a href="example_printTypeTable.php">Type effectiveness chart</a></li>
		<li>Critical hit has a x1.50 multiplier <font color="red">(unconfirmed)</font></li>
	</ul>
	
	<p><a href="https://www.reddit.com/r/TheSilphRoad/comments/4t7r4d/exact_pokemon_cp_formula/">Exact CP formula</a> - derived from stats, do not really directly impact battle simulation.</p>
	<ul>
		<li>Stamina = (BaseStamina + IndividualStamina) * TotalCPMultiplier&dagger;</li>
		<li>Attack = (BaseAttack + IndividualAttack) * TotalCpMultiplier&dagger;</li>
		<li>Defense = (BaseDefense + IndividualDefense) * TotalCpMultiplier&dagger;</li>
		<li>&dagger;<a href="">Cpm table</a> (page to be made)</li>
	</ul>

	<h3>Basic battle</h3>
	<li>Delay in between any attacks - 50ms (I call it the "finger time")</li>
	<h4>Damage mechanics</h4>
		<p>Well explained by <a href="https://pokemongo.gamepress.gg/damage-mechanics">[gamepress.gg] damage-mechanics</a></p>
	<ul>
		<li>HpLoss = floor(0.5*(ATK/DEF)x(Power)x(Stab)x(Type)+1</li>
		<li>0.5 fury gain for every 1 hp loss</li>
		<li>Crit is currently not included</li>
	</ul>

	<h3>Gym battle</h3>
	<p><a href="https://www.reddit.com/user/homu">homu</a>'s <a href="https://www.reddit.com/r/TheSilphRoad/comments/4wzll7/testing_gym_combat_misconceptions/">thread</a> gives excellent information on gym battles</p>
	<ul>
		<li>Defender max hp x2</li>
		<li>Defender max fury increases from 100 to 200</li>
		<li>Defender quick move duration +2s. Also refer to the 'Defender Attack Delay' section of </li>
	</ul>

	<h3>Unconfirmed</h3>
	<ul>
		<li>Switching pokemon in gym - 1000ms</li>
	</ul>

	<h3>Dodging (?)</h3>
	<ul>
		<li>Duration of a dodge - 500ms <font color="red">(unconfirmed)</font></li>
		<li>Dodged damage = floor(0.25*dmg) (minimum of 1) <font color="red">(unconfirmed)</font></li>
	</ul>
	
</body>
</html>