<?php
require_once('header.php');

$data = $host->data;
$list = $host->data->pokemon_names;

$displayAll = false;
$keyword = isset($_POST['keyword']) ? strtolower($_POST['keyword']) : "";
if(IsNullOrEmptyString($keyword))
{
    $displayAll = true;
}

if (!is_array($list) && !is_object($list))
{
    exit;
}

foreach ($list as $item) {
    if ($displayAll || strpos($item,$keyword)!==false)
    {
        $pokemon_name = $item;
        $pokemon_id = $data->nameToId($pokemon_name);
        echo '<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2"><a class="thumbnail" id="'.$pokemon_id.'" href="step_2.php?id='.$pokemon_id.'">
        <img src="./img/icon_static_ico/'.$pokemon_id.'.ico" alt="pokemon_img"
        width='.$width.' height='.$height.'><span class="pokemon_name">'.$pokemon_name.'</span></a></div>';
    }
}
?>

    
    
<script>
    $(".thumbnail").mouseover(function(){
        var id = this.id;
        jQuery('img',this).attr("src", "./img/icon_anime_gif/"+id+".gif");
    });
    $(".thumbnail").mouseout(function(){
        jQuery('img',this).attr("src", "./img/icon_static_ico/"+$(this).attr("id")+".ico");
    });
</script>
    
    