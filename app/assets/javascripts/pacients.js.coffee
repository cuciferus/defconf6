# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
jQuery ->
	$(' td'  ).click ->
		console.log $(this).html()
	$(".editabil").editable('update', {
		type : 'textarea',
		cancel : 'anuleaza',
		submit : 'OK',
		indicator : 'sa salveaza',
		method : "put",
		tooltip : 'Da click sa editezi'})




