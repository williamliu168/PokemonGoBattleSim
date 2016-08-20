<?php
include 'data.php';

class Host
{
    public $data;
    
    public function init() {
        echo "[host] Welcome to PoGoSim v0.50<BR>";
        
        echo "[host] Creating data...<BR>";
        $this->data = new Data();
        $this->data->init();
        $this->data->read_all();
        
        // self.arena = Arena(self.data)
    }
    

}
?>