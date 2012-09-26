# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->    
  precincts = $('#call5_pname').html()
  $('#call5_dname').change ->
    district = $('#call5_dname :selected').text()
    options = $(precincts).filter("optgroup[label='#{district}']").html()
    if options
      $('#call5_pname').html(options)
    else
      $('#call5_pname').empty()
