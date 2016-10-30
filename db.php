<?php

class Db
{
	private $servername = "localhost";
	private $dbname = "pogobattlesim";
	private $username = "root";
	private $password = "";
	
	public $pdo;
	
    public function __construct() {
        // echo "[db] init..<BR>";
    }

    public function connect_to() {
		// echo "[db] connecting to ".$dbname."... ";
		try {
			$this->pdo = new PDO('mysql:host='.$this->servername.';dbname='.$this->dbname,$this->username,$this->password);
			$this->pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
			// echo "successful<BR>";
		} catch (PDOException $e) {
			throw $e;
			return;
		}
    }
	
	// for SELECT statements - return result in an array
	public function query($query) {
		$result = array();
		try {
			$dbresult = $this->pdo->query($query);
		} catch(PDOException $e) {
			throw $e;
			return;
		}
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
		$success = FALSE;
		try {
			$sth = $this->pdo->prepare($query);
			$success = $sth->execute();
		} catch (PDOException $e) {
			throw $e;
			return;
		}
		
		return $success;
	}
    
    public function fetch_columns($tablename)
    {
		try {
			$dbresult = $this->pdo->query('select * from '.$tablename);
		} catch (PDOException $e) {
			throw $e;
			return;
		}
        $total_column = $dbresult->columnCount();

        for ($c = 0; $c < $total_column; $c++) {
            $meta = $dbresult->getColumnMeta($c);
            $columns[] = $meta['name'];
        }
        return $columns;
    }
	
	public function isConnected(){
		return ($pdo!=null);
	}
    
    public function close(){
		if ($this->pdo!=null)
		{
			$this->pdo == null;
		}
    }
}
?>
