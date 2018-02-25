$ -> 
    bleuCitron       = $('#bleu-citron-wrapper')
    modulable        = $('#modulable-wrapper')
    
    bleuCitronButton = $('.bleu-nav-link')
    modulableButton  = $('.modulable-nav-link')
    
    velvet           = $('#velvet-wrapper')
    velvetButton     = $('.velvet-nav-link')
    
    collectionNav    = $('#collection-nav-link')
    
    $('#collections-nav > h3').click ->
        $('h3').removeClass('collection-active-link')
        $(@).addClass('collection-active-link')

    is_path = (path) ->
        window.location.pathname == path

    bleuCitronButton.click ->
        modulable.fadeOut(200)
        velvet.fadeOut(200)
        bleuCitron.delay(200).fadeIn(200)
        $('body').css 'background':'#fff'
    
    modulableButton.click ->
        bleuCitron.fadeOut(200)
        velvet.fadeOut(200)
        modulable.delay(200).fadeIn(200)
        $('body').css 'background':'#f9f9f9'

    $(velvetButton, collectionNav).click ->
        modulable.fadeOut(200)
        bleuCitron.fadeOut(200)
        velvet.delay(200).fadeIn(200)
        $('body').css 'background':'#f1f1f1'

    if is_path('/collections')
        $('body').css 'background':'#f1f1f1'

    $(".right-arrow-collection-nav").click ->
        $(".left-arrow-collection-nav").fadeIn()
        $(".collection-slider").animate({
          scrollLeft: "+=200px"
        }, "fast")
    
     $(".left-arrow-collection-nav").click ->
        $(".collection-slider").animate({
            scrollLeft: "-=200px"
        }, "fast")

    $(".collection-slider").scroll ->
        if $(@).scrollLeft() > 0 
            $(".left-arrow-collection-nav").fadeIn()
        else 
            $(".left-arrow-collection-nav").fadeOut()