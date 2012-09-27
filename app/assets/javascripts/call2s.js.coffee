# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->    
  precincts = $('#call2_precinct_id').html()
  $('#call2_district_id').change ->
    district = $('#call2_district_id :selected').text()
    options = $(precincts).filter("optgroup[label='#{district}']").html()
    if options
      $('#call2_precinct_id').html(options)
    else
      $('#call2_precinct_id').empty()
