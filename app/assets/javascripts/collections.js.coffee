$ -> 
    bleuCitron       = $('#bleu-citron-wrapper')
    modulable        = $('#modulable-wrapper')
    bleuCitronButton = $('.bleu-nav-link')
    modulableButton  = $('.modulable-nav-link')
    collectionNav    = $('#collection-nav-link')
    
    is_path = (path) ->
        window.location.pathname == path

    bleuCitronButton.click ->
        modulable.fadeOut(200)
        bleuCitron.fadeIn(200)
        $('body').css 'background':'#fff'

    $(modulableButton, collectionNav).click ->
        modulable.fadeIn(200)
        bleuCitron.fadeOut(200)
        $('body').css 'background':'#e0e0e0'

    if is_path('/collections')
        $('body').css 'background':'#e0e0e0'