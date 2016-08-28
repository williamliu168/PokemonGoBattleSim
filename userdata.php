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
        echo "[userdata] constructor<br>";
		
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
            echo 'false<br>';
            return false;
        }
        else
        {
            echo 'true<br>';
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
        $ip = $_SERVER['REMOTE_ADDR'];
        echo 'ip='.$ip.'<br>';
        $datetime = datetime();
        echo 'datetime='.$datatime.'<br>';

        $query = 'INSERT INTO account_info (username, password, email, reg_ip) VALUES("'.$username.'", "'.$password.'", "'.$email.'", "'.$ip.'")';
        $dbresult = $this->db->query($query);
        // todo, find a way to tell if insert successful.
        if(empty($dbresult))
        {
            echo '$dbresult empty<br>';
            return false;
        }
        if (!$dbresult)
        {
            echo '$dbresult=false';
            return false;
        }
        return true;
    }
    
    public function done() {
        $this->db->done();
        $this->db=null;
    }
}
?>