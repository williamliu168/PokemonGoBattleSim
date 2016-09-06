<?php require('header.php'); ?>
<?php require('mon.php'); ?>
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
    <div class="wrapper pokemon-wrapper">
    <div class="row no-margin">
    <?php
        $id = $_GET["id"];
        $trainer_level = $_GET["trainer_level"];

        $qm = '';
        if (!empty($_GET['qm']))
        {
            $qm = $_GET["qm"];
        }

        $ss = '';
        if (!empty($_GET['ss']))
        {
            $ss = $_GET["ss"];
        }

        $opponent_id = '';
        if (!empty($_GET['opponent_id']))
        {
            $opponent_id = $_GET["opponent_id"];
        }

        $lv = ($trainer_level+1)*2;
        $attacker = new Pokemon($host->data,$id,$qm,$ss,$lv);
        $defender_allThis = $host->GenerateSpecie($host->data->idToName($opponent_id),$lv);
        
        $isGym = TRUE;  //todo
        $host->arena->oneVsSpecie($attacker,$defender_allThis,$isGym);

    ?>
    </div>
    </div>

    

    <!-- Back and Next Floating Buttons -->
    <?php echo "<a href='step_2.php?id=$id' id='back' class='btn nav-btn ready'>" ?>
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    </a>
    <button id="next" class="btn nav-btn" type="submit">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </button>
    </form>

</html>