<?php require('header.php'); ?>
<html>

<?php
    $name = strtolower($_POST["name"]);
    $id = $host->data->nameToId($name);
    
    if ($id==0)
    {
        echo 'No pokemon found, check spelling<br>';
        exit();
    }
    
    list($name,$type1,$type2,$bAtk,$bDef,$bSta)= $host->data->getBasicData($id);
    echo 'Name: '.$name.'<br>';
    if ($type2) {
        echo 'type1: '.$type1.'<br>';
        echo 'type2: '.$type2.'<br>';
    }
    else
    {
        echo 'type: '.$type1.'<br>';
    }

	echo "<img src='./img/pogo_gif/$id.gif'><br>";
	
    echo 'base Atk: '.$bAtk.'<br>';
    echo 'base Def: '.$bDef.'<br>';
    echo 'base Sta: '.$bSta.'<br>';
    
    list($qm,$oqm,$ss,$oss) = $host->data->getSkillData($id);
    echo 'Quick moves: '.implode(', ',$qm).'<br>';
    echo 'ex Quick moves: '.implode(', ',$oqm).'<br>';
    echo 'Special moves: '.implode(', ',$ss).'<br>';
    echo 'ex Special moves: '.implode(', ',$oss).'<br>';

    $stats_table = $host->data->pokemon_stats;
    
    $skills_table = $host->data->pokemon_skills;
?>

</html>