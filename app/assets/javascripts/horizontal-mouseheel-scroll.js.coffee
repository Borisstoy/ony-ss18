$ ->
  $('.collection-slider').mousewheel (e, delta) ->
    console.log(this)
    $(this).scrollLeft @scrollLeft + -delta * 10
    e.preventDefault()
    return
