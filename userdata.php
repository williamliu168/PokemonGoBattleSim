<?php
include_once 'db.php';

class UserData
{	
	private $loginAs;

    public function __construct() {
        echo "[userData] constructor<br>";
		$this->loginState = FALSE;
		$this->loginAs = '';
    }
	
	public function conn2db($db)
	{
		if (!isset($db))
		{
			$db = new Db();
			$db->connect_to();
		}
		elseif (!isset($db->pdo))
		{
			echo 'db is created but db->pdo=null. so connect_to(db) now<br>';
			$db->connect_to();
		}
		else {
            // already connecting to db
		}
	}

    public function usernameExist($db,$username)
    {
        $query = 'SELECT * FROM account_info WHERE username="'.$username.'"';
		$dbresult = $db->query($query);
        if(empty($dbresult))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    // Function to get the client IP address
    function get_client_ip() {
        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if(isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if(isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if(isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }

    public function register($db,$reg_info)
    {
        $username = $reg_info['username'];
        $password = $reg_info['password'];
        $email = $reg_info['email'];
        $ip = $this->get_client_ip();
        $datetime = date("Y-m-d H:i:s");

        $query = 'INSERT INTO account_info (username, password, email, reg_ip,reg_time) VALUES("'.$username.'", "'.$password.'", "'.$email.'", "'.$ip.'", "'.$datetime.'")';
        $dbresult = $db->execute($query);
        if($dbresult)
        {
            echo 'successful insert into database<br>';
            return true;
        }
        elseif (!$dbresult)
        {
            echo 'failed to insert into database<br>';
            return false;
        }
    }
	
	public function login($db, $username, $password)
	{
		$this->conn2db($db);
		
		// this seems ratchet
		$username_q = $db->pdo->quote($username);
		$password_q = $db->pdo->quote($password);
		$query = "SELECT * FROM account_info WHERE username = $username_q AND password = $password_q";
		// echo "$query<br>";
		
		$dbresult = $db->query($query);
		if (sizeof($dbresult)>0)
		{
			$this->logged_in_as($username);
			return true;
		}
		else
		{
			return false;
		}
	}
	
	private function logged_in_as($username)
	{
		$this->loginAs=$username;
		$this->loginState=TRUE;
		echo "Logged in as $username<br>";
	}
	
	public function is_logged_in()
	{
		return $this->loginState;
	}
    
    public function close($db) {
		if ($db)
		{
			$db->close();
			$db=null;
		}
    }
	
	public function dump()
	{
		$dump = '';
		$dump.="[$this->loginAs] as ";
		if ($this->loginstate)
		{
			$dump.='member<br>';
		}
		else {
			$dump.='guest<br>';
		}
		return $dump;
	}
	
	public function loginAs()
	{
		return $this->loginAs;
	}
}
?>