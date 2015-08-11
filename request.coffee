r = require 'request'
j = r.jar()

url = 'https://instagram.com/api/v1/feed/timeline'

cookies = require './cookies'

cookies.forEach (v) ->
  j.setCookie r.cookie(v), url

r url: url, jar: j, (err, res, body) ->
  console.log err if err?
  console.log JSON.parse body
