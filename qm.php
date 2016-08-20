<?php

class Qm
{

    public function __construct($data,$name) {
        $this->data = $data;
        $this->name = $name;
        
        $this->stab = False;
        
        list($this->id,$this->type,$this->power,$this->duration,$this->furyGain,$this->damageWindow)=$this->data->getQmData($this->name);

    }
}