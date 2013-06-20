# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  today = new Date();
  $('#copyright').html('&copy; Christopher Michael Magnacca ' +  today.getFullYear())
  $.get '/home/new',
        (data) ->
            $('#post').html(data)
  $.get '/home/title',
        (data) ->
            $('#post').attr('title', data.article)
