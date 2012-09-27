# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->    
  precincts = $('#call1_precinct_id').html()
  $('#call1_district_id').change ->
    district = $('#call1_district_id :selected').text()
    options = $(precincts).filter("optgroup[label='#{district}']").html()
    if options
      $('#call1_precinct_id').html(options)
    else
      $('#call1_precinct_id').empty()
