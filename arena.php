<?php

class Arena
{

    public function __construct($data) {
        echo "[Arena] Initiating... <BR>";
        $this->data = $data;
    }
    
    public function oneVsOne($a,$b){
        echo "[Arena] ooo 1 vs 1 ooo <BR>";
        echo "[Arena] ".$a->dump()." vs ".$b->dump()."<BR>";

        $a->heal();
        echo "[Arena] healed pokemon1 to full health<BR>";
        $b->heal();
        echo "[Arena] healed pokemon2 to full health<BR>";
        
        $ms = 0.0;
        $tick = 50.0;
        while ($ms<=120000.0) {
            $dmg_a = $a->fight($tick);
            $dmg_b = $b->fight($tick);
            
            

            $ms+=$tick;
        }
        
        echo "[Arena] ooo Battle Ended (lasted ".$ms."ms) ooo";
        return $ms;
    }
}