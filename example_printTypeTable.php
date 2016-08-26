<?php
    require('header.php');
?>
<html>

<?php
    $table = $host->data->type_table;
    $first_row = array_values($table)[0];
    $defTypes = array_keys($first_row);
    $typeCount = sizeof($defTypes);
?>

<table style="padding:10px;border:1px dotted black;">
  <thead>
    <tr>
<?php
    echo '<th colspan='.($typeCount+1).'>Pokemon type chart</th>';
?>
    </tr>
  </thead>
  <tbody>
    <tr><td>\</td>
<?php

    foreach(array_keys($first_row) as $defType)
    {
        echo '<td>'.$defType.'</td>';
    }
    ?>
    </tr>
<?php

    foreach($defTypes as $defType) {
        $row = $table[$defType];
        echo '<tr><td>'.$defType.'</td>';
        foreach($row as $item){
            echo '<td>'.$item.'</td>';
        }
        echo '</tr>';
    }

?>
  </tbody>
</table>

</html>