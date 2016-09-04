<?php require('header.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <title>Play without Account</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/bootstrap-slider.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/css/bootstrap-slider.min.css" rel="stylesheet">
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
    
    <form>
    <div class="wrapper pokemon-wrapper">
    <div class="row no-margin">

    <?php
        //Display Pokemon Image on the left
        echo "<div class='col-xs-12 col-sm-6'><div class='well'><img src='./img/_50_gif/$id.gif' alt='pokemon_img'></div></div>";

        //Display Pokemon Info and Customization on the right
        echo "<div class='col-xs-12 col-sm-6'><div class='well'>";
        echo "<h2 style='text-transform: capitalize;'>$name";
        if ($type2) {
            echo "<img class='pokemon_type' src=./img/elements/$type1.png>";
            echo "<img class='pokemon_type' src=./img/elements/$type2.png>";
            echo "</h2>";
        }
        else
        {
            echo "<img class='pokemon_type' src=./img/elements/$type1.png></h2>";

            //echo 'base Atk: '.$bAtk.'<br>';
            //echo 'base Def: '.$bDef.'<br>';
            //echo 'base Sta: '.$bSta.'<br>';

            // Start of Customization
            // 1. Trainer Level Selector
            list($qm,$oqm,$ss,$oss) = $host->data->getSkillData($id);
            echo "<div class='row input-row'><label>Trainer Level</label><input id='ex1' data-slider-id='ex1Slider' type='text' data-slider-min='1' data-slider-max='40' data-slider-step='1' data-slider-value='10'/></div>";

            // 2. Quick Move Selector
            echo "<div class='row input-row'><label>Quick Moves</label><div class='btn-group' data-toggle='buttons'>";
            for($x=0; $x<count($qm); $x++) {
                echo "<label class='btn btn-default'>
                    <input type='radio' name='options' id='option2' autocomplete='off'>$qm[$x]
                    </label>";
            }
            for ($x=0; $x<count($oqm); $x++) {
                echo "<label class='btn btn-defalt'>
                    <input type='radio' name='options' id='option2' autocomplete='off'>$oqm<span class='label label-default'>Ex</span>[$x]
                    </label>";
            }
            echo "</div></div>";

            // 3. Special Move
            echo "<div class='row input-row'><label>Special Moves</label><div class='btn-group' data-toggle='buttons'>";
            for($x=0; $x<count($ss); $x++) {
                echo "<label class='btn btn-default'>
                    <input type='radio' name='options' id='option2' autocomplete='off'>$ss[$x]
                    </label>";
            }
            for ($x=0; $x<count($oss); $x++) {
                echo "<label class='btn btn-default'>
                    <input type='radio' name='options' id='option2' autocomplete='off'>$oss<span class='label label-default'>Ex</span>[$x]
                    </label>";
            }
            echo "</div></div>";

            // 4. Advanced Customizations
            echo "<div class='row input-row'>";
            echo "<button type='button' class='btn btn-info'>Show Advanced</button>";
            echo "</div>";


            $stats_table = $host->data->pokemon_stats;
            
            $skills_table = $host->data->pokemon_skills;
        }
        echo "</div></div>";
    ?>
    </div>
    </div>

    <!-- Back and Next Floating Buttons -->
    <a href="step_1.php" id="back" class="btn nav-btn ready" type="submit">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    </a>
    <button id="next" class="btn nav-btn" type="submit">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </button>
    </form>
</html>