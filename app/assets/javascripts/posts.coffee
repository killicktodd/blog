# Place all the behaviors and hooks related to the matching controller here.
  # All this logic will automatically be available in application.js.
  # You can use CoffeeScript in this file: http://coffeescript.org/
slide = ->
  $carousel = $('.carousel')
  quotes = $carousel.data('quotes')
  quotes.push ["The first draft of anything is shit.</br><cite>– Hemmingway</cite>"]
  repeat = ->
    quotes.map (quote) ->
      h3 = "<h3>#{quote[0]}</h3>"
      link = "<a href='/posts/#{quote[1]}\'>#{h3}</a>"

      if quote.constructor == Array and quote[1]?
        contents = link
      else
        contents = h3

      $carousel
        .delay(10000).fadeOut(700)
        .queue (->
          $carousel.html(contents)
          $(@).dequeue()
        )
        .delay(200).fadeIn(800, repeat)



  repeat() unless quotes.length <= 1

$(document).ready(slide)
$(document).on('page:load', slide)

