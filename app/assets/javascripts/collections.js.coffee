$ -> 
    bleuCitron       = $('#bleu-citron-wrapper')
    velvet           = $('#velvet-wrapper')
    bleuCitronButton = $('.bleu-nav-link')
    velvetButton     = $('.velvet-nav-link')
    
    bleuCitronButton.click ->
        velvet.fadeOut(200)
        bleuCitron.fadeIn(200)
        $('body').css 'background':'#fff'

    velvetButton.click ->
        velvet.fadeIn(200)
        bleuCitron.fadeOut(200)
        $('body').css 'background':'#e0e0e0'

