<?php
    require_once('header.php');
    
    if(isset($_GET['type'])){
        $type = $_GET['type'];
        if ($type == 'gym')
        {
            $_SESSION['isGym'] = TRUE;
        }
        elseif ($type == 'pvp')
        {
            $_SESSION['isGym'] = FALSE;
        }
        else {
            echo "mode type UNKNOWN<br>";
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
	<title> Pokemon Go Battle Simulator </title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
    <script src="js/search_suggest.js"></script>
    <script src="js/step_1.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">
</head>
<body>

	<!-- Header for the 4 steps -->
	<nav class="navbar navbar-default navbar-fixed-top" id="header">
	    <dl class="container-fluid">
			<dt id="step-1" class="col-md-2 col-md-offset-2 selected">Choose Pokemon</dt>
			<dt id="step-2" class="col-md-2">Customize</dt>
			<dt id="step-3" class="col-md-2">Choose Opponent</dt>
			<dt id="step-4" class="col-md-2">Simulate</dt>
		</dl>
	</nav>

	<!-- Main Content -->
	<div class="wrapper pokemon-wrapper">
	<div class="row no-margin">
		<div class="col-md-6 col-md-offset-3">
		    <div class="input-group">
                <?php
                    json_encode($host->data);
                ?>
                <script type="text/javascript"> autoComplete(); </script>
                
                <input type="text" class="form-control" placeholder="Search Pokemon" id="pokemon_name" onkeyup="autoComplete()" value="" autofocus>
                <ul id="text_suggest" class="search-result-list"></ul>
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                </span>
		    </div>
	  	</div>
	</div>

    <div id="icon_suggest">
    </div>
    
	<?php
    /*
    $width=80;
    $height=80;
    foreach($host->data->pokemon_stats as $row) {
        echo '<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2"><a class="thumbnail" id="'.$row['id'].'">
        <img class="thumbnail_img" id="'.$row['id'].'" src="./img/icon_static_ico/'.$row['id'].'.ico" alt="pokemon_img" width='.$width.' height='.$height.'></a></div>';
    }*/
	?>
    
	</div>
    
    <?php
    /* obsolete - I give up trying to figure out the hover animation thing
    <script>
        $(document).ready(function(){
            $(".thumbnail").mouseover(function(){
                var id = this.id;
                $("img #id").attr("src", "./img/icon_anime_gif/"+id+".gif");
            });
            $(".thumbnail").mouseout(function(){
                $("img #id").attr("src", "./img/icon_static_ico/"+$(this).attr("id")+".ico");
            });
        });
    </script>
    */
    ?>

	<!-- Back and Next Floating Buttons -->
	<a id="back" class="btn nav-btn" type="submit">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	</button>
	<a id="next" class="btn nav-btn" type="submit">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	</button>

</body>
</html>