<?php
	require_once('header.php');

	if(isset($_SESSION['myusername'])){
		$myusername=$_SESSION['myusername'];
	} else {
		$host->data->conn2db();
		$guestname=generateRandomGuestName($host->data);
		$_SESSION['guest'] = $guestname;
		$myusername=$_SESSION['guest'];
	}
	
	$host->data->conn2db();
	$result = $host->data->db->query("select * from account_info where username='$myusername';");
	
	echo 'Hi, '.$myusername.'<br>';
	echo 'this page is in progress. This is the guest/member login system.';



?>