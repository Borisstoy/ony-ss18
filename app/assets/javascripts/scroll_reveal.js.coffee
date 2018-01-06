fooReveal = {
  origin: 'left',
  delay    : 5,
  duration : 500,
  easing   : 'cubic-bezier(0.6, 0.2, 0.1, 1)',
  scale    : .95,
  mobile   : false
}

window.sr = ScrollReveal()
sr.reveal('.dyptique-img-4')
sr.reveal('.dyptique-img-3', fooReveal)
sr.reveal('.dyptique-img-1', fooReveal)
sr.reveal('.dyptique-img-5', fooReveal)
sr.reveal('.dyptique-img-2', fooReveal)
sr.reveal('.dyptique-img-6', fooReveal)
sr.reveal('.dyptique-img-7', fooReveal)
