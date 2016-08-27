<?php
    session_start();
?>

<!DOCTYPE html>
<html>

<?php
    $cwd=getcwd();
?>
<body>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>"><a href="<?php $cwd?>./example_getPokemonStats.php">example_getPokemonStats</a></form>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>"><a href="<?php $cwd?>./example_printTypeTable.php">example_printTypeTable</a></form>

<form action="example_lookupPokemon.php" method="post">
Pokemon name: <input type="text" name="name"><br>
<input type="submit">
</form>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>"><a href="<?php $cwd?>./example_welcomePageLogin.php">example_welcomePageLogin</a>
</form>

<p>
<?php
    require_once('host.php');
    include 'mon.php';
    
    $host = new Host();
/*
    $pikachu = new Pokemon($host->data,25,"thunder shock","thunderbolt", 80);
    
    $charmander = new Pokemon($host->data,4,"ember","flame burst", 44);

    $host->arena->oneVsOne($pikachu,$charmander);
*/  
    // at the end we want to pass the Host object to other pages
    $host->data->done();    // done with db connection
    $_SESSION['host']=$host;
?>
</p>

</body>
</html>

