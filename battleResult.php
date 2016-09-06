<?php

class BattleResult
{
    public $battle_title;
    public $current_ms;
    public $a;
    public $b;
    public $battle_log;
    public $a_win;
    public $battle_result;

    public function __construct($a,$b) {
        $this->a = $a;
        $this->b = $b;

        $this->battle_log = array();
    }

    public function bLog($line)
    {
        $i = 0;
        do {
            $i++;
            $index = $this->current_ms.'_'.$i;
        } while ( array_key_exists($index,$this->battle_log) );

        $this->battle_log[$index] = $line;
    }

    public function recordResult()
    {
        if($this->a->state=='dead' and $this->b->state=='dead')
        {
            $this->a_win = 0.5;
            $this->battle_result = $this->a->name." draw with opponent ".$this->b->name."<br>";
        }
        elseif ($this->a->state=='dead')
        {
            $this->a_win = 0.0;
            $this->battle_result = $this->a->name." lost to opponent ".$this->b->dump()."[".$this->b->hp."/".$this->b->maxHp."]<br>";
        }
        elseif ($this->a->state=='alive')
        {
            $this->a_win = 1.0;
            $this->battle_result = $this->a->name."[".$this->a->hp."/".$this->a->maxHp."] won opponent ".$this->b->dump()."<br>";
        }
        else {
            echo 'Error checking battle result!<br>';
            $this->a_win = 0.0;
        }
    }
    

}

?>