# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->    
  precincts = $('#call2_id').html()
  $('#call2_dname').change ->
    district = $('#call2_dname :selected').text()
    options = $(precincts).filter("optgroup[label='#{district}']").html()
    if options
      $('#call2_id').html(options)
    else
      $('#call2_id').empty()
