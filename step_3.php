<?php require('header.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <title>Play without Account</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/bootstrap-slider.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/css/bootstrap-slider.min.css" rel="stylesheet">
    <script src="js/step_3.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
</head>
<body>
    <!-- Header for the 4 steps -->
    <nav class="navbar navbar-default navbar-fixed-top" id="header">
        <dl class="container-fluid">
            <dt id="step-1" class="col-md-2 col-md-offset-2">Choose Pokemon</dt>
            <dt id="step-2" class="col-md-2">Customize</dt>
            <dt id="step-3" class="col-md-2 selected">Choose Opponent</dt>
            <dt id="step-4" class="col-md-2">Simulate</dt>
        </dl>
    </nav>
        <!-- Main Content -->
    <form action="step_4.php" method="get">
    <div class="wrapper pokemon-wrapper">
    <div class="row no-margin">
    <?php
        $id = $_GET["id"];
        echo "<input type='hidden' name='id' value='$id'>";
        $trainer_level = $_GET["trainer_level"];
        echo "<input type='hidden' name='trainer_level' value='$trainer_level'>";
        $_SESSION['trainer_level'] = $trainer_level;    // set in session to remeber

        $qm = '';
        if (!empty($_GET['qm']))
        {
            $qm = $_GET["qm"];
            echo "<input type='hidden' name='qm' value='$qm'>";
        }

        $oqm = '';
        if (!empty($_GET['oqm']))
        {
            $oqm = $_GET["oqm"];
            echo "<input type='hidden' name='oqm' value='$oqm'>";
        }

        $ss = '';
        if (!empty($_GET['ss']))
        {
            $ss = $_GET["ss"];
            echo "<input type='hidden' name='ss' value='$ss'>";
        }

        $oss = '';
        if (!empty($_GET['oss']))
        {
            $oss = $_GET["oss"];
            echo "<input type='hidden' name='oss' value='$oss'>";
        }

        echo "<input type='hidden' name='opponent_id' id='op_id'>";

    ?>
        <div class="col-md-6 col-md-offset-3">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search Pokemon">
              <span class="input-group-btn">
                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
              </span>
            </div>
        </div>
    </div>


    <?php
    foreach($host->data->pokemon_stats as $row) {
        echo '<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2"><a class="thumbnail" id="'.$row['id'].'"><img src="./img/icon_static_ico/'.$row['id'].'.ico" alt="pokemon_img" width="80" height="80"></a></div>';
    }
    ?>
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