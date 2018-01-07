$ ->
  mobileNav   = $('#navMobile')

  is_path = (path) ->
    window.location.pathname == path

  if $(window).width() > 767
    mobileNav.hide()

  mobileNav.removeClass('expanded')

  $('#mobile-nav-trigger').click ->

    if !mobileNav.hasClass('expanded')
      mobileNav.addClass('expanded')
      mobileNav.stop().slideDown(200)
    else
      mobileNav.removeClass('expanded')
      mobileNav.stop().slideUp(200)

  if is_path('/') or is_path('/dyptique')
    $(window).on 'scroll', ->
      if $(window).scrollTop() >= 1
        $('#main-nav').slideUp(500)
        $('#on-scroll-nav-trigger').stop().animate 'margin-right':'0'

      else if $(window).scrollTop() <= 137
        $('#main-nav').slideDown(200)
        $('#main-nav').css('display', '')
        $('#on-scroll-nav-trigger').animate 'margin-right':'-85px'

  $('#on-scroll-nav-trigger').click ->
    $('body').css('overflow':'hidden')
    $('#onscroll-nav').slideDown(300)

  $('#onscroll-nav-close-btn').click ->
    $('body').css('overflow':'auto')
    $('#onscroll-nav').slideUp(300)

