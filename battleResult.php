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
        $this->a->team='attacker';
        $this->b->team='defender';

        $this->battle_log = array();
    }

    public function bLog($line, $source)
    {
        $ms = (string)$this->current_ms;
        if(!isset($this->battle_log[$ms]))
        {
            $this->battle_log[$ms]=array();
        }

        if(!isset($this->battle_log[$ms][$source]))
        {
            $this->battle_log[$ms][$source]=array();
        }
        
        array_push($this->battle_log[$ms][$source],$line);
    }

    public function recordResult($a,$b)
    {
        $this->a=clone($a);
        $this->b=clone($b);
        
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