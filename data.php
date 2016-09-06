<?php
include_once 'db.php';

class Data
{
    public $pokemon_stats;
    public $pokemon_skills;
    public $type_table;
    public $skill_qm;
    public $skill_ss;
    public $cpm;

    public function __construct() {
        echo "[data] building db object...<br>";
    }
	
	public function conn2db($db)
	{
		if (!isset($db))
		{
			$db = new Db();
			$db->connect_to();
		}
		elseif (!isset($db->pdo))
		{
			// echo 'db is created but db->pdo=null. so connect_to(db) now<br>';
			$db->connect_to();
		}
		else {
			// echo 'already connected<br>';
		}
	}
    
    public function read_all($db) {
		$this->conn2db($db);
		
		$this->db = $db;
		
        $this->read_pokemon_stats();
        $this->read_pokemon_skills();
        $this->read_type_table();
        $this->read_qm();
        $this->read_ss();
        $this->read_cpm();

		$this->db = null;	// the data object is most likely stored in the session, but db pdo cannot be stored, so set null
    }
    
    public function getBasicData($id){
        foreach($this->pokemon_stats as $dict){
            if ($dict['id']==$id) {
                return array($dict['name'],$dict['type1'],$dict['type2'],$dict['atk'],$dict['def'],$dict['sta']);
            }
        }
    }
    
    public function getSkillData($id){
        foreach($this->pokemon_skills as $dict){
            if($dict['id']==$id)
            {
                return array($dict['qm'],$dict['oqm'],$dict['ss'],$dict['oss']);
            }
        }
    }
    
    public function nameToId($pokemon_name){
        foreach($this->pokemon_stats as $dict)
        {
            if ($dict['name']==$pokemon_name)
            {
                return $dict['id'];
            }
        }
        return 0;
    }
    
    public function idToName($id){
        foreach($this->pokemon_stats as $dict)
        {
            if ($dict['id']==$id)
            {
                return $dict['name'];
            }
        }
        return "unknown";
    }
    
    public function getQmData($name){
        foreach($this->skill_qm as $dict){
            if ($dict['name']==$name){
                return array($dict['id'],$dict['type'],$dict['power'],$dict['duration'],$dict['furyGain'],$dict['damageWindow'],);
            }
        }
    }
    
    public function getSsData($name){
        foreach($this->skill_ss as $dict){
            if ($dict['name']==$name){
                return array($dict['id'],$dict['type'],$dict['power'],$dict['accuracy'],
                $dict['critChance'],$dict['duration'],$dict['furyCost'],$dict['damageWindow']);
            }
        }
    }
    
    public function get_cpm($level){
        return $this->cpm[$level];
    }
	
	public function get_all_pokemon_names()
	{
		$result = array();
		foreach($this->pokemon_stats as $dict){
			array_push($result,$dict['name']);
		}
		return $result;
	}
    
    public function read_pokemon_stats() {
        echo "[data] reading data: pokemon stats<BR>";

        $query = 'select * from pokemon_stats';
        $dbresult = $this->db->query($query);
        $result = array();
        foreach($dbresult as $row){
            $dict = array();
            $dict['id'] = (int)$row['id'];
            $dict['name'] = strtolower($row['name']);
            $dict['sta'] = (int)$row['sta'];
            $dict['atk'] = (int)$row['atk'];
            $dict['def'] = (int)$row['def'];
            $dict['type1'] = strtolower($row['type1']);
            $dict['type2'] = strtolower($row['type2'])!='none'?strtolower($row['type2']):'';
            array_push($result,$dict);
        }
        
        $this->pokemon_stats = $result;
    }
    
    public function read_pokemon_skills() {
        echo "[data] reading data: pokemon skills<BR>";
		
		$query = 'select * from pokemon_skills';
		$dbresult = $this->db->query($query);
		$result = array();
		foreach ($dbresult as $row){
			$dict = array();
			$dict['id'] = (int)$row['id'];
			$dict['name'] = strtolower($row['name']);
			
			$q1 = strtolower($row['q1']);
			$q2 = strtolower($row['q2']);
			$dict['qm'] = array_filter(array($q1,$q2), create_function('$value','return $value!=="";'));
			
			$oq1 = strtolower($row['oq1']);
			$dict['oqm'] = array_filter(array($oq1), create_function('$value','return $value!=="";'));
			
			$s1 = strtolower($row['s1']);
			$s2 = strtolower($row['s2']);
			$s3 = strtolower($row['s3']);
			$s4 = strtolower($row['s4']);
			$s5 = strtolower($row['s5']);
			$s6 = strtolower($row['s6']);
			$s7 = strtolower($row['s7']);
			$s8 = strtolower($row['s8']);
			$s9 = strtolower($row['s9']);
			
			
			$s1 = strtolower($row['q1']);
			
		}
        
        $query = 'select * from pokemon_skills';
        $dbresult = $this->db->query($query);
        $result = array();
        foreach ($dbresult as $row)
        {
            $dict = array();
            $dict['id'] = (int)$row['id'];
            $dict['name'] = strtolower($row['name']);
            $q1 = strtolower($row['q1']);
            $q2 = strtolower($row['q2']);
            $dict['qm'] = array_filter(array($q1,$q2), create_function('$value','return $value!=="";'));

            $oq1 = strtolower($row['oq1']);
            $dict['oqm'] = array_filter(array($oq1), create_function('$value','return $value!=="";'));
            
            $s1 = strtolower($row['s1']);
            $s2 = strtolower($row['s2']);
            $s3 = strtolower($row['s3']);
            $s4 = strtolower($row['s4']);
            $s5 = strtolower($row['s5']);
            $s6 = strtolower($row['s6']);
            $s7 = strtolower($row['s7']);
            $s8 = strtolower($row['s8']);
            $s9 = strtolower($row['s9']);
            $dict['ss'] = array_filter(array($s1,$s2,$s3,$s4,$s5,$s6,$s7,$s8,$s9), create_function('$value','return $value!=="";'));
            
            $os1 = strtolower($row['os1']);
            $os2 = strtolower($row['os2']);
            $dict['oss'] = array_filter(array($os1,$os2), create_function('$value','return $value!=="";'));
            
            array_push($result,$dict);
        }
        
        $this->pokemon_skills = $result;
    }
    
    public function read_type_table() {
        echo "[data] reading data: elemental effectiveness table<BR>";

        $query = 'select * from type_table';
        $dbresult = $this->db->query($query);
        $result = array();
        
        $columns = $this->db->fetch_columns('type_table');
        array_shift($columns);    // get rid of the first column name 'atkType'

        foreach ($dbresult as $row)
        {
            $atkType = $row[0];
            foreach ($columns as $defType)
            {
                $dict[$defType] = (float)($row[$defType]);
                // echo $atkType.' do x'.$dict[$defType].' to '.$defType.'<br>';
            }
            $result[$atkType]=$dict;
        }
        
        $this->type_table = $result;
    }
    
    public function read_qm() {
        echo "[data] reading data: quick moves<BR>";
        
        $result = array();
        if (($handle = fopen("./data/qm.csv", "r")) !== FALSE) {
            $header = fgetcsv($handle, ",");

            while (($data = fgetcsv($handle, ",")) !== FALSE) {
                $dict = array();
                $dict['id']     = (int)($data[array_search('id',$header)]);
                $dict['type']   = strtolower($data[array_search('type',$header)]);
                $dict['name']   = strtolower($data[array_search('name',$header)]);
                $dict['power']  = (int)($data[array_search('power',$header)]);
                $dict['duration']   = (int)($data[array_search('duration',$header)]);
                $dict['furyGain']   = (int)($data[array_search('fury_gain',$header)]);
                $dict['damageWindow']   = (int)($data[array_search('dmg_window',$header)]);

                array_push($result,$dict);
            }
            fclose($handle);
        }
        
        $this->skill_qm = $result;
    }
    
    public function read_ss() {
        echo "[data] reading data: special moves<BR>";

        $result = array();
        if (($handle = fopen("./data/ss.csv", "r")) !== FALSE) {
            $header = fgetcsv($handle, ",");

            while (($data = fgetcsv($handle, ",")) !== FALSE) {
                $dict = array();
                $dict['id']     = (int)($data[array_search('id',$header)]);
                $dict['type']   = strtolower($data[array_search('type',$header)]);
                $dict['name']   = strtolower($data[array_search('name',$header)]);
                $dict['power']  = (int)($data[array_search('power',$header)]);
                $dict['accuracy']   = (float)($data[array_search('accuracy',$header)]);
                $dict['critChance'] = (float)($data[array_search('crit%',$header)]);
                $dict['duration']   = (int)($data[array_search('duration',$header)]);
                $dict['furyCost']   = (int)($data[array_search('fury_cost',$header)]);
                $dict['damageWindow']   = (int)($data[array_search('dmg_window',$header)]);
                array_push($result,$dict);
            }
            fclose($handle);
        }
        
        $this->skill_ss = $result;
    }
    
    public function read_cpm() {
        echo "[data] reading data: cpm table<BR>";
        
        $result = array();
        if (($handle = fopen("./data/cpm.csv", "r")) !== FALSE) {
            $header = fgetcsv($handle, ",");

            $i=1;
            while (($data = fgetcsv($handle, ",")) !== FALSE) {
                $result[$i]=(float)$data[array_search('cpm',$header)];
                $i+=1;
            }
            fclose($handle);
        }
        
        $this->cpm = $result;
    }
}
?>