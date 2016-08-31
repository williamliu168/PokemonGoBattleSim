<?php
include_once 'db.php';
include_once 'data.php';
include_once 'arena.php';
include_once 'userdata.php';

class Host
{
    public $data;
    public $arena;
	public $userData;
    
    public function __construct($db) {
        echo "[host] Creating data...<BR>";
        $this->data = new Data();
        $this->data->read_all($db);
		
		$this->userData = new UserData();
        
        $this->arena = new Arena($this->data);
		
		
    }
    

}
?>