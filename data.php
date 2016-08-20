<?php

class Data
{
    public $pokemon_stats;
    public $pokemon_skills;
    public $type_table;
    public $skill_qm;
    public $skill_ss;
    public $cpm;

    public function __construct() {
        echo "[data] init()<BR>";
    }
    
    public function read_all() {
        $this->read_pokemon_stats();
        $this->read_pokemon_skills();
        $this->read_type_table();
        $this->read_qm();
        $this->read_ss();
        $this->read_cpm();
    }
    
    public function getBasicData($id){
        foreach($this->pokemon_stats as $dict){
            if ($dict['id']==$id) {
                return array($dict['name'],$dict['type1'],$dict['type2'],$dict['atk'],$dict['def'],$dict['sta']);
            }
        }
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
    
    public function read_pokemon_stats() {
        echo "[data] reading data: pokemon stats<BR>";

        $result = array();
        if (($handle = fopen("./data/pokemon_stats.csv", "r")) !== FALSE) {
            $header = fgetcsv($handle, ",");

            while (($data = fgetcsv($handle, ",")) !== FALSE) {
                $dict = array();
                $dict['id']     = (int)$data[array_search('id',$header)];
                $dict['name']   = strtolower($data[array_search('name',$header)]);
                $dict['sta']    = (int)($data[array_search('sta',$header)]);
                $dict['atk']    = (int)($data[array_search('atk',$header)]);
                $dict['def']    = (int)($data[array_search('def',$header)]);
                $dict['type1']  = strtolower($data[array_search('type1',$header)]);
                $dict['type2']  = strtolower($data[array_search('type2',$header)]);
                
                array_push($result,$dict);
            }
            fclose($handle);
        }
        
        $this->pokemon_stats = $result;
    }
    
    public function read_pokemon_skills() {
        echo "[data] reading data: pokemon skills<BR>";
        
        $result = array();
        if (($handle = fopen("./data/pokemon_skills.csv", "r")) !== FALSE) {
            $header = fgetcsv($handle, ",");
            
            while (($data = fgetcsv($handle, ",")) !== FALSE) {
                $dict = array();
                $dict['id']     = (int)($data[array_search('id',$header)]);
                $dict['name']   = strtolower($data[array_search('name',$header)]);
                $q1 = strtolower($data[array_search('q1',$header)]);
                $q2 = strtolower($data[array_search('q2',$header)]);
                $dict['qm'] = array_filter(array($q1,$q2), function($value) {return $value!=='';});
                
                $s1 = strtolower($data[array_search('s1',$header)]);
                $s2 = strtolower($data[array_search('s2',$header)]);
                $s3 = strtolower($data[array_search('s3',$header)]);
                $s4 = strtolower($data[array_search('s4',$header)]);
                $s5 = strtolower($data[array_search('s5',$header)]);
                $s6 = strtolower($data[array_search('s6',$header)]);
                $s7 = strtolower($data[array_search('s7',$header)]);
                $s8 = strtolower($data[array_search('s8',$header)]);
                $s9 = strtolower($data[array_search('s9',$header)]);
                
                $dict['ss'] = array_filter(array($s1,$s2,$s3,$s4,$s5,$s6,$s7,$s8,$s9), function($value) {return $value!=='';});
                
                array_push($result,$dict);
            }
            fclose($handle);
        }
        
        $this->pokemon_skills = $result;
    }
    
    public function read_type_table() {
        echo "[data] reading data: elemental effectiveness table<BR>";
        
        $result = array();
        if (($handle = fopen("./data/type_table.csv", "r")) !== FALSE) {
            $header = fgetcsv($handle, ",");
            
            while (($data = fgetcsv($handle, ",")) !== FALSE) {
                $dict = array();
                
                foreach($header as $defType){
                    // echo $data[0]."->".$defType."=".$data[array_search($defType,$header)]."<BR>";
                    $dict[$defType] = (float)($data[array_search($defType,$header)]);
                }

                $result[$data[0]]=$dict;
            }
            fclose($handle);
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
                $dict['critChance'] = (float)($data[array_search('critChance',$header)]);
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