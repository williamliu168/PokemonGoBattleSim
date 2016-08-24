<?php

class Db
{
	private $servername;
	private $dbname;
	private $username;
	private $password;
	
	public $pbo;
	
    public function __construct($servername,$username,$password) {
        echo "[db] init..<BR>";
		$this->servername = $servername;
		$this->username = $username;
		$this->password = $password;
    }
    
    public function connect_to($dbname) {
		echo "[db] connecting to ".$dbname."... ";
		try {
			$this->pbo = new PDO('mysql:host='.$this->servername.';dbname='.$dbname,$this->username,$this->password);
			echo "[db] successful<BR>";
		} catch (PDOException $e) {
			echo "failed<BR>";
			echo "[db] error: " . $e->getMessage() . "<br>";
			return;
		}
    }
	
	public function query($query) {
		$result = array();
		foreach($this->pbo->query($query) as $row) {
			array_push($result,$row);
		}
		return $result;
	}
}
?>
