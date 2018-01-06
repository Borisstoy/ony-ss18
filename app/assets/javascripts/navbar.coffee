$ ->
  mobileNav   = $('#navMobile')

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


