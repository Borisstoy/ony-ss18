$ ->


  console.log('start typewriter')
  typeWriter = (text, n) ->
    if n < text.length
      $('.typewriter-dyptique').html text.substring(0, n + 1)
      n++
      setTimeout (->
        typeWriter text, n
        return
      ), 100
    return

  text = $('.typewriter-dyptique').data('text')
  typeWriter text, 0
  return

$ -> 
  window.fadeInValue = 600

$ ->
  console.log('start slideshows')
  $(".slideshow1 > a:gt(0)").hide()
  setTimeout (-> 
    setInterval (->
      $('.slideshow1 > a:first')
        .fadeOut(fadeInValue)
        .next()
        .fadeIn(fadeInValue)
        .end()
        .appendTo '.slideshow1'
    ), 3000
  ), 200

$ ->
  $(".slideshow2 > a:gt(0)").hide()
  setInterval (->
    $('.slideshow2 > a:first')
      .fadeOut(fadeInValue)
      .next()
      .fadeIn(fadeInValue)
      .end()
      .appendTo '.slideshow2'
  ), 3000

$ ->
  $(".slideshow3 > a:gt(0)").hide()
  setTimeout (-> 
    setInterval (->
      $('.slideshow3 > a:first')
        .fadeOut(fadeInValue)
        .next()
        .fadeIn(fadeInValue)
        .end()
        .appendTo '.slideshow3'
    ), 3000
  ), 200

$ ->
  $(".slideshow4 > a:gt(0)").hide()
  setInterval (->
    $('.slideshow4 > a:first')
      .fadeOut(fadeInValue)
      .next()
      .fadeIn(fadeInValue)
      .end()
      .appendTo '.slideshow4'
  ), 3000