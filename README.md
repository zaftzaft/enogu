Enogu
=====

## Installation
```bash
$ npm i @zaftzaft/enogu
```

## Usage
```js
var enogu = require("@zaftzaft/enogu");

console.log(enogu.red("string"));
```

## Methods
### enogu.red, black, red, green, yellow, blue, magenta, cyan, gray, darkGray, white (String)
### enogu.lightRed, lightGreen, lightYellow, lightBlue, lightMagenta, lightCyan (String)
### enogu.bgRed, bg... (String)
### enogu.bgLightRed, ... (String)
### 256
```js
console.log(enogu.c256(200)("pink"));
console.log(enogu.bg256(200)("pink"));
```
### alias
```js
enogu.alias("leaf", 118);
enogu.aliasBg("ice", 111);

console.log(enogu.$.leaf("LEAF"));
console.log(enogu.bg.ice("ICE"));
```
