function autoComplete() {
	// var min_length = 0; // min characters to display the autocomplete
	var keyword = $('#pokemon_name').val();
	if (1/*keyword.length >= min_length*/) {
		$.ajax({
			url: 'ajax_text_suggest.php',
			type: 'POST',
			data: {keyword:keyword},
			success:function(data){
				//$('#text_suggest').show();
				$('#text_suggest').html(data);
			}
		});

        $.ajax({
			url: 'ajax_icon_suggest2.php',
			type: 'POST',
			data: {keyword:keyword},
			success:function(data){
				$('#icon_suggest').show();
				$('#icon_suggest').html(data); 
			}
		});
	} else {
		$('#text_suggest').hide();
        $('#icon_suggest').hide();
	}
}
 
// set_item : this function will be executed when we select an item
function set_item(item) {
	// change input value
	$('#pokemon_name').val(item);
	// hide proposition list
	$('text_suggest').hide();
    $('icon_suggest').hide();
}