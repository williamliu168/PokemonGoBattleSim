<?php
include 'Qm.php';
include 'Ss.php';

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
        echo "[pokemon] Creating: ";
        
        $this->data = $data;
        $this->id = $id;
        
        $this->getBasicData();
        
        $this->qm = new Qm($this->data,$qm);
        $this->ss = new Ss($this->data,$ss);
        // set stab
        
        $this->level = $level;
        
        echo $this->name." lv.".$this->level." [".$this->qm->name."|".$this->ss->name."] ";

        $this->cpm = $this->data->get_cpm($this->level);
        
        // echo $this->bAtk." ".$this->bDef." ".$this->bSta."<BR>";
        $this->cAtk = ($this->bAtk + 15)*$this->cpm;
        $this->cDef = ($this->bDef + 15)*$this->cpm;
        $this->cSta = ($this->bSta + 15)*$this->cpm;
        // echo $this->cAtk." ".$this->cDef." ".$this->cSta."<BR>";
        
        $this->maxHp = (int)max(10,floor($this->cSta));
        echo "hp: ".$this->maxHp." ";
        $this->cp=(int)max(10, floor(($this->cAtk)*($this->cDef)**(0.5)*($this->cSta)**(0.5)/10.0));
        echo "cp: ".$this->cp." ";
        
        echo "<BR>";
        
        // for combat
        $this->action = 'standby';
        $this->action_progress = 0.0;
        
        $this->state = 'alive';
        $this->fury = 0;
        
        # === statistics ===
        $this->score = 0;
        $this->fights = 0;
        $this->win = array();
        $this->loss = array();
        $this->draw = array();
    }
    
    private function getBasicData(){
        list($this->name,$this->type1,$this->type2,$this->bAtk,$this->bDef,$this->bSta)= $this->data->getBasicData($this->id);
    }
}
?>