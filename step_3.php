<?php require('header.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <title> Pokemon Go Battle Simulator </title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/bootstrap-slider.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/css/bootstrap-slider.min.css" rel="stylesheet">
    
    <script src="js/step_3.js"></script>
    <script src="js/search_suggest2.js"></script>
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
            <dt id="step-3" class="col-md-2 selected">Choose Opponent</dt>
            <dt id="step-4" class="col-md-2">Simulate</dt>
        </dl>
    </nav>
    
    <!-- Main Content -->
    <form action="step_4.php" method="get">
    
    <div class="wrapper pokemon-wrapper animsition">
    <div class="row no-margin">
        <div class="col-md-6 col-md-offset-3">
            <div class="input-group">
                <?php
                    json_encode($host->data);
                ?>
                <script type="text/javascript"> autoComplete(); </script>
                
                <input type="text" class="form-control" placeholder="Search Pokemon" id="pokemon_name" onkeyup="autoComplete()" value="" autofocus>
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                </span>
            </div>
        </div>
    </div>

    <div id="icon_suggest"></div>
    
    </div>
  

    <!-- Back and Next Floating Buttons -->
    <?php echo "<a href='step_2.php?id=$id' id='back' class='btn nav-btn ready animsition-link' " ?>
     data-animsition-in-class="fade-in-left" data-animsition-in-duration="1000" data-animsition-out-class="fade-out-right" data-animsition-out-duration="800">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    </a>
    <a id="next" class="btn nav-btn" type="submit">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	</button>
    </form>

</html>