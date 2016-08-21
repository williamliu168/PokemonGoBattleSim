<html>

<table style="width:200px;height:100px;padding:10px;border:1px dotted black;">
  <thead>
    <tr>
      <th>pokemon_stats</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>#</td><td>name</td><td>type1</td><td>type2</td><td>sta</td><td>atk</td><td>def</td></tr>
<?php


$servername = "localhost";
$dbname = "pogobattlesim";
$username = "root";
$password = "";

// Check connection
try {
    // create connection
    $pbo = new PDO('mysql:host='.$servername.';dbname='.$dbname,$username,$password);
    foreach($pbo->query('select * from pokemon_stats') as $row) {
        echo '<tr>';
        echo '<td>'.$row['id'].'</td>';
        echo '<td>'.$row['name'].'</td>';
        echo '<td>'.$row['type1'].'</td>';
        echo '<td>'.$row['type2'].'</td>';
        echo '<td>'.$row['sta'].'</td>';
        echo '<td>'.$row['atk'].'</td>';
        echo '<td>'.$row['def'].'</td>';
        echo '</tr>';
    }
    $pbo = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}


?>
  </tbody>
</table>

<?php

?>

</html>