$ ->
  $('.alert')

typeWriter = (text, n) ->
  console.log(text)
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
