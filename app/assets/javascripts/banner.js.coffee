$ -> 
    heroVideo = document.getElementById('hero-video')
    mute = $('#mute')
    unmute = $('#unmute')

    toggleMute = (el, bool, oposite) -> 
        $(el).click ->
            heroVideo.muted = bool
            $(oposite).show()
            $(@).hide()

    toggleMute(
        mute,
        false,
        unmute
    )

    toggleMute(
        unmute,
        true,
        mute
    )