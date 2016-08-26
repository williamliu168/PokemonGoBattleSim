<?php

class Db
{
	private $servername;
	private $dbname;
	private $username;
	private $password;
	
	public $pdo;
	
    public function __construct($servername,$username,$password) {
        echo "[db] init..<BR>";
		$this->servername = $servername;
		$this->username = $username;
		$this->password = $password;
    }
    
    public function connect_to($dbname) {
		echo "[db] connecting to ".$dbname."... ";
		try {
			$this->pdo = new PDO('mysql:host='.$this->servername.';dbname='.$dbname,$this->username,$this->password);
			echo "successful<BR>";
		} catch (PDOException $e) {
			echo "fail<BR>";
			echo "[db] error: " . $e->getMessage() . "<br>";
			return;
		}
    }
	
	public function query($query) {
		$result = array();
		foreach($this->pdo->query($query) as $row) {
			array_push($result,$row);
		}
		return $result;
	}
    
    public function fetch_columns($tablename)
    {
        $dbresult = $this->pdo->query('select * from '.$tablename);
        $total_column = $dbresult->columnCount();

        for ($c = 0; $c < $total_column; $c++) {
            $meta = $dbresult->getColumnMeta($c);
            $columns[] = $meta['name'];
        }
        return $columns;
    }
    
    public function done(){
        $pdo=null;
    }
}
?>
