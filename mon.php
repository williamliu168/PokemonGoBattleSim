<?php
// include 'data.php';


class Pokemon
{
    public $data;
    public $id;
    public $name;
    public $type1;
    public $type2;
    public $bAtk;
    public $bDef;
    public $bSta;
    
    public function __construct($data,$id,$qm,$ss,$level=80) {
        echo "[pokemon] Creating ... ";
        
        $this->data = $data;
        $this->id = $id;
        
        $this->getBasicData();
        
        // qm
        // ss
        // set stab
        
        $this->lv = $level;
        
        echo $this->name." lv.".$this->lv."<BR>";
        

    }
    
    private function getBasicData(){
        list($this->name,$this->type1,$this->type2,$this->bAtk,$this->bDef,$this->bSta)= $this->data->getBasicData($this->id);
    }
}
?>