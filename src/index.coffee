Enogu = {}

up = (str) -> "#{str.slice(0, 1).toUpperCase()}#{str.slice 1}"

colors =
  black: 30
  red: 31
  green: 32
  yellow: 33
  blue: 34
  magenta: 35
  cyan: 36
  gray: 37
  darkGray: 90
  white: 97

bgColors = Object.keys(colors).reduce (o, key) ->
  o[key] = colors[key] + 10
  return o
, {}

lightColors =
  red: 91
  green: 92
  yellow: 93
  blue: 94
  magenta: 95
  cyan: 96

bgLightColors = Object.keys(lightColors).reduce (o, key) ->
  o[key] = lightColors[key] + 10
  return o
, {}


Object.keys(colors).forEach (key) ->
  c = colors[key]
  Enogu[key] = (str) ->
    return "\x1b[#{c}m#{str}\x1b[39m"

Object.keys(bgColors).forEach (key) ->
  c = bgColors[key]
  Enogu["bg#{up key}"] = (str) ->
    return "\x1b[#{c}m#{str}\x1b[49m"

Object.keys(lightColors).forEach (key) ->
  c = lightColors[key]
  Enogu["light#{up key}"] = (str) ->
    return "\x1b[#{c}m#{str}\x1b[39m"

Object.keys(bgLightColors).forEach (key) ->
  c = bgLightColors[key]
  Enogu["bgLight#{up key}"] = (str) ->
    return "\x1b[#{c}m#{str}\x1b[49m"

Enogu.c256 = (n) ->
  (str) ->
    return "\x1b[38;5;#{n}m#{str}\x1b[39m"


module.exports = Enogu
