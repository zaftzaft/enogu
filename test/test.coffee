enogu = require "../src/index"

Object
  .keys enogu
  .forEach (key) ->
    if !~key.indexOf "256"
      console.log enogu[key](key)


for i in [0..255]
  console.log enogu.c256(i)("#{i}")
