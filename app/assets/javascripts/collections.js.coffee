$ -> 
    bleuCitron       = $('#bleu-citron-wrapper')
    modulable        = $('#modulable-wrapper')
    bleuCitronButton = $('.bleu-nav-link')
    modulableButton  = $('.modulable-nav-link')
    
    bleuCitronButton.click ->
        modulable.fadeOut(200)
        bleuCitron.fadeIn(200)
        $('body').css 'background':'#fff'

    modulableButton.click ->
        modulable.fadeIn(200)
        bleuCitron.fadeOut(200)
        $('body').css 'background':'#e0e0e0'

