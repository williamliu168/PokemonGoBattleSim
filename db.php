<?php

class Db
{
	private $servername;
	private $dbname;
	private $username;
	private $password;
	
	public $pdo;
	
    public function __construct($servername,$username,$password) {
        // echo "[db] init..<BR>";
		$this->servername = $servername;
		$this->username = $username;
		$this->password = $password;
    }
    
    public function connect_to($dbname) {
		// echo "[db] connecting to ".$dbname."... ";
		try {
			$this->pdo = new PDO('mysql:host='.$this->servername.';dbname='.$dbname,$this->username,$this->password);
			// echo "successful<BR>";
		} catch (PDOException $e) {
			echo "[db] error: " . $e->getMessage() . "<br>";
			return;
		}
    }
	
	// for SELECT statements - return result in an array
	public function query($query) {
		$result = array();
		$dbresult = $this->pdo->query($query);
		if ($dbresult) {
			foreach($dbresult as $row) {
				array_push($result,$row);
			}
		} else {
			// no result
		}
		return $result;
	}
	
	// for insert statements - return bool
	public function execute($query)
	{
		$result = array();
		$sth = $this->pdo->prepare($query);
		return $sth->execute();	// returns true on success
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
