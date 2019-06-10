# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# Paralax effect in profiles/Index
velocity = 0.5

update = ->
  pos = $(window).scrollTop()
  $('.bg-profile').each ->
    $element = $(this)
    # subtract some from the height b/c of the padding
    height = $element.height() - 18
    $(this).css 'backgroundPosition', '50% ' + Math.round((height - pos) * velocity) + 'px'
    return
  return

$(window).bind 'scroll', update