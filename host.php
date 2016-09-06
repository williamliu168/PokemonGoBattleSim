<?php
include_once 'db.php';
include_once 'data.php';
include_once 'arena.php';
include_once 'userdata.php';

class Host
{
    public $data;
    public $arena;
	public $userData;
    
    public function __construct($db) {
        echo "[host] Creating data...<BR>";
        $this->data = new Data();
        $this->data->read_all($db);
		
		$this->userData = new UserData();
        
        $this->arena = new Arena($this->data);
		
		
    }
    
    public function GenerateSpecie($name,$lv)
    {
        $name=strtolower($name);
        $result = array();
        foreach($this->data->pokemon_skills as $dict)
        {
            if($dict['name']==$name)
            {
                $id = $dict['id'];
                $qm_list = $dict['qm'];
                $ss_list = $dict['ss'];
                foreach($qm_list as $qm)
                {
                    foreach($ss_list as $ss)
                    {
                        $mon = new Pokemon($this->data,$id,$qm,$ss,$lv);
                        array_push($result,$mon);
                    }
                }
            }
        }
        echo count($result)." possible combinations of $name<br>";
        return $result;
    }

}
?>