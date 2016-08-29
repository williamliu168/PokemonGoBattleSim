<?php
// tutorial: http://code.tutsplus.com/tutorials/user-membership-with-php--net-1523
// mysql_real_escape_string <-- todo need to find a replacement for this.
	require_once('header.php');
	include_once('userdata.php');

	$userdata = new Userdata();
	$host->data->conn2db();
	// so you can use $host->data->db->pdo->quote($string)

	if(isset($_SESSION['myusername'])){
		$myusername=$_SESSION['myusername'];
		echo 'Found username '.$myusername.' in session.<br>';
	} else {
		$host->data->conn2db();
		$guestname=generateRandomGuestName($host->data);
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
		$username = $_POST['username'];
		$password = md5($_POST['password']);
		 
		$success = $userdata->login($username,$password);

		if ($success)
		{
			echo "Welcome, $username! You logged in<br>";
			echo "We will redirect you to the member area.<br>";
			// echo "<meta http-equiv='refresh' content='=2;index.php' />";
		}
		else
		{
			echo "error! Sorry, the credential you entered could not be found, please <a href=\"example_login.php\">try again</a></p>";
		}
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