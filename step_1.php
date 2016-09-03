<?php
    require_once('header.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>Play without Account</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
		      <input type="text" class="form-control" placeholder="Search Pokemon">
		      <span class="input-group-btn">
		        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
		      </span>
		    </div>
	  	</div>
	</div>


	<?php
    foreach($host->data->pokemon_stats as $row) {
        echo '<div class="col-xs-6 col-sm-6 col-md-3"><a class="thumbnail" id="'.$row['id'].'"><img src="./img/_50_gif/'.$row['id'].'.gif" alt="pokemon_img"></a></div>';
    }
	?>
	</div>

	<!-- Back and Next Floating Buttons -->
	<a id="back" class="btn nav-btn" type="submit">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	</button>
	<a id="next" class="btn nav-btn" type="submit">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	</button>

</body>
</html>