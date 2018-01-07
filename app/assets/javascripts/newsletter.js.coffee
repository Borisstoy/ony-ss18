$(document).ready ->
  if Cookies.get('modal_shown') == null
    Cookies.get 'modal_shown', 'yes',
      expires: 7
      path: '/'
    $('#myModal').reveal()
  return

$ ->
  $('.openNewsletterBtn').on 'click', ->
    $('#newsletterContainer').css('position': 'fixed', 'right':'0', 'left':'0', 'top':'50%', 'bottom':'50%', 'z-index': '99999999')
                          .animate 'margin-top':'0'
    $('#newsletterOverlay').animate 'height':'100%'

  $('#newsletterOverlay').on 'click', ->
    container1 = $('#newsletterContainer')
    container2 = $('#newsletterOverlay')

    container1.animate 'margin-top':'-100%', 'z-index': '-1'
    container2.animate 'height':'0'
