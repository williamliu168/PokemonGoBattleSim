<?php

class Damage
{

    public function __construct($atk=0.0,$power=0,$type="None",$critChance=0.0,$stab=False) {
        $this->atk = $atk;
        $this->power = $power;
        $this->stab = $stab;
        $this->type = $type;
        $this->critChance = $critChance;
    }
}