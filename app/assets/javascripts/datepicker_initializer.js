var ready;
ready = function() {
	$('.datepicker').datepicker();
}
$(document).ready(ready);
$(document).on('page:load', ready);
$(document).on('page:change', ready);