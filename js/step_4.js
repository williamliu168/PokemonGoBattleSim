$(document).ready(
	function(){
		var $backBtn = $('#back');
		var $nextBtn = $('#next');
		//var $op_field = $('#op_id');
		//$backBtn.hide();
		$nextBtn.hide();

		//Toggle Battle Log on Btn Click
	  	$(".bt-log-btn").click(function(){
	  		$show_text = "Show Battle Log";
	  		if($(this).html() == $show_text) {
	  			$(this).html("Hide Battle Log");
	  		} else {
	  			$(this).html($show_text);
	  		}
	  		$(this).next().slideToggle();
	  	});
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