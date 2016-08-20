<?php

class Qm
{

    public function __construct($data,$name) {
        $this->data = $data;
        $this->name = $name;
        
        $this->stab = False;
        
        list($this->id,$this->type,$this->power,$this->duration,$this->furyGain,$this->damageWindow)=$this->data->getQmData($this->name);

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
        $dump.=" power=".$this->power.",duration=".$this->duration."ms, fury gain=+".$this->furyGain;
        return $dump;
    }
}