<?php
	require_once('header.php');

	if(isset($_SESSION['myusername'])){
		$myusername=$_SESSION['myusername'];
		echo 'Found username '.$myusername.' in session.<br>';
	} else {
		echo 'Did not find username in session.<br>';
		$host->data->conn2db();
		$guestname=generateRandomGuestName($host->data);
		echo 'Generate a guest username '.$guestname.'<br>';
		$_SESSION['guest'] = $guestname;
		$myusername=$_SESSION['guest'];
	}
	
	$host->data->conn2db();
	$result = $host->data->db->query("select * from account_info where username='$myusername'");
	
	echo 'Hi, '.$myusername.'<br>';

	if(!empty($_SESSION['LoggedIn']) && !empty($_SESSION['Username']))
	{
		?>
		<h1>Member Area</h1>
		<p>Thanks for logging in,  <?php echo $_SESSION['Username'];?></p>
    	
    	<?php
	}
	elseif(!empty($_POST['username']) && !empty($_POST['password']))
	{
   		echo 'Let the user login<br>';
	}
	else
	{
		?>

		<p>Member Login</p>

		<p>Thanks for visiting! Please either login below, or <a href="example_register.php">click here to register</a></p>

		<form method="post" action="example_login.php" name="loginform" id="loginform">
		<fieldset>
			<label for="username">Username:</label><input type="text" name="username" id="username" /><br>
        	<label for="password">Password:</label><input type="password" name="password" id="password" /><br>
        	<input type="submit" name="login" id="login" value="Login" />
		</fieldset>
    	</form>
     
   <?php
	}



?>