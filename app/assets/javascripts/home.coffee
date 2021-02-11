# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#documents-datatable').dataTable
    processing: true
    serverSide: true
    ajax:
      url: $('#documents-datatable').data('source')
    pagingType: 'simple_numbers'
    columns: [
      {data: 'number'}
      {data: 'title'}
      {data: 'department_name'}
      {data: 'speed_color'}
      {data: 'dated'}
    ]
