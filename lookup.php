<html>

<?php
$pokemon_name = "pikachu";

$servername = "localhost";
$dbname = "pogobattlesim";
$username = "root";
$password = "";

// Check connection
try {
    // create connection
    $pbo = new PDO('mysql:host='.$servername.';dbname='.$dbname,$username,$password);
	$query = 'select * from pokemon_stats where name=\''.$pokemon_name.'\'';
    foreach($pbo->query($query) as $row) {
		echo print_r($row);
    }
    $pbo = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
?>

</html>