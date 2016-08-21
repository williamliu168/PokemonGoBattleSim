<?php
include 'qm.php';
include 'ss.php';
include 'damage.php';

class Pokemon
{
    public $data;
    public $id;
    public $name;
    public $type1;
    public $type2;
    public $bAtk;
    public $bDef;
    public $bSta;
    
    public function __construct($data,$id,$qm,$ss,$level=80) {
        echo "[pokemon] Creating: ";
        
        $this->data = $data;
        $this->id = $id;
        
        $this->getBasicData();
        
        $this->qm = new Qm($this->data,$qm);
        $this->ss = new Ss($this->data,$ss);
        $this->setStab();
        
        $this->level = $level;
        
        echo $this->name." lv.".$this->level." [".$this->qm->name."|".$this->ss->name."] ";

        $this->cpm = $this->data->get_cpm($this->level);
        
        // echo $this->bAtk." ".$this->bDef." ".$this->bSta."<BR>";
        $this->cAtk = ($this->bAtk + 15)*$this->cpm;
        $this->cDef = ($this->bDef + 15)*$this->cpm;
        $this->cSta = ($this->bSta + 15)*$this->cpm;
        // echo $this->cAtk." ".$this->cDef." ".$this->cSta."<BR>";
        
        $this->maxHp = (int)max(10,floor($this->cSta));
        echo "hp: ".$this->maxHp." ";
        $this->cp=(int)max(10, floor(($this->cAtk)*sqrt($this->cDef)*sqrt($this->cSta)/10.0));
        echo "cp: ".$this->cp." ";
        
        echo "<BR>";
        
        // for combat
        $this->action = 'standby';
        $this->action_progress = 0.0;
        
        $this->state = 'alive';
        $this->fury = 0;
        
        # === statistics ===
        $this->score = 0;
        $this->fights = 0;
        $this->win = array();
        $this->loss = array();
        $this->draw = array();

    }
    
    public function fight($tick) {
        $dump = "";

        $damage = new Damage();
        if ($this->action=='standby'){
            if($this->fury+$this->ss->furyCost>=0) // have enough fury for special move_uploaded_file
            {
                $dump.='[pokemon] '.$this->name.' start '.$this->ss->nameWithStab().'<BR>';
                $this->action='ss';
                $this->action_progress=0.0;
            }
            else
            {
                $dump.='[pokemon] '.$this->name.' start '.$this->qm->nameWithStab().'<BR>';
                $this->action='qm';
                $this->action_progress=0.0;
            }
        }
        elseif ($this->action=='qm')
        {
            if ($this->action_progress>=$this->qm->duration){
                // qm done
                $damage = new Damage($this->cAtk,$this->qm->power,$this->qm->type,0.0,$this->qm->stab);
                $oldFury = $this->fury;
                $this->fury=min($this->fury+$this->qm->furyGain,100);
                $dump.='[pokemon] '.$this->name.' performed '.$this->qm->nameWithStab().'<BR>';
                
                $this->action='standby';
                $this->action_progress=0.0;
            }
            else{
                $this->action_progress+=$tick;
            }
        }
        elseif ($this->action=='ss')
        {
            if ($this->action_progress>=$this->ss->duration){
                // ss done
                $damage = new Damage($this->cAtk,$this->ss->power,$this->ss->type,$this->ss->critChance,$this->ss->stab);
                $oldFury = $this->fury;
                $this->fury=$this->fury+$this->ss->furyCost;    // ss->furyCost is -ve
                if ($this->fury<0){
                    $dump.='[pokemon] [ERROR] Negative fury. '.$this->name.' performed '
                        .$this->ss->nameWithStab.' fury '.$oldFury.'->'.$this->fury.'<BR>';
                }
                
                $this->action='standby';
                $this->action_progress=0.0;
            }
            else
            {
                $this->action_progress+=$tick;
            }
        }
        
        return array($damage,$dump);
    }
    
    public function takeDamage($damage)
    {
        $dump='';
        
        $stab = 1.25;       // same type attack bonus
        $dM = 0.5;          // damage multiplier
        $this->crit = 1.5;  // assumption
        
        // critM = $this->getCritMultiplier($damage);
        // typeM = $this->getTypeMultiplier($damage);
        
        $atk = $damage->atk;
        $power = $damage->power;
        if ($damage->stab == TRUE){
            $stabM = $stab;
        }
        else {
            $stabM = 1.0;
        }
        
        $hpLoss = (int)floor( $dM*($atk/$this->cDef)*$power/*$stabM*$typeM*/+1.0);
        
        $this->hp-=$hpLoss;
        $dump.='[pokemon] '.$this->name.' -'.$hpLoss.'hp ['.$this->hp.'/'.$this->maxHp.']<BR>';
        // todo - fury gain with hp loss
        
        $this->checkDeath();
        return $dump;
    }
    
    private function checkDeath(){
        if ($this->hp<=0){
            $this->state='dead';
            $this->fury=0;
        }
    }
    
    public function heal(){
        $this->hp = $this->maxHp;
        $this->fury = 0;
        $this->action = 'standby';
        $this->action_progress = 0.0;
        $this->state = 'alive';
    }
    
    private function getBasicData(){
        list($this->name,$this->type1,$this->type2,$this->bAtk,$this->bDef,$this->bSta)= $this->data->getBasicData($this->id);
    }
    
    private function setStab(){
        if ($this->qm->type==$this->type1 or $this->qm->type==$this->type2){
            $this->qm->stab = True;
        }
        if ($this->ss->type==$this->type1 or $this->ss->type==$this->type2){
            $this->ss->stab = True;
        }
    }
    
    public function dump() {
        $dump = ucfirst($this->name).'['.$this->qm->nameWithStab().'|'.$this->ss->nameWithStab().']';
        return $dump;
    }
}
?>