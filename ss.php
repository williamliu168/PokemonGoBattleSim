<?php

class Ss
{

    public function __construct($data,$name) {
        $this->data = $data;
        $this->name = $name;
        
        $this->stab = False;
        
        list($this->id,$this->type,$this->power,$this->accuracy,$this->critChance,
            $this->duration,$this->furyCost,$this->damageWindow)=$this->data->getSsData($this->name);

    }
    
    public function nameWithStab(){
        $dump=ucfirst($this->name);
        if($this->stab){
            $dump.='+';
        }
        return $dump;
    }
    
    public function dump(){
        $dump=$this->nameWithStab();
        $dump.=" power=".$this->power.",crit=".(int)($this->critChance*100)."%, duration="
            .$this->duration."ms, fury_cost=".$this->furyCost;
        return $dump;
    }
}