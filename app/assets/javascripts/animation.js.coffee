$ ->
  console.log('start img switch')
  num = [1, 2, 3]
  for x in num
    if x == 1 
      setInterval (->
        teddyDos = $('.teddy-dos-1')
        teddyDos.hide()

        teddyFace = $('.teddy-face-1')
        teddyFace.hide()

        sweatDos = $('.sweat-dos-1')
        sweatDos.hide()

        sweatProfil = $('.sweat-profil-1')
        sweatProfil.hide()
      ), 2000
      setInterval (->
        teddyDos = $('.teddy-dos-1')
        teddyDos.show()

        teddyFace = $('.teddy-face-1')
        teddyFace.show()

        sweatDos = $('.sweat-dos-1')
        sweatProfil = $('.sweat-profil-1')
      ), 6000

    else if x == 2
      setInterval (->
        teddyDos = $('.teddy-dos-2')
        teddyDos.show()

        teddyFace = $('.teddy-face-2')
        teddyFace.hide()

        sweatDos = $('.sweat-dos-2')
        sweatProfil = $('.sweat-profil-2')
      ), 4000
      setInterval (->
        teddyDos = $('.teddy-dos-2')
        teddyDos.show()

        teddyFace = $('.teddy-face-2')
        teddyFace.hide()

        sweatDos = $('.sweat-dos-2')
        sweatProfil = $('.sweat-profil-2')
      ), 8000

    else if x == 3
      setInterval (->
        teddyDos = $('.teddy-dos-3')
        teddyDos.show()

        teddyFace = $('.teddy-face-3')
        teddyFace.hide()

        sweatDos = $('.sweat-dos-3')
        sweatProfil = $('.sweat-profil-3')
      ), 6000
      setInterval (->
        teddyDos = $('.teddy-dos-3')
        teddyDos.show()

        teddyFace = $('.teddy-face-3')
        teddyFace.show()

        sweatDos = $('.sweat-dos-3')
        sweatProfil = $('.sweat-profil-3')
      ), 10000

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
