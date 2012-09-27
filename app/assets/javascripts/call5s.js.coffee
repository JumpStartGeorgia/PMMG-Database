# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->    
  precincts = $('#call5_precinct_id').html()
  $('#call5_district_id').change ->
    district = $('#call5_district_id :selected').text()
    options = $(precincts).filter("optgroup[label='#{district}']").html()
    if options
      $('#call5_precinct_id').html(options)
    else
      $('#call5_precinct_id').empty()
