$ ->
  $('.collection-slider').mousewheel (e, delta) ->
    $(this).scrollLeft @scrollLeft + -delta * 10
    e.preventDefault()
    return
