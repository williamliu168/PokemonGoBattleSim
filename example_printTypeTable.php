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
    <tr><td><?php /*atk v def >*/ ?></td>
<?php

    foreach(array_keys($first_row) as $defType)
    {
        echo '<td><img src=./img/elements/'.$defType.'.png></td>';
    }
    ?>
    </tr>
<?php

    foreach($defTypes as $defType) {
        $row = $table[$defType];
        echo '<tr><td><img src=./img/elements/'.$defType.'.png></td>';
        foreach($row as $item){
			$color='';
			if ($item=='1')
			{
				
			}
			elseif ($item=='1.25')
			{
				
			}
			elseif ($item=='0.8')
			{
				
			}
			else
			{
				
			}
            echo '<td>'.$item.'</td>';
        }
        echo '</tr>';
    }

?>
  </tbody>
</table>

</html>