<!DOCTYPE html>
<html>

<?php
    $cwd=getcwd();
?>
<body>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>"><a href="<?php $cwd?>./data/db_stats.php">db_stats</a>
</form>

<p>
<?php
    include 'host.php';
    include 'mon.php';
	include 'db.php';
    
    $host = new Host();
	
	$servername = "localhost";
	$dbname = "pogobattlesim";
	$username = "root";
	$password = "";
	$pokemon_name = "pikachu";
	$db = new Db($servername,$username,$password);
	$db->connect_to($dbname);
	$query = 'select * from pokemon_stats where name=\''.$pokemon_name.'\'';
	$result = $db->query($query);
	echo print_r($result)."<BR>";
	

    $pikachu = new Pokemon($host->data,25,"thunder shock","thunderbolt", 80);
    
    $charmander = new Pokemon($host->data,4,"ember","flame burst", 44);

    $host->arena->oneVsOne($pikachu,$charmander);
?>
</p>

</body>
</html>

