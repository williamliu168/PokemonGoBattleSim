<?php

class ss
{

    public function __construct($data,$name) {
        $this->data = $data;
        $this->name = $name;
        
        $this->stab = False;
        
        list($this->id,$this->type,$this->power,$this->accuracy,$this->critChance,
            $this->duration,$this->furyCost,$this->damageWindow)=$this->data->getSsData($this->name);

    }
}