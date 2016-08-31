<?php
// tutorial: http://code.tutsplus.com/tutorials/user-membership-with-php--net-1523
// mysql_real_escape_string <-- todo need to find a replacement for this.

// good tutorial on php's PDO: https://phpdelusions.net/pdo
?>
<?php require_once('header.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
<title>User Login</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>

<a href="./index.php">Home</a> | <a href="./example_login.php">Login</a> | <a href="./example_register.php">Register</a><br>

<?php
	//echo $host->userData->dump().'<br>';
	// userData->dump().'<br>';

	if ( $host->userData->is_logged_in() )
	{
		$myusername=$host->userData->loginAs();
	} elseif (!empty($guestname))
	{
	}
	else {
		$guestname=generateRandomGuestName($host->data);
		$_SESSION['Guest'] = $guestname;
		$myusername=$_SESSION['Guest'];
	}
	
	
	
	?>
	<?php
	if( $host->userData->is_logged_in() )
	{
		?>
		<h1>Member Area</h1>
		<p>Thanks for logging in,  <?php echo $host->userData->loginAs(); ?>. <a href="./logout.php">Logout</a></p>
    	
    	<?php
	}
	elseif(!empty($_POST['username']) && !empty($_POST['password']))
	{
		$username = $_POST['username'];
		$password = md5($_POST['password']);

		$success = $host->userData->login($db,$username,$password);

		if ($success)
		{
			if (isset($_POST['remember']) && $_POST['remember'])
			{
				$until = time()+3600;
				setcookie('remember_username',$_POST['username'],$until);
				setcookie('remember_password',$_POST['password'],$until);
			}
			else
			{
				if(isset($_COOKIE['remember_username'])) {
					$past = time()-100;
					setcookie('remember_username', 'gone', $past);
				}
			}

			echo "Welcome, $username! You logged in<br>";
			echo "We will redirect you to the member area.<br>";
			// sleep(3);
			// echo "<meta http-equiv='refresh' content='2;url=example_login.php'>";
			// header( "refresh:3; url=example_login.php" );
			session_write_close();
		}
		else
		{
			echo "error! Sorry, the credential you entered could not be found, please <a href=\"example_login.php\">try again</a></p>";
		}
	}
	else
	{
		?>
		
		<p>If you don't have an account already, and would like us to remeber your pokemons and preferences for the site, please <a href="example_register.php">register here</a></p>

		<p>Member Login</p>
		<form method="post" action="example_login.php" name="loginform" id="loginform">
			<label for="username">Username: </label>
			<input type="text" name="username" id="username" maxlength="30" value="<?php if(isset($_COOKIE['remember_username'])){ echo $_COOKIE['remember_username'];} ?>"><br>
        	<label for="password">Password: </label>
			<input type="password" name="password" id="password" maxlength="30"><br>
			<input type="checkbox" name="remember" value="1">Remember Me<br>
        	<input type="submit" name="login" id="login" value="Log in" />
    	</form>

   <?php
	}

?>
</body>
</html>