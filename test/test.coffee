enogu = require "../src/index"

Object
  .keys enogu
  .forEach (key) ->
    if (!~key.indexOf "alias") and (!~key.indexOf "256") and (typeof enogu[key] is "function")
      console.log enogu[key](key)



enogu.alias "leaf", 118
enogu.aliasBg "ice", 111

console.log enogu.$.leaf "LEAF"
console.log enogu.bg.ice "ICE"
