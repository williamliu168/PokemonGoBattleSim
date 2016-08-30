<?php
	require_once('header.php');
	include_once('userdata.php');
	$userdata = new Userdata();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
 
<title>0o0o0o0o0o0o0</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="main">

<a href="example_login.php">login</a> | <a href="example_register.php">register</a><br>

<?php
if(!empty($_POST['username']) && !empty($_POST['password']))
{
	$reg_info = array();
    $reg_info['username'] = $_POST['username'];
    $reg_info['password'] = md5($_POST['password']);
    $reg_info['email'] = $_POST['email'];

    $exist = $userdata->usernameExist($reg_info['username']);
    if ($exist)
    {
    	echo 'Error! username is taken. Please go back and try again.<br>';
    }
    else
    {
    	$success = $userdata->register($reg_info);
    	if ($success)
    	{
    		echo 'Success! your account was created. Please <a href=example_login.php>click here to login</a><br>';
    	}
    	else
    	{
    		echo 'Error! reg failed for some reason...';
    	}
    }
}
else
{
	?>

	<p><b>Register</b></p>

	<form method="post" action="example_register.php" name="registerform" id="registerform">
	<fieldset>
		<label for="username">Username:</label><input type="text" name="username" id="username"><br>
		<label for="password">Password:</label><input type="password" name="password" id="password"><br>
		<label for="password2">Re-enter password:</label><input type="password" name="password2" id="password2"><br>
		<label for="email">Email Address:</label><input type="text" name="email" id="email"><br>
		<input type="submit" name="register" id="register" value="Register" />
	</fieldset>
	</form>
	<?php
}
?>
 
</div>
</body>
</html>