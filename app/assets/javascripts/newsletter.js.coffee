$(document).ready ->
  if Cookies.get('modal_shown') == null
    Cookies.get 'modal_shown', 'yes',
      expires: 7
      path: '/'
    $('#myModal').reveal()
  return
