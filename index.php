<?php require_once('header.php'); ?>

<!DOCTYPE html>
<html>

<?php
    $cwd=getcwd();
?>
<body>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>"><a href="<?php $cwd?>./example_assumptions.php">Formulas and Assumptions</a></form>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>"><a href="<?php $cwd?>./example_getPokemonStats.php">example_getPokemonStats</a></form>

<a href="example_printTypeTable.php">example_printTypeTable</a>

<form action="example_lookupPokemon.php" method="post">
Pokemon name: <input type="text" name="name"><br>
<input type="submit">
</form>

<a href="example_login.php">example_login</a><br>
<a href="step_1.php?type=pvp">1 on 1 (PvP)</a><br>
<a href="step_1.php?type=gym">1 on 1 (Gym)</a><br>

<p>
<?php
    include 'mon.php';
/*
    $pikachu = new Pokemon($host->data,25,"thunder shock","thunderbolt", 80);
    
    $charmander = new Pokemon($host->data,4,"ember","flame burst", 44);

    $host->arena->oneVsOne($pikachu,$charmander);
*/  
    // at the end we want to pass the Host object to other pages
    $_SESSION['host']=$host;
?>
</p>

</body>
</html>

