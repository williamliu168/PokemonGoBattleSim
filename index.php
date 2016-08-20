<!DOCTYPE html>
<html>
<body>

<p>
<?php
    include 'host.php';
    include 'mon.php';
    
    $host = new Host();

    $pikachu = new Pokemon($host->data,25,"thunder shock","thunderbolt", 20);
    
    $charmander = new Pokemon($host->data,4,"ember","flame burst", 20);

?>
</p>

</body>
</html>

