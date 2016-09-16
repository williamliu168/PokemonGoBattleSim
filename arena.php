<?php
require_once('battleResult.php');

class Arena
{
    public function __construct($data) {
        $this->data = $data;
    }
	
	public function oneVsGym($a,$b)
	{
		$b->promoteGymMon();

		$result = $this->oneVsOne($a,$b);

		$b->demoteGymMon();
		
		return $result;
	}

    public function oneVsOne($a,$b){
        $a->heal();
        // echo "[arena] healed pokemon1 to full health<BR>";
        $b->heal();
        // echo "[arena] healed pokemon2 to full health<BR>";

		$result = new BattleResult($a,$b);
        $result->battle_title = $a->dump()." vs ".$b->dump()."<BR>";

        $ms = 0.0;
        $tick = 50.0;

        $dump = '';
        while ($ms<=100000.0) {
			$result->current_ms = $ms;
            list($dmg_a,$dump_a) = $a->fight($tick,$result);
            list($dmg_b,$dump_b) = $b->fight($tick,$result);
            $dump.=$dump_a.$dump_b;
            
            if ($dmg_a->power>0){
                $dump.=$b->takeDamage($dmg_a,$result);
            }
            if ($dmg_b->power>0){
                $dump.=$a->takeDamage($dmg_b,$result);
            }
            
            if (($a->state=='dead') or ($b->state=='dead'))
            {
				$result->recordResult($a,$b);
                break;
            }
            $ms+=$tick;
        }
        echo $dump;

        return $result;
    }
    
    public function oneVsSpecie($a,$b_allThis,$isGym)
    {
		$result = array();
        foreach($b_allThis as $b)
        {
            if ($isGym)
            {
				$br = $this->oneVsGym($a,$b);
                array_push($result, $br);
            }
            else
            {
				$br = $this->oneVsOne($a,$b);
                array_push($result, $br);
            }
        }
		return $result;	// array of BattleResult
    }
}