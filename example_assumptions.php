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
		<li>Critical hit has a x1.50 multiplier</li>
	</ul>
	
	<p><a href="https://www.reddit.com/r/TheSilphRoad/comments/4t7r4d/exact_pokemon_cp_formula/">Exact CP formula</a> - derived from stats, do not really directly impact battle simulation.</p>
	<ul>
		<li>Stamina = (BaseStamina + IndividualStamina) * TotalCPMultiplier</li>
		<li>Attack = (BaseAttack + IndividualAttack) * TotalCpMultiplier</li>
		<li>Defense = (BaseDefense + IndividualDefense) * TotalCpMultiplier</li>
		<li><a href="">Cpm table</a> (page to be made)</li>
	</ul>

	<h3>Basic battle</h3>
	<h4>Damage mechanics</h4>
		<p><a href="https://pokemongo.gamepress.gg/damage-mechanics">[gamepress.gg]damage-mechanics</a> explains this topic very well</p>
		<p>Formula: HpLoss = (int)floor(0.5*(ATK/DEF)x(Power)x(Stab)x(Type)+1);</p>
	<ul>
		<li>Delay in between any attacks - 50ms ("finger time")</li>
		<li>2 hp loss = 1 fury gain</li>
	</ul>

	<h3>Gym battle</h3>
	<p><a href="https://www.reddit.com/r/TheSilphRoad/comments/4wzll7/testing_gym_combat_misconceptions/">This thread</a> give good info(facts and speculations) on gym battle</p>
	<ul>
		<li>Defender has double the max hp</li>
		<li>Defender max fury increases from 100 to 200</li>
		<li>Defender quick move duration +2s</li>
	</ul>

	<h3>Unconfirmed</h3>
	<ul>
		<li>Switching pokemon in gym - 1000ms</li>
	</ul>

	<h3>Dodging (?)</h3>
	<ul>
		<li>Duration of a dodge - 500ms</li>
		<li>Dodged damage = floor(0.25*dmg) (minimum of 1)</li>
	</ul>
	
</body>
</html>