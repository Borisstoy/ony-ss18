$ ->
  $('#mobile-nav-trigger').click ->

    mobileNav   = $('#navMobile')
    navContent  = $('#navMobile').html($('#main-nav').fadeIn(200))

    if !mobileNav.hasClass('expanded')
      mobileNav.addClass('expanded')
      mobileNav.stop().fadeIn(200)
    else
      mobileNav.removeClass('expanded')
      mobileNav.stop().fadeOut(200)

