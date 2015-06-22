enogu = require "../src/index"

Object
  .keys enogu
  .forEach (key) ->
    if (!~key.indexOf "256") and (typeof enogu[key] is "function")
      console.log enogu[key](key)

