# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->    
  precincts = $('#call3_id').html()
  $('#call3_dname').change ->
    district = $('#call3_dname :selected').text()
    options = $(precincts).filter("optgroup[label='#{district}']").html()
    if options
      $('#call3_id').html(options)
    else
      $('#call3_id').empty()