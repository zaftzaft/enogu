enogu = require "../src/index"

Object
  .keys enogu
  .forEach (key) ->
    if !~key.indexOf "256"
      console.log enogu[key](key)


