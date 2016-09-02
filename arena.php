<?php

class Arena
{
    public function __construct($data) {
        echo "[arena] Initiating... <BR>";
        $this->data = $data;
    }
	
	public function oneVsGym($a,$b)
	{
		$b->promoteGymMon();

		oneVsOne($a,$b);

		$b->demoteGymMon();
	}

    public function oneVsOne($a,$b){
        echo "[arena] ooo 1 vs 1 ooo <BR>";
        echo "[arena] ".$a->dump()." vs ".$b->dump()."<BR>";

        $a->heal();
        echo "[arena] healed pokemon1 to full health<BR>";
        $b->heal();
        echo "[arena] healed pokemon2 to full health<BR>";
        
        $ms = 0.0;
        $tick = 50.0;
        $dump = '';
        while ($ms<=120000.0) {
            $dump.=$ms.'<BR>';
            list($dmg_a,$dump_a) = $a->fight($tick);
            list($dmg_b,$dump_b) = $b->fight($tick);
            $dump.=$dump_a.$dump_b;
            
            if ($dmg_a->power>0){
                $dump.=$b->takeDamage($dmg_a);
            }
            if ($dmg_b->power>0){
                $dump.=$a->takeDamage($dmg_b);
            }
            
            if (($a->state=='dead') or ($b->state=='dead'))
            {
                break;
            }
            
            
            $ms+=$tick;
        }
        echo $dump;
        
        echo "[arena] ooo Battle Ended (lasted ".(int)($ms/1000)."s) ooo<BR>";
        if ($a->state=='dead' and $b->state=='dead'){
            echo '[arena] DRAW! Both pokemon got knocked out at the same time!<BR>';
        }
        elseif ($a->state=='alive'){
            echo '[arena] '.$a->name.'[hp:'.$a->hp.'/'.$a->maxHp.'] WIN!<BR>';
        }
        elseif ($b->state=='alive'){
            echo '[arena] '.$b->name.'[hp:'.$b->hp.'/'.$b->maxHp.'] WIN!<BR>';
        }
        return $ms;
    }
}