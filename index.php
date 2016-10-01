<?php require_once('header.php'); ?>
<!DOCTYPE html>
<html lang="en-us">
<?php
    $cwd=getcwd();
?>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="UTF-8">
  <title>Save, share and collaborate | Blocbox</title>
 
  <!-- Google Fonts -->
  <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic|Varela+Round' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.min.css" rel="stylesheet">
   <!-- CSS -->
 <link rel="stylesheet" href="css/normalize.css">
 <link rel="stylesheet" href="css/style.css">
 <link rel="stylesheet" href="css/font-awesome.css">
</head>
<body>
<!-- Hero -->
<header>
   <nav class="container">
			<div class="container-fluid">
				<div class="navbar-header col-md-2">
					<a class="navbar-brand" href="#">
						PokemonGoBattleSim
					</a>
				</div>
				<div class="collapse navbar-collapse pull-right">
					<ul class="nav navbar-nav">
						<li><a href="">About</a></li>
						<li><a href="example_assumptions.php">Formulas and Assumptions</a></li>
					</ul>
				</div>
			</div>
   </nav>
   <div class="jumbotron container hero">
     <h1>Never lose a battle again.</h1>
     <p><span class="highlight">Simulate a battle before you play and find out your chance of winning.<br>Try it now!</span></p>
     <div class="center-block cta-btns">
     	<a href="step_1.php?type=pvp" class="btn btn-lg btn-primary">PvP Mode</a>
     	<a href="step_1.php?type=gym" class="btn btn-lg btn-primary">Gym Mode</a>
 	</div>
     <img src="img/cover_img.png" alt="PokemonGoBattleSim Battle Result - Sample Image" class="center-block"/>
   </div>
 </header>
 <footer>
   <div class="container footer-nav-block footer">
       <div class="col-md-12">
         <p class="copyright-block">&copy; PokemonGoBattleSim All Rights Reserved 2016.</p>
       </div>
       <div class="copyright-block">
         
           <a href="">Terms</a>
           <a href="">Privacy Policy</a>
           <a href="">Contact Us</a>
           <a href="">About Us</a>
           <a href="">Twitter</a>
         
       </div>
   </div>
 </footer>

 <?php
    include 'mon.php';
/*
    $pikachu = new Pokemon($host->data,25,"thunder shock","thunderbolt", 80);
    
    $charmander = new Pokemon($host->data,4,"ember","flame burst", 44);

    $host->arena->oneVsOne($pikachu,$charmander);
*/  
    // at the end we want to pass the Host object to other pages
    $_SESSION['host']=$host;
?>
</body>
</html>

