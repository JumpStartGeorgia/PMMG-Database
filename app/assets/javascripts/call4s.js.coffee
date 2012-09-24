# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->    
  precincts = $('#call4_id').html()
  $('#call4_dname').change ->
    district = $('#call4_dname :selected').text()
    options = $(precincts).filter("optgroup[label='#{district}']").html()
    if options
      $('#call4_id').html(options)
    else
      $('#call4_id').empty()
