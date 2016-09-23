<?php require('header.php'); ?>
<?php require_once('mon.php'); ?>
<?php //require_once('battleResult.php'); 
    $isGym = $_SESSION['isGym'];
?>
<!DOCTYPE html>
<html>
<head>
    <title>Play without Account</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/bootstrap-slider.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/css/bootstrap-slider.min.css" rel="stylesheet">
    <script src="js/step_4.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <!-- animsition.css -->
    <link rel="stylesheet" href="css/animsition.min.css">
    <!-- animsition.js -->
    <script src="js/animsition.min.js"></script>
    <script src="js/transition.js"></script>
</head>
<body>
    <!-- Header for the 4 steps -->
    <nav class="navbar navbar-default navbar-fixed-top" id="header">
        <dl class="container-fluid">
            <dt id="step-1" class="col-md-2 col-md-offset-2">Choose Pokemon</dt>
            <dt id="step-2" class="col-md-2">Customize</dt>
            <dt id="step-3" class="col-md-2">Choose Opponent</dt>
            <dt id="step-4" class="col-md-2 selected">Simulate</dt>
        </dl>
    </nav>
        <!-- Main Content -->
    <form action="step_4.php" method="get">
    <div class="wrapper pokemon-wrapper animsition">
    <div class="row no-margin" >

    <?php
        $trainer_level = $_SESSION['trainer_level'];
        $width=80;
        $height=80;

        $lv = ($trainer_level)*2;
        $attacker = new Pokemon($host->data,$id,$qm,$ss,$lv);
		
        $defender_allThis = $host->GenerateSpecie($host->data->idToName($op_id),$lv);
		
		// this line calls for back-end calculations
        $result = $host->arena->oneVsSpecie($attacker,$defender_allThis,$isGym);
        
        // pre-process results
        $wins = 0.0;
        foreach($result as $br)
		{
            $wins+=$br->a_win;
        }
        
        $winRate = $wins/sizeof($result);

        //echo "<h2>Win Rate = ".round($winRate*100,1)."%</h2>";
		// result is an array of BattleResult, see class BattleResult from battleResult.php
        echo "<div class='col-xs-5 col-xs-offset-1 well' style='position: fixed;'>
            <img src='./img/icon_static_ico/$id.ico' alt='pokemon_img' height=$height width=$width>";
        echo "<h2 class='pokemon_name' style='text-align: center;'>$attacker->name";
        if ($attacker->type2) {
            echo "<img class='pokemon_type' src=./img/elements/$attacker->type1.png>";
            echo "<img class='pokemon_type' src=./img/elements/$attacker->type2.png>";
        }
        else
        {
            echo "<img class='pokemon_type' src=./img/elements/$attacker->type1.png>";
        }
        echo "</h2>";
        echo "<div class='row input-row display'><label>Quick Move</label>$qm</div>";
        echo "<div class='row input-row display'><label>Special Moves</label>$ss</div>";
        echo "<p class='lead result text-center' >Your <strong class='pokemon_name'>$attacker->name</strong> 
        has a ".round($winRate*100,1)."% chance to win against <strong class='pokemon_name' >".$host->data->idToName($op_id)."</strong></p>";
        if ($isGym)
        {
            echo "<span class='label label-default mode'>Gym Mode</span>";
        }
        else {
            echo "<span class='label label-default mode'>PvP Mode</span>";
        }
        
        
        echo "</div>";
        // echo "<div class='help-tip'><p>Insert tooltip here.</p></div>";

        echo "<div class='col-xs-5 col-xs-offset-6'>";
		foreach($result as $br)
		{
            $wins+=$br->a_win;
            $a_status="";
            if($br->a->hp == 0) {
                $a_status = "dead";
            }
            $b_status="";
            if($br->b->hp == 0) {
                $b_status = "dead";
            }

            echo "<div class='well'>
                    <div class='col-xs-6 text-center'>
                    <img src='./img/icon_static_ico/$id.ico' class='$a_status' alt='pokemon_img' height=$height width=$width>
                    <br>".$br->a->hp."/".$br->a->maxHp.hpbar($br->a->hp,$br->a->maxHp)."<br>".$br->a->qm->displayName.", ".$br->a->ss->displayName."</div>

                    <div class='col-xs-6 text-center'>
                    <img src='./img/icon_static_ico/$op_id.ico' class='$b_status'alt='pokemon_img' height=$height width=$width>
                    <br>".$br->b->hp."/".$br->b->maxHp .hpbar($br->b->hp,$br->b->maxHp)."<br>".$br->b->qm->displayName.", ".$br->b->ss->displayName."</div>
                </div>";
            

            //echo "<div>".$br->a->hp."/".$br->a->maxHp . "<br>" . hpbar($br->a->hp,$br->a->maxHp) . "</div>";
            //echo "<div>".$br->b->hp."/".$br->b->maxHp . "<br>" . hpbar($br->b->hp,$br->b->maxHp) . "</div>";
            //echo" $br->battle_title$br->battle_result </div>";

            // echo print_r($br->battle_log)."<br>";
            echo "<table border=1>";
            echo "<tr><th></th><th>time(in ms)</th><th></th></tr>";
            $ms = 0.0;
            $tick = 50.0;

            while ($ms<=100000.0) {
                $str_ms=(string)$ms;
                if (array_key_exists($str_ms,$br->battle_log))
                {
                    if (isset($br->battle_log[$str_ms]['attacker']))
                    {
                        foreach($br->battle_log[$str_ms]['attacker'] as $line)
                        {
                            $leftLine=$line.'<br>';
                        }
                    }
                    else {
                        $leftLine = "";
                    }
                    if (isset($br->battle_log[$str_ms]['defender']))
                    {
                        foreach($br->battle_log[$str_ms]['defender'] as $line)
                        {
                            $rightLine=$line.'<br>';
                        }
                        $rightLine = $br->battle_log[$str_ms]['defender'][0];
                    }
                    else {
                        $rightLine="";
                    }
                    echo "<tr><td>$leftLine</td><td>$ms</td><td>$rightLine</td></tr>";
                }
                $ms+=$tick;
            }
            echo "</table>";
		}
        echo "</div>";
        
		

    ?>
    </div>
    </div>

    

    <!-- Back and Next Floating Buttons -->
    <?php echo "<a href='step_3.php?id=$id&trainer_level=$trainer_level&qm=$qm&ss=$ss' id='back' class='btn nav-btn ready'" ?>
    data-animsition-in-class="fade-in-left" data-animsition-in-duration="1000" data-animsition-out-class="fade-out-right" data-animsition-out-duration="800">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    </a>

    <a href='step_1.php' class='btn btn-success btn-lg' id='play_again' style='right: 15px; bottom: 15px; position: fixed;'>Restart</a>
    </form>

</html>