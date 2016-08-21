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
    
    $host = new Host();

    $pikachu = new Pokemon($host->data,25,"thunder shock","thunderbolt", 80);
    
    $charmander = new Pokemon($host->data,4,"ember","flame burst", 44);

    $host->arena->oneVsOne($pikachu,$charmander);
?>
</p>

</body>
</html>

