$ ->
  $('.openNewsletterBtn').on 'click', ->
    $('#modalContainer').css('position': 'fixed', 'right':'0', 'left':'0', 'top':'50%', 'bottom':'50%', 'z-index': '99999999')
                          .delay(200)
                          .animate 'margin-top':'0'
    $('#modalOverlay').animate 'height':'100%', 'top':'0'
    $('#onscroll-nav').slideUp(300)

  $('#modalOverlay').on 'click', ->
    container1 = $('#modalContainer')
    container2 = $('#modalOverlay')

    container1.animate 'margin-top':'-120%', 'z-index': '-1'
    container2.delay(200).animate 'height':'0'
