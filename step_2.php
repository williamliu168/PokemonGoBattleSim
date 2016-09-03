<?php require('header.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <title>Play without Account</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/step_2.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
</head>
<body>
    <!-- Header for the 4 steps -->
    <nav class="navbar navbar-default navbar-fixed-top" id="header">
        <dl class="container-fluid">
            <dt id="step-1" class="col-md-2 col-md-offset-2">Choose Pokemon</dt>
            <dt id="step-2" class="col-md-2 selected">Customize</dt>
            <dt id="step-3" class="col-md-2">Choose Opponent</dt>
            <dt id="step-4" class="col-md-2">Simulate</dt>
        </dl>
    </nav>
    <?php
        $id = $_GET["id"];
        if ($id==0)
        {
            echo 'No pokemon found, check spelling<br>';
            exit();
        }
        list($name,$type1,$type2,$bAtk,$bDef,$bSta)= $host->data->getBasicData($id);
    ?>
    
    
    <div class="wrapper pokemon-wrapper">
    <div class="row no-margin">
    <?php
        echo "<div class='col-xs-6 col-md-6'><a class='portrait'><img src='./img/_50_gif/$id.gif' alt='pokemon_img'></a></div>";

        echo "<div class='col-xs-6 col-md-6'>";
        echo $name;
        if ($type2) {
            echo 'type1: '.$type1.'<br>';
            echo 'type2: '.$type2.'<br>';
        }
        else
        {
            echo 'type: '.$type1.'<br>';

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
        }
        echo "</div>";
    ?>
    </div>
    </div>

    <!-- Back and Next Floating Buttons -->
    <a href="step_1.php" id="back" class="btn nav-btn ready" type="submit">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    </button>
    <a id="next" class="btn nav-btn" type="submit">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </button>
</html>