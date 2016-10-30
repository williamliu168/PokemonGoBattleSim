$(document).ready(
	function(){
		var $backBtn = $('#back');
		var $nextBtn = $('#next');
		//$backBtn.hide();
		//$nextBtn.hide();

		//Trainer Level Slider
		$('#ex1').slider({
			formatter: function(value) {
				return 'Level ' + value;
			}
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
		    	var new_href = "step_2.php?id=" + $(this).attr("id");
		        $nextBtn.attr("href", new_href);
	    	}
	    	
	    });
	}
);