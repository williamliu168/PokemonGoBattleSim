$(document).ready(
	function(){
		var $backBtn = $('#back');
		var $nextBtn = $('#next');
		var $op_field = $('#op_id');
		//$backBtn.hide();
		//$nextBtn.hide();

	    $(".thumbnail").click(function(){
	    	if ($(this).hasClass("selected")) {
	    		//If the onclick pokemon is already selected, then unselect it
	    		$(this).toggleClass("selected");
	    		//Set Next Button to unready
    			$nextBtn.removeClass("ready");
    			$nextBtn.hide();
	    	} else {
	    		//If the onclick pokemon is not currently selected, then unselect all pokemon and set the onlick pokemon to selected
	    		$(".thumbnail").removeClass("selected");
	    		$(this).toggleClass("selected");
	    		//Set Next Button to ready
	    		if(!$nextBtn.hasClass("ready")) {
					$nextBtn.toggleClass("ready");
					$nextBtn.show();
	    		}
		    	var opponent_id = $(this).attr("id");
		        $op_field.attr("value", opponent_id);
	    	}
	    	
	    });
	}
);