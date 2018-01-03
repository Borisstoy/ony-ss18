$ ->
  $('#mobile-nav-trigger').click ->

    mobileNav   = $('#navMobile')
    navContent  = $('#navMobile').html($('#main-nav').html())

    if !mobileNav.hasClass('expanded')
      mobileNav.addClass('expanded')
      mobileNav.children('span').css('display':'flex')
      mobileNav.stop().css('display':'flex')
    else
      mobileNav.removeClass('expanded')
      mobileNav.children('span').css('display':'none')
      mobileNav.stop().css('display':'none')
