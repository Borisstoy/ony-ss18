$ ->
  $('#TandC-btn').click ->
    $(@).addClass('active-legal-btn')
    $('#legal-btn').removeClass('active-legal-btn')
    $('#returns-btn').removeClass('active-legal-btn')
    $('.t-and-c').fadeIn(100)
    $('.returns').fadeOut(100)
    $('.legal').fadeOut(100)

  $('#legal-btn').click ->
    $(@).addClass('active-legal-btn')
    $('#TandC-btn').removeClass('active-legal-btn')
    $('#returns-btn').removeClass('active-legal-btn')
    $('.t-and-c').fadeOut(100)
    $('.returns').fadeOut(100)
    $('.legal').fadeIn(100)
  
  $('#returns-btn').click ->
    $(@).addClass('active-legal-btn')
    $('#TandC-btn').removeClass('active-legal-btn')
    $('#legal-btn').removeClass('active-legal-btn')
    $('.t-and-c').fadeOut(100)
    $('.legal').fadeOut(100)
    $('.returns').fadeIn(100)
    
