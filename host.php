<?php
include 'data.php';
include 'arena.php';

class Host
{
    public $data;
    public $arena;
    
    public function __construct() {
        echo "[host] Welcome to PoGoSim v0.50<BR>";
        
        echo "[host] Creating data...<BR>";
        $this->data = new Data();
        $this->data->read_all();
        
        $this->arena = new Arena($this->data);
    }
    

}
?>