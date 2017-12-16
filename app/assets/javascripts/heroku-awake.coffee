http = require('http')
setInterval (->
  http.get 'http://ony-ss18.herokuapp.com'
  return
), 300000
