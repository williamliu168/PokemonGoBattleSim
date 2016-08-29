<?php
include_once 'db.php';

class Userdata
{
	// database (for now)
	public $db;
	private $servername = "localhost";
	private $dbname = "pogobattlesim";
	private $username = "root";
	private $password = "";

    public function __construct() {
        // echo "[userdata] constructor<br>";
		
		$this->conn2db();
    }
	
	public function conn2db()
	{
		if (!isset($this->db))
		{
			$this->db = new Db($this->servername,$this->username,$this->password);
			$this->db->connect_to($this->dbname);
		}
		elseif (!isset($this->db->pdo))
		{
			$this->db->connect_to($this->dbname);
		}
		else {
            // already connecting to db
		}
	}

    public function usernameExist($username)
    {
        $query = 'SELECT * FROM account_info WHERE username="'.$username.'"';
        $dbresult = $this->db->query($query);
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

    public function register($reg_info)
    {
        $username = $reg_info['username'];
        $password = $reg_info['password'];
        $email = $reg_info['email'];
        $ip = $this->get_client_ip();
        $datetime = date("Y-m-d H:i:s");

        $query = 'INSERT INTO account_info (username, password, email, reg_ip,reg_time) VALUES("'.$username.'", "'.$password.'", "'.$email.'", "'.$ip.'", "'.$datetime.'")';
        $dbresult = $this->db->execute($query);
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
	
	public function login($username, $password)
	{
		// this seems ratchet
		$username = $this->db->pdo->quote($username);
		$password = $this->db->pdo->quote($password);
		$query = "SELECT * FROM account_info WHERE username = $username AND password = $password";
		echo "$query<br>";
		$dbresult = $this->db->query($query);
		if (sizeof($dbresult)>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
    
    public function done() {
        $this->db->done();
        $this->db=null;
    }
}
?>