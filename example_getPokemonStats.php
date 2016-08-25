<?php
    require('header.php');
?>
<html>

<table style="width:200px;height:100px;padding:10px;border:1px dotted black;">
  <thead>
    <tr>
      <th colspan="10">pokemon_stats</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>#</td><td>name</td><td>type1</td><td>type2</td>
    <td>sta</td><td>atk</td><td>def</td>
    </tr>
<?php

    foreach($host->data->pokemon_stats as $row) {
        echo '<tr>';
        echo '<td>'.$row['id'].'</td>';
        echo '<td>'.$row['name'].'</td>';
        echo '<td>'.$row['type1'].'</td>';
        echo '<td>'.$row['type2'].'</td>';
        echo '<td>'.$row['sta'].'</td>';
        echo '<td>'.$row['atk'].'</td>';
        echo '<td>'.$row['def'].'</td>';
        echo '<td><img src="./img/32_32_gif/'.$row['id'].'.gif" alt="pokemon_img"></td>';
        echo '</tr>';
    }

?>
  </tbody>
</table>

</html>